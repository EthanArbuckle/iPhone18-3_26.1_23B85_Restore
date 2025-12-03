@interface PSListController
+ (id)appearanceWhenContainedInInstancesOfClasses:(id)classes;
+ (void)registerDefaultAppearanceProviderClass:(Class)class;
+ (void)registerDefaultNavigationCoordinatorClass:(Class)class;
+ (void)registerDefaultSpecifierActionCoordinatorClass:(Class)class;
- (BOOL)_getGroup:(int64_t *)group row:(int64_t *)row ofSpecifierAtIndex:(int64_t)index groups:(id)groups;
- (BOOL)_isEmptyGroup:(unint64_t)group;
- (BOOL)_isRegularWidth;
- (BOOL)getGroup:(int64_t *)group row:(int64_t *)row ofSpecifier:(id)specifier;
- (BOOL)getGroup:(int64_t *)group row:(int64_t *)row ofSpecifierAtIndex:(int64_t)index;
- (BOOL)getGroup:(int64_t *)group row:(int64_t *)row ofSpecifierID:(id)d;
- (BOOL)handlePendingURL;
- (BOOL)performActionForSpecifier:(id)specifier;
- (BOOL)performButtonActionForSpecifier:(id)specifier;
- (BOOL)performConfirmationActionForSpecifier:(id)specifier;
- (BOOL)performConfirmationAlternateActionForSpecifier:(id)specifier;
- (BOOL)performConfirmationCancelActionForSpecifier:(id)specifier;
- (BOOL)performLoadActionForSpecifier:(id)specifier;
- (BOOL)prepareHandlingURLForSpecifierID:(id)d resourceDictionary:(id)dictionary animatePush:(BOOL *)push;
- (BOOL)prepareHandlingURLForSpecifierID:(id)d resourceDictionary:(id)dictionary animatePush:(BOOL *)push withCompletion:(id)completion;
- (BOOL)shouldSelectResponderOnAppearance;
- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path;
- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path;
- (NSString)description;
- (PSListController)init;
- (PSListControllerAppearanceProvider)appearanceProvider;
- (PSListControllerNavigationCoordinator)navigationCoordinator;
- (PSListControllerSpecifierActionCoordinator)specifierActionCoordinator;
- (_NSRange)rangeOfSpecifiersInGroupID:(id)d;
- (double)_getKeyboardIntersectionHeightFromUserInfo:(id)info;
- (double)_tableView:(id)view heightForCustomInSection:(int64_t)section isHeader:(BOOL)header;
- (double)tableView:(id)view estimatedHeightForRowAtIndexPath:(id)path;
- (float)verticalContentOffset;
- (id)_createGroupIndices:(id)indices;
- (id)_customViewForSpecifier:(id)specifier class:(Class)class isHeader:(BOOL)header;
- (id)_tableView:(id)view viewForCustomInSection:(int64_t)section isHeader:(BOOL)header;
- (id)bundle;
- (id)cachedCellForSpecifier:(id)specifier;
- (id)cachedCellForSpecifierID:(id)d;
- (id)controllerForRowAtIndexPath:(id)path;
- (id)controllerForSpecifier:(id)specifier;
- (id)findFirstVisibleResponder;
- (id)getGroupSpecifierForSpecifier:(id)specifier;
- (id)getGroupSpecifierForSpecifierID:(id)d;
- (id)indexPathForIndex:(int64_t)index;
- (id)indexPathForSpecifier:(id)specifier;
- (id)loadSpecifiersFromPlistName:(id)name target:(id)target;
- (id)loadSpecifiersFromPlistName:(id)name target:(id)target bundle:(id)bundle;
- (id)selectSpecifier:(id)specifier;
- (id)specifierAtIndex:(int64_t)index;
- (id)specifierAtIndexPath:(id)path;
- (id)specifierForID:(id)d;
- (id)specifiers;
- (id)specifiersForIDs:(id)ds;
- (id)specifiersInGroup:(int64_t)group;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view detailTextForHeaderInSection:(int64_t)section;
- (id)tableView:(id)view titleForFooterInSection:(int64_t)section;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (int64_t)_nextGroupInSpecifiersAfterIndex:(int64_t)index inArray:(id)array;
- (int64_t)indexForIndexPath:(id)path;
- (int64_t)indexForRow:(int64_t)row inGroup:(int64_t)group;
- (int64_t)indexOfGroup:(int64_t)group;
- (int64_t)indexOfSpecifier:(id)specifier;
- (int64_t)indexOfSpecifierID:(id)d;
- (int64_t)numberOfGroups;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)rowsForGroup:(int64_t)group;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (int64_t)tableView:(id)view titleAlignmentForFooterInSection:(int64_t)section;
- (int64_t)tableView:(id)view titleAlignmentForHeaderInSection:(int64_t)section;
- (int64_t)tableViewStyle;
- (void)_addIdentifierForSpecifier:(id)specifier;
- (void)_ensureAppearanceProviderAndNavigationCoordinator;
- (void)_insertContiguousSpecifiers:(id)specifiers atIndex:(int64_t)index animated:(BOOL)animated;
- (void)_keyboardWillHide:(id)hide;
- (void)_keyboardWillShow:(id)show;
- (void)_loadBundleControllers;
- (void)_moveSpecifierAtIndex:(unint64_t)index toIndex:(unint64_t)toIndex animated:(BOOL)animated;
- (void)_performHighlightForSpecifierWithID:(id)d tryAgainIfFailed:(BOOL)failed;
- (void)_removeContiguousSpecifiers:(id)specifiers animated:(BOOL)animated;
- (void)_removeIdentifierForSpecifier:(id)specifier;
- (void)_returnKeyPressed:(id)pressed;
- (void)_scrollToSpecifierWithID:(id)d animated:(BOOL)animated;
- (void)_setContentInset:(double)inset;
- (void)_showController:(id)controller animate:(BOOL)animate;
- (void)_unloadBundleControllers;
- (void)_updateRadioGroupSpecifier:(id)specifier;
- (void)_updateSectionContentInsetWithAnimation:(BOOL)animation;
- (void)addSpecifier:(id)specifier animated:(BOOL)animated;
- (void)addSpecifiersFromArray:(id)array animated:(BOOL)animated;
- (void)clearPendingURL;
- (void)confirmationViewAcceptedForSpecifier:(id)specifier;
- (void)confirmationViewAlternateAcceptedForSpecifier:(id)specifier;
- (void)confirmationViewCancelledForSpecifier:(id)specifier;
- (void)contentSizeDidChange:(id)change;
- (void)createGroupIndices;
- (void)dataSource:(id)source performUpdates:(id)updates;
- (void)dealloc;
- (void)didBecomeActive:(id)active;
- (void)dismissConfirmationViewAnimated:(BOOL)animated;
- (void)dismissPopoverAnimated:(BOOL)animated completion:(id)completion;
- (void)formSheetViewWillDisappear;
- (void)handleScrollPPTTestName:(id)name;
- (void)handleURL:(id)l withCompletion:(id)completion;
- (void)highlightSpecifierWithID:(id)d;
- (void)insertContiguousSpecifiers:(id)specifiers afterSpecifier:(id)specifier animated:(BOOL)animated;
- (void)insertContiguousSpecifiers:(id)specifiers afterSpecifierID:(id)d animated:(BOOL)animated;
- (void)insertContiguousSpecifiers:(id)specifiers atEndOfGroup:(int64_t)group animated:(BOOL)animated;
- (void)insertSpecifier:(id)specifier afterSpecifier:(id)afterSpecifier animated:(BOOL)animated;
- (void)insertSpecifier:(id)specifier afterSpecifierID:(id)d animated:(BOOL)animated;
- (void)insertSpecifier:(id)specifier atEndOfGroup:(int64_t)group animated:(BOOL)animated;
- (void)insertSpecifier:(id)specifier atIndex:(int64_t)index animated:(BOOL)animated;
- (void)lazyLoadBundle:(id)bundle;
- (void)loadView;
- (void)loseFocus;
- (void)performScrollAndHighlightIfOnScreenToSpecifierIdentifier:(id)identifier;
- (void)performScrollAndInvokeSelectionIfOnScreenToSpecifierIdentifier:(id)identifier;
- (void)performSpecifierUpdates:(id)updates;
- (void)popupViewWillDisappear;
- (void)prepareSpecifiersMetadata;
- (void)reloadIconForSpecifierForBundle:(id)bundle;
- (void)reloadSpecifier:(id)specifier animated:(BOOL)animated;
- (void)reloadSpecifierAtIndex:(int64_t)index animated:(BOOL)animated;
- (void)reloadSpecifierID:(id)d animated:(BOOL)animated;
- (void)reloadSpecifiers;
- (void)removeLastSpecifierAnimated:(BOOL)animated;
- (void)removeSpecifier:(id)specifier animated:(BOOL)animated;
- (void)removeSpecifierAtIndex:(int64_t)index animated:(BOOL)animated;
- (void)removeSpecifierID:(id)d animated:(BOOL)animated;
- (void)replaceContiguousSpecifiers:(id)specifiers withSpecifiers:(id)withSpecifiers animated:(BOOL)animated;
- (void)returnPressedAtEnd;
- (void)selectRowForSpecifier:(id)specifier;
- (void)setAppearanceProvider:(id)provider;
- (void)setCellHighlightingSelectionInvocationRelay:(id)relay;
- (void)setDesiredVerticalContentOffsetItemNamed:(id)named;
- (void)setNavigationCoordinator:(id)coordinator;
- (void)setPrefetchingEnabled:(BOOL)enabled;
- (void)setSpecifier:(id)specifier;
- (void)setSpecifierActionCoordinator:(id)coordinator;
- (void)setSpecifierDataSource:(id)source;
- (void)setSpecifiers:(id)specifiers;
- (void)setTitle:(id)title;
- (void)showConfirmationViewForSpecifier:(id)specifier;
- (void)showConfirmationViewForSpecifier:(id)specifier useAlert:(BOOL)alert;
- (void)showController:(id)controller animate:(BOOL)animate;
- (void)showPINSheet:(id)sheet allowOptionsButton:(BOOL)button;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view prefetchRowsAtIndexPaths:(id)paths;
- (void)updateSpecifiers:(id)specifiers withSpecifiers:(id)withSpecifiers;
- (void)updateSpecifiersInRange:(_NSRange)range withSpecifiers:(id)specifiers;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewDidUnload;
- (void)viewIsAppearing:(BOOL)appearing;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation PSListController

- (PSListController)init
{
  v10.receiver = self;
  v10.super_class = PSListController;
  v2 = [(PSViewController *)&v10 init];
  if (v2)
  {
    if (!__listControllerClass)
    {
      __listControllerClass = objc_opt_class();
      __listControllerCellForRowAtIndexPath = [__listControllerClass instanceMethodForSelector:sel_tableView_cellForRowAtIndexPath_];
    }

    v3 = [(PSListController *)v2 methodForSelector:sel_tableView_cellForRowAtIndexPath_];
    v4 = objc_opt_class();
    v2->_subclassOverridesTableViewCellForRowAtIndexPath = v4 != objc_opt_class() && (v5 = objc_opt_class(), v5 != NSClassFromString(&cfstr_Psphotoservice.isa)) && v3 != __listControllerCellForRowAtIndexPath;
    [(PSListController *)v2 _ensureAppearanceProviderAndNavigationCoordinator];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__returnKeyPressed_ name:*MEMORY[0x1E69DE038] object:0];
    [defaultCenter addObserver:v2 selector:sel__keyboardWillShow_ name:*MEMORY[0x1E69DE080] object:0];
    [defaultCenter addObserver:v2 selector:sel__keyboardWillHide_ name:*MEMORY[0x1E69DE078] object:0];
    [defaultCenter addObserver:v2 selector:sel__keyboardDidHide_ name:*MEMORY[0x1E69DDF70] object:0];
    [defaultCenter addObserver:v2 selector:sel_contentSizeDidChange_ name:*MEMORY[0x1E69DDC48] object:0];
    [defaultCenter addObserver:v2 selector:sel_didBecomeActive_ name:*MEMORY[0x1E69DDAB0] object:0];
    v7 = objc_opt_new();
    [(PSListController *)v2 setUrlHandler:v7];

    urlHandler = [(PSListController *)v2 urlHandler];
    [urlHandler setDelegate:v2];
  }

  return v2;
}

- (void)_ensureAppearanceProviderAndNavigationCoordinator
{
  if (ensureDefaultAppearanceProviderAndNavigationRegistration_onceToken != -1)
  {
    [PSListController _ensureAppearanceProviderAndNavigationCoordinator];
  }

  if (!self->_appearanceProvider)
  {
    v3 = objc_alloc_init(defaultAppearanceProviderClass);
    appearanceProvider = self->_appearanceProvider;
    self->_appearanceProvider = v3;
  }

  if (!self->_navigationCoordinator)
  {
    v5 = objc_alloc_init(defaultNavigationCoordinatorClass);
    navigationCoordinator = self->_navigationCoordinator;
    self->_navigationCoordinator = v5;
  }

  if (!self->_specifierActionCoordinator)
  {
    v7 = objc_alloc_init(defaultPSListControllerSpecifierActionCoordinatorClass);
    specifierActionCoordinator = self->_specifierActionCoordinator;
    self->_specifierActionCoordinator = v7;
  }
}

- (void)loadView
{
  [(PSListController *)self _ensureAppearanceProviderAndNavigationCoordinator];
  v3 = +[PSListController appearance];
  -[PSListController setExtendedLayoutIncludesOpaqueBars:](self, "setExtendedLayoutIncludesOpaqueBars:", [v3 extendedLayoutIncludesOpaqueBars]);

  v4 = objc_alloc([(PSListController *)self tableViewClass]);
  tableViewStyle = [(PSListController *)self tableViewStyle];
  v6 = *MEMORY[0x1E695F058];
  v7 = *(MEMORY[0x1E695F058] + 8);
  v8 = *(MEMORY[0x1E695F058] + 16);
  v9 = *(MEMORY[0x1E695F058] + 24);
  v10 = [v4 initWithFrame:tableViewStyle style:{*MEMORY[0x1E695F058], v7, v8, v9}];
  table = self->_table;
  self->_table = v10;

  [(UITableView *)self->_table setDataSource:self];
  [(UITableView *)self->_table setDelegate:self];
  if (self->_prefetchingEnabled)
  {
    [(UITableView *)self->_table setPrefetchDataSource:self];
  }

  obj = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v6, v7, v8, v9}];
  WeakRetained = objc_loadWeakRetained(&self->super._rootController);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  [(PSListControllerAppearanceProvider *)self->_appearanceProvider customizeTableView:self->_table inContainerView:obj hostedInSetupController:isKindOfClass & 1 forListController:self];
  [obj addSubview:self->_table];
  objc_storeStrong(&self->_containerView, obj);
  [(PSListController *)self setView:self->_containerView];
  v14 = self->_table;
  v15 = objc_opt_class();
  v16 = +[PSTableCell cellReuseIdentifier];
  [(UITableView *)v14 registerClass:v15 forCellReuseIdentifier:v16];

  v17 = self->_table;
  v18 = objc_opt_class();
  v19 = +[(PSTableCell *)_TtC11Preferences35PSSpecifierContentConfigurationCell];
  [(UITableView *)v17 registerClass:v18 forCellReuseIdentifier:v19];

  v20 = self->_table;
  v21 = objc_opt_class();
  v22 = +[(PSTableCell *)_TtC11Preferences41PSSpecifierToggleContentConfigurationCell];
  [(UITableView *)v20 registerClass:v21 forCellReuseIdentifier:v22];

  v23 = self->_table;
  v24 = objc_opt_class();
  v25 = +[(PSTableCell *)_TtC11Preferences42PSSpecifierSpinnerContentConfigurationCell];
  [(UITableView *)v23 registerClass:v24 forCellReuseIdentifier:v25];

  v26 = self->_table;
  v27 = objc_opt_class();
  v28 = +[(PSTableCell *)_TtC11Preferences43PSSpecifierSubtitleContentConfigurationCell];
  [(UITableView *)v26 registerClass:v27 forCellReuseIdentifier:v28];

  v29 = self->_table;
  v30 = objc_opt_class();
  v31 = +[(PSTableCell *)_TtC11Preferences47PSSpecifierDeleteButtonContentConfigurationCell];
  [(UITableView *)v29 registerClass:v30 forCellReuseIdentifier:v31];

  v32 = self->_table;
  v33 = objc_opt_class();
  v34 = +[(PSTableCell *)_TtC11Preferences44PSSpecifierTimeRangeContentConfigurationCell];
  [(UITableView *)v32 registerClass:v33 forCellReuseIdentifier:v34];

  v35 = self->_table;
  v36 = objc_opt_class();
  v37 = +[(PSTableCell *)_TtC11Preferences52PSSpecifierSubtitleWithValueContentConfigurationCell];
  [(UITableView *)v35 registerClass:v36 forCellReuseIdentifier:v37];

  v38 = self->_table;
  v39 = objc_opt_class();
  v40 = +[(PSTableCell *)PSSpecifierSliderConfigurationCell];
  [(UITableView *)v38 registerClass:v39 forCellReuseIdentifier:v40];

  v41 = NSClassFromString(&cfstr_Pesettingsfeat.isa);
  if (v41)
  {
    v42 = v41;
    if (objc_opt_respondsToSelector())
    {
      v43 = self->_table;
      cellReuseIdentifier = [(objc_class *)v42 cellReuseIdentifier];
      [(UITableView *)v43 registerClass:v42 forCellReuseIdentifier:cellReuseIdentifier];
    }
  }
}

- (id)bundle
{
  if ([(PSListController *)self isMemberOfClass:objc_opt_class()])
  {
    [MEMORY[0x1E696AAE8] mainBundle];
  }

  else
  {
    [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  }
  v2 = ;

  return v2;
}

- (void)viewDidLoad
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_class();
  objc_sync_enter(v3);
  v20.receiver = self;
  v20.super_class = PSListController;
  [(PSViewController *)&v20 viewDidLoad];
  v4 = PKLogForCategory(6);
  v5 = os_signpost_id_make_with_pointer(v4, "PSListController.loadSpecifiersInViewDidLoad");

  v6 = PKLogForCategory(6);
  v7 = v6;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    v8 = objc_opt_class();
    *buf = 138543618;
    v22 = v8;
    v23 = 2082;
    v24 = "[PSListController viewDidLoad]";
    _os_signpost_emit_with_name_impl(&dword_18B008000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "PSListController.loadSpecifiersInViewDidLoad", "%{public}@: %{public}s", buf, 0x16u);
  }

  specifiers = [(PSListController *)self specifiers];
  [(PSListController *)self _loadBundleControllers];
  v10 = PKLogForCategory(6);
  v11 = v10;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_18B008000, v11, OS_SIGNPOST_INTERVAL_END, v5, "PSListController.loadSpecifiersInViewDidLoad", &unk_18B1164E9, buf, 2u);
  }

  if (!self->_specifiers)
  {
    specifier = self->super._specifier;
    if (specifier)
    {
      if (specifier->getter)
      {
        WeakRetained = objc_loadWeakRetained(&specifier->target);
        v18 = SFPerformSelector();
        specifiers = self->_specifiers;
        self->_specifiers = v18;
      }
    }
  }

  [(PSListController *)self prepareSpecifiersMetadata];
  [(PSListController *)self reload];
  v12 = objc_loadWeakRetained(&self->super._rootController);
  if (v12)
  {
    rootController = [(PSViewController *)self rootController];
    v14 = objc_opt_respondsToSelector();

    if (v14)
    {
      rootController2 = [(PSViewController *)self rootController];
      [rootController2 logSettingsPath];
    }
  }

  objc_sync_exit(v3);
}

- (void)_loadBundleControllers
{
  if (!self->_bundlesLoaded)
  {
    v3 = [(NSMutableArray *)self->_bundleControllers count];
    self->_bundlesLoaded = 1;
    if (v3)
    {
      v4 = v3;
      for (i = 0; i != v4; ++i)
      {
        v6 = [(NSMutableArray *)self->_bundleControllers objectAtIndex:i];
        [v6 load];
      }
    }
  }
}

