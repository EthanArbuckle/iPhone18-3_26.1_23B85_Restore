@interface DefaultSpamFilterListController
- (BOOL)canEditExtensions;
- (BOOL)tableView:(id)a3 canMoveRowAtIndexPath:(id)a4;
- (DefaultSpamFilterListController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)specifiers;
- (id)tableView:(id)a3 targetIndexPathForMoveFromRowAtIndexPath:(id)a4 toProposedIndexPath:(id)a5;
- (void)_updateExtensions;
- (void)addCallDirectorySpecifierIfNecessary:(id)a3;
- (void)addLiveLookupSpecifierIfNecessary:(id)a3;
- (void)refreshView;
- (void)reloadSpecifiers;
- (void)tableView:(id)a3 moveRowAtIndexPath:(id)a4 toIndexPath:(id)a5;
@end

@implementation DefaultSpamFilterListController

- (DefaultSpamFilterListController)initWithNibName:(id)a3 bundle:(id)a4
{
  v12.receiver = self;
  v12.super_class = DefaultSpamFilterListController;
  v4 = [(DefaultSpamFilterListController *)&v12 initWithNibName:a3 bundle:a4];
  if (v4)
  {
    v5 = [[PHCallDirectorySettingsController alloc] initWithParent:v4];
    callDirectorySettingsController = v4->_callDirectorySettingsController;
    v4->_callDirectorySettingsController = v5;

    v7 = [[PHLiveLookupSettingsController alloc] initWithParent:v4];
    liveLookupSettingsController = v4->_liveLookupSettingsController;
    v4->_liveLookupSettingsController = v7;

    v9 = objc_alloc_init(MEMORY[0x277CBAF68]);
    nsExtensionManager = v4->_nsExtensionManager;
    v4->_nsExtensionManager = v9;
  }

  return v4;
}

- (BOOL)tableView:(id)a3 canMoveRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [v5 section];
  if (v6 == [(DefaultSpamFilterListController *)self callDirectoryIdentificationIndex])
  {
    v7 = &OBJC_IVAR___DefaultSpamFilterListController__callDirectorySettingsController;
  }

  else
  {
    v8 = [v5 section];
    if (v8 != [(DefaultSpamFilterListController *)self liveLookupIdentificationIndex])
    {
      v9 = 0;
      goto LABEL_7;
    }

    v7 = &OBJC_IVAR___DefaultSpamFilterListController__liveLookupSettingsController;
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
    if (v11 == [(DefaultSpamFilterListController *)self callDirectoryIdentificationIndex])
    {
      v12 = [(DefaultSpamFilterListController *)self callDirectorySettingsController];
    }

    else
    {
      v13 = [v8 section];
      if (v13 != [(DefaultSpamFilterListController *)self liveLookupIdentificationIndex])
      {
        goto LABEL_7;
      }

      v12 = [(DefaultSpamFilterListController *)self liveLookupSettingsController];
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
    v5 = [(DefaultSpamFilterListController *)self loadSpecifiersFromPlistName:@"CallDirectorySettings" target:self];
    [(DefaultSpamFilterListController *)self addCallDirectorySpecifierIfNecessary:v5];
    [(DefaultSpamFilterListController *)self addLiveLookupSpecifierIfNecessary:v5];
    if (![v5 count])
    {
      v6 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"CallFilteringSettingsGroup" name:0];
      v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v8 = [v7 localizedStringForKey:@"DEFAULT_CALL_FILTER_EMPTY_FOOTER" value:&stru_282D54710 table:@"CallDirectorySettings"];
      [v6 setProperty:v8 forKey:*MEMORY[0x277D3FF88]];

      [v5 addObject:v6];
    }

    v9 = [v5 copy];
    v10 = *(&self->super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.isa + v3) = v9;

    v4 = *(&self->super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (void)reloadSpecifiers
{
  v3.receiver = self;
  v3.super_class = DefaultSpamFilterListController;
  [(DefaultSpamFilterListController *)&v3 reloadSpecifiers];
  [(DefaultSpamFilterListController *)self setNavigationItemsForEditing:[(DefaultSpamFilterListController *)self isEditing] animated:0];
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
  v3 = [(DefaultSpamFilterListController *)self callDirectorySettingsController];
  if ([v3 canEditExtensions])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(DefaultSpamFilterListController *)self liveLookupSettingsController];
    v4 = [v5 canEditExtensions];
  }

  return v4;
}

- (void)refreshView
{
  if (([(DefaultSpamFilterListController *)self isEditing]& 1) == 0 && [(DefaultSpamFilterListController *)self isViewLoaded])
  {
    [(DefaultSpamFilterListController *)self reloadSpecifiers];
    v3 = [(DefaultSpamFilterListController *)self isEditing];

    [(DefaultSpamFilterListController *)self setNavigationItemsForEditing:v3 animated:0];
  }
}

- (void)_updateExtensions
{
  nsExtensionManager = self->_nsExtensionManager;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __52__DefaultSpamFilterListController__updateExtensions__block_invoke;
  v3[3] = &unk_2782E38B0;
  v3[4] = self;
  [(CXCallDirectoryNSExtensionManager *)nsExtensionManager extensionsWithCompletionHandler:v3];
}

void __52__DefaultSpamFilterListController__updateExtensions__block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        v9 = 0;
        do
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v12 + 1) + 8 * v9) localizedContainingAppName];
          [v4 addObject:v10];

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }

    [*(a1 + 32) setAppsWithExtensions:v4];
    [*(a1 + 32) refreshView];
  }

  v11 = *MEMORY[0x277D85DE8];
}

@end