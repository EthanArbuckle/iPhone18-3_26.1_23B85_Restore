@interface VSIdentityProviderPickerViewController_iOS
- (BOOL)_shouldInsetListView;
- (UISearchController)searchController;
- (UITableViewHeaderFooterView)firstSectionHeaderView;
- (VSIdentityProviderPickerViewControllerDelegate)delegate;
- (VSIdentityProviderPickerViewController_iOS)initWithStyle:(int64_t)style;
- (id)_createTableHeaderContentConfiguration:(id)configuration;
- (id)_titleForTableHeaderView;
- (id)_titleForViewController;
- (id)filteredTableView;
- (id)tableView:(id)view viewForFooterInSection:(int64_t)section;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (id)titleForTableFooterView;
- (void)_cancelButtonPressed:(id)pressed;
- (void)_didPickAdditionalIdentityProviders;
- (void)_didPickIdentityProvider:(id)provider;
- (void)_didPickStorefront:(id)storefront;
- (void)_performSelectionForIdentityProvider:(id)provider;
- (void)_showAboutPrivacy:(id)privacy;
- (void)_showPrivacySheet:(id)sheet;
- (void)_updateTableHeaderTitle;
- (void)handleDestination:(id)destination completion:(id)completion;
- (void)handleSignInActionWithCompletion:(id)completion;
- (void)setCancellationAllowed:(BOOL)allowed;
- (void)setRequestedStorefrontCountryCode:(id)code defaultToDeveloperProviders:(BOOL)providers;
- (void)setRequestingAppDisplayName:(id)name;
- (void)setResourceTitle:(id)title;
- (void)setSearchString:(id)string;
- (void)setSectionContentInset:(UIEdgeInsets)inset;
- (void)showPrivacySheet:(id)sheet;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableViewDidFinishReload:(id)reload;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)willMoveToParentViewController:(id)controller;
@end

@implementation VSIdentityProviderPickerViewController_iOS

