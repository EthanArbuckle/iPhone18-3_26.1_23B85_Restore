@interface __UISystemGestureManager
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldRequireFailureOfGestureRecognizer:(id)a4;
- (NSSet)gestureRecognizers;
- (NSString)description;
- (__UISystemGestureManager)initWithDisplayIdentity:(id)a3;
- (unsigned)_dispatchModeForExternalGestureCompletion;
- (void)_addInternalGesturesToView:(id)a3;
- (void)_catchSwipeFailureGestureChanged:(id)a3;
- (void)_directTouchDown:(id)a3;
- (void)_exclusiveTouchGestureChanged:(id)a3;
- (void)_exclusiveTouchGestureDidTerminate:(id)a3;
- (void)_externalGestureRecognizerChanged:(id)a3;
- (void)_failedPendingSwipe;
- (void)_handleTooMuchMovementWithLastTouchTimestamp:(double)a3;
- (void)_pendingSwipeGestureChanged:(id)a3;
- (void)_pendingSwipeGestureDidBegin:(id)a3;
- (void)_pendingSwipeGestureDidTerminate:(id)a3;
- (void)_removeInternalGestures;
- (void)addGestureRecognizer:(id)a3;
- (void)addGestureRecognizer:(id)a3 recognitionEvent:(int64_t)a4;
- (void)clearTransform;
- (void)dealloc;
- (void)exclusiveTouchGestureRecognizer:(id)a3 achievedMaximumAbsoluteAccumulatedMovement:(BOOL)a4 timestamp:(double)a5;
- (void)removeGestureRecognizer:(id)a3;
- (void)setTransform:(CGAffineTransform *)a3;
@end

@implementation __UISystemGestureManager

- (NSSet)gestureRecognizers
{
  v2 = [(NSMutableSet *)self->_externalGestures copy];

  return v2;
}

- (void)_failedPendingSwipe
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = [(UIGestureRecognizer *)self->_pendingSwipeGesture isEnabled];
  v4 = _systemGestureLog();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);
  if (v3)
  {
    if (v5)
    {
      v6 = !self->_didProcessPendingSwipeBegan;
      v8 = 67109120;
      v9 = v6;
      _os_log_debug_impl(&dword_188A29000, v4, OS_LOG_TYPE_DEBUG, "Caught edge swipe gesture failure (early:%{BOOL}u)", &v8, 8u);
    }

    [(UIGestureRecognizer *)self->_pendingSwipeGesture setEnabled:0];
    [(UIGestureRecognizer *)self->_pendingSwipeGesture setEnabled:1];
  }

  else
  {
    if (v5)
    {
      v7 = !self->_didProcessPendingSwipeBegan;
      v8 = 67109120;
      v9 = v7;
      _os_log_debug_impl(&dword_188A29000, v4, OS_LOG_TYPE_DEBUG, "Caught edge swipe gesture failure (early:%{BOOL}u), but we already disabled _pendingSwipeGesture", &v8, 8u);
    }
  }
}

