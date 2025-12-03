@interface MRGestureRecognizer
- (CGPoint)_localPointFromTouchPoint:(CGPoint)point;
- (CGSize)referenceSize;
- (MRGestureRecognizer)initWithRenderer:(id)renderer startAction:(id)action andSender:(id)sender;
- (id)description;
- (void)_sendAction:(id)action;
- (void)_sendCancelActions;
- (void)_sendEndActions;
- (void)_sendStartActions;
- (void)_sendUpdateActions;
- (void)abort;
- (void)cleanup;
- (void)setCancelAction:(id)action;
- (void)setEndAction:(id)action;
- (void)setStartAction:(id)action;
- (void)setUpdateAction:(id)action;
- (void)touchBegan:(id)began;
- (void)touchEnded:(id)ended;
- (void)touchMoved:(id)moved;
@end

@implementation MRGestureRecognizer

- (MRGestureRecognizer)initWithRenderer:(id)renderer startAction:(id)action andSender:(id)sender
{
  v13.receiver = self;
  v13.super_class = MRGestureRecognizer;
  v8 = [(MRGestureRecognizer *)&v13 init];
  if (v8)
  {
    v8->_renderer = renderer;
    v8->_sender = sender;
    [(MRGestureRecognizer *)v8 setStartAction:action];
    [(MRRenderer *)v8->_renderer size];
    v10 = v9 <= 1500.0;
    v11 = 1.0;
    if (!v10)
    {
      v11 = 2.0;
    }

    v8->_referenceScale = v11;
  }

  return v8;
}

- (void)cleanup
{
  self->_renderer = 0;

  self->_automaticStartAction = 0;
  self->_automaticUpdateAction = 0;

  self->_automaticEndAction = 0;
  self->_automaticCancelAction = 0;

  self->_startAction = 0;
  self->_updateAction = 0;

  self->_endAction = 0;
  self->_cancelAction = 0;

  self->_sender = 0;
  self->_matrixChain = 0;

  self->_touchSet = 0;
}

- (void)setStartAction:(id)action
{
  if (action)
  {
    v4 = [[MRAction alloc] initWithAction:action inRenderer:self->_renderer];
    self->_startAction = v4;
    sender = self->_sender;

    [(MRAction *)v4 setSender:sender];
  }
}

- (void)setUpdateAction:(id)action
{
  if (action)
  {
    v4 = [[MRAction alloc] initWithAction:action inRenderer:self->_renderer];
    self->_updateAction = v4;
    sender = self->_sender;

    [(MRAction *)v4 setSender:sender];
  }
}

- (void)setEndAction:(id)action
{
  if (action)
  {
    v4 = [[MRAction alloc] initWithAction:action inRenderer:self->_renderer];
    self->_endAction = v4;
    sender = self->_sender;

    [(MRAction *)v4 setSender:sender];
  }
}

- (void)setCancelAction:(id)action
{
  if (action)
  {
    v4 = [[MRAction alloc] initWithAction:action inRenderer:self->_renderer];
    self->_cancelAction = v4;
    sender = self->_sender;

    [(MRAction *)v4 setSender:sender];
  }
}

