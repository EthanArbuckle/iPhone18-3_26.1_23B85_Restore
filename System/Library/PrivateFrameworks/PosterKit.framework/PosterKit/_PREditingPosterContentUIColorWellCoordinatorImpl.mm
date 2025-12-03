@interface _PREditingPosterContentUIColorWellCoordinatorImpl
- (_PREditingPosterContentUIColorWellCoordinatorImpl)initWithStyle:(id)style colorWellView:(id)view;
- (id)effectiveColor;
- (id)variationSliderThumbView;
- (id)variationSliderTrackView;
- (void)setVariation:(double)variation glassStyleApplied:(BOOL)applied;
@end

@implementation _PREditingPosterContentUIColorWellCoordinatorImpl

- (_PREditingPosterContentUIColorWellCoordinatorImpl)initWithStyle:(id)style colorWellView:(id)view
{
  viewCopy = view;
  v8 = [(_PREditingPosterContentStyleCoordinatorImpl *)self initWithStyle:style];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_colorWellView, view);
  }

  return v9;
}

- (id)effectiveColor
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
  v7.receiver = self;
  v7.super_class = _PREditingPosterContentUIColorWellCoordinatorImpl;
  [(_PREditingPosterContentStyleCoordinatorImpl *)&v7 setVariation:applied glassStyleApplied:variation];
  effectiveColor = [(_PREditingPosterContentUIColorWellCoordinatorImpl *)self effectiveColor];
  colorWell = [(PUIColorWellView *)self->_colorWellView colorWell];
  [colorWell setSelectedColor:effectiveColor];

  [(UIView *)self->_variationSliderThumbView setBackgroundColor:effectiveColor];
}

- (id)variationSliderThumbView
{
  variationSliderThumbView = self->_variationSliderThumbView;
  if (!variationSliderThumbView)
  {
    v4 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{0.0, 0.0, 50.0, 50.0}];
    effectiveColor = [(_PREditingPosterContentUIColorWellCoordinatorImpl *)self effectiveColor];
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
    v4 = [objc_alloc(MEMORY[0x1E69C5560]) initWithFrame:0 usesBlur:{0.0, 0.0, 100.0, 50.0}];
    style = [(_PREditingPosterContentStyleCoordinatorImpl *)self style];
    v6 = [style copyWithVariation:-1.0];
    v7 = [style copyWithVariation:1.0];
    variationAppliedColors = [v6 variationAppliedColors];
    firstObject = [variationAppliedColors firstObject];

    variationAppliedColors2 = [v7 variationAppliedColors];
    firstObject2 = [variationAppliedColors2 firstObject];

    v15[0] = [firstObject CGColor];
    v15[1] = [firstObject2 CGColor];
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