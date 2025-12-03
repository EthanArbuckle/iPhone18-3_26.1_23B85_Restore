@interface SBMenuBarHelpMenuProvider
- (SBMenuBarHelpMenuProviderDelegate)delegate;
- (SBMenuBarHelpSearchField)searchFieldContainer;
- (UIMenu)searchTextFieldMenu;
- (UITextField)searchTextField;
- (id)_demoMenuProvider;
- (id)systemHelpMenusForScene:(id)scene;
- (id)userGuideMenuForBundleId:(id)id;
- (void)_searchTextDidChange:(id)change;
@end

@implementation SBMenuBarHelpMenuProvider

- (id)systemHelpMenusForScene:(id)scene
{
  sceneCopy = scene;
  v5 = MEMORY[0x277CBEB18];
  searchTextFieldMenu = [(SBMenuBarHelpMenuProvider *)self searchTextFieldMenu];
  v7 = [v5 arrayWithObject:searchTextFieldMenu];

  clientHandle = [sceneCopy clientHandle];
  bundleIdentifier = [clientHandle bundleIdentifier];
  v10 = [(SBMenuBarHelpMenuProvider *)self userGuideMenuForBundleId:bundleIdentifier];

  if (v10)
  {
    [v7 addObject:v10];
  }

  _demoMenuProvider = [(SBMenuBarHelpMenuProvider *)self _demoMenuProvider];
  v12 = [_demoMenuProvider demoMenuForScene:sceneCopy invokingFromSearch:0];

  if (v12)
  {
    [v7 addObject:v12];
  }

  return v7;
}

- (id)userGuideMenuForBundleId:(id)id
{
  v31[1] = *MEMORY[0x277D85DE8];
  idCopy = id;
  v5 = +[SBApplicationController sharedInstanceIfExists];
  v6 = [v5 applicationWithBundleIdentifier:idCopy];

  if (v6)
  {
    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v26 = [v7 URLForResource:@"iPadUserGuideURLs" withExtension:@"plist"];

    v8 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:v26];
    v9 = [v8 objectForKeyedSubscript:idCopy];
    if (v9)
    {
      v10 = MEMORY[0x277D717E8];
      mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
      bundleIdentifier = [mainBundle bundleIdentifier];
      v13 = [v10 privateURLWithBookIdentifier:0 topicIdentifier:v9 version:0 referrer:bundleIdentifier];

      if (v13)
      {
        objc_initWeak(&location, self);
        v14 = MEMORY[0x277D750C8];
        v15 = MEMORY[0x277CCACA8];
        mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
        v16 = [mainBundle2 localizedStringForKey:@"HELP_MENU_TIPS" value:&stru_283094718 table:@"SpringBoard"];
        displayName = [v6 displayName];
        v18 = [v15 stringWithFormat:v16, displayName];
        v19 = [MEMORY[0x277D755B8] _systemImageNamed:@"tips"];
        v27[0] = MEMORY[0x277D85DD0];
        v27[1] = 3221225472;
        v27[2] = __54__SBMenuBarHelpMenuProvider_userGuideMenuForBundleId___block_invoke;
        v27[3] = &unk_2783BC8A0;
        objc_copyWeak(&v29, &location);
        v28 = v13;
        v20 = [v14 actionWithTitle:v18 image:v19 identifier:0 handler:v27];

        v21 = MEMORY[0x277D75710];
        v31[0] = v20;
        v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:1];
        v23 = [v21 menuWithTitle:&stru_283094718 image:0 identifier:@"com.apple.springboard.menubar.user-guide" options:1 children:v22];

        objc_destroyWeak(&v29);
        objc_destroyWeak(&location);
      }

      else
      {
        v23 = 0;
      }
    }

    else
    {
      v23 = 0;
    }
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

void __54__SBMenuBarHelpMenuProvider_userGuideMenuForBundleId___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained delegate];
  [v2 menuBarHelpMenuProvider:WeakRetained handleOpenApplicationTipWithURL:*(a1 + 32)];
}

- (SBMenuBarHelpSearchField)searchFieldContainer
{
  searchFieldContainer = self->_searchFieldContainer;
  if (!searchFieldContainer)
  {
    v4 = objc_alloc_init(SBMenuBarHelpSearchField);
    v5 = self->_searchFieldContainer;
    self->_searchFieldContainer = v4;

    searchTextField = [(SBMenuBarHelpSearchField *)self->_searchFieldContainer searchTextField];
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v8 = [mainBundle localizedStringForKey:@"HELP_MENU_SEARCH_PLACEHOLDER" value:&stru_283094718 table:@"SpringBoard"];
    [searchTextField setPlaceholder:v8];

    [searchTextField setDelegate:self];
    [searchTextField _setSupportsKeyboardNavigationForSuggestions:1];
    [searchTextField setFocusGroupIdentifier:0];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:self selector:sel__searchTextDidChange_ name:*MEMORY[0x277D770B0] object:searchTextField];

    searchFieldContainer = self->_searchFieldContainer;
  }

  return searchFieldContainer;
}

- (UITextField)searchTextField
{
  searchFieldContainer = [(SBMenuBarHelpMenuProvider *)self searchFieldContainer];
  searchTextField = [searchFieldContainer searchTextField];

  return searchTextField;
}

