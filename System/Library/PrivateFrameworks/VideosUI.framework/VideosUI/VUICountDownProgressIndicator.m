@interface VUICountDownProgressIndicator
- (UIEdgeInsets)backgroundImageInset;
- (UIEdgeInsets)centerImageInset;
- (UIEdgeInsets)progressInset;
- (VUICountDownProgressIndicator)initWithFrame:(CGRect)a3 duration:(double)a4;
- (void)_animateValueOnDisplayLink:(id)a3;
- (void)_configureBackground;
- (void)_configureProgressLayer;
- (void)_setProgress:(double)a3 animated:(BOOL)a4;
- (void)_stopAutoAnimation;
- (void)dealloc;
- (void)didMoveToSuperview;
- (void)layoutSubviews;
- (void)setBackgroundTintColor:(id)a3;
- (void)setCenterImage:(id)a3;
- (void)setCenterImageInset:(UIEdgeInsets)a3;
- (void)setProgressTintColor:(id)a3;
- (void)setTintColor:(id)a3;
@end

@implementation VUICountDownProgressIndicator

- (VUICountDownProgressIndicator)initWithFrame:(CGRect)a3 duration:(double)a4
{
  v17.receiver = self;
  v17.super_class = VUICountDownProgressIndicator;
  v5 = [(VUICountDownProgressIndicator *)&v17 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v6 = v5;
  if (v5)
  {
    *(v5 + 52) = a4;
    *(v5 + 70) = 0xBFF0000000000000;
    *(v5 + 67) = 0;
    *(v5 + 54) = 0x4008000000000000;
    v7 = v5 + 568;
    UIEdgeInsetsMakeWithEdges();
    *v7 = v8;
    v6->_progressInset.left = v9;
    v6->_progressInset.bottom = v10;
    v6->_progressInset.right = v11;
    UIEdgeInsetsMakeWithEdges();
    v6->_centerImageInset.top = v12;
    v6->_centerImageInset.left = v13;
    v6->_centerImageInset.bottom = v14;
    v6->_centerImageInset.right = v15;
    [(VUICountDownProgressIndicator *)v6 setClipsToBounds:1];
  }

  return v6;
}

- (void)didMoveToSuperview
{
  v4.receiver = self;
  v4.super_class = VUICountDownProgressIndicator;
  [(VUICountDownProgressIndicator *)&v4 didMoveToSuperview];
  v3 = [(VUICountDownProgressIndicator *)self superview];

  if (v3)
  {
    [(VUICountDownProgressIndicator *)self _configureProgressLayer];
    [(VUICountDownProgressIndicator *)self restartWithAnimation:1];
  }

  else
  {
    [(VUICountDownProgressIndicator *)self _stopAutoAnimation];
  }
}

- (void)layoutSubviews
{
  v40.receiver = self;
  v40.super_class = VUICountDownProgressIndicator;
  [(VUICountDownProgressIndicator *)&v40 layoutSubviews];
  [(VUICountDownProgressIndicator *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(VUICountDownProgressIndicator *)self progressInset];
  v12 = v4 + v11;
  v14 = v6 + v13;
  v16 = v8 - (v11 + v15);
  v18 = v10 - (v13 + v17);
  v19 = [(VUICountDownProgressIndicator *)self progressLayer];
  [v19 setFrame:{v12, v14, v16, v18}];

  [(VUICountDownProgressIndicator *)self bounds];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  [(VUICountDownProgressIndicator *)self centerImageInset];
  v29 = v21 + v28;
  v31 = v23 + v30;
  v33 = v25 - (v28 + v32);
  v35 = v27 - (v30 + v34);
  v36 = [(VUICountDownProgressIndicator *)self centerImageView];
  [v36 setFrame:{v29, v31, v33, v35}];

  [(VUICountDownProgressIndicator *)self bounds];
  v38 = v37 * 0.5;
  v39 = [(VUICountDownProgressIndicator *)self layer];
  [v39 setCornerRadius:v38];
}

- (void)dealloc
{
  v3 = [(VUICountDownProgressIndicator *)self displayLink];
  [v3 invalidate];

  [(VUICountDownProgressIndicator *)self setDisplayLink:0];
  v4.receiver = self;
  v4.super_class = VUICountDownProgressIndicator;
  [(VUICountDownProgressIndicator *)&v4 dealloc];
}

- (void)setTintColor:(id)a3
{
  v4.receiver = self;
  v4.super_class = VUICountDownProgressIndicator;
  v3 = [(VUICountDownProgressIndicator *)&v4 tintColor];
}

- (void)setProgressTintColor:(id)a3
{
  v5 = a3;
  if (self->_progressTintColor != v5)
  {
    v8 = v5;
    objc_storeStrong(&self->_progressTintColor, a3);
    v6 = [(VUICountDownProgressIndicator *)self progressLayer];
    v7 = v8;
    [v6 setStrokeColor:{-[UIColor CGColor](v8, "CGColor")}];

    [(VUICountDownProgressIndicator *)self setNeedsDisplay];
    v5 = v8;
  }
}

- (void)setCenterImageInset:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_centerImageInset.top, v3), vceqq_f64(*&self->_centerImageInset.bottom, v4)))) & 1) == 0)
  {
    self->_centerImageInset = a3;
    [(VUICountDownProgressIndicator *)self setNeedsDisplay];
  }
}

