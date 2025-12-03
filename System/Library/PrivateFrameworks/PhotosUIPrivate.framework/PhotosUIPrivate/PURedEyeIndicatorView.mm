@interface PURedEyeIndicatorView
- (PURedEyeIndicatorView)init;
- (void)animateWithDelay:(double)delay completion:(id)completion;
- (void)didMoveToSuperview;
- (void)drawRect:(CGRect)rect;
@end

@implementation PURedEyeIndicatorView

- (void)animateWithDelay:(double)delay completion:(id)completion
{
  completionCopy = completion;
  if (self->_animationType == 1)
  {
    CGAffineTransformMakeTranslation(&v20, -10.0, 0.0);
    [(UIView *)self pu_addTransform:&v20];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __53__PURedEyeIndicatorView_animateWithDelay_completion___block_invoke;
    v19[3] = &unk_1E7B80DD0;
    v19[4] = self;
    [MEMORY[0x1E69DD250] animateWithDuration:0 delay:v19 usingSpringWithDamping:0 initialSpringVelocity:1.29999995 options:delay animations:0.100000001 completion:0.0];
    v7 = MEMORY[0x1E69DD250];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __53__PURedEyeIndicatorView_animateWithDelay_completion___block_invoke_2;
    v18[3] = &unk_1E7B80DD0;
    v18[4] = self;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __53__PURedEyeIndicatorView_animateWithDelay_completion___block_invoke_3;
    v16[3] = &unk_1E7B7FA80;
    v17 = completionCopy;
    v8 = completionCopy;
    [v7 animateWithDuration:0 delay:v18 options:v16 animations:0.3 completion:delay + 0.7];
    v9 = v17;
  }

  else
  {
    memset(&v20, 0, sizeof(v20));
    [(PURedEyeIndicatorView *)self transform];
    CGAffineTransformScale(&v20, &v15, 3.0, 3.0);
    v10 = MEMORY[0x1E69DD250];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v14 = v20;
    v13[2] = __53__PURedEyeIndicatorView_animateWithDelay_completion___block_invoke_4;
    v13[3] = &unk_1E7B7D568;
    v13[4] = self;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __53__PURedEyeIndicatorView_animateWithDelay_completion___block_invoke_5;
    v11[3] = &unk_1E7B7FA80;
    v12 = completionCopy;
    v8 = completionCopy;
    [v10 animateWithDuration:3 delay:v13 options:v11 animations:0.300000012 completion:delay];
    v9 = v12;
  }
}

uint64_t __53__PURedEyeIndicatorView_animateWithDelay_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  CGAffineTransformMakeTranslation(&v3, 10.0, 0.0);
  return [v1 pu_addTransform:&v3];
}

uint64_t __53__PURedEyeIndicatorView_animateWithDelay_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __53__PURedEyeIndicatorView_animateWithDelay_completion___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 56);
  v5[0] = *(a1 + 40);
  v5[1] = v3;
  v5[2] = *(a1 + 72);
  [v2 setTransform:v5];
  return [*(a1 + 32) setAlpha:0.0];
}

uint64_t __53__PURedEyeIndicatorView_animateWithDelay_completion___block_invoke_5(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)drawRect:(CGRect)rect
{
  CurrentContext = UIGraphicsGetCurrentContext();
  [(PURedEyeIndicatorView *)self bounds];
  x = v14.origin.x;
  y = v14.origin.y;
  width = v14.size.width;
  height = v14.size.height;
  MidX = CGRectGetMidX(v14);
  v15.origin.x = x;
  v15.origin.y = y;
  v15.size.width = width;
  v15.size.height = height;
  MidY = CGRectGetMidY(v15);
  CGContextSetLineWidth(CurrentContext, 2.0);
  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  CGContextSetStrokeColorWithColor(CurrentContext, [whiteColor CGColor]);

  v13.width = 0.0;
  v13.height = 1.0;
  CGContextSetShadow(CurrentContext, v13, 0.5);
  CGContextAddArc(CurrentContext, MidX, MidY, 8.0, 0.0, 6.28318531, 1);

  CGContextStrokePath(CurrentContext);
}

- (void)didMoveToSuperview
{
  v11.receiver = self;
  v11.super_class = PURedEyeIndicatorView;
  [(PURedEyeIndicatorView *)&v11 didMoveToSuperview];
  window = [(PURedEyeIndicatorView *)self window];

  if (window)
  {
    window2 = [(PURedEyeIndicatorView *)self window];
    [(PURedEyeIndicatorView *)self convertRect:window2 fromView:0.0, 0.0, 1.0, 1.0];
    v6 = v5;
    v8 = v7;

    memset(&v10, 0, sizeof(v10));
    CGAffineTransformMakeScale(&v10, v6, v8);
    v9 = v10;
    [(UIView *)self pu_addTransform:&v9];
  }
}

- (PURedEyeIndicatorView)init
{
  v5.receiver = self;
  v5.super_class = PURedEyeIndicatorView;
  v2 = [(PURedEyeIndicatorView *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(PURedEyeIndicatorView *)v2 setBounds:0.0, 0.0, 22.0, 22.0];
    [(PURedEyeIndicatorView *)v3 setAnimationType:0];
    [(PURedEyeIndicatorView *)v3 setClearsContextBeforeDrawing:1];
    [(PURedEyeIndicatorView *)v3 setOpaque:0];
  }

  return v3;
}

@end