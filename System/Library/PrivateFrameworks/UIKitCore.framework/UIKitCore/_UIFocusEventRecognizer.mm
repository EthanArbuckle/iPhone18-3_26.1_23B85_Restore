@interface _UIFocusEventRecognizer
- (BOOL)_attemptPanFocusMovementWithHeading:(unint64_t)heading acceleratedVelocity:(CGPoint)velocity focusSystem:(id)system studyLogData:(id)data;
- (BOOL)_attemptRotaryFocusMovementWithLinearHeading:(unint64_t)heading directionalHeading:(unint64_t)directionalHeading focusMovementAxis:(int64_t)axis focusSystem:(id)system acceleratedVelocity:(CGPoint)velocity studyLogData:(id)data;
- (BOOL)_attemptToRecognizeContinuousMovementRequest:(id)request;
- (BOOL)_buttonMaskTimeHasExpired;
- (BOOL)_canMoveFocusWithRotaryInputInFocusContext:(id)context;
- (BOOL)_didRecognizeFocusMovementRequest:(id)request;
- (BOOL)_hasFailedMovementHeadingExpired;
- (BOOL)_joystickAttemptFocusMovementWithRequest:(id)request;
- (BOOL)_joystickFocusMovement:(id)movement shouldBeConsideredEqualToFocusMovement:(id)focusMovement;
- (BOOL)_moveInDirection:(unint64_t)direction groupFilter:(int64_t)filter withEvaluator:(id)evaluator;
- (BOOL)_moveInDirection:(unint64_t)direction groupFilter:(int64_t)filter withSearchInfo:(id)info;
- (BOOL)_moveWithEvent:(id)event;
- (BOOL)_shouldAcceptInputType:(unint64_t)type;
- (BOOL)_shouldPerformFocusUpdateWithCurrentMomentumStatus;
- (BOOL)gestureRecognizer:(id)recognizer shouldRequireFailureOfGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (CGPoint)_applyAxisLockingForNormalizedPoint:(CGPoint)point toDelta:(CGPoint)delta;
- (CGPoint)_applyButtonMaskTimeToValue:(CGPoint)value remoteTouchSurfaceType:(unint64_t)type;
- (CGPoint)_applyHorizontalFlipForFocusItemMetadata:(id)metadata toDelta:(CGPoint)delta;
- (CGPoint)_applyPanDeadbandToValue:(CGPoint)value startPoint:(CGPoint)point currentPoint:(CGPoint)currentPoint remoteTouchSurfaceType:(unint64_t)type;
- (CGPoint)_calculateDeltaForNormalizedPoint:(CGPoint)point studyLogData:(id)data;
- (CGPoint)_pointForLinearValue:(double)value axis:(unint64_t)axis;
- (CGSize)_momentumReferenceSize;
- (CGSize)_touchSensitivityForFocusItemMetadata:(id)metadata remoteTouchSurfaceType:(unint64_t)type;
- (CGVector)_accelerationFactorForCurrentVelocity:(CGPoint)velocity alpha:(double)alpha isRotaryGesture:(BOOL)gesture isFocusInKeyboard:(BOOL)keyboard remoteTouchSurfaceType:(unint64_t)type;
- (CGVector)_joystickVelocityForHeading:(unint64_t)heading;
- (NSSet)gesturesForFailureRequirements;
- (UIView)owningView;
- (_UIFocusEventRecognizer)init;
- (_UIFocusEventRecognizer)initWithOwningView:(id)view;
- (_UIFocusEventRecognizerDelegate)delegate;
- (double)_joystickRepeatDurationForTimeInMovementZone:(double)zone;
- (id)_createMovementInfoForHeading:(unint64_t)heading groupFilter:(int64_t)filter acceleratedVelocity:(CGPoint)velocity;
- (id)_createPanMovementRequestWithFocusSystem:(id)system;
- (id)_createRotaryMovementRequestWithFocusSystem:(id)system;
- (id)_focusMovementForJoystickPosition:(CGPoint)position usingMinimumRadius:(double)radius focusMovementStyle:(int64_t)style;
- (id)_focusMovementSystem;
- (id)_focusSystemSceneComponent;
- (id)_globalCoordinateSpace;
- (id)_retrieveFocusItemMetadata;
- (id)currentFocusBehavior;
- (int)_touchRegionForDigitizerLocation:(CGPoint)location;
- (unint64_t)_calculateDirectionalHeadingForAccumulator:(CGVector)accumulator studyLogData:(id)data;
- (unint64_t)_calculateLinearHeadingForAccumulator:(CGVector)accumulator studyLogData:(id)data;
- (unint64_t)_headingForJoystickPosition:(CGPoint)position usingMinimumRadius:(double)radius;
- (unint64_t)_momentumFocusHeadingForAccumulator:(CGVector)accumulator;
- (void)_beginMomentumImmediatelyWithVelocity:(CGPoint)velocity friction:(double)friction;
- (void)_cancelAllGestureRecognizers;
- (void)_cancelShowRotaryIndicatorTimer;
- (void)_cleanupPanMomentumWithAccumulator:(CGVector)accumulator movementSuccess:(BOOL)success;
- (void)_continueTouchWithMomentum;
- (void)_continuousMovementFailedWithPrimaryHeading:(unint64_t)heading;
- (void)_continuousMovementSucceededWithDirectionalHeading:(unint64_t)heading;
- (void)_exitJoystickModeForReal:(id)real;
- (void)_focusSystemEnabledStateDidChange:(id)change;
- (void)_gestureRecognizerFailed:(id)failed;
- (void)_handleArrowButtonGesture:(id)gesture;
- (void)_handleJoystickGesture:(id)gesture;
- (void)_handleJoystickRepeatMode:(id)mode;
- (void)_handleJoystickTiltMode:(id)mode;
- (void)_handlePageButtonGesture:(id)gesture;
- (void)_handlePanGesture:(id)gesture;
- (void)_handleRotaryBegin:(id)begin;
- (void)_handleRotaryCancelled:(id)cancelled;
- (void)_handleRotaryEnd:(id)end;
- (void)_handleRotaryGesture:(id)gesture;
- (void)_handleSelectGesture:(id)gesture;
- (void)_handleSelectObserverGesture:(id)gesture;
- (void)_handleShoulderButtonGesture:(id)gesture;
- (void)_handleTabulatorGesture:(id)gesture;
- (void)_handleTapGesture:(id)gesture;
- (void)_hideRotaryIndicator;
- (void)_joystickDisplayLinkHeartbeat:(id)heartbeat;
- (void)_joystickGestureBegan:(id)began;
- (void)_joystickGestureEnded:(id)ended;
- (void)_joystickGestureUpdated:(id)updated;
- (void)_momentumHeartbeat:(id)heartbeat;
- (void)_panGestureCancelled:(id)cancelled;
- (void)_panGestureEnd:(id)end;
- (void)_panGestureStart:(id)start;
- (void)_recordMomentumForPoint:(CGPoint)point reportedVelocity:(CGPoint)velocity;
- (void)_resetCachedFocusItemMetadata;
- (void)_resetJoystick;
- (void)_resetMomentum;
- (void)_resetPanDeadband;
- (void)_resetProgressAccumulatorWithHeading:(unint64_t)heading;
- (void)_sendGestureBeginNotification;
- (void)_sendMomentumEndNotificationsAndAnimateRollback:(BOOL)rollback;
- (void)_showRotaryIndicator;
- (void)_showRotaryIndicatorAfterDelay;
- (void)_stopMomentumAndPerformRollback;
- (void)_timerFiredForShowRotaryIndicator:(id)indicator;
- (void)_updateAccumulatorsWithScaledDelta:(CGPoint)delta unlockedDelta:(CGPoint)unlockedDelta studyLogData:(id)data;
- (void)_updateFailedContinuousMovementHeading:(unint64_t)heading;
- (void)_updateGestureRecognizersForcingRemoval:(BOOL)removal studyLogData:(id)data;
- (void)_updateMotionEffectsControllerWithProgressAccumulator:(CGVector)accumulator unlockedAccumulator:(CGVector)unlockedAccumulator;
- (void)_updatePanLocation:(CGPoint)location reportedVelocity:(CGPoint)velocity remoteTouchSurfaceType:(unint64_t)type;
- (void)_updateRotaryDistance:(double)distance delta:(double)delta reportedVelocity:(double)velocity remoteTouchSurfaceType:(unint64_t)type focusMovementAxis:(int64_t)axis;
- (void)_updateRotaryIndicatorView;
- (void)dealloc;
- (void)reset;
- (void)rotaryGestureRecognizerBeganClassifyingMovement:(id)movement;
- (void)setEnabled:(BOOL)enabled;
- (void)setGesture:(id)gesture forName:(unint64_t)name;
@end

@implementation _UIFocusEventRecognizer

- (void)_resetCachedFocusItemMetadata
{
  cachedFocusItemMetadata = self->_cachedFocusItemMetadata;
  self->_cachedFocusItemMetadata = 0;
}

- (BOOL)_hasFailedMovementHeadingExpired
{
  v2 = CACurrentMediaTime() - self->_failedContinuousMovementTime;
  v3 = _UIInternalPreferenceUsesDefault(&_UIInternalPreference_FocusFailedMovementHeadingTimeout, @"FocusFailedMovementHeadingTimeout", _UIInternalPreferenceUpdateDouble);
  v4 = *&qword_1ED48AEF0;
  if (v3)
  {
    v4 = 0.5;
  }

  return v2 > v4;
}

- (void)_cancelAllGestureRecognizers
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = NSAllMapTableValues(self->_gestureRecognizers);
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        isEnabled = [v7 isEnabled];
        [v7 setEnabled:0];
        [v7 setEnabled:isEnabled];
      }

      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }
}

- (void)_updateRotaryIndicatorView
{
  WeakRetained = objc_loadWeakRetained(&self->_owningView);
  _focusBehavior = [WeakRetained _focusBehavior];

  v4 = _UIInternalPreferenceUsesDefault(&_UIInternalPreference_B519_ShowRotaryIndicator, @"B519_ShowRotaryIndicator", _UIInternalPreferenceUpdateBool);
  if (byte_1ED48AEE4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1;
  }

  rotaryIndicatorView = self->_rotaryIndicatorView;
  if (rotaryIndicatorView)
  {
    goto LABEL_5;
  }

  if (!(v5 & 1 | (([_focusBehavior supportsIndirectRotaryMovement] & 1) == 0)))
  {
    v7 = objc_loadWeakRetained(&self->_owningView);
    v8 = [_UIFocusRotaryIndicatorView createRotaryIndicatorInView:v7];
    v9 = self->_rotaryIndicatorView;
    self->_rotaryIndicatorView = v8;

LABEL_13:
    goto LABEL_14;
  }

  rotaryIndicatorView = self->_rotaryIndicatorView;
  if (rotaryIndicatorView)
  {
LABEL_5:
    if ((v5 & 1) == 0)
    {
      if ([_focusBehavior supportsIndirectRotaryMovement])
      {
        goto LABEL_14;
      }

      rotaryIndicatorView = self->_rotaryIndicatorView;
    }

    [(UIView *)rotaryIndicatorView removeFromSuperview];
    v7 = self->_rotaryIndicatorView;
    self->_rotaryIndicatorView = 0;
    goto LABEL_13;
  }

LABEL_14:
}

- (void)reset
{
  [(_UIFocusEventRecognizer *)self _resetMomentum];
  [(_UIFocusEventRecognizer *)self _resetJoystick];
  [(_UIFocusEventRecognizer *)self _resetProgressAccumulator];
  [(_UIFocusEventRecognizer *)self _resetFailedMovementHeading];
  [(_UIFocusEventRecognizer *)self _cancelAllGestureRecognizers];
  [(_UIFocusEffectsController *)self->_motionEffectsController reset];
  self->_inputType = 0;
  *&self->_flags &= ~0x80u;
}

- (void)_resetJoystick
{
  self->_inputType = 0;
  *&self->_flags &= ~4u;
  [(CADisplayLink *)self->_joystickFocusDirectionDisplayLink invalidate];
  joystickFocusDirectionDisplayLink = self->_joystickFocusDirectionDisplayLink;
  self->_joystickFocusDirectionDisplayLink = 0;

  [(NSTimer *)self->_joystickModeRepeatTimer invalidate];
  joystickModeRepeatTimer = self->_joystickModeRepeatTimer;
  self->_joystickModeRepeatTimer = 0;

  [(NSTimer *)self->_joystickModeExitTimer invalidate];
  joystickModeExitTimer = self->_joystickModeExitTimer;
  self->_joystickModeExitTimer = 0;

  self->_joystickRepeatCount = 0;
}

- (void)_resetMomentum
{
  self->_momentumVelocity = *MEMORY[0x1E695EFF8];
  touchBeganPoint = self->_touchBeganPoint;
  self->_firstMomentumTouchPoint = touchBeganPoint;
  self->_lastMomentumTouchPoint = touchBeganPoint;
  [(CADisplayLink *)self->_momentumDisplayLink invalidate];
  momentumDisplayLink = self->_momentumDisplayLink;
  self->_momentumDisplayLink = 0;

  *&self->_flags &= ~2u;
}

- (void)dealloc
{
  [(_UIFocusEventRecognizer *)self reset];
  [(_UIFocusEventRecognizer *)self _updateGestureRecognizersForcingRemoval:1];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:@"_UIFocusSystemEnabledStateDidChangeNotification" object:0];

  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter2 removeObserver:self name:@"_UIFocusBehaviorDidChangeNotification" object:0];

  defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter3 removeObserver:self name:@"UIFocusDidUpdateNotification" object:0];

  v6.receiver = self;
  v6.super_class = _UIFocusEventRecognizer;
  [(_UIFocusEventRecognizer *)&v6 dealloc];
}

- (_UIFocusEventRecognizer)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"_UIFocusEventRecognizer.m" lineNumber:266 description:@"-init is not a valid initializer."];

  return 0;
}

- (_UIFocusEventRecognizer)initWithOwningView:(id)view
{
  v30 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  v28.receiver = self;
  v28.super_class = _UIFocusEventRecognizer;
  v5 = [(_UIFocusEventRecognizer *)&v28 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_owningView, viewCopy);
    v7 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:1282 valueOptions:0 capacity:0];
    gestureRecognizers = v6->_gestureRecognizers;
    v6->_gestureRecognizers = v7;

    v6->_enabled = 1;
    v9 = objc_alloc_init(_UIFocusEffectsController);
    motionEffectsController = v6->_motionEffectsController;
    v6->_motionEffectsController = v9;

    [(_UIFocusEffectsController *)v6->_motionEffectsController setDisplayOffsetAccumulatorEnabled:1];
    traitCollection = [viewCopy traitCollection];
    if ([traitCollection userInterfaceIdiom] == 2)
    {
    }

    else
    {
      traitCollection2 = [viewCopy traitCollection];
      userInterfaceIdiom = [traitCollection2 userInterfaceIdiom];

      if (userInterfaceIdiom != 3)
      {
LABEL_16:
        [(_UIFocusEventRecognizer *)v6 _updateGestureRecognizersForcingRemoval:0];
        defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
        [defaultCenter addObserver:v6 selector:sel__focusSystemEnabledStateDidChange_ name:@"_UIFocusSystemEnabledStateDidChangeNotification" object:0];

        defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
        [defaultCenter2 addObserver:v6 selector:sel__focusBehaviorDidChange_ name:@"_UIFocusBehaviorDidChangeNotification" object:0];

        defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
        [defaultCenter3 addObserver:v6 selector:sel__focusDidUpdate_ name:@"UIFocusDidUpdateNotification" object:0];

        goto LABEL_17;
      }
    }

    gestureRecognizers = [viewCopy gestureRecognizers];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v15 = [gestureRecognizers countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v25;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v25 != v17)
          {
            objc_enumerationMutation(gestureRecognizers);
          }

          v19 = *(*(&v24 + 1) + 8 * i);
          if (([v19 _isGestureType:8] & 1) != 0 || objc_msgSend(v19, "_isGestureType:", 12))
          {
            [viewCopy removeGestureRecognizer:v19];
          }
        }

        v16 = [gestureRecognizers countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v16);
    }

    goto LABEL_16;
  }

LABEL_17:

  return v6;
}

- (void)setEnabled:(BOOL)enabled
{
  if (self->_enabled != enabled)
  {
    [(_UIFocusEventRecognizer *)self _updateGestureRecognizersForcingRemoval:!enabled];
    self->_enabled = enabled;
  }
}

- (void)setGesture:(id)gesture forName:(unint64_t)name
{
  gestureRecognizers = self->_gestureRecognizers;
  if (gesture)
  {
    [(NSMapTable *)gestureRecognizers setObject:gesture forKey:name];
  }

  else
  {
    [(NSMapTable *)gestureRecognizers removeObjectForKey:name];
  }
}

