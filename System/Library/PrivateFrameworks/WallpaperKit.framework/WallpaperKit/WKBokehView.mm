@interface WKBokehView
+ (id)thumbnailImageWithBokehInput:(id)input;
- (CATransform3D)_contentTransform;
- (WKBokehView)initWithBokehWallpaperInput:(id)input;
- (double)_parallaxTransform;
- (void)_disableAnimation;
- (void)_screenDidUpdate:(id)update;
- (void)_updateRenderForCurrentBokehWallpaperInput;
- (void)layoutSubviews;
- (void)setAnimationEnabled:(BOOL)enabled;
- (void)setBokehWallpaperInput:(id)input;
@end

@implementation WKBokehView

- (WKBokehView)initWithBokehWallpaperInput:(id)input
{
  inputCopy = input;
  v25.receiver = self;
  v25.super_class = WKBokehView;
  v5 = [(WKBokehView *)&v25 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (v5)
  {
    v7 = [inputCopy copy];
    bokehWallpaperInput = v5->_bokehWallpaperInput;
    v5->_bokehWallpaperInput = v7;

    v9 = objc_alloc_init(WKBokehMotionFilter);
    motionFilter = v5->_motionFilter;
    v5->_motionFilter = v9;

    v11 = objc_alloc_init(MEMORY[0x1E6979380]);
    contentLayer = v5->_contentLayer;
    v5->_contentLayer = v11;

    layer = [(WKBokehView *)v5 layer];
    [layer addSublayer:v5->_contentLayer];

    displayLink = v5->_displayLink;
    v5->_displayLink = 0;

    [(WKBokehView *)v5 _disableAnimation];
    [(WKBokehView *)v5 setAutoresizingMask:18];
    thumbnailSeed = [(WKBokehWallpaperInput *)v5->_bokehWallpaperInput thumbnailSeed];
    [(WKBokehWallpaperInput *)v5->_bokehWallpaperInput bubbleScale];
    v16 = v15;
    bubbleCount = [(WKBokehWallpaperInput *)v5->_bokehWallpaperInput bubbleCount];
    memset(&v23, 0, sizeof(v23));
    CATransform3DMakeScale(&v23, v16, v16, 1.0);
    v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
    bubbles = v5->_bubbles;
    v5->_bubbles = v18;

    for (; bubbleCount; --bubbleCount)
    {
      v20 = [[WKBokehBubble alloc] initWithSeed:?];
      v22 = v23;
      [v20 setTransform:&v22];
      [(CAGradientLayer *)v5->_contentLayer addSublayer:v20];
      [(NSMutableArray *)v5->_bubbles addObject:v20];
    }

    [(WKBokehView *)&v5->super.super.super.isa _updateRenderForCurrentBokehWallpaperInput];
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(WKBokehView *)v5 setBackgroundColor:clearColor];
  }

  return v5;
}

- (void)_disableAnimation
{
  v9 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v2 = WKLogForCategory(0);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136446210;
      v8 = "[WKBokehView _disableAnimation]";
      _os_log_impl(&dword_1E4A23000, v2, OS_LOG_TYPE_DEFAULT, "%{public}s: start.", &v7, 0xCu);
    }

    [*(self + 432) invalidate];
    v3 = *(self + 432);
    *(self + 432) = 0;

    [(WKBokehMotionFilter *)*(self + 408) pauseDeviceMotionUpdates];
    [*(self + 416) convertTime:0 fromLayer:CACurrentMediaTime()];
    v5 = v4;
    [*(self + 416) setSpeed:0.0];
    [*(self + 416) setTimeOffset:v5];
    __32__WKBokehView__disableAnimation__block_invoke();
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)setBokehWallpaperInput:(id)input
{
  inputCopy = input;
  if (([inputCopy isEqual:self->_bokehWallpaperInput] & 1) == 0)
  {
    v4 = [inputCopy copy];
    bokehWallpaperInput = self->_bokehWallpaperInput;
    self->_bokehWallpaperInput = v4;

    [(WKBokehView *)&self->super.super.super.isa _updateRenderForCurrentBokehWallpaperInput];
  }
}

- (void)setAnimationEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v14 = *MEMORY[0x1E69E9840];
  v5 = WKLogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v11 = "[WKBokehView setAnimationEnabled:]";
    v12 = 1024;
    v13 = enabledCopy;
    _os_log_impl(&dword_1E4A23000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: start %d.", buf, 0x12u);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __35__WKBokehView_setAnimationEnabled___block_invoke;
  aBlock[3] = &__block_descriptor_33_e5_v8__0l;
  v9 = enabledCopy;
  v6 = _Block_copy(aBlock);
  if ((((self->_displayLink == 0) ^ enabledCopy) & 1) == 0)
  {
    if (enabledCopy)
    {
      [(WKBokehView *)self _enableAnimation];
    }

    else
    {
      [(WKBokehView *)self _disableAnimation];
    }
  }

  v6[2](v6);

  v7 = *MEMORY[0x1E69E9840];
}

