@interface RUIPage
- (BOOL)_shouldShowMultiChoiceElement;
- (BOOL)hasPasscodeView;
- (BOOL)hasSpinnerView;
- (BOOL)hasTableView;
- (BOOL)hasToolbar;
- (BOOL)hasWebView;
- (BOOL)isPrimaryElementNilOrKindOf:(Class)a3;
- (BOOL)navBarIndicatorHidesLeftButton;
- (CGSize)preferredContentSize;
- (NSArray)accessoryViews;
- (NSArray)buttonItems;
- (NSArray)buttons;
- (NSString)activityIndicatorStyle;
- (RUIObjectModel)objectModel;
- (RUIPage)init;
- (RUIPage)initWithAttributes:(id)a3;
- (RUIPage)initWithNibName:(id)a3 bundle:(id)a4;
- (RUIPage)parentPage;
- (RUISpinnerView)spinnerViewOM;
- (RUITableView)tableViewOM;
- (RUITopLevelPageElement)primaryElement;
- (RUIWebView)webViewOM;
- (UIEdgeInsets)customEdgeInsets;
- (UIEdgeInsets)titleLabelPadding;
- (UILabel)titleLabel;
- (UIView)containerView;
- (UIViewController)toolbarContentViewController;
- (id)_childElements;
- (id)elementsWithName:(id)a3;
- (id)flexibleSpace;
- (id)legacyPasscodeViewOM;
- (id)passcodeViewSwiftBridge;
- (id)preferredFocusEnvironments;
- (id)subElementWithID:(id)a3;
- (id)viewForElementIdentifier:(id)a3;
- (unint64_t)supportedInterfaceOrientations;
- (void)_addChildPage:(id)a3;
- (void)_barButtonPressed:(id)a3 isRight:(BOOL)a4 isNavbar:(BOOL)a5;
- (void)_handlePageUpdateRequestedNotification:(id)a3;
- (void)_keyboardWillHide:(id)a3;
- (void)_keyboardWillShow:(id)a3;
- (void)_reloadTitleLabel;
- (void)_setContentInset:(double)a3;
- (void)_updateLoadingUI;
- (void)_updateParentPage;
- (void)_updateToolbar;
- (void)_updateWithCompletedChild:(id)a3;
- (void)addDidAppearBlock:(id)a3;
- (void)addRemoteUIWatermark;
- (void)dealloc;
- (void)deinitSwift;
- (void)dismissIfPresentedWithCompletion:(id)a3;
- (void)initializeSwift;
- (void)loadView;
- (void)notifyPageDidChangePublisher;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)populatePostbackDictionary:(id)a3;
- (void)populatePostbackDictionary:(id)a3 elementProvider:(id)a4;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3;
- (void)publishSMSToken:(id)a3;
- (void)removeKeyboardObservers;
- (void)setBackButtonTitle:(id)a3;
- (void)setButton:(id)a3 enabled:(BOOL)a4;
- (void)setCustomMargin:(double)a3;
- (void)setHasToolbar;
- (void)setHidesBackButton:(BOOL)a3;
- (void)setLeftNavigationBarButton:(id)a3;
- (void)setLeftNavigationBarButtonItem:(id)a3;
- (void)setLeftNavigationBarButtonItem:(id)a3 barButtonItem:(id)a4;
- (void)setLeftToolbarButton:(id)a3;
- (void)setLeftToolbarButtonItem:(id)a3;
- (void)setLoading:(BOOL)a3;
- (void)setLoadingTitle:(id)a3;
- (void)setMiddleToolbarButton:(id)a3;
- (void)setMiddleToolbarButtonItem:(id)a3;
- (void)setNavSubTitle:(id)a3;
- (void)setNavTitle:(id)a3;
- (void)setObjectModel:(id)a3;
- (void)setPageElement:(id)a3;
- (void)setRightNavigationBarButton:(id)a3;
- (void)setRightNavigationBarButtonItem:(id)a3;
- (void)setRightNavigationBarButtonItem:(id)a3 barButtonItem:(id)a4;
- (void)setRightToolbarButton:(id)a3;
- (void)setRightToolbarButtonItem:(id)a3;
- (void)setShowsTitlesAsHeaderViews:(BOOL)a3;
- (void)setTitleLabelPadding:(UIEdgeInsets)a3;
- (void)setToolbarContentViewController:(id)a3;
- (void)setValue:(id)a3 forField:(id)a4;
- (void)setupContainerView;
- (void)startObservingTableView:(id)a3;
- (void)stopObservingTableView;
- (void)topLevelElementProvider:(id)a3 didCreatePasscodeView:(id)a4;
- (void)topLevelElementProvider:(id)a3 didCreateSpinnerView:(id)a4;
- (void)topLevelElementProvider:(id)a3 didCreateTableView:(id)a4;
- (void)topLevelElementProvider:(id)a3 didCreateWebView:(id)a4;
- (void)topLevelElementProvider:(id)a3 didSetPrimaryElement:(id)a4 previousElement:(id)a5;
- (void)traitCollectionDidChange:(id)a3;
- (void)updatePreferredContentSize;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4;
- (void)viewIsAppearing:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation RUIPage

- (RUIPage)initWithAttributes:(id)a3
{
  v4 = a3;
  v5 = [(RUIPage *)self init];
  v6 = v5;
  if (v5)
  {
    [(RUIPage *)v5 setAttributes:v4];
  }

  return v6;
}

- (UIView)containerView
{
  v3 = [(RUIPage *)self style];
  v4 = [v3 usesOnBoardingKitContainer];

  if (v4)
  {
    onBoardingKitContainer = self->_onBoardingKitContainer;
    if (!onBoardingKitContainer)
    {
      v6 = [objc_alloc(MEMORY[0x277D37610]) initWithNibName:0 bundle:0];
      v7 = self->_onBoardingKitContainer;
      self->_onBoardingKitContainer = v6;

      [(RUIPage *)self addChildViewController:self->_onBoardingKitContainer];
      onBoardingKitContainer = self->_onBoardingKitContainer;
    }

    v8 = [(OBBaseWelcomeController *)onBoardingKitContainer view];
  }

  else
  {
    v8 = self->_containerView;
  }

  return v8;
}

- (void)setupContainerView
{
  v28[4] = *MEMORY[0x277D85DE8];
  v3 = [(RUIPage *)self containerView];
  onBoardingKitContainer = self->_onBoardingKitContainer;
  if (onBoardingKitContainer)
  {
    v5 = [(OBBaseWelcomeController *)onBoardingKitContainer view];
    v6 = [v5 superview];

    if (!v6)
    {
      containerView = self->_containerView;
      v8 = [(OBBaseWelcomeController *)self->_onBoardingKitContainer view];
      [(UIView *)containerView addSubview:v8];

      v9 = [(OBBaseWelcomeController *)self->_onBoardingKitContainer view];
      [v9 setTranslatesAutoresizingMaskIntoConstraints:0];

      v20 = MEMORY[0x277CCAAD0];
      v27 = [(OBBaseWelcomeController *)self->_onBoardingKitContainer view];
      v26 = [v27 topAnchor];
      v25 = [(UIView *)self->_containerView topAnchor];
      v24 = [v26 constraintEqualToAnchor:v25];
      v28[0] = v24;
      v23 = [(OBBaseWelcomeController *)self->_onBoardingKitContainer view];
      v22 = [v23 bottomAnchor];
      v21 = [(UIView *)self->_containerView bottomAnchor];
      v19 = [v22 constraintEqualToAnchor:v21];
      v28[1] = v19;
      v18 = [(OBBaseWelcomeController *)self->_onBoardingKitContainer view];
      v10 = [v18 leftAnchor];
      v11 = [(UIView *)self->_containerView leftAnchor];
      v12 = [v10 constraintEqualToAnchor:v11];
      v28[2] = v12;
      v13 = [(OBBaseWelcomeController *)self->_onBoardingKitContainer view];
      v14 = [v13 rightAnchor];
      v15 = [(UIView *)self->_containerView rightAnchor];
      v16 = [v14 constraintEqualToAnchor:v15];
      v28[3] = v16;
      v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:4];
      [v20 activateConstraints:v17];

      [(OBBaseWelcomeController *)self->_onBoardingKitContainer didMoveToParentViewController:self];
    }
  }
}

- (RUIPage)init
{
  v2 = [(RUIPage *)self initWithNibName:0 bundle:0];
  if (v2)
  {
    v3 = +[RUIStyle defaultStyle];
    style = v2->_style;
    v2->_style = v3;

    v5 = [MEMORY[0x277CBEB18] array];
    elementProviders = v2->_elementProviders;
    v2->_elementProviders = v5;
  }

  return v2;
}

- (RUIPage)initWithNibName:(id)a3 bundle:(id)a4
{
  v7.receiver = self;
  v7.super_class = RUIPage;
  v4 = [(RUIPage *)&v7 initWithNibName:0 bundle:0];
  v5 = v4;
  if (v4)
  {
    [(RUIPage *)v4 initializeSwift];
  }

  return v5;
}

- (NSString)activityIndicatorStyle
{
  v2 = [(RUIPage *)self attributes];
  v3 = [v2 objectForKeyedSubscript:@"activityIndicatorStyle"];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = @"activeElement";
  }

  v6 = v5;

  return &v5->isa;
}

- (void)setLoading:(BOOL)a3
{
  if (self->_loading != a3)
  {
    self->_loading = a3;
    [(RUIPage *)self _updateLoadingUI];
  }
}

- (void)setLoadingTitle:(id)a3
{
  if (self->_loadingTitle != a3)
  {
    v4 = [a3 copy];
    loadingTitle = self->_loadingTitle;
    self->_loadingTitle = v4;

    [(RUIPage *)self _updateLoadingUI];
  }
}

- (BOOL)navBarIndicatorHidesLeftButton
{
  v2 = [(RUIBarButtonItem *)self->_leftNavigationBarButtonItem itemType];
  v3 = [v2 isEqualToString:@"titleBarItem"];

  return v3 ^ 1;
}

