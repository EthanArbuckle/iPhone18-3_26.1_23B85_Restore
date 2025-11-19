@interface SBRecordingIndicatorViewController
- (BOOL)_needsBacklightBehaviorChanges;
- (BOOL)_secureRenderingSupported;
- (BOOL)_shouldForceViewToShowForCurrentBacklightLuminance;
- (SBRecordingIndicatorViewControllerDelegate)delegate;
- (SBWindowScene)windowScene;
- (double)_alphaForStateIdleOn;
- (double)_centerForOrientation:(uint64_t)a1;
- (double)_sizeForStateIdleOn;
- (id)_hasMedinaPadBehaviors;
- (id)_requiresSecondIndicatorView;
- (id)_screen;
- (id)_setUpContext;
- (id)_springAnimationForKeyPath:(void *)a3 fromValue:(void *)a4 toValue:(double)a5 duration:;
- (id)initForLocation:(unint64_t)a3 windowScene:(id)a4 minimumOnTimeCoordinator:(id)a5;
- (uint64_t)_configureRootLayer;
- (uint64_t)_hasProminentIdleState;
- (uint64_t)_ignoresActiveInterfaceOrientation;
- (uint64_t)_interchangesViewAndLayer;
- (uint64_t)_isInMinimumOnTime;
- (uint64_t)_isOnExtendedDesktop;
- (uint64_t)_isSuppressingFlipbookRendering;
- (uint64_t)_requiresLayerUpdateForBacklightTransition;
- (uint64_t)_screenTypeForcesFastFadeAnimations;
- (uint64_t)_shouldReverseScaleWhenDisplayZoomedInLocation:(uint64_t)a1;
- (uint64_t)_stopAllAnimations;
- (uint64_t)_updateCenterWithoutAnimationForOrientation:(uint64_t)result;
- (uint64_t)_updateIndicatorLayerSize:(double)a3 opacity:;
- (uint64_t)_updateIndicatorLayerWithSize:(double)a3 andCenter:(double)a4;
- (uint64_t)_updateIndicatorVisibilityWithFastFadeAnimation:(uint64_t)result;
- (uint64_t)_usesSpringAnimations;
- (uint64_t)_usesSpringAnimationsWithContainerView;
- (unint64_t)_isIndicatorOnOrAnimatingToOn;
- (void)_addBlurFilterToLayer:(double)a3 withBlurRadius:;
- (void)_animateLayer:(void *)a3 forKeyPath:(void *)a4 fromValue:(void *)a5 toValue:(int)a6 persistingToValue:(double)a7 duration:;
- (void)_animateWithOverlappingFadeFromOrientation:(uint64_t)a1 toOrientation:duration:;
- (void)_animateWithTwoPartFadeToOrientation:(void *)a1 duration:;
- (void)_areAnimationsHandledBySystemApertureElement;
- (void)_calculateInitialIndicatorPositionAndSize;
- (void)_requiresIndicatorPortalViews;
- (void)_setUpIndicatorViews;
- (void)_updateBacklightCoordinatorAssertionForIndicatorVisible:(uint64_t)a1;
- (void)_updateIndicatorForBacklightLuminance:(uint64_t)a3 previousBacklightLuminance:;
- (void)_updateIndicatorViewSize:(double)a3 alpha:;
- (void)_updateIndicatorVisibilityWithNoAnimation:(double *)a1;
- (void)_updateIndicatorVisibilityWithNormalAnimation:(uint64_t)a1;
- (void)_updateIndicatorVisibilityWithSpringAnimation:(uint64_t)a1;
- (void)_updateIndicatorVisualRepresentationsWithBlock:(uint64_t)a1;
- (void)_updateToOrientation:(double)a3 withDuration:;
- (void)backlightController:(id)a3 didTransitionToBacklightState:(int64_t)a4 source:(int64_t)a5;
- (void)dealloc;
- (void)setIndicatorState:(uint64_t)a1;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateIndicatorType:(unint64_t)a3;
- (void)updateIndicatorVisibility:(BOOL)a3;
- (void)updateIndicatorVisibilityWithFastFadeAnimation:(BOOL)a3;
- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4;
@end

@implementation SBRecordingIndicatorViewController

- (SBRecordingIndicatorViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (uint64_t)_requiresLayerUpdateForBacklightTransition
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 1192);
    LODWORD(result) = [(SBRecordingIndicatorViewController *)result _hasMedinaPadBehaviors];
    if (result)
    {
      LODWORD(result) = [*(v1 + 1120) allowsBacklightChanges];
    }

    if (v2 == 4)
    {
      return 1;
    }

    else
    {
      return result;
    }
  }

  return result;
}

- (id)_hasMedinaPadBehaviors
{
  v1 = a1;
  if (a1)
  {
    v2 = [MEMORY[0x277D75418] currentDevice];
    v3 = [v2 userInterfaceIdiom];

    if ((v3 & 0xFFFFFFFFFFFFFFFBLL) == 1 && +[SBRecordingIndicatorManager _supportsSecureIndicator])
    {
      WeakRetained = objc_loadWeakRetained(v1 + 150);
      if ([WeakRetained isMainDisplayWindowScene])
      {
        v1 = ([v1 location] == 0);
      }

      else
      {
        v1 = 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return v1;
}

- (uint64_t)_hasProminentIdleState
{
  if (result)
  {
    v1 = result;
    if ((SBSIsSystemApertureAvailable() & 1) != 0 || ([(SBRecordingIndicatorViewController *)v1 _hasMedinaPadBehaviors]& 1) != 0)
    {
      return 1;
    }

    else
    {
      WeakRetained = objc_loadWeakRetained(v1 + 150);
      v3 = [WeakRetained isExternalDisplayWindowScene];

      return v3;
    }
  }

  return result;
}

- (id)initForLocation:(unint64_t)a3 windowScene:(id)a4 minimumOnTimeCoordinator:(id)a5
{
  v8 = a4;
  v9 = a5;
  v23.receiver = self;
  v23.super_class = SBRecordingIndicatorViewController;
  v10 = [(SBRecordingIndicatorViewController *)&v23 init];
  v11 = v10;
  if (v10)
  {
    v10->_location = a3;
    v10->_activeInterfaceOrientation = 1;
    v10->_indicatorState = 0;
    objc_storeWeak(&v10->_windowScene, v8);
    v13 = +[SBBacklightController sharedInstance];
    v14 = *(v11 + 1136);
    *(v11 + 1136) = v13;

    [(SBRecordingIndicatorViewController *)v11 _setUpContext];
    [(SBRecordingIndicatorViewController *)v11 _setUpIndicatorViews];
    [(SBRecordingIndicatorViewController *)v11 _calculateInitialIndicatorPositionAndSize];
    objc_storeStrong((v11 + 1208), a5);
    if ([(SBRecordingIndicatorViewController *)v11 _needsBacklightBehaviorChanges])
    {
      v15 = [SBSecureIndicatorBacklightCoordinator alloc];
      v16 = *(v11 + 1136);
      v17 = [SBApp HIDUISensorController];
      v18 = [SBApp proximitySensorManager];
      v19 = [(SBSecureIndicatorBacklightCoordinator *)v15 initWithBacklightController:v16 sensorModeController:v17 proximitySensorManager:v18 minimumOnTimeCoordinator:v9 windowScene:v8];
      v20 = *(v11 + 1120);
      *(v11 + 1120) = v19;
    }

    v21 = objc_alloc_init(SBRecordingIndicatorRotationRateLimiter);
    v22 = *(v11 + 1112);
    *(v11 + 1112) = v21;
  }

  [*(v11 + 1136) addObserver:v11];

  return v11;
}

- (void)dealloc
{
  [(BSInvalidatable *)self->_backlightCoordinatorAssertion invalidate];
  [(SBBacklightController *)self->_backlightController removeObserver:self];
  v3.receiver = self;
  v3.super_class = SBRecordingIndicatorViewController;
  [(SBRecordingIndicatorViewController *)&v3 dealloc];
}

- (void)updateIndicatorType:(unint64_t)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __58__SBRecordingIndicatorViewController_updateIndicatorType___block_invoke;
  v3[3] = &__block_descriptor_40_e50_v16__0__SBRecordingIndicatorVisualRepresentation_8l;
  v3[4] = a3;
  [(SBRecordingIndicatorViewController *)self _updateIndicatorVisualRepresentationsWithBlock:v3];
}

- (void)_updateIndicatorVisibilityWithSpringAnimation:(uint64_t)a1
{
  v35 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v4 = SBLogStatusBarish();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      if (a2)
      {
        v5 = @"on";
      }

      else
      {
        v5 = @"off";
      }

      v6 = [a1 location];
      if ((v6 - 1) > 3)
      {
        v7 = @"Standalone";
      }

      else
      {
        v7 = off_2783BCC98[v6 - 1];
      }

      *buf = 138543618;
      v32 = v5;
      v33 = 2114;
      v34 = v7;
      _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "[Recording Indicator] Turning %{public}@ at %{public}@ location (spring animation)", buf, 0x16u);
    }

    [(SBRecordingIndicatorViewController *)a1 _stopAllAnimations];
    objc_initWeak(buf, a1);
    v8 = [*(a1 + 1152) contentView];
    v9 = [v8 layer];
    v10 = *(a1 + 1192);
    v11 = [(SBRecordingIndicatorViewController *)a1 _hasMedinaPadBehaviors];
    if (v10 == 4)
    {
      v12 = 1;
    }

    else
    {
      v12 = v11;
    }

    if (a2)
    {
      if ((v12 & 1) == 0)
      {
        [(SBRecordingIndicatorViewController *)a1 _addBlurFilterToLayer:v9 withBlurRadius:6.0];
        [(SBRecordingIndicatorViewController *)a1 _animateLayer:v9 forKeyPath:@"filters.gaussianBlur.inputRadius" fromValue:&unk_28336F520 toValue:&unk_28336F530 persistingToValue:1 duration:0.8];
      }

      v13 = objc_alloc(MEMORY[0x277D75D40]);
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __84__SBRecordingIndicatorViewController__updateIndicatorVisibilityWithSpringAnimation___block_invoke;
      v30[3] = &unk_2783A8C18;
      v30[4] = a1;
      v14 = [v13 initWithDuration:v30 dampingRatio:1.9 animations:0.35];
      v15 = *(a1 + 1032);
      *(a1 + 1032) = v14;

      v16 = *(a1 + 1032);
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __84__SBRecordingIndicatorViewController__updateIndicatorVisibilityWithSpringAnimation___block_invoke_2;
      v28[3] = &unk_2783BCC50;
      v17 = &v29;
      objc_copyWeak(&v29, buf);
      [v16 addCompletion:v28];
      [SBRecordingIndicatorViewController setIndicatorState:a1];
      [*(a1 + 1032) startAnimation];
    }

    else
    {
      if (v12)
      {
        [(SBRecordingIndicatorViewController *)a1 _updateIndicatorLayerSize:0.0 opacity:?];
      }

      else
      {
        [(SBRecordingIndicatorViewController *)a1 _addBlurFilterToLayer:v9 withBlurRadius:0.0];
        [(SBRecordingIndicatorViewController *)a1 _animateLayer:v9 forKeyPath:@"filters.gaussianBlur.inputRadius" fromValue:&unk_28336F540 toValue:&unk_28336F550 persistingToValue:0 duration:1.0];
      }

      v18 = objc_alloc(MEMORY[0x277D75D40]);
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __84__SBRecordingIndicatorViewController__updateIndicatorVisibilityWithSpringAnimation___block_invoke_45;
      v27[3] = &unk_2783A8C18;
      v27[4] = a1;
      v19 = [v18 initWithDuration:v27 dampingRatio:1.5 animations:1.02];
      v20 = *(a1 + 1040);
      *(a1 + 1040) = v19;

      v21 = *(a1 + 1040);
      v22 = MEMORY[0x277D85DD0];
      v23 = 3221225472;
      v24 = __84__SBRecordingIndicatorViewController__updateIndicatorVisibilityWithSpringAnimation___block_invoke_2_46;
      v25 = &unk_2783BCC50;
      v17 = &v26;
      objc_copyWeak(&v26, buf);
      [v21 addCompletion:&v22];
      [SBRecordingIndicatorViewController setIndicatorState:a1];
      [*(a1 + 1040) startAnimation];
    }

    objc_destroyWeak(v17);

    objc_destroyWeak(buf);
  }
}

