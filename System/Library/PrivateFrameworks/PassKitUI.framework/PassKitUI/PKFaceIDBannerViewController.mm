@interface PKFaceIDBannerViewController
- (BOOL)isSequenceFrom:(id)a3 to:(id)a4 supportedConcurrentlyWithContainerSequence:(id)a5 toContainerState:(id)a6;
- (BOOL)isSequenceSecure:(id)a3 toState:(id)a4;
- (CGRect)captureBounds;
- (NSArray)recordableConfigurations;
- (NSArray)states;
- (NSDictionary)activeComponentStates;
- (NSDictionary)layoutModesToComponentFlipBookDescriptions;
- (NSDictionary)preferredComponentStates;
- (NSString)activeConfiguration;
- (NSString)configurationName;
- (PKBannerViewControllerPresentable)presentable;
- (UIView)viewToCapture;
- (double)maximumLatencyToExitLoopingState:(id)a3;
- (id)allowedNextStatesForState:(id)a3;
- (id)associateWithContext:(id)a3 fromInitialState:(id)a4;
- (uint64_t)_activePlaybackState;
- (uint64_t)_appearWithTransitionCoordinator:(uint64_t)a1;
- (void)_cancelRevokeTimer;
- (void)_init;
- (void)_revoke;
- (void)_updateGlyphState;
- (void)_updateKeyColor;
- (void)_updatePlayback;
- (void)_updatePreferredContentSize;
- (void)_updateServerBannerState;
- (void)_updateState;
- (void)dealloc;
- (void)loadView;
- (void)recordingModeChanged:(BOOL)a3;
- (void)resetToState:(id)a3 completion:(id)a4;
- (void)revoked;
- (void)setActiveComponentStates:(id)a3;
- (void)setActiveConfiguration:(id)a3;
- (void)setActiveLayoutMode:(int64_t)a3;
- (void)setBannerDetached:(BOOL)a3;
- (void)setPresentable:(id)a3;
- (void)setState:(id)a3;
- (void)transitionToState:(id)a3 completion:(id)a4;
- (void)viewWillLayoutSubviews;
- (void)viewWillLayoutSubviewsWithTransitionCoordinator:(id)a3;
@end

@implementation PKFaceIDBannerViewController

- (void)_init
{
  if (!a1)
  {
    return 0;
  }

  v6.receiver = a1;
  v6.super_class = PKFaceIDBannerViewController;
  v1 = objc_msgSendSuper2(&v6, sel_initWithNibName_bundle_, 0, 0);
  if (v1)
  {
    v2 = [MEMORY[0x1E69DC888] colorWithRed:0.192 green:0.82 blue:0.345 alpha:1.0];
    v3 = v1[134];
    v1[134] = v2;

    v1[130] = 0;
    v1[127] = *MEMORY[0x1E69DDBE8];
    IsAvailable = PKPearlIsAvailable();
    if (IsAvailable)
    {
      if (LAUIIsSecureFaceIDUISupported() && (LAUIIsSecureFaceIDUIEnabled() & 1) != 0)
      {
        LOBYTE(IsAvailable) = 1;
      }

      else
      {
        LOBYTE(IsAvailable) = _os_feature_enabled_impl();
      }
    }

    *(v1 + 1152) = IsAvailable;
    *(v1 + 1128) = 1;
  }

  return v1;
}

- (void)dealloc
{
  [(LAUIPearlGlyphView *)self->_glyphView invalidate];
  revokeTimer = self->_revokeTimer;
  if (revokeTimer)
  {
    dispatch_source_cancel(revokeTimer);
  }

  if (self->_revokeBackgroundTask != *MEMORY[0x1E69DDBE8])
  {
    v4 = [MEMORY[0x1E69DC668] sharedApplication];
    [v4 endBackgroundTask:self->_revokeBackgroundTask];
  }

  glyphLegibilityTimer = self->_glyphLegibilityTimer;
  if (glyphLegibilityTimer)
  {
    dispatch_source_cancel(glyphLegibilityTimer);
  }

  recordingStateTransitionCompletion = self->_recordingStateTransitionCompletion;
  if (recordingStateTransitionCompletion)
  {
    v7 = _Block_copy(recordingStateTransitionCompletion);
    v8 = self->_recordingStateTransitionCompletion;
    self->_recordingStateTransitionCompletion = 0;

    v7[2](v7);
  }

  v9.receiver = self;
  v9.super_class = PKFaceIDBannerViewController;
  [(PKFaceIDBannerViewController *)&v9 dealloc];
}

- (void)loadView
{
  v20.receiver = self;
  v20.super_class = PKFaceIDBannerViewController;
  [(PKFaceIDBannerViewController *)&v20 loadView];
  v3 = [(PKFaceIDBannerViewController *)self view];
  [v3 setOpaque:0];
  [v3 setAutoresizingMask:0];
  v4 = [MEMORY[0x1E69DC888] clearColor];
  [v3 setBackgroundColor:v4];

  if (self->_secureVariantRequired)
  {
    goto LABEL_10;
  }

  v5 = [MEMORY[0x1E69AD2F8] createSystemApertureConfiguration];
  [v5 setInitialStyle:4];
  if (self->_recordingType)
  {
    [v5 setRecording:1];
  }

  v6 = [objc_alloc(MEMORY[0x1E69AD300]) initWithConfiguration:v5];
  glyphView = self->_glyphView;
  self->_glyphView = v6;

  v8 = self->_glyphView;
  if (v8)
  {
    v9 = self->_recordingType == 2 ? 3 : 7;
    [(LAUIPearlGlyphView *)v8 setFaceVisibility:v9 animated:0];
    [(LAUIPearlGlyphView *)self->_glyphView setOpaque:0];
    [(LAUIPearlGlyphView *)self->_glyphView setShakeEnabled:0];
    [(LAUIPearlGlyphView *)self->_glyphView setInApplicationContext:1];
    if (self->_glyphState < 5uLL)
    {
      [LAUIPearlGlyphView setState:"setState:animated:" animated:?];
      v10 = objc_alloc_init(MEMORY[0x1E69DD250]);
      containerView = self->_containerView;
      self->_containerView = v10;

      [(UIView *)self->_containerView setOpaque:0];
      v12 = self->_containerView;
      v13 = [MEMORY[0x1E69DC888] clearColor];
      [(UIView *)v12 setBackgroundColor:v13];

      [v3 addSubview:self->_containerView];
      v14 = objc_alloc_init(PKBlurView);
      glyphContainerView = self->_glyphContainerView;
      self->_glyphContainerView = v14;

      [(PKBlurView *)self->_glyphContainerView setAnchorPoint:0.5, 0.0];
      v16 = self->_glyphContainerView;
      v17 = [MEMORY[0x1E69DC888] clearColor];
      [(PKBlurView *)v16 setBackgroundColor:v17];

      [(PKBlurView *)self->_glyphContainerView addSubview:self->_glyphView];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __40__PKFaceIDBannerViewController_loadView__block_invoke;
      v19[3] = &unk_1E8010970;
      v19[4] = self;
      [MEMORY[0x1E69DD250] performWithoutAnimation:v19];
      [(UIView *)self->_containerView addSubview:self->_glyphContainerView];
      v18 = [(UIView *)self->_containerView layer];
      [v18 setAllowsHitTesting:0];

      [(UIView *)self->_containerView setUserInteractionEnabled:0];
LABEL_10:

      return;
    }
  }

  __break(1u);
}

uint64_t __40__PKFaceIDBannerViewController_loadView__block_invoke(uint64_t a1)
{
  v2 = *MEMORY[0x1E695EFF8];
  v3 = *(MEMORY[0x1E695EFF8] + 8);
  [*(*(a1 + 32) + 1088) setBounds:{*MEMORY[0x1E695EFF8], v3, 69.0, 69.0}];
  [*(*(a1 + 32) + 1096) setFrame:{v2, v3, 69.0, 69.0}];
  v4 = *(*(a1 + 32) + 1088);

  return [v4 layoutIfNeeded];
}