- (VSIdentityProviderPickerViewController_iOS)initWithStyle:(int64_t)style
{
  v50[1] = *MEMORY[0x277D85DE8];
  v49.receiver = self;
  v49.super_class = VSIdentityProviderPickerViewController_iOS;
  v3 = [(VSIdentityProviderPickerViewController_iOS *)&v49 initWithStyle:style];
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

- (void)setResourceTitle:(id)title
{
  v4 = [title copy];
  resourceTitle = self->_resourceTitle;
  self->_resourceTitle = v4;

  [(VSIdentityProviderPickerViewController_iOS *)self _updateTableHeaderTitle];
}

- (void)setRequestingAppDisplayName:(id)name
{
  v4 = [name copy];
  requestingAppDisplayName = self->_requestingAppDisplayName;
  self->_requestingAppDisplayName = v4;

  [(VSIdentityProviderPickerViewController_iOS *)self _updateTableHeaderTitle];
}

- (void)setSearchString:(id)string
{
  stringCopy = string;
  if (![(NSString *)self->_searchString isEqualToString:?])
  {
    objc_storeStrong(&self->_searchString, string);
    if ([(VSIdentityProviderPickerViewController_iOS *)self additionalProvidersMode]== 6)
    {
      [(VSIdentityProviderPickerViewController_iOS *)self storefrontFilter];
    }

    else
    {
      [(VSIdentityProviderPickerViewController_iOS *)self filter];
    }
    v5 = ;
    [v5 setSearchQuery:stringCopy];
  }
}

- (void)setRequestedStorefrontCountryCode:(id)code defaultToDeveloperProviders:(BOOL)providers
{
  providersCopy = providers;
  codeCopy = code;
  objc_storeStrong(&self->_requestedStorefrontCountryCode, code);
  additionalProvidersMode = [(VSIdentityProviderPickerViewController_iOS *)self additionalProvidersMode];
  if (!codeCopy && additionalProvidersMode - 7 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    identityProviders = [(VSIdentityProviderPickerViewController_iOS *)self identityProviders];
    [(VSIdentityProviderPickerViewController_iOS *)self setIdentityProvidersToDisplay:identityProviders];
    goto LABEL_19;
  }

  providersByStorefrontCountryCode = [(VSIdentityProviderPickerViewController_iOS *)self providersByStorefrontCountryCode];

  if (!providersByStorefrontCountryCode)
  {
    v10 = objc_alloc_init(VSIdentityProviderStorefrontParser);
    identityProviders2 = [(VSIdentityProviderPickerViewController_iOS *)self identityProviders];
    [(VSIdentityProviderStorefrontParser *)v10 setAllIdentityProviders:identityProviders2];

    allStorefronts = [(VSIdentityProviderPickerViewController_iOS *)self allStorefronts];
    if (allStorefronts)
    {
      [(VSIdentityProviderStorefrontParser *)v10 setAllStorefronts:allStorefronts withCurrentStorefrontCode:codeCopy];
    }

    identityProvidersByStorefront = [(VSIdentityProviderStorefrontParser *)v10 identityProvidersByStorefront];
    tvProviderSupportedStorefronts = [(VSIdentityProviderStorefrontParser *)v10 tvProviderSupportedStorefronts];
    [(VSIdentityProviderPickerViewController_iOS *)self setProvidersByStorefrontCountryCode:identityProvidersByStorefront];
    [(VSIdentityProviderPickerViewController_iOS *)self setTvProviderSupportedStorefronts:tvProviderSupportedStorefronts];
  }

  providersByStorefrontCountryCode2 = [(VSIdentityProviderPickerViewController_iOS *)self providersByStorefrontCountryCode];
  if (!codeCopy)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The requestedStorefrontCountryCode parameter must not be nil."];
  }

  identityProviders = [providersByStorefrontCountryCode2 valueForKey:?];

  providersByStorefrontCountryCode3 = [(VSIdentityProviderPickerViewController_iOS *)self providersByStorefrontCountryCode];
  v17 = [providersByStorefrontCountryCode3 valueForKey:@"__"];

  if (providersCopy && v17 && ([v17 allIdentityProviders], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "count"), v18, v19))
  {
    allIdentityProviders = [v17 allIdentityProviders];
  }

  else
  {
    if (!identityProviders)
    {
      v22 = 6;
      goto LABEL_18;
    }

    v21 = identityProviders;
    [v21 featureProvidersInCurrentStorefront];
    allIdentityProviders = [v21 allIdentityProviders];
  }

  [(VSIdentityProviderPickerViewController_iOS *)self setIdentityProvidersToDisplay:allIdentityProviders];

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
    _titleForTableHeaderView = [(VSIdentityProviderPickerViewController_iOS *)self _titleForTableHeaderView];
    if (_titleForTableHeaderView)
    {
      v5 = objc_alloc_init(MEMORY[0x277D75B70]);
      v6 = [(VSIdentityProviderPickerViewController_iOS *)self _createTableHeaderContentConfiguration:_titleForTableHeaderView];
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

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  tableView = [(VSIdentityProviderPickerViewController_iOS *)self tableView];

  firstSectionHeaderView = 0;
  if (!section && tableView == viewCopy)
  {
    firstSectionHeaderView = [(VSIdentityProviderPickerViewController_iOS *)self firstSectionHeaderView];
  }

  return firstSectionHeaderView;
}

- (id)_createTableHeaderContentConfiguration:(id)configuration
{
  v3 = MEMORY[0x277D756E0];
  configurationCopy = configuration;
  headerConfiguration = [v3 headerConfiguration];
  [headerConfiguration setSecondaryText:configurationCopy];

  return headerConfiguration;
}

- (void)_updateTableHeaderTitle
{
  _titleForTableHeaderView = [(VSIdentityProviderPickerViewController_iOS *)self _titleForTableHeaderView];
  if (_titleForTableHeaderView)
  {
    v9 = _titleForTableHeaderView;
    firstSectionHeaderView = [(VSIdentityProviderPickerViewController_iOS *)self firstSectionHeaderView];
    v5 = [(VSIdentityProviderPickerViewController_iOS *)self _createTableHeaderContentConfiguration:v9];
    [firstSectionHeaderView setContentConfiguration:v5];

    parentViewController = [(VSIdentityProviderPickerViewController_iOS *)self parentViewController];
    _titleForViewController = [(VSIdentityProviderPickerViewController_iOS *)self _titleForViewController];
    [parentViewController setTitle:_titleForViewController];

    _titleForViewController2 = [(VSIdentityProviderPickerViewController_iOS *)self _titleForViewController];
    [(VSIdentityProviderPickerViewController_iOS *)self setTitle:_titleForViewController2];

    _titleForTableHeaderView = v9;
  }
}

