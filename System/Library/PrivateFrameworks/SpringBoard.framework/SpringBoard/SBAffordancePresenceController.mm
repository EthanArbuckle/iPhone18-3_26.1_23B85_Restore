@interface SBAffordancePresenceController
- (SBAffordancePresenceController)initWithDelegate:(id)a3 windowScene:(id)a4;
- (SBAffordancePresenceControllerDelegate)delegate;
- (id)_animationSettingsForTransitionFromPresence:(int64_t)a3 toPresence:(int64_t)a4;
- (int64_t)_calculatePresence;
- (void)_unhideIfAutoHidden;
- (void)_updateIdleTouchAwarenessClient;
- (void)_updatePresence;
- (void)_updatePresence:(int64_t)a3 withAnimationSettings:(id)a4;
- (void)client:(id)a3 attentionLostTimeoutDidExpire:(double)a4 forConfigurationGeneration:(unint64_t)a5 withAssociatedObject:(id)a6;
- (void)clientDidResetForUserAttention:(id)a3 withEvent:(id)a4;
- (void)dealloc;
- (void)setAutoHideAffordance:(BOOL)a3;
- (void)setHidden:(BOOL)a3 forReason:(id)a4 animated:(BOOL)a5;
- (void)settings:(id)a3 changedValueForKeyPath:(id)a4;
@end

@implementation SBAffordancePresenceController

- (SBAffordancePresenceController)initWithDelegate:(id)a3 windowScene:(id)a4
{
  v6 = a3;
  v7 = a4;
  v21.receiver = self;
  v21.super_class = SBAffordancePresenceController;
  v8 = [(SBAffordancePresenceController *)&v21 init];
  v9 = v8;
  if (v8)
  {
    [(SBAffordancePresenceController *)v8 setDelegate:v6];
    v9->_autoHideAffordance = 0;
    v10 = +[SBAppSwitcherDomain rootSettings];
    appSwitcherSettings = v9->_appSwitcherSettings;
    v9->_appSwitcherSettings = v10;

    v12 = [MEMORY[0x277D65E80] rootSettings];
    homeGrabberSettings = v9->_homeGrabberSettings;
    v9->_homeGrabberSettings = v12;

    [(SBFHomeGrabberSettings *)v9->_homeGrabberSettings addKeyPathObserver:v9];
    v14 = objc_alloc_init(MEMORY[0x277CEF768]);
    v15 = [MEMORY[0x277CCAD78] UUID];
    v16 = [v15 UUIDString];
    [v14 setIdentifier:v16];

    [v14 setEventMask:8];
    [(SBFHomeGrabberSettings *)v9->_homeGrabberSettings autoHideTime];
    [v14 setAttentionLostTimeout:?];
    v17 = objc_alloc_init(SBAttentionAwarenessClient);
    idleTouchAwarenessClient = v9->_idleTouchAwarenessClient;
    v9->_idleTouchAwarenessClient = v17;

    [(SBAttentionAwarenessClient *)v9->_idleTouchAwarenessClient setDelegate:v9];
    [(SBAttentionAwarenessClient *)v9->_idleTouchAwarenessClient setConfiguration:v14];
    objc_storeWeak(&v9->_windowScene, v7);
    v19 = [v7 transientUIInteractionManager];
    [v19 registerParticipantForTapToUnhide:v9];
  }

  return v9;
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  v4 = [WeakRetained transientUIInteractionManager];
  [v4 unregisterParticipantForTapToUnhide:self];

  if ([(SBAttentionAwarenessClient *)self->_idleTouchAwarenessClient isEnabled])
  {
    [(SBAttentionAwarenessClient *)self->_idleTouchAwarenessClient setEnabled:0];
    v5 = SBLogAffordancePresenceController();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [SBAffordancePresenceController dealloc];
    }
  }

  [(SBAttentionAwarenessClient *)self->_idleTouchAwarenessClient setDelegate:0];
  [(SBAttentionAwarenessClient *)self->_idleTouchAwarenessClient invalidate];
  v6.receiver = self;
  v6.super_class = SBAffordancePresenceController;
  [(SBAffordancePresenceController *)&v6 dealloc];
}

- (void)setAutoHideAffordance:(BOOL)a3
{
  if (self->_autoHideAffordance != a3)
  {
    self->_autoHideAffordance = a3;
    [(SBAffordancePresenceController *)self _updateIdleTouchAwarenessClient];
  }
}

- (int64_t)_calculatePresence
{
  if ([(NSMutableSet *)self->_hiddenOverrides count])
  {
    return 2;
  }

  if (![(SBAttentionAwarenessClient *)self->_idleTouchAwarenessClient isEnabled])
  {
    return 0;
  }

  touchState = self->_touchState;
  if (touchState == 2)
  {
    return 1;
  }

  else
  {
    return 2 * (touchState == 1);
  }
}

