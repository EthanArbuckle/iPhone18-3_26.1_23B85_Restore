@interface PKAddressSearcherViewController
- (BOOL)_validateContact:(id)contact;
- (BOOL)tableView:(id)view wantsHeaderForSection:(int64_t)section;
- (PKAddressSearcherViewController)initWithSetupDelegate:(id)delegate style:(int64_t)style;
- (PKAddressSearcherViewControllerDelegate)delegate;
- (PKPaymentSetupViewControllerDelegate)setupDelegate;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_handleCancelButtonTapped:(id)tapped;
- (void)_processNextViewController;
- (void)_removeNavigationBarButtonItems;
- (void)_setNavigationBarEnabled:(BOOL)enabled;
- (void)_showAddressEditorWithContact:(id)contact withContactErrors:(id)errors;
- (void)_terminateFlow;
- (void)_updateNavigationButtons;
- (void)_updateSectionMapping;
- (void)addressEditorViewController:(id)controller selectedContact:(id)contact;
- (void)addressEditorViewControllerDidCancel:(id)cancel;
- (void)contactsSearchUpdated:(id)updated;
- (void)loadView;
- (void)mapSearchUpdated:(id)updated;
- (void)selectedAddress:(id)address withError:(id)error;
- (void)setHeaderSubtitle:(id)subtitle;
- (void)setHeaderTitle:(id)title;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)updateSearchResultsForSearchController:(id)controller;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
@end

@implementation PKAddressSearcherViewController

- (PKAddressSearcherViewController)initWithSetupDelegate:(id)delegate style:(int64_t)style
{
  v17[2] = *MEMORY[0x1E69E9840];
  delegateCopy = delegate;
  v16.receiver = self;
  v16.super_class = PKAddressSearcherViewController;
  v7 = [(PKAddressSearcherViewController *)&v16 initWithStyle:2];
  if (v7)
  {
    v8 = objc_alloc_init(MEMORY[0x1E69B8528]);
    searchModel = v7->_searchModel;
    v7->_searchModel = v8;

    [(PKAddressSearchModel *)v7->_searchModel setDelegate:v7];
    objc_storeWeak(&v7->_setupDelegate, delegateCopy);
    v7->_style = style;
    v10 = *MEMORY[0x1E695CC30];
    v17[0] = *MEMORY[0x1E69BB7C0];
    v17[1] = v10;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
    requiredKeys = v7->_requiredKeys;
    v7->_requiredKeys = v11;

    v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
    sectionMapping = v7->_sectionMapping;
    v7->_sectionMapping = v13;

    [(PKAddressSearcherViewController *)v7 _updateSectionMapping];
    [(PKAddressSearcherViewController *)v7 _updateNavigationButtons];
  }

  return v7;
}

