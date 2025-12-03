@interface TSUserConsentViewController
+ (void)calculateTitleAndDetailsWithName:(id)name consentType:(unint64_t)type title:(id *)title details:(id *)details;
- (TSSIMSetupFlowDelegate)delegate;
- (TSUserConsentViewController)initWithConsentType:(unint64_t)type name:(id)name;
- (void)_acceptButtonTapped;
- (void)_cancelButtonTapped;
- (void)_declineButtonTapped;
- (void)_setNavigationItems;
- (void)viewDidLoad;
@end

@implementation TSUserConsentViewController

+ (void)calculateTitleAndDetailsWithName:(id)name consentType:(unint64_t)type title:(id *)title details:(id *)details
{
  nameCopy = name;
  if (type <= 1)
  {
    if (type)
    {
      if (type != 1)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v20 = _TSLogDomain();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [TSUserConsentViewController calculateTitleAndDetailsWithName:v20 consentType:? title:? details:?];
      }
    }

    goto LABEL_17;
  }

  if (type == 2)
  {
    v10 = MEMORY[0x277CCACA8];
    v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v12 = [v11 localizedStringForKey:@"CONSENT_NEW_PROFILE_POLICY_TITLE" value:&stru_28753DF48 table:@"Localizable"];
    *title = [v10 stringWithFormat:v12];

    v13 = MEMORY[0x277CCACA8];
    v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    if (nameCopy)
    {
      v15 = @"CONSENT_NEW_PLAN_CANNOT_BE_DELETED_%@_%@";
LABEL_13:
      v19 = [v14 localizedStringForKey:v15 value:&stru_28753DF48 table:@"Localizable"];
      [v13 stringWithFormat:v19, nameCopy, nameCopy];
      *details = LABEL_23:;

      goto LABEL_24;
    }

    v27 = @"CONSENT_NEW_PLAN_CANNOT_BE_DELETED_NO_NAME";
LABEL_22:
    v19 = [v14 localizedStringForKey:v27 value:&stru_28753DF48 table:@"Localizable"];
    [v13 stringWithFormat:v19, v28, v29];
    goto LABEL_23;
  }

  if (type == 3)
  {
    v16 = MEMORY[0x277CCACA8];
    v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v18 = [v17 localizedStringForKey:@"CONSENT_NEW_PROFILE_POLICY_TITLE" value:&stru_28753DF48 table:@"Localizable"];
    *title = [v16 stringWithFormat:v18];

    v13 = MEMORY[0x277CCACA8];
    v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    if (nameCopy)
    {
      v15 = @"CONSENT_NEW_PLAN_CANNOT_BE_DISABLED_%@_%@";
      goto LABEL_13;
    }

    v27 = @"CONSENT_NEW_PLAN_CANNOT_BE_DISABLED_NO_NAME";
    goto LABEL_22;
  }

  if (type != 4)
  {
    goto LABEL_25;
  }

LABEL_17:
  v21 = MEMORY[0x277CCACA8];
  v22 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v23 = [v22 localizedStringForKey:@"GENERAL_USER_CONSENT_TITLE" value:&stru_28753DF48 table:@"Localizable"];
  *title = [v21 stringWithFormat:v23];

  if (!nameCopy)
  {
    v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    *details = [v14 localizedStringForKey:@"GENERAL_USER_CONSENT_COMMON_DETAIL" value:&stru_28753DF48 table:@"Localizable"];
LABEL_24:

    goto LABEL_25;
  }

  v24 = MEMORY[0x277CCACA8];
  v25 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v26 = [v25 localizedStringForKey:@"GENERAL_USER_CONSENT_COMMON_DETAIL_%@" value:&stru_28753DF48 table:@"Localizable"];
  *details = [v24 stringWithFormat:v26, nameCopy];

LABEL_25:
}

