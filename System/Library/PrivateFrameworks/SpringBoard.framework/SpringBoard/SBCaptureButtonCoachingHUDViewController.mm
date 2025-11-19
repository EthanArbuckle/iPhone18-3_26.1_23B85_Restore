@interface SBCaptureButtonCoachingHUDViewController
- (SBCaptureButtonCoachingHUDGlyphView)_makeGlyphView;
- (SBCaptureButtonCoachingHUDViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (SBCaptureButtonCoachingHUDViewControllerDelegate)delegate;
- (SBHUDAttachmentDelegate)attachmentDelegate;
- (SBUIAnimationPropertyAnimator)_makeViewControllerTransitionAnimationController;
- (double)_captureButtonFrame;
- (double)_viewContentAlphaForCurrentState;
- (double)_xTranslationTransformForCurrentState;
- (id)_animationSettingsForTransitionFromState:(uint64_t)a3 toState:;
- (id)_layoutCoachingButtonHighlight;
- (id)_layoutCoachingLabel;
- (id)_layoutGlyphView;
- (id)_makeCoachingButtonHighlight;
- (id)_makeCoachingLabel;
- (id)_makeCoachingLabelWrapperView;
- (id)_makeGaussianBlurFilter;
- (uint64_t)_layoutCoachingContentView;
- (uint64_t)_layoutDimmingView;
- (uint64_t)_layoutTempBackdropView;
- (uint64_t)coachingButtonHighlightView;
- (uint64_t)coachingContentView;
- (uint64_t)coachingLabel;
- (uint64_t)coachingLabelOrientation;
- (uint64_t)coachingLabelTextNeedsUpdate;
- (uint64_t)coachingLabelWrapperView;
- (uint64_t)coachingText;
- (uint64_t)contentView;
- (uint64_t)dimmingView;
- (uint64_t)glyphLandscapeState;
- (uint64_t)glyphPackageName;
- (uint64_t)glyphView;
- (uint64_t)isAttached;
- (uint64_t)isRotating;
- (uint64_t)liveRenderingAssertion;
- (uint64_t)setCoachingLabelOrientation:(uint64_t)result;
- (uint64_t)settings;
- (uint64_t)stateTransitionAnimationCount;
- (uint64_t)tempBackdropLayer;
- (void)_coachingLabelWrapperViewSize;
- (void)_layoutCoachingLabelWrapperView;
- (void)_pauseAndResetLayer:(uint64_t)a1;
- (void)_playTimingOnLayerTree:(uint64_t)a1;
- (void)_resetAndPauseTimingOnLayerTree:(uint64_t)a1;
- (void)_resetGlyphViewToState:(uint64_t)a1;
- (void)_resumeLayer:(uint64_t)a1;
- (void)_updateCoachingLabelTextIfNeeded;
- (void)_updateLiveRenderingAssertionIfNeeded;
- (void)setCoachingText:(id)a3 glyphPackageName:(id)a4 glyphLandscapeState:(id)a5;
- (void)setIsAttached:(uint64_t)a1;
- (void)setPositionOffset:(CGPoint)a3;
- (void)transitionToState:(int64_t)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation SBCaptureButtonCoachingHUDViewController

- (SBCaptureButtonCoachingHUDViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v10.receiver = self;
  v10.super_class = SBCaptureButtonCoachingHUDViewController;
  v4 = [(SBCaptureButtonCoachingHUDViewController *)&v10 initWithNibName:0 bundle:0];
  v5 = v4;
  if (v4)
  {
    v4->_rotating = 0;
    v4->_stateTransitionAnimationCount = 0;
    v4->_state = 0;
    v6 = +[SBSystemActionDomain rootSettings];
    v7 = [v6 coachingSettings];
    settings = v5->_settings;
    v5->_settings = v7;

    v5->_coachingLabelTextNeedsUpdate = 1;
    v5->_coachingLabelOrientation = 1;
    [(SBCaptureButtonCoachingHUDViewController *)v5 setTransitioningDelegate:v5];
  }

  return v5;
}

- (void)setCoachingText:(id)a3 glyphPackageName:(id)a4 glyphLandscapeState:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [a3 copy];
  coachingText = self->_coachingText;
  self->_coachingText = v10;

  v12 = [v9 copy];
  glyphPackageName = self->_glyphPackageName;
  self->_glyphPackageName = v12;

  v14 = [v8 copy];
  glyphLandscapeState = self->_glyphLandscapeState;
  self->_glyphLandscapeState = v14;

  self->_coachingLabelTextNeedsUpdate = 1;
  v16 = [(SBCaptureButtonCoachingHUDViewController *)self viewIfLoaded];
  [v16 setNeedsLayout];
}

