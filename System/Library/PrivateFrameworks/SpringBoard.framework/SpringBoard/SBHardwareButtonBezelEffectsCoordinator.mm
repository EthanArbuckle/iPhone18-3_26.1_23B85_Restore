@interface SBHardwareButtonBezelEffectsCoordinator
- (BOOL)hintDropletsEnabled;
- (CGPoint)preludeAnimationVelocity;
- (CGRect)preludeAnimationRectPresentationValue;
- (SBHardwareButtonBezelEffectsCoordinator)initWithWindowScene:(id)a3;
- (id)_policyAggregator;
- (id)activateHintDropletForButton:(int64_t)a3;
- (id)animateLaunchZoomUpPreludeFromButton:(int64_t)a3;
- (id)associateHintView:(id)a3 withButton:(int64_t)a4;
- (id)commandeerDropletAnimationWithToken:(id)a3;
- (id)observePortalSourceWithHandler:(id)a3;
- (id)requestSystemGlowEffectWithInitialStyle:(int64_t)a3 reason:(id)a4;
- (id)setDropletLayoutCallback:(id)a3 forButton:(int64_t)a4;
- (void)_beginRequiringBacklightAssertionForReason:(id)a3;
- (void)_endRequiringBacklightAssertionForReason:(id)a3;
- (void)_presentOrDismissLaunchAnimationWindowIfNecessary;
- (void)_reevaluateSystemGlowEffect;
- (void)_setHintDropletWindowVisible:(BOOL)a3;
- (void)_setLaunchAnimationWindowVisible:(BOOL)a3;
- (void)_setShockwaveState:(int64_t)a3 completion:(id)a4;
- (void)_updateLaunchAnimationWindowLevelIfNecessary;
- (void)cancelPrelude;
- (void)dealloc;
- (void)hintDropletViewControllerDidBecomeIdle:(id)a3;
- (void)preludeToken:(id)a3 expandHintingDropletByAddingComponents:(unint64_t)a4 shockwave:(BOOL)a5;
- (void)preludeToken:(id)a3 updateShockwaveLightType:(int64_t)a4;
- (void)updateHintContentVisibility:(int64_t)a3 forButton:(int64_t)a4 animationSettings:(id)a5;
@end

@implementation SBHardwareButtonBezelEffectsCoordinator

- (SBHardwareButtonBezelEffectsCoordinator)initWithWindowScene:(id)a3
{
  v5 = a3;
  v16.receiver = self;
  v16.super_class = SBHardwareButtonBezelEffectsCoordinator;
  v6 = [(SBHardwareButtonBezelEffectsCoordinator *)&v16 init];
  if (v6)
  {
    v7 = +[SBCaptureButtonDomain rootSettings];
    settings = v6->_settings;
    v6->_settings = v7;

    objc_storeStrong(&v6->_windowScene, a3);
    objc_initWeak(&location, v6);
    v9 = MEMORY[0x277CF0BD0];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __63__SBHardwareButtonBezelEffectsCoordinator_initWithWindowScene___block_invoke;
    v13[3] = &unk_2783AD688;
    objc_copyWeak(&v14, &location);
    v10 = [v9 assertionWithIdentifier:@"SBHardwareButtonBezelEffectsCoordinator.systemGlowEffect" stateDidChangeHandler:v13];
    systemGlowEffectAssertion = v6->_systemGlowEffectAssertion;
    v6->_systemGlowEffectAssertion = v10;

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  return v6;
}

void __63__SBHardwareButtonBezelEffectsCoordinator_initWithWindowScene___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _reevaluateSystemGlowEffect];
}

- (void)dealloc
{
  [(BSCompoundAssertion *)self->_systemGlowEffectAssertion invalidate];
  systemGlowEffectAssertion = self->_systemGlowEffectAssertion;
  self->_systemGlowEffectAssertion = 0;

  v4.receiver = self;
  v4.super_class = SBHardwareButtonBezelEffectsCoordinator;
  [(SBHardwareButtonBezelEffectsCoordinator *)&v4 dealloc];
}

