@interface UIKeyboardLayout
+ (CGSize)keyboardSizeForInputMode:(id)a3 screenTraits:(id)a4 keyboardType:(int64_t)a5;
- (BOOL)_canAddTouchesToScreenGestureRecognizer:(id)a3;
- (BOOL)_hasRelatedTouchesForTouchState:(id)a3;
- (BOOL)_shouldAllowKeyboardHandlingForTouchesBegan:(id)a3 withEvent:(id)a4;
- (BOOL)_shouldAllowKeyboardHandlingForTouchesEndedOrCancelled:(id)a3 withEvent:(id)a4;
- (BOOL)_shouldAllowKeyboardHandlingForTouchesMoved:(id)a3 withEvent:(id)a4;
- (BOOL)_shouldAllowKeyboardHandlingIfNecessaryForTouch:(id)a3 phase:(int64_t)a4 withTouchState:(id)a5 task:(id)a6;
- (BOOL)queryShouldNeverIgnoreTouchStateWithIdentifier:(id)a3 touchState:(id)a4 startPoint:(CGPoint)a5 forRestingState:(unint64_t)a6;
- (BOOL)shouldAllowSelectionGestures:(BOOL)a3 atPoint:(CGPoint)a4 toBegin:(BOOL)a5;
- (BOOL)supportsVirtualDrift;
- (CGPoint)_uikbrtTouchDrifting:(id)a3 touchCenterForFingerID:(unint64_t)a4;
- (CGPoint)getCenterForKeyUnderLeftIndexFinger;
- (CGPoint)getCenterForKeyUnderRightIndexFinger;
- (CGPoint)leftVirtualDriftOffset;
- (CGPoint)rightVirtualDriftOffset;
- (CGRect)dragGestureRectInView:(id)a3;
- (CGRect)frameForKeylayoutName:(id)a3;
- (CGSize)handRestRecognizerStandardKeyPixelSize;
- (CGSize)stretchFactor;
- (UIEdgeInsets)keyplanePadding;
- (UIKeyboardLayout)initWithFrame:(CGRect)a3;
- (UIKeyboardLayoutSizeDelegate)sizeDelegate;
- (UIKeyboardTaskQueue)taskQueue;
- (UIKeyboardTypingStyleEstimator)typingStyleEstimator;
- (double)flickDistance;
- (id)_uikbrtTouchDrifting:(id)a3 touchIdentifiersForFingerID:(unint64_t)a4;
- (id)touchCancelledTaskForTouchState:(id)a3 forResting:(BOOL)a4;
- (id)touchChangedTaskForTouchState:(id)a3;
- (id)touchDownTaskForTouchState:(id)a3;
- (id)touchDraggedTaskForTouchState:(id)a3;
- (id)touchUUIDsToCommitBeforeTouchUUID:(id)a3;
- (id)touchUpTaskForTouchState:(id)a3;
- (unint64_t)_uikbrtTouchDrifting:(id)a3 fingerIDFortouchIdentifier:(id)a4;
- (unint64_t)fingerIDForTouchUUID:(id)a3;
- (void)_addTouchToScreenEdgePanRecognizer:(id)a3;
- (void)_clearDeferredTouchTasks;
- (void)_enumerateDeferredTouchUUIDs:(id)a3 withBlock:(id)a4;
- (void)_executeDeferredTouchTasks;
- (void)_ignoreTouchState:(id)a3;
- (void)_removeTouchesFromProcessing:(id)a3;
- (void)_resetFingerDetectionFromLayout;
- (void)_setRequiresExclusiveTouch:(BOOL)a3;
- (void)_touchEndedProcessingForTouches:(id)a3;
- (void)_uikbrtTouchDriftingStateChanged:(id)a3;
- (void)_updateTouchState:(id)a3 errorVector:(CGPoint)a4 rowOffsetFromHomeRow:(int64_t)a5;
- (void)assertSavedLocation:(CGPoint)a3 onTouch:(id)a4 inWindow:(id)a5 resetPrevious:(BOOL)a6;
- (void)cancelTouchesForTwoFingerTapGesture:(id)a3;
- (void)clearShiftIfNecessaryForEndedTouchState:(id)a3;
- (void)commitTouchUUIDs:(id)a3 cancelInsteadOfUp:(BOOL)a4;
- (void)commitTouches:(id)a3 executionContext:(id)a4;
- (void)deactivateActiveKeys;
- (void)dealloc;
- (void)didCommitTouchState:(id)a3;
- (void)didEndIndirectSelectionGesture;
- (void)didMoveToWindow;
- (void)forceUpdatesForCommittedTouch;
- (void)recognizer:(id)a3 beginTouchDownForTouchWithId:(id)a4 atPoint:(CGPoint)a5 forBeginState:(unint64_t)a6 whenStateReady:(id)a7;
- (void)recognizer:(id)a3 cancelTouchOnLayoutWithId:(id)a4 startPoint:(CGPoint)a5 endPoint:(CGPoint)a6 whenReady:(id)a7;
- (void)recognizer:(id)a3 continueTrackingIgnoredTouchWithId:(id)a4 currentPoint:(CGPoint)a5 whenReady:(id)a6;
- (void)recognizer:(id)a3 releaseTouchToLayoutWithId:(id)a4 startPoint:(CGPoint)a5 endPoint:(CGPoint)a6 whenReady:(id)a7;
- (void)recognizer:(id)a3 restartTouchDownForTouchWithId:(id)a4 startingAt:(double)a5 atPoint:(CGPoint)a6 currentPoint:(CGPoint)a7 whenStateReady:(id)a8;
- (void)recognizer:(id)a3 shouldContinueTrackingTouchWithId:(id)a4 startingAt:(double)a5 atPoint:(CGPoint)a6 currentPoint:(CGPoint)a7 forContinueState:(unint64_t)a8 whenStateReady:(id)a9;
- (void)recognizer:(id)a3 willIgnoreTouchWithId:(id)a4 startingAt:(double)a5 atPoint:(CGPoint)a6 currentPoint:(CGPoint)a7 whenReady:(id)a8;
- (void)recognizerBlockUntilTaskQueueReadyForceUsingDeferredTask:(BOOL)a3;
- (void)reloadKeyboardGestureRecognition;
- (void)resetHRRLayoutState;
- (void)screenEdgePanRecognizerStateDidChange:(id)a3;
- (void)setTaskQueue:(id)a3;
- (void)showKeyboardWithInputTraits:(id)a3 screenTraits:(id)a4 splitTraits:(id)a5;
- (void)touchCancelled:(id)a3;
- (void)touchChanged:(id)a3;
- (void)touchDown:(id)a3;
- (void)touchDragged:(id)a3;
- (void)touchUp:(id)a3;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)touchesEstimatedPropertiesUpdated:(id)a3;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
- (void)updateTouchProcessingForKeyboardChange;
- (void)updateTouchProcessingForKeyplaneChange;
- (void)willBeginIndirectSelectionGesture;
- (void)willMoveToWindow:(id)a3;
@end

@implementation UIKeyboardLayout

- (UIKeyboardLayoutSizeDelegate)sizeDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_sizeDelegate);

  return WeakRetained;
}

- (void)reloadKeyboardGestureRecognition
{
  [(UIKeyboardLayout *)self setDeferredTouchDownTask:0];
  [(UIKeyboardLayout *)self setDeferredTouchMovedTask:0];
  v3 = [(UIKeyboardLayout *)self targetEdgesForScreenGestureRecognition];
  v4 = [(UIKeyboardLayout *)self screenEdgePanRecognizer];
  v5 = v4;
  if (v3)
  {

    if (!v5)
    {
      v6 = [[_UIScreenEdgePanRecognizer alloc] initWithType:3];
      [(UIKeyboardLayout *)self setScreenEdgePanRecognizer:v6];

      v7 = [(UIKeyboardLayout *)self screenEdgePanRecognizer];
      [v7 setDelegate:self];

      v8 = [(UIKeyboardLayout *)self screenEdgePanRecognizer];
      v9 = [(UIView *)self _window];
      [v9 _sceneReferenceBounds];
      [v8 setScreenBounds:?];
    }

    v10 = [(UIKeyboardLayout *)self screenEdgePanRecognizer];
    [v10 reset];

    v11 = [(UIKeyboardLayout *)self screenEdgePanRecognizer];
    v12 = [v11 targetEdges];

    if (v12 != v3)
    {
      v13 = [(UIKeyboardLayout *)self screenEdgePanRecognizer];
      [v13 setTargetEdges:v3];
    }
  }

  else
  {
    [v4 setDelegate:0];

    [(UIKeyboardLayout *)self setScreenEdgePanRecognizer:0];
  }
}

- (void)deactivateActiveKeys
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = [(UIKeyboardLayout *)self handRestRecognizer];

  if (v3)
  {
    v4 = [(NSMutableArray *)self->_uncommittedTouchUUIDs copy];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v6)
    {
      v7 = *v21;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v21 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v20 + 1) + 8 * i);
          if ((!self->_activeTouchUUID || ([*(*(&v20 + 1) + 8 * i) isEqual:?] & 1) == 0) && (!self->_shiftKeyTouchUUID || (objc_msgSend(v9, "isEqual:") & 1) == 0))
          {
            [(NSMutableArray *)self->_uncommittedTouchUUIDs removeObject:v9];
            [(NSMutableSet *)self->_touchIgnoredUUIDSet addObject:v9];
            v14 = 0;
            v15 = &v14;
            v16 = 0x3032000000;
            v17 = __Block_byref_object_copy__134;
            deferredTouchTaskListsQueue = self->_deferredTouchTaskListsQueue;
            v18 = __Block_byref_object_dispose__134;
            v19 = 0;
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            block[2] = __40__UIKeyboardLayout_deactivateActiveKeys__block_invoke;
            block[3] = &unk_1E70FB728;
            block[5] = v9;
            block[6] = &v14;
            block[4] = self;
            dispatch_sync(deferredTouchTaskListsQueue, block);
            if (([v15[5] isExecutingFirstTask] & 1) == 0)
            {
              v11 = [UIKBTouchState touchForTouchUUID:v9];
              if (v11)
              {
                v12 = [(UIKeyboardLayout *)self handRestRecognizer];
                [v12 markTouchProcessed:v11 withIdentifier:v9];
              }
            }

            _Block_object_dispose(&v14, 8);
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v6);
    }
  }
}

- (UIKeyboardTypingStyleEstimator)typingStyleEstimator
{
  typingStyleEstimator = self->_typingStyleEstimator;
  if (!typingStyleEstimator)
  {
    v4 = objc_alloc_init(UIKeyboardTypingStyleEstimator);
    v5 = self->_typingStyleEstimator;
    self->_typingStyleEstimator = v4;

    typingStyleEstimator = self->_typingStyleEstimator;
  }

  return typingStyleEstimator;
}

- (void)didMoveToWindow
{
  v3 = [(UIKeyboardLayout *)self screenEdgePanRecognizer];

  if (v3)
  {
    v5 = [(UIKeyboardLayout *)self screenEdgePanRecognizer];
    v4 = [(UIView *)self _window];
    [v4 _sceneReferenceBounds];
    [v5 setScreenBounds:?];
  }
}

+ (CGSize)keyboardSizeForInputMode:(id)a3 screenTraits:(id)a4 keyboardType:(int64_t)a5
{
  v5 = *MEMORY[0x1E695F060];
  v6 = *(MEMORY[0x1E695F060] + 8);
  result.height = v6;
  result.width = v5;
  return result;
}

- (UIKeyboardLayout)initWithFrame:(CGRect)a3
{
  v14.receiver = self;
  v14.super_class = UIKeyboardLayout;
  v3 = [(UIView *)&v14 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(UIView *)v3 setMultipleTouchEnabled:1];
    [(UIKeyboardLayout *)v4 _setRequiresExclusiveTouch:1];
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    uncommittedTouchUUIDs = v4->_uncommittedTouchUUIDs;
    v4->_uncommittedTouchUUIDs = v5;

    v7 = dispatch_queue_create("com.apple.UIKeyboardLayout.deferredTouchTaskLists", 0);
    deferredTouchTaskListsQueue = v4->_deferredTouchTaskListsQueue;
    v4->_deferredTouchTaskListsQueue = v7;

    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    deferredTouchTaskLists = v4->_deferredTouchTaskLists;
    v4->_deferredTouchTaskLists = v9;

    v11 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    touchIgnoredUUIDSet = v4->_touchIgnoredUUIDSet;
    v4->_touchIgnoredUUIDSet = v11;
  }

  return v4;
}

- (void)dealloc
{
  v7[2] = *MEMORY[0x1E69E9840];
  deferredTouchTaskListsQueue = self->_deferredTouchTaskListsQueue;
  self->_deferredTouchTaskListsQueue = 0;

  [(UIKeyboardLayout *)self setActiveTouchUUID:0];
  [(UIKeyboardLayout *)self setShiftKeyTouchUUID:0];
  [(_UIKBRTRecognizer *)self->_handRestRecognizer setDelegate:0];
  [(_UIScreenEdgePanRecognizer *)self->_screenEdgePanRecognizer setDelegate:0];
  [(UIKeyboardLayout *)self setSizeDelegate:0];
  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  v7[0] = @"UIKeyboardPrivateWillChangeFrameNotification";
  v7[1] = @"UIKeyboardPrivateDidChangeFrameNotification";
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];
  [(NSNotificationCenter *)v4 _uiRemoveObserver:v5 names:?];

  v6.receiver = self;
  v6.super_class = UIKeyboardLayout;
  [(UIView *)&v6 dealloc];
}

- (void)willMoveToWindow:(id)a3
{
  v14 = a3;
  v4 = [(UIView *)self window];
  v5 = [v4 screen];

  v6 = [(UIKBScreenTraits *)self->_screenTraits screen];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = [v14 screen];
  }

  v9 = v8;

  if (v5 != v9)
  {
    v10 = [MEMORY[0x1E696AD88] defaultCenter];
    v11 = v10;
    if (v5)
    {
      if (self->_listeningForWillChange)
      {
        [v10 removeObserver:self name:@"UIKeyboardPrivateWillChangeFrameNotification" object:v5];
        self->_listeningForWillChange = 0;
      }

      if (self->_listeningForDidChange)
      {
        [v11 removeObserver:self name:@"UIKeyboardPrivateDidChangeFrameNotification" object:v5];
        self->_listeningForDidChange = 0;
      }
    }

    if ([v9 _userInterfaceIdiom] == 1)
    {
      v12 = [(UIKeyboardLayout *)self handlerForNotification:@"UIKeyboardPrivateWillChangeFrameNotification"];
      if (v12)
      {
        self->_listeningForWillChange = 1;
        [v11 addObserver:self selector:v12 name:@"UIKeyboardPrivateWillChangeFrameNotification" object:v9];
      }

      v13 = [(UIKeyboardLayout *)self handlerForNotification:@"UIKeyboardPrivateDidChangeFrameNotification"];
      if (v13)
      {
        self->_listeningForDidChange = 1;
        [v11 addObserver:self selector:v13 name:@"UIKeyboardPrivateDidChangeFrameNotification" object:v9];
      }
    }
  }
}

- (UIKeyboardTaskQueue)taskQueue
{
  taskQueue = self->_taskQueue;
  if (!taskQueue)
  {
    v4 = objc_alloc_init(UIKeyboardTaskQueue);
    v5 = self->_taskQueue;
    self->_taskQueue = v4;

    taskQueue = self->_taskQueue;
  }

  return taskQueue;
}

- (void)setTaskQueue:(id)a3
{
  v5 = a3;
  if (self->_taskQueue != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_taskQueue, a3);
    v5 = v6;
  }
}

- (void)showKeyboardWithInputTraits:(id)a3 screenTraits:(id)a4 splitTraits:(id)a5
{
  v7 = a3;
  v8 = a4;
  inputTraits = self->_inputTraits;
  self->_inputTraits = v7;
  v11 = v7;

  screenTraits = self->_screenTraits;
  self->_screenTraits = v8;
}

void __40__UIKeyboardLayout_deactivateActiveKeys__block_invoke(void *a1)
{
  v2 = [*(a1[4] + 608) objectForKey:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)_setRequiresExclusiveTouch:(BOOL)a3
{
  v3 = a3;
  v4 = [(UIView *)self _rootInputWindowController];
  [v4 setExclusiveTouch:v3];
}

- (id)touchDownTaskForTouchState:(id)a3
{
  v4 = a3;
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __47__UIKeyboardLayout_touchDownTaskForTouchState___block_invoke;
  v12 = &unk_1E70FD1B8;
  v13 = self;
  v14 = v4;
  v5 = v4;
  v6 = _Block_copy(&v9);
  v7 = [v6 copy];

  return v7;
}

void __47__UIKeyboardLayout_touchDownTaskForTouchState___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 432);
  v5 = [*(a1 + 40) touchUUID];
  v6 = [v4 indexOfObject:v5];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [v3 returnExecutionToParent];
  }

  else
  {
    v7 = [*(a1 + 40) touchUUID];
    [*(a1 + 32) setActiveTouchUUID:v7];

    v8 = [*(a1 + 32) cadenceMonitor];
    [*(a1 + 40) timestamp];
    [v8 addTypingTouchTime:?];

    v10 = *(a1 + 32);
    v9 = *(a1 + 40);
    v13 = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = __47__UIKeyboardLayout_touchDownTaskForTouchState___block_invoke_2;
    v16 = &unk_1E70FD1B8;
    v17 = v10;
    v11 = v9;
    v18 = v11;
    v12 = [v3 childWithContinuation:&v13];
    [v10 touchDown:v11 executionContext:{v12, v13, v14, v15, v16, v17}];
  }
}

void __47__UIKeyboardLayout_touchDownTaskForTouchState___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  CFAbsoluteTimeGetCurrent();
  v4 = *(a1 + 40);
  v5 = *(*(a1 + 32) + 608);
  v6 = [v4 touchUUID];
  v8 = [v5 objectForKey:v6];

  [v8 originalStartTime];
  [_UIKeyboardUsageTracking keyboardPerformanceFromTouchStart:"keyboardPerformanceFromTouchStart:until:" until:?];
  v7 = [v3 info];
  [v3 returnExecutionToParentWithInfo:v7];
}

- (void)touchDown:(id)a3
{
  v4 = a3;
  v5 = _UIKeyboardTouchLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEFAULT, "touch down", buf, 2u);
  }

  v6 = [(UIKeyboardLayout *)self _touchStateForTouch:v4];
  [v6 timestamp];
  v8 = v7;
  v9 = mach_absolute_time();
  kdebug_trace();
  v10 = kac_get_log();
  v11 = os_signpost_id_make_with_pointer(v10, v6);
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v12 = v11;
    if (os_signpost_enabled(v10))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_188A29000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v12, "appTouchDown", " enableTelemetry=YES ", buf, 2u);
    }
  }

  v13 = [(UIKeyboardLayout *)self touchDownTaskForTouchState:v6];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __30__UIKeyboardLayout_touchDown___block_invoke;
  aBlock[3] = &unk_1E7116E70;
  v14 = v13;
  v20 = v14;
  v15 = v6;
  v19 = v15;
  v21 = v8;
  v22 = 0;
  v23 = v9;
  v16 = _Block_copy(aBlock);
  if ([(UIKeyboardLayout *)self _shouldAllowKeyboardHandlingIfNecessaryForTouch:v4 phase:0 withTouchState:v15 task:v16])
  {
    if (qword_1ED497230 != -1)
    {
      dispatch_once(&qword_1ED497230, &__block_literal_global_207_1);
    }

    v17 = [(UIKeyboardLayout *)self taskQueue];
    [v17 addTask:v16 breadcrumb:qword_1ED497228];
  }
}

void __30__UIKeyboardLayout_touchDown___block_invoke(uint64_t a1, void *a2)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __30__UIKeyboardLayout_touchDown___block_invoke_2;
  v6[3] = &unk_1E7116E48;
  v4 = *(a1 + 40);
  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v5 = [a2 childWithContinuation:v6];
  (*(v4 + 16))(v4, v5);
}

