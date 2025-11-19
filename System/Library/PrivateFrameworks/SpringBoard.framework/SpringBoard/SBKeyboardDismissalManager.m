@interface SBKeyboardDismissalManager
- (BOOL)_shouldPreventDismissalForTouch:(id)a3;
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (SBKeyboardDismissalManager)initWithTouchDeliveryService:(id)a3 systemGestureManager:(id)a4 keyboardArbiterManager:(id)a5 focusController:(id)a6;
- (id)registerKeyboardDismissalParticipant:(id)a3;
- (void)_didTap:(id)a3;
- (void)_reset;
- (void)dealloc;
- (void)gestureRecognizerTransitionedToFailed:(id)a3;
@end

@implementation SBKeyboardDismissalManager

- (SBKeyboardDismissalManager)initWithTouchDeliveryService:(id)a3 systemGestureManager:(id)a4 keyboardArbiterManager:(id)a5 focusController:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v24.receiver = self;
  v24.super_class = SBKeyboardDismissalManager;
  v15 = [(SBKeyboardDismissalManager *)&v24 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_keyboardArbiterManager, a5);
    objc_storeStrong(&v16->_systemGestureManager, a4);
    objc_storeStrong(&v16->_keyboardFocusCoordinator, a6);
    objc_storeStrong(&v16->_touchService, a3);
    v17 = [MEMORY[0x277CF0BD0] assertionWithIdentifier:@"SBKeyboardDismissalManager"];
    participantsAssertion = v16->_participantsAssertion;
    v16->_participantsAssertion = v17;

    v19 = v16->_participantsAssertion;
    v20 = SBLogKeyboardDismissal();
    [(BSCompoundAssertion *)v19 setLog:v20];

    v21 = [[SBFailureNotifyingTapGestureRecognizer alloc] initWithTarget:v16 action:sel__didTap_];
    dismissGestureRecognizer = v16->_dismissGestureRecognizer;
    v16->_dismissGestureRecognizer = &v21->super.super;

    [(UIGestureRecognizer *)v16->_dismissGestureRecognizer setName:@"keyboardDismissal"];
    [(UIGestureRecognizer *)v16->_dismissGestureRecognizer setAllowedTouchTypes:&unk_28336E8B0];
    [(UIGestureRecognizer *)v16->_dismissGestureRecognizer sbf_setPencilTouchesAllowed:_os_feature_enabled_impl()];
    [(UIGestureRecognizer *)v16->_dismissGestureRecognizer setDelegate:v16];
    [(UIGestureRecognizer *)v16->_dismissGestureRecognizer setCancelsTouchesInView:0];
    [(UIGestureRecognizer *)v16->_dismissGestureRecognizer setDelaysTouchesBegan:0];
    [(UIGestureRecognizer *)v16->_dismissGestureRecognizer setDelaysTouchesEnded:0];
    [(SBSystemGestureManager *)v16->_systemGestureManager addGestureRecognizer:v16->_dismissGestureRecognizer withType:129];
  }

  return v16;
}

- (void)dealloc
{
  [(BSCompoundAssertion *)self->_participantsAssertion invalidate];
  v3.receiver = self;
  v3.super_class = SBKeyboardDismissalManager;
  [(SBKeyboardDismissalManager *)&v3 dealloc];
}

