@interface SBSystemActionCoachingHUDViewController
- (SBHUDAttachmentDelegate)attachmentDelegate;
- (SBUIAnimationPropertyAnimator)_makeViewControllerTransitionAnimationController;
- (__CFString)_coachingLabelText;
- (double)_actionButtonFrame;
- (double)_coachingLabelWrapperViewAlpha;
- (double)_coachingLabelWrapperViewSize;
- (double)_xTranslationTransformForCurrentState;
- (id)_accessibilityCoachingLabelTextForConfiguredAction:(void *)action;
- (id)_animationSettingsForTransitionFromState:(uint64_t)state toState:;
- (id)_cameraCoachingLabelText;
- (id)_controlCoachingLabelTextForAction:(void *)action;
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
- (id)initWithRingerControl:(void *)control activityManager:(void *)manager applicationController:(void *)controller doNotDisturbStateMonitor:(void *)monitor flashlightActivityManager:;
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
- (void)_canFitTextInCoachingLabel:(void *)label;
- (void)_layoutCoachingButton;
- (void)_layoutCoachingLabel;
- (void)_layoutCoachingLabelWrapperView;
- (void)_setNeedsUpdateCoachingLabelText;
- (void)_shortcutCoachingLabelTextForConfiguredAction:(void *)action;
- (void)_updateCoachingButtonLayer:(uint64_t)layer;
- (void)_updateCoachingLabelOccluded;
- (void)_updateCoachingLabelTextIfNeeded;
- (void)_updateLiveRenderingAssertionIfNeeded;
- (void)controlSystemAction:(id)action propertiesDidChange:(id)change;
- (void)setAction:(id *)action;
- (void)setAttachmentDelegate:(id)delegate;
- (void)setIsAttached:(uint64_t)attached;
- (void)setPositionOffset:(CGPoint)offset;
- (void)setShouldLayoutForButtonHints:(uint64_t)hints;
- (void)setSystemApertureFrames:(uint64_t)frames;
- (void)transitionToState:(int)state animated:(void *)animated completion:;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)appearing;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation SBSystemActionCoachingHUDViewController

