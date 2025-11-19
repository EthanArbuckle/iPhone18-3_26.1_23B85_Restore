@interface _UIKeyboardTextSelectionInteraction
+ (void)attachToExistingRecogniser:(id)a3 owner:(id)a4 forType:(int64_t)a5;
- (BOOL)forceTouchGestureRecognizerShouldBegin:(id)a3;
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (BOOL)isPlacedCarefully;
- (CGPoint)acceleratedTranslation:(CGPoint)a3 velocity:(CGPoint)a4 isActive:(BOOL)a5;
- (CGPoint)boundedTranslation:(CGPoint)a3;
- (CGPoint)cursorLocationForTranslation:(CGPoint)a3;
- (_UIKeyboardTextSelectionInteraction)initWithView:(id)a3 owner:(id)a4 forTypes:(int64_t)a5;
- (double)additionalPressDurationForTypingCadence:(id)a3;
- (id)gestures;
- (id)selectionController;
- (int64_t)layoutDirectionFromFlickDirection:(unint64_t)a3;
- (void)_beginLongForcePressTimerForGesture:(id)a3;
- (void)_cancelLongForcePressTimer;
- (void)_cancelTouchPadTimer;
- (void)_clearHiding;
- (void)_clearTouchPadCallback;
- (void)_configureLongPressAddedTouchRecognizer:(id)a3;
- (void)_configureLongPressRecognizer:(id)a3;
- (void)_configureOneFingerForcePressRecognizer:(id)a3;
- (void)_configureTwoFingerPanGestureRecognizer:(id)a3;
- (void)_configureTwoFingerTapGestureRecognizer:(id)a3;
- (void)_didEndIndirectSelectionGesture:(id)a3;
- (void)_gestureRecognizerFailed:(id)a3;
- (void)_granularityExpandingGestureWithTimeInterval:(double)a3 timeGranularity:(double)a4 isMidPan:(BOOL)a5;
- (void)_logTapCounts:(id)a3;
- (void)_longForcePressDetected:(id)a3;
- (void)_prepareForGesture;
- (void)_startTouchPadTimerWithCompletion:(id)a3;
- (void)_tidyUpGesture;
- (void)_willBeginIndirectSelectionGesture:(id)a3;
- (void)beginCursorManipulationFromRect:(CGRect)a3;
- (void)beginIndirectBlockPanWithTranslation:(CGPoint)a3 executionContext:(id)a4;
- (void)beginLongPressWithTranslation:(CGPoint)a3 touchCount:(unint64_t)a4 executionContext:(id)a5;
- (void)beginTwoFingerCursorPanWithTranslation:(CGPoint)a3 executionContext:(id)a4;
- (void)beginTwoFingerPanWithTranslation:(CGPoint)a3 isShiftKeyBeingHeld:(BOOL)a4 executionContext:(id)a5;
- (void)clearKeyboardTouchesForGesture:(id)a3;
- (void)dealloc;
- (void)detach;
- (void)disableEnclosingScrollViewScrolling;
- (void)endIndirectBlockPanWithExecutionContext:(id)a3;
- (void)endTwoFingerPanWithExecutionContext:(id)a3;
- (void)finishLongPressWithExecutionContext:(id)a3;
- (void)forwardIndirectGestureWithType:(int64_t)a3 state:(int64_t)a4 translation:(CGPoint)a5 flickDirection:(unint64_t)a6 touchCount:(unint64_t)a7;
- (void)gestureRecognizerShouldBeginResponse:(id)a3;
- (void)handleRemoteIndirectGestureWithState:(id)a3;
- (void)handleTwoFingerFlickInDirection:(int64_t)a3 executionContext:(id)a4;
- (void)hideInsideRecogniser:(id)a3;
- (void)hideRecogniser:(id)a3 forKey:(id)a4;
- (void)indirectBlockPanGestureWithState:(int64_t)a3 withTranslation:(CGPoint)a4;
- (void)indirectCursorPanGestureWithState:(int64_t)a3 withTranslation:(CGPoint)a4 withFlickDirection:(unint64_t)a5;
- (void)indirectPanGestureWithState:(int64_t)a3 withTranslation:(CGPoint)a4 withFlickDirection:(unint64_t)a5 isShiftKeyBeingHeld:(BOOL)a6;
- (void)longPressGestureWithState:(int64_t)a3 withTranslation:(CGPoint)a4 touchCount:(unint64_t)a5;
- (void)oneFingerForcePan:(id)a3;
- (void)oneFingerForcePress:(id)a3;
- (void)panningGesture:(id)a3;
- (void)panningGestureAddedTouch:(id)a3;
- (void)registerOwner:(id)a3;
- (void)removeTemporaryGesture;
- (void)twoFingerTap:(id)a3;
- (void)updateIndirectBlockPanWithTranslation:(CGPoint)a3 executionContext:(id)a4;
- (void)updateLongPressWithTranslation:(CGPoint)a3 executionContext:(id)a4;
- (void)updateTwoFingerPanWithTranslation:(CGPoint)a3 executionContext:(id)a4;
@end

@implementation _UIKeyboardTextSelectionInteraction

- (void)_cancelTouchPadTimer
{
  [(NSTimer *)self->_touchPadTimer invalidate];
  touchPadTimer = self->_touchPadTimer;
  self->_touchPadTimer = 0;
}

- (void)detach
{
  [(_UIKeyboardTextSelectionGestureController *)self->_owner removeDeallocationHandler:self->_deallocToken];
  owner = self->_owner;
  self->_owner = 0;

  [(_UIKeyboardTextSelectionInteraction *)self _clearHiding];
}

- (void)_clearHiding
{
  [(NSMapTable *)self->_weakMap removeAllObjects];
  weakMap = self->_weakMap;
  self->_weakMap = 0;
}

- (void)dealloc
{
  [(_UIKeyboardTextSelectionInteraction *)self detach];
  [(_UIKeyboardTextSelectionInteraction *)self removeTemporaryGesture];
  v3.receiver = self;
  v3.super_class = _UIKeyboardTextSelectionInteraction;
  [(_UIKeyboardTextSelectionInteraction *)&v3 dealloc];
}

- (void)removeTemporaryGesture
{
  addedTouchRecognizer = self->_addedTouchRecognizer;
  if (addedTouchRecognizer)
  {
    v4 = [(UIGestureRecognizer *)addedTouchRecognizer view];
    [v4 removeGestureRecognizer:self->_addedTouchRecognizer];

    v5 = self->_addedTouchRecognizer;
    self->_addedTouchRecognizer = 0;
  }

  activePress = self->_activePress;
  if (activePress)
  {
    v7 = [(UIGestureRecognizer *)activePress view];
    [v7 removeGestureRecognizer:self->_activePress];

    v8 = self->_activePress;
    self->_activePress = 0;
  }

  [(_UIKeyboardTextSelectionInteraction *)self _cancelTouchPadTimer];
}

- (void)hideRecogniser:(id)a3 forKey:(id)a4
{
  v7 = a3;
  v8 = a4;
  weakMap = self->_weakMap;
  if (!weakMap)
  {
    v10 = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
    v11 = self->_weakMap;
    self->_weakMap = v10;

    weakMap = self->_weakMap;
  }

  [(NSMapTable *)weakMap setObject:v7 forKey:v8];
  v13.receiver = self;
  v13.super_class = _UIKeyboardTextSelectionInteraction;
  v12 = [(UITextInteraction *)&v13 gestureMap];
  [v12 removeObjectForKey:v8];

  objc_setAssociatedObject(v7, a2, self, 0x301);
}

- (void)hideInsideRecogniser:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v17.receiver = self;
  v17.super_class = _UIKeyboardTextSelectionInteraction;
  [(UITextInteraction *)&v17 gestureMap];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v16 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v14 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v13 + 1) + 8 * v9);
      v11 = [v5 objectForKey:v10];

      if (v11 == v4)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v13 objects:v18 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v12 = v10;

    if (v12)
    {
      goto LABEL_12;
    }
  }

  else
  {
LABEL_9:
  }

  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Didn't find gesture %@ in cluster %@", v4, self, v13}];
  v12 = 0;
LABEL_12:
  [(_UIKeyboardTextSelectionInteraction *)self hideRecogniser:v4 forKey:v12];
}

- (void)registerOwner:(id)a3
{
  objc_storeStrong(&self->_owner, a3);
  v5 = a3;
  owner = self->_owner;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __53___UIKeyboardTextSelectionInteraction_registerOwner___block_invoke;
  v9[3] = &__block_descriptor_40_e5_v8__0lu32l8;
  v9[4] = self;
  v7 = [(_UIKeyboardTextSelectionGestureController *)owner addDeallocationHandler:v9];
  deallocToken = self->_deallocToken;
  self->_deallocToken = v7;
}

- (id)gestures
{
  v8.receiver = self;
  v8.super_class = _UIKeyboardTextSelectionInteraction;
  v3 = [(UITextInteraction *)&v8 gestureMap];
  v4 = v3;
  if (self->_weakMap)
  {
    v5 = [v3 mutableCopy];
    v6 = [(NSMapTable *)self->_weakMap dictionaryRepresentation];
    [v5 addEntriesFromDictionary:v6];
  }

  else
  {
    v5 = v3;
  }

  return v5;
}

+ (void)attachToExistingRecogniser:(id)a3 owner:(id)a4 forType:(int64_t)a5
{
  v11 = a3;
  v8 = a4;
  v9 = objc_alloc_init(a1);
  v10 = v9;
  if (v9)
  {
    [v9 registerOwner:v8];
    switch(a5)
    {
      case 4:
        [v10 _configureTwoFingerPanGestureRecognizer:v11];
        break;
      case 2:
        [v10 _configureTwoFingerTapGestureRecognizer:v11];
        break;
      case 1:
        [v10 _configureOneFingerForcePressRecognizer:v11];
        break;
      default:
        [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"Unknown type %li", a5}];
        break;
    }

    [v10 addGestureRecognizer:v11 withName:@"owner"];
    [v10 hideInsideRecogniser:v11];
  }
}

