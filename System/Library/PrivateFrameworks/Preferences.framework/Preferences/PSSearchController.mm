@interface PSSearchController
- (BOOL)_setBoolValue:(BOOL)value forIvar:(BOOL *)ivar;
- (BOOL)activateWithInitialText:(id)text animated:(BOOL)animated;
- (Class)rootSearchControllerClassForSearchModel:(id)model;
- (PSListController)listController;
- (PSSearchController)initWithListController:(id)controller;
- (PSSearchControllerDelegate)delegate;
- (id)rootSpecifiersForSearchModel:(id)model;
- (id)searchResultsController:(id)controller iconForSearchEntry:(id)entry;
- (void)_buildSearchUIIfNecessary;
- (void)_reloadSettings:(BOOL)settings;
- (void)_updateListControllerHeaderView:(BOOL)view;
- (void)_updateSearchResultsWithText:(id)text;
- (void)dealloc;
- (void)searchModel:(id)model updatedWithNewResults:(id)results forQuery:(id)query;
- (void)searchResultsController:(id)controller didSelectSearchEntry:(id)entry;
- (void)setSearchBarVisible:(BOOL)visible animated:(BOOL)animated;
- (void)updateSearchResultsForSearchController:(id)controller;
- (void)willPresentSearchController:(id)controller;
@end

@implementation PSSearchController

- (PSSearchController)initWithListController:(id)controller
{
  controllerCopy = controller;
  v18.receiver = self;
  v18.super_class = PSSearchController;
  v5 = [(PSSearchController *)&v18 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_listController, controllerCopy);
    v7 = +[PSSearchModel sharedInstance];
    [v7 addDelegate:v6];

    v8 = +[PSSearchModel sharedInstance];
    [v8 setDataSource:v6];

    v6->_searchEnabled = 1;
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    sf_isInternalInstall = [currentDevice sf_isInternalInstall];

    if (sf_isInternalInstall)
    {
      v16[0] = 0;
      v16[1] = v16;
      v16[2] = 0x3032000000;
      v16[3] = __Block_byref_object_copy__6;
      v16[4] = __Block_byref_object_dispose__6;
      v11 = v6;
      v17 = v11;
      v12 = MEMORY[0x1E69E96A0];
      v13 = MEMORY[0x1E69E96A0];
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = __45__PSSearchController_initWithListController___block_invoke;
      handler[3] = &unk_1E71DD7E8;
      handler[4] = v16;
      notify_register_dispatch("com.apple.preferences.internal.searchSettingsChanged", v11 + 7, v12, handler);

      [v11 _reloadSettings:0];
      _Block_object_dispose(v16, 8);
    }

    [(PSSearchController *)v6 _buildSearchUIIfNecessary];
  }

  return v6;
}

- (void)dealloc
{
  v3 = +[PSSearchModel sharedInstance];
  [v3 removeDelegate:self];

  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  sf_isInternalInstall = [currentDevice sf_isInternalInstall];

  if (sf_isInternalInstall)
  {
    notify_cancel(self->_notifyToken);
  }

  v6.receiver = self;
  v6.super_class = PSSearchController;
  [(PSSearchController *)&v6 dealloc];
}

- (void)_buildSearchUIIfNecessary
{
  if (!self->_resultsController)
  {
    v3 = objc_alloc_init(PSSearchResultsController);
    resultsController = self->_resultsController;
    self->_resultsController = v3;

    [(PSSearchResultsController *)self->_resultsController setModalPresentationStyle:3];
    [(PSSearchResultsController *)self->_resultsController setDelegate:self];
  }

  if (!self->_searchController)
  {
    v5 = [[PSUISearchController alloc] initWithSearchResultsController:self->_resultsController];
    searchController = self->_searchController;
    self->_searchController = &v5->super;

    [(UISearchController *)self->_searchController setDelegate:self];
    [(UISearchController *)self->_searchController setSearchResultsUpdater:self];
    searchBar = [(UISearchController *)self->_searchController searchBar];
    v7 = PS_LocalizedString(@"SEARCH_SETTINGS_PLACEHOLDER");
    [searchBar setPlaceholder:v7];

    [searchBar sizeToFit];
  }
}

- (BOOL)_setBoolValue:(BOOL)value forIvar:(BOOL *)ivar
{
  result = *ivar != value;
  *ivar = value;
  return result;
}

