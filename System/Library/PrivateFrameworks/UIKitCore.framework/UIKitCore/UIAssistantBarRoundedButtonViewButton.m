@interface UIAssistantBarRoundedButtonViewButton
- (id)_currentTitleColor;
- (void)_updateBackgroundAndTitleColor;
- (void)setHighlighted:(BOOL)a3;
- (void)setHighlightedBackgroundColor:(id)a3;
- (void)setHighlightedTitleColor:(id)a3;
- (void)setNormalBackgroundColor:(id)a3;
- (void)setNormalTitleColor:(id)a3;
@end

@implementation UIAssistantBarRoundedButtonViewButton

- (void)setHighlighted:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = UIAssistantBarRoundedButtonViewButton;
  [(UIButton *)&v4 setHighlighted:a3];
  [(UIAssistantBarRoundedButtonViewButton *)self _updateBackgroundAndTitleColor];
}

- (id)_currentTitleColor
{
  if ([(UIControl *)self isHighlighted])
  {
    [(UIAssistantBarRoundedButtonViewButton *)self highlightedTitleColor];
  }

  else
  {
    [(UIAssistantBarRoundedButtonViewButton *)self normalTitleColor];
  }
  v3 = ;

  return v3;
}

- (void)_updateBackgroundAndTitleColor
{
  if ([(UIControl *)self isHighlighted])
  {
    [(UIAssistantBarRoundedButtonViewButton *)self highlightedBackgroundColor];
  }

  else
  {
    [(UIAssistantBarRoundedButtonViewButton *)self normalBackgroundColor];
  }
  v3 = ;
  [(UIView *)self setBackgroundColor:v3];

  v5 = [(UIAssistantBarRoundedButtonViewButton *)self _currentTitleColor];
  v4 = [(UIButton *)self titleLabel];
  [v4 setTextColor:v5];
}

- (void)setNormalBackgroundColor:(id)a3
{
  objc_storeStrong(&self->_normalBackgroundColor, a3);

  [(UIAssistantBarRoundedButtonViewButton *)self _updateBackgroundAndTitleColor];
}

- (void)setHighlightedBackgroundColor:(id)a3
{
  objc_storeStrong(&self->_highlightedBackgroundColor, a3);

  [(UIAssistantBarRoundedButtonViewButton *)self _updateBackgroundAndTitleColor];
}

- (void)setNormalTitleColor:(id)a3
{
  objc_storeStrong(&self->_normalTitleColor, a3);

  [(UIAssistantBarRoundedButtonViewButton *)self _updateBackgroundAndTitleColor];
}

- (void)setHighlightedTitleColor:(id)a3
{
  objc_storeStrong(&self->_highlightedTitleColor, a3);

  [(UIAssistantBarRoundedButtonViewButton *)self _updateBackgroundAndTitleColor];
}

@end