- (void)_updateIndicatorVisibilityWithNormalAnimation:(uint64_t)a1
{
  v45 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v4 = SBLogStatusBarish();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      if (a2)
      {
        v5 = @"on";
      }

      else
      {
        v5 = @"off";
      }

      v6 = [a1 location];
      if ((v6 - 1) > 3)
      {
        v7 = @"Standalone";
      }

      else
      {
        v7 = off_2783BCC98[v6 - 1];
      }

      *buf = 138543618;
      v42 = v5;
      v43 = 2114;
      v44 = v7;
      _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "[Recording Indicator] Turning %{public}@ at %{public}@ location (normal animation)", buf, 0x16u);
    }

    [(SBRecordingIndicatorViewController *)a1 _stopAllAnimations];
    if (a2)
    {
      objc_initWeak(buf, a1);
      v8 = objc_alloc(MEMORY[0x277D75D40]);
      v40[0] = MEMORY[0x277D85DD0];
      v40[1] = 3221225472;
      v40[2] = __84__SBRecordingIndicatorViewController__updateIndicatorVisibilityWithNormalAnimation___block_invoke;
      v40[3] = &unk_2783A8C18;
      v40[4] = a1;
      v9 = [v8 initWithDuration:0 curve:v40 animations:0.7];
      v10 = *(a1 + 992);
      *(a1 + 992) = v9;

      v11 = objc_alloc(MEMORY[0x277D75D40]);
      v39[0] = MEMORY[0x277D85DD0];
      v39[1] = 3221225472;
      v39[2] = __84__SBRecordingIndicatorViewController__updateIndicatorVisibilityWithNormalAnimation___block_invoke_2;
      v39[3] = &unk_2783A8C18;
      v39[4] = a1;
      v12 = [v11 initWithDuration:0 curve:v39 animations:0.7];
      v13 = *(a1 + 1000);
      *(a1 + 1000) = v12;

      v14 = objc_alloc(MEMORY[0x277D75D40]);
      v38[0] = MEMORY[0x277D85DD0];
      v38[1] = 3221225472;
      v38[2] = __84__SBRecordingIndicatorViewController__updateIndicatorVisibilityWithNormalAnimation___block_invoke_3;
      v38[3] = &unk_2783A8C18;
      v38[4] = a1;
      v15 = [v14 initWithDuration:0 curve:v38 animations:2.0];
      v16 = *(a1 + 1008);
      *(a1 + 1008) = v15;

      v17 = *(a1 + 992);
      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = __84__SBRecordingIndicatorViewController__updateIndicatorVisibilityWithNormalAnimation___block_invoke_4;
      v36[3] = &unk_2783BCC50;
      objc_copyWeak(&v37, buf);
      [v17 addCompletion:v36];
      v18 = *(a1 + 1000);
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __84__SBRecordingIndicatorViewController__updateIndicatorVisibilityWithNormalAnimation___block_invoke_5;
      v34[3] = &unk_2783BCC50;
      objc_copyWeak(&v35, buf);
      [v18 addCompletion:v34];
      v19 = *(a1 + 1008);
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __84__SBRecordingIndicatorViewController__updateIndicatorVisibilityWithNormalAnimation___block_invoke_6;
      v32[3] = &unk_2783BCC50;
      objc_copyWeak(&v33, buf);
      [v19 addCompletion:v32];
      [SBRecordingIndicatorViewController setIndicatorState:a1];
      [*(a1 + 992) startAnimation];
      objc_destroyWeak(&v33);
      objc_destroyWeak(&v35);
      objc_destroyWeak(&v37);
      objc_destroyWeak(buf);
    }

    else
    {
      [*(a1 + 1096) opacity];
      if ((BSFloatIsZero() & 1) == 0 && [(SBRecordingIndicatorViewController *)a1 _interchangesViewAndLayer])
      {
        [(SBRecordingIndicatorViewController *)a1 _updateIndicatorLayerSize:0.0 opacity:?];
        if ([(SBRecordingIndicatorViewController *)a1 _hasProminentIdleState])
        {
          v20 = *(a1 + 1048);
        }

        else
        {
          v20 = *(a1 + 1048) * 0.8;
        }

        if ([(SBRecordingIndicatorViewController *)a1 _hasProminentIdleState])
        {
          v21 = 1.0;
        }

        else
        {
          v21 = 0.8;
        }

        [(SBRecordingIndicatorViewController *)a1 _updateIndicatorViewSize:v20 alpha:v21];
      }

      v22 = objc_alloc(MEMORY[0x277D75D40]);
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __84__SBRecordingIndicatorViewController__updateIndicatorVisibilityWithNormalAnimation___block_invoke_7;
      v31[3] = &unk_2783A8C18;
      v31[4] = a1;
      v23 = [v22 initWithDuration:0 curve:v31 animations:1.0];
      v24 = *(a1 + 1016);
      *(a1 + 1016) = v23;

      objc_initWeak(buf, a1);
      v25 = *(a1 + 1016);
      v26 = MEMORY[0x277D85DD0];
      v27 = 3221225472;
      v28 = __84__SBRecordingIndicatorViewController__updateIndicatorVisibilityWithNormalAnimation___block_invoke_8;
      v29 = &unk_2783BCC50;
      objc_copyWeak(&v30, buf);
      [v25 addCompletion:&v26];
      [SBRecordingIndicatorViewController setIndicatorState:a1];
      [*(a1 + 1016) startAnimation];
      objc_destroyWeak(&v30);
      objc_destroyWeak(buf);
    }
  }
}

- (void)updateIndicatorVisibilityWithFastFadeAnimation:(BOOL)a3
{
  if (self->_location != 4)
  {
    [(SBRecordingIndicatorViewController *)self _updateIndicatorVisibilityWithFastFadeAnimation:a3];
  }
}