- (void)prepareSpecifiersMetadata
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = PKLogForCategory(3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = NSStringFromSelector(a2);
    viewIfLoaded = [(PSListController *)self viewIfLoaded];
    v9 = @"View is loaded";
    *buf = 138543874;
    v29 = v6;
    if (!viewIfLoaded)
    {
      v9 = @"View is not loaded";
    }

    v30 = 2114;
    v31 = v7;
    v32 = 2112;
    v33 = v9;
    _os_log_impl(&dword_18B008000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@ %@", buf, 0x20u);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  specifiers = selfCopy->_specifiers;
  if (specifiers && [(NSArray *)specifiers count])
  {
    v12 = [(NSArray *)selfCopy->_specifiers objectAtIndex:0];
    v13 = v12;
    if (v12 && *(v12 + 56))
    {
      v14 = [(NSArray *)selfCopy->_specifiers mutableCopy];
      v15 = [PSSpecifier preferenceSpecifierNamed:0 target:0 set:0 get:0 detail:0 cell:0 edit:0];
      [(NSArray *)v14 insertObject:v15 atIndex:0];

      v16 = selfCopy->_specifiers;
      selfCopy->_specifiers = v14;
    }
  }

  else
  {
    v13 = 0;
  }

  objc_sync_exit(selfCopy);

  [(PSListController *)selfCopy createGroupIndices];
  v17 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{-[NSArray count](selfCopy->_specifiers, "count")}];
  specifiersByID = selfCopy->_specifiersByID;
  selfCopy->_specifiersByID = v17;

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v19 = selfCopy->_specifiers;
  v20 = [(NSArray *)v19 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v20)
  {
    v21 = *v24;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v24 != v21)
        {
          objc_enumerationMutation(v19);
        }

        [(PSListController *)selfCopy _addIdentifierForSpecifier:*(*(&v23 + 1) + 8 * i)];
      }

      v20 = [(NSArray *)v19 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v20);
  }
}

- (void)createGroupIndices
{
  obj = self;
  objc_sync_enter(obj);
  v2 = [(PSListController *)obj _createGroupIndices:obj->_specifiers];
  groups = obj->_groups;
  obj->_groups = v2;

  objc_sync_exit(obj);
}

- (void)viewDidLayoutSubviews
{
  v22.receiver = self;
  v22.super_class = PSListController;
  [(PSListController *)&v22 viewDidLayoutSubviews];
  view = [(PSListController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  if ([currentDevice sf_isiPad])
  {
    v13 = PSIsRunningInAssistant();

    if (v13)
    {
      WeakRetained = objc_loadWeakRetained(&self->super._rootController);
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        v24 = 0;
        v25 = &v24;
        v26 = 0x2050000000;
        v16 = getBFFStyleClass_softClass;
        v27 = getBFFStyleClass_softClass;
        if (!getBFFStyleClass_softClass)
        {
          v23[0] = MEMORY[0x1E69E9820];
          v23[1] = 3221225472;
          v23[2] = __getBFFStyleClass_block_invoke;
          v23[3] = &unk_1E71DBC78;
          v23[4] = &v24;
          __getBFFStyleClass_block_invoke(v23);
          v16 = v25[3];
        }

        v17 = v16;
        _Block_object_dispose(&v24, 8);
        sharedStyle = [v16 sharedStyle];
        [sharedStyle edgeInsetsForTable:self->_table];
        v5 = v19;
        v21 = v20;

        v9 = v9 - (v5 + v21);
      }
    }
  }

  else
  {
  }

  [(UITableView *)self->_table setFrame:v5, v7, v9, v11];
  [(PSListController *)self _updateSectionContentInsetWithAnimation:0];
}

- (BOOL)_isRegularWidth
{
  v3 = [MEMORY[0x1E69DD1B8] traitCollectionWithHorizontalSizeClass:2];
  splitViewController = [(PSListController *)self splitViewController];
  traitCollection = [splitViewController traitCollection];
  v6 = [traitCollection containsTraitsInCollection:v3];

  return v6;
}

- (BOOL)shouldSelectResponderOnAppearance
{
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  if ([currentDevice sf_isiPad] && !self->_hasAppeared)
  {
    WeakRetained = objc_loadWeakRetained(&self->super._rootController);
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (NSString)description
{
  string = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  navigationItem = [(PSListController *)self navigationItem];
  [string appendFormat:@"<%@ %p: navItem %@, view %p>", v4, self, navigationItem, self->_table];

  return string;
}

- (id)loadSpecifiersFromPlistName:(id)name target:(id)target
{
  targetCopy = target;
  nameCopy = name;
  bundle = [(PSListController *)self bundle];
  v9 = [(PSListController *)self loadSpecifiersFromPlistName:nameCopy target:targetCopy bundle:bundle];

  return v9;
}

- (id)loadSpecifiersFromPlistName:(id)name target:(id)target bundle:(id)bundle
{
  v29 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  bundleCopy = bundle;
  v23 = 0;
  v24 = 0;
  targetCopy = target;
  v11 = [bundleCopy pathForResource:nameCopy ofType:@"plist"];
  if (!v11)
  {
    v12 = _PSLoggingFacility();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      bundlePath = [bundleCopy bundlePath];
      *buf = 138412546;
      v26 = nameCopy;
      v27 = 2112;
      v28 = bundlePath;
      _os_log_impl(&dword_18B008000, v12, OS_LOG_TYPE_DEFAULT, "Warning: failed to load preferences plist '%@.plist' for bundle %@", buf, 0x16u);
    }
  }

  v14 = [objc_alloc(MEMORY[0x1E695DF20]) initWithContentsOfFile:v11];
  v15 = objc_opt_new();
  specifier = self->super._specifier;
  v22 = v15;
  v17 = SpecifiersFromPlist(v14, specifier, targetCopy, nameCopy, bundleCopy, &v23, &v24, self, &v22);

  v18 = v22;
  v19 = v22;

  bundleControllers = self->_bundleControllers;
  if (bundleControllers)
  {
    [(NSMutableArray *)bundleControllers addObjectsFromArray:v19];
  }

  else
  {
    objc_storeStrong(&self->_bundleControllers, v18);
  }

  [(PSListController *)self setSpecifierID:v24];
  [(PSListController *)self setTitle:v23];

  return v17;
}

- (id)specifiers
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_specifiers)
  {
    if (selfCopy->_dataSource)
    {
      selfCopy->_requestingSpecifiersFromDataSource = 1;
      dataSource = selfCopy->_dataSource;
      specifier = [(PSListController *)selfCopy specifier];
      v5 = [(PSSpecifierDataSource *)dataSource specifiersForSpecifier:specifier observer:selfCopy];
      specifiers = selfCopy->_specifiers;
      selfCopy->_specifiers = v5;

      selfCopy->_requestingSpecifiersFromDataSource = 0;
    }

    else
    {
      v7 = [(PSSpecifier *)selfCopy->super._specifier propertyForKey:@"label"];
      target = [(PSSpecifier *)selfCopy->super._specifier target];
      v9 = [(PSListController *)selfCopy loadSpecifiersFromPlistName:v7 target:target];
      v10 = selfCopy->_specifiers;
      selfCopy->_specifiers = v9;
    }
  }

  objc_sync_exit(selfCopy);

  v11 = selfCopy->_specifiers;

  return v11;
}

- (void)_addIdentifierForSpecifier:(id)specifier
{
  v22 = *MEMORY[0x1E69E9840];
  specifierCopy = specifier;
  identifier = [specifierCopy identifier];
  if (!identifier)
  {
    identifier = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld", -[PSListController indexOfSpecifier:](self, "indexOfSpecifier:", specifierCopy)];
    [specifierCopy setProperty:identifier forKey:@"id"];
  }

  v6 = identifier;
  v7 = 0;
  v8 = v6;
  do
  {
    v9 = [(NSMutableDictionary *)self->_specifiersByID objectForKey:v8];

    if (!v9)
    {
      v10 = v8;
      goto LABEL_10;
    }

    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%lu", v6, v7];

    v11 = [(NSMutableDictionary *)self->_specifiersByID objectForKey:v10];

    ++v7;
    v8 = v10;
  }

  while (v11);
  [specifierCopy setProperty:v10 forKey:@"id"];
  v12 = _PSLoggingFacility();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    name = [specifierCopy name];
    *buf = 138413058;
    v15 = name;
    v16 = 2048;
    v17 = specifierCopy;
    v18 = 2112;
    v19 = v6;
    v20 = 2112;
    v21 = v10;
    _os_log_impl(&dword_18B008000, v12, OS_LOG_TYPE_DEFAULT, "re-assigned ID for %@ <%p> from %@ to %@", buf, 0x2Au);
  }

LABEL_10:
  [(NSMutableDictionary *)self->_specifiersByID setObject:specifierCopy forKey:v10];
}

- (void)_removeIdentifierForSpecifier:(id)specifier
{
  identifier = [specifier identifier];
  if (identifier)
  {
    v5 = identifier;
    [(NSMutableDictionary *)self->_specifiersByID removeObjectForKey:identifier];
    identifier = v5;
  }
}

- (void)setSpecifier:(id)specifier
{
  specifierCopy = specifier;
  if (self->super._specifier != specifierCopy)
  {
    v14.receiver = self;
    v14.super_class = PSListController;
    [(PSViewController *)&v14 setSpecifier:specifierCopy];
    v5 = ([(UITableView *)self->_table _displaysCellContentStringsOnTapAndHold]& 1) != 0 || [(PSSpecifier *)self->super._specifier showContentString];
    [(UITableView *)self->_table _setDisplaysCellContentStringsOnTapAndHold:v5];
    v6 = [(PSSpecifier *)specifierCopy propertyForKey:@"dataSourceClass"];
    v7 = v6;
    if (v6)
    {
      nSClassFromString(v6) = [NSClassFromString(v6) sharedInstance];
      [(PSListController *)self setSpecifierDataSource:nSClassFromString(v6)];
    }

    else
    {
      [(PSListController *)self setSpecifierDataSource:0];
    }

    objc_opt_class();
    v9 = [(PSSpecifier *)specifierCopy objectForKeyedSubscript:@"PSListControllerCellHighlightingSelectionInvocationRelayKey"];
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;
    [(PSListController *)self setCellHighlightingSelectionInvocationRelay:v11];

    title = [(PSListController *)self title];

    if (!title)
    {
      name = [(PSSpecifier *)self->super._specifier name];
      [(PSListController *)self setTitle:name];
    }
  }
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v5.receiver = self;
    v5.super_class = PSListController;
    [(PSListController *)&v5 setTitle:titleCopy];
  }
}

- (void)setSpecifiers:(id)specifiers
{
  specifiersCopy = specifiers;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_specifiers == specifiersCopy)
  {
    objc_sync_exit(selfCopy);
  }

  else
  {
    objc_storeStrong(&selfCopy->_specifiers, specifiers);
    objc_sync_exit(selfCopy);

    [(PSListController *)selfCopy prepareSpecifiersMetadata];
    [(PSListController *)selfCopy reload];
  }
}

- (id)indexPathForIndex:(int64_t)index
{
  v7 = -1;
  v8 = -1;
  if ([(PSListController *)self getGroup:&v8 row:&v7 ofSpecifierAtIndex:index])
  {
    if (v7 < 0)
    {
      v3 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v3 = v7;
    }

    if (v8 < 0)
    {
      v4 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v4 = v8;
    }

    v5 = [MEMORY[0x1E696AC88] indexPathForRow:v3 inSection:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)indexPathForSpecifier:(id)specifier
{
  v4 = [(PSListController *)self indexOfSpecifier:specifier];

  return [(PSListController *)self indexPathForIndex:v4];
}

- (int64_t)indexForIndexPath:(id)path
{
  pathCopy = path;
  if (pathCopy)
  {
    if (!self->_groups)
    {
      [(PSListController *)self createGroupIndices];
    }

    v5 = [pathCopy row];
    v6 = -[PSListController indexOfGroup:](self, "indexOfGroup:", [pathCopy section]);
    if (v6 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v7 = v5 + v6 + 1;
    }
  }

  else
  {
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v7;
}

- (void)reloadSpecifierAtIndex:(int64_t)index animated:(BOOL)animated
{
  animatedCopy = animated;
  v34[1] = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  specifiers = selfCopy->_specifiers;
  if (specifiers)
  {
    v26 = [(NSArray *)specifiers objectAtIndex:index];
  }

  else
  {
    v26 = 0;
  }

  objc_sync_exit(selfCopy);

  areAnimationsEnabled = [MEMORY[0x1E69DD250] areAnimationsEnabled];
  if (!animatedCopy)
  {
    [MEMORY[0x1E69DD250] setAnimationsEnabled:0];
  }

  indexPathForSelectedRow = [(UITableView *)selfCopy->_table indexPathForSelectedRow];
  v25 = [(PSListController *)selfCopy indexForIndexPath:indexPathForSelectedRow];
  v31 = 0;
  v32 = 0;
  if ([(PSListController *)selfCopy getGroup:&v32 row:&v31 ofSpecifierAtIndex:index])
  {
    [(UITableView *)selfCopy->_table beginUpdates];
    v23 = [MEMORY[0x1E696AC88] indexPathForRow:v31 inSection:v32];
    if (v31 < 0)
    {
      v11 = [(PSListController *)selfCopy specifiersInGroup:v32];
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v12 = [v11 countByEnumeratingWithState:&v27 objects:v33 count:16];
      if (v12)
      {
        v13 = *v28;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v28 != v13)
            {
              objc_enumerationMutation(v11);
            }

            [*(*(&v27 + 1) + 8 * i) removePropertyForKey:{@"cellObject", v23}];
          }

          v12 = [v11 countByEnumeratingWithState:&v27 objects:v33 count:16];
        }

        while (v12);
      }

      v15 = [v26 objectForKeyedSubscript:{@"headerView", v23}];
      if ([v15 conformsToProtocol:&unk_1EFE93310] && (objc_opt_respondsToSelector() & 1) != 0)
      {
        [v15 refreshContentsWithSpecifier:v26];
      }

      v16 = [v26 objectForKeyedSubscript:@"footerView"];
      if ([v16 conformsToProtocol:&unk_1EFE93310] && (objc_opt_respondsToSelector() & 1) != 0)
      {
        [v16 refreshContentsWithSpecifier:v26];
      }

      table = selfCopy->_table;
      v18 = [MEMORY[0x1E696AC90] indexSetWithIndex:v32];
      if (animatedCopy)
      {
        v19 = 0;
      }

      else
      {
        v19 = 5;
      }

      [(UITableView *)table reloadSections:v18 withRowAnimation:v19];
    }

    else
    {
      objc_opt_class();
      v9 = [(UITableView *)selfCopy->_table cellForRowAtIndexPath:v23];
      if (objc_opt_isKindOfClass())
      {
        v10 = v9;
      }

      else
      {
        v10 = 0;
      }

      v11 = v10;

      if (v11)
      {
        [v11 reloadWithSpecifier:v26 animated:animatedCopy];
      }

      else
      {
        v20 = selfCopy->_table;
        v34[0] = v23;
        v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:1];
        if (animatedCopy)
        {
          v22 = 0;
        }

        else
        {
          v22 = 5;
        }

        [(UITableView *)v20 reloadRowsAtIndexPaths:v21 withRowAnimation:v22, v23];
      }
    }

    [(UITableView *)selfCopy->_table endUpdates];
  }

  if (!animatedCopy)
  {
    [MEMORY[0x1E69DD250] setAnimationsEnabled:areAnimationsEnabled];
  }

  if (v25 == index)
  {
    [(UITableView *)selfCopy->_table selectRowAtIndexPath:indexPathForSelectedRow animated:0 scrollPosition:0];
  }
}

- (void)reloadSpecifier:(id)specifier animated:(BOOL)animated
{
  animatedCopy = animated;
  specifierCopy = specifier;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  specifiers = selfCopy->_specifiers;
  if (specifiers)
  {
    v8 = [(NSArray *)specifiers indexOfObject:specifierCopy];
  }

  else
  {
    v8 = 0x7FFFFFFFFFFFFFFFLL;
  }

  objc_sync_exit(selfCopy);

  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(PSListController *)selfCopy reloadSpecifierAtIndex:v8 animated:animatedCopy];
  }
}

- (void)reloadSpecifierID:(id)d animated:(BOOL)animated
{
  animatedCopy = animated;
  v16 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v7 = PKLogForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = " not";
    v11 = "[PSListController reloadSpecifierID:animated:]";
    v10 = 136446722;
    if (animatedCopy)
    {
      v8 = "";
    }

    v12 = 2114;
    v13 = dCopy;
    v14 = 2082;
    v15 = v8;
    _os_log_impl(&dword_18B008000, v7, OS_LOG_TYPE_INFO, "%{public}s: identifier: '%{public}@';%{public}s animated", &v10, 0x20u);
  }

  v9 = [(PSListController *)self specifierForID:dCopy];
  [(PSListController *)self reloadSpecifier:v9 animated:animatedCopy];
}

- (int64_t)indexOfSpecifierID:(id)d
{
  dCopy = d;
  v5 = [(PSListController *)self specifierForID:dCopy];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (v5)
  {
    v7 = [(NSArray *)selfCopy->_specifiers indexOfObject:v5];
  }

  else
  {
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  objc_sync_exit(selfCopy);

  return v7;
}

- (int64_t)indexOfSpecifier:(id)specifier
{
  specifierCopy = specifier;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  specifiers = selfCopy->_specifiers;
  if (specifiers)
  {
    v7 = [(NSArray *)specifiers indexOfObject:specifierCopy];
  }

  else
  {
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  objc_sync_exit(selfCopy);

  return v7;
}

- (int64_t)indexOfGroup:(int64_t)group
{
  groups = self->_groups;
  if (!groups)
  {
    [(PSListController *)self createGroupIndices];
    groups = self->_groups;
  }

  v6 = [(NSMutableArray *)groups count];
  v7 = self->_groups;
  if (v6 <= group)
  {
    v10 = [(NSMutableArray *)v7 count];
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    NSLog(&cfstr_CriticalErrorA.isa, group, v10, v12);

    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    LODWORD(v10) = [currentDevice sf_isInternalInstall];

    if (!v10)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }

    NSLog(&cfstr_Specifiers.isa, self->_specifiers);
    NSLog(&cfstr_GroupIndices.isa, self->_groups);
    v8 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    bundlePath = [v8 bundlePath];
    lastPathComponent = [bundlePath lastPathComponent];
    NSLog(&cfstr_PleaseFileABug.isa, lastPathComponent);

    integerValue = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v8 = [(NSMutableArray *)v7 objectAtIndex:group];
    integerValue = [v8 integerValue];
  }

  return integerValue;
}

- (int64_t)numberOfGroups
{
  groups = self->_groups;
  if (!groups)
  {
    [(PSListController *)self createGroupIndices];
    groups = self->_groups;
  }

  return [(NSMutableArray *)groups count];
}

- (id)specifierAtIndexPath:(id)path
{
  v4 = [(PSListController *)self indexForIndexPath:path];

  return [(PSListController *)self specifierAtIndex:v4];
}

- (id)specifierAtIndex:(int64_t)index
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = [(NSArray *)selfCopy->_specifiers count];
  v6 = 0;
  if ((index & 0x8000000000000000) == 0 && v5 > index)
  {
    v6 = [(NSArray *)selfCopy->_specifiers objectAtIndex:index];
  }

  objc_sync_exit(selfCopy);

  return v6;
}

