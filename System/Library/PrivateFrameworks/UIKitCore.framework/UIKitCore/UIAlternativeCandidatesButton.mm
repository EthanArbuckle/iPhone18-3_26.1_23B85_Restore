@interface UIAlternativeCandidatesButton
- (UIAlternativeCandidatesButton)initWithFrame:(CGRect)a3;
- (void)_setRenderConfig:(id)a3;
- (void)setButtonState:(unint64_t)a3;
- (void)updateImage;
@end

@implementation UIAlternativeCandidatesButton

- (UIAlternativeCandidatesButton)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = UIAlternativeCandidatesButton;
  v3 = [(UIScriptSwitcherButton *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(UIAlternativeCandidatesButton *)v3 updateImage];
  }

  return v4;
}

- (void)updateImage
{
  v3 = [(UIAlternativeCandidatesButton *)self buttonState];
  if (v3)
  {
    if (v3 == 2)
    {
      v4 = 1;
      v5 = @"script-switcher-down";
    }

    else
    {
      if (v3 != 1)
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

- (void)setButtonState:(unint64_t)a3
{
  self->_buttonState = a3;
  [(UIAlternativeCandidatesButton *)self updateImage];

  [(UIButton *)self setNeedsLayout];
}

- (void)_setRenderConfig:(id)a3
{
  v4.receiver = self;
  v4.super_class = UIAlternativeCandidatesButton;
  [(UIScriptSwitcherButton *)&v4 _setRenderConfig:a3];
  [(UIAlternativeCandidatesButton *)self updateImage];
}

@end