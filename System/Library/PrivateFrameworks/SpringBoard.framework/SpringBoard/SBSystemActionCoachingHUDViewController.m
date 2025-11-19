@interface SBSystemActionCoachingHUDViewController
- (SBHUDAttachmentDelegate)attachmentDelegate;
- (SBUIAnimationPropertyAnimator)_makeViewControllerTransitionAnimationController;
- (__CFString)_coachingLabelText;
- (double)_actionButtonFrame;
- (double)_coachingLabelWrapperViewAlpha;
- (double)_coachingLabelWrapperViewSize;
- (double)_xTranslationTransformForCurrentState;
- (id)_accessibilityCoachingLabelTextForConfiguredAction:(void *)a1;
- (id)_animationSettingsForTransitionFromState:(uint64_t)a3 toState:;
- (id)_cameraCoachingLabelText;
- (id)_controlCoachingLabelTextForAction:(void *)a1;
- (id)_flashlightCoachingLabelText;
- (id)_focusCoachingLabelText;
- (id)_makeCoachingButton;
- (id)_makeCoachingLabel;
- (id)_makeCoachingLabelWrapperView;
- (id)_makeContentView;
- (id)_makeDimmingView;
- (id)_makeGaussianBlurFilter;
- (id)_musicRecognitionCoachingLabelText;
- (id)_silentModeCoachingLabelText;
- (id)_translateCoachingLabelText;
- (id)_voiceMemosCoachingLabelText;
- (id)delegate;
- (id)initWithRingerControl:(void *)a3 activityManager:(void *)a4 applicationController:(void *)a5 doNotDisturbStateMonitor:(void *)a6 flashlightActivityManager:;
- (id)setDelegate:(id *)result;
- (uint64_t)_layoutCoachingContentView;
- (uint64_t)_layoutDimmingView;
- (uint64_t)_updateContentVisibilityAssertion;
- (uint64_t)action;
- (uint64_t)activityManager;
- (uint64_t)applicationController;
- (uint64_t)coachingButton;
- (uint64_t)coachingContentView;
- (uint64_t)coachingLabel;
- (uint64_t)coachingLabelOrientation;
- (uint64_t)coachingLabelTextNeedsUpdate;
- (uint64_t)coachingLabelWrapperView;
- (uint64_t)contentView;
- (uint64_t)contentVisibilityAssertion;
- (uint64_t)dimmingView;
- (uint64_t)doNotDisturbStateMonitor;
- (uint64_t)flashlightActivityManager;
- (uint64_t)isAttached;
- (uint64_t)isCoachingLabelOccluded;
- (uint64_t)isRotating;
- (uint64_t)liveRenderingAssertion;
- (uint64_t)ringerControl;
- (uint64_t)setCoachingLabelOrientation:(uint64_t)result;
- (uint64_t)settings;
- (uint64_t)shouldLayoutForButtonHints;
- (uint64_t)state;
- (uint64_t)stateTransitionAnimationCount;
- (uint64_t)systemApertureFrames;
- (void)_canFitTextInCoachingLabel:(void *)a1;
- (void)_layoutCoachingButton;
- (void)_layoutCoachingLabel;
- (void)_layoutCoachingLabelWrapperView;
- (void)_setNeedsUpdateCoachingLabelText;
- (void)_shortcutCoachingLabelTextForConfiguredAction:(void *)a1;
- (void)_updateCoachingButtonLayer:(uint64_t)a1;
- (void)_updateCoachingLabelOccluded;
- (void)_updateCoachingLabelTextIfNeeded;
- (void)_updateLiveRenderingAssertionIfNeeded;
- (void)controlSystemAction:(id)a3 propertiesDidChange:(id)a4;
- (void)setAction:(id *)a1;
- (void)setAttachmentDelegate:(id)a3;
- (void)setIsAttached:(uint64_t)a1;
- (void)setPositionOffset:(CGPoint)a3;
- (void)setShouldLayoutForButtonHints:(uint64_t)a1;
- (void)setSystemApertureFrames:(uint64_t)a1;
- (void)transitionToState:(int)a3 animated:(void *)a4 completion:;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation SBSystemActionCoachingHUDViewController

- (id)initWithRingerControl:(void *)a3 activityManager:(void *)a4 applicationController:(void *)a5 doNotDisturbStateMonitor:(void *)a6 flashlightActivityManager:
{
  v12 = a2;
  v21 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if (a1)
  {
    if (!v12)
    {
      [SBSystemActionCoachingHUDViewController initWithRingerControl:? activityManager:? applicationController:? doNotDisturbStateMonitor:? flashlightActivityManager:?];
    }

    if (!v21)
    {
      [SBSystemActionCoachingHUDViewController initWithRingerControl:? activityManager:? applicationController:? doNotDisturbStateMonitor:? flashlightActivityManager:?];
    }

    if (!v13)
    {
      [SBSystemActionCoachingHUDViewController initWithRingerControl:? activityManager:? applicationController:? doNotDisturbStateMonitor:? flashlightActivityManager:?];
    }

    if (!v14)
    {
      [SBSystemActionCoachingHUDViewController initWithRingerControl:? activityManager:? applicationController:? doNotDisturbStateMonitor:? flashlightActivityManager:?];
    }

    if (!v15)
    {
      [SBSystemActionCoachingHUDViewController initWithRingerControl:? activityManager:? applicationController:? doNotDisturbStateMonitor:? flashlightActivityManager:?];
    }

    v22.receiver = a1;
    v22.super_class = SBSystemActionCoachingHUDViewController;
    v16 = objc_msgSendSuper2(&v22, sel_initWithNibName_bundle_, 0, 0);
    a1 = v16;
    if (v16)
    {
      objc_storeStrong(v16 + 132, a2);
      objc_storeStrong(a1 + 133, a3);
      objc_storeStrong(a1 + 134, a4);
      objc_storeStrong(a1 + 135, a5);
      objc_storeStrong(a1 + 136, a6);
      v17 = +[SBSystemActionDomain rootSettings];
      v18 = [v17 coachingSettings];
      v19 = a1[137];
      a1[137] = v18;

      *(a1 + 1016) = 0;
      a1[131] = 0;
      a1[140] = 0;
      *(a1 + 1017) = 0;
      a1[141] = 1;
      [a1 setTransitioningDelegate:a1];
    }
  }

  return a1;
}

void __81__SBSystemActionCoachingHUDViewController_transitionToState_animated_completion___block_invoke(uint64_t a1)
{
  [(SBSystemActionCoachingHUDViewController *)*(a1 + 32) _layoutCoachingContentView];
  [(SBSystemActionCoachingHUDViewController *)*(a1 + 32) _layoutCoachingButton];
  [(SBSystemActionCoachingHUDViewController *)*(a1 + 32) _layoutCoachingLabelWrapperView];
  [(SBSystemActionCoachingHUDViewController *)*(a1 + 32) _layoutCoachingLabel];
  v2 = *(a1 + 40);
  if ((v2 - 1) >= 2)
  {
    if (v2)
    {
      return;
    }

    v10 = 0.0;
    [*(*(a1 + 32) + 1144) setAlpha:0.0];
    v11 = *(a1 + 32);
    v12 = *(v11 + 1152);
    [*(v11 + 1136) bounds];
    [v12 setFrame:?];
    v13 = [*(*(a1 + 32) + 1160) layer];
    [v13 setShadowOpacity:0.0];

    v14 = *(a1 + 32);
    if ((*(v14 + 1018) & 1) == 0 && (*(v14 + 1048) - 1) <= 1)
    {
      if (*(v14 + 1016))
      {
        v10 = 0.0;
      }

      else
      {
        v10 = 1.0;
      }
    }

    [*(v14 + 1168) setAlpha:v10];
    v9 = &unk_28336F5D0;
  }

  else
  {
    v3 = *(a1 + 32);
    v4 = *(v3 + 1144);
    [*(v3 + 1096) dimmingAlpha];
    [v4 setAlpha:?];
    v5 = [*(*(a1 + 32) + 1160) layer];
    [*(*(a1 + 32) + 1096) coachingButtonShadowOpacity];
    *&v6 = v6;
    [v5 setShadowOpacity:v6];

    v7 = *(a1 + 32);
    v8 = 0.0;
    if ((*(v7 + 1018) & 1) == 0 && (*(v7 + 1048) - 1) <= 1)
    {
      v8 = 1.0;
      if (*(v7 + 1016))
      {
        v8 = 0.0;
      }
    }

    [*(v7 + 1168) setAlpha:v8];
    v9 = &unk_28336F5E0;
  }

  v15 = [*(*(a1 + 32) + 1168) layer];
  [v15 setValue:v9 forKeyPath:@"filters.gaussianBlur.inputRadius"];
}

