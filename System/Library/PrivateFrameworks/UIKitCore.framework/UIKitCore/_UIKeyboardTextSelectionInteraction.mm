@interface _UIKeyboardTextSelectionInteraction
+ (void)attachToExistingRecogniser:(id)recogniser owner:(id)owner forType:(int64_t)type;
- (BOOL)forceTouchGestureRecognizerShouldBegin:(id)begin;
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (BOOL)isPlacedCarefully;
- (CGPoint)acceleratedTranslation:(CGPoint)translation velocity:(CGPoint)velocity isActive:(BOOL)active;
- (CGPoint)boundedTranslation:(CGPoint)translation;
- (CGPoint)cursorLocationForTranslation:(CGPoint)translation;
- (_UIKeyboardTextSelectionInteraction)initWithView:(id)view owner:(id)owner forTypes:(int64_t)types;
- (double)additionalPressDurationForTypingCadence:(id)cadence;
- (id)gestures;
- (id)selectionController;
- (int64_t)layoutDirectionFromFlickDirection:(unint64_t)direction;
- (void)_beginLongForcePressTimerForGesture:(id)gesture;
- (void)_cancelLongForcePressTimer;
- (void)_cancelTouchPadTimer;
- (void)_clearHiding;
- (void)_clearTouchPadCallback;
- (void)_configureLongPressAddedTouchRecognizer:(id)recognizer;
- (void)_configureLongPressRecognizer:(id)recognizer;
- (void)_configureOneFingerForcePressRecognizer:(id)recognizer;
- (void)_configureTwoFingerPanGestureRecognizer:(id)recognizer;
- (void)_configureTwoFingerTapGestureRecognizer:(id)recognizer;
- (void)_didEndIndirectSelectionGesture:(id)gesture;
- (void)_gestureRecognizerFailed:(id)failed;
- (void)_granularityExpandingGestureWithTimeInterval:(double)interval timeGranularity:(double)granularity isMidPan:(BOOL)pan;
- (void)_logTapCounts:(id)counts;
- (void)_longForcePressDetected:(id)detected;
- (void)_prepareForGesture;
- (void)_startTouchPadTimerWithCompletion:(id)completion;
- (void)_tidyUpGesture;
- (void)_willBeginIndirectSelectionGesture:(id)gesture;
- (void)beginCursorManipulationFromRect:(CGRect)rect;
- (void)beginIndirectBlockPanWithTranslation:(CGPoint)translation executionContext:(id)context;
- (void)beginLongPressWithTranslation:(CGPoint)translation touchCount:(unint64_t)count executionContext:(id)context;
- (void)beginTwoFingerCursorPanWithTranslation:(CGPoint)translation executionContext:(id)context;
- (void)beginTwoFingerPanWithTranslation:(CGPoint)translation isShiftKeyBeingHeld:(BOOL)held executionContext:(id)context;
- (void)clearKeyboardTouchesForGesture:(id)gesture;
- (void)dealloc;
- (void)detach;
- (void)disableEnclosingScrollViewScrolling;
- (void)endIndirectBlockPanWithExecutionContext:(id)context;
- (void)endTwoFingerPanWithExecutionContext:(id)context;
- (void)finishLongPressWithExecutionContext:(id)context;
- (void)forwardIndirectGestureWithType:(int64_t)type state:(int64_t)state translation:(CGPoint)translation flickDirection:(unint64_t)direction touchCount:(unint64_t)count;
- (void)gestureRecognizerShouldBeginResponse:(id)response;
- (void)handleRemoteIndirectGestureWithState:(id)state;
- (void)handleTwoFingerFlickInDirection:(int64_t)direction executionContext:(id)context;
- (void)hideInsideRecogniser:(id)recogniser;
- (void)hideRecogniser:(id)recogniser forKey:(id)key;
- (void)indirectBlockPanGestureWithState:(int64_t)state withTranslation:(CGPoint)translation;
- (void)indirectCursorPanGestureWithState:(int64_t)state withTranslation:(CGPoint)translation withFlickDirection:(unint64_t)direction;
- (void)indirectPanGestureWithState:(int64_t)state withTranslation:(CGPoint)translation withFlickDirection:(unint64_t)direction isShiftKeyBeingHeld:(BOOL)held;
- (void)longPressGestureWithState:(int64_t)state withTranslation:(CGPoint)translation touchCount:(unint64_t)count;
- (void)oneFingerForcePan:(id)pan;
- (void)oneFingerForcePress:(id)press;
- (void)panningGesture:(id)gesture;
- (void)panningGestureAddedTouch:(id)touch;
- (void)registerOwner:(id)owner;
- (void)removeTemporaryGesture;
- (void)twoFingerTap:(id)tap;
- (void)updateIndirectBlockPanWithTranslation:(CGPoint)translation executionContext:(id)context;
- (void)updateLongPressWithTranslation:(CGPoint)translation executionContext:(id)context;
- (void)updateTwoFingerPanWithTranslation:(CGPoint)translation executionContext:(id)context;
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
    view = [(UIGestureRecognizer *)addedTouchRecognizer view];
    [view removeGestureRecognizer:self->_addedTouchRecognizer];

    v5 = self->_addedTouchRecognizer;
    self->_addedTouchRecognizer = 0;
  }

  activePress = self->_activePress;
  if (activePress)
  {
    view2 = [(UIGestureRecognizer *)activePress view];
    [view2 removeGestureRecognizer:self->_activePress];

    v8 = self->_activePress;
    self->_activePress = 0;
  }

  [(_UIKeyboardTextSelectionInteraction *)self _cancelTouchPadTimer];
}

- (void)hideRecogniser:(id)recogniser forKey:(id)key
{
  recogniserCopy = recogniser;
  keyCopy = key;
  weakMap = self->_weakMap;
  if (!weakMap)
  {
    strongToWeakObjectsMapTable = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
    v11 = self->_weakMap;
    self->_weakMap = strongToWeakObjectsMapTable;

    weakMap = self->_weakMap;
  }

  [(NSMapTable *)weakMap setObject:recogniserCopy forKey:keyCopy];
  v13.receiver = self;
  v13.super_class = _UIKeyboardTextSelectionInteraction;
  gestureMap = [(UITextInteraction *)&v13 gestureMap];
  [gestureMap removeObjectForKey:keyCopy];

  objc_setAssociatedObject(recogniserCopy, a2, self, 0x301);
}

- (void)hideInsideRecogniser:(id)recogniser
{
  v19 = *MEMORY[0x1E69E9840];
  recogniserCopy = recogniser;
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

      if (v11 == recogniserCopy)
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

  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Didn't find gesture %@ in cluster %@", recogniserCopy, self, v13}];
  v12 = 0;
LABEL_12:
  [(_UIKeyboardTextSelectionInteraction *)self hideRecogniser:recogniserCopy forKey:v12];
}

- (void)registerOwner:(id)owner
{
  objc_storeStrong(&self->_owner, owner);
  ownerCopy = owner;
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
  gestureMap = [(UITextInteraction *)&v8 gestureMap];
  v4 = gestureMap;
  if (self->_weakMap)
  {
    v5 = [gestureMap mutableCopy];
    dictionaryRepresentation = [(NSMapTable *)self->_weakMap dictionaryRepresentation];
    [v5 addEntriesFromDictionary:dictionaryRepresentation];
  }

  else
  {
    v5 = gestureMap;
  }

  return v5;
}

+ (void)attachToExistingRecogniser:(id)recogniser owner:(id)owner forType:(int64_t)type
{
  recogniserCopy = recogniser;
  ownerCopy = owner;
  v9 = objc_alloc_init(self);
  v10 = v9;
  if (v9)
  {
    [v9 registerOwner:ownerCopy];
    switch(type)
    {
      case 4:
        [v10 _configureTwoFingerPanGestureRecognizer:recogniserCopy];
        break;
      case 2:
        [v10 _configureTwoFingerTapGestureRecognizer:recogniserCopy];
        break;
      case 1:
        [v10 _configureOneFingerForcePressRecognizer:recogniserCopy];
        break;
      default:
        [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"Unknown type %li", type}];
        break;
    }

    [v10 addGestureRecognizer:recogniserCopy withName:@"owner"];
    [v10 hideInsideRecogniser:recogniserCopy];
  }
}

