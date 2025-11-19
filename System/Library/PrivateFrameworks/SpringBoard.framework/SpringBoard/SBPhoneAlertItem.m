@interface SBPhoneAlertItem
- (SBPhoneAlertItem)initWithTitle:(id)a3 bodyText:(id)a4 slot:(int64_t)a5;
- (void)configure:(BOOL)a3 requirePasscodeForActions:(BOOL)a4;
@end

@implementation SBPhoneAlertItem

- (SBPhoneAlertItem)initWithTitle:(id)a3 bodyText:(id)a4 slot:(int64_t)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = SBPhoneAlertItem;
  v11 = [(SBAlertItem *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_title, a3);
    objc_storeStrong(&v12->_bodyText, a4);
    v12->_slot = a5;
  }

  return v12;
}

- (void)configure:(BOOL)a3 requirePasscodeForActions:(BOOL)a4
{
  v6 = [(SBAlertItem *)self alertController:a3];
  [v6 setTitle:self->_title];
  [v6 setMessage:self->_bodyText];
  if (!a3)
  {
    v7 = MEMORY[0x277D750F8];
    v8 = [MEMORY[0x277CCA8D8] mainBundle];
    v9 = [v8 localizedStringForKey:@"DISMISS_ALERT" value:&stru_283094718 table:@"SpringBoard"];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __56__SBPhoneAlertItem_configure_requirePasscodeForActions___block_invoke;
    v11[3] = &unk_2783A8A40;
    v11[4] = self;
    v10 = [v7 actionWithTitle:v9 style:0 handler:v11];
    [v6 addAction:v10];
  }
}

@end