- (unsigned)_dispatchModeForExternalGestureCompletion
{
  if ([(NSMutableSet *)self->_externalEdgeSwipeGestures count])
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (__UISystemGestureManager)initWithDisplayIdentity:(id)a3
{
  if (!a3)
  {
    v32 = [MEMORY[0x1E696AAA8] currentHandler];
    [v32 handleFailureInMethod:a2 object:self file:@"__UISystemGestureManager.m" lineNumber:135 description:{@"Invalid parameter not satisfying: %@", @"displayIdentity"}];
  }

  v41.receiver = self;
  v41.super_class = __UISystemGestureManager;
  v5 = [(__UISystemGestureManager *)&v41 init];
  if (v5)
  {
    v6 = [a3 copy];
    displayIdentity = v5->_displayIdentity;
    v5->_displayIdentity = v6;

    v8 = [UIScreen _screenWithFBSDisplayIdentity:v5->_displayIdentity];
    v9 = [v8 displayConfiguration];

    v10 = [[_UISystemGestureWindow alloc] initWithDisplayConfiguration:v9];
    systemGestureWindow = v5->_systemGestureWindow;
    v5->_systemGestureWindow = v10;

    v12 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    recognizingGestures = v5->_recognizingGestures;
    v5->_recognizingGestures = v12;

    v14 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    internalGestures = v5->_internalGestures;
    v5->_internalGestures = v14;

    v16 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    externalGestures = v5->_externalGestures;
    v5->_externalGestures = v16;

    v18 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    externalEdgeSwipeGestures = v5->_externalEdgeSwipeGestures;
    v5->_externalEdgeSwipeGestures = v18;

    v20 = objc_alloc_init(_UIExclusiveTouchGestureRecognizer);
    [(UIGestureRecognizer *)v20 _setRequiresSystemGesturesToFail:0];
    [(UIGestureRecognizer *)v20 setRequiresExclusiveTouchType:0];
    v21 = [(UIGestureRecognizer *)v20 allowedTouchTypes];
    v22 = [v21 mutableCopy];

    [v22 removeObject:&unk_1EFE309E8];
    [(UIGestureRecognizer *)v20 setAllowedTouchTypes:v22];
    [(UIGestureRecognizer *)v20 addTarget:v5 action:sel__exclusiveTouchGestureChanged_];
    [(UIGestureRecognizer *)v20 setDelegate:v5];
    [(_UIExclusiveTouchGestureRecognizer *)v20 setMaximumAbsoluteAccumulatedMovement:10.0, 10.0];
    [(__UISystemGestureManager *)v5 setExclusiveTouchGesture:v20];
    [(NSMutableSet *)v5->_internalGestures addObject:v20];
    v23 = objc_alloc_init(_UIPendingEdgeSwipeGestureRecognizer);
    [(UIGestureRecognizer *)v23 _setRequiresSystemGesturesToFail:0];
    [(UIGestureRecognizer *)v23 setRequiresExclusiveTouchType:0];
    [(UIGestureRecognizer *)v23 addTarget:v5 action:sel__pendingSwipeGestureChanged_];
    [(UIGestureRecognizer *)v23 setDelegate:v5];
    [(__UISystemGestureManager *)v5 setPendingSwipeGesture:v23];
    [(NSMutableSet *)v5->_internalGestures addObject:v23];
    v24 = objc_alloc_init(UIImmediateEdgeSwipeGestureRecognizer);
    [(UIGestureRecognizer *)v24 _setRequiresSystemGesturesToFail:0];
    [(UIGestureRecognizer *)v24 setRequiresExclusiveTouchType:0];
    [(UIGestureRecognizer *)v24 addTarget:v5 action:sel__catchSwipeFailureGestureChanged_];
    [(UIGestureRecognizer *)v24 setDelegate:v5];
    [(__UISystemGestureManager *)v5 setCatchEdgeSwipeFailureGesture:v24];
    [(NSMutableSet *)v5->_internalGestures addObject:v24];
    v25 = objc_alloc_init(_UIDirectTouchObserverGestureRecognizer);
    [(UIGestureRecognizer *)v25 setAllowedTouchTypes:&unk_1EFE2BF80];
    [(UIGestureRecognizer *)v25 _setRequiresSystemGesturesToFail:0];
    [(UIGestureRecognizer *)v25 setRequiresExclusiveTouchType:0];
    [(UIGestureRecognizer *)v25 setDelegate:v5];
    [(UIGestureRecognizer *)v25 addTarget:v5 action:sel__directTouchDown_];
    [(__UISystemGestureManager *)v5 setDirectTouchGesture:v25];
    [(NSMutableSet *)v5->_internalGestures addObject:v25];
    [(UIGestureRecognizer *)v24 setEnabled:0];
    [(UIGestureRecognizer *)v23 setEnabled:0];
    objc_initWeak(&location, v5->_internalGestures);
    objc_initWeak(&v39, v5->_externalGestures);
    objc_initWeak(&v38, v5->_externalEdgeSwipeGestures);
    objc_initWeak(&from, v5->_systemGestureWindow);
    v26 = MEMORY[0x1E69E96A0];
    v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UIKit - SystemGestureState - %@", a3];
    objc_copyWeak(&v33, &from);
    objc_copyWeak(&v34, &location);
    objc_copyWeak(&v35, &v39);
    objc_copyWeak(&v36, &v38);
    v28 = BSLogAddStateCaptureBlockWithTitle();
    stateCaptureToken = v5->_stateCaptureToken;
    v5->_stateCaptureToken = v28;

    objc_destroyWeak(&v36);
    objc_destroyWeak(&v35);
    objc_destroyWeak(&v34);
    objc_destroyWeak(&v33);
    objc_destroyWeak(&from);
    objc_destroyWeak(&v38);
    objc_destroyWeak(&v39);
    objc_destroyWeak(&location);
  }

  return v5;
}

- (void)_addInternalGesturesToView:(id)a3
{
  internalGestures = self->_internalGestures;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __55____UISystemGestureManager__addInternalGesturesToView___block_invoke;
  v4[3] = &unk_1E710B408;
  v4[4] = a3;
  [(NSMutableSet *)internalGestures enumerateObjectsUsingBlock:v4];
}

- (void)_removeInternalGestures
{
  internalGestures = self->_internalGestures;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __51____UISystemGestureManager__removeInternalGestures__block_invoke;
  v3[3] = &unk_1E710B408;
  v3[4] = self;
  [(NSMutableSet *)internalGestures enumerateObjectsUsingBlock:v3];
}

- (void)dealloc
{
  [(BSInvalidatable *)self->_stateCaptureToken invalidate];
  [(__UISystemGestureManager *)self _removeInternalGestures];
  [(BKSTouchStream *)self->_touchStream invalidate];
  [(UIWindow *)self->_systemGestureWindow setWindowScene:0];
  v3.receiver = self;
  v3.super_class = __UISystemGestureManager;
  [(__UISystemGestureManager *)&v3 dealloc];
}

- (NSString)description
{
  v6.receiver = self;
  v6.super_class = __UISystemGestureManager;
  v3 = [(__UISystemGestureManager *)&v6 description];
  v4 = [v3 mutableCopy];

  [v4 appendFormat:@"displayIdentity = %@\n", self->_displayIdentity];
  [v4 appendFormat:@"internalGestures = %@\n", self->_internalGestures];
  [v4 appendFormat:@"externalGestures = %@\n", self->_externalGestures];
  [v4 appendFormat:@"externalEdgeSwipeGestures = %@\n", self->_externalEdgeSwipeGestures];
  [v4 appendFormat:@"recognizingGestures = %@\n", self->_recognizingGestures];

  return v4;
}

- (void)addGestureRecognizer:(id)a3 recognitionEvent:(int64_t)a4
{
  v30 = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"__UISystemGestureManager.m" lineNumber:311 description:{@"Invalid parameter not satisfying: %@", @"recognitionEvent != _UISystemGestureRecognitionEventUnknown"}];
  }

  v8 = self->_systemGestureWindow;
  if (!v8)
  {
    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    [v22 handleFailureInMethod:a2 object:self file:@"__UISystemGestureManager.m" lineNumber:314 description:{@"failed to find a rootWindow for displayIdentity=%@", self->_displayIdentity}];
  }

  v9 = [(_UISystemGestureWindow *)v8 _systemGestureView];
  if (_UIApplicationProcessIsCarousel() && _UIGetLogMoarUISystemGestureLogsForCarousel())
  {
    v10 = _systemGestureLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [a3 _briefDescription];
      v12 = v11;
      if (a4 > 3)
      {
        v13 = "<nil>";
      }

      else
      {
        v13 = off_1E710B428[a4];
      }

      *buf = 138543618;
      v27 = v11;
      v28 = 2082;
      v29 = v13;
      _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_DEFAULT, "Adding gesture to system gesture manager: %{public}@; with recognition event: %{public}s", buf, 0x16u);
    }
  }

  if (![(NSMutableSet *)self->_externalGestures count])
  {
    v14 = [UIScreen _screenWithFBSDisplayIdentity:self->_displayIdentity];
    v15 = [v14 displayConfiguration];

    if (!v15)
    {
      v23 = [MEMORY[0x1E696AAA8] currentHandler];
      displayIdentity = self->_displayIdentity;
      v25 = +[UIScreen _screens];
      [v23 handleFailureInMethod:a2 object:self file:@"__UISystemGestureManager.m" lineNumber:323 description:{@"failed to find the hardwareIdentifier for displayIdentity=%@ -> displays=%@", displayIdentity, v25}];
    }

    v16 = objc_alloc_init(MEMORY[0x1E698E410]);
    v17 = objc_alloc(MEMORY[0x1E698E450]);
    v18 = [(UIWindow *)v8 _contextId];
    v19 = [v15 hardwareIdentifier];
    v20 = [v17 initWithContextID:v18 displayUUID:v19 identifier:1 policy:v16];

    [(__UISystemGestureManager *)self setTouchStream:v20];
    [(__UISystemGestureManager *)self _addInternalGesturesToView:v9];
  }

  [a3 _setRecognitionEvent:a4];
  if (a4 == 3)
  {
    [(NSMutableSet *)self->_externalEdgeSwipeGestures addObject:a3];
    [(UIGestureRecognizer *)self->_catchEdgeSwipeFailureGesture setEnabled:1];
    [(UIGestureRecognizer *)self->_pendingSwipeGesture setEnabled:1];
  }

  [(NSMutableSet *)self->_externalGestures addObject:a3];
  [a3 addTarget:self action:sel__externalGestureRecognizerChanged_];
  [a3 _setRequiresSystemGesturesToFail:0];
  [v9 addGestureRecognizer:a3];
}