- (void)transitionToState:(int64_t)a3 animated:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = [(SBCaptureButtonCoachingHUDViewController *)&self->super.super.super.super.isa _animationSettingsForTransitionFromState:a3 toState:?];
  if (a3 && !self->_state)
  {
    if ((self->_coachingLabelOrientation - 3) > 1)
    {
      glyphLandscapeState = 0;
    }

    else
    {
      glyphLandscapeState = self->_glyphLandscapeState;
    }

    [(SBCaptureButtonCoachingHUDViewController *)self _resetGlyphViewToState:?];
    v11 = dispatch_time(0, 100000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __82__SBCaptureButtonCoachingHUDViewController_transitionToState_animated_completion___block_invoke;
    block[3] = &unk_2783A8C18;
    block[4] = self;
    dispatch_after(v11, MEMORY[0x277D85CD0], block);
    v12 = [(SBOrientationTransformWrapperViewController *)self view];
    [v12 setNeedsLayout];

    v13 = [(SBOrientationTransformWrapperViewController *)self view];
    [v13 layoutIfNeeded];

    [(SBCaptureButtonCoachingHUDViewController *)self setIsAttached:?];
  }

  if (v5)
  {
    v14 = 3;
  }

  else
  {
    v14 = 2;
  }

  self->_state = a3;
  ++self->_stateTransitionAnimationCount;
  [(SBCaptureButtonCoachingHUDViewController *)self _updateCoachingLabelTextIfNeeded];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained captureButtonCoachingHUDViewController:self didBeginTransitionToState:a3];

  v16 = MEMORY[0x277D75D18];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __82__SBCaptureButtonCoachingHUDViewController_transitionToState_animated_completion___block_invoke_2;
  v21[3] = &unk_2783A8BC8;
  v21[4] = self;
  v21[5] = a3;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __82__SBCaptureButtonCoachingHUDViewController_transitionToState_animated_completion___block_invoke_28;
  v18[3] = &unk_2783A92B0;
  v19 = v8;
  v20 = a3;
  v18[4] = self;
  v17 = v8;
  [v16 sb_animateWithSettings:v9 mode:v14 animations:v21 completion:v18];
}

void __82__SBCaptureButtonCoachingHUDViewController_transitionToState_animated_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(v1 + 1120) layer];
  [(SBCaptureButtonCoachingHUDViewController *)v1 _playTimingOnLayerTree:v2];
}

- (void)_playTimingOnLayerTree:(uint64_t)a1
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (a1 && v3)
  {
    [(SBCaptureButtonCoachingHUDViewController *)a1 _resumeLayer:v3];
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v5 = [v4 sublayers];
    v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v11;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [(SBCaptureButtonCoachingHUDViewController *)a1 _playTimingOnLayerTree:?];
        }

        v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }
  }
}

uint64_t __82__SBCaptureButtonCoachingHUDViewController_transitionToState_animated_completion___block_invoke_28(void *a1)
{
  --*(a1[4] + 1056);
  v2 = a1[4];
  if (!*(v2 + 1056))
  {
    v3 = *(v2 + 1032);
    if (v3 == a1[6] && !v3)
    {
      [(SBCaptureButtonCoachingHUDViewController *)v2 setIsAttached:?];
    }
  }

  result = a1[5];
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

- (void)viewDidLoad
{
  v25[1] = *MEMORY[0x277D85DE8];
  v24.receiver = self;
  v24.super_class = SBCaptureButtonCoachingHUDViewController;
  [(SBCaptureButtonCoachingHUDViewController *)&v24 viewDidLoad];
  v3 = [(SBOrientationTransformWrapperViewController *)self view];
  [v3 setCounterTransformView:1];
  [v3 bs_setHitTestingDisabled:1];
  v4 = [(SBSystemActionCoachingHUDViewController *)self _makeContentView];
  contentView = self->_contentView;
  self->_contentView = v4;

  [v3 addContentView:self->_contentView];
  v6 = objc_alloc_init(_SBCaptureButtonCoachingBackdropLayer_Temp_134941860);
  tempBackdropLayer = self->_tempBackdropLayer;
  self->_tempBackdropLayer = v6;

  [(UIView *)self->_contentView addSubview:self->_tempBackdropLayer];
  v8 = [(SBSystemActionCoachingHUDViewController *)self _makeDimmingView];
  dimmingView = self->_dimmingView;
  self->_dimmingView = v8;

  [(UIView *)self->_contentView addSubview:self->_dimmingView];
  v10 = objc_alloc(MEMORY[0x277D75D18]);
  [(UIView *)self->_contentView bounds];
  v11 = [v10 initWithFrame:?];
  coachingContentView = self->_coachingContentView;
  self->_coachingContentView = v11;

  v13 = [(UIView *)self->_coachingContentView layer];
  v14 = [(SBCaptureButtonCoachingHUDViewController *)self _makeGaussianBlurFilter];
  v25[0] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];
  [v13 setFilters:v15];

  [(UIView *)self->_contentView addSubview:self->_coachingContentView];
  v16 = [(SBCaptureButtonCoachingHUDViewController *)self _makeCoachingButtonHighlight];
  coachingButtonHighlightView = self->_coachingButtonHighlightView;
  self->_coachingButtonHighlightView = v16;

  [(UIView *)self->_coachingContentView addSubview:self->_coachingButtonHighlightView];
  v18 = [(SBCaptureButtonCoachingHUDViewController *)self _makeCoachingLabelWrapperView];
  coachingLabelWrapperView = self->_coachingLabelWrapperView;
  self->_coachingLabelWrapperView = v18;

  [(UIView *)self->_coachingContentView addSubview:self->_coachingLabelWrapperView];
  v20 = [(SBCaptureButtonCoachingHUDViewController *)self _makeCoachingLabel];
  coachingLabel = self->_coachingLabel;
  self->_coachingLabel = v20;

  [(SBCaptureButtonCoachingHUDLabelWrapperView *)self->_coachingLabelWrapperView addSubview:self->_coachingLabel];
  v22 = [(SBCaptureButtonCoachingHUDViewController *)self _makeGlyphView];
  glyphView = self->_glyphView;
  self->_glyphView = v22;

  [(SBCaptureButtonCoachingHUDLabelWrapperView *)self->_coachingLabelWrapperView addSubview:self->_glyphView];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v14.receiver = self;
  v14.super_class = SBCaptureButtonCoachingHUDViewController;
  v7 = a4;
  [(SBCaptureButtonCoachingHUDViewController *)&v14 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained captureButtonCoachingHUDViewControllerWillRotate:self];

  self->_rotating = 1;
  v9 = SBFWindowForViewControllerTransition();
  v10 = [v9 _toWindowOrientation];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __95__SBCaptureButtonCoachingHUDViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v13[3] = &unk_2783A8C18;
  v13[4] = self;
  [MEMORY[0x277D75D18] animateWithDuration:v13 animations:0.2];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __95__SBCaptureButtonCoachingHUDViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2;
  v12[3] = &unk_2783BE3B8;
  v12[4] = self;
  v12[5] = v10;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __95__SBCaptureButtonCoachingHUDViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_3;
  v11[3] = &unk_2783B50F8;
  v11[4] = self;
  v11[5] = v10;
  v11[6] = 0x3FC999999999999ALL;
  [v7 animateAlongsideTransition:v12 completion:v11];
}

