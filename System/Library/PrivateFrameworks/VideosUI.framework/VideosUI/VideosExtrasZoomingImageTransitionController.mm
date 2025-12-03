@interface VideosExtrasZoomingImageTransitionController
- (CGPoint)initialPinchCenter;
- (VideosExtrasZoomingImageTransitionController)initWithItemIndex:(unint64_t)index forInteractiveTransition:(BOOL)transition;
- (double)_destinationScale;
- (double)_maximumDistanceTravelledForPoints:(CGPoint *)points count:(unint64_t)count currentTransform:(CGAffineTransform *)transform finalTransform:(CGAffineTransform *)finalTransform;
- (double)transitionDuration:(id)duration;
- (float)_desiredSpeedForNonInteractiveAnimationWithDuration:(double)duration deferredTransform:(CGAffineTransform *)transform finalTransform:(CGAffineTransform *)finalTransform;
- (void)animateTransition:(id)transition;
- (void)completeInteractiveTransitionWithPinchGestureRecognizer:(id)recognizer;
- (void)prepareInteractiveTransitionWithPinchGestureRecognizer:(id)recognizer;
- (void)updateInteractiveTransitionWithPinchGestureRecognizer:(id)recognizer;
@end

@implementation VideosExtrasZoomingImageTransitionController

- (VideosExtrasZoomingImageTransitionController)initWithItemIndex:(unint64_t)index forInteractiveTransition:(BOOL)transition
{
  transitionCopy = transition;
  v9.receiver = self;
  v9.super_class = VideosExtrasZoomingImageTransitionController;
  v6 = [(UIPercentDrivenInteractiveTransition *)&v9 init];
  v7 = v6;
  if (v6)
  {
    [(VideosExtrasZoomingImageTransitionController *)v6 setItemIndex:index];
    [(VideosExtrasZoomingImageTransitionController *)v7 setInteractive:transitionCopy];
  }

  return v7;
}

- (double)transitionDuration:(id)duration
{
  shouldUseSpringAnimation = [(VideosExtrasZoomingImageTransitionController *)self shouldUseSpringAnimation];
  result = 0.2;
  if (shouldUseSpringAnimation)
  {
    return 0.4;
  }

  return result;
}

- (void)animateTransition:(id)transition
{
  transitionCopy = transition;
  containerView = [transitionCopy containerView];
  v6 = [transitionCopy viewControllerForKey:*MEMORY[0x1E69DE778]];
  view = [v6 view];
  [transitionCopy finalFrameForViewController:v6];
  [view setFrame:?];
  [containerView addSubview:view];
  [view layoutIfNeeded];
  itemIndex = [(VideosExtrasZoomingImageTransitionController *)self itemIndex];
  v9 = [transitionCopy viewControllerForKey:*MEMORY[0x1E69DE768]];
  v10 = objc_alloc_init(VideosExtrasBorderedImageView);
  v29 = containerView;
  [containerView addSubview:v10];
  [(VideosExtrasZoomingImageTransitionController *)self setZoomingImageView:v10];
  isInteractive = [(VideosExtrasZoomingImageTransitionController *)self isInteractive];
  v12 = [[VideosExtrasZoomingImageTransitionContext alloc] initWithZoomingImageView:v10 itemIndex:itemIndex appearState:1 isInteractive:isInteractive];
  v13 = [[VideosExtrasZoomingImageTransitionContext alloc] initWithZoomingImageView:v10 itemIndex:itemIndex appearState:0 isInteractive:isInteractive];
  [(VideosExtrasBorderedImageView *)v10 setShouldSkipImageWhenReplicatingState:0];
  [(VideosExtrasBorderedImageView *)v10 setShouldUseTransformWhenReplicatingState:0];
  [v9 prepareZoomingImageTransitionWithContext:v12];
  [v6 prepareZoomingImageTransitionWithContext:v13];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __66__VideosExtrasZoomingImageTransitionController_animateTransition___block_invoke;
  aBlock[3] = &unk_1E872FB50;
  v14 = v10;
  v38 = v14;
  v43 = isInteractive;
  v15 = v9;
  v39 = v15;
  v16 = v12;
  v40 = v16;
  v17 = v6;
  v41 = v17;
  v18 = v13;
  v42 = v18;
  v19 = _Block_copy(aBlock);
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __66__VideosExtrasZoomingImageTransitionController_animateTransition___block_invoke_2;
  v30[3] = &unk_1E872FB78;
  v20 = transitionCopy;
  v31 = v20;
  v21 = v15;
  v32 = v21;
  v22 = v16;
  v33 = v22;
  v23 = v17;
  v34 = v23;
  v24 = v18;
  v35 = v24;
  v25 = v14;
  v36 = v25;
  v26 = _Block_copy(v30);
  [(VideosExtrasZoomingImageTransitionController *)self transitionDuration:v20];
  v28 = v27;
  if ([(VideosExtrasZoomingImageTransitionController *)self shouldUseSpringAnimation])
  {
    [MEMORY[0x1E69DD250] animateWithDuration:0 delay:v19 usingSpringWithDamping:v26 initialSpringVelocity:v28 options:0.0 animations:0.6 completion:0.0];
  }

  else
  {
    [MEMORY[0x1E69DD250] animateWithDuration:0 delay:v19 options:v26 animations:v28 completion:0.0];
  }
}