- (void)updatePreferredContentSize
{
  v60 = *MEMORY[0x277D85DE8];
  if ([(RUIPage *)self isPrimaryElementNilOrKindOf:objc_opt_class()])
  {
    v3 = [(RUIPage *)self navigationController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v5 = [(RUIPage *)self navigationController];
      if ([v5 ruiModalPresentationStyle] == 2 && -[RUIPage hasTableView](self, "hasTableView"))
      {
        v6 = [(RUIPage *)self tableViewOM];
        v7 = [v6 tableView];
        [v7 frame];
        v9 = v8;
        v11 = v10;
        v13 = v12;
        v15 = v14;

        v16 = [(RUIPage *)self tableViewOM];
        v17 = [v16 tableView];
        [v17 beginUpdates];

        v18 = [(RUIPage *)self tableViewOM];
        v19 = [v18 tableView];
        [v19 endUpdates];

        v20 = [(RUIPage *)self tableViewOM];
        v21 = [v20 tableView];
        [v21 layoutIfNeeded];

        v22 = [(RUIPage *)self containerView];
        v23 = [(RUIPage *)self containerView];
        [v22 convertRect:v23 fromView:{v9, v11, v13, v15}];
        v25 = v24;

        v26 = [(RUIPage *)self elementProvider];
        v27 = [v26 tableViewOM];
        v28 = [v27 tableView];
        [v28 contentSize];
        v30 = v29;
        v31 = [(RUIPage *)self elementProvider];
        v32 = [v31 tableViewOM];
        v33 = [v32 tableView];
        [v33 contentInset];
        v35 = v34;
        v36 = v25 + v30;

        if (_isInternalInstall())
        {
          v37 = _RUILoggingFacility();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
            v38 = [(RUIPage *)self elementProvider];
            v39 = [v38 tableViewOM];
            v40 = [v39 tableView];
            [v40 window];
            v41 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
            v58 = 138412290;
            v59 = v41;
            _os_log_impl(&dword_21B93D000, v37, OS_LOG_TYPE_DEFAULT, ">> window: %@", &v58, 0xCu);
          }
        }

        v42 = v36 + v35;
        if (_isInternalInstall())
        {
          v43 = _RUILoggingFacility();
          if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
          {
            v44 = [(RUIPage *)self elementProvider];
            v45 = [v44 tableViewOM];
            v46 = [v45 tableView];
            [v46 adjustedContentInset];
            v58 = 134217984;
            v59 = v47;
            _os_log_impl(&dword_21B93D000, v43, OS_LOG_TYPE_DEFAULT, ">> adjustedContentInset: %f", &v58, 0xCu);
          }
        }

        v48 = v42 + 0.0;
        if (_isInternalInstall())
        {
          v49 = _RUILoggingFacility();
          if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
          {
            v58 = 134217984;
            v59 = v42 + 0.0;
            _os_log_impl(&dword_21B93D000, v49, OS_LOG_TYPE_DEFAULT, ">> preferredContentSize: %f", &v58, 0xCu);
          }
        }

        [(RUIPage *)self preferredContentSize];
        if (v51 != v13 || v50 != v42)
        {
          [(RUIPage *)self setPreferredContentSize:v13, v48];
        }

        v52 = [(RUIPage *)self navigationController];
        [v52 preferredContentSize];
        v54 = v53;
        v56 = v55;

        if (v54 != v13 || v56 != v42)
        {
          v57 = [(RUIPage *)self navigationController];
          [v57 setPreferredContentSize:{v13, v48}];
        }
      }
    }
  }
}

- (void)_updateLoadingUI
{
  v39 = self->_navTitle;
  v3 = self->_navSubTitle;
  v4 = [(RUIPage *)self activityIndicatorStyle];
  v5 = [v4 isEqualToString:@"navbar"];

  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v7 = [(RUIPage *)self activityIndicatorStyle];
    v8 = [v7 isEqualToString:@"default"];

    if (v8)
    {
      v9 = [(RUIPage *)self objectModel];
      v10 = [v9 activeElement];
      v6 = [v10 wantsInlineActivityIndicator] ^ 1;
    }

    else
    {
      v6 = 0;
    }
  }

  if ([(NSString *)self->_loadingTitle length]&& (self->_loading & v6 & 1) != 0)
  {
    v11 = self->_loadingTitle;

    v39 = v11;
  }

  v12 = [(RUIPage *)self style];
  v13 = [(RUIPage *)self navigationItem];
  [v12 applyToNavigationItem:v13];

  if (!self->_showsTitlesAsHeaderViews || ![(RUIPage *)self hasTableView]&& ![(RUIPage *)self hasPasscodeView]&& ([(RUIPage *)self primaryElement], v14 = objc_claimAutoreleasedReturnValue(), v14, !v14))
  {
    v24 = [(RUIPage *)self navigationItem];
    [v24 setTitle:v39];

    v25 = [(RUIPage *)self elementProvider];
    v26 = [v25 tableViewOM];
    [v26 setHeaderTitle:0];

    v27 = [(RUIPage *)self elementProvider];
    v28 = [v27 tableViewOM];
    [v28 setSubHeaderTitle:0];

    v29 = [(RUIPage *)self elementProvider];
    v30 = [v29 passcodeViewOM];
    [v30 setHeaderTitle:0];

    v31 = [(RUIPage *)self primaryElement];
    LOBYTE(v30) = objc_opt_respondsToSelector();

    v23 = 0;
    if ((v30 & 1) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v15 = [(RUIPage *)self navigationItem];
  [v15 setTitle:0];

  v16 = [(RUIPage *)self elementProvider];
  v17 = [v16 tableViewOM];
  [v17 setHeaderTitle:v39];

  v18 = [(RUIPage *)self elementProvider];
  v19 = [v18 tableViewOM];
  [v19 setSubHeaderTitle:v3];

  v20 = [(RUIPage *)self elementProvider];
  v21 = [v20 passcodeViewOM];
  [v21 setHeaderTitle:v39];

  v22 = [(RUIPage *)self primaryElement];
  LOBYTE(v21) = objc_opt_respondsToSelector();

  v23 = v39;
  if (v21)
  {
LABEL_16:
    v32 = [(RUIPage *)self primaryElement];
    [v32 setTitle:v23];
  }

LABEL_17:
  [(RUIPage *)self _reloadTitleLabel];
  if (v6)
  {
    v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"RUIPage:%p", self];
    containerView = self->_containerView;
    if (self->_loading)
    {
      [(UIView *)containerView setUserInteractionEnabled:0];
      v35 = +[RUINavBarSpinnerManager sharedSpinnerManager];
      v36 = [(RUIPage *)self style];
      [v35 setActivityIndicatorViewStyle:{objc_msgSend(v36, "navBarActivityIndicatorStyle")}];

      v37 = +[RUINavBarSpinnerManager sharedSpinnerManager];
      v38 = [(RUIPage *)self navigationItem];
      [v37 startAnimatingInNavItem:v38 title:0 forIdentifier:v33 hideBackButton:1 hideLeftItems:{-[RUIPage navBarIndicatorHidesLeftButton](self, "navBarIndicatorHidesLeftButton")}];
    }

    else
    {
      [(UIView *)containerView setUserInteractionEnabled:1];
      v37 = +[RUINavBarSpinnerManager sharedSpinnerManager];
      [v37 stopAnimatingForIdentifier:v33];
    }
  }
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3
{
  v9.receiver = self;
  v9.super_class = RUIPage;
  v4 = a3;
  [(RUIPage *)&v9 preferredContentSizeDidChangeForChildContentContainer:v4];
  [v4 preferredContentSize];
  v6 = v5;
  v8 = v7;

  [(RUIPage *)self setPreferredContentSize:v6, v8];
}

- (void)setNavTitle:(id)a3
{
  if (self->_navTitle != a3)
  {
    v4 = [a3 copy];
    navTitle = self->_navTitle;
    self->_navTitle = v4;

    [(RUIPage *)self _updateLoadingUI];
  }
}

- (void)setNavSubTitle:(id)a3
{
  if (self->_navSubTitle != a3)
  {
    v4 = [a3 copy];
    navSubTitle = self->_navSubTitle;
    self->_navSubTitle = v4;

    [(RUIPage *)self _updateLoadingUI];
  }
}

- (void)setBackButtonTitle:(id)a3
{
  v7 = a3;
  if (!+[RUIPlatform isSolariumEnabled]&& self->_backButtonTitle != v7)
  {
    objc_storeStrong(&self->_backButtonTitle, a3);
    v5 = [(RUIPage *)self navigationItem];
    v6 = [v5 backBarButtonItem];
    [v6 setTitle:v7];
  }
}

- (void)setShowsTitlesAsHeaderViews:(BOOL)a3
{
  if (self->_showsTitlesAsHeaderViews != a3)
  {
    self->_showsTitlesAsHeaderViews = a3;
    [(RUIPage *)self _updateLoadingUI];
  }
}

- (UILabel)titleLabel
{
  v3 = [(RUIPage *)self primaryElement];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(RUIPage *)self primaryElement];
    v6 = [v5 titleLabel];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setTitleLabelPadding:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  if ([(RUIPage *)self hasTableView])
  {
    v8 = [(RUIPage *)self elementProvider];
    v9 = [v8 tableViewOM];
    v10 = [v9 headerView];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v10 setMargins:{top, left, bottom, right}];
    }
  }
}

- (CGSize)preferredContentSize
{
  if (self->_onBoardingKitContainer)
  {
    onBoardingKitContainer = self->_onBoardingKitContainer;

    [(OBBaseWelcomeController *)onBoardingKitContainer preferredContentSize];
  }

  else
  {
    v8 = v2;
    v9 = v3;
    v7.receiver = self;
    v7.super_class = RUIPage;
    [(RUIPage *)&v7 preferredContentSize];
  }

  result.height = v6;
  result.width = v5;
  return result;
}

- (UIEdgeInsets)titleLabelPadding
{
  if (![(RUIPage *)self hasTableView])
  {
    goto LABEL_5;
  }

  v3 = [(RUIPage *)self elementProvider];
  v4 = [v3 tableViewOM];
  v5 = [v4 headerView];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

LABEL_5:
    v7 = *MEMORY[0x277D768C8];
    v9 = *(MEMORY[0x277D768C8] + 8);
    v11 = *(MEMORY[0x277D768C8] + 16);
    v13 = *(MEMORY[0x277D768C8] + 24);
    goto LABEL_6;
  }

  [v5 margins];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

LABEL_6:
  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.right = v17;
  result.bottom = v16;
  result.left = v15;
  result.top = v14;
  return result;
}

- (void)_reloadTitleLabel
{
  if ([(RUIPage *)self hasTableView])
  {
    v5 = [(RUIPage *)self elementProvider];
    v3 = [v5 tableViewOM];
    v4 = [v3 tableView];
    [v4 reloadData];
  }
}

- (void)setHidesBackButton:(BOOL)a3
{
  v3 = a3;
  self->_hidesBackButton = a3;
  v4 = [(RUIPage *)self navigationItem];
  [v4 setHidesBackButton:v3];
}

- (BOOL)hasToolbar
{
  if (![(RUIPage *)self usesStandardToolbar])
  {
    return self->_toolbar != 0;
  }

  v3 = [(RUIPage *)self toolbarItems];
  v4 = [v3 count] != 0;

  return v4;
}

- (void)setHasToolbar
{
  [(RUIPage *)self _setSuppressesBottomBar:0];
  [(RUIPage *)self setHidesBottomBarWhenPushed:0];
  if (!self->_toolbar && ![(RUIPage *)self usesStandardToolbar])
  {
    v3 = objc_alloc(MEMORY[0x277D75C58]);
    v4 = [v3 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    toolbar = self->_toolbar;
    self->_toolbar = v4;

    v6 = [(RUIPage *)self containerView];
    [v6 addSubview:self->_toolbar];
  }
}

- (void)setValue:(id)a3 forField:(id)a4
{
  v6 = a3;
  v7 = a4;
  elementProviders = self->_elementProviders;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __29__RUIPage_setValue_forField___block_invoke;
  v11[3] = &unk_2782E83E0;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  [(NSMutableArray *)elementProviders enumerateObjectsUsingBlock:v11];
}

void __29__RUIPage_setValue_forField___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 tableViewOM];
  v6 = [v3 rowWithIdentifier:*(a1 + 32)];

  v4 = objc_opt_self();
  LOBYTE(v3) = objc_opt_isKindOfClass();

  if (v3)
  {
    [v6 setValueFromString:*(a1 + 40)];
  }

  else if (objc_opt_respondsToSelector())
  {
    v5 = [*(a1 + 40) stringValue];
    [v6 setValueFromString:v5];
  }
}

- (void)setCustomMargin:(double)a3
{
  self->_customMargin = a3;
  v5 = [(RUIPage *)self elementProvider];
  v6 = [v5 tableViewOM];
  v9 = [v6 tableView];

  if (v9)
  {
    if (a3 >= 0.0)
    {
      [v9 setClipsToBounds:0];
      [v9 setScrollIndicatorInsets:{0.0, 0.0, 0.0, -a3}];
      v7 = [(RUIPage *)self containerView];
      v8 = [v9 panGestureRecognizer];
      [v7 addGestureRecognizer:v8];
    }

    else
    {
      [v9 setClipsToBounds:1];
      [v9 setScrollIndicatorInsets:{*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)}];
      v7 = [v9 panGestureRecognizer];
      [v9 addGestureRecognizer:v7];
    }
  }
}