- (_UIKeyboardTextSelectionInteraction)initWithView:(id)a3 owner:(id)a4 forTypes:(int64_t)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v23.receiver = self;
  v23.super_class = _UIKeyboardTextSelectionInteraction;
  v10 = [(UITextInteraction *)&v23 init];
  v11 = v10;
  if (v10)
  {
    [(_UIKeyboardTextSelectionInteraction *)v10 registerOwner:v9];
    if ((v5 & 8) != 0)
    {
      v12 = objc_alloc_init(_UIPanOrFlickGestureRecognizer);
      [(UIGestureRecognizer *)v12 setName:@"com.apple.UIKit.textSpacePress"];
      [(_UIKeyboardTextSelectionInteraction *)v11 _configureLongPressRecognizer:v12];
      [(UITextInteraction *)v11 addGestureRecognizer:v12 withName:@"_UIKeyboardTextSelectionGestureLongPress"];
      if ((v5 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v12 = 0;
      if ((v5 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    v13 = objc_alloc_init(_UITextSelectionForceGesture);
    [(_UIKeyboardTextSelectionInteraction *)v11 _configureOneFingerForcePressRecognizer:v13];
    if (_isViewKeyboardLayoutPresent(v8))
    {
      GestureKeyboardFlag = _getGestureKeyboardFlag(v13);
      _setGestureKeyboardFlag(v13, GestureKeyboardFlag | 0x10);
    }

    [(_UITextSelectionForceGesture *)v13 setShouldFailWithoutForce:[(_UIKeyboardTextSelectionGestureController *)v11->_owner oneFingerForcePressShouldFailWithoutForce]];
    if ([(_UITextSelectionForceGesture *)v13 shouldFailWithoutForce])
    {
      v15 = [(UITextInteraction *)v11 recognizerForName:0x1EFBA76D0];
      v16 = v15;
      if (v15)
      {
        [v15 requireGestureRecognizerToFail:v13];
      }
    }

    [(UIGestureRecognizer *)v13 setAllowedTouchTypes:&unk_1EFE2CE38];
    [(UIGestureRecognizer *)v13 setCancelsTouchesInView:[(_UIKeyboardTextSelectionGestureController *)v11->_owner oneFingerForcePressShouldCancelTouchesInView]];
    [(UITextInteraction *)v11 addGestureRecognizer:v13 withName:@"_UIKeyboardTextSelectionGestureForcePress"];
    if (_AXSForceTouchEnabled())
    {
      v17 = +[UIDevice currentDevice];
      v18 = [v17 _supportsForceTouch];

      if (v18)
      {
        [(UIGestureRecognizer *)v12 requireGestureRecognizerToFail:v13];
      }
    }

LABEL_16:
    if ((v5 & 2) != 0)
    {
      v19 = objc_alloc_init(UITextTapRecognizer);
      [(_UIKeyboardTextSelectionInteraction *)v11 _configureTwoFingerTapGestureRecognizer:v19];
      [(UITextInteraction *)v11 addGestureRecognizer:v19 withName:@"_UIKeyboardTextSelectionGestureTwoFingerTap"];

      if ((v5 & 4) == 0)
      {
LABEL_23:

        goto LABEL_24;
      }
    }

    else if ((v5 & 4) == 0)
    {
      goto LABEL_23;
    }

    v20 = objc_alloc_init(_UIPanOrFlickGestureRecognizer);
    [(UIGestureRecognizer *)v20 setName:@"com.apple.UIKit.textPanOrFlick"];
    [(_UIKeyboardTextSelectionInteraction *)v11 _configureTwoFingerPanGestureRecognizer:v20];
    if (_isViewKeyboardLayoutPresent(v8))
    {
      [(UIPanGestureRecognizer *)v20 _setHysteresis:30.0];
    }

    v21 = [(_UIKeyboardTextSelectionInteraction *)v11 owner];
    [v21 enableEnclosingScrollViewNestedPinching];

    [(UITextInteraction *)v11 addGestureRecognizer:v20 withName:@"_UIKeyboardTextSelectionGestureTwoFingerPan"];
    goto LABEL_23;
  }

LABEL_24:

  return v11;
}

- (void)_configureOneFingerForcePressRecognizer:(id)a3
{
  v5 = a3;
  _setGestureKeyboardFlag(v5, 1);
  v4 = objc_alloc_init(_UILinearForceLevelClassifier);
  [v5 _setForceLevelClassifier:v4];

  [v5 setRequiredPreviewForceState:2];
  [v5 addTarget:self action:sel_oneFingerForcePan_];
  [(UIGestureRecognizer *)v5 _addForceTarget:sel_oneFingerForcePress_ action:?];
  [(_UIKeyboardTextSelectionGestureController *)self->_owner oneFingerForcePressMinimumDuration];
  [v5 setMinimumPressDuration:?];
  [(_UIKeyboardTextSelectionGestureController *)self->_owner oneFingerForcePressAllowableMovement];
  [v5 setAllowableMovement:?];
}

- (void)_configureTwoFingerPanGestureRecognizer:(id)a3
{
  v7 = a3;
  v4 = UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL;
  if (v4 == 1)
  {
    v5 = 2;
  }

  else
  {
    v5 = 18;
  }

  _setGestureKeyboardFlag(v7, v5);
  [v7 addTarget:self action:sel_panningGesture_];
  [v7 setDelaysTouchesEnded:0];
  [v7 setMinimumNumberOfTouches:2];
  [v7 setMaximumNumberOfTouches:2];
  [v7 setAllowableMovement:16.0];
  [v7 _setFailsPastHysteresisWithoutMinTouches:1];
  [v7 setAllowedFlickDirections:15];
  [v7 setMaximumFlickDuration:0.16];
  [v7 setMinimumFlickDistance:5.0];
  [v7 setResponsivenessDelay:0.13];
  if (v4 == 1)
  {
    v6 = +[_UITextSelectionSettings sharedInstance];
    [v6 allowableSeparation];
    [v7 _setAllowableSeparation:?];

    [v7 setMinimumPressDuration:1.0];
    [v7 _setAllowableTouchTimeSeparation:0.06];
    [v7 _setRequiresImmediateMultipleTouches:1];
  }

  else
  {
    [v7 _setAllowableTouchTimeSeparation:0.5];
    [v7 setMinimumPressDuration:1.0];
  }
}

- (void)_configureTwoFingerTapGestureRecognizer:(id)a3
{
  v5 = a3;
  _setGestureKeyboardFlag(v5, 2);
  [v5 addTarget:self action:sel_twoFingerTap_];
  [v5 setAllowableMovement:60.0];
  if ((UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v4 = +[_UITextSelectionSettings sharedInstance];
    [v4 allowableSeparation];
    [v5 _setAllowableSeparation:?];
  }

  [v5 setNumberOfTapsRequired:1];
  [v5 setNumberOfTouchesRequired:2];
  [v5 _setAllowableTouchTimeSeparation:0.06];
  [v5 setMaximumTapDuration:0.13];
}

- (void)_configureLongPressAddedTouchRecognizer:(id)a3
{
  v4 = a3;
  _setGestureKeyboardFlag(v4, 8);
  [v4 addTarget:self action:sel_panningGestureAddedTouch_];
}

- (void)_configureLongPressRecognizer:(id)a3
{
  v4 = a3;
  _setGestureKeyboardFlag(v4, 100);
  [v4 addTarget:self action:sel_panningGesture_];
  [v4 setLongPressOnly:1];
  [v4 setDelaysTouchesEnded:0];
  [v4 setMinimumNumberOfTouches:1];
  [v4 setMaximumNumberOfTouches:1];
  [v4 setAllowableMovement:16.0];
  [v4 _setFailsPastHysteresisWithoutMinTouches:1];
  [v4 setAllowedFlickDirections:0];
  [v4 setMinimumPressDuration:0.375];
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = _UIKeyboardTextSelectionInteraction;
  v5 = [(UITextInteraction *)&v15 gestureRecognizerShouldBegin:v4];
  v6 = [(_UIKeyboardTextSelectionInteraction *)self owner];
  v7 = [(_UIKeyboardTextSelectionInteraction *)self owner];
  v8 = [v7 delegate];

  if (v5)
  {
    v9 = [v4 view];
    isViewKeyboardLayoutPresent = _isViewKeyboardLayoutPresent(v9);

    if (isViewKeyboardLayoutPresent)
    {
      if (objc_opt_respondsToSelector() & 1) != 0 && ([v8 transitionInProgress])
      {
LABEL_15:
        LOBYTE(v5) = 0;
        goto LABEL_17;
      }
    }

    else if (objc_opt_respondsToSelector())
    {
      v11 = [v4 view];
      [v4 locationInView:v11];
      v12 = [v8 shouldAllowSelectionGestures:1 atPoint:1 toBegin:?];

      if (!v12)
      {
        goto LABEL_15;
      }
    }

    if ((_getGestureKeyboardFlag(v4) & 0x40) != 0 && !IsGestureWithinSpecialRegion(v4) || (_getGestureKeyboardFlag(v4) & 8) != 0 && ![v6 isPanning])
    {
      goto LABEL_15;
    }

    if (_getGestureKeyboardFlag(v4) & 2) != 0 && (objc_opt_respondsToSelector())
    {
      v13 = [v4 view];
      LOBYTE(v5) = [v8 shouldAllowTwoFingerSelectionGestureOnView:v13];
    }

    else
    {
      LOBYTE(v5) = 1;
    }
  }

LABEL_17:

  return v5;
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(_UIKeyboardTextSelectionInteraction *)self owner];
  v9 = [v8 delegate];

  v10 = [v6 view];
  isViewKeyboardLayoutPresent = _isViewKeyboardLayoutPresent(v10);

  if (!isViewKeyboardLayoutPresent)
  {
    goto LABEL_26;
  }

  v12 = [v6 requiredPreviewForceState];
  v13 = objc_opt_respondsToSelector();
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (!v12 && (v13 & 1) != 0 && (isKindOfClass & 1) != 0)
  {
    if (v7)
    {
      [v7 timestamp];
      v16 = v15;
    }

    else
    {
      v17 = [MEMORY[0x1E696AE30] processInfo];
      [v17 systemUptime];
      v16 = v18;
    }

    [v9 timestampOfLastTouchesEnded];
    if (v19 + 0.5 >= v16)
    {
      goto LABEL_22;
    }
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && ((v20 = v12 != 0, v7) ? (v21 = v7) : (v21 = v6), [v6 view], v22 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v21, "locationInView:", v22), v24 = v23, v26 = v25, v22, !objc_msgSend(v9, "shouldAllowSelectionGestures:atPoint:toBegin:", v20, v7 == 0, v24, v26)))
  {
LABEL_22:
    v34 = 0;
  }

  else
  {
LABEL_26:
    if (_getGestureKeyboardFlag(v6) & 0x10) != 0 && (v7 ? (v27 = v7) : (v27 = v6), ([v6 view], v28 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v27, "locationInView:", v28), v30 = v29, v32 = v31, v28, objc_msgSend(v6, "view"), v33 = objc_claimAutoreleasedReturnValue(), LODWORD(v28) = IsTouchPointWithinSpecialRegion(v33, v30, v32), v33, v28) && (objc_opt_class(), (objc_opt_isKindOfClass())))
    {
      v34 = 1;
      [v6 setShouldFailWithoutForce:1];
    }

    else
    {
      v34 = 1;
    }
  }

  return v34;
}

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(_UIKeyboardTextSelectionInteraction *)self owner];
  v9 = [v8 delegate];
  v10 = [v9 textSelectionController];

  if (v10)
  {
    GestureKeyboardFlag = _getGestureKeyboardFlag(v6);
    if (GestureKeyboardFlag & 2 | _getGestureKeyboardFlag(v6) & 1)
    {
      v14 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
      v15 = [v14 textInputView];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = [v15 _scroller];
        v17 = v16;
        if (v16)
        {
          v18 = [v16 panGestureRecognizer];
          v12 = v18 == v7;
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }

    v19 = _getGestureKeyboardFlag(v6);
    v13 = ((_getGestureKeyboardFlag(v7) ^ ~v19) & 0xC) == 0 || v12;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)gestureRecognizerShouldBeginResponse:(id)a3
{
  v4 = a3;
  if ([(_UIKeyboardTextSelectionInteraction *)self gestureRecognizerShouldBegin:?])
  {
    [(_UIKeyboardTextSelectionInteraction *)self panningGesture:v4];
  }
}

- (double)additionalPressDurationForTypingCadence:(id)a3
{
  v4 = a3;
  v5 = 0.0;
  if ((_getGestureKeyboardFlag(v4) & 4) != 0)
  {
    v6 = [(_UIKeyboardTextSelectionInteraction *)self owner];
    v7 = [v6 delegate];

    if (objc_opt_respondsToSelector())
    {
      v8 = [MEMORY[0x1E696AE30] processInfo];
      [v8 systemUptime];
      v10 = v9;

      [v7 timestampOfLastTouchesEnded];
      v12 = v11;
      [v4 minimumPressDuration];
      if (v12 + v13 >= v10)
      {
        v5 = 0.4;
      }

      else
      {
        v5 = 0.0;
      }
    }
  }

  return v5;
}

- (void)_gestureRecognizerFailed:(id)a3
{
  v11 = a3;
  v4 = [(_UIKeyboardTextSelectionInteraction *)self owner];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v4 isPanning] && (_getGestureKeyboardFlag(v11) & 2) != 0 && (objc_msgSend(v4, "isSpacePan") & 1) == 0)
  {
    v5 = [v4 selectionController];
    v6 = v11;
    [(_UIKeyboardTextSelectionInteraction *)self _didEndIndirectSelectionGesture:v6];
    if ([v4 didFloatCursor])
    {
      [v5 endFloatingCursor];
    }

    [v4 setIsLongPressing:0];
    [v4 setIsPanning:0];
    [v4 setIsSpacePan:0];
    [v4 setDidFloatCursor:0];
    v7 = [v4 activeGestures];
    [v7 removeObject:v6];

    [v5 resetCursorPosition];
  }

  if ([v4 panGestureState] && (_getGestureKeyboardFlag(v11) & 1) != 0)
  {
    v8 = [v4 selectionController];
    v9 = v11;
    if ([v4 panGestureState] >= 1)
    {
      [(_UIKeyboardTextSelectionInteraction *)self oneFingerForcePan:v9];
    }

    [v4 setPanGestureState:0];
    [v4 setPreviousForcePressCount:0];
    [v4 setDidFloatCursor:0];
    v10 = [v4 activeGestures];
    [v10 removeObject:v9];

    [v8 resetCursorPosition];
  }
}

