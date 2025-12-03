@interface _UIFocusEffectsController
- (CGPoint)currentOffset;
- (CGPoint)displayOffset;
- (_UIFocusEffectsController)init;
- (void)_notifyObserversForMovementDirection:(CGVector)direction;
- (void)addObserver:(id)observer;
- (void)cancelRollbackAnimation;
- (void)reset;
- (void)startRollbackAnimation;
- (void)updateCurrentOffset:(CGPoint)offset overrideDisplayOffset:(id)displayOffset;
@end

@implementation _UIFocusEffectsController

- (void)reset
{
  [(_UIFocusEffectsController *)self resetDisplayOffsetAccumulationFactor];
  v3 = *MEMORY[0x1E695EFF8];
  v4 = *(MEMORY[0x1E695EFF8] + 8);
  v5 = [MEMORY[0x1E696B098] valueWithCGPoint:{*MEMORY[0x1E695EFF8], v4}];
  [(_UIFocusEffectsController *)self updateCurrentOffset:v5 overrideDisplayOffset:v3, v4];

  [(_UIFocusEffectsController *)self cancelRollbackAnimation];
}

- (void)cancelRollbackAnimation
{
  rollbackAnimation = self->_rollbackAnimation;
  if (rollbackAnimation)
  {
    [(_UIDynamicAnimation *)rollbackAnimation stop];
    v4 = self->_rollbackAnimation;
    self->_rollbackAnimation = 0;
  }
}

- (_UIFocusEffectsController)init
{
  v3.receiver = self;
  v3.super_class = _UIFocusEffectsController;
  result = [(_UIFocusEffectsController *)&v3 init];
  if (result)
  {
    result->_displayMovementAdjustment = 1.0;
    result->_displayOffsetAccumulatorEnabled = 0;
  }

  return result;
}

- (void)updateCurrentOffset:(CGPoint)offset overrideDisplayOffset:(id)displayOffset
{
  x = offset.x;
  y = offset.y;
  [displayOffset CGPointValue];
  if (displayOffset)
  {
    v8 = self->_displayOffset.x != v6;
    if (self->_displayOffset.y != displayOffset.x)
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  currentOffset = self->_currentOffset;
  v10.f64[0] = x;
  if (currentOffset.x != x || self->_currentOffset.y != y || v8)
  {
    __asm
    {
      FMOV            V3.2D, #1.0
      FMOV            V4.2D, #-1.0
    }

    if (self->_displayOffsetAccumulatorEnabled)
    {
      if (displayOffset)
      {
        self->_displayOffset.x = v6;
        self->_displayOffset.y = displayOffset.x;
      }

      else
      {
        v18.f64[0] = x;
        v18.f64[1] = y;
        displayOffset = self->_displayOffset;
        self->_displayOffset = vmaxnmq_f64(vminnmq_f64(vaddq_f64(displayOffset, vmulq_n_f64(vsubq_f64(v18, currentOffset), self->_displayMovementAdjustment)), _Q3), _Q4);
      }
    }

    else
    {
      self->_displayOffset.x = x;
      self->_displayOffset.y = y;
    }

    v10.f64[1] = y;
    self->_currentOffset = vmaxnmq_f64(vminnmq_f64(v10, _Q3), _Q4);
    if (_UIInternalPreferencesRevisionOnce != -1)
    {
      v31 = _Q4;
      *v35 = _Q3;
      dispatch_once(&_UIInternalPreferencesRevisionOnce, &__block_literal_global_5_11);
      _Q4 = v31;
      _Q3 = *v35;
    }

    v19 = _UIInternalPreferencesRevisionVar;
    displayOffset.x = 0.8;
    if (_UIInternalPreferencesRevisionVar >= 1)
    {
      v27 = _UIInternalPreference_FocusEngineMotionEffectMaxOffset;
      if (_UIInternalPreferencesRevisionVar != _UIInternalPreference_FocusEngineMotionEffectMaxOffset)
      {
        displayOffsetCopy = displayOffset;
        v32 = _Q4;
        *v36 = _Q3;
        while (v19 >= v27)
        {
          _UIInternalPreferenceSync(v19, &_UIInternalPreference_FocusEngineMotionEffectMaxOffset, @"FocusEngineMotionEffectMaxOffset", _UIInternalPreferenceUpdateDouble);
          v27 = _UIInternalPreference_FocusEngineMotionEffectMaxOffset;
          if (v19 == _UIInternalPreference_FocusEngineMotionEffectMaxOffset)
          {
            _Q4 = v32;
            _Q3 = *v36;
            displayOffset.x = displayOffsetCopy.x;
            goto LABEL_21;
          }
        }

        *&displayOffset.x = qword_1EA95E3D8;
        _Q4 = v32;
        _Q3 = *v36;
      }
    }

LABEL_21:
    v20 = vmaxnmq_f64(vminnmq_f64(vdivq_f64(self->_displayOffset, vdupq_lane_s64(*&displayOffset.x, 0)), _Q3), _Q4);
    v21 = v20.f64[1];
    v30 = v20.f64[0];
    [(_UIFocusEffectsController *)self _notifyObserversForMovementDirection:displayOffsetCopy];
    v22 = +[UIWindow _applicationKeyWindow];
    if (v22)
    {
      v34 = v22;
      _focusSystem = [v22 _focusSystem];
      focusedItem = [_focusSystem focusedItem];

      if (focusedItem && (objc_opt_respondsToSelector() & 1) != 0)
      {
        v25 = [UIFocusMovementHint alloc];
        [focusedItem frame];
        v26 = [(UIFocusMovementHint *)v25 initWithMovementDirection:v30 itemSize:v21];
        [focusedItem didHintFocusMovement:v26];
      }

      v22 = v34;
    }
  }
}

- (void)startRollbackAnimation
{
  [(_UIFocusEffectsController *)self cancelRollbackAnimation];
  displayOffset = self->_displayOffset;
  currentOffset = self->_currentOffset;
  v10 = displayOffset;
  v4 = [[_UIDynamicValueConvergenceAnimation alloc] initWithValue:1.0 targetValue:0.0 convergenceRate:0.99 minimumDifference:0.01];
  v7[4] = self;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __51___UIFocusEffectsController_startRollbackAnimation__block_invoke;
  v8[3] = &unk_1E7108970;
  v8[4] = self;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51___UIFocusEffectsController_startRollbackAnimation__block_invoke_2;
  v7[3] = &unk_1E70F5AC0;
  [(_UIDynamicValueConvergenceAnimation *)v4 runWithValueApplier:v8 completion:v7];
  rollbackAnimation = self->_rollbackAnimation;
  self->_rollbackAnimation = v4;
  v6 = v4;
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  observers = self->_observers;
  v8 = observerCopy;
  if (!observers)
  {
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v7 = self->_observers;
    self->_observers = weakObjectsHashTable;

    observerCopy = v8;
    observers = self->_observers;
  }

  [(NSHashTable *)observers addObject:observerCopy];
}

- (void)_notifyObserversForMovementDirection:(CGVector)direction
{
  dy = direction.dy;
  dx = direction.dx;
  v16 = *MEMORY[0x1E69E9840];
  setRepresentation = [(NSHashTable *)self->_observers setRepresentation];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = [setRepresentation countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(setRepresentation);
        }

        [*(*(&v11 + 1) + 8 * v10++) focusEffectsController:self updateMovementDirection:{dx, dy}];
      }

      while (v8 != v10);
      v8 = [setRepresentation countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (CGPoint)displayOffset
{
  x = self->_displayOffset.x;
  y = self->_displayOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)currentOffset
{
  x = self->_currentOffset.x;
  y = self->_currentOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

@end