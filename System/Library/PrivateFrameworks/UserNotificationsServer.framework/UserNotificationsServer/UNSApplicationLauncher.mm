@interface UNSApplicationLauncher
- (UNSApplicationLauncher)initWithLocationMonitor:(id)monitor;
- (id)_queue_actionForNotificationResponse:(id)response bundleIdentifier:(id)identifier withHandler:(id)handler error:(id *)error;
- (id)_queue_foregroundLaunchOptionsForApplication:(id)application withResponse:(id)response actionIdentifier:(id)identifier launchImageName:(id)name origin:(id)origin error:(id *)error;
- (void)_queue_acquireActivityKitAssertionIfNeededForBundleIdentifier:(id)identifier withResponse:(id)response;
- (void)_queue_addProcessAssertion:(id)assertion forBundleID:(id)d;
- (void)_queue_backgroundLaunchApplication:(id)application withResponse:(id)response completionHandler:(id)handler;
- (void)_queue_foregroundLaunchApplication:(id)application withOptions:(id)options responseActionIdentifier:(id)identifier endpoint:(id)endpoint completionHandler:(id)handler;
- (void)_queue_removeAllProcessAssertionsAndInvalidate:(BOOL)invalidate;
- (void)_queue_removeProcessAssertion:(id)assertion forBundleID:(id)d invalidate:(BOOL)invalidate;
- (void)_queue_removeProcessAssertionsHavingReason:(unsigned int)reason forBundleID:(id)d invalidate:(BOOL)invalidate;
- (void)_queue_willPresentNotification:(id)notification forBundleIdentifier:(id)identifier withCompletionHandler:(id)handler;
- (void)_removeAllProcessAssertionsAndInvalidate:(BOOL)invalidate;
- (void)backgroundLaunchApplication:(id)application withResponse:(id)response completionHandler:(id)handler;
- (void)dealloc;
- (void)foregroundLaunchApplication:(id)application withResponse:(id)response launchImageName:(id)name origin:(id)origin endpoint:(id)endpoint completionHandler:(id)handler;
- (void)foregroundLaunchOptionsForApplication:(id)application withResponse:(id)response launchImageName:(id)name origin:(id)origin queue:(id)queue completionHandler:(id)handler;
- (void)willPresentNotification:(id)notification forBundleIdentifier:(id)identifier withCompletionHandler:(id)handler;
@end

@implementation UNSApplicationLauncher

- (UNSApplicationLauncher)initWithLocationMonitor:(id)monitor
{
  monitorCopy = monitor;
  v14.receiver = self;
  v14.super_class = UNSApplicationLauncher;
  v6 = [(UNSApplicationLauncher *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_locationMonitor, monitor);
    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    bundleIdentifierToAssertions = v7->_bundleIdentifierToAssertions;
    v7->_bundleIdentifierToAssertions = v8;

    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create("com.apple.usernotificationsserver.UNSApplicationLauncher", v10);
    queue = v7->_queue;
    v7->_queue = v11;
  }

  return v7;
}

- (void)dealloc
{
  [(UNSApplicationLauncher *)self _removeAllProcessAssertionsAndInvalidate:1];
  v3.receiver = self;
  v3.super_class = UNSApplicationLauncher;
  [(UNSApplicationLauncher *)&v3 dealloc];
}

- (void)foregroundLaunchApplication:(id)application withResponse:(id)response launchImageName:(id)name origin:(id)origin endpoint:(id)endpoint completionHandler:(id)handler
{
  applicationCopy = application;
  responseCopy = response;
  nameCopy = name;
  originCopy = origin;
  endpointCopy = endpoint;
  handlerCopy = handler;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __117__UNSApplicationLauncher_foregroundLaunchApplication_withResponse_launchImageName_origin_endpoint_completionHandler___block_invoke;
  block[3] = &unk_279E10DC8;
  v28 = responseCopy;
  selfCopy = self;
  v30 = applicationCopy;
  v31 = nameCopy;
  v32 = originCopy;
  v33 = endpointCopy;
  v34 = handlerCopy;
  v21 = handlerCopy;
  v22 = endpointCopy;
  v23 = originCopy;
  v24 = nameCopy;
  v25 = applicationCopy;
  v26 = responseCopy;
  dispatch_async(queue, block);
}

void __117__UNSApplicationLauncher_foregroundLaunchApplication_withResponse_launchImageName_origin_endpoint_completionHandler___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) actionIdentifier];
  v2 = [*(a1 + 40) _queue_foregroundLaunchOptionsForApplication:*(a1 + 48) withResponse:*(a1 + 32) actionIdentifier:v3 launchImageName:*(a1 + 56) origin:*(a1 + 64) error:0];
  [*(a1 + 40) _queue_foregroundLaunchApplication:*(a1 + 48) withOptions:v2 responseActionIdentifier:v3 endpoint:*(a1 + 72) completionHandler:*(a1 + 80)];
}

- (void)foregroundLaunchOptionsForApplication:(id)application withResponse:(id)response launchImageName:(id)name origin:(id)origin queue:(id)queue completionHandler:(id)handler
{
  applicationCopy = application;
  responseCopy = response;
  nameCopy = name;
  originCopy = origin;
  queueCopy = queue;
  handlerCopy = handler;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __124__UNSApplicationLauncher_foregroundLaunchOptionsForApplication_withResponse_launchImageName_origin_queue_completionHandler___block_invoke;
  block[3] = &unk_279E10DC8;
  v28 = responseCopy;
  selfCopy = self;
  v30 = applicationCopy;
  v31 = nameCopy;
  v32 = originCopy;
  v33 = queueCopy;
  v34 = handlerCopy;
  v21 = handlerCopy;
  v22 = queueCopy;
  v23 = originCopy;
  v24 = nameCopy;
  v25 = applicationCopy;
  v26 = responseCopy;
  dispatch_async(queue, block);
}

