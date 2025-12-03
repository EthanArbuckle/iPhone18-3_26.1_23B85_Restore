@interface PUParallaxImageLayerView
- (PUParallaxImageLayerView)initWithParallaxImageLayer:(id)layer isEditing:(BOOL)editing;
- (void)_layoutWithCurrentLayoutInfo;
- (void)_setFrame:(CGRect)frame forView:(id)view animated:(BOOL)animated;
- (void)_updateLegibilityLayerProperties;
- (void)_updateParallaxBackfillLayerProperties;
- (void)_updateParallaxBackfillMaskingProperties;
- (void)_updateParallaxBottomContentExtensionLayerProperties;
- (void)_updateParallaxHeadroomLayerProperties;
- (void)_updateParallaxImageLayerProperties;
- (void)layoutWithInfo:(id)info;
- (void)setBackfillMaskingEnabled:(BOOL)enabled;
- (void)setBackfillParallaxImageLayer:(id)layer;
- (void)setCurrentLayoutInfo:(id)info;
- (void)setParallaxImageLayer:(id)layer;
@end

@implementation PUParallaxImageLayerView

- (void)_updateLegibilityLayerProperties
{
  currentLayoutInfo = [(PUParallaxImageLayerView *)self currentLayoutInfo];
  wantsLegibilityVignette = [currentLayoutInfo wantsLegibilityVignette];

  if (wantsLegibilityVignette)
  {
    parallaxImageLayer = [(PUParallaxImageLayerView *)self parallaxImageLayer];
    if (self->_legibilityView)
    {
      goto LABEL_6;
    }

    if ([parallaxImageLayer isBackground])
    {
      v5 = [PUPosterLegibilityView alloc];
      v6 = [(PUPosterLegibilityView *)v5 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
      legibilityView = self->_legibilityView;
      self->_legibilityView = v6;

      layer = [(PUPosterLegibilityView *)self->_legibilityView layer];
      [layer setZPosition:1.0];

      [(PUParallaxImageLayerView *)self addSubview:self->_legibilityView];
    }

    if (self->_legibilityView)
    {
LABEL_6:
      currentLayoutInfo2 = [(PUParallaxImageLayerView *)self currentLayoutInfo];
      [currentLayoutInfo2 clockAreaLuminance];
      v10 = [(PUParallaxImageLayerView *)self _isHighKeyBasedOnLuminance:?];

      [(PUPosterLegibilityView *)self->_legibilityView setIsHighKey:v10];
      currentLayoutInfo3 = [(PUParallaxImageLayerView *)self currentLayoutInfo];
      legibilityVignetteVisible = [currentLayoutInfo3 legibilityVignetteVisible];

      [(PUPosterLegibilityView *)self->_legibilityView setRadialVignetteLayerVisible:legibilityVignetteVisible animated:0];
    }

    [(PUParallaxImageLayerView *)self _layoutWithCurrentLayoutInfo];
  }
}

- (void)_updateParallaxBottomContentExtensionLayerProperties
{
  currentLayoutInfo = [(PUParallaxImageLayerView *)self currentLayoutInfo];
  if (![currentLayoutInfo wantsBottomContentExtension])
  {

    goto LABEL_11;
  }

  isEditing = [(PUParallaxImageLayerView *)self isEditing];

  if (isEditing)
  {
LABEL_11:
    [(UIView *)self->_bottomContentExtensionView removeFromSuperview];
    [(PUPosterGradientView *)self->_bottomContentExtensionBlurView removeFromSuperview];
    bottomContentExtensionView = self->_bottomContentExtensionView;
    self->_bottomContentExtensionView = 0;

    bottomContentExtensionBlurView = self->_bottomContentExtensionBlurView;
    self->_bottomContentExtensionBlurView = 0;
    goto LABEL_12;
  }

  parallaxImageLayer = [(PUParallaxImageLayerView *)self parallaxImageLayer];
  v17 = parallaxImageLayer;
  if (!self->_bottomContentExtensionView)
  {
    v6 = objc_alloc_init(MEMORY[0x1E69DD250]);
    v7 = self->_bottomContentExtensionView;
    self->_bottomContentExtensionView = v6;

    layer = [(UIView *)self->_bottomContentExtensionView layer];
    [layer setZPosition:1.0];

    [(PUParallaxImageLayerView *)self addSubview:self->_bottomContentExtensionView];
    [(PUParallaxImageLayerView *)self bringSubviewToFront:self->_bottomContentExtensionView];
    parallaxImageLayer = v17;
  }

  if ([(PUPosterGradientView *)parallaxImageLayer isBackground])
  {
    image = [(PUPosterGradientView *)v17 image];
    layer2 = [(UIView *)self->_bottomContentExtensionView layer];
    [layer2 setContents:image];
  }

  if (!self->_bottomContentExtensionBlurView)
  {
    v11 = [PUPosterGradientView alloc];
    v12 = [(PUPosterGradientView *)v11 initWithFrame:1 appearance:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    v13 = self->_bottomContentExtensionBlurView;
    self->_bottomContentExtensionBlurView = v12;

    layer3 = [(PUPosterGradientView *)self->_bottomContentExtensionBlurView layer];
    [layer3 setZPosition:2.0];

    [(PUParallaxImageLayerView *)self addSubview:self->_bottomContentExtensionBlurView];
    [(PUParallaxImageLayerView *)self bringSubviewToFront:self->_bottomContentExtensionBlurView];
  }

  bottomContentExtensionBlurView = v17;
LABEL_12:
}

- (void)_setFrame:(CGRect)frame forView:(id)view animated:(BOOL)animated
{
  animatedCopy = animated;
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  viewCopy = view;
  [viewCopy frame];
  if ((PXRectApproximatelyEqualToRect() & 1) == 0)
  {
    if (animatedCopy)
    {
      v12 = objc_alloc(MEMORY[0x1E69DD278]);
      currentLayoutInfo = [(PUParallaxImageLayerView *)self currentLayoutInfo];
      [currentLayoutInfo animationDuration];
      v15 = v14;
      currentLayoutInfo2 = [(PUParallaxImageLayerView *)self currentLayoutInfo];
      animationCurve = [currentLayoutInfo2 animationCurve];
      v18 = [v12 initWithDuration:animationCurve timingParameters:v15];

      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __55__PUParallaxImageLayerView__setFrame_forView_animated___block_invoke;
      v19[3] = &unk_1E7B7FF20;
      v20 = viewCopy;
      v21 = x;
      v22 = y;
      v23 = width;
      v24 = height;
      [v18 addAnimations:v19];
      [v18 startAnimation];
    }

    else
    {
      [viewCopy setFrame:{x, y, width, height}];
    }
  }
}

- (void)_layoutWithCurrentLayoutInfo
{
  currentLayoutInfo = [(PUParallaxImageLayerView *)self currentLayoutInfo];
  if (!currentLayoutInfo)
  {
    goto LABEL_33;
  }

  parallaxImageLayer = [(PUParallaxImageLayerView *)self parallaxImageLayer];
  if (parallaxImageLayer)
  {
    contentView = [(PUParallaxImageLayerView *)self contentView];
    backfillMaskView = [(PUParallaxImageLayerView *)self backfillMaskView];
    bottomContentExtensionView = [(PUParallaxImageLayerView *)self bottomContentExtensionView];
    bottomContentExtensionBlurView = [(PUParallaxImageLayerView *)self bottomContentExtensionBlurView];
    [parallaxImageLayer frame];
    [currentLayoutInfo viewFrameForLayerFrame:?];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    [currentLayoutInfo additionalContentTransform];
    v113.origin.x = v10;
    v113.origin.y = v12;
    v113.size.width = v14;
    v113.size.height = v16;
    v114 = CGRectApplyAffineTransform(v113, &v112);
    x = v114.origin.x;
    y = v114.origin.y;
    width = v114.size.width;
    height = v114.size.height;
    -[PUParallaxImageLayerView _setFrame:forView:animated:](self, "_setFrame:forView:animated:", contentView, [currentLayoutInfo animateChanges], v114.origin.x, v114.origin.y, v114.size.width, v114.size.height);
    [(PUParallaxLayerView *)self updatePortalViewGeometryAndEffects];
    [backfillMaskView setFrame:{x, y, width, height}];
    if ([currentLayoutInfo wantsBottomContentExtension])
    {
      v115.origin.x = x;
      v115.origin.y = y;
      v115.size.width = width;
      v115.size.height = height;
      -[PUParallaxImageLayerView _setFrame:forView:animated:](self, "_setFrame:forView:animated:", bottomContentExtensionView, [currentLayoutInfo animateChanges], x, CGRectGetMaxY(v115) + -5.0, width, height);
      if (bottomContentExtensionBlurView)
      {
        window = [(PUParallaxImageLayerView *)self window];
        screen = [window screen];
        if (screen)
        {
          [(PUParallaxImageLayerView *)self window];
          v104 = bottomContentExtensionView;
          v23 = backfillMaskView;
          v24 = contentView;
          v26 = v25 = parallaxImageLayer;
          screen2 = [v26 screen];
          [screen2 scale];

          parallaxImageLayer = v25;
          contentView = v24;
          backfillMaskView = v23;
          bottomContentExtensionView = v104;
        }

        PXRectRoundToPixel();
        v117 = CGRectInset(v116, -1.0, -1.0);
        v28 = v117.origin.x;
        v29 = v117.origin.y;
        v30 = v117.size.width;
        height = v117.size.height;
        v31 = +[PUPosterHeadroomSettings sharedInstance];
        [v31 blurMaskHeight];
        [bottomContentExtensionBlurView setFrame:objc_msgSend(currentLayoutInfo animated:{"animateChanges"), v28, v29 + v32 * -0.5, v30, height}];
        [bottomContentExtensionBlurView setVisibilityAmount:1.0];
        [bottomContentExtensionBlurView setUsesHighKeyStyle:{objc_msgSend(currentLayoutInfo, "styleIsHighKey")}];
        primaryStyleColor = [currentLayoutInfo primaryStyleColor];
        [bottomContentExtensionBlurView setPrimaryGradientColor:primaryStyleColor];

        [bottomContentExtensionBlurView setIsInactive:{objc_msgSend(parallaxImageLayer, "isInactive")}];
      }

      memset(&v112, 0, sizeof(v112));
      CGAffineTransformMakeTranslation(&v112, 0.0, -height);
      memset(&v111, 0, sizeof(v111));
      CGAffineTransformMakeScale(&v111, 1.0, -1.0);
      t1 = v112;
      memset(&v110, 0, sizeof(v110));
      t2 = v111;
      CGAffineTransformConcat(&v110, &t1, &t2);
      v107 = v110;
      layer = [bottomContentExtensionView layer];
      t1 = v107;
      [layer setContentsTransform:&t1];

      v106 = v110;
      layer2 = [bottomContentExtensionBlurView layer];
      t1 = v106;
      [layer2 setContentsTransform:&t1];
    }
  }

  backfillParallaxImageLayer = [(PUParallaxImageLayerView *)self backfillParallaxImageLayer];
  if (backfillParallaxImageLayer)
  {
    backfillView = [(PUParallaxImageLayerView *)self backfillView];
    [backfillParallaxImageLayer frame];
    [currentLayoutInfo viewFrameForLayerFrame:?];
    v39 = v38;
    v41 = v40;
    v43 = v42;
    v45 = v44;
    [currentLayoutInfo additionalContentTransform];
    v118.origin.x = v39;
    v118.origin.y = v41;
    v118.size.width = v43;
    v118.size.height = v45;
    v119 = CGRectApplyAffineTransform(v118, &v112);
    [backfillView setFrame:{v119.origin.x, v119.origin.y, v119.size.width, v119.size.height}];
  }

  headroomGradientView = [(PUParallaxImageLayerView *)self headroomGradientView];
  if (headroomGradientView)
  {
    [currentLayoutInfo headroomFrame];
    [currentLayoutInfo viewFrameForLayerFrame:?];
    v48 = v47;
    v50 = v49;
    v52 = v51;
    v54 = v53;
    [currentLayoutInfo additionalContentTransform];
    v120.origin.x = v48;
    v120.origin.y = v50;
    v120.size.width = v52;
    v120.size.height = v54;
    CGRectApplyAffineTransform(v120, &v112);
    window2 = [(PUParallaxImageLayerView *)self window];
    screen3 = [window2 screen];
    if (screen3)
    {
      window3 = [(PUParallaxImageLayerView *)self window];
      screen4 = [window3 screen];
      [screen4 scale];
    }

    PXRectRoundToPixel();
    v122 = CGRectInset(v121, -1.0, -1.0);
    [headroomGradientView setFrame:objc_msgSend(currentLayoutInfo animated:{"animateChanges"), v122.origin.x, v122.origin.y, v122.size.width, v122.size.height}];
    [currentLayoutInfo headroomVisibilityAmount];
    [headroomGradientView setVisibilityAmount:?];
    [headroomGradientView setUsesHighKeyStyle:{objc_msgSend(currentLayoutInfo, "styleIsHighKey")}];
    primaryStyleColor2 = [currentLayoutInfo primaryStyleColor];
    [headroomGradientView setPrimaryGradientColor:primaryStyleColor2];

    [headroomGradientView setIsInactive:{objc_msgSend(parallaxImageLayer, "isInactive")}];
  }

  legibilityView = [(PUParallaxImageLayerView *)self legibilityView];
  if (legibilityView)
  {
    currentLayoutInfo2 = [(PUParallaxImageLayerView *)self currentLayoutInfo];
    wantsLegibilityVignette = [currentLayoutInfo2 wantsLegibilityVignette];

    if (wantsLegibilityVignette)
    {
      [currentLayoutInfo visibleFrame];
      [currentLayoutInfo viewFrameForLayerFrame:?];
      v64 = v63;
      v66 = v65;
      v68 = v67;
      v70 = v69;
      memset(&v112, 0, sizeof(v112));
      [currentLayoutInfo adaptiveLayoutTransform];
      CGAffineTransformInvert(&v112, &v111);
      memset(&v111, 0, sizeof(v111));
      [currentLayoutInfo additionalContentTransform];
      t1 = v112;
      CGAffineTransformConcat(&v111, &v110, &t1);
      v110 = v111;
      v123.origin.x = v64;
      v123.origin.y = v66;
      v123.size.width = v68;
      v123.size.height = v70;
      v124 = CGRectApplyAffineTransform(v123, &v110);
      [legibilityView setFrame:{v124.origin.x, v124.origin.y, v124.size.width, v124.size.height}];
    }
  }

  [currentLayoutInfo containerFrame];
  canApplyParallax = [currentLayoutInfo canApplyParallax];
  [currentLayoutInfo parallaxAmount];
  if (canApplyParallax)
  {
    [currentLayoutInfo parallaxVector];
  }

  if (([currentLayoutInfo visibilityEffects] & 2) != 0)
  {
    maskLayer = [(PUParallaxImageLayerView *)self maskLayer];
    [currentLayoutInfo settlingEffectFrame];
    v73 = v125.origin.x;
    v74 = v125.origin.y;
    v75 = v125.size.width;
    v76 = v125.size.height;
    if (CGRectIsEmpty(v125))
    {
      [currentLayoutInfo visibilityEdge];
      traitCollection = [(PUParallaxImageLayerView *)self traitCollection];
      layoutDirection = [traitCollection layoutDirection];

      if (layoutDirection == 1)
      {
        PXEdgesFlippedHorizontally();
      }

      [currentLayoutInfo visibleFrame];
      [currentLayoutInfo viewFrameForLayerFrame:?];
      v80 = v79;
      v82 = v81;
      v84 = v83;
      v86 = v85;
      [currentLayoutInfo additionalContentTransform];
      v126.origin.x = v80;
      v126.origin.y = v82;
      v126.size.width = v84;
      v126.size.height = v86;
      v127 = CGRectApplyAffineTransform(v126, &v112);
      CGRectGetHeight(v127);
      PXRectWithOriginAndSize();
      [currentLayoutInfo visibilityAmount];
      v103 = v87;
      PXRectByLinearlyInterpolatingRects();
      PXRectWithSizeAlignedToRectEdges();
      [maskLayer setFrame:v103];
      [currentLayoutInfo visibilityAmount];
      if (PXFloatApproximatelyEqualToFloat())
      {
        v88 = 0;
LABEL_29:
        layer3 = [(PUParallaxImageLayerView *)self layer];
        [layer3 setMask:v88];

        goto LABEL_30;
      }
    }

    else
    {
      [currentLayoutInfo viewFrameForLayerFrame:{v73, v74, v75, v76}];
      v90 = v89;
      v92 = v91;
      v94 = v93;
      v96 = v95;
      [currentLayoutInfo additionalContentTransform];
      v128.origin.x = v90;
      v128.origin.y = v92;
      v128.size.width = v94;
      v128.size.height = v96;
      v129 = CGRectApplyAffineTransform(v128, &v112);
      [maskLayer setFrame:{v129.origin.x, v129.origin.y, v129.size.width, v129.size.height}];
    }

    v88 = maskLayer;
    goto LABEL_29;
  }

LABEL_30:
  if ([currentLayoutInfo visibilityEffects])
  {
    [currentLayoutInfo visibilityAmount];
    v99 = v98;
    contentView2 = [(PUParallaxImageLayerView *)self contentView];
    layer4 = [contentView2 layer];
    *&v102 = v99;
    [layer4 setOpacity:v102];
  }

  [currentLayoutInfo additionalTransform];
  v112 = v105;
  [(PUParallaxImageLayerView *)self setTransform:&v112];
  PXRectWithSize();
  [(PUParallaxImageLayerView *)self setBounds:?];
  PXRectGetCenter();
  [(PUParallaxImageLayerView *)self setCenter:?];

LABEL_33:
}

- (void)setCurrentLayoutInfo:(id)info
{
  infoCopy = info;
  v5 = self->_currentLayoutInfo;
  v6 = v5;
  if (v5 == infoCopy)
  {
  }

  else
  {
    v7 = [(PUParallaxLayerLayoutInfo *)v5 isEqual:?];

    if (!v7)
    {
      objc_storeStrong(&self->_currentLayoutInfo, info);
      [(PUParallaxImageLayerView *)self _updateParallaxBottomContentExtensionLayerProperties];
      [(PUParallaxImageLayerView *)self _updateLegibilityLayerProperties];
      [(PUParallaxImageLayerView *)self _layoutWithCurrentLayoutInfo];
    }
  }
}

- (void)_updateParallaxHeadroomLayerProperties
{
  parallaxImageLayer = [(PUParallaxImageLayerView *)self parallaxImageLayer];
  identifier = [parallaxImageLayer identifier];
  if (PFParallaxLayerIDIsBackground())
  {
    v5 = 1;
  }

  else
  {
    backfillParallaxImageLayer = [(PUParallaxImageLayerView *)self backfillParallaxImageLayer];
    identifier2 = [backfillParallaxImageLayer identifier];
    v5 = PFParallaxLayerIDIsBackground();
  }

  IsPortraitHeadroomEnabled = PFPosterIsPortraitHeadroomEnabled();
  headroomGradientView = self->_headroomGradientView;
  if (IsPortraitHeadroomEnabled || !v5)
  {
    [(PUPosterGradientView *)self->_headroomGradientView removeFromSuperview];
    v14 = self->_headroomGradientView;
    self->_headroomGradientView = 0;
  }

  else
  {
    if (!headroomGradientView)
    {
      v10 = [PUPosterGradientView alloc];
      v11 = [(PUPosterGradientView *)v10 initWithFrame:0 appearance:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
      v12 = self->_headroomGradientView;
      self->_headroomGradientView = v11;

      layer = [(PUPosterGradientView *)self->_headroomGradientView layer];
      [layer setZPosition:2.0];

      [(PUParallaxImageLayerView *)self addSubview:self->_headroomGradientView];
      headroomGradientView = self->_headroomGradientView;
    }

    [(PUParallaxImageLayerView *)self bringSubviewToFront:headroomGradientView];
  }
}

- (void)_updateParallaxBackfillMaskingProperties
{
  if ([(PUParallaxImageLayerView *)self isEditing])
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __68__PUParallaxImageLayerView__updateParallaxBackfillMaskingProperties__block_invoke;
    v3[3] = &unk_1E7B80DD0;
    v3[4] = self;
    [MEMORY[0x1E69DD250] performWithoutAnimation:v3];
  }
}

uint64_t __68__PUParallaxImageLayerView__updateParallaxBackfillMaskingProperties__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) backfillMaskingEnabled] && (objc_msgSend(*(*(a1 + 32) + 448), "layer"), v2 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v2, "contents"), v3 = objc_claimAutoreleasedReturnValue(), v3, v2, v3))
  {
    if (!*(*(a1 + 32) + 472))
    {
      v4 = objc_alloc_init(MEMORY[0x1E69DD250]);
      v5 = *(a1 + 32);
      v6 = *(v5 + 472);
      *(v5 + 472) = v4;

      v7 = [*(*(a1 + 32) + 472) layer];
      [v7 setZPosition:0.0];

      v8 = +[PUSuggestionsSettings sharedInstance];
      v9 = [v8 debugBackfillCompositing];

      if (v9)
      {
        v10 = [MEMORY[0x1E69DC888] greenColor];
        v11 = [v10 CGColor];
        v12 = [*(*(a1 + 32) + 472) layer];
        [v12 setBackgroundColor:v11];

        v13 = 0;
      }

      else
      {
        v18 = [MEMORY[0x1E69DC888] blackColor];
        v19 = [v18 CGColor];
        v20 = [*(*(a1 + 32) + 472) layer];
        [v20 setBackgroundColor:v19];

        v13 = *MEMORY[0x1E69798E8];
      }

      v21 = [*(*(a1 + 32) + 472) layer];
      [v21 setCompositingFilter:v13];

      [*(a1 + 32) addSubview:*(*(a1 + 32) + 472)];
    }
  }

  else
  {
    [*(*(a1 + 32) + 472) removeFromSuperview];
    v14 = *(a1 + 32);
    v15 = *(v14 + 472);
    *(v14 + 472) = 0;
  }

  v16 = *(a1 + 32);

  return [v16 _layoutWithCurrentLayoutInfo];
}