void __30__UIKeyboardLayout_touchDown___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = mach_absolute_time();
  kdebug_trace();
  v5 = kac_get_log();
  v6 = os_signpost_id_make_with_pointer(v5, *(a1 + 32));
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v7 = v6;
    if (os_signpost_enabled(v5))
    {
      *v9 = 0;
      _os_signpost_emit_with_name_impl(&dword_188A29000, v5, OS_SIGNPOST_INTERVAL_END, v7, "appTouchDown", " enableTelemetry=YES ", v9, 2u);
    }
  }

  [_UIKeyboardDiagnosticCollection _requestTailspinWithDescription:@"KeyboardTouchToPaddleLatency" startMAT:*(a1 + 56) endMAT:v4 ifExceedsThresholdSec:0.5];
  v8 = [v3 info];
  [v3 returnExecutionToParentWithInfo:v8];
}

void __30__UIKeyboardLayout_touchDown___block_invoke_205()
{
  v0 = [&__block_literal_global_211 copy];
  v1 = qword_1ED497228;
  qword_1ED497228 = v0;
}

- (id)touchDraggedTaskForTouchState:(id)a3
{
  v4 = a3;
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __50__UIKeyboardLayout_touchDraggedTaskForTouchState___block_invoke;
  v12 = &unk_1E70FD1B8;
  v13 = self;
  v14 = v4;
  v5 = v4;
  v6 = _Block_copy(&v9);
  v7 = [v6 copy];

  return v7;
}

void __50__UIKeyboardLayout_touchDraggedTaskForTouchState___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = *(*(a1 + 32) + 432);
  v11 = a2;
  v5 = [v3 touchUUID];
  v6 = [v4 indexOfObject:v5];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [v11 returnExecutionToParent];
    v7 = v11;
  }

  else
  {
    v9 = *(a1 + 32);
    v8 = *(a1 + 40);
    v10 = [v11 childWithContinuation:&__block_literal_global_213_0];

    [v9 touchDragged:v8 executionContext:v10];
    v7 = v10;
  }
}

- (void)touchDragged:(id)a3
{
  v4 = a3;
  v5 = _UIKeyboardTouchLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEFAULT, "touch drag", buf, 2u);
  }

  v6 = [(UIKeyboardLayout *)self _touchStateForTouch:v4];
  kdebug_trace();
  v7 = kac_get_log();
  v8 = os_signpost_id_make_with_pointer(v7, v6);
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v9 = v8;
    if (os_signpost_enabled(v7))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_188A29000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v9, "appTouchDragged", " enableTelemetry=YES ", buf, 2u);
    }
  }

  v10 = [(UIKeyboardLayout *)self touchDraggedTaskForTouchState:v6];
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __33__UIKeyboardLayout_touchDragged___block_invoke;
  v18 = &unk_1E70FD768;
  v11 = v10;
  v20 = v11;
  v12 = v6;
  v19 = v12;
  v13 = _Block_copy(&v15);
  if ([(UIKeyboardLayout *)self _shouldAllowKeyboardHandlingIfNecessaryForTouch:v4 phase:1 withTouchState:v12 task:v13, v15, v16, v17, v18])
  {
    if (qword_1ED497240 != -1)
    {
      dispatch_once(&qword_1ED497240, &__block_literal_global_216_0);
    }

    v14 = [(UIKeyboardLayout *)self taskQueue];
    [v14 addTask:v13 breadcrumb:qword_1ED497238];
  }
}

void __33__UIKeyboardLayout_touchDragged___block_invoke(uint64_t a1, void *a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __33__UIKeyboardLayout_touchDragged___block_invoke_2;
  v5[3] = &unk_1E70FD058;
  v3 = *(a1 + 40);
  v6 = *(a1 + 32);
  v4 = [a2 childWithContinuation:v5];
  (*(v3 + 16))(v3, v4);
}

void __33__UIKeyboardLayout_touchDragged___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  kdebug_trace();
  v4 = kac_get_log();
  v5 = os_signpost_id_make_with_pointer(v4, *(a1 + 32));
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v6 = v5;
    if (os_signpost_enabled(v4))
    {
      *v8 = 0;
      _os_signpost_emit_with_name_impl(&dword_188A29000, v4, OS_SIGNPOST_INTERVAL_END, v6, "appTouchDragged", " enableTelemetry=YES ", v8, 2u);
    }
  }

  v7 = [v3 info];
  [v3 returnExecutionToParentWithInfo:v7];
}

void __33__UIKeyboardLayout_touchDragged___block_invoke_214()
{
  v0 = [&__block_literal_global_219 copy];
  v1 = qword_1ED497238;
  qword_1ED497238 = v0;
}

- (void)_touchEndedProcessingForTouches:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E696AD50] indexSet];
  uncommittedTouchUUIDs = self->_uncommittedTouchUUIDs;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __52__UIKeyboardLayout__touchEndedProcessingForTouches___block_invoke;
  v15[3] = &unk_1E7116E98;
  v7 = v4;
  v16 = v7;
  v8 = v5;
  v17 = v8;
  v18 = self;
  [(NSMutableArray *)uncommittedTouchUUIDs enumerateObjectsWithOptions:2 usingBlock:v15];
  if ([v8 count])
  {
    v9 = [v8 lastIndex];
    [v8 removeIndex:v9];
    v10 = [(NSMutableArray *)self->_uncommittedTouchUUIDs objectAtIndex:v9];
    if (v10)
    {
      v11 = v10;
      v12 = [UIKBTouchState touchForTouchUUID:v10];
      v13 = [(NSMutableArray *)self->_uncommittedTouchUUIDs objectsAtIndexes:v8];
      [(UIKeyboardLayout *)self commitTouchUUIDs:v13];

      [(UIKeyboardLayout *)self touchUp:v12];
LABEL_7:

      goto LABEL_8;
    }
  }

  if (![(NSMutableArray *)self->_uncommittedTouchUUIDs count])
  {
    v14 = [(UIKeyboardLayout *)self screenEdgePanRecognizer];

    if (v14)
    {
      [(UIKeyboardLayout *)self _clearDeferredTouchTasks];
      v11 = [(UIKeyboardLayout *)self screenEdgePanRecognizer];
      [v11 reset];
      goto LABEL_7;
    }
  }

LABEL_8:
}

void __52__UIKeyboardLayout__touchEndedProcessingForTouches___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v10 = a2;
  v5 = [UIKBTouchState touchForTouchUUID:?];
  v6 = [*(a1 + 32) containsObject:v5];
  v7 = [*(a1 + 40) count];
  if ((v6 & 1) != 0 || v7 && (v8 = *(a1 + 48), [v5 window], v9 = objc_claimAutoreleasedReturnValue(), LODWORD(v8) = objc_msgSend(v8, "canForceTouchUUIDCommit:inWindow:", v10, v9), v9, v8))
  {
    [*(a1 + 40) addIndex:a3];
  }
}

- (id)touchUpTaskForTouchState:(id)a3
{
  v4 = a3;
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __45__UIKeyboardLayout_touchUpTaskForTouchState___block_invoke;
  v12 = &unk_1E70FD1B8;
  v13 = self;
  v14 = v4;
  v5 = v4;
  v6 = _Block_copy(&v9);
  v7 = [v6 copy];

  return v7;
}

void __45__UIKeyboardLayout_touchUpTaskForTouchState___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 432);
  v5 = [*(a1 + 40) touchUUID];
  v6 = [v4 indexOfObject:v5];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [v3 returnExecutionToParent];
  }

  else
  {
    [*(a1 + 32) clearShiftIfNecessaryForEndedTouchState:*(a1 + 40)];
    v8 = *(a1 + 32);
    v7 = *(a1 + 40);
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __45__UIKeyboardLayout_touchUpTaskForTouchState___block_invoke_2;
    v14 = &unk_1E70FD1B8;
    v15 = v8;
    v9 = v7;
    v16 = v9;
    v10 = [v3 childWithContinuation:&v11];
    [v8 touchUp:v9 executionContext:{v10, v11, v12, v13, v14, v15}];
  }
}

void __45__UIKeyboardLayout_touchUpTaskForTouchState___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = a2;
  [v3 didCommitTouchState:v4];
  [*(a1 + 40) timestamp];
  [_UIKeyboardUsageTracking keyboardPerformanceFromTouchRelease:v5 until:CFAbsoluteTimeGetCurrent() + *&sSystemUptimeFromAbsoluteTimeDiff];
  [v6 returnExecutionToParent];
}

- (void)touchUp:(id)a3
{
  v4 = a3;
  v5 = _UIKeyboardTouchLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEFAULT, "touch up", buf, 2u);
  }

  v6 = [(UIKeyboardLayout *)self _touchStateForTouch:v4];
  [v6 timestamp];
  v8 = v7;
  kdebug_trace();
  v9 = kac_get_log();
  v10 = os_signpost_id_make_with_pointer(v9, v6);
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v11 = v10;
    if (os_signpost_enabled(v9))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_188A29000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v11, "appTouchUp", " enableTelemetry=YES ", buf, 2u);
    }
  }

  v12 = [(UIKeyboardLayout *)self touchUpTaskForTouchState:v6];
  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __28__UIKeyboardLayout_touchUp___block_invoke;
  v20 = &unk_1E7116EC0;
  v13 = v12;
  v22 = v13;
  v14 = v6;
  v21 = v14;
  v23 = v8;
  v24 = 0;
  v15 = _Block_copy(&v17);
  if ([(UIKeyboardLayout *)self _shouldAllowKeyboardHandlingIfNecessaryForTouch:v4 phase:3 withTouchState:v14 task:v15, v17, v18, v19, v20])
  {
    if (qword_1ED497250 != -1)
    {
      dispatch_once(&qword_1ED497250, &__block_literal_global_224);
    }

    v16 = [(UIKeyboardLayout *)self taskQueue];
    [v16 addTask:v15 breadcrumb:qword_1ED497248];
  }
}

void __28__UIKeyboardLayout_touchUp___block_invoke(uint64_t a1, void *a2)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __28__UIKeyboardLayout_touchUp___block_invoke_2;
  v6[3] = &unk_1E70FDA90;
  v4 = *(a1 + 40);
  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v5 = [a2 childWithContinuation:v6];
  (*(v4 + 16))(v4, v5);
}

void __28__UIKeyboardLayout_touchUp___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  kdebug_trace();
  v4 = kac_get_log();
  v5 = os_signpost_id_make_with_pointer(v4, *(a1 + 32));
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v6 = v5;
    if (os_signpost_enabled(v4))
    {
      *v8 = 0;
      _os_signpost_emit_with_name_impl(&dword_188A29000, v4, OS_SIGNPOST_INTERVAL_END, v6, "appTouchUp", " enableTelemetry=YES ", v8, 2u);
    }
  }

  v7 = [v3 info];
  [v3 returnExecutionToParentWithInfo:v7];
}

void __28__UIKeyboardLayout_touchUp___block_invoke_222()
{
  v0 = [&__block_literal_global_227_1 copy];
  v1 = qword_1ED497248;
  qword_1ED497248 = v0;
}

- (void)didCommitTouchState:(id)a3
{
  uncommittedTouchUUIDs = self->_uncommittedTouchUUIDs;
  v5 = a3;
  v6 = [v5 touchUUID];
  [(NSMutableArray *)uncommittedTouchUUIDs removeObject:v6];

  if (![(NSMutableArray *)self->_uncommittedTouchUUIDs count])
  {
    v7 = [(UIKeyboardLayout *)self screenEdgePanRecognizer];

    if (v7)
    {
      [(UIKeyboardLayout *)self _clearDeferredTouchTasks];
      v8 = [(UIKeyboardLayout *)self screenEdgePanRecognizer];
      [v8 reset];
    }
  }

  [v5 timestamp];
  [(UIKeyboardLayout *)self setLastTouchUpTime:?];
  v9 = [v5 touchUUID];

  v10 = [(UIKeyboardLayout *)self activeTouchUUID];
  v11 = [v9 isEqual:v10];

  if (v11)
  {
    [(UIKeyboardLayout *)self setActiveTouchUUID:0];
    v12 = [(UIKeyboardLayout *)self deferredTaskForActiveTouch];

    if (v12)
    {
      v13 = [(UIKeyboardLayout *)self deferredTaskForActiveTouch];
      v13[2]();

      [(UIKeyboardLayout *)self setDeferredTaskForActiveTouch:0];
    }
  }
}

- (id)touchCancelledTaskForTouchState:(id)a3 forResting:(BOOL)a4
{
  v6 = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __63__UIKeyboardLayout_touchCancelledTaskForTouchState_forResting___block_invoke;
  aBlock[3] = &unk_1E70FD0F0;
  aBlock[4] = self;
  v12 = v6;
  v13 = a4;
  v7 = v6;
  v8 = _Block_copy(aBlock);
  v9 = [v8 copy];

  return v9;
}

void __63__UIKeyboardLayout_touchCancelledTaskForTouchState_forResting___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 432);
  v5 = [*(a1 + 40) touchUUID];
  v6 = [v4 indexOfObject:v5];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [v3 returnExecutionToParent];
  }

  else
  {
    [*(a1 + 32) clearShiftIfNecessaryForEndedTouchState:*(a1 + 40)];
    v8 = *(a1 + 32);
    v7 = *(a1 + 40);
    v9 = *(a1 + 48);
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __63__UIKeyboardLayout_touchCancelledTaskForTouchState_forResting___block_invoke_2;
    v15 = &unk_1E70FD1B8;
    v16 = v8;
    v10 = v7;
    v17 = v10;
    v11 = [v3 childWithContinuation:&v12];
    [v8 touchCancelled:v10 forResting:v9 executionContext:{v11, v12, v13, v14, v15, v16}];
  }
}

void __63__UIKeyboardLayout_touchCancelledTaskForTouchState_forResting___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  [v2 didCommitTouchState:v3];
  [v4 returnExecutionToParent];
}

- (void)touchCancelled:(id)a3
{
  v4 = a3;
  v5 = [(UIKeyboardLayout *)self _touchStateForTouch:v4];
  v6 = [(UIKeyboardLayout *)self touchCancelledTaskForTouchState:v5 forResting:0];
  v7 = _UIKeyboardTouchLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_DEFAULT, "touch cancelled", v10, 2u);
  }

  v8 = [(UIKeyboardLayout *)self _shouldAllowKeyboardHandlingIfNecessaryForTouch:v4 phase:4 withTouchState:v5 task:v6];
  if (v8)
  {
    if (qword_1ED497260 != -1)
    {
      dispatch_once(&qword_1ED497260, &__block_literal_global_229_0);
    }

    v9 = [(UIKeyboardLayout *)self taskQueue];
    [v9 addTask:v6 breadcrumb:qword_1ED497258];
  }
}

void __35__UIKeyboardLayout_touchCancelled___block_invoke()
{
  v0 = [&__block_literal_global_231 copy];
  v1 = qword_1ED497258;
  qword_1ED497258 = v0;
}

- (id)touchChangedTaskForTouchState:(id)a3
{
  v4 = a3;
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __50__UIKeyboardLayout_touchChangedTaskForTouchState___block_invoke;
  v12 = &unk_1E70FD1B8;
  v13 = self;
  v14 = v4;
  v5 = v4;
  v6 = _Block_copy(&v9);
  v7 = [v6 copy];

  return v7;
}

void __50__UIKeyboardLayout_touchChangedTaskForTouchState___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = *(*(a1 + 32) + 432);
  v7 = a2;
  v5 = [v3 touchUUID];
  v6 = [v4 indexOfObject:v5];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [v7 returnExecutionToParent];
  }

  else
  {
    [*(a1 + 32) touchChanged:*(a1 + 40) executionContext:v7];
  }
}

- (void)touchChanged:(id)a3
{
  v6 = [(UIKeyboardLayout *)self _touchStateForTouch:a3];
  v4 = [(UIKeyboardLayout *)self touchChangedTaskForTouchState:?];
  if (qword_1ED497270 != -1)
  {
    dispatch_once(&qword_1ED497270, &__block_literal_global_233_1);
  }

  v5 = [(UIKeyboardLayout *)self taskQueue];
  [v5 addTask:v4 breadcrumb:qword_1ED497268];
}

void __33__UIKeyboardLayout_touchChanged___block_invoke()
{
  v0 = [&__block_literal_global_235_0 copy];
  v1 = qword_1ED497268;
  qword_1ED497268 = v0;
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = self;
  if ([(UIKeyboardLayout *)v8 _shouldAllowKeyboardHandlingForTouchesBegan:v6 withEvent:v7])
  {
    v23 = 488;
    v24 = v7;
    objc_storeStrong(&v8->_currentTouchDownEvent, a4);
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    obj = v6;
    v9 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (!v9)
    {
      goto LABEL_17;
    }

    v10 = v9;
    v11 = *v27;
    while (1)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v27 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v26 + 1) + 8 * i);
        v14 = [UIKBTouchState touchUUIDForTouch:v13, v23];
        [(NSMutableArray *)v8->_uncommittedTouchUUIDs addObject:v14];
        v15 = UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL;
        v16 = +[UIKeyboardImpl isFloating];
        if (v15 == 1)
        {
          [(UIKeyboardLayout *)v8 hasActiveContinuousPathInput];
          if (!v16)
          {
            goto LABEL_13;
          }

          v17 = 1;
        }

        else
        {
          v18 = _AXSZoomTouchEnabled() == 0;
          v19 = v18 & ~[(UIKeyboardLayout *)v8 hasActiveContinuousPathInput];
          if (((v19 | v16) & 1) == 0)
          {
            goto LABEL_13;
          }

          v17 = v19 ^ 1;
        }

        v20 = [(UIKeyboardLayout *)v8 touchUUIDsToCommitBeforeTouchUUID:v14];
        [(UIKeyboardLayout *)v8 commitTouchUUIDs:v20 cancelInsteadOfUp:v17];

LABEL_13:
        v21 = [v13 window];

        if (v21)
        {
          [(UIKeyboardLayout *)v8 touchDown:v13];
        }
      }

      v10 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (!v10)
      {
LABEL_17:

        v22 = *(&v8->super.super.super.isa + v23);
        *(&v8->super.super.super.isa + v23) = 0;

        v7 = v24;
        break;
      }
    }
  }
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = self;
  if ([(UIKeyboardLayout *)v7 _shouldAllowKeyboardHandlingForTouchesMoved:v6 withEvent:a4])
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v14;
      do
      {
        v12 = 0;
        do
        {
          if (*v14 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [(UIKeyboardLayout *)v7 touchDragged:*(*(&v13 + 1) + 8 * v12++), v13];
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v10);
    }
  }
}