void __124__UNSApplicationLauncher_foregroundLaunchOptionsForApplication_withResponse_launchImageName_origin_queue_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) actionIdentifier];
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  v18 = 0;
  v8 = [v3 _queue_foregroundLaunchOptionsForApplication:v5 withResponse:v4 actionIdentifier:v2 launchImageName:v6 origin:v7 error:&v18];
  v9 = v18;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __124__UNSApplicationLauncher_foregroundLaunchOptionsForApplication_withResponse_launchImageName_origin_queue_completionHandler___block_invoke_2;
  v14[3] = &unk_279E10DF0;
  v10 = *(a1 + 72);
  v11 = *(a1 + 80);
  v16 = v9;
  v17 = v11;
  v15 = v8;
  v12 = v9;
  v13 = v8;
  dispatch_async(v10, v14);
}

- (id)_queue_foregroundLaunchOptionsForApplication:(id)application withResponse:(id)response actionIdentifier:(id)identifier launchImageName:(id)name origin:(id)origin error:(id *)error
{
  v42 = *MEMORY[0x277D85DE8];
  applicationCopy = application;
  responseCopy = response;
  identifierCopy = identifier;
  nameCopy = name;
  originCopy = origin;
  dispatch_assert_queue_V2(self->_queue);
  notification = [responseCopy notification];
  request = [notification request];
  content = [request content];
  targetContentIdentifier = [content targetContentIdentifier];

  v22 = *MEMORY[0x277CE2060];
  if (os_log_type_enabled(*MEMORY[0x277CE2060], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v39 = applicationCopy;
    v40 = 2114;
    v41 = identifierCopy;
    _os_log_impl(&dword_270AA8000, v22, OS_LOG_TYPE_DEFAULT, "[%{public}@] Launch application in foreground for notification response action %{public}@", buf, 0x16u);
  }

  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __130__UNSApplicationLauncher__queue_foregroundLaunchOptionsForApplication_withResponse_actionIdentifier_launchImageName_origin_error___block_invoke;
  v34[3] = &unk_279E10E18;
  v23 = applicationCopy;
  v35 = v23;
  v24 = identifierCopy;
  v36 = v24;
  v25 = [(UNSApplicationLauncher *)self _queue_actionForNotificationResponse:responseCopy bundleIdentifier:v23 withHandler:v34 error:error];
  if (v25)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v37 = v25;
    v27 = [MEMORY[0x277CBEA60] arrayWithObjects:&v37 count:1];
    [dictionary bs_setSafeObject:v27 forKey:*MEMORY[0x277D0ABD0]];

    v28 = nameCopy;
    [dictionary bs_setSafeObject:nameCopy forKey:*MEMORY[0x277D0AC18]];
    [dictionary bs_setSafeObject:originCopy forKey:*MEMORY[0x277D0AC28]];
    v29 = MEMORY[0x277CBEC38];
    [dictionary bs_setSafeObject:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D0AC58]];
    [dictionary bs_setSafeObject:v29 forKey:*MEMORY[0x277D0AC70]];
    [dictionary bs_setSafeObject:targetContentIdentifier forKey:*MEMORY[0x277D77838]];
    v30 = [MEMORY[0x277D0AD60] optionsWithDictionary:dictionary];
  }

  else
  {
    v30 = 0;
    v28 = nameCopy;
  }

  v31 = *MEMORY[0x277D85DE8];

  return v30;
}

