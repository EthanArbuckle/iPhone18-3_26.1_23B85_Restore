@interface PXStoryTransitionRotate
- (PXStoryTransitionRotate)initWithTransitionInfo:(id *)a3 effect:(id)a4 auxiliaryEffect:(id)a5;
- (PXStoryTransitionRotate)initWithTransitionInfo:(id *)a3 event:(int64_t)a4 clipLayouts:(id)a5;
- (void)configureEffectForTime:(id *)a3;
- (void)timeDidChange;
- (void)wasStopped;
@end

@implementation PXStoryTransitionRotate

- (void)configureEffectForTime:(id *)a3
{
  v6 = [(PXStoryConcreteTransition *)self effect];
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = objc_opt_class();
    v10 = NSStringFromClass(v14);
    v15 = [v6 px_descriptionForAssertionMessage];
    [v8 handleFailureInMethod:a2 object:self file:@"PXStoryTransition.m" lineNumber:900 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"self.effect", v10, v15}];
  }

  else
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    [v8 handleFailureInMethod:a2 object:self file:@"PXStoryTransition.m" lineNumber:900 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"self.effect", v10}];
  }

LABEL_3:
  v7 = [(PXStoryConcreteTransition *)self auxiliaryEffect];
  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_5;
    }

    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    v16 = objc_opt_class();
    v13 = NSStringFromClass(v16);
    v17 = [v7 px_descriptionForAssertionMessage];
    [v11 handleFailureInMethod:a2 object:self file:@"PXStoryTransition.m" lineNumber:901 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"self.auxiliaryEffect", v13, v17}];
  }

  else
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    [v11 handleFailureInMethod:a2 object:self file:@"PXStoryTransition.m" lineNumber:901 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"self.auxiliaryEffect", v13}];
  }

LABEL_5:
  +[PXStoryTransitionsSettings sharedInstance];
  objc_claimAutoreleasedReturnValue();
  [(PXStoryConcreteTransition *)self duration];
  time = v18;
  CMTimeGetSeconds(&time);
  time = *a3;
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
  v3 = [(PXStoryConcreteTransition *)self clipLayouts];
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * v7);
        v13[0] = v11;
        v13[1] = v10;
        v13[2] = v9;
        [v8 setContentsRectTransform:{v13, v9, v10, v11}];
        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
  v4 = [(PXStoryConcreteTransition *)self clipLayouts];
  if (!v4)
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
  v9 = [(PXStoryConcreteTransition *)self event];
  switch(v9)
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
      v11 = [MEMORY[0x1E696AAA8] currentHandler];
      [v11 handleFailureInMethod:a2 object:self file:@"PXStoryTransition.m" lineNumber:864 description:@"Code which should be unreachable has been reached"];

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
  v19 = v4;
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

- (PXStoryTransitionRotate)initWithTransitionInfo:(id *)a3 effect:(id)a4 auxiliaryEffect:(id)a5
{
  v9 = *(&a3->var1 + 3);
  *&v10 = *&a3->var2.var2;
  v6 = [(PXStoryConcreteTransition *)self initWithKind:7 duration:&v9 effect:a4 auxiliaryEffect:a5];
  v7 = *&a3->var2.var1;
  v9 = *&a3->var0;
  v10 = v7;
  v11 = *&a3->var3;
  [(PXStoryTransitionRotate *)v6 _configureWithTransitionInfo:&v9];
  return v6;
}

- (PXStoryTransitionRotate)initWithTransitionInfo:(id *)a3 event:(int64_t)a4 clipLayouts:(id)a5
{
  v9 = *(&a3->var1 + 3);
  *&v10 = *&a3->var2.var2;
  v6 = [(PXStoryConcreteTransition *)self initWithKind:7 duration:&v9 event:a4 clipLayouts:a5];
  v7 = *&a3->var2.var1;
  v9 = *&a3->var0;
  v10 = v7;
  v11 = *&a3->var3;
  [(PXStoryTransitionRotate *)v6 _configureWithTransitionInfo:&v9];
  return v6;
}

@end