@interface VUICountDownProgressIndicator
- (UIEdgeInsets)backgroundImageInset;
- (UIEdgeInsets)centerImageInset;
- (UIEdgeInsets)progressInset;
- (VUICountDownProgressIndicator)initWithFrame:(CGRect)frame duration:(double)duration;
- (void)_animateValueOnDisplayLink:(id)link;
- (void)_configureBackground;
- (void)_configureProgressLayer;
- (void)_setProgress:(double)progress animated:(BOOL)animated;
- (void)_stopAutoAnimation;
- (void)dealloc;
- (void)didMoveToSuperview;
- (void)layoutSubviews;
- (void)setBackgroundTintColor:(id)color;
- (void)setCenterImage:(id)image;
- (void)setCenterImageInset:(UIEdgeInsets)inset;
- (void)setProgressTintColor:(id)color;
- (void)setTintColor:(id)color;
@end

@implementation VUICountDownProgressIndicator

- (VUICountDownProgressIndicator)initWithFrame:(CGRect)frame duration:(double)duration
{
  v17.receiver = self;
  v17.super_class = VUICountDownProgressIndicator;
  v5 = [(VUICountDownProgressIndicator *)&v17 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v6 = v5;
  if (v5)
  {
    *(v5 + 52) = duration;
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
  superview = [(VUICountDownProgressIndicator *)self superview];

  if (superview)
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
  progressLayer = [(VUICountDownProgressIndicator *)self progressLayer];
  [progressLayer setFrame:{v12, v14, v16, v18}];

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
  centerImageView = [(VUICountDownProgressIndicator *)self centerImageView];
  [centerImageView setFrame:{v29, v31, v33, v35}];

  [(VUICountDownProgressIndicator *)self bounds];
  v38 = v37 * 0.5;
  layer = [(VUICountDownProgressIndicator *)self layer];
  [layer setCornerRadius:v38];
}

- (void)dealloc
{
  displayLink = [(VUICountDownProgressIndicator *)self displayLink];
  [displayLink invalidate];

  [(VUICountDownProgressIndicator *)self setDisplayLink:0];
  v4.receiver = self;
  v4.super_class = VUICountDownProgressIndicator;
  [(VUICountDownProgressIndicator *)&v4 dealloc];
}

- (void)setTintColor:(id)color
{
  v4.receiver = self;
  v4.super_class = VUICountDownProgressIndicator;
  tintColor = [(VUICountDownProgressIndicator *)&v4 tintColor];
}

- (void)setProgressTintColor:(id)color
{
  colorCopy = color;
  if (self->_progressTintColor != colorCopy)
  {
    v8 = colorCopy;
    objc_storeStrong(&self->_progressTintColor, color);
    progressLayer = [(VUICountDownProgressIndicator *)self progressLayer];
    v7 = v8;
    [progressLayer setStrokeColor:{-[UIColor CGColor](v8, "CGColor")}];

    [(VUICountDownProgressIndicator *)self setNeedsDisplay];
    colorCopy = v8;
  }
}

- (void)setCenterImageInset:(UIEdgeInsets)inset
{
  v3.f64[0] = inset.top;
  v3.f64[1] = inset.left;
  v4.f64[0] = inset.bottom;
  v4.f64[1] = inset.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_centerImageInset.top, v3), vceqq_f64(*&self->_centerImageInset.bottom, v4)))) & 1) == 0)
  {
    self->_centerImageInset = inset;
    [(VUICountDownProgressIndicator *)self setNeedsDisplay];
  }
}

- (void)setCenterImage:(id)image
{
  imageCopy = image;
  if (self->_centerImage != imageCopy)
  {
    v6 = imageCopy;
    objc_storeStrong(&self->_centerImage, image);
    [(VUICountDownProgressIndicator *)self _configureBackground];
    imageCopy = v6;
  }
}

- (void)setBackgroundTintColor:(id)color
{
  colorCopy = color;
  if (self->_backgroundTintColor != colorCopy)
  {
    v6 = colorCopy;
    objc_storeStrong(&self->_backgroundTintColor, color);
    [(VUICountDownProgressIndicator *)self setNeedsDisplay];
    colorCopy = v6;
  }
}