- (void)loadView
{
  v20.receiver = self;
  v20.super_class = PKAddressSearcherViewController;
  [(PKAddressSearcherViewController *)&v20 loadView];
  view = [(PKAddressSearcherViewController *)self view];
  v4 = view;
  if (self->_backgroundColor)
  {
    [view setBackgroundColor:?];
  }

  else
  {
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [v4 setBackgroundColor:clearColor];
  }

  v6 = [objc_alloc(MEMORY[0x1E69DCF10]) initWithSearchResultsController:0];
  searchController = self->_searchController;
  self->_searchController = v6;

  [(UISearchController *)self->_searchController setSearchResultsUpdater:self];
  [(UISearchController *)self->_searchController setHidesNavigationBarDuringPresentation:0];
  [(UISearchController *)self->_searchController setObscuresBackgroundDuringPresentation:0];
  [(UISearchController *)self->_searchController setShowsSearchResultsController:0];
  searchBar = [(UISearchController *)self->_searchController searchBar];
  v9 = PKLocalizedPaymentString(&cfstr_InAppPaymentSe_0.isa);
  [searchBar setPlaceholder:v9];

  [searchBar setReturnKeyType:9];
  [searchBar setEnablesReturnKeyAutomatically:1];
  [searchBar setTextContentType:*MEMORY[0x1E69DE4C0]];
  [searchBar setAccessibilityIdentifier:*MEMORY[0x1E69B9BD0]];
  if (self->_headerTitle || self->_headerSubtitle)
  {
    v10 = [PKTableHeaderView alloc];
    v11 = [(PKTableHeaderView *)v10 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    headerView = self->_headerView;
    self->_headerView = v11;

    if (self->_headerTitle)
    {
      titleLabel = [(PKTableHeaderView *)self->_headerView titleLabel];
      [titleLabel setText:self->_headerTitle];
    }

    if (self->_headerSubtitle)
    {
      subtitleLabel = [(PKTableHeaderView *)self->_headerView subtitleLabel];
      [subtitleLabel setText:self->_headerSubtitle];
    }

    [(PKTableHeaderView *)self->_headerView setStyle:3];
    [(PKTableHeaderView *)self->_headerView setTopPadding:20.0];
    v15 = self->_headerView;
    v16 = PKUIGetMinScreenWidthType();
    v17 = 30.0;
    if (!v16)
    {
      v17 = 20.0;
    }

    [(PKTableHeaderView *)v15 setBottomPadding:v17];
    [(PKTableHeaderView *)self->_headerView sizeToFit];
    tableView = [(PKAddressSearcherViewController *)self tableView];
    [tableView setTableHeaderView:self->_headerView];
  }

  if (self->_style == 2)
  {
    v19 = PKBridgeAppearanceGetAppearanceSpecifier();
    PKAppearanceApplyToContainer(v19, searchBar);
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = PKAddressSearcherViewController;
  [(PKAddressSearcherViewController *)&v5 viewWillAppear:appear];
  navigationItem = [(PKAddressSearcherViewController *)self navigationItem];
  [navigationItem setSearchController:self->_searchController];
  if ((PKIsVision() & 1) != 0 || PKIsPad())
  {
    [navigationItem setPreferredSearchBarPlacement:2];
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = PKAddressSearcherViewController;
  [(PKAddressSearcherViewController *)&v4 viewDidAppear:appear];
  [(UISearchController *)self->_searchController setActive:1];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = PKAddressSearcherViewController;
  [(PKAddressSearcherViewController *)&v4 viewWillDisappear:disappear];
  [(UISearchController *)self->_searchController setActive:0];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = PKAddressSearcherViewController;
  [(PKAddressSearcherViewController *)&v4 viewDidDisappear:disappear];
  [(PKAddressSearchModel *)self->_searchModel endSearch];
}

- (void)viewWillLayoutSubviews
{
  v9.receiver = self;
  v9.super_class = PKAddressSearcherViewController;
  [(PKAddressSearcherViewController *)&v9 viewWillLayoutSubviews];
  headerView = self->_headerView;
  if (headerView)
  {
    tableView = [(PKAddressSearcherViewController *)self tableView];
    [tableView bounds];
    [(PKTableHeaderView *)headerView sizeThatFits:CGRectGetWidth(v10), 3.40282347e38];
    v6 = v5;
    v8 = v7;

    [(PKTableHeaderView *)self->_headerView setFrame:0.0, 0.0, v6, v8];
  }
}

- (void)_handleCancelButtonTapped:(id)tapped
{
  MEMORY[0x1BFB41980](*MEMORY[0x1E69BA0D0], 0, tapped);
  setupDelegate = [(PKAddressSearcherViewController *)self setupDelegate];
  if (objc_opt_respondsToSelector())
  {
    [setupDelegate viewControllerDidCancelSetupFlow:self];
  }

  else
  {
    [(PKAddressSearcherViewController *)self _terminateFlow];
  }
}

- (void)_terminateFlow
{
  setupDelegate = [(PKAddressSearcherViewController *)self setupDelegate];
  v5 = setupDelegate;
  if (setupDelegate)
  {
    [setupDelegate viewControllerDidTerminateSetupFlow:self];
  }

  else
  {
    presentingViewController = [(PKAddressSearcherViewController *)self presentingViewController];
    [presentingViewController dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)_showAddressEditorWithContact:(id)contact withContactErrors:(id)errors
{
  v24[1] = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  errorsCopy = errors;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained && (v9 = WeakRetained, v10 = objc_loadWeakRetained(&self->_delegate), v11 = objc_opt_respondsToSelector(), v10, v9, (v11 & 1) != 0))
  {
    if ([(PKAddressSearcherViewController *)self _validateContact:contactCopy])
    {
      v12 = objc_loadWeakRetained(&self->_delegate);
      v13 = objc_opt_respondsToSelector();

      if (v13)
      {
        delegate = [(PKAddressSearcherViewController *)self delegate];
        [delegate addressSearcherViewController:self selectedContact:contactCopy];
      }

      [(PKAddressSearcherViewController *)self _processNextViewController];
    }
  }

  else
  {
    v15 = [PKAddressEditorViewController alloc];
    requiredKeys = [(PKAddressSearcherViewController *)self requiredKeys];
    v24[0] = *MEMORY[0x1E69BB7C0];
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
    if (errorsCopy)
    {
      v18 = errorsCopy;
    }

    else
    {
      v18 = MEMORY[0x1E695E0F0];
    }

    v19 = [(PKAddressEditorViewController *)v15 initWithContact:contactCopy requiredKeys:requiredKeys highlightedKeys:v17 errors:v18 style:self->_style];

    title = [(PKAddressSearcherViewController *)self title];
    [(PKAddressEditorViewController *)v19 setTitle:title];

    view = [(PKAddressEditorViewController *)v19 view];
    v22 = PKProvisioningBackgroundColor();
    [view setBackgroundColor:v22];

    [(PKAddressEditorViewController *)v19 setDelegate:self];
    [(PKAddressEditorViewController *)v19 setContactFormatValidator:self->_contactFormatValidator];
    navigationController = [(PKAddressSearcherViewController *)self navigationController];
    [navigationController pushViewController:v19 animated:1];
  }
}

- (BOOL)_validateContact:(id)contact
{
  contactCopy = contact;
  if (contactCopy && [(NSSet *)self->_supportedCountryCodes count])
  {
    postalAddresses = [contactCopy postalAddresses];
    firstObject = [postalAddresses firstObject];
    value = [firstObject value];

    iSOCountryCode = [value ISOCountryCode];
    v9 = [(NSSet *)self->_supportedCountryCodes containsObject:iSOCountryCode];
    if (!v9)
    {
      supportedCountryCodes = self->_supportedCountryCodes;
      v11 = [MEMORY[0x1E695DFD8] setWithObject:@"US"];
      LODWORD(supportedCountryCodes) = [(NSSet *)supportedCountryCodes isEqualToSet:v11];

      if (supportedCountryCodes)
      {
        v12 = PKLocalizedPaymentString(&cfstr_AddressNotSupp.isa);
        v13 = PKLocalizedPaymentString(&cfstr_AddressNotSupp_0.isa);
        v14 = PKDisplayableErrorCustom();

        v15 = PKAlertForDisplayableErrorWithHandlers(v14, 0, 0, 0);
        navigationController = [(PKAddressSearcherViewController *)self navigationController];
        [navigationController presentViewController:v15 animated:1 completion:0];
      }
    }
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (void)_processNextViewController
{
  objc_initWeak(&location, self);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v5 = objc_loadWeakRetained(&self->_delegate);
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = objc_loadWeakRetained(&self->_delegate);
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __61__PKAddressSearcherViewController__processNextViewController__block_invoke;
      v8[3] = &unk_1E8011FE8;
      objc_copyWeak(&v9, &location);
      [v7 addressSearcherViewController:self requestsNextViewControllerWithCompletion:v8];

      objc_destroyWeak(&v9);
    }
  }

  objc_destroyWeak(&location);
}

void __61__PKAddressSearcherViewController__processNextViewController__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __61__PKAddressSearcherViewController__processNextViewController__block_invoke_2;
  v5[3] = &unk_1E80110E0;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);

  objc_destroyWeak(&v7);
}

void __61__PKAddressSearcherViewController__processNextViewController__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if (*(a1 + 32))
    {
      v4 = [WeakRetained navigationController];
      [v4 pushViewController:*(a1 + 32) animated:1];
    }

    else
    {
      v5 = dispatch_time(0, 1000000000);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __61__PKAddressSearcherViewController__processNextViewController__block_invoke_3;
      block[3] = &unk_1E8010998;
      objc_copyWeak(&v7, (a1 + 40));
      dispatch_after(v5, MEMORY[0x1E69E96A0], block);
      objc_destroyWeak(&v7);
    }
  }
}