- (void)addGestureRecognizer:(id)a3
{
  if ([a3 _isTouchGestureRecognizer])
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  [(__UISystemGestureManager *)self addGestureRecognizer:a3 recognitionEvent:v5];
}

- (void)removeGestureRecognizer:(id)a3
{
  v5 = [(NSMutableSet *)self->_externalGestures count];
  v6 = [a3 view];
  [v6 removeGestureRecognizer:a3];

  [a3 removeTarget:self action:0];
  [(NSMutableSet *)self->_externalGestures removeObject:a3];
  [(NSMutableSet *)self->_externalEdgeSwipeGestures removeObject:a3];
  [(NSMutableSet *)self->_recognizingGestures removeObject:a3];
  v7 = [(NSMutableSet *)self->_externalEdgeSwipeGestures count]!= 0;
  [(UIGestureRecognizer *)self->_catchEdgeSwipeFailureGesture setEnabled:v7];
  [(UIGestureRecognizer *)self->_pendingSwipeGesture setEnabled:v7];
  if (![(NSMutableSet *)self->_externalGestures count]&& v5)
  {
    [(BKSTouchStream *)self->_touchStream invalidate];
    [(__UISystemGestureManager *)self setTouchStream:0];

    [(__UISystemGestureManager *)self _removeInternalGestures];
  }
}

