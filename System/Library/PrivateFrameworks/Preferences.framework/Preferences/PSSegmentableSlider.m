@interface PSSegmentableSlider
- (CGRect)_thumbRectForBounds:(CGRect)a3 trackRect:(CGRect)a4 value:(float)a5;
- (CGRect)thumbRectForBounds:(CGRect)a3 trackRect:(CGRect)a4 value:(float)a5;
- (PSSegmentableSlider)initWithFrame:(CGRect)a3;
- (float)offsetBetweenTicksForNumberOfTicks:(unint64_t)a3;
- (unint64_t)numberOfTicks;
- (void)_drawRect:(CGRect)a3;
- (void)_setValue:(float)a3 animated:(BOOL)a4;
- (void)_updateSliderConfiguration;
- (void)controlInteractionBegan:(id)a3;
- (void)controlInteractionEnded:(id)a3;
- (void)drawRect:(CGRect)a3;
- (void)setValue:(float)a3 animated:(BOOL)a4;
- (void)sliderTapped:(id)a3;
@end

@implementation PSSegmentableSlider

- (PSSegmentableSlider)initWithFrame:(CGRect)a3
{
  v16.receiver = self;
  v16.super_class = PSSegmentableSlider;
  v3 = [(PSSegmentableSlider *)&v16 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    if (!__psSegmentableSliderClass)
    {
      __psSegmentableSliderClass = objc_opt_class();
      __psSegmentableSliderDrawRect = [__psSegmentableSliderClass instanceMethodForSelector:sel_drawRect_];
      __psSegmentableSliderThumbRectForBoundsTrackRectValue = [__psSegmentableSliderClass instanceMethodForSelector:sel_thumbRectForBounds_trackRect_value_];
    }

    v4 = [(PSSegmentableSlider *)v3 methodForSelector:sel_drawRect_];
    v5 = [(PSSegmentableSlider *)v3 methodForSelector:sel_thumbRectForBounds_trackRect_value_];
    v7 = v4 == __psSegmentableSliderDrawRect && v5 == __psSegmentableSliderThumbRectForBoundsTrackRectValue;
    v3->_shouldUseConfigurationBasedSliderImpl = v7;
    if (![(PSSegmentableSlider *)v3 shouldUseConfigurationBasedSliderImpl])
    {
      v8 = [[PSNonMovableTapGestureRecognizer alloc] initWithTarget:v3 action:sel_sliderTapped_];
      [(PSSegmentableSlider *)v3 addGestureRecognizer:v8];
      [(PSSegmentableSlider *)v3 addTarget:v3 action:sel_controlInteractionBegan_ forControlEvents:1];
      [(PSSegmentableSlider *)v3 addTarget:v3 action:sel_controlInteractionEnded_ forControlEvents:448];
    }

    v9 = +[PSListController appearance];
    v10 = [v9 segmentedSliderTrackColor];

    v11 = v10;
    if (!v10)
    {
      v11 = [MEMORY[0x1E69DC888] colorWithWhite:0.596078431 alpha:1.0];
    }

    v12 = [(PSSegmentableSlider *)v3 _accessibilityHigherContrastTintColorForColor:v11];
    trackMarkersColor = v3->_trackMarkersColor;
    v3->_trackMarkersColor = v12;

    if (!v10)
    {
    }

    v3->_locksToSegment = 1;
    v14 = [(PSSegmentableSlider *)v3 layer];
    [v14 setNeedsDisplayOnBoundsChange:1];
  }

  return v3;
}

- (void)sliderTapped:(id)a3
{
  [a3 locationInView:self];
  v5 = v4;
  [(PSSegmentableSlider *)self bounds];
  [(PSSegmentableSlider *)self trackRectForBounds:?];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [(PSSegmentableSlider *)self _shouldReverseLayoutDirection];
  v15 = v7;
  v16 = v9;
  v17 = v11;
  v18 = v13;
  if (v14)
  {
    v19 = CGRectGetMaxX(*&v15) - v5;
  }

  else
  {
    v19 = v5 - CGRectGetMinX(*&v15);
  }

  v29.origin.x = v7;
  v29.origin.y = v9;
  v29.size.width = v11;
  v29.size.height = v13;
  v20 = v19 / CGRectGetWidth(v29);
  if (v20 > 1.0)
  {
    v20 = 1.0;
  }

  v21 = fmax(v20, 0.0);
  [(PSSegmentableSlider *)self maximumValue];
  v23 = v22;
  [(PSSegmentableSlider *)self minimumValue];
  v25 = (v23 - v24);
  [(PSSegmentableSlider *)self minimumValue];
  v27 = v26 + v21 * v25;
  *&v27 = v27;
  [(PSSegmentableSlider *)self setValue:1 animated:v27];

  [(PSSegmentableSlider *)self sendActionsForControlEvents:4096];
}

