@interface TUIEmojiSearchTextFieldBackgroundView
- (TUIEmojiSearchTextFieldBackgroundView)initWithFrame:(CGRect)frame;
- (void)_setRenderConfig:(id)config;
- (void)layoutSubviews;
- (void)setBackgroundStyle:(unint64_t)style animated:(BOOL)animated;
@end

@implementation TUIEmojiSearchTextFieldBackgroundView

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = TUIEmojiSearchTextFieldBackgroundView;
  [(TUIEmojiSearchTextFieldBackgroundView *)&v6 layoutSubviews];
  v3 = 12.0;
  if (TUIRemoteEmojiSearchViewControllerEnabled())
  {
    [(TUIEmojiSearchTextFieldBackgroundView *)self frame];
    v3 = v4 * 0.5;
  }

  layer = [(TUIEmojiSearchTextFieldBackgroundView *)self layer];
  [layer setCornerRadius:v3];
}

- (void)setBackgroundStyle:(unint64_t)style animated:(BOOL)animated
{
  if (self->_backgroundStyle != style)
  {
    v9[8] = v4;
    v9[9] = v5;
    animatedCopy = animated;
    self->_backgroundStyle = style;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __69__TUIEmojiSearchTextFieldBackgroundView_setBackgroundStyle_animated___block_invoke;
    v9[3] = &unk_1E72D84B0;
    v9[4] = self;
    v9[5] = style;
    v7 = _Block_copy(v9);
    v8 = v7;
    if (animatedCopy)
    {
      [MEMORY[0x1E69DD250] animateWithDuration:4 delay:v7 options:0 animations:0.3 completion:0.0];
    }

    else
    {
      (*(v7 + 2))(v7);
    }
  }
}

void __69__TUIEmojiSearchTextFieldBackgroundView_setBackgroundStyle_animated___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2 == 2)
  {
    v3 = [MEMORY[0x1E69DC888] colorWithWhite:0.04 alpha:1.0];
  }

  else
  {
    if (v2 != 1)
    {
      return;
    }

    v3 = [MEMORY[0x1E69DC888] colorWithDynamicProvider:&__block_literal_global_6675];
  }

  v4 = v3;
  [*(a1 + 32) setBackgroundColor:v3];
}

id __69__TUIEmojiSearchTextFieldBackgroundView_setBackgroundStyle_animated___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 accessibilityContrast] == 1)
  {
    v3 = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
  }

  else
  {
    if ([v2 userInterfaceStyle] == 1)
    {
      v4 = 0.05;
      v5 = 1.0;
    }

    else
    {
      v5 = 0.1;
      v4 = 1.0;
    }

    v3 = [MEMORY[0x1E69DC888] colorWithWhite:v5 alpha:v4];
  }

  v6 = v3;

  return v6;
}

- (void)_setRenderConfig:(id)config
{
  v7.receiver = self;
  v7.super_class = TUIEmojiSearchTextFieldBackgroundView;
  configCopy = config;
  [(TUIEmojiSearchTextFieldBackgroundView *)&v7 _setRenderConfig:configCopy];
  lightKeyboard = [configCopy lightKeyboard];

  if (lightKeyboard)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  [(TUIEmojiSearchTextFieldBackgroundView *)self setOverrideUserInterfaceStyle:v6];
}

- (TUIEmojiSearchTextFieldBackgroundView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  v17.receiver = self;
  v17.super_class = TUIEmojiSearchTextFieldBackgroundView;
  v4 = [(TUIEmojiSearchTextFieldBackgroundView *)&v17 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width];
  v5 = v4;
  if (v4)
  {
    [(TUIEmojiSearchTextFieldBackgroundView *)v4 setUserInteractionEnabled:0];
    v6 = TUIRemoteEmojiSearchViewControllerEnabled();
    v7 = height * 0.5;
    layer = [(TUIEmojiSearchTextFieldBackgroundView *)v5 layer];
    v9 = layer;
    v10 = 12.0;
    if (v6)
    {
      v10 = v7;
      v11 = MEMORY[0x1E69796E0];
    }

    else
    {
      v11 = MEMORY[0x1E69796E8];
    }

    [layer setCornerRadius:v10];

    v12 = *v11;
    layer2 = [(TUIEmojiSearchTextFieldBackgroundView *)v5 layer];
    [layer2 setCornerCurve:v12];

    v14 = *MEMORY[0x1E6979CF8];
    layer3 = [(TUIEmojiSearchTextFieldBackgroundView *)v5 layer];
    [layer3 setCompositingFilter:v14];

    [(TUIEmojiSearchTextFieldBackgroundView *)v5 setBackgroundStyle:1 animated:0];
  }

  return v5;
}

@end