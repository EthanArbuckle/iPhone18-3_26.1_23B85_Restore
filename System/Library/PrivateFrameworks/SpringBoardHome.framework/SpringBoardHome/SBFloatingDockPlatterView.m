@interface SBFloatingDockPlatterView
- (SBFloatingDockPlatterView)initWithCoder:(id)a3;
- (SBFloatingDockPlatterView)initWithFrame:(CGRect)a3;
- (UIEdgeInsets)_shadowInsetsForMetrics:(id)a3;
- (UIEdgeInsets)_shadowOutsetsForMetrics:(id)a3;
- (UIEdgeInsets)shadowOutsets;
- (UIEdgeInsets)shadowOutsetsForBounds:(CGRect)a3;
- (double)_maxShadowViewAlpha;
- (id)_metricsForBounds:(CGRect)a3;
- (id)_shadowImageForMetrics:(id)a3 previousMetrics:(id)a4;
- (id)_shadowImageViewForMetrics:(id)a3 previousMetrics:(id)a4;
- (void)_updateBackgroundUserInterfaceStyle;
- (void)layoutSubviews;
- (void)setHasShadow:(BOOL)a3;
- (void)setMaximumContinuousCornerRadius:(double)a3;
- (void)setReferenceHeight:(double)a3;
@end

@implementation SBFloatingDockPlatterView

- (SBFloatingDockPlatterView)initWithFrame:(CGRect)a3
{
  v11[2] = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = SBFloatingDockPlatterView;
  v3 = [(SBFloatingDockPlatterView *)&v10 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_hasShadow = 0;
    v5 = objc_opt_self();
    v11[0] = v5;
    v6 = objc_opt_self();
    v11[1] = v6;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
    v8 = [(SBFloatingDockPlatterView *)v4 registerForTraitChanges:v7 withTarget:v4 action:sel__updateBackgroundUserInterfaceStyle];

    [(SBFloatingDockPlatterView *)v4 _updateBackgroundUserInterfaceStyle];
    [(SBFloatingDockPlatterView *)v4 setAccessibilityIdentifier:@"dock-platter-view"];
  }

  return v4;
}

- (void)setReferenceHeight:(double)a3
{
  if (self->_referenceHeight != a3)
  {
    self->_referenceHeight = a3;
    [(SBFloatingDockPlatterView *)self setNeedsLayout];
  }
}

- (void)setMaximumContinuousCornerRadius:(double)a3
{
  if (self->_maximumContinuousCornerRadius != a3)
  {
    self->_maximumContinuousCornerRadius = a3;
    [(SBFloatingDockPlatterView *)self setNeedsLayout];
  }
}

- (void)setHasShadow:(BOOL)a3
{
  if (self->_hasShadow != a3)
  {
    self->_hasShadow = a3;
    v5 = [(SBFloatingDockPlatterView *)self shadowView];
    [(SBFloatingDockPlatterView *)self _maxShadowViewAlpha];
    [v5 setAlpha:?];
  }
}

- (UIEdgeInsets)shadowOutsets
{
  v3 = [(SBFloatingDockPlatterView *)self metrics];
  [(SBFloatingDockPlatterView *)self _shadowOutsetsForMetrics:v3];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.right = v15;
  result.bottom = v14;
  result.left = v13;
  result.top = v12;
  return result;
}

- (UIEdgeInsets)shadowOutsetsForBounds:(CGRect)a3
{
  v4 = [(SBFloatingDockPlatterView *)self _metricsForBounds:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(SBFloatingDockPlatterView *)self _shadowOutsetsForMetrics:v4];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.right = v16;
  result.bottom = v15;
  result.left = v14;
  result.top = v13;
  return result;
}

