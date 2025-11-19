@interface _PREditingPosterContentVibrantMonotoneStyleCoordinatorImpl
- (double)itemViewLuminance;
- (id)_discreteColorsStyle;
- (id)_effectiveColor;
- (id)_itemDisplayColor;
- (id)_maxDisplayColor;
- (id)_minDisplayColor;
- (id)_sliderThumbDisplayColor;
- (id)itemViewWithGlassStyleApplied:(BOOL)a3;
- (id)transparancyBackgroundImageForHeight:(double)a3;
- (id)variationSliderThumbView;
- (id)variationSliderTrackView;
- (unint64_t)_preferredMaterialType;
- (void)setVariation:(double)a3 glassStyleApplied:(BOOL)a4;
@end

@implementation _PREditingPosterContentVibrantMonotoneStyleCoordinatorImpl

- (id)_discreteColorsStyle
{
  v3 = [(_PREditingPosterContentStyleCoordinatorImpl *)self style];
  v4 = [v3 type];

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(_PREditingPosterContentStyleCoordinatorImpl *)self style];
  }

  return v5;
}

- (unint64_t)_preferredMaterialType
{
  v2 = [(_PREditingPosterContentVibrantMonotoneStyleCoordinatorImpl *)self _discreteColorsStyle];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 preferredMaterialType];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)transparancyBackgroundImageForHeight:(double)a3
{
  cachedTransparancyBackgrounds = self->_cachedTransparancyBackgrounds;
  if (!cachedTransparancyBackgrounds)
  {
    v6 = [MEMORY[0x1E695DF90] dictionary];
    v7 = self->_cachedTransparancyBackgrounds;
    self->_cachedTransparancyBackgrounds = v6;

    cachedTransparancyBackgrounds = self->_cachedTransparancyBackgrounds;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  v9 = [(NSMutableDictionary *)cachedTransparancyBackgrounds objectForKeyedSubscript:v8];

  if (!v9)
  {
    v10 = fmax(a3 / 3.0, 0.5);
    v11 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithSize:{v10 + v10, v10 + v10}];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __99___PREditingPosterContentVibrantMonotoneStyleCoordinatorImpl_transparancyBackgroundImageForHeight___block_invoke;
    v16[3] = &__block_descriptor_40_e40_v16__0__UIGraphicsImageRendererContext_8l;
    *&v16[4] = v10;
    v12 = [v11 imageWithActions:v16];
    v9 = [v12 resizableImageWithCapInsets:0 resizingMode:{*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];
    v13 = self->_cachedTransparancyBackgrounds;
    v14 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
    [(NSMutableDictionary *)v13 setObject:v9 forKeyedSubscript:v14];
  }

  return v9;
}

- (id)_minDisplayColor
{
  v3 = [(_PREditingPosterContentStyleCoordinatorImpl *)self style];
  v4 = [v3 allowsVariation];

  if (v4)
  {
    v5 = [PRPosterContentDiscreteColorsStyle alloc];
    v6 = [(_PREditingPosterContentStyleCoordinatorImpl *)self style];
    v7 = [v6 colors];
    v8 = [(PRPosterContentDiscreteColorsStyle *)v5 initWithOpaqueColors:v7 variation:[(_PREditingPosterContentVibrantMonotoneStyleCoordinatorImpl *)self _preferredMaterialType] preferredMaterialType:-1.0];

    v9 = [(PRPosterContentDiscreteColorsStyle *)v8 variationAppliedColors];
    v10 = [v9 firstObject];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_maxDisplayColor
{
  v3 = [(_PREditingPosterContentStyleCoordinatorImpl *)self style];
  v4 = [v3 allowsVariation];

  if (v4)
  {
    v5 = [PRPosterContentDiscreteColorsStyle alloc];
    v6 = [(_PREditingPosterContentStyleCoordinatorImpl *)self style];
    v7 = [v6 colors];
    v8 = [(PRPosterContentDiscreteColorsStyle *)v5 initWithOpaqueColors:v7 variation:[(_PREditingPosterContentVibrantMonotoneStyleCoordinatorImpl *)self _preferredMaterialType] preferredMaterialType:0.0];

    v9 = [(PRPosterContentDiscreteColorsStyle *)v8 variationAppliedColors];
    v10 = [v9 firstObject];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_sliderThumbDisplayColor
{
  v3 = [(_PREditingPosterContentStyleCoordinatorImpl *)self style];
  v4 = [v3 allowsVariation];

  if (v4)
  {
    [(_PREditingPosterContentStyleCoordinatorImpl *)self variation];
    v6 = (v5 + 1.0) * 0.5 + -1.0;
    v7 = [PRPosterContentDiscreteColorsStyle alloc];
    v8 = [(_PREditingPosterContentStyleCoordinatorImpl *)self style];
    v9 = [v8 colors];
    v10 = [(PRPosterContentDiscreteColorsStyle *)v7 initWithOpaqueColors:v9 variation:[(_PREditingPosterContentVibrantMonotoneStyleCoordinatorImpl *)self _preferredMaterialType] preferredMaterialType:v6];

    v11 = [(PRPosterContentDiscreteColorsStyle *)v10 variationAppliedColors];
    v12 = [v11 firstObject];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)_itemDisplayColor
{
  v3 = [(_PREditingPosterContentStyleCoordinatorImpl *)self style];
  v4 = [v3 allowsVariation];

  if (v4)
  {
    [(_PREditingPosterContentStyleCoordinatorImpl *)self variation];
    v6 = (v5 + 1.0) * 0.5 + -1.0;
    v7 = [PRPosterContentDiscreteColorsStyle alloc];
    v8 = [(_PREditingPosterContentStyleCoordinatorImpl *)self style];
    v9 = [v8 colors];
    v10 = [(PRPosterContentDiscreteColorsStyle *)v7 initWithOpaqueColors:v9 variation:[(_PREditingPosterContentVibrantMonotoneStyleCoordinatorImpl *)self _preferredMaterialType] preferredMaterialType:v6];

    v11 = [(PRPosterContentDiscreteColorsStyle *)v10 variationAppliedColors];
    v12 = [v11 firstObject];
  }

  else
  {
    v12 = [(_PREditingPosterContentVibrantMonotoneStyleCoordinatorImpl *)self _effectiveColor];
  }

  return v12;
}

- (id)_effectiveColor
{
  v3 = [(_PREditingPosterContentStyleCoordinatorImpl *)self variationSupportingStyle];
  v4 = [v3 variationAppliedColors];
  v5 = [v4 firstObject];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v8 = [(_PREditingPosterContentStyleCoordinatorImpl *)self style];
    v9 = [v8 colors];
    v7 = [v9 firstObject];
  }

  return v7;
}

- (void)setVariation:(double)a3 glassStyleApplied:(BOOL)a4
{
  v4 = a4;
  v7 = [(_PREditingPosterContentStyleCoordinatorImpl *)self style];
  v8 = [v7 allowsVariation];

  if (v8)
  {
    v14.receiver = self;
    v14.super_class = _PREditingPosterContentVibrantMonotoneStyleCoordinatorImpl;
    [(_PREditingPosterContentStyleCoordinatorImpl *)&v14 setVariation:v4 glassStyleApplied:a3];
    v9 = [(_PREditingPosterContentVibrantMonotoneStyleCoordinatorImpl *)self _itemDisplayColor];
    if (v4)
    {
      v10 = [objc_alloc(MEMORY[0x1E69DD818]) initWithVariant:0];
      [v10 setTintColor:v9];
      [(UIView *)self->_itemViewContentView _setBackground:v10];
    }

    else
    {
      itemViewContentView = self->_itemViewContentView;
      v10 = [(_PREditingPosterContentVibrantMonotoneStyleCoordinatorImpl *)self _itemDisplayColor];
      [(UIView *)itemViewContentView setBackgroundColor:v10];
    }

    variationSliderThumbContentView = self->_variationSliderThumbContentView;
    v13 = [(_PREditingPosterContentVibrantMonotoneStyleCoordinatorImpl *)self _sliderThumbDisplayColor];
    [(UIView *)variationSliderThumbContentView setBackgroundColor:v13];
  }
}

- (double)itemViewLuminance
{
  v2 = [(_PREditingPosterContentVibrantMonotoneStyleCoordinatorImpl *)self _effectiveColor];
  v3 = [[PRPosterColorValues alloc] initWithColor:v2];
  v4 = [(PRPosterColorValues *)v3 hslValues];
  [v4 luminance];
  v6 = v5;

  return v6;
}

- (id)itemViewWithGlassStyleApplied:(BOOL)a3
{
  itemView = self->_itemView;
  if (!itemView)
  {
    v5 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{0.0, 0.0, 50.0, 50.0}];
    v6 = [MEMORY[0x1E69DC888] clearColor];
    [(UIView *)v5 setBackgroundColor:v6];

    [(UIView *)v5 setClipsToBounds:1];
    v7 = objc_alloc(MEMORY[0x1E69DD250]);
    [(UIView *)v5 bounds];
    v8 = [v7 initWithFrame:?];
    [v8 setAutoresizingMask:18];
    [(UIView *)v5 addSubview:v8];
    objc_storeStrong(&self->_itemViewContentView, v8);
    v9 = [(_PREditingPosterContentVibrantMonotoneStyleCoordinatorImpl *)self _itemDisplayColor];
    [v8 setBackgroundColor:v9];
    v10 = [v8 layer];
    [v10 setCornerRadius:17.0];

    v11 = [v8 layer];
    [v11 setCornerCurve:*MEMORY[0x1E69796E8]];

    [v8 setClipsToBounds:1];
    v12 = self->_itemView;
    self->_itemView = v5;

    itemView = self->_itemView;
  }

  return itemView;
}

- (id)variationSliderThumbView
{
  variationSliderThumbView = self->_variationSliderThumbView;
  if (!variationSliderThumbView)
  {
    v4 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{0.0, 0.0, 50.0, 50.0}];
    v5 = [MEMORY[0x1E69DC888] whiteColor];
    [(UIView *)v4 setBackgroundColor:v5];

    [(UIView *)v4 setClipsToBounds:1];
    v6 = objc_alloc(MEMORY[0x1E69DD250]);
    [(UIView *)v4 bounds];
    v7 = [v6 initWithFrame:?];
    [(UIView *)v7 setAutoresizingMask:18];
    [(UIView *)v4 addSubview:v7];
    variationSliderThumbContentView = self->_variationSliderThumbContentView;
    self->_variationSliderThumbContentView = v7;
    v9 = v7;

    v10 = [(_PREditingPosterContentVibrantMonotoneStyleCoordinatorImpl *)self _sliderThumbDisplayColor];
    [(UIView *)v9 setBackgroundColor:v10];
    v11 = self->_variationSliderThumbView;
    self->_variationSliderThumbView = v4;

    variationSliderThumbView = self->_variationSliderThumbView;
  }

  return variationSliderThumbView;
}

- (id)variationSliderTrackView
{
  v15[2] = *MEMORY[0x1E69E9840];
  variationSliderTrackView = self->_variationSliderTrackView;
  if (!variationSliderTrackView)
  {
    v4 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{0.0, 0.0, 100.0, 50.0}];
    v5 = [MEMORY[0x1E69DC888] whiteColor];
    [(UIView *)v4 setBackgroundColor:v5];

    [(UIView *)v4 setClipsToBounds:1];
    v6 = objc_alloc(MEMORY[0x1E69C5560]);
    [(UIView *)v4 bounds];
    v7 = [v6 initWithFrame:0 usesBlur:?];
    v8 = [(_PREditingPosterContentVibrantMonotoneStyleCoordinatorImpl *)self _minDisplayColor];
    v9 = [(_PREditingPosterContentVibrantMonotoneStyleCoordinatorImpl *)self _maxDisplayColor];
    v15[0] = [v8 CGColor];
    v15[1] = [v9 CGColor];
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
    [(UIView *)v7 setColors:v10 locations:0 type:0];

    [(UIView *)v7 setStartPoint:0.0 endPoint:0.5, 1.0, 0.5];
    [(UIView *)v4 addSubview:v7];
    [(UIView *)v7 setAutoresizingMask:18];
    variationSliderTrackContentView = self->_variationSliderTrackContentView;
    self->_variationSliderTrackContentView = v7;
    v12 = v7;

    v13 = self->_variationSliderTrackView;
    self->_variationSliderTrackView = v4;

    variationSliderTrackView = self->_variationSliderTrackView;
  }

  return variationSliderTrackView;
}

@end