- (void)clearShiftIfNecessaryForEndedTouchState:(id)a3
{
  v4 = [a3 touchUUID];
  v5 = [v4 isEqual:self->_shiftKeyTouchUUID];

  if (v5)
  {
    v6 = +[UIKeyboardImpl sharedInstance];
    if (self->_shiftKeyTouchUUID != self->_activeTouchUUID)
    {
      [v6 setShift:0];
    }

    [(UIKeyboardLayout *)self setShiftKeyTouchUUID:0];
  }
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  [v7 timestamp];
  self->_timestampOfLastTouchesEnded = v8;
  v9 = self;
  if ([(UIKeyboardLayout *)v9 _shouldAllowKeyboardHandlingForTouchesEndedOrCancelled:v6 withEvent:v7])
  {
    v10 = [(UIKeyboardLayout *)v9 handRestRecognizer];

    if (v10)
    {
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v11 = v6;
      v12 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v17;
        do
        {
          v15 = 0;
          do
          {
            if (*v17 != v14)
            {
              objc_enumerationMutation(v11);
            }

            [(UIKeyboardLayout *)v9 touchUp:*(*(&v16 + 1) + 8 * v15++), v16];
          }

          while (v13 != v15);
          v13 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
        }

        while (v13);
      }
    }

    else
    {
      [(UIKeyboardLayout *)v9 _touchEndedProcessingForTouches:v6];
    }
  }

  else
  {
    [(UIKeyboardLayout *)v9 _removeTouchesFromProcessing:v6];
  }
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  v45 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = self;
  if (![(UIKeyboardLayout *)v7 _shouldAllowKeyboardHandlingForTouchesEndedOrCancelled:v6 withEvent:a4])
  {
    [(UIKeyboardLayout *)v7 _removeTouchesFromProcessing:v6];
    goto LABEL_27;
  }

  v32 = [MEMORY[0x1E695DF70] array];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v31 = v6;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v39 objects:v44 count:16];
  v10 = &OBJC_IVAR___UIDictationController__monitor;
  if (!v9)
  {
    goto LABEL_15;
  }

  v11 = v9;
  v12 = *v40;
  do
  {
    v13 = 0;
    do
    {
      if (*v40 != v12)
      {
        objc_enumerationMutation(v8);
      }

      v14 = [(UIKeyboardLayout *)v7 _touchStateForTouch:*(*(&v39 + 1) + 8 * v13)];
      v15 = v14;
      if (v14)
      {
        v16 = *(&v7->super.super.super.isa + v10[662]);
        v17 = [v14 touchUUID];
        if ([v16 containsObject:v17])
        {

LABEL_11:
          v21 = [v15 touchUUID];
          [v32 addObject:v21];

          goto LABEL_13;
        }

        touchIgnoredUUIDSet = v7->_touchIgnoredUUIDSet;
        [v15 touchUUID];
        v20 = v19 = v10;
        LODWORD(touchIgnoredUUIDSet) = [(NSMutableSet *)touchIgnoredUUIDSet containsObject:v20];

        v10 = v19;
        if (touchIgnoredUUIDSet)
        {
          goto LABEL_11;
        }

        deferredTouchTaskListsQueue = v7->_deferredTouchTaskListsQueue;
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __47__UIKeyboardLayout_touchesCancelled_withEvent___block_invoke;
        block[3] = &unk_1E70F35B8;
        block[4] = v7;
        v38 = v15;
        dispatch_sync(deferredTouchTaskListsQueue, block);
      }

LABEL_13:

      ++v13;
    }

    while (v11 != v13);
    v11 = [v8 countByEnumeratingWithState:&v39 objects:v44 count:16];
  }

  while (v11);
LABEL_15:

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v23 = v32;
  v24 = [v23 countByEnumeratingWithState:&v33 objects:v43 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v34;
    do
    {
      v27 = 0;
      do
      {
        if (*v34 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = [UIKBTouchState touchForTouchUUID:*(*(&v33 + 1) + 8 * v27)];
        [(UIKeyboardLayout *)v7 touchCancelled:v28];

        ++v27;
      }

      while (v25 != v27);
      v25 = [v23 countByEnumeratingWithState:&v33 objects:v43 count:16];
    }

    while (v25);
  }

  if (![*(&v7->super.super.super.isa + v10[662]) count])
  {
    v29 = [(UIKeyboardLayout *)v7 screenEdgePanRecognizer];

    if (v29)
    {
      [(UIKeyboardLayout *)v7 _clearDeferredTouchTasks];
      v30 = [(UIKeyboardLayout *)v7 screenEdgePanRecognizer];
      [v30 reset];
    }
  }

  v6 = v31;
LABEL_27:
}

void __47__UIKeyboardLayout_touchesCancelled_withEvent___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 608);
  v3 = [*(a1 + 40) touchUUID];
  v7 = [v2 objectForKey:v3];

  if (v7)
  {
    v4 = *(a1 + 40);
    v5 = *(*(a1 + 32) + 608);
    v6 = [v4 touchUUID];
    [v5 removeObjectForKey:v6];
  }
}

- (void)touchesEstimatedPropertiesUpdated:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v4);
        }

        [(UIKeyboardLayout *)v5 touchChanged:*(*(&v10 + 1) + 8 * v9++)];
      }

      while (v7 != v9);
      v7 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)_removeTouchesFromProcessing:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  obj = a3;
  if (*&self->_handRestRecognizer != 0 || self->_touchDrifting)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v4 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v27;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v27 != v6)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v26 + 1) + 8 * i);
          v9 = [(UIKeyboardLayout *)self _touchStateForTouch:v8];
          v10 = v9;
          if (v9)
          {
            handRestRecognizer = self->_handRestRecognizer;
            v12 = [v9 touchUUID];
            [(_UIKBRTRecognizer *)handRestRecognizer markTouchProcessed:v8 withIdentifier:v12];

            fingerDetection = self->_fingerDetection;
            v14 = [v10 touchUUID];
            [(_UIKBRTFingerDetection *)fingerDetection removeTouchWithIdentifier:v14 touchCancelled:1];

            touchDrifting = self->_touchDrifting;
            v16 = [v10 touchUUID];
            [(_UIKBRTTouchDrifting *)touchDrifting removeTouchWithIdentifier:v16 touchCancelled:1];

            [v10 locationInWindow];
            [(UIView *)self convertPoint:0 fromView:?];
            v18 = v17;
            v20 = v19;
            [v10 timestamp];
            v22 = v21;
            v23 = [v10 pathIndex];
            v24 = [v10 touchUUID];
            [(UIKeyboardLayout *)self handRestRecognizerNotifyRestForBegin:0 location:v23 timestamp:v24 pathIndex:0 touchUUID:v18 context:v20, v22];
          }
        }

        v5 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v5);
    }
  }
}

- (id)touchUUIDsToCommitBeforeTouchUUID:(id)a3
{
  v4 = a3;
  if ([(NSMutableArray *)self->_uncommittedTouchUUIDs indexOfObject:v4]== 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    uncommittedTouchUUIDs = self->_uncommittedTouchUUIDs;
    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = __54__UIKeyboardLayout_touchUUIDsToCommitBeforeTouchUUID___block_invoke;
    v12 = &unk_1E7116EE8;
    v13 = v4;
    v14 = self;
    v7 = [(NSMutableArray *)uncommittedTouchUUIDs indexesOfObjectsPassingTest:&v9];
    v5 = [(NSMutableArray *)self->_uncommittedTouchUUIDs objectsAtIndexes:v7, v9, v10, v11, v12];
  }

  return v5;
}

uint64_t __54__UIKeyboardLayout_touchUUIDsToCommitBeforeTouchUUID___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  if ([v6 isEqual:*(a1 + 32)])
  {
    v7 = 0;
    *a4 = 1;
  }

  else
  {
    v8 = [UIKBTouchState touchForTouchUUID:v6];
    v9 = *(a1 + 40);
    v10 = [v8 window];
    v7 = [v9 canForceTouchUUIDCommit:v6 inWindow:v10];
  }

  return v7;
}

- (void)commitTouchUUIDs:(id)a3 cancelInsteadOfUp:(BOOL)a4
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __55__UIKeyboardLayout_commitTouchUUIDs_cancelInsteadOfUp___block_invoke;
  v4[3] = &unk_1E7116F38;
  v4[4] = self;
  v5 = a4;
  [a3 enumerateObjectsUsingBlock:v4];
}

void __55__UIKeyboardLayout_commitTouchUUIDs_cancelInsteadOfUp___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [UIKBTouchState touchForTouchUUID:v3];
  v5 = [v4 window];

  if (!v5)
  {
    v6 = [*(a1 + 32) window];
    [v4 setWindow:v6];
  }

  v7 = *(a1 + 32);
  if (*(a1 + 40) == 1)
  {
    [v7 touchCancelled:v4];
  }

  else
  {
    [v7 touchUp:v4];
  }

  objc_initWeak(&location, *(a1 + 32));
  if (qword_1ED497280 != -1)
  {
    dispatch_once(&qword_1ED497280, &__block_literal_global_239_0);
  }

  v8 = [*(a1 + 32) taskQueue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __55__UIKeyboardLayout_commitTouchUUIDs_cancelInsteadOfUp___block_invoke_4;
  v9[3] = &unk_1E7116F10;
  objc_copyWeak(&v10, &location);
  [v8 addTask:v9 breadcrumb:qword_1ED497278];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __55__UIKeyboardLayout_commitTouchUUIDs_cancelInsteadOfUp___block_invoke_2()
{
  v0 = [&__block_literal_global_241_0 copy];
  v1 = qword_1ED497278;
  qword_1ED497278 = v0;
}

void __55__UIKeyboardLayout_commitTouchUUIDs_cancelInsteadOfUp___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained forceUpdatesForCommittedTouch];
  [v3 returnExecutionToParent];
}

- (void)forceUpdatesForCommittedTouch
{
  v2 = +[UIKeyboardImpl sharedInstance];
  [v2 forceShiftUpdateIfKeyboardStateChanged];
}

- (void)commitTouches:(id)a3 executionContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    v8 = [v6 objectAtIndex:0];
    v9 = [v6 subarrayWithRange:{1, objc_msgSend(v6, "count") - 1}];
    v10 = [v8 window];

    if (!v10)
    {
      v11 = [(UIView *)self window];
      [v8 setWindow:v11];
    }

    v12 = [(UIKeyboardLayout *)self _touchStateForTouch:v8];
    uncommittedTouchUUIDs = self->_uncommittedTouchUUIDs;
    v14 = [v12 touchUUID];
    v15 = [(NSMutableArray *)uncommittedTouchUUIDs indexOfObject:v14];

    if (v15 == 0x7FFFFFFFFFFFFFFFLL)
    {
      [(UIKeyboardLayout *)self commitTouches:v9 executionContext:v7];
    }

    else
    {
      [(UIKeyboardLayout *)self clearShiftIfNecessaryForEndedTouchState:v12];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __51__UIKeyboardLayout_commitTouches_executionContext___block_invoke;
      v18[3] = &unk_1E70FD208;
      v18[4] = self;
      v16 = v12;
      v19 = v16;
      v20 = v9;
      v17 = [v7 childWithContinuation:v18];
      [(UIKeyboardLayout *)self touchUp:v16 executionContext:v17];
    }
  }

  else
  {
    [v7 returnExecutionToParent];
  }
}

void __51__UIKeyboardLayout_commitTouches_executionContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  [v3 didCommitTouchState:v4];
  [*(a1 + 32) forceUpdatesForCommittedTouch];
  [*(a1 + 32) commitTouches:*(a1 + 48) executionContext:v5];
}

- (void)_enumerateDeferredTouchUUIDs:(id)a3 withBlock:(id)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  [(UIKeyboardLayout *)self setIsExecutingDeferredTouchTasks:1];
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__134;
  v28 = __Block_byref_object_dispose__134;
  v29 = 0;
  deferredTouchTaskListsQueue = self->_deferredTouchTaskListsQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__UIKeyboardLayout__enumerateDeferredTouchUUIDs_withBlock___block_invoke;
  block[3] = &unk_1E70FB728;
  v23 = &v24;
  block[4] = self;
  v9 = v6;
  v22 = v9;
  dispatch_sync(deferredTouchTaskListsQueue, block);
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = v25[5];
  v11 = [v10 countByEnumeratingWithState:&v17 objects:v30 count:16];
  if (v11)
  {
    v12 = *v18;
    do
    {
      v13 = 0;
      do
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v17 + 1) + 8 * v13);
        v15 = [MEMORY[0x1E695DFB0] null];
        v16 = v14 == v15;

        if (!v16)
        {
            ;
          }
        }

        ++v13;
      }

      while (v13 != v11);
      v11 = [v10 countByEnumeratingWithState:&v17 objects:v30 count:16];
    }

    while (v11);
  }

  [(UIKeyboardLayout *)self setIsExecutingDeferredTouchTasks:0];
  _Block_object_dispose(&v24, 8);
}

void __59__UIKeyboardLayout__enumerateDeferredTouchUUIDs_withBlock___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 608);
  v7 = [*(a1 + 40) allObjects];
  v3 = [MEMORY[0x1E695DFB0] null];
  v4 = [v2 objectsForKeys:v7 notFoundMarker:v3];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (void)recognizerBlockUntilTaskQueueReadyForceUsingDeferredTask:(BOOL)a3
{
  if (pthread_main_np() == 1)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"UIKeyboardLayout.m" lineNumber:1512 description:@"Must be called off the main thread"];

    if (!a3)
    {
LABEL_3:
      v6 = [(UIKeyboardLayout *)self taskQueue];
      v7 = [v6 isMainThreadExecutingTask];

      if (!v7)
      {
        return;
      }
    }
  }

  else if (!a3)
  {
    goto LABEL_3;
  }

  v8 = dispatch_semaphore_create(0);
  if (qword_1ED497290 != -1)
  {
    dispatch_once(&qword_1ED497290, &__block_literal_global_251_1);
  }

  v9 = [(UIKeyboardLayout *)self taskQueue];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __77__UIKeyboardLayout_recognizerBlockUntilTaskQueueReadyForceUsingDeferredTask___block_invoke_3;
  v14[3] = &unk_1E70FD058;
  v15 = v8;
  v10 = qword_1ED497288;
  v11 = v8;
  [v9 addDeferredTask:v14 breadcrumb:v10];

  v12 = dispatch_time(0, 10000000000);
  dispatch_semaphore_wait(v11, v12);
}

void __77__UIKeyboardLayout_recognizerBlockUntilTaskQueueReadyForceUsingDeferredTask___block_invoke()
{
  v0 = [&__block_literal_global_253_0 copy];
  v1 = qword_1ED497288;
  qword_1ED497288 = v0;
}

void __77__UIKeyboardLayout_recognizerBlockUntilTaskQueueReadyForceUsingDeferredTask___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  dispatch_semaphore_signal(v2);
  [v3 returnExecutionToParent];
}

- (void)recognizer:(id)a3 beginTouchDownForTouchWithId:(id)a4 atPoint:(CGPoint)a5 forBeginState:(unint64_t)a6 whenStateReady:(id)a7
{
  y = a5.y;
  x = a5.x;
  v13 = a3;
  v14 = a4;
  v15 = a7;
  v16 = [(UIKeyboardLayout *)self handRestRecognizer];

  if (v16 == v13)
  {
    v36[0] = 0;
    v36[1] = v36;
    v36[2] = 0x2020000000;
    v37 = 1;
    v17 = [v15 copy];
    v18 = v14;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __97__UIKeyboardLayout_recognizer_beginTouchDownForTouchWithId_atPoint_forBeginState_whenStateReady___block_invoke;
    block[3] = &unk_1E7116F88;
    block[4] = self;
    v19 = v18;
    v32 = v36;
    v33 = a6;
    v31 = v19;
    v34 = x;
    v35 = y;
    dispatch_sync(MEMORY[0x1E69E96A0], block);
    [(UIKeyboardLayout *)self recognizerBlockUntilTaskQueueReadyForceUsingDeferredTask:1];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __97__UIKeyboardLayout_recognizer_beginTouchDownForTouchWithId_atPoint_forBeginState_whenStateReady___block_invoke_5;
    v22[3] = &unk_1E7117000;
    v26 = v36;
    v27 = a6;
    v22[4] = self;
    v28 = x;
    v29 = y;
    v24 = v19;
    v25 = v17;
    v23 = v24;
    v20 = v17;
    v21 = MEMORY[0x1E69E96A0];
    dispatch_sync(MEMORY[0x1E69E96A0], v22);

    _Block_object_dispose(v36, 8);
  }

  else
  {
    (*(v15 + 2))(v15, v14, 0);
  }
}

void __97__UIKeyboardLayout_recognizer_beginTouchDownForTouchWithId_atPoint_forBeginState_whenStateReady___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E695DFD8] setWithObject:*(a1 + 40)];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __97__UIKeyboardLayout_recognizer_beginTouchDownForTouchWithId_atPoint_forBeginState_whenStateReady___block_invoke_2;
  v7[3] = &unk_1E7116F60;
  v4 = *(a1 + 32);
  v9 = *(a1 + 56);
  v7[4] = v4;
  v6 = *(a1 + 40);
  v5 = v6;
  v8 = v6;
  v10 = *(a1 + 64);
  [v2 _enumerateDeferredTouchUUIDs:v3 withBlock:v7];
}

void __97__UIKeyboardLayout_recognizer_beginTouchDownForTouchWithId_atPoint_forBeginState_whenStateReady___block_invoke_2(uint64_t a1, void *a2, void *a3, BOOL *a4)
{
  v11 = a2;
  v7 = a3;
  v8 = [v11 phase];
  *a4 = v8 != 0;
  if (!v8)
  {
    if (*(a1 + 56))
    {
      *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) queryShouldNeverIgnoreTouchStateWithIdentifier:*(a1 + 40) touchState:v11 startPoint:2 forRestingState:{*(a1 + 64), *(a1 + 72)}];
      v9 = *(*(a1 + 48) + 8);
      if ((*(v9 + 24) & 1) != 0 || *(a1 + 56) == 2)
      {
        *(v9 + 24) = 1;
        if (qword_1ED4972A0 != -1)
        {
          dispatch_once(&qword_1ED4972A0, &__block_literal_global_256);
        }

        v10 = [*(a1 + 32) taskQueue];
        [v10 addTask:v7 breadcrumb:qword_1ED497298];
      }
    }
  }
}

void __97__UIKeyboardLayout_recognizer_beginTouchDownForTouchWithId_atPoint_forBeginState_whenStateReady___block_invoke_3()
{
  v0 = [&__block_literal_global_258_0 copy];
  v1 = qword_1ED497298;
  qword_1ED497298 = v0;
}

void __97__UIKeyboardLayout_recognizer_beginTouchDownForTouchWithId_atPoint_forBeginState_whenStateReady___block_invoke_5(uint64_t a1)
{
  if (*(*(*(a1 + 64) + 8) + 24) != 1 || !*(a1 + 72))
  {
    v36 = 0;
    v37 = &v36;
    v38 = 0x3032000000;
    v39 = __Block_byref_object_copy__134;
    v40 = __Block_byref_object_dispose__134;
    v41 = 0;
    v2 = *(a1 + 32);
    v3 = *(v2 + 616);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __97__UIKeyboardLayout_recognizer_beginTouchDownForTouchWithId_atPoint_forBeginState_whenStateReady___block_invoke_6;
    block[3] = &unk_1E70FB728;
    v35 = &v36;
    block[4] = v2;
    v34 = *(a1 + 40);
    dispatch_sync(v3, block);
    [v37[5] setIgnoredOnBegin:1];
    objc_initWeak(&location, *(a1 + 32));
    if (![*(*(a1 + 32) + 624) containsObject:*(a1 + 40)] || objc_msgSend(*(*(a1 + 32) + 432), "containsObject:", *(a1 + 40)))
    {
      v4 = [UIKBTouchState touchForTouchUUID:*(a1 + 40)];
      if (qword_1ED4972B0 != -1)
      {
        dispatch_once(&qword_1ED4972B0, &__block_literal_global_261_0);
      }

      v5 = [*(a1 + 32) taskQueue];
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __97__UIKeyboardLayout_recognizer_beginTouchDownForTouchWithId_atPoint_forBeginState_whenStateReady___block_invoke_9;
      v28[3] = &unk_1E70FD6F0;
      objc_copyWeak(&v31, &location);
      v29 = *(a1 + 40);
      v6 = v4;
      v30 = v6;
      [v5 addTask:v28 breadcrumb:qword_1ED4972A8];

      objc_destroyWeak(&v31);
    }

    v7 = *(a1 + 32);
    v8 = [MEMORY[0x1E695DFD8] setWithObject:*(a1 + 40)];
    [v7 _enumerateDeferredTouchUUIDs:v8 withBlock:0];

    *(*(*(a1 + 64) + 8) + 24) = 0;
    Current = CFAbsoluteTimeGetCurrent();
    v10 = *&sSystemUptimeFromAbsoluteTimeDiff;
    v11 = [v37[5] pathIndex];
    v12 = [v37[5] touchUUID];
    if (qword_1ED4972C0 != -1)
    {
      dispatch_once(&qword_1ED4972C0, &__block_literal_global_267_0);
    }

    v13 = [*(a1 + 32) taskQueue];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __97__UIKeyboardLayout_recognizer_beginTouchDownForTouchWithId_atPoint_forBeginState_whenStateReady___block_invoke_12;
    v22[3] = &unk_1E7116FB0;
    objc_copyWeak(&v24, &location);
    v25 = *(a1 + 80);
    v26 = Current + v10;
    v27 = v11;
    v14 = v12;
    v23 = v14;
    [v13 addTask:v22 breadcrumb:qword_1ED4972B8];

    objc_destroyWeak(&v24);
    objc_destroyWeak(&location);

    _Block_object_dispose(&v36, 8);
  }

  if (qword_1ED4972D0 != -1)
  {
    dispatch_once(&qword_1ED4972D0, &__block_literal_global_275_0);
  }

  v15 = [*(a1 + 32) taskQueue];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __97__UIKeyboardLayout_recognizer_beginTouchDownForTouchWithId_atPoint_forBeginState_whenStateReady___block_invoke_16;
  v18[3] = &unk_1E7116FD8;
  v20 = *(a1 + 56);
  v16 = *(a1 + 48);
  v17 = *(a1 + 64);
  v19 = v16;
  v21 = v17;
  [v15 addTask:v18 breadcrumb:qword_1ED4972C8];
}

