@interface UIMovieScrubberTrackOverlayView
- (UIMovieScrubberTrackOverlayView)initWithFrame:(CGRect)a3;
- (void)_clampValueAndLayout;
- (void)_updateLeftFill;
- (void)_updateRightFill;
- (void)animateFillFramesAway;
- (void)layoutSubviews;
- (void)setEditing:(BOOL)a3;
- (void)setEndValue:(double)a3;
- (void)setIsZoomed:(BOOL)a3;
- (void)setMaximumValue:(double)a3;
- (void)setMinimumValue:(double)a3;
- (void)setStartValue:(double)a3;
- (void)setValue:(double)a3;
@end

@implementation UIMovieScrubberTrackOverlayView

- (UIMovieScrubberTrackOverlayView)initWithFrame:(CGRect)a3
{
  v10.receiver = self;
  v10.super_class = UIMovieScrubberTrackOverlayView;
  v3 = [(UIView *)&v10 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = _UIImageWithName(@"UIMovieScrubberFill.png");
    v5 = [[UIImageView alloc] initWithImage:v4];
    leftFillView = v3->_leftFillView;
    v3->_leftFillView = v5;

    [(UIImageView *)v3->_leftFillView setContentMode:0];
    [(UIView *)v3->_leftFillView setAlpha:0.0];
    [(UIView *)v3 addSubview:v3->_leftFillView];
    v7 = [[UIImageView alloc] initWithImage:v4];
    rightFillView = v3->_rightFillView;
    v3->_rightFillView = v7;

    [(UIImageView *)v3->_rightFillView setContentMode:0];
    [(UIView *)v3->_rightFillView setAlpha:0.0];
    [(UIView *)v3 addSubview:v3->_rightFillView];
    [(UIView *)v3 setUserInteractionEnabled:0];
  }

  return v3;
}

- (void)_updateLeftFill
{
  if (*(self + 468))
  {
    [(UIView *)self bounds];
    leftFillView = self->_leftFillView;

    [(UIImageView *)leftFillView setFrame:?];
  }
}

- (void)_updateRightFill
{
  if (*(self + 468))
  {
    [(UIView *)self bounds];
    maximumValue = self->_maximumValue;
    minimumValue = self->_minimumValue;
    v7 = 0.0;
    if (maximumValue != minimumValue)
    {
      endValue = self->_endValue;
      if (maximumValue < endValue)
      {
        endValue = self->_maximumValue;
      }

      v9 = endValue;
      v7 = (maximumValue - v9) / (maximumValue - minimumValue);
    }

    v10 = v4 * v7;
    rightFillView = self->_rightFillView;
    v12 = v4 - rintf(v10);

    [(UIImageView *)rightFillView setFrame:v12];
  }
}

- (void)animateFillFramesAway
{
  [(UIView *)self->_leftFillView frame];
  [(UIImageView *)self->_leftFillView setFrame:?];
  [(UIView *)self->_rightFillView frame];
  [(UIImageView *)self->_rightFillView setFrame:v3 + v4];
  *(self + 468) &= ~1u;
}

- (void)_clampValueAndLayout
{
  value = self->_value;
  minimumValue = self->_minimumValue;
  if (value < minimumValue)
  {
    self->_value = minimumValue;
    value = minimumValue;
  }

  maximumValue = self->_maximumValue;
  if (value > maximumValue)
  {
    self->_value = maximumValue;
  }

  [(UIView *)self setNeedsLayout];
}

- (void)setEditing:(BOOL)a3
{
  v3 = *(self + 468);
  if ((v3 & 1) != a3)
  {
    *(self + 468) = v3 & 0xFE | a3;
    rightFillView = self->_rightFillView;
    if (a3)
    {
      v6 = 1.0;
    }

    else
    {
      v6 = 0.0;
    }

    [(UIView *)rightFillView setAlpha:v6];
    if (*(self + 468))
    {
      v7 = 1.0;
    }

    else
    {
      v7 = 0.0;
    }

    [(UIView *)self->_leftFillView setAlpha:v7];

    [(UIMovieScrubberTrackOverlayView *)self _clampValueAndLayout];
  }
}

- (void)setValue:(double)a3
{
  if (self->_value != a3)
  {
    self->_value = a3;
    [(UIMovieScrubberTrackOverlayView *)self _clampValueAndLayout];
  }
}

- (void)setStartValue:(double)a3
{
  if (self->_startValue != a3)
  {
    self->_startValue = a3;
    [(UIView *)self setNeedsLayout];
  }
}

- (void)setEndValue:(double)a3
{
  if (self->_endValue != a3)
  {
    self->_endValue = a3;
    [(UIView *)self setNeedsLayout];
  }
}

- (void)setMinimumValue:(double)a3
{
  if (self->_minimumValue != a3)
  {
    self->_minimumValue = a3;
  }
}

- (void)setMaximumValue:(double)a3
{
  if (self->_maximumValue != a3)
  {
    self->_maximumValue = a3;
  }
}

- (void)setIsZoomed:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(self + 468) = *(self + 468) & 0xFD | v3;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = UIMovieScrubberTrackOverlayView;
  [(UIView *)&v3 layoutSubviews];
  [(UIMovieScrubberTrackOverlayView *)self _updateLeftFill];
  [(UIMovieScrubberTrackOverlayView *)self _updateRightFill];
}

@end