- (void)viewWillLayoutSubviews
{
  v47.receiver = self;
  v47.super_class = PKFaceIDBannerViewController;
  [(PKFaceIDBannerViewController *)&v47 viewWillLayoutSubviews];
  if ((self->_activeLayoutMode + 1) >= 2)
  {
    v3 = [(PKFaceIDBannerViewController *)self view];
    [v3 bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v12 = [v3 SBUISA_systemApertureObstructedAreaLayoutGuide];
    [v12 layoutFrame];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;

    PKFloatRoundToPixel();
    [(UIView *)self->_containerView setFrame:v14 + v21, v16 + v20, *MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
    [(UIView *)self->_containerView convertRect:v3 fromView:v5, v7, v9, v11];
    [(UIView *)self->_containerView convertRect:v3 fromView:v14, v16, v18, v20];
    v23 = v22;
    v25 = v24;
    v27 = v26;

    if (self->_activeLayoutMode == 1)
    {
      goto LABEL_5;
    }

    state = self->_state;
    if (state > 6)
    {
      __break(1u);
      return;
    }

    if (((1 << state) & 0x47) != 0)
    {
LABEL_5:
      PKSizeRoundToPixel();
      v30 = v29;
      v32 = v31;
      CATransform3DMakeScale(&v46, 0.131579, 0.131579, 1.0);
      v33 = 0.0;
      v34 = 66.6666667;
    }

    else
    {
      v35 = *(MEMORY[0x1E69792E8] + 80);
      *&v46.m31 = *(MEMORY[0x1E69792E8] + 64);
      *&v46.m33 = v35;
      v36 = *(MEMORY[0x1E69792E8] + 112);
      *&v46.m41 = *(MEMORY[0x1E69792E8] + 96);
      *&v46.m43 = v36;
      v37 = *(MEMORY[0x1E69792E8] + 16);
      *&v46.m11 = *MEMORY[0x1E69792E8];
      *&v46.m13 = v37;
      v38 = *(MEMORY[0x1E69792E8] + 48);
      *&v46.m21 = *(MEMORY[0x1E69792E8] + 32);
      *&v46.m23 = v38;
      v33 = 1.0;
      v34 = 0.0;
      v32 = 69.0;
      v30 = 69.0;
    }

    PKFloatRoundToPixel();
    v40 = v23 + v39;
    [(PKBlurView *)self->_glyphContainerView setAlpha:v33];
    glyphContainerView = self->_glyphContainerView;
    v45 = v46;
    [(PKBlurView *)glyphContainerView setTransform3D:&v45];
    [(PKBlurView *)self->_glyphContainerView setBlurRadius:v34];
    v42 = self->_glyphContainerView;
    [(PKBlurView *)v42 anchorPoint];
    [(PKBlurView *)v42 setCenter:v40 + v43 * v30, v25 + v27 + v44 * v32];
  }
}

- (void)_cancelRevokeTimer
{
  if (a1)
  {
    v2 = *(a1 + 1024);
    if (v2)
    {
      dispatch_source_cancel(v2);
      v3 = *(a1 + 1024);
      *(a1 + 1024) = 0;
    }

    v4 = *MEMORY[0x1E69DDBE8];
    if (*(a1 + 1016) != *MEMORY[0x1E69DDBE8])
    {
      v5 = [MEMORY[0x1E69DC668] sharedApplication];
      [v5 endBackgroundTask:*(a1 + 1016)];

      *(a1 + 1016) = v4;
    }
  }
}

void __49__PKFaceIDBannerViewController__startRevokeTimer__block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__PKFaceIDBannerViewController__startRevokeTimer__block_invoke_2;
  block[3] = &unk_1E8010998;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v2);
}

void __49__PKFaceIDBannerViewController__startRevokeTimer__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [(PKFaceIDBannerViewController *)WeakRetained _revoke];
    WeakRetained = v2;
  }
}

- (void)_revoke
{
  if (a1)
  {
    if ((*(a1 + 1008) & 1) == 0)
    {
      v2 = *(a1 + 1016);
      v3 = *MEMORY[0x1E69DDBE8];
      *(a1 + 1016) = *MEMORY[0x1E69DDBE8];
      *(a1 + 1008) = 1;
      [*(a1 + 1096) invalidate];
      [(PKFaceIDBannerViewController *)a1 _cancelRevokeTimer];
      WeakRetained = objc_loadWeakRetained((a1 + 1184));
      [WeakRetained revoke];

      if (v2 != v3)
      {
        v5 = [MEMORY[0x1E69DC668] sharedApplication];
        [v5 endBackgroundTask:v2];
      }
    }
  }
}

void __49__PKFaceIDBannerViewController__startRevokeTimer__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [(PKFaceIDBannerViewController *)WeakRetained _revoke];
    WeakRetained = v2;
  }
}

- (void)_updateState
{
  if (!a1 || (*(a1 + 1008) & 1) != 0)
  {
    return;
  }

  if (*(a1 + 1152) == 1 && _os_feature_enabled_impl())
  {

    [(PKFaceIDBannerViewController *)a1 _updatePlayback];
    return;
  }

  v2 = *(a1 + 992);
  if (v2 == 3 || v2 == 6 || v2 == 0)
  {
    if ((*(a1 + 1104) || *(a1 + 1176) == 1) && !*(a1 + 1034) && !*(a1 + 1060))
    {
      if (!*(a1 + 1104))
      {
        if (v2 == 3)
        {
LABEL_24:
          if ((*(a1 + 1008) & 1) != 0 || *(a1 + 1056))
          {
            return;
          }

          v6 = [a1 viewIfLoaded];
          v7 = v6;
          if (v6)
          {
            [v6 bounds];
            [a1 setPreferredContentSize:{v8, v9}];
            v10 = MEMORY[0x1E69DD250];
            v15 = MEMORY[0x1E69E9820];
            v16 = 3221225472;
            v17 = __39__PKFaceIDBannerViewController__shrink__block_invoke;
            v18 = &unk_1E8010970;
            v19 = v7;
            [v10 performWithoutAnimation:&v15];
          }

          v11 = 4;
          goto LABEL_44;
        }

        v5 = 0;
LABEL_33:
        if (v2 != 6 && v2 != 0)
        {
          __break(1u);
          return;
        }

        if (!v5)
        {
          if (!*(a1 + 1104) && !*(a1 + 1056))
          {

            [(PKFaceIDBannerViewController *)a1 _revoke];
          }

          return;
        }

        if (v2 != 6 || (*(a1 + 1008) & 1) != 0)
        {
          return;
        }

        v13 = [a1 viewIfLoaded];
        v7 = v13;
        if (v13)
        {
          v14 = MEMORY[0x1E69DD250];
          v15 = MEMORY[0x1E69E9820];
          v16 = 3221225472;
          v17 = __39__PKFaceIDBannerViewController__expand__block_invoke;
          v18 = &unk_1E8010970;
          v19 = v13;
          [v14 performWithoutAnimation:&v15];
        }

        v11 = 1;
LABEL_44:
        *(a1 + 992) = v11;
        [(PKFaceIDBannerViewController *)a1 _updatePreferredContentSize];
        [(PKFaceIDBannerViewController *)a1 _updateServerBannerState];

        return;
      }

      v5 = *(a1 + 1105) != 0;
    }

    else
    {
      v5 = 1;
    }

    if (v2 == 3)
    {
      if (v5)
      {
        return;
      }

      goto LABEL_24;
    }

    goto LABEL_33;
  }
}