- (id)observePortalSourceWithHandler:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [_SBHardwareButtonPortalObservationToken alloc];
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __74__SBHardwareButtonBezelEffectsCoordinator_observePortalSourceWithHandler___block_invoke;
  v15 = &unk_2783B6800;
  objc_copyWeak(&v16, &location);
  v6 = [(_SBHardwareButtonPortalObservationToken *)v5 initWithObserverBlock:v4 invalidationBlock:&v12];
  portalObservationTokens = self->_portalObservationTokens;
  if (!portalObservationTokens)
  {
    v8 = objc_alloc(MEMORY[0x277CBEB18]);
    v9 = [v8 initWithCapacity:{1, v12, v13, v14, v15}];
    v10 = self->_portalObservationTokens;
    self->_portalObservationTokens = v9;

    portalObservationTokens = self->_portalObservationTokens;
  }

  [(NSMutableArray *)portalObservationTokens addObject:v6, v12, v13, v14, v15];
  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);

  return v6;
}

void __74__SBHardwareButtonBezelEffectsCoordinator_observePortalSourceWithHandler___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[5] removeObject:v5];
  }
}

- (id)animateLaunchZoomUpPreludeFromButton:(int64_t)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_animatingPreludeToken);
  if (WeakRetained)
  {

LABEL_4:
    v8 = 0;
    goto LABEL_5;
  }

  v7 = objc_loadWeakRetained(&self->_animatingLaunchCompletionToken);

  if (v7)
  {
    goto LABEL_4;
  }

  v10 = SBLogTelemetrySignposts();
  if (os_signpost_enabled(v10))
  {
    LOWORD(buf[0]) = 0;
    _os_signpost_emit_with_name_impl(&dword_21ED4E000, v10, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SB_CAPTURE_PRELUDE_HINT_AND_LAYOUT", &unk_21F8B82DE, buf, 2u);
  }

  kdebug_trace();
  [*MEMORY[0x277D76620] _performBlockAfterCATransactionCommits:&__block_literal_global_165];
  objc_initWeak(buf, self);
  if (!a3)
  {
    v16 = [MEMORY[0x277CCA890] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"SBHardwareButtonBezelEffectsCoordinator.m" lineNumber:173 description:@"Must supply specific concrete origin from which to animate."];
  }

  self->_lastRequestedLaunchOrigin = a3;
  v11 = [_SBCaptureButtonLaunchAnimationPreludeToken alloc];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __80__SBHardwareButtonBezelEffectsCoordinator_animateLaunchZoomUpPreludeFromButton___block_invoke_17;
  v17[3] = &unk_2783A8C68;
  objc_copyWeak(&v18, buf);
  v8 = [(_SBCaptureButtonLaunchAnimationPreludeToken *)v11 initWithPreludeAnimating:self invalidationBlock:v17];
  objc_storeWeak(&self->_animatingPreludeToken, v8);
  [(SBHardwareButtonBezelEffectsCoordinator *)self _presentOrDismissLaunchAnimationWindowIfNecessary];
  [(SBCaptureButtonDropletLaunchViewController *)self->_dropletLaunchViewController animateDropletFromButtonWithMilestones:0];
  [(SBHardwareButtonBezelEffectsCoordinator *)self _setShockwaveState:1 completion:0];
  v12 = [(SBWindowScene *)self->_windowScene assistantController];
  v13 = [v12 isVisualSearchEnabled];

  if (v13)
  {
    v14 = [(SBCaptureButtonDropletLaunchViewController *)self->_dropletLaunchViewController view];
    [v14 layoutIfNeeded];

    v15 = [(SUIAShockwaveViewController *)self->_shockwaveViewController view];
    [v15 layoutIfNeeded];

    [(SBCaptureButtonDropletLaunchViewController *)self->_dropletLaunchViewController expandDropletKeylineToIntelligentKeylineStage:1];
    [(SUIAShockwaveViewController *)self->_shockwaveViewController setPreferredLightType:1];
  }

  objc_destroyWeak(&v18);
  objc_destroyWeak(buf);
LABEL_5:

  return v8;
}

uint64_t __80__SBHardwareButtonBezelEffectsCoordinator_animateLaunchZoomUpPreludeFromButton___block_invoke()
{
  v0 = SBLogTelemetrySignposts();
  if (os_signpost_enabled(v0))
  {
    *v2 = 0;
    _os_signpost_emit_with_name_impl(&dword_21ED4E000, v0, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SB_CAPTURE_PRELUDE_HINT_AND_LAYOUT", &unk_21F8B82DE, v2, 2u);
  }

  return kdebug_trace();
}

void __80__SBHardwareButtonBezelEffectsCoordinator_animateLaunchZoomUpPreludeFromButton___block_invoke_17(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    objc_storeWeak(WeakRetained + 2, 0);
    [v2 _presentOrDismissLaunchAnimationWindowIfNecessary];
    WeakRetained = v2;
  }
}