- (void)_updateGestureRecognizersForcingRemoval:(BOOL)removal studyLogData:(id)data
{
  dataCopy = data;
  WeakRetained = objc_loadWeakRetained(&self->_owningView);
  _focusBehavior = [WeakRetained _focusBehavior];
  v8 = _focusBehavior;
  if (removal)
  {
    supportsIndirectPanningMovement = 0;
  }

  else
  {
    supportsIndirectPanningMovement = [_focusBehavior supportsIndirectPanningMovement];
  }

  v10 = [(_UIFocusEventRecognizer *)self gestureForName:1];
  v11 = v10;
  if (v10 || !supportsIndirectPanningMovement)
  {
    if ((v10 == 0) | supportsIndirectPanningMovement & 1)
    {
      goto LABEL_16;
    }

    [WeakRetained removeGestureRecognizer:v10];
    [(_UIFocusEventRecognizer *)self setGesture:0 forName:1];
    if (!dataCopy)
    {
      goto LABEL_16;
    }

    v12 = @"remove";
  }

  else
  {
    v11 = [(UIPanGestureRecognizer *)[_UIFocusEnginePanGestureRecognizer alloc] initWithTarget:self action:sel__handlePanGesture_];
    [(UIGestureRecognizer *)v11 setName:@"com.apple.focus._UIFocusGesturePan"];
    [(UIPanGestureRecognizer *)v11 setDelegate:self];
    [(_UIFocusEventRecognizer *)self setGesture:v11 forName:1];
    [(UIGestureRecognizer *)v11 setDelaysTouchesBegan:0];
    [(UIGestureRecognizer *)v11 setCancelsTouchesInView:0];
    [(UIPanGestureRecognizer *)v11 _setHysteresis:1.0];
    [(UIGestureRecognizer *)v11 setAllowedTouchTypes:&unk_1EFE2BE00];
    [WeakRetained addGestureRecognizer:v11];
    if (!dataCopy || !v11)
    {
      goto LABEL_16;
    }

    v12 = @"add";
  }

  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v11];
  [dataCopy setObject:v13 forKeyedSubscript:@"_UIFocusGesturePanAddress"];

  name = [(UIGestureRecognizer *)v11 name];
  v15 = name;
  if (name)
  {
    v16 = name;
  }

  else
  {
    v16 = &stru_1EFB14550;
  }

  [dataCopy setObject:v16 forKeyedSubscript:@"_UIFocusGesturePanName"];

  [dataCopy setObject:v12 forKeyedSubscript:@"_UIFocusGesturePanAction"];
LABEL_16:

  if (removal)
  {
    shouldEnableFocusOnSelect = 0;
  }

  else
  {
    shouldEnableFocusOnSelect = [v8 shouldEnableFocusOnSelect];
  }

  v18 = [(_UIFocusEventRecognizer *)self gestureForName:3];
  v19 = v18;
  if (v18 || !shouldEnableFocusOnSelect)
  {
    if ((v18 == 0) | shouldEnableFocusOnSelect & 1)
    {
      goto LABEL_31;
    }

    [WeakRetained removeGestureRecognizer:v18];
    [(_UIFocusEventRecognizer *)self setGesture:0 forName:3];
    if (!dataCopy)
    {
      goto LABEL_31;
    }

    v20 = @"remove";
  }

  else
  {
    v19 = [[_UIFocusEnableOnSelectGestureRecognizer alloc] initWithTarget:self action:sel__handleSelectGesture_];
    [(UIGestureRecognizer *)v19 setName:@"com.apple.focus._UIFocusGestureSelect"];
    [(UIGestureRecognizer *)v19 setDelegate:self];
    [(_UIFocusEventRecognizer *)self setGesture:v19 forName:3];
    [WeakRetained addGestureRecognizer:v19];
    if (!dataCopy || !v19)
    {
      goto LABEL_31;
    }

    v20 = @"add";
  }

  v21 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v19];
  [dataCopy setObject:v21 forKeyedSubscript:@"_UIFocusGestureSelectAddress"];

  name2 = [(UIGestureRecognizer *)v19 name];
  v23 = name2;
  if (name2)
  {
    v24 = name2;
  }

  else
  {
    v24 = &stru_1EFB14550;
  }

  [dataCopy setObject:v24 forKeyedSubscript:@"_UIFocusGestureSelectName"];

  [dataCopy setObject:v20 forKeyedSubscript:@"_UIFocusGestureSelectAction"];
LABEL_31:

  if (removal)
  {
    shouldSupressIndirectMovementOnSelect = 0;
  }

  else
  {
    shouldSupressIndirectMovementOnSelect = [v8 shouldSupressIndirectMovementOnSelect];
  }

  v26 = [(_UIFocusEventRecognizer *)self gestureForName:4];
  v27 = v26;
  if (v26 || !shouldSupressIndirectMovementOnSelect)
  {
    if ((v26 == 0) | shouldSupressIndirectMovementOnSelect & 1)
    {
      goto LABEL_46;
    }

    [WeakRetained removeGestureRecognizer:v26];
    [(_UIFocusEventRecognizer *)self setGesture:0 forName:4];
    if (!dataCopy)
    {
      goto LABEL_46;
    }

    v28 = @"remove";
  }

  else
  {
    v27 = [[_UIFocusSelectObserverGestureRecognizer alloc] initWithTarget:self action:sel__handleSelectObserverGesture_];
    [(UIGestureRecognizer *)v27 setName:@"com.apple.focus._UIFocusGestureSelectObserver"];
    [(UIGestureRecognizer *)v27 setDelegate:self];
    [(_UIFocusEventRecognizer *)self setGesture:v27 forName:4];
    [WeakRetained addGestureRecognizer:v27];
    if (!dataCopy || !v27)
    {
      goto LABEL_46;
    }

    v28 = @"add";
  }

  v29 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v27];
  [dataCopy setObject:v29 forKeyedSubscript:@"_UIFocusGestureSelectObserverAddress"];

  name3 = [(UIGestureRecognizer *)v27 name];
  v31 = name3;
  if (name3)
  {
    v32 = name3;
  }

  else
  {
    v32 = &stru_1EFB14550;
  }

  [dataCopy setObject:v32 forKeyedSubscript:@"_UIFocusGestureSelectObserverName"];

  [dataCopy setObject:v28 forKeyedSubscript:@"_UIFocusGestureSelectObserverAction"];
LABEL_46:

  if (removal)
  {
    shouldConvertIndirectTapsIntoArrowKeys = 0;
  }

  else
  {
    shouldConvertIndirectTapsIntoArrowKeys = [v8 shouldConvertIndirectTapsIntoArrowKeys];
  }

  v34 = [(_UIFocusEventRecognizer *)self gestureForName:2];
  v35 = v34;
  if (v34 || !shouldConvertIndirectTapsIntoArrowKeys)
  {
    if ((v34 == 0) | shouldConvertIndirectTapsIntoArrowKeys & 1)
    {
      goto LABEL_63;
    }

    [WeakRetained removeGestureRecognizer:v34];
    [(_UIFocusEventRecognizer *)self setGesture:0 forName:2];
    if (!dataCopy)
    {
      goto LABEL_63;
    }

    v38 = @"remove";
    goto LABEL_59;
  }

  v35 = [[UITapGestureRecognizer alloc] initWithTarget:self action:sel__handleTapGesture_];
  [(UIGestureRecognizer *)v35 setName:@"com.apple.focus._UIFocusGestureTap"];
  [(UIGestureRecognizer *)v35 setDelegate:self];
  [(_UIFocusEventRecognizer *)self setGesture:v35 forName:2];
  [(UITapGestureRecognizer *)v35 setAllowedPressTypes:MEMORY[0x1E695E0F0]];
  [(UIGestureRecognizer *)v35 setDelaysTouchesBegan:0];
  [(UIGestureRecognizer *)v35 setCancelsTouchesInView:0];
  v36 = _UIInternalPreferenceUsesDefault(&_UIInternalPreference_FocusEngineTapAllowableMovement, @"FocusEngineTapAllowableMovement", _UIInternalPreferenceUpdateDouble);
  v37 = *&qword_1EA95E388;
  if (v36)
  {
    v37 = 150.0;
  }

  [(UITapGestureRecognizer *)v35 setAllowableMovement:v37];
  [(UIGestureRecognizer *)v35 setAllowedTouchTypes:&unk_1EFE2BE18];
  [WeakRetained addGestureRecognizer:v35];
  if (dataCopy && v35)
  {
    v38 = @"add";
LABEL_59:
    v39 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v35];
    [dataCopy setObject:v39 forKeyedSubscript:@"_UIFocusGestureTapAddress"];

    name4 = [(UIGestureRecognizer *)v35 name];
    v41 = name4;
    if (name4)
    {
      v42 = name4;
    }

    else
    {
      v42 = &stru_1EFB14550;
    }

    [dataCopy setObject:v42 forKeyedSubscript:@"_UIFocusGestureTapName"];

    [dataCopy setObject:v38 forKeyedSubscript:@"_UIFocusGestureTapAction"];
  }

LABEL_63:

  if (removal)
  {
    supportsGameControllers = 0;
  }

  else
  {
    supportsGameControllers = [v8 supportsGameControllers];
  }

  v44 = [(_UIFocusEventRecognizer *)self gestureForName:9];
  v45 = v44;
  if (v44 || !supportsGameControllers)
  {
    if ((v44 == 0) | supportsGameControllers & 1)
    {
      goto LABEL_78;
    }

    [WeakRetained removeGestureRecognizer:v44];
    [(_UIFocusEventRecognizer *)self setGesture:0 forName:9];
    if (!dataCopy)
    {
      goto LABEL_78;
    }

    v46 = @"remove";
  }

  else
  {
    v45 = [[_UIFocusEngineJoystickGestureRecognizer alloc] initWithTarget:self action:sel__handleJoystickGesture_];
    [(UIGestureRecognizer *)v45 setName:@"com.apple.focus._UIFocusGestureJoystick"];
    [(UIGestureRecognizer *)v45 setDelegate:self];
    [(_UIFocusEventRecognizer *)self setGesture:v45 forName:9];
    [(UIGestureRecognizer *)v45 setDelaysTouchesBegan:0];
    [(UIGestureRecognizer *)v45 setCancelsTouchesInView:0];
    [(UIGestureRecognizer *)v45 setAllowedTouchTypes:MEMORY[0x1E695E0F0]];
    [WeakRetained addGestureRecognizer:v45];
    if (!dataCopy || !v45)
    {
      goto LABEL_78;
    }

    v46 = @"add";
  }

  v47 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v45];
  [dataCopy setObject:v47 forKeyedSubscript:@"_UIFocusGestureJoystickAddress"];

  name5 = [(UIGestureRecognizer *)v45 name];
  v49 = name5;
  if (name5)
  {
    v50 = name5;
  }

  else
  {
    v50 = &stru_1EFB14550;
  }

  [dataCopy setObject:v50 forKeyedSubscript:@"_UIFocusGestureJoystickName"];

  [dataCopy setObject:v46 forKeyedSubscript:@"_UIFocusGestureJoystickAction"];
LABEL_78:

  if (removal)
  {
    supportsGameControllers2 = 0;
  }

  else
  {
    supportsGameControllers2 = [v8 supportsGameControllers];
  }

  v52 = [(_UIFocusEventRecognizer *)self gestureForName:10];
  v53 = v52;
  if (v52 || !supportsGameControllers2)
  {
    if ((v52 == 0) | supportsGameControllers2 & 1)
    {
      goto LABEL_93;
    }

    [WeakRetained removeGestureRecognizer:v52];
    [(_UIFocusEventRecognizer *)self setGesture:0 forName:10];
    if (!dataCopy)
    {
      goto LABEL_93;
    }

    v54 = @"remove";
  }

  else
  {
    v53 = [(_UIFocusMovementPressGestureRecognizer *)[_UIFocusMovementShoulderButtonPressGestureRecognizer alloc] initWithTarget:self action:sel__handleShoulderButtonGesture_];
    [(UIGestureRecognizer *)v53 setName:@"com.apple.focus._UIFocusGestureShoulderButtons"];
    [(UIGestureRecognizer *)v53 setDelegate:self];
    [(_UIFocusEventRecognizer *)self setGesture:v53 forName:10];
    [WeakRetained addGestureRecognizer:v53];
    if (!dataCopy || !v53)
    {
      goto LABEL_93;
    }

    v54 = @"add";
  }

  v55 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v53];
  [dataCopy setObject:v55 forKeyedSubscript:@"_UIFocusGestureShoulderButtonsAddress"];

  name6 = [(UIGestureRecognizer *)v53 name];
  v57 = name6;
  if (name6)
  {
    v58 = name6;
  }

  else
  {
    v58 = &stru_1EFB14550;
  }

  [dataCopy setObject:v58 forKeyedSubscript:@"_UIFocusGestureShoulderButtonsName"];

  [dataCopy setObject:v54 forKeyedSubscript:@"_UIFocusGestureShoulderButtonsAction"];
LABEL_93:

  if (removal)
  {
    supportsTabKey = 0;
  }

  else
  {
    supportsTabKey = [v8 supportsTabKey];
  }

  v60 = [(_UIFocusEventRecognizer *)self gestureForName:8];
  v61 = v60;
  if (v60 || !supportsTabKey)
  {
    if ((v60 == 0) | supportsTabKey & 1)
    {
      goto LABEL_108;
    }

    [WeakRetained removeGestureRecognizer:v60];
    [(_UIFocusEventRecognizer *)self setGesture:0 forName:8];
    if (!dataCopy)
    {
      goto LABEL_108;
    }

    v62 = @"remove";
  }

  else
  {
    v61 = [(_UIFocusMovementPressGestureRecognizer *)[_UIFocusMovementTabulatorPressGestureRecognizer alloc] initWithTarget:self action:sel__handleTabulatorGesture_];
    [(UIGestureRecognizer *)v61 setName:@"com.apple.focus._UIFocusGestureTabulator"];
    [(UIGestureRecognizer *)v61 setDelegate:self];
    [(_UIFocusEventRecognizer *)self setGesture:v61 forName:8];
    [WeakRetained addGestureRecognizer:v61];
    if (!dataCopy || !v61)
    {
      goto LABEL_108;
    }

    v62 = @"add";
  }

  v63 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v61];
  [dataCopy setObject:v63 forKeyedSubscript:@"_UIFocusGestureTabulatorAddress"];

  name7 = [(UIGestureRecognizer *)v61 name];
  v65 = name7;
  if (name7)
  {
    v66 = name7;
  }

  else
  {
    v66 = &stru_1EFB14550;
  }

  [dataCopy setObject:v66 forKeyedSubscript:@"_UIFocusGestureTabulatorName"];

  [dataCopy setObject:v62 forKeyedSubscript:@"_UIFocusGestureTabulatorAction"];
LABEL_108:

  if (removal)
  {
    supportsArrowKeys = 0;
  }

  else
  {
    supportsArrowKeys = [v8 supportsArrowKeys];
  }

  v68 = [(_UIFocusEventRecognizer *)self gestureForName:6];
  v69 = v68;
  if (v68 || !supportsArrowKeys)
  {
    if ((v68 == 0) | supportsArrowKeys & 1)
    {
      goto LABEL_123;
    }

    [WeakRetained removeGestureRecognizer:v68];
    [(_UIFocusEventRecognizer *)self setGesture:0 forName:6];
    if (!dataCopy)
    {
      goto LABEL_123;
    }

    v70 = @"remove";
  }

  else
  {
    v69 = [(_UIFocusMovementPressGestureRecognizer *)[_UIFocusMovementDirectionalPressGestureRecognizer alloc] initWithTarget:self action:sel__handleArrowButtonGesture_];
    [(UIGestureRecognizer *)v69 setName:@"com.apple.focus._UIFocusGestureArrowButton"];
    [(UIGestureRecognizer *)v69 setDelegate:self];
    [(_UIFocusEventRecognizer *)self setGesture:v69 forName:6];
    [WeakRetained addGestureRecognizer:v69];
    if (!dataCopy || !v69)
    {
      goto LABEL_123;
    }

    v70 = @"add";
  }

  v71 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v69];
  [dataCopy setObject:v71 forKeyedSubscript:@"_UIFocusGestureArrowButtonAddress"];

  name8 = [(UIGestureRecognizer *)v69 name];
  v73 = name8;
  if (name8)
  {
    v74 = name8;
  }

  else
  {
    v74 = &stru_1EFB14550;
  }

  [dataCopy setObject:v74 forKeyedSubscript:@"_UIFocusGestureArrowButtonName"];

  [dataCopy setObject:v70 forKeyedSubscript:@"_UIFocusGestureArrowButtonAction"];
LABEL_123:

  if (removal)
  {
    supportsIndirectRotaryMovement = 0;
  }

  else
  {
    supportsIndirectRotaryMovement = [v8 supportsIndirectRotaryMovement];
  }

  v76 = [(_UIFocusEventRecognizer *)self gestureForName:5];
  v77 = v76;
  if (v76 || !supportsIndirectRotaryMovement)
  {
    if ((v76 == 0) | supportsIndirectRotaryMovement & 1)
    {
      goto LABEL_138;
    }

    [WeakRetained removeGestureRecognizer:v76];
    [(_UIFocusEventRecognizer *)self setGesture:0 forName:5];
    if (!dataCopy)
    {
      goto LABEL_138;
    }

    v78 = @"remove";
  }

  else
  {
    v77 = [[_UIRotaryGestureRecognizer alloc] initWithTarget:self action:sel__handleRotaryGesture_];
    [(UIGestureRecognizer *)v77 setName:@"com.apple.focus._UIFocusGestureRotary"];
    [(_UIRotaryGestureRecognizer *)v77 setDelegate:self];
    [(_UIFocusEventRecognizer *)self setGesture:v77 forName:5];
    [(UIGestureRecognizer *)v77 setDelaysTouchesBegan:0];
    [(UIGestureRecognizer *)v77 setCancelsTouchesInView:0];
    [(UIGestureRecognizer *)v77 setAllowedTouchTypes:&unk_1EFE2BE30];
    [WeakRetained addGestureRecognizer:v77];
    if (!dataCopy || !v77)
    {
      goto LABEL_138;
    }

    v78 = @"add";
  }

  v79 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v77];
  [dataCopy setObject:v79 forKeyedSubscript:@"_UIFocusGestureRotaryAddress"];

  name9 = [(UIGestureRecognizer *)v77 name];
  v81 = name9;
  if (name9)
  {
    v82 = name9;
  }

  else
  {
    v82 = &stru_1EFB14550;
  }

  [dataCopy setObject:v82 forKeyedSubscript:@"_UIFocusGestureRotaryName"];

  [dataCopy setObject:v78 forKeyedSubscript:@"_UIFocusGestureRotaryAction"];
