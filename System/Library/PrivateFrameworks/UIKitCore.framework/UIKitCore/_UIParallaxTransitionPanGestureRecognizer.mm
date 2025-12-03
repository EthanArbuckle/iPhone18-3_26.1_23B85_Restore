@interface _UIParallaxTransitionPanGestureRecognizer
+ (BOOL)isContentBackSwipeEnabled;
- (BOOL)_needsDynamicDependentRequirementForGestureRecognizer:(id)recognizer;
- (BOOL)_shouldReceiveTouch:(id)touch withEvent:(id)event;
- (BOOL)_shouldTryToBeginWithEvent:(id)event;
- (_UIParallaxTransitionPanGestureRecognizer)initWithTarget:(id)target action:(SEL)action;
- (void)reset;
@end

@implementation _UIParallaxTransitionPanGestureRecognizer

+ (BOOL)isContentBackSwipeEnabled
{
  if (qword_1ED49B1B0 != -1)
  {
    dispatch_once(&qword_1ED49B1B0, &__block_literal_global_163);
  }

  return _MergedGlobals_19_2;
}

- (void)reset
{
  [(UIScreenEdgePanGestureRecognizer *)self _resetHystersis];
  v3.receiver = self;
  v3.super_class = _UIParallaxTransitionPanGestureRecognizer;
  [(UIScreenEdgePanGestureRecognizer *)&v3 reset];
}

- (_UIParallaxTransitionPanGestureRecognizer)initWithTarget:(id)target action:(SEL)action
{
  v7.receiver = self;
  v7.super_class = _UIParallaxTransitionPanGestureRecognizer;
  v4 = [(UIScreenEdgePanGestureRecognizer *)&v7 initWithTarget:target action:action];
  v5 = v4;
  if (v4)
  {
    [(UIPanGestureRecognizer *)v4 setMaximumNumberOfTouches:1];
    [(UIGestureRecognizer *)v5 _setRequiresSystemGesturesToFail:1];
    [(UIPanGestureRecognizer *)v5 setAllowedScrollTypesMask:2];
  }

  return v5;
}

- (BOOL)_shouldTryToBeginWithEvent:(id)event
{
  eventCopy = event;
  if (![(_UIParallaxTransitionPanGestureRecognizer *)self _usesComplexHysteresisCalculationForEvent:eventCopy])
  {
    [(UIScreenEdgePanGestureRecognizer *)self _setHysteresis:15.0];
    v22.receiver = self;
    v22.super_class = _UIParallaxTransitionPanGestureRecognizer;
    v17 = [(UIScreenEdgePanGestureRecognizer *)&v22 _shouldTryToBeginWithEvent:eventCopy];
    goto LABEL_23;
  }

  if ([eventCopy type] == 10)
  {
    v5 = 50.0;
  }

  else
  {
    v5 = 30.0;
  }

  [(UIScreenEdgePanGestureRecognizer *)self _setHysteresis:v5];
  view = [(UIGestureRecognizer *)self view];
  [(UIPanGestureRecognizer *)self translationInView:view];
  v8 = v7;
  v10 = v9;

  v11 = -v8;
  if (v8 >= 0.0)
  {
    v11 = v8;
  }

  v12 = (v5 + -10.0) / 25.0 * v11 + 10.0;
  if (v12 > 25.0)
  {
    v12 = 25.0;
  }

  v13 = -v10;
  if (v10 >= 0.0)
  {
    v13 = v10;
  }

  if (v13 >= v12)
  {
    v18 = @"exceededYTranslation";
    goto LABEL_21;
  }

  edges = [(UIScreenEdgePanGestureRecognizer *)self edges];
  v15 = (v8 >= v5) & (edges >> 1);
  if ((edges & 8) != 0)
  {
    v16 = (v8 >= v5) & (edges >> 1);
  }

  else
  {
    v16 = 1;
  }

  if (!v16)
  {
    LOBYTE(v15) = v8 <= -v5;
  }

  if ((v15 & 1) == 0)
  {
    v20 = (edges & 8) == 0 && v8 <= -v5;
    v21 = (edges & 2) != 0 || v8 < v5;
    if (v21 && !v20)
    {
      goto LABEL_22;
    }

    v18 = @"unsupportedEdge";
LABEL_21:
    [(UIGestureRecognizer *)self _failWithReason:v18];
LABEL_22:
    v17 = 0;
    goto LABEL_23;
  }

  v17 = 1;
LABEL_23:

  return v17;
}