- (id)commandeerDropletAnimationWithToken:(id)a3
{
  v5 = a3;
  v6 = [(SBCaptureButtonDropletLaunchViewController *)self->_dropletLaunchViewController view];
  v7 = [v6 layer];
  v8 = [(SBCaptureButtonDropletLaunchViewController *)self->_dropletLaunchViewController view];
  v9 = [v8 layer];
  [v7 setDisableUpdateMask:{objc_msgSend(v9, "disableUpdateMask") & 0xFFFFFFFDLL}];

  v10 = objc_opt_self();
  v11 = v5;
  if (v10)
  {
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  if (!v13)
  {
    [(SBHardwareButtonBezelEffectsCoordinator *)a2 commandeerDropletAnimationWithToken:?];
  }

  WeakRetained = objc_loadWeakRetained(&self->_animatingPreludeToken);
  v15 = BSEqualObjects();

  if (v15)
  {
    if ([(SBCaptureButtonDropletLaunchViewController *)self->_dropletLaunchViewController expandHintingDropletByAddingComponents:7])
    {
      v16 = [(SBCaptureButtonDropletLaunchViewController *)self->_dropletLaunchViewController view];
      [v16 layoutIfNeeded];
    }

    objc_initWeak(&location, self);
    v17 = [(SBCaptureButtonDropletLaunchViewController *)self->_dropletLaunchViewController lendAnimatingDropletViewToExternalOwner];
    v18 = [_SBHardwareButtonLaunchZoomUpAnimationToken alloc];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __79__SBHardwareButtonBezelEffectsCoordinator_commandeerDropletAnimationWithToken___block_invoke;
    v25[3] = &unk_2783A9CE8;
    objc_copyWeak(&v27, &location);
    v19 = v17;
    v26 = v19;
    v20 = [(_SBHardwareButtonLaunchZoomUpAnimationToken *)v18 initWithPreludeAnimating:self invalidationBlock:v25];
    objc_storeWeak(&self->_animatingLaunchCompletionToken, v20);
    [(_SBHardwareButtonLaunchZoomUpAnimationToken *)v20 setRequestedDropletWindowLevel:0.0];
    [v13 invalidate];
    objc_storeWeak(&self->_animatingPreludeToken, 0);
    v21 = [(_SBHardwareButtonLaunchZoomUpAnimationToken *)v20 animatingDropletContext];
    v22 = [(_SBHardwareButtonLaunchZoomUpAnimationToken *)v20 animatingDroplet];
    [v21 applyKeylineStyle:0 forContainerView:v22];

    objc_destroyWeak(&v27);
    objc_destroyWeak(&location);
  }

  else
  {
    v23 = [MEMORY[0x277CCA890] currentHandler];
    [v23 handleFailureInMethod:a2 object:self file:@"SBHardwareButtonBezelEffectsCoordinator.m" lineNumber:232 description:@"Unexpected"];

    v20 = 0;
  }

  return v20;
}

void __79__SBHardwareButtonBezelEffectsCoordinator_commandeerDropletAnimationWithToken___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [*(a1 + 32) invalidate];
    objc_storeWeak(v3 + 4, 0);
    [v3 _presentOrDismissLaunchAnimationWindowIfNecessary];
    WeakRetained = v3;
  }
}

