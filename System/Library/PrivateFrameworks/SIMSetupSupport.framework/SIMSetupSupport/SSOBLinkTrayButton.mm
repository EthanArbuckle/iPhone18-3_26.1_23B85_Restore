@interface SSOBLinkTrayButton
- (void)_centerActivityIndicatorInButton;
- (void)_hideLoading;
- (void)_showLoading;
@end

@implementation SSOBLinkTrayButton

- (void)_showLoading
{
  titleLabel = [(SSOBLinkTrayButton *)self titleLabel];
  text = [titleLabel text];
  normalStateTitle = self->_normalStateTitle;
  self->_normalStateTitle = text;

  [(SSOBLinkTrayButton *)self setTitle:@" " forState:0];
  if (!self->_spinner)
  {
    v6 = [[SSSpinner alloc] initWithText:self->_normalStateTitle];
    spinner = self->_spinner;
    self->_spinner = v6;

    [(SSSpinner *)self->_spinner setTranslatesAutoresizingMaskIntoConstraints:0];
    spinner = [(SSOBLinkTrayButton *)self spinner];
    [(SSOBLinkTrayButton *)self addSubview:spinner];

    [(SSOBLinkTrayButton *)self _centerActivityIndicatorInButton];
  }

  spinner2 = [(SSOBLinkTrayButton *)self spinner];
  [spinner2 startAnimating];

  [(SSOBLinkTrayButton *)self setEnabled:0];
}

- (void)_hideLoading
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__SSOBLinkTrayButton__hideLoading__block_invoke;
  block[3] = &unk_279B44578;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __34__SSOBLinkTrayButton__hideLoading__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) normalStateTitle];

  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = [v3 normalStateTitle];
    [v3 setTitle:v4 forState:0];
  }

  [*(a1 + 32) setEnabled:1];
  v5 = [*(a1 + 32) spinner];
  [v5 stopAnimating];
}

- (void)_centerActivityIndicatorInButton
{
  spinner = [(SSOBLinkTrayButton *)self spinner];
  centerXAnchor = [spinner centerXAnchor];
  centerXAnchor2 = [(SSOBLinkTrayButton *)self centerXAnchor];
  v6 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [v6 setActive:1];

  spinner2 = [(SSOBLinkTrayButton *)self spinner];
  centerYAnchor = [spinner2 centerYAnchor];
  centerYAnchor2 = [(SSOBLinkTrayButton *)self centerYAnchor];
  v9 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  [v9 setActive:1];
}

@end