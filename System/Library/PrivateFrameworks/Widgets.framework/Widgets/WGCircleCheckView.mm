@interface WGCircleCheckView
- (BOOL)_isFrozen;
- (BOOL)isChecked;
- (CGSize)sizeThatFits:(CGSize)a3;
- (WGCircleCheckView)initWithFrame:(CGRect)a3;
- (id)_configureCircleViewIfNecessary;
- (void)_configureCheckViewIfNecessary;
- (void)_setChecked:(BOOL)a3 completion:(id)a4;
- (void)_setFrozen:(BOOL)a3;
- (void)layoutSubviews;
- (void)setChecked:(BOOL)a3;
@end

@implementation WGCircleCheckView

- (WGCircleCheckView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = WGCircleCheckView;
  v3 = [(WGCircleCheckView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(WGCircleCheckView *)v3 setUserInteractionEnabled:0];
  }

  return v4;
}

- (BOOL)isChecked
{
  if ([(WGCircleCheckView *)self _isFrozen])
  {
    return 1;
  }

  checkView = self->_checkView;

  return [(WGCheckView *)checkView isChecked];
}

- (void)setChecked:(BOOL)a3
{
  v3 = a3;
  objc_initWeak(&location, self);
  if (v3 && ([MEMORY[0x277D75D18] _isInAnimationBlock] & 1) == 0)
  {
    [(WGCircleCheckView *)self _setFrozen:1];
  }

  else
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __32__WGCircleCheckView_setChecked___block_invoke;
    v5[3] = &unk_279ED1758;
    v7 = v3;
    objc_copyWeak(&v6, &location);
    [(WGCircleCheckView *)self _setChecked:v3 completion:v5];
    objc_destroyWeak(&v6);
  }

  objc_destroyWeak(&location);
}

void __32__WGCircleCheckView_setChecked___block_invoke(uint64_t a1, int a2)
{
  if (*(a1 + 40) == 1 && a2 != 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _setFrozen:1];
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v3 = 20.0;
  v4 = 20.0;
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)layoutSubviews
{
  v3 = [(WGCircleCheckView *)self layer];
  v4 = [v3 contents];

  if (!v4)
  {
    v5 = [(WGCircleCheckView *)self _configureCircleViewIfNecessary];
    [(WGCircleCheckView *)self _configureCheckViewIfNecessary];
    [(WGCircleCheckView *)self bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    [(UIImageView *)self->_circleView setFrame:?];
    checkView = self->_checkView;

    [(WGCheckView *)checkView setFrame:v7, v9, v11, v13];
  }
}

- (id)_configureCircleViewIfNecessary
{
  circleView = self->_circleView;
  if (!circleView)
  {
    v4 = +[WGMappedImageCache sharedCache];
    v5 = MEMORY[0x277CCACA8];
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = [v5 stringWithFormat:@"%@.circle", v7];
    v9 = [v4 imageForKey:v8 generatingIfNecessaryWithBlock:&__block_literal_global_8];

    v10 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v9];
    v11 = self->_circleView;
    self->_circleView = v10;

    [(UIImageView *)self->_circleView setHidden:1];
    [(WGCircleCheckView *)self addSubview:self->_circleView];
    [(WGCircleCheckView *)self sendSubviewToBack:self->_circleView];

    circleView = self->_circleView;
  }

  return circleView;
}

CGContext *__52__WGCircleCheckView__configureCircleViewIfNecessary__block_invoke()
{
  v0 = _WGMainScreenScale();
  v7.width = 20.0;
  v7.height = 20.0;
  UIGraphicsBeginImageContextWithOptions(v7, 0, v0);
  CurrentContext = UIGraphicsGetCurrentContext();
  if (CurrentContext)
  {
    v2 = CurrentContext;
    BSRectWithSize();
    v3 = CGPathCreateWithEllipseInRect(v8, 0);
    CGContextAddPath(v2, v3);
    CGPathRelease(v3);
    v4 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.35];
    [v4 setFill];

    CGContextFillPath(v2);
    CurrentContext = UIGraphicsGetImageFromCurrentImageContext();
  }

  return CurrentContext;
}

- (void)_configureCheckViewIfNecessary
{
  if (!self->_checkView)
  {
    v3 = objc_alloc_init(WGCheckView);
    checkView = self->_checkView;
    self->_checkView = v3;

    [(WGCircleCheckView *)self addSubview:self->_checkView];
    v5 = self->_checkView;

    [(WGCircleCheckView *)self bringSubviewToFront:v5];
  }
}

