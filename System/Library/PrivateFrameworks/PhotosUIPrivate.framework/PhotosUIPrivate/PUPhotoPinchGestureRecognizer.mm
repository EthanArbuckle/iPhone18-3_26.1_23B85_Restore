@interface PUPhotoPinchGestureRecognizer
- (CGPoint)adjustedInitialCenterInView:(id)view;
- (CGPoint)adjustedTranslationInView:(id)view;
- (CGPoint)adjustedTranslationVelocityInView:(id)view;
- (CGRect)initialPinchRect;
- (PUPhotoPinchGestureRecognizer)initWithTarget:(id)target action:(SEL)action;
- (double)adjustedRotationInView:(id)view;
- (double)adjustedScaleInView:(id)view;
- (void)_updateIfNeeded;
- (void)reset;
- (void)setInitialPinchRect:(CGRect)rect;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
@end

@implementation PUPhotoPinchGestureRecognizer

- (CGRect)initialPinchRect
{
  x = self->_initialPinchRect.origin.x;
  y = self->_initialPinchRect.origin.y;
  width = self->_initialPinchRect.size.width;
  height = self->_initialPinchRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)_updateIfNeeded
{
  if ([(PUPhotoPinchGestureRecognizer *)self _touchesNeedUpdate]&& [(UIPinchGestureRecognizer *)self numberOfTouches]>= 2)
  {
    [(PUPhotoPinchGestureRecognizer *)self _setTouchesNeedUpdate:0];
    v3 = 0;
    v4 = 1;
    do
    {
      v5 = v4;
      v6 = &self->_latestTouchLocations[v3];
      [(UIPinchGestureRecognizer *)self locationOfTouch:v3 inView:0];
      v6->x = v7;
      v6->y = v8;
      if (!self->_initialTouchLocationsSet)
      {
        self->_initialTouchLocations[v3] = *v6;
      }

      v4 = 0;
      v3 = 1;
    }

    while ((v5 & 1) != 0);
    if (!self->_initialTouchLocationsSet)
    {
      [(PUPhotoPinchGestureRecognizer *)self initialPinchRect];
      x = v13.origin.x;
      y = v13.origin.y;
      width = v13.size.width;
      height = v13.size.height;
      if (!CGRectIsEmpty(v13))
      {
        AdjustPointsWithinRect(self->_initialTouchLocations, &self->_initialTouchLocations[1], x, y, width, height);
      }

      self->_initialTouchLocationsSet = 1;
    }
  }
}

- (CGPoint)adjustedTranslationVelocityInView:(id)view
{
  v3 = *MEMORY[0x1E695EFF8];
  v4 = *(MEMORY[0x1E695EFF8] + 8);
  result.y = v4;
  result.x = v3;
  return result;
}

- (double)adjustedScaleInView:(id)view
{
  [(PUPhotoPinchGestureRecognizer *)self _updateIfNeeded];
  result = 0.0;
  if (self->_initialTouchLocationsSet)
  {
    UIDistanceBetweenPoints();
    v6 = v5;
    UIDistanceBetweenPoints();
    return v7 / v6;
  }

  return result;
}

- (double)adjustedRotationInView:(id)view
{
  v14[2] = *MEMORY[0x1E69E9840];
  [(PUPhotoPinchGestureRecognizer *)self _updateIfNeeded];
  v4 = 0.0;
  if (self->_initialTouchLocationsSet)
  {
    v5 = atan2(self->_initialTouchLocations[1].y - self->_initialTouchLocations[0].y, self->_initialTouchLocations[1].x - self->_initialTouchLocations[0].x);
    v6 = atan2(self->_latestTouchLocations[1].y - self->_latestTouchLocations[0].y, self->_latestTouchLocations[1].x - self->_latestTouchLocations[0].x) - v5;
    _rotationFilter = [(PUPhotoPinchGestureRecognizer *)self _rotationFilter];
    if (!_rotationFilter)
    {
      v8 = objc_alloc_init(PUAngleValueFilter);
      v9 = objc_alloc_init(PUInitialHysteresisValueFilter);
      [(PUPhotoPinchGestureRecognizer *)self rotationHysteresisDegrees];
      [(PUInitialHysteresisValueFilter *)v9 setThresholdValue:v10 / 180.0 * 3.14159265];
      _rotationFilter = objc_alloc_init(PUGroupValueFilter);
      v14[0] = v8;
      v14[1] = v9;
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
      [(PUGroupValueFilter *)_rotationFilter setFilters:v11];

      [(PUPhotoPinchGestureRecognizer *)self _setRotationFilter:_rotationFilter];
    }

    [(PUGroupValueFilter *)_rotationFilter setInputValue:v6];
    [(PUGroupValueFilter *)_rotationFilter outputValue];
    v4 = v12;
  }

  return v4;
}

