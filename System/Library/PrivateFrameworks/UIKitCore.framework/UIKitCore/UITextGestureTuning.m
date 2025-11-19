@interface UITextGestureTuning
- (CGPoint)pointForGestureState:(int64_t)a3 point:(CGPoint)a4 translation:(CGPoint)a5;
- (CGPoint)pointIfPlacedCarefully:(CGPoint)a3;
- (CGPoint)touchAlignedPointForPoint:(CGPoint)a3 translation:(CGPoint)a4;
- (UICoordinateSpace)containerCoordinateSpace;
- (UICoordinateSpace)gestureCoordinateSpace;
- (UITextGestureTuning)init;
- (void)assertInitialPositionFromTopOfCaret:(double)a3 distanceFromCaret:(CGPoint)a4;
- (void)updateWeightedPointWithGestureState:(int64_t)a3 location:(CGPoint)a4;
- (void)updateWithTouches:(id)a3 gestureState:(int64_t)a4;
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

- (CGPoint)pointForGestureState:(int64_t)a3 point:(CGPoint)a4 translation:(CGPoint)a5
{
  if (a3 == 3)
  {
    [(UITextGestureTuning *)self pointIfPlacedCarefully:a4.x, a4.y];
  }

  [UITextGestureTuning touchAlignedPointForPoint:"touchAlignedPointForPoint:translation:" translation:?];
  result.y = v7;
  result.x = v6;
  return result;
}

- (void)assertInitialPositionFromTopOfCaret:(double)a3 distanceFromCaret:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  [(UITextGestureTuning *)self _reset];
  self->_caretDistance.x = x;
  self->_caretDistance.y = y;
  self->_initialOffsetFromTopOfCaret = a3;
}

- (void)updateWithTouches:(id)a3 gestureState:(int64_t)a4
{
  v6 = [a3 anyObject];
  if (v6)
  {
    v13 = v6;
    [v6 _locationInSceneReferenceSpace];
    v8 = v7;
    v10 = v9;
    v11 = [v13 type];
    [v13 majorRadius];
    [(UITextGestureTuning *)self updateVisibilityOffsetForGestureState:a4 touchType:v11 locationInSceneReferenceSpace:v8 majorRadius:v10, v12];
    v6 = v13;
  }
}

- (CGPoint)touchAlignedPointForPoint:(CGPoint)a3 translation:(CGPoint)a4
{
  y = a3.y;
  x = a3.x;
  if (self->_lastTouchType)
  {
    goto LABEL_25;
  }

  v7 = [UIKeyboardPreferencesController sharedPreferencesController:a3.x];
  v8 = [v7 preferencesActions];
  v9 = [v8 BOOLForPreferenceKey:@"YukonMagnifiersDisabled"];

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
  v13 = [(UITextGestureTuning *)self containerCoordinateSpace];

  if (v13)
  {
    v14 = [(UITextGestureTuning *)self gestureCoordinateSpace];

    if (v14)
    {
      v15 = [(UITextGestureTuning *)self gestureCoordinateSpace];
      v16 = [(UITextGestureTuning *)self containerCoordinateSpace];
      [v15 convertPoint:v16 toCoordinateSpace:{x, y}];
      x = v17;
      y = v18;
    }

    v19 = [(UITextGestureTuning *)self containerCoordinateSpace];
    [v19 bounds];
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

    v31 = [(UITextGestureTuning *)self gestureCoordinateSpace];

    if (v31)
    {
      v32 = [(UITextGestureTuning *)self gestureCoordinateSpace];
      v33 = [(UITextGestureTuning *)self containerCoordinateSpace];
      [v32 convertPoint:v33 fromCoordinateSpace:{x, y}];
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

- (void)updateWeightedPointWithGestureState:(int64_t)a3 location:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  if ((a3 - 2) >= 2)
  {
    if (a3 != 1)
    {
      return;
    }

    [(UITextMagnifierTimeWeightedPoint *)self->_weightedPoint clearHistory];
  }

  weightedPoint = self->_weightedPoint;

  [(UITextMagnifierTimeWeightedPoint *)weightedPoint addPoint:x, y];
}

- (CGPoint)pointIfPlacedCarefully:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
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