void __35__WKBokehView_setAnimationEnabled___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = WKLogForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 136446466;
    v6 = "[WKBokehView setAnimationEnabled:]_block_invoke";
    v7 = 1024;
    v8 = v3;
    _os_log_impl(&dword_1E4A23000, v2, OS_LOG_TYPE_DEFAULT, "%{public}s: complete %d.", &v5, 0x12u);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void __31__WKBokehView__enableAnimation__block_invoke()
{
  v4 = *MEMORY[0x1E69E9840];
  v0 = WKLogForCategory(0);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    v2 = 136446210;
    v3 = "[WKBokehView _enableAnimation]_block_invoke";
    _os_log_impl(&dword_1E4A23000, v0, OS_LOG_TYPE_DEFAULT, "%{public}s: complete.", &v2, 0xCu);
  }

  v1 = *MEMORY[0x1E69E9840];
}

void __32__WKBokehView__disableAnimation__block_invoke()
{
  v4 = *MEMORY[0x1E69E9840];
  v0 = WKLogForCategory(0);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    v2 = 136446210;
    v3 = "[WKBokehView _disableAnimation]_block_invoke";
    _os_log_impl(&dword_1E4A23000, v0, OS_LOG_TYPE_DEFAULT, "%{public}s: complete.", &v2, 0xCu);
  }

  v1 = *MEMORY[0x1E69E9840];
}

- (void)_screenDidUpdate:(id)update
{
  *&v4 = *&[(WKBokehMotionFilter *)self->_motionFilter updatePosition];

  [(WKBokehView *)self setNeedsLayout];
}

