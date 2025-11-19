@interface PHCallBlockingAndIdentificationSettingsListController
- (BOOL)canEditExtensions;
- (BOOL)tableView:(id)a3 canMoveRowAtIndexPath:(id)a4;
- (PHCallBlockingAndIdentificationSettingsListController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)specifiers;
- (id)tableView:(id)a3 targetIndexPathForMoveFromRowAtIndexPath:(id)a4 toProposedIndexPath:(id)a5;
- (int64_t)businessCallIdentificationIndex;
- (void)activeSubscriptionsDidChange;
- (void)addBusinessCallingSpecifierIfNecessary:(id)a3;
- (void)addCallDirectorySpecifierIfNecessary:(id)a3;
- (void)addLiveLookupSpecifierIfNecessary:(id)a3;
- (void)configurationChanged;
- (void)emitNavigationEvent;
- (void)refreshView;
- (void)reloadSpecifiers;
- (void)tableView:(id)a3 moveRowAtIndexPath:(id)a4 toIndexPath:(id)a5;
@end

@implementation PHCallBlockingAndIdentificationSettingsListController

- (PHCallBlockingAndIdentificationSettingsListController)initWithNibName:(id)a3 bundle:(id)a4
{
  v21.receiver = self;
  v21.super_class = PHCallBlockingAndIdentificationSettingsListController;
  v4 = [(PHCallBlockingAndIdentificationSettingsListController *)&v21 initWithNibName:a3 bundle:a4];
  if (v4)
  {
    v5 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
    v6 = dispatch_queue_create("PHCallBlockingAndIdentificationSettingsListControllerQueue", v5);
    queue = v4->_queue;
    v4->_queue = v6;

    v8 = [objc_alloc(MEMORY[0x277CC37B0]) initWithQueue:v4->_queue];
    ctClient = v4->_ctClient;
    v4->_ctClient = v8;

    [(CoreTelephonyClient *)v4->_ctClient setDelegate:v4];
    v10 = [[PHBusinessCallingController alloc] initWithCoreTelephonyClient:v4->_ctClient];
    businessCallingController = v4->_businessCallingController;
    v4->_businessCallingController = v10;

    v4->_businessCallingSpecifierCount = 0;
    v12 = [[PHCallDirectorySettingsController alloc] initWithParent:v4];
    callDirectorySettingsController = v4->_callDirectorySettingsController;
    v4->_callDirectorySettingsController = v12;

    v14 = [[PHLiveLookupSettingsController alloc] initWithParent:v4];
    liveLookupSettingsController = v4->_liveLookupSettingsController;
    v4->_liveLookupSettingsController = v14;

    v16 = objc_alloc_init(MEMORY[0x277D6EED8]);
    featureFlags = v4->_featureFlags;
    v4->_featureFlags = v16;

    if ([(TUFeatureFlags *)v4->_featureFlags deviceExpertMigrationEnabled])
    {
      v18 = objc_alloc_init(MEMORY[0x277D6EE48]);
      configurationProvider = v4->_configurationProvider;
      v4->_configurationProvider = v18;

      [(TUConfigurationProvider *)v4->_configurationProvider setDelegate:v4];
    }
  }

  return v4;
}

- (void)emitNavigationEvent
{
  v3 = [(PHCallBlockingAndIdentificationSettingsListController *)self specifier];
  v4 = [v3 target];
  v5 = [v4 parentListController];
  v26 = [v5 specifierID];

  v6 = 0x277CCA000uLL;
  v7 = objc_alloc(MEMORY[0x277CCAEB8]);
  v8 = [MEMORY[0x277CBEAF8] currentLocale];
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v9 bundleURL];
  v11 = [v7 initWithKey:@"Apps" table:0 locale:v8 bundleURL:v10];

  v12 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v11, 0}];
  if ([v26 isEqualToString:@"com.apple.preferences.facetime"])
  {
    v13 = *MEMORY[0x277D6EF78];
    v14 = objc_alloc(MEMORY[0x277CCAEB8]);
    v15 = [MEMORY[0x277CBEAF8] currentLocale];
    v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v17 = [v16 bundleURL];
    v18 = [v14 initWithKey:@"FaceTime" table:0 locale:v15 bundleURL:v17];
    [v12 addObject:v18];

    v6 = 0x277CCA000;
  }

  else
  {
    if (![v26 isEqualToString:@"com.apple.preferences.phone"])
    {
      goto LABEL_6;
    }

    v13 = *MEMORY[0x277D6EF98];
    v15 = TUResolvedPhoneResource();
    [v12 addObject:v15];
  }

  v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"settings-navigation://com.apple.Settings.Apps/%@/%@", v13, @"CALL_DIRECTORIES"];
  v20 = [MEMORY[0x277CBEBC0] URLWithString:v19];
  v21 = objc_alloc(*(v6 + 3768));
  v22 = [MEMORY[0x277CBEAF8] currentLocale];
  v23 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v24 = [v23 bundleURL];
  v25 = [v21 initWithKey:@"Call Blocking & Identification" table:0 locale:v22 bundleURL:v24];

  [(PHCallBlockingAndIdentificationSettingsListController *)self pe_emitNavigationEventForApplicationSettingsWithApplicationBundleIdentifier:v13 title:v25 localizedNavigationComponents:v12 deepLink:v20];
LABEL_6:
}

