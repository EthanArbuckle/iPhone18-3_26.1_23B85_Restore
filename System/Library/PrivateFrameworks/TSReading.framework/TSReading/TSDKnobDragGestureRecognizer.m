@interface TSDKnobDragGestureRecognizer
- (BOOL)p_hitRepIsValid:(id)a3;
- (CGPoint)autoscrollPoint;
- (CGPoint)p_pointInUnscaledCanvas;
- (TSDKnobDragGestureRecognizer)initWithInteractiveCanvasController:(id)a3;
- (void)cancelBecauseOfRotation;
- (void)dealloc;
- (void)operationDidEnd;
- (void)p_triggerDelayedKnobTracking:(id)a3;
- (void)reset;
- (void)setState:(int64_t)a3;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
- (void)updateAfterAutoscroll:(id)a3;
@end

@implementation TSDKnobDragGestureRecognizer

- (TSDKnobDragGestureRecognizer)initWithInteractiveCanvasController:(id)a3
{
  v8.receiver = self;
  v8.super_class = TSDKnobDragGestureRecognizer;
  v4 = [(TSDKnobDragGestureRecognizer *)&v8 initWithTarget:0 action:0];
  if (v4)
  {
    if (!a3)
    {
      v5 = [MEMORY[0x277D6C290] currentHandler];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDKnobDragGestureRecognizer initWithInteractiveCanvasController:]"];
      [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDKnobDragGestureRecognizer.m"), 55, @"invalid nil value for '%s'", "icc"}];
    }

    v4->mICC = a3;
    v4->mCVC = [objc_msgSend(a3 "layerHost")];
  }

  return v4;
}

- (void)dealloc
{
  [(TSDKnobDragGestureRecognizer *)self p_cancelDelayedKnobTracking];
  v3.receiver = self;
  v3.super_class = TSDKnobDragGestureRecognizer;
  [(TSDKnobDragGestureRecognizer *)&v3 dealloc];
}

- (void)setState:(int64_t)a3
{
  [(TSDKnobDragGestureRecognizer *)self state];
  v5.receiver = self;
  v5.super_class = TSDKnobDragGestureRecognizer;
  [(TSDKnobDragGestureRecognizer *)&v5 setState:a3];
}