- (id)_titleForTableHeaderView
{
  if ([(VSIdentityProviderPickerViewController_iOS *)self additionalProvidersMode]== 3)
  {
    v3 = 0;
    goto LABEL_9;
  }

  resourceTitle = [(VSIdentityProviderPickerViewController_iOS *)self resourceTitle];
  if ([resourceTitle length])
  {
    vs_frameworkBundle = [MEMORY[0x277CCA8D8] vs_frameworkBundle];
    requestingAppDisplayName2 = [vs_frameworkBundle localizedStringForKey:@"IDENTITY_PROVIDER_PICKER_APP_MESSAGE_FORMAT" value:0 table:0];

    v7 = MEMORY[0x277CCACA8];
    requestingAppDisplayName = [(VSIdentityProviderPickerViewController_iOS *)self requestingAppDisplayName];
    [v7 stringWithFormat:requestingAppDisplayName2, resourceTitle, requestingAppDisplayName];
  }

  else
  {
    requestingAppDisplayName2 = [(VSIdentityProviderPickerViewController_iOS *)self requestingAppDisplayName];
    if (!requestingAppDisplayName2)
    {
      additionalProvidersMode = [(VSIdentityProviderPickerViewController_iOS *)self additionalProvidersMode];
      vs_frameworkBundle2 = [MEMORY[0x277CCA8D8] vs_frameworkBundle];
      requestingAppDisplayName = vs_frameworkBundle2;
      if (additionalProvidersMode == 6)
      {
        v14 = @"REGIONS_PICKER_SETTINGS_MESSAGE_TV";
      }

      else
      {
        v14 = @"IDENTITY_PROVIDER_PICKER_HEADER";
      }

      v10 = [vs_frameworkBundle2 localizedStringForKey:v14 value:0 table:0];
      goto LABEL_8;
    }

    vs_frameworkBundle3 = [MEMORY[0x277CCA8D8] vs_frameworkBundle];
    requestingAppDisplayName = [vs_frameworkBundle3 localizedStringForKey:@"IDENTITY_PROVIDER_PICKER_APP_MESSAGE_NO_RESOURCE_TITLE_FORMAT" value:0 table:0];

    [MEMORY[0x277CCACA8] stringWithFormat:requestingAppDisplayName, requestingAppDisplayName2, v15];
  }
  v10 = ;
LABEL_8:
  v3 = v10;

LABEL_9:

  return v3;
}

- (id)titleForTableFooterView
{
  additionalProvidersMode = [(VSIdentityProviderPickerViewController_iOS *)self additionalProvidersMode];
  v3 = 0;
  if (additionalProvidersMode <= 6 && ((1 << additionalProvidersMode) & 0x64) != 0)
  {
    vs_frameworkBundle = [MEMORY[0x277CCA8D8] vs_frameworkBundle];
    v3 = [vs_frameworkBundle localizedStringForKey:@"IDENTITY_PROVIDER_PICKER_SETTINGS_FOOTER" value:0 table:0];
  }

  return v3;
}

- (id)_titleForViewController
{
  additionalProvidersMode = [(VSIdentityProviderPickerViewController_iOS *)self additionalProvidersMode];
  if (additionalProvidersMode > 6)
  {
    v5 = 0;
  }

  else
  {
    v3 = off_279E1A4B8[additionalProvidersMode];
    vs_frameworkBundle = [MEMORY[0x277CCA8D8] vs_frameworkBundle];
    v5 = [vs_frameworkBundle localizedStringForKey:v3 value:0 table:0];
  }

  return v5;
}

- (void)_didPickIdentityProvider:(id)provider
{
  providerCopy = provider;
  delegate = [(VSIdentityProviderPickerViewController_iOS *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate identityProviderPickerViewController:self didPickIdentityProvider:providerCopy];
  }
}

