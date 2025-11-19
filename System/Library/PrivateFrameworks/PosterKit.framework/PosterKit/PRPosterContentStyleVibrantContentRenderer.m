@interface PRPosterContentStyleVibrantContentRenderer
- (CGRect)contentBoundingRect;
- (CGRect)styleBoundingRect;
- (PRPosterContentStyleVibrantContentRenderer)initWithVibrancyView:(id)a3 contentView:(id)a4 contentBoundingRect:(CGRect)a5 styleBoundingRect:(CGRect)a6 initialAppearance:(id)a7;
- (id)privateStyleForStyle:(id)a3;
- (void)removeGradientIfNeeded;
- (void)renderDiscreteColorStyle:(id)a3;
- (void)renderGradientStyle:(id)a3;
- (void)renderLUTStyle:(id)a3;
- (void)renderVibrantMaterialStyle:(id)a3;
- (void)renderVibrantMonochromeStyle:(id)a3;
- (void)setContentBoundingRect:(CGRect)a3;
- (void)setStyleBoundingRect:(CGRect)a3;
- (void)updateForVibrantStyle:(id)a3;
@end

@implementation PRPosterContentStyleVibrantContentRenderer

- (PRPosterContentStyleVibrantContentRenderer)initWithVibrancyView:(id)a3 contentView:(id)a4 contentBoundingRect:(CGRect)a5 styleBoundingRect:(CGRect)a6 initialAppearance:(id)a7
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v12 = a5.size.height;
  v13 = a5.size.width;
  v14 = a5.origin.y;
  v15 = a5.origin.x;
  v19 = a3;
  v20 = a4;
  v21 = a7;
  v33.receiver = self;
  v33.super_class = PRPosterContentStyleVibrantContentRenderer;
  v22 = [(PRPosterContentStyleVibrantContentRenderer *)&v33 init];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_vibrancyView, a3);
    objc_storeStrong(&v23->_contentView, a4);
    v34.origin.x = v15;
    v34.origin.y = v14;
    v34.size.width = v13;
    v34.size.height = v12;
    if (CGRectIsEmpty(v34))
    {
      [v20 bounds];
      v15 = v24;
      v14 = v25;
      v13 = v26;
      v12 = v27;
    }

    v23->_contentBoundingRect.origin.x = v15;
    v23->_contentBoundingRect.origin.y = v14;
    v23->_contentBoundingRect.size.width = v13;
    v23->_contentBoundingRect.size.height = v12;
    v35.origin.x = x;
    v35.origin.y = y;
    v35.size.width = width;
    v35.size.height = height;
    if (CGRectIsEmpty(v35))
    {
      [v20 bounds];
      x = v28;
      y = v29;
      width = v30;
      height = v31;
    }

    v23->_styleBoundingRect.origin.x = x;
    v23->_styleBoundingRect.origin.y = y;
    v23->_styleBoundingRect.size.width = width;
    v23->_styleBoundingRect.size.height = height;
    objc_storeStrong(&v23->_currentAppearance, a7);
  }

  return v23;
}

- (void)setContentBoundingRect:(CGRect)a3
{
  v10 = CGRectUnion(a3, self->_styleBoundingRect);
  x = v10.origin.x;
  width = v10.size.width;
  v6 = v10.origin.y + -20.0;
  v7 = v10.size.height + 40.0;
  v10.origin.y = v10.origin.y + -20.0;
  v10.size.height = v10.size.height + 40.0;
  if (!CGRectEqualToRect(v10, self->_contentBoundingRect))
  {
    self->_contentBoundingRect.origin.x = x;
    self->_contentBoundingRect.origin.y = v6;
    self->_contentBoundingRect.size.width = width;
    self->_contentBoundingRect.size.height = v7;
    gradientView = self->_gradientView;

    [(_PRContentStyleGradientView *)gradientView setFrame:x, v6, width, v7];
  }
}

- (void)setStyleBoundingRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (!CGRectEqualToRect(a3, self->_styleBoundingRect))
  {
    self->_styleBoundingRect.origin.x = x;
    self->_styleBoundingRect.origin.y = y;
    self->_styleBoundingRect.size.width = width;
    self->_styleBoundingRect.size.height = height;
    v8 = self->_contentBoundingRect.origin.x;
    v9 = self->_contentBoundingRect.origin.y;
    v10 = self->_contentBoundingRect.size.width;
    v11 = self->_contentBoundingRect.size.height;

    [(PRPosterContentStyleVibrantContentRenderer *)self setContentBoundingRect:v8, v9, v10, v11];
  }
}

- (id)privateStyleForStyle:(id)a3
{
  v3 = a3;
  if ([v3 conformsToProtocol:&unk_1F1C8ED30])
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)removeGradientIfNeeded
{
  [(_PRContentStyleGradientView *)self->_gradientView removeFromSuperview];
  gradientView = self->_gradientView;
  self->_gradientView = 0;
}