- (void)layoutSubviews
{
  v69.receiver = self;
  v69.super_class = SBFloatingDockPlatterView;
  [(SBFloatingDockPlatterView *)&v69 layoutSubviews];
  [(SBFloatingDockPlatterView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if (BSFloatGreaterThanFloat() && BSFloatGreaterThanFloat())
  {
    v11 = [(SBFloatingDockPlatterView *)self metrics];
    v12 = [(SBFloatingDockPlatterView *)self _metricsForBounds:v4, v6, v8, v10];
    [v12 continuousCornerRadius];
    if (!BSFloatGreaterThanFloat())
    {
LABEL_14:

      return;
    }

    [(SBFloatingDockPlatterView *)self setMetrics:v12];
    [v12 continuousCornerRadius];
    v14 = v13;
    [(SBFloatingDockPlatterView *)self _shadowInsetsForMetrics:v12];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v49 = v21;
    v53 = v8 - (v17 + v21);
    v54 = v6 + v15;
    v51 = v4 + v17;
    v52 = v10 - (v15 + v19);
    v22 = [(SBFloatingDockPlatterView *)self shadowView];
    if (v11)
    {
      [v11 continuousCornerRadius];
      if (BSFloatEqualToFloat())
      {
        [v22 setFrame:{v51, v54, v53, v52}];
        v23 = v14;
LABEL_13:
        [(SBFloatingDockPlatterView *)self _setContinuousCornerRadius:v23];

        goto LABEL_14;
      }
    }

    v24 = [(SBFloatingDockPlatterView *)self _shadowImageViewForMetrics:v12 previousMetrics:v11];
    [(SBFloatingDockPlatterView *)self setShadowView:v24];
    if (v22)
    {
      if ([MEMORY[0x1E69DD250] _isInAnimationBlock])
      {
        v25 = MEMORY[0x1E69DD250];
        v62[0] = MEMORY[0x1E69E9820];
        v62[1] = 3221225472;
        v62[2] = __43__SBFloatingDockPlatterView_layoutSubviews__block_invoke;
        v62[3] = &unk_1E808A9C0;
        v62[4] = self;
        v26 = v24;
        v63 = v26;
        v48 = v11;
        v64 = v48;
        v65 = v16;
        v66 = v18;
        v67 = v20;
        v68 = v49;
        [v25 performWithoutAnimation:v62];
        v27 = MEMORY[0x1E698E7D0];
        v28 = [MEMORY[0x1E69DD250] _currentAnimationSettings];
        v29 = [v27 factoryWithSettings:v28];

        LODWORD(v30) = 0.25;
        LODWORD(v31) = 0.75;
        LODWORD(v32) = 0.25;
        LODWORD(v33) = 0.75;
        v34 = [MEMORY[0x1E69793D0] functionWithControlPoints:v30 :v31 :v32 :v33];
        v50 = [v29 factoryWithTimingFunction:v34];

        v35 = MEMORY[0x1E698E7D0];
        v59[0] = MEMORY[0x1E69E9820];
        v59[1] = 3221225472;
        v59[2] = __43__SBFloatingDockPlatterView_layoutSubviews__block_invoke_2;
        v59[3] = &unk_1E8088F18;
        v60 = v26;
        v61 = self;
        [v35 animateWithFactory:v50 actions:v59];
        LODWORD(v36) = 0.75;
        LODWORD(v37) = 0.25;
        LODWORD(v38) = 0.75;
        LODWORD(v39) = 0.25;
        v40 = [MEMORY[0x1E69793D0] functionWithControlPoints:v36 :v37 :v38 :v39];
        v41 = [v29 factoryWithTimingFunction:v40];

        v42 = MEMORY[0x1E698E7D0];
        v57[0] = MEMORY[0x1E69E9820];
        v57[1] = 3221225472;
        v57[2] = __43__SBFloatingDockPlatterView_layoutSubviews__block_invoke_3;
        v57[3] = &unk_1E8088C90;
        v58 = v22;
        v55[0] = MEMORY[0x1E69E9820];
        v55[1] = 3221225472;
        v55[2] = __43__SBFloatingDockPlatterView_layoutSubviews__block_invoke_4;
        v55[3] = &unk_1E8088F40;
        v43 = v58;
        v56 = v43;
        [v42 animateWithFactory:v41 actions:v57 completion:v55];
        [(SBFloatingDockPlatterView *)self _shadowInsetsForMetrics:v48];
        [v43 setFrame:{v4 + v47, v6 + v44, v8 - (v47 + v45), v10 - (v44 + v46)}];

LABEL_12:
        [v24 setFrame:{v51, v54, v53, v52}];

        v23 = v14;
        goto LABEL_13;
      }

      [v22 removeFromSuperview];
    }

    [(SBFloatingDockPlatterView *)self addSubview:v24];
    [(SBFloatingDockPlatterView *)self _maxShadowViewAlpha];
    [v24 setAlpha:?];
    goto LABEL_12;
  }
}

uint64_t __43__SBFloatingDockPlatterView_layoutSubviews__block_invoke(uint64_t a1)
{
  [*(a1 + 32) addSubview:*(a1 + 40)];
  [*(a1 + 40) setAlpha:0.0];
  [*(a1 + 48) bounds];
  v2 = *(a1 + 56);
  v3 = *(a1 + 64);
  v5 = v4 + v3;
  v7 = v2 + v6;
  v9 = v8 - (v3 + *(a1 + 80));
  v11 = v10 - (v2 + *(a1 + 72));
  v12 = *(a1 + 40);

  return [v12 setFrame:{v5, v7, v9, v11}];
}

uint64_t __43__SBFloatingDockPlatterView_layoutSubviews__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  [*(a1 + 40) _maxShadowViewAlpha];

  return [v1 setAlpha:?];
}

- (double)_maxShadowViewAlpha
{
  v2 = [(SBFloatingDockPlatterView *)self hasShadow];
  result = 0.0;
  if (v2)
  {
    return 1.0;
  }

  return result;
}

- (id)_metricsForBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(SBFloatingDockPlatterView *)self referenceHeight];
  v8 = [(SBFloatingDockPlatterView *)self traitCollection];
  [v8 displayScale];

  [(SBFloatingDockPlatterView *)self maximumContinuousCornerRadius];
  UIFloorToScale();
  v10 = v9;
  UIFloorToScale();
  v12 = v11;
  UIRoundToScale();
  v14 = [[_SBFloatingDockPlatterMetrics alloc] initWithBounds:x continuousCornerRadius:y shadowRadius:width shadowYOffset:height, v10, v12, v13];

  return v14;
}