- (void)_configureProgressLayer
{
  progressLayer = [(VUICountDownProgressIndicator *)self progressLayer];

  if (!progressLayer)
  {
    v7 = objc_opt_new();
    progressTintColor = [(VUICountDownProgressIndicator *)self progressTintColor];
    [v7 setStrokeColor:{objc_msgSend(progressTintColor, "CGColor")}];

    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [v7 setFillColor:{objc_msgSend(clearColor, "CGColor")}];

    [(VUICountDownProgressIndicator *)self progressWidth];
    [v7 setLineWidth:?];
    layer = [(VUICountDownProgressIndicator *)self layer];
    [layer addSublayer:v7];

    [(VUICountDownProgressIndicator *)self setProgressLayer:v7];
  }
}

- (void)_configureBackground
{
  backgroundTintColor = [(VUICountDownProgressIndicator *)self backgroundTintColor];

  if (backgroundTintColor)
  {
    backgroundTintColor2 = [(VUICountDownProgressIndicator *)self backgroundTintColor];
    [(VUICountDownProgressIndicator *)self setBackgroundColor:backgroundTintColor2];
  }

  centerImage = [(VUICountDownProgressIndicator *)self centerImage];

  if (centerImage)
  {
    centerImageView = [(VUICountDownProgressIndicator *)self centerImageView];
    superview = [centerImageView superview];

    if (superview == self)
    {
      centerImageView2 = [(VUICountDownProgressIndicator *)self centerImageView];
      [centerImageView2 removeFromSuperview];
    }

    v9 = objc_alloc(MEMORY[0x1E69DCAE0]);
    centerImage2 = [(VUICountDownProgressIndicator *)self centerImage];
    v11 = [v9 initWithImage:centerImage2];
    [(VUICountDownProgressIndicator *)self setCenterImageView:v11];

    centerImageView3 = [(VUICountDownProgressIndicator *)self centerImageView];
    [(VUICountDownProgressIndicator *)self addSubview:centerImageView3];
  }
}

- (void)_setProgress:(double)progress animated:(BOOL)animated
{
  if (progress != 0.0 && self->_progress != progress)
  {
    if (animated)
    {
      [(VUICountDownProgressIndicator *)self setAnimating:1];
      displayLink = [(VUICountDownProgressIndicator *)self displayLink];

      if (!displayLink)
      {
        mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
        v8 = [mainScreen displayLinkWithTarget:self selector:sel__animateValueOnDisplayLink_];

        currentRunLoop = [MEMORY[0x1E695DFD0] currentRunLoop];
        [v8 addToRunLoop:currentRunLoop forMode:*MEMORY[0x1E695DA28]];

        [(VUICountDownProgressIndicator *)self setDisplayLink:v8];
      }
    }

    else
    {
      [(VUICountDownProgressIndicator *)self setAnimating:0];
      displayLink2 = [(VUICountDownProgressIndicator *)self displayLink];
      [displayLink2 invalidate];

      [(VUICountDownProgressIndicator *)self setDisplayLink:0];
    }

    [(VUICountDownProgressIndicator *)self setProgress:progress];

    [(VUICountDownProgressIndicator *)self setNeedsDisplay];
  }
}

- (void)_stopAutoAnimation
{
  [(VUICountDownProgressIndicator *)self setAnimating:0];
  displayLink = [(VUICountDownProgressIndicator *)self displayLink];
  [displayLink invalidate];

  [(VUICountDownProgressIndicator *)self setDisplayLink:0];
}

- (void)_animateValueOnDisplayLink:(id)link
{
  linkCopy = link;
  [(VUICountDownProgressIndicator *)self autoFillDelta];
  if (v4 == 0.0)
  {
    [linkCopy duration];
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
    progressLayer = [(VUICountDownProgressIndicator *)self progressLayer];
    [progressLayer frame];
    v14 = v13;
    v16 = v15;

    v17 = v8 * -6.28318531 + -1.57079633;
    if (self->_countDownProgressDirection != 1)
    {
      v17 = v8 * 6.28318531 + -1.57079633;
    }

    v18 = [MEMORY[0x1E69DC728] bezierPathWithArcCenter:1 radius:v14 * 0.5 startAngle:v16 * 0.5 endAngle:v16 * 0.5 clockwise:{-1.57079633, v17}];
    progressLayer2 = [(VUICountDownProgressIndicator *)self progressLayer];
    [progressLayer2 setPath:{objc_msgSend(v18, "CGPath")}];

    [(VUICountDownProgressIndicator *)self setNeedsDisplay];
  }

  if (v8 >= 1.0)
  {
    [(VUICountDownProgressIndicator *)self _stopAutoAnimation];
    completion = [(VUICountDownProgressIndicator *)self completion];

    if (completion)
    {
      completion2 = [(VUICountDownProgressIndicator *)self completion];
      completion2[2]();
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