- (void)touchBegan:(id)began
{
  if ((self->_state & 0x24) == 0)
  {
    [began addGestureRecognizer:self];
    touchSet = self->_touchSet;
    if (touchSet)
    {
      [(MRTouchSet *)touchSet addTouch:began];
      if (self->_requiredTouchCount && [(MRTouchSet *)self->_touchSet countOfActiveTouches]> self->_requiredTouchCount)
      {

        [(MRGestureRecognizer *)self abort];
      }

      else
      {
        [(MRTouchSet *)self->_touchSet centroid];
        [(MRGestureRecognizer *)self _localPointFromTouchPoint:?];
        v7.f64[1] = v6;
        self->_offsetFromCentroid = vaddq_f64(self->_offsetFromCentroid, vsubq_f64(self->_centroidLocation, v7));
        scale = self->_scale;
        [(MRTouchSet *)self->_touchSet scale];
        self->_ratioFromScale = scale / v9;
        rotation = self->_rotation;
        [(MRTouchSet *)self->_touchSet rotation];
        self->_offsetFromRotation = rotation - v11;
      }
    }

    else
    {
      self->_touchSet = [[MRTouchSet alloc] initWithTouch:began];
      [began timestamp];
      self->_hitTime = v12;
      self->_previousHitTime = v12;
      self->_startTime = v12;
      [(MRTouchSet *)self->_touchSet centroid];
      [(MRGestureRecognizer *)self _localPointFromTouchPoint:?];
      self->_previousCentroidLocation.x = v13;
      self->_previousCentroidLocation.y = v14;
      previousCentroidLocation = self->_previousCentroidLocation;
      self->_centroidStartLocation = previousCentroidLocation;
      self->_centroidLocation = previousCentroidLocation;
      self->_ratioFromScale = 1.0;
      __asm { FMOV            V0.2D, #1.0 }

      *&self->_scale = _Q0;
    }
  }
}

- (void)touchMoved:(id)moved
{
  [moved timestamp];
  hitTime = self->_hitTime;
  if (v6 != hitTime)
  {
    self->_previousHitTime = hitTime;
    [moved timestamp];
    self->_hitTime = v7;
    self->_previousCentroidLocation = self->_centroidLocation;
    [(MRTouchSet *)self->_touchSet centroid];
    [(MRGestureRecognizer *)self _localPointFromTouchPoint:?];
    self->_centroidLocation.x = v8;
    self->_centroidLocation.y = v9;
    self->_previousScale = self->_scale;
    [(MRTouchSet *)self->_touchSet scale];
    rotation = self->_rotation;
    self->_scale = v11 * self->_ratioFromScale;
    self->_previousRotation = rotation;
    v12 = 6.28318531 / [(MRTouchSet *)self->_touchSet countOfActiveTouches];
    [(MRTouchSet *)self->_touchSet rotation];
      ;
    }

    self->_rotation = i;
    if (i - rotation <= v12 * -0.5)
    {
      do
      {
        i = v12 + i;
      }

      while (i - rotation <= v12 * -0.5);
      self->_rotation = i;
    }
  }
}

- (void)touchEnded:(id)ended
{
  [ended removeGestureRecognizer:self];
  [(MRTouchSet *)self->_touchSet removeTouch:ended];
  if ([(NSSet *)[(MRTouchSet *)self->_touchSet touches] count])
  {
    [(MRTouchSet *)self->_touchSet centroid];
    [(MRGestureRecognizer *)self _localPointFromTouchPoint:?];
    v6.f64[1] = v5;
    self->_offsetFromCentroid = vaddq_f64(self->_offsetFromCentroid, vsubq_f64(self->_centroidLocation, v6));
    scale = self->_scale;
    [(MRTouchSet *)self->_touchSet scale];
    self->_ratioFromScale = scale / v8;
    rotation = self->_rotation;
    [(MRTouchSet *)self->_touchSet rotation];
    self->_offsetFromRotation = rotation + v10;
  }
}

- (void)abort
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  touches = [(MRTouchSet *)self->_touchSet touches];
  v4 = [(NSSet *)touches countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(touches);
        }

        [*(*(&v8 + 1) + 8 * v7) removeGestureRecognizer:self];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [(NSSet *)touches countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  [(MRTouchSet *)self->_touchSet removeAllTouches];
  if (self->_state)
  {
    [(MRGestureRecognizer *)self _sendCancelActions];
  }

  self->_state = 32;
}

