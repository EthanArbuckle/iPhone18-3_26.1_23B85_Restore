@interface WFXPCActivityScheduler
+ (id)activatedSchedulerWithActivityIdentifier:(id)identifier checkInHandler:(id)handler runHandler:(id)runHandler;
- (WFXPCActivityScheduler)initWithActivityIdentifier:(id)identifier;
- (void)addEligibilityChangedHandler:(id)handler toActivity:(id)activity;
- (void)dealloc;
- (void)invalidate;
- (void)removeEligibilityChangedHandlerIfNeeded;
- (void)scheduleWithCheckInHandler:(id)handler runHandler:(id)runHandler;
@end

@implementation WFXPCActivityScheduler

- (void)removeEligibilityChangedHandlerIfNeeded
{
  v12 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __65__WFXPCActivityScheduler_removeEligibilityChangedHandlerIfNeeded__block_invoke;
  aBlock[3] = &unk_278900148;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  if ([(WFXPCActivityScheduler *)self lock_eligibilityChangedHandler])
  {
    v4 = getWFGeneralLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      activityIdentifier = [(WFXPCActivityScheduler *)self activityIdentifier];
      *buf = 136315394;
      v9 = "[WFXPCActivityScheduler removeEligibilityChangedHandlerIfNeeded]";
      v10 = 2112;
      v11 = activityIdentifier;
      _os_log_impl(&dword_23103C000, v4, OS_LOG_TYPE_INFO, "%s Removing eligibility changed handler for activity: %@", buf, 0x16u);
    }

    xpc_activity_remove_eligibility_changed_handler();
    [(WFXPCActivityScheduler *)self setLock_eligibilityChangedHandler:0];
  }

  v3[2](v3);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)addEligibilityChangedHandler:(id)handler toActivity:(id)activity
{
  v18 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  activityCopy = activity;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __66__WFXPCActivityScheduler_addEligibilityChangedHandler_toActivity___block_invoke;
  aBlock[3] = &unk_278900148;
  aBlock[4] = self;
  v8 = _Block_copy(aBlock);
  activityIdentifier = [(WFXPCActivityScheduler *)self activityIdentifier];
  if ([(WFXPCActivityScheduler *)self lock_eligibilityChangedHandler])
  {
    v10 = getWFGeneralLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315394;
      v15 = "[WFXPCActivityScheduler addEligibilityChangedHandler:toActivity:]";
      v16 = 2112;
      v17 = activityIdentifier;
      _os_log_impl(&dword_23103C000, v10, OS_LOG_TYPE_FAULT, "%s Eligibility changed handler already set for activity %@", buf, 0x16u);
    }
  }

  else
  {
    v11 = getWFGeneralLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v15 = "[WFXPCActivityScheduler addEligibilityChangedHandler:toActivity:]";
      v16 = 2112;
      v17 = activityIdentifier;
      _os_log_impl(&dword_23103C000, v11, OS_LOG_TYPE_INFO, "%s Setting up eligibility changed handler for activity %@", buf, 0x16u);
    }

    [(WFXPCActivityScheduler *)self setLock_eligibilityChangedHandler:xpc_activity_add_eligibility_changed_handler()];
  }

  v8[2](v8);
  v12 = *MEMORY[0x277D85DE8];
}

- (void)scheduleWithCheckInHandler:(id)handler runHandler:(id)runHandler
{
  handlerCopy = handler;
  runHandlerCopy = runHandler;
  activityIdentifier = [(WFXPCActivityScheduler *)self activityIdentifier];
  uTF8String = [activityIdentifier UTF8String];
  v10 = *MEMORY[0x277D86238];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __64__WFXPCActivityScheduler_scheduleWithCheckInHandler_runHandler___block_invoke;
  v14[3] = &unk_2788FFCE8;
  v15 = activityIdentifier;
  selfCopy = self;
  v17 = handlerCopy;
  v18 = runHandlerCopy;
  v11 = runHandlerCopy;
  v12 = handlerCopy;
  v13 = activityIdentifier;
  xpc_activity_register(uTF8String, v10, v14);
}