- (void)_didPickAdditionalIdentityProviders
{
  delegate = [(VSIdentityProviderPickerViewController_iOS *)self delegate];
  additionalProvidersMode = [(VSIdentityProviderPickerViewController_iOS *)self additionalProvidersMode];
  if ((objc_opt_respondsToSelector() & 1) != 0 && additionalProvidersMode - 7 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    [delegate identityProviderPickerViewControllerDidPickAdditionalIdentityProviders:self];
  }

  else
  {
    searchBarDelegate = [(VSIdentityProviderPickerViewController_iOS *)self searchBarDelegate];
    [searchBarDelegate clearText];

    [(VSIdentityProviderPickerViewController_iOS *)self setAdditionalProvidersMode:6];
    [(VSIdentityProviderPickerViewController_iOS *)self _updateTableHeaderTitle];
  }
}

- (void)_didPickStorefront:(id)storefront
{
  storefrontCopy = storefront;
  searchBarDelegate = [(VSIdentityProviderPickerViewController_iOS *)self searchBarDelegate];
  [searchBarDelegate clearText];

  identitifer = [storefrontCopy identitifer];

  [(VSIdentityProviderPickerViewController_iOS *)self setRequestedStorefrontCountryCode:identitifer];

  [(VSIdentityProviderPickerViewController_iOS *)self _updateTableHeaderTitle];
}

- (void)_cancelButtonPressed:(id)pressed
{
  delegate = [(VSIdentityProviderPickerViewController_iOS *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate identityProviderPickerViewControllerDidCancel:self];
  }
}

- (void)_showAboutPrivacy:(id)privacy
{
  onboardingInfoCenter = [(VSIdentityProviderPickerViewController_iOS *)self onboardingInfoCenter];
  [onboardingInfoCenter presentDetailsFromViewController:self];
}

- (void)_performSelectionForIdentityProvider:(id)provider
{
  providerCopy = provider;
  v5 = providerCopy;
  if (providerCopy)
  {
    [(VSIdentityProviderPickerViewController_iOS *)self _didPickIdentityProvider:providerCopy];
  }

  else
  {
    [(VSIdentityProviderPickerViewController_iOS *)self _didPickAdditionalIdentityProviders];
  }
}

