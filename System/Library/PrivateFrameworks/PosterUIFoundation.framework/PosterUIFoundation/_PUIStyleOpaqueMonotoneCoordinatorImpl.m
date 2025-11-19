@interface _PUIStyleOpaqueMonotoneCoordinatorImpl
- (double)itemViewLuminance;
- (id)effectiveColor;
- (id)itemView;
- (id)variationSliderThumbView;
- (id)variationSliderTrackView;
- (void)setVariation:(double)a3;
@end

@implementation _PUIStyleOpaqueMonotoneCoordinatorImpl

- (id)effectiveColor
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
    v10.receiver = self;
    v10.super_class = _PUIStyleOpaqueMonotoneCoordinatorImpl;
    [(PUIStyleUICoordinatorImpl *)&v10 setVariation:a3];
    v7 = [(PUIStyleUICoordinatorImpl *)self variationSupportingStyle];
    v8 = [v7 variationAppliedColors];
    v9 = [v8 firstObject];

    [(UIView *)self->_itemView setBackgroundColor:v9];
    [(UIView *)self->_variationSliderThumbView setBackgroundColor:v9];
  }
}

- (double)itemViewLuminance
{
  v2 = [(_PUIStyleOpaqueMonotoneCoordinatorImpl *)self effectiveColor];
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
    v5 = [(_PUIStyleOpaqueMonotoneCoordinatorImpl *)self effectiveColor];
    [(UIView *)v4 setBackgroundColor:v5];
    v6 = self->_itemView;
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
    v5 = [(_PUIStyleOpaqueMonotoneCoordinatorImpl *)self effectiveColor];
    [(UIView *)v4 setBackgroundColor:v5];
    v6 = self->_variationSliderThumbView;
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
    v4 = [[PUIGradientView alloc] initWithFrame:0 usesBlur:0.0, 0.0, 100.0, 50.0];
    v5 = [(PUIStyleUICoordinatorImpl *)self style];
    v6 = [v5 copyWithVariation:-1.0];
    v7 = [v5 copyWithVariation:1.0];
    v8 = [v6 variationAppliedColors];
    v9 = [v8 firstObject];

    v10 = [v7 variationAppliedColors];
    v11 = [v10 firstObject];

    v15[0] = [v9 CGColor];
    v15[1] = [v11 CGColor];
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
    [(PUIGradientView *)v4 setColors:v12 locations:0 type:0];

    [(PUIGradientView *)v4 setStartPoint:0.0 endPoint:0.5, 1.0, 0.5];
    v13 = self->_variationSliderTrackView;
    self->_variationSliderTrackView = v4;

    variationSliderTrackView = self->_variationSliderTrackView;
  }

  return variationSliderTrackView;
}

@end