- (id)getGroupSpecifierForSpecifier:(id)specifier
{
  if (specifier)
  {
    v7 = 0;
    v8 = 0;
    [(PSListController *)self getGroup:&v8 row:&v7 ofSpecifier:specifier];
    v4 = [(PSListController *)self specifiersInGroup:v8];
    if ([v4 count])
    {
      v5 = [v4 objectAtIndexedSubscript:0];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)getGroupSpecifierForSpecifierID:(id)d
{
  v4 = [(PSListController *)self specifierForID:d];
  v5 = [(PSListController *)self getGroupSpecifierForSpecifier:v4];

  return v5;
}

- (BOOL)getGroup:(int64_t *)group row:(int64_t *)row ofSpecifierID:(id)d
{
  v8 = [(PSListController *)self specifierForID:d];
  LOBYTE(row) = [(PSListController *)self getGroup:group row:row ofSpecifier:v8];

  return row;
}

- (BOOL)getGroup:(int64_t *)group row:(int64_t *)row ofSpecifier:(id)specifier
{
  v8 = [(NSArray *)self->_specifiers indexOfObject:specifier];

  return [(PSListController *)self getGroup:group row:row ofSpecifierAtIndex:v8];
}

- (BOOL)_getGroup:(int64_t *)group row:(int64_t *)row ofSpecifierAtIndex:(int64_t)index groups:(id)groups
{
  groupsCopy = groups;
  v10 = [groupsCopy count];
  while (1)
  {
    v11 = v10;
    if (v10-- < 1)
    {
      break;
    }

    v13 = [groupsCopy objectAtIndex:v10];
    integerValue = [v13 integerValue];

    if (integerValue <= index)
    {
      if (group)
      {
        *group = v10;
      }

      if (row)
      {
        *row = ~integerValue + index;
      }

      break;
    }
  }

  return v11 > 0;
}

- (BOOL)getGroup:(int64_t *)group row:(int64_t *)row ofSpecifierAtIndex:(int64_t)index
{
  if (index == 0x7FFFFFFFFFFFFFFFLL || !self->_specifiers)
  {
    return 0;
  }

  groups = self->_groups;
  if (!groups)
  {
    [(PSListController *)self createGroupIndices];
    groups = self->_groups;
  }

  return [(PSListController *)self _getGroup:group row:row ofSpecifierAtIndex:index groups:groups];
}

- (int64_t)indexForRow:(int64_t)row inGroup:(int64_t)group
{
  v5 = [(NSMutableArray *)self->_groups objectAtIndex:group];
  integerValue = [v5 integerValue];

  return row + integerValue + 1;
}

- (int64_t)rowsForGroup:(int64_t)group
{
  if (!self->_groups)
  {
    [(PSListController *)self createGroupIndices];
  }

  table = self->_table;

  return [(UITableView *)table numberOfRowsInSection:group];
}

- (id)specifiersInGroup:(int64_t)group
{
  if (!self->_groups)
  {
    [(PSListController *)self createGroupIndices];
  }

  specifiers = self->_specifiers;
  v6 = [(PSListController *)self indexOfGroup:group];
  v7 = [(PSListController *)self rowsForGroup:group]+ 1;

  return [(NSArray *)specifiers subarrayWithRange:v6, v7];
}

- (_NSRange)rangeOfSpecifiersInGroupID:(id)d
{
  v4 = [(PSListController *)self indexOfSpecifierID:d];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    v6 = 1;
    do
    {
      v5 = v6;
      v7 = v4 + v6;
      specifiers = [(PSListController *)self specifiers];
      v9 = [specifiers count];

      if (v7 >= v9)
      {
        break;
      }

      v10 = [(PSListController *)self specifierAtIndex:v7];
      cellType = [v10 cellType];

      v6 = v5 + 1;
    }

    while (cellType);
  }

  v12 = v4;
  v13 = v5;
  result.length = v13;
  result.location = v12;
  return result;
}

- (void)insertSpecifier:(id)specifier atIndex:(int64_t)index animated:(BOOL)animated
{
  if (self->_specifiers)
  {
    animatedCopy = animated;
    v8 = MEMORY[0x1E695DEC8];
    specifierCopy = specifier;
    v10 = [[v8 alloc] initWithObjects:{specifierCopy, 0}];

    [(PSListController *)self insertContiguousSpecifiers:v10 atIndex:index animated:animatedCopy];
  }
}

- (void)insertSpecifier:(id)specifier afterSpecifier:(id)afterSpecifier animated:(BOOL)animated
{
  animatedCopy = animated;
  specifierCopy = specifier;
  afterSpecifierCopy = afterSpecifier;
  specifiers = self->_specifiers;
  if (specifiers)
  {
    if (afterSpecifierCopy)
    {
      v10 = [(NSArray *)specifiers indexOfObject:afterSpecifierCopy]+ 1;
    }

    else
    {
      v10 = [(NSArray *)specifiers count];
    }

    [(PSListController *)self insertSpecifier:specifierCopy atIndex:v10 animated:animatedCopy];
  }
}

- (void)insertSpecifier:(id)specifier afterSpecifierID:(id)d animated:(BOOL)animated
{
  animatedCopy = animated;
  specifierCopy = specifier;
  v9 = [(PSListController *)self specifierForID:d];
  [(PSListController *)self insertSpecifier:specifierCopy afterSpecifier:v9 animated:animatedCopy];
}

- (void)insertSpecifier:(id)specifier atEndOfGroup:(int64_t)group animated:(BOOL)animated
{
  animatedCopy = animated;
  specifierCopy = specifier;
  v10 = [(NSArray *)self->_specifiers objectAtIndex:[(PSListController *)self tableView:self->_table numberOfRowsInSection:group]+ [(PSListController *)self indexOfGroup:group]];
  identifier = [v10 identifier];
  [(PSListController *)self insertSpecifier:specifierCopy afterSpecifierID:identifier animated:animatedCopy];
}

- (void)_insertContiguousSpecifiers:(id)specifiers atIndex:(int64_t)index animated:(BOOL)animated
{
  v55 = *MEMORY[0x1E69E9840];
  specifiersCopy = specifiers;
  v9 = specifiersCopy;
  if (self->_specifiers)
  {
    v10 = [specifiersCopy count];
    if ((index & 0x8000000000000000) == 0 && v10 && [(NSArray *)self->_specifiers count]>= index)
    {
      v52 = -1;
      v53 = -1;
      v41 = [(NSArray *)self->_specifiers count];
      v40 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v42 = objc_alloc_init(MEMORY[0x1E696AD50]);
      v11 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v9, "count")}];
      v38 = v9;
      v12 = v9;
      v13 = v12;
      animatedCopy = animated;
      v43 = v11;
      if (index)
      {
        [(PSListController *)self getGroup:&v52 row:&v53 ofSpecifierAtIndex:index - 1];
        v15 = v52;
        v14 = v53;
      }

      else
      {
        v16 = [v12 objectAtIndex:0];
        if (v16[7])
        {
          v17 = [v13 mutableCopy];
          v18 = [PSSpecifier preferenceSpecifierNamed:0 target:0 set:0 get:0 detail:0 cell:0 edit:0];
          [v17 insertObject:v18 atIndex:0];

          v13 = v17;
        }

        v15 = -1;
        v14 = -1;
      }

      v45 = v14;
      indexCopy = index;
      selfCopy = self;
      v47 = [(NSArray *)self->_specifiers mutableCopy];
      v48 = 0u;
      v49 = 0u;
      v50 = 0u;
      v51 = 0u;
      obj = v13;
      v21 = [obj countByEnumeratingWithState:&v48 objects:v54 count:16];
      v22 = v42;
      if (v21)
      {
        v23 = v21;
        v24 = 0;
        v46 = *v49;
        v25 = indexCopy;
        v39 = indexCopy;
        do
        {
          for (i = 0; i != v23; ++i)
          {
            if (*v49 != v46)
            {
              objc_enumerationMutation(obj);
            }

            v27 = *(*(&v48 + 1) + 8 * i);
            [v47 insertObject:v27 atIndex:v25];
            [(PSListController *)selfCopy _addIdentifierForSpecifier:v27];
            if (*(v27 + 56))
            {
              if ((v24 & 1) == 0)
              {
                ++v45;
                v28 = [MEMORY[0x1E696AC88] indexPathForRow:? inSection:?];
                [v43 addObject:v28];

                v24 = 0;
                goto LABEL_28;
              }

LABEL_26:
              v24 = 1;
              goto LABEL_28;
            }

            [v22 addIndex:++v15];
            if ([v22 count] != 1)
            {
              goto LABEL_26;
            }

            integerValue = v41;
            if (v15 != [(NSMutableArray *)selfCopy->_groups count])
            {
              v30 = [(NSMutableArray *)selfCopy->_groups objectAtIndex:v15];
              integerValue = [v30 integerValue];
            }

            v31 = integerValue - indexCopy;
            if (integerValue == indexCopy || v31 < 1)
            {
              v24 = 1;
              v22 = v42;
            }

            else
            {
              v32 = v53;
              do
              {
                v33 = [MEMORY[0x1E696AC88] indexPathForRow:++v32 inSection:v52];
                [v40 addObject:v33];
              }

              while (v32 < v31 + v53);
              v24 = 1;
              v22 = v42;
              indexCopy = v39;
            }

LABEL_28:
            ++v25;
          }

          v23 = [obj countByEnumeratingWithState:&v48 objects:v54 count:16];
        }

        while (v23);
      }

      v34 = selfCopy;
      objc_sync_enter(v34);
      objc_storeStrong(&selfCopy->_specifiers, v47);
      objc_sync_exit(v34);

      [v34 createGroupIndices];
      if (animatedCopy)
      {
        v35 = 0;
      }

      else
      {
        [MEMORY[0x1E69DD250] setAnimationsEnabled:0];
        v35 = 5;
      }

      v9 = v38;
      [v34[134] beginUpdates];
      if ([v40 count])
      {
        [v34[134] deleteRowsAtIndexPaths:v40 withRowAnimation:v35];
      }

      if ([v42 count])
      {
        [v34[134] insertSections:v42 withRowAnimation:v35];
      }

      if ([v43 count])
      {
        [v34[134] insertRowsAtIndexPaths:v43 withRowAnimation:v35];
      }

      [v34[134] endUpdates];
      if (!animatedCopy)
      {
        [MEMORY[0x1E69DD250] setAnimationsEnabled:1];
      }
    }
  }

  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v36 = _PSLoggingFacility();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
    {
      [PSListController _insertContiguousSpecifiers:v36 atIndex:? animated:?];
    }
  }
}

- (void)insertContiguousSpecifiers:(id)specifiers afterSpecifier:(id)specifier animated:(BOOL)animated
{
  animatedCopy = animated;
  specifiersCopy = specifiers;
  specifierCopy = specifier;
  specifiers = self->_specifiers;
  if (specifiers)
  {
    v10 = specifierCopy ? [(NSArray *)specifiers indexOfObject:specifierCopy]: [(NSArray *)specifiers count]- 1;
    if (v10 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [(PSListController *)self insertContiguousSpecifiers:specifiersCopy atIndex:v10 + 1 animated:animatedCopy];
    }
  }
}

- (void)insertContiguousSpecifiers:(id)specifiers afterSpecifierID:(id)d animated:(BOOL)animated
{
  if (self->_specifiers)
  {
    animatedCopy = animated;
    specifiersCopy = specifiers;
    v9 = [(PSListController *)self specifierForID:d];
    [(PSListController *)self insertContiguousSpecifiers:specifiersCopy afterSpecifier:v9 animated:animatedCopy];
  }
}

- (void)insertContiguousSpecifiers:(id)specifiers atEndOfGroup:(int64_t)group animated:(BOOL)animated
{
  animatedCopy = animated;
  specifiersCopy = specifiers;
  v10 = [(NSArray *)self->_specifiers objectAtIndex:[(PSListController *)self tableView:self->_table numberOfRowsInSection:group]+ [(PSListController *)self indexOfGroup:group]];
  identifier = [v10 identifier];
  [(PSListController *)self insertContiguousSpecifiers:specifiersCopy afterSpecifierID:identifier animated:animatedCopy];
}

- (void)addSpecifier:(id)specifier animated:(BOOL)animated
{
  animatedCopy = animated;
  specifiers = self->_specifiers;
  specifierCopy = specifier;
  [(PSListController *)self insertSpecifier:specifierCopy atIndex:[(NSArray *)specifiers count] animated:animatedCopy];
}

- (void)addSpecifiersFromArray:(id)array animated:(BOOL)animated
{
  animatedCopy = animated;
  specifiers = self->_specifiers;
  arrayCopy = array;
  [(PSListController *)self insertContiguousSpecifiers:arrayCopy atIndex:[(NSArray *)specifiers count] animated:animatedCopy];
}

- (void)removeSpecifier:(id)specifier animated:(BOOL)animated
{
  animatedCopy = animated;
  v6 = MEMORY[0x1E695DEC8];
  specifierCopy = specifier;
  v8 = [[v6 alloc] initWithObjects:{specifierCopy, 0}];

  [(PSListController *)self removeContiguousSpecifiers:v8 animated:animatedCopy];
}

- (void)removeSpecifierID:(id)d animated:(BOOL)animated
{
  animatedCopy = animated;
  v6 = [(PSListController *)self specifierForID:d];
  [(PSListController *)self removeSpecifier:v6 animated:animatedCopy];
}

- (void)removeSpecifierAtIndex:(int64_t)index animated:(BOOL)animated
{
  specifiers = self->_specifiers;
  if (specifiers)
  {
    animatedCopy = animated;
    v8 = [(NSArray *)specifiers count];
    if ((index & 0x8000000000000000) == 0 && v8 > index)
    {
      v9 = [(NSArray *)self->_specifiers objectAtIndex:index];
      [(PSListController *)self removeSpecifier:v9 animated:animatedCopy];
    }
  }
}

- (void)removeLastSpecifierAnimated:(BOOL)animated
{
  specifiers = self->_specifiers;
  if (specifiers)
  {
    animatedCopy = animated;
    lastObject = [(NSArray *)specifiers lastObject];
    [(PSListController *)self removeSpecifier:lastObject animated:animatedCopy];
  }
}

- (void)_removeContiguousSpecifiers:(id)specifiers animated:(BOOL)animated
{
  animatedCopy = animated;
  v57 = *MEMORY[0x1E69E9840];
  specifiersCopy = specifiers;
  v7 = [specifiersCopy count];
  if (self->_specifiers)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    goto LABEL_52;
  }

  v54 = -1;
  v9 = [MEMORY[0x1E695DF70] arrayWithCapacity:v7];
  indexSet = [MEMORY[0x1E696AD50] indexSet];
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v11 = specifiersCopy;
  v12 = [v11 countByEnumeratingWithState:&v50 objects:v56 count:16];
  if (!v12)
  {

    v45 = 0;
    goto LABEL_29;
  }

  v13 = v12;
  v42 = v9;
  v43 = indexSet;
  v38 = animatedCopy;
  v40 = specifiersCopy;
  v14 = 0;
  v45 = 0;
  LOBYTE(v9) = 0;
  v15 = *v51;
  integerValue = -1;
  v17 = -1;
  while (2)
  {
    for (i = 0; i != v13; ++i)
    {
      v19 = v14;
      if (*v51 != v15)
      {
        objc_enumerationMutation(v11);
      }

      v14 = *(*(&v50 + 1) + 8 * i);

      v20 = [(NSArray *)self->_specifiers indexOfObject:v14];
      if (v20 == 0x7FFFFFFFFFFFFFFFLL)
      {
LABEL_27:

        specifiersCopy = v40;
        v9 = v42;
        indexSet = v43;
        goto LABEL_51;
      }

      v21 = v20;
      if (v17 == -1)
      {
        [(PSListController *)self getGroup:&v54 row:0 ofSpecifierAtIndex:v20];
        v22 = [(NSMutableArray *)self->_groups objectAtIndex:v54];
        integerValue = [v22 integerValue];

        v45 = v21;
        v17 = v21;
      }

      else if (v20 != v17)
      {
        goto LABEL_27;
      }

      if (v14[7])
      {
        if ((v9 & 1) == 0)
        {
          v23 = [MEMORY[0x1E696AC88] indexPathForRow:v17 + ~integerValue inSection:v54];
          [v42 insertObject:v23 atIndex:0];

          LODWORD(v9) = 0;
          goto LABEL_22;
        }
      }

      else
      {
        if (v45 != v17)
        {
          ++v54;
        }

        [v43 addIndex:?];
      }

      LODWORD(v9) = 1;
LABEL_22:
      ++v17;
    }

    v13 = [v11 countByEnumeratingWithState:&v50 objects:v56 count:16];
    if (v13)
    {
      continue;
    }

    break;
  }

  if (v9)
  {
    v24 = v54;
    animatedCopy = v38;
    indexSet = v43;
    if (v24 == [(NSMutableArray *)self->_groups count]- 1)
    {
      v25 = [(NSArray *)self->_specifiers count]- v45;
    }

    else
    {
      v36 = [(NSMutableArray *)self->_groups objectAtIndex:v54 + 1];
      v25 = [v36 integerValue] - v45;
    }

    specifiersCopy = v40;
    v9 = v42;
    goto LABEL_30;
  }

  specifiersCopy = v40;
  v9 = v42;
  animatedCopy = v38;
  indexSet = v43;
LABEL_29:
  v25 = [v11 count];
LABEL_30:
  if (animatedCopy)
  {
    v26 = 0;
  }

  else
  {
    v26 = 5;
  }

  if (!animatedCopy)
  {
    [MEMORY[0x1E69DD250] setAnimationsEnabled:0];
  }

  [(UITableView *)self->_table beginUpdates];
  v14 = [(NSArray *)self->_specifiers mutableCopy];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v37 = v25;
  v27 = [v14 subarrayWithRange:{v45, v25}];
  v28 = [v27 countByEnumeratingWithState:&v46 objects:v55 count:16];
  if (v28)
  {
    v29 = v28;
    v44 = indexSet;
    v39 = animatedCopy;
    v41 = specifiersCopy;
    v30 = 0;
    v31 = *v47;
    do
    {
      v32 = 0;
      v33 = v30;
      do
      {
        if (*v47 != v31)
        {
          objc_enumerationMutation(v27);
        }

        v30 = *(*(&v46 + 1) + 8 * v32);

        if (v30[7])
        {
          [v30 removePropertyForKey:@"cellObject"];
        }

        [(PSListController *)self _removeIdentifierForSpecifier:v30];
        ++v32;
        v33 = v30;
      }

      while (v29 != v32);
      v29 = [v27 countByEnumeratingWithState:&v46 objects:v55 count:16];
    }

    while (v29);

    specifiersCopy = v41;
    LOBYTE(animatedCopy) = v39;
    indexSet = v44;
  }

  [v14 removeObjectsInRange:{v45, v37}];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  objc_storeStrong(&self->_specifiers, v14);
  objc_sync_exit(selfCopy);

  [(PSListController *)selfCopy createGroupIndices];
  if ([indexSet count])
  {
    [(UITableView *)self->_table deleteSections:indexSet withRowAnimation:v26];
  }

  if ([v9 count])
  {
    [(UITableView *)self->_table deleteRowsAtIndexPaths:v9 withRowAnimation:v26];
  }

  [(UITableView *)self->_table endUpdates];
  if (!animatedCopy)
  {
    [MEMORY[0x1E69DD250] setAnimationsEnabled:1];
  }

LABEL_51:

LABEL_52:
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v35 = _PSLoggingFacility();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_FAULT))
    {
      [PSListController _removeContiguousSpecifiers:v35 animated:?];
    }
  }
}

- (void)replaceContiguousSpecifiers:(id)specifiers withSpecifiers:(id)withSpecifiers animated:(BOOL)animated
{
  specifiersCopy = specifiers;
  withSpecifiersCopy = withSpecifiers;
  v9 = [withSpecifiersCopy count];
  v10 = [specifiersCopy count];
  if (v9 && v10)
  {
    v11 = [specifiersCopy objectAtIndex:0];
    v12 = [(PSListController *)self indexOfSpecifier:v11];
    if (animated)
    {
      [(UITableView *)self->_table beginUpdates];
      [(PSListController *)self _removeContiguousSpecifiers:specifiersCopy animated:1];
      [(PSListController *)self _insertContiguousSpecifiers:withSpecifiersCopy atIndex:v12 animated:1];
      [(UITableView *)self->_table endUpdates];
    }

    else
    {
      [MEMORY[0x1E69DD250] setAnimationsEnabled:0];
      [(UITableView *)self->_table beginUpdates];
      [(PSListController *)self _removeContiguousSpecifiers:specifiersCopy animated:0];
      [(PSListController *)self _insertContiguousSpecifiers:withSpecifiersCopy atIndex:v12 animated:0];
      [(UITableView *)self->_table endUpdates];
      [MEMORY[0x1E69DD250] setAnimationsEnabled:1];
    }
  }
}

- (int64_t)_nextGroupInSpecifiersAfterIndex:(int64_t)index inArray:(id)array
{
  arrayCopy = array;
  v6 = index + 1;
  do
  {
    v7 = v6;
    if (v6 >= [arrayCopy count])
    {
      break;
    }

    v8 = [arrayCopy objectAtIndex:v7];
    v9 = v8[7];

    v6 = v7 + 1;
  }

  while (v9);

  return v7;
}

- (void)updateSpecifiers:(id)specifiers withSpecifiers:(id)withSpecifiers
{
  specifiersCopy = specifiers;
  withSpecifiersCopy = withSpecifiers;
  if ([specifiersCopy count])
  {
    v7 = [specifiersCopy objectAtIndex:0];
    if ([(NSArray *)self->_specifiers containsObject:v7])
    {
      -[PSListController updateSpecifiersInRange:withSpecifiers:](self, "updateSpecifiersInRange:withSpecifiers:", -[NSArray indexOfObject:](self->_specifiers, "indexOfObject:", v7), [specifiersCopy count], withSpecifiersCopy);
    }
  }
}