- (void)setCancellationAllowed:(BOOL)allowed
{
  if (self->_cancellationAllowed != allowed)
  {
    self->_cancellationAllowed = allowed;
    if (allowed)
    {
      v6 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel__cancelButtonPressed_];
    }

    else
    {
      v6 = 0;
    }

    navigationItem = [(VSIdentityProviderPickerViewController_iOS *)self navigationItem];
    [navigationItem setLeftBarButtonItem:v6];
  }
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  dataSource = [view dataSource];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v7 = MEMORY[0x277CBEAD8];
    v8 = *MEMORY[0x277CBE660];
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    [v7 raise:v8 format:{@"Unexpectedly, tableViewDataSource was %@, instead of VSIdentityProviderTableViewDataSource.", v10}];
  }

  v11 = dataSource;
  if ([v11 additionalProvidersMode] == 6)
  {
    v12 = [v11 storefrontAtIndexPath:pathCopy];
    [(VSIdentityProviderPickerViewController_iOS *)self _didPickStorefront:v12];
  }

  else
  {
    v12 = [v11 identityProviderForRowAtIndexPath:pathCopy];
    searchController = [(VSIdentityProviderPickerViewController_iOS *)self searchController];
    if ([searchController isActive])
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

- (void)tableViewDidFinishReload:(id)reload
{
  reloadCopy = reload;
  [reloadCopy contentOffset];
  v4 = v3;
  tableHeaderView = [reloadCopy tableHeaderView];
  v6 = tableHeaderView;
  if (tableHeaderView)
  {
    [tableHeaderView bounds];
    [reloadCopy convertRect:v6 fromView:?];
    [reloadCopy scrollRectToVisible:0 animated:?];
  }

  else
  {
    if (v4 <= 0.0)
    {
      goto LABEL_6;
    }

    [reloadCopy vs_scrollToTopAnimated:0];
  }

  [reloadCopy setNeedsFocusUpdate];
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
  tableView = [(VSIdentityProviderPickerViewController_iOS *)self tableView];
  clearColor = [MEMORY[0x277D75348] clearColor];
  [tableView setSectionIndexBackgroundColor:clearColor];

  unfilteredDataSource = [(VSIdentityProviderPickerViewController_iOS *)self unfilteredDataSource];
  [unfilteredDataSource setTableView:tableView];
  v6 = [objc_alloc(MEMORY[0x277D75B58]) initWithStyle:{objc_msgSend(tableView, "style")}];
  tableView2 = [v6 tableView];
  clearColor2 = [MEMORY[0x277D75348] clearColor];
  [tableView2 setSectionIndexBackgroundColor:clearColor2];

  [tableView2 setDelegate:self];
  filteredDataSource = [(VSIdentityProviderPickerViewController_iOS *)self filteredDataSource];
  [filteredDataSource setTableView:tableView2];
  v32 = v6;
  v10 = [objc_alloc(MEMORY[0x277D759F0]) initWithSearchResultsController:v6];
  [v10 setHidesNavigationBarDuringPresentation:0];
  [(VSIdentityProviderPickerViewController_iOS *)self setSearchController:v10];
  searchBar = [v10 searchBar];
  searchBarDelegate = [(VSIdentityProviderPickerViewController_iOS *)self searchBarDelegate];
  v31 = searchBar;
  [searchBarDelegate setSearchBar:searchBar];

  additionalProvidersMode = [(VSIdentityProviderPickerViewController_iOS *)self additionalProvidersMode];
  array = [MEMORY[0x277CBEB18] array];
  titleForTableFooterView = [(VSIdentityProviderPickerViewController_iOS *)self titleForTableFooterView];
  if (titleForTableFooterView)
  {
    [array addObject:titleForTableFooterView];
  }

  if (additionalProvidersMode == 3)
  {
    localizedButtonTitle = 0;
  }

  else
  {
    onboardingInfoCenter = [(VSIdentityProviderPickerViewController_iOS *)self onboardingInfoCenter];
    tvProviderPrivacyButtonViewController = [onboardingInfoCenter tvProviderPrivacyButtonViewController];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v29 = filteredDataSource;
      v19 = unfilteredDataSource;
      flow = [tvProviderPrivacyButtonViewController flow];
      localizedButtonTitle = [flow localizedButtonTitle];

      if (localizedButtonTitle)
      {
        [array addObject:localizedButtonTitle];
      }

      unfilteredDataSource = v19;
      filteredDataSource = v29;
    }

    else
    {
      localizedButtonTitle = 0;
    }
  }

  string = [MEMORY[0x277CCAB68] string];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __57__VSIdentityProviderPickerViewController_iOS_viewDidLoad__block_invoke;
  v33[3] = &unk_279E1A498;
  v22 = string;
  v34 = v22;
  [array enumerateObjectsUsingBlock:v33];
  if ([v22 length])
  {
    v28 = unfilteredDataSource;
    v30 = filteredDataSource;
    v23 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"footer"];
    [v23 setProperty:v22 forKey:*MEMORY[0x277D3FF70]];
    if (localizedButtonTitle)
    {
      v36.location = [v22 rangeOfString:localizedButtonTitle];
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

    unfilteredDataSource = v28;
    filteredDataSource = v30;
  }
}

- (id)tableView:(id)view viewForFooterInSection:(int64_t)section
{
  if ([view numberOfSections] - 1 == section)
  {
    footerView = [(VSIdentityProviderPickerViewController_iOS *)self footerView];
  }

  else
  {
    footerView = 0;
  }

  return footerView;
}

- (id)filteredTableView
{
  filteredDataSource = [(VSIdentityProviderPickerViewController_iOS *)self filteredDataSource];
  tableView = [filteredDataSource tableView];

  return tableView;
}

- (void)setSectionContentInset:(UIEdgeInsets)inset
{
  right = inset.right;
  bottom = inset.bottom;
  left = inset.left;
  top = inset.top;
  tableView = [(VSIdentityProviderPickerViewController_iOS *)self tableView];
  [tableView _setSectionContentInset:{top, left, bottom, right}];

  filteredTableView = [(VSIdentityProviderPickerViewController_iOS *)self filteredTableView];
  [filteredTableView _setSectionContentInset:{top, left, bottom, right}];
}

- (void)willMoveToParentViewController:(id)controller
{
  controllerCopy = controller;
  if (!controllerCopy)
  {
    presentedViewController = [(VSIdentityProviderPickerViewController_iOS *)self presentedViewController];

    if (presentedViewController)
    {
      [(VSIdentityProviderPickerViewController_iOS *)self dismissViewControllerAnimated:0 completion:0];
    }
  }

  v6.receiver = self;
  v6.super_class = VSIdentityProviderPickerViewController_iOS;
  [(VSIdentityProviderPickerViewController_iOS *)&v6 willMoveToParentViewController:controllerCopy];
}