- (void)setCenterImage:(id)a3
{
  v5 = a3;
  if (self->_centerImage != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_centerImage, a3);
    [(VUICountDownProgressIndicator *)self _configureBackground];
    v5 = v6;
  }
}

- (void)setBackgroundTintColor:(id)a3
{
  v5 = a3;
  if (self->_backgroundTintColor != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_backgroundTintColor, a3);
    [(VUICountDownProgressIndicator *)self setNeedsDisplay];
    v5 = v6;
  }
}

- (void)_configureProgressLayer
{
  v3 = [(VUICountDownProgressIndicator *)self progressLayer];

  if (!v3)
  {
    v7 = objc_opt_new();
    v4 = [(VUICountDownProgressIndicator *)self progressTintColor];
    [v7 setStrokeColor:{objc_msgSend(v4, "CGColor")}];

    v5 = [MEMORY[0x1E69DC888] clearColor];
    [v7 setFillColor:{objc_msgSend(v5, "CGColor")}];

    [(VUICountDownProgressIndicator *)self progressWidth];
    [v7 setLineWidth:?];
    v6 = [(VUICountDownProgressIndicator *)self layer];
    [v6 addSublayer:v7];

    [(VUICountDownProgressIndicator *)self setProgressLayer:v7];
  }
}

- (void)_configureBackground
{
  v3 = [(VUICountDownProgressIndicator *)self backgroundTintColor];

  if (v3)
  {
    v4 = [(VUICountDownProgressIndicator *)self backgroundTintColor];
    [(VUICountDownProgressIndicator *)self setBackgroundColor:v4];
  }

  v5 = [(VUICountDownProgressIndicator *)self centerImage];

  if (v5)
  {
    v6 = [(VUICountDownProgressIndicator *)self centerImageView];
    v7 = [v6 superview];

    if (v7 == self)
    {
      v8 = [(VUICountDownProgressIndicator *)self centerImageView];
      [v8 removeFromSuperview];
    }

    v9 = objc_alloc(MEMORY[0x1E69DCAE0]);
    v10 = [(VUICountDownProgressIndicator *)self centerImage];
    v11 = [v9 initWithImage:v10];
    [(VUICountDownProgressIndicator *)self setCenterImageView:v11];

    v12 = [(VUICountDownProgressIndicator *)self centerImageView];
    [(VUICountDownProgressIndicator *)self addSubview:v12];
  }
}