- (void)reset
{
  v3.receiver = self;
  v3.super_class = TSDKnobDragGestureRecognizer;
  [(TSDKnobDragGestureRecognizer *)&v3 reset];
  [(TSDKnobDragGestureRecognizer *)self p_cancelDelayedKnobTracking];

  self->mTouch = 0;
  self->mSecondTouch = 0;
  self->mKnobToTouchOffset = *MEMORY[0x277CBF348];

  self->mLastHitRep = 0;
  self->mTouchesMoved = 0;
  self->mKnobTouchHasMoved = 0;
  self->mDelayHasElapsed = 0;

  self->mTracker = 0;
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  if (![(TSDKnobDragGestureRecognizer *)self state]&& [(TSDInteractiveCanvasController *)self->mICC currentlyScrolling]|| [(TSDDynamicOperationController *)[(TSDInteractiveCanvasController *)self->mICC dynamicOperationController] isInOperation]&& ![(TSDKnobDragGestureRecognizer *)self state])
  {

    [(TSDKnobDragGestureRecognizer *)self setState:5];
  }

  else
  {
    v59.receiver = self;
    v59.super_class = TSDKnobDragGestureRecognizer;
    [(TSDKnobDragGestureRecognizer *)&v59 touchesBegan:a3 withEvent:a4];
    self->mTouchesMoved = 0;

    self->mLastHitRep = 0;
    [(UITouch *)self->mTouch locationInView:[(UITouch *)self->mTouch window]];
    self->mOriginalPointInWindow.x = v7;
    self->mOriginalPointInWindow.y = v8;
    if ([(TSDKnobDragGestureRecognizer *)self state])
    {
      if ([(TSDKnobDragGestureRecognizer *)self state]!= 1)
      {
        [(TSDKnobDragGestureRecognizer *)self state];
      }

      return;
    }

    if ([a3 count] != 1)
    {
      goto LABEL_24;
    }

    if (self->mTouch)
    {
      goto LABEL_24;
    }

    v9 = [a3 anyObject];
    self->mTouch = v9;
    if ([(UITouch *)v9 tapCount]!= 1)
    {
      goto LABEL_24;
    }

    [(TSDKnobDragGestureRecognizer *)self p_pointInUnscaledCanvas];
    v11 = v10;
    v58 = 0;
    v12 = [(TSDInteractiveCanvasController *)self->mICC hitKnobAtPoint:&v58 returningRep:?];
    if (!v12 || (v13 = v12, [v12 type] == 3))
    {
      v58 = [objc_msgSend(-[TSDCanvasLayerHosting asiOSCVC](-[TSDInteractiveCanvasController layerHost](self->mICC "layerHost")];
      if (v58)
      {
        [(TSDTrackerManipulatorCoordinator *)[(TSDInteractiveCanvasController *)self->mICC tmCoordinator] registerTrackerManipulator:self];
        self->mSecondTouch = self->mTouch;

        self->mTouch = 0;
        return;
      }

      goto LABEL_24;
    }

    self->mLastHitRep = v58;

    v14 = [v58 newTrackerForKnob:v13];
    self->mTracker = v14;
    v15 = [(TSDKnobTracker *)v14 knob];
    if (!self->mTracker)
    {
      v16 = [MEMORY[0x277D6C290] currentHandler];
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDKnobDragGestureRecognizer touchesBegan:withEvent:]"];
      [v16 handleFailureInFunction:v17 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDKnobDragGestureRecognizer.m"), 143, @"invalid nil value for '%s'", "mTracker"}];
    }

    v18 = v58;
    [(TSDKnob *)v15 position];
    [v18 convertNaturalPointToUnscaledCanvas:?];
    v20 = v19;
    v22 = v21;
    p_mKnobToTouchOffset = &self->mKnobToTouchOffset;
    if ([(TSDKnobTracker *)self->mTracker shouldUseKnobOffset])
    {
      x = TSDSubtractPoints(v20, v22, v11);
      p_mKnobToTouchOffset->x = x;
      self->mKnobToTouchOffset.y = y;
    }

    else
    {
      *p_mKnobToTouchOffset = *MEMORY[0x277CBF348];
      x = p_mKnobToTouchOffset->x;
      y = self->mKnobToTouchOffset.y;
    }

    [(TSDKnobTracker *)self->mTracker i_setKnobOffset:x, y];
    if (self->mSecondTouch)
    {
LABEL_24:
      [(TSDKnobDragGestureRecognizer *)self setState:5];
      return;
    }

    [(TSDKnobDragGestureRecognizer *)self p_pointInUnscaledCanvas];
    [(TSDKnobTracker *)self->mTracker setCurrentPosition:TSDAddPoints(v26, v27, p_mKnobToTouchOffset->x)];
    [(TSDKnobDragGestureRecognizer *)self addTarget:[(TSDInteractiveCanvasController *)self->mICC dynamicOperationController] action:sel_handleGestureRecognizer_];
    [(TSDTrackerManipulatorCoordinator *)[(TSDInteractiveCanvasController *)self->mICC tmCoordinator] registerTrackerManipulator:self];
    v28 = [[(TSDKnobTracker *)self->mTracker knob] dragType];
    if (v28 <= 2)
    {
      if (v28)
      {
        if (v28 != 1)
        {
          if (v28 == 2)
          {
            [(TSDKnobDragGestureRecognizer *)self setState:1];
            [(TSDKnobTracker *)self->mTracker delay];
            if (v29 != 0.0)
            {
              v30 = [MEMORY[0x277D6C290] currentHandler];
              v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDKnobDragGestureRecognizer touchesBegan:withEvent:]"];
              v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDKnobDragGestureRecognizer.m"];
              [(TSDKnobTracker *)self->mTracker delay];
              [v30 handleFailureInFunction:v31 file:v32 lineNumber:207 description:{@"requesting a delay of %f", v33}];
            }

            if ([(TSDTrackerManipulatorCoordinator *)[(TSDInteractiveCanvasController *)self->mICC tmCoordinator] takeControlWithTrackerManipulator:self])
            {
              if ([(TSDDynamicOperationController *)[(TSDInteractiveCanvasController *)self->mICC dynamicOperationController] isInPossibleDynamicOperation])
              {
                [(TSDDynamicOperationController *)[(TSDInteractiveCanvasController *)self->mICC dynamicOperationController] stopTransformingReps:[(TSDDynamicOperationController *)[(TSDInteractiveCanvasController *)self->mICC dynamicOperationController] currentlyTransformingReps]];
              }

              [(TSDDynamicOperationController *)[(TSDInteractiveCanvasController *)self->mICC dynamicOperationController] beginOperation];
              v34 = [(TSDInteractiveCanvasController *)self->mICC dynamicOperationController];
              -[TSDDynamicOperationController startTransformingReps:](v34, "startTransformingReps:", [MEMORY[0x277CBEB98] setWithObject:{-[TSDKnobTracker rep](self->mTracker, "rep")}]);
            }
          }

          return;
        }

        [(TSDKnobTracker *)self->mTracker delay];
        if (v52 == 0.0)
        {
          v53 = [MEMORY[0x277D6C290] currentHandler];
          v54 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDKnobDragGestureRecognizer touchesBegan:withEvent:]"];
          v43 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDKnobDragGestureRecognizer.m"];
          v44 = v53;
          v45 = v54;
          v46 = 199;
          goto LABEL_49;
        }
      }

      else
      {
        [(TSDKnobTracker *)self->mTracker delay];
        if (v40 == 0.0)
        {
          v41 = [MEMORY[0x277D6C290] currentHandler];
          v42 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDKnobDragGestureRecognizer touchesBegan:withEvent:]"];
          v43 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDKnobDragGestureRecognizer.m"];
          v44 = v41;
          v45 = v42;
          v46 = 192;
LABEL_49:
          [v44 handleFailureInFunction:v45 file:v43 lineNumber:v46 description:@"requesting a delay of 0"];
        }
      }

LABEL_50:
      [(TSDKnobTracker *)self->mTracker delay];
      [(TSDKnobDragGestureRecognizer *)self p_requestDelayedKnobTracking:?];
      return;
    }

    switch(v28)
    {
      case 3:
        [(TSDKnobTracker *)self->mTracker delay];
        if (v47 != 0.0)
        {
          v48 = [MEMORY[0x277D6C290] currentHandler];
          v49 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDKnobDragGestureRecognizer touchesBegan:withEvent:]"];
          v50 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDKnobDragGestureRecognizer.m"];
          [(TSDKnobTracker *)self->mTracker delay];
          [v48 handleFailureInFunction:v49 file:v50 lineNumber:225 description:{@"requesting a delay of %f", v51}];
        }

        break;
      case 4:
        [(TSDKnobTracker *)self->mTracker delay];
        if (v55 == 0.0)
        {
          v56 = [MEMORY[0x277D6C290] currentHandler];
          v57 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDKnobDragGestureRecognizer touchesBegan:withEvent:]"];
          v43 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDKnobDragGestureRecognizer.m"];
          v44 = v56;
          v45 = v57;
          v46 = 232;
          goto LABEL_49;
        }

        goto LABEL_50;
      case 5:
        [(TSDKnobTracker *)self->mTracker delay];
        if (v35 != 0.0)
        {
          v36 = [MEMORY[0x277D6C290] currentHandler];
          v37 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDKnobDragGestureRecognizer touchesBegan:withEvent:]"];
          v38 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDKnobDragGestureRecognizer.m"];
          [(TSDKnobTracker *)self->mTracker delay];
          [v36 handleFailureInFunction:v37 file:v38 lineNumber:239 description:{@"requesting a delay of %f", v39}];
        }

        break;
    }
  }
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  self->mTouchesMoved = 1;
  self->mKnobTouchHasMoved = 1;
  if (!self->mDelayHasElapsed && [[(TSDKnobTracker *)self->mTracker knob] dragType]== 4)
  {
    [(UITouch *)self->mTouch locationInView:[(UITouch *)self->mTouch window]];
    if (TSDDistance(self->mOriginalPointInWindow.x, self->mOriginalPointInWindow.y, v7, v8) >= 14.0)
    {
      [(TSDKnobDragGestureRecognizer *)self setState:5];
      [(TSDKnobDragGestureRecognizer *)self p_cancelDelayedKnobTracking];
    }
  }

  v14.receiver = self;
  v14.super_class = TSDKnobDragGestureRecognizer;
  [(TSDKnobDragGestureRecognizer *)&v14 touchesMoved:a3 withEvent:a4];
  if ([a3 containsObject:self->mTouch])
  {
    if ([(TSDKnobDragGestureRecognizer *)self state])
    {
      if ([(TSDKnobDragGestureRecognizer *)self state]== 1)
      {
        v9 = self;
        v10 = 2;
LABEL_16:
        [(TSDKnobDragGestureRecognizer *)v9 setState:v10];
      }
    }

    else
    {
      if ([[(TSDKnobTracker *)self->mTracker knob] dragType]== 3 || [[(TSDKnobTracker *)self->mTracker knob] dragType]== 1 || [[(TSDKnobTracker *)self->mTracker knob] dragType]== 5)
      {
        [(TSDKnobDragGestureRecognizer *)self setState:1];
        [(TSDKnobDragGestureRecognizer *)self p_cancelDelayedKnobTracking];
      }

      else
      {
        if ([[(TSDKnobTracker *)self->mTracker knob] dragType]|| !self->mDelayHasElapsed)
        {
          goto LABEL_17;
        }

        [(TSDKnobDragGestureRecognizer *)self setState:1];
      }

      if (![(TSDTrackerManipulatorCoordinator *)[(TSDInteractiveCanvasController *)self->mICC tmCoordinator] takeControlWithTrackerManipulator:self])
      {
        v9 = self;
        v10 = 5;
        goto LABEL_16;
      }

      [(TSDDynamicOperationController *)[(TSDInteractiveCanvasController *)self->mICC dynamicOperationController] beginOperation];
      v11 = [(TSDInteractiveCanvasController *)self->mICC dynamicOperationController];
      -[TSDDynamicOperationController startTransformingReps:](v11, "startTransformingReps:", [MEMORY[0x277CBEB98] setWithObject:self->mLastHitRep]);
    }

LABEL_17:
    [(TSDKnobDragGestureRecognizer *)self p_pointInUnscaledCanvas];
    [(TSDKnobTracker *)self->mTracker setCurrentPosition:TSDAddPoints(v12, v13, self->mKnobToTouchOffset.x)];
  }

  if ([(TSDKnobDragGestureRecognizer *)self state]== 2)
  {
    if ([(TSDKnobTracker *)self->mTracker wantsAutoscroll])
    {
      [(TSDKnobDragGestureRecognizer *)self p_pointInUnscaledCanvas];
      [TSDAutoscroll startAutoscroll:self unscaledPoint:?];
    }
  }
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v12.receiver = self;
  v12.super_class = TSDKnobDragGestureRecognizer;
  [(TSDKnobDragGestureRecognizer *)&v12 touchesEnded:a3 withEvent:a4];
  if ([a3 containsObject:self->mTouch])
  {
    if ([(TSDKnobDragGestureRecognizer *)self state]|| [[(TSDKnobTracker *)self->mTracker knob] dragType]&& [[(TSDKnobTracker *)self->mTracker knob] dragType]!= 3)
    {
      if ([(TSDKnobDragGestureRecognizer *)self state]|| self->mDelayHasElapsed || [[(TSDKnobTracker *)self->mTracker knob] dragType]!= 4 && [[(TSDKnobTracker *)self->mTracker knob] dragType]&& [[(TSDKnobTracker *)self->mTracker knob] dragType]!= 1)
      {
        if ([(TSDKnobDragGestureRecognizer *)self state]|| [[(TSDKnobTracker *)self->mTracker knob] dragType]!= 5)
        {
          [(TSDKnobDragGestureRecognizer *)self setState:3];
          [(TSDKnobDragGestureRecognizer *)self p_pointInUnscaledCanvas];
          [(TSDKnobTracker *)self->mTracker setCurrentPosition:TSDAddPoints(v9, v10, self->mKnobToTouchOffset.x)];
          [(TSDKnobTracker *)self->mTracker setDragEnding:1];
          [(TSDAutoscroll *)self->mAutoscroll invalidate];
        }

        else
        {
          [(TSDKnobDragGestureRecognizer *)self setState:3];
          [(TSDKnobDragGestureRecognizer *)self p_pointInUnscaledCanvas];
          [(TSDKnobTracker *)self->mTracker setCurrentPosition:TSDAddPoints(v6, v7, self->mKnobToTouchOffset.x)];
          [(TSDKnobTracker *)self->mTracker setDragEnding:1];
          if ([(TSDTrackerManipulatorCoordinator *)[(TSDInteractiveCanvasController *)self->mICC tmCoordinator] takeControlWithTrackerManipulator:self])
          {
            [(TSDDynamicOperationController *)[(TSDInteractiveCanvasController *)self->mICC dynamicOperationController] beginOperation];
            v8 = [(TSDInteractiveCanvasController *)self->mICC dynamicOperationController];
            -[TSDDynamicOperationController startTransformingReps:](v8, "startTransformingReps:", [MEMORY[0x277CBEB98] setWithObject:self->mLastHitRep]);
          }
        }
      }

      else
      {
        [(TSDKnobDragGestureRecognizer *)self setState:5];
        [(TSDKnobDragGestureRecognizer *)self p_cancelDelayedKnobTracking];
      }
    }

    else
    {
      [(TSDKnobDragGestureRecognizer *)self setState:5];
    }
  }

  if (self->mSecondTouch && [a3 containsObject:?])
  {

    self->mSecondTouch = 0;
  }

  if (!self->mTouchesMoved)
  {
    mLastHitRep = self->mLastHitRep;
    if (mLastHitRep)
    {
      if ([(TSDRep *)mLastHitRep isSelected]&& [(TSDKnobTracker *)self->mTracker allowHUDToDisplay]&& [(TSDKnobDragGestureRecognizer *)self state]== 3)
      {
        [(TSDiOSCanvasViewController *)self->mCVC performSelector:sel_toggleEditMenuForCurrentSelection withObject:0 afterDelay:0.0];

        self->mLastHitRep = 0;
      }
    }
  }
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  [(TSDKnobDragGestureRecognizer *)self p_cancelDelayedKnobTracking];
  v9.receiver = self;
  v9.super_class = TSDKnobDragGestureRecognizer;
  [(TSDKnobDragGestureRecognizer *)&v9 touchesCancelled:a3 withEvent:a4];
  if ([a3 containsObject:self->mTouch])
  {
    if (![(TSDKnobDragGestureRecognizer *)self state])
    {
      v7 = self;
      v8 = 5;
      goto LABEL_9;
    }

    if ([(TSDKnobDragGestureRecognizer *)self state]== 1 || [(TSDKnobDragGestureRecognizer *)self state]== 2)
    {
      v7 = self;
      v8 = 4;
LABEL_9:
      [(TSDKnobDragGestureRecognizer *)v7 setState:v8];
    }
  }

  else if ([a3 containsObject:self->mSecondTouch])
  {

    self->mSecondTouch = 0;
  }

  self->mLastHitRep = 0;
}

