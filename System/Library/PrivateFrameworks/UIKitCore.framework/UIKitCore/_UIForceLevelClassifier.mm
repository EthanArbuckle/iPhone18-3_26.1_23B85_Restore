@interface _UIForceLevelClassifier
- (_UIForceLevelClassifier)init;
- (_UIForceLevelClassifierDelegate)delegate;
- (id)observableForProgressToForceLevel:(int64_t)level;
- (id)observableForProgressToForceLevel:(int64_t)level minimumRequiredForceLevel:(int64_t)forceLevel;
- (void)_accessibilityForceSensitivityChanged:(id)changed;
- (void)_notifyDelegateOfProgress:(double)progress toForceLevel:(int64_t)level;
- (void)dealloc;
- (void)receiveObservedValue:(id)value;
- (void)reset;
- (void)setCurrentForceLevel:(int64_t)level;
- (void)setDelegate:(id)delegate;
@end

@implementation _UIForceLevelClassifier

- (_UIForceLevelClassifier)init
{
  v8.receiver = self;
  v8.super_class = _UIForceLevelClassifier;
  v2 = [(_UIForceLevelClassifier *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696ADB0]);
    progressTouchForceObservable = v2->_progressTouchForceObservable;
    v2->_progressTouchForceObservable = v3;

    _AXSForceTouchSensitivity();
    [(_UIForceLevelClassifier *)v2 setCurrentTouchForceMultiplier:v5];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__accessibilityForceSensitivityChanged_ name:@"UIAccessibilityForceTouchSensitivityChangedNotification" object:0];

    v2->_respectsSystemGestureTouchFiltering = 1;
  }

  return v2;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:@"UIAccessibilityForceTouchSensitivityChangedNotification" object:0];

  v4.receiver = self;
  v4.super_class = _UIForceLevelClassifier;
  [(_UIForceLevelClassifier *)&v4 dealloc];
}

- (void)reset
{
  delegate = [(_UIForceLevelClassifier *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate _forceLevelClassifierDidReset:self];
  }
}

- (void)setCurrentForceLevel:(int64_t)level
{
  currentForceLevel = self->_currentForceLevel;
  if (currentForceLevel != level)
  {
    self->_currentForceLevel = level;
    delegate = [(_UIForceLevelClassifier *)self delegate];
    [delegate _forceLevelClassifier:self currentForceLevelDidChange:currentForceLevel];
  }
}

- (void)_accessibilityForceSensitivityChanged:(id)changed
{
  _AXSForceTouchSensitivity();
  [(_UIForceLevelClassifier *)self setCurrentTouchForceMultiplier:v4];

  [(_UIForceLevelClassifier *)self touchForceMultiplierDidChange];
}

- (void)receiveObservedValue:(id)value
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __48___UIForceLevelClassifier_receiveObservedValue___block_invoke;
  aBlock[3] = &unk_1E710B6D8;
  aBlock[4] = self;
  v5 = _Block_copy(aBlock);
  if ([(_UIForceLevelClassifier *)self wantsUnclampedForceValues])
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __48___UIForceLevelClassifier_receiveObservedValue___block_invoke_2;
    v7[3] = &unk_1E70F3590;
    v7[4] = self;
    [value ifObservationUnclamped:v5 ifReset:v7];
  }

  else
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __48___UIForceLevelClassifier_receiveObservedValue___block_invoke_3;
    v6[3] = &unk_1E70F3590;
    v6[4] = self;
    [value ifObservation:v5 ifReset:v6];
  }

  [(NSObservationSource *)self->_progressTouchForceObservable receiveObservedValue:value];
}

- (id)observableForProgressToForceLevel:(int64_t)level
{
  if ((level - 1) >= 3)
  {
    v3 = 0xFFFFFFFF80000000;
  }

  else
  {
    v3 = level - 1;
  }

  return [(_UIForceLevelClassifier *)self observableForProgressToForceLevel:level minimumRequiredForceLevel:v3];
}

- (id)observableForProgressToForceLevel:(int64_t)level minimumRequiredForceLevel:(int64_t)forceLevel
{
  v4 = 0;
  if (level > forceLevel && level >= 1 && (forceLevel & 0x8000000000000000) == 0)
  {
    if (forceLevel >= 3)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __progressObservableCacheKey_block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0l;
      block[4] = forceLevel;
      if (progressObservableCacheKey_once != -1)
      {
        dispatch_once(&progressObservableCacheKey_once, block);
      }
    }

    level = [MEMORY[0x1E696AD98] numberWithInteger:forceLevel + 4 * level];
    cachedProgressObservables = self->_cachedProgressObservables;
    if (!cachedProgressObservables)
    {
      v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v11 = self->_cachedProgressObservables;
      self->_cachedProgressObservables = v10;

      cachedProgressObservables = self->_cachedProgressObservables;
    }

    v4 = [(NSMutableDictionary *)cachedProgressObservables objectForKey:level];
    if (!v4)
    {
      v12 = [(_UIForceLevelClassifier *)self transformerFromTouchForceMessageToProgressToForceLevel:level minimumRequiredForceLevel:forceLevel];
      v4 = [(NSObservationSource *)self->_progressTouchForceObservable addObserver:v12];
      [(NSMutableDictionary *)self->_cachedProgressObservables setObject:v4 forKey:level];
    }
  }

  return v4;
}

- (void)setDelegate:(id)delegate
{
  objc_storeWeak(&self->_delegate, delegate);
  if ((objc_opt_respondsToSelector() & 1) != 0 && !self->_delegateObservations)
  {
    array = [MEMORY[0x1E695DF70] array];
    for (i = 1; ; i = 3)
    {
      do
      {
        v6 = i;
        objc_initWeak(&location, self);
        v7 = [(_UIForceLevelClassifier *)self observableForProgressToForceLevel:v6];
        v9[0] = MEMORY[0x1E69E9820];
        v9[1] = 3221225472;
        v9[2] = __39___UIForceLevelClassifier_setDelegate___block_invoke;
        v9[3] = &unk_1E710B948;
        objc_copyWeak(v10, &location);
        v10[1] = v6;
        v8 = [v7 addObserverBlock:v9];

        [array addObject:v8];
        objc_storeStrong(&self->_delegateObservations, array);

        objc_destroyWeak(v10);
        objc_destroyWeak(&location);
        i = 2;
      }

      while (v6 == 1);
      if (v6 != 2)
      {
        break;
      }
    }
  }
}

- (void)_notifyDelegateOfProgress:(double)progress toForceLevel:(int64_t)level
{
  delegate = [(_UIForceLevelClassifier *)self delegate];
  [delegate _forceLevelClassifier:self didUpdateProgress:level toForceLevel:progress];
}

- (_UIForceLevelClassifierDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end