uint64_t __95__SBCaptureButtonCoachingHUDViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = 0.0;
  if ((*(v1 + 1032) - 1) <= 1)
  {
    v2 = 1.0;
    if (*(v1 + 1016))
    {
      v2 = 0.0;
    }
  }

  return [*(v1 + 1112) setAlpha:v2];
}

void __95__SBCaptureButtonCoachingHUDViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 setContainerOrientation:*(a1 + 40)];
}

void __95__SBCaptureButtonCoachingHUDViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = 0.0;
  if ((*(v2 + 1032) - 1) <= 1)
  {
    v3 = 1.0;
    if (*(v2 + 1016))
    {
      v3 = 0.0;
    }
  }

  [*(v2 + 1112) setAlpha:v3];
  v4 = *(a1 + 32);
  v5 = [*(v4 + 1120) layer];
  [(SBCaptureButtonCoachingHUDViewController *)v4 _playTimingOnLayerTree:v5];
}

- (void)setPositionOffset:(CGPoint)a3
{
  if (self->_positionOffset.x != a3.x || self->_positionOffset.y != a3.y)
  {
    v8 = v3;
    v9 = v4;
    self->_positionOffset = a3;
    coachingContentView = self->_coachingContentView;
    CGAffineTransformMakeTranslation(&v7, -a3.x, -a3.y);
    [(UIView *)coachingContentView setTransform:&v7];
  }
}

- (void)_resetAndPauseTimingOnLayerTree:(uint64_t)a1
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (a1 && v3)
  {
    [(SBCaptureButtonCoachingHUDViewController *)a1 _pauseAndResetLayer:v3];
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v5 = [v4 sublayers];
    v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v11;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [(SBCaptureButtonCoachingHUDViewController *)a1 _resetAndPauseTimingOnLayerTree:?];
        }

        v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }
  }
}

id __92__SBCaptureButtonCoachingHUDViewController__makeViewControllerTransitionAnimationController__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_alloc(MEMORY[0x277D75D40]);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __92__SBCaptureButtonCoachingHUDViewController__makeViewControllerTransitionAnimationController__block_invoke_2;
  v10[3] = &unk_2783A8C18;
  v4 = v2;
  v11 = v4;
  v5 = [v3 initWithDuration:3 curve:v10 animations:0.001];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __92__SBCaptureButtonCoachingHUDViewController__makeViewControllerTransitionAnimationController__block_invoke_3;
  v8[3] = &unk_2783ACA48;
  v9 = v4;
  v6 = v4;
  [v5 addCompletion:v8];

  return v5;
}

void __92__SBCaptureButtonCoachingHUDViewController__makeViewControllerTransitionAnimationController__block_invoke_2(uint64_t a1)
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
    v2 = *(a1 + 1032);
    v3 = 0.0;
    if (v2 == 2)
    {
      v3 = -2.0;
    }

    if (!v2)
    {
      v3 = -3.0;
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

- (SBHUDAttachmentDelegate)attachmentDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_attachmentDelegate);

  return WeakRetained;
}

- (SBCaptureButtonCoachingHUDViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)_animationSettingsForTransitionFromState:(uint64_t)a3 toState:
{
  if (a1)
  {
    if (a3 == 2)
    {
      a1 = [a1[130] expansionSettings];
    }

    else if (a3 == 1)
    {
      v3 = a1[130];
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
      a1 = [a1[130] dismissalSettings];
    }
  }

  return a1;
}

