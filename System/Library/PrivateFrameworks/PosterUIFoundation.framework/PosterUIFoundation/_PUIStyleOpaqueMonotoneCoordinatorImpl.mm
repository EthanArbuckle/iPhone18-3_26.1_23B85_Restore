@interface _PUIStyleOpaqueMonotoneCoordinatorImpl
- (double)itemViewLuminance;
- (id)effectiveColor;
- (id)itemView;
- (id)variationSliderThumbView;
- (id)variationSliderTrackView;
- (void)setVariation:(double)variation;
@end

@implementation _PUIStyleOpaqueMonotoneCoordinatorImpl

- (id)effectiveColor
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
    v10.receiver = self;
    v10.super_class = _PUIStyleOpaqueMonotoneCoordinatorImpl;
    [(PUIStyleUICoordinatorImpl *)&v10 setVariation:variation];
    variationSupportingStyle = [(PUIStyleUICoordinatorImpl *)self variationSupportingStyle];
    variationAppliedColors = [variationSupportingStyle variationAppliedColors];
    firstObject = [variationAppliedColors firstObject];

    [(UIView *)self->_itemView setBackgroundColor:firstObject];
    [(UIView *)self->_variationSliderThumbView setBackgroundColor:firstObject];
  }
}

- (double)itemViewLuminance
{
  effectiveColor = [(_PUIStyleOpaqueMonotoneCoordinatorImpl *)self effectiveColor];
  v3 = [[PUIColorValues alloc] initWithColor:effectiveColor];
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
    effectiveColor = [(_PUIStyleOpaqueMonotoneCoordinatorImpl *)self effectiveColor];
    [(UIView *)v4 setBackgroundColor:effectiveColor];
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
    effectiveColor = [(_PUIStyleOpaqueMonotoneCoordinatorImpl *)self effectiveColor];
    [(UIView *)v4 setBackgroundColor:effectiveColor];
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
    style = [(PUIStyleUICoordinatorImpl *)self style];
    v6 = [style copyWithVariation:-1.0];
    v7 = [style copyWithVariation:1.0];
    variationAppliedColors = [v6 variationAppliedColors];
    firstObject = [variationAppliedColors firstObject];

    variationAppliedColors2 = [v7 variationAppliedColors];
    firstObject2 = [variationAppliedColors2 firstObject];

    v15[0] = [firstObject CGColor];
    v15[1] = [firstObject2 CGColor];
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