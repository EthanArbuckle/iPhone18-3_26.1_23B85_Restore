@interface PKPaymentSetupOptionsViewController
- (PKPaymentSetupDockView)dockView;
- (PKPaymentSetupOptionsViewController)initWithContext:(int64_t)context;
- (id)_init;
- (int64_t)visibilityBackdropView:(id)view preferredStyleForTraitCollection:(id)collection;
- (void)_addDockViewToCollectionViewIfNeeded;
- (void)_keyboardSizeDidChange:(id)change;
- (void)_scrollToContentAnimated:(BOOL)animated;
- (void)_scrollToTopAnimated:(BOOL)animated;
- (void)_setNavigationBarEnabled:(BOOL)enabled;
- (void)_updateNavigationItem;
- (void)removeSetupDockView;
- (void)scrollViewDidScroll:(id)scroll;
- (void)searchBarCancelButtonClicked;
- (void)searchBarCancelButtonClicked:(id)clicked;
- (void)searchBarTextDidBeginEditing;
- (void)searchBarTextDidEndEditing;
- (void)searchBarTextDidEndEditing:(id)editing;
- (void)searchTextDidChangeTo:(id)to;
- (void)setBackgroundColor:(id)color;
- (void)setHeaderMode:(unint64_t)mode;
- (void)setIsShowingKeyboard:(BOOL)keyboard;
- (void)setNoResultsActionButtonTitle:(id)title target:(id)target action:(SEL)action;
- (void)setNoResultsIcon:(id)icon;
- (void)setNoResultsSubtitle:(id)subtitle;
- (void)setNoResultsTitle:(id)title;
- (void)setPrivacyLink:(id)link;
- (void)setSearchBarDefaultText:(id)text;
- (void)setSections:(id)sections animated:(BOOL)animated;
- (void)setShowHeaderSpinner:(BOOL)spinner;
- (void)setShowNavigationBarSpinner:(BOOL)spinner;
- (void)setShowNoResultsView:(BOOL)view animated:(BOOL)animated;
- (void)setShowSearchBar:(BOOL)bar;
- (void)setSubtitleText:(id)text;
- (void)setTitleFont:(id)font;
- (void)setTitleText:(id)text;
- (void)updateSearchResultsForSearchController:(id)controller;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillLayoutSubviews;
@end

@implementation PKPaymentSetupOptionsViewController

- (id)_init
{
  v21.receiver = self;
  v21.super_class = PKPaymentSetupOptionsViewController;
  v2 = [(PKDynamicCollectionViewController *)&v21 init];
  v3 = v2;
  if (v2)
  {
    v2->_shouldCollapseHeaderOnKeyboardShow = 1;
    currentSearchText = v2->_currentSearchText;
    v2->_currentSearchText = &stru_1F3BD7330;

    v3->_headerMode = 0;
    v5 = [PKCollapsibleHeaderView alloc];
    v6 = *MEMORY[0x1E695F058];
    v7 = *(MEMORY[0x1E695F058] + 8);
    v8 = *(MEMORY[0x1E695F058] + 16);
    v9 = *(MEMORY[0x1E695F058] + 24);
    v10 = [(PKCollapsibleHeaderView *)v5 initWithFrame:*MEMORY[0x1E695F058], v7, v8, v9];
    headerView = v3->_headerView;
    v3->_headerView = v10;

    v12 = v3->_headerView;
    PKSetupViewConstantsViewMargin();
    UIEdgeInsetsMakeWithEdges();
    [(PKCollapsibleHeaderView *)v12 setReadableContentInsets:?];
    [(PKCollapsibleHeaderView *)v3->_headerView setDelegate:v3];
    if (_UISolariumFeatureFlagEnabled())
    {
      v13 = objc_alloc_init(PKPaymentSetupOptionsHeaderSectionController);
      headerSectionController = v3->_headerSectionController;
      v3->_headerSectionController = v13;

      [(PKPaymentSetupOptionsHeaderSectionController *)v3->_headerSectionController setHeader:v3->_headerView];
    }

    v15 = [[PKPaymentSetupNoResultsView alloc] initWithFrame:v6, v7, v8, v9];
    noResultsView = v3->_noResultsView;
    v3->_noResultsView = v15;

    layer = [(PKPaymentSetupNoResultsView *)v3->_noResultsView layer];
    [layer setOpacity:0.0];

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel__keyboardSizeDidChange_ name:*MEMORY[0x1E69DE080] object:0];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:v3 selector:sel__addDockViewToCollectionViewIfNeeded name:*MEMORY[0x1E69DDC48] object:0];
  }

  return v3;
}