- (void)updateSpecifiersInRange:(_NSRange)range withSpecifiers:(id)specifiers
{
  length = range.length;
  location = range.location;
  specifiersCopy = specifiers;
  if ([specifiersCopy count])
  {
    if (length)
    {
      specifiers = self->_specifiers;
      if (specifiers)
      {
        if (location <= [(NSArray *)specifiers count]&& length + location <= [(NSArray *)self->_specifiers count])
        {
          v8 = [specifiersCopy objectAtIndex:0];
          v88 = -1;
          v89 = -1;
          location = [(PSListController *)self getGroup:&v88 row:&v89 ofSpecifierAtIndex:location];
          v10 = v88;
          v86 = -1;
          v87 = -1;
          if (length + location == [(NSArray *)self->_specifiers count])
          {
            v86 = [(NSMutableArray *)self->_groups count];
          }

          else if (location)
          {
            location = [(PSListController *)self getGroup:&v86 row:&v87 ofSpecifierAtIndex:length + location];
          }

          if (v8[7])
          {
            v12 = 0;
          }

          else
          {
            v12 = v89 == -1;
          }

          if (v12 && v87 == -1 && location)
          {
            v63 = location;
            v64 = length;
            v65 = v8;
            v15 = objc_alloc_init(MEMORY[0x1E696AD50]);
            v16 = objc_alloc_init(MEMORY[0x1E696AD50]);
            v68 = objc_alloc_init(MEMORY[0x1E696AD50]);
            v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
            v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
            v75 = [(PSListController *)self _nextGroupInSpecifiersAfterIndex:0 inArray:specifiersCopy];
            v67 = v16;
            v79 = v18;
            if (![specifiersCopy count])
            {
              goto LABEL_68;
            }

            v69 = 0;
            v66 = v15;
            v71 = v17;
            while (1)
            {
              v19 = v88;
              if (v88 >= v86)
              {
                goto LABEL_66;
              }

              v20 = v69;
              v21 = v10;
              do
              {
                v22 = self->_specifiers;
                v23 = [(NSMutableArray *)self->_groups objectAtIndex:v19, v63, v64];
                v24 = -[NSArray objectAtIndex:](v22, "objectAtIndex:", [v23 integerValue]);

                v25 = [specifiersCopy objectAtIndex:v20];
                v77 = v24;
                identifier = [v24 identifier];
                v76 = v25;
                identifier2 = [v25 identifier];
                v28 = [identifier isEqualToString:identifier2];

                v29 = v28;
                if ((v28 & 1) == 0)
                {
                  ++v19;
                  goto LABEL_36;
                }

                v73 = v28;
                for (i = v88; i < v19; ++i)
                {
                  [v16 addIndex:i];
                }

                v31 = [v77 propertyForKey:@"footerText"];
                v74 = [v76 propertyForKey:@"footerText"];
                name = [v77 name];
                name2 = [v76 name];
                v72 = v31;
                if ([name isEqualToString:name2] && (v31 != 0) == (v74 != 0))
                {
                  if (!v31 || !v74)
                  {

LABEL_43:
                    v35 = [(NSMutableArray *)self->_groups objectAtIndex:v19];
                    integerValue = [v35 integerValue];

                    if (v19 + 1 == [(NSMutableArray *)self->_groups count])
                    {
                      integerValue2 = [(NSArray *)self->_specifiers count];
                    }

                    else
                    {
                      v38 = [(NSMutableArray *)self->_groups objectAtIndex:v19 + 1];
                      integerValue2 = [v38 integerValue];
                    }

                    v39 = integerValue + 1;
                    if ((v69 + 1) < v75)
                    {
                      v40 = 0;
                      v82 = v69 + 1;
                      v70 = v21;
                      v78 = integerValue2;
                      do
                      {
                        if (v39 >= integerValue2)
                        {
                          goto LABEL_57;
                        }

                        v81 = v40;
                        v41 = v39;
                        do
                        {
                          v42 = integerValue2;
                          v43 = [specifiersCopy objectAtIndex:v82];
                          v44 = [(NSArray *)self->_specifiers objectAtIndex:v41];
                          identifier3 = [v43 identifier];
                          identifier4 = [v44 identifier];
                          selfCopy = self;
                          v48 = [identifier3 isEqualToString:identifier4];

                          v83 = v48;
                          if (v48)
                          {
                            for (; v39 < v41; ++v39)
                            {
                              v49 = MEMORY[0x1E696AC88];
                              v50 = [(NSMutableArray *)selfCopy->_groups objectAtIndex:v19];
                              v51 = [v49 indexPathForRow:~objc_msgSend(v50 inSection:{"integerValue") + v39, v19}];
                              [v79 addObject:v51];
                            }

                            ++v41;
                            ++v81;
                            v39 = v41;
                            self = selfCopy;
                            integerValue2 = v78;
                          }

                          else
                          {
                            ++v41;
                            self = selfCopy;
                            integerValue2 = v42;
                          }
                        }

                        while (!((v41 >= integerValue2) | v83 & 1));
                        v21 = v70;
                        v17 = v71;
                        v18 = v79;
                        v40 = v81;
                        if ((v83 & 1) == 0)
                        {
LABEL_57:
                          v52 = [MEMORY[0x1E696AC88] indexPathForRow:v40 inSection:v21];
                          [v17 addObject:v52];

                          ++v40;
                        }

                        ++v82;
                      }

                      while (v82 != v75);
                    }

                    v53 = integerValue2 <= v39;
                    v54 = integerValue2 - v39;
                    if (v53)
                    {
                      v16 = v67;
                    }

                    else
                    {
                      v55 = v39 - 1;
                      do
                      {
                        v56 = MEMORY[0x1E696AC88];
                        v57 = [(NSMutableArray *)self->_groups objectAtIndex:v19];
                        v58 = [v56 indexPathForRow:v55 - objc_msgSend(v57 inSection:{"integerValue"), v19}];
                        [v18 addObject:v58];

                        ++v55;
                        --v54;
                      }

                      while (v54);
                      v16 = v67;
                      v17 = v71;
                    }

                    ++v19;
                    goto LABEL_35;
                  }

                  v34 = [v31 isEqualToString:v74];

                  if (v34)
                  {
                    goto LABEL_43;
                  }
                }

                else
                {
                }

                [v68 addIndex:v19++];
LABEL_35:
                v88 = v19;
                ++v21;

                v20 = v69;
                v29 = v73;
LABEL_36:
              }

              while (!((v19 >= v86) | v29 & 1));
              v10 = v21;
              v15 = v66;
              if ((v29 & 1) == 0)
              {
LABEL_66:
                [v15 addIndex:{v10++, v63, v64}];
              }

              v69 = v75;
              v75 = [(PSListController *)self _nextGroupInSpecifiersAfterIndex:v75 inArray:specifiersCopy];
              if (v69 >= [specifiersCopy count])
              {
LABEL_68:
                for (j = v88; j < v86; ++j)
                {
                  [v16 addIndex:j];
                }

                v60 = [(NSArray *)self->_specifiers subarrayWithRange:v63, v64];
                v85[0] = MEMORY[0x1E69E9820];
                v85[1] = 3221225472;
                v85[2] = __59__PSListController_updateSpecifiersInRange_withSpecifiers___block_invoke;
                v85[3] = &unk_1E71DC7B0;
                v85[4] = self;
                [v60 enumerateObjectsUsingBlock:v85];

                v84[0] = MEMORY[0x1E69E9820];
                v84[1] = 3221225472;
                v84[2] = __59__PSListController_updateSpecifiersInRange_withSpecifiers___block_invoke_2;
                v84[3] = &unk_1E71DC7B0;
                v84[4] = self;
                [specifiersCopy enumerateObjectsUsingBlock:v84];
                v61 = [(NSArray *)self->_specifiers mutableCopy];
                [v61 replaceObjectsInRange:v63 withObjectsFromArray:{v64, specifiersCopy}];
                selfCopy2 = self;
                objc_sync_enter(selfCopy2);
                objc_storeStrong(&self->_specifiers, v61);
                objc_sync_exit(selfCopy2);

                [(PSListController *)selfCopy2 createGroupIndices];
                [(UITableView *)selfCopy2->_table beginUpdates];
                v8 = v65;
                if ([v68 count])
                {
                  [(UITableView *)selfCopy2->_table reloadSections:v68 withRowAnimation:0];
                }

                if ([v17 count])
                {
                  [(UITableView *)selfCopy2->_table insertRowsAtIndexPaths:v17 withRowAnimation:0];
                }

                if ([v15 count])
                {
                  [(UITableView *)selfCopy2->_table insertSections:v15 withRowAnimation:0];
                }

                if ([v79 count])
                {
                  [(UITableView *)selfCopy2->_table deleteRowsAtIndexPaths:v79 withRowAnimation:0];
                }

                if ([v67 count])
                {
                  [(UITableView *)selfCopy2->_table deleteSections:v67 withRowAnimation:0];
                }

                [(UITableView *)selfCopy2->_table endUpdates];

                break;
              }
            }
          }
        }
      }
    }
  }

  else
  {
    v11 = [(NSArray *)self->_specifiers subarrayWithRange:location, length];
    [(PSListController *)self removeContiguousSpecifiers:v11 animated:1];
  }
}

void __59__PSListController_updateSpecifiersInRange_withSpecifiers___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = v3;
  if (v3[7])
  {
    [v3 removePropertyForKey:@"cellObject"];
    v4 = v5;
  }

  [*(a1 + 32) _removeIdentifierForSpecifier:v4];
}

- (void)_unloadBundleControllers
{
  if (self->_bundlesLoaded)
  {
    v3 = [(NSMutableArray *)self->_bundleControllers count];
    if (v3)
    {
      v4 = v3;
      for (i = 0; i != v4; ++i)
      {
        v6 = [(NSMutableArray *)self->_bundleControllers objectAtIndex:i];
        [v6 unload];
      }
    }
  }
}

- (void)dealloc
{
  [(PSListController *)self dismissConfirmationViewAnimated:0];
  [(PSSpecifierDataSource *)self->_dataSource removeObserver:self];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  [(NSArray *)self->_specifiers na_each:&__block_literal_global_11];
  [(PSListController *)self _unloadBundleControllers];
  [(UITableView *)self->_table setDataSource:0];
  [(UITableView *)self->_table setDelegate:0];
  [(UITableView *)self->_table setDataSource:0];
  highlightRelayObserver = [(PSListController *)self highlightRelayObserver];
  [(PSListController *)self na_removeNotificationBlockObserver:highlightRelayObserver];

  [(PSListController *)self setHighlightRelayObserver:0];
  selectionRelayObserver = [(PSListController *)self selectionRelayObserver];
  [(PSListController *)self na_removeNotificationBlockObserver:selectionRelayObserver];

  [(PSListController *)self setSelectionRelayObserver:0];
  v6.receiver = self;
  v6.super_class = PSListController;
  [(PSListController *)&v6 dealloc];
}

void __27__PSListController_dealloc__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 removePropertyForKey:@"headerView"];
  [v2 removePropertyForKey:@"footerView"];
  [v2 removePropertyForKey:@"cellObject"];
}

- (void)didBecomeActive:(id)active
{
  if ([(PSListController *)self contentSizeDidChange])
  {
    [(PSListController *)self delayedContentSizeDidChange];

    [(PSListController *)self setContentSizeDidChange:0];
  }
}

- (void)contentSizeDidChange:(id)change
{
  if ([(PSListControllerNavigationCoordinator *)self->_navigationCoordinator listControllerIsOnTopOfNavigationStack:self searchTopMostViewControllerChildren:0])
  {

    [(PSListController *)self delayedContentSizeDidChange];
  }

  else
  {

    [(PSListController *)self setContentSizeDidChange:1];
  }
}

- (int64_t)tableViewStyle
{
  [(PSListController *)self _ensureAppearanceProviderAndNavigationCoordinator];
  appearanceProvider = self->_appearanceProvider;

  return [(PSListControllerAppearanceProvider *)appearanceProvider tableViewStyleForListController:self];
}

- (void)_updateSectionContentInsetWithAnimation:(BOOL)animation
{
  animationCopy = animation;
  [(PSListController *)self _ensureAppearanceProviderAndNavigationCoordinator];
  appearanceProvider = self->_appearanceProvider;
  _isRegularWidth = [(PSListController *)self _isRegularWidth];
  sectionContentInsetInitialized = self->_sectionContentInsetInitialized;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __60__PSListController__updateSectionContentInsetWithAnimation___block_invoke;
  v8[3] = &unk_1E71DBE20;
  v8[4] = self;
  [(PSListControllerAppearanceProvider *)appearanceProvider listController:self updateSectionContentInsetAnimated:animationCopy isRegularWidth:_isRegularWidth contentInsetInitialized:sectionContentInsetInitialized contentInsetInitializedApplicator:v8];
}

- (void)viewIsAppearing:(BOOL)appearing
{
  v51.receiver = self;
  v51.super_class = PSListController;
  [(PSViewController *)&v51 viewIsAppearing:appearing];
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  if (![currentDevice sf_isInternalInstall])
  {
    goto LABEL_20;
  }

  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v6 = [standardUserDefaults BOOLForKey:@"ClassNameForListControllersAndCellsOverlayEnabled"];

  if (!v6)
  {
    return;
  }

  v7 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v8 = PSPreferencesFrameworkBundle();
  v9 = [v7 isEqual:v8];

  v10 = [(PSListController *)self isMemberOfClass:objc_opt_class()];
  classNameLayer = [(PSListController *)self classNameLayer];

  if (!classNameLayer)
  {
    v12 = objc_alloc_init(_PSViewMarkerLayer);
    [(PSListController *)self setClassNameLayer:v12];

    view = [(PSListController *)self view];
    layer = [view layer];
    v15 = layer;
    if (layer)
    {
      [layer cornerRadii];
    }

    else
    {
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
    }

    classNameLayer2 = [(PSListController *)self classNameLayer];
    v46[0] = v47;
    v46[1] = v48;
    v46[2] = v49;
    v46[3] = v50;
    [classNameLayer2 setCustomCornerRadii:v46];

    classNameLayer3 = [(PSListController *)self classNameLayer];
    [classNameLayer3 setInheritsSuperLayerBounds:0];

    view2 = [(PSListController *)self view];
    [view2 bounds];
    view3 = [(PSListController *)self view];
    [view3 safeAreaInsets];
    view4 = [(PSListController *)self view];
    [view4 safeAreaInsets];
    view5 = [(PSListController *)self view];
    [view5 safeAreaInsets];
    view6 = [(PSListController *)self view];
    [view6 safeAreaInsets];
    UIRectInset();
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;

    classNameLayer4 = [(PSListController *)self classNameLayer];
    [classNameLayer4 setFrame:{v24, v26, v28, v30}];
  }

  classNameLayer5 = [(PSListController *)self classNameLayer];
  superlayer = [classNameLayer5 superlayer];

  if (!superlayer)
  {
    view7 = [(PSListController *)self view];
    layer2 = [view7 layer];
    classNameLayer6 = [(PSListController *)self classNameLayer];
    view8 = [(PSListController *)self view];
    layer3 = [view8 layer];
    sublayers = [layer3 sublayers];
    lastObject = [sublayers lastObject];
    [layer2 insertSublayer:classNameLayer6 above:lastObject];
  }

  v41 = objc_opt_class();
  v42 = NSStringFromClass(v41);
  classNameLayer7 = [(PSListController *)self classNameLayer];
  [classNameLayer7 setLabel:v42];

  if (!v9)
  {
    if ([(PSListController *)self subclassOverridesTableViewCellForRowAtIndexPath])
    {
      [MEMORY[0x1E69DC888] systemDarkRedColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] systemDarkGreenColor];
    }
    systemMintColor = ;
    goto LABEL_18;
  }

  if ((v10 & 1) == 0)
  {
    systemMintColor = [MEMORY[0x1E69DC888] systemMintColor];
LABEL_18:
    currentDevice = systemMintColor;
    goto LABEL_19;
  }

  currentDevice = 0;
LABEL_19:
  classNameLayer8 = [(PSListController *)self classNameLayer];
  [classNameLayer8 setAlternateColor:currentDevice];

LABEL_20:
}

- (void)viewDidUnload
{
  [(UITableView *)self->_table setDelegate:0];
  [(UITableView *)self->_table setDataSource:0];
  table = self->_table;
  self->_table = 0;

  [(PSListController *)self _unloadBundleControllers];
  v4.receiver = self;
  v4.super_class = PSListController;
  [(PSListController *)&v4 viewDidUnload];
}

- (id)_createGroupIndices:(id)indices
{
  indicesCopy = indices;
  v4 = [indicesCopy count];
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:v4];
  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      v7 = [indicesCopy objectAtIndex:i];
      if (!v7[7])
      {
        v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:i];
        [v5 addObject:v8];
      }
    }
  }

  return v5;
}

- (void)loseFocus
{
  indexPathForSelectedRow = [(UITableView *)self->_table indexPathForSelectedRow];
  [(UITableView *)self->_table endEditing:0];
  v3 = indexPathForSelectedRow;
  if (indexPathForSelectedRow)
  {
    [(UITableView *)self->_table deselectRowAtIndexPath:indexPathForSelectedRow animated:0];
    v3 = indexPathForSelectedRow;
  }
}

- (void)reloadSpecifiers
{
  v34 = *MEMORY[0x1E69E9840];
  obj = objc_opt_class();
  objc_sync_enter(obj);
  v3 = PKLogForCategory(6);
  v4 = os_signpost_id_make_with_pointer(v3, "PSListController.reloadSpecifiers");

  v5 = PKLogForCategory(6);
  v6 = v5;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 138543618;
    selfCopy = self;
    v32 = 2082;
    v33 = "[PSListController reloadSpecifiers]";
    _os_signpost_emit_with_name_impl(&dword_18B008000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "PSListController.reloadSpecifiers", "%{public}@: %{public}s", buf, 0x16u);
  }

  indexPathForSelectedRow = [(UITableView *)self->_table indexPathForSelectedRow];
  if (indexPathForSelectedRow)
  {
    v8 = [(PSListController *)self specifierAtIndex:[(PSListController *)self indexForIndexPath:indexPathForSelectedRow]];
    identifier = [v8 identifier];
  }

  else
  {
    identifier = 0;
  }

  selfCopy2 = self;
  objc_sync_enter(selfCopy2);
  specifiers = selfCopy2->_specifiers;
  selfCopy2->_specifiers = 0;

  specifiersByID = selfCopy2->_specifiersByID;
  selfCopy2->_specifiersByID = 0;

  groups = selfCopy2->_groups;
  selfCopy2->_groups = 0;

  objc_sync_exit(selfCopy2);
  specifiers = [(PSListController *)selfCopy2 specifiers];
  [(PSListController *)selfCopy2 prepareSpecifiersMetadata];
  [(PSListController *)selfCopy2 reload];
  WeakRetained = objc_loadWeakRetained(&selfCopy2->super._rootController);
  viewControllers = [WeakRetained viewControllers];

  v17 = [viewControllers indexOfObject:selfCopy2];
  if ([viewControllers count] > (v17 + 1))
  {
    v18 = [viewControllers objectAtIndex:?];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      specifier = [v18 specifier];
      identifier2 = [specifier identifier];
      v21 = [(PSListController *)selfCopy2 specifierForID:identifier2];

      if (objc_opt_respondsToSelector())
      {
        specifier2 = [v18 specifier];
        [v18 migrateSpecifierMetadataFrom:specifier2 to:v21];
      }

      [v18 setSpecifier:v21];
    }
  }

  if (identifier)
  {
    v23 = [(PSListController *)selfCopy2 specifierForID:identifier];
    if (v23)
    {
      table = self->_table;
      v25 = [(PSListController *)selfCopy2 indexPathForIndex:[(PSListController *)selfCopy2 indexOfSpecifier:v23]];
      [(UITableView *)table selectRowAtIndexPath:v25 animated:0 scrollPosition:0];
    }
  }

  [(PSListController *)selfCopy2 setForceSynchronousIconLoadForCreatedCells:1];
  visibleCells = [(UITableView *)self->_table visibleCells];
  [(PSListController *)selfCopy2 setForceSynchronousIconLoadForCreatedCells:0];
  v27 = PKLogForCategory(6);
  v28 = v27;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v27))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_18B008000, v28, OS_SIGNPOST_INTERVAL_END, v4, "PSListController.reloadSpecifiers", &unk_18B1164E9, buf, 2u);
  }

  objc_sync_exit(obj);
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  groups = self->_groups;
  if (!groups)
  {
    [(PSListController *)self createGroupIndices];
    groups = self->_groups;
  }

  return [(NSMutableArray *)groups count];
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  if ([(NSMutableArray *)self->_groups count]- 1 == section)
  {
    v6 = [(NSArray *)self->_specifiers count];
    v7 = [(NSMutableArray *)self->_groups objectAtIndex:section];
    v8 = v6 + ~[v7 integerValue];
  }

  else
  {
    v7 = [(NSMutableArray *)self->_groups objectAtIndex:section + 1];
    integerValue = [v7 integerValue];
    v10 = [(NSMutableArray *)self->_groups objectAtIndex:section];
    v8 = integerValue + ~[v10 integerValue];
  }

  return v8;
}

- (id)cachedCellForSpecifier:(id)specifier
{
  specifierCopy = specifier;
  table = [(PSListController *)self table];
  v6 = [(PSListController *)self indexPathForSpecifier:specifierCopy];

  v7 = [table cellForRowAtIndexPath:v6];

  return v7;
}

