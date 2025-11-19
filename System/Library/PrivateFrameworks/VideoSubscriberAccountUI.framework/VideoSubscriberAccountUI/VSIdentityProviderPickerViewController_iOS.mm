@interface VSIdentityProviderPickerViewController_iOS
- (BOOL)_shouldInsetListView;
- (UISearchController)searchController;
- (UITableViewHeaderFooterView)firstSectionHeaderView;
- (VSIdentityProviderPickerViewControllerDelegate)delegate;
- (VSIdentityProviderPickerViewController_iOS)initWithStyle:(int64_t)a3;
- (id)_createTableHeaderContentConfiguration:(id)a3;
- (id)_titleForTableHeaderView;
- (id)_titleForViewController;
- (id)filteredTableView;
- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (id)titleForTableFooterView;
- (void)_cancelButtonPressed:(id)a3;
- (void)_didPickAdditionalIdentityProviders;
- (void)_didPickIdentityProvider:(id)a3;
- (void)_didPickStorefront:(id)a3;
- (void)_performSelectionForIdentityProvider:(id)a3;
- (void)_showAboutPrivacy:(id)a3;
- (void)_showPrivacySheet:(id)a3;
- (void)_updateTableHeaderTitle;
- (void)handleDestination:(id)a3 completion:(id)a4;
- (void)handleSignInActionWithCompletion:(id)a3;
- (void)setCancellationAllowed:(BOOL)a3;
- (void)setRequestedStorefrontCountryCode:(id)a3 defaultToDeveloperProviders:(BOOL)a4;
- (void)setRequestingAppDisplayName:(id)a3;
- (void)setResourceTitle:(id)a3;
- (void)setSearchString:(id)a3;
- (void)setSectionContentInset:(UIEdgeInsets)a3;
- (void)showPrivacySheet:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableViewDidFinishReload:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)willMoveToParentViewController:(id)a3;
@end

@implementation VSIdentityProviderPickerViewController_iOS