- (void)setTransform:(CGAffineTransform *)a3
{
  v6 = self->_systemGestureWindow;
  if (!v6)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"__UISystemGestureManager.m" lineNumber:381 description:{@"failed to find a rootWindow for displayIdentity=%@, cannot set transform", self->_displayIdentity}];
  }

  v7 = [(_UISystemGestureWindow *)v6 _systemGestureView];
  v8 = *&a3->c;
  v10[0] = *&a3->a;
  v10[1] = v8;
  v10[2] = *&a3->tx;
  [v7 setTransform:v10];
}

- (void)clearTransform
{
  v4 = self->_systemGestureWindow;
  if (!v4)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"__UISystemGestureManager.m" lineNumber:386 description:{@"failed to find a rootWindow for displayIdentity=%@, cannot remove transform", self->_displayIdentity}];
  }

  v5 = [(_UISystemGestureWindow *)v4 _systemGestureView];
  v6 = *(MEMORY[0x1E695EFD0] + 16);
  v8[0] = *MEMORY[0x1E695EFD0];
  v8[1] = v6;
  v8[2] = *(MEMORY[0x1E695EFD0] + 32);
  [v5 setTransform:v8];
}

- (BOOL)gestureRecognizer:(id)a3 shouldRequireFailureOfGestureRecognizer:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v7 = [(__UISystemGestureManager *)self exclusiveTouchGesture];
  v8 = v7;
  if (v7 == a3)
  {
    v9 = [(NSMutableSet *)self->_externalGestures containsObject:a4];

    if (v9 && [a4 _recognitionEvent] == 1)
    {
      if (_UIApplicationProcessIsCarousel() && _UIGetLogMoarUISystemGestureLogsForCarousel())
      {
        v10 = _systemGestureLog();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = [a3 _briefDescription];
          v12 = [a4 _briefDescription];
          v18 = 138543618;
          v19 = v11;
          v20 = 2114;
          v21 = v12;
          v13 = "shouldRequireFailureOfGestureRecognizer: YES exclusive touch and FirstTouchDown: gestureRecognizer: %{public}@; otherGestureRecognizer: %{public}@";
LABEL_15:
          _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_DEFAULT, v13, &v18, 0x16u);
        }

LABEL_16:
        v14 = 1;
        goto LABEL_22;
      }

      return 1;
    }
  }

  else
  {
  }

  if (self->_catchEdgeSwipeFailureGesture == a3 && [(NSMutableSet *)self->_externalEdgeSwipeGestures containsObject:a4])
  {
    if (_UIApplicationProcessIsCarousel() && _UIGetLogMoarUISystemGestureLogsForCarousel())
    {
      v10 = _systemGestureLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [a3 _briefDescription];
        v12 = [a4 _briefDescription];
        v18 = 138543618;
        v19 = v11;
        v20 = 2114;
        v21 = v12;
        v13 = "shouldRequireFailureOfGestureRecognizer: YES edge swipes: gestureRecognizer: %{public}@; otherGestureRecognizer: %{public}@";
        goto LABEL_15;
      }

      goto LABEL_16;
    }

    return 1;
  }

  if (!_UIApplicationProcessIsCarousel() || !_UIGetLogMoarUISystemGestureLogsForCarousel())
  {
    return 0;
  }

  v10 = _systemGestureLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [a3 _briefDescription];
    v16 = [a4 _briefDescription];
    v18 = 138543618;
    v19 = v15;
    v20 = 2114;
    v21 = v16;
    _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_DEFAULT, "shouldRequireFailureOfGestureRecognizer: NO default: gestureRecognizer: %{public}@; otherGestureRecognizer: %{public}@", &v18, 0x16u);
  }

  v14 = 0;
