@interface PNPPencilView
+ (id)_hardwareImageForVariant:(unint64_t)variant;
- (CGAffineTransform)transformForDeviceState:(SEL)state;
- (CGSize)_edgeAccurateSizeForLength:(double)length depth:(double)depth deviceState:(id)state;
- (CGSize)comfortableContainingSizeForDeviceState:(id)state;
- (CGSize)intrinsicContentSize;
- (CGSize)intrinsicSizeForDeviceState:(id)state;
- (CGSize)sizeThatFits:(CGSize)fits;
- (PNPPencilView)initWithVariant:(unint64_t)variant;
- (PNPPencilViewDelegate)delegate;
- (void)_animateIndicatorToShown:(BOOL)shown withCompletionBlock:(id)block;
- (void)_prepareMovieView;
- (void)eventSource:(id)source hadPencilDoubleTapped:(id)tapped;
- (void)layoutSubviews;
- (void)prepareMovieForSpinningPencil:(id)pencil;
- (void)setDeviceState:(id)state;
- (void)setSpinning:(BOOL)spinning;
@end

@implementation PNPPencilView

- (void)layoutSubviews
{
  pencilImageView = self->_pencilImageView;
  [(PNPPencilView *)self bounds];
  traitCollection = [(PNPPencilView *)self traitCollection];
  [traitCollection displayScale];
  UIRectIntegralWithScale();
  [(UIImageView *)pencilImageView setFrame:?];

  pencilMovieView = self->_pencilMovieView;
  [(PNPPencilView *)self bounds];
  traitCollection2 = [(PNPPencilView *)self traitCollection];
  [traitCollection2 displayScale];
  UIRectIntegralWithScale();
  [(_PNPPencilMovieView *)pencilMovieView setFrame:?];

  [(PNPPencilView *)self bounds];
  v8 = v7;
  [(PNPPencilView *)self bounds];
  if (v8 >= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = v8;
  }

  v11 = v10 * 0.5;
  layer = [(PNPPencilView *)self layer];
  [layer setCornerRadius:v11];

  [(UIView *)self->_touchIndicatorView _setCornerRadius:6.0];
  [(PNPPencilView *)self bounds];
  UIRectCenteredYInRect();
  [(PNPPencilView *)self bounds];
  UIRectGetCenter();
  UIRectCenteredAboutPoint();
  [(UIView *)self->_touchIndicatorView setFrame:?];
  touchIndicatorView = self->_touchIndicatorView;
  systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
  [(UIView *)touchIndicatorView setBackgroundColor:systemBlueColor];

  v15 = 0.6;
  if (!self->_touchIndicatorShown)
  {
    v15 = 0.0;
  }

  [(UIView *)self->_touchIndicatorView setAlpha:v15];
  v16 = self->_pencilMovieView;
  spinning = [(PNPPencilView *)self spinning];
  v18 = 1.0;
  if (!spinning)
  {
    v18 = 0.0;
  }

  [(_PNPPencilMovieView *)v16 setAlpha:v18];
}

- (void)_animateIndicatorToShown:(BOOL)shown withCompletionBlock:(id)block
{
  blockCopy = block;
  [(PNPPencilView *)self setNeedsLayout];
  [(PNPPencilView *)self layoutIfNeeded];
  v7 = MEMORY[0x277D75D18];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __62__PNPPencilView__animateIndicatorToShown_withCompletionBlock___block_invoke;
  v11[3] = &unk_279A0A100;
  v11[4] = self;
  shownCopy = shown;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __62__PNPPencilView__animateIndicatorToShown_withCompletionBlock___block_invoke_2;
  v9[3] = &unk_279A0A1C0;
  v10 = blockCopy;
  v8 = blockCopy;
  [v7 animateWithDuration:6 delay:v11 options:v9 animations:0.2 completion:0.0];
}

uint64_t __62__PNPPencilView__animateIndicatorToShown_withCompletionBlock___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 432) = *(a1 + 40);
  [*(a1 + 32) setNeedsLayout];
  v2 = *(a1 + 32);

  return [v2 layoutIfNeeded];
}