- (VSIdentityProviderPickerViewController_iOS)initWithStyle:(int64_t)a3
{
  v50[1] = *MEMORY[0x277D85DE8];
  v49.receiver = self;
  v49.super_class = VSIdentityProviderPickerViewController_iOS;
  v3 = [(VSIdentityProviderPickerViewController_iOS *)&v49 initWithStyle:a3];
  v4 = v3;
  if (v3)
  {
    identityProviders = v3->_identityProviders;
    v6 = MEMORY[0x277CBEBF8];
    v3->_identityProviders = MEMORY[0x277CBEBF8];

    identityProvidersToDisplay = v4->_identityProvidersToDisplay;
    v4->_identityProvidersToDisplay = v6;

    searchString = v4->_searchString;
    v4->_searchString = &stru_2880B8BB0;

    v9 = [[VSFontCenter alloc] initWithTraitEnvironment:v4];
    fontCenter = v4->_fontCenter;
    v4->_fontCenter = v9;

    v11 = objc_alloc_init(VSOnboardingInfoCenter);
    onboardingInfoCenter = v4->_onboardingInfoCenter;
    v4->_onboardingInfoCenter = v11;

    v13 = objc_alloc_init(VSIdentityProviderFilter);
    filter = v4->_filter;
    v4->_filter = v13;

    v15 = objc_alloc_init(VSStorefrontFilter);
    storefrontFilter = v4->_storefrontFilter;
    v4->_storefrontFilter = v15;

    v17 = objc_alloc_init(VSSearchBarDelegate);
    searchBarDelegate = v4->_searchBarDelegate;
    v4->_searchBarDelegate = v17;

    v19 = v4->_searchBarDelegate;
    v20 = VSMainConcurrencyBindingOptions();
    [(VSIdentityProviderPickerViewController_iOS *)v4 vs_bind:@"searchString" toObject:v19 withKeyPath:@"text" options:v20];

    v21 = objc_alloc_init(VSIdentityProviderTableViewDataSource);
    unfilteredDataSource = v4->_unfilteredDataSource;
    v4->_unfilteredDataSource = v21;

    v23 = objc_alloc_init(VSIdentityProviderTableViewDataSource);
    filteredDataSource = v4->_filteredDataSource;
    v4->_filteredDataSource = v23;

    v25 = v4->_unfilteredDataSource;
    v26 = v4->_filter;
    v27 = VSMainConcurrencyBindingOptions();
    [(VSIdentityProviderTableViewDataSource *)v25 vs_bind:@"identityProviders" toObject:v26 withKeyPath:@"filteredIdentityProviders" options:v27];

    v28 = v4->_unfilteredDataSource;
    v29 = VSMainConcurrencyBindingOptions();
    [(VSIdentityProviderTableViewDataSource *)v28 vs_bind:@"additionalProvidersMode" toObject:v4 withKeyPath:@"additionalProvidersMode" options:v29];

    v30 = v4->_unfilteredDataSource;
    v31 = v4->_storefrontFilter;
    v32 = VSMainConcurrencyBindingOptions();
    [(VSIdentityProviderTableViewDataSource *)v30 vs_bind:@"tvProviderSupportedStorefronts" toObject:v31 withKeyPath:@"filteredStorefronts" options:v32];

    v33 = v4->_filter;
    v34 = VSMainConcurrencyBindingOptions();
    [(VSIdentityProviderFilter *)v33 vs_bind:@"allIdentityProviders" toObject:v4 withKeyPath:@"identityProvidersToDisplay" options:v34];

    v35 = v4->_filteredDataSource;
    v36 = v4->_filter;
    v37 = VSMainConcurrencyBindingOptions();
    [(VSIdentityProviderTableViewDataSource *)v35 vs_bind:@"identityProviders" toObject:v36 withKeyPath:@"filteredIdentityProviders" options:v37];

    v38 = v4->_filteredDataSource;
    v39 = VSMainConcurrencyBindingOptions();
    [(VSIdentityProviderTableViewDataSource *)v38 vs_bind:@"additionalProvidersMode" toObject:v4 withKeyPath:@"additionalProvidersMode" options:v39];

    v40 = v4->_storefrontFilter;
    v41 = VSMainConcurrencyBindingOptions();
    [(VSStorefrontFilter *)v40 vs_bind:@"storefronts" toObject:v4 withKeyPath:@"tvProviderSupportedStorefronts" options:v41];

    v42 = v4->_filteredDataSource;
    v43 = v4->_storefrontFilter;
    v44 = VSMainConcurrencyBindingOptions();
    [(VSIdentityProviderTableViewDataSource *)v42 vs_bind:@"tvProviderSupportedStorefronts" toObject:v43 withKeyPath:@"filteredStorefronts" options:v44];

    [(VSIdentityProviderPickerViewController_iOS *)v4 setDefinesPresentationContext:1];
    v50[0] = objc_opt_class();
    v45 = [MEMORY[0x277CBEA60] arrayWithObjects:v50 count:1];
    v46 = [(VSIdentityProviderPickerViewController_iOS *)v4 registerForTraitChanges:v45 withHandler:&__block_literal_global_15];
  }

  v47 = *MEMORY[0x277D85DE8];
  return v4;
}

- (void)setResourceTitle:(id)a3
{
  v4 = [a3 copy];
  resourceTitle = self->_resourceTitle;
  self->_resourceTitle = v4;

  [(VSIdentityProviderPickerViewController_iOS *)self _updateTableHeaderTitle];
}

- (void)setRequestingAppDisplayName:(id)a3
{
  v4 = [a3 copy];
  requestingAppDisplayName = self->_requestingAppDisplayName;
  self->_requestingAppDisplayName = v4;

  [(VSIdentityProviderPickerViewController_iOS *)self _updateTableHeaderTitle];
}

- (void)setSearchString:(id)a3
{
  v6 = a3;
  if (![(NSString *)self->_searchString isEqualToString:?])
  {
    objc_storeStrong(&self->_searchString, a3);
    if ([(VSIdentityProviderPickerViewController_iOS *)self additionalProvidersMode]== 6)
    {
      [(VSIdentityProviderPickerViewController_iOS *)self storefrontFilter];
    }

    else
    {
      [(VSIdentityProviderPickerViewController_iOS *)self filter];
    }
    v5 = ;
    [v5 setSearchQuery:v6];
  }
}