- (NSArray)buttonItems
{
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = v3;
  if (self->_leftNavigationBarButtonItem)
  {
    [v3 addObject:?];
  }

  if (self->_rightNavigationBarButtonItem)
  {
    [v4 addObject:?];
  }

  if (self->_leftToolbarButtonItem)
  {
    [v4 addObject:?];
  }

  if (self->_rightToolbarButtonItem)
  {
    [v4 addObject:?];
  }

  if (self->_middleToolbarButtonItem)
  {
    [v4 addObject:?];
  }

  return v4;
}

- (void)setButton:(id)a3 enabled:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [v6 objectForKey:@"position"];
  v8 = [v6 objectForKey:@"parentBar"];

  if ([v8 isEqualToString:@"navigationBar"])
  {
    if ([v7 isEqualToString:@"right"])
    {
      v9 = [(RUIPage *)self navigationItem];
      v10 = [v9 rightBarButtonItem];
LABEL_9:
      v12 = v10;

      v11 = v12;
      goto LABEL_15;
    }

    if ([v7 isEqualToString:@"left"])
    {
      v9 = [(RUIPage *)self navigationItem];
      v10 = [v9 leftBarButtonItem];
      goto LABEL_9;
    }
  }

  else if ([v8 isEqualToString:@"toolbar"])
  {
    if ([v7 isEqualToString:@"right"])
    {
      v11 = [(RUIPage *)self rightToolbarItem];
      goto LABEL_15;
    }

    if ([v7 isEqualToString:@"left"])
    {
      v11 = [(RUIPage *)self leftToolbarItem];
      goto LABEL_15;
    }

    if ([v7 isEqualToString:@"center"])
    {
      v11 = [(RUIPage *)self middleToolbarItem];
      goto LABEL_15;
    }
  }

  v11 = 0;
LABEL_15:
  v13 = v11;
  [v11 setEnabled:v4];
}

- (void)setRightNavigationBarButtonItem:(id)a3 barButtonItem:(id)a4
{
  v7 = a3;
  if (self->_rightNavigationBarButtonItem != v7)
  {
    v10 = v7;
    objc_storeStrong(&self->_rightNavigationBarButtonItem, a3);
    v8 = a4;
    v9 = [(RUIPage *)self navigationItem];
    [v9 setRightBarButtonItem:v8];

    v7 = v10;
  }
}

- (void)setRightNavigationBarButtonItem:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v6 = MEMORY[0x277D85DD0];
  v7 = 3221225472;
  v8 = __43__RUIPage_setRightNavigationBarButtonItem___block_invoke;
  v9 = &unk_2782E81C8;
  objc_copyWeak(&v10, &location);
  [v4 setAction:&v6];
  v5 = [v4 barButtonItem];
  [(RUIPage *)self setRightNavigationBarButtonItem:v4 barButtonItem:v5];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __43__RUIPage_setRightNavigationBarButtonItem___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _rightNavigationBarButtonPressed:0];
}

- (void)setLeftNavigationBarButtonItem:(id)a3 barButtonItem:(id)a4
{
  v11 = a3;
  v7 = a4;
  if (self->_leftNavigationBarButtonItem != v11)
  {
    objc_storeStrong(&self->_leftNavigationBarButtonItem, a3);
    v8 = [(RUIBarButtonItem *)v11 itemType];
    v9 = [v8 isEqualToString:@"backButtonBarItem"];

    if ((v9 & 1) == 0)
    {
      v10 = [(RUIPage *)self navigationItem];
      [v10 setLeftBarButtonItem:v7];
    }
  }
}

- (void)setLeftNavigationBarButtonItem:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [v4 itemType];
  v6 = [v5 isEqualToString:@"tapToRadarBarItem"];

  if ((v6 & 1) == 0)
  {
    v8 = MEMORY[0x277D85DD0];
    v9 = 3221225472;
    v10 = __42__RUIPage_setLeftNavigationBarButtonItem___block_invoke;
    v11 = &unk_2782E81C8;
    objc_copyWeak(&v12, &location);
    [v4 setAction:&v8];
    objc_destroyWeak(&v12);
  }

  v7 = [v4 barButtonItem];
  [(RUIPage *)self setLeftNavigationBarButtonItem:v4 barButtonItem:v7];

  objc_destroyWeak(&location);
}

void __42__RUIPage_setLeftNavigationBarButtonItem___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _leftNavigationBarButtonPressed:0];
}

- (id)flexibleSpace
{
  v2 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:5 target:0 action:0];

  return v2;
}

- (void)_updateToolbar
{
  v29[3] = *MEMORY[0x277D85DE8];
  if (!self->_middleFlexSpace)
  {
    v3 = [(RUIPage *)self flexibleSpace];
    middleFlexSpace = self->_middleFlexSpace;
    self->_middleFlexSpace = v3;
  }

  if (!self->_leftFlexSpace)
  {
    v5 = [(RUIPage *)self flexibleSpace];
    leftFlexSpace = self->_leftFlexSpace;
    self->_leftFlexSpace = v5;
  }

  leftToolbarItem = self->_leftToolbarItem;
  if (!leftToolbarItem)
  {
    leftToolbarItem = self->_leftFlexSpace;
  }

  v8 = leftToolbarItem;
  rightToolbarItem = self->_rightToolbarItem;
  if (rightToolbarItem)
  {
    v10 = rightToolbarItem;
  }

  else
  {
    v10 = [(RUIPage *)self flexibleSpace];
  }

  v11 = v10;
  if (self->_middleToolbarItem)
  {
    v12 = self->_leftToolbarItem;
    if (!v12)
    {
      v12 = self->_leftFlexSpace;
    }

    v13 = v12;
    v14 = self->_rightToolbarItem;
    if (v14)
    {
      v15 = v14;
    }

    else
    {
      v15 = [(RUIPage *)self flexibleSpace];
    }

    v18 = v15;
    if (self->_leftToolbarItem || self->_rightToolbarItem)
    {
      v28[0] = v13;
      v19 = [(RUIPage *)self flexibleSpace];
      middleToolbarItem = self->_middleToolbarItem;
      v28[1] = v19;
      v28[2] = middleToolbarItem;
      v21 = [(RUIPage *)self flexibleSpace];
      v28[3] = v21;
      v28[4] = v18;
      v22 = MEMORY[0x277CBEA60];
      v23 = v28;
      v24 = 5;
    }

    else
    {
      v19 = [(RUIPage *)self flexibleSpace];
      v21 = [(RUIPage *)self flexibleSpace:v19];
      v27[2] = v21;
      v22 = MEMORY[0x277CBEA60];
      v23 = v27;
      v24 = 3;
    }

    v17 = [v22 arrayWithObjects:v23 count:v24];
  }

  else
  {
    v16 = self->_middleFlexSpace;
    v29[0] = v8;
    v29[1] = v16;
    v29[2] = v10;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:3];
  }

  if ([(RUIPage *)self usesStandardToolbar])
  {
    [(RUIPage *)self setToolbarItems:v17];
    v25 = [(RUIPage *)self hasToolbar];
    v26 = [(RUIPage *)self navigationController];
    [v26 setToolbarHidden:!v25];
  }

  else
  {
    [(UIToolbar *)self->_toolbar setItems:v17];
  }
}

- (void)setRightToolbarButtonItem:(id)a3
{
  v5 = a3;
  if (self->_rightToolbarButtonItem != v5)
  {
    objc_storeStrong(&self->_rightToolbarButtonItem, a3);
    objc_initWeak(&location, self);
    rightToolbarButtonItem = self->_rightToolbarButtonItem;
    v8 = MEMORY[0x277D85DD0];
    v9 = 3221225472;
    v10 = __37__RUIPage_setRightToolbarButtonItem___block_invoke;
    v11 = &unk_2782E81C8;
    objc_copyWeak(&v12, &location);
    [(RUIBarButtonItem *)rightToolbarButtonItem setAction:&v8];
    v7 = [(RUIBarButtonItem *)self->_rightToolbarButtonItem barButtonItem:v8];
    [(RUIPage *)self setRightToolbarItem:v7];

    [(RUIPage *)self _updateToolbar];
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }
}

void __37__RUIPage_setRightToolbarButtonItem___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _rightToolbarButtonPressed:0];
}

- (void)setMiddleToolbarButtonItem:(id)a3
{
  v5 = a3;
  if (self->_middleToolbarButtonItem != v5)
  {
    objc_storeStrong(&self->_middleToolbarButtonItem, a3);
    objc_initWeak(&location, self);
    middleToolbarButtonItem = self->_middleToolbarButtonItem;
    v8 = MEMORY[0x277D85DD0];
    v9 = 3221225472;
    v10 = __38__RUIPage_setMiddleToolbarButtonItem___block_invoke;
    v11 = &unk_2782E81C8;
    objc_copyWeak(&v12, &location);
    [(RUIBarButtonItem *)middleToolbarButtonItem setAction:&v8];
    v7 = [(RUIBarButtonItem *)self->_middleToolbarButtonItem barButtonItem:v8];
    [(RUIPage *)self setMiddleToolbarItem:v7];

    [(RUIPage *)self _updateToolbar];
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }
}

void __38__RUIPage_setMiddleToolbarButtonItem___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _middleToolbarButtonPressed:0];
}

- (void)setLeftToolbarButtonItem:(id)a3
{
  v5 = a3;
  if (self->_leftToolbarButtonItem != v5)
  {
    objc_storeStrong(&self->_leftToolbarButtonItem, a3);
    objc_initWeak(&location, self);
    leftToolbarButtonItem = self->_leftToolbarButtonItem;
    v8 = MEMORY[0x277D85DD0];
    v9 = 3221225472;
    v10 = __36__RUIPage_setLeftToolbarButtonItem___block_invoke;
    v11 = &unk_2782E81C8;
    objc_copyWeak(&v12, &location);
    [(RUIBarButtonItem *)leftToolbarButtonItem setAction:&v8];
    v7 = [(RUIBarButtonItem *)self->_leftToolbarButtonItem barButtonItem:v8];
    [(RUIPage *)self setLeftToolbarItem:v7];

    [(RUIPage *)self _updateToolbar];
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }
}

void __36__RUIPage_setLeftToolbarButtonItem___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _leftToolbarButtonPressed:0];
}

- (void)setRightToolbarButton:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  [v5 setAttributes:v4];

  [(RUIPage *)self setRightToolbarButtonItem:v5];
}

- (void)setMiddleToolbarButton:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  [v5 setAttributes:v4];

  [(RUIPage *)self setMiddleToolbarButtonItem:v5];
}

- (void)setLeftToolbarButton:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  [v5 setAttributes:v4];

  [(RUIPage *)self setLeftToolbarButtonItem:v5];
}

- (void)setRightNavigationBarButton:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  [v5 setAttributes:v4];

  [(RUIPage *)self setRightNavigationBarButtonItem:v5];
}

- (void)setLeftNavigationBarButton:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  [v5 setAttributes:v4];

  [(RUIPage *)self setLeftNavigationBarButtonItem:v5];
}

