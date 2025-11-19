@interface PUParallaxImageLayerView
- (PUParallaxImageLayerView)initWithParallaxImageLayer:(id)a3 isEditing:(BOOL)a4;
- (void)_layoutWithCurrentLayoutInfo;
- (void)_setFrame:(CGRect)a3 forView:(id)a4 animated:(BOOL)a5;
- (void)_updateLegibilityLayerProperties;
- (void)_updateParallaxBackfillLayerProperties;
- (void)_updateParallaxBackfillMaskingProperties;
- (void)_updateParallaxBottomContentExtensionLayerProperties;
- (void)_updateParallaxHeadroomLayerProperties;
- (void)_updateParallaxImageLayerProperties;
- (void)layoutWithInfo:(id)a3;
- (void)setBackfillMaskingEnabled:(BOOL)a3;
- (void)setBackfillParallaxImageLayer:(id)a3;
- (void)setCurrentLayoutInfo:(id)a3;
- (void)setParallaxImageLayer:(id)a3;
@end

@implementation PUParallaxImageLayerView

- (void)_updateLegibilityLayerProperties
{
  v3 = [(PUParallaxImageLayerView *)self currentLayoutInfo];
  v4 = [v3 wantsLegibilityVignette];

  if (v4)
  {
    v13 = [(PUParallaxImageLayerView *)self parallaxImageLayer];
    if (self->_legibilityView)
    {
      goto LABEL_6;
    }

    if ([v13 isBackground])
    {
      v5 = [PUPosterLegibilityView alloc];
      v6 = [(PUPosterLegibilityView *)v5 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
      legibilityView = self->_legibilityView;
      self->_legibilityView = v6;

      v8 = [(PUPosterLegibilityView *)self->_legibilityView layer];
      [v8 setZPosition:1.0];

      [(PUParallaxImageLayerView *)self addSubview:self->_legibilityView];
    }

    if (self->_legibilityView)
    {
LABEL_6:
      v9 = [(PUParallaxImageLayerView *)self currentLayoutInfo];
      [v9 clockAreaLuminance];
      v10 = [(PUParallaxImageLayerView *)self _isHighKeyBasedOnLuminance:?];

      [(PUPosterLegibilityView *)self->_legibilityView setIsHighKey:v10];
      v11 = [(PUParallaxImageLayerView *)self currentLayoutInfo];
      v12 = [v11 legibilityVignetteVisible];

      [(PUPosterLegibilityView *)self->_legibilityView setRadialVignetteLayerVisible:v12 animated:0];
    }

    [(PUParallaxImageLayerView *)self _layoutWithCurrentLayoutInfo];
  }
}

- (void)_updateParallaxBottomContentExtensionLayerProperties
{
  v3 = [(PUParallaxImageLayerView *)self currentLayoutInfo];
  if (![v3 wantsBottomContentExtension])
  {

    goto LABEL_11;
  }

  v4 = [(PUParallaxImageLayerView *)self isEditing];

  if (v4)
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

  v5 = [(PUParallaxImageLayerView *)self parallaxImageLayer];
  v17 = v5;
  if (!self->_bottomContentExtensionView)
  {
    v6 = objc_alloc_init(MEMORY[0x1E69DD250]);
    v7 = self->_bottomContentExtensionView;
    self->_bottomContentExtensionView = v6;

    v8 = [(UIView *)self->_bottomContentExtensionView layer];
    [v8 setZPosition:1.0];

    [(PUParallaxImageLayerView *)self addSubview:self->_bottomContentExtensionView];
    [(PUParallaxImageLayerView *)self bringSubviewToFront:self->_bottomContentExtensionView];
    v5 = v17;
  }

  if ([(PUPosterGradientView *)v5 isBackground])
  {
    v9 = [(PUPosterGradientView *)v17 image];
    v10 = [(UIView *)self->_bottomContentExtensionView layer];
    [v10 setContents:v9];
  }

  if (!self->_bottomContentExtensionBlurView)
  {
    v11 = [PUPosterGradientView alloc];
    v12 = [(PUPosterGradientView *)v11 initWithFrame:1 appearance:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    v13 = self->_bottomContentExtensionBlurView;
    self->_bottomContentExtensionBlurView = v12;

    v14 = [(PUPosterGradientView *)self->_bottomContentExtensionBlurView layer];
    [v14 setZPosition:2.0];

    [(PUParallaxImageLayerView *)self addSubview:self->_bottomContentExtensionBlurView];
    [(PUParallaxImageLayerView *)self bringSubviewToFront:self->_bottomContentExtensionBlurView];
  }

  bottomContentExtensionBlurView = v17;
LABEL_12:
}

- (void)_setFrame:(CGRect)a3 forView:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v11 = a4;
  [v11 frame];
  if ((PXRectApproximatelyEqualToRect() & 1) == 0)
  {
    if (v5)
    {
      v12 = objc_alloc(MEMORY[0x1E69DD278]);
      v13 = [(PUParallaxImageLayerView *)self currentLayoutInfo];
      [v13 animationDuration];
      v15 = v14;
      v16 = [(PUParallaxImageLayerView *)self currentLayoutInfo];
      v17 = [v16 animationCurve];
      v18 = [v12 initWithDuration:v17 timingParameters:v15];

      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __55__PUParallaxImageLayerView__setFrame_forView_animated___block_invoke;
      v19[3] = &unk_1E7B7FF20;
      v20 = v11;
      v21 = x;
      v22 = y;
      v23 = width;
      v24 = height;
      [v18 addAnimations:v19];
      [v18 startAnimation];
    }

    else
    {
      [v11 setFrame:{x, y, width, height}];
    }
  }
}

- (void)_layoutWithCurrentLayoutInfo
{
  v3 = [(PUParallaxImageLayerView *)self currentLayoutInfo];
  if (!v3)
  {
    goto LABEL_33;
  }

  v4 = [(PUParallaxImageLayerView *)self parallaxImageLayer];
  if (v4)
  {
    v5 = [(PUParallaxImageLayerView *)self contentView];
    v6 = [(PUParallaxImageLayerView *)self backfillMaskView];
    v7 = [(PUParallaxImageLayerView *)self bottomContentExtensionView];
    v8 = [(PUParallaxImageLayerView *)self bottomContentExtensionBlurView];
    [v4 frame];
    [v3 viewFrameForLayerFrame:?];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    [v3 additionalContentTransform];
    v113.origin.x = v10;
    v113.origin.y = v12;
    v113.size.width = v14;
    v113.size.height = v16;
    v114 = CGRectApplyAffineTransform(v113, &v112);
    x = v114.origin.x;
    y = v114.origin.y;
    width = v114.size.width;
    height = v114.size.height;
    -[PUParallaxImageLayerView _setFrame:forView:animated:](self, "_setFrame:forView:animated:", v5, [v3 animateChanges], v114.origin.x, v114.origin.y, v114.size.width, v114.size.height);
    [(PUParallaxLayerView *)self updatePortalViewGeometryAndEffects];
    [v6 setFrame:{x, y, width, height}];
    if ([v3 wantsBottomContentExtension])
    {
      v115.origin.x = x;
      v115.origin.y = y;
      v115.size.width = width;
      v115.size.height = height;
      -[PUParallaxImageLayerView _setFrame:forView:animated:](self, "_setFrame:forView:animated:", v7, [v3 animateChanges], x, CGRectGetMaxY(v115) + -5.0, width, height);
      if (v8)
      {
        v21 = [(PUParallaxImageLayerView *)self window];
        v22 = [v21 screen];
        if (v22)
        {
          [(PUParallaxImageLayerView *)self window];
          v104 = v7;
          v23 = v6;
          v24 = v5;
          v26 = v25 = v4;
          v27 = [v26 screen];
          [v27 scale];

          v4 = v25;
          v5 = v24;
          v6 = v23;
          v7 = v104;
        }

        PXRectRoundToPixel();
        v117 = CGRectInset(v116, -1.0, -1.0);
        v28 = v117.origin.x;
        v29 = v117.origin.y;
        v30 = v117.size.width;
        height = v117.size.height;
        v31 = +[PUPosterHeadroomSettings sharedInstance];
        [v31 blurMaskHeight];
        [v8 setFrame:objc_msgSend(v3 animated:{"animateChanges"), v28, v29 + v32 * -0.5, v30, height}];
        [v8 setVisibilityAmount:1.0];
        [v8 setUsesHighKeyStyle:{objc_msgSend(v3, "styleIsHighKey")}];
        v33 = [v3 primaryStyleColor];
        [v8 setPrimaryGradientColor:v33];

        [v8 setIsInactive:{objc_msgSend(v4, "isInactive")}];
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
      v34 = [v7 layer];
      t1 = v107;
      [v34 setContentsTransform:&t1];

      v106 = v110;
      v35 = [v8 layer];
      t1 = v106;
      [v35 setContentsTransform:&t1];
    }
  }

  v36 = [(PUParallaxImageLayerView *)self backfillParallaxImageLayer];
  if (v36)
  {
    v37 = [(PUParallaxImageLayerView *)self backfillView];
    [v36 frame];
    [v3 viewFrameForLayerFrame:?];
    v39 = v38;
    v41 = v40;
    v43 = v42;
    v45 = v44;
    [v3 additionalContentTransform];
    v118.origin.x = v39;
    v118.origin.y = v41;
    v118.size.width = v43;
    v118.size.height = v45;
    v119 = CGRectApplyAffineTransform(v118, &v112);
    [v37 setFrame:{v119.origin.x, v119.origin.y, v119.size.width, v119.size.height}];
  }

  v46 = [(PUParallaxImageLayerView *)self headroomGradientView];
  if (v46)
  {
    [v3 headroomFrame];
    [v3 viewFrameForLayerFrame:?];
    v48 = v47;
    v50 = v49;
    v52 = v51;
    v54 = v53;
    [v3 additionalContentTransform];
    v120.origin.x = v48;
    v120.origin.y = v50;
    v120.size.width = v52;
    v120.size.height = v54;
    CGRectApplyAffineTransform(v120, &v112);
    v55 = [(PUParallaxImageLayerView *)self window];
    v56 = [v55 screen];
    if (v56)
    {
      v57 = [(PUParallaxImageLayerView *)self window];
      v58 = [v57 screen];
      [v58 scale];
    }

    PXRectRoundToPixel();
    v122 = CGRectInset(v121, -1.0, -1.0);
    [v46 setFrame:objc_msgSend(v3 animated:{"animateChanges"), v122.origin.x, v122.origin.y, v122.size.width, v122.size.height}];
    [v3 headroomVisibilityAmount];
    [v46 setVisibilityAmount:?];
    [v46 setUsesHighKeyStyle:{objc_msgSend(v3, "styleIsHighKey")}];
    v59 = [v3 primaryStyleColor];
    [v46 setPrimaryGradientColor:v59];

    [v46 setIsInactive:{objc_msgSend(v4, "isInactive")}];
  }

  v60 = [(PUParallaxImageLayerView *)self legibilityView];
  if (v60)
  {
    v61 = [(PUParallaxImageLayerView *)self currentLayoutInfo];
    v62 = [v61 wantsLegibilityVignette];

    if (v62)
    {
      [v3 visibleFrame];
      [v3 viewFrameForLayerFrame:?];
      v64 = v63;
      v66 = v65;
      v68 = v67;
      v70 = v69;
      memset(&v112, 0, sizeof(v112));
      [v3 adaptiveLayoutTransform];
      CGAffineTransformInvert(&v112, &v111);
      memset(&v111, 0, sizeof(v111));
      [v3 additionalContentTransform];
      t1 = v112;
      CGAffineTransformConcat(&v111, &v110, &t1);
      v110 = v111;
      v123.origin.x = v64;
      v123.origin.y = v66;
      v123.size.width = v68;
      v123.size.height = v70;
      v124 = CGRectApplyAffineTransform(v123, &v110);
      [v60 setFrame:{v124.origin.x, v124.origin.y, v124.size.width, v124.size.height}];
    }
  }

  [v3 containerFrame];
  v71 = [v3 canApplyParallax];
  [v3 parallaxAmount];
  if (v71)
  {
    [v3 parallaxVector];
  }

  if (([v3 visibilityEffects] & 2) != 0)
  {
    v72 = [(PUParallaxImageLayerView *)self maskLayer];
    [v3 settlingEffectFrame];
    v73 = v125.origin.x;
    v74 = v125.origin.y;
    v75 = v125.size.width;
    v76 = v125.size.height;
    if (CGRectIsEmpty(v125))
    {
      [v3 visibilityEdge];
      v77 = [(PUParallaxImageLayerView *)self traitCollection];
      v78 = [v77 layoutDirection];

      if (v78 == 1)
      {
        PXEdgesFlippedHorizontally();
      }

      [v3 visibleFrame];
      [v3 viewFrameForLayerFrame:?];
      v80 = v79;
      v82 = v81;
      v84 = v83;
      v86 = v85;
      [v3 additionalContentTransform];
      v126.origin.x = v80;
      v126.origin.y = v82;
      v126.size.width = v84;
      v126.size.height = v86;
      v127 = CGRectApplyAffineTransform(v126, &v112);
      CGRectGetHeight(v127);
      PXRectWithOriginAndSize();
      [v3 visibilityAmount];
      v103 = v87;
      PXRectByLinearlyInterpolatingRects();
      PXRectWithSizeAlignedToRectEdges();
      [v72 setFrame:v103];
      [v3 visibilityAmount];
      if (PXFloatApproximatelyEqualToFloat())
      {
        v88 = 0;
LABEL_29:
        v97 = [(PUParallaxImageLayerView *)self layer];
        [v97 setMask:v88];

        goto LABEL_30;
      }
    }

    else
    {
      [v3 viewFrameForLayerFrame:{v73, v74, v75, v76}];
      v90 = v89;
      v92 = v91;
      v94 = v93;
      v96 = v95;
      [v3 additionalContentTransform];
      v128.origin.x = v90;
      v128.origin.y = v92;
      v128.size.width = v94;
      v128.size.height = v96;
      v129 = CGRectApplyAffineTransform(v128, &v112);
      [v72 setFrame:{v129.origin.x, v129.origin.y, v129.size.width, v129.size.height}];
    }

    v88 = v72;
    goto LABEL_29;
  }

LABEL_30:
  if ([v3 visibilityEffects])
  {
    [v3 visibilityAmount];
    v99 = v98;
    v100 = [(PUParallaxImageLayerView *)self contentView];
    v101 = [v100 layer];
    *&v102 = v99;
    [v101 setOpacity:v102];
  }

  [v3 additionalTransform];
  v112 = v105;
  [(PUParallaxImageLayerView *)self setTransform:&v112];
  PXRectWithSize();
  [(PUParallaxImageLayerView *)self setBounds:?];
  PXRectGetCenter();
  [(PUParallaxImageLayerView *)self setCenter:?];

LABEL_33:
}

- (void)setCurrentLayoutInfo:(id)a3
{
  v8 = a3;
  v5 = self->_currentLayoutInfo;
  v6 = v5;
  if (v5 == v8)
  {
  }

  else
  {
    v7 = [(PUParallaxLayerLayoutInfo *)v5 isEqual:?];

    if (!v7)
    {
      objc_storeStrong(&self->_currentLayoutInfo, a3);
      [(PUParallaxImageLayerView *)self _updateParallaxBottomContentExtensionLayerProperties];
      [(PUParallaxImageLayerView *)self _updateLegibilityLayerProperties];
      [(PUParallaxImageLayerView *)self _layoutWithCurrentLayoutInfo];
    }
  }
}

- (void)_updateParallaxHeadroomLayerProperties
{
  v3 = [(PUParallaxImageLayerView *)self parallaxImageLayer];
  v4 = [v3 identifier];
  if (PFParallaxLayerIDIsBackground())
  {
    v5 = 1;
  }

  else
  {
    v6 = [(PUParallaxImageLayerView *)self backfillParallaxImageLayer];
    v7 = [v6 identifier];
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

      v13 = [(PUPosterGradientView *)self->_headroomGradientView layer];
      [v13 setZPosition:2.0];

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
  v3 = [(PUParallaxImageLayerView *)self parallaxImageLayer];
  v4 = MEMORY[0x1E69DD250];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __63__PUParallaxImageLayerView__updateParallaxImageLayerProperties__block_invoke;
  v6[3] = &unk_1E7B80C38;
  v6[4] = self;
  v7 = v3;
  v5 = v3;
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

- (void)layoutWithInfo:(id)a3
{
  v5.receiver = self;
  v5.super_class = PUParallaxImageLayerView;
  v4 = a3;
  [(PUParallaxLayerView *)&v5 layoutWithInfo:v4];
  [(PUParallaxImageLayerView *)self setCurrentLayoutInfo:v4, v5.receiver, v5.super_class];
}

- (void)setBackfillMaskingEnabled:(BOOL)a3
{
  if (self->_backfillMaskingEnabled == !a3)
  {
    self->_backfillMaskingEnabled = a3;
    [(PUParallaxImageLayerView *)self _updateParallaxBackfillMaskingProperties];
  }
}

- (void)setBackfillParallaxImageLayer:(id)a3
{
  v9 = a3;
  v5 = self->_backfillParallaxImageLayer;
  v6 = v5;
  if (v5 == v9)
  {

    goto LABEL_6;
  }

  v7 = [(PFParallaxImageLayer *)v5 isEqual:v9];

  v8 = v9;
  if (v9 && (v7 & 1) == 0)
  {
    objc_storeStrong(&self->_backfillParallaxImageLayer, a3);
    [(PUParallaxImageLayerView *)self _updateParallaxBackfillLayerProperties];
    [(PUParallaxImageLayerView *)self _updateParallaxHeadroomLayerProperties];
LABEL_6:
    v8 = v9;
  }
}

- (void)setParallaxImageLayer:(id)a3
{
  v8 = a3;
  v5 = self->_parallaxImageLayer;
  v6 = v5;
  if (v5 == v8)
  {
  }

  else
  {
    v7 = [(PFParallaxImageLayer *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_parallaxImageLayer, a3);
      [(PUParallaxImageLayerView *)self _updateParallaxImageLayerProperties];
      [(PUParallaxImageLayerView *)self _updateParallaxHeadroomLayerProperties];
    }
  }
}

- (PUParallaxImageLayerView)initWithParallaxImageLayer:(id)a3 isEditing:(BOOL)a4
{
  v4 = a4;
  v21[3] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v19.receiver = self;
  v19.super_class = PUParallaxImageLayerView;
  v8 = [(PUParallaxImageLayerView *)&v19 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_parallaxImageLayer, a3);
    v9->_editing = v4;
    if (v4)
    {
      v10 = [MEMORY[0x1E6979398] layer];
      v11 = [MEMORY[0x1E69DC888] blackColor];
      -[CALayer setBackgroundColor:](v10, "setBackgroundColor:", [v11 CGColor]);

      v20[0] = @"bounds";
      v12 = [MEMORY[0x1E695DFB0] null];
      v21[0] = v12;
      v20[1] = @"position";
      v13 = [MEMORY[0x1E695DFB0] null];
      v21[1] = v13;
      v20[2] = @"frame";
      v14 = [MEMORY[0x1E695DFB0] null];
      v21[2] = v14;
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:3];
      [(CALayer *)v10 setActions:v15];

      v16 = [(PUParallaxImageLayerView *)v9 layer];
      [v16 setMask:v10];

      maskLayer = v9->_maskLayer;
      v9->_maskLayer = v10;
    }

    [(PUParallaxImageLayerView *)v9 _updateParallaxImageLayerProperties];
    [(PUParallaxImageLayerView *)v9 _updateParallaxHeadroomLayerProperties];
  }

  return v9;
}

@end