void __130__UNSApplicationLauncher__queue_foregroundLaunchOptionsForApplication_withResponse_actionIdentifier_launchImageName_origin_error___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277CE2060];
  if (os_log_type_enabled(*MEMORY[0x277CE2060], OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v8 = 138543874;
    v9 = v5;
    v10 = 2114;
    v11 = v6;
    v12 = 2114;
    v13 = v3;
    _os_log_impl(&dword_270AA8000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Application foreground launch action for notification response action %{public}@ recieved action response %{public}@", &v8, 0x20u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_queue_foregroundLaunchApplication:(id)application withOptions:(id)options responseActionIdentifier:(id)identifier endpoint:(id)endpoint completionHandler:(id)handler
{
  applicationCopy = application;
  optionsCopy = options;
  identifierCopy = identifier;
  endpointCopy = endpoint;
  handlerCopy = handler;
  v16 = handlerCopy;
  if (optionsCopy)
  {
    if (endpointCopy)
    {
      [MEMORY[0x277D0AD78] serviceWithEndpoint:endpointCopy];
    }

    else
    {
      [MEMORY[0x277D0AD78] serviceWithDefaultShellEndpoint];
    }
    v17 = ;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __125__UNSApplicationLauncher__queue_foregroundLaunchApplication_withOptions_responseActionIdentifier_endpoint_completionHandler___block_invoke;
    v18[3] = &unk_279E10E40;
    v19 = applicationCopy;
    v20 = identifierCopy;
    v21 = v16;
    [v17 openApplication:v19 withOptions:optionsCopy completion:v18];
  }

  else if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

void __125__UNSApplicationLauncher__queue_foregroundLaunchApplication_withOptions_responseActionIdentifier_endpoint_completionHandler___block_invoke(void *a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *MEMORY[0x277CE2060];
  if (v6)
  {
    if (os_log_type_enabled(*MEMORY[0x277CE2060], OS_LOG_TYPE_ERROR))
    {
      __125__UNSApplicationLauncher__queue_foregroundLaunchApplication_withOptions_responseActionIdentifier_endpoint_completionHandler___block_invoke_cold_1(a1);
    }
  }

  else if (os_log_type_enabled(*MEMORY[0x277CE2060], OS_LOG_TYPE_DEFAULT))
  {
    v8 = a1[4];
    v9 = a1[5];
    v12 = 138543874;
    v13 = v8;
    v14 = 2114;
    v15 = v9;
    v16 = 2114;
    v17 = 0;
    _os_log_impl(&dword_270AA8000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Foreground application launch succeeed for action response %{public}@: %{public}@", &v12, 0x20u);
  }

  v10 = a1[6];
  if (v10)
  {
    (*(v10 + 16))(v10, v6 == 0);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)backgroundLaunchApplication:(id)application withResponse:(id)response completionHandler:(id)handler
{
  v25 = *MEMORY[0x277D85DE8];
  applicationCopy = application;
  responseCopy = response;
  handlerCopy = handler;
  v11 = *MEMORY[0x277CE2060];
  if (os_log_type_enabled(*MEMORY[0x277CE2060], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v22 = applicationCopy;
    v23 = 2112;
    v24 = responseCopy;
    _os_log_impl(&dword_270AA8000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] backgroundLaunchApplication: response: %@", buf, 0x16u);
  }

  queue = self->_queue;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __85__UNSApplicationLauncher_backgroundLaunchApplication_withResponse_completionHandler___block_invoke;
  v17[3] = &unk_279E10D78;
  v17[4] = self;
  v18 = applicationCopy;
  v19 = responseCopy;
  v20 = handlerCopy;
  v13 = handlerCopy;
  v14 = responseCopy;
  v15 = applicationCopy;
  dispatch_async(queue, v17);

  v16 = *MEMORY[0x277D85DE8];
}

uint64_t __85__UNSApplicationLauncher_backgroundLaunchApplication_withResponse_completionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _queue_acquireActivityKitAssertionIfNeededForBundleIdentifier:*(a1 + 40) withResponse:*(a1 + 48)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);

  return [v2 _queue_backgroundLaunchApplication:v3 withResponse:v4 completionHandler:v5];
}

- (void)_queue_acquireActivityKitAssertionIfNeededForBundleIdentifier:(id)identifier withResponse:(id)response
{
  v34 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  responseCopy = response;
  actionIdentifier = [responseCopy actionIdentifier];
  v8 = [actionIdentifier isEqualToString:*MEMORY[0x277CE20F0]];

  if ((v8 & 1) == 0)
  {
    v9 = MEMORY[0x277CE2060];
    v10 = *MEMORY[0x277CE2060];
    if (os_log_type_enabled(*MEMORY[0x277CE2060], OS_LOG_TYPE_DEFAULT))
    {
      v11 = v10;
      actionIdentifier2 = [responseCopy actionIdentifier];
      v26 = 138543618;
      v27 = identifierCopy;
      v28 = 2114;
      v29 = actionIdentifier2;
      _os_log_impl(&dword_270AA8000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] Attempting to acquire live activity assertion for notification response with action identifier %{public}@.", &v26, 0x16u);
    }

    v13 = [objc_alloc(MEMORY[0x277D4D500]) initWithBundleIdentifier:identifierCopy];
    v14 = [objc_alloc(MEMORY[0x277D4D4F8]) initWithExplanation:@"Background Launch App To Launch Live Activity from Notification" target:v13 invalidationHandler:0];
    state = [v14 state];
    v16 = *v9;
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
    if (state == 1)
    {
      if (v17)
      {
        v18 = v16;
        actionIdentifier3 = [responseCopy actionIdentifier];
        state2 = [v14 state];
        invalidationReason = [v14 invalidationReason];
        v26 = 138544130;
        v27 = identifierCopy;
        v28 = 2114;
        v29 = actionIdentifier3;
        v30 = 2050;
        v31 = state2;
        v32 = 2050;
        v33 = invalidationReason;
        v22 = "[%{public}@] Successfully to acquired live activity assertion for notification response with action identifier %{public}@. SNAAssertionState=%{public}lu SNAInvalidationReason=%{public}lu";
        v23 = v18;
        v24 = 42;
LABEL_9:
        _os_log_impl(&dword_270AA8000, v23, OS_LOG_TYPE_DEFAULT, v22, &v26, v24);
      }
    }

    else if (v17)
    {
      v18 = v16;
      actionIdentifier3 = [responseCopy actionIdentifier];
      v26 = 138543618;
      v27 = identifierCopy;
      v28 = 2114;
      v29 = actionIdentifier3;
      v22 = "[%{public}@] Failed to acquire live activity assertion for notification response with action identifier %{public}@.";
      v23 = v18;
      v24 = 22;
      goto LABEL_9;
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)_queue_backgroundLaunchApplication:(id)application withResponse:(id)response completionHandler:(id)handler
{
  v47 = *MEMORY[0x277D85DE8];
  applicationCopy = application;
  responseCopy = response;
  handlerCopy = handler;
  actionIdentifier = [responseCopy actionIdentifier];
  v11 = MEMORY[0x277CE2060];
  v12 = *MEMORY[0x277CE2060];
  if (os_log_type_enabled(*MEMORY[0x277CE2060], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    *&buf[4] = applicationCopy;
    *&buf[12] = 2114;
    *&buf[14] = actionIdentifier;
    _os_log_impl(&dword_270AA8000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] Launch application in background for notification response %{public}@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v44 = __Block_byref_object_copy__3;
  v45 = __Block_byref_object_dispose__3;
  v46 = 0;
  objc_initWeak(&location, self);
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __92__UNSApplicationLauncher__queue_backgroundLaunchApplication_withResponse_completionHandler___block_invoke;
  v32[3] = &unk_279E10E90;
  v32[4] = self;
  v13 = applicationCopy;
  v33 = v13;
  v14 = actionIdentifier;
  v34 = v14;
  objc_copyWeak(&v36, &location);
  v35 = buf;
  v15 = [(UNSApplicationLauncher *)self _queue_actionForNotificationResponse:responseCopy bundleIdentifier:v13 withHandler:v32];
  v16 = *v11;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *v39 = 138543618;
    v40 = v13;
    v41 = 2112;
    v42 = v15;
    _os_log_impl(&dword_270AA8000, v16, OS_LOG_TYPE_DEFAULT, "[%{public}@] Launch application in background for notification response: %@", v39, 0x16u);
  }

  if (v15)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v38 = v15;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v38 count:1];
    [dictionary bs_setSafeObject:v18 forKey:*MEMORY[0x277D0ABD0]];

    [dictionary bs_setSafeObject:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D0ABF0]];
    notification = [responseCopy notification];
    request = [notification request];
    content = [request content];
    targetContentIdentifier = [content targetContentIdentifier];

    [dictionary bs_setSafeObject:targetContentIdentifier forKey:*MEMORY[0x277D77838]];
    v23 = [MEMORY[0x277D0AD60] optionsWithDictionary:dictionary];
    serviceWithDefaultShellEndpoint = [MEMORY[0x277D0AD78] serviceWithDefaultShellEndpoint];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __92__UNSApplicationLauncher__queue_backgroundLaunchApplication_withResponse_completionHandler___block_invoke_12;
    v27[3] = &unk_279E10EE0;
    v27[4] = self;
    v28 = v13;
    v29 = v14;
    v31 = buf;
    v30 = handlerCopy;
    [serviceWithDefaultShellEndpoint openApplication:v28 withOptions:v23 completion:v27];
  }

  else if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
  }

  objc_destroyWeak(&v36);
  objc_destroyWeak(&location);
  _Block_object_dispose(buf, 8);

  v25 = *MEMORY[0x277D85DE8];
}

void __92__UNSApplicationLauncher__queue_backgroundLaunchApplication_withResponse_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __92__UNSApplicationLauncher__queue_backgroundLaunchApplication_withResponse_completionHandler___block_invoke_2;
  block[3] = &unk_279E10E68;
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = v3;
  v5 = v3;
  objc_copyWeak(&v11, (a1 + 64));
  v10 = *(a1 + 56);
  dispatch_async(v4, block);
  objc_destroyWeak(&v11);
}

void __92__UNSApplicationLauncher__queue_backgroundLaunchApplication_withResponse_completionHandler___block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CE2060];
  if (os_log_type_enabled(*MEMORY[0x277CE2060], OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v8 = 138543874;
    v9 = v3;
    v10 = 2114;
    v11 = v4;
    v12 = 2114;
    v13 = v5;
    _os_log_impl(&dword_270AA8000, v2, OS_LOG_TYPE_DEFAULT, "[%{public}@] Application background launch action for notification response action %{public}@ recieved action response %{public}@", &v8, 0x20u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 64));
  [WeakRetained _queue_removeProcessAssertion:*(*(*(a1 + 56) + 8) + 40) forBundleID:*(a1 + 32) invalidate:1];

  v7 = *MEMORY[0x277D85DE8];
}

void __92__UNSApplicationLauncher__queue_backgroundLaunchApplication_withResponse_completionHandler___block_invoke_12(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 24);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __92__UNSApplicationLauncher__queue_backgroundLaunchApplication_withResponse_completionHandler___block_invoke_2_13;
  block[3] = &unk_279E10EB8;
  v15 = v6;
  v16 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 32);
  v17 = v8;
  v18 = v9;
  v19 = v5;
  v13 = *(a1 + 56);
  v10 = v13;
  v20 = v13;
  v11 = v5;
  v12 = v6;
  dispatch_async(v7, block);
}