- (void)_resetGlyphViewToState:(uint64_t)a1
{
  if (a1)
  {
    v3 = *(a1 + 1120);
    v4 = a2;
    [v3 setState:0 animated:0];
    [*(a1 + 1120) removeFromSuperview];
    v5 = *(a1 + 1120);
    *(a1 + 1120) = 0;

    v6 = [(SBCaptureButtonCoachingHUDViewController *)a1 _makeGlyphView];
    v7 = *(a1 + 1120);
    *(a1 + 1120) = v6;

    [*(a1 + 1136) addSubview:*(a1 + 1120)];
    [(SBCaptureButtonCoachingHUDViewController *)a1 _layoutGlyphView];
    [*(a1 + 1120) setState:v4 animated:0];

    v8 = [*(a1 + 1120) layer];
    [(SBCaptureButtonCoachingHUDViewController *)a1 _resetAndPauseTimingOnLayerTree:v8];
  }
}

- (void)setIsAttached:(uint64_t)a1
{
  if (a1 && *(a1 + 1018) != a2)
  {
    *(a1 + 1018) = a2;
    WeakRetained = objc_loadWeakRetained((a1 + 992));
    [WeakRetained updateAttachmentStateForHUDViewController:a1];
  }
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
        if (*(a1 + 1032) || !*(a1 + 1056))
        {
          [*(a1 + 1144) setText:*(a1 + 1064)];
          *(a1 + 1017) = 0;
        }
      }
    }
  }
}

void __82__SBCaptureButtonCoachingHUDViewController_transitionToState_animated_completion___block_invoke_2(uint64_t a1)
{
  [(SBCaptureButtonCoachingHUDViewController *)*(a1 + 32) _layoutCoachingContentView];
  [(SBCaptureButtonCoachingHUDViewController *)*(a1 + 32) _layoutCoachingButtonHighlight];
  [(SBCaptureButtonCoachingHUDViewController *)*(a1 + 32) _layoutCoachingLabelWrapperView];
  [(SBCaptureButtonCoachingHUDViewController *)*(a1 + 32) _layoutCoachingLabel];
  [(SBCaptureButtonCoachingHUDViewController *)*(a1 + 32) _layoutGlyphView];
  v2 = *(a1 + 32);
  v3 = 0.0;
  if (v2 && (*(v2 + 1032) - 1) <= 1)
  {
    if (*(v2 + 1016))
    {
      v3 = 0.0;
    }

    else
    {
      v3 = 1.0;
    }
  }

  v4 = *(a1 + 40);
  if ((v4 - 1) >= 2)
  {
    if (v4)
    {
      return;
    }

    [*(v2 + 1104) setAlpha:0.0];
    v8 = *(a1 + 32);
    v9 = *(v8 + 1112);
    [*(v8 + 1096) bounds];
    [v9 setFrame:?];
    v6 = (*(a1 + 32) + 1112);
    v7 = &unk_28336F650;
  }

  else
  {
    v5 = *(v2 + 1104);
    [*(v2 + 1040) dimmingAlpha];
    [v5 setAlpha:?];
    v6 = (*(a1 + 32) + 1112);
    v7 = &unk_28336F660;
  }

  [*v6 setAlpha:v3];
  [*(*(a1 + 32) + 1136) setAlpha:v3];
  v10 = [*(*(a1 + 32) + 1112) layer];
  [v10 setValue:v7 forKeyPath:@"filters.gaussianBlur.inputRadius"];

  v12 = [*(*(a1 + 32) + 1128) layer];
  *&v11 = v3;
  [v12 setShadowOpacity:v11];
}

- (uint64_t)_layoutCoachingContentView
{
  if (result)
  {
    v1 = result;
    [*(result + 1096) bounds];
    v2 = *(v1 + 1112);
    UIRectGetCenter();
    [v2 setCenter:?];
    v3 = *(v1 + 1112);
    BSRectWithSize();

    return [v3 setBounds:?];
  }

  return result;
}

