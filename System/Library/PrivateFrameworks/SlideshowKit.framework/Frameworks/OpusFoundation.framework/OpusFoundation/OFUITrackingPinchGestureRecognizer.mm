@interface OFUITrackingPinchGestureRecognizer
- (BOOL)canBePreventedByGestureRecognizer:(id)a3;
- (BOOL)canPreventGestureRecognizer:(id)a3;
- (CGPoint)locationInView:(id)a3;
- (OFUITrackingPinchGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4 mode:(unint64_t)a5;
- (void)dealloc;
- (void)reset;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
@end

@implementation OFUITrackingPinchGestureRecognizer

- (OFUITrackingPinchGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4 mode:(unint64_t)a5
{
  v9.receiver = self;
  v9.super_class = OFUITrackingPinchGestureRecognizer;
  v6 = [(UIPinchGestureRecognizer *)&v9 initWithTarget:a3 action:a4];
  v7 = v6;
  if (v6)
  {
    [(UIPinchGestureRecognizer *)v6 _setEndsOnSingleTouch:1];
    v7->_zoomMode = a5;
    v7->_leftTouchIndex = 0;
    v7->_rightTouchIndex = 1;
    v7->_centerPoint = *MEMORY[0x277CBF348];
    v7->_originalWidth = -1.0;
    v7->_originalAngle = 0.0;
    v7->_pinchWidth = 0.0;
    v7->_pinchAngle = 0.0;
    v7->_pinchScale = 1.0;
    v7->_rotateState = 3;
    v7->_magnifyState = 3;
    v7->_startedPinchingOut = 0;
    v7->_startedPinchingIn = 0;
  }

  return v7;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = OFUITrackingPinchGestureRecognizer;
  [(OFUITrackingPinchGestureRecognizer *)&v2 dealloc];
}

- (void)reset
{
  v3.receiver = self;
  v3.super_class = OFUITrackingPinchGestureRecognizer;
  [(OFUITrackingPinchGestureRecognizer *)&v3 reset];
  [(UIPinchGestureRecognizer *)self _setEndsOnSingleTouch:1];
  self->_leftTouchIndex = 0;
  self->_rightTouchIndex = 1;
  self->_centerPoint = *MEMORY[0x277CBF348];
  self->_originalWidth = -1.0;
  self->_originalAngle = 0.0;
  self->_pinchWidth = 0.0;
  self->_pinchAngle = 0.0;
  self->_pinchScale = 1.0;
  self->_startedPinchingOut = 0;
  self->_startedPinchingIn = 0;
}

- (BOOL)canPreventGestureRecognizer:(id)a3
{
  v4.receiver = self;
  v4.super_class = OFUITrackingPinchGestureRecognizer;
  return [(OFUITrackingPinchGestureRecognizer *)&v4 canPreventGestureRecognizer:a3];
}

- (BOOL)canBePreventedByGestureRecognizer:(id)a3
{
  if (self->_zoomMode != 1)
  {
    goto LABEL_9;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ([a3 view], objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_9;
    }

    [a3 view];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_9;
    }

    return 0;
  }

  v5 = [a3 view];
  [v5 zoomScale];
  v7 = v6;
  [v5 minimumZoomScale];
  if (v7 <= v8 + 0.01)
  {
    return 0;
  }

LABEL_9:
  v10.receiver = self;
  v10.super_class = OFUITrackingPinchGestureRecognizer;
  return [(OFUITrackingPinchGestureRecognizer *)&v10 canBePreventedByGestureRecognizer:a3];
}

- (CGPoint)locationInView:(id)a3
{
  v5 = [-[OFUITrackingPinchGestureRecognizer view](self "view")];
  x = self->_centerPoint.x;
  y = self->_centerPoint.y;

  [v5 convertPoint:a3 toView:{x, y}];
  result.y = v9;
  result.x = v8;
  return result;
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v6 = [a4 touchesForGestureRecognizer:self];
  if ([v6 count] == 2)
  {
    v7 = [(OFUITrackingPinchGestureRecognizer *)self view];
    v8 = [v7 superview];
    v26.receiver = self;
    v26.super_class = OFUITrackingPinchGestureRecognizer;
    [(OFUITrackingPinchGestureRecognizer *)&v26 touchesBegan:v6 withEvent:a4];
    p_leftTouchLocation = &self->_leftTouchLocation;
    [(UIPinchGestureRecognizer *)self locationOfTouch:self->_leftTouchIndex inView:v7];
    self->_leftTouchLocation.x = v10;
    self->_leftTouchLocation.y = v11;
    p_rightTouchLocation = &self->_rightTouchLocation;
    [(UIPinchGestureRecognizer *)self locationOfTouch:self->_rightTouchIndex inView:v7];
    self->_rightTouchLocation.x = v13;
    self->_rightTouchLocation.y = v14;
    if (self->_leftTouchLocation.x >= v13)
    {
      v15 = *p_leftTouchLocation;
      self->_leftTouchIndex = 1;
      self->_rightTouchIndex = 0;
      *p_leftTouchLocation = *p_rightTouchLocation;
      *p_rightTouchLocation = v15;
    }

    [(UIPinchGestureRecognizer *)self locationOfTouch:self->_leftTouchIndex inView:v8];
    v17 = v16;
    v19 = v18;
    [(UIPinchGestureRecognizer *)self locationOfTouch:self->_rightTouchIndex inView:v8];
    v21 = v20;
    v23 = v22;
    self->_centerPoint.x = (v17 + v20) * 0.5;
    self->_centerPoint.y = (v19 + v22) * 0.5;
    v24 = atan((v19 - v22) / (v20 - v17));
    if (v17 > v21)
    {
      v24 = v24 + 3.14159265;
    }

    self->_originalAngle = v24;
    v25 = OFDistanceBetweenTwoPoints(v17, v19, v21, v23);
    self->_pinchWidth = v25;
    self->_originalWidth = v25;
    self->_pinchScale = 1.0;
  }
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  v6 = [a4 touchesForGestureRecognizer:self];
  if ([v6 count] != 2)
  {
    return;
  }

  v7 = [(OFUITrackingPinchGestureRecognizer *)self view];
  v8 = [v7 superview];
  v44.receiver = self;
  v44.super_class = OFUITrackingPinchGestureRecognizer;
  [(OFUITrackingPinchGestureRecognizer *)&v44 touchesMoved:v6 withEvent:a4];
  v9 = [v6 allObjects];
  v10 = [v9 objectAtIndex:0];
  v11 = [v9 objectAtIndex:1];
  [v10 previousLocationInView:v7];
  v13 = v12;
  v15 = v14;
  [v11 previousLocationInView:v7];
  v18 = OFDistanceBetweenTwoPoints(v13, v15, v16, v17);
  [v10 locationInView:v7];
  v20 = v19;
  v22 = v21;
  [v11 locationInView:v7];
  v25 = OFDistanceBetweenTwoPoints(v20, v22, v23, v24);
  zoomMode = self->_zoomMode;
  if (zoomMode)
  {
    if (zoomMode != 1)
    {
      goto LABEL_10;
    }

    p_startedPinchingOut = &self->_startedPinchingOut;
    if (self->_startedPinchingOut)
    {
      goto LABEL_10;
    }

    if (v18 < v25)
    {
LABEL_6:
      [(OFUITrackingPinchGestureRecognizer *)self setState:4];
      return;
    }

    goto LABEL_9;
  }

  p_startedPinchingOut = &self->_startedPinchingIn;
  if (!self->_startedPinchingIn)
  {
    if (v18 > v25)
    {
      goto LABEL_6;
    }

LABEL_9:
    *p_startedPinchingOut = 1;
  }

LABEL_10:
  self->_previousLeftLocation = self->_leftTouchLocation;
  self->_previousRightLocation = self->_rightTouchLocation;
  [(UIPinchGestureRecognizer *)self locationOfTouch:self->_leftTouchIndex inView:v7];
  self->_leftTouchLocation.x = v28;
  self->_leftTouchLocation.y = v29;
  [(UIPinchGestureRecognizer *)self locationOfTouch:self->_rightTouchIndex inView:v7];
  self->_rightTouchLocation.x = v30;
  self->_rightTouchLocation.y = v31;
  [(UIPinchGestureRecognizer *)self locationOfTouch:self->_leftTouchIndex inView:v8];
  v33 = v32;
  v35 = v34;
  [(UIPinchGestureRecognizer *)self locationOfTouch:self->_rightTouchIndex inView:v8];
  v37 = v36;
  v39 = v38;
  self->_centerPoint.x = (v33 + v36) * 0.5;
  self->_centerPoint.y = (v35 + v38) * 0.5;
  pinchWidth = OFDistanceBetweenTwoPoints(v33, v35, v36, v38);
  self->_pinchWidth = pinchWidth;
  originalWidth = self->_originalWidth;
  if (originalWidth < 0.0)
  {
    self->_originalWidth = pinchWidth;
    originalWidth = pinchWidth;
    pinchWidth = self->_pinchWidth;
  }

  self->_pinchScale = pinchWidth / originalWidth;
  v42 = (v35 - v39) / (v37 - v33);
  v43 = atanf(v42);
  if (v33 > v37)
  {
    v43 = v43 + 3.14159265;
  }

  self->_pinchAngle = v43;
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v4.receiver = self;
  v4.super_class = OFUITrackingPinchGestureRecognizer;
  [(OFUITrackingPinchGestureRecognizer *)&v4 touchesEnded:a3 withEvent:a4];
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  v4.receiver = self;
  v4.super_class = OFUITrackingPinchGestureRecognizer;
  [(OFUITrackingPinchGestureRecognizer *)&v4 touchesCancelled:a3 withEvent:a4];
}

@end