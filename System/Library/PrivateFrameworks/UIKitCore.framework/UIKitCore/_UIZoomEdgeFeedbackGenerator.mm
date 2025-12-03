@interface _UIZoomEdgeFeedbackGenerator
- (_UIZoomEdgeFeedbackGenerator)init;
- (_UIZoomEdgeFeedbackGenerator)initWithView:(id)view;
- (void)_updateMaximumValue;
- (void)_zoomScaleUpdated:(double)updated withVelocity:(double)velocity atLocation:(CGPoint)location;
- (void)setMaximumZoomScale:(double)scale;
- (void)setMinimumZoomScale:(double)scale;
@end

@implementation _UIZoomEdgeFeedbackGenerator

- (_UIZoomEdgeFeedbackGenerator)init
{
  v3 = +[_UIEdgeFeedbackGeneratorConfiguration _zoomConfiguration];
  v4 = [(_UIEdgeFeedbackGenerator *)self initWithConfiguration:v3 view:0];

  return v4;
}

- (_UIZoomEdgeFeedbackGenerator)initWithView:(id)view
{
  viewCopy = view;
  v5 = +[_UIEdgeFeedbackGeneratorConfiguration _zoomConfiguration];
  v6 = [(_UIEdgeFeedbackGenerator *)self initWithConfiguration:v5 view:viewCopy];

  return v6;
}

- (void)_updateMaximumValue
{
  v3 = log(self->_maximumZoomScale / self->_minimumZoomScale);

  [(_UIEdgeFeedbackGenerator *)self setDistance:v3];
}

- (void)setMinimumZoomScale:(double)scale
{
  if (self->_minimumZoomScale != scale)
  {
    self->_minimumZoomScale = scale;
    [(_UIZoomEdgeFeedbackGenerator *)self _updateMaximumValue];
  }
}

- (void)setMaximumZoomScale:(double)scale
{
  if (self->_maximumZoomScale != scale)
  {
    self->_maximumZoomScale = scale;
    [(_UIZoomEdgeFeedbackGenerator *)self _updateMaximumValue];
  }
}

- (void)_zoomScaleUpdated:(double)updated withVelocity:(double)velocity atLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  if ([(UIFeedbackGenerator *)self _isEnabled]&& [(_UIEdgeFeedbackGenerator *)self _state])
  {
    minimumZoomScale = self->_minimumZoomScale;
    v11 = log(updated / minimumZoomScale);
    if (minimumZoomScale <= updated)
    {
      v12 = -log(self->_minimumTemporaryZoomScale / minimumZoomScale);
    }

    else
    {
      v12 = log(self->_maximumTemporaryZoomScale / self->_maximumZoomScale);
    }

    [(_UIEdgeFeedbackGenerator *)self setExtentBeyondDistance:v12];
    if (velocity == 0.0)
    {

      [(_UIEdgeFeedbackGenerator *)self positionUpdated:v11 atLocation:x, y];
    }

    else
    {

      [(_UIEdgeFeedbackGenerator *)self _positionUpdated:v11 withVelocity:velocity atLocation:x, y];
    }
  }
}

@end