- (id)registerKeyboardDismissalParticipant:(id)a3
{
  participantsAssertion = self->_participantsAssertion;
  v4 = MEMORY[0x277CCACA8];
  v5 = a3;
  v6 = [v4 stringWithFormat:@"%@-%p", objc_opt_class(), v5];
  v7 = [(BSCompoundAssertion *)participantsAssertion acquireForReason:v6 withContext:v5];

  return v7;
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([(BSCompoundAssertion *)self->_participantsAssertion isActive]&& !self->_trackedTouchIdentifier)
  {
    if (self->_dismissGestureRecognizer == v6)
    {
      v10 = SBLogKeyboardDismissal();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [SBKeyboardDismissalManager gestureRecognizer:shouldReceiveTouch:];
      }

      v11 = [(SBKeyboardDismissalManager *)self _shouldPreventDismissalForTouch:v7];
      if (!v11)
      {
        v12 = SBLogKeyboardDismissal();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = _SBFLoggingMethodProem();
          v15 = 138543618;
          v16 = v13;
          v17 = 2114;
          v18 = v7;
          _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ tracking touch for keyboard dismiss: %{public}@", &v15, 0x16u);
        }

        v14 = [v7 _touchIdentifier];
        self->_trackedTouchIdentifier = v14;
        [(BKSTouchDeliveryObservationService *)self->_touchService addObserver:self forTouchIdentifier:v14];
      }

      v8 = !v11;
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_didTap:(id)a3
{
  v5 = a3;
  trackedTouchIdentifier = self->_trackedTouchIdentifier;
  if (trackedTouchIdentifier)
  {
    touchExpiryTimer = self->_touchExpiryTimer;
    if (!touchExpiryTimer)
    {
      v8 = [objc_alloc(MEMORY[0x277CF0B50]) initWithIdentifier:@"SBKeyboardDismissalManager.touchExpiry"];
      v9 = self->_touchExpiryTimer;
      self->_touchExpiryTimer = v8;

      trackedTouchIdentifier = self->_trackedTouchIdentifier;
      touchExpiryTimer = self->_touchExpiryTimer;
    }

    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __38__SBKeyboardDismissalManager__didTap___block_invoke;
    v11[3] = &unk_2783BCDD8;
    v12 = trackedTouchIdentifier;
    v11[4] = self;
    v11[5] = a2;
    [(BSAbsoluteMachTimer *)touchExpiryTimer scheduleWithFireInterval:MEMORY[0x277D85CD0] leewayInterval:v11 queue:0.02 handler:0.05];
    v10 = SBLogKeyboardDismissal();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [SBKeyboardDismissalManager _didTap:];
    }
  }
}

uint64_t __38__SBKeyboardDismissalManager__didTap___block_invoke(uint64_t result)
{
  v1 = (result + 32);
  if (*(result + 48) == *(*(result + 32) + 56))
  {
    v2 = result;
    v3 = SBLogKeyboardDismissal();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __38__SBKeyboardDismissalManager__didTap___block_invoke_cold_1(v1, v2, v3);
    }

    return [*v1 _reset];
  }

  return result;
}

- (void)gestureRecognizerTransitionedToFailed:(id)a3
{
  v4 = SBLogKeyboardDismissal();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [SBKeyboardDismissalManager gestureRecognizerTransitionedToFailed:];
  }

  [(SBKeyboardDismissalManager *)self _reset];
}

uint64_t __79__SBKeyboardDismissalManager_touchUpOccuredForIdentifier_detached_context_pid___block_invoke(uint64_t result)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = (result + 32);
  v1 = *(result + 32);
  v3 = *(result + 48);
  if (v3)
  {
    v4 = v3 == *(v1 + 56);
  }

  else
  {
    v4 = 0;
  }

  if (!v4)
  {
    return result;
  }

  v5 = result;
  if ([*(v1 + 40) isActive])
  {
    v6 = *(v5 + 52);
    v7 = [*(*(v5 + 32) + 24) presentingKeyboardProcessIdentifier];
    v8 = SBLogKeyboardDismissal();
    v9 = v8;
    if (v6 != v7)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v13 = _SBFLoggingMethodProem();
        v15 = 138543362;
        v16 = v13;
        _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ dismissing keyboard", &v15, 0xCu);
      }

      [*(*v2 + 1) forceKeyboardAway];
      goto LABEL_16;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v10 = _SBFLoggingMethodProem();
      v12 = *(v5 + 52);
      v11 = *(v5 + 56);
      v15 = 138543874;
      v16 = v10;
      v17 = 1024;
      v18 = v11;
      v19 = 1024;
      v20 = v12;
      _os_log_debug_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEBUG, "%{public}@ hittest keyboard; preventing dismiss; context: %x; pid: %u", &v15, 0x18u);
    }
  }

  else
  {
    v9 = SBLogKeyboardDismissal();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      __79__SBKeyboardDismissalManager_touchUpOccuredForIdentifier_detached_context_pid___block_invoke_cold_1(v2);
    }
  }