- (void)_updateSliderConfiguration
{
  if ([(PSSegmentableSlider *)self shouldUseConfigurationBasedSliderImpl])
  {
    if (self->_segmented)
    {
      if (self->_locksToSegment)
      {
        v3 = 1;
      }

      else if (self->_snapsToSegment)
      {
        v3 = 2;
      }

      else
      {
        v3 = 0;
      }

      v4 = [objc_alloc(MEMORY[0x1E69DD720]) initWithNumberOfTicks:-[PSSegmentableSlider numberOfTicks](self behavior:{"numberOfTicks"), v3}];
    }

    else
    {
      v4 = objc_alloc_init(MEMORY[0x1E69DD718]);
    }

    v5 = v4;
    [(PSSegmentableSlider *)self _setSliderConfiguration:v4];
  }
}

- (unint64_t)numberOfTicks
{
  segmentCount = self->_segmentCount;
  if (segmentCount)
  {
    return (segmentCount + 1);
  }

  else
  {
    [(PSSegmentableSlider *)self maximumValue];
    v6 = v5;
    [(PSSegmentableSlider *)self minimumValue];
    return ((v6 - v7) + 1.0);
  }
}

- (float)offsetBetweenTicksForNumberOfTicks:(unint64_t)a3
{
  [(PSSegmentableSlider *)self maximumValue];
  v6 = v5;
  [(PSSegmentableSlider *)self minimumValue];
  return (v6 - v7) / (a3 - 1);
}

- (void)_setValue:(float)a3 animated:(BOOL)a4
{
  v4 = a4;
  if (self->_segmented)
  {
    [(PSSegmentableSlider *)self offsetBetweenTicksForNumberOfTicks:[(PSSegmentableSlider *)self numberOfTicks]];
    v8 = v7;
    [(PSSegmentableSlider *)self minimumValue];
    v10 = roundf((a3 - v9) / v8);
    [(PSSegmentableSlider *)self minimumValue];
    v12 = v11 + (v8 * v10);
    if (self->_locksToSegment || self->_snapsToSegment && vabds_f32(v12, a3) < 0.015)
    {
      if ([(PSSegmentableSlider *)self isTracking])
      {
        [(PSSegmentableSlider *)self value];
        if (v12 != v13)
        {
          [(UISelectionFeedbackGenerator *)self->_feedbackGenerator selectionChanged];
        }
      }

      a3 = v12;
    }
  }

  [(PSSegmentableSlider *)self value];
  if (a3 != *&v14)
  {
    v15.receiver = self;
    v15.super_class = PSSegmentableSlider;
    *&v14 = a3;
    [(PSSegmentableSlider *)&v15 setValue:v4 animated:v14];
  }
}

- (void)setValue:(float)a3 animated:(BOOL)a4
{
  v4 = a4;
  if ([(PSSegmentableSlider *)self shouldUseConfigurationBasedSliderImpl])
  {
    v8.receiver = self;
    v8.super_class = PSSegmentableSlider;
    *&v7 = a3;
    [(PSSegmentableSlider *)&v8 setValue:v4 animated:v7];
  }

  else
  {
    *&v7 = a3;

    [(PSSegmentableSlider *)self _setValue:v4 animated:v7];
  }
}