uint64_t __92__UNSApplicationLauncher__queue_backgroundLaunchApplication_withResponse_completionHandler___block_invoke_2_13(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  v3 = *(a1 + 32);
  v4 = *MEMORY[0x277CE2060];
  v5 = *MEMORY[0x277CE2060];
  if (v3)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __92__UNSApplicationLauncher__queue_backgroundLaunchApplication_withResponse_completionHandler___block_invoke_2_13_cold_1(a1, v2);
    }
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 40);
      v7 = *(a1 + 48);
      *buf = 138543618;
      v20 = v6;
      v21 = 2114;
      v22 = v7;
      _os_log_impl(&dword_270AA8000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Background application launch succeeded for action response %{public}@", buf, 0x16u);
    }

    v8 = *(a1 + 40);
    v9 = *(a1 + 56);
    v10 = [*(a1 + 64) pid];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __92__UNSApplicationLauncher__queue_backgroundLaunchApplication_withResponse_completionHandler___block_invoke_17;
    v16[3] = &unk_279E104B8;
    v17 = *(a1 + 40);
    v18 = *(a1 + 48);
    v11 = [v9 _queue_newProcessAssertionForBundleID:v8 PID:v10 flags:33 reason:10007 name:@"background notification action" watchdogInterval:0 acquisitionHandler:0.0 invalidationHandler:v16];
    v12 = *(*(a1 + 80) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;

    [*(a1 + 56) _queue_removeProcessAssertionsHavingReason:10007 forBundleID:*(a1 + 40) invalidate:1];
    [*(a1 + 56) _queue_addProcessAssertion:*(*(*(a1 + 80) + 8) + 40) forBundleID:*(a1 + 40)];
  }

  result = *(a1 + 72);
  if (result)
  {
    result = (*(result + 16))(result, v3 == 0);
  }

  v15 = *MEMORY[0x277D85DE8];
  return result;
}