- (uint64_t)_updateIndicatorVisibilityWithFastFadeAnimation:(uint64_t)result
{
  v28 = *MEMORY[0x277D85DE8];
  if (result)
  {
    v3 = result;
    v4 = SBLogStatusBarish();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      if (a2)
      {
        v5 = @"on";
      }

      else
      {
        v5 = @"off";
      }

      v6 = [v3 location];
      if ((v6 - 1) > 3)
      {
        v7 = @"Standalone";
      }

      else
      {
        v7 = off_2783BCC98[v6 - 1];
      }

      *buf = 138543618;
      v25 = v5;
      v26 = 2114;
      v27 = v7;
      _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "[Recording Indicator] Turning %{public}@ at %{public}@ location (fast fade animation)", buf, 0x16u);
    }

    [(SBRecordingIndicatorViewController *)v3 _stopAllAnimations];
    if (a2)
    {
      v8 = objc_alloc(MEMORY[0x277D75D40]);
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __86__SBRecordingIndicatorViewController__updateIndicatorVisibilityWithFastFadeAnimation___block_invoke;
      v23[3] = &unk_2783A8C18;
      v23[4] = v3;
      v9 = [v8 initWithDuration:0 curve:v23 animations:0.2];
      v10 = *(v3 + 1024);
      *(v3 + 1024) = v9;

      objc_initWeak(buf, v3);
      v11 = *(v3 + 1024);
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __86__SBRecordingIndicatorViewController__updateIndicatorVisibilityWithFastFadeAnimation___block_invoke_2;
      v21[3] = &unk_2783BCC78;
      objc_copyWeak(&v22, buf);
      v21[4] = v3;
      [v11 addCompletion:v21];
      [SBRecordingIndicatorViewController setIndicatorState:v3];
      objc_destroyWeak(&v22);
      objc_destroyWeak(buf);
    }

    else
    {
      if ([(SBRecordingIndicatorViewController *)v3 _interchangesViewAndLayer])
      {
        [(SBRecordingIndicatorViewController *)v3 _updateIndicatorLayerSize:0.0 opacity:?];
        if ([(SBRecordingIndicatorViewController *)v3 _hasProminentIdleState])
        {
          v12 = *(v3 + 1048);
        }

        else
        {
          v12 = *(v3 + 1048) * 0.8;
        }

        if ([(SBRecordingIndicatorViewController *)v3 _hasProminentIdleState])
        {
          v13 = 1.0;
        }

        else
        {
          v13 = 0.8;
        }

        [(SBRecordingIndicatorViewController *)v3 _updateIndicatorViewSize:v12 alpha:v13];
      }

      v14 = objc_alloc(MEMORY[0x277D75D40]);
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __86__SBRecordingIndicatorViewController__updateIndicatorVisibilityWithFastFadeAnimation___block_invoke_3;
      v20[3] = &unk_2783A8C18;
      v20[4] = v3;
      v15 = [v14 initWithDuration:0 curve:v20 animations:0.2];
      v16 = *(v3 + 1024);
      *(v3 + 1024) = v15;

      objc_initWeak(buf, v3);
      v17 = *(v3 + 1024);
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __86__SBRecordingIndicatorViewController__updateIndicatorVisibilityWithFastFadeAnimation___block_invoke_4;
      v18[3] = &unk_2783BCC50;
      objc_copyWeak(&v19, buf);
      [v17 addCompletion:v18];
      [SBRecordingIndicatorViewController setIndicatorState:v3];
      objc_destroyWeak(&v19);
      objc_destroyWeak(buf);
    }

    return [*(v3 + 1024) startAnimation];
  }

  return result;
}

- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = SBRecordingIndicatorViewController;
  v7 = a3;
  [(SBRecordingIndicatorViewController *)&v12 willTransitionToTraitCollection:v7 withTransitionCoordinator:v6];
  v8 = [(SBRecordingIndicatorViewController *)self traitCollection];
  v9 = [v8 _backlightLuminance];

  v10 = [v7 _backlightLuminance];
  if (v10 != v9)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __96__SBRecordingIndicatorViewController_willTransitionToTraitCollection_withTransitionCoordinator___block_invoke;
    v11[3] = &unk_2783B50F8;
    v11[4] = self;
    v11[5] = v10;
    v11[6] = v9;
    [v6 animateAlongsideTransition:v11 completion:0];
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = [a3 _backlightLuminance];
  v5 = [(SBRecordingIndicatorViewController *)self traitCollection];
  v6 = [v5 _backlightLuminance];

  if (v6 != v4)
  {
    [(SBRecordingIndicatorViewController *)self traitCollectionDidChange:v6, v4];
  }
}

- (id)_screen
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  v4 = [WeakRetained screen];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SBRecordingIndicatorViewController;
    v6 = [(SBRecordingIndicatorViewController *)&v9 _screen];
  }

  v7 = v6;

  return v7;
}

void __58__SBRecordingIndicatorViewController__setUpIndicatorViews__block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = *(a1 + 32);
  v4 = [v8 highLevelLayer];
  [v3 addSublayer:v4];

  v5 = *(a1 + 40);
  v6 = [v8 containerView];
  if (v6)
  {
    [v5 addSubview:v6];
  }

  else
  {
    v7 = [v8 contentView];
    [v5 addSubview:v7];
  }
}

void __79__SBRecordingIndicatorViewController__calculateInitialIndicatorPositionAndSize__block_invoke(double *a1, void *a2)
{
  v3 = a2;
  if ([v3 viewType] == 2)
  {
    [v3 containerView];
  }

  else
  {
    [v3 contentView];
  }
  v4 = ;

  [v4 setFrame:{a1[4], a1[5], a1[6], a1[7]}];
}

- (void)_animateWithTwoPartFadeToOrientation:(void *)a1 duration:
{
  if (a1)
  {
    v2 = +[SBRecordingIndicatorDomain rootSettings];
    if (BSFloatGreaterThanOrEqualToFloat())
    {
      [v2 delayBeforeFadeOut180];
      v4 = v3;
      [v2 fadeOutDuration180];
      v6 = v5;
      [v2 delayBeforeFadeIn180];
      v8 = v7;
      [v2 fadeInDuration180];
    }

    else
    {
      [v2 delayBeforeFadeOut90];
      v4 = v10;
      [v2 fadeOutDuration90];
      v6 = v11;
      [v2 delayBeforeFadeIn90];
      v8 = v12;
      [v2 fadeInDuration90];
    }

    v13 = v9;
    objc_initWeak(&location, a1);
    v14 = objc_alloc(MEMORY[0x277D75D40]);
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __84__SBRecordingIndicatorViewController__animateWithTwoPartFadeToOrientation_duration___block_invoke;
    v27[3] = &unk_2783A8C68;
    objc_copyWeak(&v28, &location);
    v15 = [v14 initWithDuration:0 curve:v27 animations:v6];
    v16 = objc_alloc(MEMORY[0x277D75D40]);
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __84__SBRecordingIndicatorViewController__animateWithTwoPartFadeToOrientation_duration___block_invoke_2;
    v25[3] = &unk_2783A8C68;
    objc_copyWeak(&v26, &location);
    v17 = [v16 initWithDuration:0 curve:v25 animations:v13];
    v19 = MEMORY[0x277D85DD0];
    v20 = 3221225472;
    v21 = __84__SBRecordingIndicatorViewController__animateWithTwoPartFadeToOrientation_duration___block_invoke_3;
    v22 = &unk_2783BCB60;
    objc_copyWeak(v24, &location);
    v18 = v17;
    v23 = v18;
    v24[1] = v8;
    [v15 addCompletion:&v19];
    [v15 startAnimationAfterDelay:{v4, v19, v20, v21, v22}];

    objc_destroyWeak(v24);
    objc_destroyWeak(&v26);

    objc_destroyWeak(&v28);
    objc_destroyWeak(&location);
  }
}

void __84__SBRecordingIndicatorViewController__animateWithTwoPartFadeToOrientation_duration___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained view];
    [v2 setAlpha:0.0];

    [v3[137] setOpacity:0.0];
    WeakRetained = v3;
  }
}

void __84__SBRecordingIndicatorViewController__animateWithTwoPartFadeToOrientation_duration___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v2 = [WeakRetained view];
    [v2 setAlpha:1.0];

    LODWORD(v3) = 1.0;
    [v4[137] setOpacity:v3];
    WeakRetained = v4;
  }
}

void __84__SBRecordingIndicatorViewController__animateWithTwoPartFadeToOrientation_duration___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    __84__SBRecordingIndicatorViewController__animateWithTwoPartFadeToOrientation_duration___block_invoke_3_cold_1(WeakRetained, a1);
    WeakRetained = v3;
  }
}