- (CGPoint)adjustedTranslationInView:(id)view
{
  viewCopy = view;
  [(PUPhotoPinchGestureRecognizer *)self _updateIfNeeded];
  if (self->_initialTouchLocationsSet)
  {
    UIMidPointBetweenPoints();
    v6 = v5;
    v8 = v7;
    UIMidPointBetweenPoints();
    v10 = v9;
    v12 = v11;
    if (viewCopy)
    {
      [viewCopy convertPoint:0 fromView:{v6, v8}];
      v6 = v13;
      v8 = v14;
      [viewCopy convertPoint:0 fromView:{v10, v12}];
      v10 = v15;
      v12 = v16;
    }

    v17 = v10 - v6;
    v18 = v12 - v8;
  }

  else
  {
    v17 = *MEMORY[0x1E695EFF8];
    v18 = *(MEMORY[0x1E695EFF8] + 8);
  }

  v19 = v17;
  v20 = v18;
  result.y = v20;
  result.x = v19;
  return result;
}

- (CGPoint)adjustedInitialCenterInView:(id)view
{
  viewCopy = view;
  [(PUPhotoPinchGestureRecognizer *)self _updateIfNeeded];
  if (self->_initialTouchLocationsSet)
  {
    UIMidPointBetweenPoints();
    v7 = v5;
    v8 = v6;
    if (viewCopy)
    {
      [viewCopy convertPoint:0 fromView:{v5, v6}];
      v7 = v9;
      v8 = v10;
    }
  }

  else
  {
    v7 = *MEMORY[0x1E695EFF8];
    v8 = *(MEMORY[0x1E695EFF8] + 8);
  }

  v11 = v7;
  v12 = v8;
  result.y = v12;
  result.x = v11;
  return result;
}

- (void)setInitialPinchRect:(CGRect)rect
{
  p_initialPinchRect = &self->_initialPinchRect;
  self->_initialPinchRect = rect;
  if (self->_initialTouchLocationsSet)
  {
    view = [(PUPhotoPinchGestureRecognizer *)self view];
    [view convertRect:0 toView:{p_initialPinchRect->origin.x, p_initialPinchRect->origin.y, p_initialPinchRect->size.width, p_initialPinchRect->size.height}];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    v15.origin.x = v7;
    v15.origin.y = v9;
    v15.size.width = v11;
    v15.size.height = v13;
    if (!CGRectIsEmpty(v15))
    {

      AdjustPointsWithinRect(self->_initialTouchLocations, &self->_initialTouchLocations[1], v7, v9, v11, v13);
    }
  }
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  eventCopy = event;
  cancelledCopy = cancelled;
  [(PUPhotoPinchGestureRecognizer *)self _setTouchesNeedUpdate:1];
  v8.receiver = self;
  v8.super_class = PUPhotoPinchGestureRecognizer;
  [(PUPhotoPinchGestureRecognizer *)&v8 touchesCancelled:cancelledCopy withEvent:eventCopy];
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  eventCopy = event;
  endedCopy = ended;
  [(PUPhotoPinchGestureRecognizer *)self _setTouchesNeedUpdate:1];
  v8.receiver = self;
  v8.super_class = PUPhotoPinchGestureRecognizer;
  [(PUPhotoPinchGestureRecognizer *)&v8 touchesEnded:endedCopy withEvent:eventCopy];
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  eventCopy = event;
  movedCopy = moved;
  [(PUPhotoPinchGestureRecognizer *)self _setTouchesNeedUpdate:1];
  v8.receiver = self;
  v8.super_class = PUPhotoPinchGestureRecognizer;
  [(PUPhotoPinchGestureRecognizer *)&v8 touchesMoved:movedCopy withEvent:eventCopy];
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  eventCopy = event;
  beganCopy = began;
  [(PUPhotoPinchGestureRecognizer *)self _setTouchesNeedUpdate:1];
  v8.receiver = self;
  v8.super_class = PUPhotoPinchGestureRecognizer;
  [(PUPhotoPinchGestureRecognizer *)&v8 touchesBegan:beganCopy withEvent:eventCopy];

  [(PUPhotoPinchGestureRecognizer *)self _updateIfNeeded];
}

- (void)reset
{
  self->_initialTouchLocationsSet = 0;
  v3 = *(MEMORY[0x1E695F050] + 16);
  self->_initialPinchRect.origin = *MEMORY[0x1E695F050];
  self->_initialPinchRect.size = v3;
  [(PUPhotoPinchGestureRecognizer *)self _setRotationFilter:0];
  v4.receiver = self;
  v4.super_class = PUPhotoPinchGestureRecognizer;
  [(PUPhotoPinchGestureRecognizer *)&v4 reset];
}

- (PUPhotoPinchGestureRecognizer)initWithTarget:(id)target action:(SEL)action
{
  v7.receiver = self;
  v7.super_class = PUPhotoPinchGestureRecognizer;
  v4 = [(UIPinchGestureRecognizer *)&v7 initWithTarget:target action:action];
  v5 = v4;
  if (v4)
  {
    [(PUPhotoPinchGestureRecognizer *)v4 setRotationHysteresisDegrees:5.0];
  }

  return v5;
}

@end