- (void)updateForVibrantStyle:(id)a3
{
  vibrancyView = self->_vibrancyView;
  v5 = a3;
  v6 = [(BSUIVibrancyEffectView *)vibrancyView configuration];
  v7 = [v5 vibrancyEffectType];
  v8 = [v5 vibrancyEffectColor];

  v16 = [v6 copyWithEffectType:v7 color:v8];
  [(BSUIVibrancyEffectView *)self->_vibrancyView setIsEnabled:1];
  [(BSUIVibrancyEffectView *)self->_vibrancyView setConfiguration:v16];
  v9 = [PRPosterColor alloc];
  v10 = [MEMORY[0x1E69DC888] whiteColor];
  v11 = [(PRPosterColor *)v9 initWithColor:v10];

  if (self->_currentAppearance)
  {
    v12 = [PRPosterAppearance alloc];
    v13 = [(PRPosterAppearance *)self->_currentAppearance font];
    v14 = [(PRPosterAppearance *)v12 initWithFont:v13 labelColor:v11 preferredTitleAlignment:[(PRPosterAppearance *)self->_currentAppearance preferredTitleAlignment] preferredTitleLayout:[(PRPosterAppearance *)self->_currentAppearance preferredTitleLayout]];

    currentAppearance = self->_currentAppearance;
    self->_currentAppearance = v14;
  }
}

- (void)renderDiscreteColorStyle:(id)a3
{
  v14 = a3;
  [(PRPosterContentStyleVibrantContentRenderer *)self removeGradientIfNeeded];
  v4 = [(PRPosterContentStyleVibrantContentRenderer *)self privateStyleForStyle:v14];
  v5 = v4;
  if (v4 && [v4 desiresVibrancyEffectView])
  {
    [(PRPosterContentStyleVibrantContentRenderer *)self updateForVibrantStyle:v5];
  }

  else
  {
    if ([v14 allowsVariation])
    {
      [v14 variationAppliedColors];
    }

    else
    {
      [v14 colors];
    }
    v6 = ;
    [(BSUIVibrancyEffectView *)self->_vibrancyView setIsEnabled:0];
    v7 = [PRPosterColor alloc];
    v8 = [v6 firstObject];
    v9 = [(PRPosterColor *)v7 initWithColor:v8];

    if (self->_currentAppearance)
    {
      v10 = [PRPosterAppearance alloc];
      v11 = [(PRPosterAppearance *)self->_currentAppearance font];
      v12 = [(PRPosterAppearance *)v10 initWithFont:v11 labelColor:v9 preferredTitleAlignment:[(PRPosterAppearance *)self->_currentAppearance preferredTitleAlignment] preferredTitleLayout:[(PRPosterAppearance *)self->_currentAppearance preferredTitleLayout]];

      currentAppearance = self->_currentAppearance;
      self->_currentAppearance = v12;
    }
  }
}

- (void)renderVibrantMaterialStyle:(id)a3
{
  v4 = a3;
  [(PRPosterContentStyleVibrantContentRenderer *)self removeGradientIfNeeded];
  v5 = [(PRPosterContentStyleVibrantContentRenderer *)self privateStyleForStyle:v4];

  [(PRPosterContentStyleVibrantContentRenderer *)self updateForVibrantStyle:v5];
}

- (void)renderVibrantMonochromeStyle:(id)a3
{
  v4 = a3;
  [(PRPosterContentStyleVibrantContentRenderer *)self removeGradientIfNeeded];
  v5 = [(PRPosterContentStyleVibrantContentRenderer *)self privateStyleForStyle:v4];

  [(PRPosterContentStyleVibrantContentRenderer *)self updateForVibrantStyle:v5];
}