- (void)_updateParallaxBackfillLayerProperties
{
  if (-[PUParallaxImageLayerView isEditing](self, "isEditing") || [MEMORY[0x1E69C0938] deviceSupportsLandscapeConfiguration])
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __66__PUParallaxImageLayerView__updateParallaxBackfillLayerProperties__block_invoke;
    v3[3] = &unk_1E7B80DD0;
    v3[4] = self;
    [MEMORY[0x1E69DD250] performWithoutAnimation:v3];
  }
}

void __66__PUParallaxImageLayerView__updateParallaxBackfillLayerProperties__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) backfillParallaxImageLayer];
  v3 = *(*(a1 + 32) + 464);
  v11 = v2;
  if (v2)
  {
    if (!v3)
    {
      v4 = objc_alloc_init(MEMORY[0x1E69DD250]);
      v5 = *(a1 + 32);
      v6 = *(v5 + 464);
      *(v5 + 464) = v4;

      v7 = [*(*(a1 + 32) + 464) layer];
      [v7 setZPosition:-1.0];

      [*(a1 + 32) addSubview:*(*(a1 + 32) + 464)];
      v2 = v11;
    }

    v8 = [v2 image];
    v9 = [*(*(a1 + 32) + 464) layer];
    [v9 setContents:v8];
  }

  else
  {
    [v3 removeFromSuperview];
    v10 = *(a1 + 32);
    v9 = *(v10 + 464);
    *(v10 + 464) = 0;
  }

  [*(a1 + 32) _layoutWithCurrentLayoutInfo];
}