- (void)preludeToken:(id)a3 expandHintingDropletByAddingComponents:(unint64_t)a4 shockwave:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  if (v8)
  {
    WeakRetained = objc_loadWeakRetained(&self->_animatingPreludeToken);
    v10 = BSEqualObjects();

    if (v10)
    {
      v11 = SBLogTelemetrySignposts();
      if (os_signpost_enabled(v11))
      {
        *v14 = 0;
        _os_signpost_emit_with_name_impl(&dword_21ED4E000, v11, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SB_CAPTURE_PRELUDE_EXPAND_AND_LAYOUT", &unk_21F8B82DE, v14, 2u);
      }

      kdebug_trace();
      [*MEMORY[0x277D76620] _performBlockAfterCATransactionCommits:&__block_literal_global_30_0];
      v12 = [(SUIAShockwaveViewController *)self->_shockwaveViewController state];
      if (v5)
      {
        v13 = 2;
      }

      else
      {
        v13 = 4;
      }

      [(SBHardwareButtonBezelEffectsCoordinator *)self _setShockwaveState:v13 completion:0];
      if ([(SBCaptureButtonDropletLaunchViewController *)self->_dropletLaunchViewController expandHintingDropletByAddingComponents:a4]|| v12 != [(SUIAShockwaveViewController *)self->_shockwaveViewController state])
      {
        [(SBHardwareButtonBezelEffectsCoordinator *)self _presentOrDismissLaunchAnimationWindowIfNecessary];
      }
    }
  }
}

uint64_t __105__SBHardwareButtonBezelEffectsCoordinator_preludeToken_expandHintingDropletByAddingComponents_shockwave___block_invoke()
{
  v0 = SBLogTelemetrySignposts();
  if (os_signpost_enabled(v0))
  {
    *v2 = 0;
    _os_signpost_emit_with_name_impl(&dword_21ED4E000, v0, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SB_CAPTURE_PRELUDE_EXPAND_AND_LAYOUT", &unk_21F8B82DE, v2, 2u);
  }

  return kdebug_trace();
}

- (void)preludeToken:(id)a3 updateShockwaveLightType:(int64_t)a4
{
  v6 = a3;
  if (v6)
  {
    v11 = v6;
    WeakRetained = objc_loadWeakRetained(&self->_animatingPreludeToken);
    v8 = BSEqualObjects();

    v6 = v11;
    if (v8)
    {
      [(SUIAShockwaveViewController *)self->_shockwaveViewController setPreferredLightType:a4];
      dropletLaunchViewController = self->_dropletLaunchViewController;
      if (a4 == 1)
      {
        [(SBCaptureButtonDropletLaunchViewController *)dropletLaunchViewController expandDropletKeylineToIntelligentKeylineStage:2];
      }

      else
      {
        [(SBCaptureButtonDropletLaunchViewController *)dropletLaunchViewController expandDropletKeylineToIntelligentKeylineStage:0];
        v10 = [(SBCaptureButtonDropletLaunchViewController *)self->_dropletLaunchViewController view];
        [v10 layoutIfNeeded];
      }

      v6 = v11;
    }
  }
}

- (void)cancelPrelude
{
  v20[1] = *MEMORY[0x277D85DE8];
  *&self->_animatingDropletCancellation = 257;
  objc_initWeak(&location, self);
  [(SUIAShockwaveViewController *)self->_shockwaveViewController setPreferredLightType:0];
  dropletLaunchViewController = self->_dropletLaunchViewController;
  v19 = &unk_28336F330;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __56__SBHardwareButtonBezelEffectsCoordinator_cancelPrelude__block_invoke;
  v16[3] = &unk_2783B6828;
  objc_copyWeak(&v17, &location);
  v4 = MEMORY[0x223D6F7F0](v16);
  v20[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
  [(SBCaptureButtonDropletLaunchViewController *)dropletLaunchViewController resetToOffscreenAnimated:1 milestones:v5];

  v6 = [(SUIAShockwaveViewController *)self->_shockwaveViewController state];
  v7 = v6;
  if (self->_animatingShockwave || v6 == 1)
  {
    v11 = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __56__SBHardwareButtonBezelEffectsCoordinator_cancelPrelude__block_invoke_2;
    v14 = &unk_2783B6850;
    objc_copyWeak(&v15, &location);
    v8 = MEMORY[0x223D6F7F0](&v11);
    if (v7 == 1)
    {
      v9 = 4;
    }

    else
    {
      if (v7 != 2)
      {
LABEL_8:

        objc_destroyWeak(&v15);
        goto LABEL_9;
      }

      v9 = 5;
    }

    [(SBHardwareButtonBezelEffectsCoordinator *)self _setShockwaveState:v9 completion:v8, v11, v12, v13, v14];
    goto LABEL_8;
  }

LABEL_9:
  WeakRetained = objc_loadWeakRetained(&self->_animatingPreludeToken);
  [WeakRetained invalidate];

  objc_storeWeak(&self->_animatingPreludeToken, 0);
  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

void __56__SBHardwareButtonBezelEffectsCoordinator_cancelPrelude__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    WeakRetained[96] = 0;
    v2 = WeakRetained;
    [WeakRetained _presentOrDismissLaunchAnimationWindowIfNecessary];
    WeakRetained = v2;
  }
}

void __56__SBHardwareButtonBezelEffectsCoordinator_cancelPrelude__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    WeakRetained[97] = 0;
    v2 = WeakRetained;
    [WeakRetained _presentOrDismissLaunchAnimationWindowIfNecessary];
    WeakRetained = v2;
  }
}

