@interface _UIViewAdditiveAnimationAction
- (_UIViewAdditiveAnimationAction)initWithPendingAnimation:(id)a3 withAnimationObject:(id)a4 forView:(id)a5;
- (void)runActionForKey:(id)a3 object:(id)a4 arguments:(id)a5;
@end

@implementation _UIViewAdditiveAnimationAction

- (_UIViewAdditiveAnimationAction)initWithPendingAnimation:(id)a3 withAnimationObject:(id)a4 forView:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v16.receiver = self;
  v16.super_class = _UIViewAdditiveAnimationAction;
  v12 = [(_UIViewAdditiveAnimationAction *)&v16 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_pendingAnimation, a3);
    objc_storeStrong(&v13->_animationObject, a4);
    objc_storeStrong(&v13->_view, a5);
    v14 = v13;
  }

  return v13;
}

- (void)runActionForKey:(id)a3 object:(id)a4 arguments:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [(_UIViewAdditiveAnimationAction *)self animationObject];

  if (v9)
  {
    v10 = __currentViewAnimationState;
    v11 = [(_UIViewAdditiveAnimationAction *)self view];
    v12 = [v10 _shouldAnimateAdditivelyForKey:v7 onLayer:v8 forView:v11];
  }

  else
  {
    v12 = 1;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __67___UIViewAdditiveAnimationAction_runActionForKey_object_arguments___block_invoke;
  aBlock[3] = &unk_1E712AE70;
  v13 = v8;
  v95 = v13;
  v96 = self;
  v14 = v7;
  v97 = v14;
  v98 = v12;
  v15 = _Block_copy(aBlock);
  v90[0] = MEMORY[0x1E69E9820];
  v90[1] = 3221225472;
  v90[2] = __67___UIViewAdditiveAnimationAction_runActionForKey_object_arguments___block_invoke_2;
  v90[3] = &unk_1E712AE98;
  v16 = v13;
  v91 = v16;
  v92 = self;
  v17 = v14;
  v93 = v17;
  v18 = _Block_copy(v90);
  v19 = [(_UIViewAdditiveAnimationAction *)self pendingAnimation];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v20 = [(_UIViewAdditiveAnimationAction *)self pendingAnimation];
    v21 = [v20 toValue];
    if (v21)
    {
    }

    else
    {
      v22 = [(_UIViewAdditiveAnimationAction *)self pendingAnimation];
      v23 = [v22 keyPath];

      if (!v23)
      {
        goto LABEL_8;
      }

      v24 = [(_UIViewAdditiveAnimationAction *)self animationObject];
      if (v24)
      {
        v25 = v24;
        v26 = [(_UIViewAdditiveAnimationAction *)self animationObject];
        v27 = [v26 isIntrospectable];

        if (v27)
        {
          v28 = [(_UIViewAdditiveAnimationAction *)self pendingAnimation];
          v15[2](v15, v28);
        }
      }

      if (v12)
      {
        v29 = [(_UIViewAdditiveAnimationAction *)self animationObject];

        if (v29 && (-[_UIViewAdditiveAnimationAction animationObject](self, "animationObject"), v30 = objc_claimAutoreleasedReturnValue(), v31 = [v30 _generatePointValueSpringAnimationsForKeyPath:v17], v30, v31))
        {
          v32 = [(_UIViewAdditiveAnimationAction *)self pendingAnimation];
          v33 = [v16 valueForKeyPath:v17];
          v34 = [(_UIViewAdditiveAnimationAction *)self animationObject];
          v35 = [v32 fromValue];
          [v34 _setOriginalFromValue:v35 forKey:v17 inLayer:v16];

          v36 = [(_UIViewAdditiveAnimationAction *)self animationObject];
          [v36 _setOriginalToValue:v33 forKey:v17 inLayer:v16];

          v37 = [v32 fromValue];
          [v37 CGPointValue];
          v39 = v38;
          v41 = v40;

          [v33 CGPointValue];
          v43 = v42;
          v45 = v44;
          v19 = v32;
          v46 = [(_UIViewAdditiveAnimationAction *)self animationObject];
          v88 = v19;
          v89 = v19;
          [v46 _springAnimationForXComponent:&v89 forYComponent:&v88];
          v47 = v89;
          v48 = v88;

          v49 = [v19 delegate];
          [v48 setDelegate:v49];

          v50 = [v19 timingFunction];
          [v48 setTimingFunction:v50];

          v51 = [v19 fromValue];
          [v47 setFromValue:v51];

          v52 = [v19 fromValue];
          [v48 setFromValue:v52];

          v53 = [MEMORY[0x1E696B098] valueWithCGPoint:{v43, v41}];
          v18[2](v18, v47, v53, @".x");

          v54 = [MEMORY[0x1E696B098] valueWithCGPoint:{v39, v45}];
          v18[2](v18, v48, v54, @".y");
        }

        else if (([v17 isEqualToString:@"bounds"] & 1) != 0 || (objc_msgSend(v17, "isEqualToString:", @"contentsRect") & 1) != 0 || objc_msgSend(v17, "isEqualToString:", @"contentsCenter"))
        {
          v67 = [(_UIViewAdditiveAnimationAction *)self pendingAnimation];
          v68 = [v67 fromValue];
          [v68 CGRectValue];
          v70 = v69;
          v72 = v71;
          v74 = v73;
          v76 = v75;

          v77 = [v67 toValue];
          if (v77)
          {
            [v67 toValue];
          }

          else
          {
            [v16 valueForKeyPath:v17];
          }
          v78 = ;
          [v78 CGRectValue];
          v80 = v79;
          v82 = v81;

          v19 = v67;
          v83 = [v19 copy];
          v84 = [v17 stringByAppendingString:@".size"];
          [v19 setKeyPath:v84];

          v85 = [MEMORY[0x1E696B098] valueWithCGSize:{v74, v76}];
          [v19 setFromValue:v85];

          v18[2](v18, v19, 0, 0);
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
          v19 = [(_UIViewAdditiveAnimationAction *)self pendingAnimation];
          v18[2](v18, v19, 0, 0);
        }
      }

      else
      {
        v19 = [(_UIViewAdditiveAnimationAction *)self pendingAnimation];
        v55 = [v19 keyPath];
        v56 = [v16 valueForKeyPath:v55];
        [v19 setToValue:v56];

        v57 = [(_UIViewAdditiveAnimationAction *)self animationObject];
        v58 = [v19 toValue];
        [v57 _setOriginalToValue:v58 forKey:v17 inLayer:v16];

        v59 = v16;
        if ([UIView _shouldTrackActionWithAnimator:v19])
        {
          v60 = [v19 keyPath];
          v61 = [UIViewPropertyAnimator _trackNonAdditiveAnimationWithAnimator:v19 forLayer:v59 forKey:v60];

          v62 = [v19 toValue];
          [v61 _setOriginalToValue:v62 forKey:v17 inLayer:v59];
        }

        v63 = [v19 keyPath];
        [v59 addAnimation:v19 forKey:v63];

        if (+[UIView _isAnimationTracking])
        {
          v64 = __currentViewAnimationState;
          v65 = [v19 keyPath];
          v66 = [v19 keyPath];
          [v64 _trackAnimation:v19 nonAdditiveAnimation:0 withAnimationKey:v65 forKeyPath:v66 inLayer:v59];
        }
      }
    }
  }

LABEL_8:
}

@end