uint64_t __81__SBSystemActionCoachingHUDViewController_transitionToState_animated_completion___block_invoke_361(uint64_t a1)
{
  --*(*(a1 + 32) + 1120);
  v2 = *(a1 + 32);
  if (*(v2 + 1120) || (v3 = *(v2 + 1048), v3 != *(a1 + 56)))
  {
    v4 = 0;
  }

  else
  {
    if (!v3)
    {
      [(SBSystemActionCoachingHUDViewController *)v2 setIsAttached:?];
    }

    v4 = 1;
  }

  if (objc_opt_respondsToSelector())
  {
    [*(a1 + 40) systemActionCoachingHUDViewController:*(a1 + 32) didEndTransitionToState:*(a1 + 56) completed:v4];
  }

  result = *(a1 + 48);
  if (result)
  {
    v6 = *(result + 16);

    return v6();
  }

  return result;
}

- (void)viewDidLoad
{
  v17.receiver = self;
  v17.super_class = SBSystemActionCoachingHUDViewController;
  [(SBSystemActionCoachingHUDViewController *)&v17 viewDidLoad];
  v3 = [(SBOrientationTransformWrapperViewController *)self view];
  [v3 setCounterTransformView:1];
  [v3 bs_setHitTestingDisabled:1];
  v4 = [(SBSystemActionCoachingHUDViewController *)self _makeContentView];
  contentView = self->_contentView;
  self->_contentView = v4;

  [v3 addContentView:self->_contentView];
  v6 = [(SBSystemActionCoachingHUDViewController *)self _makeDimmingView];
  dimmingView = self->_dimmingView;
  self->_dimmingView = v6;

  [(UIView *)self->_contentView addSubview:self->_dimmingView];
  v8 = objc_alloc(MEMORY[0x277D75D18]);
  [(UIView *)self->_contentView bounds];
  v9 = [v8 initWithFrame:?];
  coachingContentView = self->_coachingContentView;
  self->_coachingContentView = v9;

  [(UIView *)self->_contentView addSubview:self->_coachingContentView];
  v11 = [(SBSystemActionCoachingHUDViewController *)self _makeCoachingButton];
  coachingButton = self->_coachingButton;
  self->_coachingButton = v11;

  [(UIView *)self->_coachingContentView addSubview:self->_coachingButton];
  v13 = [(SBSystemActionCoachingHUDViewController *)self _makeCoachingLabelWrapperView];
  coachingLabelWrapperView = self->_coachingLabelWrapperView;
  self->_coachingLabelWrapperView = v13;

  [(UIView *)self->_coachingContentView addSubview:self->_coachingLabelWrapperView];
  v15 = [(SBSystemActionCoachingHUDViewController *)self _makeCoachingLabel];
  coachingLabel = self->_coachingLabel;
  self->_coachingLabel = v15;

  [(UIView *)self->_coachingLabelWrapperView addSubview:self->_coachingLabel];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v13.receiver = self;
  v13.super_class = SBSystemActionCoachingHUDViewController;
  v7 = a4;
  [(SBSystemActionCoachingHUDViewController *)&v13 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  self->_rotating = 1;
  v8 = SBFWindowForViewControllerTransition();
  v9 = [v8 _toWindowOrientation];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __94__SBSystemActionCoachingHUDViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v12[3] = &unk_2783A8C18;
  v12[4] = self;
  [MEMORY[0x277D75D18] animateWithDuration:v12 animations:0.2];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __94__SBSystemActionCoachingHUDViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2;
  v11[3] = &unk_2783BE3B8;
  v11[4] = self;
  v11[5] = v9;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __94__SBSystemActionCoachingHUDViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_3;
  v10[3] = &unk_2783B50F8;
  v10[4] = self;
  v10[5] = v9;
  v10[6] = 0x3FC999999999999ALL;
  [v7 animateAlongsideTransition:v11 completion:v10];
}

uint64_t __94__SBSystemActionCoachingHUDViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = 0.0;
  if ((*(v1 + 1018) & 1) == 0 && (*(v1 + 1048) - 1) <= 1)
  {
    v2 = 1.0;
    if (*(v1 + 1016))
    {
      v2 = 0.0;
    }
  }

  return [*(v1 + 1168) setAlpha:v2];
}

void __94__SBSystemActionCoachingHUDViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 setContainerOrientation:*(a1 + 40)];
}

uint64_t __94__SBSystemActionCoachingHUDViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = 0.0;
  if ((*(v1 + 1018) & 1) == 0 && (*(v1 + 1048) - 1) <= 1)
  {
    v2 = 1.0;
    if (*(v1 + 1016))
    {
      v2 = 0.0;
    }
  }

  return [*(v1 + 1168) setAlpha:v2];
}

- (void)setAttachmentDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_attachmentDelegate);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_attachmentDelegate, obj);
    [(SBSystemActionCoachingHUDViewController *)self setShouldLayoutForButtonHints:?];
    v5 = obj;
  }
}

- (void)setPositionOffset:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(SBOrientationTransformWrapperViewController *)self view];
  v7 = [v6 containerOrientation];

  v8 = v7 - 3;
  if (v7 == 2)
  {
    v9 = -x;
  }

  else
  {
    v9 = x;
  }

  if (v8 >= 2)
  {
    v10 = y;
  }

  else
  {
    v10 = x;
  }

  if (v8 < 2)
  {
    v9 = y;
  }

  if (self->_positionOffset.x != v9 || self->_positionOffset.y != v10)
  {
    self->_positionOffset.x = v9;
    self->_positionOffset.y = v10;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __61__SBSystemActionCoachingHUDViewController_setPositionOffset___block_invoke;
    v12[3] = &unk_2783A8C18;
    v12[4] = self;
    [MEMORY[0x277D75D18] performWithoutAnimation:v12];
  }
}

uint64_t __61__SBSystemActionCoachingHUDViewController_setPositionOffset___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 1152);
  CGAffineTransformMakeTranslation(&v4, *(v1 + 1000), *(v1 + 1008));
  return [v2 setTransform:&v4];
}

- (void)controlSystemAction:(id)a3 propertiesDidChange:(id)a4
{
  v6 = a3;
  v7 = [(SBHomeScreenConfigurationServer *)a4 connections];
  v8 = [(SBControlSystemAction *)v6 properties];

  v9 = [(SBHomeScreenConfigurationServer *)v8 connections];
  v10 = BSEqualStrings();

  if ((v10 & 1) == 0)
  {

    [(SBSystemActionCoachingHUDViewController *)self _setNeedsUpdateCoachingLabelText];
  }
}

id __91__SBSystemActionCoachingHUDViewController__makeViewControllerTransitionAnimationController__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_alloc(MEMORY[0x277D75D40]);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __91__SBSystemActionCoachingHUDViewController__makeViewControllerTransitionAnimationController__block_invoke_2;
  v10[3] = &unk_2783A8C18;
  v4 = v2;
  v11 = v4;
  v5 = [v3 initWithDuration:3 curve:v10 animations:0.001];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __91__SBSystemActionCoachingHUDViewController__makeViewControllerTransitionAnimationController__block_invoke_3;
  v8[3] = &unk_2783ACA48;
  v9 = v4;
  v6 = v4;
  [v5 addCompletion:v8];

  return v5;
}