uint64_t __66__VideosExtrasZoomingImageTransitionController_animateTransition___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setShouldSkipImageWhenReplicatingState:1];
  [*(a1 + 32) setShouldUseTransformWhenReplicatingState:1];
  if (*(a1 + 72) == 1)
  {
    [*(a1 + 32) setShouldDeferSettingTransform:1];
  }

  [*(a1 + 40) performZoomingImageTransitionWithContext:*(a1 + 48)];
  [*(a1 + 56) performZoomingImageTransitionWithContext:*(a1 + 64)];
  [*(a1 + 32) setShouldSkipImageWhenReplicatingState:0];
  result = [*(a1 + 32) setShouldUseTransformWhenReplicatingState:0];
  if (*(a1 + 72) == 1)
  {
    v3 = *(a1 + 32);

    return [v3 setShouldDeferSettingTransform:0];
  }

  return result;
}

uint64_t __66__VideosExtrasZoomingImageTransitionController_animateTransition___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) transitionWasCancelled];
  [*(a1 + 40) finalizeZoomingImageTransitionWithContext:*(a1 + 48) transitionFinished:v2 ^ 1u];
  [*(a1 + 56) finalizeZoomingImageTransitionWithContext:*(a1 + 64) transitionFinished:v2 ^ 1u];
  [*(a1 + 72) removeFromSuperview];
  v3 = *(a1 + 32);

  return [v3 completeTransition:v2 ^ 1u];
}

- (void)prepareInteractiveTransitionWithPinchGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  view = [recognizerCopy view];
  superview = [view superview];
  [recognizerCopy locationInView:superview];
  [(VideosExtrasZoomingImageTransitionController *)self setInitialPinchCenter:?];

  [recognizerCopy scale];
  v8 = v7;

  v9 = 1.0;
  if (v8 > 0.00000011920929)
  {
    v9 = v8;
  }

  [(VideosExtrasZoomingImageTransitionController *)self setInitialPinchScale:v9];
}

- (void)updateInteractiveTransitionWithPinchGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  [recognizerCopy scale];
  v6 = v5;
  [(VideosExtrasZoomingImageTransitionController *)self initialPinchScale];
  v8 = v6 / v7;
  view = [recognizerCopy view];
  superview = [view superview];
  [recognizerCopy locationInView:superview];
  v12 = v11;
  v14 = v13;

  [(VideosExtrasZoomingImageTransitionController *)self initialPinchCenter];
  v16 = v15;
  v18 = v17;
  memset(&v25, 0, sizeof(v25));
  CGAffineTransformMakeScale(&v25, v8, v8);
  memset(&v24, 0, sizeof(v24));
  CGAffineTransformMakeTranslation(&v24, v12 - v16, v14 - v18);
  t1 = v25;
  memset(&v23, 0, sizeof(v23));
  v21 = v24;
  CGAffineTransformConcat(&v23, &t1, &v21);
  zoomingImageView = [(VideosExtrasZoomingImageTransitionController *)self zoomingImageView];
  t1 = v23;
  [zoomingImageView setTransform:&t1];

  [(VideosExtrasZoomingImageTransitionController *)self _destinationScale];
  MPULayoutLinearRelationMake();
  MPULayoutLinearRelationEvaluate();
  if (v20 < 0.01)
  {
    v20 = 0.01;
  }

  [(UIPercentDrivenInteractiveTransition *)self updateInteractiveTransition:fmin(v20, 0.99)];
}

- (void)completeInteractiveTransitionWithPinchGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  state = [recognizerCopy state];
  [recognizerCopy velocity];
  v7 = v6;

  if (state == 4)
  {
    [(UIPercentDrivenInteractiveTransition *)self percentComplete];
    v9 = v8;
LABEL_4:
    v13 = 1;
    goto LABEL_6;
  }

  [(VideosExtrasZoomingImageTransitionController *)self _destinationScale];
  v11 = v7 * (v10 + -1.0);
  [(UIPercentDrivenInteractiveTransition *)self percentComplete];
  v9 = v12;
  if (v11 < 0.0)
  {
    goto LABEL_4;
  }

  v13 = 0;
  v9 = 1.0 - v12;
LABEL_6:
  [(UIPercentDrivenInteractiveTransition *)self duration];
  v15 = v9 * v14;
  zoomingImageView = [(VideosExtrasZoomingImageTransitionController *)self zoomingImageView];
  window = [zoomingImageView window];
  layer = [window layer];

  [layer speed];
  v20 = v19;
  v44 = 0u;
  v45 = 0u;
  v43 = 0u;
  if (zoomingImageView)
  {
    [zoomingImageView deferredTransform];
  }

  v21 = MEMORY[0x1E695EFD0];
  v22 = &v43;
  if (v13)
  {
    v22 = MEMORY[0x1E695EFD0];
  }

  v23 = v22[1];
  v40 = *v22;
  v41 = v23;
  v38 = v44;
  v39 = v45;
  v42 = v22[2];
  v36[0] = v40;
  v36[1] = v23;
  v36[2] = v42;
  v37 = v43;
  [(VideosExtrasZoomingImageTransitionController *)self _desiredSpeedForNonInteractiveAnimationWithDuration:&v37 deferredTransform:v36 finalTransform:v15];
  [layer setSpeed:?];
  v24 = MEMORY[0x1E69DD250];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __104__VideosExtrasZoomingImageTransitionController_completeInteractiveTransitionWithPinchGestureRecognizer___block_invoke;
  v31[3] = &unk_1E872FBA0;
  v25 = zoomingImageView;
  v33 = v40;
  v34 = v41;
  v32 = v25;
  v35 = v42;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __104__VideosExtrasZoomingImageTransitionController_completeInteractiveTransitionWithPinchGestureRecognizer___block_invoke_2;
  v28[3] = &unk_1E872FBC8;
  v29 = layer;
  v30 = v20;
  v26 = layer;
  [v24 animateWithDuration:0 delay:v31 options:v28 animations:v15 completion:0.0];
  v27 = v21[1];
  v37 = *v21;
  v38 = v27;
  v39 = v21[2];
  [v25 setDeferredTransform:&v37];
  if (v13)
  {
    [(UIPercentDrivenInteractiveTransition *)self cancelInteractiveTransition];
  }

  else
  {
    [(UIPercentDrivenInteractiveTransition *)self finishInteractiveTransition];
  }
}

uint64_t __104__VideosExtrasZoomingImageTransitionController_completeInteractiveTransitionWithPinchGestureRecognizer___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 56);
  v4[0] = *(a1 + 40);
  v4[1] = v2;
  v4[2] = *(a1 + 72);
  return [v1 setTransform:v4];
}