void __64__WFXPCActivityScheduler_scheduleWithCheckInHandler_runHandler___block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  state = xpc_activity_get_state(v3);
  v5 = getWFGeneralLogObject();
  v6 = v5;
  if (state != 2)
  {
    if (!state)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v7 = *(a1 + 32);
        *buf = 136315394;
        *&buf[4] = "[WFXPCActivityScheduler scheduleWithCheckInHandler:runHandler:]_block_invoke";
        *&buf[12] = 2112;
        *&buf[14] = v7;
        _os_log_impl(&dword_23103C000, v6, OS_LOG_TYPE_INFO, "%s Checkin for XPC activity %@", buf, 0x16u);
      }

      v8 = *(a1 + 48);
      if (v8)
      {
        (*(v8 + 16))(v8, v3);
      }

      goto LABEL_19;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v12 = *(a1 + 32);
      *buf = 136315650;
      *&buf[4] = "[WFXPCActivityScheduler scheduleWithCheckInHandler:runHandler:]_block_invoke";
      *&buf[12] = 2112;
      *&buf[14] = v12;
      *&buf[22] = 2048;
      v23 = state;
      _os_log_impl(&dword_23103C000, v6, OS_LOG_TYPE_ERROR, "%s Unexpected state of %@ XPC activity: %ld", buf, 0x20u);
    }

LABEL_18:

    goto LABEL_19;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v9 = *(a1 + 32);
    *buf = 136315394;
    *&buf[4] = "[WFXPCActivityScheduler scheduleWithCheckInHandler:runHandler:]_block_invoke";
    *&buf[12] = 2112;
    *&buf[14] = v9;
    _os_log_impl(&dword_23103C000, v6, OS_LOG_TYPE_INFO, "%s Starting to run XPC activity %@", buf, 0x16u);
  }

  if (!xpc_activity_set_state(v3, 4))
  {
    v6 = getWFGeneralLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v13 = [*(a1 + 40) activityIdentifier];
      *buf = 136315394;
      *&buf[4] = "[WFXPCActivityScheduler scheduleWithCheckInHandler:runHandler:]_block_invoke";
      *&buf[12] = 2112;
      *&buf[14] = v13;
      _os_log_impl(&dword_23103C000, v6, OS_LOG_TYPE_ERROR, "%s Failed to set %@ XPC activity state to continue", buf, 0x16u);
    }

    goto LABEL_18;
  }

  objc_initWeak(&location, v3);
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v23 = __Block_byref_object_copy__6342;
  v24 = __Block_byref_object_dispose__6343;
  v10 = *(a1 + 56);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __64__WFXPCActivityScheduler_scheduleWithCheckInHandler_runHandler___block_invoke_171;
  v18[3] = &unk_2788FFC98;
  v18[4] = *(a1 + 40);
  objc_copyWeak(&v20, &location);
  v19 = *(a1 + 32);
  v25 = (*(v10 + 16))(v10, v3, v18);
  if (xpc_activity_get_state(v3) != 5)
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __64__WFXPCActivityScheduler_scheduleWithCheckInHandler_runHandler___block_invoke_173;
    v15[3] = &unk_2788FFCC0;
    v11 = *(a1 + 40);
    v16 = *(a1 + 32);
    v17 = buf;
    [v11 addEligibilityChangedHandler:v15 toActivity:v3];
  }

  _Block_object_dispose(buf, 8);

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
LABEL_19:

  v14 = *MEMORY[0x277D85DE8];
}

void __64__WFXPCActivityScheduler_scheduleWithCheckInHandler_runHandler___block_invoke_171(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) removeEligibilityChangedHandlerIfNeeded];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (!WeakRetained)
  {
    v8 = getWFGeneralLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v15 = 136315138;
      v16 = "[WFXPCActivityScheduler scheduleWithCheckInHandler:runHandler:]_block_invoke";
      v10 = "%s xpcActivity is nil in completion handler, the activity has likely been deferred";
      v11 = v8;
      v12 = OS_LOG_TYPE_INFO;
      v13 = 12;
      goto LABEL_12;
    }

LABEL_13:

    goto LABEL_14;
  }

  should_defer = xpc_activity_should_defer(WeakRetained);
  v5 = getWFGeneralLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 40);
    v15 = 136315650;
    v16 = "[WFXPCActivityScheduler scheduleWithCheckInHandler:runHandler:]_block_invoke";
    v17 = 2112;
    v18 = v6;
    v19 = 1024;
    LODWORD(v20) = should_defer;
    _os_log_impl(&dword_23103C000, v5, OS_LOG_TYPE_INFO, "%s XPC activity %@ finished, shouldDefer = %d", &v15, 0x1Cu);
  }

  if (should_defer)
  {
    v7 = 3;
  }

  else
  {
    v7 = 5;
  }

  if (!xpc_activity_set_state(v3, v7))
  {
    v8 = getWFGeneralLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 40);
      v15 = 136315650;
      v16 = "[WFXPCActivityScheduler scheduleWithCheckInHandler:runHandler:]_block_invoke";
      v17 = 2112;
      v18 = v9;
      v19 = 2048;
      v20 = v7;
      v10 = "%s Failed to set %@ XPC activity state to %ld";
      v11 = v8;
      v12 = OS_LOG_TYPE_ERROR;
      v13 = 32;