- (_UIKeyboardTextSelectionInteraction)initWithView:(id)view owner:(id)owner forTypes:(int64_t)types
{
  typesCopy = types;
  viewCopy = view;
  ownerCopy = owner;
  v23.receiver = self;
  v23.super_class = _UIKeyboardTextSelectionInteraction;
  v10 = [(UITextInteraction *)&v23 init];
  v11 = v10;
  if (v10)
  {
    [(_UIKeyboardTextSelectionInteraction *)v10 registerOwner:ownerCopy];
    if ((typesCopy & 8) != 0)
    {
      v12 = objc_alloc_init(_UIPanOrFlickGestureRecognizer);
      [(UIGestureRecognizer *)v12 setName:@"com.apple.UIKit.textSpacePress"];
      [(_UIKeyboardTextSelectionInteraction *)v11 _configureLongPressRecognizer:v12];
      [(UITextInteraction *)v11 addGestureRecognizer:v12 withName:@"_UIKeyboardTextSelectionGestureLongPress"];
      if ((typesCopy & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v12 = 0;
      if ((typesCopy & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    v13 = objc_alloc_init(_UITextSelectionForceGesture);
    [(_UIKeyboardTextSelectionInteraction *)v11 _configureOneFingerForcePressRecognizer:v13];
    if (_isViewKeyboardLayoutPresent(viewCopy))
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
      _supportsForceTouch = [v17 _supportsForceTouch];

      if (_supportsForceTouch)
      {
        [(UIGestureRecognizer *)v12 requireGestureRecognizerToFail:v13];
      }
    }

LABEL_16:
    if ((typesCopy & 2) != 0)
    {
      v19 = objc_alloc_init(UITextTapRecognizer);
      [(_UIKeyboardTextSelectionInteraction *)v11 _configureTwoFingerTapGestureRecognizer:v19];
      [(UITextInteraction *)v11 addGestureRecognizer:v19 withName:@"_UIKeyboardTextSelectionGestureTwoFingerTap"];

      if ((typesCopy & 4) == 0)
      {
LABEL_23:

        goto LABEL_24;
      }
    }

    else if ((typesCopy & 4) == 0)
    {
      goto LABEL_23;
    }

    v20 = objc_alloc_init(_UIPanOrFlickGestureRecognizer);
    [(UIGestureRecognizer *)v20 setName:@"com.apple.UIKit.textPanOrFlick"];
    [(_UIKeyboardTextSelectionInteraction *)v11 _configureTwoFingerPanGestureRecognizer:v20];
    if (_isViewKeyboardLayoutPresent(viewCopy))
    {
      [(UIPanGestureRecognizer *)v20 _setHysteresis:30.0];
    }

    owner = [(_UIKeyboardTextSelectionInteraction *)v11 owner];
    [owner enableEnclosingScrollViewNestedPinching];

    [(UITextInteraction *)v11 addGestureRecognizer:v20 withName:@"_UIKeyboardTextSelectionGestureTwoFingerPan"];
    goto LABEL_23;
  }

LABEL_24:

  return v11;
}

- (void)_configureOneFingerForcePressRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  _setGestureKeyboardFlag(recognizerCopy, 1);
  v4 = objc_alloc_init(_UILinearForceLevelClassifier);
  [recognizerCopy _setForceLevelClassifier:v4];

  [recognizerCopy setRequiredPreviewForceState:2];
  [recognizerCopy addTarget:self action:sel_oneFingerForcePan_];
  [(UIGestureRecognizer *)recognizerCopy _addForceTarget:sel_oneFingerForcePress_ action:?];
  [(_UIKeyboardTextSelectionGestureController *)self->_owner oneFingerForcePressMinimumDuration];
  [recognizerCopy setMinimumPressDuration:?];
  [(_UIKeyboardTextSelectionGestureController *)self->_owner oneFingerForcePressAllowableMovement];
  [recognizerCopy setAllowableMovement:?];
}

- (void)_configureTwoFingerPanGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  v4 = UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL;
  if (v4 == 1)
  {
    v5 = 2;
  }

  else
  {
    v5 = 18;
  }

  _setGestureKeyboardFlag(recognizerCopy, v5);
  [recognizerCopy addTarget:self action:sel_panningGesture_];
  [recognizerCopy setDelaysTouchesEnded:0];
  [recognizerCopy setMinimumNumberOfTouches:2];
  [recognizerCopy setMaximumNumberOfTouches:2];
  [recognizerCopy setAllowableMovement:16.0];
  [recognizerCopy _setFailsPastHysteresisWithoutMinTouches:1];
  [recognizerCopy setAllowedFlickDirections:15];
  [recognizerCopy setMaximumFlickDuration:0.16];
  [recognizerCopy setMinimumFlickDistance:5.0];
  [recognizerCopy setResponsivenessDelay:0.13];
  if (v4 == 1)
  {
    v6 = +[_UITextSelectionSettings sharedInstance];
    [v6 allowableSeparation];
    [recognizerCopy _setAllowableSeparation:?];

    [recognizerCopy setMinimumPressDuration:1.0];
    [recognizerCopy _setAllowableTouchTimeSeparation:0.06];
    [recognizerCopy _setRequiresImmediateMultipleTouches:1];
  }

  else
  {
    [recognizerCopy _setAllowableTouchTimeSeparation:0.5];
    [recognizerCopy setMinimumPressDuration:1.0];
  }
}

- (void)_configureTwoFingerTapGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  _setGestureKeyboardFlag(recognizerCopy, 2);
  [recognizerCopy addTarget:self action:sel_twoFingerTap_];
  [recognizerCopy setAllowableMovement:60.0];
  if ((UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v4 = +[_UITextSelectionSettings sharedInstance];
    [v4 allowableSeparation];
    [recognizerCopy _setAllowableSeparation:?];
  }

  [recognizerCopy setNumberOfTapsRequired:1];
  [recognizerCopy setNumberOfTouchesRequired:2];
  [recognizerCopy _setAllowableTouchTimeSeparation:0.06];
  [recognizerCopy setMaximumTapDuration:0.13];
}

- (void)_configureLongPressAddedTouchRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  _setGestureKeyboardFlag(recognizerCopy, 8);
  [recognizerCopy addTarget:self action:sel_panningGestureAddedTouch_];
}

- (void)_configureLongPressRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  _setGestureKeyboardFlag(recognizerCopy, 100);
  [recognizerCopy addTarget:self action:sel_panningGesture_];
  [recognizerCopy setLongPressOnly:1];
  [recognizerCopy setDelaysTouchesEnded:0];
  [recognizerCopy setMinimumNumberOfTouches:1];
  [recognizerCopy setMaximumNumberOfTouches:1];
  [recognizerCopy setAllowableMovement:16.0];
  [recognizerCopy _setFailsPastHysteresisWithoutMinTouches:1];
  [recognizerCopy setAllowedFlickDirections:0];
  [recognizerCopy setMinimumPressDuration:0.375];
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  v15.receiver = self;
  v15.super_class = _UIKeyboardTextSelectionInteraction;
  v5 = [(UITextInteraction *)&v15 gestureRecognizerShouldBegin:beginCopy];
  owner = [(_UIKeyboardTextSelectionInteraction *)self owner];
  owner2 = [(_UIKeyboardTextSelectionInteraction *)self owner];
  delegate = [owner2 delegate];

  if (v5)
  {
    view = [beginCopy view];
    isViewKeyboardLayoutPresent = _isViewKeyboardLayoutPresent(view);

    if (isViewKeyboardLayoutPresent)
    {
      if (objc_opt_respondsToSelector() & 1) != 0 && ([delegate transitionInProgress])
      {
LABEL_15:
        LOBYTE(v5) = 0;
        goto LABEL_17;
      }
    }

    else if (objc_opt_respondsToSelector())
    {
      view2 = [beginCopy view];
      [beginCopy locationInView:view2];
      v12 = [delegate shouldAllowSelectionGestures:1 atPoint:1 toBegin:?];

      if (!v12)
      {
        goto LABEL_15;
      }
    }

    if ((_getGestureKeyboardFlag(beginCopy) & 0x40) != 0 && !IsGestureWithinSpecialRegion(beginCopy) || (_getGestureKeyboardFlag(beginCopy) & 8) != 0 && ![owner isPanning])
    {
      goto LABEL_15;
    }

    if (_getGestureKeyboardFlag(beginCopy) & 2) != 0 && (objc_opt_respondsToSelector())
    {
      view3 = [beginCopy view];
      LOBYTE(v5) = [delegate shouldAllowTwoFingerSelectionGestureOnView:view3];
    }

    else
    {
      LOBYTE(v5) = 1;
    }
  }

LABEL_17:

  return v5;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  recognizerCopy = recognizer;
  touchCopy = touch;
  owner = [(_UIKeyboardTextSelectionInteraction *)self owner];
  delegate = [owner delegate];

  view = [recognizerCopy view];
  isViewKeyboardLayoutPresent = _isViewKeyboardLayoutPresent(view);

  if (!isViewKeyboardLayoutPresent)
  {
    goto LABEL_26;
  }

  requiredPreviewForceState = [recognizerCopy requiredPreviewForceState];
  v13 = objc_opt_respondsToSelector();
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (!requiredPreviewForceState && (v13 & 1) != 0 && (isKindOfClass & 1) != 0)
  {
    if (touchCopy)
    {
      [touchCopy timestamp];
      v16 = v15;
    }

    else
    {
      processInfo = [MEMORY[0x1E696AE30] processInfo];
      [processInfo systemUptime];
      v16 = v18;
    }

    [delegate timestampOfLastTouchesEnded];
    if (v19 + 0.5 >= v16)
    {
      goto LABEL_22;
    }
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && ((v20 = requiredPreviewForceState != 0, touchCopy) ? (v21 = touchCopy) : (v21 = recognizerCopy), [recognizerCopy view], v22 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v21, "locationInView:", v22), v24 = v23, v26 = v25, v22, !objc_msgSend(delegate, "shouldAllowSelectionGestures:atPoint:toBegin:", v20, touchCopy == 0, v24, v26)))
  {
LABEL_22:
    v34 = 0;
  }

  else
  {
LABEL_26:
    if (_getGestureKeyboardFlag(recognizerCopy) & 0x10) != 0 && (touchCopy ? (v27 = touchCopy) : (v27 = recognizerCopy), ([recognizerCopy view], v28 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v27, "locationInView:", v28), v30 = v29, v32 = v31, v28, objc_msgSend(recognizerCopy, "view"), v33 = objc_claimAutoreleasedReturnValue(), LODWORD(v28) = IsTouchPointWithinSpecialRegion(v33, v30, v32), v33, v28) && (objc_opt_class(), (objc_opt_isKindOfClass())))
    {
      v34 = 1;
      [recognizerCopy setShouldFailWithoutForce:1];
    }

    else
    {
      v34 = 1;
    }
  }

  return v34;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  gestureRecognizerCopy = gestureRecognizer;
  owner = [(_UIKeyboardTextSelectionInteraction *)self owner];
  delegate = [owner delegate];
  textSelectionController = [delegate textSelectionController];

  if (textSelectionController)
  {
    GestureKeyboardFlag = _getGestureKeyboardFlag(recognizerCopy);
    if (GestureKeyboardFlag & 2 | _getGestureKeyboardFlag(recognizerCopy) & 1)
    {
      selectionController = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
      textInputView = [selectionController textInputView];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        _scroller = [textInputView _scroller];
        v17 = _scroller;
        if (_scroller)
        {
          panGestureRecognizer = [_scroller panGestureRecognizer];
          v12 = panGestureRecognizer == gestureRecognizerCopy;
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

    v19 = _getGestureKeyboardFlag(recognizerCopy);
    v13 = ((_getGestureKeyboardFlag(gestureRecognizerCopy) ^ ~v19) & 0xC) == 0 || v12;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)gestureRecognizerShouldBeginResponse:(id)response
{
  responseCopy = response;
  if ([(_UIKeyboardTextSelectionInteraction *)self gestureRecognizerShouldBegin:?])
  {
    [(_UIKeyboardTextSelectionInteraction *)self panningGesture:responseCopy];
  }
}

- (double)additionalPressDurationForTypingCadence:(id)cadence
{
  cadenceCopy = cadence;
  v5 = 0.0;
  if ((_getGestureKeyboardFlag(cadenceCopy) & 4) != 0)
  {
    owner = [(_UIKeyboardTextSelectionInteraction *)self owner];
    delegate = [owner delegate];

    if (objc_opt_respondsToSelector())
    {
      processInfo = [MEMORY[0x1E696AE30] processInfo];
      [processInfo systemUptime];
      v10 = v9;

      [delegate timestampOfLastTouchesEnded];
      v12 = v11;
      [cadenceCopy minimumPressDuration];
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

- (void)_gestureRecognizerFailed:(id)failed
{
  failedCopy = failed;
  owner = [(_UIKeyboardTextSelectionInteraction *)self owner];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [owner isPanning] && (_getGestureKeyboardFlag(failedCopy) & 2) != 0 && (objc_msgSend(owner, "isSpacePan") & 1) == 0)
  {
    selectionController = [owner selectionController];
    v6 = failedCopy;
    [(_UIKeyboardTextSelectionInteraction *)self _didEndIndirectSelectionGesture:v6];
    if ([owner didFloatCursor])
    {
      [selectionController endFloatingCursor];
    }

    [owner setIsLongPressing:0];
    [owner setIsPanning:0];
    [owner setIsSpacePan:0];
    [owner setDidFloatCursor:0];
    activeGestures = [owner activeGestures];
    [activeGestures removeObject:v6];

    [selectionController resetCursorPosition];
  }

  if ([owner panGestureState] && (_getGestureKeyboardFlag(failedCopy) & 1) != 0)
  {
    selectionController2 = [owner selectionController];
    v9 = failedCopy;
    if ([owner panGestureState] >= 1)
    {
      [(_UIKeyboardTextSelectionInteraction *)self oneFingerForcePan:v9];
    }

    [owner setPanGestureState:0];
    [owner setPreviousForcePressCount:0];
    [owner setDidFloatCursor:0];
    activeGestures2 = [owner activeGestures];
    [activeGestures2 removeObject:v9];

    [selectionController2 resetCursorPosition];
  }
}

- (id)selectionController
{
  owner = [(_UIKeyboardTextSelectionInteraction *)self owner];
  selectionController = [owner selectionController];

  return selectionController;
}

- (void)_didEndIndirectSelectionGesture:(id)gesture
{
  view = [gesture view];
  v5 = _getViewKeyboardLayout(view);
  [v5 didEndIndirectSelectionGesture];

  [(_UIKeyboardTextSelectionInteraction *)self removeTemporaryGesture];
}

- (CGPoint)acceleratedTranslation:(CGPoint)translation velocity:(CGPoint)velocity isActive:(BOOL)active
{
  activeCopy = active;
  y = translation.y;
  x = translation.x;
  v8 = [(_UIKeyboardTextSelectionInteraction *)self owner:translation.x];
  v9 = +[_UICubicPolyTangent keyboardTrackpadCurve];
  [v8 lastPanTranslation];
  v11 = x - v10;
  [v8 lastPanTranslation];
  v13 = y - v12;
  v14 = 0.0;
  if (activeCopy)
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

- (BOOL)forceTouchGestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  owner = [(_UIKeyboardTextSelectionInteraction *)self owner];
  delegate = [owner delegate];

  if (![beginCopy requiredPreviewForceState])
  {
    goto LABEL_7;
  }

  view = [beginCopy view];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    goto LABEL_7;
  }

  if (objc_opt_respondsToSelector())
  {
    processInfo = [MEMORY[0x1E696AE30] processInfo];
    [processInfo systemUptime];
    v11 = v10;

    [delegate timestampOfLastTouchesEnded];
    v13 = v12 + 0.4;
    [beginCopy minimumPressDuration];
    if (v13 + v14 >= v11)
    {
      v16 = 0;
      goto LABEL_8;
    }
  }

  if (objc_opt_respondsToSelector())
  {
    view2 = [beginCopy view];
    [beginCopy locationInView:view2];
    v16 = [delegate shouldAllowSelectionGestures:1 atPoint:1 toBegin:?];
  }

  else
  {
LABEL_7:
    v16 = 1;
  }

LABEL_8:

  return v16;
}

- (CGPoint)boundedTranslation:(CGPoint)translation
{
  y = translation.y;
  x = translation.x;
  if (!+[UIKeyboard isInputSystemUI])
  {
    owner = [(_UIKeyboardTextSelectionInteraction *)self owner];
    selectionController = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
    [owner cursorLocationBase];
    [selectionController boundedDeltaForTranslation:x cursorLocationBase:{y, v8, v9}];
    v11 = v10;
    v13 = v12;

    [owner accumulatedBounding];
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
        [owner setAccumulatedBounding:{v16, v17}];
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

- (void)_willBeginIndirectSelectionGesture:(id)gesture
{
  gestureCopy = gesture;
  view = [gestureCopy view];
  v5 = _getViewKeyboardLayout(view);

  if (v5)
  {
    v6 = [(UITextInteraction *)self recognizerForName:@"_UIKeyboardTextSelectionGestureLongPress"];
    if (v6 == gestureCopy)
    {
    }

    else
    {
      v7 = [(UITextInteraction *)self recognizerForName:@"_UIKeyboardTextSelectionGestureForcePress"];

      if (v7 != gestureCopy)
      {
LABEL_7:
        [v5 willBeginIndirectSelectionGesture];
        goto LABEL_8;
      }
    }

    owner = [(_UIKeyboardTextSelectionInteraction *)self owner];
    feedbackBehaviour = [owner feedbackBehaviour];
    [feedbackBehaviour transitionToState:@"preview" ended:1];

    goto LABEL_7;
  }

LABEL_8:
}

- (void)_prepareForGesture
{
  owner = [(_UIKeyboardTextSelectionInteraction *)self owner];
  feedbackBehaviour = [owner feedbackBehaviour];
  isActive = [feedbackBehaviour isActive];

  if ((isActive & 1) == 0)
  {
    feedbackBehaviour2 = [owner feedbackBehaviour];
    [feedbackBehaviour2 activateWithCompletionBlock:0];
  }
}

- (void)_tidyUpGesture
{
  owner = [(_UIKeyboardTextSelectionInteraction *)self owner];
  feedbackBehaviour = [owner feedbackBehaviour];
  isActive = [feedbackBehaviour isActive];

  if (isActive)
  {
    feedbackBehaviour2 = [owner feedbackBehaviour];
    [feedbackBehaviour2 deactivate];
  }
}

- (BOOL)isPlacedCarefully
{
  owner = [(_UIKeyboardTextSelectionInteraction *)self owner];
  weightedPoint = [owner weightedPoint];
  isPlacedCarefully = [weightedPoint isPlacedCarefully];

  return isPlacedCarefully;
}

- (void)indirectCursorPanGestureWithState:(int64_t)state withTranslation:(CGPoint)translation withFlickDirection:(unint64_t)direction
{
  y = translation.y;
  x = translation.x;
  if (qword_1ED498F00 != -1)
  {
    dispatch_once(&qword_1ED498F00, &__block_literal_global_418);
  }

  owner = [(_UIKeyboardTextSelectionInteraction *)self owner];
  delegate = [owner delegate];
  taskQueue = [delegate taskQueue];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __108___UIKeyboardTextSelectionInteraction_indirectCursorPanGestureWithState_withTranslation_withFlickDirection___block_invoke_3;
  v13[3] = &unk_1E7118C40;
  v13[4] = self;
  v13[5] = state;
  *&v13[6] = x;
  *&v13[7] = y;
  v13[8] = direction;
  [taskQueue addTask:v13 breadcrumb:_MergedGlobals_13_3];
}

- (void)indirectBlockPanGestureWithState:(int64_t)state withTranslation:(CGPoint)translation
{
  y = translation.y;
  x = translation.x;
  if (qword_1ED498F10 != -1)
  {
    dispatch_once(&qword_1ED498F10, &__block_literal_global_70_0);
  }

  owner = [(_UIKeyboardTextSelectionInteraction *)self owner];
  delegate = [owner delegate];
  taskQueue = [delegate taskQueue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __88___UIKeyboardTextSelectionInteraction_indirectBlockPanGestureWithState_withTranslation___block_invoke_3;
  v11[3] = &unk_1E7116E48;
  v11[4] = self;
  v11[5] = state;
  *&v11[6] = x;
  *&v11[7] = y;
  [taskQueue addTask:v11 breadcrumb:qword_1ED498F08];
}

- (void)beginIndirectBlockPanWithTranslation:(CGPoint)translation executionContext:(id)context
{
  y = translation.y;
  x = translation.x;
  contextCopy = context;
  selectionController = [(_UIKeyboardTextSelectionInteraction *)self selectionController];

  if (selectionController)
  {
    selectionController2 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
    [selectionController2 caretRectForCursorPosition];
    [(_UIKeyboardTextSelectionInteraction *)self beginCursorManipulationFromRect:?];

    [(_UIKeyboardTextSelectionInteraction *)self cursorLocationForTranslation:x, y];
    v11 = v10;
    v13 = v12;
    selectionController3 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
    [selectionController3 beginFloatingCursorAtPoint:{v11, v13}];

    selectionController4 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
    owner = [(_UIKeyboardTextSelectionInteraction *)self owner];
    previousRepeatedGranularity = [owner previousRepeatedGranularity];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __93___UIKeyboardTextSelectionInteraction_beginIndirectBlockPanWithTranslation_executionContext___block_invoke;
    v19[3] = &unk_1E70FD058;
    v19[4] = self;
    v18 = [contextCopy childWithContinuation:v19];
    [selectionController4 selectTextWithGranularity:previousRepeatedGranularity atPoint:v18 executionContext:{v11, v13}];
  }

  else
  {
    [contextCopy returnExecutionToParent];
  }
}

- (void)updateIndirectBlockPanWithTranslation:(CGPoint)translation executionContext:(id)context
{
  y = translation.y;
  x = translation.x;
  contextCopy = context;
  selectionController = [(_UIKeyboardTextSelectionInteraction *)self selectionController];

  if (!selectionController)
  {
    [contextCopy returnExecutionToParent];
    goto LABEL_10;
  }

  [(_UIKeyboardTextSelectionInteraction *)self cursorLocationForTranslation:x, y];
  v9 = v8;
  v11 = v10;
  selectionController2 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
  [selectionController2 updateFloatingCursorAtPoint:{v9, v11}];

  owner = [(_UIKeyboardTextSelectionInteraction *)self owner];
  if ([owner panGestureState] == 5)
  {
    selectionController3 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
    [selectionController3 selectTextWithGranularity:objc_msgSend(owner atPoint:"previousRepeatedGranularity") executionContext:{contextCopy, v9, v11}];
  }

  else
  {
    if ([owner panGestureState] != 6 && objc_msgSend(owner, "panGestureState"))
    {
      goto LABEL_9;
    }

    selectionController3 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
    [selectionController3 updateSelectionWithExtentPoint:objc_msgSend(owner withBoundary:"previousRepeatedGranularity") executionContext:{contextCopy, v9, v11}];
  }

LABEL_9:
LABEL_10:
}

- (void)endIndirectBlockPanWithExecutionContext:(id)context
{
  contextCopy = context;
  selectionController = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
  [selectionController endFloatingCursor];

  selectionController2 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
  [selectionController2 endSelection];

  [contextCopy returnExecutionToParent];
}

- (void)beginTwoFingerCursorPanWithTranslation:(CGPoint)translation executionContext:(id)context
{
  y = translation.y;
  x = translation.x;
  contextCopy = context;
  selectionController = [(_UIKeyboardTextSelectionInteraction *)self selectionController];

  if (selectionController)
  {
    selectionController2 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
    hasCaretSelection = [selectionController2 hasCaretSelection];

    selectionController3 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
    v11 = selectionController3;
    if (hasCaretSelection)
    {
      [selectionController3 caretRectForCursorPosition];
    }

    else
    {
      [selectionController3 caretRectForFirstSelectedPosition];
    }

    v16 = v12;
    v17 = v13;
    v18 = v14;
    v19 = v15;

    [(_UIKeyboardTextSelectionInteraction *)self beginCursorManipulationFromRect:v16, v17, v18, v19];
    [(_UIKeyboardTextSelectionInteraction *)self cursorLocationForTranslation:x, y];
    v21 = v20;
    v23 = v22;
    selectionController4 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
    [selectionController4 beginFloatingCursorAtPoint:{v21, v23}];

    selectionController5 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
    [selectionController5 beginSelection];

    selectionController6 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
    [selectionController6 selectPositionAtPoint:contextCopy executionContext:{v21, v23}];
  }

  else
  {
    [contextCopy returnExecutionToParent];
  }
}

- (void)beginTwoFingerPanWithTranslation:(CGPoint)translation isShiftKeyBeingHeld:(BOOL)held executionContext:(id)context
{
  heldCopy = held;
  y = translation.y;
  x = translation.x;
  contextCopy = context;
  selectionController = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
  hasCaretSelection = [selectionController hasCaretSelection];

  if (!hasCaretSelection || heldCopy)
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

    selectionController2 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
    v26 = selectionController2;
    if (v24 > 3)
    {
      if (v24 == 4)
      {
        [selectionController2 caretRectForFirstSelectedPosition];
        v28 = v36;
        v30 = v37;
        v32 = v38;
        v34 = v39;
        v35 = 5;
      }

      else
      {
        [selectionController2 caretRectForLastSelectedPosition];
        v28 = v44;
        v30 = v45;
        v32 = v46;
        v34 = v47;
        v35 = 4;
      }
    }

    else if (v24 == 2)
    {
      [selectionController2 caretRectForRightmostSelectedPosition];
      v28 = v27;
      v30 = v29;
      v32 = v31;
      v34 = v33;
      v35 = 3;
    }

    else
    {
      [selectionController2 caretRectForLeftmostSelectedPosition];
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
    selectionController3 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
    [selectionController3 beginFloatingCursorAtPoint:{v49, v51}];

    selectionController4 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];

    if (selectionController4)
    {
      selectionController5 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
      [selectionController5 beginSelectionWithBaseAtSelectionBoundaryInDirection:v35 initialExtentPoint:contextCopy executionContext:{v49, v51}];
      goto LABEL_21;
    }
  }

  else
  {
    selectionController6 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
    [selectionController6 caretRectForCursorPosition];
    [(_UIKeyboardTextSelectionInteraction *)self beginCursorManipulationFromRect:?];

    [(_UIKeyboardTextSelectionInteraction *)self cursorLocationForTranslation:x, y];
    v13 = v12;
    v15 = v14;
    selectionController7 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
    [selectionController7 beginFloatingCursorAtPoint:{v13, v15}];

    selectionController8 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
    [selectionController8 beginSelection];

    selectionController9 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];

    if (selectionController9)
    {
      selectionController5 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
      [selectionController5 selectPositionAtPoint:contextCopy executionContext:{v13, v15}];
LABEL_21:

      goto LABEL_23;
    }
  }

  [contextCopy returnExecutionToParent];
LABEL_23:
}

- (void)updateTwoFingerPanWithTranslation:(CGPoint)translation executionContext:(id)context
{
  y = translation.y;
  x = translation.x;
  contextCopy = context;
  selectionController = [(_UIKeyboardTextSelectionInteraction *)self selectionController];

  if (selectionController)
  {
    [(_UIKeyboardTextSelectionInteraction *)self cursorLocationForTranslation:x, y];
    v9 = v8;
    v11 = v10;
    selectionController2 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
    [selectionController2 updateFloatingCursorAtPoint:{v9, v11}];

    selectionController3 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
    hasCaretSelection = [selectionController3 hasCaretSelection];

    selectionController4 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
    v16 = selectionController4;
    if (hasCaretSelection)
    {
      [selectionController4 selectPositionAtPoint:contextCopy executionContext:{v9, v11}];
    }

    else
    {
      [selectionController4 updateSelectionWithExtentPoint:contextCopy executionContext:{v9, v11}];
    }
  }

  else
  {
    [contextCopy returnExecutionToParent];
  }
}

- (void)endTwoFingerPanWithExecutionContext:(id)context
{
  contextCopy = context;
  selectionController = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
  [selectionController endFloatingCursor];

  selectionController2 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
  [selectionController2 endSelection];

  owner = [(_UIKeyboardTextSelectionInteraction *)self owner];
  [owner setDidFloatCursor:0];

  [contextCopy returnExecutionToParent];
}

- (void)handleTwoFingerFlickInDirection:(int64_t)direction executionContext:(id)context
{
  contextCopy = context;
  v7 = direction & 0xFFFFFFFFFFFFFFFELL;
  selectionController = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
  hasCaretSelection = [selectionController hasCaretSelection];

  if (hasCaretSelection)
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
    v17 = contextCopy;
    v18 = v11;
    directionCopy = direction;
    [UIView animateWithDuration:50331648 delay:v16 options:0 animations:0.15 completion:0.0];
  }

  else
  {
    selectionController2 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];

    if (selectionController2)
    {
      selectionController3 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
      v14 = selectionController3;
      if (v7 == 2)
      {
        [selectionController3 updateSelectionWithExtentAtBoundary:4 inDirection:direction executionContext:contextCopy];
      }

      else
      {
        [selectionController3 updateImmediateSelectionWithExtentAtBoundary:3 inDirection:direction executionContext:contextCopy];
      }

      selectionController4 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
      [selectionController4 scrollSelectionToVisible];
    }

    else
    {
      [contextCopy returnExecutionToParent];
    }
  }
}

- (int64_t)layoutDirectionFromFlickDirection:(unint64_t)direction
{
  v3 = 3;
  v4 = 5;
  if ((direction & 4) == 0)
  {
    v4 = 2;
  }

  if ((direction & 2) == 0)
  {
    v3 = v4;
  }

  if (direction)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

- (void)beginCursorManipulationFromRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  owner = [(_UIKeyboardTextSelectionInteraction *)self owner];
  if (([owner didFloatCursor] & 1) == 0)
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

    [owner setCursorLocationBase:{v8, v9}];
    [owner setDidFloatCursor:1];
    selectionController = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
    [selectionController willBeginFloatingCursor:1];
  }
}

- (CGPoint)cursorLocationForTranslation:(CGPoint)translation
{
  y = translation.y;
  x = translation.x;
  v5 = translation.x;
  owner = [(_UIKeyboardTextSelectionInteraction *)self owner];
  [owner cursorLocationBase];
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
  owner = [(_UIKeyboardTextSelectionInteraction *)self owner];
  longForcePressAction = [owner longForcePressAction];
  [longForcePressAction cancel];

  [owner setLongForcePressAction:0];
}

- (void)clearKeyboardTouchesForGesture:(id)gesture
{
  gestureCopy = gesture;
  view = [gestureCopy view];
  v6 = _getViewKeyboardLayout(view);

  if (!v6)
  {
    goto LABEL_11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    touchesForTap = [gestureCopy touchesForTap];
LABEL_7:
    v8 = touchesForTap;
    goto LABEL_8;
  }

  if ((_getGestureKeyboardFlag(gestureCopy) & 2) != 0)
  {
    touchesForTap = [(UIPanGestureRecognizer *)gestureCopy _activeTouches];
    goto LABEL_7;
  }

  v8 = 0;
LABEL_8:
  if (qword_1ED498F20 != -1)
  {
    dispatch_once(&qword_1ED498F20, &__block_literal_global_74_2);
  }

  owner = [(_UIKeyboardTextSelectionInteraction *)self owner];
  delegate = [owner delegate];
  taskQueue = [delegate taskQueue];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __70___UIKeyboardTextSelectionInteraction_clearKeyboardTouchesForGesture___block_invoke_3;
  v14[3] = &unk_1E70FD1B8;
  v15 = v6;
  v16 = v8;
  v12 = qword_1ED498F18;
  v13 = v8;
  [taskQueue addTask:v14 breadcrumb:v12];

LABEL_11:
}

- (void)_granularityExpandingGestureWithTimeInterval:(double)interval timeGranularity:(double)granularity isMidPan:(BOOL)pan
{
  owner = [(_UIKeyboardTextSelectionInteraction *)self owner];
  if (qword_1ED498F30 != -1)
  {
    dispatch_once(&qword_1ED498F30, &__block_literal_global_78_1);
  }

  delegate = [owner delegate];
  taskQueue = [delegate taskQueue];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __109___UIKeyboardTextSelectionInteraction__granularityExpandingGestureWithTimeInterval_timeGranularity_isMidPan___block_invoke_3;
  v14[3] = &unk_1E7118C90;
  intervalCopy = interval;
  granularityCopy = granularity;
  panCopy = pan;
  v14[4] = self;
  v15 = owner;
  v12 = qword_1ED498F28;
  v13 = owner;
  [taskQueue addTask:v14 breadcrumb:v12];
}

- (void)disableEnclosingScrollViewScrolling
{
  owner = [(_UIKeyboardTextSelectionInteraction *)self owner];
  delegate = [owner delegate];
  textSelectionController = [delegate textSelectionController];

  if (textSelectionController)
  {
    selectionController = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
    textInputView = [selectionController textInputView];
    _scroller = [textInputView _scroller];

    v8 = _scroller;
    if (_scroller)
    {
      panGestureRecognizer = [_scroller panGestureRecognizer];
      if ([panGestureRecognizer isEnabled])
      {
        [panGestureRecognizer setEnabled:0];
        [panGestureRecognizer setEnabled:1];
      }

      v8 = _scroller;
    }
  }
}

- (void)longPressGestureWithState:(int64_t)state withTranslation:(CGPoint)translation touchCount:(unint64_t)count
{
  y = translation.y;
  x = translation.x;
  if (+[UIKeyboard isInputSystemUI](UIKeyboard, "isInputSystemUI") && (+[UIKeyboardImpl activeInstance](UIKeyboardImpl, "activeInstance"), v10 = objc_claimAutoreleasedReturnValue(), [v10 inputDelegateManager], v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "forwardingInputDelegate"), v12 = objc_claimAutoreleasedReturnValue(), v12, v11, v10, !v12))
  {

    [(_UIKeyboardTextSelectionInteraction *)self forwardIndirectGestureWithType:8 state:state translation:0 flickDirection:count touchCount:x, y];
  }

  else
  {
    if (qword_1ED498F40 != -1)
    {
      dispatch_once(&qword_1ED498F40, &__block_literal_global_84_1);
    }

    owner = [(_UIKeyboardTextSelectionInteraction *)self owner];
    delegate = [owner delegate];
    taskQueue = [delegate taskQueue];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __92___UIKeyboardTextSelectionInteraction_longPressGestureWithState_withTranslation_touchCount___block_invoke_3;
    v16[3] = &unk_1E7118C40;
    v16[4] = self;
    v16[5] = state;
    *&v16[6] = x;
    *&v16[7] = y;
    v16[8] = count;
    [taskQueue addTask:v16 breadcrumb:qword_1ED498F38];
  }
}