void __91__SBSystemActionCoachingHUDViewController__makeViewControllerTransitionAnimationController__block_invoke_2(uint64_t a1)
{
  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  v8 = [*(a1 + 32) viewControllerForKey:*MEMORY[0x277D77240]];
  v2 = [*(a1 + 32) viewControllerForKey:*MEMORY[0x277D77230]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v8 view];
    v4 = [*(a1 + 32) containerView];
    [v4 bounds];
    [v3 setFrame:?];

    v5 = [*(a1 + 32) containerView];
    v6 = [v8 view];
    [v5 addSubview:v6];
  }

  v7 = [v2 view];
  [v7 removeFromSuperview];

  [MEMORY[0x277CD9FF0] commit];
}

- (double)_xTranslationTransformForCurrentState
{
  if (a1)
  {
    v2 = *(a1 + 1048);
    if (*(a1 + 1019) == 1)
    {
      v3 = 0.0;
      if (v2 == 2)
      {
        v3 = 2.0;
      }

      if (!v2)
      {
        v3 = -13.0;
      }
    }

    else
    {
      v3 = 0.0;
      if (v2 <= 2)
      {
        v3 = dbl_21F8A7D80[v2];
      }
    }

    CGAffineTransformMakeTranslation(a2, v3, 0.0);
  }

  else
  {
    result = 0.0;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
  }

  return result;
}

uint64_t __71__SBSystemActionCoachingHUDViewController__updateCoachingLabelOccluded__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = 0.0;
  if ((*(v1 + 1018) & 1) == 0 && (*(v1 + 1048) - 1) <= 1)
  {
    v2 = 1.0;
    if (*(v1 + 1016))
    {
      v2 = 0.0;
    }
  }

  return [*(v1 + 1168) setAlpha:v2];
}

- (SBHUDAttachmentDelegate)attachmentDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_attachmentDelegate);

  return WeakRetained;
}

- (void)setAction:(id *)a1
{
  v4 = a2;
  if (a1)
  {
    v5 = a1[129];
    if (v5 != v4)
    {
      v9 = v4;
      v6 = [v5 controlAction];
      [(SBControlSystemAction *)v6 removeObserver:a1];

      [a1[138] invalidate];
      v7 = a1[138];
      a1[138] = 0;

      objc_storeStrong(a1 + 129, a2);
      v8 = [v9 controlAction];
      [(SBControlSystemAction *)v8 addObserver:a1];

      [(SBSystemActionCoachingHUDViewController *)a1 _updateContentVisibilityAssertion];
      [(SBSystemActionCoachingHUDViewController *)a1 _setNeedsUpdateCoachingLabelText];
      v4 = v9;
    }
  }
}

- (uint64_t)_updateContentVisibilityAssertion
{
  if (!result)
  {
    return result;
  }

  v1 = result;
  v2 = [*(result + 1032) controlAction];
  if (v2)
  {
    v3 = *(v1 + 1104);
    if (*(v1 + 1048))
    {
      if (!v3)
      {
        v4 = [(SBControlSystemAction *)v2 acquireContentVisibilityAssertionForReason:?];
LABEL_8:
        v5 = *(v1 + 1104);
        *(v1 + 1104) = v4;
      }
    }

    else if (v3)
    {
      [v3 invalidate];
      v4 = 0;
      goto LABEL_8;
    }
  }

  return MEMORY[0x2821F9730]();
}

- (void)_setNeedsUpdateCoachingLabelText
{
  if (a1)
  {
    a1[1017] = 1;
    v1 = [a1 viewIfLoaded];
    [v1 setNeedsLayout];
  }
}

- (void)setSystemApertureFrames:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v7 = v3;
    v4 = BSEqualArrays();
    v3 = v7;
    if ((v4 & 1) == 0)
    {
      v5 = [v7 copy];
      v6 = *(a1 + 1040);
      *(a1 + 1040) = v5;

      [(SBSystemActionCoachingHUDViewController *)a1 _updateCoachingLabelOccluded];
      v3 = v7;
    }
  }
}

- (void)_updateCoachingLabelOccluded
{
  v21 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v2 = *(a1 + 1040);
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v3 = [v2 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v17;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v17 != v5)
          {
            objc_enumerationMutation(v2);
          }

          [*(*(&v16 + 1) + 8 * i) CGRectValue];
          OUTLINED_FUNCTION_8_4();
          v22.origin.x = OUTLINED_FUNCTION_5_11();
          v23 = CGRectUnion(v22, v26);
        }

        v4 = [v2 countByEnumeratingWithState:&v16 objects:v20 count:{16, v23.origin.x, v23.origin.y, v23.size.width, v23.size.height}];
      }

      while (v4);
    }

    v24.origin.x = OUTLINED_FUNCTION_5_11();
    if (CGRectIsNull(v24))
    {
      v7 = 0;
    }

    else
    {
      v8 = [a1 view];
      v9 = *(a1 + 1176);
      [v9 bounds];
      [v9 convertRect:v8 toView:?];
      [v8 convertRectFromContainerInterfaceOrientationToContentInterfaceOrientation:?];
      OUTLINED_FUNCTION_8_4();
      v25.origin.x = OUTLINED_FUNCTION_5_11();
      v7 = CGRectIntersectsRect(v25, v27);
    }

    if (*(a1 + 1018) != v7)
    {
      *(a1 + 1018) = v7;
      if ([a1 isViewLoaded])
      {
        OUTLINED_FUNCTION_1_4();
        v12 = 3221225472;
        v13 = __71__SBSystemActionCoachingHUDViewController__updateCoachingLabelOccluded__block_invoke;
        v14 = &unk_2783A8C18;
        v15 = a1;
        [v10 animateWithDuration:v11 animations:0.2];
      }
    }
  }
}

- (void)transitionToState:(int)a3 animated:(void *)a4 completion:
{
  v7 = a4;
  if (a1)
  {
    v8 = [(SBSystemActionCoachingHUDViewController *)a1 _animationSettingsForTransitionFromState:a2 toState:?];
    if (a3)
    {
      v9 = 3;
    }

    else
    {
      v9 = 2;
    }

    WeakRetained = objc_loadWeakRetained((a1 + 1024));
    v11 = *(a1 + 1048);
    *(a1 + 1048) = a2;
    ++*(a1 + 1120);
    [(SBSystemActionCoachingHUDViewController *)a1 _updateCoachingLabelTextIfNeeded];
    [(SBSystemActionCoachingHUDViewController *)a1 _updateContentVisibilityAssertion];
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained systemActionCoachingHUDViewController:a1 didBeginTransitionToState:a2];
    }

    if (a2 && !v11)
    {
      [(SBSystemActionCoachingHUDViewController *)a1 setIsAttached:?];
    }

    v12 = MEMORY[0x277D75D18];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __81__SBSystemActionCoachingHUDViewController_transitionToState_animated_completion___block_invoke;
    v18[3] = &unk_2783A8BC8;
    v18[4] = a1;
    v18[5] = a2;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __81__SBSystemActionCoachingHUDViewController_transitionToState_animated_completion___block_invoke_361;
    v14[3] = &unk_2783BE390;
    v17 = a2;
    v14[4] = a1;
    v15 = WeakRetained;
    v16 = v7;
    v13 = WeakRetained;
    [v12 sb_animateWithSettings:v8 mode:v9 animations:v18 completion:v14];
  }
}

- (id)_animationSettingsForTransitionFromState:(uint64_t)a3 toState:
{
  if (a1)
  {
    if (a3 == 2)
    {
      a1 = [a1[137] expansionSettings];
    }

    else if (a3 == 1)
    {
      v3 = a1[137];
      if (a2 == 2)
      {
        [v3 contractionSettings];
      }

      else
      {
        [v3 presentationSettings];
      }
      a1 = ;
    }

    else if (a3)
    {
      a1 = 0;
    }

    else
    {
      a1 = [a1[137] dismissalSettings];
    }
  }

  return a1;
}