- (void)_setChecked:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  if ([(WGCircleCheckView *)self isChecked]!= v4)
  {
    if (v4)
    {
      if ([MEMORY[0x277D75D18] _isInAnimationBlock])
      {
        v22[0] = MEMORY[0x277D85DD0];
        v22[1] = 3221225472;
        v22[2] = __44__WGCircleCheckView__setChecked_completion___block_invoke;
        v22[3] = &unk_279ED0948;
        v22[4] = self;
        [MEMORY[0x277D75D18] performWithoutAnimation:v22];
        v7 = dispatch_group_create();
        [MEMORY[0x277D75D18] inheritedAnimationDuration];
        v9 = v8;
        dispatch_group_enter(v7);
        v10 = MEMORY[0x277D75D18];
        v21[0] = MEMORY[0x277D85DD0];
        v21[1] = 3221225472;
        v21[2] = __44__WGCircleCheckView__setChecked_completion___block_invoke_2;
        v21[3] = &unk_279ED0948;
        v21[4] = self;
        v19[0] = MEMORY[0x277D85DD0];
        v19[1] = 3221225472;
        v19[2] = __44__WGCircleCheckView__setChecked_completion___block_invoke_3;
        v19[3] = &unk_279ED17A0;
        v11 = v7;
        v20 = v11;
        [v10 _animateUsingSpringWithDuration:0 delay:v21 options:v19 mass:v9 stiffness:v9 * 0.5 damping:3.0 initialVelocity:1560.0 animations:600.0 completion:0.0];
        dispatch_group_enter(v11);
        v12 = MEMORY[0x277D75D18];
        v18[0] = MEMORY[0x277D85DD0];
        v18[1] = 3221225472;
        v18[2] = __44__WGCircleCheckView__setChecked_completion___block_invoke_4;
        v18[3] = &unk_279ED0948;
        v18[4] = self;
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = __44__WGCircleCheckView__setChecked_completion___block_invoke_5;
        v16[3] = &unk_279ED17A0;
        v13 = v11;
        v17 = v13;
        [v12 _animateUsingSpringWithDuration:0 delay:v18 options:v16 mass:v9 stiffness:v9 + 0.01 damping:3.0 initialVelocity:1560.0 animations:600.0 completion:0.0];
        if (v6)
        {
          v14[0] = MEMORY[0x277D85DD0];
          v14[1] = 3221225472;
          v14[2] = __44__WGCircleCheckView__setChecked_completion___block_invoke_6;
          v14[3] = &unk_279ED0C88;
          v15 = v6;
          dispatch_group_notify(v13, MEMORY[0x277D85CD0], v14);
        }

        goto LABEL_13;
      }

      [(WGCircleCheckView *)self layoutIfNeeded];
      [(UIImageView *)self->_circleView setHidden:0];
      [(WGCheckView *)self->_checkView setChecked:1];
      if (!v6)
      {
        goto LABEL_13;
      }
    }

    else
    {
      [(WGCircleCheckView *)self _setFrozen:0];
      if (!v6)
      {
        goto LABEL_13;
      }
    }

    (*(v6 + 2))(v6, 1);
    goto LABEL_13;
  }

  if (v6)
  {
    (*(v6 + 2))(v6, 0);
  }

LABEL_13:
}

uint64_t __44__WGCircleCheckView__setChecked_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) layoutIfNeeded];
  v2 = *(*(a1 + 32) + 408);
  CGAffineTransformMakeScale(&v4, 0.0, 0.0);
  [v2 setTransform:&v4];
  return [*(*(a1 + 32) + 408) setHidden:0];
}

uint64_t __44__WGCircleCheckView__setChecked_completion___block_invoke_2(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 408);
  v2 = *(MEMORY[0x277CBF2C0] + 16);
  v4[0] = *MEMORY[0x277CBF2C0];
  v4[1] = v2;
  v4[2] = *(MEMORY[0x277CBF2C0] + 32);
  return [v1 setTransform:v4];
}

- (BOOL)_isFrozen
{
  v2 = [(WGCircleCheckView *)self layer];
  v3 = [v2 contents];
  v4 = v3 != 0;

  return v4;
}

- (void)_setFrozen:(BOOL)a3
{
  v3 = a3;
  if ([(WGCircleCheckView *)self _isFrozen]!= a3)
  {
    if (v3)
    {
      objc_initWeak(&location, self);
      v5 = +[WGMappedImageCache sharedCache];
      v6 = MEMORY[0x277CCACA8];
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = [v6 stringWithFormat:@"%@.composite", v8];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __32__WGCircleCheckView__setFrozen___block_invoke;
      v15[3] = &unk_279ED17C8;
      objc_copyWeak(&v16, &location);
      v10 = [v5 imageForKey:v9 generatingIfNecessaryWithBlock:v15];

      if (v10)
      {
        v11 = [(WGCircleCheckView *)self layer];
        [v11 setContents:{objc_msgSend(v10, "CGImage")}];

        [(UIImageView *)self->_circleView removeFromSuperview];
        circleView = self->_circleView;
        self->_circleView = 0;

        [(WGCheckView *)self->_checkView removeFromSuperview];
        checkView = self->_checkView;
        self->_checkView = 0;
      }

      objc_destroyWeak(&v16);
      objc_destroyWeak(&location);
    }

    else
    {
      v14 = [(WGCircleCheckView *)self layer];
      [v14 setContents:0];

      [(WGCircleCheckView *)self setNeedsLayout];
    }
  }
}

id __32__WGCircleCheckView__setFrozen___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _setChecked:1 completion:0];
  v2 = [WeakRetained _circleView];
  v3 = [v2 image];

  [v3 size];
  v5 = v4;
  v7 = v6;
  v8 = _WGMainScreenScale();
  v14.width = v5;
  v14.height = v7;
  UIGraphicsBeginImageContextWithOptions(v14, 0, v8);
  CurrentContext = UIGraphicsGetCurrentContext();
  if (CurrentContext)
  {
    [v3 drawAtPoint:{*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)}];
    v10 = [WeakRetained _checkView];
    v11 = [v10 layer];
    [v11 renderInContext:CurrentContext];

    CurrentContext = UIGraphicsGetImageFromCurrentImageContext();
  }

  return CurrentContext;
}

@end