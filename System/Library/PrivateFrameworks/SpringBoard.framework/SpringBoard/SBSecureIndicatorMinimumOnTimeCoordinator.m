@interface SBSecureIndicatorMinimumOnTimeCoordinator
- (BOOL)isMinimumOnTimeSatisfiedForIndicators:(int64_t)a3;
- (SBSecureIndicatorMinimumOnTimeCoordinator)init;
- (SBSecureIndicatorMinimumOnTimeCoordinator)initWithMinimumOnTimeProvider:(id)a3;
- (_SBSecureIndicatorMinimumOnTimeCoordinatedBlockRegistration)_addRegistrationForIndicators:(void *)a3 block:;
- (id)performWhenMinimumOnTimeIsSatisfiedForIndicators:(int64_t)a3 block:(id)a4;
- (uint64_t)_normalizedIndicatorMaskForMask:(uint64_t)a1;
- (void)_cancelTimerForIndicators:(uint64_t)a1;
- (void)_removeRegistration:(uint64_t)a1;
- (void)_scheduleTimerWithRemainingTime:(double)a3 forIndicators:;
- (void)dealloc;
- (void)registrationDidInvalidate:(id)a3;
@end

@implementation SBSecureIndicatorMinimumOnTimeCoordinator

- (SBSecureIndicatorMinimumOnTimeCoordinator)init
{
  v3 = objc_alloc_init(SBSensorAccessMinimumOnTimeProvider);
  v4 = [(SBSecureIndicatorMinimumOnTimeCoordinator *)self initWithMinimumOnTimeProvider:v3];

  return v4;
}

- (SBSecureIndicatorMinimumOnTimeCoordinator)initWithMinimumOnTimeProvider:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = SBSecureIndicatorMinimumOnTimeCoordinator;
  v6 = [(SBSecureIndicatorMinimumOnTimeCoordinator *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_minimumOnTimeProvider, a3);
    v8 = [MEMORY[0x277CBEB38] dictionary];
    blockRegistrationsByIndicatorMask = v7->_blockRegistrationsByIndicatorMask;
    v7->_blockRegistrationsByIndicatorMask = v8;

    v10 = [MEMORY[0x277CBEB38] dictionary];
    minimumOnTimeTimersByIndicatorMask = v7->_minimumOnTimeTimersByIndicatorMask;
    v7->_minimumOnTimeTimersByIndicatorMask = v10;
  }

  return v7;
}

- (id)performWhenMinimumOnTimeIsSatisfiedForIndicators:(int64_t)a3 block:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = v6;
  if (!v6)
  {
    goto LABEL_8;
  }

  if (!self)
  {
LABEL_7:
    v6[2](v6);
LABEL_8:
    v9 = 0;
    goto LABEL_17;
  }

  if ((~a3 & 3) != 0)
  {
    if (a3)
    {
      v8 = 1;
      goto LABEL_11;
    }

    if ((a3 & 2) != 0)
    {
      v8 = a3 & 2;
      goto LABEL_11;
    }

    goto LABEL_7;
  }

  v8 = 3;
LABEL_11:
  v10 = MEMORY[0x277CCABB0];
  v11 = self->_minimumOnTimeTimersByIndicatorMask;
  v12 = [v10 numberWithInteger:v8];
  v13 = [(NSMutableDictionary *)v11 objectForKey:v12];

  if (v13)
  {
    v21 = SBLogStatusBarish();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = SBSecureIndicatorMaskDescription(a3);
      v24 = 138412290;
      v25 = v22;
      _os_log_impl(&dword_21ED4E000, v21, OS_LOG_TYPE_DEFAULT, "[Recording Indicator][MOT]: scheduling operation with existing MOT timer for indicators: %@", &v24, 0xCu);
    }

    v9 = [(SBSecureIndicatorMinimumOnTimeCoordinator *)self _addRegistrationForIndicators:v8 block:v7];
  }

  else
  {
    [(SBSecureIndicatorMinimumOnTimeProvider *)self->_minimumOnTimeProvider remainingTimeToSatisfyMinimumOnTimeForIndicators:v8 error:0];
    v15 = v14;
    v16 = BSFloatEqualToFloat();
    v17 = SBLogStatusBarish();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
    if (v16)
    {
      if (v18)
      {
        v19 = SBSecureIndicatorMaskDescription(a3);
        v24 = 138412290;
        v25 = v19;
        _os_log_impl(&dword_21ED4E000, v17, OS_LOG_TYPE_DEFAULT, "[Recording Indicator][MOT]: executing operation immediately for indicators: %@", &v24, 0xCu);
      }

      v7[2](v7);
      v9 = 0;
    }

    else
    {
      if (v18)
      {
        v23 = SBSecureIndicatorMaskDescription(a3);
        v24 = 138412290;
        v25 = v23;
        _os_log_impl(&dword_21ED4E000, v17, OS_LOG_TYPE_DEFAULT, "[Recording Indicator][MOT]: scheduling operation with new MOT timer for indicators: %@", &v24, 0xCu);
      }

      v9 = [(SBSecureIndicatorMinimumOnTimeCoordinator *)self _addRegistrationForIndicators:v8 block:v7];
      [(SBSecureIndicatorMinimumOnTimeCoordinator *)&self->super.isa _scheduleTimerWithRemainingTime:v8 forIndicators:v15];
    }
  }

