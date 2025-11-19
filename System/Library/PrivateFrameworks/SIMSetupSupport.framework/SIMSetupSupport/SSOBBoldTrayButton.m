@interface SSOBBoldTrayButton
- (void)_centerActivityIndicatorInButton;
- (void)_hideLoading;
- (void)_showLoading;
- (void)_showSpinning;
- (void)updateBusyText:(id)a3;
@end

@implementation SSOBBoldTrayButton

- (void)updateBusyText:(id)a3
{
  v7 = a3;
  if (!self->_spinner)
  {
    v4 = [[SSSpinner alloc] initWithText:v7];
    spinner = self->_spinner;
    self->_spinner = v4;
  }

  v6 = [(SSOBBoldTrayButton *)self spinner];
  [v6 updateText:v7];
}

- (void)_showLoading
{
  v3 = [(SSOBBoldTrayButton *)self titleLabel];
  v4 = [v3 text];
  normalStateTitle = self->_normalStateTitle;
  self->_normalStateTitle = v4;

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
  v3 = [(SSOBBoldTrayButton *)self normalStateTitle];

  if (v3)
  {
    v4 = [(SSOBBoldTrayButton *)self normalStateTitle];
    [(SSOBBoldTrayButton *)self setTitle:v4 forState:0];
  }

  [(OBBoldTrayButton *)self setEnabled:1];
  v5 = [(SSOBBoldTrayButton *)self spinner];
  [v5 stopAnimating];
}

- (void)_showSpinning
{
  [(SSSpinner *)self->_spinner setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = [(SSOBBoldTrayButton *)self spinner];
  [(SSOBBoldTrayButton *)self addSubview:v3];

  [(SSOBBoldTrayButton *)self _centerActivityIndicatorInButton];
  v4 = [(SSOBBoldTrayButton *)self spinner];
  [v4 startAnimating];
}

- (void)_centerActivityIndicatorInButton
{
  v3 = [(SSOBBoldTrayButton *)self spinner];
  v4 = [v3 centerXAnchor];
  v5 = [(SSOBBoldTrayButton *)self centerXAnchor];
  v6 = [v4 constraintEqualToAnchor:v5];
  [v6 setActive:1];

  v10 = [(SSOBBoldTrayButton *)self spinner];
  v7 = [v10 centerYAnchor];
  v8 = [(SSOBBoldTrayButton *)self centerYAnchor];
  v9 = [v7 constraintEqualToAnchor:v8];
  [v9 setActive:1];
}

@end