- (void)beginLongPressWithTranslation:(CGPoint)translation touchCount:(unint64_t)count executionContext:(id)context
{
  y = translation.y;
  x = translation.x;
  contextCopy = context;
  selectionController = [(_UIKeyboardTextSelectionInteraction *)self selectionController];

  if (selectionController)
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
    selectionController2 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
    [selectionController2 caretRectForCursorPosition];
    [(_UIKeyboardTextSelectionInteraction *)self beginCursorManipulationFromRect:?];

    [(_UIKeyboardTextSelectionInteraction *)self cursorLocationForTranslation:x, y];
    v17 = v16;
    v19 = v18;
    selectionController3 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
    [selectionController3 beginFloatingCursorAtPoint:{v17, v19}];

    selectionController4 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
    v22 = selectionController4;
    if (count == 1)
    {
      [selectionController4 beginSelection];

      selectionController5 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
      [selectionController5 updateSelectionWithExtentPoint:contextCopy executionContext:{v17, v19}];
    }

    else
    {
      [selectionController4 beginSelectionWithBaseAtSelectionBoundaryInDirection:v14 initialExtentPoint:contextCopy executionContext:{v17, v19}];
    }
  }

  else
  {
    [contextCopy returnExecutionToParent];
  }
}

- (void)updateLongPressWithTranslation:(CGPoint)translation executionContext:(id)context
{
  y = translation.y;
  x = translation.x;
  contextCopy = context;
  selectionController = [(_UIKeyboardTextSelectionInteraction *)self selectionController];

  if (selectionController)
  {
    [(_UIKeyboardTextSelectionInteraction *)self cursorLocationForTranslation:x, y];
    v9 = v8;
    v11 = v10;
    selectionController2 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
    [selectionController2 updateFloatingCursorAtPoint:{v9, v11}];

    selectionController3 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
    [selectionController3 updateSelectionWithExtentPoint:contextCopy executionContext:{v9, v11}];
  }

  else
  {
    [contextCopy returnExecutionToParent];
  }
}