- (void)_updatePlayback
{
  v41 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return;
  }

  if (*(a1 + 1152) != 1 || (_os_feature_enabled_impl() & 1) == 0)
  {
    goto LABEL_93;
  }

  v2 = *(a1 + 1144);
  v3 = [a1 flipBookName];
  v28 = [v2 objectForKeyedSubscript:v3];

  if (!v28)
  {
    goto LABEL_91;
  }

  active = [(PKFaceIDBannerViewController *)a1 _activePlaybackState];
  if (*(a1 + 1128) != active)
  {
    goto LABEL_91;
  }

  v5 = active;
  v6 = *(a1 + 1130);
  if ((active & 0xFFFFFFFB) == 1 && v6 == 1)
  {
    *(a1 + 1130) = 2;
    v6 = *(a1 + 1130);
  }

  if (v6 == 2)
  {
    if (!*(a1 + 1034) && *(a1 + 1129) != 1)
    {
LABEL_17:
      v7 = *(a1 + 1040);
      goto LABEL_30;
    }

    *(a1 + 1130) = 3;
    v6 = *(a1 + 1130);
  }

  if (active == 1 && v6 == 3)
  {
    *(a1 + 1129) = 0;
    *(a1 + 1130) = 0;
    v6 = *(a1 + 1130);
  }

  if ((v6 - 1) < 2)
  {
    goto LABEL_17;
  }

  if (v6 == 3)
  {
    v7 = 0;
  }

  else
  {
    v8 = *(a1 + 1034);
    if (*(a1 + 1034))
    {
      if ((active - 3) > 1u)
      {
        v7 = 2;
      }

      else
      {
        if (v8 == 1)
        {
          v7 = 3;
        }

        else
        {
          if (v8 != 2)
          {
            goto LABEL_93;
          }

          v7 = 4;
        }

        *(a1 + 1130) = 1;
        *(a1 + 1034) = 0;
      }
    }

    else
    {
      v7 = *(a1 + 1000);
      if (v7)
      {
        v7 = [v7 glyphState];
      }
    }
  }

LABEL_30:
  *(a1 + 1040) = v7;
  [(PKFaceIDBannerViewController *)a1 _updateKeyColor];
  if (*(a1 + 1152) != 1 || (_os_feature_enabled_impl() & 1) == 0)
  {
    goto LABEL_93;
  }

  v9 = 0;
  v10 = *(a1 + 1040);
  if (v10 <= 1)
  {
    if (!v10)
    {
LABEL_40:
      v9 = 1;
      goto LABEL_47;
    }

    if (v10 == 1)
    {
      v9 = 2;
    }
  }

  else
  {
    if (v10 != 2)
    {
      if (v10 == 3)
      {
        v9 = 5;
        goto LABEL_47;
      }

      if (v10 != 4)
      {
        goto LABEL_47;
      }

      goto LABEL_40;
    }

    if (UIAccessibilityIsReduceTransparencyEnabled())
    {
      v9 = 4;
    }

    else if (UIAccessibilityIsReduceMotionEnabled())
    {
      v9 = 4;
    }

    else
    {
      v9 = 3;
    }
  }

LABEL_47:
  if (*(a1 + 1176) == 1 && *(a1 + 1130) != 1 && !*(a1 + 1034) && !*(a1 + 1060))
  {
    v9 = 0;
  }

  if (v9 == v5)
  {
    goto LABEL_89;
  }

  if (v5 > 2u)
  {
    switch(v5)
    {
      case 3u:
        v21 = 1 << v9;
        v22 = 21;
        break;
      case 4u:
        v21 = 1 << v9;
        v22 = 13;
        break;
      case 5u:
        if ((v9 - 2) >= 3u)
        {
          goto LABEL_85;
        }

        goto LABEL_65;
      default:
        goto LABEL_93;
    }

    if ((v21 & v22) != 0)
    {
      goto LABEL_65;
    }

LABEL_85:
    v27 = [MEMORY[0x1E696AD98] numberWithChar:v9];
    v35[0] = v27;
    v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:1];
    goto LABEL_86;
  }

  if (!v5)
  {
    if (v9 < 2u)
    {
      goto LABEL_85;
    }

    goto LABEL_65;
  }

  if (v5 != 1)
  {
    if (v5 == 2)
    {
      if ((v9 - 1) < 4u)
      {
        goto LABEL_85;
      }

      goto LABEL_65;
    }

LABEL_93:
    __break(1u);
  }

  if (v9 < 3u)
  {
    goto LABEL_85;
  }

LABEL_65:
  v27 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v12 = [MEMORY[0x1E696AD98] numberWithChar:v5];
  [v27 addObject:v12];

  v13 = [FBCStateTransitionNode alloc];
  if (v13)
  {
    v14 = [(FBCStateTransitionNode *)v13 _initWithState:v5 transitions:MEMORY[0x1E695E0F0]];
  }

  else
  {
    v14 = 0;
  }

  [v11 addObject:v14];

  while (1)
  {
    if (![v11 count])
    {
      goto LABEL_93;
    }

    v15 = objc_autoreleasePoolPush();
    v16 = [v11 objectAtIndexedSubscript:0];
    [v11 removeObjectAtIndex:0];
    if (!v16)
    {
      break;
    }

    v17 = *(v16 + 8);
    if (v17 == v9)
    {
      v20 = *(v16 + 16);
      goto LABEL_78;
    }

LABEL_71:
    v29 = 0;
    v30 = &v29;
    v31 = 0x3032000000;
    v32 = __Block_byref_object_copy__75;
    v33 = __Block_byref_object_dispose__75;
    v34 = 0;
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __FBCStateTransitions_block_invoke;
    v35[3] = &unk_1E80279C8;
    v39 = &v29;
    v36 = v27;
    v18 = v16;
    v37 = v18;
    v40 = v9;
    v38 = v11;
    FBCStateEnumerateTransitions(v17, v35);
    v19 = v30[5];
    if (v19)
    {
      v26 = *(v19 + 16);
    }

    _Block_object_dispose(&v29, 8);
    objc_autoreleasePoolPop(v15);
    if (v19)
    {
      goto LABEL_79;
    }
  }

  if (v9)
  {
    LOBYTE(v17) = 0;
    goto LABEL_71;
  }

  v20 = 0;
LABEL_78:
  v26 = v20;

  objc_autoreleasePoolPop(v15);
LABEL_79:

LABEL_86:
  v23 = [v26 firstObject];
  v24 = v23;
  if (v23)
  {
    *(a1 + 1128) = [v23 integerValue];
    v25 = [a1 systemApertureElementContext];
    [v25 setElementNeedsUpdate];

    goto LABEL_91;
  }

LABEL_89:
  if (!v9)
  {
    [(PKFaceIDBannerViewController *)a1 _revoke];
  }

LABEL_91:
}

- (void)_updatePreferredContentSize
{
  if (!a1)
  {
    return;
  }

  v2 = *(a1 + 992);
  if (v2 > 6 || ((1 << v2) & 0x36) == 0)
  {
    goto LABEL_26;
  }

  if (*(a1 + 1033) & 1) != 0 || (*(a1 + 1008))
  {
    return;
  }

  *(a1 + 1033) = 1;
  v3 = *(a1 + 992);
  if (v3 <= 2)
  {
    if (v3 == 1)
    {
LABEL_16:
      v4 = 2;
      goto LABEL_17;
    }

    if (v3 != 2)
    {
      goto LABEL_26;
    }
  }

  else
  {
    if (v3 <= 4)
    {
      if (v3 == 4)
      {
        v4 = 5;
LABEL_17:
        *(a1 + 992) = v4;
        [(PKFaceIDBannerViewController *)a1 _updateServerBannerState];
        goto LABEL_18;
      }

LABEL_26:
      __break(1u);
      return;
    }

    if (v3 != 5)
    {
      __break(1u);
      goto LABEL_16;
    }
  }

LABEL_18:
  [a1 preferredContentSize];
  v6 = v5;
  v7 = *(MEMORY[0x1E695F060] + 8);
  if (*MEMORY[0x1E695F060] != v8 || v7 != v6)
  {
    [a1 setPreferredContentSize:{*MEMORY[0x1E695F060], v7}];
  }

  *(a1 + 1033) = 0;
  v10 = [a1 systemApertureElementContext];
  [v10 setElementNeedsUpdateWithCoordinatedAnimations:&__block_literal_global_269];
}