void __61__PKAddressSearcherViewController__processNextViewController__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _terminateFlow];
    WeakRetained = v2;
  }
}

- (void)_updateSectionMapping
{
  v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if ([(NSArray *)self->_contactsSearchResults count])
  {
    v3 = [MEMORY[0x1E696AD98] numberWithInteger:0];
    [v9 setObject:&unk_1F3CC7838 forKey:v3];

    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  if ([(NSArray *)self->_completionSearchResults count])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithInteger:v4];
    [v9 setObject:&unk_1F3CC7850 forKey:v5];

    ++v4;
  }

  v6 = [MEMORY[0x1E696AD98] numberWithInteger:v4];
  [v9 setObject:&unk_1F3CC7868 forKey:v6];

  v7 = [v9 copy];
  sectionMapping = self->_sectionMapping;
  self->_sectionMapping = v7;
}

- (void)setHeaderTitle:(id)title
{
  titleCopy = title;
  v6 = self->_headerTitle;
  v7 = titleCopy;
  v10 = v7;
  if (v6 == v7)
  {

    goto LABEL_9;
  }

  if (!v7 || !v6)
  {

    goto LABEL_8;
  }

  v8 = [(NSString *)v6 isEqualToString:v7];

  if (!v8)
  {
LABEL_8:
    objc_storeStrong(&self->_headerTitle, title);
    titleLabel = [(PKTableHeaderView *)self->_headerView titleLabel];
    [titleLabel setText:self->_headerTitle];

    [(PKTableHeaderView *)self->_headerView setNeedsLayout];
  }

LABEL_9:
}

