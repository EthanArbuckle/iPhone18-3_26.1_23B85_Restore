@interface _UIFocusAnimationCoordinatorManager
+ (id)activeCoordinatorMap;
+ (id)animationCoordinatorForContext:(id)a3;
- (_UIFocusAnimationCoordinatorManager)init;
- (id)willUpdateFocusInContext:(id)a3;
- (void)_performDelayedFocusingAnimationIfNecessary;
- (void)_scheduleDelayedFocusingAnimationWithDelay:(double)a3;
- (void)didUpdateFocusInContext:(id)a3 fromItem:(id)a4;
@end

@implementation _UIFocusAnimationCoordinatorManager

+ (id)activeCoordinatorMap
{
  if (qword_1ED49DC60 != -1)
  {
    dispatch_once(&qword_1ED49DC60, &__block_literal_global_216);
  }

  v3 = _MergedGlobals_1085;

  return v3;
}

- (void)_performDelayedFocusingAnimationIfNecessary
{
  [MEMORY[0x1E696AF00] cancelPreviousPerformRequestsWithTarget:self selector:a2 object:0];
  v3 = [(_UIFocusAnimationCoordinatorManager *)self lastFocusingItemAnimationCoordinator];
  if (v3)
  {
    v4 = v3;
    [v3 _animateFocusAnimation:0];
    [(_UIFocusAnimationCoordinatorManager *)self setLastFocusingItemAnimationCoordinator:0];
    v3 = v4;
  }
}

- (_UIFocusAnimationCoordinatorManager)init
{
  v8.receiver = self;
  v8.super_class = _UIFocusAnimationCoordinatorManager;
  v2 = [(_UIFocusAnimationCoordinatorManager *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AC70] hashTableWithOptions:517];
    unfocusingItems = v2->_unfocusingItems;
    v2->_unfocusingItems = v3;

    v5 = objc_opt_new();
    inheritedAnimationCoordinatorActiveAnimationStack = v2->_inheritedAnimationCoordinatorActiveAnimationStack;
    v2->_inheritedAnimationCoordinatorActiveAnimationStack = v5;
  }

  return v2;
}

+ (id)animationCoordinatorForContext:(id)a3
{
  v4 = a3;
  v5 = [a1 activeCoordinatorMap];
  v6 = [v5 objectForKey:v4];

  v7 = [v6 activeFocusAnimationCoordinator];

  return v7;
}

- (id)willUpdateFocusInContext:(id)a3
{
  v5 = a3;
  v6 = [_UIFocusAnimationCoordinatorManager animationCoordinatorForContext:v5];

  if (v6)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"_UIFocusAnimationCoordinatorManager.m" lineNumber:59 description:@"Unbalanced will/did update focus calls to focus animation manager."];
  }

  [(_UIFocusAnimationCoordinatorManager *)self _performDelayedFocusingAnimationIfNecessary];
  v7 = [(_UIFocusAnimationCoordinatorManager *)self activeFocusAnimationCoordinator];
  if (v7)
  {
    v8 = v7;
    v9 = [(_UIFocusAnimationCoordinatorManager *)self inheritedAnimationCoordinatorActiveAnimationStack];
    v10 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v8, "activeFocusAnimation")}];
    [v9 addObject:v10];
  }

  else
  {
    v8 = [[UIFocusAnimationCoordinator alloc] _initWithFocusUpdateContext:v5];
    [(_UIFocusAnimationCoordinatorManager *)self setActiveFocusAnimationCoordinator:v8];
  }

  v11 = [objc_opt_class() activeCoordinatorMap];
  [v11 setObject:self forKey:v5];

  return v8;
}