- (void)_updateServerBannerState
{
  if (!a1 || *(a1 + 1152) != 1 || ![a1 isViewLoaded])
  {
    return;
  }

  if (_os_feature_enabled_impl())
  {
    if (([(PKFaceIDBannerViewController *)a1 _activePlaybackState]- 1) > 3u)
    {
LABEL_6:
      v2 = 0;
      goto LABEL_9;
    }
  }

  else if ((*(a1 + 992) - 2) >= 3)
  {
    goto LABEL_6;
  }

  v2 = *(a1 + 1040) < 3uLL;
LABEL_9:
  if (*(a1 + 1153) != v2)
  {
    *(a1 + 1153) = v2;
    if (*(a1 + 1153) == 1)
    {
      v3 = 1;
      if ((*(a1 + 1154) & 1) == 0)
      {
        *(a1 + 1154) = 1;
        ++*(a1 + 1060);
        v4 = dispatch_time(0, 2000000000);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __56__PKFaceIDBannerViewController__updateServerBannerState__block_invoke;
        block[3] = &unk_1E8010970;
        block[4] = a1;
        dispatch_after(v4, MEMORY[0x1E69E96A0], block);
        v3 = *(a1 + 1153);
      }
    }

    else
    {
      v3 = 0;
    }

    v5 = [MEMORY[0x1E69B8888] createForSecurelyVisible:v3 & 1];
    v6 = *(a1 + 1168);
    *(a1 + 1168) = v5;

    WeakRetained = objc_loadWeakRetained((a1 + 1160));
    [WeakRetained setState:*(a1 + 1168)];
  }
}

- (uint64_t)_appearWithTransitionCoordinator:(uint64_t)a1
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if ((*(a1 + 992) & 0xFFFFFFFD) != 0 || !v3)
    {
      __break(1u);
    }

    v5 = *(a1 + 1192);
    v6 = PKLogFacilityTypeGetObject();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (v5 == 4)
    {
      if (v7)
      {
        *buf = 134217984;
        v28 = a1;
        _os_log_impl(&dword_1BD026000, v6, OS_LOG_TYPE_DEFAULT, "PKFaceIDBVC (%p): appearing.", buf, 0xCu);
      }

      ++*(a1 + 1056);
      objc_initWeak(buf, a1);
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __65__PKFaceIDBannerViewController__appearWithTransitionCoordinator___block_invoke;
      aBlock[3] = &unk_1E8010998;
      objc_copyWeak(&v26, buf);
      v8 = _Block_copy(aBlock);
      v9 = *(a1 + 992);
      v10 = [a1 view];
      if (v9)
      {
        v11 = 0;
      }

      else
      {
        v12 = dispatch_group_create();
        dispatch_group_enter(v12);
        v13 = dispatch_time(0, 500000000);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __65__PKFaceIDBannerViewController__appearWithTransitionCoordinator___block_invoke_68;
        block[3] = &unk_1E8010970;
        v11 = v12;
        v24 = v11;
        dispatch_after(v13, MEMORY[0x1E69E96A0], block);

        if (v11)
        {
          dispatch_group_enter(v11);
          dispatch_group_notify(v11, MEMORY[0x1E69E96A0], v8);
        }
      }

      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __65__PKFaceIDBannerViewController__appearWithTransitionCoordinator___block_invoke_2;
      v21[3] = &unk_1E8020758;
      v21[4] = a1;
      v14 = v10;
      v22 = v14;
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __65__PKFaceIDBannerViewController__appearWithTransitionCoordinator___block_invoke_3;
      v18[3] = &unk_1E8027908;
      v15 = v11;
      v19 = v15;
      v16 = v8;
      v20 = v16;
      [v4 animateAlongsideTransition:v21 completion:v18];

      objc_destroyWeak(&v26);
      objc_destroyWeak(buf);
      a1 = 1;
    }

    else
    {
      if (v7)
      {
        *buf = 134218240;
        v28 = a1;
        v29 = 2048;
        v30 = v5;
        _os_log_impl(&dword_1BD026000, v6, OS_LOG_TYPE_DEFAULT, "PKFaceIDBVC (%p): deferring apperance while in mode %ld.", buf, 0x16u);
      }

      a1 = 0;
    }
  }

  return a1;
}

void __65__PKFaceIDBannerViewController__appearWithTransitionCoordinator___block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = 134217984;
      v4 = WeakRetained;
      _os_log_impl(&dword_1BD026000, v2, OS_LOG_TYPE_DEFAULT, "PKFaceIDBVC (%p): appeared.", &v3, 0xCu);
    }

    --WeakRetained[264];
    --*(WeakRetained + 996);
    [(PKFaceIDBannerViewController *)WeakRetained _updateGlyphState];
    [(PKFaceIDBannerViewController *)WeakRetained _updateState];
  }
}

- (void)_updateGlyphState
{
  if (!a1 || *(a1 + 1048) || *(a1 + 1152) == 1 && (_os_feature_enabled_impl() & 1) != 0)
  {
    return;
  }

  v2 = *(a1 + 992);
  if ((v2 - 4) >= 2)
  {
    v3 = v2 == 3 && *(a1 + 996) == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *(a1 + 1000);
  if (v4)
  {
    v4 = [v4 glyphState];
  }

  if (*(a1 + 1104))
  {
    if (v3)
    {
      v5 = (a1 + 1034);
      v6 = *(a1 + 1034);
      v7 = 3;
      if (v6 != 1)
      {
        v7 = v4;
      }

      if (v6 == 2)
      {
        v4 = 4;
      }

      else
      {
        v4 = v7;
      }

LABEL_20:
      *v5 = 0;
      goto LABEL_31;
    }

    v4 = 0;
  }

  else
  {
    v5 = (a1 + 1034);
    v8 = *(a1 + 1034);
    v9 = 2;
    if (!*(a1 + 1034))
    {
      v9 = v4;
    }

    if (*(a1 + 1034) != 0 && v3)
    {
      if (*(a1 + 1040) == 2)
      {
        if (v8 == 2)
        {
          v4 = 4;
        }

        else if (v8 == 1)
        {
          v4 = 3;
        }

        goto LABEL_20;
      }

      v4 = 2;
    }

    else
    {
      v4 = v9;
    }
  }

LABEL_31:
  if (*(a1 + 1040) != v4)
  {
    *(a1 + 1040) = v4;
    if (*(a1 + 1152) == 1 && (_os_feature_enabled_impl() & 1) == 0)
    {
      [(PKFaceIDBannerViewController *)a1 _updateServerBannerState];
    }

    [(PKFaceIDBannerViewController *)a1 _updateKeyColor];
    if ([a1 isViewLoaded] && (*(a1 + 1152) != 1 || (_os_feature_enabled_impl() & 1) == 0))
    {
      v10 = *(a1 + 1040);
      if (v10 >= 5)
      {
        __break(1u);
      }

      else
      {
        if (*(a1 + 1104))
        {
          if (*(a1 + 1105) == 4 && v10 == 2)
          {
            v12 = 5;
          }

          else
          {
            v12 = *(a1 + 1040);
          }
        }

        else
        {
          v12 = *(a1 + 1040);
        }

        if (*(a1 + 992))
        {
          if (v10 - 3 >= 2)
          {
            v13 = 0.0;
            if (v10 == 2)
            {
              v13 = dbl_1BE1171E0[*(a1 + 1056) == 0];
            }
          }

          else
          {
            v13 = 0.45;
          }

          ++*(a1 + 1060);
          [(PKFaceIDBannerViewController *)a1 _updateState];
          objc_initWeak(&location, a1);
          if (v13 <= 0.0)
          {
            v14 = 0;
          }

          else
          {
            v14 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, MEMORY[0x1E69E96A0]);
            handler[0] = MEMORY[0x1E69E9820];
            handler[1] = 3221225472;
            handler[2] = __47__PKFaceIDBannerViewController__pushGlyphState__block_invoke_2;
            handler[3] = &unk_1E80111D0;
            objc_copyWeak(&v24, &location);
            v23 = &__block_literal_global_72_0;
            dispatch_source_set_event_handler(v14, handler);
            objc_storeStrong((a1 + 1048), v14);

            objc_destroyWeak(&v24);
          }

          if (*(a1 + 1040) == 4)
          {
            v15 = [a1 systemApertureElementContext];
            [v15 requestNegativeResponseAnimation];
          }

          v16 = *(a1 + 1096);
          v18[0] = MEMORY[0x1E69E9820];
          v18[1] = 3221225472;
          v18[2] = __47__PKFaceIDBannerViewController__pushGlyphState__block_invoke_3;
          v18[3] = &unk_1E8027950;
          objc_copyWeak(v21, &location);
          v17 = v14;
          v21[1] = *&v13;
          v19 = v17;
          v20 = &__block_literal_global_72_0;
          [v16 setState:v12 animated:1 withCompletion:v18];

          objc_destroyWeak(v21);
          objc_destroyWeak(&location);
        }

        else
        {
          [*(a1 + 1096) setState:v12 animated:0];
        }
      }
    }
  }
}

