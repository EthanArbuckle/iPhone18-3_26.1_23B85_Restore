@interface TPButton
- (CGSize)intrinsicContentSize;
- (void)_animationDidEnd;
- (void)_animationWillBegin;
- (void)layoutSubviews;
- (void)setBlursBackground:(BOOL)a3;
- (void)setButtonColor:(int)a3;
- (void)setImage:(id)a3 forState:(unint64_t)a4;
- (void)setUsesOverlayBlendingForContents:(BOOL)a3;
@end

@implementation TPButton

- (void)setButtonColor:(int)a3
{
  if (self->_color != a3)
  {
    backdropView = self->_backdropView;
    if (backdropView)
    {
      [(_UIBackdropView *)backdropView removeFromSuperview];
    }

    v6 = 10092;
    switch(a3)
    {
      case 0:
        v6 = 10091;
        goto LABEL_13;
      case 1:
      case 7:
        goto LABEL_13;
      case 3:
      case 5:
      case 8:
      case 11:
        v6 = 2030;
        goto LABEL_13;
      case 4:
        break;
      case 6:
        v7 = [MEMORY[0x1E69DC888] whiteColor];
        goto LABEL_15;
      case 10:
        v6 = 2020;
        goto LABEL_13;
      case 12:
        v7 = [MEMORY[0x1E69DC888] systemGreenColor];
        goto LABEL_15;
      case 13:
        v7 = [MEMORY[0x1E69DC888] systemGrayColor];
        goto LABEL_15;
      case 14:
        v7 = [MEMORY[0x1E69DC888] systemRedColor];
        goto LABEL_15;
      case 15:
        v7 = [MEMORY[0x1E69DC888] blackColor];
LABEL_15:
        v10 = v7;
        v11 = [v7 tpImageFromColor];
        [(TPButton *)self setBackgroundImage:v11 forState:0];

        break;
      default:
        v6 = 2010;
LABEL_13:
        v8 = [objc_alloc(MEMORY[0x1E69DD370]) initWithPrivateStyle:v6];
        v9 = self->_backdropView;
        self->_backdropView = v8;

        [(_UIBackdropView *)self->_backdropView setAppliesOutputSettingsAnimationDuration:0.150000006];
        [(_UIBackdropView *)self->_backdropView setConfiguration:1];
        [(TPButton *)self insertSubview:self->_backdropView atIndex:0];
        break;
    }

    v12 = [MEMORY[0x1E69DC888] whiteColor];
    [(TPButton *)self setTitleColor:v12 forState:0];

    v13 = [MEMORY[0x1E69DC888] colorWithRed:1.0 green:1.0 blue:1.0 alpha:0.300000012];
    [(TPButton *)self setTitleColor:v13 forState:2];
  }

  self->_color = a3;
}

- (CGSize)intrinsicContentSize
{
  +[TPButton defaultHeight];
  v3 = v2;
  v4 = 123.0;
  result.height = v3;
  result.width = v4;
  return result;
}

- (void)layoutSubviews
{
  v12.receiver = self;
  v12.super_class = TPButton;
  [(TPButton *)&v12 layoutSubviews];
  [(TPButton *)self sendSubviewToBack:self->_backdropView];
  if (self->_usesOverlayBlendingForContents)
  {
    v3 = [(TPButton *)self imageView];
    [v3 setAlpha:0.400000006];

    v4 = [(TPButton *)self imageView];
    v5 = [v4 layer];
    v6 = *MEMORY[0x1E6979CE8];
    v7 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979CE8]];
    [v5 setCompositingFilter:v7];

    v8 = [(TPButton *)self titleLabel];
    [v8 setAlpha:0.400000006];

    v9 = [(TPButton *)self titleLabel];
    v10 = [v9 layer];
    v11 = [MEMORY[0x1E6979378] filterWithType:v6];
    [v10 setCompositingFilter:v11];
  }
}

- (void)setBlursBackground:(BOOL)a3
{
  if (self->_blursBackground != a3)
  {
    backdropView = self->_backdropView;
    if (a3)
    {
      v6 = [(_UIBackdropView *)backdropView outputSettings];
      v7 = [(_UIBackdropView *)self->_backdropView inputSettings];
      [v6 computeOutputSettingsUsingModel:v7];

      v8 = self->_backdropView;
      v9 = [(_UIBackdropView *)v8 outputSettings];
      [(_UIBackdropView *)v8 applySettings:v9];
    }

    else
    {
      [(_UIBackdropView *)backdropView _setBlursBackground:0];
    }

    [(TPButton *)self sendSubviewToBack:self->_backdropView];
  }

  self->_blursBackground = a3;
}

- (void)setUsesOverlayBlendingForContents:(BOOL)a3
{
  v3 = a3;
  if (self->_usesOverlayBlendingForContents != a3)
  {
    v5 = [(TPButton *)self imageView];
    v6 = v5;
    if (v3)
    {
      v7 = 0.400000006;
    }

    else
    {
      v7 = 1.0;
    }

    if (v3)
    {
      v8 = MEMORY[0x1E6979CE8];
    }

    else
    {
      v8 = MEMORY[0x1E6979CC0];
    }

    [v5 setAlpha:v7];

    v9 = [(TPButton *)self imageView];
    v10 = [v9 layer];
    v11 = *v8;
    v12 = [MEMORY[0x1E6979378] filterWithType:v11];
    [v10 setCompositingFilter:v12];

    v13 = [(TPButton *)self titleLabel];
    [v13 setAlpha:v7];

    v14 = [(TPButton *)self titleLabel];
    v15 = [v14 layer];
    v16 = [MEMORY[0x1E6979378] filterWithType:v11];
    [v15 setCompositingFilter:v16];
  }

  self->_usesOverlayBlendingForContents = v3;
}

- (void)setImage:(id)a3 forState:(unint64_t)a4
{
  v5.receiver = self;
  v5.super_class = TPButton;
  [(TPButton *)&v5 setImage:a3 forState:a4];
  if (self->_backdropView)
  {
    [(TPButton *)self sendSubviewToBack:?];
  }
}

- (void)_animationWillBegin
{
  [(_UIBackdropView *)self->_backdropView setComputesColorSettings:0];
  backdropView = self->_backdropView;

  [(_UIBackdropView *)backdropView _setBlursBackground:0];
}

- (void)_animationDidEnd
{
  [(_UIBackdropView *)self->_backdropView setComputesColorSettings:1];
  v3 = [(TPButton *)self blursBackground];
  backdropView = self->_backdropView;

  [(_UIBackdropView *)backdropView _setBlursBackground:v3];
}

@end