@interface TSDGestureDispatcher
- (BOOL)gestureActionShouldBegin:(id)a3;
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (BOOL)handleGesture:(id)a3 withTarget:(id)a4;
- (TSDGestureDispatcher)initWithInteractiveCanvasController:(id)a3;
- (id)p_getGestureTarget:(id)a3;
- (void)allowSimultaneousRecognitionByRecognizers:(id)a3;
- (void)dealloc;
- (void)gestureRemovedFromView:(id)a3;
- (void)handleGesture:(id)a3;
- (void)p_gestureNoLongerInFlight:(id)a3;
- (void)prioritizeRecognizer:(id)a3 overRecognizer:(id)a4;
- (void)teardown;
@end

@implementation TSDGestureDispatcher

- (TSDGestureDispatcher)initWithInteractiveCanvasController:(id)a3
{
  v8.receiver = self;
  v8.super_class = TSDGestureDispatcher;
  v4 = [(TSDGestureDispatcher *)&v8 init];
  if (v4)
  {
    if (!a3)
    {
      v5 = [MEMORY[0x277D6C290] currentHandler];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDGestureDispatcher initWithInteractiveCanvasController:]"];
      [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDGestureDispatcher.m"), 243, @"invalid nil value for '%s'", "icc"}];
    }

    [(TSDGestureDispatcher *)v4 setInteractiveCanvasController:a3];
  }

  return v4;
}

- (void)dealloc
{
  self->_simultaneitySets = 0;

  self->_gesturesInFlight = 0;
  self->_targetsInFlight = 0;

  self->_priorityMap = 0;
  v3.receiver = self;
  v3.super_class = TSDGestureDispatcher;
  [(TSDGestureDispatcher *)&v3 dealloc];
}

- (void)teardown
{
  [(NSMutableArray *)self->_targetsInFlight removeAllObjects];
  gesturesInFlight = self->_gesturesInFlight;

  [(NSMutableArray *)gesturesInFlight removeAllObjects];
}

- (void)handleGesture:(id)a3
{
  v5 = [a3 cachedGestureTarget];
  if (v5)
  {
    v6 = v5;
    targetsInFlight = self->_targetsInFlight;
    if (!targetsInFlight)
    {
      targetsInFlight = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:2];
      self->_targetsInFlight = targetsInFlight;
    }

    if (([(NSMutableArray *)targetsInFlight containsObject:v6]& 1) == 0)
    {
      if (objc_opt_respondsToSelector())
      {
        [v6 gestureSequenceWillBegin];
      }

      [(NSMutableArray *)self->_targetsInFlight insertObject:v6 atIndex:0];
    }

    self->_gestureDidFire = 1;
    self->_runningTargetHandleGesture = 1;
    if (([v6 handleGesture:a3] & 1) == 0)
    {
      v8 = [MEMORY[0x277D6C290] currentHandler];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDGestureDispatcher handleGesture:]"];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDGestureDispatcher.m"];
      v11 = [a3 gestureKind];
      v12 = objc_opt_class();
      [v8 handleFailureInFunction:v9 file:v10 lineNumber:296 description:{@"canHandleGesture previously said YES, but it wasn't handled: %@ (target=<%@=%p>)", v11, NSStringFromClass(v12), v6}];
    }

    self->_runningTargetHandleGesture = 0;
    if ([a3 isDone])
    {

      [a3 setTargetRep:0];
    }
  }

  else
  {
    v13 = [MEMORY[0x277D6C290] currentHandler];
    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDGestureDispatcher handleGesture:]"];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDGestureDispatcher.m"];

    [v13 handleFailureInFunction:v14 file:v15 lineNumber:275 description:{@"gestureTarget should not be nil, shouldReceiveTouch should have failed this gesture"}];
  }
}

