@interface PUIStyleFontWeightSlider
- (CGRect)trackRectForBounds:(CGRect)a3;
- (PUIStyleFontWeightSlider)init;
- (void)layoutSubviews;
@end

@implementation PUIStyleFontWeightSlider

- (PUIStyleFontWeightSlider)init
{
  v10.receiver = self;
  v10.super_class = PUIStyleFontWeightSlider;
  v2 = [(PUIStyleFontWeightSlider *)&v10 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E69DC888] clearColor];
    [(PUIStyleFontWeightSlider *)v2 setMinimumTrackTintColor:v3];

    v4 = [MEMORY[0x1E69DC888] clearColor];
    [(PUIStyleFontWeightSlider *)v2 setMaximumTrackTintColor:v4];

    v5 = [_PUIFontWeightSliderTrackView alloc];
    v6 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.2];
    v7 = [(_PUIFontWeightSliderTrackView *)v5 initWithTrackBackgroundColor:v6];
    trackView = v2->_trackView;
    v2->_trackView = v7;

    [(PUIStyleFontWeightSlider *)v2 addSubview:v2->_trackView];
    [(PUIStyleFontWeightSlider *)v2 sendSubviewToBack:v2->_trackView];
  }

  return v2;
}

- (void)layoutSubviews
{
  v7.receiver = self;
  v7.super_class = PUIStyleFontWeightSlider;
  [(PUIStyleFontWeightSlider *)&v7 layoutSubviews];
  [(PUIStyleFontWeightSlider *)self bounds];
  [(PUIStyleFontWeightSlider *)self trackRectForBounds:?];
  v4 = v3;
  v6 = v5;
  [(PUIStyleFontWeightSlider *)self bounds];
  [(_PUIFontWeightSliderTrackView *)self->_trackView setFrame:v4, 0.0, v6];
}

- (CGRect)trackRectForBounds:(CGRect)a3
{
  v9.receiver = self;
  v9.super_class = PUIStyleFontWeightSlider;
  [(PUIStyleFontWeightSlider *)&v9 trackRectForBounds:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v6 = v5 + -3.0;
  v8 = v7 + 6.0;
  result.size.height = v4;
  result.size.width = v8;
  result.origin.y = v3;
  result.origin.x = v6;
  return result;
}

@end