- (id)_layoutCoachingButtonHighlight
{
  if (result)
  {
    v1 = result;
    v2 = [result traitCollection];
    [v2 displayScale];

    [(SBCaptureButtonCoachingHUDViewController *)v1 _captureButtonFrame];
    OUTLINED_FUNCTION_14();
    [v1[137] bounds];
    v10.origin.x = OUTLINED_FUNCTION_13();
    CGRectGetHeight(v10);
    v11.origin.x = OUTLINED_FUNCTION_13();
    CGRectGetMinY(v11);
    UIRectIntegralWithScale();
    OUTLINED_FUNCTION_14();
    UIRectGetCenter();
    OUTLINED_FUNCTION_8_4();
    OUTLINED_FUNCTION_13();
    UIRectCenteredAboutPointScale();
    OUTLINED_FUNCTION_4_14();
    memset(&v9, 0, sizeof(v9));
    v3 = v1[129];
    v4 = 0.0;
    if (v3 == 2)
    {
      v4 = -2.0;
    }

    if (!v3)
    {
      v4 = -3.0;
    }

    CGAffineTransformMakeTranslation(&v9, v4, 0.0);
    v5 = v1[141];
    OUTLINED_FUNCTION_3_23();
    UIRectGetCenter();
    [v5 setCenter:?];
    v6 = v1[141];
    BSRectWithSize();
    [v6 setBounds:?];
    v7 = v1[141];
    v8 = v9;
    return [v7 setTransform:&v8];
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

    [(SBCaptureButtonCoachingHUDViewController *)v1 _captureButtonFrame];
    [(SBCaptureButtonCoachingHUDViewController *)v1 _coachingLabelWrapperViewSize];
    v4 = v3;
    v6 = v5;
    [*(v1 + 137) bounds];
    UIRectIntegralWithScale();
    UIRectGetCenter();
    OUTLINED_FUNCTION_8_4();
    UIRectCenteredAboutPointScale();
    memset(&v26, 0, sizeof(v26));
    v7 = *(v1 + 129);
    v8 = 0.0;
    if (v7 <= 2)
    {
      v8 = dbl_21F8A82E0[v7];
    }

    CGAffineTransformMakeScale(&v26, v8, v8);
    memset(&v25, 0, sizeof(v25));
    v9 = -2.0;
    if (v7 != 2)
    {
      v9 = 0.0;
    }

    if (!v7)
    {
      v9 = -3.0;
    }

    CGAffineTransformMakeTranslation(&v25, v9, 0.0);
    v10 = *(MEMORY[0x277CBF2C0] + 16);
    *&v24.a = *MEMORY[0x277CBF2C0];
    *&v24.c = v10;
    *&v24.tx = *(MEMORY[0x277CBF2C0] + 32);
    *&t1.a = *&v24.a;
    *&t1.c = v10;
    *&t1.tx = *&v24.tx;
    t2 = v26;
    CGAffineTransformConcat(&v24, &t1, &t2);
    t2 = v24;
    v22 = v25;
    CGAffineTransformConcat(&t1, &t2, &v22);
    *&v24.tx = *&t1.tx;
    UIRectGetCenter();
    v12 = v11;
    v14 = v13;
    v15 = [*(v1 + 142) layer];
    [v15 anchorPoint];
    v17 = v16;
    v19 = v18;

    [*(v1 + 142) setCenter:{v12 + (v17 + -0.5) * v4, v14 + (v19 + -0.5) * v6}];
    v20 = *(v1 + 142);
    BSRectWithSize();
    [v20 setBounds:?];
    v21 = *(v1 + 142);
    v26 = t1;
    return [v21 setTransform:&v26];
  }

  return result;
}

- (id)_layoutCoachingLabel
{
  if (result)
  {
    v1 = result;
    v2 = [result traitCollection];
    [v2 displayScale];
    v4 = v3;

    [v1[142] bounds];
    v5 = v1[143];
    [(SBCaptureButtonCoachingHUDViewController *)v1 _coachingLabelWrapperViewSize];
    [v5 sizeThatFits:?];
    UIRectIntegralWithScale();
    OUTLINED_FUNCTION_14();
    UIRectGetCenter();
    OUTLINED_FUNCTION_8_4();
    OUTLINED_FUNCTION_13();
    UIRectCenteredAboutPointScale();
    v81 = 0u;
    v82 = 0u;
    v80 = 0u;
    SBFTransformFromOrientationToOrientation();
    memset(&v79, 0, sizeof(v79));
    BSFloatRoundForScale();
    CGAffineTransformMakeTranslation(&v79, v6, 0.0);
    OUTLINED_FUNCTION_12_6(MEMORY[0x277CBF2C0]);
    v15 = OUTLINED_FUNCTION_15(v7, v8, v9, v10, v11, v12, v13, v82, v14, v36, v39, v42, v4, v80, *(&v80 + 1), v81.n128_i64[0], v81.n128_i64[1], v81, v51, v54, v57, v60, v63, v66, v69);
    OUTLINED_FUNCTION_7_6(v15, v16, v17, v18, v19, v20, v21, v22, v37, v40, v43, v45, v47, v48, v49, v50, v52, v55, v58, v61, v64, v67, v70, v72, v73, v75, v76);
    OUTLINED_FUNCTION_15(v23, v24, v25, v26, v27, v28, v29, *&v79.tx, v30, v38, v41, v44, v46, *&v79.a, *&v79.b, *&v79.c, *&v79.d, *&v79.c, v53, v56, v59, v62, v65, v68, v71);
    v80 = v74;
    v81 = v77;
    v82 = v78;
    OUTLINED_FUNCTION_5_13();
    CGRectApplyAffineTransform(v83, v31);
    OUTLINED_FUNCTION_5_13();
    UIRectGetCenter();
    OUTLINED_FUNCTION_8_4();
    SBUnintegralizedRectCenteredAboutPoint();
    BSPointRoundForScale();
    v32 = v1[143];
    OUTLINED_FUNCTION_5_13();
    UIRectGetCenter();
    [v32 setCenter:?];
    v33 = v1[143];
    BSRectWithSize();
    [v33 setBounds:?];
    v34 = OUTLINED_FUNCTION_11_7();
    v80 = v74;
    v81 = v77;
    v82 = v78;
    [v34 setTransform:&v80];
    if (v1[136] - 3 < 2)
    {
      v35 = 1;
    }

    else
    {
      v35 = 2;
    }

    return [v1[143] setTextAlignment:v35];
  }

  return result;
}