- (float)_desiredSpeedForNonInteractiveAnimationWithDuration:(double)duration deferredTransform:(CGAffineTransform *)transform finalTransform:(CGAffineTransform *)finalTransform
{
  v32[8] = *MEMORY[0x1E69E9840];
  zoomingImageView = [(VideosExtrasZoomingImageTransitionController *)self zoomingImageView];
  [zoomingImageView bounds];
  x = v33.origin.x;
  y = v33.origin.y;
  width = v33.size.width;
  height = v33.size.height;
  MinX = CGRectGetMinX(v33);
  v34.origin.x = x;
  v34.origin.y = y;
  v34.size.width = width;
  v34.size.height = height;
  *v32 = MinX;
  v32[1] = CGRectGetMinY(v34);
  v35.origin.x = x;
  v35.origin.y = y;
  v35.size.width = width;
  v35.size.height = height;
  MaxX = CGRectGetMaxX(v35);
  v36.origin.x = x;
  v36.origin.y = y;
  v36.size.width = width;
  v36.size.height = height;
  *&v32[2] = MaxX;
  v32[3] = CGRectGetMinY(v36);
  v37.origin.x = x;
  v37.origin.y = y;
  v37.size.width = width;
  v37.size.height = height;
  v16 = CGRectGetMaxX(v37);
  v38.origin.x = x;
  v38.origin.y = y;
  v38.size.width = width;
  v38.size.height = height;
  *&v32[4] = v16;
  v32[5] = CGRectGetMaxY(v38);
  v39.origin.x = x;
  v39.origin.y = y;
  v39.size.width = width;
  v39.size.height = height;
  v17 = CGRectGetMinX(v39);
  v40.origin.x = x;
  v40.origin.y = y;
  v40.size.width = width;
  v40.size.height = height;
  *&v32[6] = v17;
  v32[7] = CGRectGetMaxY(v40);
  if (zoomingImageView)
  {
    [zoomingImageView transform];
  }

  else
  {
    v30 = 0u;
    v31 = 0u;
    v29 = 0u;
  }

  v18 = *&finalTransform->c;
  v26 = *&finalTransform->a;
  v27 = v18;
  v28 = *&finalTransform->tx;
  [(VideosExtrasZoomingImageTransitionController *)self _maximumDistanceTravelledForPoints:v32 count:4 currentTransform:&v29 finalTransform:&v26];
  v19 = *(MEMORY[0x1E695EFD0] + 16);
  v29 = *MEMORY[0x1E695EFD0];
  v30 = v19;
  v31 = *(MEMORY[0x1E695EFD0] + 32);
  v20 = *&transform->c;
  v26 = *&transform->a;
  v27 = v20;
  v28 = *&transform->tx;
  [(VideosExtrasZoomingImageTransitionController *)self _maximumDistanceTravelledForPoints:v32 count:4 currentTransform:&v29 finalTransform:&v26];
  MPULayoutLinearRelationMake();
  MPULayoutLinearRelationEvaluate();
  v22 = v21;
  [(UIPercentDrivenInteractiveTransition *)self duration];
  v24 = v23;

  return duration / (v24 * fmin(v22, 1.0));
}

- (double)_destinationScale
{
  zoomingImageView = [(VideosExtrasZoomingImageTransitionController *)self zoomingImageView];
  v3 = zoomingImageView;
  if (zoomingImageView)
  {
    [zoomingImageView deferredTransform];
    v4 = (0.0 + 0.0) * 0.5;
  }

  else
  {
    v4 = 0.0;
  }

  return v4;
}

- (double)_maximumDistanceTravelledForPoints:(CGPoint *)points count:(unint64_t)count currentTransform:(CGAffineTransform *)transform finalTransform:(CGAffineTransform *)finalTransform
{
  if (!count)
  {
    return 2.22507386e-308;
  }

  p_y = &points->y;
  result = 2.22507386e-308;
  do
  {
    v8 = *(p_y - 1);
    v9 = finalTransform->tx + *p_y * finalTransform->c + finalTransform->a * v8 - (transform->tx + *p_y * transform->c + transform->a * v8);
    v10 = finalTransform->ty + *p_y * finalTransform->d + finalTransform->b * v8 - (transform->ty + *p_y * transform->d + transform->b * v8);
    v11 = sqrt(v10 * v10 + v9 * v9);
    if (result < v11)
    {
      result = v11;
    }

    p_y += 2;
    --count;
  }

  while (count);
  return result;
}

- (CGPoint)initialPinchCenter
{
  x = self->_initialPinchCenter.x;
  y = self->_initialPinchCenter.y;
  result.y = y;
  result.x = x;
  return result;
}

@end