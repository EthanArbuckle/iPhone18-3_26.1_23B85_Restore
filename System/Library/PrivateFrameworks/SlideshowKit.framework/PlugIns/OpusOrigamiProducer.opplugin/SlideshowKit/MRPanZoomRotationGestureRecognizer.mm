@interface MRPanZoomRotationGestureRecognizer
- (MRPanZoomRotationGestureRecognizer)initWithRenderer:(id)renderer endAction:(id)action direction:(unsigned __int8)direction andSender:(id)sender;
- (MRPanZoomRotationGestureRecognizer)initWithRenderer:(id)renderer masterAction:(id)action direction:(unsigned __int8)direction andSender:(id)sender;
- (MRPanZoomRotationGestureRecognizer)initWithRenderer:(id)renderer startAction:(id)action direction:(unsigned __int8)direction andSender:(id)sender;
- (void)_addSpecificObjectToAction:(id)action;
- (void)dealloc;
- (void)recognize;
- (void)touchEnded:(id)ended;
- (void)touchMoved:(id)moved;
@end

@implementation MRPanZoomRotationGestureRecognizer

- (MRPanZoomRotationGestureRecognizer)initWithRenderer:(id)renderer startAction:(id)action direction:(unsigned __int8)direction andSender:(id)sender
{
  v8.receiver = self;
  v8.super_class = MRPanZoomRotationGestureRecognizer;
  result = [(MRGestureRecognizer *)&v8 initWithRenderer:renderer startAction:action andSender:sender];
  if (result)
  {
    result->_direction = direction;
    result->_trackingBoxRadius = -10.0;
    result->_progressThreshold = 1.0;
    result->_velocityThreshold = 300.0;
  }

  return result;
}

- (MRPanZoomRotationGestureRecognizer)initWithRenderer:(id)renderer endAction:(id)action direction:(unsigned __int8)direction andSender:(id)sender
{
  v11.receiver = self;
  v11.super_class = MRPanZoomRotationGestureRecognizer;
  v8 = [(MRGestureRecognizer *)&v11 initWithRenderer:renderer startAction:0 andSender:sender];
  v9 = v8;
  if (v8)
  {
    v8->_direction = direction;
    [(MRGestureRecognizer *)v8 setEndAction:action];
  }

  return v9;
}