LABEL_12:
      _os_log_impl(&dword_23103C000, v11, v12, v10, &v15, v13);
      goto LABEL_13;
    }

    goto LABEL_13;
  }

LABEL_14:

  v14 = *MEMORY[0x277D85DE8];
}

void __64__WFXPCActivityScheduler_scheduleWithCheckInHandler_runHandler___block_invoke_173(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (xpc_activity_should_defer(v3))
  {
    v4 = getWFGeneralLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v13 = 136315394;
      v14 = "[WFXPCActivityScheduler scheduleWithCheckInHandler:runHandler:]_block_invoke";
      v15 = 2112;
      v16 = v5;
      _os_log_impl(&dword_23103C000, v4, OS_LOG_TYPE_DEFAULT, "%s XPC activity %@ should defer", &v13, 0x16u);
    }

    if (*(*(*(a1 + 40) + 8) + 40))
    {
      v6 = getWFGeneralLogObject();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = *(a1 + 32);
        v13 = 136315394;
        v14 = "[WFXPCActivityScheduler scheduleWithCheckInHandler:runHandler:]_block_invoke";
        v15 = 2112;
        v16 = v7;
        _os_log_impl(&dword_23103C000, v6, OS_LOG_TYPE_INFO, "%s Calling should defer handler for XPC activity %@", &v13, 0x16u);
      }

      (*(*(*(*(a1 + 40) + 8) + 40) + 16))();
      v8 = *(*(a1 + 40) + 8);
      v9 = *(v8 + 40);
      *(v8 + 40) = 0;
    }

    if (xpc_activity_get_state(v3) != 3 && !xpc_activity_set_state(v3, 3))
    {
      v10 = getWFGeneralLogObject();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = *(a1 + 32);
        v13 = 136315394;
        v14 = "[WFXPCActivityScheduler scheduleWithCheckInHandler:runHandler:]_block_invoke";
        v15 = 2112;
        v16 = v11;
        _os_log_impl(&dword_23103C000, v10, OS_LOG_TYPE_ERROR, "%s Failed to set %@ XPC activity state to deferred", &v13, 0x16u);
      }
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)invalidate
{
  [(WFXPCActivityScheduler *)self removeEligibilityChangedHandlerIfNeeded];
  activityIdentifier = [(WFXPCActivityScheduler *)self activityIdentifier];
  v3 = activityIdentifier;
  xpc_activity_unregister([activityIdentifier UTF8String]);
}

- (void)dealloc
{
  [(WFXPCActivityScheduler *)self removeEligibilityChangedHandlerIfNeeded];
  v3.receiver = self;
  v3.super_class = WFXPCActivityScheduler;
  [(WFXPCActivityScheduler *)&v3 dealloc];
}

- (WFXPCActivityScheduler)initWithActivityIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFXPCActivityScheduler.m" lineNumber:27 description:{@"Invalid parameter not satisfying: %@", @"activityIdentifier"}];
  }

  v13.receiver = self;
  v13.super_class = WFXPCActivityScheduler;
  v6 = [(WFXPCActivityScheduler *)&v13 init];
  v7 = v6;
  if (v6)
  {
    v6->_lock._os_unfair_lock_opaque = 0;
    v8 = [identifierCopy copy];
    activityIdentifier = v7->_activityIdentifier;
    v7->_activityIdentifier = v8;

    v10 = v7;
  }

  return v7;
}

+ (id)activatedSchedulerWithActivityIdentifier:(id)identifier checkInHandler:(id)handler runHandler:(id)runHandler
{
  runHandlerCopy = runHandler;
  handlerCopy = handler;
  identifierCopy = identifier;
  v11 = [[self alloc] initWithActivityIdentifier:identifierCopy];

  [v11 scheduleWithCheckInHandler:handlerCopy runHandler:runHandlerCopy];

  return v11;
}

@end