- (void)_updateParallaxImageLayerProperties
{
  parallaxImageLayer = [(PUParallaxImageLayerView *)self parallaxImageLayer];
  v4 = MEMORY[0x1E69DD250];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __63__PUParallaxImageLayerView__updateParallaxImageLayerProperties__block_invoke;
  v6[3] = &unk_1E7B80C38;
  v6[4] = self;
  v7 = parallaxImageLayer;
  v5 = parallaxImageLayer;
  [v4 performWithoutAnimation:v6];
}

uint64_t __63__PUParallaxImageLayerView__updateParallaxImageLayerProperties__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 448);
  if (!v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E69DD250]);
    v4 = *(a1 + 32);
    v5 = *(v4 + 448);
    *(v4 + 448) = v3;

    v6 = [*(*(a1 + 32) + 448) layer];
    [v6 setZPosition:1.0];

    [*(a1 + 32) addSubview:*(*(a1 + 32) + 448)];
    v2 = *(*(a1 + 32) + 448);
  }

  v7 = [v2 layer];
  v8 = [v7 contents];
  v9 = (v8 == 0) ^ ([*(a1 + 40) image] != 0);

  v10 = [*(a1 + 40) image];
  v11 = [*(*(a1 + 32) + 448) layer];
  [v11 setContents:v10];

  result = [*(a1 + 32) _layoutWithCurrentLayoutInfo];
  if ((v9 & 1) == 0)
  {
    result = [*(a1 + 32) backfillMaskingEnabled];
    if (result)
    {
      v13 = *(a1 + 32);

      return [v13 _updateParallaxBackfillMaskingProperties];
    }
  }

  return result;
}

