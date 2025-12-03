@interface UIAlternativeCandidatesButton
- (UIAlternativeCandidatesButton)initWithFrame:(CGRect)frame;
- (void)_setRenderConfig:(id)config;
- (void)setButtonState:(unint64_t)state;
- (void)updateImage;
@end

@implementation UIAlternativeCandidatesButton

- (UIAlternativeCandidatesButton)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = UIAlternativeCandidatesButton;
  v3 = [(UIScriptSwitcherButton *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(UIAlternativeCandidatesButton *)v3 updateImage];
  }

  return v4;
}

- (void)updateImage
{
  buttonState = [(UIAlternativeCandidatesButton *)self buttonState];
  if (buttonState)
  {
    if (buttonState == 2)
    {
      v4 = 1;
      v5 = @"script-switcher-down";
    }

    else
    {
      if (buttonState != 1)
      {
        return;
      }

      v4 = 1;
      v5 = @"script-switcher-up";
    }
  }

  else
  {
    v4 = 0;
    v5 = @"script-switcher-disabled";
  }

  v6 = [UIImage kitImageNamed:v5];
  [(UIScriptSwitcherButton *)self setImage:v6];

  [(UIButton *)self setEnabled:v4];
}

- (void)setButtonState:(unint64_t)state
{
  self->_buttonState = state;
  [(UIAlternativeCandidatesButton *)self updateImage];

  [(UIButton *)self setNeedsLayout];
}

- (void)_setRenderConfig:(id)config
{
  v4.receiver = self;
  v4.super_class = UIAlternativeCandidatesButton;
  [(UIScriptSwitcherButton *)&v4 _setRenderConfig:config];
  [(UIAlternativeCandidatesButton *)self updateImage];
}

@end