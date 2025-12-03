@interface SSOBBoldTrayButton
- (void)_centerActivityIndicatorInButton;
- (void)_hideLoading;
- (void)_showLoading;
- (void)_showSpinning;
- (void)updateBusyText:(id)text;
@end

@implementation SSOBBoldTrayButton

- (void)updateBusyText:(id)text
{
  textCopy = text;
  if (!self->_spinner)
  {
    v4 = [[SSSpinner alloc] initWithText:textCopy];
    spinner = self->_spinner;
    self->_spinner = v4;
  }

  spinner = [(SSOBBoldTrayButton *)self spinner];
  [spinner updateText:textCopy];
}

- (void)_showLoading
{
  titleLabel = [(SSOBBoldTrayButton *)self titleLabel];
  text = [titleLabel text];
  normalStateTitle = self->_normalStateTitle;
  self->_normalStateTitle = text;

  [(SSOBBoldTrayButton *)self setTitle:@" " forState:0];
  if (!self->_spinner)
  {
    v6 = [[SSSpinner alloc] initWithText:@" "];
    spinner = self->_spinner;
    self->_spinner = v6;
  }

  [(SSOBBoldTrayButton *)self _showSpinning];

  [(OBBoldTrayButton *)self setEnabled:0];
}

- (void)_hideLoading
{
  normalStateTitle = [(SSOBBoldTrayButton *)self normalStateTitle];

  if (normalStateTitle)
  {
    normalStateTitle2 = [(SSOBBoldTrayButton *)self normalStateTitle];
    [(SSOBBoldTrayButton *)self setTitle:normalStateTitle2 forState:0];
  }

  [(OBBoldTrayButton *)self setEnabled:1];
  spinner = [(SSOBBoldTrayButton *)self spinner];
  [spinner stopAnimating];
}

- (void)_showSpinning
{
  [(SSSpinner *)self->_spinner setTranslatesAutoresizingMaskIntoConstraints:0];
  spinner = [(SSOBBoldTrayButton *)self spinner];
  [(SSOBBoldTrayButton *)self addSubview:spinner];

  [(SSOBBoldTrayButton *)self _centerActivityIndicatorInButton];
  spinner2 = [(SSOBBoldTrayButton *)self spinner];
  [spinner2 startAnimating];
}

- (void)_centerActivityIndicatorInButton
{
  spinner = [(SSOBBoldTrayButton *)self spinner];
  centerXAnchor = [spinner centerXAnchor];
  centerXAnchor2 = [(SSOBBoldTrayButton *)self centerXAnchor];
  v6 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [v6 setActive:1];

  spinner2 = [(SSOBBoldTrayButton *)self spinner];
  centerYAnchor = [spinner2 centerYAnchor];
  centerYAnchor2 = [(SSOBBoldTrayButton *)self centerYAnchor];
  v9 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  [v9 setActive:1];
}

@end