- (void)setHeaderSubtitle:(id)subtitle
{
  subtitleCopy = subtitle;
  v6 = self->_headerSubtitle;
  v7 = subtitleCopy;
  v10 = v7;
  if (v6 == v7)
  {

    goto LABEL_9;
  }

  if (!v7 || !v6)
  {

    goto LABEL_8;
  }

  v8 = [(NSString *)v6 isEqualToString:v7];

  if (!v8)
  {
LABEL_8:
    objc_storeStrong(&self->_headerSubtitle, subtitle);
    subtitleLabel = [(PKTableHeaderView *)self->_headerView subtitleLabel];
    [subtitleLabel setText:self->_headerSubtitle];

    [(PKTableHeaderView *)self->_headerView setNeedsLayout];
  }

LABEL_9:
}

- (void)_updateNavigationButtons
{
  traitCollection = [(PKAddressSearcherViewController *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  v5 = objc_alloc(MEMORY[0x1E69DC708]);
  if (userInterfaceIdiom == 5)
  {
    v7 = [v5 initWithBarButtonSystemItem:1 target:self action:sel__handleCancelButtonTapped_];
    navigationItem = [(PKAddressSearcherViewController *)self navigationItem];
    [navigationItem setRightBarButtonItem:v7];
  }

  else
  {
    v7 = [v5 initWithBarButtonSystemItem:24 target:self action:sel__handleCancelButtonTapped_];
    navigationItem = [(PKAddressSearcherViewController *)self navigationItem];
    [navigationItem setLeftBarButtonItem:v7];
  }
}

- (void)_setNavigationBarEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  navigationController = [(PKAddressSearcherViewController *)self navigationController];
  navigationBar = [navigationController navigationBar];
  [navigationBar setUserInteractionEnabled:enabledCopy];

  interactivePopGestureRecognizer = [navigationController interactivePopGestureRecognizer];
  [interactivePopGestureRecognizer setEnabled:enabledCopy];

  navigationItem = [(PKAddressSearcherViewController *)self navigationItem];
  leftBarButtonItem = [navigationItem leftBarButtonItem];
  [leftBarButtonItem setEnabled:enabledCopy];

  rightBarButtonItem = [navigationItem rightBarButtonItem];
  [rightBarButtonItem setEnabled:enabledCopy];
}

- (void)_removeNavigationBarButtonItems
{
  navigationItem = [(PKAddressSearcherViewController *)self navigationItem];
  [navigationItem setLeftBarButtonItem:0];

  navigationItem2 = [(PKAddressSearcherViewController *)self navigationItem];
  [navigationItem2 setRightBarButtonItem:0];

  navigationItem3 = [(PKAddressSearcherViewController *)self navigationItem];
  [navigationItem3 setHidesBackButton:1];
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  sectionMapping = self->_sectionMapping;
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:section];
  v7 = [(NSDictionary *)sectionMapping objectForKey:v6];

  if (v7)
  {
    unsignedIntegerValue = [v7 unsignedIntegerValue];
    if (unsignedIntegerValue)
    {
      if (unsignedIntegerValue == 1)
      {
        v9 = [(NSArray *)self->_completionSearchResults count];
      }

      else
      {
        v9 = unsignedIntegerValue == 2;
      }
    }

    else
    {
      v10 = [(NSArray *)self->_contactsSearchResults count];
      if (v10 >= 4)
      {
        v9 = 4;
      }

      else
      {
        v9 = v10;
      }
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)tableView:(id)view wantsHeaderForSection:(int64_t)section
{
  sectionMapping = self->_sectionMapping;
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:section];
  v7 = [(NSDictionary *)sectionMapping objectForKey:v6];

  if (v7)
  {
    unsignedIntegerValue = [v7 unsignedIntegerValue];
    if (!unsignedIntegerValue)
    {
      v9 = &OBJC_IVAR___PKAddressSearcherViewController__contactsSearchResults;
      goto LABEL_7;
    }

    if (unsignedIntegerValue == 1)
    {
      v9 = &OBJC_IVAR___PKAddressSearcherViewController__completionSearchResults;
LABEL_7:
      v10 = [*(&self->super.super.super.super.isa + *v9) count] != 0;
      goto LABEL_8;
    }
  }

  v10 = 0;
LABEL_8:

  return v10;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  sectionMapping = self->_sectionMapping;
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:section];
  v6 = [(NSDictionary *)sectionMapping objectForKey:v5];

  if (!v6)
  {
    goto LABEL_5;
  }

  unsignedIntegerValue = [v6 unsignedIntegerValue];
  if (!unsignedIntegerValue)
  {
    v8 = @"CONTACTS";
    goto LABEL_7;
  }

  if (unsignedIntegerValue != 1)
  {
LABEL_5:
    v9 = 0;
    goto LABEL_8;
  }

  v8 = @"LOCATIONS";
LABEL_7:
  v9 = PKLocalizedString(&v8->isa);
LABEL_8:

  return v9;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  sectionMapping = self->_sectionMapping;
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(pathCopy, "section")}];
  v10 = [(NSDictionary *)sectionMapping objectForKey:v9];

  if (!v10)
  {
    v12 = objc_alloc_init(MEMORY[0x1E69DD028]);
    goto LABEL_20;
  }

  unsignedIntegerValue = [v10 unsignedIntegerValue];
  if (unsignedIntegerValue)
  {
    if (unsignedIntegerValue != 1)
    {
      if (unsignedIntegerValue == 2)
      {
        v12 = [viewCopy dequeueReusableCellWithIdentifier:@"Manual"];
        if (!v12)
        {
          v12 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:0 reuseIdentifier:@"Manual"];
        }

        textLabel = [v12 textLabel];
        v14 = PKLocalizedPaymentString(&cfstr_InAppPaymentOp_14.isa);
        [textLabel setText:v14];

        textLabel2 = [v12 textLabel];
        v16 = PKOBKListInlineCellTitleFont();
        [textLabel2 setFont:v16];

        detailTextLabel = [v12 detailTextLabel];
        [detailTextLabel setText:0];

        PKAccessibilityIDCellSet(v12, *MEMORY[0x1E69B9760]);
      }

      else
      {
        v12 = objc_alloc_init(MEMORY[0x1E69DD028]);
      }

      goto LABEL_17;
    }

    v12 = [viewCopy dequeueReusableCellWithIdentifier:@"Address"];
    if (!v12)
    {
      v12 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:3 reuseIdentifier:@"Address"];
    }

    v18 = -[NSArray objectAtIndex:](self->_completionSearchResults, "objectAtIndex:", [pathCopy row]);
    textLabel3 = [v12 textLabel];
    title = [v18 title];
    [textLabel3 setText:title];

    textLabel4 = [v12 textLabel];
    v22 = PKOBKListSubtitleCellTitleFont();
    [textLabel4 setFont:v22];

    detailTextLabel2 = [v12 detailTextLabel];
    subtitle = [v18 subtitle];
    [detailTextLabel2 setText:subtitle];

    detailTextLabel3 = [v12 detailTextLabel];
    v26 = PKOBKListSubtitleCellSubtitleFont(0);
    [detailTextLabel3 setFont:v26];

    v27 = MEMORY[0x1E69B9930];
  }

  else
  {
    v12 = [viewCopy dequeueReusableCellWithIdentifier:@"Address"];
    if (!v12)
    {
      v12 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:3 reuseIdentifier:@"Address"];
    }

    v18 = -[NSArray objectAtIndex:](self->_contactsSearchResults, "objectAtIndex:", [pathCopy row]);
    textLabel5 = [v12 textLabel];
    pk_displayName = [v18 pk_displayName];
    [textLabel5 setText:pk_displayName];

    textLabel6 = [v12 textLabel];
    v31 = PKOBKListSubtitleCellTitleFont();
    [textLabel6 setFont:v31];

    detailTextLabel4 = [v12 detailTextLabel];
    pkSingleLineFormattedContactAddress = [v18 pkSingleLineFormattedContactAddress];
    [detailTextLabel4 setText:pkSingleLineFormattedContactAddress];

    detailTextLabel5 = [v12 detailTextLabel];
    v35 = PKOBKListSubtitleCellSubtitleFont(0);
    [detailTextLabel5 setFont:v35];

    v27 = MEMORY[0x1E69B9620];
  }

  PKAccessibilityIDCellSet(v12, *v27);

