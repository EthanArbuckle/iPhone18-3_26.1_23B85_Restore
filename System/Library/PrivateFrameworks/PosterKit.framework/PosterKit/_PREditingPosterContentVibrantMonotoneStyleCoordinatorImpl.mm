@interface _PREditingPosterContentVibrantMonotoneStyleCoordinatorImpl
- (double)itemViewLuminance;
- (id)_discreteColorsStyle;
- (id)_effectiveColor;
- (id)_itemDisplayColor;
- (id)_maxDisplayColor;
- (id)_minDisplayColor;
- (id)_sliderThumbDisplayColor;
- (id)itemViewWithGlassStyleApplied:(BOOL)applied;
- (id)transparancyBackgroundImageForHeight:(double)height;
- (id)variationSliderThumbView;
- (id)variationSliderTrackView;
- (unint64_t)_preferredMaterialType;
- (void)setVariation:(double)variation glassStyleApplied:(BOOL)applied;
@end

@implementation _PREditingPosterContentVibrantMonotoneStyleCoordinatorImpl

- (id)_discreteColorsStyle
{
  style = [(_PREditingPosterContentStyleCoordinatorImpl *)self style];
  type = [style type];

  if (type)
  {
    style2 = 0;
  }

  else
  {
    style2 = [(_PREditingPosterContentStyleCoordinatorImpl *)self style];
  }

  return style2;
}

- (unint64_t)_preferredMaterialType
{
  _discreteColorsStyle = [(_PREditingPosterContentVibrantMonotoneStyleCoordinatorImpl *)self _discreteColorsStyle];
  v3 = _discreteColorsStyle;
  if (_discreteColorsStyle)
  {
    preferredMaterialType = [_discreteColorsStyle preferredMaterialType];
  }

  else
  {
    preferredMaterialType = 0;
  }

  return preferredMaterialType;
}

- (id)transparancyBackgroundImageForHeight:(double)height
{
  cachedTransparancyBackgrounds = self->_cachedTransparancyBackgrounds;
  if (!cachedTransparancyBackgrounds)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v7 = self->_cachedTransparancyBackgrounds;
    self->_cachedTransparancyBackgrounds = dictionary;

    cachedTransparancyBackgrounds = self->_cachedTransparancyBackgrounds;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithDouble:height];
  v9 = [(NSMutableDictionary *)cachedTransparancyBackgrounds objectForKeyedSubscript:v8];

  if (!v9)
  {
    v10 = fmax(height / 3.0, 0.5);
    v11 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithSize:{v10 + v10, v10 + v10}];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __99___PREditingPosterContentVibrantMonotoneStyleCoordinatorImpl_transparancyBackgroundImageForHeight___block_invoke;
    v16[3] = &__block_descriptor_40_e40_v16__0__UIGraphicsImageRendererContext_8l;
    *&v16[4] = v10;
    v12 = [v11 imageWithActions:v16];
    v9 = [v12 resizableImageWithCapInsets:0 resizingMode:{*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];
    v13 = self->_cachedTransparancyBackgrounds;
    v14 = [MEMORY[0x1E696AD98] numberWithDouble:height];
    [(NSMutableDictionary *)v13 setObject:v9 forKeyedSubscript:v14];
  }

  return v9;
}

