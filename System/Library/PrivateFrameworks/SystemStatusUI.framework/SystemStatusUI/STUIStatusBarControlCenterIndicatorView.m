@interface STUIStatusBarControlCenterIndicatorView
- (void)_setupMaskView;
- (void)_updateMaskFrame;
- (void)_updateMaskLayersFrames;
- (void)layoutSubviews;
- (void)setHideWithWipe:(BOOL)a3;
@end

@implementation STUIStatusBarControlCenterIndicatorView

- (void)_setupMaskView
{
  v16[2] = *MEMORY[0x277D85DE8];
  v3 = [(STUIStatusBarControlCenterIndicatorView *)self maskView];

  if (!v3)
  {
    v4 = objc_alloc(MEMORY[0x277D75D18]);
    [(STUIStatusBarControlCenterIndicatorView *)self bounds];
    v5 = [v4 initWithFrame:?];
    [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(STUIStatusBarControlCenterIndicatorView *)self setMaskView:v5];
    v6 = objc_alloc_init(MEMORY[0x277CD9ED0]);
    maskSolidLayer = self->_maskSolidLayer;
    self->_maskSolidLayer = v6;

    v8 = [MEMORY[0x277D75348] blackColor];
    -[CALayer setBackgroundColor:](self->_maskSolidLayer, "setBackgroundColor:", [v8 CGColor]);

    v9 = objc_alloc_init(MEMORY[0x277CD9EB0]);
    maskGradientLayer = self->_maskGradientLayer;
    self->_maskGradientLayer = v9;

    v11 = [MEMORY[0x277D75348] blackColor];
    v16[0] = [v11 CGColor];
    v12 = [MEMORY[0x277D75348] clearColor];
    v16[1] = [v12 CGColor];
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
    [(CAGradientLayer *)self->_maskGradientLayer setColors:v13];

    [(STUIStatusBarControlCenterIndicatorView *)self _updateMaskLayersFrames];
    v14 = [v5 layer];
    [v14 addSublayer:self->_maskSolidLayer];

    v15 = [v5 layer];
    [v15 addSublayer:self->_maskGradientLayer];
  }
}

- (void)_updateMaskLayersFrames
{
  v3 = [(STUIStatusBarControlCenterIndicatorView *)self maskView];
  [v3 bounds];
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
  v12 = [(STUIStatusBarControlCenterIndicatorView *)self maskView];
  v14 = v12;
  v13 = -v10;
  if (!hidingWithMask)
  {
    v13 = v10;
  }

  [v12 setFrame:{v4, v6 + v13, v8, v10}];
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = STUIStatusBarControlCenterIndicatorView;
  [(STUIStatusBarControlCenterIndicatorView *)&v4 layoutSubviews];
  v3 = [(STUIStatusBarControlCenterIndicatorView *)self maskView];

  if (v3)
  {
    [(STUIStatusBarControlCenterIndicatorView *)self _updateMaskFrame];
    [(STUIStatusBarControlCenterIndicatorView *)self _updateMaskLayersFrames];
  }
}

- (void)setHideWithWipe:(BOOL)a3
{
  if (self->_hidingWithMask != a3)
  {
    self->_hidingWithMask = a3;
    v5 = [(STUIStatusBarControlCenterIndicatorView *)self maskView];

    if (!v5)
    {
      [(STUIStatusBarControlCenterIndicatorView *)self _setupMaskView];
    }

    [(STUIStatusBarControlCenterIndicatorView *)self _updateMaskFrame];
  }
}

@end