void __97__UIKeyboardLayout_recognizer_beginTouchDownForTouchWithId_atPoint_forBeginState_whenStateReady___block_invoke_6(void *a1)
{
  v2 = [*(a1[4] + 608) objectForKey:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __97__UIKeyboardLayout_recognizer_beginTouchDownForTouchWithId_atPoint_forBeginState_whenStateReady___block_invoke_7()
{
  v0 = [&__block_literal_global_263_0 copy];
  v1 = qword_1ED4972A8;
  qword_1ED4972A8 = v0;
}

void __97__UIKeyboardLayout_recognizer_beginTouchDownForTouchWithId_atPoint_forBeginState_whenStateReady___block_invoke_9(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained[54] removeObject:*(a1 + 32)];
  [WeakRetained[78] addObject:*(a1 + 32)];
  [WeakRetained[67] explicitlyIgnoreTouch:*(a1 + 40) withIdentifier:*(a1 + 32)];
  [v3 returnExecutionToParent];
}

void __97__UIKeyboardLayout_recognizer_beginTouchDownForTouchWithId_atPoint_forBeginState_whenStateReady___block_invoke_10()
{
  v0 = [&__block_literal_global_269_0 copy];
  v1 = qword_1ED4972B8;
  qword_1ED4972B8 = v0;
}

void __97__UIKeyboardLayout_recognizer_beginTouchDownForTouchWithId_atPoint_forBeginState_whenStateReady___block_invoke_12(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = *(a1 + 64);
  v5 = *(a1 + 72);
  v6 = *(a1 + 32);
  v7 = [v3 childWithContinuation:&__block_literal_global_271_0];

  [WeakRetained handRestRecognizerNotifyRestForBegin:1 location:v5 timestamp:v6 pathIndex:v7 touchUUID:*(a1 + 48) context:{*(a1 + 56), v4}];
}

void __97__UIKeyboardLayout_recognizer_beginTouchDownForTouchWithId_atPoint_forBeginState_whenStateReady___block_invoke_14()
{
  v0 = [&__block_literal_global_277_1 copy];
  v1 = qword_1ED4972C8;
  qword_1ED4972C8 = v0;
}

void __97__UIKeyboardLayout_recognizer_beginTouchDownForTouchWithId_atPoint_forBeginState_whenStateReady___block_invoke_16(void *a1, void *a2)
{
  v3 = a1[4];
  v2 = a1[5];
  v4 = *(*(a1[6] + 8) + 24);
  v5 = *(v2 + 16);
  v6 = a2;
  v5(v2, v3, v4);
  [v6 returnExecutionToParent];
}

- (void)recognizer:(id)a3 restartTouchDownForTouchWithId:(id)a4 startingAt:(double)a5 atPoint:(CGPoint)a6 currentPoint:(CGPoint)a7 whenStateReady:(id)a8
{
  y = a7.y;
  x = a7.x;
  v11 = a6.y;
  v12 = a6.x;
  v16 = a4;
  v17 = a8;
  v18 = a3;
  v19 = [(UIKeyboardLayout *)self handRestRecognizer];

  if (v19 == v18)
  {
    v29[0] = 0;
    v29[1] = v29;
    v29[2] = 0x2020000000;
    v30 = 1;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __109__UIKeyboardLayout_recognizer_restartTouchDownForTouchWithId_startingAt_atPoint_currentPoint_whenStateReady___block_invoke;
    block[3] = &unk_1E7117050;
    block[4] = self;
    v24 = a5;
    v25 = v12;
    v21 = v16;
    v23 = v29;
    v26 = v11;
    v27 = x;
    v28 = y;
    v22 = v17;
    dispatch_sync(MEMORY[0x1E69E96A0], block);

    _Block_object_dispose(v29, 8);
  }

  else
  {
    (*(v17 + 2))(v17, v16, 0);
  }
}

void __109__UIKeyboardLayout_recognizer_restartTouchDownForTouchWithId_startingAt_atPoint_currentPoint_whenStateReady___block_invoke(uint64_t a1)
{
  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = __Block_byref_object_copy__134;
  v47 = __Block_byref_object_dispose__134;
  v48 = 0;
  v2 = *(a1 + 32);
  v3 = *(v2 + 616);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __109__UIKeyboardLayout_recognizer_restartTouchDownForTouchWithId_startingAt_atPoint_currentPoint_whenStateReady___block_invoke_2;
  block[3] = &unk_1E70FB728;
  v42 = &v43;
  block[4] = v2;
  v41 = *(a1 + 40);
  dispatch_sync(v3, block);
  v4 = +[UIKBTouchState touchStateForTouchUUID:withTimestamp:phase:location:pathIndex:inView:](UIKBTouchState, "touchStateForTouchUUID:withTimestamp:phase:location:pathIndex:inView:", *(a1 + 40), 0, [v44[5] pathIndex], *(a1 + 32), *(a1 + 64), *(a1 + 72), *(a1 + 80));
  *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 32) queryShouldNeverIgnoreTouchStateWithIdentifier:*(a1 + 40) touchState:v4 startPoint:2 forRestingState:{*(a1 + 88), *(a1 + 96)}];
  if (*(*(*(a1 + 56) + 8) + 24) == 1)
  {
    v34 = 0;
    v35 = &v34;
    v36 = 0x3032000000;
    v37 = __Block_byref_object_copy__278;
    v38 = __Block_byref_object_dispose__279;
    v39 = 0;
    objc_initWeak(&location, *(a1 + 32));
    if (qword_1ED4972E0 != -1)
    {
      dispatch_once(&qword_1ED4972E0, &__block_literal_global_282_0);
    }

    v5 = [*(a1 + 32) taskQueue];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __109__UIKeyboardLayout_recognizer_restartTouchDownForTouchWithId_startingAt_atPoint_currentPoint_whenStateReady___block_invoke_3;
    v27[3] = &unk_1E7117028;
    v29 = &v43;
    objc_copyWeak(&v30, &location);
    v28 = *(a1 + 40);
    v31 = *(a1 + 72);
    v32 = *(a1 + 64);
    [v5 addTask:v27 breadcrumb:qword_1ED4972D8];

    objc_destroyWeak(&v30);
    v6 = +[UIKBTouchState touchStateForTouchUUID:withTimestamp:phase:location:pathIndex:inView:](UIKBTouchState, "touchStateForTouchUUID:withTimestamp:phase:location:pathIndex:inView:", *(a1 + 40), 0, [v44[5] pathIndex], *(a1 + 32), *(a1 + 64), *(a1 + 72), *(a1 + 80));
    if (qword_1ED4972F0 != -1)
    {
      dispatch_once(&qword_1ED4972F0, &__block_literal_global_289_0);
    }

    v7 = [*(a1 + 32) taskQueue];
    v8 = [*(a1 + 32) touchDownTaskForTouchState:v6];
    [v7 addTask:v8 breadcrumb:qword_1ED4972E8];

    if (v35[5])
    {
      if (qword_1ED497300 != -1)
      {
        dispatch_once(&qword_1ED497300, &__block_literal_global_295_0);
      }

      v9 = [*(a1 + 32) taskQueue];
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __109__UIKeyboardLayout_recognizer_restartTouchDownForTouchWithId_startingAt_atPoint_currentPoint_whenStateReady___block_invoke_8;
      v26[3] = &unk_1E70FD950;
      v26[4] = &v34;
      [v9 addTask:v26 breadcrumb:qword_1ED4972F8];
    }

    v10 = +[UIKBTouchState touchStateForTouchUUID:withTimestamp:phase:location:pathIndex:inView:](UIKBTouchState, "touchStateForTouchUUID:withTimestamp:phase:location:pathIndex:inView:", *(a1 + 40), 1, [v44[5] pathIndex], *(a1 + 32), *(a1 + 64), *(a1 + 88), *(a1 + 96));

    if (qword_1ED497310 != -1)
    {
      dispatch_once(&qword_1ED497310, &__block_literal_global_301);
    }

    v11 = [*(a1 + 32) taskQueue];
    v12 = [*(a1 + 32) touchDraggedTaskForTouchState:v10];
    [v11 addTask:v12 breadcrumb:qword_1ED497308];

    v13 = *(a1 + 32);
    v14 = [MEMORY[0x1E695DFD8] setWithObject:*(a1 + 40)];
    [v13 _enumerateDeferredTouchUUIDs:v14 withBlock:0];

    v15 = +[UIKBTouchState touchStateForTouchUUID:withTimestamp:phase:location:pathIndex:inView:](UIKBTouchState, "touchStateForTouchUUID:withTimestamp:phase:location:pathIndex:inView:", *(a1 + 40), 3, [v44[5] pathIndex], *(a1 + 32), CFAbsoluteTimeGetCurrent() + *&sSystemUptimeFromAbsoluteTimeDiff, *(a1 + 88), *(a1 + 96));

    v16 = v44[5];
    v17 = [*(a1 + 32) touchUpTaskForTouchState:v15];
    v18 = [UIKBTouchStateTask touchStateTaskForTouchState:v15 andTask:v17];
    [v16 addTask:v18];

    objc_destroyWeak(&location);
    _Block_object_dispose(&v34, 8);
  }

  if (qword_1ED497320 != -1)
  {
    dispatch_once(&qword_1ED497320, &__block_literal_global_307);
  }

  v19 = [*(a1 + 32) taskQueue];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __109__UIKeyboardLayout_recognizer_restartTouchDownForTouchWithId_startingAt_atPoint_currentPoint_whenStateReady___block_invoke_13;
  v22[3] = &unk_1E7116FD8;
  v24 = *(a1 + 48);
  v20 = *(a1 + 40);
  v21 = *(a1 + 56);
  v23 = v20;
  v25 = v21;
  [v19 addTask:v22 breadcrumb:qword_1ED497318];

  _Block_object_dispose(&v43, 8);
}

void __109__UIKeyboardLayout_recognizer_restartTouchDownForTouchWithId_startingAt_atPoint_currentPoint_whenStateReady___block_invoke_2(void *a1)
{
  v2 = [*(a1[4] + 608) objectForKey:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __109__UIKeyboardLayout_recognizer_restartTouchDownForTouchWithId_startingAt_atPoint_currentPoint_whenStateReady___block_invoke_280()
{
  v0 = [&__block_literal_global_285_1 copy];
  v1 = qword_1ED4972D8;
  qword_1ED4972D8 = v0;
}

void __109__UIKeyboardLayout_recognizer_restartTouchDownForTouchWithId_startingAt_atPoint_currentPoint_whenStateReady___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(*(*(a1 + 40) + 8) + 40);
  v4 = a2;
  [v3 ignoredOnBegin];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained[54] addObject:*(a1 + 32)];
  [WeakRetained[78] removeObject:*(a1 + 32)];
  [WeakRetained handRestRecognizerNotifyRestForBegin:0 location:objc_msgSend(*(*(*(a1 + 40) + 8) + 40) timestamp:"pathIndex") pathIndex:*(a1 + 32) touchUUID:v4 context:{*(a1 + 56), *(a1 + 64), *(a1 + 72)}];
}

void __109__UIKeyboardLayout_recognizer_restartTouchDownForTouchWithId_startingAt_atPoint_currentPoint_whenStateReady___block_invoke_4()
{
  v0 = [&__block_literal_global_291_2 copy];
  v1 = qword_1ED4972E8;
  qword_1ED4972E8 = v0;
}

void __109__UIKeyboardLayout_recognizer_restartTouchDownForTouchWithId_startingAt_atPoint_currentPoint_whenStateReady___block_invoke_6()
{
  v0 = [&__block_literal_global_297_0 copy];
  v1 = qword_1ED4972F8;
  qword_1ED4972F8 = v0;
}

void __109__UIKeyboardLayout_recognizer_restartTouchDownForTouchWithId_startingAt_atPoint_currentPoint_whenStateReady___block_invoke_8(uint64_t a1, void *a2)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  v3 = *(v2 + 16);
  v4 = a2;
  v3(v2);
  [v4 returnExecutionToParent];
}

void __109__UIKeyboardLayout_recognizer_restartTouchDownForTouchWithId_startingAt_atPoint_currentPoint_whenStateReady___block_invoke_9()
{
  v0 = [&__block_literal_global_303_1 copy];
  v1 = qword_1ED497308;
  qword_1ED497308 = v0;
}

void __109__UIKeyboardLayout_recognizer_restartTouchDownForTouchWithId_startingAt_atPoint_currentPoint_whenStateReady___block_invoke_11()
{
  v0 = [&__block_literal_global_309_0 copy];
  v1 = qword_1ED497318;
  qword_1ED497318 = v0;
}

void __109__UIKeyboardLayout_recognizer_restartTouchDownForTouchWithId_startingAt_atPoint_currentPoint_whenStateReady___block_invoke_13(void *a1, void *a2)
{
  v3 = a1[4];
  v2 = a1[5];
  v4 = *(*(a1[6] + 8) + 24);
  v5 = *(v2 + 16);
  v6 = a2;
  v5(v2, v3, v4);
  [v6 returnExecutionToParent];
}

- (void)recognizer:(id)a3 shouldContinueTrackingTouchWithId:(id)a4 startingAt:(double)a5 atPoint:(CGPoint)a6 currentPoint:(CGPoint)a7 forContinueState:(unint64_t)a8 whenStateReady:(id)a9
{
  y = a6.y;
  x = a6.x;
  v15 = a4;
  v16 = a9;
  v17 = a3;
  v18 = [(UIKeyboardLayout *)self handRestRecognizer];

  if (v18 == v17)
  {
    if (a8 == 3)
    {
      v16[2](v16, v15, [v15 isEqual:self->_shiftKeyTouchUUID]);
    }

    else
    {
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __129__UIKeyboardLayout_recognizer_shouldContinueTrackingTouchWithId_startingAt_atPoint_currentPoint_forContinueState_whenStateReady___block_invoke;
      v19[3] = &unk_1E71170C8;
      v19[4] = self;
      v20 = v15;
      v22 = a8;
      v23 = x;
      v24 = y;
      v21 = v16;
      dispatch_sync(MEMORY[0x1E69E96A0], v19);
    }
  }

  else
  {
    v16[2](v16, v15, 0);
  }
}

void __129__UIKeyboardLayout_recognizer_shouldContinueTrackingTouchWithId_startingAt_atPoint_currentPoint_forContinueState_whenStateReady___block_invoke(uint64_t a1)
{
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__134;
  v29 = __Block_byref_object_dispose__134;
  v30 = 0;
  v2 = *(a1 + 32);
  v3 = *(v2 + 616);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __129__UIKeyboardLayout_recognizer_shouldContinueTrackingTouchWithId_startingAt_atPoint_currentPoint_forContinueState_whenStateReady___block_invoke_2;
  block[3] = &unk_1E70FB728;
  v24 = &v25;
  block[4] = v2;
  v23 = *(a1 + 40);
  dispatch_sync(v3, block);
  v4 = *(a1 + 56);
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = [v26[5] firstTouchStateForUITouchPhase:1];
    if (v5)
    {
      v6 = *(a1 + 32);
      v7 = [MEMORY[0x1E695DFD8] setWithObject:*(a1 + 40)];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __129__UIKeyboardLayout_recognizer_shouldContinueTrackingTouchWithId_startingAt_atPoint_currentPoint_forContinueState_whenStateReady___block_invoke_3;
      v19[3] = &unk_1E7117078;
      v5 = v5;
      v8 = *(a1 + 32);
      v20 = v5;
      v21 = v8;
      [v6 _enumerateDeferredTouchUUIDs:v7 withBlock:v19];
    }
  }

  objc_initWeak(&location, *(a1 + 32));
  if (qword_1ED497340 != -1)
  {
    dispatch_once(&qword_1ED497340, &__block_literal_global_315_0);
  }

  v9 = [*(a1 + 32) taskQueue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __129__UIKeyboardLayout_recognizer_shouldContinueTrackingTouchWithId_startingAt_atPoint_currentPoint_forContinueState_whenStateReady___block_invoke_8;
  v11[3] = &unk_1E71170A0;
  objc_copyWeak(&v15, &location);
  v12 = *(a1 + 40);
  v10 = v5;
  v13 = v10;
  v16 = *(a1 + 64);
  v17 = v4;
  v14 = *(a1 + 48);
  [v9 addTask:v11 breadcrumb:qword_1ED497338];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);

  _Block_object_dispose(&v25, 8);
}

void __129__UIKeyboardLayout_recognizer_shouldContinueTrackingTouchWithId_startingAt_atPoint_currentPoint_forContinueState_whenStateReady___block_invoke_2(void *a1)
{
  v2 = [*(a1[4] + 608) objectForKey:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __129__UIKeyboardLayout_recognizer_shouldContinueTrackingTouchWithId_startingAt_atPoint_currentPoint_forContinueState_whenStateReady___block_invoke_3(uint64_t a1, void *a2, void *a3, BOOL *a4)
{
  v10 = a2;
  v7 = a3;
  v8 = *(a1 + 32);
  *a4 = v8 != v10;
  if (v8 == v10)
  {
    if (qword_1ED497330 != -1)
    {
      dispatch_once(&qword_1ED497330, &__block_literal_global_311);
    }

    v9 = [*(a1 + 40) taskQueue];
    [v9 addTask:v7 breadcrumb:qword_1ED497328];
  }
}

void __129__UIKeyboardLayout_recognizer_shouldContinueTrackingTouchWithId_startingAt_atPoint_currentPoint_forContinueState_whenStateReady___block_invoke_4()
{
  v0 = [&__block_literal_global_313 copy];
  v1 = qword_1ED497328;
  qword_1ED497328 = v0;
}

void __129__UIKeyboardLayout_recognizer_shouldContinueTrackingTouchWithId_startingAt_atPoint_currentPoint_forContinueState_whenStateReady___block_invoke_6()
{
  v0 = [&__block_literal_global_317_1 copy];
  v1 = qword_1ED497338;
  qword_1ED497338 = v0;
}

void __129__UIKeyboardLayout_recognizer_shouldContinueTrackingTouchWithId_startingAt_atPoint_currentPoint_forContinueState_whenStateReady___block_invoke_8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained queryShouldNeverIgnoreTouchStateWithIdentifier:*(a1 + 32) touchState:*(a1 + 40) startPoint:*(a1 + 80) forRestingState:{*(a1 + 64), *(a1 + 72)}];
  (*(*(a1 + 48) + 16))();
  v4 = [v3 info];
  [v3 returnExecutionToParentWithInfo:v4];
}

