@interface PKManagePaymentPassNotificationsViewController
+ (BOOL)canShowForPass:(id)a3 dataProvider:(id)a4 peerPaymentAccount:(id)a5 bankConnectAccount:(id)a6 account:(id)a7 notificationAuthorizationStatus:(int64_t)a8;
- (PKManagePaymentPassNotificationsViewController)initWithPass:(id)a3 dataProvider:(id)a4 peerPaymentAccount:(id)a5 bankConnectAccount:(id)a6 account:(id)a7 transactionSourceCollection:(id)a8;
- (void)didSelectEditNotificationSettings:(id)a3;
- (void)recomputeMappedSectionsAndReloadSections:(id)a3;
- (void)viewDidLoad;
@end

@implementation PKManagePaymentPassNotificationsViewController

+ (BOOL)canShowForPass:(id)a3 dataProvider:(id)a4 peerPaymentAccount:(id)a5 bankConnectAccount:(id)a6 account:(id)a7 notificationAuthorizationStatus:(int64_t)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  if ([v13 passType] == 1)
  {
    v18 = v13;
    v19 = [objc_alloc(MEMORY[0x1E69B92F8]) initWithPaymentPass:v18];
    v20 = [objc_alloc(MEMORY[0x1E69B9300]) initWithTransactionSource:v19];
    v21 = [v18 activationState] != 2 && +[PKPaymentPassDetailsNotificationSettingsSectionController canShowSectionforPass:dataProvider:peerPaymentAccount:bankConnectAccount:account:transactionSourceCollection:notificationAuthorizationStatus:](PKPaymentPassDetailsNotificationSettingsSectionController, "canShowSectionforPass:dataProvider:peerPaymentAccount:bankConnectAccount:account:transactionSourceCollection:notificationAuthorizationStatus:", v18, v14, v15, v16, v17, v20, a8);
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = PKManagePaymentPassNotificationsViewController;
  [(PKDynamicTableViewController *)&v4 viewDidLoad];
  v3 = [(PKManagePaymentPassNotificationsViewController *)self view];
  [v3 setAccessibilityIdentifier:*MEMORY[0x1E69B9998]];
}

- (PKManagePaymentPassNotificationsViewController)initWithPass:(id)a3 dataProvider:(id)a4 peerPaymentAccount:(id)a5 bankConnectAccount:(id)a6 account:(id)a7 transactionSourceCollection:(id)a8
{
  v30[1] = *MEMORY[0x1E69E9840];
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v29.receiver = self;
  v29.super_class = PKManagePaymentPassNotificationsViewController;
  v21 = -[PKDynamicTableViewController initWithStyle:](&v29, sel_initWithStyle_, [MEMORY[0x1E69DD020] pkui_groupedStyleDefaultRoundedCornerBehavior]);
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_pass, a3);
    objc_storeStrong(&v22->_defaultDataProvider, a4);
    v23 = [[PKPaymentPassDetailsNotificationSettingsSectionController alloc] initWithPass:v22->_pass peerPaymentAccount:v17 bankConnectAccount:v18 account:v19 paymentDataProvider:v22->_defaultDataProvider transactionSourceCollection:v20 detailViewStyle:0 delegate:v22];
    notificationsSectionController = v22->_notificationsSectionController;
    v22->_notificationsSectionController = v23;

    v30[0] = v22->_notificationsSectionController;
    v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:1];
    [(PKDynamicTableViewController *)v22 setSectionControllers:v25];

    v26 = [(PKManagePaymentPassNotificationsViewController *)v22 navigationItem];
    v27 = PKLocalizedString(&cfstr_SettingsManage.isa, 0);
    [v26 setTitle:v27];
  }

  return v22;
}

- (void)didSelectEditNotificationSettings:(id)a3
{
  if ([a3 notificationAuthorizationStatus] == 1)
  {
    v3 = MEMORY[0x1E695DFF8];
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"prefs:root=NOTIFICATIONS_ID&path=%@", *MEMORY[0x1E69BC3D8]];
    v5 = [v3 URLWithString:v4];

    PKOpenURL();
  }
}

- (void)recomputeMappedSectionsAndReloadSections:(id)a3
{
  notificationsSectionController = self->_notificationsSectionController;
  v5 = a3;
  v6 = [(PKPaymentPassDetailsNotificationSettingsSectionController *)notificationsSectionController allSectionIdentifiers];
  v7.receiver = self;
  v7.super_class = PKManagePaymentPassNotificationsViewController;
  [(PKDynamicTableViewController *)&v7 recomputeMappedSectionsAndReloadSections:v5 sectionIdentifiers:v6 updates:0];
}

@end