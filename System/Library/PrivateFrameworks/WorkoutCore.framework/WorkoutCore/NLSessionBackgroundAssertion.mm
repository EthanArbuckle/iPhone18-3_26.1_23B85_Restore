@interface NLSessionBackgroundAssertion
+ (id)assertionWithName:(id)name explanation:(id)explanation timeout:(double)timeout timeoutHandler:(id)handler;
- (NLSessionBackgroundAssertion)initWithAssertion:(id)assertion timeout:(double)timeout timeoutHandler:(id)handler;
- (void)_configureTimeout:(double)timeout withHandler:(id)handler;
- (void)dealloc;
- (void)invalidate;
@end

@implementation NLSessionBackgroundAssertion

- (NLSessionBackgroundAssertion)initWithAssertion:(id)assertion timeout:(double)timeout timeoutHandler:(id)handler
{
  v19 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, assertion);
  timeoutCopy = timeout;
  v14 = 0;
  objc_storeStrong(&v14, handler);
  v5 = selfCopy;
  selfCopy = 0;
  v13.receiver = v5;
  v13.super_class = NLSessionBackgroundAssertion;
  v9 = [(NLSessionBackgroundAssertion *)&v13 init];
  selfCopy = v9;
  objc_storeStrong(&selfCopy, v9);
  if (v9)
  {
    objc_storeStrong(&selfCopy->_assertion, location[0]);
    if (timeoutCopy <= 2.22044605e-16)
    {
      _HKInitializeLogging();
      v12 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        explanation = [location[0] explanation];
        __os_log_helper_16_2_2_8_66_8_66(v18, explanation, location[0]);
        _os_log_impl(&dword_20AEA4000, v12, OS_LOG_TYPE_DEFAULT, "Background assertion (%{public}@) %{public}@ has no end time. Be sure you release this yourself!", v18, 0x16u);
        MEMORY[0x277D82BD8](explanation);
      }

      objc_storeStrong(&v12, 0);
    }

    else
    {
      [(NLSessionBackgroundAssertion *)selfCopy _configureTimeout:v14 withHandler:timeoutCopy];
    }
  }

  v7 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  *MEMORY[0x277D85DE8];
  return v7;
}

- (void)dealloc
{
  selfCopy = self;
  v3 = a2;
  [(NLSessionBackgroundAssertion *)self invalidate];
  v2.receiver = selfCopy;
  v2.super_class = NLSessionBackgroundAssertion;
  [(NLSessionBackgroundAssertion *)&v2 dealloc];
}

- (void)invalidate
{
  v6 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  oslog[1] = a2;
  if (!self->_invalidated)
  {
    _HKInitializeLogging();
    oslog[0] = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
    {
      explanation = [(RBSAssertion *)selfCopy->_assertion explanation];
      __os_log_helper_16_2_3_8_66_8_66_8_66(v5, selfCopy, explanation, selfCopy->_assertion);
      _os_log_impl(&dword_20AEA4000, oslog[0], OS_LOG_TYPE_DEFAULT, "Invalidating background assertion %{public}@ (%{public}@) %{public}@", v5, 0x20u);
      MEMORY[0x277D82BD8](explanation);
    }

    objc_storeStrong(oslog, 0);
    if (selfCopy->_timerSource)
    {
      dispatch_source_cancel(selfCopy->_timerSource);
    }

    [(RBSAssertion *)selfCopy->_assertion invalidate];
    selfCopy->_invalidated = 1;
  }

  *MEMORY[0x277D85DE8];
}