- (BOOL)queryShouldNeverIgnoreTouchStateWithIdentifier:(id)a3 touchState:(id)a4 startPoint:(CGPoint)a5 forRestingState:(unint64_t)a6
{
  y = a5.y;
  x = a5.x;
  v11 = a3;
  v12 = a4;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__134;
  v34 = __Block_byref_object_dispose__134;
  v35 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__134;
  v28 = __Block_byref_object_dispose__134;
  v29 = 0;
  deferredTouchTaskListsQueue = self->_deferredTouchTaskListsQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __105__UIKeyboardLayout_queryShouldNeverIgnoreTouchStateWithIdentifier_touchState_startPoint_forRestingState___block_invoke;
  block[3] = &unk_1E7117118;
  v21 = &v30;
  block[4] = self;
  v14 = v11;
  v22 = &v24;
  v23 = a6;
  v20 = v14;
  dispatch_sync(deferredTouchTaskListsQueue, block);
  v15 = [v31[5] currentTouchPoint];
  [v15 CGPointValue];
  LOBYTE(a6) = [(UIKeyboardLayout *)self handRestRecognizerShouldNeverIgnoreTouchState:v12 fromPoint:a6 toPoint:v25[5] forRestingState:x otherRestedTouchLocations:y, v16, v17];

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v30, 8);

  return a6;
}

void __105__UIKeyboardLayout_queryShouldNeverIgnoreTouchStateWithIdentifier_touchState_startPoint_forRestingState___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 608) objectForKey:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (*(a1 + 64) == 1)
  {
    v5 = [*(*(a1 + 32) + 608) allValues];
    v13 = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = __105__UIKeyboardLayout_queryShouldNeverIgnoreTouchStateWithIdentifier_touchState_startPoint_forRestingState___block_invoke_2;
    v16 = &unk_1E71170F0;
    v6 = *(a1 + 40);
    v7 = *(a1 + 32);
    v17 = v6;
    v18 = v7;
    v8 = [v5 indexesOfObjectsPassingTest:&v13];
    v9 = [v5 objectsAtIndexes:{v8, v13, v14, v15, v16}];

    if ([v9 count])
    {
      v10 = [v9 valueForKey:@"currentTouchPoint"];
      v11 = *(*(a1 + 56) + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = v10;
    }
  }
}

uint64_t __105__UIKeyboardLayout_queryShouldNeverIgnoreTouchStateWithIdentifier_touchState_startPoint_forRestingState___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 touchUUID];
  if ([v4 isEqual:*(a1 + 32)])
  {
    v5 = 0;
  }

  else
  {
    v6 = [v3 currentTouchPoint];
    if (v6)
    {
      v7 = *(*(a1 + 40) + 624);
      v8 = [v3 touchUUID];
      v5 = [v7 containsObject:v8];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (void)recognizer:(id)a3 willIgnoreTouchWithId:(id)a4 startingAt:(double)a5 atPoint:(CGPoint)a6 currentPoint:(CGPoint)a7 whenReady:(id)a8
{
  y = a7.y;
  x = a7.x;
  v13 = a4;
  v14 = a8;
  v15 = a3;
  v16 = [(UIKeyboardLayout *)self handRestRecognizer];

  if (v16 == v15)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __95__UIKeyboardLayout_recognizer_willIgnoreTouchWithId_startingAt_atPoint_currentPoint_whenReady___block_invoke;
    block[3] = &unk_1E70F8FA8;
    block[4] = self;
    v18 = v13;
    v20 = x;
    v21 = y;
    v19 = v14;
    dispatch_sync(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    (*(v14 + 2))(v14, v13);
  }
}

void __95__UIKeyboardLayout_recognizer_willIgnoreTouchWithId_startingAt_atPoint_currentPoint_whenReady___block_invoke(uint64_t a1)
{
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v3 + 616);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __95__UIKeyboardLayout_recognizer_willIgnoreTouchWithId_startingAt_atPoint_currentPoint_whenReady___block_invoke_2;
  block[3] = &unk_1E70FEE78;
  block[4] = v3;
  v30 = v2;
  v31 = &v32;
  dispatch_sync(v4, block);
  if ([*(*(a1 + 32) + 624) containsObject:*(a1 + 40)])
  {
    if (qword_1ED497360 != -1)
    {
      dispatch_once(&qword_1ED497360, &__block_literal_global_329_1);
    }

    v5 = [*(a1 + 32) taskQueue];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __95__UIKeyboardLayout_recognizer_willIgnoreTouchWithId_startingAt_atPoint_currentPoint_whenReady___block_invoke_11;
    v12[3] = &unk_1E70FD768;
    v14 = *(a1 + 48);
    v13 = *(a1 + 40);
    [v5 addTask:v12 breadcrumb:qword_1ED497358];
  }

  else
  {
    objc_initWeak(&location, *(a1 + 32));
    v24 = 0;
    v25 = &v24;
    v26 = 0x2020000000;
    v27 = CFAbsoluteTimeGetCurrent() + *&sSystemUptimeFromAbsoluteTimeDiff;
    v6 = *(a1 + 32);
    v7 = [MEMORY[0x1E695DFD8] setWithObject:*(a1 + 40)];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __95__UIKeyboardLayout_recognizer_willIgnoreTouchWithId_startingAt_atPoint_currentPoint_whenReady___block_invoke_3;
    v23[3] = &unk_1E7117140;
    v23[4] = &v24;
    [v6 _enumerateDeferredTouchUUIDs:v7 withBlock:v23];

    v8 = [UIKBTouchState touchStateForTouchUUID:*(a1 + 40) withTimestamp:4 phase:*(v33 + 24) location:*(a1 + 32) pathIndex:v25[3] inView:*(a1 + 56), *(a1 + 64)];
    v9 = [*(a1 + 32) touchCancelledTaskForTouchState:v8 forResting:1];
    if (qword_1ED497350 != -1)
    {
      dispatch_once(&qword_1ED497350, &__block_literal_global_323_0);
    }

    v10 = [*(a1 + 32) taskQueue];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __95__UIKeyboardLayout_recognizer_willIgnoreTouchWithId_startingAt_atPoint_currentPoint_whenReady___block_invoke_6;
    v15[3] = &unk_1E71171B8;
    v11 = v9;
    v17 = v11;
    objc_copyWeak(&v21, &location);
    v22 = *(a1 + 56);
    v19 = &v24;
    v20 = &v32;
    v16 = *(a1 + 40);
    v18 = *(a1 + 48);
    [v10 addTask:v15 breadcrumb:qword_1ED497348];

    objc_destroyWeak(&v21);
    _Block_object_dispose(&v24, 8);
    objc_destroyWeak(&location);
  }

  _Block_object_dispose(&v32, 8);
}

void __95__UIKeyboardLayout_recognizer_willIgnoreTouchWithId_startingAt_atPoint_currentPoint_whenReady___block_invoke_2(void *a1)
{
  v2 = [*(a1[4] + 608) objectForKey:a1[5]];
  *(*(a1[6] + 8) + 24) = [v2 pathIndex];
}

uint64_t __95__UIKeyboardLayout_recognizer_willIgnoreTouchWithId_startingAt_atPoint_currentPoint_whenReady___block_invoke_3(uint64_t a1, void *a2)
{
  result = [a2 timestamp];
  *(*(*(a1 + 32) + 8) + 24) = v4;
  return result;
}

void __95__UIKeyboardLayout_recognizer_willIgnoreTouchWithId_startingAt_atPoint_currentPoint_whenReady___block_invoke_4()
{
  v0 = [&__block_literal_global_325_2 copy];
  v1 = qword_1ED497348;
  qword_1ED497348 = v0;
}

void __95__UIKeyboardLayout_recognizer_willIgnoreTouchWithId_startingAt_atPoint_currentPoint_whenReady___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __95__UIKeyboardLayout_recognizer_willIgnoreTouchWithId_startingAt_atPoint_currentPoint_whenReady___block_invoke_7;
  v6[3] = &unk_1E7117190;
  objc_copyWeak(&v10, (a1 + 72));
  v11 = *(a1 + 80);
  v9 = *(a1 + 56);
  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  v5 = [v3 childWithContinuation:v6];
  (*(v4 + 16))(v4, v5);

  objc_destroyWeak(&v10);
}

void __95__UIKeyboardLayout_recognizer_willIgnoreTouchWithId_startingAt_atPoint_currentPoint_whenReady___block_invoke_7(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v5 = *(*(*(a1 + 48) + 8) + 24);
  v6 = *(*(*(a1 + 56) + 8) + 24);
  v7 = *(a1 + 32);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __95__UIKeyboardLayout_recognizer_willIgnoreTouchWithId_startingAt_atPoint_currentPoint_whenReady___block_invoke_8;
  v10[3] = &unk_1E7117168;
  v10[4] = WeakRetained;
  v8 = v7;
  v11 = v8;
  v12 = *(a1 + 40);
  v9 = [v3 childWithContinuation:v10];

  [WeakRetained handRestRecognizerNotifyRestForBegin:1 location:v6 timestamp:v8 pathIndex:v9 touchUUID:*(a1 + 72) context:{*(a1 + 80), v5}];
}

void __95__UIKeyboardLayout_recognizer_willIgnoreTouchWithId_startingAt_atPoint_currentPoint_whenReady___block_invoke_8(void *a1, void *a2)
{
  v3 = a1[5];
  v4 = *(a1[4] + 624);
  v5 = a2;
  [v4 addObject:v3];
  (*(a1[6] + 16))();
  [v5 returnExecutionToParent];
}

void __95__UIKeyboardLayout_recognizer_willIgnoreTouchWithId_startingAt_atPoint_currentPoint_whenReady___block_invoke_9()
{
  v0 = [&__block_literal_global_331_2 copy];
  v1 = qword_1ED497358;
  qword_1ED497358 = v0;
}

void __95__UIKeyboardLayout_recognizer_willIgnoreTouchWithId_startingAt_atPoint_currentPoint_whenReady___block_invoke_11(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v2 + 16);
  v5 = a2;
  v4(v2, v3);
  [v5 returnExecutionToParent];
}

- (void)recognizer:(id)a3 continueTrackingIgnoredTouchWithId:(id)a4 currentPoint:(CGPoint)a5 whenReady:(id)a6
{
  v9 = a4;
  v10 = a6;
  v11 = a3;
  v12 = [(UIKeyboardLayout *)self handRestRecognizer];

  if (v12 == v11)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __89__UIKeyboardLayout_recognizer_continueTrackingIgnoredTouchWithId_currentPoint_whenReady___block_invoke;
    block[3] = &unk_1E70FCE28;
    block[4] = self;
    v14 = v9;
    v15 = v10;
    dispatch_sync(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    (*(v10 + 2))(v10, v9);
  }
}

void __89__UIKeyboardLayout_recognizer_continueTrackingIgnoredTouchWithId_currentPoint_whenReady___block_invoke(id *a1)
{
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__134;
  v27 = __Block_byref_object_dispose__134;
  v28 = 0;
  v2 = a1[4];
  v3 = *(v2 + 77);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __89__UIKeyboardLayout_recognizer_continueTrackingIgnoredTouchWithId_currentPoint_whenReady___block_invoke_2;
  block[3] = &unk_1E70FB728;
  v22 = &v23;
  block[4] = v2;
  v21 = a1[5];
  dispatch_sync(v3, block);
  v4 = [v24[5] firstTouchStateForUITouchPhase:1];
  if (v4)
  {
    v5 = a1[4];
    v6 = [MEMORY[0x1E695DFD8] setWithObject:a1[5]];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __89__UIKeyboardLayout_recognizer_continueTrackingIgnoredTouchWithId_currentPoint_whenReady___block_invoke_3;
    v16[3] = &unk_1E7117208;
    v7 = v4;
    v8 = a1[4];
    v9 = a1[5];
    v17[0] = v7;
    v17[1] = v8;
    v18 = v9;
    v19 = a1[6];
    [v5 _enumerateDeferredTouchUUIDs:v6 withBlock:v16];
    v10 = v17;

    v11 = v18;
  }

  else
  {
    if (qword_1ED497380 != -1)
    {
      dispatch_once(&qword_1ED497380, &__block_literal_global_337_0);
    }

    v12 = [a1[4] taskQueue];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __89__UIKeyboardLayout_recognizer_continueTrackingIgnoredTouchWithId_currentPoint_whenReady___block_invoke_10;
    v13[3] = &unk_1E70FD768;
    v15 = a1[6];
    v14 = a1[5];
    [v12 addTask:v13 breadcrumb:qword_1ED497378];
    v10 = &v15;

    v11 = v14;
  }

  _Block_object_dispose(&v23, 8);
}

void __89__UIKeyboardLayout_recognizer_continueTrackingIgnoredTouchWithId_currentPoint_whenReady___block_invoke_2(void *a1)
{
  v2 = [*(a1[4] + 608) objectForKey:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __89__UIKeyboardLayout_recognizer_continueTrackingIgnoredTouchWithId_currentPoint_whenReady___block_invoke_3(uint64_t a1, void *a2, void *a3, BOOL *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = *(a1 + 32);
  *a4 = v9 != v7;
  if (v9 == v7)
  {
    objc_initWeak(&location, *(a1 + 40));
    if (qword_1ED497370 != -1)
    {
      dispatch_once(&qword_1ED497370, &__block_literal_global_333_2);
    }

    v10 = [*(a1 + 40) taskQueue];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __89__UIKeyboardLayout_recognizer_continueTrackingIgnoredTouchWithId_currentPoint_whenReady___block_invoke_6;
    v11[3] = &unk_1E71171E0;
    objc_copyWeak(&v15, &location);
    v12 = *(a1 + 48);
    v13 = v8;
    v14 = *(a1 + 56);
    [v10 addTask:v11 breadcrumb:qword_1ED497368];

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }
}

void __89__UIKeyboardLayout_recognizer_continueTrackingIgnoredTouchWithId_currentPoint_whenReady___block_invoke_4()
{
  v0 = [&__block_literal_global_335_1 copy];
  v1 = qword_1ED497368;
  qword_1ED497368 = v0;
}

void __89__UIKeyboardLayout_recognizer_continueTrackingIgnoredTouchWithId_currentPoint_whenReady___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained[54] addObject:*(a1 + 32)];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __89__UIKeyboardLayout_recognizer_continueTrackingIgnoredTouchWithId_currentPoint_whenReady___block_invoke_7;
  v7[3] = &unk_1E7117168;
  v7[4] = WeakRetained;
  v5 = *(a1 + 40);
  v8 = *(a1 + 32);
  v9 = *(a1 + 48);
  v6 = [v3 childWithContinuation:v7];

  (*(v5 + 16))(v5, v6);
}

void __89__UIKeyboardLayout_recognizer_continueTrackingIgnoredTouchWithId_currentPoint_whenReady___block_invoke_7(void *a1, void *a2)
{
  v3 = a1[5];
  v4 = *(a1[4] + 432);
  v5 = a2;
  [v4 removeObject:v3];
  (*(a1[6] + 16))();
  [v5 returnExecutionToParent];
}

void __89__UIKeyboardLayout_recognizer_continueTrackingIgnoredTouchWithId_currentPoint_whenReady___block_invoke_8()
{
  v0 = [&__block_literal_global_339_2 copy];
  v1 = qword_1ED497378;
  qword_1ED497378 = v0;
}

void __89__UIKeyboardLayout_recognizer_continueTrackingIgnoredTouchWithId_currentPoint_whenReady___block_invoke_10(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v2 + 16);
  v5 = a2;
  v4(v2, v3);
  [v5 returnExecutionToParent];
}

- (void)recognizer:(id)a3 releaseTouchToLayoutWithId:(id)a4 startPoint:(CGPoint)a5 endPoint:(CGPoint)a6 whenReady:(id)a7
{
  y = a6.y;
  x = a6.x;
  v10 = a5.y;
  v11 = a5.x;
  v13 = a4;
  v14 = a7;
  [(UIKeyboardLayout *)self recognizerBlockUntilTaskQueueReadyForceUsingDeferredTask:0];
  v15 = [v14 copy];

  v16 = v13;
  v17 = self->_deferredTouchTaskListsQueue;
  v18 = self->_touchIgnoredUUIDSet;
  v19 = self->_deferredTouchTaskLists;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __88__UIKeyboardLayout_recognizer_releaseTouchToLayoutWithId_startPoint_endPoint_whenReady___block_invoke;
  block[3] = &unk_1E7117280;
  v26 = v17;
  v27 = self;
  v33 = v11;
  v34 = v10;
  v35 = x;
  v36 = y;
  v28 = v16;
  v29 = v18;
  v30 = v16;
  v31 = v19;
  v32 = v15;
  v20 = v17;
  v21 = v18;
  v22 = v19;
  v23 = v15;
  v24 = v16;
  dispatch_sync(MEMORY[0x1E69E96A0], block);
}

void __88__UIKeyboardLayout_recognizer_releaseTouchToLayoutWithId_startPoint_endPoint_whenReady___block_invoke(uint64_t a1)
{
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy__134;
  v40 = __Block_byref_object_dispose__134;
  v41 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __88__UIKeyboardLayout_recognizer_releaseTouchToLayoutWithId_startPoint_endPoint_whenReady___block_invoke_2;
  block[3] = &unk_1E70FB728;
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(a1 + 48);
  v35 = &v36;
  block[4] = v2;
  v34 = v4;
  dispatch_sync(v3, block);
  if ([*(*(a1 + 40) + 624) containsObject:*(a1 + 48)])
  {
    [*(*(a1 + 40) + 624) removeObject:*(a1 + 48)];
    if (([*(*(a1 + 40) + 432) containsObject:*(a1 + 48)] & 1) == 0)
    {
      [*(*(a1 + 40) + 432) addObject:*(a1 + 48)];
      v5 = *(a1 + 48);
      [v37[5] originalStartTime];
      v7 = +[UIKBTouchState touchStateForTouchUUID:withTimestamp:phase:location:pathIndex:inView:](UIKBTouchState, "touchStateForTouchUUID:withTimestamp:phase:location:pathIndex:inView:", v5, 0, [v37[5] pathIndex], *(a1 + 40), v6, *(a1 + 88), *(a1 + 96));
      if (qword_1ED497390 != -1)
      {
        dispatch_once(&qword_1ED497390, &__block_literal_global_341_0);
      }

      v8 = [*(a1 + 40) taskQueue];
      v9 = [*(a1 + 40) touchDownTaskForTouchState:v7];
      [v8 addTask:v9 breadcrumb:qword_1ED497388];

      v10 = *(a1 + 48);
      [v37[5] originalStartTime];
      v12 = +[UIKBTouchState touchStateForTouchUUID:withTimestamp:phase:location:pathIndex:inView:](UIKBTouchState, "touchStateForTouchUUID:withTimestamp:phase:location:pathIndex:inView:", v10, 1, [v37[5] pathIndex], *(a1 + 40), v11, *(a1 + 104), *(a1 + 112));

      if (qword_1ED4973A0 != -1)
      {
        dispatch_once(&qword_1ED4973A0, &__block_literal_global_347_1);
      }

      v13 = [*(a1 + 40) taskQueue];
      v14 = [*(a1 + 40) touchDraggedTaskForTouchState:v12];
      [v13 addTask:v14 breadcrumb:qword_1ED497398];
    }

    v15 = [v37[5] firstTouchStateForUITouchPhase:3];

    if (!v15)
    {
      v16 = +[UIKBTouchState touchStateForTouchUUID:withTimestamp:phase:location:pathIndex:inView:](UIKBTouchState, "touchStateForTouchUUID:withTimestamp:phase:location:pathIndex:inView:", *(a1 + 48), 3, [v37[5] pathIndex], *(a1 + 40), CFAbsoluteTimeGetCurrent() + *&sSystemUptimeFromAbsoluteTimeDiff, *(a1 + 104), *(a1 + 112));
      v17 = v37[5];
      v18 = [*(a1 + 40) touchUpTaskForTouchState:v16];
      v19 = [UIKBTouchStateTask touchStateTaskForTouchState:v16 andTask:v18];
      [v17 addTask:v19];
    }
  }

  v20 = [*(*(a1 + 40) + 432) indexOfObject:*(a1 + 48)];
  if (v20 != 0x7FFFFFFFFFFFFFFFLL && v20 + 1 != [*(*(a1 + 40) + 432) count])
  {
    v21 = *(*(a1 + 40) + 432);
    v22 = [v21 objectAtIndex:v20];
    [v21 addObject:v22];

    [*(*(a1 + 40) + 432) removeObjectAtIndex:v20];
  }

  v23 = *(a1 + 40);
  v24 = [MEMORY[0x1E695DFD8] setWithObject:*(a1 + 48)];
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __88__UIKeyboardLayout_recognizer_releaseTouchToLayoutWithId_startPoint_endPoint_whenReady___block_invoke_7;
  v32[3] = &unk_1E7117230;
  v32[4] = *(a1 + 40);
  [v23 _enumerateDeferredTouchUUIDs:v24 withBlock:v32];

  if (qword_1ED4973C0 != -1)
  {
    dispatch_once(&qword_1ED4973C0, &__block_literal_global_357);
  }

  v25 = [*(a1 + 40) taskQueue];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __88__UIKeyboardLayout_recognizer_releaseTouchToLayoutWithId_startPoint_endPoint_whenReady___block_invoke_12;
  v26[3] = &unk_1E7117258;
  v27 = *(a1 + 56);
  v28 = *(a1 + 64);
  v29 = *(a1 + 32);
  v30 = *(a1 + 72);
  v31 = *(a1 + 80);
  [v25 addTask:v26 breadcrumb:qword_1ED4973B8];

  _Block_object_dispose(&v36, 8);
}