- (id)cachedCellForSpecifierID:(id)d
{
  v4 = [(PSListController *)self specifierForID:d];
  v5 = [(PSListController *)self cachedCellForSpecifier:v4];

  return v5;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [(PSListController *)self indexForIndexPath:pathCopy];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v10 = [(NSArray *)selfCopy->_specifiers objectAtIndex:v8];
  objc_sync_exit(selfCopy);

  v11 = [PSTableCell cellClassForSpecifier:v10];
  if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    isFromPreferencesFramework = [(objc_class *)v11 isFromPreferencesFramework];
    alternativeCellClass = [(objc_class *)v11 alternativeCellClass];
    if (alternativeCellClass)
    {
      v11 = alternativeCellClass;
      if (isFromPreferencesFramework)
      {
LABEL_5:
        cellReuseIdentifier = [(objc_class *)v11 cellReuseIdentifier];
        goto LABEL_10;
      }
    }

    else
    {
      v11 = [PSTableCell cellClassForSpecifier:v10];
      if (isFromPreferencesFramework)
      {
        goto LABEL_5;
      }
    }
  }

  v15 = objc_opt_class();
  if (PSObjc_classIsSubclassOfClass(v11, v15))
  {
    cellReuseIdentifier2 = [(objc_class *)v11 cellReuseIdentifier];
    v17 = [viewCopy dequeueReusableCellWithIdentifier:cellReuseIdentifier2];

    if (v17)
    {
      goto LABEL_12;
    }
  }

  cellReuseIdentifier = [PSTableCell reuseIdentifierForSpecifier:v10];
LABEL_10:
  v18 = cellReuseIdentifier;
  v17 = [viewCopy dequeueReusableCellWithIdentifier:cellReuseIdentifier];

  if (v17 || (-[PSListControllerAppearanceProvider cellForSpecifier:inController:](selfCopy->_appearanceProvider, "cellForSpecifier:inController:", v10, selfCopy), v17 = objc_claimAutoreleasedReturnValue(), [v17 _accessibilitySetInterfaceStyleIntent:{objc_msgSend(viewCopy, "_accessibilityInterfaceStyleIntent")}], v17))
  {
LABEL_12:
    [v10 setObject:v17 forKeyedSubscript:@"cellObject"];
    goto LABEL_13;
  }

  [v10 removePropertyForKey:@"cellObject"];
LABEL_13:
  objc_opt_class();
  v19 = v17;
  if (objc_opt_isKindOfClass())
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  v21 = v20;

  if (v21)
  {
    [v21 setSpecifier:v10];
    v22 = [(PSListController *)selfCopy getGroupSpecifierForSpecifier:v10];
    if ([v22 isRadioGroup])
    {
      objc_opt_class();
      v23 = [v22 objectForKeyedSubscript:@"radioGroupCheckedSpecifier"];
      if (objc_opt_isKindOfClass())
      {
        v24 = v23;
      }

      else
      {
        v24 = 0;
      }

      v25 = v24;

      [v21 setChecked:{objc_msgSend(v25, "isEqualToSpecifier:", v10)}];
    }

    [v21 refreshCellContentsWithSpecifier:v10];
    if (selfCopy->_forceSynchronousIconLoadForCreatedCells)
    {
      [v21 forceSynchronousIconLoadOnNextIconLoad];
    }
  }

  return v19;
}

- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path
{
  v4 = [(PSListController *)self specifierAtIndex:[(PSListController *)self indexForIndexPath:path]];
  properties = [v4 properties];
  v6 = [properties objectForKey:@"enabled"];

  v7 = !v6 || [v6 BOOLValue];
  return v7;
}

- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path
{
  v5 = [(PSListController *)self indexForIndexPath:path];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v7 = [(NSArray *)self->_specifiers objectAtIndex:v5];
  v6 = [v7 cellType] != 13;

  return v6;
}

- (double)tableView:(id)view estimatedHeightForRowAtIndexPath:(id)path
{
  pathCopy = path;
  [(PSListController *)self _ensureAppearanceProviderAndNavigationCoordinator];
  [(PSListControllerAppearanceProvider *)self->_appearanceProvider estimatedHeightOfRowForCellWithIndexPath:pathCopy inController:self];
  v7 = v6;

  return v7;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  specifiers = self->_specifiers;
  v5 = [(NSMutableArray *)self->_groups objectAtIndex:section];
  v6 = -[NSArray objectAtIndex:](specifiers, "objectAtIndex:", [v5 integerValue]);

  name = [v6 name];
  if ([name length])
  {
    v8 = [v6 propertyForKey:@"headerCellClass"];
    if (v8)
    {
      v9 = 0;
    }

    else
    {
      v9 = name;
    }

    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)tableView:(id)view detailTextForHeaderInSection:(int64_t)section
{
  if (-[NSMutableArray count](self->_groups, "count", view) <= section || (-[NSMutableArray objectAtIndex:](self->_groups, "objectAtIndex:", section), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 integerValue], v8 = -[NSArray count](self->_specifiers, "count"), v6, v7 >= v8))
  {
    v13 = 0;
  }

  else
  {
    specifiers = self->_specifiers;
    v10 = [(NSMutableArray *)self->_groups objectAtIndex:section];
    v11 = -[NSArray objectAtIndex:](specifiers, "objectAtIndex:", [v10 integerValue]);

    v12 = [v11 propertyForKey:@"headerDetailText"];
    if ([v12 length])
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (id)tableView:(id)view titleForFooterInSection:(int64_t)section
{
  specifiers = self->_specifiers;
  v5 = [(NSMutableArray *)self->_groups objectAtIndex:section];
  v6 = -[NSArray objectAtIndex:](specifiers, "objectAtIndex:", [v5 integerValue]);

  v7 = [v6 propertyForKey:@"footerText"];
  if ([v7 length] && (objc_msgSend(v6, "propertyForKey:", @"footerCellClass"), v8 = objc_claimAutoreleasedReturnValue(), v8, !v8))
  {
    v9 = v7;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (int64_t)tableView:(id)view titleAlignmentForHeaderInSection:(int64_t)section
{
  specifiers = self->_specifiers;
  v5 = [(NSMutableArray *)self->_groups objectAtIndex:section];
  v6 = -[NSArray objectAtIndex:](specifiers, "objectAtIndex:", [v5 integerValue]);

  v7 = [v6 propertyForKey:@"alignment"];
  if (v7 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    integerValue = [v7 integerValue];
  }

  else
  {
    integerValue = 4;
  }

  return integerValue;
}

- (int64_t)tableView:(id)view titleAlignmentForFooterInSection:(int64_t)section
{
  specifiers = self->_specifiers;
  v5 = [(NSMutableArray *)self->_groups objectAtIndex:section];
  v6 = -[NSArray objectAtIndex:](specifiers, "objectAtIndex:", [v5 integerValue]);

  v7 = [v6 propertyForKey:@"footerAlignment"];
  if (v7 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    integerValue = [v7 integerValue];
  }

  else
  {
    integerValue = 4;
  }

  return integerValue;
}

- (id)_customViewForSpecifier:(id)specifier class:(Class)class isHeader:(BOOL)header
{
  headerCopy = header;
  specifierCopy = specifier;
  v9 = specifierCopy;
  v10 = PSHeaderViewKey;
  if (!headerCopy)
  {
    v10 = PSFooterViewKey;
  }

  v11 = *v10;
  v12 = [specifierCopy propertyForKey:*v10];
  if (!v12)
  {
    v12 = [[class alloc] initWithSpecifier:v9];
    [v9 setProperty:v12 forKey:v11];
  }

  [v12 _accessibilitySetInterfaceStyleIntent:{-[UITableView _accessibilityInterfaceStyleIntent](self->_table, "_accessibilityInterfaceStyleIntent")}];
  [v12 setAlpha:1.0];

  return v12;
}

- (double)_tableView:(id)view heightForCustomInSection:(int64_t)section isHeader:(BOOL)header
{
  headerCopy = header;
  specifiers = self->_specifiers;
  v8 = [(NSMutableArray *)self->_groups objectAtIndex:section];
  v9 = -[NSArray objectAtIndex:](specifiers, "objectAtIndex:", [v8 integerValue]);

  v10 = PSHeaderCellClassGroupKey;
  if (!headerCopy)
  {
    v10 = PSFooterCellClassGroupKey;
  }

  v11 = [v9 propertyForKey:*v10];
  v12 = NSClassFromString(v11);
  if (!v12)
  {
    goto LABEL_15;
  }

  v13 = [(PSListController *)self _customViewForSpecifier:v9 class:v12 isHeader:headerCopy];
  [(UITableView *)self->_table _sectionContentInset];
  v15 = v14;
  v17 = v16;
  [(UITableView *)self->_table bounds];
  if (v18 - v15 - v17 >= 0.0)
  {
    v19 = v18 - v15 - v17;
  }

  else
  {
    v19 = 0.0;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    if (objc_opt_respondsToSelector())
    {
      [v13 preferredHeightForWidth:v19];
      if (v22 >= *MEMORY[0x1E69DE3D0])
      {
        v21 = v22;
      }

      else
      {
        v21 = *MEMORY[0x1E69DE3D0];
      }

      goto LABEL_13;
    }

LABEL_15:
    v21 = *MEMORY[0x1E69DE3D0];
    goto LABEL_16;
  }

  [v13 preferredHeightForWidth:self->_table inTableView:v19];
  v21 = v20;
LABEL_13:

LABEL_16:
  return v21;
}

- (id)_tableView:(id)view viewForCustomInSection:(int64_t)section isHeader:(BOOL)header
{
  headerCopy = header;
  if ([(NSArray *)self->_specifiers count])
  {
    specifiers = self->_specifiers;
    v9 = [(NSMutableArray *)self->_groups objectAtIndex:section];
    v10 = -[NSArray objectAtIndex:](specifiers, "objectAtIndex:", [v9 integerValue]);

    v11 = PSHeaderCellClassGroupKey;
    if (!headerCopy)
    {
      v11 = PSFooterCellClassGroupKey;
    }

    v12 = [v10 propertyForKey:*v11];
    v13 = NSClassFromString(v12);
    if (v13)
    {
      v14 = v13;
      v15 = [(PSListController *)self _customViewForSpecifier:v10 class:v13 isHeader:headerCopy];
      currentDevice = [MEMORY[0x1E69DC938] currentDevice];
      if (([currentDevice sf_isInternalInstall] & 1) == 0)
      {
LABEL_21:

        goto LABEL_22;
      }

      standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
      v18 = [standardUserDefaults BOOLForKey:@"ClassNameForListControllersAndCellsOverlayEnabled"];

      if (v18)
      {
        v19 = [MEMORY[0x1E696AAE8] bundleForClass:v14];
        v20 = PSPreferencesFrameworkBundle();
        v21 = [v19 isEqual:v20];

        v22 = objc_getAssociatedObject(v15, &__PSViewMarkerLayerKey);
        currentDevice = v22;
        if (v22)
        {
          superlayer = [v22 superlayer];

          if (!superlayer)
          {
            layer = [v15 layer];
            [layer addSublayer:currentDevice];
          }

          [v15 bounds];
          [currentDevice setFrame:?];
        }

        else
        {
          v25 = NSStringFromClass(v14);
          v26 = objc_alloc_init(_PSViewMarkerLayer);
          layer2 = [v15 layer];
          v28 = layer2;
          if (layer2)
          {
            [layer2 cornerRadii];
          }

          else
          {
            v35 = 0u;
            v36 = 0u;
            v33 = 0u;
            v34 = 0u;
          }

          v32[0] = v33;
          v32[1] = v34;
          v32[2] = v35;
          v32[3] = v36;
          [(_PSViewMarkerLayer *)v26 setCustomCornerRadii:v32];

          objc_setAssociatedObject(v15, &__PSViewMarkerLayerKey, v26, 1);
          layer3 = [v15 layer];
          [layer3 addSublayer:v26];

          [(_PSViewMarkerLayer *)v26 setLabel:v25 subLabel:0 withAlignment:2];
          systemDarkRedColor = 0;
          if ((v21 & 1) == 0)
          {
            systemDarkRedColor = [MEMORY[0x1E69DC888] systemDarkRedColor];
          }

          [(_PSViewMarkerLayer *)v26 setAlternateColor:systemDarkRedColor];
          [v15 bounds];
          [(_PSViewMarkerLayer *)v26 setFrame:?];
        }

        goto LABEL_21;
      }
    }

    else
    {
      v15 = 0;
    }

LABEL_22:

    goto LABEL_23;
  }

  v10 = _PSLoggingFacility();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v32[0]) = 0;
    _os_log_impl(&dword_18B008000, v10, OS_LOG_TYPE_DEFAULT, "viewForCustomInSection called while _specifiers is nil or empty", v32, 2u);
  }

  v15 = 0;
LABEL_23:

  return v15;
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v23.receiver = self;
  v23.super_class = PSListController;
  [(PSViewController *)&v23 viewWillAppear:?];
  if ([MEMORY[0x1E69DC668] shouldMakeUIForDefaultPNG])
  {
    table = [(PSListController *)self table];
    [table setShowsVerticalScrollIndicator:0];
  }

  v6 = [(PSListControllerNavigationCoordinator *)self->_navigationCoordinator listControllerShouldNotDeselectAfterAppearing:self];
  indexPathForSelectedRow = [(UITableView *)self->_table indexPathForSelectedRow];
  if (indexPathForSelectedRow)
  {
    if (v6)
    {
      table = self->_table;
      indexPathForSelectedRow2 = [(UITableView *)table indexPathForSelectedRow];
      [(UITableView *)table scrollToRowAtIndexPath:indexPathForSelectedRow2 atScrollPosition:1 animated:1];
    }

    else if (appearCopy)
    {
      transitionCoordinator = [(PSListController *)self transitionCoordinator];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __35__PSListController_viewWillAppear___block_invoke;
      v21[3] = &unk_1E71DC7F8;
      v21[4] = self;
      v22 = indexPathForSelectedRow;
      v15 = MEMORY[0x1E69E9820];
      v16 = 3221225472;
      v17 = __35__PSListController_viewWillAppear___block_invoke_2;
      v18 = &unk_1E71DC7F8;
      selfCopy = self;
      v20 = v22;
      [transitionCoordinator animateAlongsideTransition:v21 completion:&v15];
    }

    else
    {
      [(UITableView *)self->_table deselectRowAtIndexPath:indexPathForSelectedRow animated:0];
    }
  }

  v11 = [PSListController appearance:v15];
  usesDarkTheme = [v11 usesDarkTheme];

  if (usesDarkTheme)
  {
    table2 = [(PSListController *)self table];
    [table2 setIndicatorStyle:2];

    table3 = [(PSListController *)self table];
    [table3 _accessibilitySetInterfaceStyleIntent:2];
  }

  self->_hasAppeared = 1;
  if ([(PSListController *)self contentSizeDidChange])
  {
    [(PSListController *)self delayedContentSizeDidChange];
    [(PSListController *)self setContentSizeDidChange:0];
  }
}

uint64_t __35__PSListController_viewWillAppear___block_invoke_2(uint64_t a1, void *a2)
{
  result = [a2 isCancelled];
  if (result)
  {
    v4 = *(a1 + 40);
    v5 = *(*(a1 + 32) + 1072);

    return [v5 selectRowAtIndexPath:v4 animated:0 scrollPosition:0];
  }

  return result;
}

- (void)_scrollToSpecifierWithID:(id)d animated:(BOOL)animated
{
  v6 = [(PSListController *)self specifierForID:d];
  if (v6)
  {
    v7 = [(NSArray *)self->_specifiers indexOfObject:v6];
    v8 = [(PSListController *)self indexPathForIndex:v7];
    if (v8)
    {
      v9 = v8;
      if ([v8 row] == 0x7FFFFFFFFFFFFFFFLL && !-[PSListController _isEmptyGroup:](self, "_isEmptyGroup:", v7))
      {
        v10 = [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:{objc_msgSend(v9, "section")}];

        v9 = v10;
      }

      v11 = dispatch_time(0, 0);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __54__PSListController__scrollToSpecifierWithID_animated___block_invoke;
      block[3] = &unk_1E71DC820;
      v14 = v9;
      selfCopy = self;
      animatedCopy = animated;
      v12 = v9;
      dispatch_after(v11, MEMORY[0x1E69E96A0], block);
    }
  }
}

void __54__PSListController__scrollToSpecifierWithID_animated___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) section];
  if (v2 >= [*(*(a1 + 40) + 1072) numberOfSections])
  {
    v7 = _PSLoggingFacility();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
LABEL_9:

      return;
    }

    v8 = [*(a1 + 32) section];
    v9 = [*(*(a1 + 40) + 1072) numberOfSections];
    v16 = 134218240;
    v17 = v8;
    v18 = 2048;
    v19 = v9;
    v10 = "Scroll target index path section %ld is out of bounds. Current number of sections is %ld.";
    v11 = v7;
    v12 = 22;
LABEL_11:
    _os_log_error_impl(&dword_18B008000, v11, OS_LOG_TYPE_ERROR, v10, &v16, v12);
    goto LABEL_9;
  }

  v3 = [*(a1 + 32) row];
  if (v3 >= [*(*(a1 + 40) + 1072) numberOfRowsInSection:{objc_msgSend(*(a1 + 32), "section")}])
  {
    v7 = _PSLoggingFacility();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    v13 = [*(a1 + 32) row];
    v14 = [*(*(a1 + 40) + 1072) numberOfRowsInSection:{objc_msgSend(*(a1 + 32), "section")}];
    v15 = [*(a1 + 32) section];
    v16 = 134218496;
    v17 = v13;
    v18 = 2048;
    v19 = v14;
    v20 = 2048;
    v21 = v15;
    v10 = "Scroll target index path row %ld is out of bounds. Current number of row is %ld for section %ld.";
    v11 = v7;
    v12 = 32;
    goto LABEL_11;
  }

  v4 = *(a1 + 32);
  v5 = *(*(a1 + 40) + 1072);
  v6 = *(a1 + 48);

  [v5 scrollToRowAtIndexPath:v4 atScrollPosition:1 animated:v6];
}

- (BOOL)_isEmptyGroup:(unint64_t)group
{
  v4 = group + 1;
  if (group + 1 >= [(NSArray *)self->_specifiers count])
  {
    return 1;
  }

  v5 = [(NSArray *)self->_specifiers objectAtIndexedSubscript:v4];
  v6 = [v5 cellType] == 0;

  return v6;
}