LABEL_16:
  v14 = SBLogKeyboardDismissal();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    __79__SBKeyboardDismissalManager_touchUpOccuredForIdentifier_detached_context_pid___block_invoke_cold_2(v2);
  }

  return [*v2 _reset];
}

- (BOOL)_shouldPreventDismissalForTouch:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (([(BSCompoundAssertion *)self->_participantsAssertion isActive]& 1) == 0)
  {
    v5 = SBLogKeyboardDismissal();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [SBKeyboardDismissalManager _shouldPreventDismissalForTouch:];
    }

LABEL_16:
    v14 = 1;
    goto LABEL_17;
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [(BSCompoundAssertion *)self->_participantsAssertion context];
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
LABEL_4:
    v9 = 0;
    while (1)
    {
      if (*v18 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v17 + 1) + 8 * v9);
      if (objc_opt_respondsToSelector())
      {
        v11 = [(SBSystemGestureManager *)self->_systemGestureManager windowForSystemGestures];
        v12 = [v10 keyboardDismissalManager:self shouldPreventDismissalForTouch:v4 inWindow:v11];

        v13 = SBLogKeyboardDismissal();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          v16 = _SBFLoggingMethodProem();
          *buf = 138543874;
          v22 = v16;
          v23 = 2114;
          v24 = v10;
          v25 = 1024;
          v26 = v12;
          _os_log_debug_impl(&dword_21ED4E000, v13, OS_LOG_TYPE_DEBUG, "%{public}@ %{public}@ participantWantsPreventDismiss?: %{BOOL}u", buf, 0x1Cu);
        }

        if (v12)
        {
          goto LABEL_16;
        }
      }

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v17 objects:v27 count:16];
        if (v7)
        {
          goto LABEL_4;
        }

        break;
      }
    }
  }

  v14 = 0;
LABEL_17:

  return v14;
}

- (void)_reset
{
  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_3_24();
  v0 = _SBFLoggingMethodProem();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_13(&dword_21ED4E000, v1, v2, "%{public}@ resetting touch tracking", v3, v4, v5, v6, v7);
}

- (void)gestureRecognizer:shouldReceiveTouch:.cold.1()
{
  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_3_24();
  v0 = _SBFLoggingMethodProem();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_13(&dword_21ED4E000, v1, v2, "%{public}@ first check for preventDismissal", v3, v4, v5, v6, v7);
}

- (void)_didTap:.cold.1()
{
  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_3_24();
  v0 = _SBFLoggingMethodProem();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_13(&dword_21ED4E000, v1, v2, "%{public}@ starting expiry timer for successful tap", v3, v4, v5, v6, v7);
}

void __38__SBKeyboardDismissalManager__didTap___block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  OUTLINED_FUNCTION_1_23(a1);
  v4 = _SBFLoggingMethodProem();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(&dword_21ED4E000, a3, OS_LOG_TYPE_ERROR, "%{public}@ failed to receive touchUp; resetting", v5, 0xCu);
}

- (void)gestureRecognizerTransitionedToFailed:.cold.1()
{
  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_3_24();
  v0 = _SBFLoggingMethodProem();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_13(&dword_21ED4E000, v1, v2, "%{public}@ resetting after failed tap", v3, v4, v5, v6, v7);
}

void __79__SBKeyboardDismissalManager_touchUpOccuredForIdentifier_detached_context_pid___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_1_23(a1);
  v1 = _SBFLoggingMethodProem();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_13(&dword_21ED4E000, v2, v3, "%{public}@ no longer active; preventing dismiss", v4, v5, v6, v7, v8);
}

void __79__SBKeyboardDismissalManager_touchUpOccuredForIdentifier_detached_context_pid___block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_1_23(a1);
  v1 = _SBFLoggingMethodProem();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_13(&dword_21ED4E000, v2, v3, "%{public}@ resetting after touchUp", v4, v5, v6, v7, v8);
}

- (void)_shouldPreventDismissalForTouch:.cold.1()
{
  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_3_24();
  v0 = _SBFLoggingMethodProem();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_13(&dword_21ED4E000, v1, v2, "%{public}@ preventing dismiss as we're not active", v3, v4, v5, v6, v7);
}

@end