LABEL_138:

  v83 = !removal && [v8 pageButtonScrollingStyle] != 0;
  v84 = [(_UIFocusEventRecognizer *)self gestureForName:7];
  v85 = v84;
  if (v84 || !v83)
  {
    if (v84 != 0 && !v83)
    {
      [WeakRetained removeGestureRecognizer:v84];
      [(_UIFocusEventRecognizer *)self setGesture:0 forName:7];
      if (dataCopy)
      {
        v86 = @"remove";
        goto LABEL_149;
      }
    }
  }

  else
  {
    v85 = [(_UIFocusMovementPressGestureRecognizer *)[_UIFocusMovementDirectionalPressGestureRecognizer alloc] initWithTarget:self action:sel__handlePageButtonGesture_];
    [(UIGestureRecognizer *)v85 setName:@"com.apple.focus._UIFocusGesturePageButton"];
    [(UIGestureRecognizer *)v85 setDelegate:self];
    [(_UIFocusEventRecognizer *)self setGesture:v85 forName:7];
    [(UIGestureRecognizer *)v85 setAllowedPressTypes:&unk_1EFE2BE48];
    [WeakRetained addGestureRecognizer:v85];
    if (dataCopy && v85)
    {
      v86 = @"add";
LABEL_149:
      v87 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v85];
      [dataCopy setObject:v87 forKeyedSubscript:@"_UIFocusGesturePageButtonAddress"];

      name10 = [(UIGestureRecognizer *)v85 name];
      v89 = name10;
      if (name10)
      {
        v90 = name10;
      }

      else
      {
        v90 = &stru_1EFB14550;
      }

      [dataCopy setObject:v90 forKeyedSubscript:@"_UIFocusGesturePageButtonName"];

      [dataCopy setObject:v86 forKeyedSubscript:@"_UIFocusGesturePageButtonAction"];
    }
  }

  [(_UIFocusEventRecognizer *)self _updateRotaryIndicatorView];
}

- (NSSet)gesturesForFailureRequirements
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = NSAllMapTableValues(self->_gestureRecognizers);
  v4 = [v2 setWithArray:v3];

  return v4;
}

- (void)_focusSystemEnabledStateDidChange:(id)change
{
  object = [change object];
  if (([object _isEnabled] & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_owningView);
    _focusSystem = [WeakRetained _focusSystem];

    if (object == _focusSystem)
    {
      [(_UIFocusEventRecognizer *)self _resetContinuousMovementState];
      [(_UIFocusEventRecognizer *)self _resetProgressAccumulator];
      [(_UIFocusEventRecognizer *)self _resetFailedMovementHeading];
      [(_UIFocusEventRecognizer *)self _cancelAllGestureRecognizers];
    }
  }
}

- (id)_focusMovementSystem
{
  v12 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained _focusMovementSystemForFocusEventRecognizer:self];
    if (!v5)
    {
      if (os_variant_has_internal_diagnostics())
      {
        v9 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
        {
          v10 = 138412290;
          v11 = v4;
          _os_log_fault_impl(&dword_188A29000, v9, OS_LOG_TYPE_FAULT, "The focus system to use for processing focus movement cannot be nil. Delegate: %@", &v10, 0xCu);
        }
      }

      else
      {
        v8 = *(__UILogGetCategoryCachedImpl("Assert", &_focusMovementSystem___s_category) + 8);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          v10 = 138412290;
          v11 = v4;
          _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_ERROR, "The focus system to use for processing focus movement cannot be nil. Delegate: %@", &v10, 0xCu);
        }
      }
    }

    _preferredFirstResponderFocusSystem = [v5 _preferredFirstResponderFocusSystem];
  }

  else
  {
    _preferredFirstResponderFocusSystem = 0;
  }

  return _preferredFirstResponderFocusSystem;
}

- (BOOL)_didRecognizeFocusMovementRequest:(id)request
{
  requestCopy = request;
  if (!requestCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIFocusEventRecognizer.m" lineNumber:567 description:{@"Invalid parameter not satisfying: %@", @"request"}];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = WeakRetained;
  if (WeakRetained && [WeakRetained _focusEventRecognizer:self didRecognizeFocusMovementRequest:requestCopy])
  {
    [(_UIFocusEventRecognizer *)self _resetFailedMovementHeading];
    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)_moveWithEvent:(id)event
{
  eventCopy = event;
  if (![(_UIFocusEventRecognizer *)self _shouldAcceptInputType:5])
  {
    v9 = 0;
    goto LABEL_12;
  }

  self->_inputType = 5;
  WeakRetained = objc_loadWeakRetained(&self->_owningView);
  traitCollection = [WeakRetained traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom != 3)
  {
    goto LABEL_8;
  }

  if (![eventCopy _focusHeading])
  {
    _moveDirection = [eventCopy _moveDirection];
    if ((_moveDirection - 1) <= 3)
    {
      _focusHeading = qword_18A67B590[_moveDirection - 1];
      goto LABEL_9;
    }

LABEL_8:
    _focusHeading = 0;
    goto LABEL_9;
  }

  _focusHeading = [eventCopy _focusHeading];
LABEL_9:

  [(_UIFocusEventRecognizer *)self _setMoveEvent:eventCopy];
  currentFocusBehavior = [(_UIFocusEventRecognizer *)self currentFocusBehavior];
  v12 = [currentFocusBehavior focusGroupMovementBehavior] << 60;

  v13 = 1;
  if ((_focusHeading & 0x330) != 0)
  {
    v13 = 2;
  }

  v9 = [(_UIFocusEventRecognizer *)self _moveInDirection:_focusHeading groupFilter:v13 & (v12 >> 63)];
  [(_UIFocusEventRecognizer *)self _setMoveEvent:0];
  self->_inputType = 0;
LABEL_12:

  return v9;
}

- (BOOL)_moveInDirection:(unint64_t)direction groupFilter:(int64_t)filter withSearchInfo:(id)info
{
  infoCopy = info;
  if (direction)
  {
    _focusMovementSystem = [(_UIFocusEventRecognizer *)self _focusMovementSystem];
    if (_focusMovementSystem)
    {
      v10 = [[_UIFocusMovementRequest alloc] initWithFocusSystem:_focusMovementSystem];
      v11 = [[_UIFocusMovementInfo alloc] initWithHeading:direction linearHeading:0 isInitial:1 shouldLoadScrollableContainer:1 looping:0 groupFilter:filter inputType:self->_inputType];
      [(_UIFocusMovementRequest *)v10 setMovementInfo:v11];

      [(_UIFocusMovementRequest *)v10 setSearchInfo:infoCopy];
      v12 = [(_UIFocusEventRecognizer *)self _didRecognizeFocusMovementRequest:v10];
    }

    else
    {
      v13 = *(__UILogGetCategoryCachedImpl("UIFocus", &_moveInDirection_groupFilter_withSearchInfo____s_category) + 8);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_188A29000, v13, OS_LOG_TYPE_ERROR, "Focus event recognizer is no longer connected to a focus system. Ignoring movement request.", buf, 2u);
      }

      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)_moveInDirection:(unint64_t)direction groupFilter:(int64_t)filter withEvaluator:(id)evaluator
{
  evaluatorCopy = evaluator;
  v9 = [[_UIFocusSearchInfo alloc] initWithFocusEvaluator:evaluatorCopy];

  LOBYTE(filter) = [(_UIFocusEventRecognizer *)self _moveInDirection:direction groupFilter:filter withSearchInfo:v9];
  return filter;
}

- (void)_handleSelectGesture:(id)gesture
{
  _focusSystemSceneComponent = [(_UIFocusEventRecognizer *)self _focusSystemSceneComponent];
  focusSystem = [_focusSystemSceneComponent focusSystem];
  [focusSystem _setNeedsNonDeferredFocusUpdate];
}

- (void)_handleSelectObserverGesture:(id)gesture
{
  if ([gesture state] == 1)
  {
    [(_UIFocusEffectsController *)self->_motionEffectsController startRollbackAnimation];
    [(_UIFocusEventRecognizer *)self _resetProgressAccumulator];
    *&self->_flags |= 0x80u;
  }

  else
  {
    *&self->_flags &= ~0x80u;
    v6 = [(_UIFocusEventRecognizer *)self gestureForName:1];
    if (v6)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"_UIFocusEventRecognizer.m" lineNumber:726 description:{@"Unexpected gesture recognizer class: %@", objc_opt_class()}];
      }

      self->_lastKnownTouchPoint = *(v6 + 408);
    }
  }
}

- (void)_handleArrowButtonGesture:(id)gesture
{
  gestureCopy = gesture;
  state = [gestureCopy state];
  self->_lastButtonPressTime = CACurrentMediaTime();
  pressSource = [gestureCopy pressSource];
  [(_UIFocusEventRecognizer *)self _resetProgressAccumulator];
  [(_UIFocusEffectsController *)self->_motionEffectsController reset];
  [(_UIFocusEventRecognizer *)self _resetPanDeadband];
  if ([(_UIFocusEventRecognizer *)self _shouldAcceptInputType:4])
  {
    if ((state - 1) <= 1)
    {
      focusHeading = [gestureCopy focusHeading];
      if (focusHeading)
      {
        v7 = focusHeading;
        [(_UIFocusEventRecognizer *)self _resetMomentum];
        currentFocusBehavior = [(_UIFocusEventRecognizer *)self currentFocusBehavior];
        v9 = [(_UIFocusEventRecognizer *)self gestureForName:1];
        v10 = [(_UIFocusEventRecognizer *)self gestureForName:2];
        v11 = [(_UIFocusEventRecognizer *)self gestureForName:5];
        isEnabled = [v9 isEnabled];
        isEnabled2 = [v10 isEnabled];
        isEnabled3 = [v11 isEnabled];
        if ([currentFocusBehavior indirectMovementPriority] == 2)
        {
          [v9 setEnabled:0];
          [v11 setEnabled:0];
        }

        v13 = +[UIDevice currentDevice];
        _remoteTouchSurfaceType = [v13 _remoteTouchSurfaceType];

        if (_remoteTouchSurfaceType == 2 && [currentFocusBehavior shouldConvertIndirectTapsIntoArrowKeys])
        {
          [v10 setEnabled:0];
        }

        inputType = self->_inputType;
        self->_inputType = 4;
        if (pressSource == 2)
        {
          constrainGameControllersToFocusGroups = [currentFocusBehavior constrainGameControllersToFocusGroups];
        }

        else
        {
          constrainGameControllersToFocusGroups = ([currentFocusBehavior focusGroupMovementBehavior] >> 2) & 1;
        }

        [(_UIFocusEventRecognizer *)self _moveInDirection:v7 groupFilter:constrainGameControllersToFocusGroups];
        self->_inputType = inputType;
        [v9 setEnabled:isEnabled];
        [v10 setEnabled:isEnabled2];
        [v11 setEnabled:isEnabled3];
      }
    }
  }
}

- (void)_handlePageButtonGesture:(id)gesture
{
  gestureCopy = gesture;
  v4 = [(_UIFocusEventRecognizer *)self _shouldAcceptInputType:7];
  v5 = gestureCopy;
  if (v4)
  {
    if (([gestureCopy state] - 1) > 1)
    {
      goto LABEL_15;
    }

    focusHeading = [gestureCopy focusHeading];
    v5 = gestureCopy;
    if (!focusHeading)
    {
      goto LABEL_17;
    }

    currentFocusBehavior = [(_UIFocusEventRecognizer *)self currentFocusBehavior];
    pageButtonScrollingStyle = [currentFocusBehavior pageButtonScrollingStyle];

    if ([(_UIFocusEventRecognizer *)self _shouldAcceptInputType:7]&& (pageButtonScrollingStyle - 1) <= 1)
    {
      *&self->_flags |= 1u;
      self->_inputType = 7;
      [(_UIFocusEventRecognizer *)self _resetFailedMovementHeading];
      v5 = gestureCopy;
      if ((*&self->_flags & 2) == 0)
      {
        if (_UIInternalPreferenceUsesDefault(&unk_1ED48AF48, @"FocusMomentumFriction", _UIInternalPreferenceUpdateDouble))
        {
          v9 = 0.99;
        }

        else
        {
          v9 = *&qword_1ED48AF50;
        }

        v10 = _UIInternalPreferenceUsesDefault(algn_1ED48AFB8, @"FocusPageButtonSwipeScrollingVelocity", _UIInternalPreferenceUpdateDouble);
        v11 = *&qword_1ED48AFC0;
        if (v10)
        {
          v11 = 10.0;
        }

        v12 = -v11;
        __asm { FMOV            V2.2D, #0.5 }

        self->_lastMomentumTouchPoint = _Q2;
        lastMomentumTouchPoint = self->_lastMomentumTouchPoint;
        if (!_ZF)
        {
          v12 = v11;
        }

        self->_lastKnownTouchPoint = lastMomentumTouchPoint;
        self->_touchBeganPoint = lastMomentumTouchPoint;
        [(_UIFocusEventRecognizer *)self _beginMomentumImmediatelyWithVelocity:0.0 friction:v12, v9];
        v5 = gestureCopy;
      }
    }

    else
    {
LABEL_15:
      v5 = gestureCopy;
      if (self->_inputType == 7)
      {
        self->_inputType = 0;
      }
    }
  }

LABEL_17:
}

- (void)_handleTabulatorGesture:(id)gesture
{
  gestureCopy = gesture;
  state = [gestureCopy state];
  if ([(_UIFocusEventRecognizer *)self _shouldAcceptInputType:8]&& (state - 1) <= 1)
  {
    self->_inputType = 8;
    WeakRetained = objc_loadWeakRetained(&self->_owningView);
    _focusBehavior = [WeakRetained _focusBehavior];

    focusHeading = [gestureCopy focusHeading];
    if (focusHeading)
    {
      v9 = focusHeading;
      _focusMovementSystem = [(_UIFocusEventRecognizer *)self _focusMovementSystem];
      if (_focusMovementSystem)
      {
        focusGroupMovementBehavior = [_focusBehavior focusGroupMovementBehavior];
        v12 = +[_UIFocusSearchInfo defaultInfo];
        [v12 setForceFocusToLeaveContainer:1];
        v13 = [[_UIFocusMovementRequest alloc] initWithFocusSystem:_focusMovementSystem];
        v14 = -[_UIFocusMovementInfo initWithHeading:linearHeading:isInitial:shouldLoadScrollableContainer:looping:groupFilter:inputType:]([_UIFocusMovementInfo alloc], "initWithHeading:linearHeading:isInitial:shouldLoadScrollableContainer:looping:groupFilter:inputType:", v9, 0, 1, 0, [_focusBehavior tabBasedMovementLoops], focusGroupMovementBehavior & 2, self->_inputType);
        [(_UIFocusMovementRequest *)v13 setMovementInfo:v14];

        [(_UIFocusMovementRequest *)v13 setSearchInfo:v12];
        [(_UIFocusEventRecognizer *)self _didRecognizeFocusMovementRequest:v13];
      }

      else
      {
        v15 = *(__UILogGetCategoryCachedImpl("UIFocus", &_handleTabulatorGesture____s_category) + 8);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_188A29000, v15, OS_LOG_TYPE_ERROR, "Focus event recognizer is no longer connected to a focus system. Ignoring movement request.", buf, 2u);
        }
      }

      self->_inputType = 0;
    }

    else
    {
      self->_inputType = 0;
    }
  }
}