- (void)cancelBecauseOfRotation
{
  if (self->mTracker)
  {
    [(TSDKnobDragGestureRecognizer *)self setState:5];
  }
}

- (void)operationDidEnd
{
  if (self->mTracker)
  {
    if ([(TSDTrackerManipulatorCoordinator *)[(TSDInteractiveCanvasController *)self->mICC tmCoordinator] controllingTM]== self && !self->mTouchesMoved)
    {
      mLastHitRep = self->mLastHitRep;
      if (mLastHitRep)
      {
        if ([(TSDRep *)mLastHitRep isSelected]&& [(TSDKnobTracker *)self->mTracker allowHUDToDisplay])
        {
          [(TSDiOSCanvasViewController *)self->mCVC performSelector:sel_toggleEditMenuForCurrentSelection withObject:0 afterDelay:0.0];
        }
      }
    }

    [(TSDKnobDragGestureRecognizer *)self removeTarget:[(TSDInteractiveCanvasController *)self->mICC dynamicOperationController] action:sel_handleGestureRecognizer_];

    self->mTracker = 0;
  }

  mSecondTouch = self->mSecondTouch;
  if (mSecondTouch)
  {
    if (!self->mTouch)
    {

      self->mSecondTouch = 0;
    }
  }
}

- (void)p_triggerDelayedKnobTracking:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  self->mDelayHasElapsed = 1;
  if ([(TSDKnobDragGestureRecognizer *)self state])
  {
    v4 = [MEMORY[0x277D6C290] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDKnobDragGestureRecognizer p_triggerDelayedKnobTracking:]"];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDKnobDragGestureRecognizer.m"];
    [(TSDKnobDragGestureRecognizer *)self state];
    [v4 handleFailureInFunction:v5 file:v6 lineNumber:511 description:{@"delay fired when knob GR in state %@", NSStringFromUIGestureRecognizerState()}];
  }

  else
  {
    v7 = [[(TSDKnobTracker *)self->mTracker knob] dragType];
    if (v7 <= 5)
    {
      if (((1 << v7) & 0x2C) != 0)
      {
        v8 = [MEMORY[0x277D6C290] currentHandler];
        v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDKnobDragGestureRecognizer p_triggerDelayedKnobTracking:]"];
        [v8 handleFailureInFunction:v9 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDKnobDragGestureRecognizer.m"), 520, @"shouldn't have delayed knob tracking!"}];
      }

      else if (((1 << v7) & 0x12) != 0 || self->mKnobTouchHasMoved)
      {
        [(TSDKnobDragGestureRecognizer *)self setState:1];
      }
    }

    if ([(TSDKnobDragGestureRecognizer *)self state]== 1 && [(TSDTrackerManipulatorCoordinator *)[(TSDInteractiveCanvasController *)self->mICC tmCoordinator] takeControlWithTrackerManipulator:self])
    {
      if ([(TSDDynamicOperationController *)[(TSDInteractiveCanvasController *)self->mICC dynamicOperationController] isInPossibleDynamicOperation])
      {
        v18 = 0u;
        v19 = 0u;
        v16 = 0u;
        v17 = 0u;
        v10 = [(TSDDynamicOperationController *)[(TSDInteractiveCanvasController *)self->mICC dynamicOperationController] currentlyTransformingReps];
        v11 = [(NSSet *)v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v17;
          do
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v17 != v13)
              {
                objc_enumerationMutation(v10);
              }

              [*(*(&v16 + 1) + 8 * i) showKnobsDuringManipulation:0];
            }

            v12 = [(NSSet *)v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
          }

          while (v12);
        }

        [(TSDDynamicOperationController *)[(TSDInteractiveCanvasController *)self->mICC dynamicOperationController] stopTransformingReps:[(TSDDynamicOperationController *)[(TSDInteractiveCanvasController *)self->mICC dynamicOperationController] currentlyTransformingReps]];
      }

      [(TSDDynamicOperationController *)[(TSDInteractiveCanvasController *)self->mICC dynamicOperationController] beginOperation];
      v15 = [(TSDInteractiveCanvasController *)self->mICC dynamicOperationController];
      -[TSDDynamicOperationController startTransformingReps:](v15, "startTransformingReps:", [MEMORY[0x277CBEB98] setWithObject:{-[TSDKnobTracker rep](self->mTracker, "rep")}]);
    }
  }
}

- (void)updateAfterAutoscroll:(id)a3
{
  [(TSDKnobDragGestureRecognizer *)self p_pointInUnscaledCanvas];
  [(TSDKnobTracker *)self->mTracker setCurrentPosition:TSDAddPoints(v5, v6, self->mKnobToTouchOffset.x)];
  [(TSDKnobTracker *)self->mTracker updateAfterAutoscroll:a3];

  [(TSDKnobDragGestureRecognizer *)self setState:2];
}

- (BOOL)p_hitRepIsValid:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  [a3 boundsForStandardKnobs];
  return v4 > 1.0 && v3 > 1.0;
}

- (CGPoint)p_pointInUnscaledCanvas
{
  mICC = self->mICC;
  [(UITouch *)self->mTouch locationInView:[(TSDInteractiveCanvasController *)mICC canvasView]];

  [(TSDInteractiveCanvasController *)mICC convertBoundsToUnscaledPoint:?];
  result.y = v4;
  result.x = v3;
  return result;
}

- (CGPoint)autoscrollPoint
{
  x = self->mAutoscrollPoint.x;
  y = self->mAutoscrollPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

@end