- (id)selectionController
{
  v2 = [(_UIKeyboardTextSelectionInteraction *)self owner];
  v3 = [v2 selectionController];

  return v3;
}

- (void)_didEndIndirectSelectionGesture:(id)a3
{
  v4 = [a3 view];
  v5 = _getViewKeyboardLayout(v4);
  [v5 didEndIndirectSelectionGesture];

  [(_UIKeyboardTextSelectionInteraction *)self removeTemporaryGesture];
}

- (CGPoint)acceleratedTranslation:(CGPoint)a3 velocity:(CGPoint)a4 isActive:(BOOL)a5
{
  v5 = a5;
  y = a3.y;
  x = a3.x;
  v8 = [(_UIKeyboardTextSelectionInteraction *)self owner:a3.x];
  v9 = +[_UICubicPolyTangent keyboardTrackpadCurve];
  [v8 lastPanTranslation];
  v11 = x - v10;
  [v8 lastPanTranslation];
  v13 = y - v12;
  v14 = 0.0;
  if (v5)
  {
    [v9 piecewiseCubicAcceleratedSpeed:sqrt(v11 * v11 + v13 * v13)];
    v14 = v15;
  }

  [v8 accumulatedAcceleration];
  v17 = v11 * v14 + v16;
  v19 = v13 * v14 + v18;
  [v8 setAccumulatedAcceleration:{v17, v19}];

  v20 = x + v17;
  v21 = y + v19;
  result.y = v21;
  result.x = v20;
  return result;
}

- (BOOL)forceTouchGestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = [(_UIKeyboardTextSelectionInteraction *)self owner];
  v6 = [v5 delegate];

  if (![v4 requiredPreviewForceState])
  {
    goto LABEL_7;
  }

  v7 = [v4 view];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    goto LABEL_7;
  }

  if (objc_opt_respondsToSelector())
  {
    v9 = [MEMORY[0x1E696AE30] processInfo];
    [v9 systemUptime];
    v11 = v10;

    [v6 timestampOfLastTouchesEnded];
    v13 = v12 + 0.4;
    [v4 minimumPressDuration];
    if (v13 + v14 >= v11)
    {
      v16 = 0;
      goto LABEL_8;
    }
  }

  if (objc_opt_respondsToSelector())
  {
    v15 = [v4 view];
    [v4 locationInView:v15];
    v16 = [v6 shouldAllowSelectionGestures:1 atPoint:1 toBegin:?];
  }

  else
  {
LABEL_7:
    v16 = 1;
  }

LABEL_8:

  return v16;
}

- (CGPoint)boundedTranslation:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  if (!+[UIKeyboard isInputSystemUI])
  {
    v6 = [(_UIKeyboardTextSelectionInteraction *)self owner];
    v7 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
    [v6 cursorLocationBase];
    [v7 boundedDeltaForTranslation:x cursorLocationBase:{y, v8, v9}];
    v11 = v10;
    v13 = v12;

    [v6 accumulatedBounding];
    if (v14 <= 0.0)
    {
      v16 = v11;
      if (v11 < v14 || (v16 = v14, v11 <= 0.0))
      {
LABEL_9:
        if (v15 <= 0.0)
        {
          v17 = v13;
          if (v13 < v15)
          {
            goto LABEL_16;
          }

          v17 = v15;
          if (v13 <= 0.0)
          {
            goto LABEL_16;
          }
        }

        else
        {
          v17 = v13;
          if (v13 > v15)
          {
            goto LABEL_16;
          }

          v17 = v15;
          if (v13 >= 0.0)
          {
            goto LABEL_16;
          }
        }

        v17 = v13 + v15;
LABEL_16:
        [v6 setAccumulatedBounding:{v16, v17}];
        x = x + v16;
        y = y + v17;

        goto LABEL_17;
      }
    }

    else
    {
      v16 = v11;
      if (v11 > v14)
      {
        goto LABEL_9;
      }

      v16 = v14;
      if (v11 >= 0.0)
      {
        goto LABEL_9;
      }
    }

    v16 = v11 + v14;
    goto LABEL_9;
  }

LABEL_17:
  v18 = x;
  v19 = y;
  result.y = v19;
  result.x = v18;
  return result;
}

- (void)_willBeginIndirectSelectionGesture:(id)a3
{
  v10 = a3;
  v4 = [v10 view];
  v5 = _getViewKeyboardLayout(v4);

  if (v5)
  {
    v6 = [(UITextInteraction *)self recognizerForName:@"_UIKeyboardTextSelectionGestureLongPress"];
    if (v6 == v10)
    {
    }

    else
    {
      v7 = [(UITextInteraction *)self recognizerForName:@"_UIKeyboardTextSelectionGestureForcePress"];

      if (v7 != v10)
      {
LABEL_7:
        [v5 willBeginIndirectSelectionGesture];
        goto LABEL_8;
      }
    }

    v8 = [(_UIKeyboardTextSelectionInteraction *)self owner];
    v9 = [v8 feedbackBehaviour];
    [v9 transitionToState:@"preview" ended:1];

    goto LABEL_7;
  }

LABEL_8:
}

- (void)_prepareForGesture
{
  v5 = [(_UIKeyboardTextSelectionInteraction *)self owner];
  v2 = [v5 feedbackBehaviour];
  v3 = [v2 isActive];

  if ((v3 & 1) == 0)
  {
    v4 = [v5 feedbackBehaviour];
    [v4 activateWithCompletionBlock:0];
  }
}

- (void)_tidyUpGesture
{
  v5 = [(_UIKeyboardTextSelectionInteraction *)self owner];
  v2 = [v5 feedbackBehaviour];
  v3 = [v2 isActive];

  if (v3)
  {
    v4 = [v5 feedbackBehaviour];
    [v4 deactivate];
  }
}

- (BOOL)isPlacedCarefully
{
  v2 = [(_UIKeyboardTextSelectionInteraction *)self owner];
  v3 = [v2 weightedPoint];
  v4 = [v3 isPlacedCarefully];

  return v4;
}

- (void)indirectCursorPanGestureWithState:(int64_t)a3 withTranslation:(CGPoint)a4 withFlickDirection:(unint64_t)a5
{
  y = a4.y;
  x = a4.x;
  if (qword_1ED498F00 != -1)
  {
    dispatch_once(&qword_1ED498F00, &__block_literal_global_418);
  }

  v10 = [(_UIKeyboardTextSelectionInteraction *)self owner];
  v11 = [v10 delegate];
  v12 = [v11 taskQueue];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __108___UIKeyboardTextSelectionInteraction_indirectCursorPanGestureWithState_withTranslation_withFlickDirection___block_invoke_3;
  v13[3] = &unk_1E7118C40;
  v13[4] = self;
  v13[5] = a3;
  *&v13[6] = x;
  *&v13[7] = y;
  v13[8] = a5;
  [v12 addTask:v13 breadcrumb:_MergedGlobals_13_3];
}

- (void)indirectBlockPanGestureWithState:(int64_t)a3 withTranslation:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  if (qword_1ED498F10 != -1)
  {
    dispatch_once(&qword_1ED498F10, &__block_literal_global_70_0);
  }

  v8 = [(_UIKeyboardTextSelectionInteraction *)self owner];
  v9 = [v8 delegate];
  v10 = [v9 taskQueue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __88___UIKeyboardTextSelectionInteraction_indirectBlockPanGestureWithState_withTranslation___block_invoke_3;
  v11[3] = &unk_1E7116E48;
  v11[4] = self;
  v11[5] = a3;
  *&v11[6] = x;
  *&v11[7] = y;
  [v10 addTask:v11 breadcrumb:qword_1ED498F08];
}

- (void)beginIndirectBlockPanWithTranslation:(CGPoint)a3 executionContext:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];

  if (v8)
  {
    v9 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
    [v9 caretRectForCursorPosition];
    [(_UIKeyboardTextSelectionInteraction *)self beginCursorManipulationFromRect:?];

    [(_UIKeyboardTextSelectionInteraction *)self cursorLocationForTranslation:x, y];
    v11 = v10;
    v13 = v12;
    v14 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
    [v14 beginFloatingCursorAtPoint:{v11, v13}];

    v15 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
    v16 = [(_UIKeyboardTextSelectionInteraction *)self owner];
    v17 = [v16 previousRepeatedGranularity];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __93___UIKeyboardTextSelectionInteraction_beginIndirectBlockPanWithTranslation_executionContext___block_invoke;
    v19[3] = &unk_1E70FD058;
    v19[4] = self;
    v18 = [v7 childWithContinuation:v19];
    [v15 selectTextWithGranularity:v17 atPoint:v18 executionContext:{v11, v13}];
  }

  else
  {
    [v7 returnExecutionToParent];
  }
}

- (void)updateIndirectBlockPanWithTranslation:(CGPoint)a3 executionContext:(id)a4
{
  y = a3.y;
  x = a3.x;
  v15 = a4;
  v7 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];

  if (!v7)
  {
    [v15 returnExecutionToParent];
    goto LABEL_10;
  }

  [(_UIKeyboardTextSelectionInteraction *)self cursorLocationForTranslation:x, y];
  v9 = v8;
  v11 = v10;
  v12 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
  [v12 updateFloatingCursorAtPoint:{v9, v11}];

  v13 = [(_UIKeyboardTextSelectionInteraction *)self owner];
  if ([v13 panGestureState] == 5)
  {
    v14 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
    [v14 selectTextWithGranularity:objc_msgSend(v13 atPoint:"previousRepeatedGranularity") executionContext:{v15, v9, v11}];
  }

  else
  {
    if ([v13 panGestureState] != 6 && objc_msgSend(v13, "panGestureState"))
    {
      goto LABEL_9;
    }

    v14 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
    [v14 updateSelectionWithExtentPoint:objc_msgSend(v13 withBoundary:"previousRepeatedGranularity") executionContext:{v15, v9, v11}];
  }