LABEL_17:
  if (self->_style == 2)
  {
    v36 = PKBridgeAppearanceGetAppearanceSpecifier();
    PKAppearanceApplyToContainer(v36, v12);
  }

  [v12 setAccessoryType:1];
  v37 = PKProvisioningSecondaryBackgroundColor();
  [v12 setBackgroundColor:v37];

LABEL_20:

  return v12;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v46[1] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  pathCopy = path;
  sectionMapping = self->_sectionMapping;
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(pathCopy, "section")}];
  v10 = [(NSDictionary *)sectionMapping objectForKey:v9];

  if (v10)
  {
    unsignedIntegerValue = [v10 unsignedIntegerValue];
    if (unsignedIntegerValue)
    {
      if (unsignedIntegerValue != 1)
      {
        if (unsignedIntegerValue == 2)
        {
          [(PKAddressSearchModel *)self->_searchModel endSearch];
          WeakRetained = objc_loadWeakRetained(&self->_delegate);
          v13 = objc_opt_respondsToSelector();

          if (v13)
          {
            v14 = 0;
          }

          else
          {
            v26 = objc_alloc_init(MEMORY[0x1E695CF30]);
            searchBar = [(UISearchController *)self->_searchController searchBar];
            text = [searchBar text];
            [v26 setStreet:text];

            v29 = PKCurrentRegion();
            [v26 setISOCountryCode:v29];

            currentLocale = [MEMORY[0x1E695DF58] currentLocale];
            iSOCountryCode = [v26 ISOCountryCode];
            v32 = PKLocalizedStringForCountryCode();

            [v26 setCountry:v32];
            v33 = MEMORY[0x1E695CEE0];
            v34 = PKLocalizedPaymentString(&cfstr_InAppPaymentDe_0.isa);
            v35 = [v26 copy];
            v36 = [v33 labeledValueWithLabel:v34 value:v35];

            v37 = MEMORY[0x1E695CD58];
            v46[0] = v36;
            v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:1];
            v14 = [v37 pkContactWithNameComponents:0 postalAddresses:v38 emailAddresses:0 phoneNumbers:0];
          }

          [(PKAddressSearcherViewController *)self _showAddressEditorWithContact:v14 withContactErrors:0];
        }

        goto LABEL_32;
      }

      pkContactWithCleanedUpCountryCode = -[NSArray objectAtIndex:](self->_completionSearchResults, "objectAtIndex:", [pathCopy row]);
      [(PKAddressSearchModel *)self->_searchModel selectMapSearchCompletion:pkContactWithCleanedUpCountryCode];
LABEL_31:

LABEL_32:
      [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
      goto LABEL_33;
    }

    v16 = -[NSArray objectAtIndex:](self->_contactsSearchResults, "objectAtIndex:", [pathCopy row]);
    pkContactWithCleanedUpCountryCode = [v16 pkContactWithCleanedUpCountryCode];

    postalAddresses = [pkContactWithCleanedUpCountryCode postalAddresses];
    firstObject = [postalAddresses firstObject];

    value = [firstObject value];
    iSOCountryCode2 = [value ISOCountryCode];
    v21 = [(PKContactFormatValidator *)self->_contactFormatValidator checkPostalAddressFormat:value];
    if ([iSOCountryCode2 length] == 2)
    {
      v44 = firstObject;
      if ([iSOCountryCode2 caseInsensitiveCompare:@"cn"] || (objc_msgSend(value, "subLocality"), v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v22, "length"), v22, v23))
      {
        if (!v21)
        {
          firstObject = v44;
          if ([(PKAddressSearcherViewController *)self _validateContact:pkContactWithCleanedUpCountryCode])
          {
            v39 = objc_loadWeakRetained(&self->_delegate);
            if (v39)
            {
              v40 = v39;
              v41 = objc_loadWeakRetained(&self->_delegate);
              v42 = objc_opt_respondsToSelector();

              if (v42)
              {
                delegate = [(PKAddressSearcherViewController *)self delegate];
                [delegate addressSearcherViewController:self selectedContact:pkContactWithCleanedUpCountryCode];
              }
            }

            [(PKAddressSearcherViewController *)self _processNextViewController];
            firstObject = v44;
          }

          goto LABEL_30;
        }

        v24 = PKLogFacilityTypeGetObject();
        firstObject = v44;
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1BD026000, v24, OS_LOG_TYPE_DEFAULT, "Selected address has invalid format", buf, 2u);
        }

        goto LABEL_28;
      }

      v25 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1BD026000, v25, OS_LOG_TYPE_DEFAULT, "Selected address was in China and missing a sublocality, redirecting to the edit flow for confirmation", buf, 2u);
      }

      firstObject = v44;
    }

    else
    {
      v25 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1BD026000, v25, OS_LOG_TYPE_DEFAULT, "Unable to derive a country code, redirecting to the edit flow for confirmation", buf, 2u);
      }
    }

    if (!v21)
    {
LABEL_29:
      [(PKAddressSearcherViewController *)self _showAddressEditorWithContact:pkContactWithCleanedUpCountryCode withContactErrors:v21];

LABEL_30:
      goto LABEL_31;
    }

