@interface RUIPage
- (BOOL)_shouldShowMultiChoiceElement;
- (BOOL)hasPasscodeView;
- (BOOL)hasSpinnerView;
- (BOOL)hasTableView;
- (BOOL)hasToolbar;
- (BOOL)hasWebView;
- (BOOL)isPrimaryElementNilOrKindOf:(Class)of;
- (BOOL)navBarIndicatorHidesLeftButton;
- (CGSize)preferredContentSize;
- (NSArray)accessoryViews;
- (NSArray)buttonItems;
- (NSArray)buttons;
- (NSString)activityIndicatorStyle;
- (RUIObjectModel)objectModel;
- (RUIPage)init;
- (RUIPage)initWithAttributes:(id)attributes;
- (RUIPage)initWithNibName:(id)name bundle:(id)bundle;
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
- (id)elementsWithName:(id)name;
- (id)flexibleSpace;
- (id)legacyPasscodeViewOM;
- (id)passcodeViewSwiftBridge;
- (id)preferredFocusEnvironments;
- (id)subElementWithID:(id)d;
- (id)viewForElementIdentifier:(id)identifier;
- (unint64_t)supportedInterfaceOrientations;
- (void)_addChildPage:(id)page;
- (void)_barButtonPressed:(id)pressed isRight:(BOOL)right isNavbar:(BOOL)navbar;
- (void)_handlePageUpdateRequestedNotification:(id)notification;
- (void)_keyboardWillHide:(id)hide;
- (void)_keyboardWillShow:(id)show;
- (void)_reloadTitleLabel;
- (void)_setContentInset:(double)inset;
- (void)_updateLoadingUI;
- (void)_updateParentPage;
- (void)_updateToolbar;
- (void)_updateWithCompletedChild:(id)child;
- (void)addDidAppearBlock:(id)block;
- (void)addRemoteUIWatermark;
- (void)dealloc;
- (void)deinitSwift;
- (void)dismissIfPresentedWithCompletion:(id)completion;
- (void)initializeSwift;
- (void)loadView;
- (void)notifyPageDidChangePublisher;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)populatePostbackDictionary:(id)dictionary;
- (void)populatePostbackDictionary:(id)dictionary elementProvider:(id)provider;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container;
- (void)publishSMSToken:(id)token;
- (void)removeKeyboardObservers;
- (void)setBackButtonTitle:(id)title;
- (void)setButton:(id)button enabled:(BOOL)enabled;
- (void)setCustomMargin:(double)margin;
- (void)setHasToolbar;
- (void)setHidesBackButton:(BOOL)button;
- (void)setLeftNavigationBarButton:(id)button;
- (void)setLeftNavigationBarButtonItem:(id)item;
- (void)setLeftNavigationBarButtonItem:(id)item barButtonItem:(id)buttonItem;
- (void)setLeftToolbarButton:(id)button;
- (void)setLeftToolbarButtonItem:(id)item;
- (void)setLoading:(BOOL)loading;
- (void)setLoadingTitle:(id)title;
- (void)setMiddleToolbarButton:(id)button;
- (void)setMiddleToolbarButtonItem:(id)item;
- (void)setNavSubTitle:(id)title;
- (void)setNavTitle:(id)title;
- (void)setObjectModel:(id)model;
- (void)setPageElement:(id)element;
- (void)setRightNavigationBarButton:(id)button;
- (void)setRightNavigationBarButtonItem:(id)item;
- (void)setRightNavigationBarButtonItem:(id)item barButtonItem:(id)buttonItem;
- (void)setRightToolbarButton:(id)button;
- (void)setRightToolbarButtonItem:(id)item;
- (void)setShowsTitlesAsHeaderViews:(BOOL)views;
- (void)setTitleLabelPadding:(UIEdgeInsets)padding;
- (void)setToolbarContentViewController:(id)controller;
- (void)setValue:(id)value forField:(id)field;
- (void)setupContainerView;
- (void)startObservingTableView:(id)view;
- (void)stopObservingTableView;
- (void)topLevelElementProvider:(id)provider didCreatePasscodeView:(id)view;
- (void)topLevelElementProvider:(id)provider didCreateSpinnerView:(id)view;
- (void)topLevelElementProvider:(id)provider didCreateTableView:(id)view;
- (void)topLevelElementProvider:(id)provider didCreateWebView:(id)view;
- (void)topLevelElementProvider:(id)provider didSetPrimaryElement:(id)element previousElement:(id)previousElement;
- (void)traitCollectionDidChange:(id)change;
- (void)updatePreferredContentSize;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear;
- (void)viewIsAppearing:(BOOL)appearing;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
@end

@implementation RUIPage

- (RUIPage)initWithAttributes:(id)attributes
{
  attributesCopy = attributes;
  v5 = [(RUIPage *)self init];
  v6 = v5;
  if (v5)
  {
    [(RUIPage *)v5 setAttributes:attributesCopy];
  }

  return v6;
}

- (UIView)containerView
{
  style = [(RUIPage *)self style];
  usesOnBoardingKitContainer = [style usesOnBoardingKitContainer];

  if (usesOnBoardingKitContainer)
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

    view = [(OBBaseWelcomeController *)onBoardingKitContainer view];
  }

  else
  {
    view = self->_containerView;
  }

  return view;
}

