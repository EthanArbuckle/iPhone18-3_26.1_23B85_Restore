@interface PHCallBlockingAndIdentificationSettingsListController
- (BOOL)canEditExtensions;
- (BOOL)tableView:(id)view canMoveRowAtIndexPath:(id)path;
- (PHCallBlockingAndIdentificationSettingsListController)initWithNibName:(id)name bundle:(id)bundle;
- (id)specifiers;
- (id)tableView:(id)view targetIndexPathForMoveFromRowAtIndexPath:(id)path toProposedIndexPath:(id)indexPath;
- (int64_t)businessCallIdentificationIndex;
- (void)activeSubscriptionsDidChange;
- (void)addBusinessCallingSpecifierIfNecessary:(id)necessary;
- (void)addCallDirectorySpecifierIfNecessary:(id)necessary;
- (void)addLiveLookupSpecifierIfNecessary:(id)necessary;
- (void)configurationChanged;
- (void)emitNavigationEvent;
- (void)refreshView;
- (void)reloadSpecifiers;
- (void)tableView:(id)view moveRowAtIndexPath:(id)path toIndexPath:(id)indexPath;
@end

@implementation PHCallBlockingAndIdentificationSettingsListController

- (PHCallBlockingAndIdentificationSettingsListController)initWithNibName:(id)name bundle:(id)bundle
{
  v21.receiver = self;
  v21.super_class = PHCallBlockingAndIdentificationSettingsListController;
  v4 = [(PHCallBlockingAndIdentificationSettingsListController *)&v21 initWithNibName:name bundle:bundle];
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
  specifier = [(PHCallBlockingAndIdentificationSettingsListController *)self specifier];
  target = [specifier target];
  parentListController = [target parentListController];
  specifierID = [parentListController specifierID];

  v6 = 0x277CCA000uLL;
  v7 = objc_alloc(MEMORY[0x277CCAEB8]);
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  bundleURL = [v9 bundleURL];
  v11 = [v7 initWithKey:@"Apps" table:0 locale:currentLocale bundleURL:bundleURL];

  v12 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v11, 0}];
  if ([specifierID isEqualToString:@"com.apple.preferences.facetime"])
  {
    v13 = *MEMORY[0x277D6EF78];
    v14 = objc_alloc(MEMORY[0x277CCAEB8]);
    currentLocale2 = [MEMORY[0x277CBEAF8] currentLocale];
    v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    bundleURL2 = [v16 bundleURL];
    v18 = [v14 initWithKey:@"FaceTime" table:0 locale:currentLocale2 bundleURL:bundleURL2];
    [v12 addObject:v18];

    v6 = 0x277CCA000;
  }

  else
  {
    if (![specifierID isEqualToString:@"com.apple.preferences.phone"])
    {
      goto LABEL_6;
    }

    v13 = *MEMORY[0x277D6EF98];
    currentLocale2 = TUResolvedPhoneResource();
    [v12 addObject:currentLocale2];
  }

  v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"settings-navigation://com.apple.Settings.Apps/%@/%@", v13, @"CALL_DIRECTORIES"];
  v20 = [MEMORY[0x277CBEBC0] URLWithString:v19];
  v21 = objc_alloc(*(v6 + 3768));
  currentLocale3 = [MEMORY[0x277CBEAF8] currentLocale];
  v23 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  bundleURL3 = [v23 bundleURL];
  v25 = [v21 initWithKey:@"Call Blocking & Identification" table:0 locale:currentLocale3 bundleURL:bundleURL3];

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

- (BOOL)tableView:(id)view canMoveRowAtIndexPath:(id)path
{
  pathCopy = path;
  section = [pathCopy section];
  if (section == [(PHCallBlockingAndIdentificationSettingsListController *)self callDirectoryIdentificationIndex])
  {
    v7 = &OBJC_IVAR___PHCallBlockingAndIdentificationSettingsListController__callDirectorySettingsController;
  }

  else
  {
    section2 = [pathCopy section];
    if (section2 != [(PHCallBlockingAndIdentificationSettingsListController *)self liveLookupIdentificationIndex])
    {
      canEditExtensions = 0;
      goto LABEL_7;
    }

    v7 = &OBJC_IVAR___PHCallBlockingAndIdentificationSettingsListController__liveLookupSettingsController;
  }

  canEditExtensions = [*(&self->super.super.super.super.super.isa + *v7) canEditExtensions];
LABEL_7:

  return canEditExtensions;
}