- (id)findFirstVisibleResponder
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  visibleCells = [(UITableView *)self->_table visibleCells];
  v3 = [visibleCells countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = 0;
    v5 = *v10;
    while (2)
    {
      v6 = 0;
      v7 = v4;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(visibleCells);
        }

        v4 = *(*(&v9 + 1) + 8 * v6);

        if ([v4 canBecomeFirstResponder])
        {
          v3 = v4;
          goto LABEL_11;
        }

        v6 = v6 + 1;
        v7 = v4;
      }

      while (v3 != v6);
      v3 = [visibleCells countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (void)viewDidAppear:(BOOL)appear
{
  v37.receiver = self;
  v37.super_class = PSListController;
  [(PSViewController *)&v37 viewDidAppear:appear];
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  v5 = [mEMORY[0x1E69DC668] isRunningTest:@"EnterMMCPane"];

  mEMORY[0x1E69DC668]2 = [MEMORY[0x1E69DC668] sharedApplication];
  mEMORY[0x1E69DC668]4 = mEMORY[0x1E69DC668]2;
  if (v5)
  {
    v8 = @"EnterMMCPane";
LABEL_5:
    [mEMORY[0x1E69DC668]4 finishedTest:v8 extraResults:0];
LABEL_6:

    goto LABEL_7;
  }

  v9 = [mEMORY[0x1E69DC668]2 isRunningTest:@"EnterGeneralPane"];

  mEMORY[0x1E69DC668]3 = [MEMORY[0x1E69DC668] sharedApplication];
  mEMORY[0x1E69DC668]4 = mEMORY[0x1E69DC668]3;
  if (v9)
  {
    v8 = @"EnterGeneralPane";
    goto LABEL_5;
  }

  v36 = [mEMORY[0x1E69DC668]3 isRunningTest:@"EnteriCloudPane"];

  if (v36)
  {
    mEMORY[0x1E69DC668]4 = [MEMORY[0x1E69DC668] sharedApplication];
    [mEMORY[0x1E69DC668]4 finishedTest:@"EnteriCloudPane"];
    goto LABEL_6;
  }

LABEL_7:
  if (self->_verticalContentOffset == 0.0)
  {
    offsetItemName = self->_offsetItemName;
    if (!offsetItemName)
    {
      goto LABEL_18;
    }

    [(PSListController *)self _scrollToSpecifierWithID:offsetItemName animated:0];
    table = self->_offsetItemName;
    self->_offsetItemName = 0;
  }

  else
  {
    table = [(PSListController *)self table];
    [table contentSize];
    v13 = v12;
    [table contentInset];
    v15 = v13 + v14;
    [table contentInset];
    v17 = v15 + v16;
    [table frame];
    v19 = v17 - v18;
    verticalContentOffset = self->_verticalContentOffset;
    if (v17 - v18 > 0.0 && v19 < verticalContentOffset)
    {
      verticalContentOffset = v19;
      self->_verticalContentOffset = verticalContentOffset;
    }

    [table setContentOffset:{0.0, verticalContentOffset}];
    self->_verticalContentOffset = 0.0;
  }

LABEL_18:
  if ([(PSListController *)self shouldSelectResponderOnAppearance])
  {
    findFirstVisibleResponder = [(PSListController *)self findFirstVisibleResponder];
    [findFirstVisibleResponder becomeFirstResponder];
  }

  self->_showingSetupController = 0;
  [(UITableView *)self->_table flashScrollIndicators];
  self->_isVisible = 1;
  highlightItemName = self->_highlightItemName;
  if (highlightItemName)
  {
    [(PSListController *)self _performHighlightForSpecifierWithID:highlightItemName tryAgainIfFailed:1];
    v25 = self->_highlightItemName;
    self->_highlightItemName = 0;
  }

  cellHighlightingSelectionInvocationRelay = [(PSListController *)self cellHighlightingSelectionInvocationRelay];
  specifierIdentifierToScrollAndHighlight = [cellHighlightingSelectionInvocationRelay specifierIdentifierToScrollAndHighlight];
  v28 = [specifierIdentifierToScrollAndHighlight length];

  if (v28)
  {
    cellHighlightingSelectionInvocationRelay2 = [(PSListController *)self cellHighlightingSelectionInvocationRelay];
    specifierIdentifierToScrollAndHighlight2 = [cellHighlightingSelectionInvocationRelay2 specifierIdentifierToScrollAndHighlight];
    [(PSListController *)self performScrollAndHighlightIfOnScreenToSpecifierIdentifier:specifierIdentifierToScrollAndHighlight2];
  }

  cellHighlightingSelectionInvocationRelay3 = [(PSListController *)self cellHighlightingSelectionInvocationRelay];
  specifierIdentifierToScrollAndSelect = [cellHighlightingSelectionInvocationRelay3 specifierIdentifierToScrollAndSelect];
  v33 = [specifierIdentifierToScrollAndSelect length];

  if (v33)
  {
    cellHighlightingSelectionInvocationRelay4 = [(PSListController *)self cellHighlightingSelectionInvocationRelay];
    specifierIdentifierToScrollAndSelect2 = [cellHighlightingSelectionInvocationRelay4 specifierIdentifierToScrollAndSelect];
    [(PSListController *)self performScrollAndInvokeSelectionIfOnScreenToSpecifierIdentifier:specifierIdentifierToScrollAndSelect2];
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  if ([(PSListController *)self isMovingFromParentViewController])
  {
    [(PSListController *)self dismissConfirmationViewAnimated:disappearCopy];
  }

  v5.receiver = self;
  v5.super_class = PSListController;
  [(PSViewController *)&v5 viewWillDisappear:disappearCopy];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = PSListController;
  [(PSViewController *)&v4 viewDidDisappear:disappear];
  self->_isVisible = 0;
}

- (void)formSheetViewWillDisappear
{
  v7.receiver = self;
  v7.super_class = PSListController;
  [(PSViewController *)&v7 formSheetViewWillDisappear];
  self->_showingSetupController = 0;
  navigationCoordinator = self->_navigationCoordinator;
  WeakRetained = objc_loadWeakRetained(&self->super._rootController);
  LODWORD(navigationCoordinator) = [(PSListControllerNavigationCoordinator *)navigationCoordinator listControllerShouldDeselectAfterFormSheetDisappearance:self givenRootController:WeakRetained];

  if (navigationCoordinator)
  {
    table = self->_table;
    indexPathForSelectedRow = [(UITableView *)table indexPathForSelectedRow];
    [(UITableView *)table deselectRowAtIndexPath:indexPathForSelectedRow animated:1];
  }
}

- (void)popupViewWillDisappear
{
  v3.receiver = self;
  v3.super_class = PSListController;
  [(PSViewController *)&v3 popupViewWillDisappear];
  self->_showingSetupController = 0;
}

- (void)returnPressedAtEnd
{
  navigationItem = [(PSListController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  isEnabled = [rightBarButtonItem isEnabled];

  if (isEnabled)
  {
    rightBarButtonItem2 = [navigationItem rightBarButtonItem];
    [rightBarButtonItem2 action];
    rightBarButtonItem3 = [navigationItem rightBarButtonItem];
    target = [rightBarButtonItem3 target];
    rightBarButtonItem4 = [navigationItem rightBarButtonItem];
    v8 = SFPerformSelector();
  }
}

- (void)_returnKeyPressed:(id)pressed
{
  if ([(UITableView *)self->_table _isAncestorOfFirstResponder])
  {
    activeInstance = [MEMORY[0x1E69DCBE0] activeInstance];
    delegate = [activeInstance delegate];

    NSClassFromString(&cfstr_Uifieldeditor.isa);
    if (objc_opt_isKindOfClass() & 1) != 0 || (NSClassFromString(&cfstr_Uitextfield.isa), (objc_opt_isKindOfClass()))
    {
      _nextKeyResponder = [delegate _nextKeyResponder];
      if (_nextKeyResponder)
      {
        v6 = _nextKeyResponder == delegate;
      }

      else
      {
        v6 = 1;
      }

      if (!v6 && TopToBottomLeftToRightViewCompare(delegate, _nextKeyResponder) == -1)
      {
        [_nextKeyResponder becomeFirstResponder];
      }

      else
      {
        [(PSListController *)self returnPressedAtEnd];
      }
    }
  }
}

- (BOOL)performActionForSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v5 = specifierCopy;
  if (specifierCopy)
  {
    [specifierCopy performLegacyAction];
    v6 = 1;
  }

  else
  {
    Name = sel_getName(a2);
    NSLog(&cfstr_SSpecifierIsNi.isa, Name);
    v6 = 0;
  }

  return v6;
}

- (BOOL)performLoadActionForSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v5 = specifierCopy;
  if (specifierCopy)
  {
    if ([specifierCopy controllerLoadAction])
    {
      [v5 performControllerLoadAction];
    }

    else if (!CFPreferencesGetAppBooleanValue(@"kDontUseOldAction", @"com.apple.Preferences", 0))
    {
      [v5 performLegacyAction];
    }

    v7 = 1;
  }

  else
  {
    Name = sel_getName(a2);
    NSLog(&cfstr_SSpecifierIsNi.isa, Name);
    v7 = 0;
  }

  return v7;
}

- (BOOL)performButtonActionForSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v5 = specifierCopy;
  if (specifierCopy)
  {
    if ([specifierCopy buttonAction])
    {
      [v5 performButtonAction];
    }

    else if (!CFPreferencesGetAppBooleanValue(@"kDontUseOldAction", @"com.apple.Preferences", 0))
    {
      [v5 performLegacyAction];
    }

    v7 = 1;
  }

  else
  {
    Name = sel_getName(a2);
    NSLog(&cfstr_SSpecifierIsNi.isa, Name);
    v7 = 0;
  }

  return v7;
}

- (BOOL)performConfirmationActionForSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v5 = specifierCopy;
  if (specifierCopy)
  {
    if ([specifierCopy confirmationAction])
    {
      [v5 performConfirmationAction];
    }

    else if ([v5 buttonAction] && objc_msgSend(v5, "cellType") == 13)
    {
      [v5 performButtonAction];
    }

    else if (!CFPreferencesGetAppBooleanValue(@"kDontUseOldAction", @"com.apple.Preferences", 0))
    {
      [v5 performLegacyAction];
    }

    v7 = 1;
  }

  else
  {
    Name = sel_getName(a2);
    NSLog(&cfstr_SSpecifierIsNi.isa, Name);
    v7 = 0;
  }

  return v7;
}

- (BOOL)performConfirmationAlternateActionForSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v5 = specifierCopy;
  if (specifierCopy)
  {
    if ([specifierCopy confirmationAlternateAction])
    {
      [v5 performConfirmationAlternateAction];
    }

    else if ([v5 buttonAction] && objc_msgSend(v5, "cellType") == 13)
    {
      [v5 performButtonAction];
    }

    else if (!CFPreferencesGetAppBooleanValue(@"kDontUseOldAction", @"com.apple.Preferences", 0))
    {
      [v5 performLegacyAction];
    }

    v7 = 1;
  }

  else
  {
    Name = sel_getName(a2);
    NSLog(&cfstr_SSpecifierIsNi.isa, Name);
    v7 = 0;
  }

  return v7;
}

- (BOOL)performConfirmationCancelActionForSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v5 = specifierCopy;
  if (specifierCopy)
  {
    if ([specifierCopy confirmationCancelAction])
    {
      [v5 performConfirmationCancelAction];
    }

    else if ([v5 legacyCancel] && !CFPreferencesGetAppBooleanValue(@"kDontUseOldAction", @"com.apple.Preferences", 0))
    {
      [v5 legacyCancel];
      WeakRetained = objc_loadWeakRetained(v5 + 1);
      v10 = SFPerformSelector();
    }

    v6 = 1;
  }

  else
  {
    Name = sel_getName(a2);
    NSLog(&cfstr_SSpecifierIsNi.isa, Name);
    v6 = 0;
  }

  return v6;
}

- (void)showConfirmationViewForSpecifier:(id)specifier useAlert:(BOOL)alert
{
  alertCopy = alert;
  specifierCopy = specifier;
  presentedViewController = [(PSListController *)self presentedViewController];

  if (presentedViewController)
  {
    Name = sel_getName(a2);
    presentedViewController2 = [(PSListController *)self presentedViewController];
    NSLog(&cfstr_SOnWhileAlread.isa, Name, self, presentedViewController2);
  }

  else
  {
    v11 = MEMORY[0x1E69DC650];
    if (alertCopy)
    {
      title = [specifierCopy title];
      prompt = [specifierCopy prompt];
      v14 = [v11 alertControllerWithTitle:title message:prompt preferredStyle:1];

      v15 = MEMORY[0x1E69DC648];
      [specifierCopy okButton];
    }

    else
    {
      prompt2 = [specifierCopy prompt];
      v14 = [v11 alertControllerWithTitle:prompt2 message:0 preferredStyle:0];

      v15 = MEMORY[0x1E69DC648];
      [specifierCopy title];
    }
    v17 = ;
    if ([specifierCopy isDestructive])
    {
      v18 = 2;
    }

    else
    {
      v18 = 0;
    }

    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __62__PSListController_showConfirmationViewForSpecifier_useAlert___block_invoke;
    v34[3] = &unk_1E71DC000;
    v34[4] = self;
    v19 = specifierCopy;
    v35 = v19;
    v20 = [v15 actionWithTitle:v17 style:v18 handler:v34];
    [v14 addAction:v20];

    alternateButton = [v19 alternateButton];

    if (alternateButton)
    {
      v22 = MEMORY[0x1E69DC648];
      alternateButton2 = [v19 alternateButton];
      if ([v19 isAlternateDestructive])
      {
        v24 = 2;
      }

      else
      {
        v24 = 0;
      }

      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __62__PSListController_showConfirmationViewForSpecifier_useAlert___block_invoke_2;
      v32[3] = &unk_1E71DC000;
      v32[4] = self;
      v33 = v19;
      v25 = [v22 actionWithTitle:alternateButton2 style:v24 handler:v32];
      [v14 addAction:v25];
    }

    cancelButton = [v19 cancelButton];

    if (cancelButton)
    {
      v27 = MEMORY[0x1E69DC648];
      cancelButton2 = [v19 cancelButton];
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __62__PSListController_showConfirmationViewForSpecifier_useAlert___block_invoke_3;
      v30[3] = &unk_1E71DC000;
      v30[4] = self;
      v31 = v19;
      v29 = [v27 actionWithTitle:cancelButton2 style:1 handler:v30];
      [v14 addAction:v29];
    }

    [(PSListController *)self presentViewController:v14 animated:1 completion:0];
  }
}

- (void)showConfirmationViewForSpecifier:(id)specifier
{
  v4 = MEMORY[0x1E69DC938];
  specifierCopy = specifier;
  currentDevice = [v4 currentDevice];
  -[PSListController showConfirmationViewForSpecifier:useAlert:](self, "showConfirmationViewForSpecifier:useAlert:", specifierCopy, [currentDevice sf_isiPad]);
}

- (void)dismissConfirmationViewAnimated:(BOOL)animated
{
  animatedCopy = animated;
  presentedViewController = [(PSListController *)self presentedViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {

    [(PSListController *)self dismissViewControllerAnimated:animatedCopy completion:0];
  }
}

- (void)confirmationViewAcceptedForSpecifier:(id)specifier
{
  if ([(PSListController *)self performConfirmationActionForSpecifier:specifier])
  {
    table = self->_table;

    [(UITableView *)table selectRowAtIndexPath:0 animated:1 scrollPosition:0];
  }
}

- (void)confirmationViewAlternateAcceptedForSpecifier:(id)specifier
{
  if ([(PSListController *)self performConfirmationAlternateActionForSpecifier:specifier])
  {
    table = self->_table;

    [(UITableView *)table selectRowAtIndexPath:0 animated:1 scrollPosition:0];
  }
}

- (void)confirmationViewCancelledForSpecifier:(id)specifier
{
  if ([(PSListController *)self performConfirmationCancelActionForSpecifier:specifier])
  {
    table = self->_table;

    [(UITableView *)table selectRowAtIndexPath:0 animated:1 scrollPosition:0];
  }
}

- (void)lazyLoadBundle:(id)bundle
{
  v26 = *MEMORY[0x1E69E9840];
  bundleCopy = bundle;
  v5 = PKLogForCategory(6);
  v6 = os_signpost_id_make_with_pointer(v5, "PSListController.lazyLoadBundle");

  v7 = PKLogForCategory(6);
  v8 = v7;
  v9 = v6 - 1;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    v22 = 138543618;
    selfCopy3 = self;
    v24 = 2114;
    v25 = bundleCopy;
    _os_signpost_emit_with_name_impl(&dword_18B008000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "PSListController.lazyLoadBundle", "%{public}@: lazyLoadBundleWithSpecifier '%{public}@'", &v22, 0x16u);
  }

  v10 = [bundleCopy propertyForKey:@"lazy-bundle"];
  if (v10)
  {
    v11 = [MEMORY[0x1E696AAE8] bundleWithPath:v10];
    v12 = [bundleCopy propertyForKey:@"overridePrincipalClass"];
    bOOLValue = [v12 BOOLValue];

    if (bOOLValue)
    {
      v14 = [bundleCopy propertyForKey:@"detail"];
      if (v14)
      {
        v15 = v14;
        v16 = NSClassFromString(v14);
        if (v16)
        {
          principalClass = v16;

LABEL_14:
          bundleCopy[6] = principalClass;
          if (!bundleCopy[8])
          {
            v19 = [bundleCopy propertyForKey:@"pane"];
            bundleCopy[8] = [v11 classNamed:v19];
          }

          [bundleCopy setLegacyAction:0];
          [bundleCopy setControllerLoadAction:0];
          [bundleCopy removePropertyForKey:@"lazy-bundle"];
          if (objc_opt_respondsToSelector())
          {
            [bundleCopy[6] validateSpecifier:bundleCopy];
          }

          v20 = PKLogForCategory(6);
          v21 = v20;
          if (v9 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
          {
            v22 = 138543362;
            selfCopy3 = self;
            _os_signpost_emit_with_name_impl(&dword_18B008000, v21, OS_SIGNPOST_INTERVAL_END, v6, "PSListController.lazyLoadBundle", "%{public}@: Loaded bundle successfully.", &v22, 0xCu);
          }

          goto LABEL_22;
        }

        [v11 load];
        principalClass = NSClassFromString(v15);

        if (principalClass)
        {
          goto LABEL_14;
        }
      }
    }

    principalClass = [v11 principalClass];
    goto LABEL_14;
  }

  [bundleCopy setLegacyAction:0];
  [bundleCopy setControllerLoadAction:0];
  v18 = PKLogForCategory(6);
  v11 = v18;
  if (v9 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
  {
    v22 = 138543362;
    selfCopy3 = self;
    _os_signpost_emit_with_name_impl(&dword_18B008000, v11, OS_SIGNPOST_INTERVAL_END, v6, "PSListController.lazyLoadBundle", "%{public}@: No bundle path found.", &v22, 0xCu);
  }

LABEL_22:
}

- (id)controllerForRowAtIndexPath:(id)path
{
  v4 = [(PSListController *)self indexForIndexPath:path];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL || self->_showingSetupController)
  {
    v5 = 0;
  }

  else
  {
    v6 = [(NSArray *)self->_specifiers objectAtIndex:v4];
    v5 = [(PSListController *)self selectSpecifier:v6];
  }

  return v5;
}

- (id)selectSpecifier:(id)specifier
{
  v41 = *MEMORY[0x1E69E9840];
  specifierCopy = specifier;
  v6 = PKLogForCategory(3);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = NSStringFromSelector(a2);
    viewIfLoaded = [(PSListController *)self viewIfLoaded];
    window = [viewIfLoaded window];
    navigationController = [(PSListController *)self navigationController];
    parentViewController = [(PSListController *)self parentViewController];
    parentController = [(PSViewController *)self parentController];
    v17 = 138546178;
    v18 = v8;
    v19 = 2114;
    v20 = v9;
    v21 = 2160;
    v22 = 1752392040;
    v23 = 2112;
    v24 = specifierCopy;
    v25 = 2160;
    v26 = 1752392040;
    v27 = 2112;
    v28 = window;
    v29 = 2160;
    v30 = 1752392040;
    v31 = 2112;
    v32 = navigationController;
    v33 = 2160;
    v34 = 1752392040;
    v35 = 2112;
    v36 = parentViewController;
    v37 = 2160;
    v38 = 1752392040;
    v39 = 2112;
    v40 = parentController;
    _os_log_impl(&dword_18B008000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@ Was called with { specifier: %{mask.hash}@, window of viewIfLoaded: %{mask.hash}@, navigationController: %{mask.hash}@, parentViewController: %{mask.hash}@, parentPreferencesController: %{mask.hash}@ }.", &v17, 0x7Au);
  }

  v15 = [(PSListController *)self controllerForSpecifier:specifierCopy];

  return v15;
}

- (id)controllerForSpecifier:(id)specifier
{
  v37 = *MEMORY[0x1E69E9840];
  specifierCopy = specifier;
  if (!CFPreferencesGetAppBooleanValue(@"kDontUseOldAction", @"com.apple.Preferences", 0) && ![specifierCopy confirmationAction] && !objc_msgSend(specifierCopy, "controllerLoadAction") && !objc_msgSend(specifierCopy, "buttonAction"))
  {
    if (*(specifierCopy + 7) == 4 && ![specifierCopy legacyAction])
    {
      v22 = PKLogForCategory(7);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        [PSListController controllerForSpecifier:];
      }

      goto LABEL_16;
    }

    if ([specifierCopy legacyAction] && -[PSListController performActionForSpecifier:](self, "performActionForSpecifier:", specifierCopy) && objc_msgSend(specifierCopy, "legacyAction"))
    {
      v5 = PKLogForCategory(7);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        [PSListController controllerForSpecifier:];
      }

      goto LABEL_9;
    }
  }

  if ([specifierCopy buttonAction] && -[PSListController performButtonActionForSpecifier:](self, "performButtonActionForSpecifier:", specifierCopy))
  {
    v5 = PKLogForCategory(7);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [PSListController controllerForSpecifier:];
    }

LABEL_9:

    [(UITableView *)self->_table selectRowAtIndexPath:0 animated:0 scrollPosition:0];
