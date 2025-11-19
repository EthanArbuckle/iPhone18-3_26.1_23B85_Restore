@interface SBDismissOnlyAlertItem
- (SBDismissOnlyAlertItem)initWithTitle:(id)a3 body:(id)a4;
- (id)dismissButtonText;
- (void)configure:(BOOL)a3 requirePasscodeForActions:(BOOL)a4;
- (void)setBodyText:(id)a3;
- (void)setTitle:(id)a3;
@end

@implementation SBDismissOnlyAlertItem

- (SBDismissOnlyAlertItem)initWithTitle:(id)a3 body:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = SBDismissOnlyAlertItem;
  v8 = [(SBAlertItem *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    title = v8->_title;
    v8->_title = v9;

    v11 = [v7 copy];
    body = v8->_body;
    v8->_body = v11;
  }

  return v8;
}

- (void)setTitle:(id)a3
{
  v5 = a3;
  if (self->_title != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_title, a3);
    v6 = [(SBAlertItem *)self alertController];
    [v6 setTitle:v7];

    v5 = v7;
  }
}

- (void)setBodyText:(id)a3
{
  v5 = a3;
  if (self->_body != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_body, a3);
    v6 = [(SBAlertItem *)self alertController];
    [v6 setMessage:v7];

    v5 = v7;
  }
}

- (id)dismissButtonText
{
  v2 = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [v2 localizedStringForKey:@"DISMISS_ALERT" value:&stru_283094718 table:@"SpringBoard"];

  return v3;
}

- (void)configure:(BOOL)a3 requirePasscodeForActions:(BOOL)a4
{
  v5 = [(SBAlertItem *)self alertController:a3];
  [v5 setTitle:self->_title];
  [v5 setMessage:self->_body];
  v6 = MEMORY[0x277D750F8];
  v7 = [(SBDismissOnlyAlertItem *)self dismissButtonText];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __62__SBDismissOnlyAlertItem_configure_requirePasscodeForActions___block_invoke;
  v9[3] = &unk_2783A8A40;
  v9[4] = self;
  v8 = [v6 actionWithTitle:v7 style:0 handler:v9];
  [v5 addAction:v8];
}

@end