- (id)_animationSettingsForTransitionFromPresence:(int64_t)a3 toPresence:(int64_t)a4
{
  if (a3 && a4)
  {
    v5 = 0;
    goto LABEL_9;
  }

  if (a3 && !a4 || !a4 || a3)
  {
    v6 = [(SBFHomeGrabberSettings *)self->_homeGrabberSettings unhideAnimationSettings];
  }

  else
  {
    if ([(NSMutableSet *)self->_hiddenOverrides count])
    {
      v7 = [(SBAppSwitcherSettings *)self->_appSwitcherSettings animationSettings];
      v9 = [v7 statusBarFadeOutSettings];
      v5 = [v9 BSAnimationSettings];

      goto LABEL_8;
    }

    v6 = [(SBFHomeGrabberSettings *)self->_homeGrabberSettings hideAnimationSettings];
  }

  v7 = v6;
  v5 = [v6 BSAnimationSettings];
LABEL_8:

LABEL_9:

  return v5;
}

- (void)_updatePresence
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBAffordancePresenceController _updatePresence]"];
  [OUTLINED_FUNCTION_2_0(v0 v1];
}

- (void)_updateIdleTouchAwarenessClient
{
  autoHideAffordance = self->_autoHideAffordance;
  v4 = [(SBAttentionAwarenessClient *)self->_idleTouchAwarenessClient isEnabled];
  if (autoHideAffordance)
  {
    if (!v4)
    {
      [(SBAttentionAwarenessClient *)self->_idleTouchAwarenessClient resetAttentionLostTimeout];
      [(SBAttentionAwarenessClient *)self->_idleTouchAwarenessClient setEnabled:1];
      ++self->_lastInitialHideToken;
    }
  }

  else if (v4)
  {
    [(SBAttentionAwarenessClient *)self->_idleTouchAwarenessClient setEnabled:0];
    if (self->_touchState == 1)
    {
      self->_touchState = 0;

      [(SBAffordancePresenceController *)self _updatePresence];
    }
  }
}

- (void)_updatePresence:(int64_t)a3 withAnimationSettings:(id)a4
{
  v6 = a4;
  presence = self->_presence;
  if ((a3 != 0) != (presence == 0))
  {
    if (a3 && presence != a3)
    {
      self->_presence = a3;
      if (a3 == 1)
      {
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = __72__SBAffordancePresenceController__updatePresence_withAnimationSettings___block_invoke_3;
        v16[3] = &unk_2783A8C18;
        v16[4] = self;
        [MEMORY[0x277D75D18] performWithoutAnimation:v16];
      }

      else if (a3 == 2)
      {
        [(NSMutableSet *)self->_outstandingVisibilityTransitionTokens count];
      }
    }
  }

  else
  {
    self->_presence = a3;
    v8 = MEMORY[0x277CCABB0];
    ++self->_lastVisibilityTransitionToken;
    v9 = [v8 numberWithUnsignedInteger:?];
    outstandingVisibilityTransitionTokens = self->_outstandingVisibilityTransitionTokens;
    if (outstandingVisibilityTransitionTokens)
    {
      [(NSMutableSet *)outstandingVisibilityTransitionTokens addObject:v9];
    }

    else
    {
      v11 = [MEMORY[0x277CBEB58] setWithObject:v9];
      v12 = self->_outstandingVisibilityTransitionTokens;
      self->_outstandingVisibilityTransitionTokens = v11;
    }

    v13 = [MEMORY[0x277CF0D38] factoryWithSettings:v6];
    [v13 setAllowsAdditiveAnimations:1];
    v14 = MEMORY[0x277CF0D38];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __72__SBAffordancePresenceController__updatePresence_withAnimationSettings___block_invoke;
    v19[3] = &unk_2783A8BC8;
    v19[4] = self;
    v19[5] = a3;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __72__SBAffordancePresenceController__updatePresence_withAnimationSettings___block_invoke_2;
    v17[3] = &unk_2783A8BF0;
    v17[4] = self;
    v18 = v9;
    v15 = v9;
    [v14 animateWithFactory:v13 options:4 actions:v19 completion:v17];
  }
}

void __72__SBAffordancePresenceController__updatePresence_withAnimationSettings___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 affordancePresenceController:*(a1 + 32) didChangeToPresence:*(a1 + 40)];
}

void __72__SBAffordancePresenceController__updatePresence_withAnimationSettings___block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 72) removeObject:*(a1 + 40)];
  if (![*(*(a1 + 32) + 72) count])
  {
    v2 = *(a1 + 32);
    v3 = *(v2 + 72);
    *(v2 + 72) = 0;
  }
}

void __72__SBAffordancePresenceController__updatePresence_withAnimationSettings___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 affordancePresenceController:*(a1 + 32) didChangeToPresence:*(*(a1 + 32) + 24)];
}

- (void)_unhideIfAutoHidden
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 134218240;
  v4 = a1;
  v5 = 2048;
  v6 = a3;
  _os_log_debug_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_DEBUG, "affordance=%p touch idleness changed - preparing to stop asserting hidden after %fs", &v3, 0x16u);
}

