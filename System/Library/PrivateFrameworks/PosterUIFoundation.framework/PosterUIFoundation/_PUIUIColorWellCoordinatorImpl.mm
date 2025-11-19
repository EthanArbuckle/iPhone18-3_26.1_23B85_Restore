@interface _PUIUIColorWellCoordinatorImpl
- (_PUIUIColorWellCoordinatorImpl)initWithStyle:(id)a3 colorWellView:(id)a4;
- (id)effectiveColor;
- (id)variationSliderThumbView;
- (id)variationSliderTrackView;
- (void)setVariation:(double)a3;
@end

@implementation _PUIUIColorWellCoordinatorImpl

- (_PUIUIColorWellCoordinatorImpl)initWithStyle:(id)a3 colorWellView:(id)a4
{
  v7 = a4;
  v8 = [(PUIStyleUICoordinatorImpl *)self initWithStyle:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_colorWellView, a4);
  }

  return v9;
}

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
  v6.receiver = self;
  v6.super_class = _PUIUIColorWellCoordinatorImpl;
  [(PUIStyleUICoordinatorImpl *)&v6 setVariation:a3];
  v4 = [(_PUIUIColorWellCoordinatorImpl *)self effectiveColor];
  v5 = [(PUIColorWellView *)self->_colorWellView colorWell];
  [v5 setSelectedColor:v4];

  [(UIView *)self->_variationSliderThumbView setBackgroundColor:v4];
}

- (id)variationSliderThumbView
{
  variationSliderThumbView = self->_variationSliderThumbView;
  if (!variationSliderThumbView)
  {
    v4 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{0.0, 0.0, 50.0, 50.0}];
    v5 = [(_PUIUIColorWellCoordinatorImpl *)self effectiveColor];
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