LABEL_28:
    v21 = PKContactFormatErrorsFromShippingAddressFormatErrors();
    goto LABEL_29;
  }

LABEL_33:
}

- (void)updateSearchResultsForSearchController:(id)controller
{
  searchBar = [controller searchBar];
  text = [searchBar text];

  [(PKAddressSearchModel *)self->_searchModel endSearch];
  if ([text length])
  {
    v6 = [objc_alloc(MEMORY[0x1E69B8530]) initWithFullText:text];
    [v6 setOutputKey:*MEMORY[0x1E695C360]];
    [(PKAddressSearchModel *)self->_searchModel beginSearch:v6];
  }

  else
  {
    objc_initWeak(&location, self);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __74__PKAddressSearcherViewController_updateSearchResultsForSearchController___block_invoke;
    v7[3] = &unk_1E8010998;
    objc_copyWeak(&v8, &location);
    dispatch_async(MEMORY[0x1E69E96A0], v7);
    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

void __74__PKAddressSearcherViewController_updateSearchResultsForSearchController___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained[145];
    WeakRetained[145] = 0;
    v5 = WeakRetained;

    v3 = v5[146];
    v5[146] = 0;

    [v5 _updateSectionMapping];
    v4 = [v5 tableView];
    [v4 reloadData];

    WeakRetained = v5;
  }
}