- (PKPaymentSetupOptionsViewController)initWithContext:(int64_t)context
{
  result = [(PKPaymentSetupOptionsViewController *)self _init];
  if (result)
  {
    result->_context = context;
    result->_allowsManualEntry = 1;
    result->_paymentSetupMode = 0;
  }

  return result;
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = PKPaymentSetupOptionsViewController;
  [(PKDynamicCollectionViewController *)&v6 viewDidLoad];
  view = [(PKPaymentSetupOptionsViewController *)self view];
  if (!self->_backgroundColor)
  {
    systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
    [(PKPaymentSetupOptionsViewController *)self setBackgroundColor:systemBackgroundColor];
  }

  if ((_UISolariumFeatureFlagEnabled() & 1) == 0)
  {
    [view addSubview:self->_headerView];
  }

  if (self->_blurringView)
  {
    [view bringSubviewToFront:?];
  }

  [view addSubview:self->_noResultsView];
  navigationItem = [(PKPaymentSetupOptionsViewController *)self navigationItem];
  if ((_UISolariumEnabled() & 1) == 0)
  {
    [navigationItem pkui_setupScrollEdgeChromelessAppearance];
    [navigationItem pkui_enableManualScrollEdgeAppearanceWithInitialProgress:0.0];
  }

  [(PKPaymentSetupOptionsViewController *)self _updateNavigationItem];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = PKPaymentSetupOptionsViewController;
  [(PKDynamicCollectionViewController *)&v4 viewDidAppear:appear];
  self->_viewDidAppear = 1;
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = PKPaymentSetupOptionsViewController;
  [(PKDynamicCollectionViewController *)&v4 viewWillAppear:appear];
  [(PKPaymentSetupOptionsViewController *)self _addDockViewToCollectionViewIfNeeded];
  [(PKPaymentSetupOptionsViewController *)self _updateNavigationItem];
}