- (void)setRequestedStorefrontCountryCode:(id)a3 defaultToDeveloperProviders:(BOOL)a4
{
  v4 = a4;
  v23 = a3;
  objc_storeStrong(&self->_requestedStorefrontCountryCode, a3);
  v7 = [(VSIdentityProviderPickerViewController_iOS *)self additionalProvidersMode];
  if (!v23 && v7 - 7 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v8 = [(VSIdentityProviderPickerViewController_iOS *)self identityProviders];
    [(VSIdentityProviderPickerViewController_iOS *)self setIdentityProvidersToDisplay:v8];
    goto LABEL_19;
  }

  v9 = [(VSIdentityProviderPickerViewController_iOS *)self providersByStorefrontCountryCode];

  if (!v9)
  {
    v10 = objc_alloc_init(VSIdentityProviderStorefrontParser);
    v11 = [(VSIdentityProviderPickerViewController_iOS *)self identityProviders];
    [(VSIdentityProviderStorefrontParser *)v10 setAllIdentityProviders:v11];

    v12 = [(VSIdentityProviderPickerViewController_iOS *)self allStorefronts];
    if (v12)
    {
      [(VSIdentityProviderStorefrontParser *)v10 setAllStorefronts:v12 withCurrentStorefrontCode:v23];
    }

    v13 = [(VSIdentityProviderStorefrontParser *)v10 identityProvidersByStorefront];
    v14 = [(VSIdentityProviderStorefrontParser *)v10 tvProviderSupportedStorefronts];
    [(VSIdentityProviderPickerViewController_iOS *)self setProvidersByStorefrontCountryCode:v13];
    [(VSIdentityProviderPickerViewController_iOS *)self setTvProviderSupportedStorefronts:v14];
  }

  v15 = [(VSIdentityProviderPickerViewController_iOS *)self providersByStorefrontCountryCode];
  if (!v23)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The requestedStorefrontCountryCode parameter must not be nil."];
  }

  v8 = [v15 valueForKey:?];

  v16 = [(VSIdentityProviderPickerViewController_iOS *)self providersByStorefrontCountryCode];
  v17 = [v16 valueForKey:@"__"];

  if (v4 && v17 && ([v17 allIdentityProviders], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "count"), v18, v19))
  {
    v20 = [v17 allIdentityProviders];
  }

  else
  {
    if (!v8)
    {
      v22 = 6;
      goto LABEL_18;
    }

    v21 = v8;
    [v21 featureProvidersInCurrentStorefront];
    v20 = [v21 allIdentityProviders];
  }

  [(VSIdentityProviderPickerViewController_iOS *)self setIdentityProvidersToDisplay:v20];

  v22 = 5;
LABEL_18:
  [(VSIdentityProviderPickerViewController_iOS *)self setAdditionalProvidersMode:v22];

LABEL_19:
}

- (UITableViewHeaderFooterView)firstSectionHeaderView
{
  firstSectionHeaderView = self->_firstSectionHeaderView;
  if (!firstSectionHeaderView)
  {
    v4 = [(VSIdentityProviderPickerViewController_iOS *)self _titleForTableHeaderView];
    if (v4)
    {
      v5 = objc_alloc_init(MEMORY[0x277D75B70]);
      v6 = [(VSIdentityProviderPickerViewController_iOS *)self _createTableHeaderContentConfiguration:v4];
      [(UITableViewHeaderFooterView *)v5 setContentConfiguration:v6];
    }

    else
    {
      if ([(VSIdentityProviderPickerViewController_iOS *)self additionalProvidersMode]== 3)
      {
LABEL_7:

        firstSectionHeaderView = self->_firstSectionHeaderView;
        goto LABEL_8;
      }

      v5 = objc_alloc_init(MEMORY[0x277D75B70]);
    }

    v7 = self->_firstSectionHeaderView;
    self->_firstSectionHeaderView = v5;

    goto LABEL_7;
  }

LABEL_8:

  return firstSectionHeaderView;
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  v7 = [(VSIdentityProviderPickerViewController_iOS *)self tableView];

  v8 = 0;
  if (!a4 && v7 == v6)
  {
    v8 = [(VSIdentityProviderPickerViewController_iOS *)self firstSectionHeaderView];
  }

  return v8;
}

- (id)_createTableHeaderContentConfiguration:(id)a3
{
  v3 = MEMORY[0x277D756E0];
  v4 = a3;
  v5 = [v3 headerConfiguration];
  [v5 setSecondaryText:v4];

  return v5;
}

