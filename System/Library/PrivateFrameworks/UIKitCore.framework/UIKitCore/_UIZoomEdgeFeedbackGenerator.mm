@interface _UIZoomEdgeFeedbackGenerator
- (_UIZoomEdgeFeedbackGenerator)init;
- (_UIZoomEdgeFeedbackGenerator)initWithView:(id)a3;
- (void)_updateMaximumValue;
- (void)_zoomScaleUpdated:(double)a3 withVelocity:(double)a4 atLocation:(CGPoint)a5;
- (void)setMaximumZoomScale:(double)a3;
- (void)setMinimumZoomScale:(double)a3;
@end

@implementation _UIZoomEdgeFeedbackGenerator

- (_UIZoomEdgeFeedbackGenerator)init
{
  v3 = +[_UIEdgeFeedbackGeneratorConfiguration _zoomConfiguration];
  v4 = [(_UIEdgeFeedbackGenerator *)self initWithConfiguration:v3 view:0];

  return v4;
}

- (_UIZoomEdgeFeedbackGenerator)initWithView:(id)a3
{
  v4 = a3;
  v5 = +[_UIEdgeFeedbackGeneratorConfiguration _zoomConfiguration];
  v6 = [(_UIEdgeFeedbackGenerator *)self initWithConfiguration:v5 view:v4];

  return v6;
}

- (void)_updateMaximumValue
{
  v3 = log(self->_maximumZoomScale / self->_minimumZoomScale);

  [(_UIEdgeFeedbackGenerator *)self setDistance:v3];
}

- (void)setMinimumZoomScale:(double)a3
{
  if (self->_minimumZoomScale != a3)
  {
    self->_minimumZoomScale = a3;
    [(_UIZoomEdgeFeedbackGenerator *)self _updateMaximumValue];
  }
}

- (void)setMaximumZoomScale:(double)a3
{
  if (self->_maximumZoomScale != a3)
  {
    self->_maximumZoomScale = a3;
    [(_UIZoomEdgeFeedbackGenerator *)self _updateMaximumValue];
  }
}

- (void)_zoomScaleUpdated:(double)a3 withVelocity:(double)a4 atLocation:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  if ([(UIFeedbackGenerator *)self _isEnabled]&& [(_UIEdgeFeedbackGenerator *)self _state])
  {
    minimumZoomScale = self->_minimumZoomScale;
    v11 = log(a3 / minimumZoomScale);
    if (minimumZoomScale <= a3)
    {
      v12 = -log(self->_minimumTemporaryZoomScale / minimumZoomScale);
    }

    else
    {
      v12 = log(self->_maximumTemporaryZoomScale / self->_maximumZoomScale);
    }

    [(_UIEdgeFeedbackGenerator *)self setExtentBeyondDistance:v12];
    if (a4 == 0.0)
    {

      [(_UIEdgeFeedbackGenerator *)self positionUpdated:v11 atLocation:x, y];
    }

    else
    {

      [(_UIEdgeFeedbackGenerator *)self _positionUpdated:v11 withVelocity:a4 atLocation:x, y];
    }
  }
}

@end