- (void)_handleShoulderButtonGesture:(id)gesture
{
  gestureCopy = gesture;
  state = [gestureCopy state];
  if ([(_UIFocusEventRecognizer *)self _shouldAcceptInputType:10])
  {
    owningView = [(_UIFocusEventRecognizer *)self owningView];
    _focusBehavior = [owningView _focusBehavior];
    constrainGameControllersToFocusGroups = [_focusBehavior constrainGameControllersToFocusGroups];

    if (constrainGameControllersToFocusGroups)
    {
      if ((state - 1) <= 1)
      {
        self->_inputType = 10;
        WeakRetained = objc_loadWeakRetained(&self->_owningView);
        _focusBehavior2 = [WeakRetained _focusBehavior];

        focusHeading = [gestureCopy focusHeading];
        if (focusHeading)
        {
          v12 = focusHeading;
          _focusMovementSystem = [(_UIFocusEventRecognizer *)self _focusMovementSystem];
          if (_focusMovementSystem)
          {
            focusGroupMovementBehavior = [_focusBehavior2 focusGroupMovementBehavior];
            v15 = focusGroupMovementBehavior;
            v16 = 8;
            v17 = 4;
            if (v12 != 32)
            {
              v17 = v12;
            }

            if (v12 != 16)
            {
              v16 = v17;
            }

            if ((focusGroupMovementBehavior & 2) != 0)
            {
              v18 = v12;
            }

            else
            {
              v18 = v16;
            }

            v19 = +[_UIFocusSearchInfo defaultInfo];
            [v19 setForceFocusToLeaveContainer:1];
            v20 = [[_UIFocusMovementRequest alloc] initWithFocusSystem:_focusMovementSystem];
            v21 = -[_UIFocusMovementInfo initWithHeading:linearHeading:isInitial:shouldLoadScrollableContainer:looping:groupFilter:inputType:]([_UIFocusMovementInfo alloc], "initWithHeading:linearHeading:isInitial:shouldLoadScrollableContainer:looping:groupFilter:inputType:", v18, 0, 1, 0, [_focusBehavior2 tabBasedMovementLoops], v15 & 2, self->_inputType);
            [(_UIFocusMovementRequest *)v20 setMovementInfo:v21];

            [(_UIFocusMovementRequest *)v20 setSearchInfo:v19];
            [(_UIFocusEventRecognizer *)self _didRecognizeFocusMovementRequest:v20];
          }

          else
          {
            v22 = *(__UILogGetCategoryCachedImpl("UIFocus", &_handleShoulderButtonGesture____s_category) + 8);
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_impl(&dword_188A29000, v22, OS_LOG_TYPE_ERROR, "Focus event recognizer is no longer connected to a focus system. Ignoring movement request.", buf, 2u);
            }
          }

          self->_inputType = 0;
        }

        else
        {
          self->_inputType = 0;
        }
      }
    }
  }
}

- (void)_handlePanGesture:(id)gesture
{
  gestureCopy = gesture;
  v5 = [(_UIFocusEventRecognizer *)self gestureForName:1];

  if (v5 != gestureCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIFocusEventRecognizer.m" lineNumber:1024 description:{@"Invalid parameter not satisfying: %@", @"recognizer == [self gestureForName:_UIFocusGesturePan]"}];
  }

  v6 = [(_UIFocusEventRecognizer *)self _shouldAcceptInputType:1];
  v7 = gestureCopy;
  if (v6)
  {
    if ([gestureCopy state] == 1)
    {
      [(_UIFocusEventRecognizer *)self _panGestureStart:gestureCopy];
    }

    if ([gestureCopy state] != 4 && (*&self->_flags & 0x80) == 0)
    {
      WeakRetained = objc_loadWeakRetained(&self->_owningView);
      [gestureCopy velocityInView:WeakRetained];
      v10 = v9;
      v12 = v11;

      v13 = +[UIDevice currentDevice];
      _remoteTouchSurfaceType = [v13 _remoteTouchSurfaceType];

      if (gestureCopy)
      {
        v15 = gestureCopy[51];
        v16 = gestureCopy[52];
      }

      else
      {
        v16 = 0.0;
        v15 = 0.0;
      }

      [(_UIFocusEventRecognizer *)self _updatePanLocation:_remoteTouchSurfaceType reportedVelocity:v15 remoteTouchSurfaceType:v16, v10, v12];
    }

    if ([gestureCopy state] == 3)
    {
      [(_UIFocusEventRecognizer *)self _panGestureEnd:gestureCopy];
    }

    else
    {
      state = [gestureCopy state];
      v7 = gestureCopy;
      if (state != 4)
      {
        goto LABEL_16;
      }

      [(_UIFocusEventRecognizer *)self _panGestureCancelled:gestureCopy];
    }

    v7 = gestureCopy;
  }

LABEL_16:
}

- (void)_handleTapGesture:(id)gesture
{
  gestureCopy = gesture;
  v4 = [(_UIFocusEventRecognizer *)self _shouldAcceptInputType:2];
  v5 = gestureCopy;
  if (v4)
  {
    state = [gestureCopy state];
    v5 = gestureCopy;
    if (state == 3)
    {
      self->_inputType = 2;
      [gestureCopy _digitizerLocation];
      v7 = [(_UIFocusEventRecognizer *)self _touchRegionForDigitizerLocation:?]- 1;
      if (v7 <= 3)
      {
        v8 = qword_18A67B5B0[v7];
        date = [MEMORY[0x1E695DF00] date];
        [date timeIntervalSinceNow];
        v11 = v10;

        [_UIFocusEngineDelayedPressAction sendDelayedPressWithType:v8 timestamp:self sender:v11];
      }

      self->_inputType = 0;
      v5 = gestureCopy;
    }
  }
}