- (NSArray)buttons
{
  v3 = [MEMORY[0x277CBEB18] array];
  leftNavigationBarButtonItem = self->_leftNavigationBarButtonItem;
  if (leftNavigationBarButtonItem)
  {
    v5 = [(RUIElement *)leftNavigationBarButtonItem attributes];
    [v3 addObject:v5];
  }

  rightNavigationBarButtonItem = self->_rightNavigationBarButtonItem;
  if (rightNavigationBarButtonItem)
  {
    v7 = [(RUIElement *)rightNavigationBarButtonItem attributes];
    [v3 addObject:v7];
  }

  leftToolbarButtonItem = self->_leftToolbarButtonItem;
  if (leftToolbarButtonItem)
  {
    v9 = [(RUIElement *)leftToolbarButtonItem attributes];
    [v3 addObject:v9];
  }

  rightToolbarButtonItem = self->_rightToolbarButtonItem;
  if (rightToolbarButtonItem)
  {
    v11 = [(RUIElement *)rightToolbarButtonItem attributes];
    [v3 addObject:v11];
  }

  middleToolbarButtonItem = self->_middleToolbarButtonItem;
  if (middleToolbarButtonItem)
  {
    v13 = [(RUIElement *)middleToolbarButtonItem attributes];
    [v3 addObject:v13];
  }

  return v3;
}

- (void)_barButtonPressed:(id)a3 isRight:(BOOL)a4 isNavbar:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v31 = a3;
  v8 = [v31 attributes];
  v9 = [v8 objectForKey:@"type"];
  v10 = [v9 isEqualToString:@"editBarItem"];

  if (v10)
  {
    v11 = [(RUIPage *)self elementProvider];
    v12 = [v11 tableViewOM];
    v13 = [v12 tableView];

    v14 = [v13 isEditing];
    v15 = [(RUIPage *)self elementProvider];
    v16 = [v15 tableViewOM];
    v17 = [v16 tableView];
    [v17 setEditing:v14 ^ 1u animated:1];

    v18 = &selRef__rightNavigationBarButtonPressed_;
    if (!v5)
    {
      v18 = &selRef__rightToolbarButtonPressed_;
    }

    v19 = &selRef__leftNavigationBarButtonPressed_;
    if (!v5)
    {
      v19 = &selRef__leftToolbarButtonPressed_;
    }

    if (!v6)
    {
      v18 = v19;
    }

    v20 = *v18;
    v21 = objc_alloc(MEMORY[0x277D751E0]);
    if (v14)
    {
      v22 = 2;
    }

    else
    {
      v22 = 0;
    }

    v23 = [v21 initWithBarButtonSystemItem:v22 target:self action:v20];
    if (v5)
    {
      v24 = [(RUIPage *)self navigationItem];
      v25 = v24;
      if (v6)
      {
        [v24 setRightBarButtonItem:v23];
      }

      else
      {
        [v24 setLeftBarButtonItem:v23];
      }
    }

    else
    {
      if (v6)
      {
        [(RUIPage *)self setRightToolbarItem:v23];
      }

      else
      {
        [(RUIPage *)self setLeftToolbarItem:v23];
      }

      [(RUIPage *)self _updateToolbar];
    }

    WeakRetained = objc_loadWeakRetained(&self->_objectModel);
    [WeakRetained RUIPage:self toggledEditing:v14 ^ 1u];
  }

  else
  {
    v26 = [v31 itemType];
    v27 = [v26 isEqualToString:@"closeButtonBarItem"];

    if (v27)
    {
      v13 = [(RUIPage *)self navigationController];
      [v13 dismissViewControllerAnimated:1 completion:0];
      goto LABEL_28;
    }

    v28 = [v31 itemType];
    if ([v28 isEqualToString:@"backButtonBarItem"])
    {
      v29 = [v8 objectForKey:@"url"];

      if (!v29)
      {
        v13 = [(RUIPage *)self navigationController];
        [v13 settingsCompatiblePopViewController];
        goto LABEL_28;
      }
    }

    else
    {
    }

    v13 = objc_loadWeakRetained(&self->_objectModel);
    [v13 RUIPage:self pressedNavBarButton:v31];
  }

LABEL_28:
}

- (void)_setContentInset:(double)a3
{
  v5 = [(RUIPage *)self traitCollection];
  v6 = [v5 ruiContentInsetHandling];

  if (!v6)
  {
    v7 = [(RUIPage *)self elementProvider];
    v8 = [v7 tableViewOM];
    v9 = [v8 tableView];
    [v9 contentInset];
    v11 = v10;
    v13 = v12;
    v15 = v14;

    v16 = [(RUIPage *)self elementProvider];
    v17 = [v16 tableViewOM];
    v18 = [v17 tableView];
    [v18 setContentInset:{v11, v13, a3, v15}];

    v21 = [(RUIPage *)self elementProvider];
    v19 = [v21 tableViewOM];
    v20 = [v19 tableView];
    [v20 setScrollIndicatorInsets:{v11, v13, a3, v15}];
  }
}

- (NSArray)accessoryViews
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = [(RUIPage *)self elementProvider];
  v4 = [v3 tableViewOM];
  v5 = [v4 tableView];

  v6 = [v5 tableHeaderView];
  v7 = [v5 tableFooterView];
  v8 = [MEMORY[0x277CBEB18] array];
  v9 = &unk_282DBDD88;
  if ([v6 conformsToProtocol:v9])
  {
    [v8 addObject:v6];
  }

  v26 = v6;
  if ([v7 conformsToProtocol:v9])
  {
    [v8 addObject:v7];
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v10 = [(RUIPage *)self elementProvider];
  v11 = [v10 tableViewOM];
  v12 = [v11 sections];

  v13 = [v12 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v28;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v28 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v27 + 1) + 8 * i);
        v18 = [v17 headerView];
        v19 = [v18 conformsToProtocol:v9];

        if (v19)
        {
          v20 = [v17 headerView];
          [v8 addObject:v20];
        }

        v21 = [v17 footerView];
        v22 = [v21 conformsToProtocol:v9];

        if (v22)
        {
          v23 = [v17 footerView];
          [v8 addObject:v23];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v14);
  }

  return v8;
}

- (void)_keyboardWillShow:(id)a3
{
  v4 = a3;
  v5 = [(RUIPage *)self elementProvider];
  v6 = [v5 tableViewOM];
  v7 = [v6 tableView];

  v8 = [v7 window];

  if (v8)
  {
    v9 = [v4 userInfo];
    v10 = [v9 objectForKeyedSubscript:*MEMORY[0x277D76BB8]];
    [v10 CGRectValue];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;

    v19 = [v4 object];
    v20 = [v19 coordinateSpace];

    v21 = [(RUIPage *)self view];
    [v20 convertRect:v21 toCoordinateSpace:{v12, v14, v16, v18}];
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v30 = [v7 visibleCells];
    [v7 frame];
    MaxY = CGRectGetMaxY(v42);
    v43.origin.x = v23;
    v43.origin.y = v25;
    v43.size.width = v27;
    v43.size.height = v29;
    v32 = fmax(MaxY - CGRectGetMinY(v43), 0.0);
    v33 = [(RUIPage *)self containerView];
    [v33 safeAreaInsets];
    v35 = v32 + v34;

    v36 = MEMORY[0x277D756A8];
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __29__RUIPage__keyboardWillShow___block_invoke;
    v38[3] = &unk_2782E8408;
    v38[4] = self;
    v41 = v35;
    v39 = v7;
    v40 = v30;
    v37 = v30;
    [v36 performOnControllers:v38];
  }
}

void __29__RUIPage__keyboardWillShow___block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) traitCollection];
  v3 = [v2 ruiContentInsetHandling];

  if (!v3)
  {
    [*(a1 + 32) _setContentInset:*(a1 + 56)];
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v4 = [*(a1 + 32) accessoryViews];
  v5 = [v4 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v28;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v28 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v27 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v9 tableViewDidUpdateContentInset:*(a1 + 40)];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v6);
  }

  if (!+[RUIPlatform isSolariumEnabled])
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v10 = *(a1 + 48);
    v11 = [v10 countByEnumeratingWithState:&v23 objects:v31 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v24;
      while (2)
      {
        for (j = 0; j != v12; ++j)
        {
          if (*v24 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v23 + 1) + 8 * j);
          if ([v15 _isAncestorOfFirstResponder])
          {
            v16 = [*(a1 + 32) elementProvider];
            v17 = [v16 tableViewOM];
            v18 = [v17 tableView];
            v19 = [*(a1 + 32) elementProvider];
            v20 = [v19 tableViewOM];
            v21 = [v20 tableView];
            v22 = [v21 indexPathForCell:v15];
            [v18 scrollToRowAtIndexPath:v22 atScrollPosition:2 animated:1];

            goto LABEL_23;
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v23 objects:v31 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

LABEL_23:
  }
}

- (void)_keyboardWillHide:(id)a3
{
  v4 = [(RUIPage *)self elementProvider];
  v5 = [v4 tableViewOM];
  v6 = [v5 tableView];

  v7 = [v6 window];

  if (v7)
  {
    v8 = [(RUIPage *)self tableViewOM];
    v9 = [v8 isShowingPicker];

    if ((v9 & 1) == 0)
    {
      v10 = MEMORY[0x277D756A8];
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __29__RUIPage__keyboardWillHide___block_invoke;
      v11[3] = &unk_2782E8430;
      v11[4] = self;
      v12 = v6;
      [v10 performOnControllers:v11];
    }
  }
}

void __29__RUIPage__keyboardWillHide___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) traitCollection];
  v3 = [v2 ruiContentInsetHandling];

  if (!v3)
  {
    [*(a1 + 32) _setContentInset:0.0];
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [*(a1 + 32) accessoryViews];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        if (objc_opt_respondsToSelector())
        {
          [v9 tableViewDidUpdateContentInset:*(a1 + 40)];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v10 = [*(a1 + 32) view];
  [v10 setNeedsLayout];
}

- (void)setPageElement:(id)a3
{
  v5 = a3;
  pageElement = self->_pageElement;
  if (pageElement != v5)
  {
    v9 = v5;
    [(RUIPageElement *)pageElement setPage:0];
    objc_storeStrong(&self->_pageElement, a3);
    [(RUIPageElement *)self->_pageElement setPage:self];
    v7 = [[RUITopLevelElementProvider alloc] initWithParentElement:v9];
    elementProvider = self->_elementProvider;
    self->_elementProvider = v7;

    [(RUIPage *)self addElementProvider:self->_elementProvider];
    pageElement = [(RUITopLevelElementProvider *)self->_elementProvider setDelegate:self];
    v5 = v9;
  }

  MEMORY[0x2821F96F8](pageElement, v5);
}

- (void)_addChildPage:(id)a3
{
  v4 = a3;
  childPages = self->_childPages;
  v8 = v4;
  if (!childPages)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_childPages;
    self->_childPages = v6;

    v4 = v8;
    childPages = self->_childPages;
  }

  [(NSMutableArray *)childPages addObject:v4];
  [v8 _setParentPage:self];
}