LABEL_9:
LABEL_10:
}

- (void)endIndirectBlockPanWithExecutionContext:(id)a3
{
  v6 = a3;
  v4 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
  [v4 endFloatingCursor];

  v5 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
  [v5 endSelection];

  [v6 returnExecutionToParent];
}

- (void)beginTwoFingerCursorPanWithTranslation:(CGPoint)a3 executionContext:(id)a4
{
  y = a3.y;
  x = a3.x;
  v27 = a4;
  v7 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];

  if (v7)
  {
    v8 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
    v9 = [v8 hasCaretSelection];

    v10 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
    v11 = v10;
    if (v9)
    {
      [v10 caretRectForCursorPosition];
    }

    else
    {
      [v10 caretRectForFirstSelectedPosition];
    }

    v16 = v12;
    v17 = v13;
    v18 = v14;
    v19 = v15;

    [(_UIKeyboardTextSelectionInteraction *)self beginCursorManipulationFromRect:v16, v17, v18, v19];
    [(_UIKeyboardTextSelectionInteraction *)self cursorLocationForTranslation:x, y];
    v21 = v20;
    v23 = v22;
    v24 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
    [v24 beginFloatingCursorAtPoint:{v21, v23}];

    v25 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
    [v25 beginSelection];

    v26 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
    [v26 selectPositionAtPoint:v27 executionContext:{v21, v23}];
  }

  else
  {
    [v27 returnExecutionToParent];
  }
}

- (void)beginTwoFingerPanWithTranslation:(CGPoint)a3 isShiftKeyBeingHeld:(BOOL)a4 executionContext:(id)a5
{
  v5 = a4;
  y = a3.y;
  x = a3.x;
  v54 = a5;
  v9 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
  v10 = [v9 hasCaretSelection];

  if (!v10 || v5)
  {
    v20 = fabs(x);
    v21 = fabs(y);
    v22 = 2;
    if (x < 0.0)
    {
      v22 = 3;
    }

    v23 = 5;
    if (y < 0.0)
    {
      v23 = 4;
    }

    if (v20 >= v21)
    {
      v24 = v22;
    }

    else
    {
      v24 = v23;
    }

    v25 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
    v26 = v25;
    if (v24 > 3)
    {
      if (v24 == 4)
      {
        [v25 caretRectForFirstSelectedPosition];
        v28 = v36;
        v30 = v37;
        v32 = v38;
        v34 = v39;
        v35 = 5;
      }

      else
      {
        [v25 caretRectForLastSelectedPosition];
        v28 = v44;
        v30 = v45;
        v32 = v46;
        v34 = v47;
        v35 = 4;
      }
    }

    else if (v24 == 2)
    {
      [v25 caretRectForRightmostSelectedPosition];
      v28 = v27;
      v30 = v29;
      v32 = v31;
      v34 = v33;
      v35 = 3;
    }

    else
    {
      [v25 caretRectForLeftmostSelectedPosition];
      v28 = v40;
      v30 = v41;
      v32 = v42;
      v34 = v43;
      v35 = 2;
    }

    [(_UIKeyboardTextSelectionInteraction *)self beginCursorManipulationFromRect:v28, v30, v32, v34];
    [(_UIKeyboardTextSelectionInteraction *)self cursorLocationForTranslation:x, y];
    v49 = v48;
    v51 = v50;
    v52 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
    [v52 beginFloatingCursorAtPoint:{v49, v51}];

    v53 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];

    if (v53)
    {
      v19 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
      [v19 beginSelectionWithBaseAtSelectionBoundaryInDirection:v35 initialExtentPoint:v54 executionContext:{v49, v51}];
      goto LABEL_21;
    }
  }

  else
  {
    v11 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
    [v11 caretRectForCursorPosition];
    [(_UIKeyboardTextSelectionInteraction *)self beginCursorManipulationFromRect:?];

    [(_UIKeyboardTextSelectionInteraction *)self cursorLocationForTranslation:x, y];
    v13 = v12;
    v15 = v14;
    v16 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
    [v16 beginFloatingCursorAtPoint:{v13, v15}];

    v17 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
    [v17 beginSelection];

    v18 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];

    if (v18)
    {
      v19 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
      [v19 selectPositionAtPoint:v54 executionContext:{v13, v15}];
LABEL_21:

      goto LABEL_23;
    }
  }

  [v54 returnExecutionToParent];
LABEL_23:
}

- (void)updateTwoFingerPanWithTranslation:(CGPoint)a3 executionContext:(id)a4
{
  y = a3.y;
  x = a3.x;
  v17 = a4;
  v7 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];

  if (v7)
  {
    [(_UIKeyboardTextSelectionInteraction *)self cursorLocationForTranslation:x, y];
    v9 = v8;
    v11 = v10;
    v12 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
    [v12 updateFloatingCursorAtPoint:{v9, v11}];

    v13 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
    v14 = [v13 hasCaretSelection];

    v15 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
    v16 = v15;
    if (v14)
    {
      [v15 selectPositionAtPoint:v17 executionContext:{v9, v11}];
    }

    else
    {
      [v15 updateSelectionWithExtentPoint:v17 executionContext:{v9, v11}];
    }
  }

  else
  {
    [v17 returnExecutionToParent];
  }
}

- (void)endTwoFingerPanWithExecutionContext:(id)a3
{
  v7 = a3;
  v4 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
  [v4 endFloatingCursor];

  v5 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
  [v5 endSelection];

  v6 = [(_UIKeyboardTextSelectionInteraction *)self owner];
  [v6 setDidFloatCursor:0];

  [v7 returnExecutionToParent];
}

- (void)handleTwoFingerFlickInDirection:(int64_t)a3 executionContext:(id)a4
{
  v6 = a4;
  v7 = a3 & 0xFFFFFFFFFFFFFFFELL;
  v8 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
  v9 = [v8 hasCaretSelection];

  if (v9)
  {
    v10 = v7 == 2;
    if (v7 == 2)
    {
      v11 = 4;
    }

    else
    {
      v11 = 3;
    }

    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __88___UIKeyboardTextSelectionInteraction_handleTwoFingerFlickInDirection_executionContext___block_invoke;
    v16[3] = &unk_1E7118C68;
    v16[4] = self;
    v20 = v10;
    v17 = v6;
    v18 = v11;
    v19 = a3;
    [UIView animateWithDuration:50331648 delay:v16 options:0 animations:0.15 completion:0.0];
  }

  else
  {
    v12 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];

    if (v12)
    {
      v13 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
      v14 = v13;
      if (v7 == 2)
      {
        [v13 updateSelectionWithExtentAtBoundary:4 inDirection:a3 executionContext:v6];
      }

      else
      {
        [v13 updateImmediateSelectionWithExtentAtBoundary:3 inDirection:a3 executionContext:v6];
      }

      v15 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
      [v15 scrollSelectionToVisible];
    }

    else
    {
      [v6 returnExecutionToParent];
    }
  }
}

- (int64_t)layoutDirectionFromFlickDirection:(unint64_t)a3
{
  v3 = 3;
  v4 = 5;
  if ((a3 & 4) == 0)
  {
    v4 = 2;
  }

  if ((a3 & 2) == 0)
  {
    v3 = v4;
  }

  if (a3)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

- (void)beginCursorManipulationFromRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v11 = [(_UIKeyboardTextSelectionInteraction *)self owner];
  if (([v11 didFloatCursor] & 1) == 0)
  {
    v13.origin.x = x;
    v13.origin.y = y;
    v13.size.width = width;
    v13.size.height = height;
    if (CGRectIsNull(v13))
    {
      v8 = *MEMORY[0x1E695EFF8];
      v9 = *(MEMORY[0x1E695EFF8] + 8);
    }

    else
    {
      v8 = x + width * 0.5;
      v9 = y + height * 0.5;
    }

    [v11 setCursorLocationBase:{v8, v9}];
    [v11 setDidFloatCursor:1];
    v10 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
    [v10 willBeginFloatingCursor:1];
  }
}

- (CGPoint)cursorLocationForTranslation:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = a3.x;
  v6 = [(_UIKeyboardTextSelectionInteraction *)self owner];
  [v6 cursorLocationBase];
  v8 = v7;
  v10 = v9;

  if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && fabs(y) != INFINITY)
  {
    v10 = y + v10;
    v8 = x + v8;
  }

  v11 = v8;
  v12 = v10;
  result.y = v12;
  result.x = v11;
  return result;
}

- (void)_cancelLongForcePressTimer
{
  v3 = [(_UIKeyboardTextSelectionInteraction *)self owner];
  v2 = [v3 longForcePressAction];
  [v2 cancel];

  [v3 setLongForcePressAction:0];
}

- (void)clearKeyboardTouchesForGesture:(id)a3
{
  v4 = a3;
  v5 = [v4 view];
  v6 = _getViewKeyboardLayout(v5);

  if (!v6)
  {
    goto LABEL_11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v4 touchesForTap];
LABEL_7:
    v8 = v7;
    goto LABEL_8;
  }

  if ((_getGestureKeyboardFlag(v4) & 2) != 0)
  {
    v7 = [(UIPanGestureRecognizer *)v4 _activeTouches];
    goto LABEL_7;
  }

  v8 = 0;
LABEL_8:
  if (qword_1ED498F20 != -1)
  {
    dispatch_once(&qword_1ED498F20, &__block_literal_global_74_2);
  }

  v9 = [(_UIKeyboardTextSelectionInteraction *)self owner];
  v10 = [v9 delegate];
  v11 = [v10 taskQueue];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __70___UIKeyboardTextSelectionInteraction_clearKeyboardTouchesForGesture___block_invoke_3;
  v14[3] = &unk_1E70FD1B8;
  v15 = v6;
  v16 = v8;
  v12 = qword_1ED498F18;
  v13 = v8;
  [v11 addTask:v14 breadcrumb:v12];

LABEL_11:
}

- (void)_granularityExpandingGestureWithTimeInterval:(double)a3 timeGranularity:(double)a4 isMidPan:(BOOL)a5
{
  v9 = [(_UIKeyboardTextSelectionInteraction *)self owner];
  if (qword_1ED498F30 != -1)
  {
    dispatch_once(&qword_1ED498F30, &__block_literal_global_78_1);
  }

  v10 = [v9 delegate];
  v11 = [v10 taskQueue];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __109___UIKeyboardTextSelectionInteraction__granularityExpandingGestureWithTimeInterval_timeGranularity_isMidPan___block_invoke_3;
  v14[3] = &unk_1E7118C90;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v14[4] = self;
  v15 = v9;
  v12 = qword_1ED498F28;
  v13 = v9;
  [v11 addTask:v14 breadcrumb:v12];
}

- (void)disableEnclosingScrollViewScrolling
{
  v3 = [(_UIKeyboardTextSelectionInteraction *)self owner];
  v4 = [v3 delegate];
  v5 = [v4 textSelectionController];

  if (v5)
  {
    v6 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
    v7 = [v6 textInputView];
    v10 = [v7 _scroller];

    v8 = v10;
    if (v10)
    {
      v9 = [v10 panGestureRecognizer];
      if ([v9 isEnabled])
      {
        [v9 setEnabled:0];
        [v9 setEnabled:1];
      }

      v8 = v10;
    }
  }
}