- (CATransform3D)_contentTransform
{
  if (result)
  {
    [(CATransform3D *)result bounds];
    v5 = MEMORY[0x1E69792E8];
    if (v3 >= v4)
    {
      v6 = v3;
    }

    else
    {
      v6 = v4;
    }

    v7 = *(MEMORY[0x1E69792E8] + 64);
    v8 = *(MEMORY[0x1E69792E8] + 80);
    *(a2 + 64) = v7;
    *(a2 + 80) = v8;
    v9 = v5[6];
    v10 = v5[7];
    *(a2 + 96) = v9;
    *(a2 + 112) = v10;
    v11 = *v5;
    v12 = v5[1];
    *a2 = *v5;
    *(a2 + 16) = v12;
    v13 = v5[2];
    v14 = v5[3];
    *(a2 + 32) = v13;
    *(a2 + 48) = v14;
    *&v24.m31 = v7;
    *&v24.m33 = v8;
    *&v24.m41 = v9;
    *&v24.m43 = v10;
    *&v24.m11 = v11;
    *&v24.m13 = v12;
    *&v24.m21 = v13;
    *&v24.m23 = v14;
    CATransform3DTranslate(a2, &v24, v3 * 0.5, v4 * 0.5, 0.0);
    v15 = *(a2 + 80);
    *&v23.m31 = *(a2 + 64);
    *&v23.m33 = v15;
    v16 = *(a2 + 112);
    *&v23.m41 = *(a2 + 96);
    *&v23.m43 = v16;
    v17 = *(a2 + 16);
    *&v23.m11 = *a2;
    *&v23.m13 = v17;
    v18 = *(a2 + 48);
    *&v23.m21 = *(a2 + 32);
    *&v23.m23 = v18;
    result = CATransform3DScale(&v24, &v23, v6 * 0.5, v6 * 0.5, 1.0);
    v19 = *&v24.m33;
    *(a2 + 64) = *&v24.m31;
    *(a2 + 80) = v19;
    v20 = *&v24.m43;
    *(a2 + 96) = *&v24.m41;
    *(a2 + 112) = v20;
    v21 = *&v24.m13;
    *a2 = *&v24.m11;
    *(a2 + 16) = v21;
    v22 = *&v24.m23;
    *(a2 + 32) = *&v24.m21;
    *(a2 + 48) = v22;
  }

  else
  {
    *(a2 + 96) = 0u;
    *(a2 + 112) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 80) = 0u;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

- (double)_parallaxTransform
{
  if (self)
  {
    v2 = MEMORY[0x1E69792E8];
    v3 = *(MEMORY[0x1E69792E8] + 96);
    v4 = *(MEMORY[0x1E69792E8] + 16);
    *a2 = *MEMORY[0x1E69792E8];
    a2[1] = v4;
    v6 = v2[3];
    v5 = v2[4];
    a2[2] = v2[2];
    a2[3] = v6;
    a2[4] = v5;
    a2[5] = xmmword_1E4AADD70;
    result = 0.375;
    a2[6] = v3;
    a2[7] = xmmword_1E4AADD80;
  }

  else
  {
    result = 0.0;
    a2[6] = 0u;
    a2[7] = 0u;
    a2[4] = 0u;
    a2[5] = 0u;
    a2[2] = 0u;
    a2[3] = 0u;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

- (void)layoutSubviews
{
  v17.receiver = self;
  v17.super_class = WKBokehView;
  [(WKBokehView *)&v17 layoutSubviews];
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  memset(&v16, 0, sizeof(v16));
  [(WKBokehView *)self _contentTransform];
  [(CAGradientLayer *)self->_contentLayer setBounds:-1.0, -1.0, 2.0, 2.0];
  contentLayer = self->_contentLayer;
  v15 = v16;
  [(CAGradientLayer *)contentLayer setTransform:&v15];
  bokehWallpaperInput = [(WKBokehView *)self bokehWallpaperInput];
  [bokehWallpaperInput parallaxMultiplier];
  v6 = v5;

  position = [(WKBokehMotionFilter *)self->_motionFilter position];
  v9 = *(MEMORY[0x1E69792E8] + 48);
  *&v13.m21 = *(MEMORY[0x1E69792E8] + 32);
  *&v13.m23 = v9;
  v10 = *(MEMORY[0x1E69792E8] + 64);
  v11 = *(MEMORY[0x1E69792E8] + 16);
  *&v13.m11 = *MEMORY[0x1E69792E8];
  *&v13.m13 = v11;
  *&v13.m31 = v10;
  *&v13.m33 = xmmword_1E4AADD70;
  *&v13.m41 = *(MEMORY[0x1E69792E8] + 96);
  *&v13.m43 = xmmword_1E4AADD80;
  CATransform3DTranslate(&v15, &v13, v6 * position, v6 * v8, 0.0);
  *&v13.m21 = *&v15.m21;
  *&v13.m23 = *&v15.m23;
  *&v13.m31 = *&v15.m31;
  *&v13.m11 = *&v15.m11;
  *&v13.m13 = *&v15.m13;
  v12 = self->_contentLayer;
  v14 = *&v15.m41;
  [(CAGradientLayer *)v12 setSublayerTransform:&v15, *&v15.m11, *&v15.m12, *&v15.m13, *&v15.m14, *&v15.m21, *&v15.m22, *&v15.m23, *&v15.m24, *&v15.m31, *&v15.m32];
  [MEMORY[0x1E6979518] commit];
}

+ (id)thumbnailImageWithBokehInput:(id)input
{
  v58 = *MEMORY[0x1E69E9840];
  inputCopy = input;
  v4 = WKLogForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf.m11) = 136446210;
    *(&buf.m11 + 4) = "+[WKBokehView thumbnailImageWithBokehInput:]";
    _os_log_impl(&dword_1E4A23000, v4, OS_LOG_TYPE_DEFAULT, "%{public}s: start.", &buf, 0xCu);
  }

  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  fixedCoordinateSpace = [mainScreen fixedCoordinateSpace];
  [fixedCoordinateSpace bounds];
  v8 = v7;
  v10 = v9;

  v11 = [[WKBokehView alloc] initWithBokehWallpaperInput:inputCopy];
  p_isa = &v11->super.super.super.isa;
  v13 = v8 / 3.0;
  v14 = v10 / 3.0;
  if (v13 >= v14)
  {
    v15 = v13;
  }

  else
  {
    v15 = v14;
  }

  [(WKBokehView *)v11 setFrame:0.0, 0.0, v15, v15];
  v41 = v14;
  v42 = v13;
  if (p_isa)
  {
    v16 = *(MEMORY[0x1E69792E8] + 32);
    v17 = *(MEMORY[0x1E69792E8] + 48);
    v18 = *MEMORY[0x1E69792E8];
    v52 = *(MEMORY[0x1E69792E8] + 16);
    v53 = v16;
    v19 = *(MEMORY[0x1E69792E8] + 64);
    v54 = v17;
    v55 = v19;
    v20 = 0.375;
    v21 = -1.0;
    v50 = *(MEMORY[0x1E69792E8] + 96);
    v51 = v18;
    v22 = -0.25;
  }

  else
  {
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v51 = 0u;
    v22 = 0.0;
    v21 = 0.0;
    v20 = 0.0;
    v50 = 0uLL;
  }

  v23 = p_isa[52];
  v24 = *(MEMORY[0x1E69792E8] + 80);
  *&buf.m31 = *(MEMORY[0x1E69792E8] + 64);
  *&buf.m33 = v24;
  v25 = *(MEMORY[0x1E69792E8] + 112);
  *&buf.m41 = *(MEMORY[0x1E69792E8] + 96);
  *&buf.m43 = v25;
  v26 = *(MEMORY[0x1E69792E8] + 16);
  *&buf.m11 = *MEMORY[0x1E69792E8];
  *&buf.m13 = v26;
  v27 = *(MEMORY[0x1E69792E8] + 48);
  *&buf.m21 = *(MEMORY[0x1E69792E8] + 32);
  *&buf.m23 = v27;
  [v23 setSublayerTransform:&buf];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  sublayers = [p_isa[52] sublayers];
  v29 = [sublayers countByEnumeratingWithState:&v46 objects:v56 count:16];
  if (v29)
  {
    v30 = *v47;
    do
    {
      for (i = 0; i != v29; ++i)
      {
        if (*v47 != v30)
        {
          objc_enumerationMutation(sublayers);
        }

        v32 = *(*(&v46 + 1) + 8 * i);
        [v32 zPosition];
        v34 = v33;
        [v32 frame];
        *&v45.m21 = v53;
        *&v45.m23 = v54;
        *&v45.m31 = v55;
        *&v45.m11 = v51;
        *&v45.m13 = v52;
        memset(&buf, 0, sizeof(buf));
        v45.m33 = v22;
        v45.m34 = v21;
        *&v45.m41 = v50;
        v45.m43 = v20;
        v45.m44 = 0.0;
        CATransform3DTranslate(&buf, &v45, 0.0, 0.0, v34);
        v45 = buf;
        CA_CGRectApplyTransform();
        [v32 setFrame:?];
        LODWORD(v35) = 1.0;
        [v32 setOpacity:v35];
      }

      v29 = [sublayers countByEnumeratingWithState:&v46 objects:v56 count:16];
    }

    while (v29);
  }

  v36 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithSize:{v42, v41}];
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __44__WKBokehView_thumbnailImageWithBokehInput___block_invoke_22;
  v43[3] = &unk_1E8767020;
  v37 = p_isa;
  v44 = v37;
  v38 = [v36 imageWithActions:v43];

  __44__WKBokehView_thumbnailImageWithBokehInput___block_invoke();
  v39 = *MEMORY[0x1E69E9840];

  return v38;
}