- (void)_updateWithCompletedChild:(id)a3
{
  v85 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 tableViewOM];
  v58 = self;
  v6 = [(RUIPage *)self tableViewOM];
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v7 = [v5 sections];
  v59 = [v7 countByEnumeratingWithState:&v77 objects:v84 count:16];
  if (v59)
  {
    v50 = v4;
    v51 = v6;
    v49 = v5;
    v8 = 0;
    v63 = 0;
    v64 = 0;
    obj = v7;
    v56 = *v78;
    do
    {
      v9 = 0;
      do
      {
        if (*v78 != v56)
        {
          objc_enumerationMutation(obj);
        }

        v61 = v9;
        v10 = *(*(&v77 + 1) + 8 * v9);
        v73 = 0u;
        v74 = 0u;
        v75 = 0u;
        v76 = 0u;
        v11 = [v10 rows];
        v12 = [v11 countByEnumeratingWithState:&v73 objects:v83 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v74;
          do
          {
            for (i = 0; i != v13; ++i)
            {
              v16 = v8;
              if (*v74 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v17 = *(*(&v73 + 1) + 8 * i);
              v18 = [v17 attributes];
              v8 = [v18 objectForKeyedSubscript:@"radioGroup"];

              if ([v8 length])
              {
                v19 = [v17 tableCell];
                v20 = [v19 remoteUIAccessoryType];

                if (v20 == 3)
                {
                  v21 = [v18 objectForKeyedSubscript:@"value"];

                  v22 = [v18 objectForKeyedSubscript:@"label"];

                  v63 = v22;
                  v64 = v21;
                }
              }
            }

            v13 = [v11 countByEnumeratingWithState:&v73 objects:v83 count:16];
          }

          while (v13);
        }

        v9 = v61 + 1;
      }

      while (v61 + 1 != v59);
      v59 = [obj countByEnumeratingWithState:&v77 objects:v84 count:16];
    }

    while (v59);

    if (!v64)
    {
      v5 = v49;
      v4 = v50;
      v6 = v51;
      goto LABEL_39;
    }

    v6 = v51;
    if (!v63)
    {
      v5 = v49;
      v4 = v50;
      goto LABEL_39;
    }

    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    v52 = [v51 sections];
    obja = [v52 countByEnumeratingWithState:&v69 objects:v82 count:16];
    if (obja)
    {
      v53 = *v70;
      do
      {
        v23 = 0;
        do
        {
          if (*v70 != v53)
          {
            objc_enumerationMutation(v52);
          }

          v57 = v23;
          v24 = *(*(&v69 + 1) + 8 * v23);
          v65 = 0u;
          v66 = 0u;
          v67 = 0u;
          v68 = 0u;
          v62 = [v24 rows];
          v25 = [v62 countByEnumeratingWithState:&v65 objects:v81 count:16];
          if (v25)
          {
            v26 = v25;
            v27 = *v66;
            do
            {
              v28 = 0;
              v60 = v26;
              do
              {
                if (*v66 != v27)
                {
                  objc_enumerationMutation(v62);
                }

                v29 = *(*(&v65 + 1) + 8 * v28);
                v30 = [v29 attributes];
                v31 = [v30 mutableCopy];

                v32 = [v29 linkedPage];
                v33 = [v32 pageID];
                v34 = [v33 isEqualToString:v8];

                if (v34)
                {
                  v35 = [v29 tableCell];
                  v36 = [v35 ruiDetailTextLabel];
                  [v36 setText:v63];

                  v37 = [v29 tableCell];
                  v38 = [v37 ruiDetailTextLabel];
                  v39 = [(RUIPage *)v58 style];
                  v40 = [v39 selectPageDetailTextColor];
                  [v38 setTextColor:v40];

                  [v31 setObject:v64 forKeyedSubscript:@"value"];
                  v26 = v60;
                  [v31 setObject:v63 forKeyedSubscript:@"detailLabel"];
                }

                [v29 setAttributes:v31];
                v41 = [v29 tableCell];
                [v41 setNeedsLayout];

                ++v28;
              }

              while (v26 != v28);
              v26 = [v62 countByEnumeratingWithState:&v65 objects:v81 count:16];
            }

            while (v26);
          }

          v23 = v57 + 1;
        }

        while ((v57 + 1) != obja);
        obja = [v52 countByEnumeratingWithState:&v69 objects:v82 count:16];
      }

      while (obja);
    }

    v42 = [(RUIPage *)v58 elementProvider];
    v43 = [v42 tableViewOM];
    v44 = [v43 objectModel];
    v45 = [(RUIPage *)v58 elementProvider];
    v46 = [v45 tableViewOM];
    [v44 tableViewOMDidChange:v46];

    v7 = [(RUIPage *)v58 elementProvider];
    v47 = [v7 tableViewOM];
    v48 = [v47 tableView];
    [v48 reloadData];

    v5 = v49;
    v4 = v50;
    v6 = v51;
  }

  else
  {
    v63 = 0;
    v64 = 0;
    v8 = 0;
  }

LABEL_39:
}

- (void)_updateParentPage
{
  WeakRetained = objc_loadWeakRetained(&self->_parentPage);
  [WeakRetained _updateWithCompletedChild:self];
}

- (id)subElementWithID:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [(RUIPage *)self _childElements];
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [v10 identifier];
        v12 = [v11 isEqualToString:v4];

        if (v12)
        {
          v13 = v10;
LABEL_13:
          v14 = v13;
          goto LABEL_14;
        }

        v13 = [v10 subElementWithID:v4];
        if (v13)
        {
          goto LABEL_13;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      v14 = 0;
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v14 = 0;
  }

LABEL_14:

  return v14;
}

- (id)_childElements
{
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [(RUIPage *)self primaryElement];
  [v3 _remoteUI_addObjectIfNotNil:v4];

  v5 = [(RUIPage *)self elementProvider];
  v6 = [v5 tableViewOM];
  [v3 _remoteUI_addObjectIfNotNil:v6];

  v7 = [(RUIPage *)self elementProvider];
  v8 = [v7 webViewOM];
  [v3 _remoteUI_addObjectIfNotNil:v8];

  v9 = [(RUIPage *)self elementProvider];
  v10 = [v9 passcodeViewOM];
  [v3 _remoteUI_addObjectIfNotNil:v10];

  v11 = [(RUIPage *)self elementProvider];
  v12 = [v11 spinnerViewOM];
  [v3 _remoteUI_addObjectIfNotNil:v12];

  [v3 _remoteUI_addObjectIfNotNil:self->_leftNavigationBarButtonItem];
  [v3 _remoteUI_addObjectIfNotNil:self->_rightNavigationBarButtonItem];
  [v3 _remoteUI_addObjectIfNotNil:self->_leftToolbarButtonItem];
  [v3 _remoteUI_addObjectIfNotNil:self->_middleToolbarButtonItem];
  [v3 _remoteUI_addObjectIfNotNil:self->_rightToolbarButtonItem];

  return v3;
}

- (id)viewForElementIdentifier:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(RUIPage *)self _childElements];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v13 + 1) + 8 * i) viewForElementIdentifier:v4];
        if (v10)
        {
          v11 = v10;
          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  return v11;
}

- (id)elementsWithName:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [(RUIPage *)self primaryElement];
  v7 = [v6 name];
  v8 = [v7 isEqualToString:v4];

  if (v8)
  {
    v9 = [(RUIPage *)self primaryElement];
    [v5 addObject:v9];
  }

  v10 = [(RUIPage *)self elementProvider];
  v11 = [v10 tableViewOM];
  v12 = [v11 name];
  v13 = [v12 isEqualToString:v4];

  if (v13)
  {
    v14 = [(RUIPage *)self elementProvider];
    v15 = [v14 tableViewOM];
    [v5 addObject:v15];
  }

  v16 = [(RUIPage *)self elementProvider];
  v17 = [v16 webViewOM];
  v18 = [v17 name];
  v19 = [v18 isEqualToString:v4];

  if (v19)
  {
    v20 = [(RUIPage *)self elementProvider];
    v21 = [v20 webViewOM];
    [v5 addObject:v21];
  }

  v22 = [(RUIPage *)self elementProvider];
  v23 = [v22 passcodeViewOM];
  v24 = [v23 name];
  v25 = [v24 isEqualToString:v4];

  if (v25)
  {
    v26 = [(RUIPage *)self elementProvider];
    v27 = [v26 passcodeViewOM];
    [v5 addObject:v27];
  }

  v28 = [(RUIPage *)self elementProvider];
  v29 = [v28 spinnerViewOM];
  v30 = [v29 name];
  v31 = [v30 isEqualToString:v4];

  if (v31)
  {
    v32 = [(RUIPage *)self elementProvider];
    v33 = [v32 spinnerViewOM];
    [v5 addObject:v33];
  }

  v34 = [(RUIPage *)self primaryElement];
  v35 = [v34 subElementsWithName:v4];
  [v5 addObjectsFromArray:v35];

  v36 = [(RUIPage *)self elementProvider];
  v37 = [v36 tableViewOM];
  v38 = [v37 subElementsWithName:v4];
  [v5 addObjectsFromArray:v38];

  v39 = [(RUIPage *)self elementProvider];
  v40 = [v39 webViewOM];
  v41 = [v40 subElementsWithName:v4];
  [v5 addObjectsFromArray:v41];

  v42 = [(RUIPage *)self elementProvider];
  v43 = [v42 passcodeViewOM];
  v44 = [v43 subElementsWithName:v4];
  [v5 addObjectsFromArray:v44];

  v45 = [(RUIPage *)self elementProvider];
  v46 = [v45 spinnerViewOM];
  v47 = [v46 subElementsWithName:v4];
  [v5 addObjectsFromArray:v47];

  v48 = [(RUIElement *)self->_leftNavigationBarButtonItem name];
  LODWORD(v46) = [v48 isEqualToString:v4];

  if (v46)
  {
    [v5 addObject:self->_leftNavigationBarButtonItem];
  }

  v49 = [(RUIElement *)self->_rightNavigationBarButtonItem name];
  v50 = [v49 isEqualToString:v4];

  if (v50)
  {
    [v5 addObject:self->_rightNavigationBarButtonItem];
  }

  v51 = [(RUIElement *)self->_leftToolbarButtonItem name];
  v52 = [v51 isEqualToString:v4];

  if (v52)
  {
    [v5 addObject:self->_leftToolbarButtonItem];
  }

  v53 = [(RUIElement *)self->_middleToolbarButtonItem name];
  v54 = [v53 isEqualToString:v4];

  if (v54)
  {
    [v5 addObject:self->_middleToolbarButtonItem];
  }

  v55 = [(RUIElement *)self->_rightToolbarButtonItem name];
  v56 = [v55 isEqualToString:v4];

  if (v56)
  {
    [v5 addObject:self->_rightToolbarButtonItem];
  }

  return v5;
}

- (RUITableView)tableViewOM
{
  v2 = [(RUIPage *)self elementProvider];
  v3 = [v2 makeTableViewOM];

  return v3;
}