void __104__SBRecordingIndicatorViewController__animateWithOverlappingFadeFromOrientation_toOrientation_duration___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = 64;
  if (*(*(a1 + 32) + 1152) == v3)
  {
    v4 = 48;
  }

  v5 = 56;
  if (*(*(a1 + 32) + 1152) == v3)
  {
    v5 = 40;
  }

  v6 = *(a1 + v5);
  v7 = *(a1 + v4);
  v10 = v3;
  if ([v3 viewType] == 2)
  {
    [v10 containerView];
  }

  else
  {
    [v10 contentView];
  }
  v8 = ;
  [v8 setCenter:{v6, v7}];
  v9 = *(a1 + 32);
  if (!v9 || [v9 location] != 4)
  {
    __104__SBRecordingIndicatorViewController__animateWithOverlappingFadeFromOrientation_toOrientation_duration___block_invoke_cold_1(v10, v6, v7);
  }
}

uint64_t __104__SBRecordingIndicatorViewController__animateWithOverlappingFadeFromOrientation_toOrientation_duration___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setAlpha:0.0];
  v2 = *(a1 + 40);

  return [v2 setOpacity:0.0];
}

uint64_t __104__SBRecordingIndicatorViewController__animateWithOverlappingFadeFromOrientation_toOrientation_duration___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) setAlpha:1.0];
  v2 = *(a1 + 40);
  LODWORD(v3) = 1.0;

  return [v2 setOpacity:v3];
}

void __82__SBRecordingIndicatorViewController__updateCenterWithoutAnimationForOrientation___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  if ([v6 viewType] == 2)
  {
    [v6 containerView];
  }

  else
  {
    [v6 contentView];
  }
  v3 = ;
  v5 = *(a1 + 32);
  v4 = (a1 + 32);
  [v3 setCenter:{*(v5 + 1072), *(v5 + 1080)}];
  if (!*v4 || [*v4 location] != 4)
  {
    __82__SBRecordingIndicatorViewController__updateCenterWithoutAnimationForOrientation___block_invoke_cold_1(v6, v4);
  }
}

void __78__SBRecordingIndicatorViewController__updateIndicatorLayerWithSize_andCenter___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 highLevelLayer];
  BSRectWithSize();
  [v3 setBounds:?];

  v4 = *(a1 + 32);
  if (!v4 || [v4 location] != 4)
  {
    __78__SBRecordingIndicatorViewController__updateIndicatorLayerWithSize_andCenter___block_invoke_cold_1(v5, a1);
  }
}

void __72__SBRecordingIndicatorViewController__updateIndicatorLayerSize_opacity___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = *(a1 + 32);
  if (v3 && [v3 location] == 4)
  {
    if (*(a1 + 40) <= 0.0)
    {
      goto LABEL_6;
    }

    v4 = [v5 highLevelLayer];
    BSRectWithSize();
    [v4 setBounds:?];
  }

  else
  {
    __72__SBRecordingIndicatorViewController__updateIndicatorLayerSize_opacity___block_invoke_cold_1(v5, a1, a1 + 32, &v6);
    v4 = v6;
  }

LABEL_6:
}

void __69__SBRecordingIndicatorViewController__updateIndicatorViewSize_alpha___block_invoke(uint64_t a1, void *a2)
{
  v16 = a2;
  v3 = [v16 contentView];
  v4 = v3;
  if ((*(a1 + 80) & 1) == 0)
  {
    [v3 setAlpha:*(a1 + 40)];
  }

  [v4 setBounds:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];
  v5 = [v16 viewType];
  if (v5 < 2)
  {
    [v4 setCenter:{*(*(a1 + 32) + 1072), *(*(a1 + 32) + 1080)}];
  }

  else if (v5 - 2 <= 1)
  {
    v6 = [v16 containerView];
    [v6 setBounds:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];
    [v6 setCenter:{*(*(a1 + 32) + 1072), *(*(a1 + 32) + 1080)}];
    [v6 center];
    v8 = v7;
    v10 = v9;
    v11 = [v6 superview];
    [v6 convertPoint:v11 fromView:{v8, v10}];
    v13 = v12;
    v15 = v14;

    [v4 setCenter:{v13, v15}];
  }
}

void __84__SBRecordingIndicatorViewController__updateIndicatorVisibilityWithNormalAnimation___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained[125] startAnimation];
    WeakRetained = v2;
  }
}

void __84__SBRecordingIndicatorViewController__updateIndicatorVisibilityWithNormalAnimation___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained[126] startAnimationAfterDelay:2.0];
    WeakRetained = v2;
  }
}

void __84__SBRecordingIndicatorViewController__updateIndicatorVisibilityWithNormalAnimation___block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    __84__SBRecordingIndicatorViewController__updateIndicatorVisibilityWithNormalAnimation___block_invoke_6_cold_1(WeakRetained);
    WeakRetained = v2;
  }
}

void __86__SBRecordingIndicatorViewController__updateIndicatorVisibilityWithFastFadeAnimation___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    __86__SBRecordingIndicatorViewController__updateIndicatorVisibilityWithFastFadeAnimation___block_invoke_2_cold_1();
    WeakRetained = v2;
  }
}

void __84__SBRecordingIndicatorViewController__updateIndicatorVisibilityWithSpringAnimation___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained indicatorState] == 1)
  {
    [SBRecordingIndicatorViewController setIndicatorState:?];
  }
}

void __84__SBRecordingIndicatorViewController__updateIndicatorVisibilityWithSpringAnimation___block_invoke_2_46(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained indicatorState] == 3)
  {
    [SBRecordingIndicatorViewController setIndicatorState:?];
  }
}

- (void)backlightController:(id)a3 didTransitionToBacklightState:(int64_t)a4 source:(int64_t)a5
{
  v10 = *MEMORY[0x277D85DE8];
  IsActive = SBBacklightStateIsActive(a4);
  v7 = 0;
  if (self && IsActive)
  {
    if ([(SBRecordingIndicatorViewController *)self indicatorState]== 2 || [(SBRecordingIndicatorViewController *)self indicatorState]== 1)
    {
      v7 = [(SBRecordingIndicatorViewController *)self _requiresLayerUpdateForBacklightTransition];
    }

    else
    {
      v7 = 0;
    }
  }

  [(CALayer *)self->_highLevelContextRootLayer opacity];
  if ((BSFloatApproximatelyEqualToFloat() & 1) == 0 && v7 || ([(CALayer *)self->_highLevelContextRootLayer opacity], [(SBRecordingIndicatorViewController *)self _hasProminentIdleState], ((BSFloatApproximatelyEqualToFloat() | v7) & 1) == 0))
  {
    v8 = SBLogStatusBarish();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9[0] = 67109120;
      v9[1] = v7;
      _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "[Recording Indicator] Should force high level layer off... forceOff: %{BOOL}u", v9, 8u);
    }
  }

  if (v7)
  {
    [SBRecordingIndicatorViewController backlightController:&self->_highLevelContextRootLayer didTransitionToBacklightState:? source:?];
  }
}

- (SBWindowScene)windowScene
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);

  return WeakRetained;
}

- (id)_setUpContext
{
  if (result)
  {
    v1 = result;
    if ((-[SBRecordingIndicatorViewController _interchangesViewAndLayer](result) & 1) != 0 || (result = -[SBRecordingIndicatorViewController _hasMedinaPadBehaviors](v1), result) && (result = [v1[140] allowsBacklightChanges], result))
    {

      return [(SBRecordingIndicatorViewController *)v1 _configureRootLayer];
    }
  }

  return result;
}

- (void)_setUpIndicatorViews
{
  if (a1)
  {
    if ([a1 location] <= 2)
    {
      if (SBSIsSystemApertureAvailable() && [a1 location] == 3 || objc_msgSend(a1, "location") == 4)
      {
        v2 = 2;
      }

      else if ([(SBRecordingIndicatorViewController *)a1 _hasMedinaPadBehaviors])
      {
        v2 = 2;
      }

      else
      {
        v2 = 1;
      }
    }

    else
    {
      v2 = 3;
    }

    OUTLINED_FUNCTION_24([[SBRecordingIndicatorVisualRepresentation alloc] initWithViewType:v2], 1152);
    if ((-[SBRecordingIndicatorViewController _hasMedinaPadBehaviors](a1) & 1) != 0 || [a1 location] == 4)
    {
      OUTLINED_FUNCTION_24([[SBRecordingIndicatorVisualRepresentation alloc] initWithViewType:v2], 1160);
    }

    [a1[136] layer];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_5_6() view];
    objc_claimAutoreleasedReturnValue();
    OUTLINED_FUNCTION_0_29();
    v6[1] = 3221225472;
    v6[2] = __58__SBRecordingIndicatorViewController__setUpIndicatorViews__block_invoke;
    v6[3] = &unk_2783BCB18;
    v7 = v2;
    v8 = v3;
    v4 = v3;
    v5 = v2;
    [(SBRecordingIndicatorViewController *)a1 _updateIndicatorVisualRepresentationsWithBlock:v6];
  }
}