uint64_t __62__PNPPencilView__animateIndicatorToShown_withCompletionBlock___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)eventSource:(id)source hadPencilDoubleTapped:(id)tapped
{
  tappedCopy = tapped;
  [(PNPPencilView *)self _resetTouchIndicatorPosition];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__PNPPencilView_eventSource_hadPencilDoubleTapped___block_invoke;
  v7[3] = &unk_279A0A530;
  v7[4] = self;
  v8 = tappedCopy;
  v6 = tappedCopy;
  [(PNPPencilView *)self _animateIndicatorToShown:1 withCompletionBlock:v7];
}

void __51__PNPPencilView_eventSource_hadPencilDoubleTapped___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __51__PNPPencilView_eventSource_hadPencilDoubleTapped___block_invoke_2;
  v2[3] = &unk_279A0A530;
  v2[4] = v1;
  v3 = *(a1 + 40);
  [v1 _animateIndicatorToShown:0 withCompletionBlock:v2];
}

void __51__PNPPencilView_eventSource_hadPencilDoubleTapped___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __51__PNPPencilView_eventSource_hadPencilDoubleTapped___block_invoke_3;
  v2[3] = &unk_279A0A530;
  v2[4] = v1;
  v3 = *(a1 + 40);
  [v1 _animateIndicatorToShown:1 withCompletionBlock:v2];
}

void __51__PNPPencilView_eventSource_hadPencilDoubleTapped___block_invoke_3(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __51__PNPPencilView_eventSource_hadPencilDoubleTapped___block_invoke_4;
  v2[3] = &unk_279A0A128;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 _animateIndicatorToShown:0 withCompletionBlock:v2];
}

uint64_t __51__PNPPencilView_eventSource_hadPencilDoubleTapped___block_invoke_4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)setDeviceState:(id)state
{
  stateCopy = state;
  deviceState = [(PNPPencilView *)self deviceState];
  v6 = [stateCopy isEqual:deviceState];

  if ((v6 & 1) == 0)
  {
    objc_storeStrong(&self->_deviceState, state);
    [(PNPPencilView *)self setNeedsLayout];
  }
}

- (CGSize)_edgeAccurateSizeForLength:(double)length depth:(double)depth deviceState:(id)state
{
  v7 = MEMORY[0x277D759A0];
  stateCopy = state;
  mainScreen = [v7 mainScreen];
  [mainScreen scale];
  v11 = v10;
  mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen2 nativeScale];
  v14 = v13;

  isOnLeftOrRightSide = [stateCopy isOnLeftOrRightSide];
  if (isOnLeftOrRightSide)
  {
    lengthCopy = depth;
  }

  else
  {
    lengthCopy = length;
  }

  if (isOnLeftOrRightSide)
  {
    depthCopy2 = length;
  }

  else
  {
    depthCopy2 = depth;
  }

  v17.n128_f64[0] = v11 / v14 * depthCopy2;
  v16.n128_f64[0] = v11 / v14 * lengthCopy;
  v18.n128_u64[0] = 1.0;

  MEMORY[0x2821DE808](v16, v17, v18);
  result.height = v22;
  result.width = v21;
  return result;
}

- (CGSize)intrinsicSizeForDeviceState:(id)state
{
  [(PNPPencilView *)self _edgeAccurateSizeForLength:state depth:855.0 deviceState:51.2];
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)comfortableContainingSizeForDeviceState:(id)state
{
  [(PNPPencilView *)self _edgeAccurateSizeForLength:state depth:950.0 deviceState:128.0];
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)intrinsicContentSize
{
  deviceState = [(PNPPencilView *)self deviceState];
  [(PNPPencilView *)self intrinsicSizeForDeviceState:deviceState];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  v5 = [objc_opt_class() _hardwareImageForVariant:self->_variant];
  [v5 size];
  v7 = v6;
  [v5 size];
  v9 = v7 / v8;
  if (width == 0.0 || width == *MEMORY[0x277D77260])
  {
    width = height * v9;
  }

  else if (height == 0.0 || height == *MEMORY[0x277D77260])
  {
    height = width * (1.0 / v9);
  }

  else
  {
    [v5 size];
    width = v10;
    height = v11;
  }

  v12 = width;
  v13 = height;
  result.height = v13;
  result.width = v12;
  return result;
}