- (id)_layoutGlyphView
{
  if (result)
  {
    v1 = result;
    v2 = [result traitCollection];
    [v2 displayScale];

    [v1[142] bounds];
    [OUTLINED_FUNCTION_11_7() bounds];
    [OUTLINED_FUNCTION_11_7() bounds];
    v3 = v1[136];
    if (v3 != 4 && v3 != 3)
    {
      [OUTLINED_FUNCTION_11_7() bounds];
    }

    UIRectIntegralWithScale();
    OUTLINED_FUNCTION_14();
    UIRectGetCenter();
    OUTLINED_FUNCTION_8_4();
    OUTLINED_FUNCTION_13();
    UIRectCenteredAboutPointScale();
    v79 = 0u;
    v80 = 0u;
    v78 = 0u;
    SBFTransformFromOrientationToOrientation();
    memset(&v77, 0, sizeof(v77));
    BSFloatRoundForScale();
    CGAffineTransformMakeTranslation(&v77, v4, 0.0);
    OUTLINED_FUNCTION_12_6(MEMORY[0x277CBF2C0]);
    v13 = OUTLINED_FUNCTION_15(v5, v6, v7, v8, v9, v10, v11, v80, v12, v33, v36, v39, v42, v78, *(&v78 + 1), v79.n128_i64[0], v79.n128_i64[1], v79, v49, v52, v55, v58, v61, v64, v67);
    OUTLINED_FUNCTION_7_6(v13, v14, v15, v16, v17, v18, v19, v20, v34, v37, v40, v43, v45, v46, v47, v48, v50, v53, v56, v59, v62, v65, v68, v70, v71, v73, v74);
    OUTLINED_FUNCTION_15(v21, v22, v23, v24, v25, v26, v27, *&v77.tx, v28, v35, v38, v41, v44, *&v77.a, *&v77.b, *&v77.c, *&v77.d, *&v77.c, v51, v54, v57, v60, v63, v66, v69);
    v78 = v72;
    v79 = v75;
    v80 = v76;
    OUTLINED_FUNCTION_5_13();
    CGRectApplyAffineTransform(v81, v29);
    OUTLINED_FUNCTION_5_13();
    UIRectGetCenter();
    OUTLINED_FUNCTION_8_4();
    SBUnintegralizedRectCenteredAboutPoint();
    BSPointRoundForScale();
    v30 = v1[140];
    OUTLINED_FUNCTION_5_13();
    UIRectGetCenter();
    [v30 setCenter:?];
    v31 = v1[140];
    BSRectWithSize();
    [v31 setBounds:?];
    v32 = v1[140];
    v78 = v72;
    v79 = v75;
    v80 = v76;
    return [v32 setTransform:&v78];
  }

  return result;
}

- (double)_viewContentAlphaForCurrentState
{
  result = 0.0;
  if (a1 && (*(a1 + 1032) - 1) <= 1)
  {
    result = 1.0;
    if (*(a1 + 1016))
    {
      return 0.0;
    }
  }

  return result;
}

- (id)_makeGaussianBlurFilter
{
  if (a1)
  {
    v1 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA328]];
    [v1 setName:@"gaussianBlur"];
    [OUTLINED_FUNCTION_12_0() setValue:? forKey:?];
    [OUTLINED_FUNCTION_12_0() setValue:? forKey:?];
    [v1 setValue:&unk_28336F650 forKey:*MEMORY[0x277CDA4F0]];
    [OUTLINED_FUNCTION_12_0() setValue:? forKey:?];
    [OUTLINED_FUNCTION_12_0() setValue:? forKey:?];
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

