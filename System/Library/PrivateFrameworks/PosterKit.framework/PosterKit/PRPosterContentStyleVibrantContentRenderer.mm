@interface PRPosterContentStyleVibrantContentRenderer
- (CGRect)contentBoundingRect;
- (CGRect)styleBoundingRect;
- (PRPosterContentStyleVibrantContentRenderer)initWithVibrancyView:(id)view contentView:(id)contentView contentBoundingRect:(CGRect)rect styleBoundingRect:(CGRect)boundingRect initialAppearance:(id)appearance;
- (id)privateStyleForStyle:(id)style;
- (void)removeGradientIfNeeded;
- (void)renderDiscreteColorStyle:(id)style;
- (void)renderGradientStyle:(id)style;
- (void)renderLUTStyle:(id)style;
- (void)renderVibrantMaterialStyle:(id)style;
- (void)renderVibrantMonochromeStyle:(id)style;
- (void)setContentBoundingRect:(CGRect)rect;
- (void)setStyleBoundingRect:(CGRect)rect;
- (void)updateForVibrantStyle:(id)style;
@end

@implementation PRPosterContentStyleVibrantContentRenderer

- (PRPosterContentStyleVibrantContentRenderer)initWithVibrancyView:(id)view contentView:(id)contentView contentBoundingRect:(CGRect)rect styleBoundingRect:(CGRect)boundingRect initialAppearance:(id)appearance
{
  height = boundingRect.size.height;
  width = boundingRect.size.width;
  y = boundingRect.origin.y;
  x = boundingRect.origin.x;
  v12 = rect.size.height;
  v13 = rect.size.width;
  v14 = rect.origin.y;
  v15 = rect.origin.x;
  viewCopy = view;
  contentViewCopy = contentView;
  appearanceCopy = appearance;
  v33.receiver = self;
  v33.super_class = PRPosterContentStyleVibrantContentRenderer;
  v22 = [(PRPosterContentStyleVibrantContentRenderer *)&v33 init];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_vibrancyView, view);
    objc_storeStrong(&v23->_contentView, contentView);
    v34.origin.x = v15;
    v34.origin.y = v14;
    v34.size.width = v13;
    v34.size.height = v12;
    if (CGRectIsEmpty(v34))
    {
      [contentViewCopy bounds];
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
      [contentViewCopy bounds];
      x = v28;
      y = v29;
      width = v30;
      height = v31;
    }

    v23->_styleBoundingRect.origin.x = x;
    v23->_styleBoundingRect.origin.y = y;
    v23->_styleBoundingRect.size.width = width;
    v23->_styleBoundingRect.size.height = height;
    objc_storeStrong(&v23->_currentAppearance, appearance);
  }

  return v23;
}