void __92__UNSApplicationLauncher__queue_backgroundLaunchApplication_withResponse_completionHandler___block_invoke_17(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CE2060];
  if (os_log_type_enabled(*MEMORY[0x277CE2060], OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = 138543618;
    v7 = v3;
    v8 = 2114;
    v9 = v4;
    _os_log_impl(&dword_270AA8000, v2, OS_LOG_TYPE_DEFAULT, "[%{public}@] Assertion acquired for application background launch action for notification response action %{public}@ was invalidated", &v6, 0x16u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (id)_queue_actionForNotificationResponse:(id)response bundleIdentifier:(id)identifier withHandler:(id)handler error:(id *)error
{
  v34 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  identifierCopy = identifier;
  handlerCopy = handler;
  notification = [responseCopy notification];
  request = [notification request];
  trigger = [request trigger];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if ((isKindOfClass & 1) != 0 && ([(UNCLocationMonitor *)self->_locationMonitor isBundleIdentifierAuthorizedForRegionMonitoring:identifierCopy]& 1) == 0)
  {
    v21 = *MEMORY[0x277CE2060];
    if (os_log_type_enabled(*MEMORY[0x277CE2060], OS_LOG_TYPE_DEFAULT))
    {
      v22 = v21;
      actionIdentifier = [responseCopy actionIdentifier];
      *buf = 138543618;
      v31 = identifierCopy;
      v32 = 2114;
      v33 = actionIdentifier;
      _os_log_impl(&dword_270AA8000, v22, OS_LOG_TYPE_DEFAULT, "[%{public}@] Suppressing response action %{public}@ because app does not have location authorization.", buf, 0x16u);
    }

    if (error)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:1 userInfo:0];
      *error = v18 = 0;
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v17 = objc_alloc(MEMORY[0x277D757C0]);
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __98__UNSApplicationLauncher__queue_actionForNotificationResponse_bundleIdentifier_withHandler_error___block_invoke;
    v24[3] = &unk_279E10F08;
    v25 = identifierCopy;
    v29 = isKindOfClass & 1;
    v26 = responseCopy;
    selfCopy = self;
    v28 = handlerCopy;
    v18 = [v17 initWithResponse:v26 withHandler:v24];
  }

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

void __98__UNSApplicationLauncher__queue_actionForNotificationResponse_bundleIdentifier_withHandler_error___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277CE2060];
  if (os_log_type_enabled(*MEMORY[0x277CE2060], OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v5 = *(a1 + 40);
    v7 = v4;
    v8 = [v5 actionIdentifier];
    v11 = 138543618;
    v12 = v6;
    v13 = 2114;
    v14 = v8;
    _os_log_impl(&dword_270AA8000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] UINotificationResponseAction %{public}@ withHandler called", &v11, 0x16u);
  }

  if (*(a1 + 64) == 1)
  {
    [*(*(a1 + 48) + 8) markAsHavingReceivedLocation];
  }

  v9 = *(a1 + 56);
  if (v9)
  {
    (*(v9 + 16))(v9, v3);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)willPresentNotification:(id)notification forBundleIdentifier:(id)identifier withCompletionHandler:(id)handler
{
  notificationCopy = notification;
  identifierCopy = identifier;
  handlerCopy = handler;
  queue = self->_queue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __92__UNSApplicationLauncher_willPresentNotification_forBundleIdentifier_withCompletionHandler___block_invoke;
  v15[3] = &unk_279E10D78;
  v15[4] = self;
  v16 = notificationCopy;
  v17 = identifierCopy;
  v18 = handlerCopy;
  v12 = handlerCopy;
  v13 = identifierCopy;
  v14 = notificationCopy;
  dispatch_async(queue, v15);
}

- (void)_queue_willPresentNotification:(id)notification forBundleIdentifier:(id)identifier withCompletionHandler:(id)handler
{
  v51 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  identifierCopy = identifier;
  handlerCopy = handler;
  v29 = notificationCopy;
  request = [notificationCopy request];
  trigger = [request trigger];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(UNCLocationMonitor *)self->_locationMonitor markAsHavingReceivedLocation];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [trigger isContentAvailable] ^ 1;
      goto LABEL_6;
    }
  }

  v12 = 1;
LABEL_6:
  v13 = *MEMORY[0x277CE2060];
  if (os_log_type_enabled(*MEMORY[0x277CE2060], OS_LOG_TYPE_DEFAULT))
  {
    v14 = v13;
    identifier = [request identifier];
    un_logDigest = [identifier un_logDigest];
    *buf = 138543618;
    *&buf[4] = identifierCopy;
    *&buf[12] = 2114;
    *&buf[14] = un_logDigest;
    _os_log_impl(&dword_270AA8000, v14, OS_LOG_TYPE_DEFAULT, "[%{public}@] Send willPresentNotification for notification %{public}@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v48 = __Block_byref_object_copy__3;
  v49 = __Block_byref_object_dispose__3;
  v50 = 0;
  v44[0] = 0;
  v44[1] = v44;
  v44[2] = 0x2020000000;
  v45 = 0;
  objc_initWeak(&location, self);
  v17 = objc_alloc(MEMORY[0x277D75D90]);
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __99__UNSApplicationLauncher__queue_willPresentNotification_forBundleIdentifier_withCompletionHandler___block_invoke;
  v36[3] = &unk_279E10F58;
  v36[4] = self;
  v18 = identifierCopy;
  v37 = v18;
  v19 = request;
  v38 = v19;
  v40 = v44;
  v41 = buf;
  objc_copyWeak(&v42, &location);
  v20 = handlerCopy;
  v39 = v20;
  v21 = [v17 initWithNotification:v29 deliverable:v12 timeout:v36 withHandler:30.0];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v46 = v21;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v46 count:1];
  [dictionary bs_setSafeObject:v23 forKey:*MEMORY[0x277D0ABD0]];

  [dictionary bs_setSafeObject:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D0ABF0]];
  v24 = [MEMORY[0x277D0AD60] optionsWithDictionary:dictionary];
  serviceWithDefaultShellEndpoint = [MEMORY[0x277D0AD78] serviceWithDefaultShellEndpoint];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __99__UNSApplicationLauncher__queue_willPresentNotification_forBundleIdentifier_withCompletionHandler___block_invoke_24;
  v31[3] = &unk_279E10FA8;
  v31[4] = self;
  v26 = v18;
  v32 = v26;
  v27 = v19;
  v33 = v27;
  v34 = v44;
  v35 = buf;
  [serviceWithDefaultShellEndpoint openApplication:v26 withOptions:v24 completion:v31];

  objc_destroyWeak(&v42);
  objc_destroyWeak(&location);
  _Block_object_dispose(v44, 8);
  _Block_object_dispose(buf, 8);

  v28 = *MEMORY[0x277D85DE8];
}