- (void)tableView:(id)view moveRowAtIndexPath:(id)path toIndexPath:(id)indexPath
{
  viewCopy = view;
  pathCopy = path;
  indexPathCopy = indexPath;
  section = [pathCopy section];
  if (section == [indexPathCopy section])
  {
    section2 = [pathCopy section];
    if (section2 == [(PHCallBlockingAndIdentificationSettingsListController *)self callDirectoryIdentificationIndex])
    {
      callDirectorySettingsController = [(PHCallBlockingAndIdentificationSettingsListController *)self callDirectorySettingsController];
    }

    else
    {
      section3 = [pathCopy section];
      if (section3 != [(PHCallBlockingAndIdentificationSettingsListController *)self liveLookupIdentificationIndex])
      {
        goto LABEL_7;
      }

      callDirectorySettingsController = [(PHCallBlockingAndIdentificationSettingsListController *)self liveLookupSettingsController];
    }

    v14 = callDirectorySettingsController;
    [callDirectorySettingsController tableView:viewCopy moveRowAtIndexPath:pathCopy toIndexPath:indexPathCopy];
  }

LABEL_7:
}

- (id)tableView:(id)view targetIndexPathForMoveFromRowAtIndexPath:(id)path toProposedIndexPath:(id)indexPath
{
  pathCopy = path;
  indexPathCopy = indexPath;
  v8 = pathCopy;
  section = [v8 section];
  v10 = v8;
  if (section == [indexPathCopy section])
  {
    v10 = indexPathCopy;
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

- (void)addBusinessCallingSpecifierIfNecessary:(id)necessary
{
  necessaryCopy = necessary;
  specifiers = [(PHBusinessCallingController *)self->_businessCallingController specifiers];
  self->_businessCallingSpecifierCount = [specifiers count];
  if (specifiers)
  {
    [necessaryCopy addObjectsFromArray:specifiers];
  }
}

- (void)addCallDirectorySpecifierIfNecessary:(id)necessary
{
  necessaryCopy = necessary;
  v5 = TPSLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_21B8E9000, v5, OS_LOG_TYPE_DEFAULT, "Call Directory addCallDirectorySpecifierIfNecessary", v7, 2u);
  }

  specifiers = [(PHCallDirectorySettingsController *)self->_callDirectorySettingsController specifiers];
  if (specifiers)
  {
    [necessaryCopy addObjectsFromArray:specifiers];
  }
}

- (void)addLiveLookupSpecifierIfNecessary:(id)necessary
{
  necessaryCopy = necessary;
  v5 = TPSLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_21B8E9000, v5, OS_LOG_TYPE_DEFAULT, "live lookup addLiveLookupSpecifierIfNecessary", v7, 2u);
  }

  specifiers = [(PHLiveLookupSettingsController *)self->_liveLookupSettingsController specifiers];
  if (specifiers)
  {
    [necessaryCopy addObjectsFromArray:specifiers];
  }
}

- (BOOL)canEditExtensions
{
  callDirectorySettingsController = [(PHCallBlockingAndIdentificationSettingsListController *)self callDirectorySettingsController];
  if ([callDirectorySettingsController canEditExtensions])
  {
    canEditExtensions = 1;
  }

  else
  {
    liveLookupSettingsController = [(PHCallBlockingAndIdentificationSettingsListController *)self liveLookupSettingsController];
    canEditExtensions = [liveLookupSettingsController canEditExtensions];
  }

  return canEditExtensions;
}

- (void)refreshView
{
  if (([(PHCallBlockingAndIdentificationSettingsListController *)self isEditing]& 1) == 0 && [(PHCallBlockingAndIdentificationSettingsListController *)self isViewLoaded])
  {
    [(PHCallBlockingAndIdentificationSettingsListController *)self reloadSpecifiers];
    isEditing = [(PHCallBlockingAndIdentificationSettingsListController *)self isEditing];

    [(PHCallBlockingAndIdentificationSettingsListController *)self setNavigationItemsForEditing:isEditing animated:0];
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