- (void)_updateTableHeaderTitle
{
  v3 = [(VSIdentityProviderPickerViewController_iOS *)self _titleForTableHeaderView];
  if (v3)
  {
    v9 = v3;
    v4 = [(VSIdentityProviderPickerViewController_iOS *)self firstSectionHeaderView];
    v5 = [(VSIdentityProviderPickerViewController_iOS *)self _createTableHeaderContentConfiguration:v9];
    [v4 setContentConfiguration:v5];

    v6 = [(VSIdentityProviderPickerViewController_iOS *)self parentViewController];
    v7 = [(VSIdentityProviderPickerViewController_iOS *)self _titleForViewController];
    [v6 setTitle:v7];

    v8 = [(VSIdentityProviderPickerViewController_iOS *)self _titleForViewController];
    [(VSIdentityProviderPickerViewController_iOS *)self setTitle:v8];

    v3 = v9;
  }
}

- (id)_titleForTableHeaderView
{
  if ([(VSIdentityProviderPickerViewController_iOS *)self additionalProvidersMode]== 3)
  {
    v3 = 0;
    goto LABEL_9;
  }

  v4 = [(VSIdentityProviderPickerViewController_iOS *)self resourceTitle];
  if ([v4 length])
  {
    v5 = [MEMORY[0x277CCA8D8] vs_frameworkBundle];
    v6 = [v5 localizedStringForKey:@"IDENTITY_PROVIDER_PICKER_APP_MESSAGE_FORMAT" value:0 table:0];

    v7 = MEMORY[0x277CCACA8];
    v8 = [(VSIdentityProviderPickerViewController_iOS *)self requestingAppDisplayName];
    [v7 stringWithFormat:v6, v4, v8];
  }

  else
  {
    v6 = [(VSIdentityProviderPickerViewController_iOS *)self requestingAppDisplayName];
    if (!v6)
    {
      v12 = [(VSIdentityProviderPickerViewController_iOS *)self additionalProvidersMode];
      v13 = [MEMORY[0x277CCA8D8] vs_frameworkBundle];
      v8 = v13;
      if (v12 == 6)
      {
        v14 = @"REGIONS_PICKER_SETTINGS_MESSAGE_TV";
      }

      else
      {
        v14 = @"IDENTITY_PROVIDER_PICKER_HEADER";
      }

      v10 = [v13 localizedStringForKey:v14 value:0 table:0];
      goto LABEL_8;
    }

    v9 = [MEMORY[0x277CCA8D8] vs_frameworkBundle];
    v8 = [v9 localizedStringForKey:@"IDENTITY_PROVIDER_PICKER_APP_MESSAGE_NO_RESOURCE_TITLE_FORMAT" value:0 table:0];

    [MEMORY[0x277CCACA8] stringWithFormat:v8, v6, v15];
  }
  v10 = ;
LABEL_8:
  v3 = v10;

LABEL_9:

  return v3;
}

- (id)titleForTableFooterView
{
  v2 = [(VSIdentityProviderPickerViewController_iOS *)self additionalProvidersMode];
  v3 = 0;
  if (v2 <= 6 && ((1 << v2) & 0x64) != 0)
  {
    v4 = [MEMORY[0x277CCA8D8] vs_frameworkBundle];
    v3 = [v4 localizedStringForKey:@"IDENTITY_PROVIDER_PICKER_SETTINGS_FOOTER" value:0 table:0];
  }

  return v3;
}

- (id)_titleForViewController
{
  v2 = [(VSIdentityProviderPickerViewController_iOS *)self additionalProvidersMode];
  if (v2 > 6)
  {
    v5 = 0;
  }

  else
  {
    v3 = off_279E1A4B8[v2];
    v4 = [MEMORY[0x277CCA8D8] vs_frameworkBundle];
    v5 = [v4 localizedStringForKey:v3 value:0 table:0];
  }

  return v5;
}

- (void)_didPickIdentityProvider:(id)a3
{
  v5 = a3;
  v4 = [(VSIdentityProviderPickerViewController_iOS *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 identityProviderPickerViewController:self didPickIdentityProvider:v5];
  }
}

