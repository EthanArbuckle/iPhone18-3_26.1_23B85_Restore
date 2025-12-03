@interface KeychainSyncPhoneNumberController
- (id)specifiers;
- (void)controllerDone;
- (void)loadView;
- (void)nextPressed;
- (void)phoneSettingsFragment:(id)fragment didChangePhoneNumber:(id)number countryInfo:(id)info;
- (void)reloadSpecifiers;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation KeychainSyncPhoneNumberController

- (void)loadView
{
  v17.receiver = self;
  v17.super_class = KeychainSyncPhoneNumberController;
  [(PSListController *)&v17 loadView];
  v3 = objc_alloc(MEMORY[0x1E69DC708]);
  v4 = PS_LocalizedStringForKeychainSync(@"NEXT");
  v5 = [v3 initWithTitle:v4 style:2 target:self action:sel_nextPressed];

  navigationItem = [(KeychainSyncPhoneNumberController *)self navigationItem];
  [navigationItem setRightBarButtonItem:v5];

  view = +[PSKeychainSyncManager sharedManager];
  if (![view isRunningInBuddy])
  {
    goto LABEL_4;
  }

  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (!userInterfaceIdiom)
  {
    v10 = objc_alloc(MEMORY[0x1E69DCC10]);
    v11 = [v10 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    footerLabel = self->_footerLabel;
    self->_footerLabel = v11;

    v13 = self->_footerLabel;
    v14 = [MEMORY[0x1E69DB878] systemFontOfSize:14.0];
    [(UILabel *)v13 setFont:v14];

    [(UILabel *)self->_footerLabel setNumberOfLines:0];
    v15 = self->_footerLabel;
    v16 = PS_LocalizedStringForKeychainSync(@"PHONE_NUMBER_DESCRIPTION_NO_NEWLINES");
    [(UILabel *)v15 setText:v16];

    [(UILabel *)self->_footerLabel setTextAlignment:1];
    view = [(KeychainSyncPhoneNumberController *)self view];
    [view addSubview:self->_footerLabel];
LABEL_4:
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  navigationItem = [(KeychainSyncPhoneNumberController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  phoneNumber = [(KeychainSyncPhoneSettingsFragment *)self->_phoneSettingsFragment phoneNumber];
  if ([phoneNumber length])
  {
    countryInfo = [(KeychainSyncPhoneSettingsFragment *)self->_phoneSettingsFragment countryInfo];
    [rightBarButtonItem setEnabled:countryInfo != 0];
  }

  else
  {
    [rightBarButtonItem setEnabled:0];
  }

  v9.receiver = self;
  v9.super_class = KeychainSyncPhoneNumberController;
  [(PSListController *)&v9 viewWillAppear:appearCopy];
}

- (id)specifiers
{
  v3 = PS_LocalizedStringForKeychainSync(@"PHONE_NUMBER");
  [(PSKeychainSyncViewController *)self setTitle:v3];

  specifiers = self->super.super._specifiers;
  if (!specifiers)
  {
    phoneSettingsFragment = self->_phoneSettingsFragment;
    if (!phoneSettingsFragment)
    {
      v6 = [[KeychainSyncPhoneSettingsFragment alloc] initWithListController:self];
      v7 = self->_phoneSettingsFragment;
      self->_phoneSettingsFragment = v6;

      v8 = self->_phoneSettingsFragment;
      v9 = PS_LocalizedStringForKeychainSync(@"PHONE_NUMBER");
      [(KeychainSyncPhoneSettingsFragment *)v8 setTitle:v9];

      [(KeychainSyncPhoneSettingsFragment *)self->_phoneSettingsFragment setDelegate:self];
      phoneSettingsFragment = self->_phoneSettingsFragment;
    }

    specifiers = [(KeychainSyncPhoneSettingsFragment *)phoneSettingsFragment specifiers];
    v11 = self->super.super._specifiers;
    self->super.super._specifiers = specifiers;

    specifiers = self->super.super._specifiers;
  }

  return specifiers;
}

- (void)reloadSpecifiers
{
  [(KeychainSyncPhoneSettingsFragment *)self->_phoneSettingsFragment reloadSpecifiers];
  v3.receiver = self;
  v3.super_class = KeychainSyncPhoneNumberController;
  [(PSListController *)&v3 reloadSpecifiers];
}

- (void)viewDidAppear:(BOOL)appear
{
  v8.receiver = self;
  v8.super_class = KeychainSyncPhoneNumberController;
  [(PSListController *)&v8 viewDidAppear:appear];
  if ([(KeychainSyncPhoneNumberController *)self isMovingToParentViewController])
  {
    v4 = +[PSKeychainSyncManager sharedManager];
    if ([v4 isRunningInBuddy])
    {
      currentDevice = [MEMORY[0x1E69DC938] currentDevice];
      userInterfaceIdiom = [currentDevice userInterfaceIdiom];

      if (userInterfaceIdiom != 1)
      {
        return;
      }
    }

    else
    {
    }

    phoneNumberCell = [(KeychainSyncPhoneSettingsFragment *)self->_phoneSettingsFragment phoneNumberCell];
    [phoneNumberCell becomeFirstResponder];
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  [(KeychainSyncPhoneSettingsFragment *)self->_phoneSettingsFragment resignFirstResponder];
  v5.receiver = self;
  v5.super_class = KeychainSyncPhoneNumberController;
  [(PSListController *)&v5 viewWillDisappear:disappearCopy];
}

- (void)viewDidLayoutSubviews
{
  v18.receiver = self;
  v18.super_class = KeychainSyncPhoneNumberController;
  [(PSListController *)&v18 viewDidLayoutSubviews];
  if (self->_footerLabel)
  {
    view = [(KeychainSyncPhoneNumberController *)self view];
    [view bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    footerLabel = self->_footerLabel;
    v19.origin.x = v5;
    v19.origin.y = v7;
    v19.size.width = v9;
    v19.size.height = v11;
    v20 = CGRectInset(v19, 15.0, 0.0);
    [(UILabel *)footerLabel sizeThatFits:v20.size.width, v20.size.height];
    v14 = v13;
    v16 = v15;
    *&v13 = (v9 - v13) * 0.5;
    v17 = floorf(*&v13);
    v21.origin.x = v5;
    v21.origin.y = v7;
    v21.size.width = v9;
    v21.size.height = v11;
    [(UILabel *)self->_footerLabel setFrame:v17, CGRectGetMaxY(v21) - v16 + -25.0, v14, v16];
  }
}

- (void)controllerDone
{
  v8[2] = *MEMORY[0x1E69E9840];
  v7[0] = @"phoneNumber";
  unformattedPhoneNumber = [(KeychainSyncPhoneSettingsFragment *)self->_phoneSettingsFragment unformattedPhoneNumber];
  v7[1] = @"countryInfo";
  v8[0] = unformattedPhoneNumber;
  countryInfo = [(KeychainSyncPhoneSettingsFragment *)self->_phoneSettingsFragment countryInfo];
  v8[1] = countryInfo;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];

  delegate = [(PSKeychainSyncViewController *)self delegate];
  [delegate keychainSyncController:self didFinishWithResult:v5 error:0];
}

- (void)nextPressed
{
  [(KeychainSyncPhoneSettingsFragment *)self->_phoneSettingsFragment resignFirstResponder];

  [(KeychainSyncPhoneNumberController *)self controllerDone];
}

- (void)phoneSettingsFragment:(id)fragment didChangePhoneNumber:(id)number countryInfo:(id)info
{
  numberCopy = number;
  navigationItem = [(KeychainSyncPhoneNumberController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  v9 = [numberCopy length];

  if (info)
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = !v10;
  [rightBarButtonItem setEnabled:v11];
}

@end