- (void)setupContainerView
{
  v28[4] = *MEMORY[0x277D85DE8];
  containerView = [(RUIPage *)self containerView];
  onBoardingKitContainer = self->_onBoardingKitContainer;
  if (onBoardingKitContainer)
  {
    view = [(OBBaseWelcomeController *)onBoardingKitContainer view];
    superview = [view superview];

    if (!superview)
    {
      containerView = self->_containerView;
      view2 = [(OBBaseWelcomeController *)self->_onBoardingKitContainer view];
      [(UIView *)containerView addSubview:view2];

      view3 = [(OBBaseWelcomeController *)self->_onBoardingKitContainer view];
      [view3 setTranslatesAutoresizingMaskIntoConstraints:0];

      v20 = MEMORY[0x277CCAAD0];
      view4 = [(OBBaseWelcomeController *)self->_onBoardingKitContainer view];
      topAnchor = [view4 topAnchor];
      topAnchor2 = [(UIView *)self->_containerView topAnchor];
      v24 = [topAnchor constraintEqualToAnchor:topAnchor2];
      v28[0] = v24;
      view5 = [(OBBaseWelcomeController *)self->_onBoardingKitContainer view];
      bottomAnchor = [view5 bottomAnchor];
      bottomAnchor2 = [(UIView *)self->_containerView bottomAnchor];
      v19 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
      v28[1] = v19;
      view6 = [(OBBaseWelcomeController *)self->_onBoardingKitContainer view];
      leftAnchor = [view6 leftAnchor];
      leftAnchor2 = [(UIView *)self->_containerView leftAnchor];
      v12 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
      v28[2] = v12;
      view7 = [(OBBaseWelcomeController *)self->_onBoardingKitContainer view];
      rightAnchor = [view7 rightAnchor];
      rightAnchor2 = [(UIView *)self->_containerView rightAnchor];
      v16 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
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

    array = [MEMORY[0x277CBEB18] array];
    elementProviders = v2->_elementProviders;
    v2->_elementProviders = array;
  }

  return v2;
}

- (RUIPage)initWithNibName:(id)name bundle:(id)bundle
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
  attributes = [(RUIPage *)self attributes];
  v3 = [attributes objectForKeyedSubscript:@"activityIndicatorStyle"];
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

- (void)setLoading:(BOOL)loading
{
  if (self->_loading != loading)
  {
    self->_loading = loading;
    [(RUIPage *)self _updateLoadingUI];
  }
}

- (void)setLoadingTitle:(id)title
{
  if (self->_loadingTitle != title)
  {
    v4 = [title copy];
    loadingTitle = self->_loadingTitle;
    self->_loadingTitle = v4;

    [(RUIPage *)self _updateLoadingUI];
  }
}

- (BOOL)navBarIndicatorHidesLeftButton
{
  itemType = [(RUIBarButtonItem *)self->_leftNavigationBarButtonItem itemType];
  v3 = [itemType isEqualToString:@"titleBarItem"];

  return v3 ^ 1;
}

- (void)updatePreferredContentSize
{
  v60 = *MEMORY[0x277D85DE8];
  if ([(RUIPage *)self isPrimaryElementNilOrKindOf:objc_opt_class()])
  {
    navigationController = [(RUIPage *)self navigationController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      navigationController2 = [(RUIPage *)self navigationController];
      if ([navigationController2 ruiModalPresentationStyle] == 2 && -[RUIPage hasTableView](self, "hasTableView"))
      {
        tableViewOM = [(RUIPage *)self tableViewOM];
        tableView = [tableViewOM tableView];
        [tableView frame];
        v9 = v8;
        v11 = v10;
        v13 = v12;
        v15 = v14;

        tableViewOM2 = [(RUIPage *)self tableViewOM];
        tableView2 = [tableViewOM2 tableView];
        [tableView2 beginUpdates];

        tableViewOM3 = [(RUIPage *)self tableViewOM];
        tableView3 = [tableViewOM3 tableView];
        [tableView3 endUpdates];

        tableViewOM4 = [(RUIPage *)self tableViewOM];
        tableView4 = [tableViewOM4 tableView];
        [tableView4 layoutIfNeeded];

        containerView = [(RUIPage *)self containerView];
        containerView2 = [(RUIPage *)self containerView];
        [containerView convertRect:containerView2 fromView:{v9, v11, v13, v15}];
        v25 = v24;

        elementProvider = [(RUIPage *)self elementProvider];
        tableViewOM5 = [elementProvider tableViewOM];
        tableView5 = [tableViewOM5 tableView];
        [tableView5 contentSize];
        v30 = v29;
        elementProvider2 = [(RUIPage *)self elementProvider];
        tableViewOM6 = [elementProvider2 tableViewOM];
        tableView6 = [tableViewOM6 tableView];
        [tableView6 contentInset];
        v35 = v34;
        v36 = v25 + v30;

        if (_isInternalInstall())
        {
          v37 = _RUILoggingFacility();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
            elementProvider3 = [(RUIPage *)self elementProvider];
            tableViewOM7 = [elementProvider3 tableViewOM];
            tableView7 = [tableViewOM7 tableView];
            [tableView7 window];
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
            elementProvider4 = [(RUIPage *)self elementProvider];
            tableViewOM8 = [elementProvider4 tableViewOM];
            tableView8 = [tableViewOM8 tableView];
            [tableView8 adjustedContentInset];
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

        navigationController3 = [(RUIPage *)self navigationController];
        [navigationController3 preferredContentSize];
        v54 = v53;
        v56 = v55;

        if (v54 != v13 || v56 != v42)
        {
          navigationController4 = [(RUIPage *)self navigationController];
          [navigationController4 setPreferredContentSize:{v13, v48}];
        }
      }
    }
  }
}

- (void)_updateLoadingUI
{
  v39 = self->_navTitle;
  v3 = self->_navSubTitle;
  activityIndicatorStyle = [(RUIPage *)self activityIndicatorStyle];
  v5 = [activityIndicatorStyle isEqualToString:@"navbar"];

  if (v5)
  {
    v6 = 1;
  }

  else
  {
    activityIndicatorStyle2 = [(RUIPage *)self activityIndicatorStyle];
    v8 = [activityIndicatorStyle2 isEqualToString:@"default"];

    if (v8)
    {
      objectModel = [(RUIPage *)self objectModel];
      activeElement = [objectModel activeElement];
      v6 = [activeElement wantsInlineActivityIndicator] ^ 1;
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

  style = [(RUIPage *)self style];
  navigationItem = [(RUIPage *)self navigationItem];
  [style applyToNavigationItem:navigationItem];

  if (!self->_showsTitlesAsHeaderViews || ![(RUIPage *)self hasTableView]&& ![(RUIPage *)self hasPasscodeView]&& ([(RUIPage *)self primaryElement], v14 = objc_claimAutoreleasedReturnValue(), v14, !v14))
  {
    navigationItem2 = [(RUIPage *)self navigationItem];
    [navigationItem2 setTitle:v39];

    elementProvider = [(RUIPage *)self elementProvider];
    tableViewOM = [elementProvider tableViewOM];
    [tableViewOM setHeaderTitle:0];

    elementProvider2 = [(RUIPage *)self elementProvider];
    tableViewOM2 = [elementProvider2 tableViewOM];
    [tableViewOM2 setSubHeaderTitle:0];

    elementProvider3 = [(RUIPage *)self elementProvider];
    passcodeViewOM = [elementProvider3 passcodeViewOM];
    [passcodeViewOM setHeaderTitle:0];

    primaryElement = [(RUIPage *)self primaryElement];
    LOBYTE(passcodeViewOM) = objc_opt_respondsToSelector();

    v23 = 0;
    if ((passcodeViewOM & 1) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  navigationItem3 = [(RUIPage *)self navigationItem];
  [navigationItem3 setTitle:0];

  elementProvider4 = [(RUIPage *)self elementProvider];
  tableViewOM3 = [elementProvider4 tableViewOM];
  [tableViewOM3 setHeaderTitle:v39];

  elementProvider5 = [(RUIPage *)self elementProvider];
  tableViewOM4 = [elementProvider5 tableViewOM];
  [tableViewOM4 setSubHeaderTitle:v3];

  elementProvider6 = [(RUIPage *)self elementProvider];
  passcodeViewOM2 = [elementProvider6 passcodeViewOM];
  [passcodeViewOM2 setHeaderTitle:v39];

  primaryElement2 = [(RUIPage *)self primaryElement];
  LOBYTE(passcodeViewOM2) = objc_opt_respondsToSelector();

  v23 = v39;
  if (passcodeViewOM2)
  {
LABEL_16:
    primaryElement3 = [(RUIPage *)self primaryElement];
    [primaryElement3 setTitle:v23];
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
      style2 = [(RUIPage *)self style];
      [v35 setActivityIndicatorViewStyle:{objc_msgSend(style2, "navBarActivityIndicatorStyle")}];

      v37 = +[RUINavBarSpinnerManager sharedSpinnerManager];
      navigationItem4 = [(RUIPage *)self navigationItem];
      [v37 startAnimatingInNavItem:navigationItem4 title:0 forIdentifier:v33 hideBackButton:1 hideLeftItems:{-[RUIPage navBarIndicatorHidesLeftButton](self, "navBarIndicatorHidesLeftButton")}];
    }

    else
    {
      [(UIView *)containerView setUserInteractionEnabled:1];
      v37 = +[RUINavBarSpinnerManager sharedSpinnerManager];
      [v37 stopAnimatingForIdentifier:v33];
    }
  }
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container
{
  v9.receiver = self;
  v9.super_class = RUIPage;
  containerCopy = container;
  [(RUIPage *)&v9 preferredContentSizeDidChangeForChildContentContainer:containerCopy];
  [containerCopy preferredContentSize];
  v6 = v5;
  v8 = v7;

  [(RUIPage *)self setPreferredContentSize:v6, v8];
}

- (void)setNavTitle:(id)title
{
  if (self->_navTitle != title)
  {
    v4 = [title copy];
    navTitle = self->_navTitle;
    self->_navTitle = v4;

    [(RUIPage *)self _updateLoadingUI];
  }
}

- (void)setNavSubTitle:(id)title
{
  if (self->_navSubTitle != title)
  {
    v4 = [title copy];
    navSubTitle = self->_navSubTitle;
    self->_navSubTitle = v4;

    [(RUIPage *)self _updateLoadingUI];
  }
}

- (void)setBackButtonTitle:(id)title
{
  titleCopy = title;
  if (!+[RUIPlatform isSolariumEnabled]&& self->_backButtonTitle != titleCopy)
  {
    objc_storeStrong(&self->_backButtonTitle, title);
    navigationItem = [(RUIPage *)self navigationItem];
    backBarButtonItem = [navigationItem backBarButtonItem];
    [backBarButtonItem setTitle:titleCopy];
  }
}

- (void)setShowsTitlesAsHeaderViews:(BOOL)views
{
  if (self->_showsTitlesAsHeaderViews != views)
  {
    self->_showsTitlesAsHeaderViews = views;
    [(RUIPage *)self _updateLoadingUI];
  }
}

- (UILabel)titleLabel
{
  primaryElement = [(RUIPage *)self primaryElement];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    primaryElement2 = [(RUIPage *)self primaryElement];
    titleLabel = [primaryElement2 titleLabel];
  }

  else
  {
    titleLabel = 0;
  }

  return titleLabel;
}

- (void)setTitleLabelPadding:(UIEdgeInsets)padding
{
  right = padding.right;
  bottom = padding.bottom;
  left = padding.left;
  top = padding.top;
  if ([(RUIPage *)self hasTableView])
  {
    elementProvider = [(RUIPage *)self elementProvider];
    tableViewOM = [elementProvider tableViewOM];
    headerView = [tableViewOM headerView];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [headerView setMargins:{top, left, bottom, right}];
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

  elementProvider = [(RUIPage *)self elementProvider];
  tableViewOM = [elementProvider tableViewOM];
  headerView = [tableViewOM headerView];

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

  [headerView margins];
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
    elementProvider = [(RUIPage *)self elementProvider];
    tableViewOM = [elementProvider tableViewOM];
    tableView = [tableViewOM tableView];
    [tableView reloadData];
  }
}

- (void)setHidesBackButton:(BOOL)button
{
  buttonCopy = button;
  self->_hidesBackButton = button;
  navigationItem = [(RUIPage *)self navigationItem];
  [navigationItem setHidesBackButton:buttonCopy];
}

- (BOOL)hasToolbar
{
  if (![(RUIPage *)self usesStandardToolbar])
  {
    return self->_toolbar != 0;
  }

  toolbarItems = [(RUIPage *)self toolbarItems];
  v4 = [toolbarItems count] != 0;

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

    containerView = [(RUIPage *)self containerView];
    [containerView addSubview:self->_toolbar];
  }
}

- (void)setValue:(id)value forField:(id)field
{
  valueCopy = value;
  fieldCopy = field;
  elementProviders = self->_elementProviders;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __29__RUIPage_setValue_forField___block_invoke;
  v11[3] = &unk_2782E83E0;
  v12 = fieldCopy;
  v13 = valueCopy;
  v9 = valueCopy;
  v10 = fieldCopy;
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

- (void)setCustomMargin:(double)margin
{
  self->_customMargin = margin;
  elementProvider = [(RUIPage *)self elementProvider];
  tableViewOM = [elementProvider tableViewOM];
  tableView = [tableViewOM tableView];

  if (tableView)
  {
    if (margin >= 0.0)
    {
      [tableView setClipsToBounds:0];
      [tableView setScrollIndicatorInsets:{0.0, 0.0, 0.0, -margin}];
      containerView = [(RUIPage *)self containerView];
      panGestureRecognizer = [tableView panGestureRecognizer];
      [containerView addGestureRecognizer:panGestureRecognizer];
    }

    else
    {
      [tableView setClipsToBounds:1];
      [tableView setScrollIndicatorInsets:{*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)}];
      containerView = [tableView panGestureRecognizer];
      [tableView addGestureRecognizer:containerView];
    }
  }
}

- (NSArray)buttonItems
{
  array = [MEMORY[0x277CBEB18] array];
  v4 = array;
  if (self->_leftNavigationBarButtonItem)
  {
    [array addObject:?];
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

- (void)setButton:(id)button enabled:(BOOL)enabled
{
  enabledCopy = enabled;
  buttonCopy = button;
  v7 = [buttonCopy objectForKey:@"position"];
  v8 = [buttonCopy objectForKey:@"parentBar"];

  if ([v8 isEqualToString:@"navigationBar"])
  {
    if ([v7 isEqualToString:@"right"])
    {
      navigationItem = [(RUIPage *)self navigationItem];
      rightBarButtonItem = [navigationItem rightBarButtonItem];
LABEL_9:
      v12 = rightBarButtonItem;

      rightToolbarItem = v12;
      goto LABEL_15;
    }

    if ([v7 isEqualToString:@"left"])
    {
      navigationItem = [(RUIPage *)self navigationItem];
      rightBarButtonItem = [navigationItem leftBarButtonItem];
      goto LABEL_9;
    }
  }

  else if ([v8 isEqualToString:@"toolbar"])
  {
    if ([v7 isEqualToString:@"right"])
    {
      rightToolbarItem = [(RUIPage *)self rightToolbarItem];
      goto LABEL_15;
    }

    if ([v7 isEqualToString:@"left"])
    {
      rightToolbarItem = [(RUIPage *)self leftToolbarItem];
      goto LABEL_15;
    }

    if ([v7 isEqualToString:@"center"])
    {
      rightToolbarItem = [(RUIPage *)self middleToolbarItem];
      goto LABEL_15;
    }
  }

  rightToolbarItem = 0;
LABEL_15:
  v13 = rightToolbarItem;
  [rightToolbarItem setEnabled:enabledCopy];
}

- (void)setRightNavigationBarButtonItem:(id)item barButtonItem:(id)buttonItem
{
  itemCopy = item;
  if (self->_rightNavigationBarButtonItem != itemCopy)
  {
    v10 = itemCopy;
    objc_storeStrong(&self->_rightNavigationBarButtonItem, item);
    buttonItemCopy = buttonItem;
    navigationItem = [(RUIPage *)self navigationItem];
    [navigationItem setRightBarButtonItem:buttonItemCopy];

    itemCopy = v10;
  }
}

- (void)setRightNavigationBarButtonItem:(id)item
{
  itemCopy = item;
  objc_initWeak(&location, self);
  v6 = MEMORY[0x277D85DD0];
  v7 = 3221225472;
  v8 = __43__RUIPage_setRightNavigationBarButtonItem___block_invoke;
  v9 = &unk_2782E81C8;
  objc_copyWeak(&v10, &location);
  [itemCopy setAction:&v6];
  barButtonItem = [itemCopy barButtonItem];
  [(RUIPage *)self setRightNavigationBarButtonItem:itemCopy barButtonItem:barButtonItem];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __43__RUIPage_setRightNavigationBarButtonItem___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _rightNavigationBarButtonPressed:0];
}

- (void)setLeftNavigationBarButtonItem:(id)item barButtonItem:(id)buttonItem
{
  itemCopy = item;
  buttonItemCopy = buttonItem;
  if (self->_leftNavigationBarButtonItem != itemCopy)
  {
    objc_storeStrong(&self->_leftNavigationBarButtonItem, item);
    itemType = [(RUIBarButtonItem *)itemCopy itemType];
    v9 = [itemType isEqualToString:@"backButtonBarItem"];

    if ((v9 & 1) == 0)
    {
      navigationItem = [(RUIPage *)self navigationItem];
      [navigationItem setLeftBarButtonItem:buttonItemCopy];
    }
  }
}

- (void)setLeftNavigationBarButtonItem:(id)item
{
  itemCopy = item;
  objc_initWeak(&location, self);
  itemType = [itemCopy itemType];
  v6 = [itemType isEqualToString:@"tapToRadarBarItem"];

  if ((v6 & 1) == 0)
  {
    v8 = MEMORY[0x277D85DD0];
    v9 = 3221225472;
    v10 = __42__RUIPage_setLeftNavigationBarButtonItem___block_invoke;
    v11 = &unk_2782E81C8;
    objc_copyWeak(&v12, &location);
    [itemCopy setAction:&v8];
    objc_destroyWeak(&v12);
  }

  barButtonItem = [itemCopy barButtonItem];
  [(RUIPage *)self setLeftNavigationBarButtonItem:itemCopy barButtonItem:barButtonItem];

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
    flexibleSpace = [(RUIPage *)self flexibleSpace];
    middleFlexSpace = self->_middleFlexSpace;
    self->_middleFlexSpace = flexibleSpace;
  }

  if (!self->_leftFlexSpace)
  {
    flexibleSpace2 = [(RUIPage *)self flexibleSpace];
    leftFlexSpace = self->_leftFlexSpace;
    self->_leftFlexSpace = flexibleSpace2;
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
    flexibleSpace3 = rightToolbarItem;
  }

  else
  {
    flexibleSpace3 = [(RUIPage *)self flexibleSpace];
  }

  v11 = flexibleSpace3;
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
      flexibleSpace4 = v14;
    }

    else
    {
      flexibleSpace4 = [(RUIPage *)self flexibleSpace];
    }

    v18 = flexibleSpace4;
    if (self->_leftToolbarItem || self->_rightToolbarItem)
    {
      v28[0] = v13;
      flexibleSpace5 = [(RUIPage *)self flexibleSpace];
      middleToolbarItem = self->_middleToolbarItem;
      v28[1] = flexibleSpace5;
      v28[2] = middleToolbarItem;
      flexibleSpace6 = [(RUIPage *)self flexibleSpace];
      v28[3] = flexibleSpace6;
      v28[4] = v18;
      v22 = MEMORY[0x277CBEA60];
      v23 = v28;
      v24 = 5;
    }

    else
    {
      flexibleSpace5 = [(RUIPage *)self flexibleSpace];
      flexibleSpace6 = [(RUIPage *)self flexibleSpace:flexibleSpace5];
      v27[2] = flexibleSpace6;
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
    v29[2] = flexibleSpace3;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:3];
  }

  if ([(RUIPage *)self usesStandardToolbar])
  {
    [(RUIPage *)self setToolbarItems:v17];
    hasToolbar = [(RUIPage *)self hasToolbar];
    navigationController = [(RUIPage *)self navigationController];
    [navigationController setToolbarHidden:!hasToolbar];
  }

  else
  {
    [(UIToolbar *)self->_toolbar setItems:v17];
  }
}

- (void)setRightToolbarButtonItem:(id)item
{
  itemCopy = item;
  if (self->_rightToolbarButtonItem != itemCopy)
  {
    objc_storeStrong(&self->_rightToolbarButtonItem, item);
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

- (void)setMiddleToolbarButtonItem:(id)item
{
  itemCopy = item;
  if (self->_middleToolbarButtonItem != itemCopy)
  {
    objc_storeStrong(&self->_middleToolbarButtonItem, item);
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

- (void)setLeftToolbarButtonItem:(id)item
{
  itemCopy = item;
  if (self->_leftToolbarButtonItem != itemCopy)
  {
    objc_storeStrong(&self->_leftToolbarButtonItem, item);
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

- (void)setRightToolbarButton:(id)button
{
  buttonCopy = button;
  v5 = objc_opt_new();
  [v5 setAttributes:buttonCopy];

  [(RUIPage *)self setRightToolbarButtonItem:v5];
}

- (void)setMiddleToolbarButton:(id)button
{
  buttonCopy = button;
  v5 = objc_opt_new();
  [v5 setAttributes:buttonCopy];

  [(RUIPage *)self setMiddleToolbarButtonItem:v5];
}

- (void)setLeftToolbarButton:(id)button
{
  buttonCopy = button;
  v5 = objc_opt_new();
  [v5 setAttributes:buttonCopy];

  [(RUIPage *)self setLeftToolbarButtonItem:v5];
}

- (void)setRightNavigationBarButton:(id)button
{
  buttonCopy = button;
  v5 = objc_opt_new();
  [v5 setAttributes:buttonCopy];

  [(RUIPage *)self setRightNavigationBarButtonItem:v5];
}

- (void)setLeftNavigationBarButton:(id)button
{
  buttonCopy = button;
  v5 = objc_opt_new();
  [v5 setAttributes:buttonCopy];

  [(RUIPage *)self setLeftNavigationBarButtonItem:v5];
}

- (NSArray)buttons
{
  array = [MEMORY[0x277CBEB18] array];
  leftNavigationBarButtonItem = self->_leftNavigationBarButtonItem;
  if (leftNavigationBarButtonItem)
  {
    attributes = [(RUIElement *)leftNavigationBarButtonItem attributes];
    [array addObject:attributes];
  }

  rightNavigationBarButtonItem = self->_rightNavigationBarButtonItem;
  if (rightNavigationBarButtonItem)
  {
    attributes2 = [(RUIElement *)rightNavigationBarButtonItem attributes];
    [array addObject:attributes2];
  }

  leftToolbarButtonItem = self->_leftToolbarButtonItem;
  if (leftToolbarButtonItem)
  {
    attributes3 = [(RUIElement *)leftToolbarButtonItem attributes];
    [array addObject:attributes3];
  }

  rightToolbarButtonItem = self->_rightToolbarButtonItem;
  if (rightToolbarButtonItem)
  {
    attributes4 = [(RUIElement *)rightToolbarButtonItem attributes];
    [array addObject:attributes4];
  }

  middleToolbarButtonItem = self->_middleToolbarButtonItem;
  if (middleToolbarButtonItem)
  {
    attributes5 = [(RUIElement *)middleToolbarButtonItem attributes];
    [array addObject:attributes5];
  }

  return array;
}

- (void)_barButtonPressed:(id)pressed isRight:(BOOL)right isNavbar:(BOOL)navbar
{
  navbarCopy = navbar;
  rightCopy = right;
  pressedCopy = pressed;
  attributes = [pressedCopy attributes];
  v9 = [attributes objectForKey:@"type"];
  v10 = [v9 isEqualToString:@"editBarItem"];

  if (v10)
  {
    elementProvider = [(RUIPage *)self elementProvider];
    tableViewOM = [elementProvider tableViewOM];
    tableView = [tableViewOM tableView];

    isEditing = [tableView isEditing];
    elementProvider2 = [(RUIPage *)self elementProvider];
    tableViewOM2 = [elementProvider2 tableViewOM];
    tableView2 = [tableViewOM2 tableView];
    [tableView2 setEditing:isEditing ^ 1u animated:1];

    v18 = &selRef__rightNavigationBarButtonPressed_;
    if (!navbarCopy)
    {
      v18 = &selRef__rightToolbarButtonPressed_;
    }

    v19 = &selRef__leftNavigationBarButtonPressed_;
    if (!navbarCopy)
    {
      v19 = &selRef__leftToolbarButtonPressed_;
    }

    if (!rightCopy)
    {
      v18 = v19;
    }

    v20 = *v18;
    v21 = objc_alloc(MEMORY[0x277D751E0]);
    if (isEditing)
    {
      v22 = 2;
    }

    else
    {
      v22 = 0;
    }

    v23 = [v21 initWithBarButtonSystemItem:v22 target:self action:v20];
    if (navbarCopy)
    {
      navigationItem = [(RUIPage *)self navigationItem];
      v25 = navigationItem;
      if (rightCopy)
      {
        [navigationItem setRightBarButtonItem:v23];
      }

      else
      {
        [navigationItem setLeftBarButtonItem:v23];
      }
    }

    else
    {
      if (rightCopy)
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
    [WeakRetained RUIPage:self toggledEditing:isEditing ^ 1u];
  }

  else
  {
    itemType = [pressedCopy itemType];
    v27 = [itemType isEqualToString:@"closeButtonBarItem"];

    if (v27)
    {
      tableView = [(RUIPage *)self navigationController];
      [tableView dismissViewControllerAnimated:1 completion:0];
      goto LABEL_28;
    }

    itemType2 = [pressedCopy itemType];
    if ([itemType2 isEqualToString:@"backButtonBarItem"])
    {
      v29 = [attributes objectForKey:@"url"];

      if (!v29)
      {
        tableView = [(RUIPage *)self navigationController];
        [tableView settingsCompatiblePopViewController];
        goto LABEL_28;
      }
    }

    else
    {
    }

    tableView = objc_loadWeakRetained(&self->_objectModel);
    [tableView RUIPage:self pressedNavBarButton:pressedCopy];
  }

LABEL_28:
}

- (void)_setContentInset:(double)inset
{
  traitCollection = [(RUIPage *)self traitCollection];
  ruiContentInsetHandling = [traitCollection ruiContentInsetHandling];

  if (!ruiContentInsetHandling)
  {
    elementProvider = [(RUIPage *)self elementProvider];
    tableViewOM = [elementProvider tableViewOM];
    tableView = [tableViewOM tableView];
    [tableView contentInset];
    v11 = v10;
    v13 = v12;
    v15 = v14;

    elementProvider2 = [(RUIPage *)self elementProvider];
    tableViewOM2 = [elementProvider2 tableViewOM];
    tableView2 = [tableViewOM2 tableView];
    [tableView2 setContentInset:{v11, v13, inset, v15}];

    elementProvider3 = [(RUIPage *)self elementProvider];
    tableViewOM3 = [elementProvider3 tableViewOM];
    tableView3 = [tableViewOM3 tableView];
    [tableView3 setScrollIndicatorInsets:{v11, v13, inset, v15}];
  }
}

- (NSArray)accessoryViews
{
  v32 = *MEMORY[0x277D85DE8];
  elementProvider = [(RUIPage *)self elementProvider];
  tableViewOM = [elementProvider tableViewOM];
  tableView = [tableViewOM tableView];

  tableHeaderView = [tableView tableHeaderView];
  tableFooterView = [tableView tableFooterView];
  array = [MEMORY[0x277CBEB18] array];
  v9 = &unk_282DBDD88;
  if ([tableHeaderView conformsToProtocol:v9])
  {
    [array addObject:tableHeaderView];
  }

  v26 = tableHeaderView;
  if ([tableFooterView conformsToProtocol:v9])
  {
    [array addObject:tableFooterView];
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  elementProvider2 = [(RUIPage *)self elementProvider];
  tableViewOM2 = [elementProvider2 tableViewOM];
  sections = [tableViewOM2 sections];

  v13 = [sections countByEnumeratingWithState:&v27 objects:v31 count:16];
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
          objc_enumerationMutation(sections);
        }

        v17 = *(*(&v27 + 1) + 8 * i);
        headerView = [v17 headerView];
        v19 = [headerView conformsToProtocol:v9];

        if (v19)
        {
          headerView2 = [v17 headerView];
          [array addObject:headerView2];
        }

        footerView = [v17 footerView];
        v22 = [footerView conformsToProtocol:v9];

        if (v22)
        {
          footerView2 = [v17 footerView];
          [array addObject:footerView2];
        }
      }

      v14 = [sections countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v14);
  }

  return array;
}

- (void)_keyboardWillShow:(id)show
{
  showCopy = show;
  elementProvider = [(RUIPage *)self elementProvider];
  tableViewOM = [elementProvider tableViewOM];
  tableView = [tableViewOM tableView];

  window = [tableView window];

  if (window)
  {
    userInfo = [showCopy userInfo];
    v10 = [userInfo objectForKeyedSubscript:*MEMORY[0x277D76BB8]];
    [v10 CGRectValue];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;

    object = [showCopy object];
    coordinateSpace = [object coordinateSpace];

    view = [(RUIPage *)self view];
    [coordinateSpace convertRect:view toCoordinateSpace:{v12, v14, v16, v18}];
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v29 = v28;
    visibleCells = [tableView visibleCells];
    [tableView frame];
    MaxY = CGRectGetMaxY(v42);
    v43.origin.x = v23;
    v43.origin.y = v25;
    v43.size.width = v27;
    v43.size.height = v29;
    v32 = fmax(MaxY - CGRectGetMinY(v43), 0.0);
    containerView = [(RUIPage *)self containerView];
    [containerView safeAreaInsets];
    v35 = v32 + v34;

    v36 = MEMORY[0x277D756A8];
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __29__RUIPage__keyboardWillShow___block_invoke;
    v38[3] = &unk_2782E8408;
    v38[4] = self;
    v41 = v35;
    v39 = tableView;
    v40 = visibleCells;
    v37 = visibleCells;
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

- (void)_keyboardWillHide:(id)hide
{
  elementProvider = [(RUIPage *)self elementProvider];
  tableViewOM = [elementProvider tableViewOM];
  tableView = [tableViewOM tableView];

  window = [tableView window];

  if (window)
  {
    tableViewOM2 = [(RUIPage *)self tableViewOM];
    isShowingPicker = [tableViewOM2 isShowingPicker];

    if ((isShowingPicker & 1) == 0)
    {
      v10 = MEMORY[0x277D756A8];
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __29__RUIPage__keyboardWillHide___block_invoke;
      v11[3] = &unk_2782E8430;
      v11[4] = self;
      v12 = tableView;
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

- (void)setPageElement:(id)element
{
  elementCopy = element;
  pageElement = self->_pageElement;
  if (pageElement != elementCopy)
  {
    v9 = elementCopy;
    [(RUIPageElement *)pageElement setPage:0];
    objc_storeStrong(&self->_pageElement, element);
    [(RUIPageElement *)self->_pageElement setPage:self];
    v7 = [[RUITopLevelElementProvider alloc] initWithParentElement:v9];
    elementProvider = self->_elementProvider;
    self->_elementProvider = v7;

    [(RUIPage *)self addElementProvider:self->_elementProvider];
    pageElement = [(RUITopLevelElementProvider *)self->_elementProvider setDelegate:self];
    elementCopy = v9;
  }

  MEMORY[0x2821F96F8](pageElement, elementCopy);
}

- (void)_addChildPage:(id)page
{
  pageCopy = page;
  childPages = self->_childPages;
  v8 = pageCopy;
  if (!childPages)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_childPages;
    self->_childPages = v6;

    pageCopy = v8;
    childPages = self->_childPages;
  }

  [(NSMutableArray *)childPages addObject:pageCopy];
  [v8 _setParentPage:self];
}

- (void)_updateWithCompletedChild:(id)child
{
  v85 = *MEMORY[0x277D85DE8];
  childCopy = child;
  tableViewOM = [childCopy tableViewOM];
  selfCopy = self;
  tableViewOM2 = [(RUIPage *)self tableViewOM];
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  sections = [tableViewOM sections];
  v59 = [sections countByEnumeratingWithState:&v77 objects:v84 count:16];
  if (v59)
  {
    v50 = childCopy;
    v51 = tableViewOM2;
    v49 = tableViewOM;
    v8 = 0;
    v63 = 0;
    v64 = 0;
    obj = sections;
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
        rows = [v10 rows];
        v12 = [rows countByEnumeratingWithState:&v73 objects:v83 count:16];
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
                objc_enumerationMutation(rows);
              }

              v17 = *(*(&v73 + 1) + 8 * i);
              attributes = [v17 attributes];
              v8 = [attributes objectForKeyedSubscript:@"radioGroup"];

              if ([v8 length])
              {
                tableCell = [v17 tableCell];
                remoteUIAccessoryType = [tableCell remoteUIAccessoryType];

                if (remoteUIAccessoryType == 3)
                {
                  v21 = [attributes objectForKeyedSubscript:@"value"];

                  v22 = [attributes objectForKeyedSubscript:@"label"];

                  v63 = v22;
                  v64 = v21;
                }
              }
            }

            v13 = [rows countByEnumeratingWithState:&v73 objects:v83 count:16];
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
      tableViewOM = v49;
      childCopy = v50;
      tableViewOM2 = v51;
      goto LABEL_39;
    }

    tableViewOM2 = v51;
    if (!v63)
    {
      tableViewOM = v49;
      childCopy = v50;
      goto LABEL_39;
    }

    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    sections2 = [v51 sections];
    obja = [sections2 countByEnumeratingWithState:&v69 objects:v82 count:16];
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
            objc_enumerationMutation(sections2);
          }

          v57 = v23;
          v24 = *(*(&v69 + 1) + 8 * v23);
          v65 = 0u;
          v66 = 0u;
          v67 = 0u;
          v68 = 0u;
          rows2 = [v24 rows];
          v25 = [rows2 countByEnumeratingWithState:&v65 objects:v81 count:16];
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
                  objc_enumerationMutation(rows2);
                }

                v29 = *(*(&v65 + 1) + 8 * v28);
                attributes2 = [v29 attributes];
                v31 = [attributes2 mutableCopy];

                linkedPage = [v29 linkedPage];
                pageID = [linkedPage pageID];
                v34 = [pageID isEqualToString:v8];

                if (v34)
                {
                  tableCell2 = [v29 tableCell];
                  ruiDetailTextLabel = [tableCell2 ruiDetailTextLabel];
                  [ruiDetailTextLabel setText:v63];

                  tableCell3 = [v29 tableCell];
                  ruiDetailTextLabel2 = [tableCell3 ruiDetailTextLabel];
                  style = [(RUIPage *)selfCopy style];
                  selectPageDetailTextColor = [style selectPageDetailTextColor];
                  [ruiDetailTextLabel2 setTextColor:selectPageDetailTextColor];

                  [v31 setObject:v64 forKeyedSubscript:@"value"];
                  v26 = v60;
                  [v31 setObject:v63 forKeyedSubscript:@"detailLabel"];
                }

                [v29 setAttributes:v31];
                tableCell4 = [v29 tableCell];
                [tableCell4 setNeedsLayout];

                ++v28;
              }

              while (v26 != v28);
              v26 = [rows2 countByEnumeratingWithState:&v65 objects:v81 count:16];
            }

            while (v26);
          }

          v23 = v57 + 1;
        }

        while ((v57 + 1) != obja);
        obja = [sections2 countByEnumeratingWithState:&v69 objects:v82 count:16];
      }

      while (obja);
    }

    elementProvider = [(RUIPage *)selfCopy elementProvider];
    tableViewOM3 = [elementProvider tableViewOM];
    objectModel = [tableViewOM3 objectModel];
    elementProvider2 = [(RUIPage *)selfCopy elementProvider];
    tableViewOM4 = [elementProvider2 tableViewOM];
    [objectModel tableViewOMDidChange:tableViewOM4];

    sections = [(RUIPage *)selfCopy elementProvider];
    tableViewOM5 = [sections tableViewOM];
    tableView = [tableViewOM5 tableView];
    [tableView reloadData];

    tableViewOM = v49;
    childCopy = v50;
    tableViewOM2 = v51;
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

- (id)subElementWithID:(id)d
{
  v21 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  _childElements = [(RUIPage *)self _childElements];
  v6 = [_childElements countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(_childElements);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        identifier = [v10 identifier];
        v12 = [identifier isEqualToString:dCopy];

        if (v12)
        {
          v13 = v10;
LABEL_13:
          v14 = v13;
          goto LABEL_14;
        }

        v13 = [v10 subElementWithID:dCopy];
        if (v13)
        {
          goto LABEL_13;
        }
      }

      v7 = [_childElements countByEnumeratingWithState:&v16 objects:v20 count:16];
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
  array = [MEMORY[0x277CBEB18] array];
  primaryElement = [(RUIPage *)self primaryElement];
  [array _remoteUI_addObjectIfNotNil:primaryElement];

  elementProvider = [(RUIPage *)self elementProvider];
  tableViewOM = [elementProvider tableViewOM];
  [array _remoteUI_addObjectIfNotNil:tableViewOM];

  elementProvider2 = [(RUIPage *)self elementProvider];
  webViewOM = [elementProvider2 webViewOM];
  [array _remoteUI_addObjectIfNotNil:webViewOM];

  elementProvider3 = [(RUIPage *)self elementProvider];
  passcodeViewOM = [elementProvider3 passcodeViewOM];
  [array _remoteUI_addObjectIfNotNil:passcodeViewOM];

  elementProvider4 = [(RUIPage *)self elementProvider];
  spinnerViewOM = [elementProvider4 spinnerViewOM];
  [array _remoteUI_addObjectIfNotNil:spinnerViewOM];

  [array _remoteUI_addObjectIfNotNil:self->_leftNavigationBarButtonItem];
  [array _remoteUI_addObjectIfNotNil:self->_rightNavigationBarButtonItem];
  [array _remoteUI_addObjectIfNotNil:self->_leftToolbarButtonItem];
  [array _remoteUI_addObjectIfNotNil:self->_middleToolbarButtonItem];
  [array _remoteUI_addObjectIfNotNil:self->_rightToolbarButtonItem];

  return array;
}

- (id)viewForElementIdentifier:(id)identifier
{
  v18 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  _childElements = [(RUIPage *)self _childElements];
  v6 = [_childElements countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(_childElements);
        }

        v10 = [*(*(&v13 + 1) + 8 * i) viewForElementIdentifier:identifierCopy];
        if (v10)
        {
          v11 = v10;
          goto LABEL_11;
        }
      }

      v7 = [_childElements countByEnumeratingWithState:&v13 objects:v17 count:16];
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

- (id)elementsWithName:(id)name
{
  nameCopy = name;
  v5 = objc_opt_new();
  primaryElement = [(RUIPage *)self primaryElement];
  name = [primaryElement name];
  v8 = [name isEqualToString:nameCopy];

  if (v8)
  {
    primaryElement2 = [(RUIPage *)self primaryElement];
    [v5 addObject:primaryElement2];
  }

  elementProvider = [(RUIPage *)self elementProvider];
  tableViewOM = [elementProvider tableViewOM];
  name2 = [tableViewOM name];
  v13 = [name2 isEqualToString:nameCopy];

  if (v13)
  {
    elementProvider2 = [(RUIPage *)self elementProvider];
    tableViewOM2 = [elementProvider2 tableViewOM];
    [v5 addObject:tableViewOM2];
  }

  elementProvider3 = [(RUIPage *)self elementProvider];
  webViewOM = [elementProvider3 webViewOM];
  name3 = [webViewOM name];
  v19 = [name3 isEqualToString:nameCopy];

  if (v19)
  {
    elementProvider4 = [(RUIPage *)self elementProvider];
    webViewOM2 = [elementProvider4 webViewOM];
    [v5 addObject:webViewOM2];
  }

  elementProvider5 = [(RUIPage *)self elementProvider];
  passcodeViewOM = [elementProvider5 passcodeViewOM];
  name4 = [passcodeViewOM name];
  v25 = [name4 isEqualToString:nameCopy];

  if (v25)
  {
    elementProvider6 = [(RUIPage *)self elementProvider];
    passcodeViewOM2 = [elementProvider6 passcodeViewOM];
    [v5 addObject:passcodeViewOM2];
  }

  elementProvider7 = [(RUIPage *)self elementProvider];
  spinnerViewOM = [elementProvider7 spinnerViewOM];
  name5 = [spinnerViewOM name];
  v31 = [name5 isEqualToString:nameCopy];

  if (v31)
  {
    elementProvider8 = [(RUIPage *)self elementProvider];
    spinnerViewOM2 = [elementProvider8 spinnerViewOM];
    [v5 addObject:spinnerViewOM2];
  }

  primaryElement3 = [(RUIPage *)self primaryElement];
  v35 = [primaryElement3 subElementsWithName:nameCopy];
  [v5 addObjectsFromArray:v35];

  elementProvider9 = [(RUIPage *)self elementProvider];
  tableViewOM3 = [elementProvider9 tableViewOM];
  v38 = [tableViewOM3 subElementsWithName:nameCopy];
  [v5 addObjectsFromArray:v38];

  elementProvider10 = [(RUIPage *)self elementProvider];
  webViewOM3 = [elementProvider10 webViewOM];
  v41 = [webViewOM3 subElementsWithName:nameCopy];
  [v5 addObjectsFromArray:v41];

  elementProvider11 = [(RUIPage *)self elementProvider];
  passcodeViewOM3 = [elementProvider11 passcodeViewOM];
  v44 = [passcodeViewOM3 subElementsWithName:nameCopy];
  [v5 addObjectsFromArray:v44];

  elementProvider12 = [(RUIPage *)self elementProvider];
  spinnerViewOM3 = [elementProvider12 spinnerViewOM];
  v47 = [spinnerViewOM3 subElementsWithName:nameCopy];
  [v5 addObjectsFromArray:v47];

  name6 = [(RUIElement *)self->_leftNavigationBarButtonItem name];
  LODWORD(spinnerViewOM3) = [name6 isEqualToString:nameCopy];

  if (spinnerViewOM3)
  {
    [v5 addObject:self->_leftNavigationBarButtonItem];
  }

  name7 = [(RUIElement *)self->_rightNavigationBarButtonItem name];
  v50 = [name7 isEqualToString:nameCopy];

  if (v50)
  {
    [v5 addObject:self->_rightNavigationBarButtonItem];
  }

  name8 = [(RUIElement *)self->_leftToolbarButtonItem name];
  v52 = [name8 isEqualToString:nameCopy];

  if (v52)
  {
    [v5 addObject:self->_leftToolbarButtonItem];
  }

  name9 = [(RUIElement *)self->_middleToolbarButtonItem name];
  v54 = [name9 isEqualToString:nameCopy];

  if (v54)
  {
    [v5 addObject:self->_middleToolbarButtonItem];
  }

  name10 = [(RUIElement *)self->_rightToolbarButtonItem name];
  v56 = [name10 isEqualToString:nameCopy];

  if (v56)
  {
    [v5 addObject:self->_rightToolbarButtonItem];
  }

  return v5;
}

- (RUITableView)tableViewOM
{
  elementProvider = [(RUIPage *)self elementProvider];
  makeTableViewOM = [elementProvider makeTableViewOM];

  return makeTableViewOM;
}

- (void)topLevelElementProvider:(id)provider didCreateTableView:(id)view
{
  if (!self->_containerView)
  {
    return;
  }

  viewCopy = view;
  tableView = [viewCopy tableView];
  traitCollection = [(RUIPage *)self traitCollection];
  [viewCopy traitCollectionDidChangeFrom:0 toTraitCollection:traitCollection];

  if ([(RUIPage *)self hasWebView])
  {
    containerView = [(RUIPage *)self containerView];
    [containerView insertSubview:tableView atIndex:0];
  }

  else
  {
    elementProvider = [(RUIPage *)self elementProvider];
    primaryElement = [elementProvider primaryElement];
    if (primaryElement)
    {
      v10 = primaryElement;
      elementProvider2 = [(RUIPage *)self elementProvider];
      primaryElement2 = [elementProvider2 primaryElement];
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

    containerView = [(RUIPage *)self containerView];
    [containerView addSubview:tableView];
  }

LABEL_11:
}

- (BOOL)hasTableView
{
  elementProvider = [(RUIPage *)self elementProvider];
  hasTableView = [elementProvider hasTableView];

  return hasTableView;
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v12.receiver = self;
  v12.super_class = RUIPage;
  [(RUIPage *)&v12 traitCollectionDidChange:changeCopy];
  elementProvider = [(RUIPage *)self elementProvider];
  tableViewOM = [elementProvider tableViewOM];

  if (tableViewOM)
  {
    elementProvider2 = [(RUIPage *)self elementProvider];
    tableViewOM2 = [elementProvider2 tableViewOM];
    traitCollection = [(RUIPage *)self traitCollection];
    [tableViewOM2 traitCollectionDidChangeFrom:changeCopy toTraitCollection:traitCollection];
  }

  [(RUIBarButtonItem *)self->_leftNavigationBarButtonItem updateBackButtonColors];
  style = [(RUIPage *)self style];
  WeakRetained = objc_loadWeakRetained(&self->_objectModel);
  [style applyToObjectModel:WeakRetained];
}

- (RUIWebView)webViewOM
{
  elementProvider = [(RUIPage *)self elementProvider];
  makeWebViewOM = [elementProvider makeWebViewOM];

  return makeWebViewOM;
}

- (void)topLevelElementProvider:(id)provider didCreateWebView:(id)view
{
  viewCopy = view;
  if ([(RUIPage *)self isPrimaryElementNilOrKindOf:objc_opt_class()])
  {
    containerView = [(RUIPage *)self containerView];
    webView = [viewCopy webView];
    [containerView addSubview:webView];
  }
}

- (BOOL)hasWebView
{
  elementProvider = [(RUIPage *)self elementProvider];
  hasWebView = [elementProvider hasWebView];

  return hasWebView;
}

- (RUITopLevelPageElement)primaryElement
{
  elementProvider = [(RUIPage *)self elementProvider];
  primaryElement = [elementProvider primaryElement];

  return primaryElement;
}

- (void)topLevelElementProvider:(id)provider didSetPrimaryElement:(id)element previousElement:(id)previousElement
{
  elementCopy = element;
  previousElementCopy = previousElement;
  if (elementCopy != previousElementCopy)
  {
    if (objc_opt_respondsToSelector())
    {
      viewController = [previousElementCopy viewController];
    }

    else
    {
      viewController = 0;
    }

    if (objc_opt_respondsToSelector())
    {
      viewController2 = [elementCopy viewController];
    }

    else
    {
      viewController2 = 0;
    }

    [viewController willMoveToParentViewController:0];
    [viewController removeFromParentViewController];
    view = [previousElementCopy view];
    [view removeFromSuperview];

    if (viewController2)
    {
      [(RUIPage *)self addChildViewController:viewController2];
    }

    WeakRetained = objc_loadWeakRetained(&self->_objectModel);
    [elementCopy setObjectModel:WeakRetained];

    if (self->_containerView)
    {
      containerView = [(RUIPage *)self containerView];
      view2 = [elementCopy view];
      [containerView addSubview:view2];
    }

    [viewController2 didMoveToParentViewController:self];
  }
}

- (id)legacyPasscodeViewOM
{
  elementProvider = [(RUIPage *)self elementProvider];
  makePasscodeViewOM = [elementProvider makePasscodeViewOM];

  return makePasscodeViewOM;
}

- (void)topLevelElementProvider:(id)provider didCreatePasscodeView:(id)view
{
  viewCopy = view;
  if (self->_containerView)
  {
    v8 = viewCopy;
    passcodeView = [viewCopy passcodeView];
    if ([(RUIPage *)self isPrimaryElementNilOrKindOf:objc_opt_class()])
    {
      [v8 setShouldManageScrollViewInsets:1];
      containerView = [(RUIPage *)self containerView];
      [containerView addSubview:passcodeView];
    }

    viewCopy = v8;
  }
}

- (BOOL)hasPasscodeView
{
  elementProvider = [(RUIPage *)self elementProvider];
  hasPasscodeView = [elementProvider hasPasscodeView];

  return hasPasscodeView;
}

- (RUISpinnerView)spinnerViewOM
{
  elementProvider = [(RUIPage *)self elementProvider];
  makeSpinnerViewOM = [elementProvider makeSpinnerViewOM];

  return makeSpinnerViewOM;
}

- (void)topLevelElementProvider:(id)provider didCreateSpinnerView:(id)view
{
  if (self->_containerView)
  {
    spinnerView = [view spinnerView];
    containerView = [(RUIPage *)self containerView];
    [containerView addSubview:spinnerView];
  }
}

- (BOOL)hasSpinnerView
{
  elementProvider = [(RUIPage *)self elementProvider];
  hasSpinnerView = [elementProvider hasSpinnerView];

  return hasSpinnerView;
}

- (void)setObjectModel:(id)model
{
  modelCopy = model;
  objc_storeWeak(&self->_objectModel, modelCopy);
  elementProvider = [(RUIPage *)self elementProvider];
  tableViewOM = [elementProvider tableViewOM];
  [tableViewOM setObjectModel:modelCopy];

  elementProvider2 = [(RUIPage *)self elementProvider];
  webViewOM = [elementProvider2 webViewOM];
  [webViewOM setDelegate:modelCopy];

  elementProvider3 = [(RUIPage *)self elementProvider];
  passcodeViewOM = [elementProvider3 passcodeViewOM];
  [passcodeViewOM setObjectModel:modelCopy];

  elementProvider4 = [(RUIPage *)self elementProvider];
  spinnerViewOM = [elementProvider4 spinnerViewOM];
  [spinnerViewOM setObjectModel:modelCopy];

  primaryElement = [(RUIPage *)self primaryElement];
  [primaryElement setObjectModel:modelCopy];
}

- (void)populatePostbackDictionary:(id)dictionary elementProvider:(id)provider
{
  dictionaryCopy = dictionary;
  providerCopy = provider;
  tableViewOM = [providerCopy tableViewOM];
  [tableViewOM populatePostbackDictionary:dictionaryCopy];

  passcodeViewOM = [providerCopy passcodeViewOM];
  [passcodeViewOM populatePostbackDictionary:dictionaryCopy];

  primaryElement = [providerCopy primaryElement];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    primaryElement2 = [providerCopy primaryElement];
    [primaryElement2 populatePostbackDictionary:dictionaryCopy];
  }
}

- (void)populatePostbackDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  elementProviders = self->_elementProviders;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__RUIPage_populatePostbackDictionary___block_invoke;
  v7[3] = &unk_2782E83E0;
  v7[4] = self;
  v8 = dictionaryCopy;
  v6 = dictionaryCopy;
  [(NSMutableArray *)elementProviders enumerateObjectsUsingBlock:v7];
}

- (void)dealloc
{
  [(RUIPage *)self removeKeyboardObservers];
  [(RUIPage *)self setLoading:0];
  elementProvider = [(RUIPage *)self elementProvider];
  tableViewOM = [elementProvider tableViewOM];
  [tableViewOM setObjectModel:0];

  elementProvider2 = [(RUIPage *)self elementProvider];
  webViewOM = [elementProvider2 webViewOM];
  [webViewOM setDelegate:0];

  elementProvider3 = [(RUIPage *)self elementProvider];
  passcodeViewOM = [elementProvider3 passcodeViewOM];
  [passcodeViewOM setObjectModel:0];

  elementProvider4 = [(RUIPage *)self elementProvider];
  spinnerViewOM = [elementProvider4 spinnerViewOM];
  [spinnerViewOM setObjectModel:0];

  primaryElement = [(RUIPage *)self primaryElement];
  [primaryElement setObjectModel:0];

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

  style = [(RUIPage *)self style];
  backgroundColor = [style backgroundColor];

  if (backgroundColor)
  {
    style2 = [(RUIPage *)self style];
    backgroundColor2 = [style2 backgroundColor];
    [(UIView *)self->_containerView setBackgroundColor:backgroundColor2];
  }

  style3 = [(RUIPage *)self style];
  tintColor = [style3 tintColor];
  [(UIView *)self->_containerView setTintColor:tintColor];

  [(UIView *)self->_containerView setAutoresizingMask:18];
  [(RUIPage *)self setView:self->_containerView];
  [(RUIPage *)self setupContainerView];
  elementProvider = [(RUIPage *)self elementProvider];
  webViewOM = [elementProvider webViewOM];

  if (webViewOM && [(RUIPage *)self isPrimaryElementNilOrKindOf:objc_opt_class()])
  {
    containerView = [(RUIPage *)self containerView];
    elementProvider2 = [(RUIPage *)self elementProvider];
    webViewOM2 = [elementProvider2 webViewOM];
    webView = [webViewOM2 webView];
    [containerView addSubview:webView];
  }

  primaryElement = [(RUIPage *)self primaryElement];

  if (!primaryElement)
  {
    elementProvider3 = [(RUIPage *)self elementProvider];
    tableViewOM = [elementProvider3 tableViewOM];

    elementProvider4 = [(RUIPage *)self elementProvider];
    v27 = elementProvider4;
    if (tableViewOM)
    {
      tableViewOM2 = [elementProvider4 tableViewOM];
      tableView = [tableViewOM2 tableView];

      [(UIView *)self->_containerView setPreservesSuperviewLayoutMargins:1];
      LODWORD(tableViewOM2) = [(RUIPage *)self hasWebView];
      containerView2 = [(RUIPage *)self containerView];
      v30 = containerView2;
      if (tableViewOM2)
      {
        [containerView2 insertSubview:tableView atIndex:0];
      }

      else
      {
        [containerView2 addSubview:tableView];
      }

      elementProvider5 = [(RUIPage *)self elementProvider];
      tableViewOM3 = [elementProvider5 tableViewOM];
      [tableViewOM3 addSearchBarToPage:self];
      goto LABEL_20;
    }

    passcodeViewOM = [elementProvider4 passcodeViewOM];
    if (passcodeViewOM)
    {
      v32 = passcodeViewOM;
      v33 = [(RUIPage *)self isPrimaryElementNilOrKindOf:objc_opt_class()];

      if (v33)
      {
        tableView = [(RUIPage *)self containerView];
        elementProvider5 = [(RUIPage *)self elementProvider];
        tableViewOM3 = [elementProvider5 passcodeViewOM];
        passcodeView = [tableViewOM3 passcodeView];
LABEL_19:
        v37 = passcodeView;
        [tableView addSubview:passcodeView];

        goto LABEL_20;
      }
    }

    else
    {
    }

    elementProvider6 = [(RUIPage *)self elementProvider];
    spinnerViewOM = [elementProvider6 spinnerViewOM];

    if (!spinnerViewOM)
    {
      goto LABEL_21;
    }

    tableView = [(RUIPage *)self containerView];
    elementProvider5 = [(RUIPage *)self elementProvider];
    tableViewOM3 = [elementProvider5 spinnerViewOM];
    passcodeView = [tableViewOM3 spinnerView];
    goto LABEL_19;
  }

  primaryElement2 = [(RUIPage *)self primaryElement];
  view = [primaryElement2 view];
  [view setPreservesSuperviewLayoutMargins:1];

  tableView = [(RUIPage *)self containerView];
  elementProvider5 = [(RUIPage *)self primaryElement];
  tableViewOM3 = [elementProvider5 view];
  [tableView addSubview:tableViewOM3];
LABEL_20:

LABEL_21:
  [(RUIPage *)self _setupMultiChoiceView];
  containerView3 = [(RUIPage *)self containerView];
  [containerView3 addSubview:self->_toolbar];

  pageElement = [(RUIPage *)self pageElement];
  [pageElement configureAccessiblityWithTarget:self->_containerView];
}

- (void)viewDidLoad
{
  v36 = *MEMORY[0x277D85DE8];
  v32.receiver = self;
  v32.super_class = RUIPage;
  [(RUIPage *)&v32 viewDidLoad];
  elementProvider = [(RUIPage *)self elementProvider];
  tableViewOM = [elementProvider tableViewOM];
  tableView = [tableViewOM tableView];
  [tableView reloadData];

  primaryElement = [(RUIPage *)self primaryElement];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    primaryElement2 = [(RUIPage *)self primaryElement];
    [primaryElement2 viewDidLoad];
  }

  attributes = [(RUIPage *)self attributes];
  v10 = [attributes objectForKeyedSubscript:@"refreshOnNotification"];
  if (([v10 BOOLValue] & 1) == 0)
  {

LABEL_11:
    goto LABEL_12;
  }

  pageID = [(RUIPage *)self pageID];

  if (pageID)
  {
    if (_isInternalInstall())
    {
      v12 = _RUILoggingFacility();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        pageID2 = [(RUIPage *)self pageID];
        *buf = 138412290;
        v35 = pageID2;
        _os_log_impl(&dword_21B93D000, v12, OS_LOG_TYPE_DEFAULT, "Refresh notification listener added for page: %@", buf, 0xCu);
      }
    }

    attributes = [MEMORY[0x277CCAB98] defaultCenter];
    [attributes addObserver:self selector:sel__handlePageUpdateRequestedNotification_ name:@"RUIPageRefreshRequestedNotification" object:0];
    goto LABEL_11;
  }