void __88__UIKeyboardLayout_recognizer_releaseTouchToLayoutWithId_startPoint_endPoint_whenReady___block_invoke_2(void *a1)
{
  v2 = [*(a1[4] + 608) objectForKey:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __88__UIKeyboardLayout_recognizer_releaseTouchToLayoutWithId_startPoint_endPoint_whenReady___block_invoke_3()
{
  v0 = [&__block_literal_global_343_1 copy];
  v1 = qword_1ED497388;
  qword_1ED497388 = v0;
}

void __88__UIKeyboardLayout_recognizer_releaseTouchToLayoutWithId_startPoint_endPoint_whenReady___block_invoke_5()
{
  v0 = [&__block_literal_global_349_0 copy];
  v1 = qword_1ED497398;
  qword_1ED497398 = v0;
}

void __88__UIKeyboardLayout_recognizer_releaseTouchToLayoutWithId_startPoint_endPoint_whenReady___block_invoke_7(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = qword_1ED4973B0;
  v5 = a3;
  if (v4 != -1)
  {
    dispatch_once(&qword_1ED4973B0, &__block_literal_global_351_3);
  }

  v6 = [*(a1 + 32) taskQueue];
  [v6 addTask:v5 breadcrumb:qword_1ED4973A8];
}

void __88__UIKeyboardLayout_recognizer_releaseTouchToLayoutWithId_startPoint_endPoint_whenReady___block_invoke_8()
{
  v0 = [&__block_literal_global_353_1 copy];
  v1 = qword_1ED4973A8;
  qword_1ED4973A8 = v0;
}

void __88__UIKeyboardLayout_recognizer_releaseTouchToLayoutWithId_startPoint_endPoint_whenReady___block_invoke_10()
{
  v0 = [&__block_literal_global_359_0 copy];
  v1 = qword_1ED4973B8;
  qword_1ED4973B8 = v0;
}

void __88__UIKeyboardLayout_recognizer_releaseTouchToLayoutWithId_startPoint_endPoint_whenReady___block_invoke_12(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  [v3 removeObject:v4];
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __88__UIKeyboardLayout_recognizer_releaseTouchToLayoutWithId_startPoint_endPoint_whenReady___block_invoke_13;
  v12 = &unk_1E70F35B8;
  v6 = *(a1 + 48);
  v13 = *(a1 + 56);
  v14 = *(a1 + 40);
  dispatch_sync(v6, &v9);
  (*(*(a1 + 64) + 16))(*(a1 + 64), *(a1 + 40), v7, v8);
  [v5 returnExecutionToParent];
}

- (void)recognizer:(id)a3 cancelTouchOnLayoutWithId:(id)a4 startPoint:(CGPoint)a5 endPoint:(CGPoint)a6 whenReady:(id)a7
{
  v9 = a4;
  v10 = a7;
  [(UIKeyboardLayout *)self recognizerBlockUntilTaskQueueReadyForceUsingDeferredTask:0];
  v11 = self->_deferredTouchTaskListsQueue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __87__UIKeyboardLayout_recognizer_cancelTouchOnLayoutWithId_startPoint_endPoint_whenReady___block_invoke;
  v15[3] = &unk_1E70F5F08;
  v16 = v11;
  v17 = self;
  v18 = v9;
  v19 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v11;
  dispatch_sync(MEMORY[0x1E69E96A0], v15);
}

void __87__UIKeyboardLayout_recognizer_cancelTouchOnLayoutWithId_startPoint_endPoint_whenReady___block_invoke(id *a1)
{
  v49 = 0;
  v50 = &v49;
  v51 = 0x3032000000;
  v52 = __Block_byref_object_copy__134;
  v53 = __Block_byref_object_dispose__134;
  v54 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __87__UIKeyboardLayout_recognizer_cancelTouchOnLayoutWithId_startPoint_endPoint_whenReady___block_invoke_2;
  block[3] = &unk_1E70FB728;
  v3 = a1[4];
  v2 = a1[5];
  v4 = a1[6];
  v48 = &v49;
  block[4] = v2;
  v47 = v4;
  dispatch_sync(v3, block);
  v5 = [*(a1[5] + 54) containsObject:a1[6]];
  v6 = a1[5];
  if (v5)
  {
    v7 = [v6[54] indexOfObject:a1[6]];
    if (v7 != 0x7FFFFFFFFFFFFFFFLL && v7 + 1 != [*(a1[5] + 54) count])
    {
      v8 = *(a1[5] + 54);
      v9 = [v8 objectAtIndex:v7];
      [v8 addObject:v9];

      [*(a1[5] + 54) removeObjectAtIndex:v7];
    }
  }

  else if ([v6[78] containsObject:a1[6]])
  {
    [*(a1[5] + 54) addObject:a1[6]];
    [*(a1[5] + 78) removeObject:a1[6]];
  }

  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = __Block_byref_object_copy__278;
  v44 = __Block_byref_object_dispose__279;
  v45 = 0;
  v10 = a1[5];
  v11 = [MEMORY[0x1E695DFD8] setWithObject:a1[6]];
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __87__UIKeyboardLayout_recognizer_cancelTouchOnLayoutWithId_startPoint_endPoint_whenReady___block_invoke_3;
  v37[3] = &unk_1E71172A8;
  v12 = a1[6];
  v37[4] = a1[5];
  v39 = &v40;
  v38 = v12;
  [v10 _enumerateDeferredTouchUUIDs:v11 withBlock:v37];

  if (!v41[5])
  {
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __87__UIKeyboardLayout_recognizer_cancelTouchOnLayoutWithId_startPoint_endPoint_whenReady___block_invoke_6;
    v33[3] = &unk_1E70FD978;
    v13 = a1[6];
    v14 = a1[5];
    v34 = v13;
    v35 = v14;
    v36 = &v49;
    v15 = [v33 copy];
    v16 = v41[5];
    v41[5] = v15;
  }

  v17 = [v50[5] currentTouchPoint];
  [v17 CGPointValue];
  v19 = v18;
  v21 = v20;

  Current = CFAbsoluteTimeGetCurrent();
  v23 = *&sSystemUptimeFromAbsoluteTimeDiff;
  v24 = [v50[5] pathIndex];
  objc_initWeak(&location, a1[5]);
  if (qword_1ED4973E0 != -1)
  {
    dispatch_once(&qword_1ED4973E0, &__block_literal_global_365);
  }

  v25 = [a1[5] taskQueue];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __87__UIKeyboardLayout_recognizer_cancelTouchOnLayoutWithId_startPoint_endPoint_whenReady___block_invoke_9;
  v26[3] = &unk_1E71172F8;
  v30 = &v40;
  objc_copyWeak(v31, &location);
  v27 = a1[6];
  v28 = a1[4];
  v31[1] = v19;
  v31[2] = v21;
  *&v31[3] = Current + v23;
  v31[4] = v24;
  v29 = a1[7];
  [v25 addTask:v26 breadcrumb:qword_1ED4973D8];

  objc_destroyWeak(v31);
  objc_destroyWeak(&location);

  _Block_object_dispose(&v40, 8);
  _Block_object_dispose(&v49, 8);
}

void __87__UIKeyboardLayout_recognizer_cancelTouchOnLayoutWithId_startPoint_endPoint_whenReady___block_invoke_2(void *a1)
{
  v2 = [*(a1[4] + 608) objectForKey:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __87__UIKeyboardLayout_recognizer_cancelTouchOnLayoutWithId_startPoint_endPoint_whenReady___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v19 = a2;
  v5 = a3;
  if ([v19 phase] == 3 || objc_msgSend(v19, "phase") == 4)
  {
    if ([v19 phase] == 4 || objc_msgSend(*(a1 + 32), "_handRestRecognizerCancelShouldBeEnd"))
    {
      v6 = [v5 copy];
      v7 = *(*(a1 + 48) + 8);
      v8 = *(v7 + 40);
      *(v7 + 40) = v6;
    }

    else
    {
      v9 = *(a1 + 40);
      [v19 timestamp];
      v11 = v10;
      v12 = *(a1 + 32);
      [v19 locationInWindow];
      [v12 convertPoint:0 fromView:?];
      v8 = +[UIKBTouchState touchStateForTouchUUID:withTimestamp:phase:location:pathIndex:inView:](UIKBTouchState, "touchStateForTouchUUID:withTimestamp:phase:location:pathIndex:inView:", v9, 4, [v19 pathIndex], *(a1 + 32), v11, v13, v14);
      v15 = [*(a1 + 32) touchCancelledTaskForTouchState:v8 forResting:0];
      v16 = [v15 copy];
      v17 = *(*(a1 + 48) + 8);
      v18 = *(v17 + 40);
      *(v17 + 40) = v16;
    }
  }

  else
  {
    if (qword_1ED4973D0 != -1)
    {
      dispatch_once(&qword_1ED4973D0, &__block_literal_global_361_0);
    }

    v8 = [*(a1 + 32) taskQueue];
    [v8 addTask:v5 breadcrumb:qword_1ED4973C8];
  }
}

void __87__UIKeyboardLayout_recognizer_cancelTouchOnLayoutWithId_startPoint_endPoint_whenReady___block_invoke_4()
{
  v0 = [&__block_literal_global_363_0 copy];
  v1 = qword_1ED4973C8;
  qword_1ED4973C8 = v0;
}

void __87__UIKeyboardLayout_recognizer_cancelTouchOnLayoutWithId_startPoint_endPoint_whenReady___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = CFAbsoluteTimeGetCurrent() + *&sSystemUptimeFromAbsoluteTimeDiff;
  v6 = *(a1 + 40);
  v7 = [*(*(*(a1 + 48) + 8) + 40) currentTouchPoint];
  [v7 CGPointValue];
  [v6 convertPoint:0 fromView:?];
  v10 = +[UIKBTouchState touchStateForTouchUUID:withTimestamp:phase:location:pathIndex:inView:](UIKBTouchState, "touchStateForTouchUUID:withTimestamp:phase:location:pathIndex:inView:", v3, 4, [*(*(*(a1 + 48) + 8) + 40) pathIndex], *(a1 + 40), v5, v8, v9);

  [*(a1 + 40) touchCancelled:v10 forResting:0 executionContext:v4];
}

void __87__UIKeyboardLayout_recognizer_cancelTouchOnLayoutWithId_startPoint_endPoint_whenReady___block_invoke_7()
{
  v0 = [&__block_literal_global_367_1 copy];
  v1 = qword_1ED4973D8;
  qword_1ED4973D8 = v0;
}

void __87__UIKeyboardLayout_recognizer_cancelTouchOnLayoutWithId_startPoint_endPoint_whenReady___block_invoke_9(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(*(a1 + 56) + 8) + 40);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __87__UIKeyboardLayout_recognizer_cancelTouchOnLayoutWithId_startPoint_endPoint_whenReady___block_invoke_10;
  v6[3] = &unk_1E71172D0;
  objc_copyWeak(&v10, (a1 + 64));
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v11 = *(a1 + 72);
  v12 = *(a1 + 88);
  v13 = *(a1 + 96);
  v9 = *(a1 + 48);
  v5 = [v3 childWithContinuation:v6];
  (*(v4 + 16))(v4, v5);

  objc_destroyWeak(&v10);
}

void __87__UIKeyboardLayout_recognizer_cancelTouchOnLayoutWithId_startPoint_endPoint_whenReady___block_invoke_10(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained[54] removeObject:*(a1 + 32)];
  [WeakRetained[78] removeObject:*(a1 + 32)];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __87__UIKeyboardLayout_recognizer_cancelTouchOnLayoutWithId_startPoint_endPoint_whenReady___block_invoke_11;
  block[3] = &unk_1E70F35B8;
  block[4] = WeakRetained;
  v5 = *(a1 + 40);
  v17 = *(a1 + 32);
  dispatch_sync(v5, block);
  v6 = *(a1 + 80);
  v7 = *(a1 + 88);
  v8 = *(a1 + 32);
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __87__UIKeyboardLayout_recognizer_cancelTouchOnLayoutWithId_startPoint_endPoint_whenReady___block_invoke_12;
  v13 = &unk_1E70FD768;
  v15 = *(a1 + 48);
  v14 = *(a1 + 32);
  v9 = [v3 childWithContinuation:&v10];

  [WeakRetained handRestRecognizerNotifyRestForBegin:0 location:v7 timestamp:v8 pathIndex:v9 touchUUID:*(a1 + 64) context:{*(a1 + 72), v6, v10, v11, v12, v13}];
}

void __87__UIKeyboardLayout_recognizer_cancelTouchOnLayoutWithId_startPoint_endPoint_whenReady___block_invoke_12(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v2 + 16);
  v5 = a2;
  v4(v2, v3);
  [v5 returnExecutionToParent];
}

- (void)resetHRRLayoutState
{
  [(_UIKBRTRecognizer *)self->_handRestRecognizer reset];
  deferredTouchTaskListsQueue = self->_deferredTouchTaskListsQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__UIKeyboardLayout_resetHRRLayoutState__block_invoke;
  block[3] = &unk_1E70F3590;
  block[4] = self;
  dispatch_sync(deferredTouchTaskListsQueue, block);
  [(_UIKBRTFingerDetection *)self->_fingerDetection reset];
  [(_UIKBRTTouchDrifting *)self->_touchDrifting reset];
}

uint64_t __39__UIKeyboardLayout_resetHRRLayoutState__block_invoke(uint64_t a1)
{
  v35 = *MEMORY[0x1E69E9840];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v23 = 624;
  obj = *(*(a1 + 32) + 624);
  v2 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v30;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v30 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = [*(*(a1 + 32) + 608) objectForKey:{*(*(&v29 + 1) + 8 * i), v23}];
        v7 = *(a1 + 32);
        v8 = [v6 currentTouchPoint];
        [v8 CGPointValue];
        v10 = v9;
        v12 = v11;
        v13 = CFAbsoluteTimeGetCurrent() + *&sSystemUptimeFromAbsoluteTimeDiff;
        v14 = [v6 pathIndex];
        v15 = [v6 touchUUID];
        [v7 handRestRecognizerNotifyRestForBegin:0 location:v14 timestamp:v15 pathIndex:0 touchUUID:v10 context:{v12, v13}];
      }

      v3 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v3);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v16 = [*(*(a1 + 32) + 608) allKeys];
  v17 = [v16 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v26;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v26 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v25 + 1) + 8 * j);
        [*(*(a1 + 32) + 544) removeTouchWithIdentifier:v21 touchCancelled:{1, v23}];
        [*(*(a1 + 32) + 600) removeTouchWithIdentifier:v21 touchCancelled:1];
      }

      v18 = [v16 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v18);
  }

  [*(*(a1 + 32) + v23) removeAllObjects];
  return [*(*(a1 + 32) + 608) removeAllObjects];
}

- (BOOL)_shouldAllowKeyboardHandlingIfNecessaryForTouch:(id)a3 phase:(int64_t)a4 withTouchState:(id)a5 task:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  if (![(UIKeyboardLayout *)self isExecutingDeferredTouchTasks])
  {
    v13 = [(UIKeyboardLayout *)self handRestRecognizer];

    if (v13)
    {
      v14 = [UIKBTouchStateTask touchStateTaskForTouchState:v11 andTask:v12];
      v52 = 0;
      v53 = &v52;
      v54 = 0x3032000000;
      v55 = __Block_byref_object_copy__134;
      v56 = __Block_byref_object_dispose__134;
      v57 = 0;
      deferredTouchTaskListsQueue = self->_deferredTouchTaskListsQueue;
      v44 = MEMORY[0x1E69E9820];
      v45 = 3221225472;
      v46 = __94__UIKeyboardLayout__shouldAllowKeyboardHandlingIfNecessaryForTouch_phase_withTouchState_task___block_invoke;
      v47 = &unk_1E70FED68;
      v50 = &v52;
      v48 = self;
      v16 = v11;
      v49 = v16;
      v51 = a4;
      dispatch_sync(deferredTouchTaskListsQueue, &v44);
      v17 = v53[5];
      v18 = v17 == 0;
      if (v17)
      {
        [v17 addTask:{v14, v44, v45, v46, v47, v48}];
        if (a4 > 2)
        {
          if (a4 == 3)
          {
            fingerDetection = self->_fingerDetection;
            v40 = [v16 touchUUID];
            [(_UIKBRTFingerDetection *)fingerDetection removeTouchWithIdentifier:v40 touchCancelled:0];

            touchDrifting = self->_touchDrifting;
            v42 = [v16 touchUUID];
            [(_UIKBRTTouchDrifting *)touchDrifting removeTouchWithIdentifier:v42 touchCancelled:0];

            v30 = [(UIKeyboardLayout *)self handRestRecognizer];
            v31 = [v16 touchUUID];
            [v30 touchUp:v10 withIdentifier:v31];
            goto LABEL_14;
          }

          if (a4 == 4)
          {
            v35 = self->_fingerDetection;
            v36 = [v16 touchUUID];
            [(_UIKBRTFingerDetection *)v35 removeTouchWithIdentifier:v36 touchCancelled:1];

            v37 = self->_touchDrifting;
            v38 = [v16 touchUUID];
            [(_UIKBRTTouchDrifting *)v37 removeTouchWithIdentifier:v38 touchCancelled:1];

            v30 = [(UIKeyboardLayout *)self handRestRecognizer];
            v31 = [v16 touchUUID];
            [v30 touchCancelled:v10 withIdentifier:v31];
            goto LABEL_14;
          }
        }

        else
        {
          if ((a4 - 1) < 2)
          {
            v19 = [(UIKeyboardLayout *)self handRestRecognizer];
            v20 = [v16 touchUUID];
            [v19 touchDragged:v10 withIdentifier:v20];

            [v16 locationInWindow];
            [(UIView *)self convertPoint:0 fromView:?];
            v22 = v21;
            v24 = v23;
            v25 = [(UIKeyboardLayout *)self fingerDetection];
            v26 = [v16 touchUUID];
            [v16 pathMajorRadius];
            v28 = v27;
            [v16 timestamp];
            [v25 moveTouchWithIdentifier:v26 toLocation:v22 withRadius:v24 atTouchTime:{v28, v29}];

            v30 = [(UIKeyboardLayout *)self touchDrifting];
            v31 = [v16 touchUUID];
            [v16 pathMajorRadius];
            v33 = v32;
            [v16 timestamp];
            [v30 moveTouchWithIdentifier:v31 toLocation:v22 withRadius:v24 atTouchTime:{v33, v34}];
LABEL_14:

            goto LABEL_15;
          }

          if (!a4)
          {
            v30 = [(UIKeyboardLayout *)self handRestRecognizer];
            v31 = [v16 touchUUID];
            [v30 touchDown:v10 withIdentifier:v31 canLogTouch:{-[UITextInputTraits isSecureTextEntry](self->_inputTraits, "isSecureTextEntry") ^ 1}];
            goto LABEL_14;
          }
        }
      }

LABEL_15:

      _Block_object_dispose(&v52, 8);
      goto LABEL_16;
    }
  }

  v18 = 1;