- (void)_handleJoystickGesture:(id)gesture
{
  gestureCopy = gesture;
  v4 = [(_UIFocusEventRecognizer *)self _shouldAcceptInputType:3];
  v5 = gestureCopy;
  if (!v4)
  {
    goto LABEL_8;
  }

  state = [gestureCopy state];
  if (state == 1)
  {
    [(_UIFocusEventRecognizer *)self _joystickGestureBegan:gestureCopy];
  }

  else if ((state - 1) > 2)
  {
    goto LABEL_6;
  }

  [(_UIFocusEventRecognizer *)self _joystickGestureUpdated:gestureCopy];
LABEL_6:
  v5 = gestureCopy;
  if ((state - 3) <= 1)
  {
    [(_UIFocusEventRecognizer *)self _joystickGestureEnded:gestureCopy];
    v5 = gestureCopy;
  }

LABEL_8:
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  v5 = +[UIDevice currentDevice];
  _remoteTouchSurfaceType = [v5 _remoteTouchSurfaceType];

  v7 = [(_UIFocusEventRecognizer *)self gestureForName:1];
  if (v7 != beginCopy || (*&self->_flags & 0x20) != 0)
  {
    v9 = [(_UIFocusEventRecognizer *)self gestureForName:5];
    v8 = v9 == beginCopy;
  }

  else
  {
    v8 = 1;
  }

  v10 = [(_UIFocusEventRecognizer *)self gestureForName:2];

  if (v8)
  {
    currentFocusBehavior = [(_UIFocusEventRecognizer *)self currentFocusBehavior];
    if ([currentFocusBehavior indirectMovementPriority] == 2)
    {
      v12 = CACurrentMediaTime();
      v13 = _UIInternalPreferenceUsesDefault(&unk_1ED48AF08, @"B519_ButtonSupressionTime", _UIInternalPreferenceUpdateDouble);
      v14 = *&qword_1ED48AF10;
      if (v13)
      {
        v14 = 0.25;
      }

      v15 = v12 - self->_lastButtonPressTime >= v14;
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 1;
    if (v10 == beginCopy && _remoteTouchSurfaceType == 2)
    {
      v16 = CACurrentMediaTime();
      v17 = _UIInternalPreferenceUsesDefault(&unk_1ED48AF18, @"B519_TapSupressionTime", _UIInternalPreferenceUpdateDouble);
      v18 = *&qword_1ED48AF20;
      if (v17)
      {
        v18 = 0.1;
      }

      v15 = v16 - self->_lastButtonPressTime >= v18;
    }
  }

  return v15;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRequireFailureOfGestureRecognizer:(id)gestureRecognizer
{
  gestureRecognizerCopy = gestureRecognizer;
  recognizerCopy = recognizer;
  v8 = [(_UIFocusEventRecognizer *)self gestureForName:1];

  if (v8 == recognizerCopy)
  {
    v10 = [(_UIFocusEventRecognizer *)self gestureForName:5];
    v9 = v10 == gestureRecognizerCopy;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_gestureRecognizerFailed:(id)failed
{
  failedCopy = failed;
  v4 = [(_UIFocusEventRecognizer *)self gestureForName:1];
  if (v4 == failedCopy)
  {
    inputType = self->_inputType;

    if (inputType == 1)
    {
      [(_UIFocusEventRecognizer *)self _panGestureEnd:failedCopy];
    }
  }

  else
  {
  }
}

- (void)rotaryGestureRecognizerBeganClassifyingMovement:(id)movement
{
  movementCopy = movement;
  v5 = [(_UIFocusEventRecognizer *)self gestureForName:5];

  v6 = movementCopy;
  if (v5 != movementCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIFocusEventRecognizer.m" lineNumber:1204 description:{@"Invalid parameter not satisfying: %@", @"rotaryGesture == [self gestureForName:_UIFocusGestureRotary]"}];

    v6 = movementCopy;
  }

  if ([v6 beganMode] == 1)
  {
    [(_UIFocusEventRecognizer *)self _showRotaryIndicator];
  }

  else
  {
    [(_UIFocusEventRecognizer *)self _showRotaryIndicatorAfterDelay];
  }
}

- (id)currentFocusBehavior
{
  WeakRetained = objc_loadWeakRetained(&self->_owningView);
  _focusBehavior = [WeakRetained _focusBehavior];

  return _focusBehavior;
}

- (BOOL)_buttonMaskTimeHasExpired
{
  v3 = CACurrentMediaTime();
  v4 = _UIInternalPreferenceUsesDefault(&_UIInternalPreference_B519_ButtonMaskTime, @"B519_ButtonMaskTime", _UIInternalPreferenceUpdateDouble);
  v5 = *&qword_1EA95E378;
  if (v4)
  {
    v5 = 0.0;
  }

  return v3 - self->_lastButtonPressTime >= v5;
}

- (int)_touchRegionForDigitizerLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  if (_UIInternalPreferenceUsesDefault(&unk_1ED48AF58, @"FocusEngineRemoteDeadzoneCenterX", _UIInternalPreferenceUpdateDouble))
  {
    v5 = 0.5;
  }

  else
  {
    v5 = *&qword_1ED48AF60;
  }

  v6 = _UIInternalPreferenceUsesDefault(algn_1ED48AF68, @"FocusEngineRemoteDeadzoneCenterY", _UIInternalPreferenceUpdateDouble);
  v7 = qword_1ED48AF70;
  v8 = _UIInternalPreferenceUsesDefault(algn_1ED48AF78, @"FocusEngineRemoteDeadzonePercentage", _UIInternalPreferenceUpdateDouble);
  v9 = *&qword_1ED48AF80;
  if (v8)
  {
    v9 = 0.1;
  }

  if (vabdd_f64(x, v5) < v9)
  {
    v10 = v6 ? 0.5 : *&v7;
    if (vabdd_f64(y, v10) < v9)
    {
      return 0;
    }
  }

  v12 = 1.0 - y;
  v13 = 1.0 - x;
  if (x <= 1.0 - y && v13 <= v12)
  {
    return 1;
  }

  if (v13 > v12 && x <= v12)
  {
    return 2;
  }

  v16 = x <= v12 || v13 <= v12;
  if (v13 <= v12 && x > v12)
  {
    v17 = 4;
  }

  else
  {
    v17 = 0;
  }

  if (v16)
  {
    return v17;
  }

  else
  {
    return 3;
  }
}

- (CGSize)_touchSensitivityForFocusItemMetadata:(id)metadata remoteTouchSurfaceType:(unint64_t)type
{
  metadataCopy = metadata;
  item = [metadataCopy item];
  v9 = _UIFocusEnvironmentContainingView(item);
  traitCollection = [v9 traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom == 3)
  {
    currentCarTouchpad = self->_currentCarTouchpad;
    if (!currentCarTouchpad)
    {
      currentCarTouchpad = self->_currentCarKitTouchpad;
      if (!currentCarTouchpad)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"_UIFocusEventRecognizer.m" lineNumber:1346 description:@"Attempting to retrieve sensitivity information without a touchpad."];

        currentCarTouchpad = self->_currentCarTouchpad;
        if (!currentCarTouchpad)
        {
          currentCarTouchpad = self->_currentCarKitTouchpad;
        }
      }
    }

    [currentCarTouchpad sensitivity];
    v14 = fmin(fmax(v13, 0.0), 1.0) + 0.5;
    currentCarKitTouchpad = self->_currentCarTouchpad;
    if (!currentCarKitTouchpad)
    {
      currentCarKitTouchpad = self->_currentCarKitTouchpad;
    }

    [currentCarKitTouchpad physicalSize];
    v17 = v14 * v16;
    v19 = v14 * v18;
    goto LABEL_52;
  }

  focusTouchSensitivityStyle = [metadataCopy focusTouchSensitivityStyle];
  v21 = focusTouchSensitivityStyle;
  v23 = *MEMORY[0x1E695F060];
  v22 = *(MEMORY[0x1E695F060] + 8);
  if (focusTouchSensitivityStyle <= 1)
  {
    if (focusTouchSensitivityStyle)
    {
      if (focusTouchSensitivityStyle == 1)
      {
        item2 = [metadataCopy item];
        v25 = _UIFocusEnvironmentContainingView(item2);
        [v25 bounds];
        v22 = v26;

        *&v23 = 184.0;
      }

      goto LABEL_18;
    }

    goto LABEL_13;
  }

  if (focusTouchSensitivityStyle == 2)
  {
    *&v23 = 70.0;
    v22 = 0x4070E00000000000;
  }

  else if (focusTouchSensitivityStyle == 3)
  {
LABEL_13:
    if (dyld_program_sdk_at_least())
    {
      _globalCoordinateSpace = [(_UIFocusEventRecognizer *)self _globalCoordinateSpace];
      [metadataCopy itemSizeInCoordinateSpace:_globalCoordinateSpace];
      v23 = v28;
      v22 = v29;
    }

    else
    {
      _globalCoordinateSpace = [metadataCopy item];
      v30 = _UIFocusEnvironmentContainingView(_globalCoordinateSpace);
      [v30 frame];
      v23 = v31;
      v22 = v32;
    }
  }

LABEL_18:
  v61 = *&v23;
  v33 = *&v22;
  if (_UIInternalPreferenceUsesDefault(&unk_1ED48AF88, @"FocusEngineOverallSensitivityAdjustment", _UIInternalPreferenceUpdateDouble))
  {
    v34 = 1.0;
  }

  else
  {
    v34 = *&qword_1ED48AF90;
  }

  if (type == 2 && (v35 = UIFocusGetSensitivitySetting(), v35 < 3))
  {
    v36 = dbl_18A67B5D0[v35];
  }

  else
  {
    SensitivitySetting = UIFocusGetSensitivitySetting();
    v38 = 0.8;
    if (SensitivitySetting != 1)
    {
      v38 = 1.0;
    }

    if (SensitivitySetting == 2)
    {
      v36 = 0.65;
    }

    else
    {
      v36 = v38;
    }
  }

  item3 = [metadataCopy item];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v41 = 1.0;
  v42 = 1.0;
  v43 = 1.0;
  if (isKindOfClass)
  {
    item4 = [metadataCopy item];
    _disableTouchInput = [item4 _disableTouchInput];
    if (_disableTouchInput)
    {
      v42 = 0.75;
    }

    else
    {
      v42 = 1.0;
    }

    if (_disableTouchInput)
    {
      v43 = 1.3;
    }

    else
    {
      v43 = 1.0;
    }
  }

  if (v21 == 3)
  {
    v41 = 1.2;
  }

  if (type == 2)
  {
    v46 = 1.1;
  }

  else if (_UIInternalPreferenceUsesDefault(&unk_1ED48AFA8, @"FocusEngineYSensitivityAdjustment", _UIInternalPreferenceUpdateDouble))
  {
    v46 = 1.3;
  }

  else
  {
    v46 = *&qword_1ED48AFB0;
  }

  v47 = v34 * v36;
  v48 = _UIInternalPreferenceUsesDefault(&unk_1ED48AF98, @"FocusEngineXSensitivityAdjustment", _UIInternalPreferenceUpdateDouble);
  v49 = *&qword_1ED48AFA0;
  if (v48)
  {
    v49 = 1.0;
  }

  v50 = v42 * (v47 * v49);
  v51 = v43 * (v41 * (v47 * v46));
  if (dyld_program_sdk_at_least())
  {
    [(_UIFocusEventRecognizer *)self _momentumReferenceSize];
    v51 = v51 * (v53 / v52);
  }

  v54 = v33;
  if (self->_inputType == 6)
  {
    v55 = 1.0;
  }

  else
  {
    v55 = 2.0;
  }

  v56 = _UIFocusEngineSensitivityForEdgeLength(v61);
  v57 = _UIFocusEngineSensitivityForEdgeLength(v54);
  v19 = fmax(v55, fmin(v50 * v56, 10.0));
  v17 = fmax(v55, fmin(v51 * v57, 10.0));
LABEL_52:

  v58 = v19;
  v59 = v17;
  result.height = v59;
  result.width = v58;
  return result;
}

- (BOOL)_shouldAcceptInputType:(unint64_t)type
{
  inputType = self->_inputType;
  v6 = 0x4Au >> inputType;
  if (inputType > 6)
  {
    LOBYTE(v6) = 0;
  }

  if (type == 4)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  _focusMovementSystem = [(_UIFocusEventRecognizer *)self _focusMovementSystem];
  v9 = _focusMovementSystem;
  if (_focusMovementSystem)
  {
    focusedItem = [_focusMovementSystem focusedItem];
    if (type == 6 && ![(_UIFocusEventRecognizer *)self _canMoveFocusWithRotaryInputInFocusContext:focusedItem])
    {
      goto LABEL_19;
    }

    v11 = self->_inputType;
    v13 = v11 != type && v11 != 0;
    if (v7)
    {
      currentFocusBehavior = [(_UIFocusEventRecognizer *)self currentFocusBehavior];
      v13 = [currentFocusBehavior indirectMovementPriority] == 0;
    }

    if (inputType != 3 && v13 || type == 2 && (*&self->_flags & 2) != 0)
    {
LABEL_19:
      v15 = 0;
    }

    else
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v17 = WeakRetained;
      v15 = !WeakRetained || [WeakRetained _shouldRecognizeEventsInFocusEventRecognizer:self];
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (BOOL)_canMoveFocusWithRotaryInputInFocusContext:(id)context
{
  contextCopy = context;
  isKindOfClass = 1;
  if ((_UIInternalPreferenceUsesDefault(&dword_1ED48AF00, @"B519_UniversalFocusMovement", _UIInternalPreferenceUpdateBool) & 1) == 0 && !byte_1ED48AF04)
  {
    if ((_UIInternalPreferenceUsesDefault(&_MergedGlobals_935, @"B519_KeyboardFocusMovement", _UIInternalPreferenceUpdateBool) & 1) != 0 || byte_1ED48AEFC)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
    }

    else
    {
      isKindOfClass = 0;
    }
  }

  return isKindOfClass & 1;
}

- (id)_focusSystemSceneComponent
{
  owningView = [(_UIFocusEventRecognizer *)self owningView];
  _window = [owningView _window];
  windowScene = [_window windowScene];
  _focusSystemSceneComponent = [windowScene _focusSystemSceneComponent];

  return _focusSystemSceneComponent;
}

- (id)_globalCoordinateSpace
{
  _focusSystemSceneComponent = [(_UIFocusEventRecognizer *)self _focusSystemSceneComponent];
  coordinateSpace = [_focusSystemSceneComponent coordinateSpace];

  return coordinateSpace;
}

- (id)_retrieveFocusItemMetadata
{
  _focusMovementSystem = [(_UIFocusEventRecognizer *)self _focusMovementSystem];
  focusedItem = [_focusMovementSystem focusedItem];
  cachedFocusItemMetadata = self->_cachedFocusItemMetadata;
  if (focusedItem)
  {
    if (!cachedFocusItemMetadata)
    {
      v6 = [[_UIFocusItemUIKitMetadata alloc] initWithItem:focusedItem];
      v7 = self->_cachedFocusItemMetadata;
      self->_cachedFocusItemMetadata = v6;

      cachedFocusItemMetadata = self->_cachedFocusItemMetadata;
    }

    v8 = cachedFocusItemMetadata;
  }

  else
  {
    self->_cachedFocusItemMetadata = 0;

    v8 = 0;
  }

  return v8;
}

- (void)_handleRotaryGesture:(id)gesture
{
  gestureCopy = gesture;
  v5 = [(_UIFocusEventRecognizer *)self gestureForName:5];

  if (v5 != gestureCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIFocusEventRecognizer.m" lineNumber:1690 description:{@"Invalid parameter not satisfying: %@", @"rotaryGesture == [self gestureForName:_UIFocusGestureRotary]"}];
  }

  if ([(_UIFocusEventRecognizer *)self _shouldAcceptInputType:6])
  {
    if ([gestureCopy state] == 1)
    {
      [(_UIFocusEventRecognizer *)self _handleRotaryBegin:gestureCopy];
    }

    if ([gestureCopy state] != 4 && (*&self->_flags & 0x80) == 0)
    {
      [gestureCopy velocity];
      v7 = v6;
      [(_UIFocusEventRecognizer *)self _momentumReferenceSize];
      v9 = v8;
      v10 = +[UIDevice currentDevice];
      _remoteTouchSurfaceType = [v10 _remoteTouchSurfaceType];

      _focusMovementSystem = [(_UIFocusEventRecognizer *)self _focusMovementSystem];
      focusedItem = [_focusMovementSystem focusedItem];
      v14 = _UIFocusEnvironmentResolvedRotaryFocusMovementAxis(focusedItem, 0);

      if ((v14 - 1) <= 2)
      {
        v15 = v7 * v9;
        [gestureCopy accumulatedDistance];
        v17 = v16;
        [gestureCopy delta];
        [(_UIFocusEventRecognizer *)self _updateRotaryDistance:_remoteTouchSurfaceType delta:v14 reportedVelocity:v17 remoteTouchSurfaceType:v18 focusMovementAxis:v15];
      }

      rotaryIndicatorView = self->_rotaryIndicatorView;
      [gestureCopy position];
      [(_UIFocusRotaryIndicatorView *)rotaryIndicatorView updateWheelPosition:?];
    }

    if ([gestureCopy state] == 3)
    {
      [(_UIFocusEventRecognizer *)self _handleRotaryEnd:gestureCopy];
LABEL_18:
      v20 = gestureCopy;
      goto LABEL_19;
    }

    v21 = [gestureCopy state] == 4;
    v20 = gestureCopy;
    if (v21)
    {
      [(_UIFocusEventRecognizer *)self _handleRotaryCancelled:gestureCopy];
      goto LABEL_18;
    }
  }

  else
  {
    v20 = gestureCopy;
    if (self->_inputType == 6)
    {
      self->_inputType = 0;
    }
  }

LABEL_19:
}

- (void)_handleRotaryBegin:(id)begin
{
  self->_inputType = 6;
  [(_UIFocusEffectsController *)self->_motionEffectsController cancelRollbackAnimation];
  self->_focusUpdateCountSinceLastContinuousMovementBegan = 0;
  *&self->_flags |= 0x41u;
  [(_UIFocusEventRecognizer *)self _resetProgressAccumulator];
  [(_UIFocusEventRecognizer *)self _resetFailedMovementHeading];
  [(_UIFocusEventRecognizer *)self _resetMomentum];

  [(_UIFocusEventRecognizer *)self _showRotaryIndicator];
}

- (void)_handleRotaryEnd:(id)end
{
  *&self->_flags &= ~0x80u;
  [(_UIFocusEventRecognizer *)self _resetContinuousMovementState];
  [(_UIFocusEffectsController *)self->_motionEffectsController startRollbackAnimation];
  [(_UIFocusEffectsController *)self->_motionEffectsController resetDisplayOffsetAccumulationFactor];

  [(_UIFocusEventRecognizer *)self _hideRotaryIndicator];
}

- (void)_handleRotaryCancelled:(id)cancelled
{
  [(_UIFocusEventRecognizer *)self _resetContinuousMovementState];
  [(_UIFocusEffectsController *)self->_motionEffectsController reset];

  [(_UIFocusEventRecognizer *)self _hideRotaryIndicator];
}

- (void)_showRotaryIndicatorAfterDelay
{
  [(_UIFocusEventRecognizer *)self _cancelShowRotaryIndicatorTimer];
  [(NSTimer *)self->_showRotaryIndicatorAfterDelayTimer invalidate];
  v3 = [MEMORY[0x1E695DFF0] timerWithTimeInterval:self target:sel__timerFiredForShowRotaryIndicator_ selector:0 userInfo:0 repeats:0.2];
  showRotaryIndicatorAfterDelayTimer = self->_showRotaryIndicatorAfterDelayTimer;
  self->_showRotaryIndicatorAfterDelayTimer = v3;

  if (self->_showRotaryIndicatorAfterDelayTimer)
  {
    mainRunLoop = [MEMORY[0x1E695DFD0] mainRunLoop];
    [mainRunLoop addTimer:self->_showRotaryIndicatorAfterDelayTimer forMode:*MEMORY[0x1E695DA28]];
  }
}

- (void)_cancelShowRotaryIndicatorTimer
{
  [(NSTimer *)self->_showRotaryIndicatorAfterDelayTimer invalidate];
  showRotaryIndicatorAfterDelayTimer = self->_showRotaryIndicatorAfterDelayTimer;
  self->_showRotaryIndicatorAfterDelayTimer = 0;
}

- (void)_timerFiredForShowRotaryIndicator:(id)indicator
{
  if (self->_showRotaryIndicatorAfterDelayTimer == indicator)
  {
    [(_UIFocusEventRecognizer *)self _cancelShowRotaryIndicatorTimer];
    v5 = [(_UIFocusEventRecognizer *)self gestureForName:5];
    v6 = v5;
    if (v5)
    {
      v8 = v5;
      state = [v5 state];
      v6 = v8;
      if (!state)
      {
        [(_UIFocusEventRecognizer *)self _showRotaryIndicator];
        v6 = v8;
      }
    }
  }
}

- (void)_showRotaryIndicator
{
  [(_UIFocusEventRecognizer *)self _cancelShowRotaryIndicatorTimer];
  [(_UIFocusEventRecognizer *)self _updateRotaryIndicatorView];
  rotaryIndicatorView = self->_rotaryIndicatorView;
  if (rotaryIndicatorView)
  {
    [(_UIFocusRotaryIndicatorView *)rotaryIndicatorView updateFailedMovementHeading:0];
    v4 = self->_rotaryIndicatorView;
    v5 = [(_UIFocusEventRecognizer *)self gestureForName:5];
    [v5 position];
    [(_UIFocusRotaryIndicatorView *)v4 updateWheelPosition:?];

    v6 = self->_rotaryIndicatorView;

    [(_UIFocusRotaryIndicatorView *)v6 toggleVisible:1 animated:1];
  }
}

- (void)_hideRotaryIndicator
{
  [(_UIFocusEventRecognizer *)self _cancelShowRotaryIndicatorTimer];
  rotaryIndicatorView = self->_rotaryIndicatorView;

  [(_UIFocusRotaryIndicatorView *)rotaryIndicatorView toggleVisible:0 animated:1];
}

- (void)_updateRotaryDistance:(double)distance delta:(double)delta reportedVelocity:(double)velocity remoteTouchSurfaceType:(unint64_t)type focusMovementAxis:(int64_t)axis
{
  v56 = *MEMORY[0x1E69E9840];
  v12 = [_UIFocusEventRecognizer _createStudyLogDataForRotaryDistance:"_createStudyLogDataForRotaryDistance:delta:reportedVelocity:" delta:distance reportedVelocity:?];
  _retrieveFocusItemMetadata = [(_UIFocusEventRecognizer *)self _retrieveFocusItemMetadata];
  v14 = _UIInternalPreferenceUsesDefault(&unk_1ED48AF38, @"B519_FocusMovementGain", _UIInternalPreferenceUpdateDouble);
  v15 = *&qword_1ED48AF40;
  if (v14)
  {
    v15 = 1.5;
  }

  v16 = v15 * delta;
  v17 = _UIInternalPreferenceUsesDefault(&unk_1ED48AF38, @"B519_FocusMovementGain", _UIInternalPreferenceUpdateDouble);
  v18 = *&qword_1ED48AF40;
  if (v17)
  {
    v18 = 1.5;
  }

  v19 = v18 * velocity;
  focusTouchSensitivityStyle = [_retrieveFocusItemMetadata focusTouchSensitivityStyle];
  if ((axis - 1) > 2)
  {
    v21 = 0;
  }

  else
  {
    v21 = qword_18A67B5E8[axis - 1];
  }

  v22 = focusTouchSensitivityStyle == 2;
  [(_UIFocusEventRecognizer *)self _pointForLinearValue:v21 axis:v16];
  v24 = v23;
  v26 = v25;
  [(_UIFocusEventRecognizer *)self _pointForLinearValue:v21 axis:v19];
  v28 = v27;
  v30 = v29;
  [(_UIFocusEventRecognizer *)self _applyHorizontalFlipForFocusItemMetadata:_retrieveFocusItemMetadata toDelta:v24, v26];
  v32 = v31;
  v34 = v33;
  if (_UIInternalPreferenceUsesDefault(&unk_1ED48AF28, @"B519_RotaryMovementAccelerationStrength", _UIInternalPreferenceUpdateDouble))
  {
    v35 = 0.7;
  }

  else
  {
    v35 = *&qword_1ED48AF30;
  }

  [(_UIFocusEventRecognizer *)self _accelerationFactorForCurrentVelocity:1 alpha:v22 isRotaryGesture:type isFocusInKeyboard:v28 remoteTouchSurfaceType:v30, v35];
  v37 = v36;
  v39 = v38;
  [(_UIFocusEventRecognizer *)self _touchSensitivityForFocusItemMetadata:_retrieveFocusItemMetadata remoteTouchSurfaceType:type];
  v42 = v41;
  v43 = v40;
  if (v41 == *MEMORY[0x1E695F060] && v40 == *(MEMORY[0x1E695F060] + 8))
  {
    if (os_variant_has_internal_diagnostics())
    {
      v51 = __UIFaultDebugAssertLog();
      if (!os_log_type_enabled(v51, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_20;
      }

      item = [_retrieveFocusItemMetadata item];
      v53 = [item debugDescription];
      v54 = 138412290;
      v55 = v53;
      _os_log_fault_impl(&dword_188A29000, v51, OS_LOG_TYPE_FAULT, "Focus Sensitivity for focus item must not be zero: %@", &v54, 0xCu);
    }

    else
    {
      v50 = *(__UILogGetCategoryCachedImpl("Assert", &_updateRotaryDistance_delta_reportedVelocity_remoteTouchSurfaceType_focusMovementAxis____s_category) + 8);
      if (!os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_15;
      }

      v51 = v50;
      item = [_retrieveFocusItemMetadata item];
      v53 = [item debugDescription];
      v54 = 138412290;
      v55 = v53;
      _os_log_impl(&dword_188A29000, v51, OS_LOG_TYPE_ERROR, "Focus Sensitivity for focus item must not be zero: %@", &v54, 0xCu);
    }

LABEL_20:
  }

LABEL_15:
  [(_UIFocusEventRecognizer *)self _applyButtonMaskTimeToValue:type remoteTouchSurfaceType:v32 * v37 * v42, v34 * v39 * v43];
  [(_UIFocusEventRecognizer *)self _updateAccumulatorsWithScaledDelta:v12 unlockedDelta:v45 studyLogData:v46, v45, v46];
  [(_UIFocusEventRecognizer *)self _updateMotionEffectsControllerWithProgressAccumulator:self->_progressAccumulator.dx unlockedAccumulator:self->_progressAccumulator.dy, self->_unlockedAccumulator.dx, self->_unlockedAccumulator.dy];
  v47 = [(_UIFocusEventRecognizer *)self _calculateLinearHeadingForAccumulator:v12 studyLogData:self->_progressAccumulator.dx, self->_progressAccumulator.dy];
  v48 = [(_UIFocusEventRecognizer *)self _calculateDirectionalHeadingForAccumulator:v12 studyLogData:self->_progressAccumulator.dx, self->_progressAccumulator.dy];
  _focusMovementSystem = [(_UIFocusEventRecognizer *)self _focusMovementSystem];
  [(_UIFocusEventRecognizer *)self _attemptRotaryFocusMovementWithLinearHeading:v47 directionalHeading:v48 focusMovementAxis:axis focusSystem:_focusMovementSystem acceleratedVelocity:v12 studyLogData:v28 * v37, v30 * v39];
}

- (id)_createRotaryMovementRequestWithFocusSystem:(id)system
{
  systemCopy = system;
  v4 = [[_UIFocusMovementRequest alloc] initWithFocusSystem:systemCopy];

  return v4;
}

- (CGPoint)_pointForLinearValue:(double)value axis:(unint64_t)axis
{
  valueCopy2 = 0.0;
  if (axis)
  {
    valueCopy = value;
  }

  else
  {
    valueCopy = 0.0;
  }

  if ((axis & 2) != 0)
  {
    valueCopy2 = value;
  }

  v6 = valueCopy;
  result.y = valueCopy2;
  result.x = v6;
  return result;
}

- (unint64_t)_calculateLinearHeadingForAccumulator:(CGVector)accumulator studyLogData:(id)data
{
  v4 = 32 * (fmin(accumulator.dx, accumulator.dy) <= -1.0);
  if (fmax(accumulator.dx, accumulator.dy) < 1.0)
  {
    return v4;
  }

  else
  {
    return 16;
  }
}

- (BOOL)_attemptRotaryFocusMovementWithLinearHeading:(unint64_t)heading directionalHeading:(unint64_t)directionalHeading focusMovementAxis:(int64_t)axis focusSystem:(id)system acceleratedVelocity:(CGPoint)velocity studyLogData:(id)data
{
  LOBYTE(v8) = 0;
  if (axis != 3)
  {
    heading = directionalHeading;
  }

  if (system && heading)
  {
    y = velocity.y;
    x = velocity.x;
    v14 = [(_UIFocusEventRecognizer *)self _createRotaryMovementRequestWithFocusSystem:system];
    currentFocusBehavior = [(_UIFocusEventRecognizer *)self currentFocusBehavior];
    v16 = ([currentFocusBehavior focusGroupMovementBehavior] >> 5) & 1;

    v17 = [(_UIFocusEventRecognizer *)self _createMovementInfoForHeading:heading groupFilter:v16 acceleratedVelocity:x, y];
    [v14 setMovementInfo:v17];

    v8 = [(_UIFocusEventRecognizer *)self _attemptToRecognizeContinuousMovementRequest:v14];
    if (v8)
    {
      [(_UIFocusEventRecognizer *)self _continuousMovementSucceededWithDirectionalHeading:directionalHeading];
    }

    else
    {
      [(_UIFocusEventRecognizer *)self _continuousMovementFailedWithPrimaryHeading:directionalHeading];
    }
  }

  return v8;
}

- (void)_resetPanDeadband
{
  v3 = _UIInternalPreferenceUsesDefault(&_UIInternalPreference_B519_PanDeadbandSize, @"B519_PanDeadbandSize", _UIInternalPreferenceUpdateDouble);
  v4 = *&qword_1EA95E358;
  if (v3)
  {
    v4 = 0.15;
  }

  self->_panDeadBand = v4;
}

- (void)_panGestureStart:(id)start
{
  startCopy = start;
  self->_inputType = 1;
  [(_UIFocusEffectsController *)self->_motionEffectsController cancelRollbackAnimation];
  self->_focusUpdateCountSinceLastContinuousMovementBegan = 0;
  *&self->_flags |= 0x41u;
  v5 = 0;
  if (startCopy)
  {
    v5 = *(startCopy + 408);
  }

  self->_lastKnownTouchPoint = v5;
  self->_touchBeganPoint = self->_lastKnownTouchPoint;
  [(_UIFocusEventRecognizer *)self _resetProgressAccumulator];
  [(_UIFocusEventRecognizer *)self _resetFailedMovementHeading];
  self->_previousPoints[4] = 0u;
  self->_previousPoints[3] = 0u;
  self->_previousPoints[2] = 0u;
  self->_previousPoints[1] = 0u;
  self->_previousPoints[0] = 0u;
  self->_numFrames = 1;
  WeakRetained = objc_loadWeakRetained(&self->_owningView);
  traitCollection = [WeakRetained traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom == 3)
  {
    _activeTouchesEvent = [(UIGestureRecognizer *)startCopy _activeTouchesEvent];
    v10 = [_activeTouchesEvent touchesForGestureRecognizer:startCopy];
    anyObject = [v10 anyObject];

    if (anyObject)
    {
      v12 = objc_loadWeakRetained(&self->_owningView);
      _window = [v12 _window];
      windowScene = [_window windowScene];
      carPlaySession = [windowScene carPlaySession];
      v16 = [carPlaySession touchpadForSenderID:{objc_msgSend(anyObject, "_senderID")}];
      currentCarTouchpad = self->_currentCarTouchpad;
      self->_currentCarTouchpad = v16;

      v18 = objc_loadWeakRetained(&self->_owningView);
      _screen = [v18 _screen];
      _carSession = [_screen _carSession];
      inputDeviceManager = [_carSession inputDeviceManager];
      v22 = [inputDeviceManager touchpadWithSenderID:{objc_msgSend(anyObject, "_senderID")}];
      currentCarKitTouchpad = self->_currentCarKitTouchpad;
      self->_currentCarKitTouchpad = v22;

      if (!self->_currentCarTouchpad && !self->_currentCarKitTouchpad)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"_UIFocusEventRecognizer.m" lineNumber:2103 description:@"Attempted a pan-gesture-based focus movement without a touchpad."];
      }
    }
  }

  [(_UIFocusEventRecognizer *)self _resetMomentum];
  [(_UIFocusEventRecognizer *)self _sendGestureBeginNotification];
}

- (void)_updatePanLocation:(CGPoint)location reportedVelocity:(CGPoint)velocity remoteTouchSurfaceType:(unint64_t)type
{
  y = velocity.y;
  x = velocity.x;
  v8 = location.y;
  v9 = location.x;
  v74 = *MEMORY[0x1E69E9840];
  v11 = [_UIFocusEventRecognizer _createStudyLogDataForPanNormalizedPoint:"_createStudyLogDataForPanNormalizedPoint:reportedVelocity:" reportedVelocity:?];
  _retrieveFocusItemMetadata = [(_UIFocusEventRecognizer *)self _retrieveFocusItemMetadata];
  [(_UIFocusEventRecognizer *)self _calculateDeltaForNormalizedPoint:v11 studyLogData:v9, v8];
  [_UIFocusEventRecognizer _applyPanDeadbandToValue:"_applyPanDeadbandToValue:startPoint:currentPoint:remoteTouchSurfaceType:" startPoint:type currentPoint:? remoteTouchSurfaceType:?];
  v14 = v13;
  v16 = v15;
  [(_UIFocusEventRecognizer *)self _applyHorizontalFlipForFocusItemMetadata:_retrieveFocusItemMetadata toDelta:?];
  v70 = v9;
  v71 = v8;
  [(_UIFocusEventRecognizer *)self _applyAxisLockingForNormalizedPoint:v9 toDelta:v8, v17, v18];
  v20 = v19;
  v22 = v21;
  -[_UIFocusEventRecognizer _accelerationFactorForCurrentVelocity:alpha:isRotaryGesture:isFocusInKeyboard:remoteTouchSurfaceType:](self, "_accelerationFactorForCurrentVelocity:alpha:isRotaryGesture:isFocusInKeyboard:remoteTouchSurfaceType:", 0, [_retrieveFocusItemMetadata focusTouchSensitivityStyle] == 2, type, x, y, 1.0);
  v24 = v23;
  v26 = v25;
  [(_UIFocusEventRecognizer *)self _touchSensitivityForFocusItemMetadata:_retrieveFocusItemMetadata remoteTouchSurfaceType:type];
  v28 = y;
  v30 = v29;
  v31 = v27;
  v32 = v29 == *MEMORY[0x1E695F060] && v27 == *(MEMORY[0x1E695F060] + 8);
  v33 = v14;
  v34 = x;
  v35 = v16;
  if (v32)
  {
    v51 = v30;
    v52 = v34;
    v53 = v28;
    v66 = v24;
    v69 = v33;
    v54 = v35;
    if (os_variant_has_internal_diagnostics())
    {
      v61 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v61, OS_LOG_TYPE_FAULT))
      {
        item = [_retrieveFocusItemMetadata item];
        v63 = [item debugDescription];
        *buf = 138412290;
        v73 = v63;
        _os_log_fault_impl(&dword_188A29000, v61, OS_LOG_TYPE_FAULT, "Focus Sensitivity for focus item must not be zero: %@", buf, 0xCu);
      }

      v28 = v53;
      v33 = v69;
      v35 = v54;
      v34 = v52;
      v24 = v66;
      v30 = v51;
    }

    else
    {
      v55 = *(__UILogGetCategoryCachedImpl("Assert", &_updatePanLocation_reportedVelocity_remoteTouchSurfaceType____s_category) + 8);
      v56 = os_log_type_enabled(v55, OS_LOG_TYPE_ERROR);
      v33 = v69;
      v35 = v54;
      v24 = v66;
      v28 = v53;
      v34 = v52;
      v30 = v51;
      if (v56)
      {
        v64 = v35;
        v65 = v52;
        v57 = v28;
        v58 = v55;
        item2 = [_retrieveFocusItemMetadata item];
        v60 = [item2 debugDescription];
        *buf = 138412290;
        v73 = v60;
        _os_log_impl(&dword_188A29000, v58, OS_LOG_TYPE_ERROR, "Focus Sensitivity for focus item must not be zero: %@", buf, 0xCu);

        v30 = v51;
        v33 = v69;
        v35 = v64;
        v34 = v65;
        v28 = v57;
      }
    }
  }

  v36 = v28;
  v67 = v34 * v24;
  v68 = v28 * v26;
  v37 = v35 * v26;
  v38 = v33 * v24;
  v39 = v22 * v26 * v31;
  v40 = v38 * v30;
  v41 = v37 * v31;
  [(_UIFocusEventRecognizer *)self _applyButtonMaskTimeToValue:type remoteTouchSurfaceType:v20 * v24 * v30, v39, *&v64];
  v43 = v42;
  v45 = v44;
  [(_UIFocusEventRecognizer *)self _applyButtonMaskTimeToValue:type remoteTouchSurfaceType:v40, v41];
  [(_UIFocusEventRecognizer *)self _updateAccumulatorsWithScaledDelta:v11 unlockedDelta:v43 studyLogData:v45, v46, v47];
  [(_UIFocusEventRecognizer *)self _recordMomentumForPoint:v70 reportedVelocity:v71, v34, v36];
  [(_UIFocusEventRecognizer *)self _updateMotionEffectsControllerWithProgressAccumulator:self->_progressAccumulator.dx unlockedAccumulator:self->_progressAccumulator.dy, self->_unlockedAccumulator.dx, self->_unlockedAccumulator.dy];
  v48 = [(_UIFocusEventRecognizer *)self _calculateDirectionalHeadingForAccumulator:v11 studyLogData:self->_progressAccumulator.dx, self->_progressAccumulator.dy];
  _focusMovementSystem = [(_UIFocusEventRecognizer *)self _focusMovementSystem];
  v50 = [(_UIFocusEventRecognizer *)self _attemptPanFocusMovementWithHeading:v48 acceleratedVelocity:_focusMovementSystem focusSystem:v11 studyLogData:v67, v68];

  [(_UIFocusEventRecognizer *)self _cleanupPanMomentumWithAccumulator:v50 movementSuccess:self->_progressAccumulator.dx, self->_progressAccumulator.dy];
}