- (MRPanZoomRotationGestureRecognizer)initWithRenderer:(id)renderer masterAction:(id)action direction:(unsigned __int8)direction andSender:(id)sender
{
  v23.receiver = self;
  v23.super_class = MRPanZoomRotationGestureRecognizer;
  v8 = [(MRGestureRecognizer *)&v23 initWithRenderer:renderer startAction:0 andSender:sender];
  v9 = v8;
  if (v8)
  {
    v8->_direction = direction;
    v8->_isMaster = 1;
    attributes = [action attributes];
    v11 = [attributes objectForKey:@"type"];
    v9->_type = v11;
    if ([(NSString *)v11 isEqualToString:@"panTransition"])
    {
      v12 = [objc_msgSend(action "attributes")];
      v13 = objc_alloc_init(MCActionTrigger);
      targetObjectID = [v12 objectForKey:@"targetIDInPage"];
      if (!targetObjectID)
      {
        targetObjectID = [action targetObjectID];
      }

      [(MCAction *)v13 setTargetObjectID:targetObjectID];
      -[MCActionTrigger setActionKey:](v13, "setActionKey:", [v12 objectForKey:@"actionKey"]);
      v15 = [[MRAction alloc] initWithAction:v13 inRenderer:v9->super._renderer];
      v9->super._automaticStartAction = v15;
      [(MRAction *)v15 setSender:v9->super._sender];

      v16 = [attributes objectForKey:@"progressFactor"];
      if (v16)
      {
        [v16 floatValue];
        v18 = v17 * 0.5;
      }

      else
      {
        v18 = 0.5;
      }

      v9->_factor = v18;
      v19 = &selRef_abortTransition_;
      v20 = &selRef_finishTransition_;
      v21 = &selRef_updateTransition_;
      goto LABEL_13;
    }

    if ([(NSString *)v9->_type isEqualToString:@"effectPan"])
    {
      v9->super._automaticStartAction = -[MRAction initWithSelector:sender:andTargetPath:inRenderer:]([MRAction alloc], "initWithSelector:sender:andTargetPath:inRenderer:", "pzrStart:", v9->super._sender, [action targetObjectID], v9->super._renderer);
      v19 = &selRef_pzrCancel_;
      v20 = &selRef_pzrEnd_;
      v21 = &selRef_pzrUpdate_;
LABEL_13:
      v9->super._automaticUpdateAction = -[MRAction initWithSelector:sender:andTargetPath:inRenderer:]([MRAction alloc], "initWithSelector:sender:andTargetPath:inRenderer:", *v21, v9->super._sender, [action targetObjectID], v9->super._renderer);
      v9->super._automaticEndAction = -[MRAction initWithSelector:sender:andTargetPath:inRenderer:]([MRAction alloc], "initWithSelector:sender:andTargetPath:inRenderer:", *v20, v9->super._sender, [action targetObjectID], v9->super._renderer);
      v9->super._automaticCancelAction = -[MRAction initWithSelector:sender:andTargetPath:inRenderer:]([MRAction alloc], "initWithSelector:sender:andTargetPath:inRenderer:", *v19, v9->super._sender, [action targetObjectID], v9->super._renderer);
      return v9;
    }

    if ([(NSString *)v9->_type isEqualToString:@"fastScrub"])
    {
      v9->super._automaticStartAction = -[MRAction initWithSelector:sender:andTargetPath:inRenderer:]([MRAction alloc], "initWithSelector:sender:andTargetPath:inRenderer:", "fastScrubStart:", v9->super._sender, [action targetObjectID], v9->super._renderer);
      v19 = &selRef_fastScrubCancel_;
      v20 = &selRef_fastScrubEnd_;
      v21 = &selRef_fastScrubUpdate_;
      goto LABEL_13;
    }
  }

  return v9;
}

- (void)dealloc
{
  self->_type = 0;
  v3.receiver = self;
  v3.super_class = MRPanZoomRotationGestureRecognizer;
  [(MRPanZoomRotationGestureRecognizer *)&v3 dealloc];
}

