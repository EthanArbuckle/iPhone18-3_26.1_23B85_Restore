@interface _UIParallaxTransitionPanGestureRecognizer
+ (BOOL)isContentBackSwipeEnabled;
- (BOOL)_needsDynamicDependentRequirementForGestureRecognizer:(id)a3;
- (BOOL)_shouldReceiveTouch:(id)a3 withEvent:(id)a4;
- (BOOL)_shouldTryToBeginWithEvent:(id)a3;
- (_UIParallaxTransitionPanGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4;
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

- (_UIParallaxTransitionPanGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4
{
  v7.receiver = self;
  v7.super_class = _UIParallaxTransitionPanGestureRecognizer;
  v4 = [(UIScreenEdgePanGestureRecognizer *)&v7 initWithTarget:a3 action:a4];
  v5 = v4;
  if (v4)
  {
    [(UIPanGestureRecognizer *)v4 setMaximumNumberOfTouches:1];
    [(UIGestureRecognizer *)v5 _setRequiresSystemGesturesToFail:1];
    [(UIPanGestureRecognizer *)v5 setAllowedScrollTypesMask:2];
  }

  return v5;
}

- (BOOL)_shouldTryToBeginWithEvent:(id)a3
{
  v4 = a3;
  if (![(_UIParallaxTransitionPanGestureRecognizer *)self _usesComplexHysteresisCalculationForEvent:v4])
  {
    [(UIScreenEdgePanGestureRecognizer *)self _setHysteresis:15.0];
    v22.receiver = self;
    v22.super_class = _UIParallaxTransitionPanGestureRecognizer;
    v17 = [(UIScreenEdgePanGestureRecognizer *)&v22 _shouldTryToBeginWithEvent:v4];
    goto LABEL_23;
  }

  if ([v4 type] == 10)
  {
    v5 = 50.0;
  }

  else
  {
    v5 = 30.0;
  }

  [(UIScreenEdgePanGestureRecognizer *)self _setHysteresis:v5];
  v6 = [(UIGestureRecognizer *)self view];
  [(UIPanGestureRecognizer *)self translationInView:v6];
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

  v14 = [(UIScreenEdgePanGestureRecognizer *)self edges];
  v15 = (v8 >= v5) & (v14 >> 1);
  if ((v14 & 8) != 0)
  {
    v16 = (v8 >= v5) & (v14 >> 1);
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
    v20 = (v14 & 8) == 0 && v8 <= -v5;
    v21 = (v14 & 2) != 0 || v8 < v5;
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

- (BOOL)_shouldReceiveTouch:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 _isPointerTouch])
  {
    v8 = 0;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = _UIParallaxTransitionPanGestureRecognizer;
    v8 = [(UIGestureRecognizer *)&v10 _shouldReceiveTouch:v6 withEvent:v7];
  }

  return v8;
}

- (BOOL)_needsDynamicDependentRequirementForGestureRecognizer:(id)a3
{
  v4 = a3;
  v5 = [(UIGestureRecognizer *)self _activeTouchesEvent];

  if (v5)
  {
    LOBYTE(v5) = [(UIScreenEdgePanGestureRecognizer *)self _rootFeatureState]!= 2;
  }

  if (-[_UIParallaxTransitionPanGestureRecognizer _skipDynamicDependentRequirementOverride](self, "_skipDynamicDependentRequirementOverride") || (v5 & 1) != 0 || ![v4 _isGestureType:8])
  {
    v22.receiver = self;
    v22.super_class = _UIParallaxTransitionPanGestureRecognizer;
    LOBYTE(v6) = [(UIGestureRecognizer *)&v22 _needsDynamicDependentRequirementForGestureRecognizer:v4];
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
      v7 = [v4 view];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v9 = [v4 view];
        if ([v9 isDecelerating] & 1) != 0 || (objc_msgSend(v9, "_isBouncing"))
        {
          LOBYTE(v6) = 0;
        }

        else
        {
          v15 = [(UIScreenEdgePanGestureRecognizer *)self edges];
          if (![v9 _canScrollX] || (v15 & 2) != 0 && (objc_msgSend(v9, "contentOffset"), v17 = v16, objc_msgSend(v9, "_minimumContentOffset"), v17 <= v18) || (v15 & 8) != 0 && (objc_msgSend(v9, "contentOffset"), v20 = v19, objc_msgSend(v9, "_maximumContentOffset"), v20 >= v21))
          {
            LOBYTE(v6) = 1;
          }
        }

        goto LABEL_29;
      }
    }

    if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (_UISheetInteractionGestureIsForInteractiveDismiss(v4) & 1) != 0)
    {
      LOBYTE(v6) = 1;
    }

    else
    {
      v11 = [v4 name];
      v12 = [v11 isEqualToString:@"com.apple.UIKit.UIWindowDraggingPan"];

      if (v12)
      {
        v13 = [(UIGestureRecognizer *)self _allActiveTouches];
        v9 = [v13 anyObject];

        v14 = [v9 view];
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