- (TSUserConsentViewController)initWithConsentType:(unint64_t)type name:(id)name
{
  v12 = 0;
  v13 = 0;
  [TSUserConsentViewController calculateTitleAndDetailsWithName:name consentType:type title:&v13 details:&v12];
  v6 = v13;
  v7 = v12;
  v11.receiver = self;
  v11.super_class = TSUserConsentViewController;
  v8 = [(TSUserConsentViewController *)&v11 initWithTitle:v6 detailText:v7 icon:0];
  v9 = v8;
  if (v8)
  {
    [(TSUserConsentViewController *)v8 setModalInPresentation:1];
    v9->_consentType = type;
    v9->_userConsentResponse = 0;
  }

  return v9;
}

- (void)viewDidLoad
{
  v14.receiver = self;
  v14.super_class = TSUserConsentViewController;
  [(TSOBWelcomeController *)&v14 viewDidLoad];
  consentType = self->_consentType;
  if (consentType <= 1)
  {
    if (consentType)
    {
      if (consentType == 1)
      {
        v5 = @"ACTIVATE_ESIM";
      }

      else
      {
        v5 = 0;
      }

      v4 = 0;
      goto LABEL_11;
    }

LABEL_10:
    v4 = 0;
    v5 = @"ACTIVATE_ESIM";
    goto LABEL_11;
  }

  if ((consentType - 2) < 2)
  {
    v4 = 1;
    v5 = @"CONSENT_POLICY_ALLOW";
    goto LABEL_11;
  }

  if (consentType == 4)
  {
    goto LABEL_10;
  }

  v5 = 0;
  v4 = 0;
LABEL_11:
  boldButton = [MEMORY[0x277D37618] boldButton];
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:v5 value:&stru_28753DF48 table:@"Localizable"];
  [boldButton setTitle:v8 forState:0];

  [boldButton addTarget:self action:sel__acceptButtonTapped forControlEvents:64];
  buttonTray = [(TSUserConsentViewController *)self buttonTray];
  [buttonTray addButton:boldButton];

  if (v4)
  {
    linkButton = [MEMORY[0x277D37650] linkButton];
    v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v12 = [v11 localizedStringForKey:@"CONSENT_POLICY_DECLINE" value:&stru_28753DF48 table:@"Localizable"];
    [linkButton setTitle:v12 forState:0];

    [linkButton addTarget:self action:sel__declineButtonTapped forControlEvents:64];
    buttonTray2 = [(TSUserConsentViewController *)self buttonTray];
    [buttonTray2 addButton:linkButton];
  }

  [(TSUserConsentViewController *)self _setNavigationItems];
}

- (void)_setNavigationItems
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained setCancelNavigationBarItems:self];

  v7 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel__cancelButtonTapped];
  v4 = +[TSUtilities isPad];
  navigationItem = [(OBBaseWelcomeController *)self navigationItem];
  navigationItem2 = navigationItem;
  if (v4)
  {
    [navigationItem setRightBarButtonItem:v7];

    navigationItem2 = [(OBBaseWelcomeController *)self navigationItem];
    [navigationItem2 setHidesBackButton:1 animated:0];
  }

  else
  {
    [navigationItem setLeftBarButtonItem:v7];
  }
}

- (void)_acceptButtonTapped
{
  self->_userConsentResponse = 1;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained viewControllerDidComplete:self];
}

- (void)_declineButtonTapped
{
  self->_userConsentResponse = 2;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained viewControllerDidComplete:self];
}

- (void)_cancelButtonTapped
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained viewControllerDidComplete:self];
}

- (TSSIMSetupFlowDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

+ (void)calculateTitleAndDetailsWithName:(os_log_t)log consentType:title:details:.cold.1(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "+[TSUserConsentViewController calculateTitleAndDetailsWithName:consentType:title:details:]";
  _os_log_error_impl(&dword_262AA8000, log, OS_LOG_TYPE_ERROR, "[E]No conent type, default to general consent @%s", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end