- (void)_calculateInitialIndicatorPositionAndSize
{
  v20 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v6 = [a1 _screen];
    v7 = SBHScreenTypeForCurrentDevice();
    v8 = [a1 location];
    switch(v8)
    {
      case 0:
        if ([(SBRecordingIndicatorViewController *)a1 _isOnExtendedDesktop])
        {
          v9 = 2;
        }

        else
        {
          v9 = 0;
        }

        break;
      case 1:
        v9 = 3;
        break;
      case 2:
        v9 = 1;
        break;
      case 3:
      case 4:
        v9 = 4;
        break;
      default:
        v9 = 0;
        break;
    }

    [SBRecordingIndicatorVisualRepresentation indicatorFrameForScreenType:v7 screen:v6 style:v9];
    v10 = OUTLINED_FUNCTION_17_1(v21);
    a1[131] = v10;
    if (v10 == 0.0)
    {
      v11 = SBLogStatusBarish();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = SBHStringForScreenType();
        *buf = 138412290;
        v19 = v12;
        _os_log_error_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_ERROR, "[Recording Indicator] no layout info for screen type: %@", buf, 0xCu);
      }
    }

    if ([*MEMORY[0x277D76620] userInterfaceLayoutDirection] == 1)
    {
      v22.origin.x = OUTLINED_FUNCTION_3_23();
      MinX = CGRectGetMinX(v22);
    }

    else
    {
      [v6 bounds];
      Width = CGRectGetWidth(v23);
      v24.origin.x = OUTLINED_FUNCTION_3_23();
      MinX = Width - CGRectGetMaxX(v24);
    }

    a1[132] = MinX;
    v25.origin.x = OUTLINED_FUNCTION_3_23();
    a1[133] = CGRectGetMinY(v25);
    OUTLINED_FUNCTION_3_23();
    UIRectGetCenter();
    *(a1 + 134) = v15;
    *(a1 + 135) = v16;
    [(SBRecordingIndicatorViewController *)a1 _updateIndicatorLayerWithSize:a1[134] andCenter:a1[135]];
    OUTLINED_FUNCTION_0_29();
    v17[1] = 3221225472;
    v17[2] = __79__SBRecordingIndicatorViewController__calculateInitialIndicatorPositionAndSize__block_invoke;
    v17[3] = &__block_descriptor_64_e50_v16__0__SBRecordingIndicatorVisualRepresentation_8l;
    v17[4] = v1;
    v17[5] = v2;
    v17[6] = v3;
    v17[7] = v4;
    [(SBRecordingIndicatorViewController *)a1 _updateIndicatorVisualRepresentationsWithBlock:v17];
    if (v8 != 2)
    {
      [(SBRecordingIndicatorViewController *)a1 _updateIndicatorLayerSize:0.0 opacity:?];
      [(SBRecordingIndicatorViewController *)a1 _updateIndicatorViewSize:0.0 alpha:?];
    }
  }
}

- (BOOL)_needsBacklightBehaviorChanges
{
  if (!a1)
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 1200));
  if ([WeakRetained isMainDisplayWindowScene])
  {
    v2 = +[SBRecordingIndicatorManager _supportsSecureIndicator];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)setIndicatorState:(uint64_t)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_19();
    if (*(v3 + 1168) != v4)
    {
      v1[146] = v2;
      v5 = [v1 delegate];
      [v5 recordingIndicatorViewController:v1 didUpdateIndicatorState:v2];
      if (!v2)
      {
        [(SBRecordingIndicatorViewController *)v1 _updateBacklightCoordinatorAssertionForIndicatorVisible:?];
      }
    }
  }
}

- (void)_updateBacklightCoordinatorAssertionForIndicatorVisible:(uint64_t)a1
{
  if (a1)
  {
    if (a2)
    {
      if (*(a1 + 1128))
      {
        return;
      }

      v3 = *(a1 + 1120);
      v4 = objc_opt_class();
      v7 = NSStringFromClass(v4);
      v5 = [v3 acquireBacklightCoordinatorAssertionForReason:v7];
      OUTLINED_FUNCTION_24(v5, 1128);
      v6 = v7;
    }

    else
    {
      if (*(a1 + 1168))
      {
        return;
      }

      [*(a1 + 1128) invalidate];
      v6 = *(a1 + 1128);
      *(a1 + 1128) = 0;
    }
  }
}

- (void)_updateToOrientation:(double)a3 withDuration:
{
  if (a1 && *(a1 + 1176) != a2)
  {
    *(a1 + 1176) = a2;
    v5 = [(SBRecordingIndicatorViewController *)a1 _hasMedinaPadBehaviors];
    if (![*(a1 + 1112) shouldAllowRotationUnderRateLimits] || (v6 = -[SBRecordingIndicatorViewController _isInMinimumOnTime](a1), a3 <= 0.0) || ((v5 ^ 1) & 1) != 0 || (v6 & 1) != 0)
    {
      OUTLINED_FUNCTION_18_1();

      [SBRecordingIndicatorViewController _updateCenterWithoutAnimationForOrientation:v10];
    }

    else
    {
      v7 = +[SBRecordingIndicatorDomain rootSettings];
      if (*(a1 + 1160) && [v7 useOverlappingCrossfade])
      {
        [SBRecordingIndicatorViewController _animateWithOverlappingFadeFromOrientation:a1 toOrientation:? duration:?];
      }

      else
      {
        [SBRecordingIndicatorViewController _animateWithTwoPartFadeToOrientation:a1 duration:?];
      }

      OUTLINED_FUNCTION_18_1();
    }
  }

  else
  {
    OUTLINED_FUNCTION_18_1();
  }
}

- (void)_updateIndicatorVisualRepresentationsWithBlock:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = v3;
    (*(v3 + 2))(v3, *(a1 + 1152));
    v3 = v4;
    if (*(a1 + 1160))
    {
      (*(v4 + 2))(v4);
      v3 = v4;
    }
  }
}

- (void)updateIndicatorVisibility:(BOOL)a3
{
  v3 = a3;
  [(SBRecordingIndicatorViewController *)self _updateBacklightCoordinatorAssertionForIndicatorVisible:a3];
  if (self)
  {
    if ([(SBRecordingIndicatorViewController *)self location]== 4)
    {

      [SBRecordingIndicatorViewController _updateIndicatorVisibilityWithNoAnimation:?];
      return;
    }

    if ([(SBRecordingIndicatorViewController *)self _usesSpringAnimations])
    {
      goto LABEL_7;
    }

    if (SBSIsSystemApertureAvailable())
    {

      [(SBRecordingIndicatorViewController *)self updateIndicatorVisibilityWithFastFadeAnimation:v3];
      return;
    }
  }

  else if (([(SBRecordingIndicatorViewController *)0 _usesSpringAnimations]& 1) != 0)
  {
LABEL_7:

    [(SBRecordingIndicatorViewController *)self _updateIndicatorVisibilityWithSpringAnimation:v3];
    return;
  }

  [(SBRecordingIndicatorViewController *)self _updateIndicatorVisibilityWithNormalAnimation:v3];
}

- (void)_areAnimationsHandledBySystemApertureElement
{
  if (result)
  {
    return ([result location] == 4);
  }

  return result;
}

- (void)_updateIndicatorVisibilityWithNoAnimation:(double *)a1
{
  if (a1)
  {
    [(SBRecordingIndicatorViewController *)a1 _updateIndicatorViewSize:1.0 alpha:?];

    [SBRecordingIndicatorViewController setIndicatorState:a1];
  }
}

- (uint64_t)_usesSpringAnimations
{
  if (result)
  {
    v1 = result;
    if (([(SBRecordingIndicatorViewController *)result _hasMedinaPadBehaviors]& 1) != 0)
    {
      return 1;
    }

    else
    {
      result = SBSIsSystemApertureAvailable();
      if (result)
      {
        return [v1 location] == 3;
      }
    }
  }

  return result;
}

- (uint64_t)_screenTypeForcesFastFadeAnimations
{
  if (result)
  {
    return SBSIsSystemApertureAvailable();
  }

  return result;
}

- (void)_updateIndicatorForBacklightLuminance:(uint64_t)a3 previousBacklightLuminance:
{
  if (a1 && ((OUTLINED_FUNCTION_19(), !-[SBRecordingIndicatorViewController _hasProminentIdleState](v6)) ? (v7 = 0.8) : (v7 = 1.0), ([v3[140] isSuppressingFlipbookRendering] & 1) == 0 && objc_msgSend(v3, "indicatorState") == 2 && -[SBRecordingIndicatorViewController _interchangesViewAndLayer](v3) && objc_msgSend(v3, "location") != 4 && (v4 != 1 ? (v8 = a3 == 1) : (v8 = 1), v8)))
  {
    v9 = [v3[144] contentView];
    v10 = v9;
    if (v4 != 1)
    {
      v7 = 0.0;
    }

    [v9 setAlpha:v7];

    [v3[145] contentView];
    [objc_claimAutoreleasedReturnValue() setAlpha:v7];
    OUTLINED_FUNCTION_18_1();
  }

  else
  {
    OUTLINED_FUNCTION_18_1();
  }
}

- (uint64_t)_interchangesViewAndLayer
{
  if (result)
  {
    v1 = result;
    if ([MEMORY[0x277D0ACD8] isEmulatedDevice] && (objc_msgSend(MEMORY[0x277D0ACD8], "hasEmulatedDeviceBounds") & 1) != 0)
    {
      return 0;
    }

    v2 = [v1 location];
    if ((v2 - 2) < 2)
    {
      return 0;
    }

    else if (v2)
    {
      return 1;
    }

    else
    {
      return [(SBRecordingIndicatorViewController *)v1 _hasMedinaPadBehaviors]^ 1;
    }
  }

  return result;
}