- (id)initWithRingerControl:(void *)control activityManager:(void *)manager applicationController:(void *)controller doNotDisturbStateMonitor:(void *)monitor flashlightActivityManager:
{
  v12 = a2;
  controlCopy = control;
  managerCopy = manager;
  controllerCopy = controller;
  monitorCopy = monitor;
  if (self)
  {
    if (!v12)
    {
      [SBSystemActionCoachingHUDViewController initWithRingerControl:? activityManager:? applicationController:? doNotDisturbStateMonitor:? flashlightActivityManager:?];
    }

    if (!controlCopy)
    {
      [SBSystemActionCoachingHUDViewController initWithRingerControl:? activityManager:? applicationController:? doNotDisturbStateMonitor:? flashlightActivityManager:?];
    }

    if (!managerCopy)
    {
      [SBSystemActionCoachingHUDViewController initWithRingerControl:? activityManager:? applicationController:? doNotDisturbStateMonitor:? flashlightActivityManager:?];
    }

    if (!controllerCopy)
    {
      [SBSystemActionCoachingHUDViewController initWithRingerControl:? activityManager:? applicationController:? doNotDisturbStateMonitor:? flashlightActivityManager:?];
    }

    if (!monitorCopy)
    {
      [SBSystemActionCoachingHUDViewController initWithRingerControl:? activityManager:? applicationController:? doNotDisturbStateMonitor:? flashlightActivityManager:?];
    }

    v22.receiver = self;
    v22.super_class = SBSystemActionCoachingHUDViewController;
    v16 = objc_msgSendSuper2(&v22, sel_initWithNibName_bundle_, 0, 0);
    self = v16;
    if (v16)
    {
      objc_storeStrong(v16 + 132, a2);
      objc_storeStrong(self + 133, control);
      objc_storeStrong(self + 134, manager);
      objc_storeStrong(self + 135, controller);
      objc_storeStrong(self + 136, monitor);
      v17 = +[SBSystemActionDomain rootSettings];
      coachingSettings = [v17 coachingSettings];
      v19 = self[137];
      self[137] = coachingSettings;

      *(self + 1016) = 0;
      self[131] = 0;
      self[140] = 0;
      *(self + 1017) = 0;
      self[141] = 1;
      [self setTransitioningDelegate:self];
    }
  }

  return self;
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
  view = [(SBOrientationTransformWrapperViewController *)self view];
  [view setCounterTransformView:1];
  [view bs_setHitTestingDisabled:1];
  _makeContentView = [(SBSystemActionCoachingHUDViewController *)self _makeContentView];
  contentView = self->_contentView;
  self->_contentView = _makeContentView;

  [view addContentView:self->_contentView];
  _makeDimmingView = [(SBSystemActionCoachingHUDViewController *)self _makeDimmingView];
  dimmingView = self->_dimmingView;
  self->_dimmingView = _makeDimmingView;

  [(UIView *)self->_contentView addSubview:self->_dimmingView];
  v8 = objc_alloc(MEMORY[0x277D75D18]);
  [(UIView *)self->_contentView bounds];
  v9 = [v8 initWithFrame:?];
  coachingContentView = self->_coachingContentView;
  self->_coachingContentView = v9;

  [(UIView *)self->_contentView addSubview:self->_coachingContentView];
  _makeCoachingButton = [(SBSystemActionCoachingHUDViewController *)self _makeCoachingButton];
  coachingButton = self->_coachingButton;
  self->_coachingButton = _makeCoachingButton;

  [(UIView *)self->_coachingContentView addSubview:self->_coachingButton];
  _makeCoachingLabelWrapperView = [(SBSystemActionCoachingHUDViewController *)self _makeCoachingLabelWrapperView];
  coachingLabelWrapperView = self->_coachingLabelWrapperView;
  self->_coachingLabelWrapperView = _makeCoachingLabelWrapperView;

  [(UIView *)self->_coachingContentView addSubview:self->_coachingLabelWrapperView];
  _makeCoachingLabel = [(SBSystemActionCoachingHUDViewController *)self _makeCoachingLabel];
  coachingLabel = self->_coachingLabel;
  self->_coachingLabel = _makeCoachingLabel;

  [(UIView *)self->_coachingLabelWrapperView addSubview:self->_coachingLabel];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v13.receiver = self;
  v13.super_class = SBSystemActionCoachingHUDViewController;
  coordinatorCopy = coordinator;
  [(SBSystemActionCoachingHUDViewController *)&v13 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  self->_rotating = 1;
  v8 = SBFWindowForViewControllerTransition();
  _toWindowOrientation = [v8 _toWindowOrientation];

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
  v11[5] = _toWindowOrientation;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __94__SBSystemActionCoachingHUDViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_3;
  v10[3] = &unk_2783B50F8;
  v10[4] = self;
  v10[5] = _toWindowOrientation;
  v10[6] = 0x3FC999999999999ALL;
  [coordinatorCopy animateAlongsideTransition:v11 completion:v10];
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

- (void)setAttachmentDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_attachmentDelegate);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_attachmentDelegate, obj);
    [(SBSystemActionCoachingHUDViewController *)self setShouldLayoutForButtonHints:?];
    v5 = obj;
  }
}

- (void)setPositionOffset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  view = [(SBOrientationTransformWrapperViewController *)self view];
  containerOrientation = [view containerOrientation];

  v8 = containerOrientation - 3;
  if (containerOrientation == 2)
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