- (void)renderGradientStyle:(id)a3
{
  v4 = a3;
  [(BSUIVibrancyEffectView *)self->_vibrancyView setIsEnabled:0];
  v5 = [PRPosterColor alloc];
  v6 = [MEMORY[0x1E69DC888] whiteColor];
  v7 = [(PRPosterColor *)v5 initWithColor:v6];

  if (self->_currentAppearance)
  {
    v8 = [PRPosterAppearance alloc];
    v9 = [(PRPosterAppearance *)self->_currentAppearance font];
    v10 = [(PRPosterAppearance *)v8 initWithFont:v9 labelColor:v7 preferredTitleAlignment:[(PRPosterAppearance *)self->_currentAppearance preferredTitleAlignment] preferredTitleLayout:[(PRPosterAppearance *)self->_currentAppearance preferredTitleLayout]];

    currentAppearance = self->_currentAppearance;
    self->_currentAppearance = v10;
  }

  v12 = [v4 colors];
  v13 = [v12 bs_map:&__block_literal_global_175];

  IsVertical = PRPosterTitleLayoutIsVertical([(PRPosterAppearance *)self->_currentAppearance preferredTitleLayout]);
  x = self->_contentBoundingRect.origin.x;
  y = self->_contentBoundingRect.origin.y;
  width = self->_contentBoundingRect.size.width;
  height = self->_contentBoundingRect.size.height;
  if (IsVertical)
  {
    v19 = CGRectGetHeight(*&x);
    MinY = CGRectGetMinY(self->_contentBoundingRect);
    v21 = CGRectGetHeight(self->_styleBoundingRect);
    MinX = CGRectGetMinY(self->_styleBoundingRect);
  }

  else
  {
    v19 = CGRectGetWidth(*&x);
    MinY = CGRectGetMinX(self->_contentBoundingRect);
    v21 = CGRectGetWidth(self->_styleBoundingRect);
    MinX = CGRectGetMinX(self->_styleBoundingRect);
  }

  if (v21 >= v19)
  {
    v21 = v19;
  }

  if (MinX >= MinY)
  {
    v23 = MinX;
  }

  else
  {
    v23 = MinY;
  }

  v24 = [v4 locations];
  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 3221225472;
  v48[2] = __66__PRPosterContentStyleVibrantContentRenderer_renderGradientStyle___block_invoke_2;
  v48[3] = &__block_descriptor_64_e18__16__0__NSNumber_8l;
  *&v48[4] = v21;
  *&v48[5] = v23;
  *&v48[6] = MinY;
  *&v48[7] = v19;
  v25 = [v24 bs_map:v48];

  gradientView = self->_gradientView;
  if (gradientView)
  {
    [(_PRContentStyleGradientView *)gradientView setFrame:self->_contentBoundingRect.origin.x, self->_contentBoundingRect.origin.y, self->_contentBoundingRect.size.width, self->_contentBoundingRect.size.height];
  }

  else
  {
    v27 = [[_PRContentStyleGradientView alloc] initWithFrame:self->_contentBoundingRect.origin.x, self->_contentBoundingRect.origin.y, self->_contentBoundingRect.size.width, self->_contentBoundingRect.size.height];
    v28 = self->_gradientView;
    self->_gradientView = v27;

    v29 = [(_PRContentStyleGradientView *)self->_gradientView layer];
    [v29 setCompositingFilter:*MEMORY[0x1E6979D28]];

    [(UIView *)self->_contentView addSubview:self->_gradientView];
  }

  v30 = self->_gradientView;
  v31 = [v4 gradientType];
  v32 = MEMORY[0x1E6979DA8];
  v33 = MEMORY[0x1E6979DB0];
  if (v31 != 1)
  {
    v33 = MEMORY[0x1E6979DA0];
  }

  if (v31 != 2)
  {
    v32 = v33;
  }

  [(_PRContentStyleGradientView *)v30 setColors:v13 locations:v25 type:*v32];
  v34 = PRPosterTitleLayoutIsVertical([(PRPosterAppearance *)self->_currentAppearance preferredTitleLayout]);
  v35 = self->_gradientView;
  [v4 startPoint];
  v38 = v37;
  if (v34)
  {
    [v4 startPoint];
    v40 = v39;
    [v4 endPoint];
    v42 = v41;
    [v4 endPoint];
    v44 = v43;
  }

  else
  {
    v45 = v36;
    v40 = v37;
    [v4 endPoint];
    v42 = v46;
    v44 = v47;
    v38 = v45;
  }

  [(_PRContentStyleGradientView *)v35 setStartPoint:v38 endPoint:v40, v42, v44];
}

uint64_t __66__PRPosterContentStyleVibrantContentRenderer_renderGradientStyle___block_invoke(int a1, id a2)
{
  v2 = a2;

  return [v2 CGColor];
}

id __66__PRPosterContentStyleVibrantContentRenderer_renderGradientStyle___block_invoke_2(double *a1, void *a2)
{
  v3 = a2;
  [v3 floatValue];
  if (v4 == 0.0 || v4 == 1.0)
  {
    v6 = v3;
  }

  else
  {
    v6 = [MEMORY[0x1E696AD98] numberWithDouble:(a1[5] - a1[6] + a1[4] * v4) / a1[7]];
  }

  v7 = v6;

  return v7;
}

- (void)renderLUTStyle:(id)a3
{
  v8 = a3;
  [(PRPosterContentStyleVibrantContentRenderer *)self removeGradientIfNeeded];
  if (self->_extensionBundleURL)
  {
    [(BSUIVibrancyEffectView *)self->_vibrancyView setIsEnabled:1];
    v4 = objc_alloc(MEMORY[0x1E698E820]);
    v5 = [v8 lutIdentifier];
    v6 = [v4 initWithIdentifier:v5 bundleURL:self->_extensionBundleURL];

    v7 = [objc_alloc(MEMORY[0x1E698E810]) initWithEffectType:3 backgroundType:0 color:0 groupName:0 blendConfiguration:0 blendAmount:v6 alternativeVibrancyEffectLUT:0.0];
    [(BSUIVibrancyEffectView *)self->_vibrancyView setConfiguration:v7];
  }
}

- (CGRect)contentBoundingRect
{
  x = self->_contentBoundingRect.origin.x;
  y = self->_contentBoundingRect.origin.y;
  width = self->_contentBoundingRect.size.width;
  height = self->_contentBoundingRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)styleBoundingRect
{
  x = self->_styleBoundingRect.origin.x;
  y = self->_styleBoundingRect.origin.y;
  width = self->_styleBoundingRect.size.width;
  height = self->_styleBoundingRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end