- (void)layoutWithInfo:(id)info
{
  v5.receiver = self;
  v5.super_class = PUParallaxImageLayerView;
  infoCopy = info;
  [(PUParallaxLayerView *)&v5 layoutWithInfo:infoCopy];
  [(PUParallaxImageLayerView *)self setCurrentLayoutInfo:infoCopy, v5.receiver, v5.super_class];
}

- (void)setBackfillMaskingEnabled:(BOOL)enabled
{
  if (self->_backfillMaskingEnabled == !enabled)
  {
    self->_backfillMaskingEnabled = enabled;
    [(PUParallaxImageLayerView *)self _updateParallaxBackfillMaskingProperties];
  }
}

- (void)setBackfillParallaxImageLayer:(id)layer
{
  layerCopy = layer;
  v5 = self->_backfillParallaxImageLayer;
  v6 = v5;
  if (v5 == layerCopy)
  {

    goto LABEL_6;
  }

  v7 = [(PFParallaxImageLayer *)v5 isEqual:layerCopy];

  v8 = layerCopy;
  if (layerCopy && (v7 & 1) == 0)
  {
    objc_storeStrong(&self->_backfillParallaxImageLayer, layer);
    [(PUParallaxImageLayerView *)self _updateParallaxBackfillLayerProperties];
    [(PUParallaxImageLayerView *)self _updateParallaxHeadroomLayerProperties];
LABEL_6:
    v8 = layerCopy;
  }
}