- (void)viewWillLayoutSubviews
{
  v83.receiver = self;
  v83.super_class = PKPaymentSetupOptionsViewController;
  [(PKDynamicCollectionViewController *)&v83 viewWillLayoutSubviews];
  view = [(PKPaymentSetupOptionsViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [view safeAreaInsets];
  v71 = v12;
  v14 = v13;
  collectionView = [(PKDynamicCollectionViewController *)self collectionView];
  [collectionView frame];
  v17 = v16;
  v19 = v18;
  v78 = v21;
  v79 = v20;
  [collectionView contentOffset];
  v75 = v23;
  v76 = v22;
  [collectionView contentInset];
  v77 = v24;
  v25 = MEMORY[0x1E69DDCE0];
  dockView = self->_dockView;
  if (dockView)
  {
    v73 = v19;
    [(PKPaymentSetupDockView *)dockView sizeThatFits:v9, 1.79769313e308];
    v80 = v28;
    if (self->_blurringView)
    {
      v29 = v27;
      v30 = v17;
      v31 = v14 + v28;
      v84.origin.x = v5;
      v84.origin.y = v7;
      v84.size.width = v9;
      v84.size.height = v11;
      v32 = 0.0;
      [(_PKVisibilityBackdropView *)self->_blurringView setFrame:0.0, CGRectGetMaxY(v84) - v31, v9, v31];
      [(_PKVisibilityBackdropView *)self->_blurringView layoutIfNeeded];
      v33 = v80;
      v34 = (v9 - v29) * 0.5;
    }

    else
    {
      v30 = v17;
      v85.origin.x = v5;
      v85.origin.y = v7;
      v85.size.width = v9;
      v85.size.height = v11;
      MaxY = CGRectGetMaxY(v85);
      v33 = v80;
      v32 = MaxY - v80;
      v34 = 0.0;
      v29 = v9;
    }

    [(PKPaymentSetupDockView *)self->_dockView setFrame:v34, v32, v29, v33];
    [(PKPaymentSetupDockView *)self->_dockView layoutIfNeeded];
    [collectionView bounds];
    v37 = v36;
    v39 = v38;
    v41 = v40;
    v43 = v42;
    [collectionView contentSize];
    v45 = fmin(v43, v44 - v39);
    [(_PKVisibilityBackdropView *)self->_blurringView bounds];
    [collectionView convertRect:self->_blurringView fromView:?];
    v47 = v46;
    v86.origin.x = v37;
    v86.origin.y = v39;
    v86.size.width = v41;
    v86.size.height = v45;
    v48 = fmin(fmax(CGRectGetMaxY(v86) - v47, 0.0), 30.0) / 30.0;
    if (self->_backdropWeight != v48)
    {
      self->_backdropWeight = v48;
      [(_PKVisibilityBackdropView *)self->_blurringView pkui_setVisibility:0 animated:?];
    }

    v17 = v30;
    v19 = v73;
  }

  else
  {
    v80 = *(MEMORY[0x1E69DDCE0] + 16);
  }

  if (self->_headerMode)
  {
    [(PKCollapsibleHeaderView *)self->_headerView setFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    v49 = 0.0;
LABEL_12:
    v50 = 0.0;
    goto LABEL_13;
  }

  v49 = 0.0;
  if (_UISolariumFeatureFlagEnabled())
  {
    goto LABEL_12;
  }

  v68 = v71 + self->_headerHeight;
  [(PKCollapsibleHeaderView *)self->_headerView setFrame:v5, v19, v9, v68];
  v89.origin.x = v5;
  v89.origin.y = v19;
  v89.size.width = v9;
  v89.size.height = v68;
  v19 = CGRectGetMaxY(v89);
  headerView = self->_headerView;
  PKSetupViewConstantsViewMargin();
  UIEdgeInsetsMakeWithEdges();
  [(PKCollapsibleHeaderView *)headerView setReadableContentInsets:?];
  v70 = self->_headerView;
  if (v70)
  {
    [(PKCollapsibleHeaderView *)v70 heightBoundsForWidth:v9];
    v49 = v81;
    v50 = v82;
  }

  else
  {
    v50 = 0.0;
    v49 = 0.0;
  }

LABEL_13:
  v51 = *(v25 + 8);
  v52 = *(v25 + 24);
  if (self->_isShowingKeyboard && +[PKPaymentSetupOptionsViewController _respondToKeyboardPresentationEvents])
  {
    if (self->_shouldCollapseHeaderOnKeyboardShow)
    {
      v50 = v49;
    }

    view2 = [(PKPaymentSetupOptionsViewController *)self view];
    [view2 convertRect:0 fromView:{self->_keyboardFrame.origin.x, self->_keyboardFrame.origin.y, self->_keyboardFrame.size.width, self->_keyboardFrame.size.height}];
    v72 = v54;
    v74 = v17;
    v56 = v55;
    v58 = v57;
    v60 = v59;

    [collectionView frame];
    v61 = v19;
    v62 = CGRectGetMaxY(v87);
    v88.origin.y = v56;
    v88.origin.x = v72;
    v17 = v74;
    v88.size.width = v58;
    v88.size.height = v60;
    v63 = v62 - CGRectGetMinY(v88);
    v19 = v61;
    v80 = fmax(v80, v63 + 10.0);
  }

  [(PKPaymentSetupOptionsViewController *)self footerViewContentHeight];
  v65 = v80 + v64;
  [collectionView setContentInset:{v50, v51, v80 + v64, v52}];
  v66 = v77 - v50;
  if (v77 - v50 != 0.0)
  {
    [collectionView setContentOffset:{v76, v75 + v66}];
  }

  [collectionView adjustedContentInset];
  [(PKPaymentSetupNoResultsView *)self->_noResultsView setFrame:v17, v19, v79, v78 - v67 - v65];
}

- (void)setHeaderMode:(unint64_t)mode
{
  if (self->_headerMode != mode)
  {
    self->_headerMode = mode;
    [(PKPaymentSetupOptionsViewController *)self _updateNavigationItem];
    [(PKPaymentSetupOptionsHeaderSectionController *)self->_headerSectionController setHidden:self->_headerMode != 0];
    headerSectionController = self->_headerSectionController;

    [(PKDynamicCollectionViewController *)self reloadDataForSection:headerSectionController animated:1];
  }
}

- (void)setTitleFont:(id)font
{
  fontCopy = font;
  titleFont = [(PKCollapsibleHeaderView *)self->_headerView titleFont];
  v5 = [titleFont isEqual:fontCopy];

  if ((v5 & 1) == 0)
  {
    [(PKCollapsibleHeaderView *)self->_headerView setTitleFont:fontCopy];
  }
}

- (void)setTitleText:(id)text
{
  textCopy = text;
  if (![(NSString *)self->_titleText isEqualToString:?])
  {
    objc_storeStrong(&self->_titleText, text);
    [(PKCollapsibleHeaderView *)self->_headerView setTitle:self->_titleText subtitle:self->_subtitleText];
    view = [(PKPaymentSetupOptionsViewController *)self view];
    [view setNeedsLayout];
  }
}

- (void)setSubtitleText:(id)text
{
  textCopy = text;
  if (![(NSString *)self->_subtitleText isEqualToString:?])
  {
    objc_storeStrong(&self->_subtitleText, text);
    [(PKCollapsibleHeaderView *)self->_headerView setTitle:self->_titleText subtitle:self->_subtitleText];
    view = [(PKPaymentSetupOptionsViewController *)self view];
    [view setNeedsLayout];
  }
}

- (void)setShowSearchBar:(BOOL)bar
{
  if (self->_showSearchBar == !bar)
  {
    barCopy = bar;
    self->_showSearchBar = bar;
    if (_UISolariumFeatureFlagEnabled())
    {
      navigationItem = [(PKPaymentSetupOptionsViewController *)self navigationItem];
      v11 = navigationItem;
      if (self->_showSearchBar)
      {
        v6 = navigationItem;
        if (!self->_searchController)
        {
          v7 = [objc_alloc(MEMORY[0x1E69DCF10]) initWithSearchResultsController:0];
          searchController = self->_searchController;
          self->_searchController = v7;

          [(UISearchController *)self->_searchController setDelegate:self];
          [(UISearchController *)self->_searchController setSearchResultsUpdater:self];
          [(UISearchController *)self->_searchController setHidesNavigationBarDuringPresentation:0];
          [(UISearchController *)self->_searchController setAutomaticallyShowsCancelButton:1];
          searchBar = [(UISearchController *)self->_searchController searchBar];
          [searchBar setDelegate:self];
          [searchBar setSearchBarStyle:2];

          v6 = v11;
        }

        [v6 setHidesSearchBarWhenScrolling:0];
        [(PKPaymentSetupOptionsViewController *)self setDefinesPresentationContext:1];
      }

      else
      {
        [(PKPaymentSetupOptionsViewController *)self setDefinesPresentationContext:0];
      }

      [v11 setSearchController:self->_searchController];
    }

    else
    {
      headerView = self->_headerView;

      [(PKCollapsibleHeaderView *)headerView setShowSearchBar:barCopy];
    }
  }
}

- (void)setBackgroundColor:(id)color
{
  colorCopy = color;
  if (self->_backgroundColor != colorCopy)
  {
    v8 = colorCopy;
    objc_storeStrong(&self->_backgroundColor, color);
    view = [(PKPaymentSetupOptionsViewController *)self view];
    [view setBackgroundColor:v8];

    collectionView = [(PKDynamicCollectionViewController *)self collectionView];
    [collectionView setBackgroundColor:v8];

    colorCopy = v8;
  }
}

- (void)setShowNoResultsView:(BOOL)view animated:(BOOL)animated
{
  v4 = !view;
  if (self->_showNoResultsView == !view)
  {
    animatedCopy = animated;
    self->_showNoResultsView = view;
    [(UIView *)self->_noResultsView pkui_setAlpha:animated animated:view];
    collectionView = [(PKDynamicCollectionViewController *)self collectionView];
    [collectionView pkui_setAlpha:animatedCopy animated:v4];
  }
}

- (void)setNoResultsIcon:(id)icon
{
  [(PKPaymentSetupNoResultsView *)self->_noResultsView setIcon:icon];
  view = [(PKPaymentSetupOptionsViewController *)self view];
  [view setNeedsLayout];
}

- (void)setNoResultsTitle:(id)title
{
  [(PKPaymentSetupNoResultsView *)self->_noResultsView setTitle:title];
  view = [(PKPaymentSetupOptionsViewController *)self view];
  [view setNeedsLayout];
}

- (void)setNoResultsSubtitle:(id)subtitle
{
  [(PKPaymentSetupNoResultsView *)self->_noResultsView setSubtitle:subtitle];
  view = [(PKPaymentSetupOptionsViewController *)self view];
  [view setNeedsLayout];
}

- (void)setNoResultsActionButtonTitle:(id)title target:(id)target action:(SEL)action
{
  [(PKPaymentSetupNoResultsView *)self->_noResultsView setActionButtonTitle:title addTarget:target action:action];
  view = [(PKPaymentSetupOptionsViewController *)self view];
  [view setNeedsLayout];
}

- (void)setSearchBarDefaultText:(id)text
{
  searchController = self->_searchController;
  if (searchController)
  {
    textCopy = text;
    textCopy2 = [(UISearchController *)searchController searchBar];
    [textCopy2 setPlaceholder:textCopy];
  }

  else
  {
    headerView = self->_headerView;
    textCopy2 = text;
    [(PKCollapsibleHeaderView *)headerView setSearchBarDefaultText:?];
  }
}

- (PKPaymentSetupDockView)dockView
{
  dockView = self->_dockView;
  if (!dockView)
  {
    view = [(PKPaymentSetupOptionsViewController *)self view];
    v5 = [PKPaymentSetupDockView alloc];
    v6 = *MEMORY[0x1E695F058];
    v7 = *(MEMORY[0x1E695F058] + 8);
    v8 = *(MEMORY[0x1E695F058] + 16);
    v9 = *(MEMORY[0x1E695F058] + 24);
    v10 = [(PKPaymentSetupDockView *)v5 initWithFrame:self->_context context:*MEMORY[0x1E695F058], v7, v8, v9];
    v11 = self->_dockView;
    self->_dockView = v10;

    if (_UISolariumFeatureFlagEnabled())
    {
      v12 = objc_alloc(MEMORY[0x1E69DD6C8]);
      collectionView = [(PKDynamicCollectionViewController *)self collectionView];
      contentView = [v12 initWithScrollView:collectionView edge:4 style:0];

      [(PKPaymentSetupDockView *)self->_dockView addInteraction:contentView];
      [view addSubview:self->_dockView];
    }

    else
    {
      v15 = [[_PKVisibilityBackdropView alloc] initWithFrame:-2 privateStyle:v6, v7, v8, v9];
      blurringView = self->_blurringView;
      self->_blurringView = v15;

      [(_PKVisibilityBackdropView *)self->_blurringView setDelegate:self];
      [(_PKVisibilityBackdropView *)self->_blurringView pkui_setVisibility:0 animated:self->_backdropWeight];
      [(_PKVisibilityBackdropView *)self->_blurringView setUserInteractionEnabled:1];
      contentView = [(_UIBackdropView *)self->_blurringView contentView];
      [contentView addSubview:self->_dockView];
    }

    [view addSubview:self->_blurringView];
    [view setNeedsLayout];

    dockView = self->_dockView;
  }

  return dockView;
}

- (void)removeSetupDockView
{
  [(PKPaymentSetupDockView *)self->_dockView removeFromSuperview];
  [(_PKVisibilityBackdropView *)self->_blurringView removeFromSuperview];
  blurringView = self->_blurringView;
  self->_blurringView = 0;

  dockView = self->_dockView;
  self->_dockView = 0;

  view = [(PKPaymentSetupOptionsViewController *)self view];
  [view setNeedsLayout];
}

- (void)setShowHeaderSpinner:(BOOL)spinner
{
  if (self->_showHeaderSpinner == !spinner)
  {
    self->_showHeaderSpinner = spinner;
    [(PKCollapsibleHeaderView *)self->_headerView setShowSpinner:?];
  }
}

- (void)setShowNavigationBarSpinner:(BOOL)spinner
{
  if (self->_showNavigationBarSpinner != spinner)
  {
    spinnerCopy = spinner;
    self->_showNavigationBarSpinner = spinner;
    navigationController = [(PKPaymentSetupOptionsViewController *)self navigationController];
    view = [navigationController view];
    v7 = view;
    if (view)
    {
      view2 = view;
    }

    else
    {
      view2 = [(PKPaymentSetupOptionsViewController *)self view];
    }

    v18 = view2;

    [v18 setUserInteractionEnabled:!spinnerCopy];
    [(PKPaymentSetupDockView *)self->_dockView setButtonsEnabled:!spinnerCopy];
    navigationItem = [(PKPaymentSetupOptionsViewController *)self navigationItem];
    v10 = navigationItem;
    if (self->_showNavigationBarSpinner)
    {
      self->_wasBackHidden = [navigationItem hidesBackButton];
      rightBarButtonItem = [v10 rightBarButtonItem];
      hiddenRightBarButtonItem = self->_hiddenRightBarButtonItem;
      self->_hiddenRightBarButtonItem = rightBarButtonItem;

      if (!self->_spinningNavBarItem)
      {
        v14 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
        activityIndicatorView = self->_activityIndicatorView;
        self->_activityIndicatorView = v14;

        v16 = [objc_alloc(MEMORY[0x1E69DC708]) initWithCustomView:self->_activityIndicatorView];
        spinningNavBarItem = self->_spinningNavBarItem;
        self->_spinningNavBarItem = v16;
      }

      [(UIActivityIndicatorView *)self->_activityIndicatorView startAnimating];
      [v10 setRightBarButtonItem:self->_spinningNavBarItem];
      wasBackHidden = 1;
    }

    else
    {
      [(UIActivityIndicatorView *)self->_activityIndicatorView stopAnimating];
      [v10 setRightBarButtonItem:self->_hiddenRightBarButtonItem];
      wasBackHidden = self->_wasBackHidden;
    }

    [v10 setHidesBackButton:wasBackHidden];
    [(PKPaymentSetupOptionsViewController *)self _setNavigationBarEnabled:!spinnerCopy];
    [v18 setNeedsLayout];
  }
}

- (void)_setNavigationBarEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  navigationController = [(PKPaymentSetupOptionsViewController *)self navigationController];
  navigationBar = [navigationController navigationBar];
  [navigationBar setUserInteractionEnabled:enabledCopy];

  interactivePopGestureRecognizer = [navigationController interactivePopGestureRecognizer];
  [interactivePopGestureRecognizer setEnabled:enabledCopy];

  navigationItem = [(PKPaymentSetupOptionsViewController *)self navigationItem];
  leftBarButtonItem = [navigationItem leftBarButtonItem];
  [leftBarButtonItem setEnabled:enabledCopy];

  rightBarButtonItem = [navigationItem rightBarButtonItem];
  [rightBarButtonItem setEnabled:enabledCopy];
}

- (void)setPrivacyLink:(id)link
{
  linkCopy = link;
  if ((PKEqualObjects() & 1) == 0)
  {
    privacyLink = self->_privacyLink;
    if (privacyLink)
    {
      [(OBPrivacyLinkController *)privacyLink willMoveToParentViewController:0];
      view = [(OBPrivacyLinkController *)self->_privacyLink view];
      [view removeFromSuperview];

      [(OBPrivacyLinkController *)self->_privacyLink removeFromParentViewController];
    }

    objc_storeStrong(&self->_privacyLink, link);
    if (self->_privacyLink)
    {
      [(PKPaymentSetupOptionsViewController *)self addChildViewController:?];
    }

    [(PKPaymentSetupOptionsViewController *)self _addDockViewToCollectionViewIfNeeded];
    [(OBPrivacyLinkController *)self->_privacyLink didMoveToParentViewController:self];
  }
}

- (void)setSections:(id)sections animated:(BOOL)animated
{
  animatedCopy = animated;
  v6 = [sections mutableCopy];
  v7 = v6;
  headerSectionController = self->_headerSectionController;
  if (headerSectionController)
  {
    [v6 insertObject:headerSectionController atIndex:0];
  }

  [v7 safelyAddObject:self->_privacyLinkSectionController];
  v9 = [v7 copy];
  v10.receiver = self;
  v10.super_class = PKPaymentSetupOptionsViewController;
  [(PKDynamicCollectionViewController *)&v10 setSections:v9 animated:animatedCopy];
}

- (void)setIsShowingKeyboard:(BOOL)keyboard
{
  if (self->_isShowingKeyboard != keyboard)
  {
    v6[7] = v3;
    v6[8] = v4;
    self->_isShowingKeyboard = keyboard;
    if (+[PKPaymentSetupOptionsViewController _respondToKeyboardPresentationEvents])
    {
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __60__PKPaymentSetupOptionsViewController_setIsShowingKeyboard___block_invoke;
      v6[3] = &unk_1E8010970;
      v6[4] = self;
      [MEMORY[0x1E69DD250] animateWithDuration:v6 animations:0.25];
    }
  }
}

void __60__PKPaymentSetupOptionsViewController_setIsShowingKeyboard___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 setNeedsLayout];

  v3 = [*(a1 + 32) view];
  [v3 layoutIfNeeded];
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  if (self->_headerMode)
  {
    if ((_UISolariumEnabled() & 1) == 0)
    {
      navigationItem = [(PKPaymentSetupOptionsViewController *)self navigationItem];
      [navigationItem pkui_enableManualScrollEdgeAppearanceWithInitialProgress:1.0];
LABEL_4:
    }
  }

  else
  {
    if (_UISolariumFeatureFlagEnabled())
    {
      item = [(PKPaymentSetupOptionsHeaderSectionController *)self->_headerSectionController item];
      navigationItem = [(PKDynamicCollectionViewController *)self cellLayoutAttributesForItem:item];

      if (navigationItem)
      {
        [navigationItem frame];
        v9 = v8;
        [scrollCopy contentOffset];
        v11 = v10;
        view = [(PKPaymentSetupOptionsViewController *)self view];
        [view safeAreaInsets];
        v14 = v13;

        v15 = v11 + v14;
        v49 = 0.0;
        v47 = 0u;
        v48 = 0u;
        headerView = self->_headerView;
        [(PKCollapsibleHeaderView *)headerView bounds];
        if (headerView)
        {
          [(PKCollapsibleHeaderView *)headerView heightBoundsForWidth:v17];
          v18 = *&v48;
        }

        else
        {
          v49 = 0.0;
          v18 = 0.0;
          v47 = 0u;
          v48 = 0u;
        }

        v39 = v15 - v9;
        v46.receiver = self;
        v46.super_class = PKPaymentSetupOptionsViewController;
        title = [(PKPaymentSetupOptionsViewController *)&v46 title];
        v41 = title != 0;

        if (v18 <= v39 != v41)
        {
          if (v18 > v39)
          {
            titleText = 0;
          }

          else
          {
            titleText = self->_titleText;
          }

          v45.receiver = self;
          v45.super_class = PKPaymentSetupOptionsViewController;
          [(PKPaymentSetupOptionsViewController *)&v45 setTitle:titleText];
        }
      }

      goto LABEL_4;
    }

    [scrollCopy contentOffset];
    v20 = v19;
    view2 = [(PKPaymentSetupOptionsViewController *)self view];
    [view2 safeAreaInsets];
    v23 = v22;

    v24 = v20 + v23;
    v49 = 0.0;
    v47 = 0u;
    v48 = 0u;
    v25 = self->_headerView;
    [(PKCollapsibleHeaderView *)v25 bounds];
    if (v25)
    {
      [(PKCollapsibleHeaderView *)v25 heightBoundsForWidth:v26];
      v27 = *&v47;
      v28 = v49;
    }

    else
    {
      v49 = 0.0;
      v28 = 0.0;
      v27 = 0.0;
      v47 = 0u;
      v48 = 0u;
    }

    headerHeight = self->_headerHeight;
    if (v27 == 0.0)
    {
      v27 = -v23;
    }

    v30 = fmin(v28, fmax(-v24, v27));
    if (v30 != headerHeight)
    {
      self->_headerHeight = v30;
      v31 = v28 - v30;
      if (headerHeight == 0.0)
      {
        v32 = 0.0;
      }

      else
      {
        v32 = v31;
      }

      if ((_UISolariumFeatureFlagEnabled() & 1) == 0)
      {
        navigationItem2 = [(PKPaymentSetupOptionsViewController *)self navigationItem];
        [navigationItem2 _setManualScrollEdgeAppearanceProgress:{fmin(fmax((v32 - *(&v47 + 1)) / 20.0, 0.0), 1.0)}];
      }

      v34 = *&v48;
      v35 = *&v48 <= v32;
      v44.receiver = self;
      v44.super_class = PKPaymentSetupOptionsViewController;
      title2 = [(PKPaymentSetupOptionsViewController *)&v44 title];
      v37 = title2 != 0;

      if (v35 != v37)
      {
        if (v34 > v32)
        {
          v38 = 0;
        }

        else
        {
          v38 = self->_titleText;
        }

        v43.receiver = self;
        v43.super_class = PKPaymentSetupOptionsViewController;
        [(PKPaymentSetupOptionsViewController *)&v43 setTitle:v38];
      }
    }
  }

  view3 = [(PKPaymentSetupOptionsViewController *)self view];
  [view3 setNeedsLayout];
}

