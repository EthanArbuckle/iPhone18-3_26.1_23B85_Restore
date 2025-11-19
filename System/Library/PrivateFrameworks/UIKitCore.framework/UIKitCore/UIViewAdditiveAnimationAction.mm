@interface UIViewAdditiveAnimationAction
@end

@implementation UIViewAdditiveAnimationAction

void __67___UIViewAdditiveAnimationAction_runActionForKey_object_arguments___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v4 keyPath];
  v16 = [v3 valueForKeyPath:v5];

  v6 = [*(a1 + 40) animationObject];
  v7 = *(a1 + 48);
  v8 = [*(a1 + 40) view];
  v9 = [v6 _explicitAnimationUpdateForProperty:v7 forView:v8 withValue:v16];

  if (!v9)
  {
    v10 = [*(a1 + 40) animationObject];
    v9 = [v10 _newAnimationUpdateForProperty:*(a1 + 48) implicit:1 additive:*(a1 + 56)];
  }

  v11 = [v4 fromValue];
  [v9 setFromValue:v11];

  [v9 setToValue:v16];
  [v4 duration];
  v13 = v12;

  [v9 setDuration:v13];
  [*(a1 + 32) convertTime:0 fromLayer:CACurrentMediaTime()];
  [v9 setStartTime:?];
  v14 = [*(a1 + 40) animationObject];
  v15 = [*(a1 + 40) view];
  [v14 _notePropertyAnimationUpdate:v9 forView:v15];
}

void __67___UIViewAdditiveAnimationAction_runActionForKey_object_arguments___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v36 = a2;
  v7 = a3;
  v8 = a4;
  v9 = [v36 fromValue];
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v15 = *(a1 + 32);
    v16 = [v36 keyPath];
    v7 = [v15 valueForKeyPath:v16];

    if (v8)
    {
      goto LABEL_3;
    }
  }

  v17 = [*(a1 + 40) animationObject];
  [v17 _setOriginalToValue:v7 forKey:*(a1 + 48) inLayer:*(a1 + 32)];

LABEL_3:
  v10 = [v36 fromValue];
  v11 = [v10 CA_addValue:v7 multipliedBy:0xFFFFFFFFLL];

  [v36 setAdditive:1];
  v35 = v11;
  [v36 setFromValue:v11];
  v12 = [v7 CA_addValue:v7 multipliedBy:0xFFFFFFFFLL];
  [v36 setToValue:v12];

  v13 = [*(a1 + 40) animationObject];

  if (v13)
  {
    v14 = 0;
  }

  else
  {
    v18 = objc_getAssociatedObject(*(a1 + 32), &unk_1EA9946C9);
    v14 = [v18 objectForKeyedSubscript:*(a1 + 48)];
    if (!v14)
    {
      v14 = [MEMORY[0x1E6979318] animationWithKeyPath:*(a1 + 48)];
      [v14 setFromValue:v9];
      [v18 setObject:v14 forKeyedSubscript:*(a1 + 48)];
    }

    [v14 setToValue:v7];
  }

  v19 = *(a1 + 32);
  v20 = [v36 keyPath];
  v21 = UniqueAnimationKeyForLayer(v19, v20, v8);

  v22 = [v36 keyPath];

  if (v8 && v21 == v22)
  {
    v23 = v9;
    v24 = [v36 keyPath];
    v25 = [v24 stringByAppendingString:v8];

    v21 = v25;
  }

  else
  {
    v23 = v9;
  }

  v26 = [*(a1 + 40) animationObject];
  if (v26)
  {
    v27 = v26;
    v28 = +[UIView _currentViewAnimationState];
    v29 = [v28 _isTrackingEnabled];

    if (v29)
    {
      [v36 setRemovedOnCompletion:0];
    }
  }

  v30 = *(a1 + 32);
  if ([UIView _shouldTrackActionWithAnimator:v36])
  {
    v31 = [v36 keyPath];
    v32 = [UIViewPropertyAnimator _trackAdditiveAnimationWithAnimator:v36 nonAdditiveAnimation:v14 withAnimationKey:v21 forKeyPath:v31 forLayer:v30];

    [v32 _setOriginalToValue:v7 forKey:*(a1 + 48) inLayer:v30];
  }

  [v30 addAnimation:v36 forKey:v21];
  if (+[UIView _isAnimationTracking])
  {
    v33 = __currentViewAnimationState;
    v34 = [v36 keyPath];
    [v33 _trackAnimation:v36 nonAdditiveAnimation:v14 withAnimationKey:v21 forKeyPath:v34 inLayer:v30];
  }
}

@end