- (void)controlSystemAction:(id)action propertiesDidChange:(id)change
{
  actionCopy = action;
  connections = [(SBHomeScreenConfigurationServer *)change connections];
  properties = [(SBControlSystemAction *)actionCopy properties];

  connections2 = [(SBHomeScreenConfigurationServer *)properties connections];
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
  if (self)
  {
    v2 = *(self + 1048);
    if (*(self + 1019) == 1)
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

- (void)setAction:(id *)action
{
  v4 = a2;
  if (action)
  {
    v5 = action[129];
    if (v5 != v4)
    {
      v9 = v4;
      controlAction = [v5 controlAction];
      [(SBControlSystemAction *)controlAction removeObserver:action];

      [action[138] invalidate];
      v7 = action[138];
      action[138] = 0;

      objc_storeStrong(action + 129, a2);
      controlAction2 = [v9 controlAction];
      [(SBControlSystemAction *)controlAction2 addObserver:action];

      [(SBSystemActionCoachingHUDViewController *)action _updateContentVisibilityAssertion];
      [(SBSystemActionCoachingHUDViewController *)action _setNeedsUpdateCoachingLabelText];
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
  controlAction = [*(result + 1032) controlAction];
  if (controlAction)
  {
    v3 = *(v1 + 1104);
    if (*(v1 + 1048))
    {
      if (!v3)
      {
        v4 = [(SBControlSystemAction *)controlAction acquireContentVisibilityAssertionForReason:?];
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
  if (self)
  {
    self[1017] = 1;
    viewIfLoaded = [self viewIfLoaded];
    [viewIfLoaded setNeedsLayout];
  }
}

- (void)setSystemApertureFrames:(uint64_t)frames
{
  v3 = a2;
  if (frames)
  {
    v7 = v3;
    v4 = BSEqualArrays();
    v3 = v7;
    if ((v4 & 1) == 0)
    {
      v5 = [v7 copy];
      v6 = *(frames + 1040);
      *(frames + 1040) = v5;

      [(SBSystemActionCoachingHUDViewController *)frames _updateCoachingLabelOccluded];
      v3 = v7;
    }
  }
}

- (void)_updateCoachingLabelOccluded
{
  v21 = *MEMORY[0x277D85DE8];
  if (self)
  {
    v2 = *(self + 1040);
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
      view = [self view];
      v9 = *(self + 1176);
      [v9 bounds];
      [v9 convertRect:view toView:?];
      [view convertRectFromContainerInterfaceOrientationToContentInterfaceOrientation:?];
      OUTLINED_FUNCTION_8_4();
      v25.origin.x = OUTLINED_FUNCTION_5_11();
      v7 = CGRectIntersectsRect(v25, v27);
    }

    if (*(self + 1018) != v7)
    {
      *(self + 1018) = v7;
      if ([self isViewLoaded])
      {
        OUTLINED_FUNCTION_1_4();
        v12 = 3221225472;
        v13 = __71__SBSystemActionCoachingHUDViewController__updateCoachingLabelOccluded__block_invoke;
        v14 = &unk_2783A8C18;
        selfCopy = self;
        [v10 animateWithDuration:v11 animations:0.2];
      }
    }
  }
}

- (void)transitionToState:(int)state animated:(void *)animated completion:
{
  animatedCopy = animated;
  if (self)
  {
    v8 = [(SBSystemActionCoachingHUDViewController *)self _animationSettingsForTransitionFromState:a2 toState:?];
    if (state)
    {
      v9 = 3;
    }

    else
    {
      v9 = 2;
    }

    WeakRetained = objc_loadWeakRetained((self + 1024));
    v11 = *(self + 1048);
    *(self + 1048) = a2;
    ++*(self + 1120);
    [(SBSystemActionCoachingHUDViewController *)self _updateCoachingLabelTextIfNeeded];
    [(SBSystemActionCoachingHUDViewController *)self _updateContentVisibilityAssertion];
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained systemActionCoachingHUDViewController:self didBeginTransitionToState:a2];
    }

    if (a2 && !v11)
    {
      [(SBSystemActionCoachingHUDViewController *)self setIsAttached:?];
    }

    v12 = MEMORY[0x277D75D18];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __81__SBSystemActionCoachingHUDViewController_transitionToState_animated_completion___block_invoke;
    v18[3] = &unk_2783A8BC8;
    v18[4] = self;
    v18[5] = a2;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __81__SBSystemActionCoachingHUDViewController_transitionToState_animated_completion___block_invoke_361;
    v14[3] = &unk_2783BE390;
    v17 = a2;
    v14[4] = self;
    v15 = WeakRetained;
    v16 = animatedCopy;
    v13 = WeakRetained;
    [v12 sb_animateWithSettings:v8 mode:v9 animations:v18 completion:v14];
  }
}

- (id)_animationSettingsForTransitionFromState:(uint64_t)state toState:
{
  if (self)
  {
    if (state == 2)
    {
      self = [self[137] expansionSettings];
    }

    else if (state == 1)
    {
      v3 = self[137];
      if (a2 == 2)
      {
        [v3 contractionSettings];
      }

      else
      {
        [v3 presentationSettings];
      }
      self = ;
    }

    else if (state)
    {
      self = 0;
    }

    else
    {
      self = [self[137] dismissalSettings];
    }
  }

  return self;
}

- (void)_updateCoachingLabelTextIfNeeded
{
  if (self)
  {
    if (*(self + 1017) == 1)
    {
      viewIfLoaded = [self viewIfLoaded];
      window = [viewIfLoaded window];

      if (window)
      {
        if (*(self + 1048) || !*(self + 1120))
        {
          _coachingLabelText = [(SBSystemActionCoachingHUDViewController *)self _coachingLabelText];
          [*(self + 1176) setText:_coachingLabelText];
          *(self + 1017) = 0;
        }
      }
    }
  }
}

- (void)setIsAttached:(uint64_t)attached
{
  if (attached && *(attached + 1020) != a2)
  {
    *(attached + 1020) = a2;
    WeakRetained = objc_loadWeakRetained((attached + 992));
    [WeakRetained updateAttachmentStateForHUDViewController:attached];
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
    traitCollection = [result traitCollection];
    [traitCollection displayScale];

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
    traitCollection = [result traitCollection];
    [traitCollection displayScale];

    [(SBSystemActionCoachingHUDViewController *)v1 _actionButtonFrame];
    _coachingLabelWrapperViewSize = [(SBSystemActionCoachingHUDViewController *)v1 _coachingLabelWrapperViewSize];
    if (_coachingLabelWrapperViewSize >= v4)
    {
      v5 = _coachingLabelWrapperViewSize;
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
    layer = [*(v1 + 1168) layer];
    [layer anchorPoint];
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
  if (self)
  {
    traitCollection = [self traitCollection];
    [traitCollection displayScale];
    v4 = v3;

    [self[146] bounds];
    [self[147] sizeThatFits:-[SBSystemActionCoachingHUDViewController _coachingLabelWrapperViewSize](self)];
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
    v23 = self[147];
    UIRectGetCenter();
    [v23 setCenter:?];
    v24 = self[147];
    BSRectWithSize();
    [v24 setBounds:?];
    v25 = self[147];
    v41 = v37;
    v42 = v38;
    v43 = v39;
    [v25 setTransform:&v41];
    [(SBSystemActionCoachingHUDViewController *)self _updateCoachingLabelOccluded];
  }
}

- (double)_coachingLabelWrapperViewAlpha
{
  result = 0.0;
  if (self && (*(self + 1018) & 1) == 0 && (*(self + 1048) - 1) <= 1)
  {
    result = 1.0;
    if (*(self + 1016))
    {
      return 0.0;
    }
  }

  return result;
}

- (id)_makeContentView
{
  if (self)
  {
    v2 = objc_alloc(MEMORY[0x277D75D18]);
    self = OUTLINED_FUNCTION_13_0(v2, MEMORY[0x277CBF3A0]);
    v1 = vars8;
  }

  return self;
}

- (id)_makeDimmingView
{
  if (self)
  {
    v1 = objc_alloc(MEMORY[0x277D75D18]);
    v2 = OUTLINED_FUNCTION_13_0(v1, MEMORY[0x277CBF3A0]);
    [v2 setAlpha:0.0];
    blackColor = [MEMORY[0x277D75348] blackColor];
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
  if (self)
  {
    v3 = objc_alloc(MEMORY[0x277D75D18]);
    v4 = OUTLINED_FUNCTION_13_0(v3, MEMORY[0x277CBF3A0]);
    [v4 setAccessibilityIdentifier:@"system-action-coaching-button"];
    [MEMORY[0x277D75348] systemWhiteColor];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_11_4() setBackgroundColor:?];

    layer = [v4 layer];
    [layer setCornerCurve:*MEMORY[0x277CDA138]];
    v6 = OUTLINED_FUNCTION_10_6();
    if (!v7)
    {
      v6 = 2.5;
    }

    [layer setCornerRadius:v6];
    blackColor = [MEMORY[0x277D75348] blackColor];
    [layer setShadowColor:{objc_msgSend(blackColor, "CGColor")}];

    [layer setShadowOffset:{*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)}];
    [layer setShadowOpacity:0.0];
    [layer setShadowPathIsBounds:1];
    [*(self + 1096) coachingButtonShadowRadius];
    [layer setShadowRadius:?];
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
  if (self)
  {
    v2 = objc_alloc(MEMORY[0x277D75D18]);
    v3 = OUTLINED_FUNCTION_13_0(v2, MEMORY[0x277CBF3A0]);
    v4 = v3;
    v5 = 0.0;
    if ((*(self + 1018) & 1) == 0 && (*(self + 1048) - 1) <= 1)
    {
      v5 = 1.0;
      if (*(self + 1016))
      {
        v5 = 0.0;
      }
    }

    [v3 setAlpha:v5];
    layer = [v4 layer];
    [layer setAnchorPoint:{0.0, 0.5}];
    _makeGaussianBlurFilter = [(SBSystemActionCoachingHUDViewController *)self _makeGaussianBlurFilter];
    v10[0] = _makeGaussianBlurFilter;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
    [layer setFilters:v8];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_makeCoachingLabel
{
  if (self)
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

    layer = [v4 layer];
    blackColor = [MEMORY[0x277D75348] blackColor];
    [layer setShadowColor:{objc_msgSend(blackColor, "CGColor")}];

    [layer setShadowOffset:{*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)}];
    [*(self + 1096) coachingLabelShadowOpacity];
    *&v7 = v7;
    [layer setShadowOpacity:v7];
    [*(self + 1096) coachingLabelShadowRadius];
    [layer setShadowRadius:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)viewIsAppearing:(BOOL)appearing
{
  v8.receiver = self;
  v8.super_class = SBSystemActionCoachingHUDViewController;
  [(SBSystemActionCoachingHUDViewController *)&v8 viewIsAppearing:appearing];
  view = [(SBOrientationTransformWrapperViewController *)self view];
  window = [view window];
  interfaceOrientation = [window interfaceOrientation];

  [view setContainerOrientation:interfaceOrientation];
  [view setContentOrientation:1];
  if (self && self->_coachingLabelOrientation != interfaceOrientation)
  {
    self->_coachingLabelOrientation = interfaceOrientation;
    if ((interfaceOrientation - 3) < 2)
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
  if (self)
  {
    view = [self view];
    window = [view window];
    windowScene = [window windowScene];

    if (windowScene)
    {
      v5 = [self _appearState] != 0;
    }

    else
    {
      v5 = 0;
    }

    v6 = self[139];
    if (v6)
    {
      isAcquired = [self[139] isAcquired];
      if (!v5)
      {
        goto LABEL_11;
      }
    }

    else
    {
      isAcquired = 0;
      if (!v5)
      {
        goto LABEL_11;
      }
    }

    if ((isAcquired & 1) == 0)
    {
      [self[139] invalidate];
      v8 = MEMORY[0x277CF0868];
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = [MEMORY[0x277CF09A8] requestLiveUpdatingForScene:windowScene];
      v12 = [MEMORY[0x277CF09B0] requestUnrestrictedFramerateForScene:{windowScene, v11}];
      v19[1] = v12;
      ignoreWhenBacklightInactivates = [MEMORY[0x277CF09E8] ignoreWhenBacklightInactivates];
      v19[2] = ignoreWhenBacklightInactivates;
      v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:3];
      v15 = [v8 acquireWithExplanation:v10 observer:0 attributes:v14];
      v16 = self[139];
      self[139] = v15;

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
      [self[139] invalidate];
      v18 = self[139];
      self[139] = 0;
    }

    goto LABEL_16;
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = SBSystemActionCoachingHUDViewController;
  [(SBSystemActionCoachingHUDViewController *)&v4 viewDidDisappear:disappear];
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

- (void)setShouldLayoutForButtonHints:(uint64_t)hints
{
  if (hints)
  {
    if (*(hints + 1019) != a2)
    {
      *(hints + 1019) = a2;
      v2 = *(hints + 1160);
      if (v2)
      {
        layer = [v2 layer];
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
  if (self)
  {
    self = [[SBUIAnimationPropertyAnimator alloc] initWithPropertyAnimatorGenerator:&__block_literal_global_291];
    v1 = vars8;
  }

  return self;
}

- (void)_updateCoachingButtonLayer:(uint64_t)layer
{
  v3 = a2;
  if (layer)
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
  if (self)
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
  selfCopy = self;
  if (self)
  {
    configuredAction = [self[129] configuredAction];
    sectionIdentifier = [configuredAction sectionIdentifier];
    if ([sectionIdentifier isEqualToString:@"SilentMode"])
    {
      _silentModeCoachingLabelText = [(SBSystemActionCoachingHUDViewController *)selfCopy _silentModeCoachingLabelText];
    }

    else if ([sectionIdentifier isEqualToString:@"Focus"])
    {
      _silentModeCoachingLabelText = [(SBSystemActionCoachingHUDViewController *)selfCopy _focusCoachingLabelText];
    }

    else
    {
      if ([sectionIdentifier isEqualToString:@"Camera"])
      {
        goto LABEL_26;
      }

      if ([sectionIdentifier isEqualToString:@"VoiceMemos"])
      {
        _silentModeCoachingLabelText = [(SBSystemActionCoachingHUDViewController *)selfCopy _voiceMemosCoachingLabelText];
        goto LABEL_27;
      }

      if ([sectionIdentifier isEqualToString:@"Flashlight"])
      {
        _silentModeCoachingLabelText = [(SBSystemActionCoachingHUDViewController *)selfCopy _flashlightCoachingLabelText];
        goto LABEL_27;
      }

      if ([sectionIdentifier isEqualToString:@"Accessibility"])
      {
        _silentModeCoachingLabelText = [(SBSystemActionCoachingHUDViewController *)selfCopy _accessibilityCoachingLabelTextForConfiguredAction:configuredAction];
        goto LABEL_27;
      }

      if ([sectionIdentifier isEqualToString:@"Translate"])
      {
        _silentModeCoachingLabelText = [(SBSystemActionCoachingHUDViewController *)selfCopy _translateCoachingLabelText];
        goto LABEL_27;
      }

      if ([sectionIdentifier isEqualToString:@"Magnifier"])
      {
LABEL_26:
        _silentModeCoachingLabelText = [(SBSystemActionCoachingHUDViewController *)selfCopy _cameraCoachingLabelText];
        goto LABEL_27;
      }

      if ([sectionIdentifier isEqualToString:@"MusicRecognition"])
      {
        _silentModeCoachingLabelText = [(SBSystemActionCoachingHUDViewController *)selfCopy _musicRecognitionCoachingLabelText];
      }

      else
      {
        if ([sectionIdentifier isEqualToString:@"Controls"])
        {
          controlAction = [selfCopy[32].info controlAction];
          selfCopy = [(SBSystemActionCoachingHUDViewController *)selfCopy _controlCoachingLabelTextForAction:controlAction];

          goto LABEL_28;
        }

        if (![sectionIdentifier isEqualToString:@"Shortcuts"])
        {
          if (![sectionIdentifier isEqualToString:@"VisualIntelligence"])
          {
            selfCopy = &stru_283094718;
LABEL_28:

            goto LABEL_29;
          }

          goto LABEL_26;
        }

        _silentModeCoachingLabelText = [(SBSystemActionCoachingHUDViewController *)selfCopy _shortcutCoachingLabelTextForConfiguredAction:configuredAction];
      }
    }

LABEL_27:
    selfCopy = _silentModeCoachingLabelText;
    goto LABEL_28;
  }

LABEL_29:

  return selfCopy;
}

- (double)_actionButtonFrame
{
  if (!self)
  {
    return 0.0;
  }

  v2 = +[SBButtonBezelGeometryInfo buttonBezelGeometryInfoForCurrentEmbeddedDisplayBezel];
  view = [self view];
  [v2 buttonHWRectForButton:8 inView:view];
  v5 = v4;

  return v5;
}

- (double)_coachingLabelWrapperViewSize
{
  if (!self)
  {
    return 0.0;
  }

  traitCollection = [self traitCollection];
  [traitCollection displayScale];

  view = [self view];
  window = [view window];
  [window interfaceOrientation];

  view2 = [self view];
  [view2 safeAreaInsets];
  OUTLINED_FUNCTION_14();

  v7.origin.x = [(SBSystemActionCoachingHUDViewController *)self _actionButtonFrame];
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
  if (self)
  {
    isRingerMuted = [(SBRingerControl *)*(self + 1056) isRingerMuted];
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v3 = mainBundle;
    if (isRingerMuted)
    {
      v4 = @"SYSTEM_ACTION_COACHING_RING";
    }

    else
    {
      v4 = @"SYSTEM_ACTION_COACHING_SILENT";
    }

    v5 = [mainBundle localizedStringForKey:v4 value:&stru_283094718 table:@"SpringBoard"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_focusCoachingLabelText
{
  if (self)
  {
    configuredAction = [*(self + 1032) configuredAction];
    sb_configuredIntentAction = [configuredAction sb_configuredIntentAction];
    sb_focusModeIdentifier = [(WFConfiguredStaccatoIntentAction *)sb_configuredIntentAction sb_focusModeIdentifier];

    if ([sb_focusModeIdentifier isEqualToString:*MEMORY[0x277D66970]])
    {
      mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
      v6 = [mainBundle localizedStringForKey:@"SYSTEM_ACTION_COACHING_SHOW_FOCUS_LIST" value:&stru_283094718 table:@"SpringBoard"];
    }

    else
    {
      mainBundle = [*(self + 1080) state];
      activeModeIdentifier = [mainBundle activeModeIdentifier];
      if ([mainBundle isActive] && activeModeIdentifier && (objc_msgSend(sb_focusModeIdentifier, "isEqualToString:", activeModeIdentifier) & 1) != 0)
      {
        v8 = @"SYSTEM_ACTION_COACHING_TURN_OFF";
      }

      else
      {
        v8 = @"SYSTEM_ACTION_COACHING_TURN_ON";
      }

      mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
      v6 = [mainBundle2 localizedStringForKey:v8 value:&stru_283094718 table:@"SpringBoard"];
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
  if (self)
  {
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v2 = [mainBundle localizedStringForKey:@"SYSTEM_ACTION_COACHING_OPEN" value:&stru_283094718 table:@"SpringBoard"];
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
  if (self)
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    activities = [*(self + 1064) activities];
    v2 = [activities countByEnumeratingWithState:&v28 objects:v32 count:16];
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
          objc_enumerationMutation(activities);
        }

        v6 = *(*(&v28 + 1) + 8 * v5);
        descriptor = [v6 descriptor];
        platterTargetBundleIdentifier = [descriptor platterTargetBundleIdentifier];
        v9 = [platterTargetBundleIdentifier isEqualToString:@"com.apple.VoiceMemos"];

        if (v9)
        {
          contentUpdate = [v6 contentUpdate];
          content = [contentUpdate content];
          contentData = [content contentData];

          if (contentData)
          {
            break;
          }
        }

        if (v3 == ++v5)
        {
          v3 = [activities countByEnumeratingWithState:&v28 objects:v32 count:16];
          if (v3)
          {
            goto LABEL_4;
          }

          goto LABEL_11;
        }
      }

      v13 = [MEMORY[0x277CCAAA0] JSONObjectWithData:contentData options:0 error:0];
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

      bOOLValue = [v22 BOOLValue];
      if (bOOLValue)
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
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v26 = [mainBundle localizedStringForKey:v24 value:&stru_283094718 table:@"SpringBoard"];
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

- (id)_flashlightCoachingLabelText
{
  if (self)
  {
    isFlashlightOn = [(SBFlashlightActivityManager *)*(self + 1088) isFlashlightOn];
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v3 = mainBundle;
    if (isFlashlightOn)
    {
      v4 = @"SYSTEM_ACTION_COACHING_TURN_OFF";
    }

    else
    {
      v4 = @"SYSTEM_ACTION_COACHING_TURN_ON";
    }

    v5 = [mainBundle localizedStringForKey:v4 value:&stru_283094718 table:@"SpringBoard"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_accessibilityCoachingLabelTextForConfiguredAction:(void *)action
{
  if (action)
  {
    sb_configuredIntentAction = [a2 sb_configuredIntentAction];
    sb_accessibilityTripleClickState = [(WFConfiguredStaccatoIntentAction *)sb_configuredIntentAction sb_accessibilityTripleClickState];
    if (sb_accessibilityTripleClickState == 1)
    {
      mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
      v7 = mainBundle;
      v14 = @"SYSTEM_ACTION_COACHING_TURN_OFF";
    }

    else
    {
      if (sb_accessibilityTripleClickState != 2)
      {
        if (sb_accessibilityTripleClickState)
        {
LABEL_11:

          goto LABEL_12;
        }

        templateParameterValues = [sb_configuredIntentAction templateParameterValues];
        v7 = [templateParameterValues objectForKey:*MEMORY[0x277CE79B0]];

        v8 = MEMORY[0x277CCACA8];
        mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
        v10 = [mainBundle2 localizedStringForKey:@"SYSTEM_ACTION_COACHING_ACCESSIBILITY_FORMAT" value:&stru_283094718 table:@"SpringBoard"];
        localizedTitle = [v7 localizedTitle];
        v12 = [v8 stringWithFormat:v10, localizedTitle];

        if ([(SBSystemActionCoachingHUDViewController *)action _canFitTextInCoachingLabel:v12])
        {
          v2 = v12;
        }

        else
        {
          mainBundle3 = [MEMORY[0x277CCA8D8] mainBundle];
          v2 = [mainBundle3 localizedStringForKey:@"SYSTEM_ACTION_COACHING_ACCESSIBILITY_FALLBACK" value:&stru_283094718 table:@"SpringBoard"];
        }

LABEL_10:
        goto LABEL_11;
      }

      mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
      v7 = mainBundle;
      v14 = @"SYSTEM_ACTION_COACHING_TURN_ON";
    }

    v2 = [mainBundle localizedStringForKey:v14 value:&stru_283094718 table:@"SpringBoard"];
    goto LABEL_10;
  }

  v2 = 0;
LABEL_12:

  return v2;
}

- (id)_translateCoachingLabelText
{
  if (self)
  {
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v2 = [mainBundle localizedStringForKey:@"SYSTEM_ACTION_COACHING_TRANSLATE" value:&stru_283094718 table:@"SpringBoard"];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)_musicRecognitionCoachingLabelText
{
  if (self)
  {
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v2 = [mainBundle localizedStringForKey:@"SYSTEM_ACTION_COACHING_MUSIC_RECOGNITION" value:&stru_283094718 table:@"SpringBoard"];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)_controlCoachingLabelTextForAction:(void *)action
{
  v3 = a2;
  v4 = v3;
  if (action)
  {
    properties = [(SBControlSystemAction *)v3 properties];
    connections = [(SBHomeScreenConfigurationServer *)properties connections];
    allCameraShutterButtonPIDs = [(SBCameraHardwareButton *)properties allCameraShutterButtonPIDs];
    if (connections)
    {
      v8 = allCameraShutterButtonPIDs;
    }

    else
    {
      configuredAction = [v4 configuredAction];
      associatedBundleIdentifier = [configuredAction associatedBundleIdentifier];

      v11 = [MEMORY[0x277CC1E90] bundleRecordWithBundleIdentifier:associatedBundleIdentifier allowPlaceholder:1 error:0];
      localizedName = [v11 localizedName];
      v13 = localizedName;
      if (localizedName)
      {
        localizedShortName = localizedName;
      }

      else
      {
        localizedShortName = [v11 localizedShortName];
      }

      connections = localizedShortName;

      v8 = 0;
    }

    if (![connections length])
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
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v21 = [mainBundle localizedStringForKey:v18 value:&stru_283094718 table:@"SpringBoard"];
    v16 = [v19 stringWithFormat:v21, connections];

LABEL_20:
    if (([(SBSystemActionCoachingHUDViewController *)action _canFitTextInCoachingLabel:v16]& 1) != 0)
    {
      goto LABEL_10;
    }

LABEL_9:
    mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
    v16 = [mainBundle2 localizedStringForKey:@"SYSTEM_ACTION_COACHING_CONTROL_FALLBACK" value:&stru_283094718 table:@"SpringBoard"];

LABEL_10:
    goto LABEL_11;
  }

  v16 = 0;
LABEL_11:

  return v16;
}

- (void)_shortcutCoachingLabelTextForConfiguredAction:(void *)action
{
  v3 = a2;
  v4 = v3;
  if (action)
  {
    identifier = [v3 identifier];
    v6 = [identifier isEqualToString:@"is.workflow.actions.openapp"];

    if (v6)
    {
      v7 = action[134];
      associatedBundleIdentifier = [v4 associatedBundleIdentifier];
      mainBundle4 = [v7 applicationWithBundleIdentifier:associatedBundleIdentifier];

      if (mainBundle4)
      {
        v10 = MEMORY[0x277CCACA8];
        mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
        v12 = [mainBundle localizedStringForKey:@"SYSTEM_ACTION_COACHING_OPEN_APP_FORMAT" value:&stru_283094718 table:@"SpringBoard"];
        displayName = [mainBundle4 displayName];
        v14 = [v10 stringWithFormat:v12, displayName];

        if (v14 && [(SBSystemActionCoachingHUDViewController *)action _canFitTextInCoachingLabel:v14])
        {
          v15 = v14;
          v14 = v15;
LABEL_17:
          action = v15;
          goto LABEL_9;
        }
      }

      else
      {
        v14 = 0;
      }

      mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
      action = [mainBundle2 localizedStringForKey:@"SYSTEM_ACTION_COACHING_OPEN_APP_FALLBACK" value:&stru_283094718 table:@"SpringBoard"];

LABEL_9:
LABEL_10:

      goto LABEL_11;
    }

    v18 = MEMORY[0x277CCACA8];
    mainBundle3 = [MEMORY[0x277CCA8D8] mainBundle];
    v20 = [mainBundle3 localizedStringForKey:@"SYSTEM_ACTION_COACHING_SHORTCUT_FORMAT" value:&stru_283094718 table:@"SpringBoard"];
    name = [v4 name];
    v14 = [v18 stringWithFormat:v20, name];

    if ([(SBSystemActionCoachingHUDViewController *)action _canFitTextInCoachingLabel:v14])
    {
      v14 = v14;
      action = v14;
      goto LABEL_10;
    }

    mainBundle4 = [MEMORY[0x277CCA8D8] mainBundle];
    v15 = [mainBundle4 localizedStringForKey:@"SYSTEM_ACTION_COACHING_SHORTCUT_FALLBACK" value:&stru_283094718 table:@"SpringBoard"];
    goto LABEL_17;
  }

LABEL_11:

  return action;
}

- (void)_canFitTextInCoachingLabel:(void *)label
{
  labelCopy = label;
  v9[1] = *MEMORY[0x277D85DE8];
  if (label)
  {
    v8 = *MEMORY[0x277D740A8];
    v3 = label[147];
    v4 = a2;
    font = [v3 font];
    v9[0] = font;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];

    [v4 boundingRectWithSize:3 options:v6 attributes:0 context:{1.79769313e308, 1.79769313e308}];
    [(SBSystemActionCoachingHUDViewController *)labelCopy _coachingLabelWrapperViewSize];
    if (BSFloatLessThanOrEqualToFloat())
    {
      labelCopy = BSFloatLessThanOrEqualToFloat();
    }

    else
    {
      labelCopy = 0;
    }
  }

  return labelCopy;
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
  if (self)
  {
    return OUTLINED_FUNCTION_0_9(*(self + 1016));
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
  if (self)
  {
    return OUTLINED_FUNCTION_0_9(*(self + 1017));
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
  if (self)
  {
    return OUTLINED_FUNCTION_0_9(*(self + 1018));
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
  if (self)
  {
    return OUTLINED_FUNCTION_0_9(*(self + 1019));
  }

  else
  {
    return OUTLINED_FUNCTION_0_9(0);
  }
}

- (uint64_t)isAttached
{
  if (self)
  {
    return OUTLINED_FUNCTION_0_9(*(self + 1020));
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