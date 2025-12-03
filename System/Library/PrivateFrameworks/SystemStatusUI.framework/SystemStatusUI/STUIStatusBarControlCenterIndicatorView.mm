@interface STUIStatusBarControlCenterIndicatorView
- (void)_setupMaskView;
- (void)_updateMaskFrame;
- (void)_updateMaskLayersFrames;
- (void)layoutSubviews;
- (void)setHideWithWipe:(BOOL)wipe;
@end

@implementation STUIStatusBarControlCenterIndicatorView

- (void)_setupMaskView
{
  v16[2] = *MEMORY[0x277D85DE8];
  maskView = [(STUIStatusBarControlCenterIndicatorView *)self maskView];

  if (!maskView)
  {
    v4 = objc_alloc(MEMORY[0x277D75D18]);
    [(STUIStatusBarControlCenterIndicatorView *)self bounds];
    v5 = [v4 initWithFrame:?];
    [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(STUIStatusBarControlCenterIndicatorView *)self setMaskView:v5];
    v6 = objc_alloc_init(MEMORY[0x277CD9ED0]);
    maskSolidLayer = self->_maskSolidLayer;
    self->_maskSolidLayer = v6;

    blackColor = [MEMORY[0x277D75348] blackColor];
    -[CALayer setBackgroundColor:](self->_maskSolidLayer, "setBackgroundColor:", [blackColor CGColor]);

    v9 = objc_alloc_init(MEMORY[0x277CD9EB0]);
    maskGradientLayer = self->_maskGradientLayer;
    self->_maskGradientLayer = v9;

    blackColor2 = [MEMORY[0x277D75348] blackColor];
    v16[0] = [blackColor2 CGColor];
    clearColor = [MEMORY[0x277D75348] clearColor];
    v16[1] = [clearColor CGColor];
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
    [(CAGradientLayer *)self->_maskGradientLayer setColors:v13];

    [(STUIStatusBarControlCenterIndicatorView *)self _updateMaskLayersFrames];
    layer = [v5 layer];
    [layer addSublayer:self->_maskSolidLayer];

    layer2 = [v5 layer];
    [layer2 addSublayer:self->_maskGradientLayer];
  }
}

- (void)_updateMaskLayersFrames
{
  maskView = [(STUIStatusBarControlCenterIndicatorView *)self maskView];
  [maskView bounds];
  v5 = v4;
  v7 = v6;

  [(CALayer *)self->_maskSolidLayer setFrame:0.0, -v7, v5, v7];
  maskGradientLayer = self->_maskGradientLayer;

  [(CAGradientLayer *)maskGradientLayer setFrame:0.0, 0.0, v5, v7 * 0.5];
}

- (void)_updateMaskFrame
{
  [(STUIStatusBarControlCenterIndicatorView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  hidingWithMask = self->_hidingWithMask;
  maskView = [(STUIStatusBarControlCenterIndicatorView *)self maskView];
  v14 = maskView;
  v13 = -v10;
  if (!hidingWithMask)
  {
    v13 = v10;
  }

  [maskView setFrame:{v4, v6 + v13, v8, v10}];
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = STUIStatusBarControlCenterIndicatorView;
  [(STUIStatusBarControlCenterIndicatorView *)&v4 layoutSubviews];
  maskView = [(STUIStatusBarControlCenterIndicatorView *)self maskView];

  if (maskView)
  {
    [(STUIStatusBarControlCenterIndicatorView *)self _updateMaskFrame];
    [(STUIStatusBarControlCenterIndicatorView *)self _updateMaskLayersFrames];
  }
}

- (void)setHideWithWipe:(BOOL)wipe
{
  if (self->_hidingWithMask != wipe)
  {
    self->_hidingWithMask = wipe;
    maskView = [(STUIStatusBarControlCenterIndicatorView *)self maskView];

    if (!maskView)
    {
      [(STUIStatusBarControlCenterIndicatorView *)self _setupMaskView];
    }

    [(STUIStatusBarControlCenterIndicatorView *)self _updateMaskFrame];
  }
}

@end