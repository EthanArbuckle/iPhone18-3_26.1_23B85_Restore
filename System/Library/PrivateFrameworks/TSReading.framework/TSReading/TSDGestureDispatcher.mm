@interface TSDGestureDispatcher
- (BOOL)gestureActionShouldBegin:(id)begin;
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (BOOL)handleGesture:(id)gesture withTarget:(id)target;
- (TSDGestureDispatcher)initWithInteractiveCanvasController:(id)controller;
- (id)p_getGestureTarget:(id)target;
- (void)allowSimultaneousRecognitionByRecognizers:(id)recognizers;
- (void)dealloc;
- (void)gestureRemovedFromView:(id)view;
- (void)handleGesture:(id)gesture;
- (void)p_gestureNoLongerInFlight:(id)flight;
- (void)prioritizeRecognizer:(id)recognizer overRecognizer:(id)overRecognizer;
- (void)teardown;
@end

@implementation TSDGestureDispatcher

- (TSDGestureDispatcher)initWithInteractiveCanvasController:(id)controller
{
  v8.receiver = self;
  v8.super_class = TSDGestureDispatcher;
  v4 = [(TSDGestureDispatcher *)&v8 init];
  if (v4)
  {
    if (!controller)
    {
      currentHandler = [MEMORY[0x277D6C290] currentHandler];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDGestureDispatcher initWithInteractiveCanvasController:]"];
      [currentHandler handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDGestureDispatcher.m"), 243, @"invalid nil value for '%s'", "icc"}];
    }

    [(TSDGestureDispatcher *)v4 setInteractiveCanvasController:controller];
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

- (void)handleGesture:(id)gesture
{
  cachedGestureTarget = [gesture cachedGestureTarget];
  if (cachedGestureTarget)
  {
    v6 = cachedGestureTarget;
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
    if (([v6 handleGesture:gesture] & 1) == 0)
    {
      currentHandler = [MEMORY[0x277D6C290] currentHandler];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDGestureDispatcher handleGesture:]"];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDGestureDispatcher.m"];
      gestureKind = [gesture gestureKind];
      v12 = objc_opt_class();
      [currentHandler handleFailureInFunction:v9 file:v10 lineNumber:296 description:{@"canHandleGesture previously said YES, but it wasn't handled: %@ (target=<%@=%p>)", gestureKind, NSStringFromClass(v12), v6}];
    }

    self->_runningTargetHandleGesture = 0;
    if ([gesture isDone])
    {

      [gesture setTargetRep:0];
    }
  }

  else
  {
    currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDGestureDispatcher handleGesture:]"];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDGestureDispatcher.m"];

    [currentHandler2 handleFailureInFunction:v14 file:v15 lineNumber:275 description:{@"gestureTarget should not be nil, shouldReceiveTouch should have failed this gesture"}];
  }
}

- (BOOL)handleGesture:(id)gesture withTarget:(id)target
{
  if (!self->_runningTargetHandleGesture)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDGestureDispatcher handleGesture:withTarget:]"];
    [currentHandler handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDGestureDispatcher.m"), 307, @"handleGesture:withTarget: can only be called from a target's handleGesture: method"}];
  }

  [gesture setCachedGestureTarget:target];

  return [target handleGesture:gesture];
}