- (void)topLevelElementProvider:(id)a3 didCreateTableView:(id)a4
{
  if (!self->_containerView)
  {
    return;
  }

  v5 = a4;
  v15 = [v5 tableView];
  v6 = [(RUIPage *)self traitCollection];
  [v5 traitCollectionDidChangeFrom:0 toTraitCollection:v6];

  if ([(RUIPage *)self hasWebView])
  {
    v7 = [(RUIPage *)self containerView];
    [v7 insertSubview:v15 atIndex:0];
  }

  else
  {
    v8 = [(RUIPage *)self elementProvider];
    v9 = [v8 primaryElement];
    if (v9)
    {
      v10 = v9;
      v11 = [(RUIPage *)self elementProvider];
      v12 = [v11 primaryElement];
      v13 = objc_opt_self();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    else
    {
    }

    v7 = [(RUIPage *)self containerView];
    [v7 addSubview:v15];
  }

LABEL_11:
}

- (BOOL)hasTableView
{
  v2 = [(RUIPage *)self elementProvider];
  v3 = [v2 hasTableView];

  return v3;
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = RUIPage;
  [(RUIPage *)&v12 traitCollectionDidChange:v4];
  v5 = [(RUIPage *)self elementProvider];
  v6 = [v5 tableViewOM];

  if (v6)
  {
    v7 = [(RUIPage *)self elementProvider];
    v8 = [v7 tableViewOM];
    v9 = [(RUIPage *)self traitCollection];
    [v8 traitCollectionDidChangeFrom:v4 toTraitCollection:v9];
  }

  [(RUIBarButtonItem *)self->_leftNavigationBarButtonItem updateBackButtonColors];
  v10 = [(RUIPage *)self style];
  WeakRetained = objc_loadWeakRetained(&self->_objectModel);
  [v10 applyToObjectModel:WeakRetained];
}

- (RUIWebView)webViewOM
{
  v2 = [(RUIPage *)self elementProvider];
  v3 = [v2 makeWebViewOM];

  return v3;
}

- (void)topLevelElementProvider:(id)a3 didCreateWebView:(id)a4
{
  v7 = a4;
  if ([(RUIPage *)self isPrimaryElementNilOrKindOf:objc_opt_class()])
  {
    v5 = [(RUIPage *)self containerView];
    v6 = [v7 webView];
    [v5 addSubview:v6];
  }
}

- (BOOL)hasWebView
{
  v2 = [(RUIPage *)self elementProvider];
  v3 = [v2 hasWebView];

  return v3;
}

- (RUITopLevelPageElement)primaryElement
{
  v2 = [(RUIPage *)self elementProvider];
  v3 = [v2 primaryElement];

  return v3;
}

- (void)topLevelElementProvider:(id)a3 didSetPrimaryElement:(id)a4 previousElement:(id)a5
{
  v14 = a4;
  v7 = a5;
  if (v14 != v7)
  {
    if (objc_opt_respondsToSelector())
    {
      v8 = [v7 viewController];
    }

    else
    {
      v8 = 0;
    }

    if (objc_opt_respondsToSelector())
    {
      v9 = [v14 viewController];
    }

    else
    {
      v9 = 0;
    }

    [v8 willMoveToParentViewController:0];
    [v8 removeFromParentViewController];
    v10 = [v7 view];
    [v10 removeFromSuperview];

    if (v9)
    {
      [(RUIPage *)self addChildViewController:v9];
    }

    WeakRetained = objc_loadWeakRetained(&self->_objectModel);
    [v14 setObjectModel:WeakRetained];

    if (self->_containerView)
    {
      v12 = [(RUIPage *)self containerView];
      v13 = [v14 view];
      [v12 addSubview:v13];
    }

    [v9 didMoveToParentViewController:self];
  }
}

- (id)legacyPasscodeViewOM
{
  v2 = [(RUIPage *)self elementProvider];
  v3 = [v2 makePasscodeViewOM];

  return v3;
}

- (void)topLevelElementProvider:(id)a3 didCreatePasscodeView:(id)a4
{
  v5 = a4;
  if (self->_containerView)
  {
    v8 = v5;
    v6 = [v5 passcodeView];
    if ([(RUIPage *)self isPrimaryElementNilOrKindOf:objc_opt_class()])
    {
      [v8 setShouldManageScrollViewInsets:1];
      v7 = [(RUIPage *)self containerView];
      [v7 addSubview:v6];
    }

    v5 = v8;
  }
}

- (BOOL)hasPasscodeView
{
  v2 = [(RUIPage *)self elementProvider];
  v3 = [v2 hasPasscodeView];

  return v3;
}

- (RUISpinnerView)spinnerViewOM
{
  v2 = [(RUIPage *)self elementProvider];
  v3 = [v2 makeSpinnerViewOM];

  return v3;
}

- (void)topLevelElementProvider:(id)a3 didCreateSpinnerView:(id)a4
{
  if (self->_containerView)
  {
    v6 = [a4 spinnerView];
    v5 = [(RUIPage *)self containerView];
    [v5 addSubview:v6];
  }
}

- (BOOL)hasSpinnerView
{
  v2 = [(RUIPage *)self elementProvider];
  v3 = [v2 hasSpinnerView];

  return v3;
}

- (void)setObjectModel:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_objectModel, v4);
  v5 = [(RUIPage *)self elementProvider];
  v6 = [v5 tableViewOM];
  [v6 setObjectModel:v4];

  v7 = [(RUIPage *)self elementProvider];
  v8 = [v7 webViewOM];
  [v8 setDelegate:v4];

  v9 = [(RUIPage *)self elementProvider];
  v10 = [v9 passcodeViewOM];
  [v10 setObjectModel:v4];

  v11 = [(RUIPage *)self elementProvider];
  v12 = [v11 spinnerViewOM];
  [v12 setObjectModel:v4];

  v13 = [(RUIPage *)self primaryElement];
  [v13 setObjectModel:v4];
}

- (void)populatePostbackDictionary:(id)a3 elementProvider:(id)a4
{
  v11 = a3;
  v5 = a4;
  v6 = [v5 tableViewOM];
  [v6 populatePostbackDictionary:v11];

  v7 = [v5 passcodeViewOM];
  [v7 populatePostbackDictionary:v11];

  v8 = [v5 primaryElement];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [v5 primaryElement];
    [v10 populatePostbackDictionary:v11];
  }
}

- (void)populatePostbackDictionary:(id)a3
{
  v4 = a3;
  elementProviders = self->_elementProviders;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__RUIPage_populatePostbackDictionary___block_invoke;
  v7[3] = &unk_2782E83E0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(NSMutableArray *)elementProviders enumerateObjectsUsingBlock:v7];
}

- (void)dealloc
{
  [(RUIPage *)self removeKeyboardObservers];
  [(RUIPage *)self setLoading:0];
  v3 = [(RUIPage *)self elementProvider];
  v4 = [v3 tableViewOM];
  [v4 setObjectModel:0];

  v5 = [(RUIPage *)self elementProvider];
  v6 = [v5 webViewOM];
  [v6 setDelegate:0];

  v7 = [(RUIPage *)self elementProvider];
  v8 = [v7 passcodeViewOM];
  [v8 setObjectModel:0];

  v9 = [(RUIPage *)self elementProvider];
  v10 = [v9 spinnerViewOM];
  [v10 setObjectModel:0];

  v11 = [(RUIPage *)self primaryElement];
  [v11 setObjectModel:0];

  [(RUIPage *)self deinitSwift];
  v12.receiver = self;
  v12.super_class = RUIPage;
  [(RUIPage *)&v12 dealloc];
}

- (void)loadView
{
  v3 = objc_alloc(MEMORY[0x277D75D18]);
  v4 = [v3 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  containerView = self->_containerView;
  self->_containerView = v4;

  v6 = [(RUIPage *)self style];
  v7 = [v6 backgroundColor];

  if (v7)
  {
    v8 = [(RUIPage *)self style];
    v9 = [v8 backgroundColor];
    [(UIView *)self->_containerView setBackgroundColor:v9];
  }

  v10 = [(RUIPage *)self style];
  v11 = [v10 tintColor];
  [(UIView *)self->_containerView setTintColor:v11];

  [(UIView *)self->_containerView setAutoresizingMask:18];
  [(RUIPage *)self setView:self->_containerView];
  [(RUIPage *)self setupContainerView];
  v12 = [(RUIPage *)self elementProvider];
  v13 = [v12 webViewOM];

  if (v13 && [(RUIPage *)self isPrimaryElementNilOrKindOf:objc_opt_class()])
  {
    v14 = [(RUIPage *)self containerView];
    v15 = [(RUIPage *)self elementProvider];
    v16 = [v15 webViewOM];
    v17 = [v16 webView];
    [v14 addSubview:v17];
  }

  v18 = [(RUIPage *)self primaryElement];

  if (!v18)
  {
    v24 = [(RUIPage *)self elementProvider];
    v25 = [v24 tableViewOM];

    v26 = [(RUIPage *)self elementProvider];
    v27 = v26;
    if (v25)
    {
      v28 = [v26 tableViewOM];
      v21 = [v28 tableView];

      [(UIView *)self->_containerView setPreservesSuperviewLayoutMargins:1];
      LODWORD(v28) = [(RUIPage *)self hasWebView];
      v29 = [(RUIPage *)self containerView];
      v30 = v29;
      if (v28)
      {
        [v29 insertSubview:v21 atIndex:0];
      }

      else
      {
        [v29 addSubview:v21];
      }

      v22 = [(RUIPage *)self elementProvider];
      v23 = [v22 tableViewOM];
      [v23 addSearchBarToPage:self];
      goto LABEL_20;
    }

    v31 = [v26 passcodeViewOM];
    if (v31)
    {
      v32 = v31;
      v33 = [(RUIPage *)self isPrimaryElementNilOrKindOf:objc_opt_class()];

      if (v33)
      {
        v21 = [(RUIPage *)self containerView];
        v22 = [(RUIPage *)self elementProvider];
        v23 = [v22 passcodeViewOM];
        v34 = [v23 passcodeView];
LABEL_19:
        v37 = v34;
        [v21 addSubview:v34];

        goto LABEL_20;
      }
    }

    else
    {
    }

    v35 = [(RUIPage *)self elementProvider];
    v36 = [v35 spinnerViewOM];

    if (!v36)
    {
      goto LABEL_21;
    }

    v21 = [(RUIPage *)self containerView];
    v22 = [(RUIPage *)self elementProvider];
    v23 = [v22 spinnerViewOM];
    v34 = [v23 spinnerView];
    goto LABEL_19;
  }

  v19 = [(RUIPage *)self primaryElement];
  v20 = [v19 view];
  [v20 setPreservesSuperviewLayoutMargins:1];

  v21 = [(RUIPage *)self containerView];
  v22 = [(RUIPage *)self primaryElement];
  v23 = [v22 view];
  [v21 addSubview:v23];
LABEL_20:

LABEL_21:
  [(RUIPage *)self _setupMultiChoiceView];
  v38 = [(RUIPage *)self containerView];
  [v38 addSubview:self->_toolbar];

  v39 = [(RUIPage *)self pageElement];
  [v39 configureAccessiblityWithTarget:self->_containerView];
}

- (void)viewDidLoad
{
  v36 = *MEMORY[0x277D85DE8];
  v32.receiver = self;
  v32.super_class = RUIPage;
  [(RUIPage *)&v32 viewDidLoad];
  v3 = [(RUIPage *)self elementProvider];
  v4 = [v3 tableViewOM];
  v5 = [v4 tableView];
  [v5 reloadData];

  v6 = [(RUIPage *)self primaryElement];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(RUIPage *)self primaryElement];
    [v8 viewDidLoad];
  }

  v9 = [(RUIPage *)self attributes];
  v10 = [v9 objectForKeyedSubscript:@"refreshOnNotification"];
  if (([v10 BOOLValue] & 1) == 0)
  {

LABEL_11:
    goto LABEL_12;
  }

  v11 = [(RUIPage *)self pageID];

  if (v11)
  {
    if (_isInternalInstall())
    {
      v12 = _RUILoggingFacility();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [(RUIPage *)self pageID];
        *buf = 138412290;
        v35 = v13;
        _os_log_impl(&dword_21B93D000, v12, OS_LOG_TYPE_DEFAULT, "Refresh notification listener added for page: %@", buf, 0xCu);
      }
    }

    v9 = [MEMORY[0x277CCAB98] defaultCenter];
    [v9 addObserver:self selector:sel__handlePageUpdateRequestedNotification_ name:@"RUIPageRefreshRequestedNotification" object:0];
    goto LABEL_11;
  }

