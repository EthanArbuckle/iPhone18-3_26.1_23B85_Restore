@interface NCNotificationSummaryOnboardingButton
- (void)_configureBackgroundViewIfNecessary;
- (void)_layoutBackgroundView;
- (void)layoutSubviews;
- (void)setHighlighted:(BOOL)a3;
@end

@implementation NCNotificationSummaryOnboardingButton

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = NCNotificationSummaryOnboardingButton;
  [(NCNotificationSummaryOnboardingButton *)&v3 layoutSubviews];
  [(NCNotificationSummaryOnboardingButton *)self _configureBackgroundViewIfNecessary];
  [(NCNotificationSummaryOnboardingButton *)self _layoutBackgroundView];
}

- (void)_configureBackgroundViewIfNecessary
{
  if (!self->_backgroundView)
  {
    v3 = objc_alloc(MEMORY[0x277D75D18]);
    v4 = [v3 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    backgroundView = self->_backgroundView;
    self->_backgroundView = v4;

    v6 = self->_backgroundView;
    v7 = [MEMORY[0x277D75348] systemBlackColor];
    [(UIView *)v6 setBackgroundColor:v7];

    [(UIView *)self->_backgroundView setAlpha:0.25];
    [(UIView *)self->_backgroundView setUserInteractionEnabled:0];
    [(UIView *)self->_backgroundView _setContinuousCornerRadius:8.0];
    v8 = self->_backgroundView;

    [(NCNotificationSummaryOnboardingButton *)self insertSubview:v8 atIndex:0];
  }
}

- (void)_layoutBackgroundView
{
  backgroundView = self->_backgroundView;
  if (backgroundView)
  {
    [(NCNotificationSummaryOnboardingButton *)self bounds];

    [(UIView *)backgroundView setFrame:?];
  }
}

- (void)setHighlighted:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = NCNotificationSummaryOnboardingButton;
  [(NCNotificationSummaryOnboardingButton *)&v6 setHighlighted:?];
  if (a3)
  {
    [(UIView *)self->_backgroundView setAlpha:0.1];
  }

  else
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __56__NCNotificationSummaryOnboardingButton_setHighlighted___block_invoke;
    v5[3] = &unk_27836F6A8;
    v5[4] = self;
    [MEMORY[0x277D75D18] animateWithDuration:v5 animations:0.1];
  }
}

@end