@interface TSDDynamicOperationController
- (BOOL)isInOperation;
- (TSDDynamicOperationController)initWithInteractiveCanvasController:(id)a3;
- (void)beginOperation;
- (void)beginPossibleDynamicOperation;
- (void)cancelOperation;
- (void)dealloc;
- (void)endOperation;
- (void)handleGestureRecognizer:(id)a3;
- (void)handleTrackerManipulator:(id)a3;
- (void)p_beginDynamicOperationForReps:(id)a3;
- (void)p_cleanupOperation;
- (void)p_controllingTMDidResetInOperation:(id)a3;
- (void)startTransformingReps:(id)a3;
- (void)stopTransformingReps:(id)a3;
@end

@implementation TSDDynamicOperationController

- (TSDDynamicOperationController)initWithInteractiveCanvasController:(id)a3
{
  v5.receiver = self;
  v5.super_class = TSDDynamicOperationController;
  result = [(TSDDynamicOperationController *)&v5 init];
  if (result)
  {
    result->mICC = a3;
    result->mResetGuides = 1;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSDDynamicOperationController;
  [(TSDDynamicOperationController *)&v3 dealloc];
}

- (void)beginPossibleDynamicOperation
{
  if ([(TSDInteractiveCanvasController *)self->mICC isInDynamicOperation])
  {
    v3 = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDDynamicOperationController beginPossibleDynamicOperation]"];
    [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDDynamicOperationController.m"), 75, @"begin possible op with ICC in dynamic operation"}];
  }

  if (self->mPossibleDynamicOperation || self->mReps || self->mAllTransformedReps)
  {
    v5 = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDDynamicOperationController beginPossibleDynamicOperation]"];
    [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDDynamicOperationController.m"), 76, @"beginning possible operation without ending previous operation"}];
  }

  self->mReps = objc_alloc_init(MEMORY[0x277CBEB58]);
  self->mPossibleDynamicOperation = 1;
  *&self->mResetGuides = 257;
}

- (void)beginOperation
{
  if ([(TSDInteractiveCanvasController *)self->mICC isInDynamicOperation])
  {
    v3 = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDDynamicOperationController beginOperation]"];
    [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDDynamicOperationController.m"), 93, @"begin op with ICC in dynamic operation"}];
  }

  if (!self->mPossibleDynamicOperation && (self->mReps || self->mAllTransformedReps))
  {
    v5 = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDDynamicOperationController beginOperation]"];
    [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDDynamicOperationController.m"), 94, @"beginning operation without ending previous operation"}];
  }

  if (![(TSDTrackerManipulatorCoordinator *)[(TSDInteractiveCanvasController *)self->mICC tmCoordinator] controllingTM])
  {
    v7 = [MEMORY[0x277D6C290] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDDynamicOperationController beginOperation]"];
    [v7 handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDDynamicOperationController.m"), 95, @"No controlling TM when beginning operation"}];
  }

  v9 = [[(TSDTrackerManipulatorCoordinator *)[(TSDInteractiveCanvasController *)self->mICC tmCoordinator] controllingTM] tracker];
  self->mSupportsAlignmentGuides = [v9 supportsAlignmentGuides];
  self->mOperationIsDynamic = [v9 operationShouldBeDynamic];
  if (self->mPossibleDynamicOperation)
  {
    self->mPossibleDynamicOperation = 0;
    self->mAllTransformedReps = [MEMORY[0x277CBEB58] setWithSet:self->mReps];
    if (self->mOperationIsDynamic)
    {
      -[TSDDynamicOperationController p_beginDynamicOperationForReps:](self, "p_beginDynamicOperationForReps:", [MEMORY[0x277CBEB98] setWithSet:self->mReps]);
    }
  }

  else
  {
    self->mReps = objc_alloc_init(MEMORY[0x277CBEB58]);
    self->mAllTransformedReps = objc_alloc_init(MEMORY[0x277CBEB58]);
    self->mResetGuides = 1;
  }

  if (self->mOperationIsDynamic)
  {
    [(TSDInteractiveCanvasController *)self->mICC beginDynamicOperation];
  }

  v10 = [MEMORY[0x277CCAB98] defaultCenter];

  [v10 addObserver:self selector:sel_p_controllingTMDidResetInOperation_ name:@"TSDControllingGRDidResetNotification" object:0];
}

- (void)p_beginDynamicOperationForReps:(id)a3
{
  v4 = [[(TSDTrackerManipulatorCoordinator *)[(TSDInteractiveCanvasController *)self->mICC tmCoordinator] controllingTM] tracker];
  if (objc_opt_respondsToSelector())
  {

    [v4 willBeginDynamicOperationForReps:a3];
  }
}

- (void)endOperation
{
  [(TSDTrackerManipulatorCoordinator *)[(TSDInteractiveCanvasController *)self->mICC tmCoordinator] operationWillEnd];
  if ([(TSDDynamicOperationController *)self isInOperation])
  {
    [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
    v3 = [[(TSDTrackerManipulatorCoordinator *)[(TSDInteractiveCanvasController *)self->mICC tmCoordinator] controllingTM] tracker];
    if (v3)
    {
      [v3 commitChangesForReps:self->mAllTransformedReps];
    }
  }

  [(TSDDynamicOperationController *)self p_cleanupOperation];
  if ([(TSDInteractiveCanvasController *)self->mICC isInDynamicOperation])
  {
    v4 = [MEMORY[0x277D6C290] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDDynamicOperationController endOperation]"];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDDynamicOperationController.m"];

    [v4 handleFailureInFunction:v5 file:v6 lineNumber:210 description:@"ending op with ICC still in dynamic operation"];
  }
}

- (BOOL)isInOperation
{
  mReps = self->mReps;
  if (mReps)
  {
    mReps = self->mAllTransformedReps;
    if (mReps)
    {
      LOBYTE(mReps) = !self->mPossibleDynamicOperation;
    }
  }

  return mReps & 1;
}

- (void)cancelOperation
{
  if (![(TSDDynamicOperationController *)self isInOperation])
  {
    v3 = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDDynamicOperationController cancelOperation]"];
    [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDDynamicOperationController.m"), 235, @"cancelling when not in operation"}];
  }

  [(TSDDynamicOperationController *)self p_cleanupOperation];
}

- (void)p_cleanupOperation
{
  if (self->mOperationIsDynamic)
  {
    [(TSDInteractiveCanvasController *)self->mICC endDynamicOperation];
  }

  [(TSDDynamicOperationController *)self p_resetGuidesForCleanup:1];
  [(TSDTrackerManipulatorCoordinator *)[(TSDInteractiveCanvasController *)self->mICC tmCoordinator] operationDidEnd];
  self->mPossibleDynamicOperation = 0;

  self->mReps = 0;
  self->mAllTransformedReps = 0;
  self->mOperationIsDynamic = 0;
}

- (void)startTransformingReps:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  if (![(TSDDynamicOperationController *)self isInOperation]&& !self->mPossibleDynamicOperation)
  {
    v5 = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDDynamicOperationController startTransformingReps:]"];
    [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDDynamicOperationController.m"), 270, @"cannot begin transforming reps until we are in a transform"}];
  }

  v7 = [MEMORY[0x277CBEB58] set];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [a3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(a3);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        if (([(NSMutableSet *)self->mReps containsObject:v12]& 1) == 0)
        {
          [(NSMutableSet *)self->mReps addObject:v12];
        }

        if (!self->mPossibleDynamicOperation && ([(NSMutableSet *)self->mAllTransformedReps containsObject:v12]& 1) == 0)
        {
          if (self->mOperationIsDynamic)
          {
            [v7 addObject:v12];
          }

          [(NSMutableSet *)self->mAllTransformedReps addObject:v12];
        }
      }

      v9 = [a3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  if ([v7 count])
  {
    [(TSDDynamicOperationController *)self p_beginDynamicOperationForReps:v7];
  }

  [(TSDDynamicOperationController *)self p_resetGuidesForCleanup:0];
  v13 = [[(TSDTrackerManipulatorCoordinator *)[(TSDInteractiveCanvasController *)self->mICC tmCoordinator] controllingTM] tracker];
  if (objc_opt_respondsToSelector())
  {
    [v13 didChangeCurrentlyTransformingReps];
  }
}

- (void)stopTransformingReps:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  if ([a3 count])
  {
    [(NSMutableSet *)self->mReps minusSet:a3];
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v5 = [a3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      do
      {
        v8 = 0;
        do
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(a3);
          }

          [objc_msgSend(*(*(&v10 + 1) + 8 * v8++) "layout")];
        }

        while (v6 != v8);
        v6 = [a3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }

    [(TSDDynamicOperationController *)self p_resetGuidesForCleanup:0];
    v9 = [[(TSDTrackerManipulatorCoordinator *)[(TSDInteractiveCanvasController *)self->mICC tmCoordinator] controllingTM] tracker];
    if (objc_opt_respondsToSelector())
    {
      [v9 didChangeCurrentlyTransformingReps];
    }
  }
}

- (void)handleGestureRecognizer:(id)a3
{
  if ([(TSDTrackerManipulatorCoordinator *)[(TSDInteractiveCanvasController *)self->mICC tmCoordinator] controllingTM]== a3)
  {
    if (![(TSDDynamicOperationController *)self isInOperation])
    {
      v5 = [MEMORY[0x277D6C290] currentHandler];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDDynamicOperationController handleGestureRecognizer:]"];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDDynamicOperationController.m"];
      v8 = objc_opt_class();
      [v5 handleFailureInFunction:v6 file:v7 lineNumber:332 description:{@"tracker is handling GR %@ when not in a transform", NSStringFromClass(v8)}];
    }

    if (self->mOperationIsDynamic != [objc_msgSend(a3 "tracker")])
    {
      v9 = [MEMORY[0x277D6C290] currentHandler];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDDynamicOperationController handleGestureRecognizer:]"];
      [v9 handleFailureInFunction:v10 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDDynamicOperationController.m"), 338, @"Controlling TM has different dynamic operation expectations than current operation (%@)", objc_msgSend(a3, "tracker")}];
    }

    if (self->mResetGuides)
    {
      [(TSDDynamicOperationController *)self p_resetGuidesForCleanup:0];
    }

    v11 = [a3 state];
    if ((v11 - 1) >= 2)
    {
      if (v11 == 3)
      {
        [objc_msgSend(a3 "tracker")];

        [(TSDDynamicOperationController *)self endOperation];
      }
    }

    else
    {
      v12 = [a3 tracker];
      mReps = self->mReps;

      [v12 changeDynamicLayoutsForReps:mReps];
    }
  }
}