- (CGRect)preludeAnimationRectPresentationValue
{
  [(SBCaptureButtonDropletLaunchViewController *)self->_dropletLaunchViewController preludeAnimationRectPresentationValue];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGPoint)preludeAnimationVelocity
{
  [(SBCaptureButtonDropletLaunchViewController *)self->_dropletLaunchViewController preludeAnimationVelocity];
  result.y = v3;
  result.x = v2;
  return result;
}

- (id)activateHintDropletForButton:(int64_t)a3
{
  if ([(SBHardwareButtonBezelEffectsCoordinator *)self hintDropletsEnabled])
  {
    [(SBHardwareButtonBezelEffectsCoordinator *)self _setHintDropletWindowVisible:1];
    v5 = [(SBHardwareButtonHintDropletViewController *)self->_hintDropletViewController activateHintDropletForButton:a3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)associateHintView:(id)a3 withButton:(int64_t)a4
{
  v6 = a3;
  if ([(SBHardwareButtonBezelEffectsCoordinator *)self hintDropletsEnabled])
  {
    [(SBHardwareButtonBezelEffectsCoordinator *)self _setHintDropletWindowVisible:1];
    v7 = [(SBHardwareButtonHintDropletViewController *)self->_hintDropletViewController associateHintView:v6 withButton:a4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)updateHintContentVisibility:(int64_t)a3 forButton:(int64_t)a4 animationSettings:(id)a5
{
  v8 = a5;
  if ([(SBHardwareButtonBezelEffectsCoordinator *)self hintDropletsEnabled])
  {
    hintDropletViewController = self->_hintDropletViewController;
    if (hintDropletViewController)
    {
      [(SBHardwareButtonHintDropletViewController *)hintDropletViewController updateHintContentVisibility:a3 forButton:a4 animationSettings:v8];
    }

    else
    {
      v10 = SBLogButtonHintingUI();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [SBHardwareButtonBezelEffectsCoordinator updateHintContentVisibility:v10 forButton:? animationSettings:?];
      }
    }
  }
}

- (id)requestSystemGlowEffectWithInitialStyle:(int64_t)a3 reason:(id)a4
{
  v6 = a4;
  v7 = [(SBWindowScene *)self->_windowScene assistantController];
  if ([v7 isSystemAssistantExperienceEnabled])
  {
    v8 = [(SBHardwareButtonBezelEffectsCoordinator *)self _policyAggregator];
    v9 = [v8 allowsCapability:29];

    if (v9)
    {
      self->_systemGlowActivating = a3 == 0;
      v10 = [(BSCompoundAssertion *)self->_systemGlowEffectAssertion acquireForReason:v6];
      goto LABEL_6;
    }
  }

  else
  {
  }

  v10 = 0;
LABEL_6:

  return v10;
}

- (void)_reevaluateSystemGlowEffect
{
  if (([(BSCompoundAssertion *)self->_systemGlowEffectAssertion isActive]& 1) != 0)
  {
    hintDropletViewController = self->_hintDropletViewController;
    if (self->_systemGlowActivating)
    {
      v4 = 1;
    }

    else
    {
      v4 = 2;
    }
  }

  else
  {
    self->_systemGlowActivating = 0;
    hintDropletViewController = self->_hintDropletViewController;
    v4 = 0;
  }

  [(SBHardwareButtonHintDropletViewController *)hintDropletViewController setKeylineStyle:v4];
}

- (id)setDropletLayoutCallback:(id)a3 forButton:(int64_t)a4
{
  v6 = a3;
  [(SBHardwareButtonBezelEffectsCoordinator *)self _setHintDropletWindowVisible:1];
  v7 = [(SBHardwareButtonHintDropletViewController *)self->_hintDropletViewController setDropletLayoutCallback:v6 forButton:a4];

  return v7;
}

- (void)hintDropletViewControllerDidBecomeIdle:(id)a3
{
  if (self->_hintDropletViewController == a3)
  {
    [(SBHardwareButtonBezelEffectsCoordinator *)self _setHintDropletWindowVisible:0];
  }
}

- (void)_presentOrDismissLaunchAnimationWindowIfNecessary
{
  WeakRetained = objc_loadWeakRetained(&self->_animatingPreludeToken);
  if (WeakRetained)
  {
    v4 = 1;
  }

  else
  {
    v5 = objc_loadWeakRetained(&self->_animatingLaunchCompletionToken);
    v4 = v5 || self->_animatingDropletCancellation || self->_animatingShockwaveCancellation;
  }

  [(SBHardwareButtonBezelEffectsCoordinator *)self _setLaunchAnimationWindowVisible:v4];

  [(SBHardwareButtonBezelEffectsCoordinator *)self _updateLaunchAnimationWindowLevelIfNecessary];
}

- (void)_setLaunchAnimationWindowVisible:(BOOL)a3
{
  dropletLaunchWindow = self->_dropletLaunchWindow;
  if (a3)
  {
    if (!dropletLaunchWindow)
    {
      v5 = [[SBCaptureButtonDropletLaunchViewController alloc] initWithButtonOrigin:self->_lastRequestedLaunchOrigin];
      dropletLaunchViewController = self->_dropletLaunchViewController;
      self->_dropletLaunchViewController = v5;

      v7 = [objc_alloc(MEMORY[0x277D65F30]) initWithWindowScene:self->_windowScene role:@"SBTraitsParticipantRoleHardwareButtonBezelEffectsCoordinator" debugName:@"Hardware Button Bezel Effects Coordinator - Droplet Launch"];
      v8 = self->_dropletLaunchWindow;
      self->_dropletLaunchWindow = v7;

      [(SBFSecureTouchPassThroughWindow *)self->_dropletLaunchWindow bs_setHitTestingDisabled:1];
      [(SBFSecureTouchPassThroughWindow *)self->_dropletLaunchWindow setWindowLevel:*MEMORY[0x277D76EE8] + 15.0 + 1.0];
      [(SBFSecureTouchPassThroughWindow *)self->_dropletLaunchWindow setRootViewController:self->_dropletLaunchViewController];
      v9 = +[SBButtonBezelGeometryInfo buttonBezelGeometryInfoForCurrentEmbeddedDisplayBezel];
      [v9 normalizedButtonHWRectForButton:self->_lastRequestedLaunchOrigin];
      v11 = v10;
      v13 = v12;
      v15 = v14;
      v17 = v16;

      v18 = objc_alloc(MEMORY[0x277D6C048]);
      v19 = [MEMORY[0x277D759A0] mainScreen];
      [v19 bounds];
      v36 = [v18 initWithNormalizedButtonEdgeLocation:v11 shockwaveViewBounds:{v13, v15, v17, v20, v21, v22, v23}];

      v24 = [objc_alloc(MEMORY[0x277D6C068]) initWithStyle:v36];
      shockwaveViewController = self->_shockwaveViewController;
      self->_shockwaveViewController = v24;

      [(SBCaptureButtonDropletLaunchViewController *)self->_dropletLaunchViewController addChildViewController:self->_shockwaveViewController];
      v26 = [(SUIAShockwaveViewController *)self->_shockwaveViewController view];
      v27 = [(SBCaptureButtonDropletLaunchViewController *)self->_dropletLaunchViewController view];
      [v27 bounds];
      [v26 setFrame:?];

      v28 = [(SUIAShockwaveViewController *)self->_shockwaveViewController view];
      [v28 setAutoresizingMask:18];

      v29 = [(SBCaptureButtonDropletLaunchViewController *)self->_dropletLaunchViewController view];
      v30 = [(SUIAShockwaveViewController *)self->_shockwaveViewController view];
      [v29 insertSubview:v30 atIndex:0];

      v31 = [(SBCaptureButtonDropletLaunchViewController *)self->_dropletLaunchViewController view];
      v32 = [v31 layer];
      [v32 setDisableUpdateMask:2];

      [(SUIAShockwaveViewController *)self->_shockwaveViewController didMoveToParentViewController:self->_dropletLaunchViewController];
      [(SBFSecureTouchPassThroughWindow *)self->_dropletLaunchWindow setHidden:0];
      [(SBHardwareButtonBezelEffectsCoordinator *)self _beginRequiringBacklightAssertionForReason:@"Hardware Button Bezel Effects Coordinator - Droplet Launch"];
    }
  }

  else if (dropletLaunchWindow)
  {
    [(SBFSecureTouchPassThroughWindow *)dropletLaunchWindow setHidden:1];
    [(SBFSecureTouchPassThroughWindow *)self->_dropletLaunchWindow setRootViewController:0];
    v33 = self->_dropletLaunchViewController;
    self->_dropletLaunchViewController = 0;

    v34 = self->_shockwaveViewController;
    self->_shockwaveViewController = 0;

    v35 = self->_dropletLaunchWindow;
    self->_dropletLaunchWindow = 0;

    [(SBHardwareButtonBezelEffectsCoordinator *)self _endRequiringBacklightAssertionForReason:@"Hardware Button Bezel Effects Coordinator - Droplet Launch"];
  }
}

- (void)_updateLaunchAnimationWindowLevelIfNecessary
{
  v3 = *MEMORY[0x277D76EE8] + 15.0 + 1.0;
  WeakRetained = objc_loadWeakRetained(&self->_animatingLaunchCompletionToken);
  v7 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained requestedDropletWindowLevel];
    v6 = v5;
    if (!BSFloatEqualToFloat())
    {
      v3 = v6;
    }
  }

  [(SBFSecureTouchPassThroughWindow *)self->_dropletLaunchWindow setWindowLevel:v3];
}

- (void)_setShockwaveState:(int64_t)a3 completion:(id)a4
{
  v6 = a4;
  if (!self->_animatingShockwave && a3 != 4 && self->_animatingShockwaveCancellation)
  {
    [(SUIAShockwaveViewController *)self->_shockwaveViewController setState:0 animated:0 recommendedNextAction:0 completion:0];
  }

  v7 = (self->_shockwaveAnimationRevisionID + 1);
  self->_shockwaveAnimationRevisionID = v7;
  self->_animatingShockwave = 1;
  self->_animatingShockwaveCancellation = 0;
  objc_initWeak(&location, self);
  shockwaveViewController = self->_shockwaveViewController;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __73__SBHardwareButtonBezelEffectsCoordinator__setShockwaveState_completion___block_invoke;
  v10[3] = &unk_2783B3518;
  objc_copyWeak(v12, &location);
  v12[1] = v7;
  v9 = v6;
  v11 = v9;
  [(SUIAShockwaveViewController *)shockwaveViewController setState:a3 animated:1 recommendedNextAction:0 completion:v10];

  objc_destroyWeak(v12);
  objc_destroyWeak(&location);
}

void __73__SBHardwareButtonBezelEffectsCoordinator__setShockwaveState_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = WeakRetained;
  if (WeakRetained && *(WeakRetained + 11) == *(a1 + 48))
  {
    *(WeakRetained + 80) = 0;
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    v9 = v7;
    (*(v8 + 16))(v8, a2, a3);
    v7 = v9;
  }
}