- (void)_updateCoachingLabelTextIfNeeded
{
  if (a1)
  {
    if (*(a1 + 1017) == 1)
    {
      v2 = [a1 viewIfLoaded];
      v3 = [v2 window];

      if (v3)
      {
        if (*(a1 + 1048) || !*(a1 + 1120))
        {
          v4 = [(SBSystemActionCoachingHUDViewController *)a1 _coachingLabelText];
          [*(a1 + 1176) setText:v4];
          *(a1 + 1017) = 0;
        }
      }
    }
  }
}

- (void)setIsAttached:(uint64_t)a1
{
  if (a1 && *(a1 + 1020) != a2)
  {
    *(a1 + 1020) = a2;
    WeakRetained = objc_loadWeakRetained((a1 + 992));
    [WeakRetained updateAttachmentStateForHUDViewController:a1];
  }
}

- (uint64_t)_layoutCoachingContentView
{
  if (result)
  {
    v1 = result;
    [*(result + 1136) bounds];
    v2 = *(v1 + 1152);
    UIRectGetCenter();
    [v2 setCenter:?];
    v3 = *(v1 + 1152);
    BSRectWithSize();

    return [v3 setBounds:?];
  }

  return result;
}

- (void)_layoutCoachingButton
{
  if (result)
  {
    v3 = result;
    v4 = [result traitCollection];
    [v4 displayScale];

    [(SBSystemActionCoachingHUDViewController *)v3 _actionButtonFrame];
    OUTLINED_FUNCTION_14();
    v12.origin.x = v1;
    v12.origin.y = v2;
    CGRectGetHeight(v12);
    v13.origin.x = OUTLINED_FUNCTION_13();
    CGRectGetMinY(v13);
    UIRectIntegralWithScale();
    OUTLINED_FUNCTION_14();
    UIRectGetCenter();
    OUTLINED_FUNCTION_8_4();
    OUTLINED_FUNCTION_13();
    UIRectCenteredAboutPointScale();
    OUTLINED_FUNCTION_9_5();
    v10 = 0u;
    v11 = 0u;
    v9 = 0u;
    [(SBSystemActionCoachingHUDViewController *)v3 _xTranslationTransformForCurrentState];
    v5 = v3[145];
    OUTLINED_FUNCTION_4_12();
    UIRectGetCenter();
    [v5 setCenter:?];
    v6 = v3[145];
    BSRectWithSize();
    [v6 setBounds:?];
    v7 = v3[145];
    v8[0] = v9;
    v8[1] = v10;
    v8[2] = v11;
    return [v7 setTransform:v8];
  }

  return result;
}

- (void)_layoutCoachingLabelWrapperView
{
  if (result)
  {
    v1 = result;
    v2 = [result traitCollection];
    [v2 displayScale];

    [(SBSystemActionCoachingHUDViewController *)v1 _actionButtonFrame];
    v3 = [(SBSystemActionCoachingHUDViewController *)v1 _coachingLabelWrapperViewSize];
    if (v3 >= v4)
    {
      v5 = v3;
    }

    else
    {
      v5 = v4;
    }

    UIRectIntegralWithScale();
    UIRectGetCenter();
    OUTLINED_FUNCTION_8_4();
    UIRectCenteredAboutPointScale();
    memset(&v24, 0, sizeof(v24));
    v6 = *(v1 + 1048);
    v7 = 0.0;
    if (v6 <= 2)
    {
      v7 = dbl_21F8A7D68[v6];
    }

    CGAffineTransformMakeScale(&v24, v7, v7);
    memset(&v23, 0, sizeof(v23));
    [(SBSystemActionCoachingHUDViewController *)v1 _xTranslationTransformForCurrentState];
    v8 = *(MEMORY[0x277CBF2C0] + 16);
    *&v22.a = *MEMORY[0x277CBF2C0];
    *&v22.c = v8;
    *&v22.tx = *(MEMORY[0x277CBF2C0] + 32);
    *&t1.a = *&v22.a;
    *&t1.c = v8;
    *&t1.tx = *&v22.tx;
    t2 = v24;
    CGAffineTransformConcat(&v22, &t1, &t2);
    t2 = v22;
    v20 = v23;
    CGAffineTransformConcat(&t1, &t2, &v20);
    *&v22.tx = *&t1.tx;
    UIRectGetCenter();
    v10 = v9;
    v12 = v11;
    v13 = [*(v1 + 1168) layer];
    [v13 anchorPoint];
    v15 = v14;
    v17 = v16;

    [*(v1 + 1168) setCenter:{v10 + (v15 + -0.5) * v5, v12 + (v17 + -0.5) * v5}];
    v18 = *(v1 + 1168);
    BSRectWithSize();
    [v18 setBounds:?];
    v19 = *(v1 + 1168);
    v24 = t1;
    return [v19 setTransform:&v24];
  }

  return result;
}

- (void)_layoutCoachingLabel
{
  if (a1)
  {
    v2 = [a1 traitCollection];
    [v2 displayScale];
    v4 = v3;

    [a1[146] bounds];
    [a1[147] sizeThatFits:-[SBSystemActionCoachingHUDViewController _coachingLabelWrapperViewSize](a1)];
    UIRectIntegralWithScale();
    OUTLINED_FUNCTION_14();
    UIRectGetCenter();
    OUTLINED_FUNCTION_8_4();
    OUTLINED_FUNCTION_13();
    UIRectCenteredAboutPointScale();
    OUTLINED_FUNCTION_9_5();
    v42 = 0u;
    v43 = 0u;
    v41 = 0u;
    SBFTransformFromOrientationToOrientation();
    memset(&v40, 0, sizeof(v40));
    BSFloatRoundForScale();
    Translation = CGAffineTransformMakeTranslation(&v40, v5, 0.0);
    v14 = OUTLINED_FUNCTION_15(Translation, v7, v8, v9, v10, v11, v12, v43, v13, v26, v28, v30, v4, v41, *(&v41 + 1), v42.n128_i64[0], v42.n128_i64[1], v42, v33, v35, *MEMORY[0x277CBF2C0], *(MEMORY[0x277CBF2C0] + 8), *(MEMORY[0x277CBF2C0] + 16), *(MEMORY[0x277CBF2C0] + 24), *(MEMORY[0x277CBF2C0] + 32));
    OUTLINED_FUNCTION_15(v14, v15, v16, v17, v18, v19, v20, *&v40.tx, v21, v27, v29, v31, v32, *&v40.a, *&v40.b, *&v40.c, *&v40.d, *&v40.c, v34, v36, v37, *(&v37 + 1), v38.n128_i64[0], v38.n128_i64[1], v39.n128_i64[0]);
    v41 = v37;
    v42 = v38;
    v43 = v39;
    OUTLINED_FUNCTION_4_12();
    CGRectApplyAffineTransform(v44, v22);
    OUTLINED_FUNCTION_4_12();
    UIRectGetCenter();
    OUTLINED_FUNCTION_8_4();
    SBUnintegralizedRectCenteredAboutPoint();
    BSPointRoundForScale();
    v23 = a1[147];
    UIRectGetCenter();
    [v23 setCenter:?];
    v24 = a1[147];
    BSRectWithSize();
    [v24 setBounds:?];
    v25 = a1[147];
    v41 = v37;
    v42 = v38;
    v43 = v39;
    [v25 setTransform:&v41];
    [(SBSystemActionCoachingHUDViewController *)a1 _updateCoachingLabelOccluded];
  }
}

- (double)_coachingLabelWrapperViewAlpha
{
  result = 0.0;
  if (a1 && (*(a1 + 1018) & 1) == 0 && (*(a1 + 1048) - 1) <= 1)
  {
    result = 1.0;
    if (*(a1 + 1016))
    {
      return 0.0;
    }
  }

  return result;
}