LABEL_17:

  return v9;
}

- (void)_scheduleTimerWithRemainingTime:(double)a3 forIndicators:
{
  v23 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v6 = SBSecureIndicatorMaskDescription(a2);
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"SBSecureIndicatorMinimumOnTimeCoordinator:%@", v6];
    v8 = [objc_alloc(MEMORY[0x277CF0BD8]) initWithIdentifier:v7];
    v9 = [MEMORY[0x277CCABB0] numberWithInteger:a2];
    [a1[3] setObject:v8 forKey:v9];
    objc_initWeak(&location, a1);
    v10 = SBLogStatusBarish();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v20 = a3;
      v21 = 2112;
      v22 = v6;
      _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, "[Recording Indicator][MOT]: scheduling MOT timer with duration: %f for indicators: %@", buf, 0x16u);
    }

    v11 = MEMORY[0x277D85CD0];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __91__SBSecureIndicatorMinimumOnTimeCoordinator__scheduleTimerWithRemainingTime_forIndicators___block_invoke;
    v14[3] = &unk_2783B6038;
    objc_copyWeak(v17, &location);
    v17[1] = a2;
    v12 = v6;
    v15 = v12;
    v13 = v9;
    v16 = v13;
    [v8 scheduleWithFireInterval:MEMORY[0x277D85CD0] leewayInterval:v14 queue:a3 handler:0.5];

    objc_destroyWeak(v17);
    objc_destroyWeak(&location);
  }
}

- (void)dealloc
{
  v2 = self;
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  if (self)
  {
    self = self->_minimumOnTimeTimersByIndicatorMask;
  }

  v3 = [(SBSecureIndicatorMinimumOnTimeCoordinator *)self allValues];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v9 + 1) + 8 * i) invalidate];
      }

      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8.receiver = v2;
  v8.super_class = SBSecureIndicatorMinimumOnTimeCoordinator;
  [(SBSecureIndicatorMinimumOnTimeCoordinator *)&v8 dealloc];
}

- (BOOL)isMinimumOnTimeSatisfiedForIndicators:(int64_t)a3
{
  if (self)
  {
    self = self->_minimumOnTimeProvider;
  }

  [(SBSecureIndicatorMinimumOnTimeCoordinator *)self remainingTimeToSatisfyMinimumOnTimeForIndicators:a3 error:0];

  return BSFloatEqualToFloat();
}

- (uint64_t)_normalizedIndicatorMaskForMask:(uint64_t)a1
{
  v2 = a2 & 2;
  if (a2)
  {
    v2 = 1;
  }

  v3 = 3;
  if ((~a2 & 3) != 0)
  {
    v3 = v2;
  }

  if (a1)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

- (_SBSecureIndicatorMinimumOnTimeCoordinatedBlockRegistration)_addRegistrationForIndicators:(void *)a3 block:
{
  if (a1)
  {
    v5 = a3;
    v6 = [[_SBSecureIndicatorMinimumOnTimeCoordinatedBlockRegistration alloc] initWithIndicators:a2 block:v5];

    [(_SBSecureIndicatorMinimumOnTimeCoordinatedBlockRegistration *)v6 setDelegate:a1];
    v7 = *(a1 + 16);
    v8 = [MEMORY[0x277CCABB0] numberWithInteger:a2];
    v9 = [v7 objectForKey:v8];
    if (!v9)
    {
      v9 = [MEMORY[0x277CBEB18] array];
      [v7 setObject:v9 forKey:v8];
    }

    [v9 addObject:v6];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)registrationDidInvalidate:(id)a3
{
  v4 = a3;
  [(SBSecureIndicatorMinimumOnTimeCoordinator *)self _removeRegistration:v4];
  v5 = [v4 indicators];

  v6 = SBSecureIndicatorMaskDescription(v5);
  v7 = SBLogStatusBarish();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0_30(&dword_21ED4E000, v8, v9, "[Recording Indicator][MOT]: canceling operation for indicators: %@", v10, v11, v12, v13, 2u);
  }

  if (self)
  {
    blockRegistrationsByIndicatorMask = self->_blockRegistrationsByIndicatorMask;
  }

  else
  {
    blockRegistrationsByIndicatorMask = 0;
  }

  v15 = MEMORY[0x277CCABB0];
  v16 = blockRegistrationsByIndicatorMask;
  v17 = [v15 numberWithInteger:v5];
  v18 = [(NSMutableDictionary *)v16 objectForKey:v17];

  v19 = [v18 count];
  if (!v19)
  {
    v20 = SBLogStatusBarish();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_0_30(&dword_21ED4E000, v21, v22, "[Recording Indicator][MOT]: canceling MOT timer for indicators: %@", v23, v24, v25, v26, 2u);
    }

    [(SBSecureIndicatorMinimumOnTimeCoordinator *)self _cancelTimerForIndicators:v5];
  }
}

