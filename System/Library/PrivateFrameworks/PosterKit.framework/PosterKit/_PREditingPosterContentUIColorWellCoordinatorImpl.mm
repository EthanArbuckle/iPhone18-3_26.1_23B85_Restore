@interface _PREditingPosterContentUIColorWellCoordinatorImpl
- (_PREditingPosterContentUIColorWellCoordinatorImpl)initWithStyle:(id)a3 colorWellView:(id)a4;
- (id)effectiveColor;
- (id)variationSliderThumbView;
- (id)variationSliderTrackView;
- (void)setVariation:(double)a3 glassStyleApplied:(BOOL)a4;
@end

@implementation _PREditingPosterContentUIColorWellCoordinatorImpl

- (_PREditingPosterContentUIColorWellCoordinatorImpl)initWithStyle:(id)a3 colorWellView:(id)a4
{
  v7 = a4;
  v8 = [(_PREditingPosterContentStyleCoordinatorImpl *)self initWithStyle:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_colorWellView, a4);
  }

  return v9;
}

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
  v7.receiver = self;
  v7.super_class = _PREditingPosterContentUIColorWellCoordinatorImpl;
  [(_PREditingPosterContentStyleCoordinatorImpl *)&v7 setVariation:a4 glassStyleApplied:a3];
  v5 = [(_PREditingPosterContentUIColorWellCoordinatorImpl *)self effectiveColor];
  v6 = [(PUIColorWellView *)self->_colorWellView colorWell];
  [v6 setSelectedColor:v5];

  [(UIView *)self->_variationSliderThumbView setBackgroundColor:v5];
}

- (id)variationSliderThumbView
{
  variationSliderThumbView = self->_variationSliderThumbView;
  if (!variationSliderThumbView)
  {
    v4 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{0.0, 0.0, 50.0, 50.0}];
    v5 = [(_PREditingPosterContentUIColorWellCoordinatorImpl *)self effectiveColor];
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