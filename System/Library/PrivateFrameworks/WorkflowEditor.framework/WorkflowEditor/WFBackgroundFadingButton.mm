@interface WFBackgroundFadingButton
- (NSMutableDictionary)backgroundColorsByState;
- (void)setBackgroundColor:(id)color forState:(unint64_t)state;
- (void)setDerivesBackgroundColorFromTintColor:(BOOL)color;
- (void)setDerivesTitleColorFromTintColor:(BOOL)color;
- (void)setEnabled:(BOOL)enabled;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setSelected:(BOOL)selected;
- (void)tintColorDidChange;
- (void)updateBackgroundColorAnimated:(BOOL)animated;
@end

@implementation WFBackgroundFadingButton

- (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  isEnabled = [(WFBackgroundFadingButton *)self isEnabled];
  v6.receiver = self;
  v6.super_class = WFBackgroundFadingButton;
  [(WFBackgroundFadingButton *)&v6 setEnabled:enabledCopy];
  if (isEnabled != enabledCopy)
  {
    [(WFBackgroundFadingButton *)self updateBackgroundColorAnimated:1];
  }
}

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  isSelected = [(WFBackgroundFadingButton *)self isSelected];
  v6.receiver = self;
  v6.super_class = WFBackgroundFadingButton;
  [(WFBackgroundFadingButton *)&v6 setSelected:selectedCopy];
  if (isSelected != selectedCopy)
  {
    [(WFBackgroundFadingButton *)self updateBackgroundColorAnimated:1];
  }
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  isHighlighted = [(WFBackgroundFadingButton *)self isHighlighted];
  v6.receiver = self;
  v6.super_class = WFBackgroundFadingButton;
  [(WFBackgroundFadingButton *)&v6 setHighlighted:highlightedCopy];
  if (isHighlighted != highlightedCopy)
  {
    [(WFBackgroundFadingButton *)self updateBackgroundColorAnimated:1];
  }
}

- (void)updateBackgroundColorAnimated:(BOOL)animated
{
  v3 = 0.100000001;
  if (!animated)
  {
    v3 = 0.0;
  }

  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __58__WFBackgroundFadingButton_updateBackgroundColorAnimated___block_invoke;
  v4[3] = &unk_279EDC288;
  v4[4] = self;
  [MEMORY[0x277D75D18] animateWithDuration:v4 animations:v3];
}

void __58__WFBackgroundFadingButton_updateBackgroundColorAnimated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) state];
  if ([*(a1 + 32) derivesBackgroundColorFromTintColor])
  {
    if (v2)
    {
      if ((v2 & 2) != 0)
      {
        v8 = [MEMORY[0x277D75348] secondarySystemBackgroundColor];
        if (v8)
        {
          goto LABEL_10;
        }

        goto LABEL_12;
      }

      if ((v2 & 5) == 0)
      {
        goto LABEL_12;
      }

      v3 = [*(a1 + 32) tintColor];
      v4 = v3;
      v5 = 0.300000012;
    }

    else
    {
      v3 = [*(a1 + 32) tintColor];
      v4 = v3;
      v5 = 0.100000001;
    }

    v11 = [v3 colorWithAlphaComponent:v5];
  }

  else
  {
    v6 = [*(a1 + 32) backgroundColorsByState];
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v2];
    v11 = [v6 objectForKeyedSubscript:v7];
  }

  v8 = v11;
  if (v11)
  {
LABEL_10:
    v9 = *(a1 + 32);
    v12 = v8;
    v10 = v8;
    goto LABEL_13;
  }

LABEL_12:
  v10 = [MEMORY[0x277D75348] clearColor];
  v9 = *(a1 + 32);
  v12 = v10;
LABEL_13:
  [v9 setBackgroundColor:v10];
}

- (void)tintColorDidChange
{
  v4.receiver = self;
  v4.super_class = WFBackgroundFadingButton;
  [(WFBackgroundFadingButton *)&v4 tintColorDidChange];
  if ([(WFBackgroundFadingButton *)self derivesTitleColorFromTintColor])
  {
    tintColor = [(WFBackgroundFadingButton *)self tintColor];
    [(WFBackgroundFadingButton *)self setTitleColor:tintColor forState:0];
  }

  if ([(WFBackgroundFadingButton *)self derivesBackgroundColorFromTintColor])
  {
    [(WFBackgroundFadingButton *)self updateBackgroundColorAnimated:0];
  }
}

- (void)setDerivesBackgroundColorFromTintColor:(BOOL)color
{
  if (self->_derivesBackgroundColorFromTintColor != color)
  {
    self->_derivesBackgroundColorFromTintColor = color;
    [(WFBackgroundFadingButton *)self updateBackgroundColorAnimated:0];
  }
}

- (void)setDerivesTitleColorFromTintColor:(BOOL)color
{
  if (self->_derivesTitleColorFromTintColor != color)
  {
    self->_derivesTitleColorFromTintColor = color;
    if (color)
    {
      tintColor = [(WFBackgroundFadingButton *)self tintColor];
      [(WFBackgroundFadingButton *)self setTitleColor:tintColor forState:0];

      secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
      [(WFBackgroundFadingButton *)self setTitleColor:secondaryLabelColor forState:2];
    }
  }
}

- (void)setBackgroundColor:(id)color forState:(unint64_t)state
{
  colorCopy = color;
  backgroundColorsByState = [(WFBackgroundFadingButton *)self backgroundColorsByState];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:state];
  if (colorCopy)
  {
    [backgroundColorsByState setObject:colorCopy forKey:v7];
  }

  else
  {
    [backgroundColorsByState removeObjectForKey:v7];
  }

  if ([(WFBackgroundFadingButton *)self state]== state)
  {
    [(WFBackgroundFadingButton *)self updateBackgroundColorAnimated:0];
  }
}

- (NSMutableDictionary)backgroundColorsByState
{
  backgroundColorsByState = self->_backgroundColorsByState;
  if (!backgroundColorsByState)
  {
    v4 = objc_opt_new();
    v5 = self->_backgroundColorsByState;
    self->_backgroundColorsByState = v4;

    backgroundColorsByState = self->_backgroundColorsByState;
  }

  return backgroundColorsByState;
}

@end