- (void)_didPickAdditionalIdentityProviders
{
  v5 = [(VSIdentityProviderPickerViewController_iOS *)self delegate];
  v3 = [(VSIdentityProviderPickerViewController_iOS *)self additionalProvidersMode];
  if ((objc_opt_respondsToSelector() & 1) != 0 && v3 - 7 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    [v5 identityProviderPickerViewControllerDidPickAdditionalIdentityProviders:self];
  }

  else
  {
    v4 = [(VSIdentityProviderPickerViewController_iOS *)self searchBarDelegate];
    [v4 clearText];

    [(VSIdentityProviderPickerViewController_iOS *)self setAdditionalProvidersMode:6];
    [(VSIdentityProviderPickerViewController_iOS *)self _updateTableHeaderTitle];
  }
}

- (void)_didPickStorefront:(id)a3
{
  v4 = a3;
  v5 = [(VSIdentityProviderPickerViewController_iOS *)self searchBarDelegate];
  [v5 clearText];

  v6 = [v4 identitifer];

  [(VSIdentityProviderPickerViewController_iOS *)self setRequestedStorefrontCountryCode:v6];

  [(VSIdentityProviderPickerViewController_iOS *)self _updateTableHeaderTitle];
}

- (void)_cancelButtonPressed:(id)a3
{
  v4 = [(VSIdentityProviderPickerViewController_iOS *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 identityProviderPickerViewControllerDidCancel:self];
  }
}

- (void)_showAboutPrivacy:(id)a3
{
  v4 = [(VSIdentityProviderPickerViewController_iOS *)self onboardingInfoCenter];
  [v4 presentDetailsFromViewController:self];
}

- (void)_performSelectionForIdentityProvider:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    [(VSIdentityProviderPickerViewController_iOS *)self _didPickIdentityProvider:v4];
  }

  else
  {
    [(VSIdentityProviderPickerViewController_iOS *)self _didPickAdditionalIdentityProviders];
  }
}

- (void)setCancellationAllowed:(BOOL)a3
{
  if (self->_cancellationAllowed != a3)
  {
    self->_cancellationAllowed = a3;
    if (a3)
    {
      v6 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel__cancelButtonPressed_];
    }

    else
    {
      v6 = 0;
    }

    v5 = [(VSIdentityProviderPickerViewController_iOS *)self navigationItem];
    [v5 setLeftBarButtonItem:v6];
  }
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v14 = a4;
  v6 = [a3 dataSource];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v7 = MEMORY[0x277CBEAD8];
    v8 = *MEMORY[0x277CBE660];
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    [v7 raise:v8 format:{@"Unexpectedly, tableViewDataSource was %@, instead of VSIdentityProviderTableViewDataSource.", v10}];
  }

  v11 = v6;
  if ([v11 additionalProvidersMode] == 6)
  {
    v12 = [v11 storefrontAtIndexPath:v14];
    [(VSIdentityProviderPickerViewController_iOS *)self _didPickStorefront:v12];
  }

  else
  {
    v12 = [v11 identityProviderForRowAtIndexPath:v14];
    v13 = [(VSIdentityProviderPickerViewController_iOS *)self searchController];
    if ([v13 isActive])
    {
      [(VSIdentityProviderPickerViewController_iOS *)self setSelectedIdentityProvider:v12];
      [(VSIdentityProviderPickerViewController_iOS *)self dismissSearchControllerAnimated:1 completion:0];
    }

    else
    {
      [(VSIdentityProviderPickerViewController_iOS *)self _performSelectionForIdentityProvider:v12];
    }
  }
}

- (void)tableViewDidFinishReload:(id)a3
{
  v7 = a3;
  [v7 contentOffset];
  v4 = v3;
  v5 = [v7 tableHeaderView];
  v6 = v5;
  if (v5)
  {
    [v5 bounds];
    [v7 convertRect:v6 fromView:?];
    [v7 scrollRectToVisible:0 animated:?];
  }

  else
  {
    if (v4 <= 0.0)
    {
      goto LABEL_6;
    }

    [v7 vs_scrollToTopAnimated:0];
  }

  [v7 setNeedsFocusUpdate];
LABEL_6:
}

- (UISearchController)searchController
{
  [(VSIdentityProviderPickerViewController_iOS *)self loadViewIfNeeded];
  searchController = self->_searchController;

  return searchController;
}