- (void)longPressGestureWithState:(int64_t)a3 withTranslation:(CGPoint)a4 touchCount:(unint64_t)a5
{
  y = a4.y;
  x = a4.x;
  if (+[UIKeyboard isInputSystemUI](UIKeyboard, "isInputSystemUI") && (+[UIKeyboardImpl activeInstance](UIKeyboardImpl, "activeInstance"), v10 = objc_claimAutoreleasedReturnValue(), [v10 inputDelegateManager], v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "forwardingInputDelegate"), v12 = objc_claimAutoreleasedReturnValue(), v12, v11, v10, !v12))
  {

    [(_UIKeyboardTextSelectionInteraction *)self forwardIndirectGestureWithType:8 state:a3 translation:0 flickDirection:a5 touchCount:x, y];
  }

  else
  {
    if (qword_1ED498F40 != -1)
    {
      dispatch_once(&qword_1ED498F40, &__block_literal_global_84_1);
    }

    v13 = [(_UIKeyboardTextSelectionInteraction *)self owner];
    v14 = [v13 delegate];
    v15 = [v14 taskQueue];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __92___UIKeyboardTextSelectionInteraction_longPressGestureWithState_withTranslation_touchCount___block_invoke_3;
    v16[3] = &unk_1E7118C40;
    v16[4] = self;
    v16[5] = a3;
    *&v16[6] = x;
    *&v16[7] = y;
    v16[8] = a5;
    [v15 addTask:v16 breadcrumb:qword_1ED498F38];
  }
}

- (void)beginLongPressWithTranslation:(CGPoint)a3 touchCount:(unint64_t)a4 executionContext:(id)a5
{
  y = a3.y;
  x = a3.x;
  v24 = a5;
  v9 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];

  if (v9)
  {
    v10 = fabs(x);
    v11 = fabs(y);
    v12 = 2;
    if (x < 0.0)
    {
      v12 = 3;
    }

    v13 = 5;
    if (y < 0.0)
    {
      v13 = 4;
    }

    if (v10 < v11)
    {
      v12 = v13;
    }

    v14 = qword_18A6805C0[v12 - 2];
    v15 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
    [v15 caretRectForCursorPosition];
    [(_UIKeyboardTextSelectionInteraction *)self beginCursorManipulationFromRect:?];

    [(_UIKeyboardTextSelectionInteraction *)self cursorLocationForTranslation:x, y];
    v17 = v16;
    v19 = v18;
    v20 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
    [v20 beginFloatingCursorAtPoint:{v17, v19}];

    v21 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
    v22 = v21;
    if (a4 == 1)
    {
      [v21 beginSelection];

      v23 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
      [v23 updateSelectionWithExtentPoint:v24 executionContext:{v17, v19}];
    }

    else
    {
      [v21 beginSelectionWithBaseAtSelectionBoundaryInDirection:v14 initialExtentPoint:v24 executionContext:{v17, v19}];
    }
  }

  else
  {
    [v24 returnExecutionToParent];
  }
}

- (void)updateLongPressWithTranslation:(CGPoint)a3 executionContext:(id)a4
{
  y = a3.y;
  x = a3.x;
  v14 = a4;
  v7 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];

  if (v7)
  {
    [(_UIKeyboardTextSelectionInteraction *)self cursorLocationForTranslation:x, y];
    v9 = v8;
    v11 = v10;
    v12 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
    [v12 updateFloatingCursorAtPoint:{v9, v11}];

    v13 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
    [v13 updateSelectionWithExtentPoint:v14 executionContext:{v9, v11}];
  }

  else
  {
    [v14 returnExecutionToParent];
  }
}

- (void)finishLongPressWithExecutionContext:(id)a3
{
  v6 = a3;
  v4 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
  [v4 endFloatingCursor];

  v5 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
  [v5 endSelection];

  [v6 returnExecutionToParent];
}

- (void)forwardIndirectGestureWithType:(int64_t)a3 state:(int64_t)a4 translation:(CGPoint)a5 flickDirection:(unint64_t)a6 touchCount:(unint64_t)a7
{
  y = a5.y;
  x = a5.x;
  v13 = +[UIKeyboardImpl activeInstance];
  v14 = [v13 inputDelegateManager];
  v18 = [v14 inputSystemSourceSession];

  if (v18)
  {
    v15 = [v18 textOperations];
    v16 = objc_alloc_init(_UIKeyboardIndirectTextSelectionGestureState);
    [(_UIKeyboardIndirectTextSelectionGestureState *)v16 setType:a3];
    [(_UIKeyboardIndirectTextSelectionGestureState *)v16 setState:a4];
    [(_UIKeyboardIndirectTextSelectionGestureState *)v16 setTranslation:x, y];
    [(_UIKeyboardIndirectTextSelectionGestureState *)v16 setFlickDirection:a6];
    [(_UIKeyboardIndirectTextSelectionGestureState *)v16 setTouchCount:a7];
    v17 = +[UIKeyboardImpl activeInstance];
    -[_UIKeyboardIndirectTextSelectionGestureState setIsShiftKeyBeingHeld:](v16, "setIsShiftKeyBeingHeld:", [v17 isShiftKeyBeingHeld]);

    [v15 setCustomInfoType:0x1EFB7C930];
    [v15 setCustomInfo:v16];
    [v18 flushOperations];
  }
}

- (void)handleRemoteIndirectGestureWithState:(id)a3
{
  v4 = a3;
  if ([(_UIKeyboardIndirectTextSelectionGestureState *)v4 type]== 2)
  {
    [(_UIKeyboardTextSelectionInteraction *)self twoFingerTap:0];
  }

  else
  {
    [(_UIKeyboardIndirectTextSelectionGestureState *)v4 translation];
    [(_UIKeyboardTextSelectionInteraction *)self boundedTranslation:?];
    v6 = v5;
    v8 = v7;
    if ([(_UIKeyboardIndirectTextSelectionGestureState *)v4 type]== 4)
    {
      if ([(_UIKeyboardIndirectTextSelectionGestureState *)v4 state]== 1)
      {
        v9 = *MEMORY[0x1E695EFF8];
        v10 = *(MEMORY[0x1E695EFF8] + 8);
        v11 = [(_UIKeyboardTextSelectionInteraction *)self owner];
        [v11 setAccumulatedBounding:{v9, v10}];

        [(_UIKeyboardTextSelectionInteraction *)self indirectCursorPanGestureWithState:1 withTranslation:2 withFlickDirection:v9, v10];
      }

      [(_UIKeyboardTextSelectionInteraction *)self indirectPanGestureWithState:[(_UIKeyboardIndirectTextSelectionGestureState *)v4 state] withTranslation:[(_UIKeyboardIndirectTextSelectionGestureState *)v4 flickDirection] withFlickDirection:[(_UIKeyboardIndirectTextSelectionGestureState *)v4 isShiftKeyBeingHeld] isShiftKeyBeingHeld:v6, v8];
    }

    else if ([(_UIKeyboardIndirectTextSelectionGestureState *)v4 type]== 8)
    {
      if ([(_UIKeyboardIndirectTextSelectionGestureState *)self->_previousRemoteGestureState type]== 4 && [(_UIKeyboardIndirectTextSelectionGestureState *)self->_previousRemoteGestureState state]== 2 && [(_UIKeyboardIndirectTextSelectionGestureState *)v4 state]== 2)
      {
        v12 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
        [v12 restartSelection];
      }

      [(_UIKeyboardTextSelectionInteraction *)self longPressGestureWithState:[(_UIKeyboardIndirectTextSelectionGestureState *)v4 state] withTranslation:[(_UIKeyboardIndirectTextSelectionGestureState *)v4 touchCount] touchCount:v6, v8];
    }

    else if (os_variant_has_internal_diagnostics())
    {
      v17 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v17, OS_LOG_TYPE_FAULT, "Unknown gesture type", buf, 2u);
      }
    }

    else
    {
      v13 = *(__UILogGetCategoryCachedImpl("Assert", &handleRemoteIndirectGestureWithState____s_category) + 8);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *v18 = 0;
        _os_log_impl(&dword_188A29000, v13, OS_LOG_TYPE_ERROR, "Unknown gesture type", v18, 2u);
      }
    }

    if ([(_UIKeyboardIndirectTextSelectionGestureState *)v4 state]>= 3)
    {
      v14 = [(_UIKeyboardTextSelectionInteraction *)self owner];
      [v14 setDidFloatCursor:0];

      v15 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
      [v15 resetCursorPosition];
    }
  }

  previousRemoteGestureState = self->_previousRemoteGestureState;
  self->_previousRemoteGestureState = v4;
}

- (void)indirectPanGestureWithState:(int64_t)a3 withTranslation:(CGPoint)a4 withFlickDirection:(unint64_t)a5 isShiftKeyBeingHeld:(BOOL)a6
{
  y = a4.y;
  x = a4.x;
  if (+[UIKeyboard isInputSystemUI](UIKeyboard, "isInputSystemUI") && (+[UIKeyboardImpl activeInstance](UIKeyboardImpl, "activeInstance"), v12 = objc_claimAutoreleasedReturnValue(), [v12 inputDelegateManager], v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "forwardingInputDelegate"), v14 = objc_claimAutoreleasedReturnValue(), v14, v13, v12, !v14))
  {

    [(_UIKeyboardTextSelectionInteraction *)self forwardIndirectGestureWithType:4 state:a3 translation:a5 flickDirection:0 touchCount:x, y];
  }

  else
  {
    if (qword_1ED498F50 != -1)
    {
      dispatch_once(&qword_1ED498F50, &__block_literal_global_95);
    }

    v15 = [(_UIKeyboardTextSelectionInteraction *)self owner];
    v16 = [v15 delegate];
    v17 = [v16 taskQueue];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __122___UIKeyboardTextSelectionInteraction_indirectPanGestureWithState_withTranslation_withFlickDirection_isShiftKeyBeingHeld___block_invoke_3;
    v18[3] = &unk_1E7118CE0;
    v18[4] = self;
    v18[5] = a3;
    *&v18[6] = x;
    *&v18[7] = y;
    v19 = a6;
    v18[8] = a5;
    [v17 addTask:v18 breadcrumb:qword_1ED498F48];
  }
}

- (void)_beginLongForcePressTimerForGesture:(id)a3
{
  v4 = a3;
  v8 = [(_UIKeyboardTextSelectionInteraction *)self owner];
  v5 = [v8 longForcePressAction];

  if (v5)
  {
    v6 = [v8 longForcePressAction];
    [v6 cancel];
  }

  v7 = [[UIDelayedAction alloc] initWithTarget:self action:sel__longForcePressDetected_ userInfo:v4 delay:0.2];

  [v8 setLongForcePressAction:v7];
}

- (void)_longForcePressDetected:(id)a3
{
  v4 = a3;
  v5 = [(_UIKeyboardTextSelectionInteraction *)self owner];
  [v5 setPreviousForcePressCount:{objc_msgSend(v5, "previousForcePressCount") - 1}];
  [(_UIKeyboardTextSelectionInteraction *)self _cancelLongForcePressTimer];
  [(_UIKeyboardTextSelectionInteraction *)self oneFingerForcePress:v4];
}