LABEL_16:

  return v18;
}

void __94__UIKeyboardLayout__shouldAllowKeyboardHandlingIfNecessaryForTouch_phase_withTouchState_task___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 608);
  v3 = [*(a1 + 40) touchUUID];
  v4 = [v2 objectForKey:v3];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  if (!*(*(*(a1 + 48) + 8) + 40) && !*(a1 + 56))
  {
    v7 = [*(a1 + 40) touchUUID];
    v8 = +[UIKBTouchOrderedTaskList taskListForTouchUUID:withPathIndex:](UIKBTouchOrderedTaskList, "taskListForTouchUUID:withPathIndex:", v7, [*(a1 + 40) pathIndex]);
    v9 = *(*(a1 + 48) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    v11 = *(*(a1 + 32) + 608);
    v12 = *(*(*(a1 + 48) + 8) + 40);
    v13 = [*(a1 + 40) touchUUID];
    [v11 setObject:v12 forKey:v13];

    v14 = *(a1 + 32);
    [*(a1 + 40) locationInWindow];
    [v14 convertPoint:0 fromView:?];
    v16 = v15;
    v18 = v17;
    v19 = *(*(a1 + 32) + 544);
    [*(a1 + 40) pathMajorRadius];
    v21 = v20;
    [*(a1 + 40) timestamp];
    v23 = v22;
    v24 = [*(a1 + 40) touchUUID];
    [v19 addTouchLocation:v24 withRadius:v16 withTouchTime:v18 withIdentifier:{v21, v23}];

    v25 = *(*(a1 + 32) + 600);
    [*(a1 + 40) pathMajorRadius];
    v27 = v26;
    [*(a1 + 40) timestamp];
    v29 = v28;
    v30 = [*(a1 + 40) touchUUID];
    [v25 addTouchLocation:v30 withRadius:v16 withTouchTime:v18 withIdentifier:{v27, v29}];
  }
}

- (void)_clearDeferredTouchTasks
{
  [(UIKeyboardLayout *)self setDeferredTouchDownTask:0];

  [(UIKeyboardLayout *)self setDeferredTouchMovedTask:0];
}

- (void)_executeDeferredTouchTasks
{
  [(UIKeyboardLayout *)self setIsExecutingDeferredTouchTasks:1];
  deferredTouchDownTask = self->_deferredTouchDownTask;
  if (deferredTouchDownTask)
  {
    v4 = [deferredTouchDownTask copy];
    [(UIKeyboardLayout *)self setDeferredTouchDownTask:0];
    v4[2](v4);
  }

  deferredTouchMovedTask = self->_deferredTouchMovedTask;
  if (deferredTouchMovedTask)
  {
    v6 = [deferredTouchMovedTask copy];
    [(UIKeyboardLayout *)self setDeferredTouchMovedTask:0];
    v6[2](v6);
  }

  [(UIKeyboardLayout *)self setIsExecutingDeferredTouchTasks:0];
}

- (void)_addTouchToScreenEdgePanRecognizer:(id)a3
{
  v4 = a3;
  v15 = [(UIKeyboardLayout *)self screenEdgePanRecognizer];
  [v4 _locationInSceneReferenceSpace];
  v6 = v5;
  v8 = v7;
  [v4 timestamp];
  v10 = v9;
  v11 = [v4 _edgeType];
  v12 = [v4 _edgeAim];
  v13 = [(UIKBScreenTraits *)self->_screenTraits orientation];
  if ([v4 _edgeForcePending])
  {
    v14 = 1;
  }

  else if ([v4 _edgeForceActive])
  {
    v14 = 2;
  }

  else
  {
    v14 = 0;
  }

  if ((v11 - 1) >= 4)
  {
    v11 = 0;
  }

  [v15 incorporateTouchSampleAtLocation:v11 timestamp:(v12 >> 1) & 1 | (4 * (v12 & 1)) & 0xF7 | (8 * ((v12 >> 2) & 1)) | (v12 >> 2) & 2 modifier:v13 region:v14 interfaceOrientation:v6 forceState:{v8, v10}];
}

- (void)assertSavedLocation:(CGPoint)a3 onTouch:(id)a4 inWindow:(id)a5 resetPrevious:(BOOL)a6
{
  v6 = a6;
  y = a3.y;
  x = a3.x;
  v14 = a4;
  v10 = a5;
  v11 = [v14 window];

  if (!v11)
  {
    [v10 convertPoint:0 toWindow:{x, y}];
    x = v12;
    y = v13;
  }

  [v14 _setLocationInWindow:v6 resetPrevious:{x, y}];
}

- (BOOL)_shouldAllowKeyboardHandlingForTouchesBegan:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![(UIKeyboardLayout *)self canHandleEvent:v7])
  {
    goto LABEL_12;
  }

  if (![(UIKeyboardLayout *)self isExecutingDeferredTouchTasks])
  {
    if (!self->_deferredTouchDownTask)
    {
      goto LABEL_16;
    }

    v8 = [(UIKeyboardLayout *)self screenEdgePanRecognizer];
    v9 = [v8 state];

    if (!v9)
    {
      [(UIKeyboardLayout *)self _executeDeferredTouchTasks];
      goto LABEL_10;
    }

    if (!self->_deferredTouchDownTask)
    {
LABEL_16:
      if ([(UIKeyboardLayout *)self _canAddTouchesToScreenGestureRecognizer:v6])
      {
        v10 = [v6 anyObject];
        [(UIKeyboardLayout *)self _addTouchToScreenEdgePanRecognizer:v10];
        v11 = [(UIKeyboardLayout *)self screenEdgePanRecognizer];
        v12 = [v11 state];

        if (v12)
        {

          goto LABEL_10;
        }

        [v10 locationInView:0];
        v15 = v14;
        v17 = v16;
        v18 = [v10 window];
        objc_initWeak(&location, self);
        v22[0] = MEMORY[0x1E69E9820];
        v22[1] = 3221225472;
        v22[2] = __74__UIKeyboardLayout__shouldAllowKeyboardHandlingForTouchesBegan_withEvent___block_invoke;
        v22[3] = &unk_1E7117320;
        objc_copyWeak(v27, &location);
        v27[1] = v15;
        v27[2] = v17;
        v19 = v10;
        v23 = v19;
        v20 = v18;
        v24 = v20;
        v25 = v6;
        v26 = v7;
        [(UIKeyboardLayout *)self setDeferredTouchDownTask:v22];

        objc_destroyWeak(v27);
        objc_destroyWeak(&location);

LABEL_12:
        v13 = 0;
        goto LABEL_13;
      }
    }
  }

LABEL_10:
  v13 = 1;
LABEL_13:

  return v13;
}

void __74__UIKeyboardLayout__shouldAllowKeyboardHandlingForTouchesBegan_withEvent___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  [WeakRetained assertSavedLocation:*(a1 + 32) onTouch:*(a1 + 40) inWindow:1 resetPrevious:{*(a1 + 72), *(a1 + 80)}];
  [WeakRetained touchesBegan:*(a1 + 48) withEvent:*(a1 + 56)];
}

- (BOOL)_shouldAllowKeyboardHandlingForTouchesMoved:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![(UIKeyboardLayout *)self canHandleEvent:v7])
  {
    goto LABEL_10;
  }

  if ([(UIKeyboardLayout *)self isExecutingDeferredTouchTasks]|| !self->_deferredTouchDownTask || ![(UIKeyboardLayout *)self _canAddTouchesToScreenGestureRecognizer:v6])
  {
LABEL_12:
    v19 = 1;
    goto LABEL_13;
  }

  v8 = [v6 anyObject];
  [(UIKeyboardLayout *)self _addTouchToScreenEdgePanRecognizer:v8];
  v9 = [(UIKeyboardLayout *)self screenEdgePanRecognizer];
  v10 = [v9 state];

  if (!v10)
  {
    [v8 locationInView:0];
    v14 = v13;
    v16 = v15;
    v17 = [v8 window];
    objc_initWeak(&location, self);
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __74__UIKeyboardLayout__shouldAllowKeyboardHandlingForTouchesMoved_withEvent___block_invoke;
    v21[3] = &unk_1E7117320;
    objc_copyWeak(v26, &location);
    v26[1] = v14;
    v26[2] = v16;
    v22 = v8;
    v18 = v17;
    v23 = v18;
    v24 = v6;
    v25 = v7;
    [(UIKeyboardLayout *)self setDeferredTouchMovedTask:v21];

    objc_destroyWeak(v26);
    objc_destroyWeak(&location);

    goto LABEL_9;
  }

  v11 = [(UIKeyboardLayout *)self screenEdgePanRecognizer];
  v12 = [v11 state];

  if (v12 != 1)
  {

    goto LABEL_12;
  }

  [(UIKeyboardLayout *)self _clearDeferredTouchTasks];
LABEL_9:

LABEL_10:
  v19 = 0;
LABEL_13:

  return v19;
}

void __74__UIKeyboardLayout__shouldAllowKeyboardHandlingForTouchesMoved_withEvent___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  [WeakRetained assertSavedLocation:*(a1 + 32) onTouch:*(a1 + 40) inWindow:0 resetPrevious:{*(a1 + 72), *(a1 + 80)}];
  [WeakRetained touchesMoved:*(a1 + 48) withEvent:*(a1 + 56)];
}

- (BOOL)_shouldAllowKeyboardHandlingForTouchesEndedOrCancelled:(id)a3 withEvent:(id)a4
{
  v5 = [(UIKeyboardLayout *)self canHandleEvent:a4];
  if (v5)
  {
    v6 = [(UIKeyboardLayout *)self screenEdgePanRecognizer];
    v7 = [v6 state];

    if (!v7)
    {
      [(UIKeyboardLayout *)self _executeDeferredTouchTasks];
    }
  }

  return v5;
}

- (void)_resetFingerDetectionFromLayout
{
  [(UIKeyboardLayout *)self handRestRecognizerStandardKeyPixelSize];
  v4 = v3;
  v6 = v5;
  [(UIKeyboardLayout *)self getCenterForKeyUnderLeftIndexFinger];
  v8 = v7;
  v10 = v9;
  [(UIKeyboardLayout *)self getCenterForKeyUnderRightIndexFinger];
  v12 = v11;
  v14 = v13;
  v24 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v15 = [(UIKeyboardLayout *)self getHorizontalOffsetFromHomeRowForRowRelativeToHomeRow:-1];
  if (v15)
  {
    v16 = v15;
    v17 = -2;
    do
    {
      [v24 insertObject:v16 atIndex:0];

      v16 = [(UIKeyboardLayout *)self getHorizontalOffsetFromHomeRowForRowRelativeToHomeRow:v17];
      --v17;
    }

    while (v16);
  }

  v18 = [v24 count];
  [v24 addObject:&unk_1EFE31CA8];
  v19 = [(UIKeyboardLayout *)self getHorizontalOffsetFromHomeRowForRowRelativeToHomeRow:1];
  if (v19)
  {
    v20 = v19;
    v21 = 2;
    do
    {
      [v24 addObject:v20];

      v20 = [(UIKeyboardLayout *)self getHorizontalOffsetFromHomeRowForRowRelativeToHomeRow:v21];
      ++v21;
    }

    while (v20);
  }

  v22 = [(UIKeyboardLayout *)self fingerDetection];
  [v22 updateWithFCenter:v24 jCenter:v18 keySize:v8 rowOffsets:v10 homeRowOffsetIndex:{v12, v14, v4, v6}];

  v23 = [(UIKeyboardLayout *)self touchDrifting];
  [v23 updateWithFCenter:v24 jCenter:v18 keySize:v8 rowOffsets:v10 homeRowOffsetIndex:{v12, v14, v4, v6}];
}

- (void)updateTouchProcessingForKeyboardChange
{
  objc_initWeak(&location, self);
  if (qword_1ED4973F0 != -1)
  {
    dispatch_once(&qword_1ED4973F0, &__block_literal_global_371_2);
  }

  v3 = [(UIKeyboardLayout *)self taskQueue];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __58__UIKeyboardLayout_updateTouchProcessingForKeyboardChange__block_invoke_3;
  v4[3] = &unk_1E7116F10;
  objc_copyWeak(&v5, &location);
  [v3 addTask:v4 breadcrumb:qword_1ED4973E8];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __58__UIKeyboardLayout_updateTouchProcessingForKeyboardChange__block_invoke()
{
  v0 = [&__block_literal_global_373_0 copy];
  v1 = qword_1ED4973E8;
  qword_1ED4973E8 = v0;
}

void __58__UIKeyboardLayout_updateTouchProcessingForKeyboardChange__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained[76] count])
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v7 = WeakRetained[76];
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = __58__UIKeyboardLayout_updateTouchProcessingForKeyboardChange__block_invoke_4;
    v46[3] = &unk_1E7117370;
    v47 = v5;
    v48 = v6;
    v8 = v6;
    v9 = v5;
    [v7 enumerateKeysAndObjectsUsingBlock:v46];
    v10 = WeakRetained[76];
    v11 = [v8 allObjects];
    [v10 removeObjectsForKeys:v11];

    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = __58__UIKeyboardLayout_updateTouchProcessingForKeyboardChange__block_invoke_7;
    v45[3] = &unk_1E7117398;
    v45[4] = WeakRetained;
    [v9 enumerateObjectsUsingBlock:v45];
  }

  v12 = [WeakRetained touchDrifting];
  [v12 reset];

  v13 = [WeakRetained getHandRestRecognizerState];
  v14 = v13;
  if ((v13 - 1) < 2)
  {
    v15 = [WeakRetained handRestRecognizer];

    if (!v15)
    {
      v16 = objc_alloc_init(_UIKBRTRecognizer);
      [WeakRetained setHandRestRecognizer:v16];

      v17 = [WeakRetained handRestRecognizer];
      [v17 setDelegate:WeakRetained];
    }

    v18 = [WeakRetained fingerDetection];

    if (!v18)
    {
      v19 = [[_UIKBRTFingerDetection alloc] initWithParentView:WeakRetained];
      [WeakRetained setFingerDetection:v19];
    }

    if (v14 == 1)
    {
      v20 = +[_UIKBRTTouchDrifting isEnabled];
      v21 = [WeakRetained touchDrifting];
      v22 = v21;
      if (v20)
      {

        if (!v22)
        {
          v23 = [[_UIKBRTTouchDrifting alloc] initWithParentView:WeakRetained];
          [WeakRetained setTouchDrifting:v23];

          v24 = [WeakRetained touchDrifting];
          [v24 setDelegate:WeakRetained];
        }

        goto LABEL_16;
      }
    }

    else
    {
      v21 = [WeakRetained touchDrifting];
      v22 = v21;
    }

    [v21 setDelegate:0];

    [WeakRetained setTouchDrifting:0];
LABEL_16:
    if ((_UIInternalPreferenceUsesDefault_0(&_MergedGlobals_943, @"_UIKBRT_CadenceMonitor") & 1) != 0 || byte_1ED48B2E4)
    {
      v28 = [WeakRetained cadenceMonitor];

      if (!v28)
      {
        v29 = objc_alloc_init(UIKBCadenceMonitor);
        [WeakRetained setCadenceMonitor:v29];
      }

      v30 = [WeakRetained handRestRecognizer];
      v31 = [v30 averagingRules];
      v32 = [WeakRetained cadenceMonitor];
      [v31 addObject:v32];
    }

    if (((_UIInternalPreferenceUsesDefault_0(&dword_1ED48B2E8, @"_UIKBRT_TouchVelocities") & 1) != 0 || byte_1ED48B2EC) && MGGetBoolAnswer())
    {
      v33 = [WeakRetained touchVelocities];

      if (!v33)
      {
        v34 = objc_alloc_init(_UIKBRTTouchVelocities);
        [WeakRetained setTouchVelocities:v34];
      }

      v35 = [WeakRetained handRestRecognizer];
      v36 = [v35 averagingRules];
      v37 = [WeakRetained touchVelocities];
      [v36 addObject:v37];
    }

    [WeakRetained handRestRecognizerStandardKeyPixelSize];
    v39 = v38;
    v41 = v40;
    v42 = [WeakRetained handRestRecognizer];
    [v42 setStandardKeyPixelSize:{v39, v41}];

    v43 = [WeakRetained handRestRecognizer];
    [v43 setDisableHomeRowReturn:v14 == 2];

    [WeakRetained _resetFingerDetectionFromLayout];
    v44 = [WeakRetained cadenceMonitor];
    [v44 reset];

    v27 = 0;
    goto LABEL_28;
  }

  if (!v13)
  {
    [WeakRetained setCadenceMonitor:0];
    v25 = [WeakRetained touchDrifting];
    [v25 setDelegate:0];

    [WeakRetained setTouchDrifting:0];
    [WeakRetained setFingerDetection:0];
    v26 = [WeakRetained handRestRecognizer];
    [v26 setDelegate:0];

    [WeakRetained setHandRestRecognizer:0];
    v27 = 1;
LABEL_28:
    [WeakRetained _setRequiresExclusiveTouch:v27];
  }

  [v3 returnExecutionToParent];
}

void __58__UIKeyboardLayout_updateTouchProcessingForKeyboardChange__block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [MEMORY[0x1E695DFB0] null];

  if (v7 != v6)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __58__UIKeyboardLayout_updateTouchProcessingForKeyboardChange__block_invoke_5;
    v8[3] = &unk_1E7117348;
    v9 = *(a1 + 32);
    [v6 removeTasksMatchingFilter:v8];
    if (([v6 hasTasks] & 1) == 0)
    {
      [*(a1 + 40) addObject:v5];
    }
  }
}

uint64_t __58__UIKeyboardLayout_updateTouchProcessingForKeyboardChange__block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 isBusy] & 1) == 0)
  {
    [*(a1 + 32) insertObject:v3 atIndex:{objc_msgSend(*(a1 + 32), "indexOfObject:inSortedRange:options:usingComparator:", v3, 0, objc_msgSend(*(a1 + 32), "count"), 1024, &__block_literal_global_375_1)}];
  }

  v4 = [v3 isBusy];

  return v4 ^ 1u;
}

void __58__UIKeyboardLayout_updateTouchProcessingForKeyboardChange__block_invoke_7(uint64_t a1, void *a2)
{
  v3 = qword_1ED497400;
  v4 = a2;
  if (v3 != -1)
  {
    dispatch_once(&qword_1ED497400, &__block_literal_global_379_2);
  }

  v6 = [*(a1 + 32) taskQueue];
  v5 = [v4 task];

  [v6 addTask:v5 breadcrumb:qword_1ED4973F8];
}

void __58__UIKeyboardLayout_updateTouchProcessingForKeyboardChange__block_invoke_8()
{
  v0 = [&__block_literal_global_381_2 copy];
  v1 = qword_1ED4973F8;
  qword_1ED4973F8 = v0;
}