- (uint64_t)_configureRootLayer
{
  v39[4] = *MEMORY[0x277D85DE8];
  if (result)
  {
    v1 = result;
    [MEMORY[0x277CD9FF0] begin];
    [MEMORY[0x277CD9FF0] setDisableActions:1];
    WeakRetained = objc_loadWeakRetained((v1 + 1200));
    v3 = [WeakRetained screen];
    v4 = [v3 _display];
    [v3 scale];
    v6 = v5;
    memset(&v37, 0, sizeof(v37));
    CGAffineTransformMakeScale(&v37, v5, v5);
    v7 = *(v1 + 1192);
    if (v7 > 3 || v7 == 1)
    {
      memset(&v36, 0, sizeof(v36));
      SBReverseScaleTransformForScreen(v3, &v36);
      t1 = v37;
      t2 = v36;
      CGAffineTransformConcat(&v35, &t1, &t2);
      v37 = v35;
    }

    v9 = [WeakRetained isExternalDisplayWindowScene];
    v10 = *MEMORY[0x277CBED28];
    v11 = *MEMORY[0x277CDA120];
    v38[0] = *MEMORY[0x277CDA100];
    v38[1] = v11;
    v39[0] = v10;
    v39[1] = v10;
    v38[2] = *MEMORY[0x277CDA0F0];
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v4, "displayId")}];
    v38[3] = @"canRenderAboveBlankingContext";
    v39[2] = v12;
    v39[3] = MEMORY[0x277CBEC38];
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v38 count:4];

    LODWORD(v12) = +[SBRecordingIndicatorManager _supportsSecureIndicator];
    v14 = [MEMORY[0x277CD9E38] remoteContextWithOptions:v13];
    OUTLINED_FUNCTION_24(v14, 1088);
    LODWORD(v15) = 1148846080;
    if (v12)
    {
      *&v15 = INFINITY;
    }

    [*(v1 + 1088) setLevel:v15];
    [OUTLINED_FUNCTION_6_8(1088) setSecure:?];
    v16 = [MEMORY[0x277CD9ED0] layer];
    OUTLINED_FUNCTION_24(v16, 1096);
    v17 = OUTLINED_FUNCTION_9_4();
    v36 = v37;
    [v17 setAffineTransform:&v36];
    if (v9)
    {
      [v3 nativeBounds];
    }

    else
    {
      GSMainScreenPixelSize();
      BSRectWithSize();
    }

    OUTLINED_FUNCTION_14();
    [OUTLINED_FUNCTION_9_4() setFrame:?];
    v18 = [(SBRecordingIndicatorViewController *)v1 _hasMedinaPadBehaviors];
    v19 = [v1 location];
    if (v19 == 4 || v18)
    {
      [OUTLINED_FUNCTION_9_4() setOpacity:0.0];
    }

    GSMainScreenOrientation();
    if (!((v20 == 0.0) | v9 & 1))
    {
      v21 = v20;
      v22 = *(v1 + 1096);
      v40.origin.x = OUTLINED_FUNCTION_13();
      MidY = CGRectGetMidY(v40);
      v41.origin.x = OUTLINED_FUNCTION_13();
      [v22 setPosition:{MidY, CGRectGetMidX(v41)}];
      v24 = *(v1 + 1096);
      if (v24)
      {
        [v24 affineTransform];
      }

      else
      {
        memset(&v35, 0, sizeof(v35));
      }

      CGAffineTransformRotate(&v36, &v35, -v21);
      [v24 setAffineTransform:&v36];
    }

    if (v19 == 4)
    {
      v25 = [MEMORY[0x277D67E28] sharedInstanceForEmbeddedDisplay];
      [v25 sensorRegionSize];
      BSRectWithSize();
      [v25 minimumScreenEdgeInsets];
      [OUTLINED_FUNCTION_9_4() bounds];
      UIRectCenteredXInRectScale();
      v26 = OUTLINED_FUNCTION_17_1(v42);
      v43.origin.x = OUTLINED_FUNCTION_3_23();
      Height = CGRectGetHeight(v43);
      if (v26 < Height)
      {
        Height = v26;
      }

      v28 = Height * 0.5;
      OUTLINED_FUNCTION_24(objc_alloc_init(MEMORY[0x277CD9EA8]), 1104);
      v29 = OUTLINED_FUNCTION_3_23();
      [v30 setFrame:{v29, *&v6}];
      [*(v1 + 1104) setRenderMode:*MEMORY[0x277CDA688]];
      [*(v1 + 1104) setCornerRadius:v28];
      v31 = *(v1 + 1104);
      v32 = SBCALayerCornerCurveForRadius(v28);
      [v31 setCornerCurve:v32];

      [OUTLINED_FUNCTION_9_4() addSublayer:*(v1 + 1104)];
    }

    [*(v1 + 1088) setLayer:*(v1 + 1096)];

    return [MEMORY[0x277CD9FF0] commit];
  }

  return result;
}

- (void)_requiresIndicatorPortalViews
{
  if (result)
  {
    return ([result location] > 2);
  }

  return result;
}

- (uint64_t)_usesSpringAnimationsWithContainerView
{
  if (result)
  {
    v1 = result;
    result = SBSIsSystemApertureAvailable();
    if (result)
    {
      return [v1 location] == 3;
    }
  }

  return result;
}

- (id)_requiresSecondIndicatorView
{
  if (result)
  {
    v1 = result;
    if (([(SBRecordingIndicatorViewController *)result _hasMedinaPadBehaviors]& 1) != 0)
    {
      return 1;
    }

    else
    {
      return ([v1 location] == 4);
    }
  }

  return result;
}

- (uint64_t)_shouldReverseScaleWhenDisplayZoomedInLocation:(uint64_t)a1
{
  if (a2 <= 3)
  {
    v2 = 2u >> (a2 & 0xF);
  }

  else
  {
    LOBYTE(v2) = 1;
  }

  if (!a1)
  {
    LOBYTE(v2) = 0;
  }

  return v2 & 1;
}

- (BOOL)_secureRenderingSupported
{
  if (result)
  {
    return +[SBRecordingIndicatorManager _supportsSecureIndicator];
  }

  return result;
}

