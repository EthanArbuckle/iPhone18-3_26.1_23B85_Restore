@interface VideosTransitionFadeAnimator
- (VideosTransitionFadeAnimator)initWithTransitionType:(int64_t)type andDuration:(double)duration;
- (void)animateTransition:(id)transition;
@end

@implementation VideosTransitionFadeAnimator

- (VideosTransitionFadeAnimator)initWithTransitionType:(int64_t)type andDuration:(double)duration
{
  v7.receiver = self;
  v7.super_class = VideosTransitionFadeAnimator;
  result = [(VideosTransitionFadeAnimator *)&v7 init];
  if (result)
  {
    result->_transitionType = type;
    result->_animationDuration = duration;
  }

  return result;
}

- (void)animateTransition:(id)transition
{
  transitionCopy = transition;
  containerView = [transitionCopy containerView];
  v6 = [transitionCopy viewForKey:*MEMORY[0x1E69DE770]];
  v7 = [transitionCopy viewControllerForKey:*MEMORY[0x1E69DE778]];
  v8 = [transitionCopy viewForKey:*MEMORY[0x1E69DE780]];
  [transitionCopy finalFrameForViewController:v7];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  [containerView addSubview:v8];
  [v8 setFrame:{v10, v12, v14, v16}];
  [v8 setAlpha:0.0];
  [v6 setAlpha:1.0];
  transitionType = [(VideosTransitionFadeAnimator *)self transitionType];
  if (transitionType)
  {
    v18 = v6;
  }

  else
  {
    v18 = v8;
  }

  v19 = v18;
  if (transitionType)
  {
    v20 = *(MEMORY[0x1E695EFD0] + 16);
    *&v38.a = *MEMORY[0x1E695EFD0];
    *&v38.c = v20;
    *&v38.tx = *(MEMORY[0x1E695EFD0] + 32);
  }

  else
  {
    CGAffineTransformMakeScale(&v38, 1.4, 1.4);
  }

  [v19 setTransform:&v38];
  [(VideosTransitionFadeAnimator *)self transitionDuration:transitionCopy];
  v22 = v21;
  v23 = MEMORY[0x1E69DD250];
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __50__VideosTransitionFadeAnimator_animateTransition___block_invoke;
  v33[3] = &unk_1E872E980;
  v34 = v19;
  v37 = transitionType == 0;
  v35 = v8;
  v36 = v6;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __50__VideosTransitionFadeAnimator_animateTransition___block_invoke_2;
  v28[3] = &unk_1E8732E50;
  v32 = transitionType == 0;
  v29 = transitionCopy;
  v30 = v35;
  v31 = v36;
  v24 = v36;
  v25 = v35;
  v26 = transitionCopy;
  v27 = v19;
  [v23 animateWithDuration:v33 animations:v28 completion:v22];
}

uint64_t __50__VideosTransitionFadeAnimator_animateTransition___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(a1 + 56) == 1)
  {
    v3 = *(MEMORY[0x1E695EFD0] + 16);
    *&v5.a = *MEMORY[0x1E695EFD0];
    *&v5.c = v3;
    *&v5.tx = *(MEMORY[0x1E695EFD0] + 32);
  }

  else
  {
    CGAffineTransformMakeScale(&v5, 1.4, 1.4);
  }

  [v2 setTransform:&v5];
  [*(a1 + 40) setAlpha:1.0];
  return [*(a1 + 48) setAlpha:0.0];
}

uint64_t __50__VideosTransitionFadeAnimator_animateTransition___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) transitionWasCancelled];
  if (v2 == *(a1 + 56))
  {
    [*(a1 + 40) removeFromSuperview];
  }

  v3 = *(a1 + 48);
  v4 = *(MEMORY[0x1E695EFD0] + 16);
  v6[0] = *MEMORY[0x1E695EFD0];
  v6[1] = v4;
  v6[2] = *(MEMORY[0x1E695EFD0] + 32);
  [v3 setTransform:v6];
  return [*(a1 + 32) completeTransition:v2 ^ 1u];
}

@end