- (void)setParallaxImageLayer:(id)layer
{
  layerCopy = layer;
  v5 = self->_parallaxImageLayer;
  v6 = v5;
  if (v5 == layerCopy)
  {
  }

  else
  {
    v7 = [(PFParallaxImageLayer *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_parallaxImageLayer, layer);
      [(PUParallaxImageLayerView *)self _updateParallaxImageLayerProperties];
      [(PUParallaxImageLayerView *)self _updateParallaxHeadroomLayerProperties];
    }
  }
}

- (PUParallaxImageLayerView)initWithParallaxImageLayer:(id)layer isEditing:(BOOL)editing
{
  editingCopy = editing;
  v21[3] = *MEMORY[0x1E69E9840];
  layerCopy = layer;
  v19.receiver = self;
  v19.super_class = PUParallaxImageLayerView;
  v8 = [(PUParallaxImageLayerView *)&v19 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_parallaxImageLayer, layer);
    v9->_editing = editingCopy;
    if (editingCopy)
    {
      layer = [MEMORY[0x1E6979398] layer];
      blackColor = [MEMORY[0x1E69DC888] blackColor];
      -[CALayer setBackgroundColor:](layer, "setBackgroundColor:", [blackColor CGColor]);

      v20[0] = @"bounds";
      null = [MEMORY[0x1E695DFB0] null];
      v21[0] = null;
      v20[1] = @"position";
      null2 = [MEMORY[0x1E695DFB0] null];
      v21[1] = null2;
      v20[2] = @"frame";
      null3 = [MEMORY[0x1E695DFB0] null];
      v21[2] = null3;
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:3];
      [(CALayer *)layer setActions:v15];

      layer2 = [(PUParallaxImageLayerView *)v9 layer];
      [layer2 setMask:layer];

      maskLayer = v9->_maskLayer;
      v9->_maskLayer = layer;
    }

    [(PUParallaxImageLayerView *)v9 _updateParallaxImageLayerProperties];
    [(PUParallaxImageLayerView *)v9 _updateParallaxHeadroomLayerProperties];
  }

  return v9;
}

@end