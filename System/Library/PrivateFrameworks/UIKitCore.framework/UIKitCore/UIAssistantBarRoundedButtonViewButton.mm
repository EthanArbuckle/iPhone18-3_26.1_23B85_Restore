@interface UIAssistantBarRoundedButtonViewButton
- (id)_currentTitleColor;
- (void)_updateBackgroundAndTitleColor;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setHighlightedBackgroundColor:(id)color;
- (void)setHighlightedTitleColor:(id)color;
- (void)setNormalBackgroundColor:(id)color;
- (void)setNormalTitleColor:(id)color;
@end

@implementation UIAssistantBarRoundedButtonViewButton

- (void)setHighlighted:(BOOL)highlighted
{
  v4.receiver = self;
  v4.super_class = UIAssistantBarRoundedButtonViewButton;
  [(UIButton *)&v4 setHighlighted:highlighted];
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

  _currentTitleColor = [(UIAssistantBarRoundedButtonViewButton *)self _currentTitleColor];
  titleLabel = [(UIButton *)self titleLabel];
  [titleLabel setTextColor:_currentTitleColor];
}

- (void)setNormalBackgroundColor:(id)color
{
  objc_storeStrong(&self->_normalBackgroundColor, color);

  [(UIAssistantBarRoundedButtonViewButton *)self _updateBackgroundAndTitleColor];
}

- (void)setHighlightedBackgroundColor:(id)color
{
  objc_storeStrong(&self->_highlightedBackgroundColor, color);

  [(UIAssistantBarRoundedButtonViewButton *)self _updateBackgroundAndTitleColor];
}

- (void)setNormalTitleColor:(id)color
{
  objc_storeStrong(&self->_normalTitleColor, color);

  [(UIAssistantBarRoundedButtonViewButton *)self _updateBackgroundAndTitleColor];
}

- (void)setHighlightedTitleColor:(id)color
{
  objc_storeStrong(&self->_highlightedTitleColor, color);

  [(UIAssistantBarRoundedButtonViewButton *)self _updateBackgroundAndTitleColor];
}

@end