- (void)finishLongPressWithExecutionContext:(id)context
{
  contextCopy = context;
  selectionController = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
  [selectionController endFloatingCursor];

  selectionController2 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
  [selectionController2 endSelection];

  [contextCopy returnExecutionToParent];
}

- (void)forwardIndirectGestureWithType:(int64_t)type state:(int64_t)state translation:(CGPoint)translation flickDirection:(unint64_t)direction touchCount:(unint64_t)count
{
  y = translation.y;
  x = translation.x;
  v13 = +[UIKeyboardImpl activeInstance];
  inputDelegateManager = [v13 inputDelegateManager];
  inputSystemSourceSession = [inputDelegateManager inputSystemSourceSession];

  if (inputSystemSourceSession)
  {
    textOperations = [inputSystemSourceSession textOperations];
    v16 = objc_alloc_init(_UIKeyboardIndirectTextSelectionGestureState);
    [(_UIKeyboardIndirectTextSelectionGestureState *)v16 setType:type];
    [(_UIKeyboardIndirectTextSelectionGestureState *)v16 setState:state];
    [(_UIKeyboardIndirectTextSelectionGestureState *)v16 setTranslation:x, y];
    [(_UIKeyboardIndirectTextSelectionGestureState *)v16 setFlickDirection:direction];
    [(_UIKeyboardIndirectTextSelectionGestureState *)v16 setTouchCount:count];
    v17 = +[UIKeyboardImpl activeInstance];
    -[_UIKeyboardIndirectTextSelectionGestureState setIsShiftKeyBeingHeld:](v16, "setIsShiftKeyBeingHeld:", [v17 isShiftKeyBeingHeld]);

    [textOperations setCustomInfoType:0x1EFB7C930];
    [textOperations setCustomInfo:v16];
    [inputSystemSourceSession flushOperations];
  }
}

