@interface _PREditingPosterContentOpaqueMonotoneStyleCoordinatorImpl
- (double)itemViewLuminance;
- (id)effectiveColor;
- (id)itemViewWithGlassStyleApplied:(BOOL)a3;
- (id)variationSliderThumbView;
- (id)variationSliderTrackView;
- (void)setVariation:(double)a3 glassStyleApplied:(BOOL)a4;
@end

@implementation _PREditingPosterContentOpaqueMonotoneStyleCoordinatorImpl

- (id)effectiveColor
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
    v12.receiver = self;
    v12.super_class = _PREditingPosterContentOpaqueMonotoneStyleCoordinatorImpl;
    [(_PREditingPosterContentStyleCoordinatorImpl *)&v12 setVariation:v4 glassStyleApplied:a3];
    v9 = [(_PREditingPosterContentStyleCoordinatorImpl *)self variationSupportingStyle];
    v10 = [v9 variationAppliedColors];
    v11 = [v10 firstObject];

    [(UIView *)self->_itemView setBackgroundColor:v11];
    [(UIView *)self->_variationSliderThumbView setBackgroundColor:v11];
  }
}

- (double)itemViewLuminance
{
  v2 = [(_PREditingPosterContentOpaqueMonotoneStyleCoordinatorImpl *)self effectiveColor];
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
    v6 = [(_PREditingPosterContentOpaqueMonotoneStyleCoordinatorImpl *)self effectiveColor];
    [(UIView *)v5 setBackgroundColor:v6];
    v7 = self->_itemView;
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
    v5 = [(_PREditingPosterContentOpaqueMonotoneStyleCoordinatorImpl *)self effectiveColor];
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
    v4 = [objc_alloc(MEMORY[0x1E69C5560]) initWithFrame:0 usesBlur:{0.0, 0.0, 100.0, 50.0}];
    v5 = [(_PREditingPosterContentStyleCoordinatorImpl *)self style];
    v6 = [v5 copyWithVariation:-1.0];
    v7 = [v5 copyWithVariation:1.0];
    v8 = [v6 variationAppliedColors];
    v9 = [v8 firstObject];

    v10 = [v7 variationAppliedColors];
    v11 = [v10 firstObject];

    v15[0] = [v9 CGColor];
    v15[1] = [v11 CGColor];
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
    [v4 setColors:v12 locations:0 type:0];

    [v4 setStartPoint:0.0 endPoint:{0.5, 1.0, 0.5}];
    v13 = self->_variationSliderTrackView;
    self->_variationSliderTrackView = v4;

    variationSliderTrackView = self->_variationSliderTrackView;
  }

  return variationSliderTrackView;
}

@end