- (void)setContentBoundingRect:(CGRect)rect
{
  v10 = CGRectUnion(rect, self->_styleBoundingRect);
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

- (void)setStyleBoundingRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if (!CGRectEqualToRect(rect, self->_styleBoundingRect))
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

- (id)privateStyleForStyle:(id)style
{
  styleCopy = style;
  if ([styleCopy conformsToProtocol:&unk_1F1C8ED30])
  {
    v4 = styleCopy;
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

- (void)updateForVibrantStyle:(id)style
{
  vibrancyView = self->_vibrancyView;
  styleCopy = style;
  configuration = [(BSUIVibrancyEffectView *)vibrancyView configuration];
  vibrancyEffectType = [styleCopy vibrancyEffectType];
  vibrancyEffectColor = [styleCopy vibrancyEffectColor];

  v16 = [configuration copyWithEffectType:vibrancyEffectType color:vibrancyEffectColor];
  [(BSUIVibrancyEffectView *)self->_vibrancyView setIsEnabled:1];
  [(BSUIVibrancyEffectView *)self->_vibrancyView setConfiguration:v16];
  v9 = [PRPosterColor alloc];
  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  v11 = [(PRPosterColor *)v9 initWithColor:whiteColor];

  if (self->_currentAppearance)
  {
    v12 = [PRPosterAppearance alloc];
    font = [(PRPosterAppearance *)self->_currentAppearance font];
    v14 = [(PRPosterAppearance *)v12 initWithFont:font labelColor:v11 preferredTitleAlignment:[(PRPosterAppearance *)self->_currentAppearance preferredTitleAlignment] preferredTitleLayout:[(PRPosterAppearance *)self->_currentAppearance preferredTitleLayout]];

    currentAppearance = self->_currentAppearance;
    self->_currentAppearance = v14;
  }
}

- (void)renderDiscreteColorStyle:(id)style
{
  styleCopy = style;
  [(PRPosterContentStyleVibrantContentRenderer *)self removeGradientIfNeeded];
  v4 = [(PRPosterContentStyleVibrantContentRenderer *)self privateStyleForStyle:styleCopy];
  v5 = v4;
  if (v4 && [v4 desiresVibrancyEffectView])
  {
    [(PRPosterContentStyleVibrantContentRenderer *)self updateForVibrantStyle:v5];
  }

  else
  {
    if ([styleCopy allowsVariation])
    {
      [styleCopy variationAppliedColors];
    }

    else
    {
      [styleCopy colors];
    }
    v6 = ;
    [(BSUIVibrancyEffectView *)self->_vibrancyView setIsEnabled:0];
    v7 = [PRPosterColor alloc];
    firstObject = [v6 firstObject];
    v9 = [(PRPosterColor *)v7 initWithColor:firstObject];

    if (self->_currentAppearance)
    {
      v10 = [PRPosterAppearance alloc];
      font = [(PRPosterAppearance *)self->_currentAppearance font];
      v12 = [(PRPosterAppearance *)v10 initWithFont:font labelColor:v9 preferredTitleAlignment:[(PRPosterAppearance *)self->_currentAppearance preferredTitleAlignment] preferredTitleLayout:[(PRPosterAppearance *)self->_currentAppearance preferredTitleLayout]];

      currentAppearance = self->_currentAppearance;
      self->_currentAppearance = v12;
    }
  }
}

- (void)renderVibrantMaterialStyle:(id)style
{
  styleCopy = style;
  [(PRPosterContentStyleVibrantContentRenderer *)self removeGradientIfNeeded];
  v5 = [(PRPosterContentStyleVibrantContentRenderer *)self privateStyleForStyle:styleCopy];

  [(PRPosterContentStyleVibrantContentRenderer *)self updateForVibrantStyle:v5];
}

- (void)renderVibrantMonochromeStyle:(id)style
{
  styleCopy = style;
  [(PRPosterContentStyleVibrantContentRenderer *)self removeGradientIfNeeded];
  v5 = [(PRPosterContentStyleVibrantContentRenderer *)self privateStyleForStyle:styleCopy];

  [(PRPosterContentStyleVibrantContentRenderer *)self updateForVibrantStyle:v5];
}

- (void)renderGradientStyle:(id)style
{
  styleCopy = style;
  [(BSUIVibrancyEffectView *)self->_vibrancyView setIsEnabled:0];
  v5 = [PRPosterColor alloc];
  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  v7 = [(PRPosterColor *)v5 initWithColor:whiteColor];

  if (self->_currentAppearance)
  {
    v8 = [PRPosterAppearance alloc];
    font = [(PRPosterAppearance *)self->_currentAppearance font];
    v10 = [(PRPosterAppearance *)v8 initWithFont:font labelColor:v7 preferredTitleAlignment:[(PRPosterAppearance *)self->_currentAppearance preferredTitleAlignment] preferredTitleLayout:[(PRPosterAppearance *)self->_currentAppearance preferredTitleLayout]];

    currentAppearance = self->_currentAppearance;
    self->_currentAppearance = v10;
  }

  colors = [styleCopy colors];
  v13 = [colors bs_map:&__block_literal_global_175];

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

  locations = [styleCopy locations];
  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 3221225472;
  v48[2] = __66__PRPosterContentStyleVibrantContentRenderer_renderGradientStyle___block_invoke_2;
  v48[3] = &__block_descriptor_64_e18__16__0__NSNumber_8l;
  *&v48[4] = v21;
  *&v48[5] = v23;
  *&v48[6] = MinY;
  *&v48[7] = v19;
  v25 = [locations bs_map:v48];

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

    layer = [(_PRContentStyleGradientView *)self->_gradientView layer];
    [layer setCompositingFilter:*MEMORY[0x1E6979D28]];

    [(UIView *)self->_contentView addSubview:self->_gradientView];
  }

  v30 = self->_gradientView;
  gradientType = [styleCopy gradientType];
  v32 = MEMORY[0x1E6979DA8];
  v33 = MEMORY[0x1E6979DB0];
  if (gradientType != 1)
  {
    v33 = MEMORY[0x1E6979DA0];
  }

  if (gradientType != 2)
  {
    v32 = v33;
  }

  [(_PRContentStyleGradientView *)v30 setColors:v13 locations:v25 type:*v32];
  v34 = PRPosterTitleLayoutIsVertical([(PRPosterAppearance *)self->_currentAppearance preferredTitleLayout]);
  v35 = self->_gradientView;
  [styleCopy startPoint];
  v38 = v37;
  if (v34)
  {
    [styleCopy startPoint];
    v40 = v39;
    [styleCopy endPoint];
    v42 = v41;
    [styleCopy endPoint];
    v44 = v43;
  }

  else
  {
    v45 = v36;
    v40 = v37;
    [styleCopy endPoint];
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

- (void)renderLUTStyle:(id)style
{
  styleCopy = style;
  [(PRPosterContentStyleVibrantContentRenderer *)self removeGradientIfNeeded];
  if (self->_extensionBundleURL)
  {
    [(BSUIVibrancyEffectView *)self->_vibrancyView setIsEnabled:1];
    v4 = objc_alloc(MEMORY[0x1E698E820]);
    lutIdentifier = [styleCopy lutIdentifier];
    v6 = [v4 initWithIdentifier:lutIdentifier bundleURL:self->_extensionBundleURL];

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