void __44__WKBokehView_thumbnailImageWithBokehInput___block_invoke()
{
  v4 = *MEMORY[0x1E69E9840];
  v0 = WKLogForCategory(0);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    v2 = 136446210;
    v3 = "+[WKBokehView thumbnailImageWithBokehInput:]_block_invoke";
    _os_log_impl(&dword_1E4A23000, v0, OS_LOG_TYPE_DEFAULT, "%{public}s: complete.", &v2, 0xCu);
  }

  v1 = *MEMORY[0x1E69E9840];
}

void __44__WKBokehView_thumbnailImageWithBokehInput___block_invoke_22(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v2 layer];
  v4 = [v3 CGContext];

  [v5 renderInContext:v4];
}

- (void)_updateRenderForCurrentBokehWallpaperInput
{
  v23 = *MEMORY[0x1E69E9840];
  if (self)
  {
    bokehWallpaperInput = [self bokehWallpaperInput];
    backgroundColors = [bokehWallpaperInput backgroundColors];
    v4 = [backgroundColors na_map:&__block_literal_global_9];

    [self[52] setColors:v4];
    bokehWallpaperInput2 = [self bokehWallpaperInput];
    bubbleColors = [bokehWallpaperInput2 bubbleColors];

    bokehWallpaperInput3 = [self bokehWallpaperInput];
    thumbnailSeed = [bokehWallpaperInput3 thumbnailSeed];

    v21 = thumbnailSeed;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v9 = self[53];
    v10 = [v9 countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v18;
      do
      {
        v13 = 0;
        do
        {
          if (*v18 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v17 + 1) + 8 * v13);
          v15 = [bubbleColors objectAtIndex:{vcvtms_u32_f32((vcvts_n_f32_s32(rand_r(&v21), 0x1FuLL) * objc_msgSend(bubbleColors, "count", v17)) + 0.0)}];
          [v14 setContentsMultiplyColor:{objc_msgSend(v15, "cgColor")}];

          ++v13;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v17 objects:v22 count:16];
      }

      while (v11);
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

@end