LABEL_12:
  pageElement = [(RUIPage *)self pageElement];
  view = [(RUIPage *)self view];
  [pageElement configureAccessiblityWithTarget:view];

  [(RUIPage *)self setPreferredContentSize:RemoteUIPreferredContentSize()];
  [(RUIPage *)self addRemoteUIWatermark];
  toolbarContentViewController = [(RUIPage *)self toolbarContentViewController];
  [(RUIPage *)self addChildViewController:toolbarContentViewController];
  view2 = [toolbarContentViewController view];
  [view2 setTranslatesAutoresizingMaskIntoConstraints:0];

  view3 = [(RUIPage *)self view];
  view4 = [toolbarContentViewController view];
  [view3 addSubview:view4];

  v28 = MEMORY[0x277CCAAD0];
  view5 = [toolbarContentViewController view];
  topAnchor = [view5 topAnchor];
  view6 = [(RUIPage *)self view];
  topAnchor2 = [view6 topAnchor];
  v21 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v33[0] = v21;
  view7 = [toolbarContentViewController view];
  leadingAnchor = [view7 leadingAnchor];
  view8 = [(RUIPage *)self view];
  leadingAnchor2 = [view8 leadingAnchor];
  v26 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v33[1] = v26;
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:2];
  [v28 activateConstraints:v27];

  [toolbarContentViewController didMoveToParentViewController:self];
}

