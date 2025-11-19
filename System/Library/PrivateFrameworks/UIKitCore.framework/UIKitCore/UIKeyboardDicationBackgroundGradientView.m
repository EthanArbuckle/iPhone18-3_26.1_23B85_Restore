@interface UIKeyboardDicationBackgroundGradientView
- (CGRect)_backgroundFillFrame;
- (UIKeyboardDicationBackgroundGradientView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setRenderConfig:(id)a3;
- (void)startColorTransitionIn;
- (void)startColorTransitionOut;
@end

@implementation UIKeyboardDicationBackgroundGradientView

- (UIKeyboardDicationBackgroundGradientView)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = UIKeyboardDicationBackgroundGradientView;
  v3 = [(UIView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
  v3 = [(UIKeyboardDicationBackgroundGradientView *)self renderConfig];
  v4 = [v3 lightKeyboard];

  if (v4)
  {
    v5 = UIKBGetNamedColor(@"UIKBColorLightBackdropTint");
    v6 = [(UIView *)self layer];
    [v6 setBackgroundColor:v5];
  }

  else
  {
    v6 = +[UIColor clearColor];
    v7 = [v6 CGColor];
    v8 = [(UIView *)self layer];
    [v8 setBackgroundColor:v7];
  }

  v9 = [(UIView *)self layer];
  [v9 setNeedsDisplay];

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
  v4 = [(UIView *)self layer];
  [v4 setBackgroundColor:v3];

  v5 = [(UIView *)self layer];
  [v5 setNeedsDisplay];

  v6 = [(UIKeyboardDicationBackgroundGradientView *)self renderConfig];
  LODWORD(v4) = [v6 lightKeyboard];

  if (v4)
  {
    v7 = UIKBGetNamedColor(@"UIKBColorLightBackdropTint");
  }

  else
  {
    v8 = +[UIColor clearColor];
    v7 = [v8 CGColor];
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
  v14[5] = v7;
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
  v3 = [(UIView *)self superview];
  [v3 bounds];
  [(UIView *)self setBounds:?];

  [(UIView *)self setNeedsDisplay];
}

- (void)setRenderConfig:(id)a3
{
  v5 = a3;
  if (self->_renderConfig != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_renderConfig, a3);
    [(UIView *)self setNeedsLayout];
    v5 = v6;
  }
}

@end