+ (id)assertionWithName:(id)name explanation:(id)explanation timeout:(double)timeout timeoutHandler:(id)handler
{
  v30[1] = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, name);
  v27 = 0;
  objc_storeStrong(&v27, explanation);
  timeoutCopy = timeout;
  v25 = 0;
  objc_storeStrong(&v25, handler);
  v13 = objc_alloc(MEMORY[0x277D46DB8]);
  v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: %@", v27, location[0]];
  v16 = [MEMORY[0x277D47008] targetWithPid:getpid()];
  v15 = [MEMORY[0x277D46E38] attributeWithDomain:@"com.apple.SessionTrackerApp" name:location[0]];
  v30[0] = v15;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:1];
  v24 = [v13 initWithExplanation:v17 target:v16 attributes:?];
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v15);
  MEMORY[0x277D82BD8](v16);
  MEMORY[0x277D82BD8](v17);
  v23 = 0;
  v22 = 0;
  v18 = [v24 acquireWithError:&v22];
  objc_storeStrong(&v23, v22);
  if ((v18 & 1) == 0)
  {
    _HKInitializeLogging();
    v21 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    v20 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      explanation = [v24 explanation];
      __os_log_helper_16_2_3_8_66_8_66_8_64(v29, explanation, v24, v23);
      _os_log_error_impl(&dword_20AEA4000, v21, v20, "Failed to acquire background assertion (%{public}@) %{public}@ with error: %@", v29, 0x20u);
      MEMORY[0x277D82BD8](explanation);
    }

    objc_storeStrong(&v21, 0);
  }

  v6 = [NLSessionBackgroundAssertion alloc];
  v19 = [(NLSessionBackgroundAssertion *)v6 initWithAssertion:v24 timeout:v25 timeoutHandler:timeoutCopy];
  v8 = MEMORY[0x277D82BE0](v19);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];

  return v8;
}

- (void)_configureTimeout:(double)timeout withHandler:(id)handler
{
  selfCopy = self;
  v22 = a2;
  timeoutCopy = timeout;
  location = 0;
  objc_storeStrong(&location, handler);
  v8 = MEMORY[0x277D85CD0];
  v4 = MEMORY[0x277D85CD0];
  v9 = v8;
  v5 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v9);
  timerSource = selfCopy->_timerSource;
  selfCopy->_timerSource = v5;
  MEMORY[0x277D82BD8](timerSource);
  MEMORY[0x277D82BD8](v9);
  source = selfCopy->_timerSource;
  v7 = dispatch_time(0, (timeoutCopy * 1000000000.0));
  dispatch_source_set_timer(source, v7, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
  objc_initWeak(&v19, selfCopy);
  v11 = selfCopy->_timerSource;
  v12 = MEMORY[0x277D85DD0];
  v13 = -1073741824;
  v14 = 0;
  v15 = __62__NLSessionBackgroundAssertion__configureTimeout_withHandler___block_invoke;
  v16 = &unk_277D888E0;
  v17 = MEMORY[0x277D82BE0](location);
  objc_copyWeak(v18, &v19);
  v18[1] = *&timeoutCopy;
  dispatch_source_set_event_handler(v11, &v12);
  dispatch_resume(selfCopy->_timerSource);
  objc_destroyWeak(v18);
  objc_storeStrong(&v17, 0);
  objc_destroyWeak(&v19);
  objc_storeStrong(&location, 0);
}

void __62__NLSessionBackgroundAssertion__configureTimeout_withHandler___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  location[2] = a1;
  location[1] = a1;
  (*(*(a1 + 32) + 16))();
  location[0] = objc_loadWeakRetained((a1 + 40));
  if (location[0])
  {
    _HKInitializeLogging();
    oslog = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      v1 = [*(location[0] + 1) explanation];
      __os_log_helper_16_2_4_8_66_8_66_8_66_8_2(v5, location[0], v1, *(location[0] + 1), *(a1 + 48));
      _os_log_error_impl(&dword_20AEA4000, oslog, OS_LOG_TYPE_ERROR, "Background assertion %{public}@ (%{public}@) %{public}@ timed out (timeout=%{public}f)", v5, 0x2Au);
      MEMORY[0x277D82BD8](v1);
    }

    objc_storeStrong(&oslog, 0);
    [location[0] invalidate];
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

@end