- (void)_handlePageUpdateRequestedNotification:(id)notification
{
  v24 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  object = [notificationCopy object];
  pageID = [(RUIPage *)self pageID];
  v7 = [object isEqual:pageID];

  if (v7)
  {
    attributes = [(RUIPage *)self attributes];
    v9 = [attributes objectForKeyedSubscript:@"refreshUrl"];

    attributes2 = [(RUIPage *)self attributes];
    v11 = [attributes2 objectForKeyedSubscript:@"refreshHttpMethod"];
    v12 = v11;
    v13 = @"GET";
    if (v11)
    {
      v13 = v11;
    }

    object2 = v13;

    if (_isInternalInstall())
    {
      v15 = _RUILoggingFacility();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        pageID2 = [(RUIPage *)self pageID];
        v18 = 138412802;
        v19 = pageID2;
        v20 = 2112;
        v21 = v9;
        v22 = 2112;
        v23 = object2;
        _os_log_impl(&dword_21B93D000, v15, OS_LOG_TYPE_DEFAULT, "Notification received for page %@. will refresh from url: %@ method: %@", &v18, 0x20u);
      }
    }

    objectModel = [(RUIPage *)self objectModel];
    [objectModel openLink:v9 HTTPMethod:object2 completion:0];
    goto LABEL_9;
  }

  if (!_isInternalInstall())
  {
    goto LABEL_14;
  }

  v9 = _RUILoggingFacility();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    object2 = [notificationCopy object];
    objectModel = [(RUIPage *)self pageID];
    v18 = 138412546;
    v19 = object2;
    v20 = 2112;
    v21 = objectModel;
    _os_log_impl(&dword_21B93D000, v9, OS_LOG_TYPE_DEFAULT, "Ignoring refresh notification requestedPage: %@. currentPage: %@", &v18, 0x16u);