- (id)_minDisplayColor
{
  style = [(_PREditingPosterContentStyleCoordinatorImpl *)self style];
  allowsVariation = [style allowsVariation];

  if (allowsVariation)
  {
    v5 = [PRPosterContentDiscreteColorsStyle alloc];
    style2 = [(_PREditingPosterContentStyleCoordinatorImpl *)self style];
    colors = [style2 colors];
    v8 = [(PRPosterContentDiscreteColorsStyle *)v5 initWithOpaqueColors:colors variation:[(_PREditingPosterContentVibrantMonotoneStyleCoordinatorImpl *)self _preferredMaterialType] preferredMaterialType:-1.0];

    variationAppliedColors = [(PRPosterContentDiscreteColorsStyle *)v8 variationAppliedColors];
    firstObject = [variationAppliedColors firstObject];
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

- (id)_maxDisplayColor
{
  style = [(_PREditingPosterContentStyleCoordinatorImpl *)self style];
  allowsVariation = [style allowsVariation];

  if (allowsVariation)
  {
    v5 = [PRPosterContentDiscreteColorsStyle alloc];
    style2 = [(_PREditingPosterContentStyleCoordinatorImpl *)self style];
    colors = [style2 colors];
    v8 = [(PRPosterContentDiscreteColorsStyle *)v5 initWithOpaqueColors:colors variation:[(_PREditingPosterContentVibrantMonotoneStyleCoordinatorImpl *)self _preferredMaterialType] preferredMaterialType:0.0];

    variationAppliedColors = [(PRPosterContentDiscreteColorsStyle *)v8 variationAppliedColors];
    firstObject = [variationAppliedColors firstObject];
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

- (id)_sliderThumbDisplayColor
{
  style = [(_PREditingPosterContentStyleCoordinatorImpl *)self style];
  allowsVariation = [style allowsVariation];

  if (allowsVariation)
  {
    [(_PREditingPosterContentStyleCoordinatorImpl *)self variation];
    v6 = (v5 + 1.0) * 0.5 + -1.0;
    v7 = [PRPosterContentDiscreteColorsStyle alloc];
    style2 = [(_PREditingPosterContentStyleCoordinatorImpl *)self style];
    colors = [style2 colors];
    v10 = [(PRPosterContentDiscreteColorsStyle *)v7 initWithOpaqueColors:colors variation:[(_PREditingPosterContentVibrantMonotoneStyleCoordinatorImpl *)self _preferredMaterialType] preferredMaterialType:v6];

    variationAppliedColors = [(PRPosterContentDiscreteColorsStyle *)v10 variationAppliedColors];
    firstObject = [variationAppliedColors firstObject];
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

- (id)_itemDisplayColor
{
  style = [(_PREditingPosterContentStyleCoordinatorImpl *)self style];
  allowsVariation = [style allowsVariation];

  if (allowsVariation)
  {
    [(_PREditingPosterContentStyleCoordinatorImpl *)self variation];
    v6 = (v5 + 1.0) * 0.5 + -1.0;
    v7 = [PRPosterContentDiscreteColorsStyle alloc];
    style2 = [(_PREditingPosterContentStyleCoordinatorImpl *)self style];
    colors = [style2 colors];
    v10 = [(PRPosterContentDiscreteColorsStyle *)v7 initWithOpaqueColors:colors variation:[(_PREditingPosterContentVibrantMonotoneStyleCoordinatorImpl *)self _preferredMaterialType] preferredMaterialType:v6];

    variationAppliedColors = [(PRPosterContentDiscreteColorsStyle *)v10 variationAppliedColors];
    firstObject = [variationAppliedColors firstObject];
  }

  else
  {
    firstObject = [(_PREditingPosterContentVibrantMonotoneStyleCoordinatorImpl *)self _effectiveColor];
  }

  return firstObject;
}

- (id)_effectiveColor
{
  variationSupportingStyle = [(_PREditingPosterContentStyleCoordinatorImpl *)self variationSupportingStyle];
  variationAppliedColors = [variationSupportingStyle variationAppliedColors];
  firstObject = [variationAppliedColors firstObject];
  v6 = firstObject;
  if (firstObject)
  {
    firstObject2 = firstObject;
  }

  else
  {
    style = [(_PREditingPosterContentStyleCoordinatorImpl *)self style];
    colors = [style colors];
    firstObject2 = [colors firstObject];
  }

  return firstObject2;
}

- (void)setVariation:(double)variation glassStyleApplied:(BOOL)applied
{
  appliedCopy = applied;
  style = [(_PREditingPosterContentStyleCoordinatorImpl *)self style];
  allowsVariation = [style allowsVariation];

  if (allowsVariation)
  {
    v14.receiver = self;
    v14.super_class = _PREditingPosterContentVibrantMonotoneStyleCoordinatorImpl;
    [(_PREditingPosterContentStyleCoordinatorImpl *)&v14 setVariation:appliedCopy glassStyleApplied:variation];
    _itemDisplayColor = [(_PREditingPosterContentVibrantMonotoneStyleCoordinatorImpl *)self _itemDisplayColor];
    if (appliedCopy)
    {
      _itemDisplayColor2 = [objc_alloc(MEMORY[0x1E69DD818]) initWithVariant:0];
      [_itemDisplayColor2 setTintColor:_itemDisplayColor];
      [(UIView *)self->_itemViewContentView _setBackground:_itemDisplayColor2];
    }

    else
    {
      itemViewContentView = self->_itemViewContentView;
      _itemDisplayColor2 = [(_PREditingPosterContentVibrantMonotoneStyleCoordinatorImpl *)self _itemDisplayColor];
      [(UIView *)itemViewContentView setBackgroundColor:_itemDisplayColor2];
    }

    variationSliderThumbContentView = self->_variationSliderThumbContentView;
    _sliderThumbDisplayColor = [(_PREditingPosterContentVibrantMonotoneStyleCoordinatorImpl *)self _sliderThumbDisplayColor];
    [(UIView *)variationSliderThumbContentView setBackgroundColor:_sliderThumbDisplayColor];
  }
}

- (double)itemViewLuminance
{
  _effectiveColor = [(_PREditingPosterContentVibrantMonotoneStyleCoordinatorImpl *)self _effectiveColor];
  v3 = [[PRPosterColorValues alloc] initWithColor:_effectiveColor];
  hslValues = [(PRPosterColorValues *)v3 hslValues];
  [hslValues luminance];
  v6 = v5;

  return v6;
}

- (id)itemViewWithGlassStyleApplied:(BOOL)applied
{
  itemView = self->_itemView;
  if (!itemView)
  {
    v5 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{0.0, 0.0, 50.0, 50.0}];
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(UIView *)v5 setBackgroundColor:clearColor];

    [(UIView *)v5 setClipsToBounds:1];
    v7 = objc_alloc(MEMORY[0x1E69DD250]);
    [(UIView *)v5 bounds];
    v8 = [v7 initWithFrame:?];
    [v8 setAutoresizingMask:18];
    [(UIView *)v5 addSubview:v8];
    objc_storeStrong(&self->_itemViewContentView, v8);
    _itemDisplayColor = [(_PREditingPosterContentVibrantMonotoneStyleCoordinatorImpl *)self _itemDisplayColor];
    [v8 setBackgroundColor:_itemDisplayColor];
    layer = [v8 layer];
    [layer setCornerRadius:17.0];

    layer2 = [v8 layer];
    [layer2 setCornerCurve:*MEMORY[0x1E69796E8]];

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
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    [(UIView *)v4 setBackgroundColor:whiteColor];

    [(UIView *)v4 setClipsToBounds:1];
    v6 = objc_alloc(MEMORY[0x1E69DD250]);
    [(UIView *)v4 bounds];
    v7 = [v6 initWithFrame:?];
    [(UIView *)v7 setAutoresizingMask:18];
    [(UIView *)v4 addSubview:v7];
    variationSliderThumbContentView = self->_variationSliderThumbContentView;
    self->_variationSliderThumbContentView = v7;
    v9 = v7;

    _sliderThumbDisplayColor = [(_PREditingPosterContentVibrantMonotoneStyleCoordinatorImpl *)self _sliderThumbDisplayColor];
    [(UIView *)v9 setBackgroundColor:_sliderThumbDisplayColor];
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
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    [(UIView *)v4 setBackgroundColor:whiteColor];

    [(UIView *)v4 setClipsToBounds:1];
    v6 = objc_alloc(MEMORY[0x1E69C5560]);
    [(UIView *)v4 bounds];
    v7 = [v6 initWithFrame:0 usesBlur:?];
    _minDisplayColor = [(_PREditingPosterContentVibrantMonotoneStyleCoordinatorImpl *)self _minDisplayColor];
    _maxDisplayColor = [(_PREditingPosterContentVibrantMonotoneStyleCoordinatorImpl *)self _maxDisplayColor];
    v15[0] = [_minDisplayColor CGColor];
    v15[1] = [_maxDisplayColor CGColor];
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