- (CGAffineTransform)transformForDeviceState:(SEL)state
{
  v9 = a4;
  if ([v9 isOnLeftOrRightSide])
  {
    if ([v9 edge] == 8)
    {
      v5 = 1.57079633;
LABEL_6:
      CGAffineTransformMakeRotation(retstr, v5);
      goto LABEL_8;
    }

    if ([v9 edge] == 2)
    {
      v5 = -1.57079633;
      goto LABEL_6;
    }
  }

  v6 = MEMORY[0x277CBF2C0];
  v7 = *(MEMORY[0x277CBF2C0] + 16);
  *&retstr->a = *MEMORY[0x277CBF2C0];
  *&retstr->c = v7;
  *&retstr->tx = *(v6 + 32);
LABEL_8:

  return result;
}

+ (id)_hardwareImageForVariant:(unint64_t)variant
{
  if (_hardwareImageForVariant__onceToken != -1)
  {
    +[PNPPencilView _hardwareImageForVariant:];
  }

  v4 = &_hardwareImageForVariant____hardwareImageForPencilPairingUI;
  if (variant)
  {
    v4 = &_hardwareImageForVariant____hardwareImageForSettings;
  }

  v5 = *v4;

  return v5;
}

void __42__PNPPencilView__hardwareImageForVariant___block_invoke()
{
  v0 = MEMORY[0x277D755B8];
  v1 = PencilPairingUIBundle();
  v2 = [v0 imageNamed:@"hw_pencilpairingui" inBundle:v1 compatibleWithTraitCollection:0];
  v3 = _hardwareImageForVariant____hardwareImageForPencilPairingUI;
  _hardwareImageForVariant____hardwareImageForPencilPairingUI = v2;

  v4 = MEMORY[0x277D755B8];
  v7 = PencilPairingUIBundle();
  v5 = [v4 imageNamed:@"hw_settings" inBundle:v7 compatibleWithTraitCollection:0];
  v6 = _hardwareImageForVariant____hardwareImageForSettings;
  _hardwareImageForVariant____hardwareImageForSettings = v5;
}

- (void)setSpinning:(BOOL)spinning
{
  spinningCopy = spinning;
  if ([(PNPPencilView *)self spinning]!= spinning)
  {
    if (spinningCopy)
    {
      [(_PNPPencilMovieView *)self->_pencilMovieView prepare];
    }

    self->_spinning = spinningCopy;

    [(PNPPencilView *)self setNeedsLayout];
  }
}

- (void)_prepareMovieView
{
  [(_PNPPencilMovieView *)self->_pencilMovieView prepare];
  pencilMovieView = self->_pencilMovieView;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __34__PNPPencilView__prepareMovieView__block_invoke;
  v4[3] = &unk_279A0A060;
  v4[4] = self;
  [(_PNPPencilMovieView *)pencilMovieView completeRevolutionWithCompletionBlock:v4];
}

void __34__PNPPencilView__prepareMovieView__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 472));

  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained((*(a1 + 32) + 472));
    [v3 didCompleteOneRevolution];
  }
}

- (PNPPencilView)initWithVariant:(unint64_t)variant
{
  v12.receiver = self;
  v12.super_class = PNPPencilView;
  v4 = [(PNPPencilView *)&v12 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v4->_variant = variant;
  v5 = objc_alloc(MEMORY[0x277D755E8]);
  v6 = [objc_opt_class() _hardwareImageForVariant:variant];
  v7 = [v5 initWithImage:v6];
  pencilImageView = v4->_pencilImageView;
  v4->_pencilImageView = v7;

  [(UIImageView *)v4->_pencilImageView setContentMode:1];
  [(PNPPencilView *)v4 addSubview:v4->_pencilImageView];
  v9 = objc_alloc_init(MEMORY[0x277D75D18]);
  touchIndicatorView = v4->_touchIndicatorView;
  v4->_touchIndicatorView = v9;

  [(PNPPencilView *)v4 addSubview:v4->_touchIndicatorView];
  return v4;
}

- (void)prepareMovieForSpinningPencil:(id)pencil
{
  pencilCopy = pencil;
  v5 = [_PNPPencilMovieView alloc];
  deviceType = [pencilCopy deviceType];

  v7 = [(_PNPPencilMovieView *)v5 initWithDeviceType:deviceType];
  pencilMovieView = self->_pencilMovieView;
  self->_pencilMovieView = v7;

  [(PNPPencilView *)self addSubview:self->_pencilMovieView];
  if (self->_spinning)
  {

    [(PNPPencilView *)self _prepareMovieView];
  }
}

- (PNPPencilViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end