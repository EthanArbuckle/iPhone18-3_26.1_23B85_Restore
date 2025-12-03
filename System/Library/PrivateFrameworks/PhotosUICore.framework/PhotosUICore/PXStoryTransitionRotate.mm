@interface PXStoryTransitionRotate
- (PXStoryTransitionRotate)initWithTransitionInfo:(id *)info effect:(id)effect auxiliaryEffect:(id)auxiliaryEffect;
- (PXStoryTransitionRotate)initWithTransitionInfo:(id *)info event:(int64_t)event clipLayouts:(id)layouts;
- (void)configureEffectForTime:(id *)time;
- (void)timeDidChange;
- (void)wasStopped;
@end

@implementation PXStoryTransitionRotate

- (void)configureEffectForTime:(id *)time
{
  effect = [(PXStoryConcreteTransition *)self effect];
  if (effect)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = objc_opt_class();
    v10 = NSStringFromClass(v14);
    px_descriptionForAssertionMessage = [effect px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryTransition.m" lineNumber:900 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"self.effect", v10, px_descriptionForAssertionMessage}];
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryTransition.m" lineNumber:900 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"self.effect", v10}];
  }

LABEL_3:
  auxiliaryEffect = [(PXStoryConcreteTransition *)self auxiliaryEffect];
  if (auxiliaryEffect)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_5;
    }

    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    v16 = objc_opt_class();
    v13 = NSStringFromClass(v16);
    px_descriptionForAssertionMessage2 = [auxiliaryEffect px_descriptionForAssertionMessage];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXStoryTransition.m" lineNumber:901 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"self.auxiliaryEffect", v13, px_descriptionForAssertionMessage2}];
  }

  else
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXStoryTransition.m" lineNumber:901 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"self.auxiliaryEffect", v13}];
  }

LABEL_5:
  +[PXStoryTransitionsSettings sharedInstance];
  objc_claimAutoreleasedReturnValue();
  [(PXStoryConcreteTransition *)self duration];
  time = v18;
  CMTimeGetSeconds(&time);
  time = *time;
  CMTimeGetSeconds(&time);
  PXClamp();
}

- (void)wasStopped
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  clipLayouts = [(PXStoryConcreteTransition *)self clipLayouts];
  v4 = [clipLayouts countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    v10 = *(MEMORY[0x1E695EFD0] + 16);
    v11 = *MEMORY[0x1E695EFD0];
    v9 = *(MEMORY[0x1E695EFD0] + 32);
    do
    {
      v7 = 0;
      do
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(clipLayouts);
        }

        v8 = *(*(&v14 + 1) + 8 * v7);
        v13[0] = v11;
        v13[1] = v10;
        v13[2] = v9;
        [v8 setContentsRectTransform:{v13, v9, v10, v11}];
        ++v7;
      }

      while (v5 != v7);
      v5 = [clipLayouts countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  v12.receiver = self;
  v12.super_class = PXStoryTransitionRotate;
  [(PXStoryConcreteTransition *)&v12 wasStopped];
}

- (void)timeDidChange
{
  v36 = *MEMORY[0x1E69E9840];
  clipLayouts = [(PXStoryConcreteTransition *)self clipLayouts];
  if (!clipLayouts)
  {
    goto LABEL_17;
  }

  [(PXStoryAnimation *)self time];
  *&time.a = *&v33.a;
  time.c = v33.c;
  Seconds = CMTimeGetSeconds(&time);
  [(PXStoryConcreteTransition *)self duration];
  *&time.a = *&v33.a;
  time.c = v33.c;
  v6 = CMTimeGetSeconds(&time);
  angle = self->_angle;
  memset(&time, 0, sizeof(time));
  v8 = Seconds / v6;
  event = [(PXStoryConcreteTransition *)self event];
  switch(event)
  {
    case 1:
      *&v10 = v8;
      [(CAMediaTimingFunction *)self->_transformAnimationCurve _solveForInput:v10];
      v18 = v17;
      v14 = angle * (v17 + -1.0);
      v15 = 0uLL;
      *&v33.tx = 0u;
      v16 = v18 * -0.6 + 1.6;
      break;
    case 2:
      *&v10 = v8;
      [(CAMediaTimingFunction *)self->_transformAnimationCurve _solveForInput:v10];
      v13 = v12;
      v14 = angle * v12;
      v15 = 0uLL;
      *&v33.tx = 0u;
      v16 = v13 * -0.33 + 1.0;
      break;
    case 0:
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryTransition.m" lineNumber:864 description:@"Code which should be unreachable has been reached"];

      abort();
    default:
      goto LABEL_9;
  }

  *&v33.a = v15;
  *&v33.c = v15;
  CGAffineTransformMakeRotation(&v33, v14);
  memset(&v32, 0, sizeof(v32));
  CGAffineTransformMakeScale(&v32, v16, v16);
  t1 = v33;
  t2 = v32;
  CGAffineTransformConcat(&time, &t1, &t2);
LABEL_9:
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v19 = clipLayouts;
  v20 = [v19 countByEnumeratingWithState:&v26 objects:v35 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v27;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v27 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v26 + 1) + 8 * i);
        v33 = time;
        [v24 setContentsRectTransform:&v33];
      }

      v21 = [v19 countByEnumeratingWithState:&v26 objects:v35 count:16];
    }

    while (v21);
  }

LABEL_17:
  v25.receiver = self;
  v25.super_class = PXStoryTransitionRotate;
  [(PXStoryConcreteTransition *)&v25 timeDidChange];
}

- (PXStoryTransitionRotate)initWithTransitionInfo:(id *)info effect:(id)effect auxiliaryEffect:(id)auxiliaryEffect
{
  v9 = *(&info->var1 + 3);
  *&v10 = *&info->var2.var2;
  v6 = [(PXStoryConcreteTransition *)self initWithKind:7 duration:&v9 effect:effect auxiliaryEffect:auxiliaryEffect];
  v7 = *&info->var2.var1;
  v9 = *&info->var0;
  v10 = v7;
  v11 = *&info->var3;
  [(PXStoryTransitionRotate *)v6 _configureWithTransitionInfo:&v9];
  return v6;
}

- (PXStoryTransitionRotate)initWithTransitionInfo:(id *)info event:(int64_t)event clipLayouts:(id)layouts
{
  v9 = *(&info->var1 + 3);
  *&v10 = *&info->var2.var2;
  v6 = [(PXStoryConcreteTransition *)self initWithKind:7 duration:&v9 event:event clipLayouts:layouts];
  v7 = *&info->var2.var1;
  v9 = *&info->var0;
  v10 = v7;
  v11 = *&info->var3;
  [(PXStoryTransitionRotate *)v6 _configureWithTransitionInfo:&v9];
  return v6;
}

@end