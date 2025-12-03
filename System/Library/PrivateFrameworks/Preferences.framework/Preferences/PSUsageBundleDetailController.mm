@interface PSUsageBundleDetailController
+ (void)setupSpecifier:(id)specifier forMediaGroups:(id)groups;
- (id)size:(id)size;
- (id)sizeForSpecifier:(id)specifier;
- (id)specifiers;
- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path;
- (void)loadView;
- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path;
- (void)updateSizesAfterDeletingSize:(float)size shouldPop:(BOOL)pop;
@end

@implementation PSUsageBundleDetailController

+ (void)setupSpecifier:(id)specifier forMediaGroups:(id)groups
{
  specifierCopy = specifier;
  v9 = [specifierCopy propertyForKey:@"USAGE_BUNDLE_APP"];
  usageBundleStorageReporter = [v9 usageBundleStorageReporter];
  if (objc_opt_respondsToSelector())
  {
    categories = [v9 categories];
    if ([categories count])
    {
      [v9 totalSize];
      if (v7 <= 0.0)
      {
        v8 = 4;
      }

      else
      {
        v8 = 2;
      }
    }

    else
    {
      v8 = 4;
    }
  }

  else
  {
    v8 = 4;
  }

  [specifierCopy setCellType:v8];
}

- (void)loadView
{
  v8.receiver = self;
  v8.super_class = PSUsageBundleDetailController;
  [(PSListController *)&v8 loadView];
  table = [(PSListController *)self table];
  v4 = objc_alloc(MEMORY[0x1E69DD250]);
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  if ([currentDevice sf_isiPad])
  {
    v6 = 20.0;
  }

  else
  {
    v6 = 10.0;
  }

  v7 = [v4 initWithFrame:{0.0, 0.0, 0.0, v6}];

  [table setTableHeaderView:v7];
  [(PSEditableListController *)self setEditingButtonHidden:1 animated:0];
}

- (id)size:(id)size
{
  v3 = [size propertyForKey:@"USAGE_BUNDLE_APP"];
  v4 = MEMORY[0x1E696AAF0];
  [v3 totalSize];
  v6 = [v4 stringFromByteCount:v5 countStyle:2];

  return v6;
}

- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path
{
  v5 = [(PSListController *)self specifierAtIndex:[(PSListController *)self indexForIndexPath:path]];
  cellType = [v5 cellType];
  v7 = [v5 propertyForKey:@"USAGE_BUNDLE_CATEGORY"];
  specifier = [(PSListController *)self specifier];
  v9 = [specifier propertyForKey:@"USAGE_BUNDLE_APP"];

  usageBundleStorageReporter = [v9 usageBundleStorageReporter];
  if ([usageBundleStorageReporter allowDeletionForCategory:v7])
  {
    v11 = cellType - 1;
    usageBundleStorageReporter2 = [v9 usageBundleStorageReporter];
    v13 = objc_opt_respondsToSelector();

    v14 = 0;
    if (v11 <= 3 && (v13 & 1) != 0)
    {
      v14 = [MEMORY[0x1E69DC668] isRunningInStoreDemoMode] ^ 1;
    }
  }

  else
  {

    v14 = 0;
  }

  return v14;
}

- (void)updateSizesAfterDeletingSize:(float)size shouldPop:(BOOL)pop
{
  popCopy = pop;
  specifier = [(PSListController *)self specifier];
  v14 = [specifier propertyForKey:@"USAGE_BUNDLE_APP"];

  [v14 totalSize];
  *&v9 = v8 - size;
  v10 = [MEMORY[0x1E696AD98] numberWithFloat:v9];
  [v10 floatValue];
  [v14 setTotalSize:?];
  [(PSSpecifier *)self->super.super.super._specifier setProperty:v10 forKey:@"TOTAL_SIZE"];
  [objc_opt_class() setupSpecifier:self->super.super.super._specifier forMediaGroups:0];
  WeakRetained = objc_loadWeakRetained(&self->super.super.super._parentController);
  [WeakRetained reloadSpecifier:self->super.super.super._specifier];

  if (popCopy)
  {
    navigationController = [(PSUsageBundleDetailController *)self navigationController];
    v13 = [navigationController popViewControllerAnimated:1];
  }
}

- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path
{
  v6 = [(PSListController *)self specifierAtIndex:[(PSListController *)self indexForIndexPath:path, style]];
  specifier = [(PSListController *)self specifier];
  v8 = [specifier propertyForKey:@"USAGE_BUNDLE_APP"];

  bundleIdentifier = [v8 bundleIdentifier];
  v10 = [v6 propertyForKey:@"USAGE_BUNDLE_CATEGORY"];
  usageBundleStorageReporter = [v8 usageBundleStorageReporter];
  [usageBundleStorageReporter sizeForCategory:v10];
  v13 = v12;

  v14 = dispatch_get_global_queue(-2, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __80__PSUsageBundleDetailController_tableView_commitEditingStyle_forRowAtIndexPath___block_invoke;
  block[3] = &unk_1E71DBCE8;
  v20 = v8;
  v21 = v10;
  v22 = bundleIdentifier;
  v15 = bundleIdentifier;
  v16 = v10;
  v17 = v8;
  dispatch_async(v14, block);

  LODWORD(v18) = v13;
  [(PSUsageBundleDetailController *)self updateSizesAfterDeletingSize:1 shouldPop:v18];
}

void __80__PSUsageBundleDetailController_tableView_commitEditingStyle_forRowAtIndexPath___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) usageBundleStorageReporter];
  v3 = *(a1 + 40);
  v9 = 0;
  v4 = [v2 deleteDataForCategory:v3 withError:&v9];
  v5 = v9;

  if ((v4 & 1) == 0)
  {
    v6 = _PSLoggingFacility();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 40);
      v7 = *(a1 + 48);
      *buf = 138412802;
      v11 = v7;
      v12 = 2112;
      v13 = v8;
      v14 = 2112;
      v15 = v5;
      _os_log_impl(&dword_18B008000, v6, OS_LOG_TYPE_DEFAULT, "Unable to delete data for %@ : %@. Encountered error: %@", buf, 0x20u);
    }
  }
}

- (id)sizeForSpecifier:(id)specifier
{
  v3 = [specifier propertyForKey:@"USAGE_BUNDLE_CATEGORY"];
  usageBundleApp = [v3 usageBundleApp];
  usageBundleStorageReporter = [usageBundleApp usageBundleStorageReporter];

  v6 = MEMORY[0x1E696AAF0];
  [usageBundleStorageReporter sizeForCategory:v3];
  v8 = [v6 stringFromByteCount:v7 countStyle:2];

  return v8;
}

- (id)specifiers
{
  v30 = *MEMORY[0x1E69E9840];
  specifiers = self->super.super._specifiers;
  if (!specifiers)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    specifier = [(PSListController *)self specifier];
    v6 = [specifier propertyForKey:@"USAGE_BUNDLE_APP"];

    name = [v6 name];
    v8 = [PSSpecifier preferenceSpecifierNamed:name target:0 set:0 get:0 detail:0 cell:0 edit:0];

    [v8 setProperty:@"PSUsageSizeHeader" forKey:@"headerCellClass"];
    selfCopy = self;
    specifier2 = [(PSListController *)self specifier];
    v10 = [specifier2 propertyForKey:@"TOTAL_SIZE"];
    [v8 setProperty:v10 forKey:@"SIZE"];

    v11 = v4;
    v22 = v8;
    [(NSArray *)v4 insertObject:v8 atIndex:0];
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    obj = [v6 categories];
    v12 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v26;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v26 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v25 + 1) + 8 * i);
          name2 = [v16 name];
          v18 = [PSSpecifier preferenceSpecifierNamed:name2 target:selfCopy set:0 get:sel_sizeForSpecifier_ detail:0 cell:4 edit:0];

          [v18 setProperty:v16 forKey:@"USAGE_BUNDLE_CATEGORY"];
          name3 = [v16 name];
          [v18 setProperty:name3 forKey:@"id"];

          [v18 setProperty:objc_opt_class() forKey:@"cellClass"];
          [(NSArray *)v11 addObject:v18];
        }

        v13 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v13);
    }

    v20 = selfCopy->super.super._specifiers;
    selfCopy->super.super._specifiers = v11;

    specifiers = selfCopy->super.super._specifiers;
  }

  return specifiers;
}

@end