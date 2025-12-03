@interface OFUITrackingPinchGestureRecognizer
- (BOOL)canBePreventedByGestureRecognizer:(id)recognizer;
- (BOOL)canPreventGestureRecognizer:(id)recognizer;
- (CGPoint)locationInView:(id)view;
- (OFUITrackingPinchGestureRecognizer)initWithTarget:(id)target action:(SEL)action mode:(unint64_t)mode;
- (void)dealloc;
- (void)reset;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
@end

@implementation OFUITrackingPinchGestureRecognizer

- (OFUITrackingPinchGestureRecognizer)initWithTarget:(id)target action:(SEL)action mode:(unint64_t)mode
{
  v9.receiver = self;
  v9.super_class = OFUITrackingPinchGestureRecognizer;
  v6 = [(UIPinchGestureRecognizer *)&v9 initWithTarget:target action:action];
  v7 = v6;
  if (v6)
  {
    [(UIPinchGestureRecognizer *)v6 _setEndsOnSingleTouch:1];
    v7->_zoomMode = mode;
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

- (BOOL)canPreventGestureRecognizer:(id)recognizer
{
  v4.receiver = self;
  v4.super_class = OFUITrackingPinchGestureRecognizer;
  return [(OFUITrackingPinchGestureRecognizer *)&v4 canPreventGestureRecognizer:recognizer];
}

- (BOOL)canBePreventedByGestureRecognizer:(id)recognizer
{
  if (self->_zoomMode != 1)
  {
    goto LABEL_9;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ([recognizer view], objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_9;
    }

    [recognizer view];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_9;
    }

    return 0;
  }

  view = [recognizer view];
  [view zoomScale];
  v7 = v6;
  [view minimumZoomScale];
  if (v7 <= v8 + 0.01)
  {
    return 0;
  }

LABEL_9:
  v10.receiver = self;
  v10.super_class = OFUITrackingPinchGestureRecognizer;
  return [(OFUITrackingPinchGestureRecognizer *)&v10 canBePreventedByGestureRecognizer:recognizer];
}

- (CGPoint)locationInView:(id)view
{
  v5 = [-[OFUITrackingPinchGestureRecognizer view](self "view")];
  x = self->_centerPoint.x;
  y = self->_centerPoint.y;

  [v5 convertPoint:view toView:{x, y}];
  result.y = v9;
  result.x = v8;
  return result;
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  v6 = [event touchesForGestureRecognizer:self];
  if ([v6 count] == 2)
  {
    view = [(OFUITrackingPinchGestureRecognizer *)self view];
    superview = [view superview];
    v26.receiver = self;
    v26.super_class = OFUITrackingPinchGestureRecognizer;
    [(OFUITrackingPinchGestureRecognizer *)&v26 touchesBegan:v6 withEvent:event];
    p_leftTouchLocation = &self->_leftTouchLocation;
    [(UIPinchGestureRecognizer *)self locationOfTouch:self->_leftTouchIndex inView:view];
    self->_leftTouchLocation.x = v10;
    self->_leftTouchLocation.y = v11;
    p_rightTouchLocation = &self->_rightTouchLocation;
    [(UIPinchGestureRecognizer *)self locationOfTouch:self->_rightTouchIndex inView:view];
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

    [(UIPinchGestureRecognizer *)self locationOfTouch:self->_leftTouchIndex inView:superview];
    v17 = v16;
    v19 = v18;
    [(UIPinchGestureRecognizer *)self locationOfTouch:self->_rightTouchIndex inView:superview];
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

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  v6 = [event touchesForGestureRecognizer:self];
  if ([v6 count] != 2)
  {
    return;
  }

  view = [(OFUITrackingPinchGestureRecognizer *)self view];
  superview = [view superview];
  v44.receiver = self;
  v44.super_class = OFUITrackingPinchGestureRecognizer;
  [(OFUITrackingPinchGestureRecognizer *)&v44 touchesMoved:v6 withEvent:event];
  allObjects = [v6 allObjects];
  v10 = [allObjects objectAtIndex:0];
  v11 = [allObjects objectAtIndex:1];
  [v10 previousLocationInView:view];
  v13 = v12;
  v15 = v14;
  [v11 previousLocationInView:view];
  v18 = OFDistanceBetweenTwoPoints(v13, v15, v16, v17);
  [v10 locationInView:view];
  v20 = v19;
  v22 = v21;
  [v11 locationInView:view];
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
  [(UIPinchGestureRecognizer *)self locationOfTouch:self->_leftTouchIndex inView:view];
  self->_leftTouchLocation.x = v28;
  self->_leftTouchLocation.y = v29;
  [(UIPinchGestureRecognizer *)self locationOfTouch:self->_rightTouchIndex inView:view];
  self->_rightTouchLocation.x = v30;
  self->_rightTouchLocation.y = v31;
  [(UIPinchGestureRecognizer *)self locationOfTouch:self->_leftTouchIndex inView:superview];
  v33 = v32;
  v35 = v34;
  [(UIPinchGestureRecognizer *)self locationOfTouch:self->_rightTouchIndex inView:superview];
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

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  v4.receiver = self;
  v4.super_class = OFUITrackingPinchGestureRecognizer;
  [(OFUITrackingPinchGestureRecognizer *)&v4 touchesEnded:ended withEvent:event];
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  v4.receiver = self;
  v4.super_class = OFUITrackingPinchGestureRecognizer;
  [(OFUITrackingPinchGestureRecognizer *)&v4 touchesCancelled:cancelled withEvent:event];
}

@end