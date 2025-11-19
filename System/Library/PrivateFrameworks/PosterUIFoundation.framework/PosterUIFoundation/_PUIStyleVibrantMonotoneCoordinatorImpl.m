@interface _PUIStyleVibrantMonotoneCoordinatorImpl
- (double)itemViewLuminance;
- (id)_effectiveColor;
- (id)_itemDisplayColor;
- (id)_maxDisplayColor;
- (id)_minDisplayColor;
- (id)_sliderThumbDisplayColor;
- (id)itemView;
- (id)transparancyBackgroundImageForHeight:(double)a3;
- (id)variationSliderThumbView;
- (id)variationSliderTrackView;
- (void)setVariation:(double)a3;
@end

@implementation _PUIStyleVibrantMonotoneCoordinatorImpl

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
    v16[2] = __80___PUIStyleVibrantMonotoneCoordinatorImpl_transparancyBackgroundImageForHeight___block_invoke;
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
  v3 = [(PUIStyleUICoordinatorImpl *)self style];
  v4 = [v3 allowsVariation];

  if (v4)
  {
    v5 = [PUIStyleDiscreteColors alloc];
    v6 = [(PUIStyleUICoordinatorImpl *)self style];
    v7 = [v6 colors];
    v8 = [(PUIStyleDiscreteColors *)v5 initWithOpaqueColors:v7 variation:-1.0];

    v9 = [(PUIStyleDiscreteColors *)v8 variationAppliedColors];
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
  v3 = [(PUIStyleUICoordinatorImpl *)self style];
  v4 = [v3 allowsVariation];

  if (v4)
  {
    v5 = [PUIStyleDiscreteColors alloc];
    v6 = [(PUIStyleUICoordinatorImpl *)self style];
    v7 = [v6 colors];
    v8 = [(PUIStyleDiscreteColors *)v5 initWithOpaqueColors:v7 variation:0.0];

    v9 = [(PUIStyleDiscreteColors *)v8 variationAppliedColors];
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
  v3 = [(PUIStyleUICoordinatorImpl *)self style];
  v4 = [v3 allowsVariation];

  if (v4)
  {
    [(PUIStyleUICoordinatorImpl *)self variation];
    v6 = (v5 + 1.0) * 0.5 + -1.0;
    v7 = [PUIStyleDiscreteColors alloc];
    v8 = [(PUIStyleUICoordinatorImpl *)self style];
    v9 = [v8 colors];
    v10 = [(PUIStyleDiscreteColors *)v7 initWithOpaqueColors:v9 variation:v6];

    v11 = [(PUIStyleDiscreteColors *)v10 variationAppliedColors];
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
  v3 = [(PUIStyleUICoordinatorImpl *)self style];
  v4 = [v3 allowsVariation];

  if (v4)
  {
    [(PUIStyleUICoordinatorImpl *)self variation];
    v6 = (v5 + 1.0) * 0.5 + -1.0;
    v7 = [PUIStyleDiscreteColors alloc];
    v8 = [(PUIStyleUICoordinatorImpl *)self style];
    v9 = [v8 colors];
    v10 = [(PUIStyleDiscreteColors *)v7 initWithOpaqueColors:v9 variation:v6];

    v11 = [(PUIStyleDiscreteColors *)v10 variationAppliedColors];
    v12 = [v11 firstObject];
  }

  else
  {
    v12 = [(_PUIStyleVibrantMonotoneCoordinatorImpl *)self _effectiveColor];
  }

  return v12;
}

- (id)_effectiveColor
{
  v3 = [(PUIStyleUICoordinatorImpl *)self variationSupportingStyle];
  v4 = [v3 variationAppliedColors];
  v5 = [v4 firstObject];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v8 = [(PUIStyleUICoordinatorImpl *)self style];
    v9 = [v8 colors];
    v7 = [v9 firstObject];
  }

  return v7;
}

- (void)setVariation:(double)a3
{
  v5 = [(PUIStyleUICoordinatorImpl *)self style];
  v6 = [v5 allowsVariation];

  if (v6)
  {
    v11.receiver = self;
    v11.super_class = _PUIStyleVibrantMonotoneCoordinatorImpl;
    [(PUIStyleUICoordinatorImpl *)&v11 setVariation:a3];
    itemViewContentView = self->_itemViewContentView;
    v8 = [(_PUIStyleVibrantMonotoneCoordinatorImpl *)self _itemDisplayColor];
    [(UIView *)itemViewContentView setBackgroundColor:v8];

    variationSliderThumbContentView = self->_variationSliderThumbContentView;
    v10 = [(_PUIStyleVibrantMonotoneCoordinatorImpl *)self _sliderThumbDisplayColor];
    [(UIView *)variationSliderThumbContentView setBackgroundColor:v10];
  }
}

- (double)itemViewLuminance
{
  v2 = [(_PUIStyleVibrantMonotoneCoordinatorImpl *)self _effectiveColor];
  v3 = [[PUIColorValues alloc] initWithColor:v2];
  v4 = [(PUIColorValues *)v3 hslValues];
  [v4 luminance];
  v6 = v5;

  return v6;
}

- (id)itemView
{
  itemView = self->_itemView;
  if (!itemView)
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
    itemViewContentView = self->_itemViewContentView;
    self->_itemViewContentView = v7;
    v9 = v7;

    v10 = [(_PUIStyleVibrantMonotoneCoordinatorImpl *)self _itemDisplayColor];
    [(UIView *)v9 setBackgroundColor:v10];

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

    v10 = [(_PUIStyleVibrantMonotoneCoordinatorImpl *)self _sliderThumbDisplayColor];
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
    v6 = [PUIGradientView alloc];
    [(UIView *)v4 bounds];
    v7 = [(PUIGradientView *)v6 initWithFrame:0 usesBlur:?];
    v8 = [(_PUIStyleVibrantMonotoneCoordinatorImpl *)self _minDisplayColor];
    v9 = [(_PUIStyleVibrantMonotoneCoordinatorImpl *)self _maxDisplayColor];
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