- (uint64_t)_isOnExtendedDesktop
{
  v1 = a1;
  if (a1)
  {
    v2 = [MEMORY[0x277D75418] currentDevice];
    v3 = [v2 userInterfaceIdiom];

    if ((v3 & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      WeakRetained = objc_loadWeakRetained((v1 + 1200));
      v1 = [WeakRetained isMainDisplayWindowScene] ^ 1;
    }

    else
    {
      return 0;
    }
  }

  return v1;
}

- (uint64_t)_updateIndicatorLayerWithSize:(double)a3 andCenter:(double)a4
{
  if (result)
  {
    v7 = result;
    [MEMORY[0x277CD9FF0] begin];
    [MEMORY[0x277CD9FF0] setDisableActions:1];
    OUTLINED_FUNCTION_0_29();
    v8[1] = 3221225472;
    v8[2] = __78__SBRecordingIndicatorViewController__updateIndicatorLayerWithSize_andCenter___block_invoke;
    v8[3] = &unk_2783BCBD8;
    v8[4] = v7;
    *&v8[5] = a2;
    *&v8[6] = a3;
    *&v8[7] = a4;
    [(SBRecordingIndicatorViewController *)v7 _updateIndicatorVisualRepresentationsWithBlock:v8];
    return [MEMORY[0x277CD9FF0] commit];
  }

  return result;
}

- (uint64_t)_updateIndicatorLayerSize:(double)a3 opacity:
{
  if (result)
  {
    v5 = result;
    [MEMORY[0x277CD9FF0] begin];
    [MEMORY[0x277CD9FF0] setDisableActions:1];
    OUTLINED_FUNCTION_1_4();
    v7 = 3221225472;
    v8 = __72__SBRecordingIndicatorViewController__updateIndicatorLayerSize_opacity___block_invoke;
    v9 = &unk_2783BCC00;
    v10 = v5;
    v11 = a2;
    v12 = a3;
    [(SBRecordingIndicatorViewController *)v5 _updateIndicatorVisualRepresentationsWithBlock:v6];
    return [MEMORY[0x277CD9FF0] commit];
  }

  return result;
}

- (void)_updateIndicatorViewSize:(double)a3 alpha:
{
  if (a1)
  {
    BSRectWithSize();
    OUTLINED_FUNCTION_14();
    [a1 location];
    OUTLINED_FUNCTION_1_4();
    v11 = 3221225472;
    v12 = __69__SBRecordingIndicatorViewController__updateIndicatorViewSize_alpha___block_invoke;
    v13 = &unk_2783BCC28;
    v20 = v9 == 4;
    v15 = a3;
    v16 = v3;
    v17 = v4;
    v18 = v5;
    v19 = v6;
    v14 = a1;
    [(SBRecordingIndicatorViewController *)a1 _updateIndicatorVisualRepresentationsWithBlock:v10];
  }
}

- (uint64_t)_isInMinimumOnTime
{
  if (!a1)
  {
    return 0;
  }

  v1 = [a1 minimumOnTimeCoordinator];
  v2 = [v1 isMinimumOnTimeSatisfiedForIndicators:3] ^ 1;

  return v2;
}

- (void)_animateWithOverlappingFadeFromOrientation:(uint64_t)a1 toOrientation:duration:
{
  if (a1)
  {
    v2 = +[SBRecordingIndicatorDomain rootSettings];
    if (BSFloatGreaterThanOrEqualToFloat())
    {
      [v2 delayBeforeFadeOut180WhenOverlapping];
      v35 = v3;
      [v2 fadeOutDuration180WhenOverlapping];
      v5 = v4;
      [v2 delayBeforeFadeIn180WhenOverlapping];
      v7 = v6;
      [v2 fadeInDuration180WhenOverlapping];
    }

    else
    {
      [v2 delayBeforeFadeOut90WhenOverlapping];
      v35 = v9;
      [v2 fadeOutDuration90WhenOverlapping];
      v5 = v10;
      [v2 delayBeforeFadeIn90WhenOverlapping];
      v7 = v11;
      [v2 fadeInDuration90WhenOverlapping];
    }

    v12 = v8;
    v13 = [*(a1 + 1160) containerView];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = [a1 view];
    }

    v16 = v15;

    v17 = [*(a1 + 1152) containerView];
    v18 = v17;
    if (v17)
    {
      v19 = v17;
    }

    else
    {
      v19 = [a1 view];
    }

    v20 = v19;

    v21 = *(a1 + 1096);
    v22 = [SBRecordingIndicatorViewController _centerForOrientation:a1];
    v24 = v23;
    v25 = [SBRecordingIndicatorViewController _centerForOrientation:a1];
    v27 = v26;
    *(a1 + 1072) = v25;
    *(a1 + 1080) = v26;
    [MEMORY[0x277CD9FF0] begin];
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __104__SBRecordingIndicatorViewController__animateWithOverlappingFadeFromOrientation_toOrientation_duration___block_invoke;
    v45[3] = &unk_2783BCB88;
    v45[4] = a1;
    *&v45[5] = v25;
    v45[6] = v27;
    *&v45[7] = v22;
    v45[8] = v24;
    [(SBRecordingIndicatorViewController *)a1 _updateIndicatorVisualRepresentationsWithBlock:v45];
    [v20 alpha];
    [v16 setAlpha:?];
    [v21 opacity];
    [0 setOpacity:?];
    [v20 setAlpha:0.0];
    [v21 setOpacity:0.0];
    [MEMORY[0x277CD9FF0] commit];
    v28 = objc_alloc(MEMORY[0x277D75D40]);
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __104__SBRecordingIndicatorViewController__animateWithOverlappingFadeFromOrientation_toOrientation_duration___block_invoke_2;
    v42[3] = &unk_2783A92D8;
    v43 = v16;
    v44 = 0;
    v29 = v16;
    v30 = [v28 initWithDuration:0 curve:v42 animations:v5];
    v31 = objc_alloc(MEMORY[0x277D75D40]);
    OUTLINED_FUNCTION_1_4();
    v37 = 3221225472;
    v38 = __104__SBRecordingIndicatorViewController__animateWithOverlappingFadeFromOrientation_toOrientation_duration___block_invoke_3;
    v39 = &unk_2783A92D8;
    v40 = v20;
    v41 = v21;
    v32 = v21;
    v33 = v20;
    v34 = [v31 initWithDuration:0 curve:v36 animations:v12];
    [v30 startAnimationAfterDelay:v35];
    [v34 startAnimationAfterDelay:v7];
  }
}

- (uint64_t)_updateCenterWithoutAnimationForOrientation:(uint64_t)result
{
  if (result)
  {
    OUTLINED_FUNCTION_19();
    WeakRetained = objc_loadWeakRetained((v2 + 1200));
    [WeakRetained isExternalDisplayWindowScene];

    *(v1 + 1072) = [SBRecordingIndicatorViewController _centerForOrientation:v1];
    *(v1 + 1080) = v4;
    [MEMORY[0x277CD9FF0] begin];
    [MEMORY[0x277CD9FF0] setDisableActions:1];
    OUTLINED_FUNCTION_1_4();
    v6 = 3221225472;
    v7 = __82__SBRecordingIndicatorViewController__updateCenterWithoutAnimationForOrientation___block_invoke;
    v8 = &unk_2783BCBB0;
    v9 = v1;
    [(SBRecordingIndicatorViewController *)v1 _updateIndicatorVisualRepresentationsWithBlock:v5];
    return [MEMORY[0x277CD9FF0] commit];
  }

  return result;
}

- (double)_centerForOrientation:(uint64_t)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_19();
    v3 = [v2 _screen];
    [v3 _referenceBounds];

    if (v1 == 4)
    {
      if ([*MEMORY[0x277D76620] userInterfaceLayoutDirection] != 1)
      {
        goto LABEL_17;
      }
    }

    else
    {
      if (v1 != 3)
      {
        if (v1 == 2)
        {
          if ([*MEMORY[0x277D76620] userInterfaceLayoutDirection] == 1)
          {
            v8.origin.x = OUTLINED_FUNCTION_2_26();
            Width = CGRectGetWidth(v8);
            OUTLINED_FUNCTION_15_1(1048, Width);
          }

          v11.origin.x = OUTLINED_FUNCTION_2_26();
          CGRectGetHeight(v11);
        }

        else if ([*MEMORY[0x277D76620] userInterfaceLayoutDirection] != 1)
        {
          v12.origin.x = OUTLINED_FUNCTION_2_26();
          CGRectGetWidth(v12);
        }

        goto LABEL_17;
      }

      v9.origin.x = OUTLINED_FUNCTION_2_26();
      v5 = CGRectGetWidth(v9);
      OUTLINED_FUNCTION_15_1(1064, v5);
      if ([*MEMORY[0x277D76620] userInterfaceLayoutDirection] == 1)
      {
LABEL_17:
        UIRectGetCenter();
        return result;
      }
    }

    v10.origin.x = OUTLINED_FUNCTION_2_26();
    Height = CGRectGetHeight(v10);
    OUTLINED_FUNCTION_15_1(1056, Height);
    goto LABEL_17;
  }

  return 0.0;
}

- (uint64_t)_ignoresActiveInterfaceOrientation
{
  if (result)
  {
    WeakRetained = objc_loadWeakRetained((result + 1200));
    v2 = [WeakRetained isExternalDisplayWindowScene];

    return v2;
  }

  return result;
}

- (uint64_t)_stopAllAnimations
{
  if (result)
  {
    [*(result + 992) stopAnimation:1];
    [OUTLINED_FUNCTION_6_8(1000) stopAnimation:?];
    [OUTLINED_FUNCTION_6_8(1008) stopAnimation:?];
    [OUTLINED_FUNCTION_6_8(1016) stopAnimation:?];
    [OUTLINED_FUNCTION_6_8(1024) stopAnimation:?];
    [OUTLINED_FUNCTION_6_8(1032) stopAnimation:?];
    v1 = OUTLINED_FUNCTION_6_8(1040);

    return [v1 stopAnimation:?];
  }

  return result;
}

void __84__SBRecordingIndicatorViewController__updateIndicatorVisibilityWithNormalAnimation___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = 0.0;
  if (v2)
  {
    v4 = OUTLINED_FUNCTION_5_6();
    [(SBRecordingIndicatorViewController *)v4 _hasProminentIdleState];
    v5 = OUTLINED_FUNCTION_11_3();
    if (v5)
    {
      if ([(SBRecordingIndicatorViewController *)v5 _hasProminentIdleState])
      {
        v3 = 1.0;
      }

      else
      {
        v3 = 0.8;
      }
    }
  }

  else
  {
    v1 = 0.0;
  }

  [(SBRecordingIndicatorViewController *)v2 _updateIndicatorViewSize:v1 alpha:v3];
}

- (double)_sizeForStateIdleOn
{
  if (!a1)
  {
    return 0.0;
  }

  hasProminentIdle = [(SBRecordingIndicatorViewController *)a1 _hasProminentIdleState];
  result = *(a1 + 1048);
  if (!hasProminentIdle)
  {
    return result * 0.8;
  }

  return result;
}

- (double)_alphaForStateIdleOn
{
  if (!a1)
  {
    return 0.0;
  }

  hasProminentIdle = [(SBRecordingIndicatorViewController *)a1 _hasProminentIdleState];
  result = 0.8;
  if (hasProminentIdle)
  {
    return 1.0;
  }

  return result;
}

- (BOOL)_shouldForceViewToShowForCurrentBacklightLuminance
{
  if (!a1)
  {
    return 0;
  }

  v1 = [a1 traitCollection];
  v2 = [v1 _backlightLuminance] == 1;

  return v2;
}

