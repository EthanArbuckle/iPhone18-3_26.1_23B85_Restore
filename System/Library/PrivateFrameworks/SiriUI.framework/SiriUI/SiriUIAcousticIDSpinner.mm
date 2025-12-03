@interface SiriUIAcousticIDSpinner
- (BOOL)isShowing;
- (CGSize)sizeThatFits:(CGSize)fits;
- (SiriUIAcousticIDSpinner)initWithFrame:(CGRect)frame;
- (SiriUIAcousticIDSpinnerDelegate)delegate;
- (id)_imageForSpinner;
- (id)_spinningAnimation;
- (void)animateIn;
- (void)animateOut;
- (void)layoutSubviews;
@end

@implementation SiriUIAcousticIDSpinner

- (SiriUIAcousticIDSpinner)initWithFrame:(CGRect)frame
{
  v28.receiver = self;
  v28.super_class = SiriUIAcousticIDSpinner;
  v3 = [(SiriUIAcousticIDSpinner *)&v28 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x277D75D68]);
    v5 = MEMORY[0x277D75D00];
    v6 = [MEMORY[0x277D75210] effectWithStyle:2];
    v7 = [v5 effectForBlurEffect:v6];
    v8 = [v4 initWithEffect:v7];
    vibrancyView = v3->_vibrancyView;
    v3->_vibrancyView = v8;

    [(UIVisualEffectView *)v3->_vibrancyView setAutoresizingMask:18];
    [(UIVisualEffectView *)v3->_vibrancyView setUserInteractionEnabled:0];
    [(SiriUIAcousticIDSpinner *)v3 insertSubview:v3->_vibrancyView atIndex:0];
    layer = [(SiriUIAcousticIDSpinner *)v3 layer];
    [layer setAllowsGroupBlending:0];

    v11 = objc_alloc_init(MEMORY[0x277D75D18]);
    [v11 setAutoresizingMask:18];
    [v11 setUserInteractionEnabled:0];
    v12 = objc_alloc(MEMORY[0x277D755E8]);
    v13 = MEMORY[0x277D755B8];
    v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v15 = [v13 imageNamed:@"MusicNote" inBundle:v14];
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    v17 = [v15 _flatImageWithColor:whiteColor];
    v18 = [v12 initWithImage:v17];
    musicNoteView = v3->_musicNoteView;
    v3->_musicNoteView = v18;

    [(UIImageView *)v3->_musicNoteView setUserInteractionEnabled:0];
    layer2 = [(UIImageView *)v3->_musicNoteView layer];
    [layer2 setOpacity:0.0];

    [v11 addSubview:v3->_musicNoteView];
    v21 = objc_alloc(MEMORY[0x277D755E8]);
    _imageForSpinner = [(SiriUIAcousticIDSpinner *)v3 _imageForSpinner];
    v23 = [v21 initWithImage:_imageForSpinner];
    spinnerView = v3->_spinnerView;
    v3->_spinnerView = v23;

    [(UIImageView *)v3->_spinnerView setUserInteractionEnabled:0];
    layer3 = [(UIImageView *)v3->_spinnerView layer];
    [layer3 setOpacity:0.0];

    [v11 addSubview:v3->_spinnerView];
    contentView = [(UIVisualEffectView *)v3->_vibrancyView contentView];
    [contentView addSubview:v11];
  }

  return v3;
}

- (id)_spinningAnimation
{
  v2 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"transform.rotation.z"];
  UIAnimationDragCoefficient();
  [v2 setDuration:v3];
  LODWORD(v4) = 2139095040;
  [v2 setRepeatCount:v4];
  [v2 setFromValue:&unk_287A0D428];
  [v2 setToValue:&unk_287A0D438];

  return v2;
}

- (id)_imageForSpinner
{
  v8.width = 22.0;
  v8.height = 22.0;
  UIGraphicsBeginImageContextWithOptions(v8, 0, 0.0);
  CurrentContext = UIGraphicsGetCurrentContext();
  whiteColor = [MEMORY[0x277D75348] whiteColor];
  cGColor = [whiteColor CGColor];

  CGContextSetStrokeColorWithColor(CurrentContext, cGColor);
  CGContextAddArc(CurrentContext, 11.0, 11.0, 10.0, 1.57079633, 1.91986218, 1);
  CGContextStrokePath(CurrentContext);
  v5 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v5;
}