- (void)searchTextDidChangeTo:(id)to
{
  toCopy = to;
  v6 = self->_currentSearchText;
  v7 = toCopy;
  v9 = v7;
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
    objc_storeStrong(&self->_currentSearchText, to);
    [(PKPaymentSetupOptionsViewController *)self _scrollToContentAnimated:1];
  }

LABEL_9:
}

- (void)searchBarTextDidBeginEditing
{
  [(PKPaymentSetupOptionsViewController *)self setIsShowingKeyboard:1];

  [(PKPaymentSetupOptionsViewController *)self _scrollToContentAnimated:1];
}

- (void)searchBarTextDidEndEditing
{
  view = [(PKPaymentSetupOptionsViewController *)self view];
  isUserInteractionEnabled = [view isUserInteractionEnabled];

  if (isUserInteractionEnabled)
  {
    [(PKPaymentSetupOptionsViewController *)self setIsShowingKeyboard:0];

    [(PKPaymentSetupOptionsViewController *)self _scrollToTopAnimated:1];
  }
}

- (void)searchBarCancelButtonClicked
{
  currentSearchText = self->_currentSearchText;
  self->_currentSearchText = &stru_1F3BD7330;

  [(PKPaymentSetupOptionsViewController *)self _scrollToTopAnimated:1];
}