LABEL_9:
  }

LABEL_14:
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v20.receiver = self;
  v20.super_class = RUIPage;
  [(RUIPage *)&v20 viewWillAppear:?];
  elementProvider = [(RUIPage *)self elementProvider];
  tableViewOM = [elementProvider tableViewOM];
  [tableViewOM viewWillAppear:appearCopy];

  elementProvider2 = [(RUIPage *)self elementProvider];
  passcodeViewOM = [elementProvider2 passcodeViewOM];
  [passcodeViewOM viewWillAppear:appearCopy];

  elementProvider3 = [(RUIPage *)self elementProvider];
  spinnerViewOM = [elementProvider3 spinnerViewOM];
  [spinnerViewOM viewWillAppear:appearCopy];

  primaryElement = [(RUIPage *)self primaryElement];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    primaryElement2 = [(RUIPage *)self primaryElement];
    [primaryElement2 viewWillAppear:appearCopy];
  }

  [(RUIPage *)self preferredContentSize];
  v15 = v14;
  v17 = v16;
  navigationController = [(RUIPage *)self navigationController];
  [navigationController setPreferredContentSize:{v15, v17}];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [(RUIPage *)self removeKeyboardObservers];
  [defaultCenter addObserver:self selector:sel__keyboardWillShow_ name:*MEMORY[0x277D76C48] object:0];
  [defaultCenter addObserver:self selector:sel__keyboardWillHide_ name:*MEMORY[0x277D76C10] object:0];
}