- (void)_logTapCounts:(id)a3
{
  v4 = a3;
  v5 = [v4 valueForKey:@"tapLogValue"];
  v6 = [v5 intValue];

  v7 = [v4 valueForKey:@"isOnKeyboard"];

  +[_UIKeyboardUsageTracking keyboardGestureTwoFingerTap:withTapCount:](_UIKeyboardUsageTracking, "keyboardGestureTwoFingerTap:withTapCount:", [v7 BOOLValue], v6);
  v9 = [(_UIKeyboardTextSelectionInteraction *)self owner];
  v8 = [v9 tapLogTimer];
  [v8 cancel];

  [v9 setTapLogTimer:0];
}

- (void)oneFingerForcePan:(id)a3
{
  v4 = a3;
  v5 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
  v6 = [v5 textInputView];
  [v4 _translationInView:v6];
  v8 = v7;
  v10 = v9;

  v11 = [(_UIKeyboardTextSelectionInteraction *)self owner];
  v12 = [v11 longForcePressAction];

  if (v12)
  {
    v13 = hypot(v8, v10);
    v14 = +[_UITextSelectionSettings sharedInstance];
    [v14 allowableForceMovement];
    v16 = v15;

    if (v13 > v16)
    {
      [(_UIKeyboardTextSelectionInteraction *)self _cancelLongForcePressTimer];
    }
  }

  if ([v4 state] == 1)
  {
    v17 = *MEMORY[0x1E695EFF8];
    v18 = *(MEMORY[0x1E695EFF8] + 8);
    [v11 setAccumulatedAcceleration:{*MEMORY[0x1E695EFF8], v18}];
    [v11 setAccumulatedBounding:{v17, v18}];
    [v11 setLastPanTranslation:{v8, v10}];
    v19 = [v11 weightedPoint];
    [v19 clearHistory];

    v20 = [v11 weightedPoint];
    [v20 addPoint:{v8, v10}];

    v21 = [v4 view];
    [_UIKeyboardUsageTracking keyboardGestureOneFingerForcePan:_isViewKeyboardLayoutPresent(v21)];

    v22 = [MEMORY[0x1E69D4E18] sharedInstance];
    v59[0] = MEMORY[0x1E69E9820];
    v59[1] = 3221225472;
    v59[2] = __57___UIKeyboardTextSelectionInteraction_oneFingerForcePan___block_invoke;
    v59[3] = &unk_1E70FB518;
    v59[4] = self;
    v62 = v8;
    v63 = v10;
    v60 = v11;
    v61 = v4;
    [v22 logBlock:v59 domain:@"com.apple.keyboard.UIKit"];

    [(_UIKeyboardTextSelectionInteraction *)self _prepareForGesture];
  }

  if ([v4 state] >= 2)
  {
    v23 = +[_UITextSelectionSettings sharedInstance];
    v24 = [v23 shouldUseAcceleration];
    v25 = [v24 BOOLValue];

    if (v25)
    {
      v26 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
      v27 = [v26 textInputView];
      [v4 velocityInView:v27];
      v29 = v28;
      v31 = v30;

      if ([v11 panGestureState])
      {
        v32 = v4;
        v33 = [v32 state] != 3 && objc_msgSend(v32, "state") != 4 && objc_msgSend(v32, "state") != 5;
      }

      else
      {
        v33 = 0;
      }

      [(_UIKeyboardTextSelectionInteraction *)self acceleratedTranslation:v33 velocity:v8 isActive:v10, v29, v31];
      v35 = v34;
      v37 = v36;
      [v11 setLastPanTranslation:{v8, v10}];
      v10 = v37;
      v8 = v35;
    }

    v38 = [v11 weightedPoint];
    [v38 addPoint:{v8, v10}];

    v39 = v4;
    if ([v39 state] == 3 || objc_msgSend(v39, "state") == 4)
    {
    }

    else
    {
      v43 = [v39 state];

      if (v43 != 5)
      {
LABEL_22:
        [(_UIKeyboardTextSelectionInteraction *)self boundedTranslation:v8, v10];
        v8 = v44;
        v10 = v45;
        goto LABEL_23;
      }
    }

    if ([(_UIKeyboardTextSelectionInteraction *)self isPlacedCarefully])
    {
      v40 = [v11 weightedPoint];
      [v40 weightedPoint];
      v8 = v41;
      v10 = v42;
    }

    goto LABEL_22;
  }

LABEL_23:
  if ([v11 panGestureState] == 1)
  {
    v46 = v4;
    if ([v46 state] == 3 || objc_msgSend(v46, "state") == 4)
    {
    }

    else
    {
      v53 = [v46 state];

      if (v53 != 5)
      {
        [(_UIKeyboardTextSelectionInteraction *)self indirectCursorPanGestureWithState:2 withTranslation:0 withFlickDirection:v8, v10];
        goto LABEL_34;
      }
    }

    [v11 setDidFloatCursor:0];
    -[_UIKeyboardTextSelectionInteraction indirectCursorPanGestureWithState:withTranslation:withFlickDirection:](self, "indirectCursorPanGestureWithState:withTranslation:withFlickDirection:", [v46 state], 0, v8, v10);
    goto LABEL_33;
  }

  if ([v11 panGestureState] == 6)
  {
    v47 = v4;
    if ([v47 state] == 3 || objc_msgSend(v47, "state") == 4)
    {
    }

    else
    {
      v54 = [v47 state];

      if (v54 != 5)
      {
        [(_UIKeyboardTextSelectionInteraction *)self indirectBlockPanGestureWithState:2 withTranslation:v8, v10];
        goto LABEL_34;
      }
    }

    [v11 setDidFloatCursor:0];
    -[_UIKeyboardTextSelectionInteraction indirectBlockPanGestureWithState:withTranslation:](self, "indirectBlockPanGestureWithState:withTranslation:", [v47 state], v8, v10);
LABEL_33:
    [v11 setPanGestureState:0];
  }

LABEL_34:
  v48 = v4;
  if ([v48 state] == 3 || objc_msgSend(v48, "state") == 4)
  {
  }

  else
  {
    v52 = [v48 state];

    if (v52 != 5)
    {
      goto LABEL_38;
    }
  }

  [v11 setDidFloatCursor:0];
  [v11 setPreviousForcePressCount:0];
  [v11 setPanGestureState:0];
  [(_UIKeyboardTextSelectionInteraction *)self _didEndIndirectSelectionGesture:v48];
  v49 = [v11 activeGestures];
  [v49 removeObject:v48];

  v50 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
  [v50 resetCursorPosition];

  [(_UIKeyboardTextSelectionInteraction *)self _tidyUpGesture];
  v51 = [MEMORY[0x1E69D4E18] sharedInstance];
  v55[0] = MEMORY[0x1E69E9820];
  v55[1] = 3221225472;
  v55[2] = __57___UIKeyboardTextSelectionInteraction_oneFingerForcePan___block_invoke_2;
  v55[3] = &unk_1E7118D08;
  v55[4] = self;
  v57 = v8;
  v58 = v10;
  v56 = v48;
  [v51 logBlock:v55 domain:@"com.apple.keyboard.UIKit"];

LABEL_38:
}

- (void)twoFingerTap:(id)a3
{
  v40[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_UIKeyboardTextSelectionInteraction *)self owner];
  Current = CFAbsoluteTimeGetCurrent();
  [v5 twoFingerTapTimestamp];
  v8 = v7;
  [(_UIKeyboardTextSelectionInteraction *)self clearKeyboardTouchesForGesture:v4];
  if (+[UIKeyboard isInputSystemUI])
  {
    v9 = [v4 state];
    [(_UIKeyboardTextSelectionInteraction *)self forwardIndirectGestureWithType:2 state:v9 translation:0 flickDirection:0 touchCount:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];
  }

  else
  {
    [(_UIKeyboardTextSelectionInteraction *)self _granularityExpandingGestureWithTimeInterval:0 timeGranularity:Current - v8 isMidPan:0.667];
  }

  [v5 setTwoFingerTapTimestamp:Current];
  v10 = [v5 delegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = [v5 delegate];
    [v12 setTwoFingerTapTimestamp:Current];
  }

  v13 = [v5 tapLogTimer];

  if (!v13)
  {
    v25 = [v4 view];
    isViewKeyboardLayoutPresent = _isViewKeyboardLayoutPresent(v25);

    v40[0] = &unk_1EFE31FC0;
    v39[0] = @"tapLogValue";
    v39[1] = @"isOnKeyboard";
    v27 = [MEMORY[0x1E696AD98] numberWithBool:isViewKeyboardLayoutPresent];
    v40[1] = v27;
    v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:v39 count:2];
    v15 = [v28 mutableCopy];

    v29 = [UIDelayedAction alloc];
    v30 = [(UIDelayedAction *)v29 initWithTarget:self action:sel__logTapCounts_ userInfo:v15 delay:*MEMORY[0x1E695D918] mode:0.667];
    [v5 setTapLogTimer:v30];

    v21 = [MEMORY[0x1E69D4E18] sharedInstance];
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __52___UIKeyboardTextSelectionInteraction_twoFingerTap___block_invoke;
    v35[3] = &unk_1E7118D30;
    v22 = &v36;
    v36 = v5;
    v38 = isViewKeyboardLayoutPresent;
    v23 = &v37;
    v37 = v4;
    v24 = v35;
    goto LABEL_10;
  }

  v14 = [v5 tapLogTimer];
  v15 = [v14 userInfo];

  v16 = [v15 objectForKey:@"tapLogValue"];
  v17 = [v16 intValue];
  v18 = (v17 + 1);

  v19 = [MEMORY[0x1E696AD98] numberWithInt:v18];
  [v15 setValue:v19 forKey:@"tapLogValue"];

  v20 = [v5 tapLogTimer];
  [v20 touch];

  if (v17 >= 1)
  {
    v21 = [MEMORY[0x1E69D4E18] sharedInstance];
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __52___UIKeyboardTextSelectionInteraction_twoFingerTap___block_invoke_2;
    v31[3] = &unk_1E7118D58;
    v22 = &v32;
    v32 = v5;
    v23 = &v33;
    v33 = v4;
    v34 = v18;
    v24 = v31;
LABEL_10:
    [v21 logBlock:v24 domain:@"com.apple.keyboard.UIKit"];
  }
}

- (void)panningGestureAddedTouch:(id)a3
{
  v9 = a3;
  if ([v9 state] == 1)
  {
    v4 = [(_UIKeyboardTextSelectionInteraction *)self owner];
    v5 = [v4 isPanning];

    if (v5)
    {
      v6 = [(_UIKeyboardTextSelectionInteraction *)self owner];
      [v6 setHadAddedTouch:1];
    }
  }

  else if ([v9 state] == 3)
  {
    v7 = [(_UIKeyboardTextSelectionInteraction *)self owner];
    v8 = [v7 isPanning];

    if ((v8 & 1) == 0)
    {
      if (self->_touchPadTimerCompletion)
      {
        [(_UIKeyboardTextSelectionInteraction *)self _cancelTouchPadTimer];
        (*(self->_touchPadTimerCompletion + 2))();
      }
    }
  }
}