- (int64_t)visibilityBackdropView:(id)view preferredStyleForTraitCollection:(id)collection
{
  collectionCopy = collection;
  if (PKPaymentSetupForceBridgeAppearance() & 1) != 0 || (PKPaymentSetupContextIsBridge())
  {
    v5 = 2030;
  }

  else if ([collectionCopy userInterfaceStyle] == 2)
  {
    v5 = 2030;
  }

  else
  {
    v5 = 2010;
  }

  return v5;
}

- (void)updateSearchResultsForSearchController:(id)controller
{
  controllerCopy = controller;
  if ([controllerCopy isActive])
  {
    searchBar = [controllerCopy searchBar];
    text = [searchBar text];
    [(PKPaymentSetupOptionsViewController *)self searchTextDidChangeTo:text];
  }
}

- (void)searchBarTextDidEndEditing:(id)editing
{
  editingCopy = editing;
  [editingCopy resignFirstResponder];
  [editingCopy setShowsCancelButton:0];

  [(PKPaymentSetupOptionsViewController *)self searchBarTextDidEndEditing];
}

- (void)searchBarCancelButtonClicked:(id)clicked
{
  clickedCopy = clicked;
  [clickedCopy setText:0];
  [clickedCopy resignFirstResponder];

  [(PKPaymentSetupOptionsViewController *)self searchBarCancelButtonClicked];
}

