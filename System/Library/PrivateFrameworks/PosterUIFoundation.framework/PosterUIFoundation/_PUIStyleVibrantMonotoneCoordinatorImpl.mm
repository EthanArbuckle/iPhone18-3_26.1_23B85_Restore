@interface _PUIStyleVibrantMonotoneCoordinatorImpl
- (double)itemViewLuminance;
- (id)_effectiveColor;
- (id)_itemDisplayColor;
- (id)_maxDisplayColor;
- (id)_minDisplayColor;
- (id)_sliderThumbDisplayColor;
- (id)itemView;
- (id)transparancyBackgroundImageForHeight:(double)height;
- (id)variationSliderThumbView;
- (id)variationSliderTrackView;
- (void)setVariation:(double)variation;
@end

@implementation _PUIStyleVibrantMonotoneCoordinatorImpl

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
    v16[2] = __80___PUIStyleVibrantMonotoneCoordinatorImpl_transparancyBackgroundImageForHeight___block_invoke;
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
  style = [(PUIStyleUICoordinatorImpl *)self style];
  allowsVariation = [style allowsVariation];

  if (allowsVariation)
  {
    v5 = [PUIStyleDiscreteColors alloc];
    style2 = [(PUIStyleUICoordinatorImpl *)self style];
    colors = [style2 colors];
    v8 = [(PUIStyleDiscreteColors *)v5 initWithOpaqueColors:colors variation:-1.0];

    variationAppliedColors = [(PUIStyleDiscreteColors *)v8 variationAppliedColors];
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
  style = [(PUIStyleUICoordinatorImpl *)self style];
  allowsVariation = [style allowsVariation];

  if (allowsVariation)
  {
    v5 = [PUIStyleDiscreteColors alloc];
    style2 = [(PUIStyleUICoordinatorImpl *)self style];
    colors = [style2 colors];
    v8 = [(PUIStyleDiscreteColors *)v5 initWithOpaqueColors:colors variation:0.0];

    variationAppliedColors = [(PUIStyleDiscreteColors *)v8 variationAppliedColors];
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
  style = [(PUIStyleUICoordinatorImpl *)self style];
  allowsVariation = [style allowsVariation];

  if (allowsVariation)
  {
    [(PUIStyleUICoordinatorImpl *)self variation];
    v6 = (v5 + 1.0) * 0.5 + -1.0;
    v7 = [PUIStyleDiscreteColors alloc];
    style2 = [(PUIStyleUICoordinatorImpl *)self style];
    colors = [style2 colors];
    v10 = [(PUIStyleDiscreteColors *)v7 initWithOpaqueColors:colors variation:v6];

    variationAppliedColors = [(PUIStyleDiscreteColors *)v10 variationAppliedColors];
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
  style = [(PUIStyleUICoordinatorImpl *)self style];
  allowsVariation = [style allowsVariation];

  if (allowsVariation)
  {
    [(PUIStyleUICoordinatorImpl *)self variation];
    v6 = (v5 + 1.0) * 0.5 + -1.0;
    v7 = [PUIStyleDiscreteColors alloc];
    style2 = [(PUIStyleUICoordinatorImpl *)self style];
    colors = [style2 colors];
    v10 = [(PUIStyleDiscreteColors *)v7 initWithOpaqueColors:colors variation:v6];

    variationAppliedColors = [(PUIStyleDiscreteColors *)v10 variationAppliedColors];
    firstObject = [variationAppliedColors firstObject];
  }

  else
  {
    firstObject = [(_PUIStyleVibrantMonotoneCoordinatorImpl *)self _effectiveColor];
  }

  return firstObject;
}

- (id)_effectiveColor
{
  variationSupportingStyle = [(PUIStyleUICoordinatorImpl *)self variationSupportingStyle];
  variationAppliedColors = [variationSupportingStyle variationAppliedColors];
  firstObject = [variationAppliedColors firstObject];
  v6 = firstObject;
  if (firstObject)
  {
    firstObject2 = firstObject;
  }

  else
  {
    style = [(PUIStyleUICoordinatorImpl *)self style];
    colors = [style colors];
    firstObject2 = [colors firstObject];
  }

  return firstObject2;
}

- (void)setVariation:(double)variation
{
  style = [(PUIStyleUICoordinatorImpl *)self style];
  allowsVariation = [style allowsVariation];

  if (allowsVariation)
  {
    v11.receiver = self;
    v11.super_class = _PUIStyleVibrantMonotoneCoordinatorImpl;
    [(PUIStyleUICoordinatorImpl *)&v11 setVariation:variation];
    itemViewContentView = self->_itemViewContentView;
    _itemDisplayColor = [(_PUIStyleVibrantMonotoneCoordinatorImpl *)self _itemDisplayColor];
    [(UIView *)itemViewContentView setBackgroundColor:_itemDisplayColor];

    variationSliderThumbContentView = self->_variationSliderThumbContentView;
    _sliderThumbDisplayColor = [(_PUIStyleVibrantMonotoneCoordinatorImpl *)self _sliderThumbDisplayColor];
    [(UIView *)variationSliderThumbContentView setBackgroundColor:_sliderThumbDisplayColor];
  }
}

- (double)itemViewLuminance
{
  _effectiveColor = [(_PUIStyleVibrantMonotoneCoordinatorImpl *)self _effectiveColor];
  v3 = [[PUIColorValues alloc] initWithColor:_effectiveColor];
  hslValues = [(PUIColorValues *)v3 hslValues];
  [hslValues luminance];
  v6 = v5;

  return v6;
}

- (id)itemView
{
  itemView = self->_itemView;
  if (!itemView)
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
    itemViewContentView = self->_itemViewContentView;
    self->_itemViewContentView = v7;
    v9 = v7;

    _itemDisplayColor = [(_PUIStyleVibrantMonotoneCoordinatorImpl *)self _itemDisplayColor];
    [(UIView *)v9 setBackgroundColor:_itemDisplayColor];

    v11 = self->_itemView;
    self->_itemView = v4;

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

    _sliderThumbDisplayColor = [(_PUIStyleVibrantMonotoneCoordinatorImpl *)self _sliderThumbDisplayColor];
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
    v6 = [PUIGradientView alloc];
    [(UIView *)v4 bounds];
    v7 = [(PUIGradientView *)v6 initWithFrame:0 usesBlur:?];
    _minDisplayColor = [(_PUIStyleVibrantMonotoneCoordinatorImpl *)self _minDisplayColor];
    _maxDisplayColor = [(_PUIStyleVibrantMonotoneCoordinatorImpl *)self _maxDisplayColor];
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