LABEL_12:
  v14 = [(RUIPage *)self pageElement];
  v15 = [(RUIPage *)self view];
  [v14 configureAccessiblityWithTarget:v15];

  [(RUIPage *)self setPreferredContentSize:RemoteUIPreferredContentSize()];
  [(RUIPage *)self addRemoteUIWatermark];
  v16 = [(RUIPage *)self toolbarContentViewController];
  [(RUIPage *)self addChildViewController:v16];
  v17 = [v16 view];
  [v17 setTranslatesAutoresizingMaskIntoConstraints:0];

  v18 = [(RUIPage *)self view];
  v19 = [v16 view];
  [v18 addSubview:v19];

  v28 = MEMORY[0x277CCAAD0];
  v31 = [v16 view];
  v29 = [v31 topAnchor];
  v30 = [(RUIPage *)self view];
  v20 = [v30 topAnchor];
  v21 = [v29 constraintEqualToAnchor:v20];
  v33[0] = v21;
  v22 = [v16 view];
  v23 = [v22 leadingAnchor];
  v24 = [(RUIPage *)self view];
  v25 = [v24 leadingAnchor];
  v26 = [v23 constraintEqualToAnchor:v25];
  v33[1] = v26;
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:2];
  [v28 activateConstraints:v27];

  [v16 didMoveToParentViewController:self];
}

- (void)_handlePageUpdateRequestedNotification:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 object];
  v6 = [(RUIPage *)self pageID];
  v7 = [v5 isEqual:v6];

  if (v7)
  {
    v8 = [(RUIPage *)self attributes];
    v9 = [v8 objectForKeyedSubscript:@"refreshUrl"];

    v10 = [(RUIPage *)self attributes];
    v11 = [v10 objectForKeyedSubscript:@"refreshHttpMethod"];
    v12 = v11;
    v13 = @"GET";
    if (v11)
    {
      v13 = v11;
    }

    v14 = v13;

    if (_isInternalInstall())
    {
      v15 = _RUILoggingFacility();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = [(RUIPage *)self pageID];
        v18 = 138412802;
        v19 = v16;
        v20 = 2112;
        v21 = v9;
        v22 = 2112;
        v23 = v14;
        _os_log_impl(&dword_21B93D000, v15, OS_LOG_TYPE_DEFAULT, "Notification received for page %@. will refresh from url: %@ method: %@", &v18, 0x20u);
      }
    }

    v17 = [(RUIPage *)self objectModel];
    [v17 openLink:v9 HTTPMethod:v14 completion:0];
    goto LABEL_9;
  }

  if (!_isInternalInstall())
  {
    goto LABEL_14;
  }

  v9 = _RUILoggingFacility();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [v4 object];
    v17 = [(RUIPage *)self pageID];
    v18 = 138412546;
    v19 = v14;
    v20 = 2112;
    v21 = v17;
    _os_log_impl(&dword_21B93D000, v9, OS_LOG_TYPE_DEFAULT, "Ignoring refresh notification requestedPage: %@. currentPage: %@", &v18, 0x16u);
LABEL_9:
  }

LABEL_14:
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v20.receiver = self;
  v20.super_class = RUIPage;
  [(RUIPage *)&v20 viewWillAppear:?];
  v5 = [(RUIPage *)self elementProvider];
  v6 = [v5 tableViewOM];
  [v6 viewWillAppear:v3];

  v7 = [(RUIPage *)self elementProvider];
  v8 = [v7 passcodeViewOM];
  [v8 viewWillAppear:v3];

  v9 = [(RUIPage *)self elementProvider];
  v10 = [v9 spinnerViewOM];
  [v10 viewWillAppear:v3];

  v11 = [(RUIPage *)self primaryElement];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    v13 = [(RUIPage *)self primaryElement];
    [v13 viewWillAppear:v3];
  }

  [(RUIPage *)self preferredContentSize];
  v15 = v14;
  v17 = v16;
  v18 = [(RUIPage *)self navigationController];
  [v18 setPreferredContentSize:{v15, v17}];

  v19 = [MEMORY[0x277CCAB98] defaultCenter];
  [(RUIPage *)self removeKeyboardObservers];
  [v19 addObserver:self selector:sel__keyboardWillShow_ name:*MEMORY[0x277D76C48] object:0];
  [v19 addObserver:self selector:sel__keyboardWillHide_ name:*MEMORY[0x277D76C10] object:0];
}

- (void)removeKeyboardObservers
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x277D76C10] object:0];

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 removeObserver:self name:*MEMORY[0x277D76C48] object:0];
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v41 = *MEMORY[0x277D85DE8];
  v39.receiver = self;
  v39.super_class = RUIPage;
  [(RUIPage *)&v39 viewDidAppear:?];
  v5 = [(RUIPage *)self elementProvider];
  v6 = [v5 tableViewOM];
  [v6 viewDidAppear:v3];

  v7 = [(RUIPage *)self elementProvider];
  v8 = [v7 passcodeViewOM];
  [v8 viewDidAppear:v3];

  v9 = [(RUIPage *)self elementProvider];
  v10 = [v9 webViewOM];
  [v10 viewDidAppear:v3];

  v11 = [(RUIPage *)self pageElement];
  [v11 reportInternalRenderEvent];

  v12 = [(RUIPage *)self objectModel];
  v13 = [v12 telemetryDelegate];
  v14 = [RUITelemetryElement alloc];
  v15 = [(RUIPage *)self pageElement];
  v16 = [v15 sourceXMLElement];
  v17 = [(RUIPage *)self objectModel];
  v18 = [v17 sourceURL];
  v19 = [(RUITelemetryElement *)v14 initWithXMLElement:v16 url:v18];
  [v13 willDisplayUI:v19];

  if (UIKeyboardAutomaticIsOnScreen())
  {
    v20 = [(RUIPage *)self traitCollection];
    v21 = [v20 ruiContentInsetHandling];

    if (!v21)
    {
      v22 = [(RUIPage *)self view];
      v23 = [v22 keyboardSceneDelegate];

      v24 = [(RUIPage *)self view];
      [v23 visibleFrameInView:v24];
      v26 = v25;

      [(RUIPage *)self _setContentInset:v26];
    }
  }

  v27 = [(RUIPage *)self primaryElement];
  v28 = objc_opt_respondsToSelector();

  if (v28)
  {
    v29 = [(RUIPage *)self primaryElement];
    [v29 viewDidAppear:v3];
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v30 = self->_didAppearCallbacks;
  v31 = [(NSMutableArray *)v30 countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v36;
    do
    {
      v34 = 0;
      do
      {
        if (*v36 != v33)
        {
          objc_enumerationMutation(v30);
        }

        (*(*(*(&v35 + 1) + 8 * v34) + 16))(*(*(&v35 + 1) + 8 * v34));
        ++v34;
      }

      while (v32 != v34);
      v32 = [(NSMutableArray *)v30 countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v32);
  }

  [(NSMutableArray *)self->_didAppearCallbacks removeAllObjects];
}

- (void)viewIsAppearing:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = RUIPage;
  [(RUIPage *)&v8 viewIsAppearing:a3];
  [(UIView *)self->_containerView layoutIfNeeded];
  [(RUIPage *)self updatePreferredContentSize];
  hidesBackButton = self->_hidesBackButton;
  v5 = [(RUIPage *)self navigationItem];
  [v5 setHidesBackButton:hidesBackButton];

  if ([(RUIPage *)self usesStandardToolbar])
  {
    v6 = [(RUIPage *)self hasToolbar];
    v7 = [(RUIPage *)self navigationController];
    [v7 setToolbarHidden:!v6];
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v15.receiver = self;
  v15.super_class = RUIPage;
  [(RUIPage *)&v15 viewWillDisappear:?];
  v5 = [(RUIPage *)self elementProvider];
  v6 = [v5 tableViewOM];
  [v6 viewWillDisappear:v3];

  v7 = [(RUIPage *)self elementProvider];
  v8 = [v7 passcodeViewOM];
  [v8 viewWillDisappear:v3];

  v9 = [(RUIPage *)self elementProvider];
  v10 = [v9 spinnerViewOM];
  [v10 viewWillDisappear:v3];

  WeakRetained = objc_loadWeakRetained(&self->_objectModel);
  [WeakRetained cleanupRefreshTimer];

  v12 = [(RUIPage *)self primaryElement];
  v13 = objc_opt_respondsToSelector();

  if (v13)
  {
    v14 = [(RUIPage *)self primaryElement];
    [v14 viewWillDisappear:v3];
  }

  [(RUIPage *)self removeKeyboardObservers];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v11.receiver = self;
  v11.super_class = RUIPage;
  [(RUIPage *)&v11 viewDidDisappear:?];
  v5 = [(RUIPage *)self elementProvider];
  v6 = [v5 tableViewOM];
  [v6 viewDidDisappear:v3];

  v7 = [(RUIPage *)self primaryElement];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(RUIPage *)self primaryElement];
    [v9 viewDidDisappear:v3];
  }

  if ([(RUIPage *)self isMovingFromParentViewController])
  {
    WeakRetained = objc_loadWeakRetained(&self->_objectModel);
    [WeakRetained pageDidDisappear:self];
  }
}

- (unint64_t)supportedInterfaceOrientations
{
  WeakRetained = objc_loadWeakRetained(&self->_objectModel);

  if (!WeakRetained)
  {
    return 2;
  }

  v4 = objc_loadWeakRetained(&self->_objectModel);
  v5 = [v4 supportedInterfaceOrientationsForRUIPage:self];

  return v5;
}

- (void)viewWillLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = RUIPage;
  [(RUIPage *)&v5 viewWillLayoutSubviews];
  v3 = [(RUIPage *)self style];
  WeakRetained = objc_loadWeakRetained(&self->_objectModel);
  [v3 applyToObjectModel:WeakRetained];
}

- (BOOL)isPrimaryElementNilOrKindOf:(Class)a3
{
  v4 = [(RUIPage *)self primaryElement];
  if (v4)
  {
    v5 = [(RUIPage *)self primaryElement];
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 1;
  }

  return isKindOfClass & 1;
}