- (void)allowSimultaneousRecognitionByRecognizers:(id)recognizers
{
  v5 = TSUSupportsTextInteraction();
  if (recognizers || (v5 & 1) == 0)
  {
    v9 = &v10;
    for (i = [MEMORY[0x277CBEB58] setWithObject:recognizers]; ; objc_msgSend(i, "addObject:"))
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

- (void)prioritizeRecognizer:(id)recognizer overRecognizer:(id)overRecognizer
{
  priorityMap = self->_priorityMap;
  if (!priorityMap)
  {
    priorityMap = objc_alloc_init(MEMORY[0x277D6C320]);
    self->_priorityMap = priorityMap;
  }

  v8 = [(TSUNoCopyDictionary *)priorityMap objectForKey:overRecognizer];
  if (v8)
  {
    v9 = [v8 setByAddingObject:recognizer];
  }

  else
  {
    v9 = [MEMORY[0x277CBEB98] setWithObject:recognizer];
  }

  v10 = v9;
  v11 = self->_priorityMap;

  [(TSUNoCopyDictionary *)v11 setObject:v10 forUncopiedKey:overRecognizer];
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  v22 = *MEMORY[0x277D85DE8];
  if ([(TSDInteractiveCanvasController *)self->_interactiveCanvasController currentlyScrolling]|| (v5 = [(TSDGestureDispatcher *)self p_getGestureTarget:begin]) == 0)
  {
    if ([begin gestureKind] != @"TSWPUndefinedGestureKind" || (-[TSDCanvasLayerHosting asiOSCVC](-[TSDInteractiveCanvasController layerHost](self->_interactiveCanvasController, "layerHost"), "asiOSCVC"), (v8 = TSUProtocolCast()) == 0) || !objc_msgSend(v8, "gestureRecognizerShouldBegin:", begin))
    {
LABEL_5:
      [begin setCachedGestureTarget:0];
      return 0;
    }

    v6 = 0;
  }

  else
  {
    v6 = v5;
    [begin setCachedGestureTarget:v5];
  }

  priorityMap = self->_priorityMap;
  if (priorityMap)
  {
    v10 = [(TSUNoCopyDictionary *)priorityMap objectForKey:begin];
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
    [v6 willBeginHandlingGesture:begin];
  }

  return 1;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  if ([-[TSDCanvasLayerHosting asiOSCVC](-[TSDInteractiveCanvasController layerHost](self->_interactiveCanvasController "layerHost")])
  {
    goto LABEL_2;
  }

  if ([recognizer gestureKind] == @"TSWPUndefinedGestureKind")
  {
    v7 = TSUProtocolCast();
    if (!v7)
    {
      return v7;
    }

    LODWORD(v7) = [v7 gestureRecognizer:recognizer shouldReceiveTouch:touch];
    if (!v7)
    {
      return v7;
    }
  }

  else
  {
    view = [touch view];
    if (view != -[TSDInteractiveCanvasController canvasView](self->_interactiveCanvasController, "canvasView") && ([-[TSDCanvasLayerHosting asiOSCVC](-[TSDInteractiveCanvasController layerHost](self->_interactiveCanvasController "layerHost")] & 1) == 0)
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

  if ([(NSMutableArray *)gesturesInFlight indexOfObjectIdenticalTo:recognizer]== 0x7FFFFFFFFFFFFFFFLL)
  {
    [(NSMutableArray *)self->_gesturesInFlight addObject:recognizer];
  }

  if ([(NSMutableArray *)self->_gesturesInFlight count]== 1)
  {
    self->_gestureDidFire = 0;
    [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
  }

  LOBYTE(v7) = 1;
  return v7;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
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
          if ([v11 containsObject:recognizer] && (objc_msgSend(v11, "containsObject:", gestureRecognizer) & 1) != 0)
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

- (id)p_getGestureTarget:(id)target
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = [(TSDInteractiveCanvasController *)[(TSDGestureDispatcher *)self interactiveCanvasController] gestureTargetStack:target];
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
    if ([v9 canHandleGesture:target])
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

- (BOOL)gestureActionShouldBegin:(id)begin
{
  v5 = [(TSDGestureDispatcher *)self p_getGestureTarget:?];
  if (v5)
  {
    [begin setCachedGestureTarget:v5];
    return 1;
  }

  else if ([begin gestureKind] == @"TSWPUndefinedGestureKind" && (-[TSDCanvasLayerHosting asiOSCVC](-[TSDInteractiveCanvasController layerHost](self->_interactiveCanvasController, "layerHost"), "asiOSCVC"), v7 = TSUProtocolCast(), (objc_opt_respondsToSelector() & 1) != 0))
  {

    return [v7 gestureActionShouldBegin:begin];
  }

  else
  {
    return 0;
  }
}

- (void)gestureRemovedFromView:(id)view
{
  if ([(NSMutableArray *)self->_gesturesInFlight indexOfObjectIdenticalTo:?]!= 0x7FFFFFFFFFFFFFFFLL)
  {

    [(TSDGestureDispatcher *)self p_gestureNoLongerInFlight:view];
  }
}

- (void)p_gestureNoLongerInFlight:(id)flight
{
  v17 = *MEMORY[0x277D85DE8];
  [flight setCachedGestureTarget:0];
  [(NSMutableArray *)self->_gesturesInFlight removeObjectIdenticalTo:flight];
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

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"TSDTextGesturesDidEndNotification" object:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithBool:", self->_gestureDidFire)}];
  }
}

@end