- (id)_makeCoachingButtonHighlight
{
  if (a1)
  {
    v2 = [SBCaptureButtonCoachingHUDButtonHighlight alloc];
    v3 = OUTLINED_FUNCTION_13_0(v2, MEMORY[0x277CBF3A0]);
    [v3 setAccessibilityIdentifier:@"capture-button-coaching-button"];
    v4 = [MEMORY[0x277D75348] systemWhiteColor];
    [v3 setBackgroundColor:v4];

    v5 = [v3 layer];
    [v5 setCornerCurve:*MEMORY[0x277CDA138]];
    v6 = [MEMORY[0x277D75348] blackColor];
    [v5 setShadowColor:{objc_msgSend(v6, "CGColor")}];

    [v5 setShadowOffset:{*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)}];
    [v5 setShadowOpacity:0.0];
    [v5 setShadowPathIsBounds:1];
    [*(a1 + 1040) coachingButtonShadowRadius];
    [v5 setShadowRadius:?];
    [v5 setCornerRadius:2.5];
    [v5 setAnchorPoint:{1.0, 0.5}];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_makeCoachingLabelWrapperView
{
  if (a1)
  {
    v2 = [SBCaptureButtonCoachingHUDLabelWrapperView alloc];
    v3 = OUTLINED_FUNCTION_13_0(v2, MEMORY[0x277CBF3A0]);
    v4 = v3;
    v5 = 0.0;
    if ((*(a1 + 1032) - 1) <= 1)
    {
      v5 = 1.0;
      if (*(a1 + 1016))
      {
        v5 = 0.0;
      }
    }

    [v3 setAlpha:v5];
    v6 = [v4 layer];
    [v6 setAnchorPoint:{1.0, 0.5}];
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
    v2 = [SBCaptureButtonCoachingHUDLabel alloc];
    v3 = OUTLINED_FUNCTION_13_0(v2, MEMORY[0x277CBF3A0]);
    [v3 setAccessibilityIdentifier:@"capture-button-coaching-label"];
    v4 = [MEMORY[0x277D74300] systemFontOfSize:19.0 weight:*MEMORY[0x277D74418]];
    [v3 setFont:v4];

    [v3 setNumberOfLines:0];
    [v3 setTextAlignment:2];
    v5 = [MEMORY[0x277D75348] systemWhiteColor];
    [v3 setTextColor:v5];

    v6 = [v3 layer];
    v7 = [MEMORY[0x277D75348] blackColor];
    [v6 setShadowColor:{objc_msgSend(v7, "CGColor")}];

    [v6 setShadowOffset:{*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)}];
    [*(a1 + 1040) coachingLabelShadowOpacity];
    *&v8 = v8;
    [v6 setShadowOpacity:v8];
    [*(a1 + 1040) coachingLabelShadowRadius];
    [v6 setShadowRadius:?];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (SBCaptureButtonCoachingHUDGlyphView)_makeGlyphView
{
  v1 = a1;
  if (a1)
  {
    if (*(&a1[2].super.super._viewFlags + 3))
    {
      v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v3 = [v2 URLForResource:*(&v1[2].super.super._viewFlags + 3) withExtension:@"ca"];

      v1 = [(BSUICAPackageView *)[SBCaptureButtonCoachingHUDGlyphView alloc] initWithURL:v3];
    }

    else
    {
      v1 = 0;
    }
  }

  return v1;
}

- (void)viewIsAppearing:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = SBCaptureButtonCoachingHUDViewController;
  [(SBCaptureButtonCoachingHUDViewController *)&v8 viewIsAppearing:a3];
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

    [(SBCaptureButtonCoachingHUDLabel *)self->_coachingLabel setTextAlignment:v7];
  }

  [(SBCaptureButtonCoachingHUDViewController *)&self->super.super.super.super.isa _updateLiveRenderingAssertionIfNeeded];
  [(SBCaptureButtonCoachingHUDViewController *)self transitionToState:0 animated:0 completion:0];
}

- (uint64_t)setCoachingLabelOrientation:(uint64_t)result
{
  if (result && *(result + 1088) != a2)
  {
    *(result + 1088) = a2;
    if ((a2 - 3) < 2)
    {
      v2 = 1;
    }

    else
    {
      v2 = 4;
    }

    return [*(result + 1144) setTextAlignment:v2];
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

    v6 = a1[131];
    if (v6)
    {
      v7 = [a1[131] isAcquired];
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
      [a1[131] invalidate];
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
      v16 = a1[131];
      a1[131] = v15;

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
      [a1[131] invalidate];
      v18 = a1[131];
      a1[131] = 0;
    }

    goto LABEL_16;
  }
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SBCaptureButtonCoachingHUDViewController;
  [(SBCaptureButtonCoachingHUDViewController *)&v4 viewDidDisappear:a3];
  [(SBCaptureButtonCoachingHUDViewController *)&self->super.super.super.super.isa _updateLiveRenderingAssertionIfNeeded];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = SBCaptureButtonCoachingHUDViewController;
  [(SBCaptureButtonCoachingHUDViewController *)&v3 viewDidLayoutSubviews];
  [(SBCaptureButtonCoachingHUDViewController *)self _updateCoachingLabelTextIfNeeded];
  [(SBCaptureButtonCoachingHUDViewController *)self _layoutTempBackdropView];
  [(SBCaptureButtonCoachingHUDViewController *)self _layoutDimmingView];
  [(SBCaptureButtonCoachingHUDViewController *)self _layoutCoachingContentView];
  [(SBCaptureButtonCoachingHUDViewController *)&self->super.super.super.super.isa _layoutCoachingButtonHighlight];
  [(SBCaptureButtonCoachingHUDViewController *)self _layoutCoachingLabelWrapperView];
  [(SBCaptureButtonCoachingHUDViewController *)&self->super.super.super.super.isa _layoutCoachingLabel];
  [(SBCaptureButtonCoachingHUDViewController *)&self->super.super.super.super.isa _layoutGlyphView];
}

- (uint64_t)_layoutTempBackdropView
{
  if (result)
  {
    v1 = result;
    [*(result + 1096) bounds];
    OUTLINED_FUNCTION_4_14();
    v2 = *(v1 + 1152);
    UIRectGetCenter();
    [v2 setCenter:?];
    v4 = OUTLINED_FUNCTION_3_23();

    return [v3 setBounds:v4];
  }

  return result;
}

- (uint64_t)_layoutDimmingView
{
  if (result)
  {
    v1 = result;
    [*(result + 1096) bounds];
    OUTLINED_FUNCTION_4_14();
    v2 = *(v1 + 1104);
    UIRectGetCenter();
    [v2 setCenter:?];
    v4 = OUTLINED_FUNCTION_3_23();

    return [v3 setBounds:v4];
  }

  return result;
}

