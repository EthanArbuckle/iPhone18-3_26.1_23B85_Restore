@interface PKDiffView
- (void)dealloc;
- (void)performStrokeWithCompletion:(id)completion;
- (void)updateShapeLayer;
@end

@implementation PKDiffView

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = PKDiffView;
  [(PKDiffView *)&v2 dealloc];
}

- (void)updateShapeLayer
{
  if (!self->_shapeLayer)
  {
    [(PKDiffView *)self bounds];
    v4 = v3;
    v6 = v5;
    v7 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v8 = [v7 URLForResource:@"DiffCircle" withExtension:@"caar"];

    v9 = [MEMORY[0x1E6979400] packageWithContentsOfURL:v8 type:*MEMORY[0x1E6979EF0] options:0 error:0];
    rootLayer = [v9 rootLayer];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = rootLayer;
    }

    else
    {
      v11 = 0;
    }

    objc_storeStrong(&self->_shapeLayer, v11);
    [(CAShapeLayer *)self->_shapeLayer frame];
    v13 = v12;
    v15 = v14;
    v16 = CGPathRetain([(CAShapeLayer *)self->_shapeLayer path]);
    v17 = *(MEMORY[0x1E695EFD0] + 16);
    *&transform.a = *MEMORY[0x1E695EFD0];
    *&transform.c = v17;
    *&transform.tx = *(MEMORY[0x1E695EFD0] + 32);
    *&v26.a = *&transform.a;
    *&v26.c = v17;
    *&v26.tx = *&transform.tx;
    CGAffineTransformScale(&transform, &v26, v4 / v13, v6 / v15);
    v25 = transform;
    CGAffineTransformTranslate(&v26, &v25, v13 * 0.5, v15 * 0.5);
    transform = v26;
    v18 = fmin(fmax(*&RandomPathRotation_sPreviousRotation + -0.392699082, -0.785398163), 0.785398163);
    v19 = fmin(fmax(*&RandomPathRotation_sPreviousRotation + 0.392699082, -0.785398163), 0.785398163) - v18;
    v20 = drand48() * (1.57079633 - v19) + -0.785398163;
    if (v20 > v18)
    {
      v20 = v19 + v20;
    }

    RandomPathRotation_sPreviousRotation = *&v20;
    v25 = transform;
    CGAffineTransformRotate(&v26, &v25, v20);
    transform = v26;
    v25 = v26;
    CGAffineTransformTranslate(&v26, &v25, -(v13 * 0.5), -(v15 * 0.5));
    transform = v26;
    v21 = CGPathCreateMutableCopyByTransformingPath(v16, &transform);
    [(CAShapeLayer *)self->_shapeLayer setPath:v21];
    CFRelease(v21);
    mask = [(CAShapeLayer *)self->_shapeLayer mask];
    v26 = transform;
    [mask setAffineTransform:&v26];

    CGPathRelease(v16);
    shapeLayer = self->_shapeLayer;
    [(PKDiffView *)self bounds];
    [(CAShapeLayer *)shapeLayer setFrame:?];
    [(CAShapeLayer *)self->_shapeLayer setGeometryFlipped:1];
    [(CAShapeLayer *)self->_shapeLayer setStrokeEnd:0.0];
    layer = [(PKDiffView *)self layer];
    [layer addSublayer:self->_shapeLayer];
  }
}

- (void)performStrokeWithCompletion:(id)completion
{
  completionCopy = completion;
  [(PKDiffView *)self updateShapeLayer];
  v9 = [MEMORY[0x1E6979318] animationWithKeyPath:@"strokeEnd"];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:0];
  [v9 setFromValue:v5];

  v6 = [MEMORY[0x1E696AD98] numberWithInteger:1];
  [v9 setToValue:v6];

  [(CAShapeLayer *)self->_shapeLayer setStrokeEnd:1.0];
  [(CAShapeLayer *)self->_shapeLayer addAnimation:v9 forKey:@"strokeEnd"];
  [MEMORY[0x1E6979518] animationDuration];
  v8 = dispatch_time(0, ((v7 + 0.100000001) * 1000000000.0));
  dispatch_after(v8, MEMORY[0x1E69E96A0], completionCopy);
}

@end