- (id)_createPanMovementRequestWithFocusSystem:(id)system
{
  systemCopy = system;
  v5 = [[_UIFocusMovementRequest alloc] initWithFocusSystem:systemCopy];

  WeakRetained = objc_loadWeakRetained(&self->_owningView);
  traitCollection = [WeakRetained traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom == 3)
  {
    currentCarTouchpad = self->_currentCarTouchpad;
    if (currentCarTouchpad && [(_UISceneCarPlaySessionTouchpad *)currentCarTouchpad feedbackSupported])
    {
      p_currentCarTouchpad = &self->_currentCarTouchpad;
LABEL_8:
      v12 = +[_UIFocusInputDeviceInfo infoWithSenderID:](_UIFocusInputDeviceInfo, "infoWithSenderID:", [*p_currentCarTouchpad senderID]);
      [(_UIFocusMovementRequest *)v5 setInputDeviceInfo:v12];
      [(_UIFocusMovementRequest *)v5 setShouldPerformHapticFeedback:1];

      goto LABEL_9;
    }

    currentCarKitTouchpad = self->_currentCarKitTouchpad;
    if (currentCarKitTouchpad && [(CARInputDeviceTouchpad *)currentCarKitTouchpad supportedFeedbackTypes])
    {
      p_currentCarTouchpad = &self->_currentCarKitTouchpad;
      goto LABEL_8;
    }
  }

LABEL_9:

  return v5;
}

- (CGPoint)_calculateDeltaForNormalizedPoint:(CGPoint)point studyLogData:(id)data
{
  v4 = point.x - self->_lastKnownTouchPoint.x;
  v5 = point.y - self->_lastKnownTouchPoint.y;
  self->_lastKnownTouchPoint = point;
  v6 = v4;
  v7 = v5;
  result.y = v7;
  result.x = v6;
  return result;
}

- (CGPoint)_applyPanDeadbandToValue:(CGPoint)value startPoint:(CGPoint)point currentPoint:(CGPoint)currentPoint remoteTouchSurfaceType:(unint64_t)type
{
  y = value.y;
  x = value.x;
  if (type == 2)
  {
    v8 = currentPoint.y;
    v9 = currentPoint.x;
    v10 = point.y;
    v11 = point.x;
    panDeadBand = self->_panDeadBand;
    if (panDeadBand > 0.0)
    {
      v14 = CACurrentMediaTime() - self->_lastButtonPressTime;
      v15 = _UIInternalPreferenceUsesDefault(&_UIInternalPreference_B519_PanDeadbandTime, @"B519_PanDeadbandTime", _UIInternalPreferenceUpdateDouble);
      v16 = *&qword_1EA95E368;
      if (v15)
      {
        v16 = 3.0;
      }

      if (v14 <= v16)
      {
        panDeadBand = self->_panDeadBand;
      }

      else
      {
        self->_panDeadBand = 0.0;
        panDeadBand = 0.0;
      }
    }

    v17 = sqrt((v9 - v11) * (v9 - v11) + (v8 - v10) * (v8 - v10));
    if (panDeadBand <= 0.0 || v17 >= panDeadBand)
    {
      if (panDeadBand > 0.0 && v17 > panDeadBand)
      {
        v18 = (v17 - panDeadBand) / sqrt(x * x + y * y);
        x = x * v18;
        y = y * v18;
        self->_panDeadBand = 0.0;
      }
    }

    else
    {
      x = *MEMORY[0x1E695EFF8];
      y = *(MEMORY[0x1E695EFF8] + 8);
    }
  }

  v19 = x;
  v20 = y;
  result.y = v20;
  result.x = v19;
  return result;
}

- (CGPoint)_applyHorizontalFlipForFocusItemMetadata:(id)metadata toDelta:(CGPoint)delta
{
  y = delta.y;
  x = delta.x;
  isFocusMovementFlippedHorizontally = [metadata isFocusMovementFlippedHorizontally];
  v7 = -x;
  if (!isFocusMovementFlippedHorizontally)
  {
    v7 = x;
  }

  v8 = y;
  result.y = v8;
  result.x = v7;
  return result;
}

- (CGPoint)_applyAxisLockingForNormalizedPoint:(CGPoint)point toDelta:(CGPoint)delta
{
  if (point.x > 0.95 && self->_touchBeganPoint.x < 0.95 || (y = 0.0, point.x < 0.05) && self->_touchBeganPoint.x > 0.05)
  {
    y = delta.y;
    delta.y = 0.0;
  }

  v5.f64[0] = 0.0;
  if (point.y < 0.1 && self->_touchBeganPoint.y > 0.1)
  {
    v5.f64[0] = delta.x;
    delta.x = 0.0;
  }

  self->_previousPoints[4] = self->_previousPoints[3];
  self->_previousPoints[3] = self->_previousPoints[2];
  self->_previousPoints[2] = self->_previousPoints[1];
  self->_previousPoints[1] = self->_previousPoints[0];
  self->_previousPoints[0] = self->_lastKnownTouchPoint;
  numFrames = self->_numFrames;
  v7 = *(&self->_lastKnownTouchPoint + numFrames);
  if (numFrames <= 4)
  {
    self->_numFrames = numFrames + 1;
  }

  v5.f64[1] = y;
  v8 = vabdq_f64(vsubq_f64(self->_lastKnownTouchPoint, v5), v7);
  if (vaddvq_f64(v8) > 0.05)
  {
    if (v8.f64[0] >= v8.f64[1])
    {
      delta.y = delta.y * 0.0;
    }

    else
    {
      delta.x = delta.x * 0.0;
    }
  }

  x = delta.x;
  v10 = delta.y;
  result.y = v10;
  result.x = x;
  return result;
}

- (CGPoint)_applyButtonMaskTimeToValue:(CGPoint)value remoteTouchSurfaceType:(unint64_t)type
{
  y = value.y;
  x = value.x;
  if (type == 2 && ![(_UIFocusEventRecognizer *)self _buttonMaskTimeHasExpired])
  {
    y = 0.0;
    x = 0.0;
  }

  v6 = x;
  v7 = y;
  result.y = v7;
  result.x = v6;
  return result;
}

- (CGVector)_accelerationFactorForCurrentVelocity:(CGPoint)velocity alpha:(double)alpha isRotaryGesture:(BOOL)gesture isFocusInKeyboard:(BOOL)keyboard remoteTouchSurfaceType:(unint64_t)type
{
  keyboardCopy = keyboard;
  gestureCopy = gesture;
  y = velocity.y;
  x = velocity.x;
  v14 = _UIInternalPreferenceUsesDefault(&_UIInternalPreference_FocusEngineUsesAccelerationCurve, @"FocusEngineUsesAccelerationCurve", _UIInternalPreferenceUpdateBool);
  v15 = 1.0;
  if ((v14 & 1) != 0 || !byte_1EA95E394)
  {
    v16 = 1.0;
  }

  else
  {
    v16 = 1.0;
    if ((*&self->_flags & 0x40) != 0)
    {
      [(_UIFocusEventRecognizer *)self _momentumReferenceSize:1.0];
      v18 = x / v17;
      v20 = y / v19;
      v21 = fabs(x / v17);
      v22 = fabs(y / v19);
      v23 = _UIFocusEngineAcceleratedSpeedForSpeed(type, gestureCopy, keyboardCopy, v21);
      v24 = _UIFocusEngineAcceleratedSpeedForSpeed(type, gestureCopy, keyboardCopy, v22);
      v16 = 1.0;
      v15 = 1.0;
      if (v18 != 0.0)
      {
        v15 = 1.0 - alpha + v23 / v21 * alpha;
      }

      if (v20 != 0.0)
      {
        v16 = 1.0 - alpha + v24 / v22 * alpha;
      }
    }
  }

  result.dy = v16;
  result.dx = v15;
  return result;
}

- (void)_updateAccumulatorsWithScaledDelta:(CGPoint)delta unlockedDelta:(CGPoint)unlockedDelta studyLogData:(id)data
{
  y = delta.y;
  v6 = unlockedDelta.y;
  v7 = vaddq_f64(unlockedDelta, self->_unlockedAccumulator);
  self->_progressAccumulator = vaddq_f64(delta, self->_progressAccumulator);
  self->_unlockedAccumulator = v7;
}

- (void)_updateMotionEffectsControllerWithProgressAccumulator:(CGVector)accumulator unlockedAccumulator:(CGVector)unlockedAccumulator
{
  v4 = unlockedAccumulator.dx * 0.8;
  v5 = unlockedAccumulator.dy * 0.8;
  if (!self->_focusUpdateCountSinceLastContinuousMovementBegan)
  {
    accumulator.dy = v5;
    accumulator.dx = v4;
  }

  [(_UIFocusEffectsController *)self->_motionEffectsController updateCurrentOffset:accumulator.dx, accumulator.dy];
}

- (unint64_t)_calculateDirectionalHeadingForAccumulator:(CGVector)accumulator studyLogData:(id)data
{
  v4 = 8;
  v5 = 4;
  if (accumulator.dx > -1.0)
  {
    v5 = 0;
  }

  if (accumulator.dx < 1.0)
  {
    v4 = v5;
  }

  v6 = 2;
  if (accumulator.dy < 1.0)
  {
    v6 = accumulator.dy <= -1.0;
  }

  if (fabs(accumulator.dy) >= fabs(accumulator.dx))
  {
    return v6;
  }

  else
  {
    return v4;
  }
}