LABEL_22:

  return v14;
}

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  if (self->_pendingSwipeGesture == a3 || self->_catchEdgeSwipeFailureGesture == a3 || self->_directTouchGesture == a3)
  {
    return 1;
  }

  v7 = [(__UISystemGestureManager *)self exclusiveTouchGesture];

  if (v7 != a3)
  {
    return 0;
  }

  if ([(NSMutableSet *)self->_externalGestures containsObject:a4])
  {
    return [a4 _recognitionEvent] != 1;
  }

  internalGestures = self->_internalGestures;

  return [(NSMutableSet *)internalGestures containsObject:a4];
}

- (void)exclusiveTouchGestureRecognizer:(id)a3 achievedMaximumAbsoluteAccumulatedMovement:(BOOL)a4 timestamp:(double)a5
{
  if (a4)
  {
    BSRunLoopPerformRelativeToCACommit();
  }

  else
  {

    [(__UISystemGestureManager *)self setAchievedMaximumMovement:0, a5];
  }
}

- (void)_exclusiveTouchGestureDidTerminate:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  [(NSMutableSet *)self->_recognizingGestures removeObject:?];
  if (!self->_didSeeExclusiveTouchBegan)
  {
    v5 = [(__UISystemGestureManager *)self _dispatchModeForExternalGestureCompletion];
    v6 = _systemGestureLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      if (v5 > 3)
      {
        v7 = @"<unknown>";
      }

      else
      {
        v7 = off_1E710B448[v5];
      }

      v9 = 138543362;
      v10 = v7;
      _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_INFO, ">>>>> Exclusive touch terminated without .Began, posting remedial state dispatch mode change:%{public}@", &v9, 0xCu);
    }

    touchStream = self->_touchStream;
    [a3 lastTouchTimestamp];
    [(BKSTouchStream *)touchStream setEventDispatchMode:v5 ambiguityRecommendation:2 lastTouchTimestamp:?];
  }

  self->_didSeeExclusiveTouchBegan = 0;
}

- (void)_exclusiveTouchGestureChanged:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = [a3 state];
  if (v5 > 3)
  {
    if (v5 == 4)
    {
      v6 = _systemGestureLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v15) = 0;
        v7 = "Exclusive touch cancelled";
        goto LABEL_23;
      }

      goto LABEL_17;
    }

    if (v5 == 5)
    {
      v6 = _systemGestureLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v15) = 0;
        v7 = "Exclusive touch failed";
        goto LABEL_23;
      }

LABEL_17:

      [(__UISystemGestureManager *)self _exclusiveTouchGestureDidTerminate:a3];
      return;
    }

    goto LABEL_10;
  }

  if (v5 != 1)
  {
    if (v5 == 3)
    {
      v6 = _systemGestureLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v15) = 0;
        v7 = "Exclusive touch ended";
LABEL_23:
        _os_log_debug_impl(&dword_188A29000, v6, OS_LOG_TYPE_DEBUG, v7, &v15, 2u);
        goto LABEL_17;
      }

      goto LABEL_17;
    }