- (void)mapSearchUpdated:(id)updated
{
  v13 = *MEMORY[0x1E69E9840];
  completionSearchResults = [updated completionSearchResults];
  v5 = [completionSearchResults copy];

  v6 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = v5;
    _os_log_impl(&dword_1BD026000, v6, OS_LOG_TYPE_DEFAULT, "Map search updated: %@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __52__PKAddressSearcherViewController_mapSearchUpdated___block_invoke;
  v8[3] = &unk_1E80110E0;
  objc_copyWeak(&v10, buf);
  v9 = v5;
  v7 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v8);

  objc_destroyWeak(&v10);
  objc_destroyWeak(buf);
}

void __52__PKAddressSearcherViewController_mapSearchUpdated___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    objc_storeStrong(WeakRetained + 145, *(a1 + 32));
    [v4 _updateSectionMapping];
    v3 = [v4 tableView];
    [v3 reloadData];

    WeakRetained = v4;
  }
}

- (void)contactsSearchUpdated:(id)updated
{
  v13 = *MEMORY[0x1E69E9840];
  contactsSearchResults = [updated contactsSearchResults];
  v5 = [contactsSearchResults copy];

  v6 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = v5;
    _os_log_impl(&dword_1BD026000, v6, OS_LOG_TYPE_DEFAULT, "Contacts search updated: %@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __57__PKAddressSearcherViewController_contactsSearchUpdated___block_invoke;
  v8[3] = &unk_1E80110E0;
  objc_copyWeak(&v10, buf);
  v9 = v5;
  v7 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v8);

  objc_destroyWeak(&v10);
  objc_destroyWeak(buf);
}