- (BOOL)_attemptPanFocusMovementWithHeading:(unint64_t)heading acceleratedVelocity:(CGPoint)velocity focusSystem:(id)system studyLogData:(id)data
{
  y = velocity.y;
  x = velocity.x;
  systemCopy = system;
  _shouldPerformFocusUpdateWithCurrentMomentumStatus = [(_UIFocusEventRecognizer *)self _shouldPerformFocusUpdateWithCurrentMomentumStatus];
  if (!heading)
  {
    goto LABEL_8;
  }

  v12 = !_shouldPerformFocusUpdateWithCurrentMomentumStatus;
  if (!systemCopy)
  {
    v12 = 1;
  }

  if (v12)
  {
    [(_UIFocusEventRecognizer *)self _stopMomentumAndPerformRollback];
LABEL_8:
    LOBYTE(v15) = 0;
    goto LABEL_11;
  }

  v13 = [(_UIFocusEventRecognizer *)self _createPanMovementRequestWithFocusSystem:systemCopy];
  v14 = [(_UIFocusEventRecognizer *)self _createMovementInfoForHeading:heading groupFilter:0 acceleratedVelocity:x, y];
  [v13 setMovementInfo:v14];

  v15 = [(_UIFocusEventRecognizer *)self _attemptToRecognizeContinuousMovementRequest:v13];
  if (v15)
  {
    [(_UIFocusEventRecognizer *)self _continuousMovementSucceededWithDirectionalHeading:heading];
  }

  else
  {
    [(_UIFocusEventRecognizer *)self _continuousMovementFailedWithPrimaryHeading:heading];
  }

LABEL_11:
  return v15;
}

- (id)_createMovementInfoForHeading:(unint64_t)heading groupFilter:(int64_t)filter acceleratedVelocity:(CGPoint)velocity
{
  v5 = [[_UIFocusMovementInfo alloc] initWithHeading:heading velocity:*&self->_flags & 1 isInitial:(heading & 0x330) == 0 shouldLoadScrollableContainer:filter groupFilter:self->_inputType inputType:velocity.x, velocity.y];

  return v5;
}

- (BOOL)_attemptToRecognizeContinuousMovementRequest:(id)request
{
  requestCopy = request;
  movementInfo = [requestCopy movementInfo];
  heading = [movementInfo heading];
  failedContinuousMovementHeading = self->_failedContinuousMovementHeading;

  v8 = (heading != failedContinuousMovementHeading || [(_UIFocusEventRecognizer *)self _hasFailedMovementHeadingExpired]) && [(_UIFocusEventRecognizer *)self _didRecognizeFocusMovementRequest:requestCopy];
  return v8;
}

- (void)_continuousMovementSucceededWithDirectionalHeading:(unint64_t)heading
{
  [(_UIFocusEventRecognizer *)self _resetProgressAccumulatorWithHeading:heading];
  [(_UIFocusEffectsController *)self->_motionEffectsController adjustDisplayOffsetAccumulationFactorForFocusTransfer];
  motionEffectsController = self->_motionEffectsController;
  dx = self->_progressAccumulator.dx;
  dy = self->_progressAccumulator.dy;
  v7 = [MEMORY[0x1E696B098] valueWithCGPoint:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
  [(_UIFocusEffectsController *)motionEffectsController updateCurrentOffset:v7 overrideDisplayOffset:dx, dy];

  v8 = *&self->_flags & 0xFFFE;
  if (self->_inputType == 7)
  {
    ++v8;
  }

  *&self->_flags = v8;
  ++self->_focusUpdateCountSinceLastContinuousMovementBegan;
}

- (void)_continuousMovementFailedWithPrimaryHeading:(unint64_t)heading
{
  __asm
  {
    FMOV            V0.2D, #1.0
    FMOV            V3.2D, #-1.0
  }

  v11 = vmaxnmq_f64(vminnmq_f64(self->_progressAccumulator, _Q0), _Q3);
  v12 = vmaxnmq_f64(vminnmq_f64(self->_unlockedAccumulator, _Q0), _Q3);
  self->_progressAccumulator = v11;
  self->_unlockedAccumulator = v12;
  [(_UIFocusEventRecognizer *)self _resetCachedFocusItemMetadata];

  [(_UIFocusEventRecognizer *)self _updateFailedContinuousMovementHeading:heading];
}

- (void)_updateFailedContinuousMovementHeading:(unint64_t)heading
{
  if (self->_failedContinuousMovementHeading != heading || [(_UIFocusEventRecognizer *)self _hasFailedMovementHeadingExpired])
  {
    self->_failedContinuousMovementHeading = heading;
    [(_UIFocusRotaryIndicatorView *)self->_rotaryIndicatorView updateFailedMovementHeading:heading];
    if (self->_failedContinuousMovementHeading)
    {
      v5 = CACurrentMediaTime();
    }

    else
    {
      v5 = 0.0;
    }

    self->_failedContinuousMovementTime = v5;
  }
}

- (void)_cleanupPanMomentumWithAccumulator:(CGVector)accumulator movementSuccess:(BOOL)success
{
  if (!success)
  {
    v5 = hypot(accumulator.dx, accumulator.dy);
    if ((*&self->_flags & 2) != 0 && v5 > 2.0)
    {

      [(_UIFocusEventRecognizer *)self _stopMomentumAndPerformRollback];
    }
  }
}

- (void)_panGestureEnd:(id)end
{
  *&self->_flags &= ~0x80u;
  [(_UIFocusEventRecognizer *)self _continueTouchWithMomentum];

  [(_UIFocusEventRecognizer *)self _resetContinuousMovementState];
}

- (void)_panGestureCancelled:(id)cancelled
{
  [(_UIFocusEventRecognizer *)self _resetContinuousMovementState];
  motionEffectsController = self->_motionEffectsController;

  [(_UIFocusEffectsController *)motionEffectsController reset];
}

- (void)_resetProgressAccumulatorWithHeading:(unint64_t)heading
{
  v5 = +[UIDevice currentDevice];
  v6 = [v5 _remoteTouchSurfaceType] == 2;

  if ((heading & 0xC) != 0)
  {
    if ((heading & 3) != 0)
    {
      return;
    }

    v7 = 176;
    v8 = 160;
    v9 = 8;
  }

  else
  {
    if ((heading & 3) == 0)
    {
      return;
    }

    v7 = 184;
    v8 = 168;
    v9 = 2;
  }

  v10 = dbl_18A67B520[v6];
  v11 = 2.0 - v10;
  v12 = v10 + -2.0;
  if ((v9 & heading) != 0)
  {
    v12 = v11;
  }

  *(&self->super.isa + v8) = *(&self->super.isa + v8) - v12;
  *(&self->super.isa + v7) = *(&self->super.isa + v7) - v12;
}

- (void)_joystickGestureBegan:(id)began
{
  self->_inputType = 3;
  *&self->_flags = *&self->_flags & 0xFFFA | 1;
  joystickModeExitTimer = self->_joystickModeExitTimer;
  if (joystickModeExitTimer)
  {
    [(NSTimer *)joystickModeExitTimer invalidate];
    v5 = self->_joystickModeExitTimer;
    self->_joystickModeExitTimer = 0;
  }

  else
  {
    [(_UIFocusEffectsController *)self->_motionEffectsController cancelRollbackAnimation];
    [(_UIFocusEventRecognizer *)self _resetMomentum];
    [(_UIFocusEventRecognizer *)self _sendGestureBeginNotification];
    [(CADisplayLink *)self->_joystickFocusDirectionDisplayLink invalidate];
    WeakRetained = objc_loadWeakRetained(&self->_owningView);
    _screen = [WeakRetained _screen];
    v8 = [_screen displayLinkWithTarget:self selector:sel__joystickDisplayLinkHeartbeat_];
    joystickFocusDirectionDisplayLink = self->_joystickFocusDirectionDisplayLink;
    self->_joystickFocusDirectionDisplayLink = v8;

    v10 = self->_joystickFocusDirectionDisplayLink;
    mainRunLoop = [MEMORY[0x1E695DFD0] mainRunLoop];
    [(CADisplayLink *)v10 addToRunLoop:mainRunLoop forMode:*MEMORY[0x1E695DA28]];
    v5 = mainRunLoop;
  }
}

- (void)_joystickGestureUpdated:(id)updated
{
  if ((*&self->_flags & 8) != 0)
  {
    [(_UIFocusEventRecognizer *)self _handleJoystickRepeatMode:updated];
  }

  else
  {
    [(_UIFocusEventRecognizer *)self _handleJoystickTiltMode:updated];
  }
}

- (void)_joystickGestureEnded:(id)ended
{
  [(NSTimer *)self->_joystickModeExitTimer invalidate];
  _UIInternalPreferenceUsesDefault(&_UIInternalPreference_JoystickModeExitInterval, @"JoystickModeExitInterval", _UIInternalPreferenceUpdateDouble);
  v4 = _UIFocusEngineJoystickTimer(self, sel__exitJoystickModeForReal_);
  joystickModeExitTimer = self->_joystickModeExitTimer;
  self->_joystickModeExitTimer = v4;

  [(NSTimer *)self->_joystickModeRepeatTimer invalidate];
  joystickModeRepeatTimer = self->_joystickModeRepeatTimer;
  self->_joystickModeRepeatTimer = 0;
}

- (void)_exitJoystickModeForReal:(id)real
{
  self->_inputType = 0;
  joystickModeExitTimer = self->_joystickModeExitTimer;
  self->_joystickModeExitTimer = 0;

  *&self->_flags = *&self->_flags & 0xFFF3 | 4;
  self->_joystickRepeatCount = 0;
}

- (void)_handleJoystickRepeatMode:(id)mode
{
  modeCopy = mode;
  *&self->_flags &= ~0x10u;
  [modeCopy stickPosition];
  v6 = v5;
  v8 = v7;
  if (_UIInternalPreferenceUsesDefault(&unk_1ED48AFE8, @"JoystickTiltModeRadius", _UIInternalPreferenceUpdateDouble))
  {
    v9 = 0.6;
  }

  else
  {
    v9 = *&qword_1ED48AFF0;
  }

  _retrieveFocusItemMetadata = [(_UIFocusEventRecognizer *)self _retrieveFocusItemMetadata];
  v11 = -[_UIFocusEventRecognizer _focusMovementForJoystickPosition:usingMinimumRadius:focusMovementStyle:](self, "_focusMovementForJoystickPosition:usingMinimumRadius:focusMovementStyle:", [_retrieveFocusItemMetadata inheritedFocusMovementStyle], v6, v8, v9);
  if (![(_UIFocusEventRecognizer *)self _joystickFocusMovement:v11 shouldBeConsideredEqualToFocusMovement:self->_previousJoystickFocusMovementInfo])
  {
    *&self->_flags &= ~8u;
    self->_joystickRepeatCount = 0;
    [(_UIFocusEventRecognizer *)self _handleJoystickTiltMode:modeCopy];
    goto LABEL_17;
  }

  if (hypot(v6, v8) >= v9)
  {
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v14 = v13 - self->_previousJoystickFocusMovementTime;
    [(_UIFocusEventRecognizer *)self _joystickRepeatDurationForTimeInMovementZone:v13 - self->_previousJoystickRegionEntryTime];
    if (v14 < v15)
    {
LABEL_16:
      [(NSTimer *)self->_joystickModeRepeatTimer invalidate];
      v20 = _UIFocusEngineJoystickTimer(self, sel__joystickPerformRepeat_);
      joystickModeRepeatTimer = self->_joystickModeRepeatTimer;
      self->_joystickModeRepeatTimer = v20;

      goto LABEL_17;
    }

    _focusMovementSystem = [(_UIFocusEventRecognizer *)self _focusMovementSystem];
    if (_focusMovementSystem)
    {
      v17 = [[_UIFocusMovementRequest alloc] initWithFocusSystem:_focusMovementSystem];
      [(_UIFocusMovementRequest *)v17 setMovementInfo:v11];
      v18 = [(_UIFocusEventRecognizer *)self _joystickAttemptFocusMovementWithRequest:v17];

      if (v18)
      {
        ++self->_joystickRepeatCount;
LABEL_15:

        goto LABEL_16;
      }
    }

    else
    {
      v19 = *(__UILogGetCategoryCachedImpl("UIFocus", &_handleJoystickRepeatMode____s_category) + 8);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *v22 = 0;
        _os_log_impl(&dword_188A29000, v19, OS_LOG_TYPE_ERROR, "Focus event recognizer is no longer connected to a focus system. Ignoring joystick movement request.", v22, 2u);
      }
    }

    -[_UIFocusEventRecognizer _continuousMovementFailedWithPrimaryHeading:](self, "_continuousMovementFailedWithPrimaryHeading:", [v11 heading]);
    goto LABEL_15;
  }

  *&self->_flags &= ~8u;
  [(NSTimer *)self->_joystickModeRepeatTimer invalidate];
  v12 = self->_joystickModeRepeatTimer;
  self->_joystickModeRepeatTimer = 0;

  self->_joystickRepeatCount = 0;
LABEL_17:
}

- (void)_handleJoystickTiltMode:(id)mode
{
  modeCopy = mode;
  [modeCopy stickPosition];
  v6 = v5;
  v8 = v7;
  [modeCopy previousStickPosition];
  v10 = v9;
  v12 = v11;

  _retrieveFocusItemMetadata = [(_UIFocusEventRecognizer *)self _retrieveFocusItemMetadata];
  inheritedFocusMovementStyle = [_retrieveFocusItemMetadata inheritedFocusMovementStyle];
  if (_UIInternalPreferenceUsesDefault(&unk_1ED48AFE8, @"JoystickTiltModeRadius", _UIInternalPreferenceUpdateDouble))
  {
    v15 = 0.6;
  }

  else
  {
    v15 = *&qword_1ED48AFF0;
  }

  v16 = [(_UIFocusEventRecognizer *)self _focusMovementForJoystickPosition:inheritedFocusMovementStyle usingMinimumRadius:v6 focusMovementStyle:v8, v15];
  if (v16)
  {
    v17 = [(_UIFocusEventRecognizer *)self _headingForJoystickPosition:v10 usingMinimumRadius:v12, v15];
    heading = [v16 heading];
    v19 = self->_previousJoystickFocusMovementInfo;
    v20 = v19;
    if (heading == v17 || v19 == 0)
    {
      if (heading == v17)
      {
        goto LABEL_22;
      }
    }

    else if ([(_UIFocusEventRecognizer *)self _joystickFocusMovement:v16 shouldBeConsideredEqualToFocusMovement:v19])
    {
      goto LABEL_22;
    }

    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    self->_previousJoystickRegionEntryTime = v24;
    self->_joystickRepeatingHeading = [v16 heading];
    [(NSTimer *)self->_joystickModeRepeatTimer invalidate];
    joystickModeRepeatTimer = self->_joystickModeRepeatTimer;
    self->_joystickModeRepeatTimer = 0;

    _focusMovementSystem = [(_UIFocusEventRecognizer *)self _focusMovementSystem];
    if (_focusMovementSystem)
    {
      v27 = [[_UIFocusMovementRequest alloc] initWithFocusSystem:_focusMovementSystem];
      [(_UIFocusMovementRequest *)v27 setMovementInfo:v16];
      v28 = [(_UIFocusEventRecognizer *)self _joystickAttemptFocusMovementWithRequest:v27];

      if (v28)
      {
        objc_storeStrong(&self->_previousJoystickFocusMovementInfo, v16);
        _UIInternalPreferenceUsesDefault(&unk_1ED48AFC8, @"JoystickRepeatStartTime", _UIInternalPreferenceUpdateDouble);
        v29 = _UIFocusEngineJoystickTimer(self, sel__joystickPerformRepeat_);
        v30 = self->_joystickModeRepeatTimer;
        self->_joystickModeRepeatTimer = v29;

LABEL_21:
LABEL_22:

        goto LABEL_23;
      }
    }

    else
    {
      v31 = *(__UILogGetCategoryCachedImpl("UIFocus", &_handleJoystickTiltMode____s_category) + 8);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        *v32 = 0;
        _os_log_impl(&dword_188A29000, v31, OS_LOG_TYPE_ERROR, "Focus event recognizer is no longer connected to a focus system. Ignoring joystick movement request.", v32, 2u);
      }
    }

    -[_UIFocusEventRecognizer _continuousMovementFailedWithPrimaryHeading:](self, "_continuousMovementFailedWithPrimaryHeading:", [v16 heading]);
    goto LABEL_21;
  }

  previousJoystickFocusMovementInfo = self->_previousJoystickFocusMovementInfo;
  if (previousJoystickFocusMovementInfo)
  {
    self->_previousJoystickFocusMovementInfo = 0;
  }

LABEL_23:
}