LABEL_10:
    v8 = _systemGestureLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v15 = 67109120;
      LODWORD(v16) = [a3 state];
      _os_log_debug_impl(&dword_188A29000, v8, OS_LOG_TYPE_DEBUG, "Exclusive touch ignored state:%d", &v15, 8u);
    }

    return;
  }

  [(NSMutableSet *)self->_recognizingGestures addObject:a3];
  kdebug_trace();
  if ([(NSMutableSet *)self->_recognizingGestures count]== 1)
  {
    v9 = [(__UISystemGestureManager *)self _dispatchModeForExternalGestureCompletion];
    v10 = _systemGestureLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      if (v9 > 3)
      {
        v13 = @"<unknown>";
      }

      else
      {
        v13 = off_1E710B448[v9];
      }

      v15 = 138543362;
      v16 = v13;
      _os_log_debug_impl(&dword_188A29000, v10, OS_LOG_TYPE_DEBUG, "Exclusive touch began -- moving to dispatch mode:%{public}@", &v15, 0xCu);
    }

    touchStream = self->_touchStream;
    [a3 lastTouchTimestamp];
    [(BKSTouchStream *)touchStream setEventDispatchMode:v9 ambiguityRecommendation:2 lastTouchTimestamp:?];
  }

  else
  {
    v12 = _systemGestureLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v14 = [(NSMutableSet *)self->_recognizingGestures count];
      v15 = 67109120;
      LODWORD(v16) = v14;
      _os_log_debug_impl(&dword_188A29000, v12, OS_LOG_TYPE_DEBUG, "Exclusive touch began, with %d simultaneous gesture(s)", &v15, 8u);
    }
  }

  self->_didSeeExclusiveTouchBegan = 1;
}

- (void)_pendingSwipeGestureDidBegin:(id)a3
{
  if (!self->_didProcessPendingSwipeBegan)
  {
    self->_didProcessPendingSwipeBegan = 1;
    v5 = _systemGestureLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *v7 = 0;
      _os_log_debug_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEBUG, "Pending swipe began -- moving to send / defer", v7, 2u);
    }

    [(NSMutableSet *)self->_recognizingGestures addObject:a3];
    kdebug_trace();
    touchStream = self->_touchStream;
    [a3 lastTouchTimestamp];
    [(BKSTouchStream *)touchStream setEventDispatchMode:2 ambiguityRecommendation:1 lastTouchTimestamp:?];
  }
}

- (void)_pendingSwipeGestureDidTerminate:(id)a3
{
  if (self->_didProcessPendingSwipeBegan)
  {
    v10 = v3;
    v11 = v4;
    self->_didProcessPendingSwipeBegan = 0;
    v7 = _systemGestureLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *v9 = 0;
      _os_log_debug_impl(&dword_188A29000, v7, OS_LOG_TYPE_DEBUG, "Pending swipe terminate -- moving to send / process", v9, 2u);
    }

    touchStream = self->_touchStream;
    [a3 lastTouchTimestamp];
    [(BKSTouchStream *)touchStream setEventDispatchMode:2 ambiguityRecommendation:2 lastTouchTimestamp:?];
    if (a3)
    {
      [(NSMutableSet *)self->_recognizingGestures removeObject:a3];
    }
  }
}

- (void)_pendingSwipeGestureChanged:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = [a3 state];
  if (v5 > 3)
  {
    if (v5 == 4)
    {
      v6 = _systemGestureLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v9[0]) = 0;
        v7 = "Pending swipe cancelled";
        goto LABEL_19;
      }

      goto LABEL_17;
    }

    if (v5 == 5)
    {
      v6 = _systemGestureLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v9[0]) = 0;
        v7 = "Pending swipe failed";
        goto LABEL_19;
      }

LABEL_17:

      [(__UISystemGestureManager *)self _pendingSwipeGestureDidTerminate:a3];
      return;
    }

    goto LABEL_10;
  }

  if (v5 != 1)
  {
    if (v5 == 3)
    {
      v6 = _systemGestureLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v9[0]) = 0;
        v7 = "Pending swipe ended";
LABEL_19:
        _os_log_debug_impl(&dword_188A29000, v6, OS_LOG_TYPE_DEBUG, v7, v9, 2u);
        goto LABEL_17;
      }

      goto LABEL_17;
    }

LABEL_10:
    v8 = _systemGestureLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9[0] = 67109120;
      v9[1] = [a3 state];
      _os_log_debug_impl(&dword_188A29000, v8, OS_LOG_TYPE_DEBUG, "Pending swipe ignored state:%d", v9, 8u);
    }

    return;
  }

  [(__UISystemGestureManager *)self _pendingSwipeGestureDidBegin:a3];
}

