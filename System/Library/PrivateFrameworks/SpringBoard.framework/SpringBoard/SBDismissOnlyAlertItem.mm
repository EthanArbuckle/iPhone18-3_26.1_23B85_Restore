@interface SBDismissOnlyAlertItem
- (SBDismissOnlyAlertItem)initWithTitle:(id)title body:(id)body;
- (id)dismissButtonText;
- (void)configure:(BOOL)configure requirePasscodeForActions:(BOOL)actions;
- (void)setBodyText:(id)text;
- (void)setTitle:(id)title;
@end

@implementation SBDismissOnlyAlertItem

- (SBDismissOnlyAlertItem)initWithTitle:(id)title body:(id)body
{
  titleCopy = title;
  bodyCopy = body;
  v14.receiver = self;
  v14.super_class = SBDismissOnlyAlertItem;
  v8 = [(SBAlertItem *)&v14 init];
  if (v8)
  {
    v9 = [titleCopy copy];
    title = v8->_title;
    v8->_title = v9;

    v11 = [bodyCopy copy];
    body = v8->_body;
    v8->_body = v11;
  }

  return v8;
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  if (self->_title != titleCopy)
  {
    v7 = titleCopy;
    objc_storeStrong(&self->_title, title);
    alertController = [(SBAlertItem *)self alertController];
    [alertController setTitle:v7];

    titleCopy = v7;
  }
}

- (void)setBodyText:(id)text
{
  textCopy = text;
  if (self->_body != textCopy)
  {
    v7 = textCopy;
    objc_storeStrong(&self->_body, text);
    alertController = [(SBAlertItem *)self alertController];
    [alertController setMessage:v7];

    textCopy = v7;
  }
}

- (id)dismissButtonText
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [mainBundle localizedStringForKey:@"DISMISS_ALERT" value:&stru_283094718 table:@"SpringBoard"];

  return v3;
}

- (void)configure:(BOOL)configure requirePasscodeForActions:(BOOL)actions
{
  v5 = [(SBAlertItem *)self alertController:configure];
  [v5 setTitle:self->_title];
  [v5 setMessage:self->_body];
  v6 = MEMORY[0x277D750F8];
  dismissButtonText = [(SBDismissOnlyAlertItem *)self dismissButtonText];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __62__SBDismissOnlyAlertItem_configure_requirePasscodeForActions___block_invoke;
  v9[3] = &unk_2783A8A40;
  v9[4] = self;
  v8 = [v6 actionWithTitle:dismissButtonText style:0 handler:v9];
  [v5 addAction:v8];
}

@end