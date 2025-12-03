@interface UITextGestureTuning
- (CGPoint)pointForGestureState:(int64_t)state point:(CGPoint)point translation:(CGPoint)translation;
- (CGPoint)pointIfPlacedCarefully:(CGPoint)carefully;
- (CGPoint)touchAlignedPointForPoint:(CGPoint)point translation:(CGPoint)translation;
- (UICoordinateSpace)containerCoordinateSpace;
- (UICoordinateSpace)gestureCoordinateSpace;
- (UITextGestureTuning)init;
- (void)assertInitialPositionFromTopOfCaret:(double)caret distanceFromCaret:(CGPoint)fromCaret;
- (void)updateWeightedPointWithGestureState:(int64_t)state location:(CGPoint)location;
- (void)updateWithTouches:(id)touches gestureState:(int64_t)state;
@end

@implementation UITextGestureTuning

- (UITextGestureTuning)init
{
  v7.receiver = self;
  v7.super_class = UITextGestureTuning;
  v2 = [(UITextGestureTuning *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_shouldIncludeConstantOffset = 1;
    v4 = objc_alloc_init(UITextMagnifierTimeWeightedPoint);
    weightedPoint = v3->_weightedPoint;
    v3->_weightedPoint = v4;

    v3->_lastTouchType = 0;
  }

  return v3;
}

- (CGPoint)pointForGestureState:(int64_t)state point:(CGPoint)point translation:(CGPoint)translation
{
  if (state == 3)
  {
    [(UITextGestureTuning *)self pointIfPlacedCarefully:point.x, point.y];
  }

  [UITextGestureTuning touchAlignedPointForPoint:"touchAlignedPointForPoint:translation:" translation:?];
  result.y = v7;
  result.x = v6;
  return result;
}

- (void)assertInitialPositionFromTopOfCaret:(double)caret distanceFromCaret:(CGPoint)fromCaret
{
  y = fromCaret.y;
  x = fromCaret.x;
  [(UITextGestureTuning *)self _reset];
  self->_caretDistance.x = x;
  self->_caretDistance.y = y;
  self->_initialOffsetFromTopOfCaret = caret;
}

- (void)updateWithTouches:(id)touches gestureState:(int64_t)state
{
  anyObject = [touches anyObject];
  if (anyObject)
  {
    v13 = anyObject;
    [anyObject _locationInSceneReferenceSpace];
    v8 = v7;
    v10 = v9;
    type = [v13 type];
    [v13 majorRadius];
    [(UITextGestureTuning *)self updateVisibilityOffsetForGestureState:state touchType:type locationInSceneReferenceSpace:v8 majorRadius:v10, v12];
    anyObject = v13;
  }
}

- (CGPoint)touchAlignedPointForPoint:(CGPoint)point translation:(CGPoint)translation
{
  y = point.y;
  x = point.x;
  if (self->_lastTouchType)
  {
    goto LABEL_25;
  }

  v7 = [UIKeyboardPreferencesController sharedPreferencesController:point.x];
  preferencesActions = [v7 preferencesActions];
  v9 = [preferencesActions BOOLForPreferenceKey:@"YukonMagnifiersDisabled"];

  if (!v9)
  {
    goto LABEL_25;
  }

  if ([(UITextGestureTuning *)self includeTipProjection]&& self->_initialOffsetFromTopOfCaret < 8.0)
  {
    y = y + -8.0;
  }

  initialPosition = self->_initialPosition;
  if (initialPosition == 0.0)
  {
    self->_initialPosition = y;
    initialPosition = y;
  }

  v11 = y - initialPosition;
  if (v11 + self->_initialOffsetFromTopOfCaret < -2.0)
  {
    self->_initialPosition = y;
    self->_initialOffsetFromTopOfCaret = 0.0;
  }

  if (v11 > 39.0)
  {
    self->_didBreakLineThreshold = 1;
LABEL_13:
    v12 = -39.0;
    goto LABEL_15;
  }

  if (self->_didBreakLineThreshold)
  {
    goto LABEL_13;
  }

  v12 = -v11;
LABEL_15:
  x = x - self->_caretDistance.x;
  y = y + v12 - self->_caretDistance.y;
  self->_lineBreakProgress = fmax(v11 / 39.0, 0.0);
  containerCoordinateSpace = [(UITextGestureTuning *)self containerCoordinateSpace];

  if (containerCoordinateSpace)
  {
    gestureCoordinateSpace = [(UITextGestureTuning *)self gestureCoordinateSpace];

    if (gestureCoordinateSpace)
    {
      gestureCoordinateSpace2 = [(UITextGestureTuning *)self gestureCoordinateSpace];
      containerCoordinateSpace2 = [(UITextGestureTuning *)self containerCoordinateSpace];
      [gestureCoordinateSpace2 convertPoint:containerCoordinateSpace2 toCoordinateSpace:{x, y}];
      x = v17;
      y = v18;
    }

    containerCoordinateSpace3 = [(UITextGestureTuning *)self containerCoordinateSpace];
    [containerCoordinateSpace3 bounds];
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;

    v39.origin.x = v21;
    v39.origin.y = v23;
    v39.size.width = v25;
    v39.size.height = v27;
    v28 = fmax(CGRectGetMinY(v39), 0.0);
    v40.origin.x = v21;
    v40.origin.y = v23;
    v40.size.width = v25;
    v40.size.height = v27;
    MaxY = CGRectGetMaxY(v40);
    v30 = v28 + 1.0;
    if (y >= v28)
    {
      v30 = y;
    }

    if (v30 <= MaxY)
    {
      y = v30;
    }

    else
    {
      y = MaxY + -1.0;
    }

    gestureCoordinateSpace3 = [(UITextGestureTuning *)self gestureCoordinateSpace];

    if (gestureCoordinateSpace3)
    {
      gestureCoordinateSpace4 = [(UITextGestureTuning *)self gestureCoordinateSpace];
      containerCoordinateSpace4 = [(UITextGestureTuning *)self containerCoordinateSpace];
      [gestureCoordinateSpace4 convertPoint:containerCoordinateSpace4 fromCoordinateSpace:{x, y}];
      x = v34;
      y = v35;
    }
  }

LABEL_25:
  v36 = x;
  v37 = y;
  result.y = v37;
  result.x = v36;
  return result;
}

- (void)updateWeightedPointWithGestureState:(int64_t)state location:(CGPoint)location
{
  y = location.y;
  x = location.x;
  if ((state - 2) >= 2)
  {
    if (state != 1)
    {
      return;
    }

    [(UITextMagnifierTimeWeightedPoint *)self->_weightedPoint clearHistory];
  }

  weightedPoint = self->_weightedPoint;

  [(UITextMagnifierTimeWeightedPoint *)weightedPoint addPoint:x, y];
}

- (CGPoint)pointIfPlacedCarefully:(CGPoint)carefully
{
  y = carefully.y;
  x = carefully.x;
  if ([(UITextMagnifierTimeWeightedPoint *)self->_weightedPoint isPlacedCarefully])
  {
    [(UITextMagnifierTimeWeightedPoint *)self->_weightedPoint diffFromLastPoint];
    x = x + v6;
    y = y + v7;
  }

  v8 = x;
  v9 = y;
  result.y = v9;
  result.x = v8;
  return result;
}

- (UICoordinateSpace)containerCoordinateSpace
{
  WeakRetained = objc_loadWeakRetained(&self->_containerCoordinateSpace);

  return WeakRetained;
}

- (UICoordinateSpace)gestureCoordinateSpace
{
  WeakRetained = objc_loadWeakRetained(&self->_gestureCoordinateSpace);

  return WeakRetained;
}

@end