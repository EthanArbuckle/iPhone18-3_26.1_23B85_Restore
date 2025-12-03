@interface SoftwareUpdateUsageDetailController
- (id)specifiers;
- (void)confirmDeletion;
- (void)deleteSoftwareUpdate;
- (void)loadView;
@end

@implementation SoftwareUpdateUsageDetailController

- (void)loadView
{
  v15.receiver = self;
  v15.super_class = SoftwareUpdateUsageDetailController;
  [(SoftwareUpdateUsageDetailController *)&v15 loadView];
  v3 = OBJC_IVAR___PSViewController__specifier;
  v4 = [*&self->PSUsageBundleDetailController_opaque[OBJC_IVAR___PSViewController__specifier] propertyForKey:PSUsageBundleAppKey];
  v5 = *&self->PSUsageBundleDetailController_opaque[v3];
  v6 = [NSBundle bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"UPDATE_SIZE" value:&stru_4298 table:@"SoftwareUpdateUsageBundle"];
  [v5 setProperty:v7 forKey:kUsageDetailHeaderSizeTitleKey];

  v8 = *&self->PSUsageBundleDetailController_opaque[v3];
  [v4 totalSize];
  v9 = [NSNumber numberWithFloat:?];
  [v8 setProperty:v9 forKey:kUsageDetailHeaderSizeValueKey];

  v10 = [ICQUsageDetailHeader alloc];
  +[ICQUsageDetailHeader usageDetailHeaderHeight];
  v12 = [v10 initWithFrame:{0.0, 0.0, 0.0, v11}];
  [v12 setLabelTextAndIconWithSpecifier:*&self->PSUsageBundleDetailController_opaque[v3]];
  name = [*&self->PSUsageBundleDetailController_opaque[v3] name];
  [v12 setName:name];

  table = [(SoftwareUpdateUsageDetailController *)self table];
  [table setTableHeaderView:v12];
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  if (!*&self->PSUsageBundleDetailController_opaque[OBJC_IVAR___PSListController__specifiers])
  {
    v4 = objc_alloc_init(NSMutableArray);
    v5 = +[PSSpecifier emptyGroupSpecifier];
    [v5 setIdentifier:@"SU_USAGE_GROUP"];
    v6 = [*&self->PSUsageBundleDetailController_opaque[OBJC_IVAR___PSViewController__specifier] propertyForKey:PSUsageBundleAppKey];
    if (([v6 isDeletionRestricted] & 1) == 0)
    {
      [v4 addObject:v5];
      v7 = [NSBundle bundleForClass:objc_opt_class()];
      v8 = [v7 localizedStringForKey:@"DELETE_UPDATE_BUTTON" value:&stru_4298 table:@"SoftwareUpdateUsageBundle"];
      v9 = [PSSpecifier deleteButtonSpecifierWithName:v8 target:self action:"confirmDeletion"];
      [v4 addObject:v9];
    }

    v10 = *&self->PSUsageBundleDetailController_opaque[v3];
    *&self->PSUsageBundleDetailController_opaque[v3] = v4;
  }

  navigationItem = [(SoftwareUpdateUsageDetailController *)self navigationItem];
  v12 = [NSBundle bundleForClass:objc_opt_class()];
  v13 = [v12 localizedStringForKey:@"SOFTWARE_UPDATE" value:&stru_4298 table:@"SoftwareUpdateUsageBundle"];
  [navigationItem setTitle:v13];

  v14 = *&self->PSUsageBundleDetailController_opaque[v3];

  return v14;
}

- (void)confirmDeletion
{
  v15 = objc_alloc_init(PSConfirmationSpecifier);
  v13 = [NSBundle bundleForClass:objc_opt_class()];
  v12 = [v13 localizedStringForKey:@"DELETE_UPDATE_CONFIRMATION_TITLE" value:&stru_4298 table:@"SoftwareUpdateUsageBundle"];
  v11 = PSConfirmationTitleKey;
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"DELETE_UPDATE_CONFIRMATION_DESCRIPTION" value:&stru_4298 table:@"SoftwareUpdateUsageBundle"];
  v4 = PSConfirmationPromptKey;
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"DELETE_UPDATE_CONFIRMATION_BUTTON" value:&stru_4298 table:@"SoftwareUpdateUsageBundle"];
  v7 = PSConfirmationOKKey;
  v8 = [NSBundle bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"CANCEL" value:&stru_4298 table:@"SoftwareUpdateUsageBundle"];
  v10 = [NSDictionary dictionaryWithObjectsAndKeys:v12, v11, v3, v4, v6, v7, v9, PSConfirmationCancelKey, 0];
  [v15 setupWithDictionary:v10];

  [v15 setProperty:&__kCFBooleanTrue forKey:PSConfirmationDestructiveKey];
  [v15 setTarget:self];
  [v15 setConfirmationAction:"deleteSoftwareUpdate"];
  [(SoftwareUpdateUsageDetailController *)self showConfirmationViewForSpecifier:v15];
}

- (void)deleteSoftwareUpdate
{
  view = [(SoftwareUpdateUsageDetailController *)self view];
  [view setUserInteractionEnabled:0];

  v4 = +[PSNavBarSpinnerManager sharedSpinnerManager];
  navigationItem = [(SoftwareUpdateUsageDetailController *)self navigationItem];
  [v4 startAnimatingInNavItem:navigationItem forIdentifier:@"softwareUpdateDeletion"];

  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1378;
  v12 = sub_1388;
  v13 = [[SUManagerClient alloc] initWithDelegate:0];
  v6 = v9[5];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1390;
  v7[3] = &unk_4230;
  v7[4] = self;
  v7[5] = &v8;
  [v6 purgeDownload:v7];
  _Block_object_dispose(&v8, 8);
}

@end