- (void)_keyboardSizeDidChange:(id)change
{
  userInfo = [change userInfo];
  v4 = [userInfo valueForKey:*MEMORY[0x1E69DDFA0]];
  [v4 CGRectValue];
  self->_keyboardFrame.origin.x = v5;
  self->_keyboardFrame.origin.y = v6;
  self->_keyboardFrame.size.width = v7;
  self->_keyboardFrame.size.height = v8;
  view = [(PKPaymentSetupOptionsViewController *)self view];
  [view layoutIfNeeded];
}

- (void)_addDockViewToCollectionViewIfNeeded
{
  privacyLink = self->_privacyLink;
  if (privacyLink)
  {
    v4 = privacyLink;
  }

  else
  {
    privacyLink = [(PKPaymentSetupDockView *)self->_dockView privacyLink];
    if (!privacyLink)
    {
      return;
    }

    v4 = privacyLink;
  }

  [(PKPaymentSetupDockView *)self->_dockView setPrivacyLink:v4];
  view = [(PKPaymentSetupOptionsViewController *)self view];
  [view bounds];
  v8 = v7;
  v10 = v9;

  [(PKPaymentSetupDockView *)self->_dockView sizeThatFits:v8, 1.79769313e308];
  privacyLinkSectionController = self->_privacyLinkSectionController;
  if (v12 <= v10 * 0.5)
  {
    self->_privacyLinkSectionController = 0;

    if (privacyLinkSectionController)
    {
      sections = [(PKDynamicCollectionViewController *)self sections];
      v16 = [sections pk_objectsPassingTest:&__block_literal_global_37];

      [(PKPaymentSetupOptionsViewController *)self setSections:v16 animated:1];
    }
  }

  else
  {
    if (privacyLinkSectionController)
    {
      [(PKPaymentSetupDockView *)self->_dockView setPrivacyLink:0];
      [(PKPaymentSetupPrivacyLinkSectionController *)self->_privacyLinkSectionController setPrivacyLink:v4];
      identifiers = [(PKPaymentSetupListSectionController *)self->_privacyLinkSectionController identifiers];
      firstObject = [identifiers firstObject];
      [(PKDynamicCollectionViewController *)self reloadDataForSectionIdentifier:firstObject animated:1];
    }

    else
    {
      v17 = objc_alloc_init(PKPaymentSetupPrivacyLinkSectionController);
      v18 = self->_privacyLinkSectionController;
      self->_privacyLinkSectionController = v17;

      [(PKPaymentSetupDockView *)self->_dockView setPrivacyLink:0];
      [(PKPaymentSetupPrivacyLinkSectionController *)self->_privacyLinkSectionController setPrivacyLink:v4];
      identifiers = [(PKDynamicCollectionViewController *)self sections];
      firstObject = [identifiers arrayByAddingObject:self->_privacyLinkSectionController];
      v22.receiver = self;
      v22.super_class = PKPaymentSetupOptionsViewController;
      [(PKDynamicCollectionViewController *)&v22 setSections:firstObject animated:1];
    }
  }

  v19 = self->_privacyLink;
  self->_privacyLink = v4;
  v20 = v4;

  collectionView = [(PKDynamicCollectionViewController *)self collectionView];
  [(PKPaymentSetupOptionsViewController *)self scrollViewDidScroll:collectionView];
}