- (void)_catchSwipeFailureGestureChanged:(id)a3
{
  if ([a3 state] == 3)
  {

    [(__UISystemGestureManager *)self _failedPendingSwipe];
  }
}

- (void)_directTouchDown:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v4 = self->_recognizingGestures;
  v5 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v30;
    *&v6 = 138412290;
    v28 = v6;
    do
    {
      v9 = 0;
      do
      {
        if (*v30 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v29 + 1) + 8 * v9);
        if ([(NSMutableSet *)self->_externalGestures containsObject:v10, v28, v29])
        {
          v11 = _systemGestureLog();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
          {
            v17 = [v10 name];
            v18 = v17;
            if (v17)
            {
              v20 = v17;
            }

            else
            {
              v19 = objc_opt_class();
              v20 = NSStringFromClass(v19);
            }

            v21 = v20;

            *buf = v28;
            v34 = v21;
            _os_log_debug_impl(&dword_188A29000, v11, OS_LOG_TYPE_DEBUG, "check recognizing %@", buf, 0xCu);
          }

          v12 = [v10 allowedTouchTypes];
          if ([v12 containsObject:&unk_1EFE309E8])
          {
            if (v10)
            {
              v13 = [(UIGestureRecognizer *)v10 _state]- 1;

              if (v13 < 3)
              {
                goto LABEL_14;
              }
            }

            else
            {
            }

            v14 = _systemGestureLog();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
            {
              v22 = [v10 name];
              v23 = v22;
              if (v22)
              {
                v25 = v22;
              }

              else
              {
                v24 = objc_opt_class();
                v25 = NSStringFromClass(v24);
              }

              v26 = v25;

              *buf = v28;
              v34 = v26;
              _os_log_debug_impl(&dword_188A29000, v14, OS_LOG_TYPE_DEBUG, "CANCEL indirect %@", buf, 0xCu);
            }

            [(UIGestureRecognizer *)v10 _cancelRecognition];
            [(UIGestureRecognizer *)self->_exclusiveTouchGesture _cancelRecognition];
          }

          else
          {
          }
        }

LABEL_14:
        ++v9;
      }

      while (v7 != v9);
      v27 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v29 objects:v35 count:16];
      v7 = v27;
    }

    while (v27);
  }
}

- (void)_externalGestureRecognizerChanged:(id)a3
{
  v44 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E695DF70] array];
  v6 = [a3 _recognitionEvent];
  if (v6 == 2)
  {
    goto LABEL_37;
  }

  v7 = v6;
  v8 = [a3 state];
  if (v8 > 2)
  {
    if (v8 == 3)
    {
      kdebug_trace();
      v17 = _systemGestureLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        v29 = _UIGestureLogDescription(a3);
        *buf = 138543362;
        v43 = v29;
        _os_log_debug_impl(&dword_188A29000, v17, OS_LOG_TYPE_DEBUG, "EX ended %{public}@", buf, 0xCu);
      }
    }

    else
    {
      if (v8 != 4)
      {
        if (v8 == 5)
        {
          v9 = _systemGestureLog();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
          {
            v31 = _UIGestureLogDescription(a3);
            *buf = 138543362;
            v43 = v31;
            _os_log_debug_impl(&dword_188A29000, v9, OS_LOG_TYPE_DEBUG, "EX failed %{public}@", buf, 0xCu);
          }

          kdebug_trace();
          [(NSMutableSet *)self->_recognizingGestures removeObject:a3];
          externalGestures = self->_externalGestures;
          v36 = MEMORY[0x1E69E9820];
          v37 = 3221225472;
          v38 = __62____UISystemGestureManager__externalGestureRecognizerChanged___block_invoke;
          v39 = &unk_1E710B3B8;
          v40 = a3;
          v11 = v5;
          v41 = v11;
          [(NSMutableSet *)externalGestures enumerateObjectsUsingBlock:&v36];
          v12 = _systemGestureLog();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138543362;
            v43 = v11;
            _os_log_debug_impl(&dword_188A29000, v12, OS_LOG_TYPE_DEBUG, "EX remaining possible: %{public}@", buf, 0xCu);
          }

          if ([(__CFString *)v11 count:v36])
          {
            v13 = [(__UISystemGestureManager *)self _dispatchModeForExternalGestureCompletion];
            v14 = _systemGestureLog();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
            {
              if (v13 > 3)
              {
                v33 = @"<unknown>";
              }

              else
              {
                v33 = off_1E710B448[v13];
              }

              *buf = 138543362;
              v43 = v33;
              _os_log_debug_impl(&dword_188A29000, v14, OS_LOG_TYPE_DEBUG, "External recognizer failed -- moving to dispatch mode:%{public}@", buf, 0xCu);
            }

            touchStream = self->_touchStream;
            if (v7 == 3)
            {
              [(BKSTouchStream *)touchStream setEventDispatchMode:v13 ambiguityRecommendation:2 lastTouchTimestamp:0.0];
            }

            else
            {
              [(BKSTouchStream *)touchStream setEventDispatchMode:v13 lastTouchTimestamp:0.0];
            }
          }
        }

        goto LABEL_37;
      }

      v18 = _systemGestureLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        v30 = _UIGestureLogDescription(a3);
        *buf = 138543362;
        v43 = v30;
        _os_log_debug_impl(&dword_188A29000, v18, OS_LOG_TYPE_DEBUG, "EX cancelled %{public}@", buf, 0xCu);
      }

      kdebug_trace();
    }

    [(NSMutableSet *)self->_recognizingGestures removeObject:a3];
    v19 = self->_touchStream;
    v20 = 0.0;
    v21 = 2;
    v22 = 2;