- (void)_reloadSettings:(BOOL)settings
{
  settingsCopy = settings;
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  sf_isInternalInstall = [currentDevice sf_isInternalInstall];

  if (sf_isInternalInstall)
  {
    currentDevice2 = [MEMORY[0x1E69DC938] currentDevice];
    if ([currentDevice2 sf_isInternalInstall])
    {
      keyExistsAndHasValidFormat = 0;
      if (CFPreferencesGetAppBooleanValue(@"PSSearchIsEnabled", @"com.apple.Preferences", &keyExistsAndHasValidFormat))
      {
        v8 = 1;
      }

      else
      {
        v8 = keyExistsAndHasValidFormat == 0;
      }

      v9 = v8;
    }

    else
    {
      v9 = 1;
    }

    if ([(PSSearchController *)self _setBoolValue:v9 forIvar:&self->_searchEnabled])
    {
      [(PSSearchController *)self _updateListControllerHeaderView:0];
      if (settingsCopy && self->_searchEnabled)
      {
        [(PSSearchResultsController *)self->_resultsController reloadData];
      }
    }
  }
}

- (void)_updateListControllerHeaderView:(BOOL)view
{
  if (view || (v4 = objc_loadWeakRetained(&self->_listController), v5 = [v4 isViewLoaded], v4, v5))
  {
    if (self->_searchEnabled)
    {
      searchBar = [(PSSearchController *)self searchBar];
    }

    else
    {
      searchBar = 0;
    }

    WeakRetained = objc_loadWeakRetained(&self->_listController);
    table = [WeakRetained table];
    tableHeaderView = [table tableHeaderView];

    if (tableHeaderView != searchBar)
    {
      v9 = objc_loadWeakRetained(&self->_listController);
      table2 = [v9 table];
      [table2 setTableHeaderView:searchBar];
    }
  }
}

- (void)setSearchBarVisible:(BOOL)visible animated:(BOOL)animated
{
  animatedCopy = animated;
  visibleCopy = visible;
  WeakRetained = objc_loadWeakRetained(&self->_listController);
  table = [WeakRetained table];

  v8 = objc_loadWeakRetained(&self->_listController);
  view = [v8 view];
  safeAreaLayoutGuide = [view safeAreaLayoutGuide];
  [safeAreaLayoutGuide layoutFrame];
  v12 = v11;

  searchBar = [(PSSearchController *)self searchBar];
  [searchBar frame];
  v15 = v14;

  v16 = -v12;
  if (!visibleCopy)
  {
    v16 = v15 - v12;
  }

  [table setContentOffset:animatedCopy animated:{0.0, v16}];
}

- (BOOL)activateWithInitialText:(id)text animated:(BOOL)animated
{
  textCopy = text;
  if (-[PSSearchController isActive](self, "isActive") || ![textCopy length])
  {
    v6 = 0;
  }

  else
  {
    v6 = 1;
    [(PSSearchController *)self setActive:1];
    searchBar = [(PSSearchController *)self searchBar];
    [searchBar becomeFirstResponder];

    searchBar2 = [(PSSearchController *)self searchBar];
    [searchBar2 setText:textCopy];

    [(PSSearchController *)self _updateSearchResultsWithText:textCopy];
  }

  return v6;
}

void __40__PSSearchController_addRootSpecifiers___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[PSSearchModel sharedInstance];
  [v3 addRootSpecifier:v2];
}

void __43__PSSearchController_reloadRootSpecifiers___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[PSSearchModel sharedInstance];
  [v3 reloadRootSpecifier:v2];
}

void __43__PSSearchController_removeRootSpecifiers___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[PSSearchModel sharedInstance];
  [v3 removeRootSpecifier:v2];
}

- (void)searchResultsController:(id)controller didSelectSearchEntry:(id)entry
{
  v15 = *MEMORY[0x1E69E9840];
  entryCopy = entry;
  isRootURL = [entryCopy isRootURL];
  v7 = [entryCopy url];

  if (v7)
  {
    v8 = _PSLoggingFacility();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = @"NO";
      if (isRootURL)
      {
        v9 = @"YES";
      }

      v11 = 138412546;
      v12 = v7;
      v13 = 2112;
      v14 = v9;
      _os_log_impl(&dword_18B008000, v8, OS_LOG_TYPE_DEFAULT, "Opening URL %@, is root: %@", &v11, 0x16u);
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained searchController:self openURL:v7];
  }
}

id __73__PSSearchController_searchResultsController_switchActionForSearchEntry___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    v4 = [v2 target];
    if (v4 && v3[2] && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v5 = [v3 performGetter];

      goto LABEL_8;
    }
  }

  v5 = [PSRootController readPreferenceValue:v3];