uint64_t __95__SBCaptureButtonCoachingHUDViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 40);
  *(*(a1 + 32) + 1016) = 0;
  v3 = *(a1 + 32);
  if ((v2 - 3) > 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(v3 + 1080);
  }

  [(SBCaptureButtonCoachingHUDViewController *)v3 _resetGlyphViewToState:v4];
  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = *(a1 + 40);
    if (*(v5 + 1088) != v6)
    {
      *(v5 + 1088) = v6;
      if ((v6 - 3) < 2)
      {
        v7 = 1;
      }

      else
      {
        v7 = 4;
      }

      [*(v5 + 1144) setTextAlignment:v7];
      v5 = *(a1 + 32);
    }
  }

  [(SBCaptureButtonCoachingHUDViewController *)v5 _layoutCoachingLabel];
  v8 = [*(a1 + 32) view];
  [v8 setNeedsLayout];

  v9 = [*(a1 + 32) view];
  [v9 layoutIfNeeded];

  v10 = *(a1 + 48);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __95__SBCaptureButtonCoachingHUDViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_4;
  v12[3] = &unk_2783A8C18;
  v12[4] = *(a1 + 32);
  return [MEMORY[0x277D75D18] animateWithDuration:v12 animations:v10];
}

- (SBUIAnimationPropertyAnimator)_makeViewControllerTransitionAnimationController
{
  if (a1)
  {
    a1 = [[SBUIAnimationPropertyAnimator alloc] initWithPropertyAnimatorGenerator:&__block_literal_global_345];
    v1 = vars8;
  }

  return a1;
}

- (void)_pauseAndResetLayer:(uint64_t)a1
{
  if (a1)
  {
    v4 = a2;
    [v4 convertTime:0 fromLayer:CACurrentMediaTime()];
    v3 = v2;
    [v4 setSpeed:0.0];
    [v4 setTimeOffset:v3];
    [v4 setTimeOffset:0.0];
  }
}

- (void)_resumeLayer:(uint64_t)a1
{
  if (a1)
  {
    v5 = a2;
    [v5 timeOffset];
    v3 = v2;
    LODWORD(v2) = 1.0;
    [v5 setSpeed:v2];
    [v5 setTimeOffset:0.0];
    [v5 setBeginTime:0.0];
    [v5 convertTime:0 fromLayer:CACurrentMediaTime()];
    [v5 setBeginTime:v4 - v3];
  }
}

- (double)_captureButtonFrame
{
  if (!a1)
  {
    return 0.0;
  }

  v2 = [a1 view];
  v3 = [v2 window];
  v4 = [v3 windowScene];

  if (!v4)
  {
    return *MEMORY[0x277CBF3A0];
  }

  v5 = +[SBButtonBezelGeometryInfo buttonBezelGeometryInfoForCurrentEmbeddedDisplayBezel];
  v6 = [a1 view];
  [v5 buttonHWRectForButton:9 inView:v6];
  v8 = v7;

  return v8;
}

- (void)_coachingLabelWrapperViewSize
{
  if (result)
  {
    v1 = result;
    v2 = [result traitCollection];
    [v2 displayScale];

    v3 = [v1 view];
    v4 = [v3 window];
    v5 = [v4 interfaceOrientation];

    v6 = [v1 view];
    [v6 safeAreaInsets];

    v7 = [v1 view];
    [v7 frame];

    v8 = [v1 view];
    [v8 frame];
    if ((v5 - 1) <= 1)
    {
      [(SBCaptureButtonCoachingHUDViewController *)v1 _captureButtonFrame];
    }

    BSFloatRoundForScale();
    return BSFloatRoundForScale();
  }

  return result;
}

- (uint64_t)settings
{
  if (result)
  {
    return *(result + 1040);
  }

  return result;
}

- (uint64_t)liveRenderingAssertion
{
  if (result)
  {
    return *(result + 1048);
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
    return *(result + 1056);
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

- (uint64_t)coachingText
{
  if (result)
  {
    return *(result + 1064);
  }

  return result;
}

- (uint64_t)glyphPackageName
{
  if (result)
  {
    return *(result + 1072);
  }

  return result;
}

- (uint64_t)glyphLandscapeState
{
  if (result)
  {
    return *(result + 1080);
  }

  return result;
}

- (uint64_t)coachingLabelOrientation
{
  if (result)
  {
    return *(result + 1088);
  }

  return result;
}

- (uint64_t)contentView
{
  if (result)
  {
    return *(result + 1096);
  }

  return result;
}

- (uint64_t)dimmingView
{
  if (result)
  {
    return *(result + 1104);
  }

  return result;
}

- (uint64_t)coachingContentView
{
  if (result)
  {
    return *(result + 1112);
  }

  return result;
}

- (uint64_t)glyphView
{
  if (result)
  {
    return *(result + 1120);
  }

  return result;
}

- (uint64_t)coachingButtonHighlightView
{
  if (result)
  {
    return *(result + 1128);
  }

  return result;
}

- (uint64_t)coachingLabelWrapperView
{
  if (result)
  {
    return *(result + 1136);
  }

  return result;
}

- (uint64_t)coachingLabel
{
  if (result)
  {
    return *(result + 1144);
  }

  return result;
}

- (uint64_t)tempBackdropLayer
{
  if (result)
  {
    return *(result + 1152);
  }

  return result;
}

- (uint64_t)isAttached
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

@end