- (void)viewDidLoad
{
  v35.receiver = self;
  v35.super_class = VSIdentityProviderPickerViewController_iOS;
  [(VSIdentityProviderPickerViewController_iOS *)&v35 viewDidLoad];
  v3 = [(VSIdentityProviderPickerViewController_iOS *)self tableView];
  v4 = [MEMORY[0x277D75348] clearColor];
  [v3 setSectionIndexBackgroundColor:v4];

  v5 = [(VSIdentityProviderPickerViewController_iOS *)self unfilteredDataSource];
  [v5 setTableView:v3];
  v6 = [objc_alloc(MEMORY[0x277D75B58]) initWithStyle:{objc_msgSend(v3, "style")}];
  v7 = [v6 tableView];
  v8 = [MEMORY[0x277D75348] clearColor];
  [v7 setSectionIndexBackgroundColor:v8];

  [v7 setDelegate:self];
  v9 = [(VSIdentityProviderPickerViewController_iOS *)self filteredDataSource];
  [v9 setTableView:v7];
  v32 = v6;
  v10 = [objc_alloc(MEMORY[0x277D759F0]) initWithSearchResultsController:v6];
  [v10 setHidesNavigationBarDuringPresentation:0];
  [(VSIdentityProviderPickerViewController_iOS *)self setSearchController:v10];
  v11 = [v10 searchBar];
  v12 = [(VSIdentityProviderPickerViewController_iOS *)self searchBarDelegate];
  v31 = v11;
  [v12 setSearchBar:v11];

  v13 = [(VSIdentityProviderPickerViewController_iOS *)self additionalProvidersMode];
  v14 = [MEMORY[0x277CBEB18] array];
  v15 = [(VSIdentityProviderPickerViewController_iOS *)self titleForTableFooterView];
  if (v15)
  {
    [v14 addObject:v15];
  }

  if (v13 == 3)
  {
    v16 = 0;
  }

  else
  {
    v17 = [(VSIdentityProviderPickerViewController_iOS *)self onboardingInfoCenter];
    v18 = [v17 tvProviderPrivacyButtonViewController];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v29 = v9;
      v19 = v5;
      v20 = [v18 flow];
      v16 = [v20 localizedButtonTitle];

      if (v16)
      {
        [v14 addObject:v16];
      }

      v5 = v19;
      v9 = v29;
    }

    else
    {
      v16 = 0;
    }
  }

  v21 = [MEMORY[0x277CCAB68] string];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __57__VSIdentityProviderPickerViewController_iOS_viewDidLoad__block_invoke;
  v33[3] = &unk_279E1A498;
  v22 = v21;
  v34 = v22;
  [v14 enumerateObjectsUsingBlock:v33];
  if ([v22 length])
  {
    v28 = v5;
    v30 = v9;
    v23 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"footer"];
    [v23 setProperty:v22 forKey:*MEMORY[0x277D3FF70]];
    if (v16)
    {
      v36.location = [v22 rangeOfString:v16];
      v24 = NSStringFromRange(v36);
      [v23 setProperty:v24 forKey:*MEMORY[0x277D3FF58]];

      v25 = NSStringFromSelector(sel_showPrivacySheet_);
      [v23 setProperty:v25 forKey:*MEMORY[0x277D3FF50]];

      v26 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:self];
      [v23 setProperty:v26 forKey:*MEMORY[0x277D3FF68]];
    }

    v27 = [objc_alloc(MEMORY[0x277D3FA10]) initWithSpecifier:v23];
    [v27 setPreservesSuperviewLayoutMargins:1];
    [(VSIdentityProviderPickerViewController_iOS *)self setFooterView:v27];

    v5 = v28;
    v9 = v30;
  }
}

- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4
{
  if ([a3 numberOfSections] - 1 == a4)
  {
    v5 = [(VSIdentityProviderPickerViewController_iOS *)self footerView];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)filteredTableView
{
  v2 = [(VSIdentityProviderPickerViewController_iOS *)self filteredDataSource];
  v3 = [v2 tableView];

  return v3;
}

- (void)setSectionContentInset:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  v8 = [(VSIdentityProviderPickerViewController_iOS *)self tableView];
  [v8 _setSectionContentInset:{top, left, bottom, right}];

  v9 = [(VSIdentityProviderPickerViewController_iOS *)self filteredTableView];
  [v9 _setSectionContentInset:{top, left, bottom, right}];
}