- (id)_makeContentView
{
  if (a1)
  {
    v2 = objc_alloc(MEMORY[0x277D75D18]);
    a1 = OUTLINED_FUNCTION_13_0(v2, MEMORY[0x277CBF3A0]);
    v1 = vars8;
  }

  return a1;
}

- (id)_makeDimmingView
{
  if (a1)
  {
    v1 = objc_alloc(MEMORY[0x277D75D18]);
    v2 = OUTLINED_FUNCTION_13_0(v1, MEMORY[0x277CBF3A0]);
    [v2 setAlpha:0.0];
    v3 = [MEMORY[0x277D75348] blackColor];
    [OUTLINED_FUNCTION_12_0() setBackgroundColor:?];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)_makeCoachingButton
{
  if (a1)
  {
    v3 = objc_alloc(MEMORY[0x277D75D18]);
    v4 = OUTLINED_FUNCTION_13_0(v3, MEMORY[0x277CBF3A0]);
    [v4 setAccessibilityIdentifier:@"system-action-coaching-button"];
    [MEMORY[0x277D75348] systemWhiteColor];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_11_4() setBackgroundColor:?];

    v5 = [v4 layer];
    [v5 setCornerCurve:*MEMORY[0x277CDA138]];
    v6 = OUTLINED_FUNCTION_10_6();
    if (!v7)
    {
      v6 = 2.5;
    }

    [v5 setCornerRadius:v6];
    v8 = [MEMORY[0x277D75348] blackColor];
    [v5 setShadowColor:{objc_msgSend(v8, "CGColor")}];

    [v5 setShadowOffset:{*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)}];
    [v5 setShadowOpacity:0.0];
    [v5 setShadowPathIsBounds:1];
    [*(a1 + 1096) coachingButtonShadowRadius];
    [v5 setShadowRadius:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_makeCoachingLabelWrapperView
{
  v10[1] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v2 = objc_alloc(MEMORY[0x277D75D18]);
    v3 = OUTLINED_FUNCTION_13_0(v2, MEMORY[0x277CBF3A0]);
    v4 = v3;
    v5 = 0.0;
    if ((*(a1 + 1018) & 1) == 0 && (*(a1 + 1048) - 1) <= 1)
    {
      v5 = 1.0;
      if (*(a1 + 1016))
      {
        v5 = 0.0;
      }
    }

    [v3 setAlpha:v5];
    v6 = [v4 layer];
    [v6 setAnchorPoint:{0.0, 0.5}];
    v7 = [(SBSystemActionCoachingHUDViewController *)a1 _makeGaussianBlurFilter];
    v10[0] = v7;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
    [v6 setFilters:v8];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_makeCoachingLabel
{
  if (a1)
  {
    v3 = objc_alloc(MEMORY[0x277D756B8]);
    v4 = OUTLINED_FUNCTION_13_0(v3, MEMORY[0x277CBF3A0]);
    [v4 setAccessibilityIdentifier:@"system-action-coaching-label"];
    [MEMORY[0x277D74300] systemFontOfSize:19.0 weight:*MEMORY[0x277D74418]];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_11_4() setFont:?];

    [v4 setNumberOfLines:0];
    [MEMORY[0x277D75348] systemWhiteColor];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_11_4() setTextColor:?];

    v5 = [v4 layer];
    v6 = [MEMORY[0x277D75348] blackColor];
    [v5 setShadowColor:{objc_msgSend(v6, "CGColor")}];

    [v5 setShadowOffset:{*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)}];
    [*(a1 + 1096) coachingLabelShadowOpacity];
    *&v7 = v7;
    [v5 setShadowOpacity:v7];
    [*(a1 + 1096) coachingLabelShadowRadius];
    [v5 setShadowRadius:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)viewIsAppearing:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = SBSystemActionCoachingHUDViewController;
  [(SBSystemActionCoachingHUDViewController *)&v8 viewIsAppearing:a3];
  v4 = [(SBOrientationTransformWrapperViewController *)self view];
  v5 = [v4 window];
  v6 = [v5 interfaceOrientation];

  [v4 setContainerOrientation:v6];
  [v4 setContentOrientation:1];
  if (self && self->_coachingLabelOrientation != v6)
  {
    self->_coachingLabelOrientation = v6;
    if ((v6 - 3) < 2)
    {
      v7 = 1;
    }

    else
    {
      v7 = 4;
    }

    [(UILabel *)self->_coachingLabel setTextAlignment:v7];
  }

  [(SBSystemActionCoachingHUDViewController *)&self->super.super.super.super.isa _updateLiveRenderingAssertionIfNeeded];
  [(SBSystemActionCoachingHUDViewController *)self transitionToState:0 animated:0 completion:?];
}

- (uint64_t)setCoachingLabelOrientation:(uint64_t)result
{
  if (result && *(result + 1128) != a2)
  {
    *(result + 1128) = a2;
    if ((a2 - 3) < 2)
    {
      v2 = 1;
    }

    else
    {
      v2 = 4;
    }

    return [*(result + 1176) setTextAlignment:v2];
  }

  return result;
}

- (void)_updateLiveRenderingAssertionIfNeeded
{
  v19[3] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v2 = [a1 view];
    v3 = [v2 window];
    v4 = [v3 windowScene];

    if (v4)
    {
      v5 = [a1 _appearState] != 0;
    }

    else
    {
      v5 = 0;
    }

    v6 = a1[139];
    if (v6)
    {
      v7 = [a1[139] isAcquired];
      if (!v5)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v7 = 0;
      if (!v5)
      {
        goto LABEL_11;
      }
    }

    if ((v7 & 1) == 0)
    {
      [a1[139] invalidate];
      v8 = MEMORY[0x277CF0868];
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = [MEMORY[0x277CF09A8] requestLiveUpdatingForScene:v4];
      v12 = [MEMORY[0x277CF09B0] requestUnrestrictedFramerateForScene:{v4, v11}];
      v19[1] = v12;
      v13 = [MEMORY[0x277CF09E8] ignoreWhenBacklightInactivates];
      v19[2] = v13;
      v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:3];
      v15 = [v8 acquireWithExplanation:v10 observer:0 attributes:v14];
      v16 = a1[139];
      a1[139] = v15;

LABEL_16:
      return;
    }

LABEL_11:
    if (v6)
    {
      v17 = v5;
    }

    else
    {
      v17 = 1;
    }

    if ((v17 & 1) == 0)
    {
      [a1[139] invalidate];
      v18 = a1[139];
      a1[139] = 0;
    }

    goto LABEL_16;
  }
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SBSystemActionCoachingHUDViewController;
  [(SBSystemActionCoachingHUDViewController *)&v4 viewDidDisappear:a3];
  [(SBSystemActionCoachingHUDViewController *)&self->super.super.super.super.isa _updateLiveRenderingAssertionIfNeeded];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = SBSystemActionCoachingHUDViewController;
  [(SBSystemActionCoachingHUDViewController *)&v3 viewDidLayoutSubviews];
  [(SBSystemActionCoachingHUDViewController *)self _updateCoachingLabelTextIfNeeded];
  [(SBSystemActionCoachingHUDViewController *)self _layoutDimmingView];
  [(SBSystemActionCoachingHUDViewController *)self _layoutCoachingContentView];
  [(SBSystemActionCoachingHUDViewController *)self _layoutCoachingButton];
  [(SBSystemActionCoachingHUDViewController *)self _layoutCoachingLabelWrapperView];
  [(SBSystemActionCoachingHUDViewController *)&self->super.super.super.super.isa _layoutCoachingLabel];
}

- (uint64_t)_layoutDimmingView
{
  if (result)
  {
    v1 = result;
    [*(result + 1136) bounds];
    OUTLINED_FUNCTION_9_5();
    v2 = *(v1 + 1144);
    UIRectGetCenter();
    [v2 setCenter:?];
    OUTLINED_FUNCTION_4_12();

    return [v3 setBounds:?];
  }

  return result;
}