- (void)_removeRegistration:(uint64_t)a1
{
  if (a1)
  {
    v7 = *(a1 + 16);
    v3 = MEMORY[0x277CCABB0];
    v4 = a2;
    v5 = [v3 numberWithInteger:{objc_msgSend(v4, "indicators")}];
    v6 = [v7 objectForKey:v5];
    [v6 removeObject:v4];

    if (![v6 count])
    {
      [v7 removeObjectForKey:v5];
    }
  }
}

- (void)_cancelTimerForIndicators:(uint64_t)a1
{
  if (a1)
  {
    v3 = MEMORY[0x277CCABB0];
    v4 = *(a1 + 24);
    v6 = [v3 numberWithInteger:a2];
    v5 = [v4 objectForKey:v6];
    [v5 invalidate];
    [v4 removeObjectForKey:v6];
  }
}

void __91__SBSecureIndicatorMinimumOnTimeCoordinator__scheduleTimerWithRemainingTime_forIndicators___block_invoke(uint64_t a1, void *a2)
{
  v41 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [v3 invalidate];
  if (WeakRetained)
  {
    v5 = WeakRetained[3];
  }

  else
  {
    v5 = 0;
  }

  v6 = MEMORY[0x277CCABB0];
  v7 = *(a1 + 56);
  v8 = v5;
  v9 = [v6 numberWithInteger:v7];
  [v8 removeObjectForKey:v9];

  if (WeakRetained)
  {
    v10 = WeakRetained[1];
  }

  else
  {
    v10 = 0;
  }

  v11 = *(a1 + 56);
  v35 = 0;
  v12 = v10;
  [v12 remainingTimeToSatisfyMinimumOnTimeForIndicators:v11 error:&v35];
  v14 = v13;
  v15 = v35;

  if (v15)
  {
    v16 = SBLogStatusBarish();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(a1 + 32);
      *buf = 138412290;
      v38 = v17;
      _os_log_impl(&dword_21ED4E000, v16, OS_LOG_TYPE_DEFAULT, "[Recording Indicator][MOT]: error checking remaining MOT the second time; assuming MOT satisfied for indicators: %@", buf, 0xCu);
    }

    v14 = 0.0;
  }

  if (BSFloatGreaterThanFloat())
  {
    v18 = SBLogStatusBarish();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *(a1 + 32);
      *buf = 134218242;
      v38 = v14;
      v39 = 2112;
      v40 = v19;
      _os_log_impl(&dword_21ED4E000, v18, OS_LOG_TYPE_DEFAULT, "[Recording Indicator][MOT]: scheduling additional MOT timer with duration: %f for indicators: %@", buf, 0x16u);
    }

    [(SBSecureIndicatorMinimumOnTimeCoordinator *)WeakRetained _scheduleTimerWithRemainingTime:v14 forIndicators:?];
  }

  else
  {
    if (WeakRetained)
    {
      v20 = WeakRetained[2];
    }

    else
    {
      v20 = 0;
    }

    v21 = v20;
    v22 = [v21 objectForKey:*(a1 + 40)];
    [v21 removeObjectForKey:*(a1 + 40)];
    v23 = SBLogStatusBarish();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = *(a1 + 32);
      *buf = 138412290;
      v38 = v24;
      _os_log_impl(&dword_21ED4E000, v23, OS_LOG_TYPE_DEFAULT, "[Recording Indicator][MOT]: MOT satisfied; executing all operations for indicators: %@", buf, 0xCu);
    }

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v25 = v22;
    v26 = [v25 countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v32;
      do
      {
        v29 = 0;
        do
        {
          if (*v32 != v28)
          {
            objc_enumerationMutation(v25);
          }

          v30 = [*(*(&v31 + 1) + 8 * v29) block];
          v30[2]();

          ++v29;
        }

        while (v27 != v29);
        v27 = [v25 countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v27);
    }
  }
}

@end