- (void)touchMoved:(id)moved
{
  v63.receiver = self;
  v63.super_class = MRPanZoomRotationGestureRecognizer;
  [(MRGestureRecognizer *)&v63 touchMoved:moved];
  state = self->super._state;
  if ((state & 0x11) != 0)
  {
    if ((state & 4) == 0)
    {
      [(MRPanZoomRotationGestureRecognizer *)self _postProcess];
      trackingBoxRadius = self->_trackingBoxRadius;
      if (trackingBoxRadius <= 0.0 || ((v5 = self->super._referenceSize.width * vabdd_f64(self->super._centroidLocation.x, self->super._centroidStartLocation.x) * 0.5, trackingBoxRadius = trackingBoxRadius * 44.0, (self->_direction & 3) != 0) ? (_NF = v5 < trackingBoxRadius) : (_NF = 1), _NF))
      {
        [(MRGestureRecognizer *)self _sendUpdateActions:trackingBoxRadius];
      }

      else
      {
        self->super._state |= 4u;
        [(MRGestureRecognizer *)self _sendEndActions:trackingBoxRadius];
      }
    }
  }

  else
  {
    referenceScale = self->super._referenceScale;
    v9 = referenceScale * 10.0;
    v10 = referenceScale * 7.5;
    __asm { FMOV            V1.2D, #0.5 }

    v62 = vmulq_f64(vmulq_f64(vsubq_f64(self->super._centroidLocation, self->super._centroidStartLocation), self->super._referenceSize), _Q1);
    v15 = vabsq_f64(v62);
    v16 = v15.f64[1];
    v17 = fmax(v15.f64[0], v15.f64[1]) < referenceScale * 10.0;
    v60 = v15.f64[0];
    v18 = v15.f64[0] <= v15.f64[1];
    v19 = v15.f64[0] > v15.f64[1];
    v20 = self->super._scale + -1.0;
    [(MRTouchSet *)self->super._touchSet scale];
    v22 = v20 * v21;
    offsetFromRotation = self->super._offsetFromRotation;
    v61 = fabs(v20 * v21);
    v24 = fabs(offsetFromRotation);
    direction = self->_direction;
    v26 = -v9;
    v27 = direction & v19 & !v17;
    if (v62.f64[0] > -v9)
    {
      v27 = 0;
    }

    v28 = !v17 & (direction >> 1) & v19;
    if (v62.f64[0] < v9)
    {
      LOBYTE(v28) = 0;
    }

    v29 = v22 >= v10 && v61 >= v10;
    v30 = (v61 >= v10) & (direction >> 5);
    if (v22 > -v10)
    {
      v30 = 0;
    }

    v31 = (direction & 0x80u) != 0;
    v32 = v24;
    v33 = (v62.f64[1] <= v26) & ~((direction & 8) == 0 || v19 || v17) | (v62.f64[1] >= v9) & ~((direction & 4) == 0 || v19 || v17) | v27 | v28;
    v34 = v30 | *&v29 & ((direction & 0x10) >> 4);
    v35 = (v24 >= 0.05) & (direction >> 6);
    if (v24 < 0.05)
    {
      v31 = 0;
    }

    if (offsetFromRotation < 0.05)
    {
      LOBYTE(v35) = 0;
    }

    v36 = v35 | v34;
    v37 = self->super._offsetFromRotation;
    v38 = offsetFromRotation <= -0.05 && v31;
    v39 = v38 | v36 | v33;
    if ([(MRGestureRecognizer *)self requiredTouchCount])
    {
      requiredTouchCount = [(MRGestureRecognizer *)self requiredTouchCount];
      v41 = [(MRTouchSet *)self->super._touchSet countOfActiveTouches]!= requiredTouchCount;
    }

    else
    {
      v41 = 0;
    }

    v42 = self->_direction;
    self->super._score = 0.0;
    v43 = v10;
    if ((v39 & 1) == 0 || v41)
    {
      v50 = v61 >= v10;
      v51 = v60 > v16;
      v52 = (v42 & 0x80u) != 0;
      if (v32 < 0.05)
      {
        v52 = 0;
      }

      v53 = v37 > -0.05 && v52;
      v54 = v62.f64[1] < v9 || v60 > v16;
      if (v62.f64[1] > v26)
      {
        v51 = 1;
      }

      v55 = v50 & (v42 >> 4);
      if (v22 >= v10)
      {
        LOBYTE(v55) = 0;
      }

      v56 = v50 & (v42 >> 5);
      if (v22 <= v59)
      {
        LOBYTE(v56) = 0;
      }

      v57 = (v32 >= 0.05) & (v42 >> 6);
      if (v37 >= 0.05)
      {
        LOBYTE(v57) = 0;
      }

      if (v53 || (v57 & 1) != 0 || (v56 & 1) != 0 || (v55 & 1) != 0 || (v58 = !v17, (!v17 & (v42 >> 3) & v51 & 1) != 0) || (v58 & (v42 >> 2) & v54 & 1) != 0 || (v42 & (v18 || v62.f64[0] > v26) & v58 & 1) != 0 || (v58 & ((v42 & 2) >> 1) & (v18 || v62.f64[0] < v9)) != 0)
      {
        [(MRGestureRecognizer *)self abort:v59];
      }
    }

    else
    {
      self->super._state |= 8u;
      v44 = self->_direction;
      if ((v44 & 1) != 0 && !v18 && !v17 && v62.f64[0] <= v26 || (v45 = 0.0, (v44 & 2) != 0 && !v18 && !v17) && v62.f64[0] >= v9)
      {
        self->super._score = v60;
        v44 = self->_direction;
        v45 = v60;
      }

      if ((v44 & 4) != 0 && !v17 && (v60 <= v16 ? (v46 = v62.f64[1] < v9) : (v46 = 1), !v46) || (v44 & 8) != 0 && !v17 && (v60 <= v16 ? (v47 = v62.f64[1] > v26) : (v47 = 1), !v47))
      {
        if (v45 < v16)
        {
          v45 = v16;
        }

        self->super._score = v45;
        v44 = self->_direction;
      }

      if ((v44 & 0x10) != 0 && v61 >= v10 && v22 >= v10 || (v44 & 0x20) != 0 && v61 >= v10 && (v43 = v59, v22 <= v59))
      {
        v43 = fabs(v22 * 1.5);
        if (v45 < v43)
        {
          v45 = v43;
        }

        self->super._score = v45;
        v44 = self->_direction;
      }

      if ((v44 & 0x40) != 0 && v32 >= 0.05 && v37 >= 0.05 || (v44 & 0x80) != 0 && v32 >= 0.05 && (v43 = -0.05, v37 <= -0.05))
      {
        v43 = fabs(v37 * 50.0);
        if (v45 < v43)
        {
          v45 = v43;
        }

        self->super._score = v45;
      }

      v48 = [(MRTouchSet *)self->super._touchSet countOfActiveTouches:v45];
      requiredTouchCount = self->super._requiredTouchCount;
      if (v48 == requiredTouchCount)
      {
        self->super._score = self->super._score * requiredTouchCount;
      }
    }
  }
}

- (void)touchEnded:(id)ended
{
  if ((self->super._state & 4) != 0)
  {
    return;
  }

  if ([(NSSet *)[(MRTouchSet *)self->super._touchSet touches] count]!= &dword_0 + 1)
  {
LABEL_8:
    v6.receiver = self;
    v6.super_class = MRPanZoomRotationGestureRecognizer;
    [(MRGestureRecognizer *)&v6 touchEnded:ended];
    return;
  }

  state = self->super._state;
  if (state)
  {
    self->super._state = state | 4;
    [(MRGestureRecognizer *)self _sendEndActions];
    goto LABEL_8;
  }

  [(MRGestureRecognizer *)self abort];
}

- (void)recognize
{
  self->super._state = self->super._state & 0xFFFFFFE6 | 0x11;
  offsetFromCentroid = self->super._offsetFromCentroid;
  self->super._centroidLocation = vsubq_f64(self->super._centroidLocation, offsetFromCentroid);
  self->super._previousCentroidLocation = vsubq_f64(self->super._previousCentroidLocation, offsetFromCentroid);
  self->super._centroidStartLocation = self->super._centroidLocation;
  self->super._offsetFromCentroid = CGPointZero;
  self->super._previousScale = self->super._previousScale / self->super._scale;
  self->super._scale = 1.0;
  [(MRTouchSet *)self->super._touchSet scale];
  self->super._ratioFromScale = 1.0 / v4;
  self->super._previousRotation = self->super._previousRotation - self->super._rotation;
  self->super._rotation = 0.0;
  [(MRTouchSet *)self->super._touchSet rotation];
  self->super._offsetFromRotation = 0.0 - v5;
  [(MRPanZoomRotationGestureRecognizer *)self _postProcess];

  [(MRGestureRecognizer *)self _sendStartActions];
}

- (void)_addSpecificObjectToAction:(id)action
{
  v29 = objc_alloc_init(MRGesturePanZoomRotation);
  [action time];
  v29->time = v5;
  *&v29->x = self->super._centroidLocation;
  v29->deltaX = self->super._centroidLocation.x - self->super._centroidStartLocation.x;
  v29->deltaY = self->super._centroidLocation.y - self->super._centroidStartLocation.y;
  v29->scale = self->super._scale;
  v29->rotation = self->super._rotation;
  hitTime = self->super._hitTime;
  previousHitTime = self->super._previousHitTime;
  v8 = previousHitTime < hitTime;
  v9 = 1.0 / (hitTime - previousHitTime);
  if (v8)
  {
    v10 = v9;
  }

  else
  {
    v10 = 1.0;
  }

  v29->speedX = v10 * (self->super._centroidLocation.x - self->super._previousCentroidLocation.x);
  v29->speedY = v10 * (self->super._centroidLocation.y - self->super._previousCentroidLocation.y);
  v29->speedScale = pow(self->super._scale / self->super._previousScale, v10);
  v29->speedRotation = v10 * (self->super._rotation - self->super._previousRotation);
  v29->direction = self->_direction;
  v29->countOfTouches = [(NSSet *)[(MRTouchSet *)self->super._touchSet touches] count];
  v29->okToAnimate = 1;
  [action setSpecificObject:?];
  trackingBoxRadius = self->_trackingBoxRadius;
  if (trackingBoxRadius <= 0.0)
  {
    v29->boxedProgress = -10.0;
  }

  else
  {
    v12 = self->_progressThreshold * (self->super._referenceSize.width * 0.5) / (trackingBoxRadius * 44.0);
    v29->boxedProgress = v29->deltaX * v12;
    v29->boxedVelocity = v12 * v29->speedX;
    if ((self->super._state & 4) != 0)
    {
      v13 = v29->speedX * (self->super._referenceSize.width * 0.5);
      boxedProgress = v29->boxedProgress;
      v15 = fabs(boxedProgress);
      if (fabs(v13) >= self->_velocityThreshold)
      {
        v16 = (v13 < 0.0) ^ (boxedProgress >= 0.0);
      }

      else
      {
        v16 = 0;
      }

      v29->forceFinish = (v15 >= self->_progressThreshold) | v16 & 1;
    }
  }

  if ([action mcAction])
  {
    states = [action states];
    x = v29->x;
    *&x = x;
    [states setObject:+[NSNumber numberWithFloat:](NSNumber forKey:{"numberWithFloat:", x), @"_pzrX"}];
    y = v29->y;
    *&y = y;
    [states setObject:+[NSNumber numberWithFloat:](NSNumber forKey:{"numberWithFloat:", y), @"_pzrY"}];
    direction = self->_direction;
    if ((direction & 3) != 0)
    {
      deltaX = v29->deltaX;
      *&deltaX = deltaX;
      [states setObject:+[NSNumber numberWithFloat:](NSNumber forKey:{"numberWithFloat:", deltaX), @"_pzrDeltaX"}];
      speedX = v29->speedX;
      *&speedX = speedX;
      [states setObject:+[NSNumber numberWithFloat:](NSNumber forKey:{"numberWithFloat:", speedX), @"_pzrSpeedX"}];
      direction = self->_direction;
    }

    if ((direction & 0xC) != 0)
    {
      deltaY = v29->deltaY;
      *&deltaY = deltaY;
      [states setObject:+[NSNumber numberWithFloat:](NSNumber forKey:{"numberWithFloat:", deltaY), @"_pzrDeltaY"}];
      speedY = v29->speedY;
      *&speedY = speedY;
      [states setObject:+[NSNumber numberWithFloat:](NSNumber forKey:{"numberWithFloat:", speedY), @"_pzrSpeedY"}];
      direction = self->_direction;
    }

    if ((direction & 0x30) != 0)
    {
      scale = v29->scale;
      *&scale = scale;
      [states setObject:+[NSNumber numberWithFloat:](NSNumber forKey:{"numberWithFloat:", scale), @"_pzrScale"}];
      speedScale = v29->speedScale;
      *&speedScale = speedScale;
      [states setObject:+[NSNumber numberWithFloat:](NSNumber forKey:{"numberWithFloat:", speedScale), @"_pzrSpeedScale"}];
      direction = self->_direction;
    }

    if (direction >= 0x40)
    {
      rotation = v29->rotation;
      *&rotation = rotation;
      [states setObject:+[NSNumber numberWithFloat:](NSNumber forKey:{"numberWithFloat:", rotation), @"_pzrRotation"}];
      speedRotation = v29->speedRotation;
      *&speedRotation = speedRotation;
      [states setObject:+[NSNumber numberWithFloat:](NSNumber forKey:{"numberWithFloat:", speedRotation), @"_pzrSpeedRotation"}];
    }
  }
}

@end