- (void)panningGesture:(id)a3
{
  v4 = a3;
  v5 = [(_UIKeyboardTextSelectionInteraction *)self owner];
  v6 = [v5 delegate];
  v7 = [v4 state];
  if ((_getGestureKeyboardFlag(v4) & 2) == 0)
  {
    goto LABEL_12;
  }

  if (([v5 suppressTwoFingerPan] & 1) == 0 && v7 <= 1)
  {
    v8 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
    v9 = [v8 textInputView];
    v10 = [v9 _scroller];

    if ([v10 isZooming])
    {
      [v5 setSuppressTwoFingerPan:1];
    }
  }

  if (![v5 suppressTwoFingerPan])
  {
LABEL_12:
    [(_UIKeyboardTextSelectionInteraction *)self _cancelTouchPadTimer];
    Current = CFAbsoluteTimeGetCurrent();
    v14 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
    v15 = [v14 textInputView];
    [v4 translationInView:v15];
    v17 = v16;
    v19 = v18;

    v20 = &OBJC_IVAR___UIKeyboardLayoutStar__flickPopupView;
    if (([v5 isPanning] & 1) != 0 || v7 > 1 || (objc_opt_respondsToSelector() & 1) != 0 && (objc_msgSend(v4, "view"), v21 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "locationInView:", v21), v22 = objc_msgSend(v6, "shouldAllowSelectionGestures:atPoint:toBegin:", 0, 1), v21, !v22))
    {
      if ([v5 isPanning])
      {
        v40 = +[_UITextSelectionSettings sharedInstance];
        v41 = [v40 shouldUseAcceleration];
        v42 = [v41 BOOLValue];

        if (v42)
        {
          v43 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
          v44 = [v43 textInputView];
          [v4 velocityInView:v44];
          v46 = v45;
          v48 = v47;

          v49 = v4;
          v50 = [v49 state] != 3 && objc_msgSend(v49, "state") != 4 && objc_msgSend(v49, "state") != 5;

          [(_UIKeyboardTextSelectionInteraction *)self acceleratedTranslation:v50 velocity:v17 isActive:v19, v46, v48];
          v53 = v52;
          v55 = v54;
          [v5 setLastPanTranslation:{v17, v19}];
          v19 = v55;
          v17 = v53;
        }

        [(_UIKeyboardTextSelectionInteraction *)self boundedTranslation:v17, v19];
        v17 = v56;
        v19 = v57;
        v58 = [v5 weightedPoint];
        [v58 addPoint:{v17, v19}];

        v59 = v4;
        if ([v59 state] == 3 || objc_msgSend(v59, "state") == 4)
        {
        }

        else
        {
          v63 = [v59 state];

          if (v63 != 5)
          {
            goto LABEL_53;
          }
        }

        if ([(_UIKeyboardTextSelectionInteraction *)self isPlacedCarefully])
        {
          v60 = [v5 weightedPoint];
          [v60 weightedPoint];
          v17 = v61;
          v19 = v62;
        }
      }

      else if (self->_touchPadTimerCompletion)
      {
        [(_UIKeyboardTextSelectionInteraction *)self _clearTouchPadCallback];
      }
    }

    else
    {
      v23 = [v5 activeGestures];
      [v23 addObject:v4];

      v24 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
      v25 = [v24 textInputView];
      v26 = *MEMORY[0x1E695EFF8];
      v27 = *(MEMORY[0x1E695EFF8] + 8);
      [v4 setTranslation:v25 inView:{*MEMORY[0x1E695EFF8], v27}];

      [v5 setLastPanTranslation:{v26, v27}];
      v28 = -1.0;
      if (v17 < 0.0)
      {
        v29 = -1.0;
      }

      else
      {
        v29 = v17;
      }

      if (v17 <= 0.0)
      {
        v17 = v29;
      }

      else
      {
        v17 = 1.0;
      }

      if (v19 >= 0.0)
      {
        v28 = v19;
      }

      if (v19 <= 0.0)
      {
        v19 = v28;
      }

      else
      {
        v19 = 1.0;
      }

      [v5 setIsPanning:{1, 1.0, v28, v29}];
      [v5 setIsSpacePan:(_getGestureKeyboardFlag(v4) >> 2) & 1];
      [v5 setSpacePanDistance:0.0];
      [v5 setHadAddedTouch:0];
      [v5 setIsLongPressing:0];
      [v5 setLastPanTranslation:{v17, v19}];
      [v5 setAccumulatedAcceleration:{v26, v27}];
      [v5 setAccumulatedBounding:{v26, v27}];
      [(_UIKeyboardTextSelectionInteraction *)self clearKeyboardTouchesForGesture:v4];
      [(_UIKeyboardTextSelectionInteraction *)self _willBeginIndirectSelectionGesture:v4];
      [(_UIKeyboardTextSelectionInteraction *)self disableEnclosingScrollViewScrolling];
      [(_UIKeyboardTextSelectionInteraction *)self _prepareForGesture];
      v30 = [v5 weightedPoint];
      [v30 clearHistory];

      v31 = [v5 weightedPoint];
      [v31 addPoint:{v17, v19}];

      if ((_getGestureKeyboardFlag(v4) & 4) != 0)
      {
        v32 = [v4 view];
        isViewKeyboardLayoutPresent = _isViewKeyboardLayoutPresent(v32);

        if (isViewKeyboardLayoutPresent && !self->_addedTouchRecognizer)
        {
          v34 = objc_alloc_init(_UIKeyboardTextSelectionTouchesObservingGestureRecognizer);
          addedTouchRecognizer = self->_addedTouchRecognizer;
          self->_addedTouchRecognizer = &v34->super;

          [(_UIKeyboardTextSelectionInteraction *)self _configureLongPressAddedTouchRecognizer:self->_addedTouchRecognizer];
          v36 = +[UIKeyboard activeKeyboard];
          [v36 addGestureRecognizer:self->_addedTouchRecognizer];
        }
      }

      if ((_getGestureKeyboardFlag(v4) & 0x20) != 0 && !self->_touchPadTimerCompletion)
      {
        v37 = +[UIKeyboardImpl activeInstance];
        v38 = [v37 isShiftKeyBeingHeld];

        if ((v38 & 1) == 0)
        {
          [(_UIKeyboardTextSelectionInteraction *)self indirectCursorPanGestureWithState:1 withTranslation:2 withFlickDirection:v26, v27];
        }
      }

      v39 = [MEMORY[0x1E69D4E18] sharedInstance];
      v115[0] = MEMORY[0x1E69E9820];
      v115[1] = 3221225472;
      v115[2] = __54___UIKeyboardTextSelectionInteraction_panningGesture___block_invoke;
      v115[3] = &unk_1E7118D08;
      v116 = v5;
      v117 = v4;
      v118 = v17;
      v119 = v19;
      [v39 logBlock:v115 domain:@"com.apple.keyboard.UIKit"];
    }

LABEL_53:
    if ([v5 isSpacePan])
    {
      v64 = sqrt(v19 * v19 + v17 * v17);
      [v5 spacePanDistance];
      if (v64 > v65)
      {
        [v5 setSpacePanDistance:v64];
      }
    }

    if (objc_opt_respondsToSelector())
    {
      v66 = [v6 hasMarkedText];
    }

    else
    {
      v66 = 0;
    }

    if (![v5 isPanning])
    {
      goto LABEL_67;
    }

    if ((_getGestureKeyboardFlag(v4) & 2) != 0)
    {
      if ([v4 didLongPress])
      {
        v67 = 1;
        goto LABEL_66;
      }
    }

    else if ((_getGestureKeyboardFlag(v4) & 4) == 0)
    {
      v67 = 0;
      goto LABEL_66;
    }

    v67 = [v5 hadAddedTouch];
LABEL_66:
    v68 = +[UIKeyboardImpl activeInstance];
    v69 = [v68 isShiftKeyBeingHeld];

    if (!(v66 & 1 | (((v69 | v67) & 1) == 0)))
    {
      if ([v5 hadAddedTouch])
      {
        v73 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
        [v73 restartSelection];
      }

      if (([v5 isLongPressing] & 1) == 0)
      {
        [v5 setIsLongPressing:1];
        v74 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
        [v74 switchToRangedSelection];
      }

      if ((_getGestureKeyboardFlag(v4) & 4) != 0)
      {
        v75 = 1;
      }

      else
      {
        v75 = 2;
      }

      [(_UIKeyboardTextSelectionInteraction *)self longPressGestureWithState:v7 withTranslation:v75 touchCount:v17, v19];
      goto LABEL_81;
    }

LABEL_67:
    if (![v5 isPanning])
    {
      goto LABEL_81;
    }

    [v5 twoFingerTapTimestamp];
    if (Current - v70 > 0.667)
    {
      v71 = +[_UITextSelectionSettings sharedInstance];
      v72 = [v71 allowExtendingSelections];
      if ([v72 BOOLValue])
      {
      }

      else
      {
        GestureKeyboardFlag = _getGestureKeyboardFlag(v4);

        if ((GestureKeyboardFlag & 0x10) != 0)
        {
          -[_UIKeyboardTextSelectionInteraction indirectCursorPanGestureWithState:withTranslation:withFlickDirection:](self, "indirectCursorPanGestureWithState:withTranslation:withFlickDirection:", [v4 state], objc_msgSend(v4, "recognizedFlickDirection"), v17, v19);
LABEL_81:
          v80 = v4;
          if ([v80 state] == 3 || objc_msgSend(v80, "state") == 4)
          {
          }

          else
          {
            v99 = [v80 state];

            if (v99 != 5)
            {
              goto LABEL_109;
            }
          }

          if ([v5 isPanning])
          {
            v81 = [v80 view];
            v82 = _isViewKeyboardLayoutPresent(v81);

            v83 = MEMORY[0x1E69D9C20];
            if (!v82)
            {
              v83 = MEMORY[0x1E69D9C18];
            }

            v84 = *v83;
            v85 = [v6 textSelectionController];
            v86 = [v85 hasRangedSelection];
            v87 = MEMORY[0x1E69D9C08];
            if (!v86)
            {
              v87 = MEMORY[0x1E69D9C10];
            }

            v88 = *v87;

            v89 = TIStatisticsGetKeyForGesture();
            TIStatisticScalarIncrement();

            v90 = [MEMORY[0x1E69D4E18] sharedInstance];
            v110[0] = MEMORY[0x1E69E9820];
            v110[1] = 3221225472;
            v110[2] = __54___UIKeyboardTextSelectionInteraction_panningGesture___block_invoke_2;
            v110[3] = &unk_1E7118D08;
            v111 = v5;
            v91 = v80;

            v112 = v91;
            v113 = v17;
            v114 = v19;
            [v90 logBlock:v110 domain:@"com.apple.keyboard.UIKit"];
          }

          [v5 setDidFloatCursor:0];
          [v5 setIsLongPressing:0];
          [v5 setIsPanning:0];
          [v5 setIsSpacePan:0];
          v92 = [v5 activeGestures];
          [v92 removeObject:v80];

          v93 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
          [v93 resetCursorPosition];

          [(_UIKeyboardTextSelectionInteraction *)self _tidyUpGesture];
          touchPadTimerCompletion = self->_touchPadTimerCompletion;
          v95 = touchPadTimerCompletion;
          if (!touchPadTimerCompletion)
          {
            v95 = v107;
            v107[0] = MEMORY[0x1E69E9820];
            v107[1] = 3221225472;
            v107[2] = __54___UIKeyboardTextSelectionInteraction_panningGesture___block_invoke_3;
            v107[3] = &unk_1E70F6228;
            v107[4] = self;
            v106 = &v108;
            v108 = v5;
            v20 = &v109;
            v109 = v80;
          }

          v96 = _Block_copy(v95);
          if ((_getGestureKeyboardFlag(v80) & 4) != 0)
          {
            v97 = [v80 view];
            [v80 locationInView:v97];
            [v80 velocityInView:v97];
            [v97 bounds];
            if (!-[_UIKeyboardTextSelectionInteraction isPlacedCarefully](self, "isPlacedCarefully") && (self->_touchPadTimerCompletion || ([v5 spacePanDistance], v100 > 16.0)) || (objc_msgSend(v5, "spacePanDistance"), v98 < 16.0) && IsGestureWithinSpecialRegion(v80))
            {
              if (!self->_activePress)
              {
                v101 = objc_alloc_init(_UIPanOrFlickGestureRecognizer);
                activePress = self->_activePress;
                self->_activePress = v101;

                [(_UIKeyboardTextSelectionInteraction *)self _configureLongPressRecognizer:self->_activePress];
                v103 = self->_activePress;
                v104 = _getGestureKeyboardFlag(v103);
                _setGestureKeyboardFlag(v103, v104 & 0xFFFFFFFFFFFFFFBFLL);
                [(UIPanGestureRecognizer *)self->_activePress setDelegate:self];
                [(_UIPanOrFlickGestureRecognizer *)self->_activePress setMinimumPressDuration:0.0];
                v105 = +[UIKeyboard activeKeyboard];
                [(UIView *)v105 _addGestureRecognizer:0 atEnd:?];
              }

              [(_UIKeyboardTextSelectionInteraction *)self _startTouchPadTimerWithCompletion:v96];

              v96 = 0;
            }
          }

          if (v96)
          {
            v96[2](v96);
          }

          if (!touchPadTimerCompletion)
          {
          }

          goto LABEL_109;
        }
      }
    }

    v77 = [v4 state];
    v78 = [v4 recognizedFlickDirection];
    v79 = +[UIKeyboardImpl activeInstance];
    -[_UIKeyboardTextSelectionInteraction indirectPanGestureWithState:withTranslation:withFlickDirection:isShiftKeyBeingHeld:](self, "indirectPanGestureWithState:withTranslation:withFlickDirection:isShiftKeyBeingHeld:", v77, v78, [v79 isShiftKeyBeingHeld], v17, v19);

    goto LABEL_81;
  }

  v11 = v4;
  if ([v11 state] == 3 || objc_msgSend(v11, "state") == 4)
  {
  }

  else
  {
    v51 = [v11 state];

    if (v51 != 5)
    {
      goto LABEL_109;
    }
  }

  [v5 setDidFloatCursor:0];
  [v5 setSuppressTwoFingerPan:0];
  v12 = [v5 activeGestures];
  [v12 removeObject:v11];