- (BOOL)_joystickAttemptFocusMovementWithRequest:(id)request
{
  requestCopy = request;
  movementInfo = [requestCopy movementInfo];
  heading = [movementInfo heading];

  if (heading && [(_UIFocusEventRecognizer *)self _attemptToRecognizeContinuousMovementRequest:requestCopy])
  {
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    self->_previousJoystickFocusMovementTime = v7;
    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (double)_joystickRepeatDurationForTimeInMovementZone:(double)zone
{
  if (_UIInternalPreferenceUsesDefault(algn_1ED48B018, @"JoystickAccelerationBaseline", _UIInternalPreferenceUpdateDouble))
  {
    v4 = 0.1;
  }

  else
  {
    v4 = *&qword_1ED48B020;
  }

  if (_UIInternalPreferenceUsesDefault(algn_1ED48B028, @"JoystickAccelerationMinimum", _UIInternalPreferenceUpdateDouble))
  {
    v5 = 0.05;
  }

  else
  {
    v5 = *&qword_1ED48B030;
  }

  if (_UIInternalPreferenceUsesDefault(&unk_1ED48AFF8, @"JoystickAccelerationBreakpointA", _UIInternalPreferenceUpdateDouble))
  {
    v6 = 0.75;
  }

  else
  {
    v6 = *&qword_1ED48B000;
  }

  if (_UIInternalPreferenceUsesDefault(algn_1ED48B008, @"JoystickAccelerationBreakpointB", _UIInternalPreferenceUpdateDouble))
  {
    v7 = 2.0;
  }

  else
  {
    v7 = *&qword_1ED48B010;
  }

  if (v6 > zone || v7 <= zone)
  {
    if (v7 <= zone)
    {
      return v5;
    }
  }

  else
  {
    v9 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB8]];
    v10 = v9;
    v11 = 0.0;
    if (v6 <= zone)
    {
      LODWORD(v11) = 1.0;
      if (v7 >= zone)
      {
        v11 = (zone - v6) / (v7 - v6) + 0.0;
        *&v11 = v11;
      }
    }

    [v9 _solveForInput:v11];
    if (v12 >= 0.0)
    {
      if (v12 <= 1.0)
      {
        v4 = v4 + (v5 - v4) * v12;
      }

      else
      {
        v4 = v5;
      }
    }
  }

  return v4;
}

- (BOOL)_joystickFocusMovement:(id)movement shouldBeConsideredEqualToFocusMovement:(id)focusMovement
{
  result = 0;
  if (movement && focusMovement)
  {
    focusMovementCopy = focusMovement;
    movementCopy = movement;
    [movementCopy _velocity];
    v9 = v8;
    [movementCopy _velocity];
    v11 = v10;

    v12 = atan2(v9, v11);
    [focusMovementCopy _velocity];
    v14 = v13;
    [focusMovementCopy _velocity];
    v16 = v15;

    v17 = atan2(v14, v16) - v12;
    if (v17 <= 3.14159265)
    {
      if (v17 >= -3.14159265)
      {
        return fabs(v17) <= 0.523598776;
      }

      v18 = 6.28318531;
    }

    else
    {
      v18 = -6.28318531;
    }

    v17 = v17 + v18;
    return fabs(v17) <= 0.523598776;
  }

  return result;
}

- (id)_focusMovementForJoystickPosition:(CGPoint)position usingMinimumRadius:(double)radius focusMovementStyle:(int64_t)style
{
  y = position.y;
  x = position.x;
  if (hypot(position.x, position.y) <= radius)
  {
    v16 = 0;
  }

  else
  {
    if (style == 2 && (v10 = hypot(x, -y), v11 = x / v10 * 2500.0, v12 = -y / v10 * 2500.0, fabs(atan2(fabs(v12), fabs(v11)) + -0.785398163) <= 0.6981))
    {
      radius = 0;
    }

    else
    {
      radius = [(_UIFocusEventRecognizer *)self _headingForJoystickPosition:x usingMinimumRadius:y, radius];
      [(_UIFocusEventRecognizer *)self _joystickVelocityForHeading:radius];
      v11 = v14;
      v12 = v15;
    }

    owningView = [(_UIFocusEventRecognizer *)self owningView];
    _focusBehavior = [owningView _focusBehavior];
    constrainGameControllersToFocusGroups = [_focusBehavior constrainGameControllersToFocusGroups];

    v16 = [[_UIFocusMovementInfo alloc] initWithHeading:radius velocity:*&self->_flags & 1 isInitial:1 shouldLoadScrollableContainer:constrainGameControllersToFocusGroups groupFilter:self->_inputType inputType:v11, v12];
  }

  return v16;
}

- (CGVector)_joystickVelocityForHeading:(unint64_t)heading
{
  v3 = heading - 1;
  v4 = 0.0;
  v5 = 0.0;
  if (heading - 1 <= 7)
  {
    v4 = dbl_18A67B618[v3];
    v5 = dbl_18A67B658[v3];
  }

  result.dy = v4;
  result.dx = v5;
  return result;
}

- (unint64_t)_headingForJoystickPosition:(CGPoint)position usingMinimumRadius:(double)radius
{
  y = position.y;
  x = position.x;
  if (hypot(position.x, position.y) <= radius)
  {
    return 0;
  }

  v6 = -x;
  if (y >= x && y >= v6)
  {
    return 1;
  }

  if (y < x && y >= v6)
  {
    return 8;
  }

  v9 = 2 * (fmin(x, v6) > y);
  if (y < x)
  {
    return v9;
  }

  else
  {
    return 4 * (y < v6);
  }
}

- (void)_joystickDisplayLinkHeartbeat:(id)heartbeat
{
  [(_UIFocusEffectsController *)self->_motionEffectsController currentOffset];
  if (fabs(v4) < 0.05)
  {
    [(_UIFocusEffectsController *)self->_motionEffectsController currentOffset];
    if (fabs(v5) < 0.05 && (*&self->_flags & 4) != 0)
    {
      [(_UIFocusEffectsController *)self->_motionEffectsController reset];
      [(CADisplayLink *)self->_joystickFocusDirectionDisplayLink invalidate];
      joystickFocusDirectionDisplayLink = self->_joystickFocusDirectionDisplayLink;
      self->_joystickFocusDirectionDisplayLink = 0;
    }
  }

  v7 = [(_UIFocusEventRecognizer *)self gestureForName:9];
  v19 = v7;
  if ((*&self->_flags & 0x10) != 0)
  {
    [(_UIFocusEventRecognizer *)self _handleJoystickRepeatMode:v7];
    v7 = v19;
  }

  [v7 stickPosition];
  v9 = v8;
  v11 = v10;
  v12 = _UIInternalPreferenceUsesDefault(&unk_1ED48AFE8, @"JoystickTiltModeRadius", _UIInternalPreferenceUpdateDouble);
  v13 = *&qword_1ED48AFF0;
  if (v12)
  {
    v13 = 0.6;
  }

  v14 = -1.0;
  v15 = -1.0;
  if (v9 >= -v13)
  {
    v15 = 1.0;
    if (v9 <= v13)
    {
      v15 = (v9 + v13) / (v13 + v13) + (v9 + v13) / (v13 + v13) + -1.0;
    }
  }

  if (v11 <= v13)
  {
    v14 = 1.0;
    if (v13 >= -v11)
    {
      v14 = (v13 - v11) / (v13 + v13) + (v13 - v11) / (v13 + v13) + -1.0;
    }
  }

  if (_UIInternalPreferenceUsesDefault(&unk_1ED48AFD8, @"JoystickLerp", _UIInternalPreferenceUpdateDouble))
  {
    v16 = 0.2;
  }

  else
  {
    v16 = *&qword_1ED48AFE0;
  }

  [(_UIFocusEffectsController *)self->_motionEffectsController currentOffset];
  [(_UIFocusEffectsController *)self->_motionEffectsController updateCurrentOffset:v15 * v16 + (1.0 - v16) * v17, v14 * v16 + (1.0 - v16) * v18];
}

- (CGSize)_momentumReferenceSize
{
  WeakRetained = objc_loadWeakRetained(&self->_owningView);
  _screen = [WeakRetained _screen];

  if (!_screen)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v11 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v11, OS_LOG_TYPE_FAULT, "Unable to get screen from owning view for focus momentum calculations.", buf, 2u);
      }
    }

    else
    {
      v4 = *(__UILogGetCategoryCachedImpl("Assert", &_momentumReferenceSize___s_category) + 8);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v12[0] = 0;
        _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_ERROR, "Unable to get screen from owning view for focus momentum calculations.", v12, 2u);
      }
    }

    _screen = [objc_opt_self() mainScreen];
  }

  [_screen bounds];
  v6 = v5;
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (void)_recordMomentumForPoint:(CGPoint)point reportedVelocity:(CGPoint)velocity
{
  if ((*&self->_flags & 2) == 0)
  {
    y = velocity.y;
    x = velocity.x;
    self->_lastMomentumTouchPoint = point;
    WeakRetained = objc_loadWeakRetained(&self->_owningView);
    [(_UIFocusEventRecognizer *)self _momentumReferenceSize];
    self->_momentumVelocity.x = x / v7;
    self->_momentumVelocity.y = y / v8;
  }
}

- (void)_continueTouchWithMomentum
{
  focusUpdateCountSinceLastContinuousMovementBegan = self->_focusUpdateCountSinceLastContinuousMovementBegan;
  if (focusUpdateCountSinceLastContinuousMovementBegan > 1)
  {
    goto LABEL_7;
  }

  v4 = hypot(self->_momentumVelocity.x, self->_momentumVelocity.y);
  if (fabs(self->_progressAccumulator.dx) >= 1.0 || v4 < 0.5)
  {
    goto LABEL_7;
  }

  if (focusUpdateCountSinceLastContinuousMovementBegan == 1)
  {

    [(_UIFocusEventRecognizer *)self _sendMomentumEndNotificationsAndAnimateRollback:1];
    return;
  }

  v10 = [(_UIFocusEventRecognizer *)self _momentumFocusHeadingForAccumulator:?];
  if (!v10)
  {
LABEL_7:
    v6 = vabdq_f64(self->_lastKnownTouchPoint, *(&self->_lastKnownTouchPoint + self->_numFrames));
    if (vmovn_s64(vcgtq_f64(v6, vdupq_laneq_s64(v6, 1))).u8[0])
    {
      x = self->_momentumVelocity.x;
      y = 0.0;
    }

    else
    {
      y = self->_momentumVelocity.y;
      x = 0.0;
    }

    if (_UIInternalPreferenceUsesDefault(&unk_1ED48AF48, @"FocusMomentumFriction", _UIInternalPreferenceUpdateDouble))
    {
      v9 = 0.99;
    }

    else
    {
      v9 = *&qword_1ED48AF50;
    }

    [(_UIFocusEventRecognizer *)self _beginMomentumImmediatelyWithVelocity:x friction:y, v9];
  }

  else
  {
    v11 = v10;
    _focusMovementSystem = [(_UIFocusEventRecognizer *)self _focusMovementSystem];
    if (_focusMovementSystem)
    {
      v13 = [[_UIFocusMovementRequest alloc] initWithFocusSystem:_focusMovementSystem];
      v14 = [[_UIFocusMovementInfo alloc] initWithHeading:v11 linearHeading:0 isInitial:*&self->_flags & 1 shouldLoadScrollableContainer:1 looping:0 groupFilter:0 inputType:5];
      [(_UIFocusMovementRequest *)v13 setMovementInfo:v14];

      LODWORD(v14) = [(_UIFocusEventRecognizer *)self _attemptToRecognizeContinuousMovementRequest:v13];
      v15 = v14 ^ 1;
    }

    else
    {
      v16 = *(__UILogGetCategoryCachedImpl("UIFocus", &_continueTouchWithMomentum___s_category) + 8);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_188A29000, v16, OS_LOG_TYPE_ERROR, "Focus event recognizer is no longer connected to a focus system. Ignoring movement request.", buf, 2u);
      }

      v15 = 1;
    }

    [(_UIFocusEventRecognizer *)self _sendMomentumEndNotificationsAndAnimateRollback:v15];
  }
}

- (void)_beginMomentumImmediatelyWithVelocity:(CGPoint)velocity friction:(double)friction
{
  self->_momentumVelocity = velocity;
  self->_momentumFriction = friction;
  *&self->_flags |= 2u;
  momentumDisplayLink = self->_momentumDisplayLink;
  if (momentumDisplayLink)
  {
    [(CADisplayLink *)momentumDisplayLink invalidate];
    v6 = self->_momentumDisplayLink;
    self->_momentumDisplayLink = 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_owningView);
  _screen = [WeakRetained _screen];
  v9 = [_screen displayLinkWithTarget:self selector:sel__momentumHeartbeat_];
  v10 = self->_momentumDisplayLink;
  self->_momentumDisplayLink = v9;

  v11 = self->_momentumDisplayLink;
  mainRunLoop = [MEMORY[0x1E695DFD0] mainRunLoop];
  [(CADisplayLink *)v11 addToRunLoop:mainRunLoop forMode:*MEMORY[0x1E695DA28]];
}

- (unint64_t)_momentumFocusHeadingForAccumulator:(CGVector)accumulator
{
  v3 = fabs(accumulator.dx);
  v4 = fabs(accumulator.dy);
  v5 = 2;
  if (accumulator.dy <= 0.0)
  {
    v5 = 1;
  }

  if (v4 < 0.5)
  {
    v5 = 0;
  }

  v6 = 4;
  if (accumulator.dx > 0.0)
  {
    v6 = 8;
  }

  if (v3 >= 0.5)
  {
    return v6;
  }

  else
  {
    return v5;
  }
}

- (void)_momentumHeartbeat:(id)heartbeat
{
  heartbeatCopy = heartbeat;
  WeakRetained = objc_loadWeakRetained(&self->_owningView);
  _screen = [WeakRetained _screen];
  if (!_screen)
  {

    goto LABEL_13;
  }

  v6 = _screen;
  v7 = objc_loadWeakRetained(&self->_owningView);
  _window = [v7 _window];
  windowScene = [_window windowScene];

  if (!windowScene)
  {
LABEL_13:
    [(CADisplayLink *)self->_momentumDisplayLink invalidate];
    momentumDisplayLink = self->_momentumDisplayLink;
    self->_momentumDisplayLink = 0;

    goto LABEL_14;
  }

  x = self->_lastMomentumTouchPoint.x;
  y = self->_lastMomentumTouchPoint.y;
  [heartbeatCopy duration];
  v13 = v12;
  v15 = self->_momentumVelocity.x;
  v14 = self->_momentumVelocity.y;
  if (self->_inputType != 7)
  {
    v16 = pow(self->_momentumFriction, v12 * 1000.0);
    v15 = v15 * v16;
    v14 = v14 * v16;
  }

  v17 = x + v13 * v15;
  v18 = y + v13 * v14;
  [(_UIFocusEventRecognizer *)self _momentumReferenceSize];
  v20 = v15 * v19;
  v22 = v14 * v21;
  v23 = +[UIDevice currentDevice];
  _remoteTouchSurfaceType = [v23 _remoteTouchSurfaceType];

  [(_UIFocusEventRecognizer *)self _updatePanLocation:_remoteTouchSurfaceType reportedVelocity:v17 remoteTouchSurfaceType:v18, v20, v22];
  self->_lastMomentumTouchPoint.x = v17;
  self->_lastMomentumTouchPoint.y = v18;
  v25 = fabs(v15);
  self->_momentumVelocity.x = v15;
  self->_momentumVelocity.y = v14;
  v26 = _UIInternalPreferenceUsesDefault(&_UIInternalPreference_FocusMomentumCutoff, @"FocusMomentumCutoff", _UIInternalPreferenceUpdateDouble);
  v27 = *&qword_1EA95E3B8;
  if (v26)
  {
    v27 = 1.0;
  }

  if (v25 < v27)
  {
    v28 = fabs(v14);
    v29 = _UIInternalPreferenceUsesDefault(&_UIInternalPreference_FocusMomentumCutoff, @"FocusMomentumCutoff", _UIInternalPreferenceUpdateDouble);
    v30 = *&qword_1EA95E3B8;
    if (v29)
    {
      v30 = 1.0;
    }

    if (v28 < v30)
    {
      [(_UIFocusEventRecognizer *)self _stopMomentumAndPerformRollback];
    }
  }

LABEL_14:
}

- (BOOL)_shouldPerformFocusUpdateWithCurrentMomentumStatus
{
  v3 = _UIInternalPreferenceUsesDefault(&_UIInternalPreference_FocusMomentumCutoffStraggler, @"FocusMomentumCutoffStraggler", _UIInternalPreferenceUpdateDouble);
  v4 = *&qword_1EA95E3C8;
  if (v3)
  {
    v4 = 1.0;
  }

  return (*&self->_flags & 2) == 0 || fabs(self->_momentumVelocity.x) > v4 || fabs(self->_momentumVelocity.y) > v4;
}

- (void)_stopMomentumAndPerformRollback
{
  [(CADisplayLink *)self->_momentumDisplayLink invalidate];
  momentumDisplayLink = self->_momentumDisplayLink;
  self->_momentumDisplayLink = 0;

  [(_UIFocusEventRecognizer *)self _sendMomentumEndNotificationsAndAnimateRollback:1];
}

- (void)_sendMomentumEndNotificationsAndAnimateRollback:(BOOL)rollback
{
  if (rollback)
  {
    [(_UIFocusEffectsController *)self->_motionEffectsController startRollbackAnimation];
    [(_UIFocusEffectsController *)self->_motionEffectsController resetDisplayOffsetAccumulationFactor];
  }

  *&self->_flags &= ~2u;
}

- (void)_sendGestureBeginNotification
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"_UIFocusEngineGestureDidBeginNotification" object:self userInfo:0];
}

- (UIView)owningView
{
  WeakRetained = objc_loadWeakRetained(&self->_owningView);

  return WeakRetained;
}

- (_UIFocusEventRecognizerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end