- (void)activeSubscriptionsDidChange
{
  [(PHBusinessCallingController *)self->_businessCallingController updateBusinessCallingState];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __85__PHCallBlockingAndIdentificationSettingsListController_activeSubscriptionsDidChange__block_invoke;
  block[3] = &unk_2782E3960;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (BOOL)tableView:(id)a3 canMoveRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [v5 section];
  if (v6 == [(PHCallBlockingAndIdentificationSettingsListController *)self callDirectoryIdentificationIndex])
  {
    v7 = &OBJC_IVAR___PHCallBlockingAndIdentificationSettingsListController__callDirectorySettingsController;
  }

  else
  {
    v8 = [v5 section];
    if (v8 != [(PHCallBlockingAndIdentificationSettingsListController *)self liveLookupIdentificationIndex])
    {
      v9 = 0;
      goto LABEL_7;
    }

    v7 = &OBJC_IVAR___PHCallBlockingAndIdentificationSettingsListController__liveLookupSettingsController;
  }

  v9 = [*(&self->super.super.super.super.super.isa + *v7) canEditExtensions];
LABEL_7:

  return v9;
}

- (void)tableView:(id)a3 moveRowAtIndexPath:(id)a4 toIndexPath:(id)a5
{
  v15 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v8 section];
  if (v10 == [v9 section])
  {
    v11 = [v8 section];
    if (v11 == [(PHCallBlockingAndIdentificationSettingsListController *)self callDirectoryIdentificationIndex])
    {
      v12 = [(PHCallBlockingAndIdentificationSettingsListController *)self callDirectorySettingsController];
    }

    else
    {
      v13 = [v8 section];
      if (v13 != [(PHCallBlockingAndIdentificationSettingsListController *)self liveLookupIdentificationIndex])
      {
        goto LABEL_7;
      }

      v12 = [(PHCallBlockingAndIdentificationSettingsListController *)self liveLookupSettingsController];
    }

    v14 = v12;
    [v12 tableView:v15 moveRowAtIndexPath:v8 toIndexPath:v9];
  }

LABEL_7:
}

- (id)tableView:(id)a3 targetIndexPathForMoveFromRowAtIndexPath:(id)a4 toProposedIndexPath:(id)a5
{
  v6 = a4;
  v7 = a5;
  v8 = v6;
  v9 = [v8 section];
  v10 = v8;
  if (v9 == [v7 section])
  {
    v10 = v7;
  }

  return v10;
}

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.isa + v3);
  if (!v4)
  {
    v5 = [(PHCallBlockingAndIdentificationSettingsListController *)self loadSpecifiersFromPlistName:@"CallDirectorySettings" target:self];
    [(PHCallBlockingAndIdentificationSettingsListController *)self addBusinessCallingSpecifierIfNecessary:v5];
    [(PHCallBlockingAndIdentificationSettingsListController *)self addCallDirectorySpecifierIfNecessary:v5];
    [(PHCallBlockingAndIdentificationSettingsListController *)self addLiveLookupSpecifierIfNecessary:v5];
    v6 = [v5 copy];
    v7 = *(&self->super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.isa + v3) = v6;

    v4 = *(&self->super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (void)reloadSpecifiers
{
  v3.receiver = self;
  v3.super_class = PHCallBlockingAndIdentificationSettingsListController;
  [(PHCallBlockingAndIdentificationSettingsListController *)&v3 reloadSpecifiers];
  [(PHCallBlockingAndIdentificationSettingsListController *)self setNavigationItemsForEditing:[(PHCallBlockingAndIdentificationSettingsListController *)self isEditing] animated:0];
}

- (void)addBusinessCallingSpecifierIfNecessary:(id)a3
{
  v5 = a3;
  v4 = [(PHBusinessCallingController *)self->_businessCallingController specifiers];
  self->_businessCallingSpecifierCount = [v4 count];
  if (v4)
  {
    [v5 addObjectsFromArray:v4];
  }
}

- (void)addCallDirectorySpecifierIfNecessary:(id)a3
{
  v4 = a3;
  v5 = TPSLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_21B8E9000, v5, OS_LOG_TYPE_DEFAULT, "Call Directory addCallDirectorySpecifierIfNecessary", v7, 2u);
  }

  v6 = [(PHCallDirectorySettingsController *)self->_callDirectorySettingsController specifiers];
  if (v6)
  {
    [v4 addObjectsFromArray:v6];
  }
}

- (void)addLiveLookupSpecifierIfNecessary:(id)a3
{
  v4 = a3;
  v5 = TPSLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_21B8E9000, v5, OS_LOG_TYPE_DEFAULT, "live lookup addLiveLookupSpecifierIfNecessary", v7, 2u);
  }

  v6 = [(PHLiveLookupSettingsController *)self->_liveLookupSettingsController specifiers];
  if (v6)
  {
    [v4 addObjectsFromArray:v6];
  }
}

- (BOOL)canEditExtensions
{
  v3 = [(PHCallBlockingAndIdentificationSettingsListController *)self callDirectorySettingsController];
  if ([v3 canEditExtensions])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(PHCallBlockingAndIdentificationSettingsListController *)self liveLookupSettingsController];
    v4 = [v5 canEditExtensions];
  }

  return v4;
}

- (void)refreshView
{
  if (([(PHCallBlockingAndIdentificationSettingsListController *)self isEditing]& 1) == 0 && [(PHCallBlockingAndIdentificationSettingsListController *)self isViewLoaded])
  {
    [(PHCallBlockingAndIdentificationSettingsListController *)self reloadSpecifiers];
    v3 = [(PHCallBlockingAndIdentificationSettingsListController *)self isEditing];

    [(PHCallBlockingAndIdentificationSettingsListController *)self setNavigationItemsForEditing:v3 animated:0];
  }
}

- (int64_t)businessCallIdentificationIndex
{
  if (self->_businessCallingSpecifierCount)
  {
    return 0;
  }

  else
  {
    return -1;
  }
}

- (void)configurationChanged
{
  [(PHBusinessCallingController *)self->_businessCallingController updateBusinessCallingState];

  [(PHCallBlockingAndIdentificationSettingsListController *)self refreshView];
}

@end