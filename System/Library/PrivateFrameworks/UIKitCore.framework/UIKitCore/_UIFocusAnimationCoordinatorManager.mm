@interface _UIFocusAnimationCoordinatorManager
+ (id)activeCoordinatorMap;
+ (id)animationCoordinatorForContext:(id)context;
- (_UIFocusAnimationCoordinatorManager)init;
- (id)willUpdateFocusInContext:(id)context;
- (void)_performDelayedFocusingAnimationIfNecessary;
- (void)_scheduleDelayedFocusingAnimationWithDelay:(double)delay;
- (void)didUpdateFocusInContext:(id)context fromItem:(id)item;
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
  lastFocusingItemAnimationCoordinator = [(_UIFocusAnimationCoordinatorManager *)self lastFocusingItemAnimationCoordinator];
  if (lastFocusingItemAnimationCoordinator)
  {
    v4 = lastFocusingItemAnimationCoordinator;
    [lastFocusingItemAnimationCoordinator _animateFocusAnimation:0];
    [(_UIFocusAnimationCoordinatorManager *)self setLastFocusingItemAnimationCoordinator:0];
    lastFocusingItemAnimationCoordinator = v4;
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

+ (id)animationCoordinatorForContext:(id)context
{
  contextCopy = context;
  activeCoordinatorMap = [self activeCoordinatorMap];
  v6 = [activeCoordinatorMap objectForKey:contextCopy];

  activeFocusAnimationCoordinator = [v6 activeFocusAnimationCoordinator];

  return activeFocusAnimationCoordinator;
}

- (id)willUpdateFocusInContext:(id)context
{
  contextCopy = context;
  v6 = [_UIFocusAnimationCoordinatorManager animationCoordinatorForContext:contextCopy];

  if (v6)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIFocusAnimationCoordinatorManager.m" lineNumber:59 description:@"Unbalanced will/did update focus calls to focus animation manager."];
  }

  [(_UIFocusAnimationCoordinatorManager *)self _performDelayedFocusingAnimationIfNecessary];
  activeFocusAnimationCoordinator = [(_UIFocusAnimationCoordinatorManager *)self activeFocusAnimationCoordinator];
  if (activeFocusAnimationCoordinator)
  {
    v8 = activeFocusAnimationCoordinator;
    inheritedAnimationCoordinatorActiveAnimationStack = [(_UIFocusAnimationCoordinatorManager *)self inheritedAnimationCoordinatorActiveAnimationStack];
    v10 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v8, "activeFocusAnimation")}];
    [inheritedAnimationCoordinatorActiveAnimationStack addObject:v10];
  }

  else
  {
    v8 = [[UIFocusAnimationCoordinator alloc] _initWithFocusUpdateContext:contextCopy];
    [(_UIFocusAnimationCoordinatorManager *)self setActiveFocusAnimationCoordinator:v8];
  }

  activeCoordinatorMap = [objc_opt_class() activeCoordinatorMap];
  [activeCoordinatorMap setObject:self forKey:contextCopy];

  return v8;
}

- (void)didUpdateFocusInContext:(id)context fromItem:(id)item
{
  contextCopy = context;
  itemCopy = item;
  v9 = [_UIFocusAnimationCoordinatorManager animationCoordinatorForContext:contextCopy];
  if (!v9)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIFocusAnimationCoordinatorManager.m" lineNumber:79 description:@"Unbalanced will/did update focus calls to focus animation manager."];
  }

  unfocusingItems = [(_UIFocusAnimationCoordinatorManager *)self unfocusingItems];
  nextFocusedItem = [contextCopy nextFocusedItem];
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

  if (nextFocusedItem)
  {
    [unfocusingItems removeObject:nextFocusedItem];
  }

  [v9 _prepareForFocusAnimation:0];
  v23 = fabs(v16);
  if (fabs(v19) < 2.22044605e-16 || v23 < 2.22044605e-16)
  {
    [v9 _animateFocusAnimation:{0, 2.22044605e-16, v23}];
    if (!itemCopy)
    {
      goto LABEL_15;
    }
  }

  else
  {
    [(_UIFocusAnimationCoordinatorManager *)self setLastFocusingItemAnimationCoordinator:v9, 2.22044605e-16, v23];
    [(_UIFocusAnimationCoordinatorManager *)self _scheduleDelayedFocusingAnimationWithDelay:v19];
    if (!itemCopy)
    {
      goto LABEL_15;
    }
  }

  v25 = v12 - v14;
  if (v25 < v22)
  {
    objc_initWeak(&location, itemCopy);
    [unfocusingItems addObject:itemCopy];
    v26 = dispatch_time(0, ((v22 - v25) * 1000000000.0));
    v34 = MEMORY[0x1E69E9820];
    v35 = 3221225472;
    v36 = __72___UIFocusAnimationCoordinatorManager_didUpdateFocusInContext_fromItem___block_invoke;
    v37 = &unk_1E7108028;
    v38 = v9;
    objc_copyWeak(&v40, &location);
    v39 = unfocusingItems;
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
    inheritedAnimationCoordinatorActiveAnimationStack = [(_UIFocusAnimationCoordinatorManager *)self inheritedAnimationCoordinatorActiveAnimationStack];
    lastObject = [inheritedAnimationCoordinatorActiveAnimationStack lastObject];

    [v9 _prepareForFocusAnimation:{objc_msgSend(lastObject, "integerValue")}];
    inheritedAnimationCoordinatorActiveAnimationStack2 = [(_UIFocusAnimationCoordinatorManager *)self inheritedAnimationCoordinatorActiveAnimationStack];
    [inheritedAnimationCoordinatorActiveAnimationStack2 removeLastObject];
  }

  else
  {
    [(_UIFocusAnimationCoordinatorManager *)self setActiveFocusAnimationCoordinator:0];
  }

  activeCoordinatorMap = [objc_opt_class() activeCoordinatorMap];
  [activeCoordinatorMap removeObjectForKey:contextCopy];
}

- (void)_scheduleDelayedFocusingAnimationWithDelay:(double)delay
{
  v6[1] = *MEMORY[0x1E69E9840];
  [MEMORY[0x1E696AF00] cancelPreviousPerformRequestsWithTarget:self selector:sel__performDelayedFocusingAnimationIfNecessary object:0];
  v6[0] = *MEMORY[0x1E695DA28];
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  [(_UIFocusAnimationCoordinatorManager *)self performSelector:sel__performDelayedFocusingAnimationIfNecessary withObject:0 afterDelay:v5 inModes:delay];
}

@end