- (void)handleRemoteIndirectGestureWithState:(id)state
{
  stateCopy = state;
  if ([(_UIKeyboardIndirectTextSelectionGestureState *)stateCopy type]== 2)
  {
    [(_UIKeyboardTextSelectionInteraction *)self twoFingerTap:0];
  }

  else
  {
    [(_UIKeyboardIndirectTextSelectionGestureState *)stateCopy translation];
    [(_UIKeyboardTextSelectionInteraction *)self boundedTranslation:?];
    v6 = v5;
    v8 = v7;
    if ([(_UIKeyboardIndirectTextSelectionGestureState *)stateCopy type]== 4)
    {
      if ([(_UIKeyboardIndirectTextSelectionGestureState *)stateCopy state]== 1)
      {
        v9 = *MEMORY[0x1E695EFF8];
        v10 = *(MEMORY[0x1E695EFF8] + 8);
        owner = [(_UIKeyboardTextSelectionInteraction *)self owner];
        [owner setAccumulatedBounding:{v9, v10}];

        [(_UIKeyboardTextSelectionInteraction *)self indirectCursorPanGestureWithState:1 withTranslation:2 withFlickDirection:v9, v10];
      }

      [(_UIKeyboardTextSelectionInteraction *)self indirectPanGestureWithState:[(_UIKeyboardIndirectTextSelectionGestureState *)stateCopy state] withTranslation:[(_UIKeyboardIndirectTextSelectionGestureState *)stateCopy flickDirection] withFlickDirection:[(_UIKeyboardIndirectTextSelectionGestureState *)stateCopy isShiftKeyBeingHeld] isShiftKeyBeingHeld:v6, v8];
    }

    else if ([(_UIKeyboardIndirectTextSelectionGestureState *)stateCopy type]== 8)
    {
      if ([(_UIKeyboardIndirectTextSelectionGestureState *)self->_previousRemoteGestureState type]== 4 && [(_UIKeyboardIndirectTextSelectionGestureState *)self->_previousRemoteGestureState state]== 2 && [(_UIKeyboardIndirectTextSelectionGestureState *)stateCopy state]== 2)
      {
        selectionController = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
        [selectionController restartSelection];
      }

      [(_UIKeyboardTextSelectionInteraction *)self longPressGestureWithState:[(_UIKeyboardIndirectTextSelectionGestureState *)stateCopy state] withTranslation:[(_UIKeyboardIndirectTextSelectionGestureState *)stateCopy touchCount] touchCount:v6, v8];
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

    if ([(_UIKeyboardIndirectTextSelectionGestureState *)stateCopy state]>= 3)
    {
      owner2 = [(_UIKeyboardTextSelectionInteraction *)self owner];
      [owner2 setDidFloatCursor:0];

      selectionController2 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
      [selectionController2 resetCursorPosition];
    }
  }

  previousRemoteGestureState = self->_previousRemoteGestureState;
  self->_previousRemoteGestureState = stateCopy;
}

- (void)indirectPanGestureWithState:(int64_t)state withTranslation:(CGPoint)translation withFlickDirection:(unint64_t)direction isShiftKeyBeingHeld:(BOOL)held
{
  y = translation.y;
  x = translation.x;
  if (+[UIKeyboard isInputSystemUI](UIKeyboard, "isInputSystemUI") && (+[UIKeyboardImpl activeInstance](UIKeyboardImpl, "activeInstance"), v12 = objc_claimAutoreleasedReturnValue(), [v12 inputDelegateManager], v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "forwardingInputDelegate"), v14 = objc_claimAutoreleasedReturnValue(), v14, v13, v12, !v14))
  {

    [(_UIKeyboardTextSelectionInteraction *)self forwardIndirectGestureWithType:4 state:state translation:direction flickDirection:0 touchCount:x, y];
  }

  else
  {
    if (qword_1ED498F50 != -1)
    {
      dispatch_once(&qword_1ED498F50, &__block_literal_global_95);
    }

    owner = [(_UIKeyboardTextSelectionInteraction *)self owner];
    delegate = [owner delegate];
    taskQueue = [delegate taskQueue];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __122___UIKeyboardTextSelectionInteraction_indirectPanGestureWithState_withTranslation_withFlickDirection_isShiftKeyBeingHeld___block_invoke_3;
    v18[3] = &unk_1E7118CE0;
    v18[4] = self;
    v18[5] = state;
    *&v18[6] = x;
    *&v18[7] = y;
    heldCopy = held;
    v18[8] = direction;
    [taskQueue addTask:v18 breadcrumb:qword_1ED498F48];
  }
}

- (void)_beginLongForcePressTimerForGesture:(id)gesture
{
  gestureCopy = gesture;
  owner = [(_UIKeyboardTextSelectionInteraction *)self owner];
  longForcePressAction = [owner longForcePressAction];

  if (longForcePressAction)
  {
    longForcePressAction2 = [owner longForcePressAction];
    [longForcePressAction2 cancel];
  }

  v7 = [[UIDelayedAction alloc] initWithTarget:self action:sel__longForcePressDetected_ userInfo:gestureCopy delay:0.2];

  [owner setLongForcePressAction:v7];
}

- (void)_longForcePressDetected:(id)detected
{
  detectedCopy = detected;
  owner = [(_UIKeyboardTextSelectionInteraction *)self owner];
  [owner setPreviousForcePressCount:{objc_msgSend(owner, "previousForcePressCount") - 1}];
  [(_UIKeyboardTextSelectionInteraction *)self _cancelLongForcePressTimer];
  [(_UIKeyboardTextSelectionInteraction *)self oneFingerForcePress:detectedCopy];
}