uint64_t __53__SBAffordancePresenceController__unhideIfAutoHidden__block_invoke(uint64_t result)
{
  v2 = (result + 32);
  v1 = *(result + 32);
  if (*(v1 + 16) == 2)
  {
    v3 = result;
    if (*(result + 40) == *(v1 + 32))
    {
      *(v1 + 16) = 0;
      [*(*v2 + 8) resetAttentionLostTimeout];
      v4 = SBLogAffordancePresenceController();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        __53__SBAffordancePresenceController__unhideIfAutoHidden__block_invoke_cold_1(v2, v3, v4);
      }

      return [*v2 _updatePresence];
    }
  }

  return result;
}

- (void)setHidden:(BOOL)a3 forReason:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v6 = a3;
  v9 = a4;
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [SBAffordancePresenceController setHidden:forReason:animated:];
    if (v9)
    {
      goto LABEL_3;
    }
  }

  [SBAffordancePresenceController setHidden:a2 forReason:self animated:?];
LABEL_3:
  v10 = [(NSMutableSet *)self->_hiddenOverrides count];
  hiddenOverrides = self->_hiddenOverrides;
  if (v6)
  {
    if (hiddenOverrides)
    {
      v12 = [v9 copy];
      [(NSMutableSet *)hiddenOverrides addObject:v12];
    }

    else
    {
      v13 = MEMORY[0x277CBEB58];
      v14 = [v9 copy];
      v15 = [v13 setWithObject:v14];
      v16 = self->_hiddenOverrides;
      self->_hiddenOverrides = v15;
    }
  }

  else
  {
    [(NSMutableSet *)self->_hiddenOverrides removeObject:v9];
  }

  if ((v10 == 0) == ([(NSMutableSet *)self->_hiddenOverrides count]!= 0))
  {
    v17 = SBLogAffordancePresenceController();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      [SBAffordancePresenceController setHidden:forReason:animated:];
    }

    v18 = [(SBAffordancePresenceController *)self _calculatePresence];
    if (v5)
    {
      v19 = [(SBAffordancePresenceController *)self _animationSettingsForTransitionFromPresence:self->_presence toPresence:v18];
    }

    else
    {
      v19 = 0;
    }

    [(SBAffordancePresenceController *)self _updatePresence:v18 withAnimationSettings:v19];
  }
}

- (void)client:(id)a3 attentionLostTimeoutDidExpire:(double)a4 forConfigurationGeneration:(unint64_t)a5 withAssociatedObject:(id)a6
{
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBAffordancePresenceController client:attentionLostTimeoutDidExpire:forConfigurationGeneration:withAssociatedObject:];
  }

  if ([(SBAttentionAwarenessClient *)self->_idleTouchAwarenessClient isEnabled]&& self->_touchState != 1)
  {
    self->_touchState = 1;
    v7 = SBLogAffordancePresenceController();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [SBAffordancePresenceController client:attentionLostTimeoutDidExpire:forConfigurationGeneration:withAssociatedObject:];
    }

    [(SBAffordancePresenceController *)self _updatePresence];
  }
}

- (void)clientDidResetForUserAttention:(id)a3 withEvent:(id)a4
{
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBAffordancePresenceController clientDidResetForUserAttention:withEvent:];
  }
}

- (void)settings:(id)a3 changedValueForKeyPath:(id)a4
{
  [(SBAffordancePresenceController *)self _updatePresence:a3];

  [(SBAffordancePresenceController *)self _updateIdleTouchAwarenessClient];
}

- (SBAffordancePresenceControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __53__SBAffordancePresenceController__unhideIfAutoHidden__block_invoke_cold_1(void *a1, uint64_t a2, NSObject *a3)
{
  *v3 = 134218240;
  *&v3[4] = *a1;
  *&v3[12] = 2048;
  *&v3[14] = *(a2 + 48);
  OUTLINED_FUNCTION_3_3(&dword_21ED4E000, a2, a3, "affordance=%p touch idleness changed - stopped asserting hidden after %fs", *v3, *&v3[8]);
}

- (void)setHidden:forReason:animated:.cold.1()
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBAffordancePresenceController setHidden:forReason:animated:]"];
  [OUTLINED_FUNCTION_2_0(v0 v1];
}

- (void)setHidden:(uint64_t)a1 forReason:(uint64_t)a2 animated:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBAffordancePresenceController.m" lineNumber:237 description:{@"Invalid parameter not satisfying: %@", @"reason"}];
}

- (void)client:attentionLostTimeoutDidExpire:forConfigurationGeneration:withAssociatedObject:.cold.1()
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBAffordancePresenceController client:attentionLostTimeoutDidExpire:forConfigurationGeneration:withAssociatedObject:]"];
  [OUTLINED_FUNCTION_2_0(v0 v1];
}

- (void)clientDidResetForUserAttention:withEvent:.cold.1()
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBAffordancePresenceController clientDidResetForUserAttention:withEvent:]"];
  [OUTLINED_FUNCTION_2_0(v0 v1];
}

@end