- (void)didUpdateFocusInContext:(id)a3 fromItem:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [_UIFocusAnimationCoordinatorManager animationCoordinatorForContext:v7];
  if (!v9)
  {
    v33 = [MEMORY[0x1E696AAA8] currentHandler];
    [v33 handleFailureInMethod:a2 object:self file:@"_UIFocusAnimationCoordinatorManager.m" lineNumber:79 description:@"Unbalanced will/did update focus calls to focus animation manager."];
  }

  v10 = [(_UIFocusAnimationCoordinatorManager *)self unfocusingItems];
  v11 = [v7 nextFocusedItem];
  v12 = CACurrentMediaTime();
  [(_UIFocusAnimationCoordinatorManager *)self lastFocusUpdateTime];
  v14 = v13;
  [(_UIFocusAnimationCoordinatorManager *)self setLastFocusUpdateTime:v12];
  [v9 _focusingAnimationDuration];
  v16 = v15;
  v17 = [v9 _configurationForFocusAnimation:0];
  [v17 focusingDelay];
  v19 = v18;

  v20 = [v9 _configurationForFocusAnimation:1];
  [v20 minimumFocusDuration];
  v22 = v21;

  if (v11)
  {
    [v10 removeObject:v11];
  }

  [v9 _prepareForFocusAnimation:0];
  v23 = fabs(v16);
  if (fabs(v19) < 2.22044605e-16 || v23 < 2.22044605e-16)
  {
    [v9 _animateFocusAnimation:{0, 2.22044605e-16, v23}];
    if (!v8)
    {
      goto LABEL_15;
    }
  }

  else
  {
    [(_UIFocusAnimationCoordinatorManager *)self setLastFocusingItemAnimationCoordinator:v9, 2.22044605e-16, v23];
    [(_UIFocusAnimationCoordinatorManager *)self _scheduleDelayedFocusingAnimationWithDelay:v19];
    if (!v8)
    {
      goto LABEL_15;
    }
  }

  v25 = v12 - v14;
  if (v25 < v22)
  {
    objc_initWeak(&location, v8);
    [v10 addObject:v8];
    v26 = dispatch_time(0, ((v22 - v25) * 1000000000.0));
    v34 = MEMORY[0x1E69E9820];
    v35 = 3221225472;
    v36 = __72___UIFocusAnimationCoordinatorManager_didUpdateFocusInContext_fromItem___block_invoke;
    v37 = &unk_1E7108028;
    v38 = v9;
    objc_copyWeak(&v40, &location);
    v39 = v10;
    dispatch_after(v26, MEMORY[0x1E69E96A0], &v34);

    objc_destroyWeak(&v40);
    objc_destroyWeak(&location);
    goto LABEL_16;
  }

LABEL_15:
  [v9 _prepareForFocusAnimation:1];
  [v9 _animateFocusAnimation:1];
LABEL_16:
  v27 = [(_UIFocusAnimationCoordinatorManager *)self inheritedAnimationCoordinatorActiveAnimationStack:v34];
  v28 = [v27 count];

  if (v28)
  {
    v29 = [(_UIFocusAnimationCoordinatorManager *)self inheritedAnimationCoordinatorActiveAnimationStack];
    v30 = [v29 lastObject];

    [v9 _prepareForFocusAnimation:{objc_msgSend(v30, "integerValue")}];
    v31 = [(_UIFocusAnimationCoordinatorManager *)self inheritedAnimationCoordinatorActiveAnimationStack];
    [v31 removeLastObject];
  }

  else
  {
    [(_UIFocusAnimationCoordinatorManager *)self setActiveFocusAnimationCoordinator:0];
  }

  v32 = [objc_opt_class() activeCoordinatorMap];
  [v32 removeObjectForKey:v7];
}

- (void)_scheduleDelayedFocusingAnimationWithDelay:(double)a3
{
  v6[1] = *MEMORY[0x1E69E9840];
  [MEMORY[0x1E696AF00] cancelPreviousPerformRequestsWithTarget:self selector:sel__performDelayedFocusingAnimationIfNecessary object:0];
  v6[0] = *MEMORY[0x1E695DA28];
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  [(_UIFocusAnimationCoordinatorManager *)self performSelector:sel__performDelayedFocusingAnimationIfNecessary withObject:0 afterDelay:v5 inModes:a3];
}

@end