- (BOOL)isShowing
{
  layer = [(UIImageView *)self->_musicNoteView layer];
  [layer opacity];
  v4 = v3 == 1.0;

  return v4;
}

- (void)animateIn
{
  layer = [(UIImageView *)self->_musicNoteView layer];
  [layer opacity];
  v5 = v4;

  if (v5 == 0.0)
  {
    v16 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"opacity"];
    [v16 setFromValue:&unk_287A0D1F0];
    [v16 setToValue:&unk_287A0D208];
    layer2 = [(UIImageView *)self->_musicNoteView layer];
    [layer2 addAnimation:v16 forKey:@"AcousticIDOpacityAnimationIn"];

    layer3 = [(UIImageView *)self->_spinnerView layer];
    [layer3 addAnimation:v16 forKey:@"AcousticIDOpacityAnimationIn"];

    v8 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"transform.scale"];
    [v8 setFromValue:&unk_287A0D1F0];
    [v8 setToValue:&unk_287A0D208];
    layer4 = [(UIImageView *)self->_spinnerView layer];
    [layer4 addAnimation:v8 forKey:@"AcousticIDScaleAnimationIn"];

    _spinningAnimation = [(SiriUIAcousticIDSpinner *)self _spinningAnimation];
    [_spinningAnimation setBeginTime:CACurrentMediaTime()];
    layer5 = [(UIImageView *)self->_spinnerView layer];
    [layer5 addAnimation:_spinningAnimation forKey:@"kAcousticIDSpinnerAnimation"];

    layer6 = [(UIImageView *)self->_musicNoteView layer];
    LODWORD(v13) = 1.0;
    [layer6 setOpacity:v13];

    layer7 = [(UIImageView *)self->_spinnerView layer];
    LODWORD(v15) = 1.0;
    [layer7 setOpacity:v15];
  }
}

- (void)animateOut
{
  layer = [(UIImageView *)self->_musicNoteView layer];
  [layer opacity];
  v5 = v4;

  if (v5 != 0.0)
  {
    [MEMORY[0x277CD9FF0] begin];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __37__SiriUIAcousticIDSpinner_animateOut__block_invoke;
    v11[3] = &unk_279C59D78;
    v11[4] = self;
    [MEMORY[0x277CD9FF0] setCompletionBlock:v11];
    v6 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"opacity"];
    [v6 setFromValue:&unk_287A0D208];
    [v6 setToValue:&unk_287A0D1F0];
    layer2 = [(UIImageView *)self->_musicNoteView layer];
    [layer2 addAnimation:v6 forKey:@"AcousticIDOpacityAnimationOut"];

    layer3 = [(UIImageView *)self->_spinnerView layer];
    [layer3 addAnimation:v6 forKey:@"AcousticIDOpacityAnimationOut"];

    layer4 = [(UIImageView *)self->_musicNoteView layer];
    [layer4 setOpacity:0.0];

    layer5 = [(UIImageView *)self->_spinnerView layer];
    [layer5 setOpacity:0.0];

    [MEMORY[0x277CD9FF0] commit];
  }
}

void __37__SiriUIAcousticIDSpinner_animateOut__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 432));
  [WeakRetained acousticIDSpinnerDidHide:*(a1 + 32)];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v3 = 22.0;
  v4 = 22.0;
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)layoutSubviews
{
  [(SiriUIAcousticIDSpinner *)self bounds];
  [(UIImageView *)self->_spinnerView frame];
  [(UIImageView *)self->_spinnerView setFrame:0.0, 0.0];
  [(UIImageView *)self->_musicNoteView sizeToFit];
  [(UIImageView *)self->_musicNoteView frame];
  UIRectCenteredIntegralRectScale();
  musicNoteView = self->_musicNoteView;
  v5 = v4 + -1.0;

  [(UIImageView *)musicNoteView setFrame:v5];
}

- (SiriUIAcousticIDSpinnerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end