- (BOOL)_shouldReceiveTouch:(id)touch withEvent:(id)event
{
  touchCopy = touch;
  eventCopy = event;
  if ([touchCopy _isPointerTouch])
  {
    v8 = 0;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = _UIParallaxTransitionPanGestureRecognizer;
    v8 = [(UIGestureRecognizer *)&v10 _shouldReceiveTouch:touchCopy withEvent:eventCopy];
  }

  return v8;
}

- (BOOL)_needsDynamicDependentRequirementForGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  _activeTouchesEvent = [(UIGestureRecognizer *)self _activeTouchesEvent];

  if (_activeTouchesEvent)
  {
    LOBYTE(_activeTouchesEvent) = [(UIScreenEdgePanGestureRecognizer *)self _rootFeatureState]!= 2;
  }

  if (-[_UIParallaxTransitionPanGestureRecognizer _skipDynamicDependentRequirementOverride](self, "_skipDynamicDependentRequirementOverride") || (_activeTouchesEvent & 1) != 0 || ![recognizerCopy _isGestureType:8])
  {
    v22.receiver = self;
    v22.super_class = _UIParallaxTransitionPanGestureRecognizer;
    LOBYTE(v6) = [(UIGestureRecognizer *)&v22 _needsDynamicDependentRequirementForGestureRecognizer:recognizerCopy];
  }

  else
  {
    LODWORD(v6) = 0;
    if ((_UIInternalPreferenceUsesDefault(&_UIInternalPreference_UINavigationBackSwipeAlternate, @"UINavigationBackSwipeAlternate", _UIInternalPreferenceUpdateBool) & 1) == 0 && byte_1EA95E2BC)
    {
      v6 = ([(UIGestureRecognizer *)self modifierFlags]>> 19) & 1;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      view = [recognizerCopy view];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        view2 = [recognizerCopy view];
        if ([view2 isDecelerating] & 1) != 0 || (objc_msgSend(view2, "_isBouncing"))
        {
          LOBYTE(v6) = 0;
        }

        else
        {
          edges = [(UIScreenEdgePanGestureRecognizer *)self edges];
          if (![view2 _canScrollX] || (edges & 2) != 0 && (objc_msgSend(view2, "contentOffset"), v17 = v16, objc_msgSend(view2, "_minimumContentOffset"), v17 <= v18) || (edges & 8) != 0 && (objc_msgSend(view2, "contentOffset"), v20 = v19, objc_msgSend(view2, "_maximumContentOffset"), v20 >= v21))
          {
            LOBYTE(v6) = 1;
          }
        }

        goto LABEL_29;
      }
    }

    if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (_UISheetInteractionGestureIsForInteractiveDismiss(recognizerCopy) & 1) != 0)
    {
      LOBYTE(v6) = 1;
    }

    else
    {
      name = [recognizerCopy name];
      v12 = [name isEqualToString:@"com.apple.UIKit.UIWindowDraggingPan"];

      if (v12)
      {
        _allActiveTouches = [(UIGestureRecognizer *)self _allActiveTouches];
        view2 = [_allActiveTouches anyObject];

        v9View = [view2 view];
        objc_opt_class();
        LOBYTE(v6) = objc_opt_isKindOfClass();

LABEL_29:
        goto LABEL_15;
      }

      LOBYTE(v6) = 0;
    }
  }

LABEL_15:

  return v6 & 1;
}

@end