- (void)_setProgress:(double)a3 animated:(BOOL)a4
{
  if (a3 != 0.0 && self->_progress != a3)
  {
    if (a4)
    {
      [(VUICountDownProgressIndicator *)self setAnimating:1];
      v6 = [(VUICountDownProgressIndicator *)self displayLink];

      if (!v6)
      {
        v7 = [MEMORY[0x1E69DCEB0] mainScreen];
        v8 = [v7 displayLinkWithTarget:self selector:sel__animateValueOnDisplayLink_];

        v9 = [MEMORY[0x1E695DFD0] currentRunLoop];
        [v8 addToRunLoop:v9 forMode:*MEMORY[0x1E695DA28]];

        [(VUICountDownProgressIndicator *)self setDisplayLink:v8];
      }
    }

    else
    {
      [(VUICountDownProgressIndicator *)self setAnimating:0];
      v10 = [(VUICountDownProgressIndicator *)self displayLink];
      [v10 invalidate];

      [(VUICountDownProgressIndicator *)self setDisplayLink:0];
    }

    [(VUICountDownProgressIndicator *)self setProgress:a3];

    [(VUICountDownProgressIndicator *)self setNeedsDisplay];
  }
}

- (void)_stopAutoAnimation
{
  [(VUICountDownProgressIndicator *)self setAnimating:0];
  v3 = [(VUICountDownProgressIndicator *)self displayLink];
  [v3 invalidate];

  [(VUICountDownProgressIndicator *)self setDisplayLink:0];
}

- (void)_animateValueOnDisplayLink:(id)a3
{
  v22 = a3;
  [(VUICountDownProgressIndicator *)self autoFillDelta];
  if (v4 == 0.0)
  {
    [v22 duration];
    v6 = v5;
    [(VUICountDownProgressIndicator *)self duration];
    [(VUICountDownProgressIndicator *)self setAutoFillDelta:v6 / v7];
  }

  v8 = 0.0;
  if ([(VUICountDownProgressIndicator *)self isAnimating])
  {
    [(VUICountDownProgressIndicator *)self progress];
    v10 = v9;
    [(VUICountDownProgressIndicator *)self autoFillDelta];
    v8 = v10 + v11;
    [(VUICountDownProgressIndicator *)self _setProgress:1 animated:v8];
  }

  if ([(VUICountDownProgressIndicator *)self isAnimating])
  {
    v12 = [(VUICountDownProgressIndicator *)self progressLayer];
    [v12 frame];
    v14 = v13;
    v16 = v15;

    v17 = v8 * -6.28318531 + -1.57079633;
    if (self->_countDownProgressDirection != 1)
    {
      v17 = v8 * 6.28318531 + -1.57079633;
    }

    v18 = [MEMORY[0x1E69DC728] bezierPathWithArcCenter:1 radius:v14 * 0.5 startAngle:v16 * 0.5 endAngle:v16 * 0.5 clockwise:{-1.57079633, v17}];
    v19 = [(VUICountDownProgressIndicator *)self progressLayer];
    [v19 setPath:{objc_msgSend(v18, "CGPath")}];

    [(VUICountDownProgressIndicator *)self setNeedsDisplay];
  }

  if (v8 >= 1.0)
  {
    [(VUICountDownProgressIndicator *)self _stopAutoAnimation];
    v20 = [(VUICountDownProgressIndicator *)self completion];

    if (v20)
    {
      v21 = [(VUICountDownProgressIndicator *)self completion];
      v21[2]();
    }
  }
}

- (UIEdgeInsets)progressInset
{
  top = self->_progressInset.top;
  left = self->_progressInset.left;
  bottom = self->_progressInset.bottom;
  right = self->_progressInset.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)backgroundImageInset
{
  top = self->_backgroundImageInset.top;
  left = self->_backgroundImageInset.left;
  bottom = self->_backgroundImageInset.bottom;
  right = self->_backgroundImageInset.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)centerImageInset
{
  top = self->_centerImageInset.top;
  left = self->_centerImageInset.left;
  bottom = self->_centerImageInset.bottom;
  right = self->_centerImageInset.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end