void __99__UNSApplicationLauncher__queue_willPresentNotification_forBundleIdentifier_withCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __99__UNSApplicationLauncher__queue_willPresentNotification_forBundleIdentifier_withCompletionHandler___block_invoke_2;
  block[3] = &unk_279E10F30;
  v7 = v3;
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v11 = *(a1 + 64);
  v5 = v3;
  objc_copyWeak(&v12, (a1 + 80));
  v10 = *(a1 + 56);
  dispatch_async(v4, block);

  objc_destroyWeak(&v12);
}

void __99__UNSApplicationLauncher__queue_willPresentNotification_forBundleIdentifier_withCompletionHandler___block_invoke_2(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  v2 = *(a1 + 32);
  v3 = UNSafeCast();
  v4 = [v3 options];
  v5 = *MEMORY[0x277CE2060];
  if (os_log_type_enabled(*MEMORY[0x277CE2060], OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 40);
    v6 = *(a1 + 48);
    v8 = v5;
    v9 = [v6 identifier];
    v10 = [v9 un_logDigest];
    v14 = 138543874;
    v15 = v7;
    v16 = 2048;
    v17 = v4;
    v18 = 2114;
    v19 = v10;
    _os_log_impl(&dword_270AA8000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Received response %ld for willPresentNotification for notification %{public}@", &v14, 0x20u);
  }

  *(*(*(a1 + 64) + 8) + 24) = 1;
  if (*(*(*(a1 + 72) + 8) + 40))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 80));
    [WeakRetained _queue_removeProcessAssertion:*(*(*(a1 + 72) + 8) + 40) forBundleID:*(a1 + 40) invalidate:1];
  }

  v12 = *(a1 + 56);
  if (v12)
  {
    (*(v12 + 16))(v12, v4, 0);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __99__UNSApplicationLauncher__queue_willPresentNotification_forBundleIdentifier_withCompletionHandler___block_invoke_24(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 24);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __99__UNSApplicationLauncher__queue_willPresentNotification_forBundleIdentifier_withCompletionHandler___block_invoke_2_25;
  block[3] = &unk_279E10F80;
  v13 = v6;
  v14 = *(a1 + 40);
  v8 = *(a1 + 48);
  v18 = *(a1 + 56);
  v9 = *(a1 + 32);
  v15 = v8;
  v16 = v9;
  v17 = v5;
  v10 = v5;
  v11 = v6;
  dispatch_async(v7, block);
}

