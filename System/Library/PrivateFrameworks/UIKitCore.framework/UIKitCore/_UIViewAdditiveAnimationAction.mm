@interface _UIViewAdditiveAnimationAction
- (_UIViewAdditiveAnimationAction)initWithPendingAnimation:(id)animation withAnimationObject:(id)object forView:(id)view;
- (void)runActionForKey:(id)key object:(id)object arguments:(id)arguments;
@end

@implementation _UIViewAdditiveAnimationAction

- (_UIViewAdditiveAnimationAction)initWithPendingAnimation:(id)animation withAnimationObject:(id)object forView:(id)view
{
  animationCopy = animation;
  objectCopy = object;
  viewCopy = view;
  v16.receiver = self;
  v16.super_class = _UIViewAdditiveAnimationAction;
  v12 = [(_UIViewAdditiveAnimationAction *)&v16 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_pendingAnimation, animation);
    objc_storeStrong(&v13->_animationObject, object);
    objc_storeStrong(&v13->_view, view);
    v14 = v13;
  }

  return v13;
}

- (void)runActionForKey:(id)key object:(id)object arguments:(id)arguments
{
  keyCopy = key;
  objectCopy = object;
  animationObject = [(_UIViewAdditiveAnimationAction *)self animationObject];

  if (animationObject)
  {
    v10 = __currentViewAnimationState;
    view = [(_UIViewAdditiveAnimationAction *)self view];
    v12 = [v10 _shouldAnimateAdditivelyForKey:keyCopy onLayer:objectCopy forView:view];
  }

  else
  {
    v12 = 1;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __67___UIViewAdditiveAnimationAction_runActionForKey_object_arguments___block_invoke;
  aBlock[3] = &unk_1E712AE70;
  v13 = objectCopy;
  v95 = v13;
  selfCopy = self;
  v14 = keyCopy;
  v97 = v14;
  v98 = v12;
  v15 = _Block_copy(aBlock);
  v90[0] = MEMORY[0x1E69E9820];
  v90[1] = 3221225472;
  v90[2] = __67___UIViewAdditiveAnimationAction_runActionForKey_object_arguments___block_invoke_2;
  v90[3] = &unk_1E712AE98;
  v16 = v13;
  v91 = v16;
  selfCopy2 = self;
  v17 = v14;
  v93 = v17;
  v18 = _Block_copy(v90);
  pendingAnimation = [(_UIViewAdditiveAnimationAction *)self pendingAnimation];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    pendingAnimation2 = [(_UIViewAdditiveAnimationAction *)self pendingAnimation];
    toValue = [pendingAnimation2 toValue];
    if (toValue)
    {
    }

    else
    {
      pendingAnimation3 = [(_UIViewAdditiveAnimationAction *)self pendingAnimation];
      keyPath = [pendingAnimation3 keyPath];

      if (!keyPath)
      {
        goto LABEL_8;
      }

      animationObject2 = [(_UIViewAdditiveAnimationAction *)self animationObject];
      if (animationObject2)
      {
        v25 = animationObject2;
        animationObject3 = [(_UIViewAdditiveAnimationAction *)self animationObject];
        isIntrospectable = [animationObject3 isIntrospectable];

        if (isIntrospectable)
        {
          pendingAnimation4 = [(_UIViewAdditiveAnimationAction *)self pendingAnimation];
          v15[2](v15, pendingAnimation4);
        }
      }

      if (v12)
      {
        animationObject4 = [(_UIViewAdditiveAnimationAction *)self animationObject];

        if (animationObject4 && (-[_UIViewAdditiveAnimationAction animationObject](self, "animationObject"), v30 = objc_claimAutoreleasedReturnValue(), v31 = [v30 _generatePointValueSpringAnimationsForKeyPath:v17], v30, v31))
        {
          pendingAnimation5 = [(_UIViewAdditiveAnimationAction *)self pendingAnimation];
          v33 = [v16 valueForKeyPath:v17];
          animationObject5 = [(_UIViewAdditiveAnimationAction *)self animationObject];
          fromValue = [pendingAnimation5 fromValue];
          [animationObject5 _setOriginalFromValue:fromValue forKey:v17 inLayer:v16];

          animationObject6 = [(_UIViewAdditiveAnimationAction *)self animationObject];
          [animationObject6 _setOriginalToValue:v33 forKey:v17 inLayer:v16];

          fromValue2 = [pendingAnimation5 fromValue];
          [fromValue2 CGPointValue];
          v39 = v38;
          v41 = v40;

          [v33 CGPointValue];
          v43 = v42;
          v45 = v44;
          pendingAnimation = pendingAnimation5;
          animationObject7 = [(_UIViewAdditiveAnimationAction *)self animationObject];
          v88 = pendingAnimation;
          v89 = pendingAnimation;
          [animationObject7 _springAnimationForXComponent:&v89 forYComponent:&v88];
          v47 = v89;
          v48 = v88;

          delegate = [pendingAnimation delegate];
          [v48 setDelegate:delegate];

          timingFunction = [pendingAnimation timingFunction];
          [v48 setTimingFunction:timingFunction];

          fromValue3 = [pendingAnimation fromValue];
          [v47 setFromValue:fromValue3];

          fromValue4 = [pendingAnimation fromValue];
          [v48 setFromValue:fromValue4];

          v53 = [MEMORY[0x1E696B098] valueWithCGPoint:{v43, v41}];
          v18[2](v18, v47, v53, @".x");

          v54 = [MEMORY[0x1E696B098] valueWithCGPoint:{v39, v45}];
          v18[2](v18, v48, v54, @".y");
        }

        else if (([v17 isEqualToString:@"bounds"] & 1) != 0 || (objc_msgSend(v17, "isEqualToString:", @"contentsRect") & 1) != 0 || objc_msgSend(v17, "isEqualToString:", @"contentsCenter"))
        {
          pendingAnimation6 = [(_UIViewAdditiveAnimationAction *)self pendingAnimation];
          fromValue5 = [pendingAnimation6 fromValue];
          [fromValue5 CGRectValue];
          v70 = v69;
          v72 = v71;
          v74 = v73;
          v76 = v75;

          toValue2 = [pendingAnimation6 toValue];
          if (toValue2)
          {
            [pendingAnimation6 toValue];
          }

          else
          {
            [v16 valueForKeyPath:v17];
          }
          v78 = ;
          [v78 CGRectValue];
          v80 = v79;
          v82 = v81;

          pendingAnimation = pendingAnimation6;
          v83 = [pendingAnimation copy];
          v84 = [v17 stringByAppendingString:@".size"];
          [pendingAnimation setKeyPath:v84];

          v85 = [MEMORY[0x1E696B098] valueWithCGSize:{v74, v76}];
          [pendingAnimation setFromValue:v85];

          v18[2](v18, pendingAnimation, 0, 0);
          if (vabdd_f64(v70, v80) >= 0.0001 || vabdd_f64(v72, v82) >= 0.0001)
          {
            v86 = [v17 stringByAppendingString:@".origin"];
            [v83 setKeyPath:v86];

            v87 = [MEMORY[0x1E696B098] valueWithCGPoint:{v70, v72}];
            [v83 setFromValue:v87];

            v18[2](v18, v83, 0, 0);
            [__currentViewAnimationState _incrementDidEndCount];
          }
        }

        else
        {
          pendingAnimation = [(_UIViewAdditiveAnimationAction *)self pendingAnimation];
          v18[2](v18, pendingAnimation, 0, 0);
        }
      }

      else
      {
        pendingAnimation = [(_UIViewAdditiveAnimationAction *)self pendingAnimation];
        keyPath2 = [pendingAnimation keyPath];
        v56 = [v16 valueForKeyPath:keyPath2];
        [pendingAnimation setToValue:v56];

        animationObject8 = [(_UIViewAdditiveAnimationAction *)self animationObject];
        toValue3 = [pendingAnimation toValue];
        [animationObject8 _setOriginalToValue:toValue3 forKey:v17 inLayer:v16];

        v59 = v16;
        if ([UIView _shouldTrackActionWithAnimator:pendingAnimation])
        {
          keyPath3 = [pendingAnimation keyPath];
          v61 = [UIViewPropertyAnimator _trackNonAdditiveAnimationWithAnimator:pendingAnimation forLayer:v59 forKey:keyPath3];

          toValue4 = [pendingAnimation toValue];
          [v61 _setOriginalToValue:toValue4 forKey:v17 inLayer:v59];
        }

        keyPath4 = [pendingAnimation keyPath];
        [v59 addAnimation:pendingAnimation forKey:keyPath4];

        if (+[UIView _isAnimationTracking])
        {
          v64 = __currentViewAnimationState;
          keyPath5 = [pendingAnimation keyPath];
          keyPath6 = [pendingAnimation keyPath];
          [v64 _trackAnimation:pendingAnimation nonAdditiveAnimation:0 withAnimationKey:keyPath5 forKeyPath:keyPath6 inLayer:v59];
        }
      }
    }
  }

LABEL_8:
}

@end