- (void)viewDidLayoutSubviews
{
  v91.receiver = self;
  v91.super_class = RUIPage;
  [(RUIPage *)&v91 viewDidLayoutSubviews];
  v3 = [(RUIPage *)self containerView];
  [v3 bounds];
  v5 = v4;
  v90 = v6;
  v8 = v7;
  v10 = v9;

  v11 = [(RUIPage *)self view];
  [v11 safeAreaInsets];
  v88 = v12;
  v14 = v13;

  toolbar = self->_toolbar;
  v16 = v10;
  if (toolbar)
  {
    [(UIToolbar *)toolbar sizeThatFits:v8, v10];
    v16 = v10 - (v14 + v17);
    [(UIToolbar *)self->_toolbar setFrame:v5, v10 - v17 - v14, v18, v17];
    [(UIToolbar *)self->_toolbar layoutSubviews];
  }

  v19 = v8;
  v20 = v5;
  v21 = [(RUIPage *)self elementProvider];
  v22 = [v21 tableViewOM];
  [v22 searchBarRectInPage:self];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;

  v92.origin.x = v24;
  v92.origin.y = v26;
  v92.size.width = v28;
  v92.size.height = v30;
  if (!CGRectIsEmpty(v92))
  {
    v31 = [(RUIPage *)self elementProvider];
    v32 = [v31 tableViewOM];
    v33 = [v32 searchBar];
    [v33 setFrame:{v24, v26, v28, v30}];
  }

  v93.origin.x = v24;
  v93.origin.y = v26;
  v93.size.width = v28;
  v93.size.height = v30;
  MaxY = CGRectGetMaxY(v93);
  v94.origin.x = v24;
  v94.origin.y = v26;
  v94.size.width = v28;
  v94.size.height = v30;
  v34 = v16 - CGRectGetMaxY(v94);
  v35 = [(RUIPage *)self isPrimaryElementNilOrKindOf:objc_opt_class()];
  v36 = [(RUIPage *)self isPrimaryElementNilOrKindOf:objc_opt_class()];
  v37 = [(RUIPage *)self isPrimaryElementNilOrKindOf:objc_opt_class()];
  [(RUIPage *)self _buttonTrayLayoutInset];
  v39 = v34 - v38;
  v40 = v19;
  v41 = v10;
  if (+[RUIPlatform isAppleTV])
  {
    v42 = [(RUIPage *)self elementProvider];
    v43 = [v42 tableViewOM];
    v44 = [v43 attributes];
    v45 = [v44 objectForKeyedSubscript:@"splitPosition"];
    v46 = [v45 isEqualToString:@"leftHalf"];

    if (v46)
    {
      v47 = v20 + 120.0;
      v48 = v40 * 0.5;
LABEL_10:
      v54 = v48 + -240.0;
      goto LABEL_15;
    }

    v49 = [(RUIPage *)self elementProvider];
    v50 = [v49 tableViewOM];
    v51 = [v50 attributes];
    v52 = [v51 objectForKeyedSubscript:@"splitPosition"];
    v53 = [v52 isEqualToString:@"rightHalf"];

    if (v53)
    {
      v95.origin.x = v20;
      v95.origin.y = v90;
      v95.size.width = v40;
      v95.size.height = v10;
      v47 = (CGRectGetMaxX(v95) - v20) * 0.5 + 120.0;
      v48 = v40 * 0.5;
      goto LABEL_10;
    }
  }

  [(RUIPage *)self customMargin];
  if (v55 >= 0.0)
  {
    [(RUIPage *)self customMargin];
    v54 = v40 + v61 * -2.0;
    [(RUIPage *)self customMargin];
    v47 = v20 + v62;
LABEL_15:
    v58 = MaxY;
    if (!v36)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  [(RUIPage *)self customEdgeInsets];
  v47 = v20 + v56;
  v58 = MaxY + v57;
  v54 = v40 - (v56 + v59);
  v39 = v39 - (v57 + v60);
  if (v36)
  {
LABEL_16:
    v63 = [(RUIPage *)self elementProvider];
    v64 = [v63 tableViewOM];
    v65 = [v64 tableView];
    [v65 setFrame:{v47, v58, v54, v39}];
  }

LABEL_17:
  v66 = [(RUIPage *)self elementProvider];
  v67 = [v66 tableViewOM];
  [v67 viewDidLayout];

  if (v37)
  {
    v68 = [(RUIPage *)self elementProvider];
    v69 = [v68 webViewOM];
    v70 = [v69 webView];
    [v70 setFrame:{v47, v58, v54, v39}];
  }

  v71 = [(RUIPage *)self elementProvider];
  v72 = [v71 spinnerViewOM];
  [v72 viewDidLayout];

  if (v35)
  {
    v73 = [(RUIPage *)self elementProvider];
    v74 = [v73 passcodeViewOM];
    v75 = [v74 passcodeView];
    [v75 setFrame:{v20, v88, v40, v41 - v88}];
  }

  v76 = [(RUIPage *)self elementProvider];
  v77 = [v76 passcodeViewOM];
  [v77 viewDidLayout];

  v78 = [(RUIPage *)self primaryElement];
  v79 = [v78 view];

  if (objc_opt_respondsToSelector())
  {
    v80 = [(RUIPage *)self traitCollection];
    v81 = [v80 ruiContentInsetHandling];

    if (!v81)
    {
      [v79 contentInset];
      [v79 setContentInset:v88];
    }
  }

  v82 = [(RUIPage *)self primaryElement];
  v83 = [v82 view];
  [v83 setFrame:{v20, v90, v40, v41}];

  v84 = [(RUIPage *)self primaryElement];
  v85 = [v84 view];
  [v85 layoutIfNeeded];

  v86 = [(RUIPage *)self primaryElement];
  LOBYTE(v85) = objc_opt_respondsToSelector();

  if (v85)
  {
    v87 = [(RUIPage *)self primaryElement];
    [v87 viewDidLayout];
  }
}

- (id)preferredFocusEnvironments
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = [(RUIPage *)self primaryElement];

  if (v3)
  {
    v4 = [(RUIPage *)self primaryElement];
    v5 = [v4 view];
    v11[0] = v5;
    v6 = v11;
LABEL_7:
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:{1, v9, v10, v11[0]}];

    goto LABEL_8;
  }

  if ([(RUIPage *)self hasTableView])
  {
    v4 = [(RUIPage *)self tableViewOM];
    v5 = [v4 tableView];
    v10 = v5;
    v6 = &v10;
    goto LABEL_7;
  }

  if ([(RUIPage *)self hasPasscodeView])
  {
    v4 = [(RUIPage *)self passcodeViewOM];
    v5 = [v4 passcodeView];
    v9 = v5;
    v6 = &v9;
    goto LABEL_7;
  }

  v7 = 0;
LABEL_8:

  return v7;
}

- (void)addDidAppearBlock:(id)a3
{
  v4 = a3;
  didAppearCallbacks = self->_didAppearCallbacks;
  aBlock = v4;
  if (!didAppearCallbacks)
  {
    v6 = objc_opt_new();
    v7 = self->_didAppearCallbacks;
    self->_didAppearCallbacks = v6;

    v4 = aBlock;
    didAppearCallbacks = self->_didAppearCallbacks;
  }

  v8 = _Block_copy(v4);
  [(NSMutableArray *)didAppearCallbacks addObject:v8];
}

- (BOOL)_shouldShowMultiChoiceElement
{
  if (self->_toolbar)
  {
    return 0;
  }

  v3 = [(RUIPage *)self elementProvider];
  v4 = [v3 spinnerViewOM];
  v2 = v4 == 0;

  return v2;
}

- (void)dismissIfPresentedWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(RUIPage *)self navigationController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = [(RUIPage *)self navigationController];
    [v7 dismissViewControllerAnimated:1 completion:v4];
  }

  else
  {
    v8 = [(RUIPage *)self presentingViewController];

    if (v8)
    {
      if (_isInternalInstall())
      {
        v9 = _RUILoggingFacility();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *v11 = 0;
          _os_log_impl(&dword_21B93D000, v9, OS_LOG_TYPE_DEFAULT, "Dismissing modally presented view controller.", v11, 2u);
        }
      }

      [(RUIPage *)self dismissViewControllerAnimated:1 completion:v4];
    }

    else
    {
      v10 = _RUILoggingFacility();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [RUIPage dismissIfPresentedWithCompletion:v10];
      }

      v4[2](v4);
    }
  }
}

- (void)startObservingTableView:(id)a3
{
  v4 = a3;
  [(RUIPage *)self stopObservingTableView];
  observedTableView = self->_observedTableView;
  self->_observedTableView = v4;
  v6 = v4;

  [(UITableView *)v6 addObserver:self forKeyPath:@"dataSource" options:1 context:0];
  [(UITableView *)v6 addObserver:self forKeyPath:@"delegate" options:1 context:0];
  v7 = [(UITableView *)v6 dataSource];
  [(RUIPage *)self tableViewDataSourceDidChange:v7];

  v8 = [(UITableView *)v6 delegate];

  [(RUIPage *)self tableViewDelegateDidChange:v8];
}

- (void)stopObservingTableView
{
  [(UITableView *)self->_observedTableView removeObserver:self forKeyPath:@"dataSource"];
  [(UITableView *)self->_observedTableView removeObserver:self forKeyPath:@"delegate"];
  observedTableView = self->_observedTableView;
  self->_observedTableView = 0;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = *MEMORY[0x277CCA2F0];
  v14 = [v12 objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
  v15 = [MEMORY[0x277CBEB68] null];
  if (v14 == v15)
  {
    v16 = 0;
  }

  else
  {
    v16 = [v12 objectForKeyedSubscript:v13];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([v10 isEqualToString:@"dataSource"])
    {
      [(RUIPage *)self tableViewDataSourceDidChange:v16];
    }

    else if ([v10 isEqualToString:@"delegate"])
    {
      [(RUIPage *)self tableViewDelegateDidChange:v16];
    }
  }

  else
  {
    v17.receiver = self;
    v17.super_class = RUIPage;
    [(RUIPage *)&v17 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
  }
}

- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4
{
  v9.receiver = self;
  v9.super_class = RUIPage;
  [(RUIPage *)&v9 viewDidMoveToWindow:a3 shouldAppearOrDisappear:a4];
  if ([(RUIPage *)self hasTableView])
  {
    if (a3)
    {
      retainedTableViewDelegate = [(RUIPage *)self tableViewOM];
      v7 = [retainedTableViewDelegate tableView];
      [(RUIPage *)self startObservingTableView:v7];
    }

    else
    {
      [(RUIPage *)self stopObservingTableView];
      retainedTableViewDataSource = self->_retainedTableViewDataSource;
      self->_retainedTableViewDataSource = 0;

      retainedTableViewDelegate = self->_retainedTableViewDelegate;
      self->_retainedTableViewDelegate = 0;
    }
  }
}

- (RUIObjectModel)objectModel
{
  WeakRetained = objc_loadWeakRetained(&self->_objectModel);

  return WeakRetained;
}

- (RUIPage)parentPage
{
  WeakRetained = objc_loadWeakRetained(&self->_parentPage);

  return WeakRetained;
}

- (UIEdgeInsets)customEdgeInsets
{
  top = self->_customEdgeInsets.top;
  left = self->_customEdgeInsets.left;
  bottom = self->_customEdgeInsets.bottom;
  right = self->_customEdgeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (void)notifyPageDidChangePublisher
{
  v2 = self;
  if (!sub_21B9BE0B0())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D358);
    swift_allocObject();
    v3 = sub_21BA8691C();
    v4 = type metadata accessor for SubjectBox();
    v5 = objc_allocWithZone(v4);
    *&v5[OBJC_IVAR____TtC8RemoteUIP33_4FB534BE5016ADAD8486BA58D927C77010SubjectBox_subject] = v3;
    v7.receiver = v5;
    v7.super_class = v4;
    swift_retain_n();
    v6 = [(RUIPage *)&v7 init];
    swift_beginAccess();
    objc_setAssociatedObject(v2, &off_27CD9D340, v6, 1);
    swift_endAccess();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D358);
  sub_21B9BE594(&qword_27CD9D368);
  sub_21BA8694C();
}

- (void)initializeSwift
{
  v2 = self;
  RUIPage.initializeSwift()();
}

- (void)deinitSwift
{
  v2 = self;
  RUIPage.deinitSwift()();
}

- (void)publishSMSToken:(id)a3
{
  v4 = sub_21BA87CBC();
  v6 = v5;
  v7 = self;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  RUIPage.publishSMSToken(_:)(v8);
}

- (UIViewController)toolbarContentViewController
{
  v2 = self;
  sub_21B9C07A0(&type metadata for TolbarContentViewControllerKey, &off_28172C640, &v5);

  v3 = v5;

  return v3;
}

- (void)setToolbarContentViewController:(id)a3
{
  v6 = a3;
  v4 = a3;
  v5 = self;
  sub_21B9C095C(&v6, &type metadata for TolbarContentViewControllerKey, &type metadata for TolbarContentViewControllerKey, &off_28172C640);
}

- (void)addRemoteUIWatermark
{
  v2 = self;
  RUIPage.addRemoteUIWatermark()();
}

- (id)passcodeViewSwiftBridge
{
  v2 = self;
  v3 = sub_21BA4EDC0();

  return v3;
}

@end