void __65__PKFaceIDBannerViewController__appearWithTransitionCoordinator___block_invoke_2(uint64_t a1)
{
  *(*(a1 + 32) + 992) = 3;
  ++*(*(a1 + 32) + 996);
  *(*(a1 + 32) + 1032) = 1;
  [*(a1 + 40) setNeedsLayout];
  [*(a1 + 40) layoutIfNeeded];
  *(*(a1 + 32) + 1032) = 0;
  [(PKFaceIDBannerViewController *)*(a1 + 32) _updateGlyphState];
  v2 = *(a1 + 32);

  [(PKFaceIDBannerViewController *)v2 _updateServerBannerState];
}

void __65__PKFaceIDBannerViewController__appearWithTransitionCoordinator___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    dispatch_group_leave(v2);
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], *(a1 + 40));
  }
}

void __65__PKFaceIDBannerViewController__shrinkWithTransitionCoordinator___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 992) = 6;
  *(*(a1 + 32) + 1032) = 1;
  [*(a1 + 40) setNeedsLayout];
  [*(a1 + 40) layoutIfNeeded];
  *(*(a1 + 32) + 1032) = 0;
  v2 = *(a1 + 32);

  [(PKFaceIDBannerViewController *)v2 _updateServerBannerState];
}

void __65__PKFaceIDBannerViewController__shrinkWithTransitionCoordinator___block_invoke_2(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__PKFaceIDBannerViewController__shrinkWithTransitionCoordinator___block_invoke_3;
  block[3] = &unk_1E8010998;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v2);
}

void __65__PKFaceIDBannerViewController__shrinkWithTransitionCoordinator___block_invoke_3(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = 134217984;
      v4 = WeakRetained;
      _os_log_impl(&dword_1BD026000, v2, OS_LOG_TYPE_DEFAULT, "PKFaceIDBVC (%p): shrunk.", &v3, 0xCu);
    }

    --WeakRetained[264];
    [(PKFaceIDBannerViewController *)WeakRetained _updateGlyphState];
    [(PKFaceIDBannerViewController *)WeakRetained _updateState];
  }
}

- (void)_updateKeyColor
{
  if (a1)
  {
    v2 = *(a1 + 1040);
    if (v2 == 3 || v2 != 4 && ((v3 = *(a1 + 1034), v3 == 1) || v3 != 2 && v2))
    {
      v4 = *(a1 + 1072);
    }

    else
    {
      v4 = 0;
    }

    if (*(a1 + 1064) != v4)
    {
      v6 = v4;
      objc_storeStrong((a1 + 1064), v4);
      v5 = [a1 systemApertureElementContext];
      [v5 setElementNeedsUpdate];

      v4 = v6;
    }
  }
}

void __47__PKFaceIDBannerViewController__pushGlyphState__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  --v3[265];
  [(PKFaceIDBannerViewController *)v3 _updateGlyphState];
  v2 = v3;
  if (!v3[265])
  {
    [(PKFaceIDBannerViewController *)v3 _updateState];
    v2 = v3;
  }
}

void __47__PKFaceIDBannerViewController__pushGlyphState__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    dispatch_source_cancel(WeakRetained[131]);
    v3 = v4[131];
    v4[131] = 0;

    (*(*(a1 + 32) + 16))();
    WeakRetained = v4;
  }
}

void __47__PKFaceIDBannerViewController__pushGlyphState__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(a1 + 32);
    v6 = WeakRetained;
    if (v4)
    {
      v5 = dispatch_time(0, (*(a1 + 56) * 1000000000.0));
      dispatch_source_set_timer(v4, v5, 0xFFFFFFFFFFFFFFFFLL, 0xF4240uLL);
      dispatch_activate(*(a1 + 32));
    }

    else
    {
      (*(*(a1 + 40) + 16))();
    }

    v3 = v6;
  }
}

- (uint64_t)_activePlaybackState
{
  if (!*(result + 1144))
  {
    return 0;
  }

  v1 = result;
  if (*(result + 1152) == 1)
  {
    result = _os_feature_enabled_impl();
    if (result)
    {
      v2 = v1[143];
      v3 = [v1 flipBookName];
      v4 = [v2 objectForKeyedSubscript:v3];

      if (!v4)
      {
        v4 = [v1 initialState];
      }

      v6 = 0;
      FBCStateFromString(v4, &v6);
      v5 = v6;

      return v5;
    }
  }

  __break(1u);
  return result;
}

uint64_t __56__PKFaceIDBannerViewController__updateServerBannerState__block_invoke(uint64_t a1)
{
  --*(*(a1 + 32) + 1060);
  [(PKFaceIDBannerViewController *)*(a1 + 32) _updateGlyphState];
  result = *(a1 + 32);
  if (!*(result + 1060))
  {

    return [(PKFaceIDBannerViewController *)result _updateState];
  }

  return result;
}

- (void)revoked
{
  if (self && !self->_revoked)
  {
    self->_revoked = 1;
    [(LAUIPearlGlyphView *)self->_glyphView invalidate];

    [(PKFaceIDBannerViewController *)self _cancelRevokeTimer];
  }
}

- (void)setPresentable:(id)a3
{
  v5 = a3;
  objc_storeWeak(&self->_presentable, v5);
  v4 = v5;
  if (v5 && self->_revoked)
  {
    [v5 revoke];
    v4 = v5;
  }
}

- (void)setBannerDetached:(BOOL)a3
{
  if (self->_bannerDetached != a3)
  {
    self->_bannerDetached = a3;
    if (a3)
    {
      if (self->_recordingType)
      {
        [(PKFaceIDBannerViewController *)self _revoke];
      }

      else if (!self->_revoked)
      {
        [(PKFaceIDBannerViewController *)self _cancelRevokeTimer];
        objc_initWeak(&location, self);
        v4 = [MEMORY[0x1E69DC668] sharedApplication];
        v12[0] = MEMORY[0x1E69E9820];
        v12[1] = 3221225472;
        v12[2] = __49__PKFaceIDBannerViewController__startRevokeTimer__block_invoke;
        v12[3] = &unk_1E8010998;
        objc_copyWeak(&v13, &location);
        self->_revokeBackgroundTask = [v4 beginBackgroundTaskWithName:@"face_id.revoke" expirationHandler:v12];

        v5 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, MEMORY[0x1E69E96A0]);
        revokeTimer = self->_revokeTimer;
        self->_revokeTimer = v5;

        v7 = self->_revokeTimer;
        v8 = dispatch_time(0, 10000000000);
        dispatch_source_set_timer(v7, v8, 0xFFFFFFFFFFFFFFFFLL, 0x1DCD6500uLL);
        v9 = self->_revokeTimer;
        handler[0] = MEMORY[0x1E69E9820];
        handler[1] = 3221225472;
        handler[2] = __49__PKFaceIDBannerViewController__startRevokeTimer__block_invoke_3;
        handler[3] = &unk_1E8010998;
        objc_copyWeak(&v11, &location);
        dispatch_source_set_event_handler(v9, handler);
        dispatch_resume(self->_revokeTimer);
        objc_destroyWeak(&v11);
        objc_destroyWeak(&v13);
        objc_destroyWeak(&location);
      }
    }

    else
    {
      [(PKFaceIDBannerViewController *)self _cancelRevokeTimer];
    }

    [(PKFaceIDBannerViewController *)self _updateState];
  }
}

- (id)associateWithContext:(id)a3 fromInitialState:(id)a4
{
  v6 = a3;
  [(PKFaceIDBannerViewController *)self setState:a4];
  objc_storeWeak(&self->_context, v6);

  serverBannerState = self->_serverBannerState;

  return serverBannerState;
}

