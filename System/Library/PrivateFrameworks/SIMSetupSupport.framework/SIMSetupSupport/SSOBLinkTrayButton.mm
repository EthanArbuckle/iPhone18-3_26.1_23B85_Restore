@interface SSOBLinkTrayButton
- (void)_centerActivityIndicatorInButton;
- (void)_hideLoading;
- (void)_showLoading;
@end

@implementation SSOBLinkTrayButton

- (void)_showLoading
{
  v3 = [(SSOBLinkTrayButton *)self titleLabel];
  v4 = [v3 text];
  normalStateTitle = self->_normalStateTitle;
  self->_normalStateTitle = v4;

  [(SSOBLinkTrayButton *)self setTitle:@" " forState:0];
  if (!self->_spinner)
  {
    v6 = [[SSSpinner alloc] initWithText:self->_normalStateTitle];
    spinner = self->_spinner;
    self->_spinner = v6;

    [(SSSpinner *)self->_spinner setTranslatesAutoresizingMaskIntoConstraints:0];
    v8 = [(SSOBLinkTrayButton *)self spinner];
    [(SSOBLinkTrayButton *)self addSubview:v8];

    [(SSOBLinkTrayButton *)self _centerActivityIndicatorInButton];
  }

  v9 = [(SSOBLinkTrayButton *)self spinner];
  [v9 startAnimating];

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
  v3 = [(SSOBLinkTrayButton *)self spinner];
  v4 = [v3 centerXAnchor];
  v5 = [(SSOBLinkTrayButton *)self centerXAnchor];
  v6 = [v4 constraintEqualToAnchor:v5];
  [v6 setActive:1];

  v10 = [(SSOBLinkTrayButton *)self spinner];
  v7 = [v10 centerYAnchor];
  v8 = [(SSOBLinkTrayButton *)self centerYAnchor];
  v9 = [v7 constraintEqualToAnchor:v8];
  [v9 setActive:1];
}

@end