- (void)_setHintDropletWindowVisible:(BOOL)a3
{
  hintDropletWindow = self->_hintDropletWindow;
  if (a3)
  {
    if (!hintDropletWindow && [(SBHardwareButtonBezelEffectsCoordinator *)self hintDropletsEnabled])
    {
      v5 = objc_opt_new();
      hintDropletViewController = self->_hintDropletViewController;
      self->_hintDropletViewController = v5;

      [(SBHardwareButtonHintDropletViewController *)self->_hintDropletViewController setDelegate:self];
      v7 = [objc_alloc(MEMORY[0x277D65F30]) initWithWindowScene:self->_windowScene role:@"SBTraitsParticipantRoleHardwareButtonBezelEffectsCoordinatorHinting" debugName:@"Hardware Button Bezel Effects Coordinator Hinting"];
      v8 = self->_hintDropletWindow;
      self->_hintDropletWindow = v7;

      [(SBFSecureTouchPassThroughWindow *)self->_hintDropletWindow setWindowLevel:10000000.5];
      [(SBFSecureTouchPassThroughWindow *)self->_hintDropletWindow setRootViewController:self->_hintDropletViewController];
      [(SBFSecureTouchPassThroughWindow *)self->_hintDropletWindow setHidden:0];
      [(SBHardwareButtonBezelEffectsCoordinator *)self _reevaluateSystemGlowEffect];

      [(SBHardwareButtonBezelEffectsCoordinator *)self _beginRequiringBacklightAssertionForReason:@"Hardware Button Bezel Effects Coordinator Hinting"];
    }
  }

  else if (hintDropletWindow)
  {
    [(SBFSecureTouchPassThroughWindow *)hintDropletWindow setHidden:1];
    [(SBFSecureTouchPassThroughWindow *)self->_hintDropletWindow setRootViewController:0];
    v9 = self->_hintDropletViewController;
    self->_hintDropletViewController = 0;

    v10 = self->_hintDropletWindow;
    self->_hintDropletWindow = 0;

    [(SBHardwareButtonBezelEffectsCoordinator *)self _endRequiringBacklightAssertionForReason:@"Hardware Button Bezel Effects Coordinator Hinting"];
  }
}