- (void)_logTapCounts:(id)counts
{
  countsCopy = counts;
  v5 = [countsCopy valueForKey:@"tapLogValue"];
  intValue = [v5 intValue];

  v7 = [countsCopy valueForKey:@"isOnKeyboard"];

  +[_UIKeyboardUsageTracking keyboardGestureTwoFingerTap:withTapCount:](_UIKeyboardUsageTracking, "keyboardGestureTwoFingerTap:withTapCount:", [v7 BOOLValue], intValue);
  owner = [(_UIKeyboardTextSelectionInteraction *)self owner];
  tapLogTimer = [owner tapLogTimer];
  [tapLogTimer cancel];

  [owner setTapLogTimer:0];
}

- (void)oneFingerForcePan:(id)pan
{
  panCopy = pan;
  selectionController = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
  textInputView = [selectionController textInputView];
  [panCopy _translationInView:textInputView];
  v8 = v7;
  v10 = v9;

  owner = [(_UIKeyboardTextSelectionInteraction *)self owner];
  longForcePressAction = [owner longForcePressAction];

  if (longForcePressAction)
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

  if ([panCopy state] == 1)
  {
    v17 = *MEMORY[0x1E695EFF8];
    v18 = *(MEMORY[0x1E695EFF8] + 8);
    [owner setAccumulatedAcceleration:{*MEMORY[0x1E695EFF8], v18}];
    [owner setAccumulatedBounding:{v17, v18}];
    [owner setLastPanTranslation:{v8, v10}];
    weightedPoint = [owner weightedPoint];
    [weightedPoint clearHistory];

    weightedPoint2 = [owner weightedPoint];
    [weightedPoint2 addPoint:{v8, v10}];

    view = [panCopy view];
    [_UIKeyboardUsageTracking keyboardGestureOneFingerForcePan:_isViewKeyboardLayoutPresent(view)];

    mEMORY[0x1E69D4E18] = [MEMORY[0x1E69D4E18] sharedInstance];
    v59[0] = MEMORY[0x1E69E9820];
    v59[1] = 3221225472;
    v59[2] = __57___UIKeyboardTextSelectionInteraction_oneFingerForcePan___block_invoke;
    v59[3] = &unk_1E70FB518;
    v59[4] = self;
    v62 = v8;
    v63 = v10;
    v60 = owner;
    v61 = panCopy;
    [mEMORY[0x1E69D4E18] logBlock:v59 domain:@"com.apple.keyboard.UIKit"];

    [(_UIKeyboardTextSelectionInteraction *)self _prepareForGesture];
  }

  if ([panCopy state] >= 2)
  {
    v23 = +[_UITextSelectionSettings sharedInstance];
    shouldUseAcceleration = [v23 shouldUseAcceleration];
    bOOLValue = [shouldUseAcceleration BOOLValue];

    if (bOOLValue)
    {
      selectionController2 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
      textInputView2 = [selectionController2 textInputView];
      [panCopy velocityInView:textInputView2];
      v29 = v28;
      v31 = v30;

      if ([owner panGestureState])
      {
        v32 = panCopy;
        v33 = [v32 state] != 3 && objc_msgSend(v32, "state") != 4 && objc_msgSend(v32, "state") != 5;
      }

      else
      {
        v33 = 0;
      }

      [(_UIKeyboardTextSelectionInteraction *)self acceleratedTranslation:v33 velocity:v8 isActive:v10, v29, v31];
      v35 = v34;
      v37 = v36;
      [owner setLastPanTranslation:{v8, v10}];
      v10 = v37;
      v8 = v35;
    }

    weightedPoint3 = [owner weightedPoint];
    [weightedPoint3 addPoint:{v8, v10}];

    v39 = panCopy;
    if ([v39 state] == 3 || objc_msgSend(v39, "state") == 4)
    {
    }

    else
    {
      state = [v39 state];

      if (state != 5)
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
      weightedPoint4 = [owner weightedPoint];
      [weightedPoint4 weightedPoint];
      v8 = v41;
      v10 = v42;
    }

    goto LABEL_22;
  }

LABEL_23:
  if ([owner panGestureState] == 1)
  {
    v46 = panCopy;
    if ([v46 state] == 3 || objc_msgSend(v46, "state") == 4)
    {
    }

    else
    {
      state2 = [v46 state];

      if (state2 != 5)
      {
        [(_UIKeyboardTextSelectionInteraction *)self indirectCursorPanGestureWithState:2 withTranslation:0 withFlickDirection:v8, v10];
        goto LABEL_34;
      }
    }

    [owner setDidFloatCursor:0];
    -[_UIKeyboardTextSelectionInteraction indirectCursorPanGestureWithState:withTranslation:withFlickDirection:](self, "indirectCursorPanGestureWithState:withTranslation:withFlickDirection:", [v46 state], 0, v8, v10);
    goto LABEL_33;
  }

  if ([owner panGestureState] == 6)
  {
    v47 = panCopy;
    if ([v47 state] == 3 || objc_msgSend(v47, "state") == 4)
    {
    }

    else
    {
      state3 = [v47 state];

      if (state3 != 5)
      {
        [(_UIKeyboardTextSelectionInteraction *)self indirectBlockPanGestureWithState:2 withTranslation:v8, v10];
        goto LABEL_34;
      }
    }

    [owner setDidFloatCursor:0];
    -[_UIKeyboardTextSelectionInteraction indirectBlockPanGestureWithState:withTranslation:](self, "indirectBlockPanGestureWithState:withTranslation:", [v47 state], v8, v10);
LABEL_33:
    [owner setPanGestureState:0];
  }

LABEL_34:
  v48 = panCopy;
  if ([v48 state] == 3 || objc_msgSend(v48, "state") == 4)
  {
  }

  else
  {
    state4 = [v48 state];

    if (state4 != 5)
    {
      goto LABEL_38;
    }
  }

  [owner setDidFloatCursor:0];
  [owner setPreviousForcePressCount:0];
  [owner setPanGestureState:0];
  [(_UIKeyboardTextSelectionInteraction *)self _didEndIndirectSelectionGesture:v48];
  activeGestures = [owner activeGestures];
  [activeGestures removeObject:v48];

  selectionController3 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
  [selectionController3 resetCursorPosition];

  [(_UIKeyboardTextSelectionInteraction *)self _tidyUpGesture];
  mEMORY[0x1E69D4E18]2 = [MEMORY[0x1E69D4E18] sharedInstance];
  v55[0] = MEMORY[0x1E69E9820];
  v55[1] = 3221225472;
  v55[2] = __57___UIKeyboardTextSelectionInteraction_oneFingerForcePan___block_invoke_2;
  v55[3] = &unk_1E7118D08;
  v55[4] = self;
  v57 = v8;
  v58 = v10;
  v56 = v48;
  [mEMORY[0x1E69D4E18]2 logBlock:v55 domain:@"com.apple.keyboard.UIKit"];

LABEL_38:
}

- (void)twoFingerTap:(id)tap
{
  v40[2] = *MEMORY[0x1E69E9840];
  tapCopy = tap;
  owner = [(_UIKeyboardTextSelectionInteraction *)self owner];
  Current = CFAbsoluteTimeGetCurrent();
  [owner twoFingerTapTimestamp];
  v8 = v7;
  [(_UIKeyboardTextSelectionInteraction *)self clearKeyboardTouchesForGesture:tapCopy];
  if (+[UIKeyboard isInputSystemUI])
  {
    state = [tapCopy state];
    [(_UIKeyboardTextSelectionInteraction *)self forwardIndirectGestureWithType:2 state:state translation:0 flickDirection:0 touchCount:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];
  }

  else
  {
    [(_UIKeyboardTextSelectionInteraction *)self _granularityExpandingGestureWithTimeInterval:0 timeGranularity:Current - v8 isMidPan:0.667];
  }

  [owner setTwoFingerTapTimestamp:Current];
  delegate = [owner delegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    delegate2 = [owner delegate];
    [delegate2 setTwoFingerTapTimestamp:Current];
  }

  tapLogTimer = [owner tapLogTimer];

  if (!tapLogTimer)
  {
    view = [tapCopy view];
    isViewKeyboardLayoutPresent = _isViewKeyboardLayoutPresent(view);

    v40[0] = &unk_1EFE31FC0;
    v39[0] = @"tapLogValue";
    v39[1] = @"isOnKeyboard";
    v27 = [MEMORY[0x1E696AD98] numberWithBool:isViewKeyboardLayoutPresent];
    v40[1] = v27;
    v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:v39 count:2];
    userInfo = [v28 mutableCopy];

    v29 = [UIDelayedAction alloc];
    v30 = [(UIDelayedAction *)v29 initWithTarget:self action:sel__logTapCounts_ userInfo:userInfo delay:*MEMORY[0x1E695D918] mode:0.667];
    [owner setTapLogTimer:v30];

    mEMORY[0x1E69D4E18] = [MEMORY[0x1E69D4E18] sharedInstance];
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __52___UIKeyboardTextSelectionInteraction_twoFingerTap___block_invoke;
    v35[3] = &unk_1E7118D30;
    v22 = &v36;
    v36 = owner;
    v38 = isViewKeyboardLayoutPresent;
    v23 = &v37;
    v37 = tapCopy;
    v24 = v35;
    goto LABEL_10;
  }

  tapLogTimer2 = [owner tapLogTimer];
  userInfo = [tapLogTimer2 userInfo];

  v16 = [userInfo objectForKey:@"tapLogValue"];
  intValue = [v16 intValue];
  v18 = (intValue + 1);

  v19 = [MEMORY[0x1E696AD98] numberWithInt:v18];
  [userInfo setValue:v19 forKey:@"tapLogValue"];

  tapLogTimer3 = [owner tapLogTimer];
  [tapLogTimer3 touch];

  if (intValue >= 1)
  {
    mEMORY[0x1E69D4E18] = [MEMORY[0x1E69D4E18] sharedInstance];
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __52___UIKeyboardTextSelectionInteraction_twoFingerTap___block_invoke_2;
    v31[3] = &unk_1E7118D58;
    v22 = &v32;
    v32 = owner;
    v23 = &v33;
    v33 = tapCopy;
    v34 = v18;
    v24 = v31;
LABEL_10:
    [mEMORY[0x1E69D4E18] logBlock:v24 domain:@"com.apple.keyboard.UIKit"];
  }
}

