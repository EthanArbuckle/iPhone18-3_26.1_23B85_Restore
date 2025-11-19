@interface NBUsageDetailController
- (id)specifiers;
- (void)deleteAllBackups;
- (void)loadView;
- (void)setEditable:(BOOL)a3;
- (void)showDeleteAllAlert;
@end

@implementation NBUsageDetailController

- (void)loadView
{
  v3.receiver = self;
  v3.super_class = NBUsageDetailController;
  [(NBUsageDetailController *)&v3 loadView];
  [(NBUsageDetailController *)self setEditingButtonHidden:0 animated:0];
}

- (id)specifiers
{
  v3 = *&self->PSUsageBundleDetailController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v3)
  {
    v30 = OBJC_IVAR___PSListController__specifiers;
    v31 = self;
    v36.receiver = self;
    v36.super_class = NBUsageDetailController;
    v4 = [(NBUsageDetailController *)&v36 specifiers];
    v5 = [v4 mutableCopy];

    v6 = [v5 firstObject];
    v7 = [NSBundle bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"NANO_BACKUPS" value:&stru_8480 table:@"Localization"];
    v29 = v6;
    [v6 setName:v8];

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v9 = v5;
    v10 = [v9 countByEnumeratingWithState:&v32 objects:v38 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v33;
      v13 = PSUsageBundleCategoryKey;
      v14 = PSCellClassKey;
      do
      {
        v15 = v9;
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v33 != v12)
          {
            objc_enumerationMutation(v15);
          }

          v17 = *(*(&v32 + 1) + 8 * i);
          v18 = [v17 propertyForKey:v13];
          if (v18)
          {
            [v17 setProperty:objc_opt_class() forKey:v14];
            v19 = [v18 nanoBackup];
            [v17 setProperty:v19 forKey:@"NBBackup"];
          }
        }

        v9 = v15;
        v11 = [v15 countByEnumeratingWithState:&v32 objects:v38 count:16];
      }

      while (v11);
    }

    deleteButtonSpecifiers = v31->_deleteButtonSpecifiers;
    if (!deleteButtonSpecifiers)
    {
      v21 = [NSBundle bundleForClass:objc_opt_class()];
      v22 = [v21 localizedStringForKey:@"REMOVE_ALL_BUTTON" value:&stru_8480 table:@"Localization"];
      v23 = [PSSpecifier deleteButtonSpecifierWithName:v22 target:v31 action:"showDeleteAllAlert"];

      [v23 setProperty:@"DELETE_BUTTON" forKey:PSIDKey];
      v24 = [PSSpecifier groupSpecifierWithName:0];
      v37[0] = v24;
      v37[1] = v23;
      v25 = [NSArray arrayWithObjects:v37 count:2];
      v26 = v31->_deleteButtonSpecifiers;
      v31->_deleteButtonSpecifiers = v25;

      deleteButtonSpecifiers = v31->_deleteButtonSpecifiers;
    }

    [v9 addObjectsFromArray:deleteButtonSpecifiers];
    v27 = *&v31->PSUsageBundleDetailController_opaque[v30];
    *&v31->PSUsageBundleDetailController_opaque[v30] = v9;

    v3 = *&v31->PSUsageBundleDetailController_opaque[v30];
  }

  return v3;
}

- (void)showDeleteAllAlert
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"REMOVE_ALL_MESSAGE" value:&stru_8480 table:@"Localization"];
  v5 = [UIAlertController alertControllerWithTitle:0 message:v4 preferredStyle:0];
  deleteAllAlertController = self->_deleteAllAlertController;
  self->_deleteAllAlertController = v5;

  v7 = self->_deleteAllAlertController;
  v8 = [NSBundle bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"CANCEL" value:&stru_8480 table:@"Localization"];
  v10 = [UIAlertAction actionWithTitle:v9 style:1 handler:0];
  [(UIAlertController *)v7 addAction:v10];

  v11 = self->_deleteAllAlertController;
  v12 = [NSBundle bundleForClass:objc_opt_class()];
  v13 = [v12 localizedStringForKey:@"REMOVE_ALL" value:&stru_8480 table:@"Localization"];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1EB8;
  v15[3] = &unk_8390;
  v15[4] = self;
  v14 = [UIAlertAction actionWithTitle:v13 style:2 handler:v15];
  [(UIAlertController *)v11 addAction:v14];

  [(NBUsageDetailController *)self presentViewController:self->_deleteAllAlertController animated:1 completion:0];
}

- (void)setEditable:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = NBUsageDetailController;
  [(NBUsageDetailController *)&v7 setEditable:?];
  v5 = [(NBUsageDetailController *)self specifierForID:@"DELETE_BUTTON"];
  v6 = [NSNumber numberWithBool:!v3];
  [v5 setProperty:v6 forKey:PSEnabledKey];

  [(NBUsageDetailController *)self reloadSpecifier:v5 animated:0];
}

- (void)deleteAllBackups
{
  v3 = objc_opt_new();
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_217C;
  v17 = sub_218C;
  v18 = 0;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_2194;
  v12[3] = &unk_83B8;
  v12[4] = &v13;
  [v3 listBackupsOfType:1 withSynchronousCompletionHandler:v12];
  if ([v14[5] count])
  {
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(&_dispatch_queue_attr_concurrent, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_create("com.apple.nanobackup.bridgeUsage.deleteAll", v4);
    v6 = [*&self->PSUsageBundleDetailController_opaque[OBJC_IVAR___PSListController__specifiers] count];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_21A4;
    block[3] = &unk_83E0;
    block[4] = self;
    v11 = v3;
    dispatch_apply(v6, v5, block);
  }

  v7 = [(NBUsageDetailController *)self parentController];
  [v7 reloadSpecifiers];

  v8 = [(NBUsageDetailController *)self rootController];
  v9 = [v8 popViewControllerAnimated:1];

  _Block_object_dispose(&v13, 8);
}

@end