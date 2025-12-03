@interface PKManagePaymentPassNotificationsViewController
+ (BOOL)canShowForPass:(id)pass dataProvider:(id)provider peerPaymentAccount:(id)account bankConnectAccount:(id)connectAccount account:(id)a7 notificationAuthorizationStatus:(int64_t)status;
- (PKManagePaymentPassNotificationsViewController)initWithPass:(id)pass dataProvider:(id)provider peerPaymentAccount:(id)account bankConnectAccount:(id)connectAccount account:(id)a7 transactionSourceCollection:(id)collection;
- (void)didSelectEditNotificationSettings:(id)settings;
- (void)recomputeMappedSectionsAndReloadSections:(id)sections;
- (void)viewDidLoad;
@end

@implementation PKManagePaymentPassNotificationsViewController

+ (BOOL)canShowForPass:(id)pass dataProvider:(id)provider peerPaymentAccount:(id)account bankConnectAccount:(id)connectAccount account:(id)a7 notificationAuthorizationStatus:(int64_t)status
{
  passCopy = pass;
  providerCopy = provider;
  accountCopy = account;
  connectAccountCopy = connectAccount;
  v17 = a7;
  if ([passCopy passType] == 1)
  {
    v18 = passCopy;
    v19 = [objc_alloc(MEMORY[0x1E69B92F8]) initWithPaymentPass:v18];
    v20 = [objc_alloc(MEMORY[0x1E69B9300]) initWithTransactionSource:v19];
    v21 = [v18 activationState] != 2 && +[PKPaymentPassDetailsNotificationSettingsSectionController canShowSectionforPass:dataProvider:peerPaymentAccount:bankConnectAccount:account:transactionSourceCollection:notificationAuthorizationStatus:](PKPaymentPassDetailsNotificationSettingsSectionController, "canShowSectionforPass:dataProvider:peerPaymentAccount:bankConnectAccount:account:transactionSourceCollection:notificationAuthorizationStatus:", v18, providerCopy, accountCopy, connectAccountCopy, v17, v20, status);
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
  view = [(PKManagePaymentPassNotificationsViewController *)self view];
  [view setAccessibilityIdentifier:*MEMORY[0x1E69B9998]];
}

- (PKManagePaymentPassNotificationsViewController)initWithPass:(id)pass dataProvider:(id)provider peerPaymentAccount:(id)account bankConnectAccount:(id)connectAccount account:(id)a7 transactionSourceCollection:(id)collection
{
  v30[1] = *MEMORY[0x1E69E9840];
  passCopy = pass;
  providerCopy = provider;
  accountCopy = account;
  connectAccountCopy = connectAccount;
  v19 = a7;
  collectionCopy = collection;
  v29.receiver = self;
  v29.super_class = PKManagePaymentPassNotificationsViewController;
  v21 = -[PKDynamicTableViewController initWithStyle:](&v29, sel_initWithStyle_, [MEMORY[0x1E69DD020] pkui_groupedStyleDefaultRoundedCornerBehavior]);
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_pass, pass);
    objc_storeStrong(&v22->_defaultDataProvider, provider);
    v23 = [[PKPaymentPassDetailsNotificationSettingsSectionController alloc] initWithPass:v22->_pass peerPaymentAccount:accountCopy bankConnectAccount:connectAccountCopy account:v19 paymentDataProvider:v22->_defaultDataProvider transactionSourceCollection:collectionCopy detailViewStyle:0 delegate:v22];
    notificationsSectionController = v22->_notificationsSectionController;
    v22->_notificationsSectionController = v23;

    v30[0] = v22->_notificationsSectionController;
    v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:1];
    [(PKDynamicTableViewController *)v22 setSectionControllers:v25];

    navigationItem = [(PKManagePaymentPassNotificationsViewController *)v22 navigationItem];
    v27 = PKLocalizedString(&cfstr_SettingsManage.isa, 0);
    [navigationItem setTitle:v27];
  }

  return v22;
}

- (void)didSelectEditNotificationSettings:(id)settings
{
  if ([settings notificationAuthorizationStatus] == 1)
  {
    v3 = MEMORY[0x1E695DFF8];
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"prefs:root=NOTIFICATIONS_ID&path=%@", *MEMORY[0x1E69BC3D8]];
    v5 = [v3 URLWithString:v4];

    PKOpenURL();
  }
}

- (void)recomputeMappedSectionsAndReloadSections:(id)sections
{
  notificationsSectionController = self->_notificationsSectionController;
  sectionsCopy = sections;
  allSectionIdentifiers = [(PKPaymentPassDetailsNotificationSettingsSectionController *)notificationsSectionController allSectionIdentifiers];
  v7.receiver = self;
  v7.super_class = PKManagePaymentPassNotificationsViewController;
  [(PKDynamicTableViewController *)&v7 recomputeMappedSectionsAndReloadSections:sectionsCopy sectionIdentifiers:allSectionIdentifiers updates:0];
}

@end