LABEL_8:

  return v5;
}

void __73__PSSearchController_searchResultsController_switchActionForSearchEntry___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v4 = a3;
  v5 = v8;
  v6 = v4;
  if (v8)
  {
    v7 = [v8 target];
    if (v7 && v8[3] && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [v8 performSetterWithValue:v6];

      goto LABEL_8;
    }

    v5 = v8;
  }

  [PSRootController setPreferenceValue:v6 specifier:v5];
LABEL_8:
}

- (id)searchResultsController:(id)controller iconForSearchEntry:(id)entry
{
  controllerCopy = controller;
  entryCopy = entry;
  WeakRetained = objc_loadWeakRetained(&self->_listController);
  identifier = [entryCopy identifier];
  v10 = [WeakRetained specifierForID:identifier];

  iconForSearchEntryHandler = self->_iconForSearchEntryHandler;
  if (iconForSearchEntryHandler)
  {
    v12 = iconForSearchEntryHandler[2](iconForSearchEntryHandler, controllerCopy, entryCopy, v10);
    goto LABEL_14;
  }

  v13 = [v10 propertyForKey:@"searchIcon"];
  if ([v13 length])
  {
    v14 = MEMORY[0x1E69DCAB8];
    v15 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    traitCollection = [mainScreen traitCollection];
    v12 = [v14 imageNamed:v13 inBundle:v15 compatibleWithTraitCollection:traitCollection];
  }

  else
  {
    v12 = [v10 propertyForKey:@"iconImage"];
    if (v12)
    {
      goto LABEL_13;
    }

    v18 = [v10 propertyForKey:@"useLazyIcons"];
    bOOLValue = [v18 BOOLValue];

    if (!bOOLValue)
    {
      v12 = 0;
      goto LABEL_13;
    }

    v15 = [v10 propertyForKey:@"appIDForLazyIcon"];
    if (v15)
    {
      v20 = MEMORY[0x1E69DCAB8];
      mainScreen2 = [MEMORY[0x1E69DCEB0] mainScreen];
      [mainScreen2 scale];
      v12 = [v20 _applicationIconImageForBundleIdentifier:v15 format:0 scale:?];

      if (v12)
      {
        v22 = [v10 propertyForKey:@"dontUnloadLazyIcon"];
        bOOLValue2 = [v22 BOOLValue];

        if (bOOLValue2)
        {
          [v10 setProperty:v12 forKey:@"iconImage"];
        }
      }
    }

    else
    {
      v12 = 0;
    }
  }

LABEL_13:
LABEL_14:

  return v12;
}

- (void)updateSearchResultsForSearchController:(id)controller
{
  searchBar = [controller searchBar];
  text = [searchBar text];
  [(PSSearchController *)self _updateSearchResultsWithText:text];
}

- (void)willPresentSearchController:(id)controller
{
  v3 = +[PSSearchModel sharedInstance];
  [v3 preheat];
}

- (void)_updateSearchResultsWithText:(id)text
{
  textCopy = text;
  v4 = +[PSSearchModel sharedInstance];
  [v4 searchForQuery:textCopy];
}

- (void)searchModel:(id)model updatedWithNewResults:(id)results forQuery:(id)query
{
  resultsCopy = results;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __65__PSSearchController_searchModel_updatedWithNewResults_forQuery___block_invoke;
  v8[3] = &unk_1E71DC570;
  v9 = resultsCopy;
  selfCopy = self;
  v7 = resultsCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v8);
}

uint64_t __65__PSSearchController_searchModel_updatedWithNewResults_forQuery___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setTreatSectionEntriesAsRegularEntries:0];
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 16);

  return [v3 setSearchResults:v2];
}

void __51__PSSearchController_searchModelWillBeginIndexing___block_invoke()
{
  v0 = [MEMORY[0x1E69DC668] sharedApplication];
  [v0 setNetworkActivityIndicatorVisible:1];
}

void __51__PSSearchController_searchModelDidFinishIndexing___block_invoke()
{
  v0 = [MEMORY[0x1E69DC668] sharedApplication];
  [v0 setNetworkActivityIndicatorVisible:0];
}

- (id)rootSpecifiersForSearchModel:(id)model
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = [WeakRetained rootSpecifiersForSearchController:self];

  return v5;
}

- (Class)rootSearchControllerClassForSearchModel:(id)model
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_class();

  return v4;
}

- (PSListController)listController
{
  WeakRetained = objc_loadWeakRetained(&self->_listController);

  return WeakRetained;
}

- (PSSearchControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end