LABEL_16:
    null = 0;
    goto LABEL_45;
  }

  if ([specifierCopy controllerLoadAction] && -[PSListController performLoadActionForSpecifier:](self, "performLoadActionForSpecifier:", specifierCopy))
  {
    controllerLoadAction = [specifierCopy controllerLoadAction];
    v7 = PKLogForCategory(7);
    v8 = v7;
    if (controllerLoadAction)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [PSListController controllerForSpecifier:specifierCopy];
      }

      goto LABEL_16;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [PSListController controllerForSpecifier:];
    }
  }

  cellType = [specifierCopy cellType];
  table = [(PSListController *)self table];
  v12 = [(PSListController *)self indexPathForSpecifier:specifierCopy];
  v13 = [table cellForRowAtIndexPath:v12];

  if ((cellType & 0xFFFFFFFFFFFFFFFBLL) == 8)
  {
    [v13 becomeFirstResponder];
  }

  if (cellType <= 0xB && ((1 << cellType) & 0xC0E) != 0)
  {
    canBeChecked = cellType == 3;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      canBeChecked = [v13 canBeChecked];
    }

    if (v13 && canBeChecked)
    {
      v15 = [(PSListController *)self getGroupSpecifierForSpecifier:specifierCopy];
      if ([v15 isRadioGroup])
      {
        [v15 setObject:specifierCopy forKeyedSubscript:@"radioGroupCheckedSpecifier"];
        [(PSListController *)self _updateRadioGroupSpecifier:v15];
      }

      v16 = PKLogForCategory(7);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        [PSListController controllerForSpecifier:];
      }

      null = [MEMORY[0x1E695DFB0] null];
      goto LABEL_44;
    }

    if (!v13 || ([v13 isUserInteractionEnabled] & 1) != 0)
    {
      null = CreateDetailControllerInstanceWithClass(*(specifierCopy + 6));
      v17 = +[PSListController appearance];
      [null setExtendedLayoutIncludesOpaqueBars:{objc_msgSend(v17, "extendedLayoutIncludesOpaqueBars")}];

      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      self->_showingSetupController = isKindOfClass & 1;
      if ((isKindOfClass & 1) == 0)
      {
        WeakRetained = objc_loadWeakRetained(&self->super._rootController);
        [null setRootController:WeakRetained];
      }

      [null setParentController:self];
      [null setSpecifier:specifierCopy];
      v15 = PKLogForCategory(7);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        showingSetupController = self->_showingSetupController;
        v23 = 141559554;
        v24 = 1752392040;
        v25 = 2112;
        v26 = specifierCopy;
        v27 = 2160;
        v28 = 1752392040;
        v29 = 2112;
        v30 = null;
        v31 = 2160;
        v32 = 1752392040;
        v33 = 2112;
        selfCopy = self;
        v35 = 1024;
        v36 = showingSetupController;
        _os_log_debug_impl(&dword_18B008000, v15, OS_LOG_TYPE_DEBUG, "%{mask.hash}@: Action created target controller %{mask.hash}@, set showingSetupController of presenting controller %{mask.hash}@ to %{BOOL}d.", &v23, 0x44u);
      }

      goto LABEL_44;
    }

    v15 = PKLogForCategory(7);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [PSListController controllerForSpecifier:];
    }
  }

  else
  {
    v15 = PKLogForCategory(7);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [PSListController controllerForSpecifier:];
    }
  }

  null = 0;
LABEL_44:

LABEL_45:

  return null;
}

- (void)_updateRadioGroupSpecifier:(id)specifier
{
  specifierCopy = specifier;
  if ([specifierCopy isRadioGroup])
  {
    v5 = [(PSListController *)self indexPathForIndex:[(PSListController *)self indexOfSpecifier:specifierCopy]];
    v6 = -[PSListController specifiersInGroup:](self, "specifiersInGroup:", [v5 section]);

    objc_opt_class();
    v7 = [specifierCopy objectForKeyedSubscript:@"radioGroupCheckedSpecifier"];
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;

    objc_initWeak(&location, self);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __47__PSListController__updateRadioGroupSpecifier___block_invoke;
    v11[3] = &unk_1E71DC848;
    objc_copyWeak(&v13, &location);
    v10 = v9;
    v12 = v10;
    [v6 na_each:v11];

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }
}

void __47__PSListController__updateRadioGroupSpecifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [WeakRetained indexPathForSpecifier:v3];
  objc_opt_class();
  v5 = [WeakRetained table];
  v6 = [v5 cellForRowAtIndexPath:v4];
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  v9 = [*(a1 + 32) isEqualToSpecifier:v3];
  [v8 setChecked:v9];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v5 = [(PSListController *)self indexForIndexPath:path];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL || self->_showingSetupController)
  {
    v14 = 0;
LABEL_4:
    table = self->_table;
    indexPathForSelectedRow = [(UITableView *)table indexPathForSelectedRow];
    null = [MEMORY[0x1E695DFB0] null];
    [(UITableView *)table deselectRowAtIndexPath:indexPathForSelectedRow animated:v14 == null];

    goto LABEL_5;
  }

  v9 = [(NSArray *)self->_specifiers objectAtIndex:v5];
  indexPathForSelectedRow = v9;
  v10 = v9[7];
  if (v10 == 4)
  {
    if (![v9 controllerLoadAction] && CFPreferencesGetAppBooleanValue(@"kDontUseOldAction", @"com.apple.Preferences", 0))
    {
      goto LABEL_22;
    }

    goto LABEL_13;
  }

  if (v10 != 13)
  {
LABEL_13:
    if (![(PSListControllerSpecifierActionCoordinator *)self->_specifierActionCoordinator listController:self shouldPerformDefaultDeferredBundleLoadingForSpecifier:indexPathForSelectedRow])
    {
      [(PSListControllerSpecifierActionCoordinator *)self->_specifierActionCoordinator listController:self presentControllerForSpecifier:indexPathForSelectedRow];
      goto LABEL_19;
    }

    v11 = [(PSListController *)self selectSpecifier:indexPathForSelectedRow];
    if (v11)
    {
      v14 = v11;
      null2 = [MEMORY[0x1E695DFB0] null];
      if (v14 == null2)
      {
      }

      else
      {
        v13 = [(PSListControllerNavigationCoordinator *)self->_navigationCoordinator listControllerIsOnTopOfNavigationStack:self searchTopMostViewControllerChildren:1];

        if (v13)
        {
          [(PSListController *)self showController:v14];
          goto LABEL_5;
        }
      }

LABEL_23:

      goto LABEL_4;
    }

LABEL_22:
    v14 = 0;
    goto LABEL_23;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [(PSListController *)self performButtonActionForSpecifier:indexPathForSelectedRow];
    goto LABEL_22;
  }

  [(PSListController *)self showConfirmationViewForSpecifier:indexPathForSelectedRow];
LABEL_19:
  v14 = 0;
LABEL_5:
}

- (id)specifierForID:(id)d
{
  specifiersByID = self->_specifiersByID;
  dCopy = d;
  if (specifiersByID)
  {
    v6 = [(NSMutableDictionary *)specifiersByID objectForKey:dCopy];
  }

  else
  {
    specifiers = [(PSListController *)self specifiers];
    v6 = [specifiers specifierForID:dCopy];

    dCopy = specifiers;
  }

  return v6;
}

- (id)specifiersForIDs:(id)ds
{
  v18 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(dsCopy, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = dsCopy;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(PSListController *)self specifierForID:*(*(&v13 + 1) + 8 * i), v13];
        if (v11)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (void)showController:(id)controller animate:(BOOL)animate
{
  animateCopy = animate;
  v33 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  if (controllerCopy)
  {
    navigationController = [(PSListController *)self navigationController];
    childViewControllers = [navigationController childViewControllers];

    if ([childViewControllers containsObject:controllerCopy])
    {
      v10 = _PSLoggingFacility();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [PSListController showController:v10 animate:?];
      }

      v11 = _PSLoggingFacility();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [PSListController showController:animate:];
      }

      v12 = _PSLoggingFacility();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [PSListController showController:animate:];
      }
    }

    navigationController2 = [(PSListController *)self navigationController];

    v14 = PKLogForCategory(3);
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    if (navigationController2)
    {
      if (v15)
      {
        v16 = objc_opt_class();
        v17 = NSStringFromClass(v16);
        v18 = NSStringFromSelector(a2);
        v23 = 138544386;
        v24 = v17;
        v25 = 2114;
        v26 = v18;
        v27 = 2160;
        v28 = 1752392040;
        v29 = 2112;
        v30 = controllerCopy;
        v31 = 1024;
        v32 = animateCopy;
        _os_log_impl(&dword_18B008000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@ called with %{mask.hash}@, %{BOOL}d", &v23, 0x30u);
      }

      [(PSListController *)self _showController:controllerCopy animate:animateCopy];
    }

    else
    {
      if (v15)
      {
        v19 = objc_opt_class();
        v20 = NSStringFromClass(v19);
        v21 = NSStringFromSelector(a2);
        v23 = 138544386;
        v24 = v20;
        v25 = 2114;
        v26 = v21;
        v27 = 2160;
        v28 = 1752392040;
        v29 = 2112;
        v30 = controllerCopy;
        v31 = 1024;
        v32 = animateCopy;
        _os_log_impl(&dword_18B008000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@ called with %{mask.hash}@, %{BOOL}d but navigationController is nil, stashing.", &v23, 0x30u);
      }

      v22 = [[_PSPendingShowControllerPayload alloc] initWithViewControllerToPresent:controllerCopy animate:animateCopy];
      [(PSViewController *)self setPendingShowControllerPayload:v22];
    }
  }

  else
  {
    childViewControllers = _PSLoggingFacility();
    if (os_log_type_enabled(childViewControllers, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 136315138;
      v24 = "[PSListController showController:animate:]";
      _os_log_impl(&dword_18B008000, childViewControllers, OS_LOG_TYPE_DEFAULT, "%s: attempted to push nil controller", &v23, 0xCu);
    }
  }
}

- (void)_showController:(id)controller animate:(BOOL)animate
{
  animateCopy = animate;
  controllerCopy = controller;
  objc_initWeak(&location, self);
  navigationCoordinator = self->_navigationCoordinator;
  WeakRetained = objc_loadWeakRetained(&self->super._rootController);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __44__PSListController__showController_animate___block_invoke;
  v9[3] = &unk_1E71DC870;
  objc_copyWeak(&v10, &location);
  [(PSListControllerNavigationCoordinator *)navigationCoordinator listController:self pushViewController:controllerCopy givenRootController:WeakRetained withModalStylePopupStateApplicator:v9 animated:animateCopy];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __44__PSListController__showController_animate___block_invoke(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    WeakRetained[1240] = a2;
  }
}

- (void)dismissPopoverAnimated:(BOOL)animated completion:(id)completion
{
  completionCopy = completion;
  presentedViewController = [(PSListController *)self presentedViewController];
  modalPresentationStyle = [presentedViewController modalPresentationStyle];

  if (modalPresentationStyle == 7)
  {
    [(PSListController *)self dismissViewControllerAnimated:1 completion:completionCopy];
    self->_popupIsModal = 0;
  }
}

- (BOOL)prepareHandlingURLForSpecifierID:(id)d resourceDictionary:(id)dictionary animatePush:(BOOL *)push withCompletion:(id)completion
{
  completionCopy = completion;
  v11 = [(PSListController *)self prepareHandlingURLForSpecifierID:d resourceDictionary:dictionary animatePush:push];
  if (!v11)
  {
    [(PSListController *)self setUrlHandlingCompletion:completionCopy];
  }

  return v11;
}

- (BOOL)prepareHandlingURLForSpecifierID:(id)d resourceDictionary:(id)dictionary animatePush:(BOOL *)push
{
  dCopy = d;
  dictionaryCopy = dictionary;
  v10 = [(PSListController *)self shouldDeferPushForSpecifierID:dCopy urlDictionary:dictionaryCopy];
  if (v10)
  {
    [(PSListController *)self setPendingURLResourceDictionary:dictionaryCopy];
    [(PSListController *)self setSpecifierIDPendingPush:dCopy];
    if (push)
    {
      *push = 1;
    }

    specifiers = [(PSListController *)self specifiers];
  }

  return !v10;
}

- (void)clearPendingURL
{
  [(PSListController *)self setPendingURLResourceDictionary:0];
  [(PSListController *)self setSpecifierIDPendingPush:0];

  [(PSListController *)self setUrlHandlingCompletion:0];
}

- (BOOL)handlePendingURL
{
  pendingURLResourceDictionary = self->_pendingURLResourceDictionary;
  if (pendingURLResourceDictionary)
  {
    urlHandlingCompletion = [(PSListController *)self urlHandlingCompletion];
    [(PSListController *)self handleURL:pendingURLResourceDictionary withCompletion:urlHandlingCompletion];

    [(PSListController *)self clearPendingURL];
  }

  return pendingURLResourceDictionary != 0;
}

- (void)handleURL:(id)l withCompletion:(id)completion
{
  lCopy = l;
  completionCopy = completion;
  if (-[PSViewController isURLHandlingDeferredForViewControllerContainment](self, "isURLHandlingDeferredForViewControllerContainment") && (-[PSListController viewIfLoaded](self, "viewIfLoaded"), v7 = objc_claimAutoreleasedReturnValue(), [v7 window], v8 = objc_claimAutoreleasedReturnValue(), v8, v7, !v8))
  {
    [(PSViewController *)self setUrlResourceDictionaryPendingViewControllerContainment:lCopy];
    [(PSViewController *)self setUrlCompletionHandlerPendingViewControllerContainment:completionCopy];
  }

  else
  {
    urlHandler = [(PSListController *)self urlHandler];
    [urlHandler handleURL:lCopy withCompletion:completionCopy];
  }
}

- (void)reloadIconForSpecifierForBundle:(id)bundle
{
  bundleCopy = bundle;
  v4 = self->_specifiers;
  v5 = [(NSArray *)v4 count];
  if (v5 < 1)
  {
LABEL_5:
    WeakRetained = objc_loadWeakRetained(&self->super._parentController);
    [WeakRetained reloadIconForSpecifierForBundle:bundleCopy];
  }

  else
  {
    v6 = v5;
    v7 = 1;
    while (1)
    {
      WeakRetained = [(NSArray *)v4 objectAtIndex:v7 - 1];
      v9 = [WeakRetained propertyForKey:@"bundle"];
      v10 = [v9 isEqual:bundleCopy];

      if (v10)
      {
        break;
      }

      if (v7++ >= v6)
      {
        goto LABEL_5;
      }
    }

    bundle = [(PSListController *)self bundle];
    resourcePath = [bundle resourcePath];
    [WeakRetained setupIconImageWithPath:resourcePath];

    [(PSListController *)self reload];
  }
}

- (double)_getKeyboardIntersectionHeightFromUserInfo:(id)info
{
  v4 = [info objectForKey:*MEMORY[0x1E69DDFA0]];
  [v4 CGRectValue];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = MEMORY[0x1E69DCEB0];
  view = [(PSListController *)self view];
  [v13 convertRect:view toView:{v6, v8, v10, v12}];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v28.origin.x = v16;
  v28.origin.y = v18;
  v28.size.width = v20;
  v28.size.height = v22;
  IsEmpty = CGRectIsEmpty(v28);
  result = 0.0;
  if (!IsEmpty)
  {
    view2 = [(PSListController *)self view];
    [view2 bounds];
    MaxY = CGRectGetMaxY(v29);
    v30.origin.x = v16;
    v30.origin.y = v18;
    v30.size.width = v20;
    v30.size.height = v22;
    v27 = MaxY - CGRectGetMinY(v30);

    return fmax(v27, 0.0);
  }

  return result;
}

- (void)_setContentInset:(double)inset
{
  [(UITableView *)self->_table contentInset];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UITableView *)self->_table setContentInset:?];
  table = self->_table;

  [(UITableView *)table setScrollIndicatorInsets:v6, v8, inset, v10];
}

- (void)_keyboardWillShow:(id)show
{
  v53 = *MEMORY[0x1E69E9840];
  showCopy = show;
  superview = [(UITableView *)self->_table superview];

  if (superview)
  {
    userInfo = [showCopy userInfo];
    v7 = [userInfo objectForKey:*MEMORY[0x1E69DDFA0]];
    [v7 CGRectValue];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;

    [MEMORY[0x1E69DCEB0] convertRect:self->_table toView:{v9, v11, v13, v15}];
    v17 = v16;
    v18 = [userInfo objectForKey:*MEMORY[0x1E69DDF98]];
    [v18 CGRectValue];
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;

    [MEMORY[0x1E69DCEB0] convertRect:self->_table toView:{v20, v22, v24, v26}];
    v27 = MEMORY[0x1E695EFF8];
    if (v28 == v17)
    {
      [(PSListController *)self _getKeyboardIntersectionHeightFromUserInfo:userInfo];
      [(PSListController *)self _setContentInset:?];
      p_contentOffsetWithKeyboard = &self->_contentOffsetWithKeyboard;
      if (self->_contentOffsetWithKeyboard.x != v27->x || self->_contentOffsetWithKeyboard.y != v27->y)
      {
        [(UITableView *)self->_table frame];
        v54.x = p_contentOffsetWithKeyboard->x;
        v54.y = self->_contentOffsetWithKeyboard.y;
        if (CGRectContainsPoint(v55, v54))
        {
          [(UITableView *)self->_table setContentOffset:p_contentOffsetWithKeyboard->x, self->_contentOffsetWithKeyboard.y];
        }
      }
    }

    else
    {
      visibleCells = [(UITableView *)self->_table visibleCells];
      v30 = MEMORY[0x1E69DD250];
      v31 = [userInfo objectForKey:*MEMORY[0x1E69DDF40]];
      [v31 floatValue];
      v33 = v32;
      v34 = [userInfo objectForKey:*MEMORY[0x1E69DDF38]];
      v35 = PSAnimationOptionsFromAnimationCurve([v34 integerValue]);
      v50[0] = MEMORY[0x1E69E9820];
      v50[1] = 3221225472;
      v50[2] = __38__PSListController__keyboardWillShow___block_invoke;
      v50[3] = &unk_1E71DC570;
      v50[4] = self;
      v51 = userInfo;
      [v30 animateWithDuration:v35 delay:v50 options:0 animations:v33 completion:0.0];

      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v36 = visibleCells;
      v37 = [v36 countByEnumeratingWithState:&v46 objects:v52 count:16];
      if (v37)
      {
        v38 = v37;
        v39 = *v47;
        while (2)
        {
          for (i = 0; i != v38; ++i)
          {
            if (*v47 != v39)
            {
              objc_enumerationMutation(v36);
            }

            v41 = *(*(&v46 + 1) + 8 * i);
            if ([v41 _isAncestorOfFirstResponder])
            {
              table = self->_table;
              v43 = [(UITableView *)table indexPathForCell:v41];
              [(UITableView *)table scrollToRowAtIndexPath:v43 atScrollPosition:3 animated:1];

              goto LABEL_13;
            }
          }

          v38 = [v36 countByEnumeratingWithState:&v46 objects:v52 count:16];
          if (v38)
          {
            continue;
          }

          break;
        }
      }

LABEL_13:
    }

    self->_contentOffsetWithKeyboard = *v27;
  }
}

uint64_t __38__PSListController__keyboardWillShow___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _getKeyboardIntersectionHeightFromUserInfo:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 _setContentInset:?];
}

- (void)_keyboardWillHide:(id)hide
{
  hideCopy = hide;
  superview = [(UITableView *)self->_table superview];

  if (superview)
  {
    userInfo = [hideCopy userInfo];
    v7 = [userInfo objectForKey:*MEMORY[0x1E69DDFA0]];
    [v7 CGRectValue];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;

    [MEMORY[0x1E69DCEB0] convertRect:self->_table toView:{v9, v11, v13, v15}];
    v17 = v16;
    v18 = [userInfo objectForKey:*MEMORY[0x1E69DDF98]];
    [v18 CGRectValue];
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;

    [MEMORY[0x1E69DCEB0] convertRect:self->_table toView:{v20, v22, v24, v26}];
    if (v27 == v17)
    {
      [(UITableView *)self->_table contentOffset];
      self->_contentOffsetWithKeyboard.x = v34;
      self->_contentOffsetWithKeyboard.y = v35;
    }

    else
    {
      v28 = MEMORY[0x1E69DD250];
      v29 = [userInfo objectForKey:*MEMORY[0x1E69DDF40]];
      [v29 floatValue];
      v31 = v30;
      v32 = [userInfo objectForKey:*MEMORY[0x1E69DDF38]];
      v33 = PSAnimationOptionsFromAnimationCurve([v32 integerValue]);
      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = __38__PSListController__keyboardWillHide___block_invoke;
      v36[3] = &unk_1E71DBE20;
      v36[4] = self;
      [v28 animateWithDuration:v33 delay:v36 options:0 animations:v31 completion:0.0];
    }
  }
}

- (void)selectRowForSpecifier:(id)specifier
{
  if (specifier)
  {
    v4 = [(PSListController *)self indexPathForIndex:[(NSArray *)self->_specifiers indexOfObject:?]];
    [(UITableView *)self->_table selectRowAtIndexPath:v4 animated:0 scrollPosition:0];
  }
}

- (float)verticalContentOffset
{
  table = [(PSListController *)self table];
  [table contentOffset];
  v4 = v3;

  return v4;
}

- (void)setDesiredVerticalContentOffsetItemNamed:(id)named
{
  v4 = [named copy];
  offsetItemName = self->_offsetItemName;
  self->_offsetItemName = v4;
}

- (void)highlightSpecifierWithID:(id)d
{
  if (self->_isVisible)
  {

    [(PSListController *)self _performHighlightForSpecifierWithID:d tryAgainIfFailed:1];
  }

  else
  {
    v4 = [d copy];
    highlightItemName = self->_highlightItemName;
    self->_highlightItemName = v4;
  }
}

