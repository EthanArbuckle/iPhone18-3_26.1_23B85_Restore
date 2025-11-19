@interface WFBackgroundFadingButton
- (NSMutableDictionary)backgroundColorsByState;
- (void)setBackgroundColor:(id)a3 forState:(unint64_t)a4;
- (void)setDerivesBackgroundColorFromTintColor:(BOOL)a3;
- (void)setDerivesTitleColorFromTintColor:(BOOL)a3;
- (void)setEnabled:(BOOL)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setSelected:(BOOL)a3;
- (void)tintColorDidChange;
- (void)updateBackgroundColorAnimated:(BOOL)a3;
@end

@implementation WFBackgroundFadingButton

- (void)setEnabled:(BOOL)a3
{
  v3 = a3;
  v5 = [(WFBackgroundFadingButton *)self isEnabled];
  v6.receiver = self;
  v6.super_class = WFBackgroundFadingButton;
  [(WFBackgroundFadingButton *)&v6 setEnabled:v3];
  if (v5 != v3)
  {
    [(WFBackgroundFadingButton *)self updateBackgroundColorAnimated:1];
  }
}

- (void)setSelected:(BOOL)a3
{
  v3 = a3;
  v5 = [(WFBackgroundFadingButton *)self isSelected];
  v6.receiver = self;
  v6.super_class = WFBackgroundFadingButton;
  [(WFBackgroundFadingButton *)&v6 setSelected:v3];
  if (v5 != v3)
  {
    [(WFBackgroundFadingButton *)self updateBackgroundColorAnimated:1];
  }
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v5 = [(WFBackgroundFadingButton *)self isHighlighted];
  v6.receiver = self;
  v6.super_class = WFBackgroundFadingButton;
  [(WFBackgroundFadingButton *)&v6 setHighlighted:v3];
  if (v5 != v3)
  {
    [(WFBackgroundFadingButton *)self updateBackgroundColorAnimated:1];
  }
}

- (void)updateBackgroundColorAnimated:(BOOL)a3
{
  v3 = 0.100000001;
  if (!a3)
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
    v3 = [(WFBackgroundFadingButton *)self tintColor];
    [(WFBackgroundFadingButton *)self setTitleColor:v3 forState:0];
  }

  if ([(WFBackgroundFadingButton *)self derivesBackgroundColorFromTintColor])
  {
    [(WFBackgroundFadingButton *)self updateBackgroundColorAnimated:0];
  }
}

- (void)setDerivesBackgroundColorFromTintColor:(BOOL)a3
{
  if (self->_derivesBackgroundColorFromTintColor != a3)
  {
    self->_derivesBackgroundColorFromTintColor = a3;
    [(WFBackgroundFadingButton *)self updateBackgroundColorAnimated:0];
  }
}

- (void)setDerivesTitleColorFromTintColor:(BOOL)a3
{
  if (self->_derivesTitleColorFromTintColor != a3)
  {
    self->_derivesTitleColorFromTintColor = a3;
    if (a3)
    {
      v4 = [(WFBackgroundFadingButton *)self tintColor];
      [(WFBackgroundFadingButton *)self setTitleColor:v4 forState:0];

      v5 = [MEMORY[0x277D75348] secondaryLabelColor];
      [(WFBackgroundFadingButton *)self setTitleColor:v5 forState:2];
    }
  }
}

- (void)setBackgroundColor:(id)a3 forState:(unint64_t)a4
{
  v8 = a3;
  v6 = [(WFBackgroundFadingButton *)self backgroundColorsByState];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
  if (v8)
  {
    [v6 setObject:v8 forKey:v7];
  }

  else
  {
    [v6 removeObjectForKey:v7];
  }

  if ([(WFBackgroundFadingButton *)self state]== a4)
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