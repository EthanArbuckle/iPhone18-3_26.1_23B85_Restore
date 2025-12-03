@interface PXMessagesDebugTapbackView
- (BOOL)shouldReloadForUserData:(id)data;
- (CGRect)clippingRect;
- (PXMessagesDebugTapbackView)initWithFrame:(CGRect)frame;
- (void)_bounce;
- (void)_updateFinalAlpha;
- (void)becomeReusable;
- (void)layoutSubviews;
- (void)setAlpha:(double)alpha;
- (void)setIsAnimating:(BOOL)animating;
- (void)setUserData:(id)data;
@end

@implementation PXMessagesDebugTapbackView

- (CGRect)clippingRect
{
  x = self->clippingRect.origin.x;
  y = self->clippingRect.origin.y;
  width = self->clippingRect.size.width;
  height = self->clippingRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)_updateFinalAlpha
{
  isAnimating = [(PXMessagesDebugTapbackView *)self isAnimating];
  v4 = 1.0;
  if (!isAnimating)
  {
    [(PXMessagesDebugTapbackView *)self desiredAlpha];
  }

  v5.receiver = self;
  v5.super_class = PXMessagesDebugTapbackView;
  [(PXMessagesDebugTapbackView *)&v5 setAlpha:v4];
}

- (void)setIsAnimating:(BOOL)animating
{
  if (self->_isAnimating != animating)
  {
    self->_isAnimating = animating;
    [(PXMessagesDebugTapbackView *)self _updateFinalAlpha];
  }
}

- (void)setAlpha:(double)alpha
{
  if (self->_desiredAlpha != alpha)
  {
    self->_desiredAlpha = alpha;
    [(PXMessagesDebugTapbackView *)self _updateFinalAlpha];
  }
}

- (void)_bounce
{
  if (![(PXMessagesDebugTapbackView *)self isAnimating])
  {
    reuseCounter = self->_reuseCounter;
    [(PXMessagesDebugTapbackView *)self setIsAnimating:1];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __37__PXMessagesDebugTapbackView__bounce__block_invoke;
    v6[3] = &unk_1E774C648;
    v6[4] = self;
    [MEMORY[0x1E69DD250] animateWithDuration:4 delay:v6 usingSpringWithDamping:0 initialSpringVelocity:0.1 options:0.0 animations:1.0 completion:1.0];
    v4[5] = reuseCounter;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __37__PXMessagesDebugTapbackView__bounce__block_invoke_2;
    v5[3] = &unk_1E774C648;
    v5[4] = self;
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __37__PXMessagesDebugTapbackView__bounce__block_invoke_3;
    v4[3] = &unk_1E77482F0;
    v4[4] = self;
    [MEMORY[0x1E69DD250] animateWithDuration:4 delay:v5 usingSpringWithDamping:v4 initialSpringVelocity:0.5 options:0.09 animations:0.5 completion:1.0];
  }
}

uint64_t __37__PXMessagesDebugTapbackView__bounce__block_invoke(uint64_t a1)
{
  CGAffineTransformMakeScale(&v5, 0.2, 0.2);
  v2 = *(*(a1 + 32) + 408);
  v4 = v5;
  return [v2 setTransform:&v4];
}

uint64_t __37__PXMessagesDebugTapbackView__bounce__block_invoke_2(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 408);
  v2 = *(MEMORY[0x1E695EFD0] + 16);
  v4[0] = *MEMORY[0x1E695EFD0];
  v4[1] = v2;
  v4[2] = *(MEMORY[0x1E695EFD0] + 32);
  return [v1 setTransform:v4];
}

uint64_t __37__PXMessagesDebugTapbackView__bounce__block_invoke_3(uint64_t a1)
{
  result = [*(a1 + 32) reuseCounter];
  if (result == *(a1 + 40))
  {
    v3 = *(a1 + 32);

    return [v3 setIsAnimating:0];
  }

  return result;
}

- (void)setUserData:(id)data
{
  dataCopy = data;
  v5 = self->_userData;
  v6 = v5;
  if (v5 == dataCopy)
  {
  }

  else
  {
    v7 = [(PXMessagesDebugTapbackUserData *)v5 isEqual:dataCopy];

    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_userData, data);
      asset = [(PXMessagesDebugTapbackUserData *)dataCopy asset];
      isFavorite = [asset isFavorite];

      if (isFavorite)
      {
        asset2 = [(PXMessagesDebugTapbackUserData *)dataCopy asset];
        isFavorite2 = [asset2 isFavorite];
        v12 = 0.0;
        if (isFavorite2)
        {
          v12 = 1.0;
        }

        [(UIImageView *)self->_heartImageView setAlpha:v12];

        if ([(PXMessagesDebugTapbackUserData *)dataCopy shouldAnimate])
        {
          [(PXMessagesDebugTapbackUserData *)dataCopy setShouldAnimate:0];
          [(PXMessagesDebugTapbackView *)self _bounce];
        }
      }
    }
  }
}

- (BOOL)shouldReloadForUserData:(id)data
{
  dataCopy = data;
  asset = [dataCopy asset];
  isFavorite = [asset isFavorite];

  if (isFavorite)
  {
    asset2 = [(PXMessagesDebugTapbackUserData *)self->_userData asset];
    isFavorite2 = [asset2 isFavorite];
    asset3 = [dataCopy asset];
    v10 = isFavorite2 ^ [asset3 isFavorite];
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10;
}

- (void)becomeReusable
{
  [(PXMessagesDebugTapbackView *)self setReuseCounter:[(PXMessagesDebugTapbackView *)self reuseCounter]+ 1];
  [(UIImageView *)self->_heartImageView setAlpha:0.0];
  layer = [(UIImageView *)self->_heartImageView layer];
  [layer removeAllAnimations];

  [(PXMessagesDebugTapbackView *)self setIsAnimating:0];

  [(PXMessagesDebugTapbackView *)self setUserData:0];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PXMessagesDebugTapbackView;
  [(PXMessagesDebugTapbackView *)&v3 layoutSubviews];
  [(PXMessagesDebugTapbackView *)self bounds];
  PXRectGetCenter();
}

- (PXMessagesDebugTapbackView)initWithFrame:(CGRect)frame
{
  v9.receiver = self;
  v9.super_class = PXMessagesDebugTapbackView;
  v3 = [(PXMessagesDebugTapbackView *)&v9 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"heart.circle.fill"];
    v5 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v4];
    heartImageView = v3->_heartImageView;
    v3->_heartImageView = v5;

    orangeColor = [MEMORY[0x1E69DC888] orangeColor];
    [(UIImageView *)v3->_heartImageView setTintColor:orangeColor];

    [(PXMessagesDebugTapbackView *)v3 addSubview:v3->_heartImageView];
  }

  return v3;
}

@end