void __84__SBRecordingIndicatorViewController__updateIndicatorVisibilityWithNormalAnimation___block_invoke_8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [SBRecordingIndicatorViewController setIndicatorState:?];
}

void __86__SBRecordingIndicatorViewController__updateIndicatorVisibilityWithFastFadeAnimation___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = 0.0;
  if (v2)
  {
    v4 = OUTLINED_FUNCTION_5_6();
    [(SBRecordingIndicatorViewController *)v4 _hasProminentIdleState];
    v5 = OUTLINED_FUNCTION_11_3();
    if (v5)
    {
      if ([(SBRecordingIndicatorViewController *)v5 _hasProminentIdleState])
      {
        v3 = 1.0;
      }

      else
      {
        v3 = 0.8;
      }
    }
  }

  else
  {
    v1 = 0.0;
  }

  [(SBRecordingIndicatorViewController *)v2 _updateIndicatorViewSize:v1 alpha:v3];
}

void __86__SBRecordingIndicatorViewController__updateIndicatorVisibilityWithFastFadeAnimation___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [SBRecordingIndicatorViewController setIndicatorState:?];
}

- (void)_addBlurFilterToLayer:(double)a3 withBlurRadius:
{
  v10[1] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v5 = *MEMORY[0x277CDA328];
    v6 = a2;
    v7 = [OUTLINED_FUNCTION_5_6() filterWithType:v5];
    [v7 setName:@"gaussianBlur"];
    [v7 setValue:@"high" forKey:@"inputQuality"];
    v8 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
    [v7 setValue:v8 forKey:@"inputRadius"];

    v10[0] = v7;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
    [v3 setFilters:v9];
  }

  OUTLINED_FUNCTION_18_1();
}

- (void)_animateLayer:(void *)a3 forKeyPath:(void *)a4 fromValue:(void *)a5 toValue:(int)a6 persistingToValue:(double)a7 duration:
{
  v16 = a2;
  v13 = a3;
  v14 = a5;
  if (a1)
  {
    v15 = [(SBRecordingIndicatorViewController *)a1 _springAnimationForKeyPath:v13 fromValue:a4 toValue:v14 duration:a7];
    [v16 addAnimation:v15 forKey:v13];
    if (a6)
    {
      [v16 setValue:v14 forKeyPath:v13];
    }
  }
}

- (id)_springAnimationForKeyPath:(void *)a3 fromValue:(void *)a4 toValue:(double)a5 duration:
{
  if (a1)
  {
    v8 = MEMORY[0x277CD9FA0];
    v9 = a4;
    v10 = a3;
    v11 = [v8 animationWithKeyPath:a2];
    [v11 setBeginTime:CACurrentMediaTime()];
    [v11 setFillMode:*MEMORY[0x277CDA228]];
    [v11 setFromValue:v10];

    [v11 setToValue:v9];
    [v11 setMass:2.0];
    [v11 setStiffness:300.0];
    [v11 setDamping:50.0];
    [v11 setDuration:a5];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (uint64_t)_isSuppressingFlipbookRendering
{
  if (result)
  {
    return [*(result + 1120) isSuppressingFlipbookRendering];
  }

  return result;
}

- (unint64_t)_isIndicatorOnOrAnimatingToOn
{
  if (result)
  {
    v1 = result;
    return [result indicatorState] == 2 || objc_msgSend(v1, "indicatorState") == 1;
  }

  return result;
}

- (void)traitCollectionDidChange:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = *MEMORY[0x277D85DE8];
  [(SBRecordingIndicatorViewController *)a1 _updateIndicatorForBacklightLuminance:a2 previousBacklightLuminance:a3];
  if ([(SBRecordingIndicatorViewController *)a1 _requiresLayerUpdateForBacklightTransition])
  {
    if (a2)
    {
      v6 = 0.0;
    }

    else
    {
      v6 = 1.0;
    }

    v7 = MEMORY[0x277CDA678];
    if (a2)
    {
      v7 = MEMORY[0x277CDA688];
    }

    v8 = *v7;
    v9 = SBLogStatusBarish();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 134218496;
      v12 = v6;
      v13 = 2048;
      v14 = a2;
      v15 = 2048;
      v16 = a3;
      _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "[Recording Indicator] Changed high level layer opacity to %f for backlightLuminance update %lu from: %lu", &v11, 0x20u);
    }

    *&v10 = v6;
    [*(a1 + 1096) setOpacity:v10];
    [*(a1 + 1104) setRenderMode:v8];
  }
}

uint64_t __84__SBRecordingIndicatorViewController__animateWithTwoPartFadeToOrientation_duration___block_invoke_3_cold_1(uint64_t a1, uint64_t a2)
{
  [SBRecordingIndicatorViewController _updateCenterWithoutAnimationForOrientation:a1];
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);

  return [v3 startAnimationAfterDelay:v4];
}

void __104__SBRecordingIndicatorViewController__animateWithOverlappingFadeFromOrientation_toOrientation_duration___block_invoke_cold_1(void *a1, double a2, double a3)
{
  v5 = [a1 highLevelLayer];
  [v5 setPosition:{a2, a3}];
}

void __82__SBRecordingIndicatorViewController__updateCenterWithoutAnimationForOrientation___block_invoke_cold_1(void *a1, uint64_t a2)
{
  v3 = [a1 highLevelLayer];
  [v3 setPosition:{*(*a2 + 1072), *(*a2 + 1080)}];
}

void __78__SBRecordingIndicatorViewController__updateIndicatorLayerWithSize_andCenter___block_invoke_cold_1(void *a1, uint64_t a2)
{
  v3 = [a1 highLevelLayer];
  [v3 setPosition:{*(a2 + 48), *(a2 + 56)}];
}

uint64_t __72__SBRecordingIndicatorViewController__updateIndicatorLayerSize_opacity___block_invoke_cold_1(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = [a1 highLevelLayer];
  BSRectWithSize();
  [v8 setBounds:?];

  v9 = [a1 highLevelLayer];
  v10 = *(a2 + 48);
  *&v10 = v10;
  [v9 setOpacity:v10];

  v11 = [a1 highLevelLayer];
  *a4 = v11;
  v12 = *(*a3 + 1072);
  v13 = *(*a3 + 1080);

  return [v11 setPosition:{v12, v13}];
}

void __84__SBRecordingIndicatorViewController__updateIndicatorVisibilityWithNormalAnimation___block_invoke_6_cold_1(void *a1)
{
  if ([(SBRecordingIndicatorViewController *)a1 _interchangesViewAndLayer])
  {
    [(SBRecordingIndicatorViewController *)a1 _hasProminentIdleState];
    if (OUTLINED_FUNCTION_16_1())
    {
      v3 = 1.0;
    }

    else
    {
      v3 = 0.8;
    }

    [(SBRecordingIndicatorViewController *)a1 _updateIndicatorLayerSize:v1 opacity:v3];
    v4 = [a1 traitCollection];
    v5 = [v4 _backlightLuminance];

    if (v5 == 1)
    {
      [(SBRecordingIndicatorViewController *)a1 _hasProminentIdleState];
    }

    hasProminentIdle = [(SBRecordingIndicatorViewController *)a1 _hasProminentIdleState];
    OUTLINED_FUNCTION_7_3(hasProminentIdle, 1048);
  }

  [SBRecordingIndicatorViewController setIndicatorState:a1];
}

void __86__SBRecordingIndicatorViewController__updateIndicatorVisibilityWithFastFadeAnimation___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_19();
  if ([(SBRecordingIndicatorViewController *)v3 _interchangesViewAndLayer])
  {
    [(SBRecordingIndicatorViewController *)v0 _hasProminentIdleState];
    if (OUTLINED_FUNCTION_16_1())
    {
      v4 = 1.0;
    }

    else
    {
      v4 = 0.8;
    }

    [(SBRecordingIndicatorViewController *)v0 _updateIndicatorLayerSize:v2 opacity:v4];
    v5 = [v0 traitCollection];
    v6 = [v5 _backlightLuminance];

    if (v6 == 1)
    {
      v7 = *(v1 + 32);
      if (v7)
      {
        [(SBRecordingIndicatorViewController *)v7 _hasProminentIdleState];
      }
    }

    hasProminentIdle = [(SBRecordingIndicatorViewController *)v0 _hasProminentIdleState];
    OUTLINED_FUNCTION_7_3(hasProminentIdle, 1048);
  }

  [SBRecordingIndicatorViewController setIndicatorState:v0];
}

- (uint64_t)backlightController:(uint64_t)a1 didTransitionToBacklightState:(id *)a2 source:.cold.1(uint64_t a1, id *a2)
{
  hasProminentIdle = [(SBRecordingIndicatorViewController *)a1 _hasProminentIdleState];
  v5 = *(a1 + 1048);
  if (!hasProminentIdle)
  {
    v5 = v5 * 0.8;
  }

  [(SBRecordingIndicatorViewController *)a1 _updateIndicatorLayerSize:v5 opacity:0.0];
  [*a2 setOpacity:0.0];
  return [*(a1 + 1104) setRenderMode:*MEMORY[0x277CDA688]];
}

@end