- (BOOL)hintDropletsEnabled
{
  v2 = +[SBPlatformController sharedInstance];
  if ([v2 deviceSupportsHWButtonBezelEffects])
  {
    v3 = 1;
  }

  else
  {
    v4 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v3 = [v4 BOOLForKey:@"SBHardwareButtonHintDropletsEnabled"];
  }

  return v3;
}

- (id)_policyAggregator
{
  v2 = [(SBWindowScene *)self->_windowScene sceneManager];
  v3 = [v2 policyAggregator];

  return v3;
}

- (void)_beginRequiringBacklightAssertionForReason:(id)a3
{
  v13[3] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4)
  {
    [SBHardwareButtonBezelEffectsCoordinator _beginRequiringBacklightAssertionForReason:];
  }

  [(NSCountedSet *)self->_backlightAssertionRequiringReasons addObject:v4];
  if (!self->_liveUpdatingAssertion && self->_windowScene)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Animating Bezel Effects, assertion first required for <%@>:", v4];
    v6 = MEMORY[0x277CF0868];
    v7 = [MEMORY[0x277CF09A8] requestLiveUpdatingForScene:self->_windowScene];
    v13[0] = v7;
    v8 = [MEMORY[0x277CF09B0] requestUnrestrictedFramerateForScene:self->_windowScene];
    v13[1] = v8;
    v9 = [MEMORY[0x277CF09E8] ignoreWhenBacklightInactivates];
    v13[2] = v9;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:3];
    v11 = [v6 acquireWithExplanation:v5 observer:0 attributes:v10];
    liveUpdatingAssertion = self->_liveUpdatingAssertion;
    self->_liveUpdatingAssertion = v11;
  }
}