- (void)removeKeyboardObservers
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D76C10] object:0];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 removeObserver:self name:*MEMORY[0x277D76C48] object:0];
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v41 = *MEMORY[0x277D85DE8];
  v39.receiver = self;
  v39.super_class = RUIPage;
  [(RUIPage *)&v39 viewDidAppear:?];
  elementProvider = [(RUIPage *)self elementProvider];
  tableViewOM = [elementProvider tableViewOM];
  [tableViewOM viewDidAppear:appearCopy];

  elementProvider2 = [(RUIPage *)self elementProvider];
  passcodeViewOM = [elementProvider2 passcodeViewOM];
  [passcodeViewOM viewDidAppear:appearCopy];

  elementProvider3 = [(RUIPage *)self elementProvider];
  webViewOM = [elementProvider3 webViewOM];
  [webViewOM viewDidAppear:appearCopy];

  pageElement = [(RUIPage *)self pageElement];
  [pageElement reportInternalRenderEvent];

  objectModel = [(RUIPage *)self objectModel];
  telemetryDelegate = [objectModel telemetryDelegate];
  v14 = [RUITelemetryElement alloc];
  pageElement2 = [(RUIPage *)self pageElement];
  sourceXMLElement = [pageElement2 sourceXMLElement];
  objectModel2 = [(RUIPage *)self objectModel];
  sourceURL = [objectModel2 sourceURL];
  v19 = [(RUITelemetryElement *)v14 initWithXMLElement:sourceXMLElement url:sourceURL];
  [telemetryDelegate willDisplayUI:v19];

  if (UIKeyboardAutomaticIsOnScreen())
  {
    traitCollection = [(RUIPage *)self traitCollection];
    ruiContentInsetHandling = [traitCollection ruiContentInsetHandling];

    if (!ruiContentInsetHandling)
    {
      view = [(RUIPage *)self view];
      keyboardSceneDelegate = [view keyboardSceneDelegate];

      view2 = [(RUIPage *)self view];
      [keyboardSceneDelegate visibleFrameInView:view2];
      v26 = v25;

      [(RUIPage *)self _setContentInset:v26];
    }
  }

  primaryElement = [(RUIPage *)self primaryElement];
  v28 = objc_opt_respondsToSelector();

  if (v28)
  {
    primaryElement2 = [(RUIPage *)self primaryElement];
    [primaryElement2 viewDidAppear:appearCopy];
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

- (void)viewIsAppearing:(BOOL)appearing
{
  v8.receiver = self;
  v8.super_class = RUIPage;
  [(RUIPage *)&v8 viewIsAppearing:appearing];
  [(UIView *)self->_containerView layoutIfNeeded];
  [(RUIPage *)self updatePreferredContentSize];
  hidesBackButton = self->_hidesBackButton;
  navigationItem = [(RUIPage *)self navigationItem];
  [navigationItem setHidesBackButton:hidesBackButton];

  if ([(RUIPage *)self usesStandardToolbar])
  {
    hasToolbar = [(RUIPage *)self hasToolbar];
    navigationController = [(RUIPage *)self navigationController];
    [navigationController setToolbarHidden:!hasToolbar];
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v15.receiver = self;
  v15.super_class = RUIPage;
  [(RUIPage *)&v15 viewWillDisappear:?];
  elementProvider = [(RUIPage *)self elementProvider];
  tableViewOM = [elementProvider tableViewOM];
  [tableViewOM viewWillDisappear:disappearCopy];

  elementProvider2 = [(RUIPage *)self elementProvider];
  passcodeViewOM = [elementProvider2 passcodeViewOM];
  [passcodeViewOM viewWillDisappear:disappearCopy];

  elementProvider3 = [(RUIPage *)self elementProvider];
  spinnerViewOM = [elementProvider3 spinnerViewOM];
  [spinnerViewOM viewWillDisappear:disappearCopy];

  WeakRetained = objc_loadWeakRetained(&self->_objectModel);
  [WeakRetained cleanupRefreshTimer];

  primaryElement = [(RUIPage *)self primaryElement];
  v13 = objc_opt_respondsToSelector();

  if (v13)
  {
    primaryElement2 = [(RUIPage *)self primaryElement];
    [primaryElement2 viewWillDisappear:disappearCopy];
  }

  [(RUIPage *)self removeKeyboardObservers];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v11.receiver = self;
  v11.super_class = RUIPage;
  [(RUIPage *)&v11 viewDidDisappear:?];
  elementProvider = [(RUIPage *)self elementProvider];
  tableViewOM = [elementProvider tableViewOM];
  [tableViewOM viewDidDisappear:disappearCopy];

  primaryElement = [(RUIPage *)self primaryElement];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    primaryElement2 = [(RUIPage *)self primaryElement];
    [primaryElement2 viewDidDisappear:disappearCopy];
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
  style = [(RUIPage *)self style];
  WeakRetained = objc_loadWeakRetained(&self->_objectModel);
  [style applyToObjectModel:WeakRetained];
}

- (BOOL)isPrimaryElementNilOrKindOf:(Class)of
{
  primaryElement = [(RUIPage *)self primaryElement];
  if (primaryElement)
  {
    primaryElement2 = [(RUIPage *)self primaryElement];
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
  containerView = [(RUIPage *)self containerView];
  [containerView bounds];
  v5 = v4;
  v90 = v6;
  v8 = v7;
  v10 = v9;

  view = [(RUIPage *)self view];
  [view safeAreaInsets];
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
  elementProvider = [(RUIPage *)self elementProvider];
  tableViewOM = [elementProvider tableViewOM];
  [tableViewOM searchBarRectInPage:self];
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
    elementProvider2 = [(RUIPage *)self elementProvider];
    tableViewOM2 = [elementProvider2 tableViewOM];
    searchBar = [tableViewOM2 searchBar];
    [searchBar setFrame:{v24, v26, v28, v30}];
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
    elementProvider3 = [(RUIPage *)self elementProvider];
    tableViewOM3 = [elementProvider3 tableViewOM];
    attributes = [tableViewOM3 attributes];
    v45 = [attributes objectForKeyedSubscript:@"splitPosition"];
    v46 = [v45 isEqualToString:@"leftHalf"];

    if (v46)
    {
      v47 = v20 + 120.0;
      v48 = v40 * 0.5;
LABEL_10:
      v54 = v48 + -240.0;
      goto LABEL_15;
    }

    elementProvider4 = [(RUIPage *)self elementProvider];
    tableViewOM4 = [elementProvider4 tableViewOM];
    attributes2 = [tableViewOM4 attributes];
    v52 = [attributes2 objectForKeyedSubscript:@"splitPosition"];
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
    elementProvider5 = [(RUIPage *)self elementProvider];
    tableViewOM5 = [elementProvider5 tableViewOM];
    tableView = [tableViewOM5 tableView];
    [tableView setFrame:{v47, v58, v54, v39}];
  }

LABEL_17:
  elementProvider6 = [(RUIPage *)self elementProvider];
  tableViewOM6 = [elementProvider6 tableViewOM];
  [tableViewOM6 viewDidLayout];

  if (v37)
  {
    elementProvider7 = [(RUIPage *)self elementProvider];
    webViewOM = [elementProvider7 webViewOM];
    webView = [webViewOM webView];
    [webView setFrame:{v47, v58, v54, v39}];
  }

  elementProvider8 = [(RUIPage *)self elementProvider];
  spinnerViewOM = [elementProvider8 spinnerViewOM];
  [spinnerViewOM viewDidLayout];

  if (v35)
  {
    elementProvider9 = [(RUIPage *)self elementProvider];
    passcodeViewOM = [elementProvider9 passcodeViewOM];
    passcodeView = [passcodeViewOM passcodeView];
    [passcodeView setFrame:{v20, v88, v40, v41 - v88}];
  }

  elementProvider10 = [(RUIPage *)self elementProvider];
  passcodeViewOM2 = [elementProvider10 passcodeViewOM];
  [passcodeViewOM2 viewDidLayout];

  primaryElement = [(RUIPage *)self primaryElement];
  view2 = [primaryElement view];

  if (objc_opt_respondsToSelector())
  {
    traitCollection = [(RUIPage *)self traitCollection];
    ruiContentInsetHandling = [traitCollection ruiContentInsetHandling];

    if (!ruiContentInsetHandling)
    {
      [view2 contentInset];
      [view2 setContentInset:v88];
    }
  }

  primaryElement2 = [(RUIPage *)self primaryElement];
  view3 = [primaryElement2 view];
  [view3 setFrame:{v20, v90, v40, v41}];

  primaryElement3 = [(RUIPage *)self primaryElement];
  view4 = [primaryElement3 view];
  [view4 layoutIfNeeded];

  primaryElement4 = [(RUIPage *)self primaryElement];
  LOBYTE(view4) = objc_opt_respondsToSelector();

  if (view4)
  {
    primaryElement5 = [(RUIPage *)self primaryElement];
    [primaryElement5 viewDidLayout];
  }
}

- (id)preferredFocusEnvironments
{
  v11[1] = *MEMORY[0x277D85DE8];
  primaryElement = [(RUIPage *)self primaryElement];

  if (primaryElement)
  {
    primaryElement2 = [(RUIPage *)self primaryElement];
    view = [primaryElement2 view];
    v11[0] = view;
    v6 = v11;
LABEL_7:
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:{1, v9, v10, v11[0]}];

    goto LABEL_8;
  }

  if ([(RUIPage *)self hasTableView])
  {
    primaryElement2 = [(RUIPage *)self tableViewOM];
    view = [primaryElement2 tableView];
    v10 = view;
    v6 = &v10;
    goto LABEL_7;
  }

  if ([(RUIPage *)self hasPasscodeView])
  {
    primaryElement2 = [(RUIPage *)self passcodeViewOM];
    view = [primaryElement2 passcodeView];
    v9 = view;
    v6 = &v9;
    goto LABEL_7;
  }

  v7 = 0;
LABEL_8:

  return v7;
}

- (void)addDidAppearBlock:(id)block
{
  blockCopy = block;
  didAppearCallbacks = self->_didAppearCallbacks;
  aBlock = blockCopy;
  if (!didAppearCallbacks)
  {
    v6 = objc_opt_new();
    v7 = self->_didAppearCallbacks;
    self->_didAppearCallbacks = v6;

    blockCopy = aBlock;
    didAppearCallbacks = self->_didAppearCallbacks;
  }

  v8 = _Block_copy(blockCopy);
  [(NSMutableArray *)didAppearCallbacks addObject:v8];
}

- (BOOL)_shouldShowMultiChoiceElement
{
  if (self->_toolbar)
  {
    return 0;
  }

  elementProvider = [(RUIPage *)self elementProvider];
  spinnerViewOM = [elementProvider spinnerViewOM];
  v2 = spinnerViewOM == 0;

  return v2;
}

- (void)dismissIfPresentedWithCompletion:(id)completion
{
  completionCopy = completion;
  navigationController = [(RUIPage *)self navigationController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    navigationController2 = [(RUIPage *)self navigationController];
    [navigationController2 dismissViewControllerAnimated:1 completion:completionCopy];
  }

  else
  {
    presentingViewController = [(RUIPage *)self presentingViewController];

    if (presentingViewController)
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

      [(RUIPage *)self dismissViewControllerAnimated:1 completion:completionCopy];
    }

    else
    {
      v10 = _RUILoggingFacility();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [RUIPage dismissIfPresentedWithCompletion:v10];
      }

      completionCopy[2](completionCopy);
    }
  }
}