- (BOOL)handleGesture:(id)a3 withTarget:(id)a4
{
  if (!self->_runningTargetHandleGesture)
  {
    v6 = [MEMORY[0x277D6C290] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDGestureDispatcher handleGesture:withTarget:]"];
    [v6 handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDGestureDispatcher.m"), 307, @"handleGesture:withTarget: can only be called from a target's handleGesture: method"}];
  }

  [a3 setCachedGestureTarget:a4];

  return [a4 handleGesture:a3];
}

- (void)allowSimultaneousRecognitionByRecognizers:(id)a3
{
  v5 = TSUSupportsTextInteraction();
  if (a3 || (v5 & 1) == 0)
  {
    v9 = &v10;
    for (i = [MEMORY[0x277CBEB58] setWithObject:a3]; ; objc_msgSend(i, "addObject:"))
    {
      v7 = v9++;
      if (!*v7)
      {
        break;
      }
    }

    simultaneitySets = self->_simultaneitySets;
    if (!simultaneitySets)
    {
      simultaneitySets = objc_alloc_init(MEMORY[0x277CBEB18]);
      self->_simultaneitySets = simultaneitySets;
    }

    [(NSMutableArray *)simultaneitySets addObject:i];
  }
}

- (void)prioritizeRecognizer:(id)a3 overRecognizer:(id)a4
{
  priorityMap = self->_priorityMap;
  if (!priorityMap)
  {
    priorityMap = objc_alloc_init(MEMORY[0x277D6C320]);
    self->_priorityMap = priorityMap;
  }

  v8 = [(TSUNoCopyDictionary *)priorityMap objectForKey:a4];
  if (v8)
  {
    v9 = [v8 setByAddingObject:a3];
  }

  else
  {
    v9 = [MEMORY[0x277CBEB98] setWithObject:a3];
  }

  v10 = v9;
  v11 = self->_priorityMap;

  [(TSUNoCopyDictionary *)v11 setObject:v10 forUncopiedKey:a4];
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  if ([(TSDInteractiveCanvasController *)self->_interactiveCanvasController currentlyScrolling]|| (v5 = [(TSDGestureDispatcher *)self p_getGestureTarget:a3]) == 0)
  {
    if ([a3 gestureKind] != @"TSWPUndefinedGestureKind" || (-[TSDCanvasLayerHosting asiOSCVC](-[TSDInteractiveCanvasController layerHost](self->_interactiveCanvasController, "layerHost"), "asiOSCVC"), (v8 = TSUProtocolCast()) == 0) || !objc_msgSend(v8, "gestureRecognizerShouldBegin:", a3))
    {
LABEL_5:
      [a3 setCachedGestureTarget:0];
      return 0;
    }

    v6 = 0;
  }

  else
  {
    v6 = v5;
    [a3 setCachedGestureTarget:v5];
  }

  priorityMap = self->_priorityMap;
  if (priorityMap)
  {
    v10 = [(TSUNoCopyDictionary *)priorityMap objectForKey:a3];
    if (v10)
    {
      v11 = v10;
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v18;
LABEL_13:
        v15 = 0;
        while (1)
        {
          if (*v18 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v17 + 1) + 8 * v15);
          if ([v16 state])
          {
            if ([v16 state] != 5)
            {
              goto LABEL_5;
            }
          }

          if (v13 == ++v15)
          {
            v13 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
            if (v13)
            {
              goto LABEL_13;
            }

            break;
          }
        }
      }
    }
  }

  if (objc_opt_respondsToSelector())
  {
    [v6 willBeginHandlingGesture:a3];
  }

  return 1;
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  if ([-[TSDCanvasLayerHosting asiOSCVC](-[TSDInteractiveCanvasController layerHost](self->_interactiveCanvasController "layerHost")])
  {
    goto LABEL_2;
  }

  if ([a3 gestureKind] == @"TSWPUndefinedGestureKind")
  {
    v7 = TSUProtocolCast();
    if (!v7)
    {
      return v7;
    }

    LODWORD(v7) = [v7 gestureRecognizer:a3 shouldReceiveTouch:a4];
    if (!v7)
    {
      return v7;
    }
  }

  else
  {
    v8 = [a4 view];
    if (v8 != -[TSDInteractiveCanvasController canvasView](self->_interactiveCanvasController, "canvasView") && ([-[TSDCanvasLayerHosting asiOSCVC](-[TSDInteractiveCanvasController layerHost](self->_interactiveCanvasController "layerHost")] & 1) == 0)
    {
LABEL_2:
      LOBYTE(v7) = 0;
      return v7;
    }
  }

  gesturesInFlight = self->_gesturesInFlight;
  if (!gesturesInFlight)
  {
    gesturesInFlight = objc_alloc_init(MEMORY[0x277CBEB18]);
    self->_gesturesInFlight = gesturesInFlight;
  }

  if ([(NSMutableArray *)gesturesInFlight indexOfObjectIdenticalTo:a3]== 0x7FFFFFFFFFFFFFFFLL)
  {
    [(NSMutableArray *)self->_gesturesInFlight addObject:a3];
  }

  if ([(NSMutableArray *)self->_gesturesInFlight count]== 1)
  {
    self->_gestureDidFire = 0;
    [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
  }

  LOBYTE(v7) = 1;
  return v7;
}

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  simultaneitySets = self->_simultaneitySets;
  if (simultaneitySets)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v7 = [(NSMutableArray *)simultaneitySets countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      while (2)
      {
        v10 = 0;
        do
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(simultaneitySets);
          }

          v11 = *(*(&v13 + 1) + 8 * v10);
          if ([v11 containsObject:a3] && (objc_msgSend(v11, "containsObject:", a4) & 1) != 0)
          {
            LOBYTE(v7) = 1;
            return v7;
          }

          ++v10;
        }

        while (v8 != v10);
        v7 = [(NSMutableArray *)simultaneitySets countByEnumeratingWithState:&v13 objects:v17 count:16];
        v8 = v7;
        if (v7)
        {
          continue;
        }

        break;
      }
    }
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (id)p_getGestureTarget:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = [(TSDInteractiveCanvasController *)[(TSDGestureDispatcher *)self interactiveCanvasController] gestureTargetStack:a3];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = *v12;
LABEL_3:
  v8 = 0;
  while (1)
  {
    if (*v12 != v7)
    {
      objc_enumerationMutation(v4);
    }

    v9 = *(*(&v11 + 1) + 8 * v8);
    if ([v9 canHandleGesture:a3])
    {
      return v9;
    }

    if (v6 == ++v8)
    {
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

- (BOOL)gestureActionShouldBegin:(id)a3
{
  v5 = [(TSDGestureDispatcher *)self p_getGestureTarget:?];
  if (v5)
  {
    [a3 setCachedGestureTarget:v5];
    return 1;
  }

  else if ([a3 gestureKind] == @"TSWPUndefinedGestureKind" && (-[TSDCanvasLayerHosting asiOSCVC](-[TSDInteractiveCanvasController layerHost](self->_interactiveCanvasController, "layerHost"), "asiOSCVC"), v7 = TSUProtocolCast(), (objc_opt_respondsToSelector() & 1) != 0))
  {

    return [v7 gestureActionShouldBegin:a3];
  }

  else
  {
    return 0;
  }
}

- (void)gestureRemovedFromView:(id)a3
{
  if ([(NSMutableArray *)self->_gesturesInFlight indexOfObjectIdenticalTo:?]!= 0x7FFFFFFFFFFFFFFFLL)
  {

    [(TSDGestureDispatcher *)self p_gestureNoLongerInFlight:a3];
  }
}

- (void)p_gestureNoLongerInFlight:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  [a3 setCachedGestureTarget:0];
  [(NSMutableArray *)self->_gesturesInFlight removeObjectIdenticalTo:a3];
  if (![(NSMutableArray *)self->_gesturesInFlight count])
  {
    if ([(NSMutableArray *)self->_targetsInFlight count])
    {
      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      targetsInFlight = self->_targetsInFlight;
      v6 = [(NSMutableArray *)targetsInFlight countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v13;
        do
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v13 != v8)
            {
              objc_enumerationMutation(targetsInFlight);
            }

            v10 = *(*(&v12 + 1) + 8 * i);
            if (objc_opt_respondsToSelector())
            {
              [v10 gestureSequenceDidEnd];
            }
          }

          v7 = [(NSMutableArray *)targetsInFlight countByEnumeratingWithState:&v12 objects:v16 count:16];
        }

        while (v7);
      }

      [(NSMutableArray *)self->_targetsInFlight removeAllObjects];
    }

    v11 = [MEMORY[0x277CCAB98] defaultCenter];
    [v11 postNotificationName:@"TSDTextGesturesDidEndNotification" object:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithBool:", self->_gestureDidFire)}];
  }
}

@end