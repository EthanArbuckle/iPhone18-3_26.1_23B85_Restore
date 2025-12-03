@interface _UIContentViewAnimationStateUpdatingLayer
+ (BOOL)needsDisplayForKey:(id)key;
+ (id)layerForView:(id)view withUpdateHandler:(id)handler completionHandler:(id)completionHandler;
- (_UIContentViewAnimationStateUpdatingLayer)initWithLayer:(id)layer;
- (void)_updateWithAnimationProgress:(double)progress completed:;
- (void)animationCompletedWithPosition:(int64_t)position;
@end

@implementation _UIContentViewAnimationStateUpdatingLayer

+ (id)layerForView:(id)view withUpdateHandler:(id)handler completionHandler:(id)completionHandler
{
  viewCopy = view;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  v12 = completionHandlerCopy;
  if (handlerCopy)
  {
    if (completionHandlerCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIContentViewShared.m" lineNumber:232 description:{@"Invalid parameter not satisfying: %@", @"updateHandler != NULL"}];

    if (v12)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"_UIContentViewShared.m" lineNumber:233 description:{@"Invalid parameter not satisfying: %@", @"completionHandler != NULL"}];

LABEL_3:
  v32.receiver = self;
  v32.super_class = &OBJC_METACLASS____UIContentViewAnimationStateUpdatingLayer;
  v13 = objc_msgSendSuper2(&v32, sel_layer);
  if (v13)
  {
    v31[0] = 0;
    v31[1] = v31;
    v31[2] = 0x2020000000;
    v31[3] = 1;
    v30[0] = 0;
    v30[1] = v30;
    v30[2] = 0x2020000000;
    v30[3] = 1;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __94___UIContentViewAnimationStateUpdatingLayer_layerForView_withUpdateHandler_completionHandler___block_invoke;
    aBlock[3] = &unk_1E7129E18;
    v28 = v30;
    v29 = v31;
    v26 = handlerCopy;
    v27 = v12;
    v14 = _Block_copy(aBlock);
    v15 = v13[6];
    v13[6] = v14;

    [v13 setFrame:{-1.0, -1.0, 1.0, 1.0}];
    layer = [viewCopy layer];
    [layer addSublayer:v13];

    v17 = [MEMORY[0x1E6979318] animationWithKeyPath:@"progress"];
    [v17 setFromValue:&unk_1EFE2F028];
    [v17 setToValue:&unk_1EFE2F038];
    [v17 setRemovedOnCompletion:0];
    v18 = +[UIView _currentViewAnimationState];
    [v18 setAnimationAttributes:v17 skipDelegateAssignment:0 customCurve:0];
    if (+[UIView _shouldTrackAnimationsWithAnimator])
    {
      v19 = [UIViewPropertyAnimator _trackNonAdditiveAnimationWithAnimator:v17 forLayer:v13 forKey:@"progress"];
      toValue = [v17 toValue];
      [v19 _setOriginalToValue:toValue forKey:@"progress" inLayer:v13];
    }

    else if (+[UIView _isAnimationTracking])
    {
      [v18 _trackAnimation:v17 withAnimationKey:@"progress" forKeyPath:@"progress" inLayer:v13];
    }

    keyPath = [v17 keyPath];
    [v13 addAnimation:v17 forKey:keyPath];

    v13[7] = 0x3FF0000000000000;
    _Block_object_dispose(v30, 8);
    _Block_object_dispose(v31, 8);
  }

  return v13;
}

- (_UIContentViewAnimationStateUpdatingLayer)initWithLayer:(id)layer
{
  layerCopy = layer;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIContentViewShared.m" lineNumber:282 description:{@"Unexpected layer class: %@", layerCopy}];
  }

  v14.receiver = self;
  v14.super_class = _UIContentViewAnimationStateUpdatingLayer;
  v6 = [(_UIContentViewAnimationStateUpdatingLayer *)&v14 initWithLayer:layerCopy];
  v7 = v6;
  if (v6)
  {
    v6->_progress = layerCopy[7];
    v8 = layerCopy[6];
    v9 = layerCopy;
    v10 = [v8 copy];
    progressHandler = v7->_progressHandler;
    v7->_progressHandler = v10;
  }

  return v7;
}

+ (BOOL)needsDisplayForKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:@"progress"])
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS____UIContentViewAnimationStateUpdatingLayer;
    v5 = objc_msgSendSuper2(&v7, sel_needsDisplayForKey_, keyCopy);
  }

  return v5;
}

- (void)_updateWithAnimationProgress:(double)progress completed:
{
  if (self)
  {
    v5 = _Block_copy(*(self + 48));
    if (v5)
    {
      v6 = v5;
      (*(v5 + 2))(v5, a2, progress);
      v5 = v6;
    }
  }
}

- (void)animationCompletedWithPosition:(int64_t)position
{
  v4 = 0.0;
  if (!position)
  {
    v4 = 1.0;
  }

  self->_progress = v4;
  [(_UIContentViewAnimationStateUpdatingLayer *)self _updateWithAnimationProgress:v4 completed:?];
  progressHandler = self->_progressHandler;
  self->_progressHandler = 0;

  [(_UIContentViewAnimationStateUpdatingLayer *)self removeFromSuperlayer];
}

@end