- (void)panningGestureAddedTouch:(id)touch
{
  touchCopy = touch;
  if ([touchCopy state] == 1)
  {
    owner = [(_UIKeyboardTextSelectionInteraction *)self owner];
    isPanning = [owner isPanning];

    if (isPanning)
    {
      owner2 = [(_UIKeyboardTextSelectionInteraction *)self owner];
      [owner2 setHadAddedTouch:1];
    }
  }

  else if ([touchCopy state] == 3)
  {
    owner3 = [(_UIKeyboardTextSelectionInteraction *)self owner];
    isPanning2 = [owner3 isPanning];

    if ((isPanning2 & 1) == 0)
    {
      if (self->_touchPadTimerCompletion)
      {
        [(_UIKeyboardTextSelectionInteraction *)self _cancelTouchPadTimer];
        (*(self->_touchPadTimerCompletion + 2))();
      }
    }
  }
}

- (void)panningGesture:(id)gesture
{
  gestureCopy = gesture;
  owner = [(_UIKeyboardTextSelectionInteraction *)self owner];
  delegate = [owner delegate];
  state = [gestureCopy state];
  if ((_getGestureKeyboardFlag(gestureCopy) & 2) == 0)
  {
    goto LABEL_12;
  }

  if (([owner suppressTwoFingerPan] & 1) == 0 && state <= 1)
  {
    selectionController = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
    textInputView = [selectionController textInputView];
    _scroller = [textInputView _scroller];

    if ([_scroller isZooming])
    {
      [owner setSuppressTwoFingerPan:1];
    }
  }

  if (![owner suppressTwoFingerPan])
  {
LABEL_12:
    [(_UIKeyboardTextSelectionInteraction *)self _cancelTouchPadTimer];
    Current = CFAbsoluteTimeGetCurrent();
    selectionController2 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
    textInputView2 = [selectionController2 textInputView];
    [gestureCopy translationInView:textInputView2];
    v17 = v16;
    v19 = v18;

    v20 = &OBJC_IVAR___UIKeyboardLayoutStar__flickPopupView;
    if (([owner isPanning] & 1) != 0 || state > 1 || (objc_opt_respondsToSelector() & 1) != 0 && (objc_msgSend(gestureCopy, "view"), v21 = objc_claimAutoreleasedReturnValue(), objc_msgSend(gestureCopy, "locationInView:", v21), v22 = objc_msgSend(delegate, "shouldAllowSelectionGestures:atPoint:toBegin:", 0, 1), v21, !v22))
    {
      if ([owner isPanning])
      {
        v40 = +[_UITextSelectionSettings sharedInstance];
        shouldUseAcceleration = [v40 shouldUseAcceleration];
        bOOLValue = [shouldUseAcceleration BOOLValue];

        if (bOOLValue)
        {
          selectionController3 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
          textInputView3 = [selectionController3 textInputView];
          [gestureCopy velocityInView:textInputView3];
          v46 = v45;
          v48 = v47;

          v49 = gestureCopy;
          v50 = [v49 state] != 3 && objc_msgSend(v49, "state") != 4 && objc_msgSend(v49, "state") != 5;

          [(_UIKeyboardTextSelectionInteraction *)self acceleratedTranslation:v50 velocity:v17 isActive:v19, v46, v48];
          v53 = v52;
          v55 = v54;
          [owner setLastPanTranslation:{v17, v19}];
          v19 = v55;
          v17 = v53;
        }

        [(_UIKeyboardTextSelectionInteraction *)self boundedTranslation:v17, v19];
        v17 = v56;
        v19 = v57;
        weightedPoint = [owner weightedPoint];
        [weightedPoint addPoint:{v17, v19}];

        v59 = gestureCopy;
        if ([v59 state] == 3 || objc_msgSend(v59, "state") == 4)
        {
        }

        else
        {
          state2 = [v59 state];

          if (state2 != 5)
          {
            goto LABEL_53;
          }
        }

        if ([(_UIKeyboardTextSelectionInteraction *)self isPlacedCarefully])
        {
          weightedPoint2 = [owner weightedPoint];
          [weightedPoint2 weightedPoint];
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
      activeGestures = [owner activeGestures];
      [activeGestures addObject:gestureCopy];

      selectionController4 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
      textInputView4 = [selectionController4 textInputView];
      v26 = *MEMORY[0x1E695EFF8];
      v27 = *(MEMORY[0x1E695EFF8] + 8);
      [gestureCopy setTranslation:textInputView4 inView:{*MEMORY[0x1E695EFF8], v27}];

      [owner setLastPanTranslation:{v26, v27}];
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

      [owner setIsPanning:{1, 1.0, v28, v29}];
      [owner setIsSpacePan:(_getGestureKeyboardFlag(gestureCopy) >> 2) & 1];
      [owner setSpacePanDistance:0.0];
      [owner setHadAddedTouch:0];
      [owner setIsLongPressing:0];
      [owner setLastPanTranslation:{v17, v19}];
      [owner setAccumulatedAcceleration:{v26, v27}];
      [owner setAccumulatedBounding:{v26, v27}];
      [(_UIKeyboardTextSelectionInteraction *)self clearKeyboardTouchesForGesture:gestureCopy];
      [(_UIKeyboardTextSelectionInteraction *)self _willBeginIndirectSelectionGesture:gestureCopy];
      [(_UIKeyboardTextSelectionInteraction *)self disableEnclosingScrollViewScrolling];
      [(_UIKeyboardTextSelectionInteraction *)self _prepareForGesture];
      weightedPoint3 = [owner weightedPoint];
      [weightedPoint3 clearHistory];

      weightedPoint4 = [owner weightedPoint];
      [weightedPoint4 addPoint:{v17, v19}];

      if ((_getGestureKeyboardFlag(gestureCopy) & 4) != 0)
      {
        view = [gestureCopy view];
        isViewKeyboardLayoutPresent = _isViewKeyboardLayoutPresent(view);

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

      if ((_getGestureKeyboardFlag(gestureCopy) & 0x20) != 0 && !self->_touchPadTimerCompletion)
      {
        v37 = +[UIKeyboardImpl activeInstance];
        isShiftKeyBeingHeld = [v37 isShiftKeyBeingHeld];

        if ((isShiftKeyBeingHeld & 1) == 0)
        {
          [(_UIKeyboardTextSelectionInteraction *)self indirectCursorPanGestureWithState:1 withTranslation:2 withFlickDirection:v26, v27];
        }
      }

      mEMORY[0x1E69D4E18] = [MEMORY[0x1E69D4E18] sharedInstance];
      v115[0] = MEMORY[0x1E69E9820];
      v115[1] = 3221225472;
      v115[2] = __54___UIKeyboardTextSelectionInteraction_panningGesture___block_invoke;
      v115[3] = &unk_1E7118D08;
      v116 = owner;
      v117 = gestureCopy;
      v118 = v17;
      v119 = v19;
      [mEMORY[0x1E69D4E18] logBlock:v115 domain:@"com.apple.keyboard.UIKit"];
    }

LABEL_53:
    if ([owner isSpacePan])
    {
      v64 = sqrt(v19 * v19 + v17 * v17);
      [owner spacePanDistance];
      if (v64 > v65)
      {
        [owner setSpacePanDistance:v64];
      }
    }

    if (objc_opt_respondsToSelector())
    {
      hasMarkedText = [delegate hasMarkedText];
    }

    else
    {
      hasMarkedText = 0;
    }

    if (![owner isPanning])
    {
      goto LABEL_67;
    }

    if ((_getGestureKeyboardFlag(gestureCopy) & 2) != 0)
    {
      if ([gestureCopy didLongPress])
      {
        hadAddedTouch = 1;
        goto LABEL_66;
      }
    }

    else if ((_getGestureKeyboardFlag(gestureCopy) & 4) == 0)
    {
      hadAddedTouch = 0;
      goto LABEL_66;
    }

    hadAddedTouch = [owner hadAddedTouch];
LABEL_66:
    v68 = +[UIKeyboardImpl activeInstance];
    isShiftKeyBeingHeld2 = [v68 isShiftKeyBeingHeld];

    if (!(hasMarkedText & 1 | (((isShiftKeyBeingHeld2 | hadAddedTouch) & 1) == 0)))
    {
      if ([owner hadAddedTouch])
      {
        selectionController5 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
        [selectionController5 restartSelection];
      }

      if (([owner isLongPressing] & 1) == 0)
      {
        [owner setIsLongPressing:1];
        selectionController6 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
        [selectionController6 switchToRangedSelection];
      }

      if ((_getGestureKeyboardFlag(gestureCopy) & 4) != 0)
      {
        v75 = 1;
      }

      else
      {
        v75 = 2;
      }

      [(_UIKeyboardTextSelectionInteraction *)self longPressGestureWithState:state withTranslation:v75 touchCount:v17, v19];
      goto LABEL_81;
    }

LABEL_67:
    if (![owner isPanning])
    {
      goto LABEL_81;
    }

    [owner twoFingerTapTimestamp];
    if (Current - v70 > 0.667)
    {
      v71 = +[_UITextSelectionSettings sharedInstance];
      allowExtendingSelections = [v71 allowExtendingSelections];
      if ([allowExtendingSelections BOOLValue])
      {
      }

      else
      {
        GestureKeyboardFlag = _getGestureKeyboardFlag(gestureCopy);

        if ((GestureKeyboardFlag & 0x10) != 0)
        {
          -[_UIKeyboardTextSelectionInteraction indirectCursorPanGestureWithState:withTranslation:withFlickDirection:](self, "indirectCursorPanGestureWithState:withTranslation:withFlickDirection:", [gestureCopy state], objc_msgSend(gestureCopy, "recognizedFlickDirection"), v17, v19);
LABEL_81:
          v80 = gestureCopy;
          if ([v80 state] == 3 || objc_msgSend(v80, "state") == 4)
          {
          }

          else
          {
            state3 = [v80 state];

            if (state3 != 5)
            {
              goto LABEL_109;
            }
          }

          if ([owner isPanning])
          {
            view2 = [v80 view];
            v82 = _isViewKeyboardLayoutPresent(view2);

            v83 = MEMORY[0x1E69D9C20];
            if (!v82)
            {
              v83 = MEMORY[0x1E69D9C18];
            }

            v84 = *v83;
            textSelectionController = [delegate textSelectionController];
            hasRangedSelection = [textSelectionController hasRangedSelection];
            v87 = MEMORY[0x1E69D9C08];
            if (!hasRangedSelection)
            {
              v87 = MEMORY[0x1E69D9C10];
            }

            v88 = *v87;

            v89 = TIStatisticsGetKeyForGesture();
            TIStatisticScalarIncrement();

            mEMORY[0x1E69D4E18]2 = [MEMORY[0x1E69D4E18] sharedInstance];
            v110[0] = MEMORY[0x1E69E9820];
            v110[1] = 3221225472;
            v110[2] = __54___UIKeyboardTextSelectionInteraction_panningGesture___block_invoke_2;
            v110[3] = &unk_1E7118D08;
            v111 = owner;
            v91 = v80;

            v112 = v91;
            v113 = v17;
            v114 = v19;
            [mEMORY[0x1E69D4E18]2 logBlock:v110 domain:@"com.apple.keyboard.UIKit"];
          }

          [owner setDidFloatCursor:0];
          [owner setIsLongPressing:0];
          [owner setIsPanning:0];
          [owner setIsSpacePan:0];
          activeGestures2 = [owner activeGestures];
          [activeGestures2 removeObject:v80];

          selectionController7 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
          [selectionController7 resetCursorPosition];

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
            v108 = owner;
            v20 = &v109;
            v109 = v80;
          }

          v96 = _Block_copy(v95);
          if ((_getGestureKeyboardFlag(v80) & 4) != 0)
          {
            view3 = [v80 view];
            [v80 locationInView:view3];
            [v80 velocityInView:view3];
            [view3 bounds];
            if (!-[_UIKeyboardTextSelectionInteraction isPlacedCarefully](self, "isPlacedCarefully") && (self->_touchPadTimerCompletion || ([owner spacePanDistance], v100 > 16.0)) || (objc_msgSend(owner, "spacePanDistance"), v98 < 16.0) && IsGestureWithinSpecialRegion(v80))
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

    state4 = [gestureCopy state];
    recognizedFlickDirection = [gestureCopy recognizedFlickDirection];
    v79 = +[UIKeyboardImpl activeInstance];
    -[_UIKeyboardTextSelectionInteraction indirectPanGestureWithState:withTranslation:withFlickDirection:isShiftKeyBeingHeld:](self, "indirectPanGestureWithState:withTranslation:withFlickDirection:isShiftKeyBeingHeld:", state4, recognizedFlickDirection, [v79 isShiftKeyBeingHeld], v17, v19);

    goto LABEL_81;
  }

  v11 = gestureCopy;
  if ([v11 state] == 3 || objc_msgSend(v11, "state") == 4)
  {
  }

  else
  {
    state5 = [v11 state];

    if (state5 != 5)
    {
      goto LABEL_109;
    }
  }

  [owner setDidFloatCursor:0];
  [owner setSuppressTwoFingerPan:0];
  activeGestures3 = [owner activeGestures];
  [activeGestures3 removeObject:v11];

LABEL_109:
}

- (void)_startTouchPadTimerWithCompletion:(id)completion
{
  completionCopy = completion;
  [(_UIKeyboardTextSelectionInteraction *)self _cancelTouchPadTimer];
  if (completionCopy)
  {
    v5 = [completionCopy copy];
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

- (void)oneFingerForcePress:(id)press
{
  pressCopy = press;
  owner = [(_UIKeyboardTextSelectionInteraction *)self owner];
  view = [pressCopy view];
  if (!view)
  {
    goto LABEL_67;
  }

  v7 = view;
  delegate = [owner delegate];
  textSelectionController = [delegate textSelectionController];

  if (!textSelectionController)
  {
    goto LABEL_67;
  }

  selectionController = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
  textInputView = [selectionController textInputView];
  [pressCopy velocityInView:textInputView];
  v13 = v12;
  v15 = v14;

  v16 = hypot(v13, v15);
  touchEclipsesVelocity = 1;
  if ([owner panGestureState] && v16 > 65.0)
  {
    touchEclipsesVelocity = [pressCopy touchEclipsesVelocity];
  }

  if (!pressCopy)
  {
    [owner previousForcePressCount];
LABEL_12:
    v19 = 0;
    if (!touchEclipsesVelocity)
    {
      goto LABEL_9;
    }

    goto LABEL_13;
  }

  v18 = pressCopy[19];
  if (v18 <= [owner previousForcePressCount])
  {
    goto LABEL_12;
  }

  v19 = pressCopy[19] == 1;
  if (!touchEclipsesVelocity)
  {
LABEL_9:
    [(_UIKeyboardTextSelectionInteraction *)self _cancelLongForcePressTimer];
LABEL_10:
    v20 = 1;
    goto LABEL_18;
  }

LABEL_13:
  if ([owner panGestureState] <= 0 && !-[_UIKeyboardTextSelectionInteraction forceTouchGestureRecognizerShouldBegin:](self, "forceTouchGestureRecognizerShouldBegin:", pressCopy))
  {
    if (v19)
    {
      [(_UIKeyboardTextSelectionInteraction *)self _beginLongForcePressTimerForGesture:pressCopy];
      view2 = [pressCopy view];
      isViewKeyboardLayoutPresent = _isViewKeyboardLayoutPresent(view2);
      if (pressCopy)
      {
        v38 = *(pressCopy + 38);
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
  selectionController2 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
  textInputView2 = [selectionController2 textInputView];
  [pressCopy _translationInView:textInputView2];
  v24 = v23;
  v26 = v25;

  if ([pressCopy state] == 1 || v19)
  {
    v27 = *MEMORY[0x1E695EFF8];
    v28 = *(MEMORY[0x1E695EFF8] + 8);
    [owner setAccumulatedAcceleration:{*MEMORY[0x1E695EFF8], v28}];
    [owner setAccumulatedBounding:{v27, v28}];
    [owner setLastPanTranslation:{v24, v26}];
    [(_UIKeyboardTextSelectionInteraction *)self _prepareForGesture];
  }

  if ([pressCopy currentPreviewForceState] < 1)
  {
    goto LABEL_64;
  }

  v29 = pressCopy ? pressCopy[19] : 0;
  v30 = v29 <= [owner previousForcePressCount] ? 1 : v20;
  if (v30)
  {
    goto LABEL_64;
  }

  if ([pressCopy state] >= 2)
  {
    v31 = +[_UITextSelectionSettings sharedInstance];
    shouldUseAcceleration = [v31 shouldUseAcceleration];
    bOOLValue = [shouldUseAcceleration BOOLValue];

    if (bOOLValue)
    {
      if ([owner panGestureState])
      {
        v34 = pressCopy;
        v35 = [v34 state] != 3 && objc_msgSend(v34, "state") != 4 && objc_msgSend(v34, "state") != 5;
      }

      else
      {
        v35 = 0;
      }

      [(_UIKeyboardTextSelectionInteraction *)self acceleratedTranslation:v35 velocity:v24 isActive:v26, v13, v15];
      v40 = v39;
      v42 = v41;
      [owner setLastPanTranslation:{v24, v26}];
      v26 = v42;
      v24 = v40;
    }

    weightedPoint = [owner weightedPoint];
    [weightedPoint addPoint:{v24, v26}];

    v44 = pressCopy;
    if ([v44 state] == 3 || objc_msgSend(v44, "state") == 4)
    {
    }

    else
    {
      state = [v44 state];

      if (state != 5)
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
      weightedPoint2 = [owner weightedPoint];
      [weightedPoint2 weightedPoint];
      v24 = v46;
      v26 = v47;
    }

    goto LABEL_47;
  }

LABEL_48:
  Current = CFAbsoluteTimeGetCurrent();
  [owner lastPressTimestamp];
  v53 = v52;
  delegate2 = [owner delegate];
  if (objc_opt_respondsToSelector())
  {
    delegate3 = [owner delegate];
    hasMarkedText = [delegate3 hasMarkedText];
  }

  else
  {
    hasMarkedText = 0;
  }

  if ([owner panGestureState] == 6)
  {
    v57 = Current - v53;
    if (Current - v53 <= 0.8)
    {
      [(_UIKeyboardTextSelectionInteraction *)self _granularityExpandingGestureWithTimeInterval:1 timeGranularity:v57 isMidPan:?];
    }

    else
    {
      [owner setPanGestureState:{0, v57}];
      [(_UIKeyboardTextSelectionInteraction *)self indirectBlockPanGestureWithState:3 withTranslation:v24, v26];
    }
  }

  if ([owner panGestureState])
  {
    if (!(([owner panGestureState] != 1) | hasMarkedText & 1))
    {
      selectionController3 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
      [selectionController3 endSelection];

      selectionController4 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
      [selectionController4 switchToRangedSelection];

      [owner setPreviousRepeatedGranularity:1];
      [owner setPanGestureState:6];
      [(_UIKeyboardTextSelectionInteraction *)self indirectBlockPanGestureWithState:1 withTranslation:v24, v26];
    }
  }

  else
  {
    activeGestures = [owner activeGestures];
    v61 = [activeGestures containsObject:pressCopy];

    if ((v61 & 1) == 0)
    {
      activeGestures2 = [owner activeGestures];
      [activeGestures2 addObject:pressCopy];
    }

    if (v19)
    {
      selectionController5 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
      textInputView3 = [selectionController5 textInputView];
      v24 = *MEMORY[0x1E695EFF8];
      v26 = *(MEMORY[0x1E695EFF8] + 8);
      [pressCopy _setTranslation:textInputView3 inView:{*MEMORY[0x1E695EFF8], v26}];

      [owner setLastPanTranslation:{v24, v26}];
    }

    [owner setPanGestureState:1];
    [(_UIKeyboardTextSelectionInteraction *)self clearKeyboardTouchesForGesture:pressCopy];
    [(_UIKeyboardTextSelectionInteraction *)self _willBeginIndirectSelectionGesture:pressCopy];
    [(_UIKeyboardTextSelectionInteraction *)self indirectCursorPanGestureWithState:1 withTranslation:0 withFlickDirection:v24, v26];
  }

  [owner setLastPressTimestamp:Current];
  mEMORY[0x1E69D4E18] = [MEMORY[0x1E69D4E18] sharedInstance];
  v67[0] = MEMORY[0x1E69E9820];
  v67[1] = 3221225472;
  v67[2] = __59___UIKeyboardTextSelectionInteraction_oneFingerForcePress___block_invoke;
  v67[3] = &unk_1E70FB518;
  v67[4] = self;
  v70 = v24;
  v71 = v26;
  v68 = owner;
  v69 = pressCopy;
  [mEMORY[0x1E69D4E18] logBlock:v67 domain:@"com.apple.keyboard.UIKit"];

LABEL_64:
  if (pressCopy)
  {
    v66 = *(pressCopy + 38);
  }

  else
  {
    v66 = 0;
  }

  [owner setPreviousForcePressCount:v66];
LABEL_67:
}

@end