- (void)startObservingTableView:(id)view
{
  viewCopy = view;
  [(RUIPage *)self stopObservingTableView];
  observedTableView = self->_observedTableView;
  self->_observedTableView = viewCopy;
  v6 = viewCopy;

  [(UITableView *)v6 addObserver:self forKeyPath:@"dataSource" options:1 context:0];
  [(UITableView *)v6 addObserver:self forKeyPath:@"delegate" options:1 context:0];
  dataSource = [(UITableView *)v6 dataSource];
  [(RUIPage *)self tableViewDataSourceDidChange:dataSource];

  delegate = [(UITableView *)v6 delegate];

  [(RUIPage *)self tableViewDelegateDidChange:delegate];
}

- (void)stopObservingTableView
{
  [(UITableView *)self->_observedTableView removeObserver:self forKeyPath:@"dataSource"];
  [(UITableView *)self->_observedTableView removeObserver:self forKeyPath:@"delegate"];
  observedTableView = self->_observedTableView;
  self->_observedTableView = 0;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  v13 = *MEMORY[0x277CCA2F0];
  v14 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
  null = [MEMORY[0x277CBEB68] null];
  if (v14 == null)
  {
    v16 = 0;
  }

  else
  {
    v16 = [changeCopy objectForKeyedSubscript:v13];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([pathCopy isEqualToString:@"dataSource"])
    {
      [(RUIPage *)self tableViewDataSourceDidChange:v16];
    }

    else if ([pathCopy isEqualToString:@"delegate"])
    {
      [(RUIPage *)self tableViewDelegateDidChange:v16];
    }
  }

  else
  {
    v17.receiver = self;
    v17.super_class = RUIPage;
    [(RUIPage *)&v17 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear
{
  v9.receiver = self;
  v9.super_class = RUIPage;
  [(RUIPage *)&v9 viewDidMoveToWindow:window shouldAppearOrDisappear:disappear];
  if ([(RUIPage *)self hasTableView])
  {
    if (window)
    {
      retainedTableViewDelegate = [(RUIPage *)self tableViewOM];
      tableView = [retainedTableViewDelegate tableView];
      [(RUIPage *)self startObservingTableView:tableView];
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
  selfCopy = self;
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
    objc_setAssociatedObject(selfCopy, &off_27CD9D340, v6, 1);
    swift_endAccess();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D358);
  sub_21B9BE594(&qword_27CD9D368);
  sub_21BA8694C();
}

- (void)initializeSwift
{
  selfCopy = self;
  RUIPage.initializeSwift()();
}

- (void)deinitSwift
{
  selfCopy = self;
  RUIPage.deinitSwift()();
}

- (void)publishSMSToken:(id)token
{
  v4 = sub_21BA87CBC();
  v6 = v5;
  selfCopy = self;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  RUIPage.publishSMSToken(_:)(v8);
}

- (UIViewController)toolbarContentViewController
{
  selfCopy = self;
  sub_21B9C07A0(&type metadata for TolbarContentViewControllerKey, &off_28172C640, &v5);

  v3 = v5;

  return v3;
}

- (void)setToolbarContentViewController:(id)controller
{
  controllerCopy = controller;
  controllerCopy2 = controller;
  selfCopy = self;
  sub_21B9C095C(&controllerCopy, &type metadata for TolbarContentViewControllerKey, &type metadata for TolbarContentViewControllerKey, &off_28172C640);
}

- (void)addRemoteUIWatermark
{
  selfCopy = self;
  RUIPage.addRemoteUIWatermark()();
}

- (id)passcodeViewSwiftBridge
{
  selfCopy = self;
  v3 = sub_21BA4EDC0();

  return v3;
}

@end