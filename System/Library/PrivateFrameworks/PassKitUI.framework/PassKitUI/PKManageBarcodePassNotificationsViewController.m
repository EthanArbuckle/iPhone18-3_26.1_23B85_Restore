@interface PKManageBarcodePassNotificationsViewController
- (PKManageBarcodePassNotificationsViewController)initWithPass:(id)a3;
- (void)recomputeMappedSectionsAndReloadSections:(id)a3;
@end

@implementation PKManageBarcodePassNotificationsViewController

- (PKManageBarcodePassNotificationsViewController)initWithPass:(id)a3
{
  v15[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v14.receiver = self;
  v14.super_class = PKManageBarcodePassNotificationsViewController;
  v6 = -[PKDynamicTableViewController initWithStyle:](&v14, sel_initWithStyle_, [MEMORY[0x1E69DD020] pkui_groupedStyleDefaultRoundedCornerBehavior]);
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_pass, a3);
    v8 = [[PKBarcodePassDetailsNotificationSettingsSectionController alloc] initWithPass:v7->_pass detailViewStyle:0 delegate:v7];
    notificationsSectionController = v7->_notificationsSectionController;
    v7->_notificationsSectionController = v8;

    v15[0] = v7->_notificationsSectionController;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
    [(PKDynamicTableViewController *)v7 setSectionControllers:v10];

    v11 = [(PKManageBarcodePassNotificationsViewController *)v7 navigationItem];
    v12 = PKLocalizedString(&cfstr_SettingsManage_0.isa, 0);
    [v11 setTitle:v12];
  }

  return v7;
}

- (void)recomputeMappedSectionsAndReloadSections:(id)a3
{
  notificationsSectionController = self->_notificationsSectionController;
  v5 = a3;
  v6 = [(PKBarcodePassDetailsNotificationSettingsSectionController *)notificationsSectionController allSectionIdentifiers];
  v7.receiver = self;
  v7.super_class = PKManageBarcodePassNotificationsViewController;
  [(PKDynamicTableViewController *)&v7 recomputeMappedSectionsAndReloadSections:v5 sectionIdentifiers:v6 updates:0];
}

@end