LABEL_109:
}

- (void)_startTouchPadTimerWithCompletion:(id)a3
{
  v4 = a3;
  [(_UIKeyboardTextSelectionInteraction *)self _cancelTouchPadTimer];
  if (v4)
  {
    v5 = [v4 copy];
    touchPadTimerCompletion = self->_touchPadTimerCompletion;
    self->_touchPadTimerCompletion = v5;

    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __73___UIKeyboardTextSelectionInteraction__startTouchPadTimerWithCompletion___block_invoke;
    v9[3] = &unk_1E7106478;
    v9[4] = self;
    v7 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:0 repeats:v9 block:0.5];
    touchPadTimer = self->_touchPadTimer;
    self->_touchPadTimer = v7;
  }
}

- (void)_clearTouchPadCallback
{
  touchPadTimerCompletion = self->_touchPadTimerCompletion;
  self->_touchPadTimerCompletion = 0;
}

- (void)oneFingerForcePress:(id)a3
{
  v4 = a3;
  v5 = [(_UIKeyboardTextSelectionInteraction *)self owner];
  v6 = [v4 view];
  if (!v6)
  {
    goto LABEL_67;
  }

  v7 = v6;
  v8 = [v5 delegate];
  v9 = [v8 textSelectionController];

  if (!v9)
  {
    goto LABEL_67;
  }

  v10 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
  v11 = [v10 textInputView];
  [v4 velocityInView:v11];
  v13 = v12;
  v15 = v14;

  v16 = hypot(v13, v15);
  v17 = 1;
  if ([v5 panGestureState] && v16 > 65.0)
  {
    v17 = [v4 touchEclipsesVelocity];
  }

  if (!v4)
  {
    [v5 previousForcePressCount];
LABEL_12:
    v19 = 0;
    if (!v17)
    {
      goto LABEL_9;
    }

    goto LABEL_13;
  }

  v18 = v4[19];
  if (v18 <= [v5 previousForcePressCount])
  {
    goto LABEL_12;
  }

  v19 = v4[19] == 1;
  if (!v17)
  {
LABEL_9:
    [(_UIKeyboardTextSelectionInteraction *)self _cancelLongForcePressTimer];
LABEL_10:
    v20 = 1;
    goto LABEL_18;
  }

LABEL_13:
  if ([v5 panGestureState] <= 0 && !-[_UIKeyboardTextSelectionInteraction forceTouchGestureRecognizerShouldBegin:](self, "forceTouchGestureRecognizerShouldBegin:", v4))
  {
    if (v19)
    {
      [(_UIKeyboardTextSelectionInteraction *)self _beginLongForcePressTimerForGesture:v4];
      v36 = [v4 view];
      isViewKeyboardLayoutPresent = _isViewKeyboardLayoutPresent(v36);
      if (v4)
      {
        v38 = *(v4 + 38);
      }

      else
      {
        v38 = 0;
      }

      [_UIKeyboardUsageTracking keyboardGestureOneFingerForcePress:isViewKeyboardLayoutPresent withPressCount:v38];
    }

    goto LABEL_10;
  }

  if (!v19)
  {
    [(_UIKeyboardTextSelectionInteraction *)self _cancelLongForcePressTimer];
  }

  v20 = 0;
LABEL_18:
  v21 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
  v22 = [v21 textInputView];
  [v4 _translationInView:v22];
  v24 = v23;
  v26 = v25;

  if ([v4 state] == 1 || v19)
  {
    v27 = *MEMORY[0x1E695EFF8];
    v28 = *(MEMORY[0x1E695EFF8] + 8);
    [v5 setAccumulatedAcceleration:{*MEMORY[0x1E695EFF8], v28}];
    [v5 setAccumulatedBounding:{v27, v28}];
    [v5 setLastPanTranslation:{v24, v26}];
    [(_UIKeyboardTextSelectionInteraction *)self _prepareForGesture];
  }

  if ([v4 currentPreviewForceState] < 1)
  {
    goto LABEL_64;
  }

  v29 = v4 ? v4[19] : 0;
  v30 = v29 <= [v5 previousForcePressCount] ? 1 : v20;
  if (v30)
  {
    goto LABEL_64;
  }

  if ([v4 state] >= 2)
  {
    v31 = +[_UITextSelectionSettings sharedInstance];
    v32 = [v31 shouldUseAcceleration];
    v33 = [v32 BOOLValue];

    if (v33)
    {
      if ([v5 panGestureState])
      {
        v34 = v4;
        v35 = [v34 state] != 3 && objc_msgSend(v34, "state") != 4 && objc_msgSend(v34, "state") != 5;
      }

      else
      {
        v35 = 0;
      }

      [(_UIKeyboardTextSelectionInteraction *)self acceleratedTranslation:v35 velocity:v24 isActive:v26, v13, v15];
      v40 = v39;
      v42 = v41;
      [v5 setLastPanTranslation:{v24, v26}];
      v26 = v42;
      v24 = v40;
    }

    v43 = [v5 weightedPoint];
    [v43 addPoint:{v24, v26}];

    v44 = v4;
    if ([v44 state] == 3 || objc_msgSend(v44, "state") == 4)
    {
    }

    else
    {
      v48 = [v44 state];

      if (v48 != 5)
      {
LABEL_47:
        [(_UIKeyboardTextSelectionInteraction *)self boundedTranslation:v24, v26];
        v24 = v49;
        v26 = v50;
        goto LABEL_48;
      }
    }

    if ([(_UIKeyboardTextSelectionInteraction *)self isPlacedCarefully])
    {
      v45 = [v5 weightedPoint];
      [v45 weightedPoint];
      v24 = v46;
      v26 = v47;
    }

    goto LABEL_47;
  }

LABEL_48:
  Current = CFAbsoluteTimeGetCurrent();
  [v5 lastPressTimestamp];
  v53 = v52;
  v54 = [v5 delegate];
  if (objc_opt_respondsToSelector())
  {
    v55 = [v5 delegate];
    v56 = [v55 hasMarkedText];
  }

  else
  {
    v56 = 0;
  }

  if ([v5 panGestureState] == 6)
  {
    v57 = Current - v53;
    if (Current - v53 <= 0.8)
    {
      [(_UIKeyboardTextSelectionInteraction *)self _granularityExpandingGestureWithTimeInterval:1 timeGranularity:v57 isMidPan:?];
    }

    else
    {
      [v5 setPanGestureState:{0, v57}];
      [(_UIKeyboardTextSelectionInteraction *)self indirectBlockPanGestureWithState:3 withTranslation:v24, v26];
    }
  }

  if ([v5 panGestureState])
  {
    if (!(([v5 panGestureState] != 1) | v56 & 1))
    {
      v58 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
      [v58 endSelection];

      v59 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
      [v59 switchToRangedSelection];

      [v5 setPreviousRepeatedGranularity:1];
      [v5 setPanGestureState:6];
      [(_UIKeyboardTextSelectionInteraction *)self indirectBlockPanGestureWithState:1 withTranslation:v24, v26];
    }
  }

  else
  {
    v60 = [v5 activeGestures];
    v61 = [v60 containsObject:v4];

    if ((v61 & 1) == 0)
    {
      v62 = [v5 activeGestures];
      [v62 addObject:v4];
    }

    if (v19)
    {
      v63 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
      v64 = [v63 textInputView];
      v24 = *MEMORY[0x1E695EFF8];
      v26 = *(MEMORY[0x1E695EFF8] + 8);
      [v4 _setTranslation:v64 inView:{*MEMORY[0x1E695EFF8], v26}];

      [v5 setLastPanTranslation:{v24, v26}];
    }

    [v5 setPanGestureState:1];
    [(_UIKeyboardTextSelectionInteraction *)self clearKeyboardTouchesForGesture:v4];
    [(_UIKeyboardTextSelectionInteraction *)self _willBeginIndirectSelectionGesture:v4];
    [(_UIKeyboardTextSelectionInteraction *)self indirectCursorPanGestureWithState:1 withTranslation:0 withFlickDirection:v24, v26];
  }

  [v5 setLastPressTimestamp:Current];
  v65 = [MEMORY[0x1E69D4E18] sharedInstance];
  v67[0] = MEMORY[0x1E69E9820];
  v67[1] = 3221225472;
  v67[2] = __59___UIKeyboardTextSelectionInteraction_oneFingerForcePress___block_invoke;
  v67[3] = &unk_1E70FB518;
  v67[4] = self;
  v70 = v24;
  v71 = v26;
  v68 = v5;
  v69 = v4;
  [v65 logBlock:v67 domain:@"com.apple.keyboard.UIKit"];

LABEL_64:
  if (v4)
  {
    v66 = *(v4 + 38);
  }

  else
  {
    v66 = 0;
  }

  [v5 setPreviousForcePressCount:v66];
LABEL_67:
}

@end