- (void)setState:(id)a3
{
  v5 = a3;
  v9 = v5;
  if (v5)
  {
    v6 = [(PKFaceIDBannerHandleState *)v5 type]== 1;
    v5 = v9;
    if (!v6)
    {
      __break(1u);
      return;
    }
  }

  if (self->_bannerState != v5)
  {
    objc_storeStrong(&self->_bannerState, a3);
    v7 = [(PKFaceIDBannerHandleState *)self->_bannerState glyphState];
    if (v7 == 3)
    {
      v8 = 1;
    }

    else
    {
      if (v7 != 4)
      {
LABEL_10:
        [(PKFaceIDBannerViewController *)self _updateGlyphState];
        if (self->_secureVariantRequired && _os_feature_enabled_impl())
        {
          if (self->_terminalPlaybackState)
          {
            self->_terminalPlaybackStateDirty = 1;
          }

          [(PKFaceIDBannerViewController *)self _updatePlayback];
        }

        goto LABEL_15;
      }

      v8 = 2;
    }

    self->_deferredGlyphState = v8;
    [(PKFaceIDBannerViewController *)self _updateKeyColor];
    goto LABEL_10;
  }

LABEL_15:
}

- (void)setActiveLayoutMode:(int64_t)a3
{
  if (self->_activeLayoutMode != a3)
  {
    v5 = [(PKFaceIDBannerViewController *)self viewIfLoaded];
    v6 = v5;
    if (v5)
    {
      v7 = MEMORY[0x1E69DD250];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __52__PKFaceIDBannerViewController_setActiveLayoutMode___block_invoke;
      v13[3] = &unk_1E8010970;
      v8 = v5;
      v14 = v8;
      [v7 performWithoutAnimation:v13];

      self->_activeLayoutMode = a3;
      v9 = [(PKFaceIDBannerViewController *)self systemApertureElementContext];
      v10 = [v9 requestAlertingAssertion];
      [v10 setAutomaticallyInvalidatable:0];

      [v8 setNeedsLayout];
    }

    else
    {
      self->_activeLayoutMode = a3;
      v11 = [(PKFaceIDBannerViewController *)self systemApertureElementContext];
      v12 = [v11 requestAlertingAssertion];
      [v12 setAutomaticallyInvalidatable:0];
    }
  }
}

- (void)viewWillLayoutSubviewsWithTransitionCoordinator:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (self->_revoked || self->_secureVariantRequired)
  {
    goto LABEL_17;
  }

  state = self->_state;
  if (state != 5)
  {
    if (state == 2)
    {
      goto LABEL_8;
    }

    if (state)
    {
LABEL_9:
      v7 = [(PKFaceIDBannerViewController *)self viewIfLoaded];
      v8 = v7;
      if (v7)
      {
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __80__PKFaceIDBannerViewController_viewWillLayoutSubviewsWithTransitionCoordinator___block_invoke_2;
        v14[3] = &unk_1E80127E0;
        v15 = v7;
        [v5 animateAlongsideTransition:v14 completion:0];
      }

      goto LABEL_17;
    }

    if (!self->_recordingType || self->_recordingState)
    {
LABEL_8:
      if (([(PKFaceIDBannerViewController *)self _appearWithTransitionCoordinator:v4]& 1) != 0)
      {
        goto LABEL_17;
      }

      goto LABEL_9;
    }

LABEL_19:
    self->_state = 6;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __80__PKFaceIDBannerViewController_viewWillLayoutSubviewsWithTransitionCoordinator___block_invoke;
    block[3] = &unk_1E8010970;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
    goto LABEL_9;
  }

  v9 = v4;
  if (self->_state != 5 || (v10 = v9) == 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  v11 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = self;
    _os_log_impl(&dword_1BD026000, v11, OS_LOG_TYPE_DEFAULT, "PKFaceIDBVC (%p): shrinking.", &buf, 0xCu);
  }

  ++self->_transitionAnimationCounter;
  v12 = [(PKFaceIDBannerViewController *)self view];
  objc_initWeak(&location, self);
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v21 = __65__PKFaceIDBannerViewController__shrinkWithTransitionCoordinator___block_invoke;
  v22 = &unk_1E8020758;
  v23 = self;
  v13 = v12;
  v24 = v13;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __65__PKFaceIDBannerViewController__shrinkWithTransitionCoordinator___block_invoke_2;
  v17[3] = &unk_1E8025CE0;
  objc_copyWeak(&v18, &location);
  [v10 animateAlongsideTransition:&buf completion:v17];
  objc_destroyWeak(&v18);

  objc_destroyWeak(&location);
LABEL_17:
}

void __80__PKFaceIDBannerViewController_viewWillLayoutSubviewsWithTransitionCoordinator___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) systemApertureElementContext];
  [v1 setElementNeedsUpdate];
}

- (void)recordingModeChanged:(BOOL)a3
{
  if (self->_recordingType)
  {
    if (!a3)
    {
      [(PKFaceIDBannerViewController *)self _revoke];
    }
  }
}

- (NSArray)recordableConfigurations
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = self;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

- (NSString)activeConfiguration
{
  activePlaybackConfiguration = self->_activePlaybackConfiguration;
  if (activePlaybackConfiguration)
  {
    v3 = activePlaybackConfiguration;
  }

  else
  {
    v3 = [(PKFaceIDBannerViewController *)self preferredConfiguration];
  }

  return v3;
}

- (void)setActiveConfiguration:(id)a3
{
  v6 = a3;
  if (_os_feature_enabled_impl())
  {
    v4 = [v6 copy];
    activePlaybackConfiguration = self->_activePlaybackConfiguration;
    self->_activePlaybackConfiguration = v4;
  }
}

- (NSDictionary)preferredComponentStates
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = [(PKFaceIDBannerViewController *)self flipBookName];
  v7 = v3;
  v4 = FBCStateToString(self->_requestedPlaybackState);
  v8[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  return v5;
}

- (NSDictionary)activeComponentStates
{
  v7[1] = *MEMORY[0x1E69E9840];
  activePlaybackComponentStates = self->_activePlaybackComponentStates;
  if (activePlaybackComponentStates)
  {
    v3 = activePlaybackComponentStates;
  }

  else
  {
    v4 = [(PKFaceIDBannerViewController *)self flipBookName];
    v6 = v4;
    v7[0] = @"Empty";
    v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  }

  return v3;
}

- (void)setActiveComponentStates:(id)a3
{
  v6 = a3;
  if (_os_feature_enabled_impl())
  {
    v4 = [v6 copy];
    activePlaybackComponentStates = self->_activePlaybackComponentStates;
    self->_activePlaybackComponentStates = v4;

    [(PKFaceIDBannerViewController *)self _updateServerBannerState];
    [(PKFaceIDBannerViewController *)self _updatePlayback];
  }
}

- (NSString)configurationName
{
  v2 = *(self + 1104);
  if (v2 < 3)
  {
    return &off_1E8027A40[v2]->isa;
  }

  __break(1u);
  return self;
}

- (NSDictionary)layoutModesToComponentFlipBookDescriptions
{
  v7[2] = *MEMORY[0x1E69E9840];
  v6[1] = &unk_1F3CC81C8;
  v7[0] = MEMORY[0x1E695E0F0];
  v5 = self;
  v6[0] = &unk_1F3CC81B0;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v5 count:1];
  v7[1] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:2];

  return v3;
}

- (BOOL)isSequenceFrom:(id)a3 to:(id)a4 supportedConcurrentlyWithContainerSequence:(id)a5 toContainerState:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v24 = 0;
  FBCStateFromString(v9, &v24);
  v23 = 0;
  FBCStateFromString(v10, &v23);
  v13 = [v11 isEqualToString:@"hidden"];
  if ((v13 & 1) == 0 && ![v11 isEqualToString:@"presented"])
  {
    goto LABEL_30;
  }

  v14 = [v12 isEqualToString:@"hidden"];
  v15 = v14;
  if ((v14 & 1) == 0)
  {
    v14 = [v12 isEqualToString:@"presented"];
    if (!v14)
    {
      goto LABEL_30;
    }
  }

  if (v24 > 2u)
  {
    if (v24 == 3)
    {
      if (v23 > 5u)
      {
        goto LABEL_40;
      }

      v17 = 1 << v23;
      v18 = 21;
    }

    else
    {
      if (v24 != 4)
      {
        if (v24 != 5 || v23 > 5u)
        {
          goto LABEL_40;
        }

        if (((1 << v23) & 0x1C) == 0)
        {
          goto LABEL_31;
        }

        goto LABEL_30;
      }

      if (v23 > 5u)
      {
        goto LABEL_40;
      }

      v17 = 1 << v23;
      v18 = 13;
    }

    if ((v17 & v18) == 0)
    {
      goto LABEL_31;
    }

LABEL_30:
    v16 = 0;
    goto LABEL_39;
  }

  if (!v24)
  {
    if (v23 - 2 >= 4)
    {
      if (v23 < 2u)
      {
        goto LABEL_31;
      }

      goto LABEL_40;
    }

    goto LABEL_30;
  }

  if (v24 == 1)
  {
    if (v23 < 3u)
    {
      goto LABEL_31;
    }

    if (v23 - 3 >= 3)
    {
LABEL_40:
      __break(1u);
      return v14;
    }

    goto LABEL_30;
  }

  if (v24 != 2)
  {
    goto LABEL_40;
  }

  if (v23 - 1 < 4)
  {
LABEL_31:
    if (v15)
    {
      v19 = v23;
    }

    else
    {
      v19 = v24;
    }

    v20 = v19 == 0;
    v21 = (v24 | v23) == 0;
    if (!v15)
    {
      v21 = 1;
    }

    if (v13 == v15)
    {
      v16 = v21;
    }

    else
    {
      v16 = v20;
    }

    goto LABEL_39;
  }

  v16 = 0;
  if (v23 && v23 != 5)
  {
    goto LABEL_40;
  }