void __99__UNSApplicationLauncher__queue_willPresentNotification_forBundleIdentifier_withCompletionHandler___block_invoke_2_25(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = (a1 + 32);
  v2 = *(a1 + 32);
  v4 = MEMORY[0x277CE2060];
  v5 = *MEMORY[0x277CE2060];
  v6 = *MEMORY[0x277CE2060];
  if (v2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __99__UNSApplicationLauncher__queue_willPresentNotification_forBundleIdentifier_withCompletionHandler___block_invoke_2_25_cold_1(a1, v5, v3);
    }
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 40);
      v7 = *(a1 + 48);
      v9 = v5;
      v10 = [v7 identifier];
      v11 = [v10 un_logDigest];
      *buf = 138543618;
      v29 = v8;
      v30 = 2114;
      v31 = v11;
      _os_log_impl(&dword_270AA8000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] willPresentNotification delivery succeeded for notification %{public}@", buf, 0x16u);
    }

    if (*(*(*(a1 + 72) + 8) + 24))
    {
      v12 = *v4;
      if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
      {
        v14 = *(a1 + 40);
        v13 = *(a1 + 48);
        v15 = v12;
        v16 = [v13 identifier];
        v17 = [v16 un_logDigest];
        *buf = 138543618;
        v29 = v14;
        v30 = 2114;
        v31 = v17;
        _os_log_impl(&dword_270AA8000, v15, OS_LOG_TYPE_DEFAULT, "[%{public}@] Already received response; not acquiring assertion for willPresentNotification for notification %{public}@", buf, 0x16u);
      }
    }

    else
    {
      v18 = *(a1 + 40);
      v19 = *(a1 + 56);
      v20 = [*(a1 + 64) pid];
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __99__UNSApplicationLauncher__queue_willPresentNotification_forBundleIdentifier_withCompletionHandler___block_invoke_29;
      v25[3] = &unk_279E104B8;
      v26 = *(a1 + 40);
      v27 = *(a1 + 48);
      v21 = [v19 _queue_newProcessAssertionForBundleID:v18 PID:v20 flags:33 reason:10007 name:@"will present notification" watchdogInterval:0 acquisitionHandler:0.0 invalidationHandler:v25];
      v22 = *(*(a1 + 80) + 8);
      v23 = *(v22 + 40);
      *(v22 + 40) = v21;

      [*(a1 + 56) _queue_removeProcessAssertionsHavingReason:10007 forBundleID:*(a1 + 40) invalidate:1];
      [*(a1 + 56) _queue_addProcessAssertion:*(*(*(a1 + 80) + 8) + 40) forBundleID:*(a1 + 40)];
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

void __99__UNSApplicationLauncher__queue_willPresentNotification_forBundleIdentifier_withCompletionHandler___block_invoke_29(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CE2060];
  if (os_log_type_enabled(*MEMORY[0x277CE2060], OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);
    v5 = v2;
    v6 = [v3 identifier];
    v7 = [v6 un_logDigest];
    v9 = 138543618;
    v10 = v4;
    v11 = 2114;
    v12 = v7;
    _os_log_impl(&dword_270AA8000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Assertion acquired for willPresentNotification for notification %{public}@ was invalidated", &v9, 0x16u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __142__UNSApplicationLauncher__queue_newProcessAssertionForBundleID_PID_flags_reason_name_watchdogInterval_acquisitionHandler_invalidationHandler___block_invoke(uint64_t a1)
{
  if ((atomic_exchange((*(*(a1 + 56) + 8) + 48), 1u) & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 80));
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __142__UNSApplicationLauncher__queue_newProcessAssertionForBundleID_PID_flags_reason_name_watchdogInterval_acquisitionHandler_invalidationHandler___block_invoke_2;
    v5[3] = &unk_279E10FD0;
    v6 = *(a1 + 32);
    v3 = *(a1 + 40);
    v4 = *(a1 + 64);
    v7 = v3;
    v9 = v4;
    objc_copyWeak(&v11, (a1 + 88));
    v10 = *(a1 + 72);
    v8 = *(a1 + 48);
    dispatch_async(WeakRetained, v5);

    objc_destroyWeak(&v11);
  }
}

void __142__UNSApplicationLauncher__queue_newProcessAssertionForBundleID_PID_flags_reason_name_watchdogInterval_acquisitionHandler_invalidationHandler___block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CE2060];
  if (os_log_type_enabled(*MEMORY[0x277CE2060], OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v12 = 138543618;
    v13 = v3;
    v14 = 2114;
    v15 = v4;
    _os_log_impl(&dword_270AA8000, v2, OS_LOG_TYPE_DEFAULT, "[%{public}@] Invalidated process assertion for %{public}@", &v12, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((*(*(a1 + 56) + 8) + 40));
  if (WeakRetained)
  {
    v6 = objc_loadWeakRetained((a1 + 72));
    [v6 _queue_removeProcessAssertion:WeakRetained forBundleID:*(a1 + 32) invalidate:0];
  }

  v7 = *(*(*(a1 + 64) + 8) + 40);
  if (v7)
  {
    dispatch_source_cancel(v7);
    v8 = *(*(a1 + 64) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = 0;
  }

  v10 = *(a1 + 48);
  if (v10)
  {
    (*(v10 + 16))();
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __142__UNSApplicationLauncher__queue_newProcessAssertionForBundleID_PID_flags_reason_name_watchdogInterval_acquisitionHandler_invalidationHandler___block_invoke_32(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = a1[4];
  if (v4)
  {
    (*(v4 + 16))(v4, a2);
  }

  if (v2)
  {
    v5 = *(*(a1[6] + 8) + 40);
    if (v5)
    {

      dispatch_resume(v5);
    }
  }

  else
  {
    v6 = *(a1[5] + 16);

    v6();
  }
}

uint64_t __142__UNSApplicationLauncher__queue_newProcessAssertionForBundleID_PID_flags_reason_name_watchdogInterval_acquisitionHandler_invalidationHandler___block_invoke_2_35(void *a1)
{
  v2 = *(a1[5] + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  [*(*(a1[6] + 8) + 40) invalidate];
  v4 = *(a1[4] + 16);

  return v4();
}

- (void)_queue_addProcessAssertion:(id)assertion forBundleID:(id)d
{
  assertionCopy = assertion;
  dCopy = d;
  if (assertionCopy && dCopy)
  {
    array = [(NSMutableDictionary *)self->_bundleIdentifierToAssertions objectForKey:dCopy];
    if (!array)
    {
      array = [MEMORY[0x277CBEB18] array];
      [(NSMutableDictionary *)self->_bundleIdentifierToAssertions setObject:array forKey:dCopy];
    }

    [array addObject:assertionCopy];
  }
}

- (void)_queue_removeProcessAssertion:(id)assertion forBundleID:(id)d invalidate:(BOOL)invalidate
{
  invalidateCopy = invalidate;
  v20 = *MEMORY[0x277D85DE8];
  assertionCopy = assertion;
  dCopy = d;
  v10 = dCopy;
  if (assertionCopy && dCopy)
  {
    v11 = [(NSMutableDictionary *)self->_bundleIdentifierToAssertions objectForKey:dCopy];
    if ([v11 containsObject:assertionCopy])
    {
      v12 = *MEMORY[0x277CE2060];
      if (os_log_type_enabled(*MEMORY[0x277CE2060], OS_LOG_TYPE_DEFAULT))
      {
        v13 = v12;
        name = [assertionCopy name];
        v16 = 138543618;
        v17 = v10;
        v18 = 2114;
        v19 = name;
        _os_log_impl(&dword_270AA8000, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@] Removing process assertion for %{public}@", &v16, 0x16u);
      }

      [v11 removeObject:assertionCopy];
      if (![v11 count])
      {
        [(NSMutableDictionary *)self->_bundleIdentifierToAssertions removeObjectForKey:v10];
      }

      if (invalidateCopy)
      {
        [assertionCopy invalidate];
      }
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_queue_removeProcessAssertionsHavingReason:(unsigned int)reason forBundleID:(id)d invalidate:(BOOL)invalidate
{
  dCopy = d;
  if (dCopy)
  {
    v9 = [(NSMutableDictionary *)self->_bundleIdentifierToAssertions objectForKey:dCopy];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __92__UNSApplicationLauncher__queue_removeProcessAssertionsHavingReason_forBundleID_invalidate___block_invoke;
    v14[3] = &__block_descriptor_37_e29__16__0__BKSProcessAssertion_8l;
    reasonCopy = reason;
    invalidateCopy = invalidate;
    v10 = [v9 bs_mapNoNulls:v14];
    v11 = [v10 count];
    bundleIdentifierToAssertions = self->_bundleIdentifierToAssertions;
    if (v11)
    {
      v13 = [v10 mutableCopy];
      [(NSMutableDictionary *)bundleIdentifierToAssertions setObject:v13 forKey:dCopy];
    }

    else
    {
      [(NSMutableDictionary *)bundleIdentifierToAssertions removeObjectForKey:dCopy];
    }
  }
}

id __92__UNSApplicationLauncher__queue_removeProcessAssertionsHavingReason_forBundleID_invalidate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 reason] == *(a1 + 32))
  {
    if (*(a1 + 36) == 1)
    {
      [v3 invalidate];
    }

    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  return v4;
}

- (void)_removeAllProcessAssertionsAndInvalidate:(BOOL)invalidate
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __67__UNSApplicationLauncher__removeAllProcessAssertionsAndInvalidate___block_invoke;
  v4[3] = &unk_279E11090;
  v4[4] = self;
  invalidateCopy = invalidate;
  dispatch_async(queue, v4);
}

- (void)_queue_removeAllProcessAssertionsAndInvalidate:(BOOL)invalidate
{
  v26 = *MEMORY[0x277D85DE8];
  if (invalidate)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    allValues = [(NSMutableDictionary *)self->_bundleIdentifierToAssertions allValues];
    v5 = [allValues countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v21;
      do
      {
        v8 = 0;
        do
        {
          if (*v21 != v7)
          {
            objc_enumerationMutation(allValues);
          }

          v9 = *(*(&v20 + 1) + 8 * v8);
          v16 = 0u;
          v17 = 0u;
          v18 = 0u;
          v19 = 0u;
          v10 = v9;
          v11 = [v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v17;
            do
            {
              v14 = 0;
              do
              {
                if (*v17 != v13)
                {
                  objc_enumerationMutation(v10);
                }

                [*(*(&v16 + 1) + 8 * v14++) invalidate];
              }

              while (v12 != v14);
              v12 = [v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
            }

            while (v12);
          }

          ++v8;
        }

        while (v8 != v6);
        v6 = [allValues countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v6);
    }
  }

  [(NSMutableDictionary *)self->_bundleIdentifierToAssertions removeAllObjects];
  v15 = *MEMORY[0x277D85DE8];
}

void __125__UNSApplicationLauncher__queue_foregroundLaunchApplication_withOptions_responseActionIdentifier_endpoint_completionHandler___block_invoke_cold_1(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_1_1(&dword_270AA8000, v3, v4, "[%{public}@] Foreground application launch failed for action response %{public}@: %{public}@");
  v5 = *MEMORY[0x277D85DE8];
}

void __92__UNSApplicationLauncher__queue_backgroundLaunchApplication_withResponse_completionHandler___block_invoke_2_13_cold_1(uint64_t a1, uint64_t *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *a2;
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_1_1(&dword_270AA8000, v5, v6, "[%{public}@] Background application launch failed for action response %{public}@: %{public}@");
  v7 = *MEMORY[0x277D85DE8];
}

void __99__UNSApplicationLauncher__queue_willPresentNotification_forBundleIdentifier_withCompletionHandler___block_invoke_2_25_cold_1(uint64_t a1, void *a2, uint64_t *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = a2;
  v7 = [v4 identifier];
  v8 = [v7 un_logDigest];
  v9 = *a3;
  v11 = 138543874;
  v12 = v5;
  v13 = 2114;
  v14 = v8;
  v15 = 2114;
  v16 = v9;
  _os_log_error_impl(&dword_270AA8000, v6, OS_LOG_TYPE_ERROR, "[%{public}@] willPresentNotification delivery failed for notification %{public}@: %{public}@", &v11, 0x20u);

  v10 = *MEMORY[0x277D85DE8];
}

@end