- (void)willMoveToParentViewController:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v5 = [(VSIdentityProviderPickerViewController_iOS *)self presentedViewController];

    if (v5)
    {
      [(VSIdentityProviderPickerViewController_iOS *)self dismissViewControllerAnimated:0 completion:0];
    }
  }

  v6.receiver = self;
  v6.super_class = VSIdentityProviderPickerViewController_iOS;
  [(VSIdentityProviderPickerViewController_iOS *)&v6 willMoveToParentViewController:v4];
}

- (void)viewDidLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = VSIdentityProviderPickerViewController_iOS;
  [(VSIdentityProviderPickerViewController_iOS *)&v5 viewDidLayoutSubviews];
  [(VSIdentityProviderPickerViewController_iOS *)self setLayoutMarginsFollowReadableWidth:[(VSIdentityProviderPickerViewController_iOS *)self _shouldInsetListView]];
  v3 = [(VSIdentityProviderPickerViewController_iOS *)self tableView];
  [v3 _setSectionContentInsetFollowsLayoutMargins:{-[VSIdentityProviderPickerViewController_iOS _shouldInsetListView](self, "_shouldInsetListView")}];

  v4 = [(VSIdentityProviderPickerViewController_iOS *)self filteredTableView];
  [v4 _setSectionContentInsetFollowsLayoutMargins:{-[VSIdentityProviderPickerViewController_iOS _shouldInsetListView](self, "_shouldInsetListView")}];
}

- (BOOL)_shouldInsetListView
{
  v2 = [(VSIdentityProviderPickerViewController_iOS *)self view];
  v3 = [MEMORY[0x277D759A0] mainScreen];
  v4 = [v3 traitCollection];

  if ([v4 userInterfaceIdiom] == 1)
  {
    v5 = 1;
  }

  else
  {
    if (!_os_feature_enabled_impl())
    {
      goto LABEL_11;
    }

    [v2 frame];
    Width = CGRectGetWidth(v13);
    v7 = [MEMORY[0x277CBEB98] setWithObjects:{*MEMORY[0x277D76820], *MEMORY[0x277D76818], 0}];
    v8 = [v4 preferredContentSizeCategory];
    v9 = [v7 containsObject:v8];

    v10 = [v4 horizontalSizeClass];
    if (Width <= 320.0 && (v9 & 1) != 0)
    {
      goto LABEL_11;
    }

    v11 = v10 != 2 || Width <= 320.0;
    v5 = 1;
    if (v11 || (v9 & 1) == 0)
    {
      if ((Width <= 320.0) | v9 & 1)
      {
LABEL_11:
        v5 = 0;
      }
    }
  }

  return v5;
}

- (void)showPrivacySheet:(id)a3
{
  v4 = a3;
  v5 = [(VSIdentityProviderPickerViewController_iOS *)self presentedViewController];

  if (v5)
  {
    v6 = [(VSIdentityProviderPickerViewController_iOS *)self presentedViewController];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __63__VSIdentityProviderPickerViewController_iOS_showPrivacySheet___block_invoke;
    v7[3] = &unk_279E19848;
    v7[4] = self;
    v8 = v4;
    [v6 dismissViewControllerAnimated:1 completion:v7];
  }

  else
  {
    [(VSIdentityProviderPickerViewController_iOS *)self _showPrivacySheet:v4];
  }
}

- (void)_showPrivacySheet:(id)a3
{
  v4 = [MEMORY[0x277D37678] presenterForPrivacySplashWithIdentifier:0x2880B9F90];
  [v4 setPresentingViewController:self];
  [v4 present];
}

- (void)handleDestination:(id)a3 completion:(id)a4
{
  v11 = a3;
  v6 = a4;
  if ([v11 isEqual:@"signIn"])
  {
    [(VSIdentityProviderPickerViewController_iOS *)self handleSignInActionWithCompletion:v6];
  }

  else
  {
    v7 = MEMORY[0x277CCACA8];
    v8 = [(VSIdentityProviderPickerViewController_iOS *)self debugDescription];
    v9 = [v7 stringWithFormat:@"Unexpected destination %@ for %@", v11, v8];
    v10 = VSDestinationError(2, v9);
    v6[2](v6, 0, v10);
  }
}

- (void)handleSignInActionWithCompletion:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __79__VSIdentityProviderPickerViewController_iOS_handleSignInActionWithCompletion___block_invoke;
  v6[3] = &unk_279E1A470;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(UIViewController *)self vs_makeTopmostInNavigationStack:1 completion:v6];
}

- (VSIdentityProviderPickerViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end