uint64_t __94__SBSystemActionCoachingHUDViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_3(uint64_t a1)
{
  *(*(a1 + 32) + 1016) = 0;
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(a1 + 40);
    if (*(v2 + 1128) != v3)
    {
      *(v2 + 1128) = v3;
      if ((v3 - 3) < 2)
      {
        v4 = 1;
      }

      else
      {
        v4 = 4;
      }

      [*(v2 + 1176) setTextAlignment:v4];
      v2 = *(a1 + 32);
    }
  }

  [(SBSystemActionCoachingHUDViewController *)v2 _layoutCoachingLabel];
  OUTLINED_FUNCTION_1_4();
  v8 = 3221225472;
  v9 = __94__SBSystemActionCoachingHUDViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_4;
  v10 = &unk_2783A8C18;
  v11 = *(a1 + 32);
  return [v5 animateWithDuration:v7 animations:?];
}

- (void)setShouldLayoutForButtonHints:(uint64_t)a1
{
  if (a1)
  {
    if (*(a1 + 1019) != a2)
    {
      *(a1 + 1019) = a2;
      v2 = *(a1 + 1160);
      if (v2)
      {
        v6 = [v2 layer];
        v4 = OUTLINED_FUNCTION_10_6();
        if (!v5)
        {
          v4 = 2.5;
        }

        [v3 setCornerRadius:v4];
      }
    }
  }
}

- (SBUIAnimationPropertyAnimator)_makeViewControllerTransitionAnimationController
{
  if (a1)
  {
    a1 = [[SBUIAnimationPropertyAnimator alloc] initWithPropertyAnimatorGenerator:&__block_literal_global_291];
    v1 = vars8;
  }

  return a1;
}

- (void)_updateCoachingButtonLayer:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v5 = OUTLINED_FUNCTION_10_6();
    if (!v6)
    {
      v5 = 2.5;
    }

    v7 = v4;
    [v4 setCornerRadius:v5];
    v3 = v7;
  }
}

- (id)_makeGaussianBlurFilter
{
  if (a1)
  {
    v1 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA328]];
    [v1 setName:@"gaussianBlur"];
    [OUTLINED_FUNCTION_12_0() setValue:? forKey:?];
    [OUTLINED_FUNCTION_12_0() setValue:? forKey:?];
    [v1 setValue:&unk_28336F5D0 forKey:*MEMORY[0x277CDA4F0]];
    [OUTLINED_FUNCTION_12_0() setValue:? forKey:?];
    [OUTLINED_FUNCTION_12_0() setValue:? forKey:?];
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

- (__CFString)_coachingLabelText
{
  v1 = a1;
  if (a1)
  {
    v2 = [a1[129] configuredAction];
    v3 = [v2 sectionIdentifier];
    if ([v3 isEqualToString:@"SilentMode"])
    {
      v4 = [(SBSystemActionCoachingHUDViewController *)v1 _silentModeCoachingLabelText];
    }

    else if ([v3 isEqualToString:@"Focus"])
    {
      v4 = [(SBSystemActionCoachingHUDViewController *)v1 _focusCoachingLabelText];
    }

    else
    {
      if ([v3 isEqualToString:@"Camera"])
      {
        goto LABEL_26;
      }

      if ([v3 isEqualToString:@"VoiceMemos"])
      {
        v4 = [(SBSystemActionCoachingHUDViewController *)v1 _voiceMemosCoachingLabelText];
        goto LABEL_27;
      }

      if ([v3 isEqualToString:@"Flashlight"])
      {
        v4 = [(SBSystemActionCoachingHUDViewController *)v1 _flashlightCoachingLabelText];
        goto LABEL_27;
      }

      if ([v3 isEqualToString:@"Accessibility"])
      {
        v4 = [(SBSystemActionCoachingHUDViewController *)v1 _accessibilityCoachingLabelTextForConfiguredAction:v2];
        goto LABEL_27;
      }

      if ([v3 isEqualToString:@"Translate"])
      {
        v4 = [(SBSystemActionCoachingHUDViewController *)v1 _translateCoachingLabelText];
        goto LABEL_27;
      }

      if ([v3 isEqualToString:@"Magnifier"])
      {
LABEL_26:
        v4 = [(SBSystemActionCoachingHUDViewController *)v1 _cameraCoachingLabelText];
        goto LABEL_27;
      }

      if ([v3 isEqualToString:@"MusicRecognition"])
      {
        v4 = [(SBSystemActionCoachingHUDViewController *)v1 _musicRecognitionCoachingLabelText];
      }

      else
      {
        if ([v3 isEqualToString:@"Controls"])
        {
          v5 = [v1[32].info controlAction];
          v1 = [(SBSystemActionCoachingHUDViewController *)v1 _controlCoachingLabelTextForAction:v5];

          goto LABEL_28;
        }

        if (![v3 isEqualToString:@"Shortcuts"])
        {
          if (![v3 isEqualToString:@"VisualIntelligence"])
          {
            v1 = &stru_283094718;
LABEL_28:

            goto LABEL_29;
          }

          goto LABEL_26;
        }

        v4 = [(SBSystemActionCoachingHUDViewController *)v1 _shortcutCoachingLabelTextForConfiguredAction:v2];
      }
    }

LABEL_27:
    v1 = v4;
    goto LABEL_28;
  }

LABEL_29:

  return v1;
}

- (double)_actionButtonFrame
{
  if (!a1)
  {
    return 0.0;
  }

  v2 = +[SBButtonBezelGeometryInfo buttonBezelGeometryInfoForCurrentEmbeddedDisplayBezel];
  v3 = [a1 view];
  [v2 buttonHWRectForButton:8 inView:v3];
  v5 = v4;

  return v5;
}

- (double)_coachingLabelWrapperViewSize
{
  if (!a1)
  {
    return 0.0;
  }

  v2 = [a1 traitCollection];
  [v2 displayScale];

  v3 = [a1 view];
  v4 = [v3 window];
  [v4 interfaceOrientation];

  v5 = [a1 view];
  [v5 safeAreaInsets];
  OUTLINED_FUNCTION_14();

  v7.origin.x = [(SBSystemActionCoachingHUDViewController *)a1 _actionButtonFrame];
  CGRectGetMidY(v7);
  BSFloatRoundForScale();
  return result;
}

- (uint64_t)systemApertureFrames
{
  if (result)
  {
    return *(result + 1040);
  }

  return result;
}