- (void)updateTouchProcessingForKeyplaneChange
{
  v3 = [(UIKeyboardLayout *)self touchDrifting];
  [v3 reset];

  v4 = [(UIKeyboardLayout *)self getHandRestRecognizerState];
  v5 = v4;
  if ((v4 - 1) < 2)
  {
    v6 = [(UIKeyboardLayout *)self handRestRecognizer];

    if (!v6)
    {
      v7 = objc_alloc_init(_UIKBRTRecognizer);
      [(UIKeyboardLayout *)self setHandRestRecognizer:v7];

      v8 = [(UIKeyboardLayout *)self handRestRecognizer];
      [v8 setDelegate:self];
    }

    v9 = [(UIKeyboardLayout *)self fingerDetection];

    if (!v9)
    {
      v10 = [[_UIKBRTFingerDetection alloc] initWithParentView:self];
      [(UIKeyboardLayout *)self setFingerDetection:v10];
    }

    if (v5 == 1)
    {
      v11 = +[_UIKBRTTouchDrifting isEnabled];
      v12 = [(UIKeyboardLayout *)self touchDrifting];
      v13 = v12;
      if (v11)
      {

        if (!v13)
        {
          v14 = [[_UIKBRTTouchDrifting alloc] initWithParentView:self];
          [(UIKeyboardLayout *)self setTouchDrifting:v14];

          v15 = [(UIKeyboardLayout *)self touchDrifting];
          [v15 setDelegate:self];
        }

        goto LABEL_15;
      }
    }

    else
    {
      v12 = [(UIKeyboardLayout *)self touchDrifting];
      v13 = v12;
    }

    [v12 setDelegate:0];

    [(UIKeyboardLayout *)self setTouchDrifting:0];
LABEL_15:
    if ((_UIInternalPreferenceUsesDefault_0(&_MergedGlobals_943, @"_UIKBRT_CadenceMonitor") & 1) != 0 || byte_1ED48B2E4)
    {
      v18 = [(UIKeyboardLayout *)self cadenceMonitor];

      if (!v18)
      {
        v19 = objc_alloc_init(UIKBCadenceMonitor);
        [(UIKeyboardLayout *)self setCadenceMonitor:v19];
      }

      v20 = [(UIKeyboardLayout *)self handRestRecognizer];
      v21 = [v20 averagingRules];
      v22 = [(UIKeyboardLayout *)self cadenceMonitor];
      [v21 addObject:v22];
    }

    if (((_UIInternalPreferenceUsesDefault_0(&dword_1ED48B2E8, @"_UIKBRT_TouchVelocities") & 1) != 0 || byte_1ED48B2EC) && MGGetBoolAnswer())
    {
      v23 = [(UIKeyboardLayout *)self touchVelocities];

      if (!v23)
      {
        v24 = objc_alloc_init(_UIKBRTTouchVelocities);
        [(UIKeyboardLayout *)self setTouchVelocities:v24];
      }

      v25 = [(UIKeyboardLayout *)self handRestRecognizer];
      v26 = [v25 averagingRules];
      v27 = [(UIKeyboardLayout *)self touchVelocities];
      [v26 addObject:v27];
    }

    [(UIKeyboardLayout *)self handRestRecognizerStandardKeyPixelSize];
    v29 = v28;
    v31 = v30;
    v32 = [(UIKeyboardLayout *)self handRestRecognizer];
    [v32 setStandardKeyPixelSize:{v29, v31}];

    v33 = [(UIKeyboardLayout *)self handRestRecognizer];
    [v33 setDisableHomeRowReturn:v5 == 2];

    [(UIKeyboardLayout *)self _resetFingerDetectionFromLayout];
    v34 = [(UIKeyboardLayout *)self cadenceMonitor];
    [v34 reset];

    v17 = 0;
    goto LABEL_27;
  }

  if (v4)
  {
    return;
  }

  [(UIKeyboardLayout *)self setCadenceMonitor:0];
  v16 = [(UIKeyboardLayout *)self touchDrifting];
  [v16 setDelegate:0];

  [(UIKeyboardLayout *)self setTouchDrifting:0];
  [(UIKeyboardLayout *)self setFingerDetection:0];
  [(UIKeyboardLayout *)self setHandRestRecognizer:0];
  v17 = 1;
LABEL_27:

  [(UIKeyboardLayout *)self _setRequiresExclusiveTouch:v17];
}

- (BOOL)_canAddTouchesToScreenGestureRecognizer:(id)a3
{
  v4 = a3;
  if ([v4 count] == 1)
  {
    v5 = [v4 anyObject];
    [(UIKeyboardLayout *)self lastTouchUpTime];
    if (v6 == 0.0 || ([v5 timestamp], v8 = v7, -[UIKeyboardLayout lastTouchUpTime](self, "lastTouchUpTime"), v8 - v9 >= 0.15))
    {
      v11 = [(UIKeyboardLayout *)self screenEdgePanRecognizer];
      if (v11)
      {
        v12 = [(UIKeyboardLayout *)self screenEdgePanRecognizer];
        v13 = [v12 state] != 2;
      }

      else
      {
        v13 = 0;
      }

      v10 = [(NSMutableArray *)self->_uncommittedTouchUUIDs count]== 0 && v13;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)screenEdgePanRecognizerStateDidChange:(id)a3
{
  v4 = a3;
  if ([v4 state] == 1)
  {
    [(UIKeyboardLayout *)self _clearDeferredTouchTasks];
  }

  else if ([v4 state] == 2)
  {
    [(UIKeyboardLayout *)self _executeDeferredTouchTasks];
  }
}

- (CGSize)handRestRecognizerStandardKeyPixelSize
{
  v2 = 0.0;
  v3 = 0.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGPoint)getCenterForKeyUnderLeftIndexFinger
{
  v2 = *MEMORY[0x1E695EFF8];
  v3 = *(MEMORY[0x1E695EFF8] + 8);
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)getCenterForKeyUnderRightIndexFinger
{
  v2 = *MEMORY[0x1E695EFF8];
  v3 = *(MEMORY[0x1E695EFF8] + 8);
  result.y = v3;
  result.x = v2;
  return result;
}

- (void)_updateTouchState:(id)a3 errorVector:(CGPoint)a4 rowOffsetFromHomeRow:(int64_t)a5
{
  touchDrifting = self->_touchDrifting;
  if (touchDrifting)
  {
    y = a4.y;
    x = a4.x;
    v9 = a3;
    v12 = [v9 touchUUID];
    [v9 timestamp];
    v11 = v10;

    [(_UIKBRTTouchDrifting *)touchDrifting updateTouchWithIdentifier:v12 withTouchTime:a5 resultingError:v11 rowOffsetFromHomeRow:x, y];
  }
}

- (void)_ignoreTouchState:(id)a3
{
  touchDrifting = self->_touchDrifting;
  if (touchDrifting)
  {
    v4 = a3;
    v7 = [v4 touchUUID];
    [v4 timestamp];
    v6 = v5;

    [(_UIKBRTTouchDrifting *)touchDrifting ignoreTouchWithIdentifier:v7 withTouchTime:v6];
  }
}

- (BOOL)_hasRelatedTouchesForTouchState:(id)a3
{
  fingerDetection = self->_fingerDetection;
  if (fingerDetection)
  {
    v4 = [a3 touchUUID];
    v5 = [(_UIKBRTFingerDetection *)fingerDetection fingerIdsRelatedToTouchWithIdentifier:v4 sinceTimestamp:0 includeThumbs:0.0];

    LOBYTE(fingerDetection) = [v5 count] != 0;
  }

  return fingerDetection;
}

- (BOOL)supportsVirtualDrift
{
  v2 = [(UIKeyboardLayout *)self touchDrifting];
  v3 = v2 != 0;

  return v3;
}

- (CGPoint)leftVirtualDriftOffset
{
  v3 = [(UIKeyboardLayout *)self touchDrifting];

  if (v3)
  {
    v4 = [(UIKeyboardLayout *)self touchDrifting];
    [v4 leftHandDriftOffset];
    v6 = v5;
    v8 = v7;
  }

  else
  {
    v6 = *MEMORY[0x1E695EFF8];
    v8 = *(MEMORY[0x1E695EFF8] + 8);
  }

  v9 = v6;
  v10 = v8;
  result.y = v10;
  result.x = v9;
  return result;
}

- (CGPoint)rightVirtualDriftOffset
{
  v3 = [(UIKeyboardLayout *)self touchDrifting];

  if (v3)
  {
    v4 = [(UIKeyboardLayout *)self touchDrifting];
    [v4 rightHandDriftOffset];
    v6 = v5;
    v8 = v7;
  }

  else
  {
    v6 = *MEMORY[0x1E695EFF8];
    v8 = *(MEMORY[0x1E695EFF8] + 8);
  }

  v9 = v6;
  v10 = v8;
  result.y = v10;
  result.x = v9;
  return result;
}

- (void)_uikbrtTouchDriftingStateChanged:(id)a3
{
  v4 = a3;
  v5 = [(UIKeyboardLayout *)self touchDrifting];

  if (v5 == v4)
  {

    [(UIKeyboardLayout *)self setNeedsVirtualDriftUpdate];
  }
}

- (unint64_t)_uikbrtTouchDrifting:(id)a3 fingerIDFortouchIdentifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(UIKeyboardLayout *)self touchDrifting];

  if (v8 == v7)
  {
    v10 = [(UIKeyboardLayout *)self fingerDetection];
    v9 = [v10 fingerIdForTouchWithIdentifier:v6];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_uikbrtTouchDrifting:(id)a3 touchIdentifiersForFingerID:(unint64_t)a4
{
  v6 = a3;
  v7 = [(UIKeyboardLayout *)self touchDrifting];

  if (v7 == v6)
  {
    v9 = [(UIKeyboardLayout *)self fingerDetection];
    v8 = [v9 touchIdentifiersForFingerId:a4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (CGPoint)_uikbrtTouchDrifting:(id)a3 touchCenterForFingerID:(unint64_t)a4
{
  v6 = a3;
  v7 = [(UIKeyboardLayout *)self touchDrifting];

  if (v7 == v6)
  {
    v10 = [(UIKeyboardLayout *)self fingerDetection];
    [v10 touchLocationForFingerId:a4];
    v8 = v11;
    v9 = v12;
  }

  else
  {
    v8 = *MEMORY[0x1E695EFF8];
    v9 = *(MEMORY[0x1E695EFF8] + 8);
  }

  v13 = v8;
  v14 = v9;
  result.y = v14;
  result.x = v13;
  return result;
}

- (unint64_t)fingerIDForTouchUUID:(id)a3
{
  v4 = a3;
  v5 = [(UIKeyboardLayout *)self fingerDetection];

  if (v5 && (-[UIKeyboardLayout fingerDetection](self, "fingerDetection"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 fingerIdForTouchWithIdentifier:v4], v6, (v7 - 1) <= 0xB))
  {
    v8 = qword_18A680268[v7 - 1];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (double)flickDistance
{
  SafeDeviceIdiom = UIKeyboardGetSafeDeviceIdiom();
  result = 10.0;
  if ((SafeDeviceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    return 30.0;
  }

  return result;
}

- (CGRect)dragGestureRectInView:(id)a3
{
  v4 = a3;
  [(UIView *)self bounds];
  [(UIView *)self convertRect:v4 toView:v17.origin.x + v17.size.width + -80.0, CGRectGetMaxY(v17) + -80.0, 80.0, 80.0];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (CGRect)frameForKeylayoutName:(id)a3
{
  v3 = *MEMORY[0x1E695F058];
  v4 = *(MEMORY[0x1E695F058] + 8);
  v5 = *(MEMORY[0x1E695F058] + 16);
  v6 = *(MEMORY[0x1E695F058] + 24);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (void)willBeginIndirectSelectionGesture
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"UIKeyboardWillBeginIndirectSelectionGestureNotification" object:0 userInfo:0];
}

- (void)didEndIndirectSelectionGesture
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"UIKeyboardDidEndIndirectSelectionGestureNotification" object:0 userInfo:0];
}

- (void)cancelTouchesForTwoFingerTapGesture:(id)a3
{
  v41 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 count])
  {
    v5 = [(UIKeyboardLayout *)self handRestRecognizer];

    if (v5)
    {
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v35 = v4;
      v6 = v4;
      v7 = [v6 countByEnumeratingWithState:&v36 objects:v40 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v37;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v37 != v9)
            {
              objc_enumerationMutation(v6);
            }

            v11 = *(*(&v36 + 1) + 8 * i);
            v12 = [UIKBTouchState touchStateForTouch:v11];
            v13 = v12;
            if (v12)
            {
              p_touchIgnoredUUIDSet = &self->_touchIgnoredUUIDSet;
              touchIgnoredUUIDSet = self->_touchIgnoredUUIDSet;
              v16 = [v12 touchUUID];
              LOBYTE(touchIgnoredUUIDSet) = [(NSMutableSet *)touchIgnoredUUIDSet containsObject:v16];

              if ((touchIgnoredUUIDSet & 1) != 0 || (p_touchIgnoredUUIDSet = &self->_uncommittedTouchUUIDs, uncommittedTouchUUIDs = self->_uncommittedTouchUUIDs, [v13 touchUUID], v18 = objc_claimAutoreleasedReturnValue(), LODWORD(uncommittedTouchUUIDs) = -[NSMutableArray containsObject:](uncommittedTouchUUIDs, "containsObject:", v18), v18, uncommittedTouchUUIDs))
              {
                v19 = *p_touchIgnoredUUIDSet;
                v20 = [v13 touchUUID];
                [v19 removeObject:v20];

                v21 = [(UIKeyboardLayout *)self handRestRecognizer];
                v22 = [v13 touchUUID];
                [v21 markTouchProcessed:v11 withIdentifier:v22];
              }

              [v13 locationInWindow];
              [(UIView *)self convertPoint:0 fromView:?];
              v24 = v23;
              v26 = v25;
              [v13 timestamp];
              v28 = v27;
              v29 = [v13 pathIndex];
              v30 = [v13 touchUUID];
              [(UIKeyboardLayout *)self handRestRecognizerNotifyRestForBegin:0 location:v29 timestamp:v30 pathIndex:0 touchUUID:v24 context:v26, v28];

              v31 = [(UIKeyboardLayout *)self fingerDetection];
              v32 = [v13 touchUUID];
              [v31 removeTouchWithIdentifier:v32 touchCancelled:1];

              v33 = [(UIKeyboardLayout *)self touchDrifting];
              v34 = [v13 touchUUID];
              [v33 removeTouchWithIdentifier:v34 touchCancelled:1];
            }
          }

          v8 = [v6 countByEnumeratingWithState:&v36 objects:v40 count:16];
        }

        while (v8);
      }

      v4 = v35;
    }
  }
}

- (UIEdgeInsets)keyplanePadding
{
  v3 = [(UIKeyboardLayout *)self currentKeyplane];
  [(UIView *)self frame];
  v5 = v4;
  v7 = v6;
  [v3 keyUnionPaddedFrame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  if (([v3 visualStyling] & 0xFF0000) == 0x90000)
  {
    v16 = 0.0;
  }

  else
  {
    v16 = v11;
  }

  v17 = v16;
  v18 = v9;
  v19 = v7 - v15 - v11;
  v20 = v5 - v13 - v9;
  result.right = v20;
  result.bottom = v19;
  result.left = v18;
  result.top = v17;
  return result;
}

- (BOOL)shouldAllowSelectionGestures:(BOOL)a3 atPoint:(CGPoint)a4 toBegin:(BOOL)a5
{
  v54 = *MEMORY[0x1E69E9840];
  v5 = 1;
  if (!a5)
  {
    return v5;
  }

  if (a3)
  {
    return v5;
  }

  v7 = [(UIKeyboardLayout *)self handRestRecognizer:a4.x];

  if (!v7)
  {
    return v5;
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v8 = [(UIView *)self gestureRecognizers];
  v9 = [v8 countByEnumeratingWithState:&v48 objects:v53 count:16];
  if (!v9)
  {
    goto LABEL_39;
  }

  v10 = *v49;
  while (2)
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v49 != v10)
      {
        objc_enumerationMutation(v8);
      }

      v12 = *(*(&v48 + 1) + 8 * i);
      if ([v12 _isGestureType:8] && objc_msgSend(v12, "minimumNumberOfTouches") > 1)
      {
        v33 = v12;

        if (!v33)
        {
          return 1;
        }

        v34 = v33[40];
        v35 = [UIKBTouchState touchUUIDsForTouches:?];
        v13 = [v34 lastObject];
        [v13 timestamp];
        v15 = v14;

        v16 = [v35 count];
        if (v16 == [v34 count])
        {
          v46 = 0u;
          v47 = 0u;
          v44 = 0u;
          v45 = 0u;
          v17 = self->_touchIgnoredUUIDSet;
          v18 = [(NSMutableSet *)v17 countByEnumeratingWithState:&v44 objects:v52 count:16];
          if (v18)
          {
            v19 = *v45;
            v32 = 1;
LABEL_18:
            v20 = 0;
            while (1)
            {
              if (*v45 != v19)
              {
                objc_enumerationMutation(v17);
              }

              v21 = *(*(&v44 + 1) + 8 * v20);
              v38 = 0;
              v39 = &v38;
              v40 = 0x3032000000;
              v41 = __Block_byref_object_copy__134;
              deferredTouchTaskListsQueue = self->_deferredTouchTaskListsQueue;
              v42 = __Block_byref_object_dispose__134;
              v43 = 0;
              block[0] = MEMORY[0x1E69E9820];
              block[1] = 3221225472;
              block[2] = __65__UIKeyboardLayout_shouldAllowSelectionGestures_atPoint_toBegin___block_invoke;
              block[3] = &unk_1E70FB728;
              block[5] = v21;
              block[6] = &v38;
              block[4] = self;
              dispatch_sync(deferredTouchTaskListsQueue, block);
              v23 = v39[5];
              if (v23 && (([v23 originalStartTime], v25 = v24, v26 = objc_msgSend(v35, "containsObject:", v21), vabdd_f64(v25, v15) >= 0.05) ? (v27 = 1) : (v27 = v26), (v27 & 1) == 0))
              {
                v28 = 0;
                v32 = 0;
              }

              else
              {
                v28 = 1;
              }

              _Block_object_dispose(&v38, 8);

              if (!v28)
              {
                break;
              }

              if (v18 == ++v20)
              {
                v18 = [(NSMutableSet *)v17 countByEnumeratingWithState:&v44 objects:v52 count:16];
                if (v18)
                {
                  goto LABEL_18;
                }

                break;
              }
            }

            if ((v32 & 1) == 0)
            {
              v5 = 0;
LABEL_38:

              v8 = v33;
              goto LABEL_39;
            }
          }

          else
          {
          }

          v29 = [(UIKeyboardLayout *)self fingerDetection];
          v30 = v29 == 0;

          if (!v30)
          {
            v38 = 0;
            v39 = &v38;
            v40 = 0x3032000000;
            v41 = __Block_byref_object_copy__134;
            v42 = __Block_byref_object_dispose__134;
            v43 = 0;
            v36[0] = MEMORY[0x1E69E9820];
            v36[1] = 3221225472;
            v36[2] = __65__UIKeyboardLayout_shouldAllowSelectionGestures_atPoint_toBegin___block_invoke_2;
            v36[3] = &unk_1E71173C0;
            v36[4] = self;
            v36[5] = &v38;
            [v34 enumerateObjectsUsingBlock:v36];
            [v39[5] removeObject:&unk_1EFE31CC0];
            [v39[5] removeObject:&unk_1EFE31CD8];
            v5 = [v39[5] count] == 0;
            _Block_object_dispose(&v38, 8);

            goto LABEL_38;
          }
        }

        v5 = 1;
        goto LABEL_38;
      }
    }

    v9 = [v8 countByEnumeratingWithState:&v48 objects:v53 count:16];
    if (v9)
    {
      continue;
    }

    break;
  }

  v5 = 1;
LABEL_39:

  return v5;
}

void __65__UIKeyboardLayout_shouldAllowSelectionGestures_atPoint_toBegin___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 608) objectForKey:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __65__UIKeyboardLayout_shouldAllowSelectionGestures_atPoint_toBegin___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [UIKBTouchState touchStateForTouch:a2];
  if (v3)
  {
    v13 = v3;
    v4 = *(*(*(a1 + 40) + 8) + 40);
    v5 = [*(a1 + 32) fingerDetection];
    v6 = [v13 touchUUID];
    if (v4)
    {
      v7 = [v5 fingerIdForTouchWithIdentifier:v6];

      v8 = *(*(*(a1 + 40) + 8) + 40);
      v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v7];
      [v8 removeObject:v5];
    }

    else
    {
      v9 = [v5 fingerIdsRelatedToTouchWithIdentifier:v6 sinceTimestamp:1 includeThumbs:0.0];
      v10 = [v9 mutableCopy];
      v11 = *(*(a1 + 40) + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = v10;
    }

    v3 = v13;
  }
}

- (CGSize)stretchFactor
{
  v2 = 1.0;
  v3 = 1.0;
  result.height = v3;
  result.width = v2;
  return result;
}

@end