- (UIMenu)searchTextFieldMenu
{
  v15[1] = *MEMORY[0x277D85DE8];
  searchTextFieldMenu = self->_searchTextFieldMenu;
  if (!searchTextFieldMenu)
  {
    searchFieldContainer = [(SBMenuBarHelpMenuProvider *)self searchFieldContainer];
    v5 = MEMORY[0x277D753D8];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __48__SBMenuBarHelpMenuProvider_searchTextFieldMenu__block_invoke;
    v13[3] = &unk_2783BC8C8;
    v14 = searchFieldContainer;
    v6 = searchFieldContainer;
    v7 = [v5 elementWithViewProvider:v13];
    v8 = MEMORY[0x277D75710];
    v15[0] = v7;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
    v10 = [v8 menuWithTitle:&stru_283094718 image:0 identifier:@"com.apple.springboard.menubar.search-textfield" options:1 children:v9];
    v11 = self->_searchTextFieldMenu;
    self->_searchTextFieldMenu = v10;

    searchTextFieldMenu = self->_searchTextFieldMenu;
  }

  return searchTextFieldMenu;
}

- (void)_searchTextDidChange:(id)change
{
  v30[3] = *MEMORY[0x277D85DE8];
  object = [change object];
  searchTextField = [(SBMenuBarHelpMenuProvider *)self searchTextField];

  if (object == searchTextField)
  {
    searchTextField2 = [(SBMenuBarHelpMenuProvider *)self searchTextField];
    text = [searchTextField2 text];
    lowercaseString = [text lowercaseString];

    if (!self->_searchTextFieldUsedOnce && [lowercaseString length])
    {
      self->_searchTextFieldUsedOnce = 1;
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained noteSearchUsedInMenuBarHelpMenuProvider:self];
    }

    searchableMenu = [(SBMenuBarHelpMenuProvider *)self searchableMenu];
    v30[0] = objc_opt_class();
    v30[1] = objc_opt_class();
    v30[2] = objc_opt_class();
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:3];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __50__SBMenuBarHelpMenuProvider__searchTextDidChange___block_invoke;
    v28[3] = &unk_2783A8B78;
    v28[4] = lowercaseString;
    v12 = [searchableMenu sb_searchResultsExcludingClasses:v11 passingTest:v28];

    if (![v12 count])
    {
      v13 = MEMORY[0x277D750C8];
      mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
      v15 = [mainBundle localizedStringForKey:@"NO_SEARCH_RESULTS" value:&stru_283094718 table:@"SpringBoard"];
      v16 = [v13 actionWithTitle:v15 image:0 identifier:0 handler:&__block_literal_global_257];

      [v16 setAttributes:1];
      v29 = v16;
      v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v29 count:1];

      v12 = v17;
    }

    _demoMenuProvider = [(SBMenuBarHelpMenuProvider *)self _demoMenuProvider];
    delegate = [(SBMenuBarHelpMenuProvider *)self delegate];
    v20 = [delegate menuBarHelpMenuProviderTargetScene:self];
    v21 = [_demoMenuProvider demoMenuForScene:v20 invokingFromSearch:1];

    if (v21)
    {
      v22 = [v12 arrayByAddingObject:v21];

      v12 = v22;
    }

    v23 = [MEMORY[0x277D75710] menuWithTitle:&stru_283094718 image:0 identifier:@"com.apple.springboard.menubar.search-results" options:1 children:v12];
    if ([lowercaseString length] || (-[SBMenuBarHelpMenuProvider emptySearchMenuToRestore](self, "emptySearchMenuToRestore"), v24 = objc_claimAutoreleasedReturnValue(), v24, v24))
    {
      v25 = MEMORY[0x277D75D18];
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __50__SBMenuBarHelpMenuProvider__searchTextDidChange___block_invoke_3;
      v26[3] = &unk_2783A8ED8;
      v26[4] = self;
      v26[5] = lowercaseString;
      v27 = v23;
      [v25 performWithoutAnimation:v26];
    }
  }
}

uint64_t __50__SBMenuBarHelpMenuProvider__searchTextDidChange___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 lowercaseString];
  v4 = [v3 containsString:*(a1 + 32)];

  return v4;
}

void __50__SBMenuBarHelpMenuProvider__searchTextDidChange___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) contextMenuInteraction];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __50__SBMenuBarHelpMenuProvider__searchTextDidChange___block_invoke_4;
  v3[3] = &unk_2783BC910;
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  [v2 updateVisibleMenuWithBlock:v3];
}

id __50__SBMenuBarHelpMenuProvider__searchTextDidChange___block_invoke_4(uint64_t a1, void *a2)
{
  v12[2] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) emptySearchMenuToRestore];

  if (!v4)
  {
    [*(a1 + 32) setEmptySearchMenuToRestore:v3];
  }

  v5 = [*(a1 + 40) length];
  v6 = *(a1 + 32);
  if (v5)
  {
    v7 = [v6 searchTextFieldMenu];
    v8 = *(a1 + 48);
    v12[0] = v7;
    v12[1] = v8;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];
    v10 = [v3 menuByReplacingChildren:v9];
  }

  else
  {
    v10 = [v6 emptySearchMenuToRestore];
  }

  return v10;
}

- (id)_demoMenuProvider
{
  delegate = [(SBMenuBarHelpMenuProvider *)self delegate];
  v4 = [delegate menuBarHelpMenuProviderDemoMenuProvider:self];

  return v4;
}

- (SBMenuBarHelpMenuProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end