- (id)description
{
  state = self->_state;
  if (state)
  {
    v4 = [@"{ " stringByAppendingString:@"started "];
    state = self->_state;
    if ((state & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v4 = @"{ ";
  if ((state & 2) != 0)
  {
LABEL_5:
    v4 = [(__CFString *)v4 stringByAppendingString:@"updated "];
    state = self->_state;
  }

LABEL_6:
  if ((state & 4) != 0)
  {
    v4 = [(__CFString *)v4 stringByAppendingString:@"ended "];
    state = self->_state;
    if ((state & 8) == 0)
    {
LABEL_8:
      if ((state & 0x10) == 0)
      {
        goto LABEL_9;
      }

LABEL_14:
      v4 = [(__CFString *)v4 stringByAppendingString:@"recognized "];
      if ((self->_state & 0x20) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  else if ((state & 8) == 0)
  {
    goto LABEL_8;
  }

  v4 = [(__CFString *)v4 stringByAppendingString:@"can recognize "];
  state = self->_state;
  if ((state & 0x10) != 0)
  {
    goto LABEL_14;
  }

LABEL_9:
  if ((state & 0x20) != 0)
  {
LABEL_10:
    v4 = [(__CFString *)v4 stringByAppendingString:@"failed "];
  }

LABEL_11:
  v6.receiver = self;
  v6.super_class = MRGestureRecognizer;
  return [-[MRGestureRecognizer description](&v6 "description")];
}

- (void)_sendStartActions
{
  if (self->_automaticStartAction)
  {
    [(MRGestureRecognizer *)self _sendAction:?];
  }

  if (self->_startAction)
  {

    [(MRGestureRecognizer *)self _sendAction:?];
  }
}

- (void)_sendUpdateActions
{
  if (self->_automaticUpdateAction)
  {
    [(MRGestureRecognizer *)self _sendAction:?];
  }

  if (self->_updateAction)
  {

    [(MRGestureRecognizer *)self _sendAction:?];
  }
}

- (void)_sendEndActions
{
  if (self->_automaticEndAction)
  {
    [(MRGestureRecognizer *)self _sendAction:?];
  }

  if (self->_endAction)
  {

    [(MRGestureRecognizer *)self _sendAction:?];
  }
}

- (void)_sendCancelActions
{
  if (self->_automaticCancelAction)
  {
    [(MRGestureRecognizer *)self _sendAction:?];
  }

  if (self->_cancelAction)
  {

    [(MRGestureRecognizer *)self _sendAction:?];
  }
}

- (void)_sendAction:(id)action
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    persistentState = [self->_sender persistentState];
    if (persistentState)
    {
      persistentState = [NSMutableDictionary dictionaryWithDictionary:persistentState];
    }
  }

  else
  {
    persistentState = 0;
  }

  [action setStates:persistentState];
  [(MRRenderer *)self->_renderer time];
  [action setTime:?];
  [(MRGestureRecognizer *)self _addSpecificObjectToAction:action];
  [(MRRenderer *)self->_renderer doAction:action];
  renderer = self->_renderer;

  [(MRRenderer *)renderer requestRendering:0];
}

- (CGPoint)_localPointFromTouchPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  [(MRRenderer *)self->_renderer size];
  v7 = -(v6 - x * 2.0);
  [(MRRenderer *)self->_renderer size];
  v9 = v7 / v8;
  [(MRRenderer *)self->_renderer size];
  v11 = -(v10 - y * 2.0);
  [(MRRenderer *)self->_renderer size];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  matrixChain = self->_matrixChain;
  v14 = v11 / v13;
  v15 = [(NSArray *)matrixChain countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v23;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v23 != v17)
        {
          objc_enumerationMutation(matrixChain);
        }

        v9 = MRMatrix_UnprojectPoint([*(*(&v22 + 1) + 8 * i) bytes], v9, v14);
        v14 = v19;
      }

      v16 = [(NSArray *)matrixChain countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v16);
  }

  v20 = v9 + self->_offsetFromCentroid.x;
  v21 = v14 * (self->_referenceSize.width / self->_referenceSize.height) + self->_offsetFromCentroid.y;
  result.y = v21;
  result.x = v20;
  return result;
}

- (CGSize)referenceSize
{
  width = self->_referenceSize.width;
  height = self->_referenceSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end