void __57__PKAddressSearcherViewController_contactsSearchUpdated___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    objc_storeStrong(WeakRetained + 146, *(a1 + 32));
    [v4 _updateSectionMapping];
    v3 = [v4 tableView];
    [v3 reloadData];

    WeakRetained = v4;
  }
}

- (void)selectedAddress:(id)address withError:(id)error
{
  v9 = *MEMORY[0x1E69E9840];
  addressCopy = address;
  v6 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = addressCopy;
    _os_log_impl(&dword_1BD026000, v6, OS_LOG_TYPE_DEFAULT, "Selected address: %@", &v7, 0xCu);
  }

  [(PKAddressSearcherViewController *)self _showAddressEditorWithContact:addressCopy withContactErrors:0];
}

- (void)addressEditorViewController:(id)controller selectedContact:(id)contact
{
  v16 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  contactCopy = contact;
  v8 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412290;
    v15 = contactCopy;
    _os_log_impl(&dword_1BD026000, v8, OS_LOG_TYPE_DEFAULT, "Editor inputted address: %@", &v14, 0xCu);
  }

  if ([(PKAddressSearcherViewController *)self _validateContact:contactCopy])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (WeakRetained)
    {
      v10 = WeakRetained;
      v11 = objc_loadWeakRetained(&self->_delegate);
      v12 = objc_opt_respondsToSelector();

      if (v12)
      {
        delegate = [(PKAddressSearcherViewController *)self delegate];
        [delegate addressSearcherViewController:self selectedContact:contactCopy];
      }
    }
  }
}

- (void)addressEditorViewControllerDidCancel:(id)cancel
{
  delegate = [(PKAddressSearcherViewController *)self delegate];
  [delegate addressSearcherViewControllerDidCancel:self];
}

- (PKAddressSearcherViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (PKPaymentSetupViewControllerDelegate)setupDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_setupDelegate);

  return WeakRetained;
}

@end