LABEL_39:

  LOBYTE(v14) = v16;
  return v14;
}

- (NSArray)states
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __38__PKFaceIDBannerViewController_states__block_invoke;
  v6[3] = &unk_1E8027978;
  v7 = v2;
  v3 = v2;
  FBCStateEnumerate(v6);
  v4 = [v3 copy];

  return v4;
}

void __38__PKFaceIDBannerViewController_states__block_invoke(uint64_t a1, __CFString *a2)
{
  v2 = *(a1 + 32);
  v3 = FBCStateToString(a2);
  [v2 addObject:v3];
}

- (id)allowedNextStatesForState:(id)a3
{
  v13 = 0;
  FBCStateFromString(a3, &v13);
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = v13;
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __58__PKFaceIDBannerViewController_allowedNextStatesForState___block_invoke;
  v11 = &unk_1E8027978;
  v12 = v3;
  v5 = v3;
  FBCStateEnumerateTransitions(v4, &v8);
  v6 = [v5 copy];

  return v6;
}

void __58__PKFaceIDBannerViewController_allowedNextStatesForState___block_invoke(uint64_t a1, __CFString *a2)
{
  v2 = *(a1 + 32);
  v3 = FBCStateToString(a2);
  [v2 addObject:v3];
}

- (BOOL)isSequenceSecure:(id)a3 toState:(id)a4
{
  v5 = a3;
  v6 = a4;
  v12 = 0;
  FBCStateFromString(v5, &v12);
  v11 = 0;
  FBCStateFromString(v6, &v11);
  LOBYTE(v8) = 0;
  if (v12 > 2u)
  {
    if (v12 == 3)
    {
      v9 = v11;
      if (v11 < 6u)
      {
        v10 = 8;
        goto LABEL_17;
      }

      goto LABEL_19;
    }

    if (v12 == 4)
    {
      v9 = v11;
      if (v11 < 6u)
      {
        v10 = 16;
        goto LABEL_17;
      }

      goto LABEL_19;
    }

    if (v12 != 5)
    {
      goto LABEL_19;
    }

LABEL_18:

    return v8 & 1;
  }

  switch(v12)
  {
    case 0u:
      goto LABEL_18;
    case 1u:
      v9 = v11;
      if (v11 < 6u)
      {
        v10 = 4;
        goto LABEL_17;
      }

      break;
    case 2u:
      v9 = v11;
      if (v11 < 6u)
      {
        v10 = 28;
LABEL_17:
        v8 = v10 >> v9;
        goto LABEL_18;
      }

      break;
  }

LABEL_19:
  __break(1u);
  return result;
}

- (double)maximumLatencyToExitLoopingState:(id)a3
{
  v3 = a3;
  v6 = 0;
  FBCStateFromString(v3, &v6);
  if (v6 >= 6uLL)
  {
    __break(1u);
  }

  else
  {
    v5 = dbl_1BE1171F0[v6];

    return v5;
  }

  return result;
}

- (UIView)viewToCapture
{
  [(PKFaceIDBannerViewController *)self loadViewIfNeeded];
  containerView = self->_containerView;

  return containerView;
}

- (CGRect)captureBounds
{
  v2 = [(PKFaceIDBannerViewController *)self referenceView];
  v3 = [v2 SBUISA_systemApertureObstructedAreaLayoutGuide];
  [v3 layoutFrame];
  v5 = v4;
  v7 = v6;
  v9 = v8;

  PKFloatRoundToPixel();
  v11 = v5 + v10;

  v12 = 69.0;
  v13 = v11;
  v14 = v7 + v9;
  v15 = 69.0;
  result.size.height = v15;
  result.size.width = v12;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (void)resetToState:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self->_resettingRecordingState || (self->_resettingRecordingState = 1, self->_inRecordingStateTransition) || ((state = self->_state, state <= 5) ? (v9 = ((1 << state) & 0x36) == 0) : (v9 = 1), !v9))
  {
    __break(1u);
    return;
  }

  v10 = v7;
  v24 = 0;
  FBCStateFromString(v6, &v24);
  v11 = v24;
  if (v24 - 2 <= 2)
  {
    v12 = 0;
    v24 = 1;
LABEL_13:
    v13 = [MEMORY[0x1E69B8890] createForGlyphState:v12];
    v14 = v24;
    goto LABEL_14;
  }

  v12 = 0;
  if (v24 < 2u)
  {
    goto LABEL_13;
  }

  v13 = 0;
  v14 = v24;
  if (v24 == 5)
  {
    v12 = 3;
    goto LABEL_13;
  }

LABEL_14:
  recordingState = self->_recordingState;
  self->_recordingState = v14;
  self->_deferredGlyphState = 0;
  [(PKFaceIDBannerViewController *)self _updateState];
  if (!self->_state && self->_recordingType && (!recordingState && v24 || recordingState && !v24))
  {
    [(PKFaceIDBannerViewController *)self _updatePreferredContentSize];
  }

  [(PKFaceIDBannerViewController *)self setState:v13];
  objc_initWeak(&location, self);
  v16 = dispatch_time(0, 3000000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__PKFaceIDBannerViewController_resetToState_completion___block_invoke;
  block[3] = &unk_1E80279A0;
  objc_copyWeak(&v20, &location);
  v19 = v10;
  v21 = v24;
  v22 = v11;
  v17 = v10;
  dispatch_after(v16, MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

void __56__PKFaceIDBannerViewController_resetToState_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (!WeakRetained)
  {
    goto LABEL_10;
  }

  v4 = *(WeakRetained + 1105);
  if (v4 != *(a1 + 48))
  {
    goto LABEL_19;
  }

  v5 = WeakRetained[248];
  v6 = v5 > 5;
  v7 = (1 << v5) & 0x36;
  if (!v6 && v7 != 0)
  {
    goto LABEL_19;
  }

  v9 = *(a1 + 49);
  if (v9 == v4)
  {
    *(WeakRetained + 1106) = 0;
LABEL_10:
    v10 = *(a1 + 32);
    if (v10)
    {
      (*(v10 + 16))();
    }

    goto LABEL_18;
  }

  if (v9 > 5)
  {
LABEL_18:

    return;
  }

  if (((1 << v9) & 0x18) != 0)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __56__PKFaceIDBannerViewController_resetToState_completion___block_invoke_3;
    v13[3] = &unk_1E8010F08;
    v11 = &v15;
    objc_copyWeak(&v15, (a1 + 40));
    v14 = *(a1 + 32);
    v16 = *(a1 + 49);
    [v3 transitionToState:@"Acquiring" completion:v13];
    v12 = v14;
LABEL_17:

    objc_destroyWeak(v11);
    goto LABEL_18;
  }

  if (v9 == 2)
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __56__PKFaceIDBannerViewController_resetToState_completion___block_invoke_2;
    v17[3] = &unk_1E80111D0;
    v11 = &v19;
    objc_copyWeak(&v19, (a1 + 40));
    v18 = *(a1 + 32);
    [v3 transitionToState:@"Acquiring" completion:v17];
    v12 = v18;
    goto LABEL_17;
  }

