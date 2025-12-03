@interface UIKeyboardDicationBackgroundGradientView
- (CGRect)_backgroundFillFrame;
- (UIKeyboardDicationBackgroundGradientView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setRenderConfig:(id)config;
- (void)startColorTransitionIn;
- (void)startColorTransitionOut;
@end

@implementation UIKeyboardDicationBackgroundGradientView

- (UIKeyboardDicationBackgroundGradientView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = UIKeyboardDicationBackgroundGradientView;
  v3 = [(UIView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = +[UIColor clearColor];
    [(UIView *)v3 setBackgroundColor:v4];

    v5 = v3;
  }

  return v3;
}

- (void)startColorTransitionIn
{
  renderConfig = [(UIKeyboardDicationBackgroundGradientView *)self renderConfig];
  lightKeyboard = [renderConfig lightKeyboard];

  if (lightKeyboard)
  {
    v5 = UIKBGetNamedColor(@"UIKBColorLightBackdropTint");
    layer = [(UIView *)self layer];
    [layer setBackgroundColor:v5];
  }

  else
  {
    layer = +[UIColor clearColor];
    cGColor = [layer CGColor];
    layer2 = [(UIView *)self layer];
    [layer2 setBackgroundColor:cGColor];
  }

  layer3 = [(UIView *)self layer];
  [layer3 setNeedsDisplay];

  v10 = +[UIDictationLandingViewSettings sharedInstance];
  [v10 colorTransitionInDuration];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __66__UIKeyboardDicationBackgroundGradientView_startColorTransitionIn__block_invoke;
  v11[3] = &unk_1E70F3590;
  v11[4] = self;
  [UIView _animateWithDuration:"_animateWithDuration:delay:options:factory:animations:completion:" delay:393216 options:self factory:v11 animations:&__block_literal_global_370 completion:?];
}

void __66__UIKeyboardDicationBackgroundGradientView_startColorTransitionIn__block_invoke(uint64_t a1)
{
  v2 = UIKBGetNamedColor(@"UIKBColoriPhoneDictationBackboard");
  v3 = [*(a1 + 32) layer];
  [v3 setBackgroundColor:v2];
}

- (void)startColorTransitionOut
{
  v3 = UIKBGetNamedColor(@"UIKBColoriPhoneDictationBackboard");
  layer = [(UIView *)self layer];
  [layer setBackgroundColor:v3];

  layer2 = [(UIView *)self layer];
  [layer2 setNeedsDisplay];

  renderConfig = [(UIKeyboardDicationBackgroundGradientView *)self renderConfig];
  LODWORD(layer) = [renderConfig lightKeyboard];

  if (layer)
  {
    cGColor = UIKBGetNamedColor(@"UIKBColorLightBackdropTint");
  }

  else
  {
    v8 = +[UIColor clearColor];
    cGColor = [v8 CGColor];
  }

  v9 = +[UIKeyboardInputMode dictationInputMode];
  v10 = [v9 usingTypeAndTalk] ^ 1;

  v11 = +[UIDictationLandingViewSettings sharedInstance];
  [v11 colorTransitionOutDuration];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __67__UIKeyboardDicationBackgroundGradientView_startColorTransitionOut__block_invoke;
  v14[3] = &unk_1E70F32F0;
  v14[4] = self;
  v14[5] = cGColor;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __67__UIKeyboardDicationBackgroundGradientView_startColorTransitionOut__block_invoke_2;
  v12[3] = &unk_1E70FA0F0;
  v13 = v10;
  v12[4] = self;
  [UIView _animateWithDuration:"_animateWithDuration:delay:options:factory:animations:completion:" delay:393216 options:self factory:v14 animations:v12 completion:?];
}

void __67__UIKeyboardDicationBackgroundGradientView_startColorTransitionOut__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) layer];
  [v2 setBackgroundColor:v1];
}

void __67__UIKeyboardDicationBackgroundGradientView_startColorTransitionOut__block_invoke_2(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    v2 = [*(a1 + 32) dictationView];
    [v2 finishReturnToKeyboard];
  }
}

- (CGRect)_backgroundFillFrame
{
  v3 = UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL;
  [(UIView *)self bounds];
  if (v3 == 1)
  {
    v4 = v4 + 12.0;
    v5 = v5 + 17.0;
    v6 = v6 + -24.0;
    v7 = v7 + -34.0;
  }

  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = UIKeyboardDicationBackgroundGradientView;
  [(UIView *)&v4 layoutSubviews];
  superview = [(UIView *)self superview];
  [superview bounds];
  [(UIView *)self setBounds:?];

  [(UIView *)self setNeedsDisplay];
}

- (void)setRenderConfig:(id)config
{
  configCopy = config;
  if (self->_renderConfig != configCopy)
  {
    v6 = configCopy;
    objc_storeStrong(&self->_renderConfig, config);
    [(UIView *)self setNeedsLayout];
    configCopy = v6;
  }
}

@end