- (id)_shadowImageViewForMetrics:(id)a3 previousMetrics:(id)a4
{
  v6 = MEMORY[0x1E69DCAE0];
  v7 = a4;
  v8 = a3;
  v9 = [v6 alloc];
  v10 = [v9 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  v11 = [(SBFloatingDockPlatterView *)self _shadowImageForMetrics:v8 previousMetrics:v7];

  [v10 setImage:v11];
  v12 = [v10 layer];
  [v12 setAllowsHitTesting:0];

  return v10;
}

- (id)_shadowImageForMetrics:(id)a3 previousMetrics:(id)a4
{
  v56 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = __68__SBFloatingDockPlatterView__shadowImageForMetrics_previousMetrics___block_invoke(v7, v6);
  v9 = [(SBFloatingDockPlatterView *)self shadowImages];
  v10 = [v9 objectForKey:v8];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v41 = v8;
    [v6 continuousCornerRadius];
    v14 = v13;
    UICeilToViewScale();
    v16 = v15;
    [v6 shadowRadius];
    v18 = v17;
    v19 = v16 + v17;
    [(SBFloatingDockPlatterView *)self _shadowOutsetsForMetrics:v6];
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v28 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithSize:{v19 * 2.0 + 1.0, v19 * 2.0 + 1.0}];
    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 3221225472;
    v47[2] = __68__SBFloatingDockPlatterView__shadowImageForMetrics_previousMetrics___block_invoke_2;
    v47[3] = &unk_1E808A9E8;
    v49 = v21;
    v50 = v23;
    v51 = v25;
    v52 = v27;
    v53 = v14;
    v48 = v6;
    v54 = v18;
    v40 = v28;
    v29 = [v28 imageWithActions:v47];
    v12 = [v29 resizableImageWithCapInsets:{v19, v19, v19, v19}];

    v42 = v7;
    if (v7)
    {
      v31 = __68__SBFloatingDockPlatterView__shadowImageForMetrics_previousMetrics___block_invoke(v30, v7);
    }

    else
    {
      v31 = 0;
    }

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v32 = [v9 allKeys];
    v33 = [v32 countByEnumeratingWithState:&v43 objects:v55 count:16];
    if (v33)
    {
      v34 = v33;
      v35 = *v44;
      do
      {
        for (i = 0; i != v34; ++i)
        {
          if (*v44 != v35)
          {
            objc_enumerationMutation(v32);
          }

          v37 = *(*(&v43 + 1) + 8 * i);
          if (!v31 || ([*(*(&v43 + 1) + 8 * i) isEqualToString:v31] & 1) == 0)
          {
            [v9 removeObjectForKey:v37];
          }
        }

        v34 = [v32 countByEnumeratingWithState:&v43 objects:v55 count:16];
      }

      while (v34);
    }

    if (!v9)
    {
      v9 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:2];
      objc_storeStrong((v39 + 448), v9);
    }

    v8 = v41;
    [v9 setObject:v12 forKey:v41];

    v7 = v42;
  }

  return v12;
}