- (void)p_controllingTMDidResetInOperation:(id)a3
{
  v4 = [a3 object];
  if (![(TSDDynamicOperationController *)self isInOperation])
  {
    v5 = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDDynamicOperationController p_controllingTMDidResetInOperation:]"];
    [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDDynamicOperationController.m"), 372, @"controlling GR reset in an operation, but we aren't in an operation! %@", v4}];
  }

  if (v4 != [(TSDTrackerManipulatorCoordinator *)[(TSDInteractiveCanvasController *)self->mICC tmCoordinator] controllingTM])
  {
    v7 = [MEMORY[0x277D6C290] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDDynamicOperationController p_controllingTMDidResetInOperation:]"];
    [v7 handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDDynamicOperationController.m"), 373, @"non-controlling GR is being reset with a notification %@ (%@ in control)", v4, -[TSDTrackerManipulatorCoordinator controllingTM](-[TSDInteractiveCanvasController tmCoordinator](self->mICC, "tmCoordinator"), "controllingTM")}];
  }

  if (v4 == [(TSDTrackerManipulatorCoordinator *)[(TSDInteractiveCanvasController *)self->mICC tmCoordinator] controllingTM])
  {

    [(TSDDynamicOperationController *)self endOperation];
  }
}

- (void)handleTrackerManipulator:(id)a3
{
  if ([(TSDTrackerManipulatorCoordinator *)[(TSDInteractiveCanvasController *)self->mICC tmCoordinator] controllingTM]== a3)
  {
    if (![(TSDDynamicOperationController *)self isInOperation])
    {
      v5 = [MEMORY[0x277D6C290] currentHandler];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDDynamicOperationController handleTrackerManipulator:]"];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDDynamicOperationController.m"];
      v8 = objc_opt_class();
      [v5 handleFailureInFunction:v6 file:v7 lineNumber:383 description:{@"tracker is handling TM %@ when not in a transform", NSStringFromClass(v8)}];
    }

    if (self->mOperationIsDynamic != [objc_msgSend(a3 "tracker")])
    {
      v9 = [MEMORY[0x277D6C290] currentHandler];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDDynamicOperationController handleTrackerManipulator:]"];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDDynamicOperationController.m"];
      v12 = objc_opt_class();
      [v9 handleFailureInFunction:v10 file:v11 lineNumber:389 description:{@"Controlling TM %@ has different dynamic operation expectations than current operation", NSStringFromClass(v12)}];
    }

    if (self->mResetGuides)
    {
      [(TSDDynamicOperationController *)self p_resetGuidesForCleanup:0];
    }

    [objc_msgSend(a3 "tracker")];
    if ([a3 readyToEndOperation])
    {

      [(TSDDynamicOperationController *)self endOperation];
    }
  }
}

@end