- (void)_performHighlightForSpecifierWithID:(id)d tryAgainIfFailed:(BOOL)failed
{
  failedCopy = failed;
  dCopy = d;
  v6 = [(PSListController *)self indexPathForIndex:[(PSListController *)self indexOfSpecifierID:?]];
  if (v6)
  {
    v7 = v6;
    if ([v6 row] == 0x7FFFFFFFFFFFFFFFLL && !-[PSListController _isEmptyGroup:](self, "_isEmptyGroup:", -[PSListController indexForIndexPath:](self, "indexForIndexPath:", v7)))
    {
      v8 = [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:{objc_msgSend(v7, "section")}];

      v7 = v8;
    }

    v9 = [(UITableView *)self->_table cellForRowAtIndexPath:v7];
    UIAnimationDragCoefficient();
    v11 = v10 * 0.5;
    [(UITableView *)self->_table scrollToRowAtIndexPath:v7 atScrollPosition:2 animated:1];
    if (failedCopy)
    {
      [(PSListController *)self performSelector:sel__performHighlightForSpecifierWithID_ withObject:dCopy afterDelay:v11];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      visibleCells = [(UITableView *)self->_table visibleCells];
      v13 = [visibleCells containsObject:v9];

      if (v13)
      {
        [v9 highlightCellForDuration:1 animateUnighlight:0.5];
      }

      else if (failedCopy)
      {
        [(PSListController *)self performSelector:sel__performHighlightForSpecifierWithID_ withObject:dCopy afterDelay:v11];
      }
    }
  }
}

- (void)_moveSpecifierAtIndex:(unint64_t)index toIndex:(unint64_t)toIndex animated:(BOOL)animated
{
  animatedCopy = animated;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(NSArray *)selfCopy->_specifiers count]<= index || [(NSArray *)selfCopy->_specifiers count]< toIndex)
  {
    v9 = 0;
    v14 = 0;
LABEL_4:
    objc_sync_exit(selfCopy);

    goto LABEL_5;
  }

  v14 = [(PSListController *)selfCopy indexPathForIndex:index];
  v9 = [(PSListController *)selfCopy indexPathForIndex:toIndex];
  if (!v14 || !v9)
  {
    goto LABEL_4;
  }

  v10 = [(NSArray *)selfCopy->_specifiers mutableCopy];
  v11 = [(NSArray *)v10 objectAtIndexedSubscript:index];
  [(NSArray *)v10 removeObjectAtIndex:index];
  [(NSArray *)v10 insertObject:v11 atIndex:toIndex];
  specifiers = selfCopy->_specifiers;
  selfCopy->_specifiers = v10;

  objc_sync_exit(selfCopy);
  areAnimationsEnabled = [MEMORY[0x1E69DD250] areAnimationsEnabled];
  [MEMORY[0x1E69DD250] setAnimationsEnabled:animatedCopy];
  [(UITableView *)selfCopy->_table moveRowAtIndexPath:v14 toIndexPath:v9];
  [MEMORY[0x1E69DD250] setAnimationsEnabled:areAnimationsEnabled];
LABEL_5:
}

- (void)setSpecifierDataSource:(id)source
{
  sourceCopy = source;
  dataSource = self->_dataSource;
  if (dataSource != sourceCopy)
  {
    v7 = sourceCopy;
    [(PSSpecifierDataSource *)dataSource removeObserver:self];
    objc_storeStrong(&self->_dataSource, source);
    [(PSSpecifierDataSource *)self->_dataSource addObserver:self];
    sourceCopy = v7;
  }
}

- (void)dataSource:(id)source performUpdates:(id)updates
{
  if (!self->_requestingSpecifiersFromDataSource)
  {
    [(PSListController *)self performSpecifierUpdates:updates];
  }
}

- (void)performSpecifierUpdates:(id)updates
{
  updatesCopy = updates;
  originalSpecifiers = [updatesCopy originalSpecifiers];
  v6 = [originalSpecifiers isEqual:self->_specifiers];

  if (v6)
  {
    context = [updatesCopy context];
    updateModelOnly = [context updateModelOnly];

    if (updateModelOnly)
    {
      currentSpecifiers = [updatesCopy currentSpecifiers];
      v10 = [currentSpecifiers mutableCopy];
      specifiers = self->_specifiers;
      self->_specifiers = v10;

      [(PSListController *)self createGroupIndices];
    }

    else
    {
      v22[0] = 0;
      v22[1] = v22;
      v22[2] = 0x2020000000;
      v23 = 0;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __44__PSListController_performSpecifierUpdates___block_invoke;
      aBlock[3] = &unk_1E71DC898;
      aBlock[4] = self;
      aBlock[5] = v22;
      v12 = _Block_copy(aBlock);
      context2 = [updatesCopy context];
      animated = [context2 animated];

      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __44__PSListController_performSpecifierUpdates___block_invoke_2;
      v18[3] = &unk_1E71DC8C0;
      v15 = v12;
      v18[4] = self;
      v19 = v15;
      v20 = animated;
      [updatesCopy enumerateUpdatesUsingBlock:v18];
      v16 = self->_specifiers;
      currentSpecifiers2 = [updatesCopy currentSpecifiers];
      LOBYTE(v16) = [(NSArray *)v16 isEqual:currentSpecifiers2];

      if (v16)
      {
        (*(v15 + 2))(v15, 0);
      }

      else
      {
        [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Specifier updates resulted in inconsistent specifier arrays."];
      }

      _Block_object_dispose(v22, 8);
    }
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Attempting to perform specifier updates on list controller with inconsistent specifiers."];
  }
}

uint64_t __44__PSListController_performSpecifierUpdates___block_invoke(uint64_t result, int a2)
{
  if (*(*(*(result + 40) + 8) + 24) != a2)
  {
    v2 = a2;
    v3 = result;
    v4 = *(result + 32);
    if (a2)
    {
      result = [v4 beginUpdates];
    }

    else
    {
      result = [v4 endUpdates];
    }

    *(*(*(v3 + 40) + 8) + 24) = v2;
  }

  return result;
}

void __44__PSListController_performSpecifierUpdates___block_invoke_2(uint64_t a1, void *a2)
{
  v12 = a2;
  (*(*(a1 + 40) + 16))(*(a1 + 40), [v12 operation] != 2);
  v3 = [v12 operation];
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v11 = *(a1 + 32);
      v5 = [v12 index];
      [v11 reloadSpecifierAtIndex:objc_msgSend(v5 animated:{"integerValue"), *(a1 + 48)}];
    }

    else
    {
      if (v3 != 4)
      {
        goto LABEL_11;
      }

      v8 = *(a1 + 32);
      v5 = [v12 index];
      [v8 removeSpecifierAtIndex:objc_msgSend(v5 animated:{"integerValue"), *(a1 + 48)}];
    }
  }

  else if (v3 == 1)
  {
    v9 = *(a1 + 32);
    v5 = [v12 specifier];
    v10 = [v12 index];
    [v9 insertSpecifier:v5 atIndex:objc_msgSend(v10 animated:{"integerValue"), *(a1 + 48)}];
  }

  else
  {
    if (v3 != 2)
    {
      goto LABEL_11;
    }

    v4 = *(a1 + 32);
    v5 = [v12 index];
    v6 = [v5 integerValue];
    v7 = [v12 toIndex];
    [v4 _moveSpecifierAtIndex:v6 toIndex:objc_msgSend(v7 animated:{"integerValue"), *(a1 + 48)}];
  }

LABEL_11:
}

+ (id)appearanceWhenContainedInInstancesOfClasses:(id)classes
{
  if (appearanceWhenContainedInInstancesOfClasses__onceToken != -1)
  {
    +[PSListController appearanceWhenContainedInInstancesOfClasses:];
  }

  v4 = appearanceWhenContainedInInstancesOfClasses___listController;

  return v4;
}

void __64__PSListController_appearanceWhenContainedInInstancesOfClasses___block_invoke()
{
  v0 = objc_alloc_init(PSListController);
  v1 = appearanceWhenContainedInInstancesOfClasses___listController;
  appearanceWhenContainedInInstancesOfClasses___listController = v0;
}

- (void)tableView:(id)view prefetchRowsAtIndexPaths:(id)paths
{
  v16 = *MEMORY[0x1E69E9840];
  pathsCopy = paths;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [pathsCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(pathsCopy);
        }

        v10 = [(PSListController *)self specifierAtIndexPath:*(*(&v11 + 1) + 8 * v9)];
        if (v10)
        {
          [(PSListController *)self prefetchResourcesFor:v10];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [pathsCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)setPrefetchingEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  self->_prefetchingEnabled = enabled;
  v5 = _PSLoggingFacility();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (enabledCopy)
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&dword_18B008000, v5, OS_LOG_TYPE_DEFAULT, "background prefetching enabled", buf, 2u);
    }

    table = self->_table;
    selfCopy = self;
  }

  else
  {
    if (v6)
    {
      *v9 = 0;
      _os_log_impl(&dword_18B008000, v5, OS_LOG_TYPE_DEFAULT, "background prefetching disabled", v9, 2u);
    }

    table = self->_table;
    selfCopy = 0;
  }

  [(UITableView *)table setPrefetchDataSource:selfCopy];
}

- (void)performScrollAndHighlightIfOnScreenToSpecifierIdentifier:(id)identifier
{
  identifierCopy = identifier;
  viewIfLoaded = [(PSListController *)self viewIfLoaded];
  window = [viewIfLoaded window];

  if (window)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __77__PSListController_performScrollAndHighlightIfOnScreenToSpecifierIdentifier___block_invoke;
    aBlock[3] = &unk_1E71DBE20;
    aBlock[4] = self;
    v7 = _Block_copy(aBlock);
    [(PSListController *)self highlightSpecifierWithID:identifierCopy];
    v7[2](v7);
  }
}

void __77__PSListController_performScrollAndHighlightIfOnScreenToSpecifierIdentifier___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) cellHighlightingSelectionInvocationRelay];
  [v1 setSpecifierIdentifierToScrollAndHighlight:0];
}

- (void)performScrollAndInvokeSelectionIfOnScreenToSpecifierIdentifier:(id)identifier
{
  identifierCopy = identifier;
  viewIfLoaded = [(PSListController *)self viewIfLoaded];
  window = [viewIfLoaded window];

  if (window)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __83__PSListController_performScrollAndInvokeSelectionIfOnScreenToSpecifierIdentifier___block_invoke;
    aBlock[3] = &unk_1E71DBE20;
    aBlock[4] = self;
    v7 = _Block_copy(aBlock);
    [(PSListController *)self _scrollToSpecifierWithID:identifierCopy animated:1];
    v8 = [(PSListController *)self specifierForID:identifierCopy];
    if (v8)
    {
      table = [(PSListController *)self table];
      v10 = [(PSListController *)self indexPathForSpecifier:v8];
      [(PSListController *)self tableView:table didSelectRowAtIndexPath:v10];
    }

    v7[2](v7);
  }
}

void __83__PSListController_performScrollAndInvokeSelectionIfOnScreenToSpecifierIdentifier___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) cellHighlightingSelectionInvocationRelay];
  [v1 setSpecifierIdentifierToScrollAndSelect:0];
}

- (void)showPINSheet:(id)sheet allowOptionsButton:(BOOL)button
{
  buttonCopy = button;
  sheetCopy = sheet;
  if ([(PSListControllerNavigationCoordinator *)self->_navigationCoordinator listControllerIsOnTopOfNavigationStack:self searchTopMostViewControllerChildren:0])
  {
    v6 = objc_alloc_init(DevicePINSetupController);
    [(DevicePINSetupController *)v6 setAllowOptionsButton:buttonCopy];
    self->_showingSetupController = 1;
    [(PSSetupController *)v6 setParentController:self];
    [sheetCopy setProperty:self forKey:@"PINControllerDelegate"];
    [(PSRootController *)v6 setSpecifier:sheetCopy];
    objc_storeWeak(sheetCopy + 1, self);
    [(PSListController *)self showController:v6];
  }
}

+ (void)registerDefaultAppearanceProviderClass:(Class)class
{
  if (ensureDefaultAppearanceProviderAndNavigationRegistration_onceToken != -1)
  {
    [PSListController _ensureAppearanceProviderAndNavigationCoordinator];
  }

  defaultAppearanceProviderClass = class;
}

- (void)setAppearanceProvider:(id)provider
{
  providerCopy = provider;
  if (ensureDefaultAppearanceProviderAndNavigationRegistration_onceToken != -1)
  {
    [PSListController _ensureAppearanceProviderAndNavigationCoordinator];
  }

  appearanceProvider = self->_appearanceProvider;
  self->_appearanceProvider = providerCopy;
}

- (PSListControllerAppearanceProvider)appearanceProvider
{
  if (ensureDefaultAppearanceProviderAndNavigationRegistration_onceToken != -1)
  {
    [PSListController _ensureAppearanceProviderAndNavigationCoordinator];
  }

  appearanceProvider = self->_appearanceProvider;

  return appearanceProvider;
}

+ (void)registerDefaultNavigationCoordinatorClass:(Class)class
{
  if (ensureDefaultAppearanceProviderAndNavigationRegistration_onceToken != -1)
  {
    [PSListController _ensureAppearanceProviderAndNavigationCoordinator];
  }

  defaultNavigationCoordinatorClass = class;
}

- (void)setNavigationCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  if (ensureDefaultAppearanceProviderAndNavigationRegistration_onceToken != -1)
  {
    [PSListController _ensureAppearanceProviderAndNavigationCoordinator];
  }

  navigationCoordinator = self->_navigationCoordinator;
  self->_navigationCoordinator = coordinatorCopy;
}

- (PSListControllerNavigationCoordinator)navigationCoordinator
{
  if (ensureDefaultAppearanceProviderAndNavigationRegistration_onceToken != -1)
  {
    [PSListController _ensureAppearanceProviderAndNavigationCoordinator];
  }

  navigationCoordinator = self->_navigationCoordinator;

  return navigationCoordinator;
}

- (void)setCellHighlightingSelectionInvocationRelay:(id)relay
{
  relayCopy = relay;
  highlightRelayObserver = [(PSListController *)self highlightRelayObserver];

  if (highlightRelayObserver)
  {
    highlightRelayObserver2 = [(PSListController *)self highlightRelayObserver];
    [(PSListController *)self na_removeNotificationBlockObserver:highlightRelayObserver2];

    [(PSListController *)self setHighlightRelayObserver:0];
  }

  selectionRelayObserver = [(PSListController *)self selectionRelayObserver];

  if (selectionRelayObserver)
  {
    selectionRelayObserver2 = [(PSListController *)self selectionRelayObserver];
    [(PSListController *)self na_removeNotificationBlockObserver:selectionRelayObserver2];

    [(PSListController *)self setSelectionRelayObserver:0];
  }

  objc_storeStrong(&self->_cellHighlightingSelectionInvocationRelay, relay);
  v9 = relayCopy;
  if (relayCopy)
  {
    v10 = [(PSListController *)self na_addNotificationBlockObserverForObject:relayCopy keyPath:@"specifierIdentifierToScrollAndHighlight" options:7 usingBlock:&__block_literal_global_917];
    [(PSListController *)self setHighlightRelayObserver:v10];

    v11 = [(PSListController *)self na_addNotificationBlockObserverForObject:relayCopy keyPath:@"specifierIdentifierToScrollAndSelect" options:7 usingBlock:&__block_literal_global_922];
    [(PSListController *)self setSelectionRelayObserver:v11];

    v9 = relayCopy;
  }
}

void __85__PSListController_CustomizationExtras__setCellHighlightingSelectionInvocationRelay___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v4 = a3;
  objc_opt_class();
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x1E696A4F0]];

  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if ([v7 length])
  {
    [v8 performScrollAndHighlightIfOnScreenToSpecifierIdentifier:v7];
  }
}

void __85__PSListController_CustomizationExtras__setCellHighlightingSelectionInvocationRelay___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v4 = a3;
  objc_opt_class();
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x1E696A4F0]];

  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if ([v7 length])
  {
    [v8 performScrollAndInvokeSelectionIfOnScreenToSpecifierIdentifier:v7];
  }
}

- (void)handleScrollPPTTestName:(id)name
{
  nameCopy = name;
  if (objc_opt_class() && objc_opt_class() && [MEMORY[0x1E69C6C48] isRecapAvailable])
  {
    table = [(PSListController *)self table];
    v5 = [objc_alloc(MEMORY[0x1E69C6C38]) initWithTestName:nameCopy scrollView:table completionHandler:0];
    [MEMORY[0x1E69C6C48] runTestWithParameters:v5];
  }
}

+ (void)registerDefaultSpecifierActionCoordinatorClass:(Class)class
{
  if (ensureDefaultAppearanceProviderAndNavigationRegistration_onceToken != -1)
  {
    [PSListController _ensureAppearanceProviderAndNavigationCoordinator];
  }

  defaultPSListControllerSpecifierActionCoordinatorClass = class;
}

- (void)setSpecifierActionCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  if (ensureDefaultAppearanceProviderAndNavigationRegistration_onceToken != -1)
  {
    [PSListController _ensureAppearanceProviderAndNavigationCoordinator];
  }

  specifierActionCoordinator = self->_specifierActionCoordinator;
  self->_specifierActionCoordinator = coordinatorCopy;
}

- (PSListControllerSpecifierActionCoordinator)specifierActionCoordinator
{
  if (ensureDefaultAppearanceProviderAndNavigationRegistration_onceToken != -1)
  {
    [PSListController _ensureAppearanceProviderAndNavigationCoordinator];
  }

  specifierActionCoordinator = self->_specifierActionCoordinator;

  return specifierActionCoordinator;
}

- (void)controllerForSpecifier:.cold.1()
{
  OUTLINED_FUNCTION_6();
  v1 = [*(v0 + 1072) indexPathForSelectedRow];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3(&dword_18B008000, v2, v3, "%{mask.hash}@: Performed legacyAction, deselecting any selected row %{public}@ and returning nil.", v4, v5, v6, v7, v8);
}

- (void)controllerForSpecifier:.cold.2()
{
  OUTLINED_FUNCTION_6();
  v1 = [*(v0 + 1072) indexPathForSelectedRow];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3(&dword_18B008000, v2, v3, "%{mask.hash}@: Performed buttonAction, deselecting any selected row %{public}@ and returning nil.", v4, v5, v6, v7, v8);
}

- (void)controllerForSpecifier:(void *)a1 .cold.3(void *a1)
{
  v1 = [a1 target];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x2Au);
}

- (void)controllerForSpecifier:.cold.4()
{
  v4 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1();
  v3 = v0;
  _os_log_debug_impl(&dword_18B008000, v1, OS_LOG_TYPE_DEBUG, "%{mask.hash}@: Performed controllerLoadAction, continuing.", v2, 0x16u);
}

- (void)controllerForSpecifier:.cold.5()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  v4 = 2112;
  v5 = v0;
  OUTLINED_FUNCTION_5();
  v6 = v1;
  _os_log_debug_impl(&dword_18B008000, v2, OS_LOG_TYPE_DEBUG, "%{mask.hash}@: Cell %{mask.hash}@ has interactivity disabled. Returning nil.", v3, 0x2Au);
}

- (void)controllerForSpecifier:.cold.6()
{
  OUTLINED_FUNCTION_6();
  v1 = [PSTableCell reuseIdentifierForClassAndType:v0];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3(&dword_18B008000, v2, v3, "%{mask.hash}@: Cell type %{public}@ supports being checked, returning non-nil value.", v4, v5, v6, v7, v8);
}

- (void)controllerForSpecifier:.cold.7()
{
  OUTLINED_FUNCTION_6();
  v1 = [PSTableCell reuseIdentifierForClassAndType:v0];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3(&dword_18B008000, v2, v3, "%{mask.hash}@: Cell type %{public}@ does not expect navigation semantics. Returning nil.", v4, v5, v6, v7, v8);
}

- (void)controllerForSpecifier:.cold.8()
{
  v4 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1();
  v3 = v0;
  _os_log_debug_impl(&dword_18B008000, v1, OS_LOG_TYPE_DEBUG, "%{mask.hash}@: No Action, legacyAction is nil, returning nil.", v2, 0x16u);
}

- (void)showController:(os_log_t)log animate:.cold.1(os_log_t log)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 136315138;
  v2 = "[PSListController showController:animate:]";
  _os_log_error_impl(&dword_18B008000, log, OS_LOG_TYPE_ERROR, "%s: pushing a view controller that's already in the stack.", &v1, 0xCu);
}

- (void)showController:animate:.cold.2()
{
  v5 = [MEMORY[0x1E69DD258] _printHierarchy];
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)showController:animate:.cold.3()
{
  v5 = [MEMORY[0x1E696AF00] callStackSymbols];
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end