BOOL __75__PKPaymentSetupOptionsViewController__addDockViewToCollectionViewIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return (isKindOfClass & 1) == 0;
}

- (void)_updateNavigationItem
{
  viewIfLoaded = [(PKPaymentSetupOptionsViewController *)self viewIfLoaded];

  if (viewIfLoaded)
  {
    navigationController = [(PKPaymentSetupOptionsViewController *)self navigationController];
    if (navigationController)
    {
      headerMode = self->_headerMode;
      v10 = navigationController;
      navigationBar = [navigationController navigationBar];
      v7 = navigationBar;
      if (headerMode == 2)
      {
        v8 = 1;
        if (([navigationBar prefersLargeTitles] & 1) == 0)
        {
          [v7 setPrefersLargeTitles:1];
        }
      }

      else
      {
        v8 = 2;
      }

      navigationItem = [(PKPaymentSetupOptionsViewController *)self navigationItem];
      if ([navigationItem largeTitleDisplayMode] != v8)
      {
        [navigationItem setLargeTitleDisplayMode:v8];
      }

      navigationController = v10;
    }
  }
}

- (void)_scrollToTopAnimated:(BOOL)animated
{
  animatedCopy = animated;
  collectionView = [(PKDynamicCollectionViewController *)self collectionView];
  [collectionView contentInset];
  v6 = -v5;
  view = [(PKPaymentSetupOptionsViewController *)self view];
  [view safeAreaInsets];
  [collectionView setContentOffset:animatedCopy animated:{0.0, v6 - v8}];
}

- (void)_scrollToContentAnimated:(BOOL)animated
{
  animatedCopy = animated;
  item = [(PKPaymentSetupOptionsHeaderSectionController *)self->_headerSectionController item];
  v13 = [(PKDynamicCollectionViewController *)self cellLayoutAttributesForItem:item];

  if (v13)
  {
    collectionView = [(PKDynamicCollectionViewController *)self collectionView];
    [v13 frame];
    v8 = v7;
    [v13 frame];
    v10 = v8 + v9;
    view = [(PKPaymentSetupOptionsViewController *)self view];
    [view safeAreaInsets];
    [collectionView setContentOffset:animatedCopy animated:{0.0, v10 - v12}];
  }

  else
  {
    [(PKPaymentSetupOptionsViewController *)self _scrollToTopAnimated:animatedCopy];
  }
}

@end