- (id)_silentModeCoachingLabelText
{
  if (a1)
  {
    v1 = [(SBRingerControl *)*(a1 + 1056) isRingerMuted];
    v2 = [MEMORY[0x277CCA8D8] mainBundle];
    v3 = v2;
    if (v1)
    {
      v4 = @"SYSTEM_ACTION_COACHING_RING";
    }

    else
    {
      v4 = @"SYSTEM_ACTION_COACHING_SILENT";
    }

    v5 = [v2 localizedStringForKey:v4 value:&stru_283094718 table:@"SpringBoard"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_focusCoachingLabelText
{
  if (a1)
  {
    v2 = [*(a1 + 1032) configuredAction];
    v3 = [v2 sb_configuredIntentAction];
    v4 = [(WFConfiguredStaccatoIntentAction *)v3 sb_focusModeIdentifier];

    if ([v4 isEqualToString:*MEMORY[0x277D66970]])
    {
      v5 = [MEMORY[0x277CCA8D8] mainBundle];
      v6 = [v5 localizedStringForKey:@"SYSTEM_ACTION_COACHING_SHOW_FOCUS_LIST" value:&stru_283094718 table:@"SpringBoard"];
    }

    else
    {
      v5 = [*(a1 + 1080) state];
      v7 = [v5 activeModeIdentifier];
      if ([v5 isActive] && v7 && (objc_msgSend(v4, "isEqualToString:", v7) & 1) != 0)
      {
        v8 = @"SYSTEM_ACTION_COACHING_TURN_OFF";
      }

      else
      {
        v8 = @"SYSTEM_ACTION_COACHING_TURN_ON";
      }

      v9 = [MEMORY[0x277CCA8D8] mainBundle];
      v6 = [v9 localizedStringForKey:v8 value:&stru_283094718 table:@"SpringBoard"];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_cameraCoachingLabelText
{
  if (a1)
  {
    v1 = [MEMORY[0x277CCA8D8] mainBundle];
    v2 = [v1 localizedStringForKey:@"SYSTEM_ACTION_COACHING_OPEN" value:&stru_283094718 table:@"SpringBoard"];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)_voiceMemosCoachingLabelText
{
  v33 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v1 = [*(a1 + 1064) activities];
    v2 = [v1 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v2)
    {
      v3 = v2;
      v4 = *v29;
LABEL_4:
      v5 = 0;
      while (1)
      {
        if (*v29 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v28 + 1) + 8 * v5);
        v7 = [v6 descriptor];
        v8 = [v7 platterTargetBundleIdentifier];
        v9 = [v8 isEqualToString:@"com.apple.VoiceMemos"];

        if (v9)
        {
          v10 = [v6 contentUpdate];
          v11 = [v10 content];
          v12 = [v11 contentData];

          if (v12)
          {
            break;
          }
        }

        if (v3 == ++v5)
        {
          v3 = [v1 countByEnumeratingWithState:&v28 objects:v32 count:16];
          if (v3)
          {
            goto LABEL_4;
          }

          goto LABEL_11;
        }
      }

      v13 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v12 options:0 error:0];
      v14 = objc_opt_class();
      v15 = v13;
      if (v14)
      {
        if (objc_opt_isKindOfClass())
        {
          v16 = v15;
        }

        else
        {
          v16 = 0;
        }
      }

      else
      {
        v16 = 0;
      }

      v17 = v16;

      v18 = [v17 objectForKey:@"isRecording"];

      v19 = objc_opt_class();
      v20 = v18;
      if (v19)
      {
        if (objc_opt_isKindOfClass())
        {
          v21 = v20;
        }

        else
        {
          v21 = 0;
        }
      }

      else
      {
        v21 = 0;
      }

      v22 = v21;

      v23 = [v22 BOOLValue];
      if (v23)
      {
        v24 = @"SYSTEM_ACTION_COACHING_STOP";
        goto LABEL_25;
      }
    }

    else
    {
LABEL_11:
    }

    v24 = @"SYSTEM_ACTION_COACHING_RECORD";
LABEL_25:
    v25 = [MEMORY[0x277CCA8D8] mainBundle];
    v26 = [v25 localizedStringForKey:v24 value:&stru_283094718 table:@"SpringBoard"];
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

- (id)_flashlightCoachingLabelText
{
  if (a1)
  {
    v1 = [(SBFlashlightActivityManager *)*(a1 + 1088) isFlashlightOn];
    v2 = [MEMORY[0x277CCA8D8] mainBundle];
    v3 = v2;
    if (v1)
    {
      v4 = @"SYSTEM_ACTION_COACHING_TURN_OFF";
    }

    else
    {
      v4 = @"SYSTEM_ACTION_COACHING_TURN_ON";
    }

    v5 = [v2 localizedStringForKey:v4 value:&stru_283094718 table:@"SpringBoard"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_accessibilityCoachingLabelTextForConfiguredAction:(void *)a1
{
  if (a1)
  {
    v4 = [a2 sb_configuredIntentAction];
    v5 = [(WFConfiguredStaccatoIntentAction *)v4 sb_accessibilityTripleClickState];
    if (v5 == 1)
    {
      v13 = [MEMORY[0x277CCA8D8] mainBundle];
      v7 = v13;
      v14 = @"SYSTEM_ACTION_COACHING_TURN_OFF";
    }

    else
    {
      if (v5 != 2)
      {
        if (v5)
        {
LABEL_11:

          goto LABEL_12;
        }

        v6 = [v4 templateParameterValues];
        v7 = [v6 objectForKey:*MEMORY[0x277CE79B0]];

        v8 = MEMORY[0x277CCACA8];
        v9 = [MEMORY[0x277CCA8D8] mainBundle];
        v10 = [v9 localizedStringForKey:@"SYSTEM_ACTION_COACHING_ACCESSIBILITY_FORMAT" value:&stru_283094718 table:@"SpringBoard"];
        v11 = [v7 localizedTitle];
        v12 = [v8 stringWithFormat:v10, v11];

        if ([(SBSystemActionCoachingHUDViewController *)a1 _canFitTextInCoachingLabel:v12])
        {
          v2 = v12;
        }

        else
        {
          v16 = [MEMORY[0x277CCA8D8] mainBundle];
          v2 = [v16 localizedStringForKey:@"SYSTEM_ACTION_COACHING_ACCESSIBILITY_FALLBACK" value:&stru_283094718 table:@"SpringBoard"];
        }

LABEL_10:
        goto LABEL_11;
      }

      v13 = [MEMORY[0x277CCA8D8] mainBundle];
      v7 = v13;
      v14 = @"SYSTEM_ACTION_COACHING_TURN_ON";
    }

    v2 = [v13 localizedStringForKey:v14 value:&stru_283094718 table:@"SpringBoard"];
    goto LABEL_10;
  }

  v2 = 0;
LABEL_12:

  return v2;
}

- (id)_translateCoachingLabelText
{
  if (a1)
  {
    v1 = [MEMORY[0x277CCA8D8] mainBundle];
    v2 = [v1 localizedStringForKey:@"SYSTEM_ACTION_COACHING_TRANSLATE" value:&stru_283094718 table:@"SpringBoard"];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)_musicRecognitionCoachingLabelText
{
  if (a1)
  {
    v1 = [MEMORY[0x277CCA8D8] mainBundle];
    v2 = [v1 localizedStringForKey:@"SYSTEM_ACTION_COACHING_MUSIC_RECOGNITION" value:&stru_283094718 table:@"SpringBoard"];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)_controlCoachingLabelTextForAction:(void *)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = [(SBControlSystemAction *)v3 properties];
    v6 = [(SBHomeScreenConfigurationServer *)v5 connections];
    v7 = [(SBCameraHardwareButton *)v5 allCameraShutterButtonPIDs];
    if (v6)
    {
      v8 = v7;
    }

    else
    {
      v9 = [v4 configuredAction];
      v10 = [v9 associatedBundleIdentifier];

      v11 = [MEMORY[0x277CC1E90] bundleRecordWithBundleIdentifier:v10 allowPlaceholder:1 error:0];
      v12 = [v11 localizedName];
      v13 = v12;
      if (v12)
      {
        v14 = v12;
      }

      else
      {
        v14 = [v11 localizedShortName];
      }

      v6 = v14;

      v8 = 0;
    }

    if (![v6 length])
    {
      goto LABEL_9;
    }

    if (v8)
    {
      if (v8 != 1)
      {
        v16 = 0;
        goto LABEL_20;
      }

      v18 = @"SYSTEM_ACTION_COACHING_CONTROL_VERB_FORMAT";
    }

    else
    {
      v18 = @"SYSTEM_ACTION_COACHING_CONTROL_DEFAULT_FORMAT";
    }

    v19 = MEMORY[0x277CCACA8];
    v20 = [MEMORY[0x277CCA8D8] mainBundle];
    v21 = [v20 localizedStringForKey:v18 value:&stru_283094718 table:@"SpringBoard"];
    v16 = [v19 stringWithFormat:v21, v6];

LABEL_20:
    if (([(SBSystemActionCoachingHUDViewController *)a1 _canFitTextInCoachingLabel:v16]& 1) != 0)
    {
      goto LABEL_10;
    }

LABEL_9:
    v15 = [MEMORY[0x277CCA8D8] mainBundle];
    v16 = [v15 localizedStringForKey:@"SYSTEM_ACTION_COACHING_CONTROL_FALLBACK" value:&stru_283094718 table:@"SpringBoard"];

LABEL_10:
    goto LABEL_11;
  }

  v16 = 0;
LABEL_11:

  return v16;
}

- (void)_shortcutCoachingLabelTextForConfiguredAction:(void *)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = [v3 identifier];
    v6 = [v5 isEqualToString:@"is.workflow.actions.openapp"];

    if (v6)
    {
      v7 = a1[134];
      v8 = [v4 associatedBundleIdentifier];
      v9 = [v7 applicationWithBundleIdentifier:v8];

      if (v9)
      {
        v10 = MEMORY[0x277CCACA8];
        v11 = [MEMORY[0x277CCA8D8] mainBundle];
        v12 = [v11 localizedStringForKey:@"SYSTEM_ACTION_COACHING_OPEN_APP_FORMAT" value:&stru_283094718 table:@"SpringBoard"];
        v13 = [v9 displayName];
        v14 = [v10 stringWithFormat:v12, v13];

        if (v14 && [(SBSystemActionCoachingHUDViewController *)a1 _canFitTextInCoachingLabel:v14])
        {
          v15 = v14;
          v14 = v15;
LABEL_17:
          a1 = v15;
          goto LABEL_9;
        }
      }

      else
      {
        v14 = 0;
      }

      v16 = [MEMORY[0x277CCA8D8] mainBundle];
      a1 = [v16 localizedStringForKey:@"SYSTEM_ACTION_COACHING_OPEN_APP_FALLBACK" value:&stru_283094718 table:@"SpringBoard"];

LABEL_9:
LABEL_10:

      goto LABEL_11;
    }

    v18 = MEMORY[0x277CCACA8];
    v19 = [MEMORY[0x277CCA8D8] mainBundle];
    v20 = [v19 localizedStringForKey:@"SYSTEM_ACTION_COACHING_SHORTCUT_FORMAT" value:&stru_283094718 table:@"SpringBoard"];
    v21 = [v4 name];
    v14 = [v18 stringWithFormat:v20, v21];

    if ([(SBSystemActionCoachingHUDViewController *)a1 _canFitTextInCoachingLabel:v14])
    {
      v14 = v14;
      a1 = v14;
      goto LABEL_10;
    }

    v9 = [MEMORY[0x277CCA8D8] mainBundle];
    v15 = [v9 localizedStringForKey:@"SYSTEM_ACTION_COACHING_SHORTCUT_FALLBACK" value:&stru_283094718 table:@"SpringBoard"];
    goto LABEL_17;
  }

LABEL_11:

  return a1;
}

- (void)_canFitTextInCoachingLabel:(void *)a1
{
  v2 = a1;
  v9[1] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v8 = *MEMORY[0x277D740A8];
    v3 = a1[147];
    v4 = a2;
    v5 = [v3 font];
    v9[0] = v5;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];

    [v4 boundingRectWithSize:3 options:v6 attributes:0 context:{1.79769313e308, 1.79769313e308}];
    [(SBSystemActionCoachingHUDViewController *)v2 _coachingLabelWrapperViewSize];
    if (BSFloatLessThanOrEqualToFloat())
    {
      v2 = BSFloatLessThanOrEqualToFloat();
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

- (id)delegate
{
  if (WeakRetained)
  {
    WeakRetained = objc_loadWeakRetained(WeakRetained + 128);
    v1 = vars8;
  }

  return WeakRetained;
}

- (id)setDelegate:(id *)result
{
  if (result)
  {
    return objc_storeWeak(result + 128, a2);
  }

  return result;
}

- (uint64_t)action
{
  if (result)
  {
    return *(result + 1032);
  }

  return result;
}

- (uint64_t)state
{
  if (result)
  {
    return *(result + 1048);
  }

  return result;
}

- (uint64_t)ringerControl
{
  if (result)
  {
    return *(result + 1056);
  }

  return result;
}

- (uint64_t)activityManager
{
  if (result)
  {
    return *(result + 1064);
  }

  return result;
}

- (uint64_t)applicationController
{
  if (result)
  {
    return *(result + 1072);
  }

  return result;
}

- (uint64_t)doNotDisturbStateMonitor
{
  if (result)
  {
    return *(result + 1080);
  }

  return result;
}

- (uint64_t)flashlightActivityManager
{
  if (result)
  {
    return *(result + 1088);
  }

  return result;
}

- (uint64_t)settings
{
  if (result)
  {
    return *(result + 1096);
  }

  return result;
}

- (uint64_t)contentVisibilityAssertion
{
  if (result)
  {
    return *(result + 1104);
  }

  return result;
}

- (uint64_t)liveRenderingAssertion
{
  if (result)
  {
    return *(result + 1112);
  }

  return result;
}

- (uint64_t)isRotating
{
  if (a1)
  {
    return OUTLINED_FUNCTION_0_9(*(a1 + 1016));
  }

  else
  {
    return OUTLINED_FUNCTION_0_9(0);
  }
}

- (uint64_t)stateTransitionAnimationCount
{
  if (result)
  {
    return *(result + 1120);
  }

  return result;
}

- (uint64_t)coachingLabelTextNeedsUpdate
{
  if (a1)
  {
    return OUTLINED_FUNCTION_0_9(*(a1 + 1017));
  }

  else
  {
    return OUTLINED_FUNCTION_0_9(0);
  }
}

- (uint64_t)coachingLabelOrientation
{
  if (result)
  {
    return *(result + 1128);
  }

  return result;
}

- (uint64_t)isCoachingLabelOccluded
{
  if (a1)
  {
    return OUTLINED_FUNCTION_0_9(*(a1 + 1018));
  }

  else
  {
    return OUTLINED_FUNCTION_0_9(0);
  }
}

- (uint64_t)contentView
{
  if (result)
  {
    return *(result + 1136);
  }

  return result;
}

- (uint64_t)dimmingView
{
  if (result)
  {
    return *(result + 1144);
  }

  return result;
}

- (uint64_t)coachingContentView
{
  if (result)
  {
    return *(result + 1152);
  }

  return result;
}

- (uint64_t)coachingButton
{
  if (result)
  {
    return *(result + 1160);
  }

  return result;
}

- (uint64_t)coachingLabelWrapperView
{
  if (result)
  {
    return *(result + 1168);
  }

  return result;
}

- (uint64_t)coachingLabel
{
  if (result)
  {
    return *(result + 1176);
  }

  return result;
}

- (uint64_t)shouldLayoutForButtonHints
{
  if (a1)
  {
    return OUTLINED_FUNCTION_0_9(*(a1 + 1019));
  }

  else
  {
    return OUTLINED_FUNCTION_0_9(0);
  }
}

- (uint64_t)isAttached
{
  if (a1)
  {
    return OUTLINED_FUNCTION_0_9(*(a1 + 1020));
  }

  else
  {
    return OUTLINED_FUNCTION_0_9(0);
  }
}

- (void)initWithRingerControl:(char *)a1 activityManager:applicationController:doNotDisturbStateMonitor:flashlightActivityManager:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_5_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_3(&dword_21ED4E000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"flashlightActivityManager != ((void *)0)", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithRingerControl:(char *)a1 activityManager:applicationController:doNotDisturbStateMonitor:flashlightActivityManager:.cold.2(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_5_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_3(&dword_21ED4E000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"doNotDisturbStateMonitor != ((void *)0)", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithRingerControl:(char *)a1 activityManager:applicationController:doNotDisturbStateMonitor:flashlightActivityManager:.cold.3(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_5_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_3(&dword_21ED4E000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"applicationController != ((void *)0)", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithRingerControl:(char *)a1 activityManager:applicationController:doNotDisturbStateMonitor:flashlightActivityManager:.cold.4(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_5_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_3(&dword_21ED4E000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"activityManager != ((void *)0)", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithRingerControl:(char *)a1 activityManager:applicationController:doNotDisturbStateMonitor:flashlightActivityManager:.cold.5(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_5_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_3(&dword_21ED4E000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"ringerControl != ((void *)0)", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end