LABEL_19:
  __break(1u);
}

void __56__PKFaceIDBannerViewController_resetToState_completion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if (*(WeakRetained + 1105) != 2)
    {
      __break(1u);
      return;
    }

    *(WeakRetained + 1106) = 0;
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = v3;
    (*(v4 + 16))();
    v3 = v5;
  }
}

void __56__PKFaceIDBannerViewController_resetToState_completion___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (!WeakRetained)
  {
    v5 = *(a1 + 32);
    if (v5)
    {
      (*(v5 + 16))();
    }

    goto LABEL_6;
  }

  if (*(WeakRetained + 1105) == 2)
  {
    v4 = FBCStateToString(*(a1 + 48));
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __56__PKFaceIDBannerViewController_resetToState_completion___block_invoke_4;
    v6[3] = &unk_1E8010F08;
    objc_copyWeak(&v8, (a1 + 40));
    v7 = *(a1 + 32);
    v9 = *(a1 + 48);
    [v3 transitionToState:v4 completion:v6];

    objc_destroyWeak(&v8);
LABEL_6:

    return;
  }

  __break(1u);
}

void __56__PKFaceIDBannerViewController_resetToState_completion___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if (WeakRetained[1105] != *(a1 + 48))
    {
      __break(1u);
      return;
    }

    WeakRetained[1106] = 0;
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = v3;
    (*(v4 + 16))();
    v3 = v5;
  }
}

- (void)transitionToState:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self->_inRecordingStateTransition)
  {
    goto LABEL_64;
  }

  v8 = v7;
  v36 = 0;
  FBCStateFromString(v6, &v36);
  if (self->_recordingState == v36 && (self->_recordingStateTransitionTimer || self->_recordingStateTransitionCompletion))
  {
    goto LABEL_64;
  }

  self->_inRecordingStateTransition = 1;
  recordingStateTransitionTimer = self->_recordingStateTransitionTimer;
  if (recordingStateTransitionTimer)
  {
    dispatch_source_cancel(recordingStateTransitionTimer);
    v10 = self->_recordingStateTransitionTimer;
    self->_recordingStateTransitionTimer = 0;
  }

  recordingStateTransitionCompletion = self->_recordingStateTransitionCompletion;
  if (recordingStateTransitionCompletion)
  {
    v12 = _Block_copy(recordingStateTransitionCompletion);
    v13 = self->_recordingStateTransitionCompletion;
    self->_recordingStateTransitionCompletion = 0;

    v12[2](v12);
  }

  recordingState = self->_recordingState;
  v15 = v36;
  self->_recordingState = v36;
  if (recordingState > 2)
  {
    switch(recordingState)
    {
      case 3:
        if (v15 <= 2)
        {
          if (v15 == 1)
          {
            v16 = 66.0;
            goto LABEL_57;
          }

          if (v15)
          {
LABEL_69:
            __break(1u);
            goto LABEL_70;
          }

          goto LABEL_64;
        }

        if (v15 == 3)
        {
          v23 = 0x4062000000000000;
          goto LABEL_60;
        }

        if (v15 != 5)
        {
LABEL_70:
          __break(1u);
          goto LABEL_71;
        }

        break;
      case 4:
        if (v15 <= 3)
        {
          if (v15 != 1)
          {
            __break(1u);
            goto LABEL_69;
          }

          goto LABEL_52;
        }

        if (v15 == 4)
        {
          v23 = 0x405E000000000000;
          goto LABEL_60;
        }

        if (v15 != 5)
        {
          goto LABEL_64;
        }

        break;
      case 5:
        if (v15 <= 1)
        {
          if (!v15)
          {
LABEL_36:
            v16 = 180.0;
LABEL_37:
            v17 = self->_bannerState;
            v18 = v17;
            if (!v17 || ((v19 = [(PKFaceIDBannerHandleState *)v17 glyphState], v19 <= 4) ? (v20 = ((1 << v19) & 0x19) == 0) : (v20 = 1), v20))
            {
              v21 = [MEMORY[0x1E69B8890] createForGlyphState:0];
            }

            else
            {
              v21 = v18;
            }

            v22 = v21;

            goto LABEL_63;
          }

LABEL_52:
          v16 = 44.0;
          goto LABEL_57;
        }

        v16 = 1.0;
        if (v15 != 5)
        {
          goto LABEL_69;
        }

LABEL_54:
        v24 = MEMORY[0x1E69B8890];
        v25 = 3;
        goto LABEL_62;
      default:
        goto LABEL_64;
    }

    v16 = 151.0;
    goto LABEL_54;
  }

  if (!recordingState)
  {
    v16 = 1.0;
    if (!v15)
    {
      goto LABEL_37;
    }

    if (v15 == 1)
    {
      v16 = 180.0;
      goto LABEL_57;
    }

LABEL_64:
    __break(1u);
    goto LABEL_69;
  }

  if (recordingState == 1)
  {
    if (v15 > 1)
    {
      if (v15 == 2)
      {
        v16 = 36.0;
        goto LABEL_50;
      }

      goto LABEL_69;
    }

    if (v15)
    {
      v16 = 1.0;
LABEL_57:
      v24 = MEMORY[0x1E69B8890];
      v25 = 4 * ((recordingState - 5) > 0xFFFFFFFD);
      goto LABEL_62;
    }

    goto LABEL_36;
  }

  if (v15 <= 2)
  {
    if (v15 != 1)
    {
      if (v15 == 2)
      {
        v16 = 102.0;
LABEL_50:
        v24 = MEMORY[0x1E69B8890];
        v25 = 1;
LABEL_62:
        v22 = [v24 createForGlyphState:v25];
LABEL_63:
        self->_recordingState = v36;
        [(PKFaceIDBannerViewController *)self _updateState];
        [(PKFaceIDBannerViewController *)self setState:v22];
        v26 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, MEMORY[0x1E69E96A0]);
        v27 = self->_recordingStateTransitionTimer;
        self->_recordingStateTransitionTimer = v26;

        v28 = self->_recordingStateTransitionTimer;
        v29 = dispatch_time(0, (v16 / 120.0 * 1000000000.0));
        dispatch_source_set_timer(v28, v29, 0xFFFFFFFFFFFFFFFFLL, 0x3F940AuLL);
        objc_initWeak(&location, self);
        v30 = self->_recordingStateTransitionTimer;
        handler[0] = MEMORY[0x1E69E9820];
        handler[1] = 3221225472;
        handler[2] = __61__PKFaceIDBannerViewController_transitionToState_completion___block_invoke;
        handler[3] = &unk_1E8010998;
        objc_copyWeak(&v34, &location);
        dispatch_source_set_event_handler(v30, handler);
        v31 = _Block_copy(v8);
        v32 = self->_recordingStateTransitionCompletion;
        self->_recordingStateTransitionCompletion = v31;

        self->_inRecordingStateTransition = 0;
        dispatch_resume(self->_recordingStateTransitionTimer);
        objc_destroyWeak(&v34);
        objc_destroyWeak(&location);

        return;
      }

      goto LABEL_64;
    }

    goto LABEL_52;
  }

  v16 = 29.0;
  if (v15 == 3)
  {
LABEL_61:
    v24 = MEMORY[0x1E69B8890];
    v25 = 2;
    goto LABEL_62;
  }

  if (v15 == 4)
  {
    v23 = 0x4041000000000000;
LABEL_60:
    v16 = *&v23;
    goto LABEL_61;
  }

LABEL_71:
  __break(1u);
}

void __61__PKFaceIDBannerViewController_transitionToState_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v7 = WeakRetained;
    dispatch_source_cancel(WeakRetained[139]);
    v3 = v7[139];
    v7[139] = 0;

    v2 = v7;
    v4 = v7[140];
    if (v4)
    {
      v5 = _Block_copy(v4);
      v6 = v7[140];
      v7[140] = 0;

      v5[2](v5);
      v2 = v7;
    }
  }
}

- (PKBannerViewControllerPresentable)presentable
{
  WeakRetained = objc_loadWeakRetained(&self->_presentable);

  return WeakRetained;
}

@end