- (void)_drawRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(PSSegmentableSlider *)self _minTrackView];
  [v8 setHidden:self->_segmented];

  v9 = [(PSSegmentableSlider *)self _maxTrackView];
  [v9 setHidden:self->_segmented];

  if (self->_segmented)
  {
    [(PSSegmentableSlider *)self bounds];
    [(PSSegmentableSlider *)self trackRectForBounds:?];
    v11 = v10;
    v33 = v12;
    v14 = v13;
    v16 = v15;
    v35 = objc_alloc_init(MEMORY[0x1E69DC728]);
    [(UIColor *)self->_trackMarkersColor set];
    [v35 setLineWidth:v16];
    v17 = [(PSSegmentableSlider *)self numberOfTicks];
    [(PSSegmentableSlider *)self offsetBetweenTicksForNumberOfTicks:v17];
    if (v17)
    {
      v19 = v18;
      v20 = 0;
      v21 = v33 + v16 * 0.5;
      v22 = v21 + -3.5;
      v23 = v21 + 3.5;
      do
      {
        [(PSSegmentableSlider *)self minimumValue];
        v25 = v24 + (v20 * v19);
        [(PSSegmentableSlider *)self minimumValue];
        v27 = v25 - v26;
        [(PSSegmentableSlider *)self maximumValue];
        v29 = v28;
        [(PSSegmentableSlider *)self minimumValue];
        v31 = PSRoundToPixel(v11 + (v27 / (v29 - v30)) * v14);
        [v35 moveToPoint:{v31, PSRoundToPixel(v22)}];
        [v35 addLineToPoint:{v31, PSRoundToPixel(v23)}];
        ++v20;
      }

      while (v17 != v20);
    }

    [v35 stroke];
    v32 = [MEMORY[0x1E69DC728] bezierPathWithRect:{v11, v34, v14, v16}];
    [v32 fill];
  }

  else
  {
    v36.receiver = self;
    v36.super_class = PSSegmentableSlider;
    [(PSSegmentableSlider *)&v36 drawRect:x, y, width, height];
  }
}

- (void)drawRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if ([(PSSegmentableSlider *)self shouldUseConfigurationBasedSliderImpl])
  {
    v8.receiver = self;
    v8.super_class = PSSegmentableSlider;
    [(PSSegmentableSlider *)&v8 drawRect:x, y, width, height];
  }

  else
  {

    [(PSSegmentableSlider *)self _drawRect:x, y, width, height];
  }
}

- (CGRect)_thumbRectForBounds:(CGRect)a3 trackRect:(CGRect)a4 value:(float)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v8 = a3.size.height;
  v9 = a3.size.width;
  v10 = a3.origin.y;
  v11 = a3.origin.x;
  v13 = [(PSSegmentableSlider *)self _shouldReverseLayoutDirection];
  v41.receiver = self;
  v41.super_class = PSSegmentableSlider;
  v38 = x;
  v39 = width;
  [(PSSegmentableSlider *)&v41 thumbRectForBounds:v11 trackRect:v10 value:v9, v8, x, y, width, height, LODWORD(a5)];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  if (self->_segmented)
  {
    [(PSSegmentableSlider *)self minimumValue];
    if (v22 == a5 || ([(PSSegmentableSlider *)self maximumValue], v23 == a5))
    {
      [(PSSegmentableSlider *)self trackRectForBounds:v11, v10, v9, v8];
      v25 = v24;
      [(PSSegmentableSlider *)self minimumValue];
      if (v26 == a5)
      {
        v27 = -v25;
      }

      else
      {
        v27 = v25;
      }

      v15 = v15 + v27;
    }

    else
    {
      [(PSSegmentableSlider *)self minimumValue];
      v33 = a5 - v32;
      [(PSSegmentableSlider *)self maximumValue];
      v35 = v34;
      [(PSSegmentableSlider *)self minimumValue];
      v37 = v33 / (v35 - v36);
      if (v13)
      {
        v37 = 1.0 - v37;
      }

      v15 = v38 + v19 * -0.5 + v37 * v39;
    }
  }

  v28 = v15;
  v29 = v17;
  v30 = v19;
  v31 = v21;
  result.size.height = v31;
  result.size.width = v30;
  result.origin.y = v29;
  result.origin.x = v28;
  return result;
}

- (CGRect)thumbRectForBounds:(CGRect)a3 trackRect:(CGRect)a4 value:(float)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v8 = a3.size.height;
  v9 = a3.size.width;
  v10 = a3.origin.y;
  v11 = a3.origin.x;
  if ([(PSSegmentableSlider *)self shouldUseConfigurationBasedSliderImpl])
  {
    v20.receiver = self;
    v20.super_class = PSSegmentableSlider;
    [(PSSegmentableSlider *)&v20 thumbRectForBounds:v11 trackRect:v10 value:v9, v8, x, y, width, height, LODWORD(a5)];
  }

  else
  {
    *&v17 = a5;
    [(PSSegmentableSlider *)self _thumbRectForBounds:v11 trackRect:v10 value:v9, v8, x, y, width, height, v17];
  }

  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (void)controlInteractionBegan:(id)a3
{
  v4 = objc_opt_new();
  feedbackGenerator = self->_feedbackGenerator;
  self->_feedbackGenerator = v4;

  v6 = self->_feedbackGenerator;

  [(UISelectionFeedbackGenerator *)v6 prepare];
}

- (void)controlInteractionEnded:(id)a3
{
  feedbackGenerator = self->_feedbackGenerator;
  self->_feedbackGenerator = 0;
}

@end