- (void)viewDidLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = VSIdentityProviderPickerViewController_iOS;
  [(VSIdentityProviderPickerViewController_iOS *)&v5 viewDidLayoutSubviews];
  [(VSIdentityProviderPickerViewController_iOS *)self setLayoutMarginsFollowReadableWidth:[(VSIdentityProviderPickerViewController_iOS *)self _shouldInsetListView]];
  tableView = [(VSIdentityProviderPickerViewController_iOS *)self tableView];
  [tableView _setSectionContentInsetFollowsLayoutMargins:{-[VSIdentityProviderPickerViewController_iOS _shouldInsetListView](self, "_shouldInsetListView")}];

  filteredTableView = [(VSIdentityProviderPickerViewController_iOS *)self filteredTableView];
  [filteredTableView _setSectionContentInsetFollowsLayoutMargins:{-[VSIdentityProviderPickerViewController_iOS _shouldInsetListView](self, "_shouldInsetListView")}];
}

- (BOOL)_shouldInsetListView
{
  view = [(VSIdentityProviderPickerViewController_iOS *)self view];
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  traitCollection = [mainScreen traitCollection];

  if ([traitCollection userInterfaceIdiom] == 1)
  {
    v5 = 1;
  }

  else
  {
    if (!_os_feature_enabled_impl())
    {
      goto LABEL_11;
    }

    [view frame];
    Width = CGRectGetWidth(v13);
    v7 = [MEMORY[0x277CBEB98] setWithObjects:{*MEMORY[0x277D76820], *MEMORY[0x277D76818], 0}];
    preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
    v9 = [v7 containsObject:preferredContentSizeCategory];

    horizontalSizeClass = [traitCollection horizontalSizeClass];
    if (Width <= 320.0 && (v9 & 1) != 0)
    {
      goto LABEL_11;
    }

    v11 = horizontalSizeClass != 2 || Width <= 320.0;
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

- (void)showPrivacySheet:(id)sheet
{
  sheetCopy = sheet;
  presentedViewController = [(VSIdentityProviderPickerViewController_iOS *)self presentedViewController];

  if (presentedViewController)
  {
    presentedViewController2 = [(VSIdentityProviderPickerViewController_iOS *)self presentedViewController];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __63__VSIdentityProviderPickerViewController_iOS_showPrivacySheet___block_invoke;
    v7[3] = &unk_279E19848;
    v7[4] = self;
    v8 = sheetCopy;
    [presentedViewController2 dismissViewControllerAnimated:1 completion:v7];
  }

  else
  {
    [(VSIdentityProviderPickerViewController_iOS *)self _showPrivacySheet:sheetCopy];
  }
}

- (void)_showPrivacySheet:(id)sheet
{
  v4 = [MEMORY[0x277D37678] presenterForPrivacySplashWithIdentifier:0x2880B9F90];
  [v4 setPresentingViewController:self];
  [v4 present];
}

- (void)handleDestination:(id)destination completion:(id)completion
{
  destinationCopy = destination;
  completionCopy = completion;
  if ([destinationCopy isEqual:@"signIn"])
  {
    [(VSIdentityProviderPickerViewController_iOS *)self handleSignInActionWithCompletion:completionCopy];
  }

  else
  {
    v7 = MEMORY[0x277CCACA8];
    v8 = [(VSIdentityProviderPickerViewController_iOS *)self debugDescription];
    v9 = [v7 stringWithFormat:@"Unexpected destination %@ for %@", destinationCopy, v8];
    v10 = VSDestinationError(2, v9);
    completionCopy[2](completionCopy, 0, v10);
  }
}

- (void)handleSignInActionWithCompletion:(id)completion
{
  completionCopy = completion;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __79__VSIdentityProviderPickerViewController_iOS_handleSignInActionWithCompletion___block_invoke;
  v6[3] = &unk_279E1A470;
  v6[4] = self;
  v7 = completionCopy;
  v5 = completionCopy;
  [(UIViewController *)self vs_makeTopmostInNavigationStack:1 completion:v6];
}

- (VSIdentityProviderPickerViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end