LABEL_34:
    [(BKSTouchStream *)v19 setEventDispatchMode:v21 ambiguityRecommendation:v22 lastTouchTimestamp:v20];
    goto LABEL_37;
  }

  if (v8 == 1)
  {
    kdebug_trace();
    [(NSMutableSet *)self->_recognizingGestures addObject:a3];
    v23 = [a3 cancelsTouchesInView];
    v24 = _systemGestureLog();
    v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG);
    if (v23)
    {
      if (v25)
      {
        v34 = _UIGestureLogDescription(a3);
        *buf = 138543362;
        v43 = v34;
        _os_log_debug_impl(&dword_188A29000, v24, OS_LOG_TYPE_DEBUG, "EX %{public}@ began & stealing touches", buf, 0xCu);
      }

      v26 = v7 == 3;
      v27 = 3;
    }

    else
    {
      if (v25)
      {
        v35 = _UIGestureLogDescription(a3);
        *buf = 138543362;
        v43 = v35;
        _os_log_debug_impl(&dword_188A29000, v24, OS_LOG_TYPE_DEBUG, "EX %{public}@ began & also allowing touches to reach app", buf, 0xCu);
      }

      v26 = 2;
      v27 = 2;
    }

    v28 = self->_touchStream;
    [a3 lastTouchTimestamp];
    v19 = v28;
    v21 = v27;
    v22 = v26;
    goto LABEL_34;
  }

  if (v8 == 2)
  {
    v16 = _systemGestureLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v32 = _UIGestureLogDescription(a3);
      *buf = 138543362;
      v43 = v32;
      _os_log_debug_impl(&dword_188A29000, v16, OS_LOG_TYPE_DEBUG, "EX changed %{public}@", buf, 0xCu);
    }
  }

LABEL_37:
}

- (void)_handleTooMuchMovementWithLastTouchTimestamp:(double)a3
{
  v15 = *MEMORY[0x1E69E9840];
  if ([(NSMutableSet *)self->_recognizingGestures count])
  {
    v5 = objc_opt_new();
    recognizingGestures = self->_recognizingGestures;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __73____UISystemGestureManager__handleTooMuchMovementWithLastTouchTimestamp___block_invoke;
    v11[3] = &unk_1E710B3E0;
    v7 = v5;
    v12 = v7;
    [v7 appendCollection:recognizingGestures withName:0 itemBlock:v11];
    v8 = _systemGestureLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v7 description];
      *buf = 138543362;
      v14 = v9;
      _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_DEFAULT, "UIKit magic hysteresis reached. Gestures still recognizing: %{public}@", buf, 0xCu);
    }
  }

  else
  {
    kdebug_trace();
    v10 = _systemGestureLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_DEFAULT, "UIKit magic hysteresis reached with no gestures still recognizing. Moving to send/process.", buf, 2u);
    }

    [(BKSTouchStream *)self->_touchStream setEventDispatchMode:2 ambiguityRecommendation:2 lastTouchTimestamp:a3];
  }
}

@end