- (void)_endRequiringBacklightAssertionForReason:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (!v4)
  {
    [SBHardwareButtonBezelEffectsCoordinator _endRequiringBacklightAssertionForReason:];
    v4 = 0;
  }

  [(NSCountedSet *)self->_backlightAssertionRequiringReasons removeObject:v4];
  v5 = [(NSCountedSet *)self->_backlightAssertionRequiringReasons anyObject];

  if (!v5)
  {
    [(BSInvalidatable *)self->_liveUpdatingAssertion invalidate];
    liveUpdatingAssertion = self->_liveUpdatingAssertion;
    self->_liveUpdatingAssertion = 0;
  }
}

- (void)commandeerDropletAnimationWithToken:(const char *)a1 .cold.1(const char *a1, uint64_t a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"preludeToken != ((void *)0)"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a1);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138544642;
    v10 = v5;
    v11 = 2114;
    v12 = v7;
    v13 = 2048;
    v14 = a2;
    v15 = 2114;
    v16 = @"SBHardwareButtonBezelEffectsCoordinator.m";
    v17 = 1024;
    v18 = 204;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&dword_21ED4E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  v8 = v4;
  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_beginRequiringBacklightAssertionForReason:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"reason" object:? file:? lineNumber:? description:?];
}

- (void)_endRequiringBacklightAssertionForReason:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"reason" object:? file:? lineNumber:? description:?];
}

@end