uint64_t __68__SBFloatingDockPlatterView__shadowImageForMetrics_previousMetrics___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = a2;
  [v3 continuousCornerRadius];
  v5 = v4;
  [v3 shadowRadius];
  v7 = v6;
  [v3 shadowYOffset];
  v9 = v8;

  return [v2 stringWithFormat:@"%f.%f.%f", v5, v7, v9];
}

void __68__SBFloatingDockPlatterView__shadowImageForMetrics_previousMetrics___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 CGContext];
  v5 = [v3 format];

  [v5 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v19 = [MEMORY[0x1E69DC728] bezierPathWithRoundedRect:v7 + *(a1 + 48) cornerRadius:{v9 + *(a1 + 40), v11 - (*(a1 + 48) + *(a1 + 64)), v13 - (*(a1 + 40) + *(a1 + 56)), *(a1 + 72)}];
  CGContextSaveGState(v4);
  [*(a1 + 32) shadowYOffset];
  v15 = v14;
  v16 = *(a1 + 80);
  v17 = [MEMORY[0x1E69DC888] blackColor];
  v18 = [v17 CGColor];
  v21.width = 0.0;
  v21.height = v15;
  CGContextSetShadowWithColor(v4, v21, v16, v18);

  [v19 fillWithBlendMode:0 alpha:0.15];
  CGContextRestoreGState(v4);
  [v19 fillWithBlendMode:16 alpha:1.0];
}

- (UIEdgeInsets)_shadowOutsetsForMetrics:(id)a3
{
  v3 = a3;
  [v3 shadowRadius];
  v5 = v4;
  [v3 shadowYOffset];
  v7 = v5 - v6;
  [v3 shadowRadius];
  v9 = v8;
  [v3 shadowRadius];
  v11 = v10;
  [v3 shadowYOffset];
  v13 = v11 + v12;
  [v3 shadowRadius];
  v15 = v14;

  v16 = v7;
  v17 = v9;
  v18 = v13;
  v19 = v15;
  result.right = v19;
  result.bottom = v18;
  result.left = v17;
  result.top = v16;
  return result;
}

- (UIEdgeInsets)_shadowInsetsForMetrics:(id)a3
{
  [(SBFloatingDockPlatterView *)self _shadowOutsetsForMetrics:a3];
  v4 = -v3;
  v6 = -v5;
  v8 = -v7;
  v10 = -v9;
  result.right = v10;
  result.bottom = v8;
  result.left = v6;
  result.top = v4;
  return result;
}

- (void)_updateBackgroundUserInterfaceStyle
{
  if (SBHPerformanceFlagEnabled(5))
  {
    v3 = [MEMORY[0x1E69DC888] systemGrayColor];
    [(SBFloatingDockPlatterView *)self setBackgroundColor:?];
  }

  else
  {
    v3 = [(SBFloatingDockPlatterView *)self traitCollection];
    -[UIView sbh_applyDockGlassWithUserInterfaceStyle:](self, "sbh_applyDockGlassWithUserInterfaceStyle:", [MEMORY[0x1E69DD1B8] sbh_dockGlassUserInterfaceStyleFromTraitCollection:?]);
  }
}

- (SBFloatingDockPlatterView)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E695DF30];
  v5 = *MEMORY[0x1E695D930];
  v6 = a3;
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [v4 raise:v5 format:{@"%@ does not support unarchiving from a nib.", v8}];

  v11.receiver = self;
  v11.super_class = SBFloatingDockPlatterView;
  v9 = [(SBFloatingDockPlatterView *)&v11 initWithCoder:v6];

  return v9;
}

@end