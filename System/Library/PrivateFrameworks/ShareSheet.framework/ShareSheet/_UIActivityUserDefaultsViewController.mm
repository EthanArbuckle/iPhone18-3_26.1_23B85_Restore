@interface _UIActivityUserDefaultsViewController
- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path;
- (BOOL)tableView:(id)view canMoveRowAtIndexPath:(id)path;
- (BOOL)tableView:(id)view shouldIndentWhileEditingRowAtIndexPath:(id)path;
- (_UIActivityUserDefaultsViewController)initWithActivities:(id)activities userDefaults:(id)defaults;
- (_UIActivityUserDefaultsViewController)initWithFavoritesProxies:(id)proxies suggestionProxies:(id)suggestionProxies activitiesByUUID:(id)d applicationActivityTypes:(id)types orderedUUIDs:(id)ds excludedActivityTypes:(id)activityTypes activityCategory:(int64_t)category isPresentedModally:(BOOL)self0;
- (_UIActivityUserDefaultsViewControllerDelegate)userDefaultsDelegate;
- (id)_provideCellForTableView:(id)view indexPath:(id)path itemIdentifier:(id)identifier;
- (id)activityForRowAtIndexPath:(id)path;
- (id)cellForItemIdentifier:(id)identifier;
- (id)tableView:(id)view targetIndexPathForMoveFromRowAtIndexPath:(id)path toProposedIndexPath:(id)indexPath;
- (id)tableView:(id)view titleForDeleteConfirmationButtonForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (id)titleForSection:(int64_t)section;
- (int64_t)preferredActivityCategory;
- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path;
- (void)configureSwitchForCell:(id)cell activityProxy:(id)proxy;
- (void)dismissUserDefaults;
- (void)doneEditingUserDefaults;
- (void)editUserDefaults;
- (void)scrollViewDidScroll:(id)scroll;
- (void)setHostAuditToken:(id)token;
- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path;
- (void)tableView:(id)view didHighlightRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view didUnhighlightRowAtIndexPath:(id)path;
- (void)tableView:(id)view moveRowAtIndexPath:(id)path toIndexPath:(id)indexPath;
- (void)toggleActivityHiddenForControl:(id)control;
- (void)toggleActivityHiddenForRowAtIndexPath:(id)path;
- (void)traitCollectionDidChange:(id)change;
- (void)updateUserDefaultsAnimated:(BOOL)animated;
- (void)updateWithFavoritesProxies:(id)proxies suggestionProxies:(id)suggestionProxies activitiesByUUID:(id)d applicationActivityTypes:(id)types orderedUUIDs:(id)ds excludedActivityTypes:(id)activityTypes;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
@end

@implementation _UIActivityUserDefaultsViewController

- (_UIActivityUserDefaultsViewController)initWithActivities:(id)activities userDefaults:(id)defaults
{
  activitiesCopy = activities;
  defaultsCopy = defaults;
  v19.receiver = self;
  v19.super_class = _UIActivityUserDefaultsViewController;
  v8 = [(_UIActivityUserDefaultsViewController *)&v19 initWithNibName:0 bundle:0];
  if (v8)
  {
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    bundleIdentifier = v8->_bundleIdentifier;
    v8->_bundleIdentifier = bundleIdentifier;

    v21 = 0;
    v22 = &v21;
    v23 = 0x2050000000;
    v12 = getSFUIActivityImageProviderClass_softClass;
    v24 = getSFUIActivityImageProviderClass_softClass;
    if (!getSFUIActivityImageProviderClass_softClass)
    {
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __getSFUIActivityImageProviderClass_block_invoke;
      v20[3] = &unk_1E71F91F0;
      v20[4] = &v21;
      __getSFUIActivityImageProviderClass_block_invoke(v20);
      v12 = v22[3];
    }

    v13 = v12;
    _Block_object_dispose(&v21, 8);
    v14 = objc_alloc_init(v12);
    activityImageProvider = v8->_activityImageProvider;
    v8->_activityImageProvider = v14;

    if (defaultsCopy)
    {
      v16 = [defaultsCopy activitiesOrderedByUserActivityOrderForActivities:activitiesCopy];

      activitiesCopy = v16;
    }

    [(_UIActivityUserDefaultsViewController *)v8 setActivities:activitiesCopy];
    [(_UIActivityUserDefaultsViewController *)v8 setUserDefaults:defaultsCopy];
    [(_UIActivityUserDefaultsViewController *)v8 setPreferredContentSize:0.0, 184.0];
    v17 = v8;
  }

  return v8;
}

- (_UIActivityUserDefaultsViewController)initWithFavoritesProxies:(id)proxies suggestionProxies:(id)suggestionProxies activitiesByUUID:(id)d applicationActivityTypes:(id)types orderedUUIDs:(id)ds excludedActivityTypes:(id)activityTypes activityCategory:(int64_t)category isPresentedModally:(BOOL)self0
{
  v62 = *MEMORY[0x1E69E9840];
  proxiesCopy = proxies;
  suggestionProxiesCopy = suggestionProxies;
  dCopy = d;
  typesCopy = types;
  dsCopy = ds;
  activityTypesCopy = activityTypes;
  v22 = [(_UIActivityUserDefaultsViewController *)self initWithActivities:0 userDefaults:0];
  v23 = v22;
  if (v22)
  {
    v48 = activityTypesCopy;
    v49 = dsCopy;
    v50 = typesCopy;
    v51 = dCopy;
    [(_UIActivityUserDefaultsViewController *)v22 setFavoritesProxies:proxiesCopy];
    v24 = objc_opt_new();
    [(_UIActivityUserDefaultsViewController *)v23 setFavoritesByUUID:v24];

    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v25 = proxiesCopy;
    v26 = [v25 countByEnumeratingWithState:&v56 objects:v61 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v57;
      do
      {
        for (i = 0; i != v27; ++i)
        {
          if (*v57 != v28)
          {
            objc_enumerationMutation(v25);
          }

          v30 = *(*(&v56 + 1) + 8 * i);
          favoritesByUUID = [(_UIActivityUserDefaultsViewController *)v23 favoritesByUUID];
          identifier = [v30 identifier];
          [favoritesByUUID setObject:v30 forKey:identifier];
        }

        v27 = [v25 countByEnumeratingWithState:&v56 objects:v61 count:16];
      }

      while (v27);
    }

    [(_UIActivityUserDefaultsViewController *)v23 setSuggestionProxies:suggestionProxiesCopy];
    v33 = objc_opt_new();
    [(_UIActivityUserDefaultsViewController *)v23 setSuggestionsByUUID:v33];

    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v34 = suggestionProxiesCopy;
    v35 = [v34 countByEnumeratingWithState:&v52 objects:v60 count:16];
    if (v35)
    {
      v36 = v35;
      v37 = *v53;
      do
      {
        for (j = 0; j != v36; ++j)
        {
          if (*v53 != v37)
          {
            objc_enumerationMutation(v34);
          }

          v39 = *(*(&v52 + 1) + 8 * j);
          suggestionsByUUID = [(_UIActivityUserDefaultsViewController *)v23 suggestionsByUUID];
          identifier2 = [v39 identifier];
          [suggestionsByUUID setObject:v39 forKey:identifier2];
        }

        v36 = [v34 countByEnumeratingWithState:&v52 objects:v60 count:16];
      }

      while (v36);
    }

    dCopy = v51;
    [(_UIActivityUserDefaultsViewController *)v23 setActivitiesByUUID:v51];
    [(_UIActivityUserDefaultsViewController *)v23 setActivityCategory:category];
    typesCopy = v50;
    [(_UIActivityUserDefaultsViewController *)v23 setApplicationActivityTypes:v50];
    dsCopy = v49;
    [(_UIActivityUserDefaultsViewController *)v23 setOrderedUUIDs:v49];
    activityTypesCopy = v48;
    [(_UIActivityUserDefaultsViewController *)v23 setExcludedActivityTypes:v48];
    [(_UIActivityUserDefaultsViewController *)v23 setIsPresentedModally:modally];
    if (category == 1)
    {
      v42 = _ShareSheetBundle();
      v43 = [v42 localizedStringForKey:@"Apps" value:@"Apps" table:@"Localizable"];
    }

    else
    {
      v44 = _ShareSheetSolariumEnabled();
      v45 = @"Actions";
      if (v44)
      {
        v45 = @"Edit Actions";
      }

      v46 = v45;
      v42 = _ShareSheetBundle();
      v43 = [v42 localizedStringForKey:v46 value:v46 table:@"Localizable"];
    }

    [(_UIActivityUserDefaultsViewController *)v23 setTitle:v43];
  }

  return v23;
}

- (void)updateWithFavoritesProxies:(id)proxies suggestionProxies:(id)suggestionProxies activitiesByUUID:(id)d applicationActivityTypes:(id)types orderedUUIDs:(id)ds excludedActivityTypes:(id)activityTypes
{
  v48 = *MEMORY[0x1E69E9840];
  proxiesCopy = proxies;
  suggestionProxiesCopy = suggestionProxies;
  dCopy = d;
  typesCopy = types;
  dsCopy = ds;
  activityTypesCopy = activityTypes;
  [(_UIActivityUserDefaultsViewController *)self setFavoritesProxies:proxiesCopy];
  v17 = objc_opt_new();
  [(_UIActivityUserDefaultsViewController *)self setFavoritesByUUID:v17];

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v18 = proxiesCopy;
  v19 = [v18 countByEnumeratingWithState:&v42 objects:v47 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v43;
    do
    {
      v22 = 0;
      do
      {
        if (*v43 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v42 + 1) + 8 * v22);
        favoritesByUUID = [(_UIActivityUserDefaultsViewController *)self favoritesByUUID];
        identifier = [v23 identifier];
        [favoritesByUUID setObject:v23 forKey:identifier];

        ++v22;
      }

      while (v20 != v22);
      v20 = [v18 countByEnumeratingWithState:&v42 objects:v47 count:16];
    }

    while (v20);
  }

  [(_UIActivityUserDefaultsViewController *)self setSuggestionProxies:suggestionProxiesCopy];
  v26 = objc_opt_new();
  [(_UIActivityUserDefaultsViewController *)self setSuggestionsByUUID:v26];

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v27 = suggestionProxiesCopy;
  v28 = [v27 countByEnumeratingWithState:&v38 objects:v46 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v39;
    do
    {
      v31 = 0;
      do
      {
        if (*v39 != v30)
        {
          objc_enumerationMutation(v27);
        }

        v32 = *(*(&v38 + 1) + 8 * v31);
        suggestionsByUUID = [(_UIActivityUserDefaultsViewController *)self suggestionsByUUID];
        identifier2 = [v32 identifier];
        [suggestionsByUUID setObject:v32 forKey:identifier2];

        ++v31;
      }

      while (v29 != v31);
      v29 = [v27 countByEnumeratingWithState:&v38 objects:v46 count:16];
    }

    while (v29);
  }

  [(_UIActivityUserDefaultsViewController *)self setActivitiesByUUID:dCopy];
  [(_UIActivityUserDefaultsViewController *)self setApplicationActivityTypes:typesCopy];
  [(_UIActivityUserDefaultsViewController *)self setOrderedUUIDs:dsCopy];
  [(_UIActivityUserDefaultsViewController *)self setExcludedActivityTypes:activityTypesCopy];
  [(_UIActivityUserDefaultsViewController *)self updateUserDefaultsAnimated:0];
}

- (void)setHostAuditToken:(id)token
{
  tokenCopy = token;
  if (self->_hostAuditToken != tokenCopy)
  {
    objc_storeStrong(&self->_hostAuditToken, token);
    if (tokenCopy)
    {
      [(BSAuditToken *)tokenCopy realToken:0];
      v6 = _ShareSheetBundleIDFromAuditToken();
      bundleIdentifier = self->_bundleIdentifier;
      self->_bundleIdentifier = v6;
    }
  }
}

- (void)viewDidLoad
{
  v101.receiver = self;
  v101.super_class = _UIActivityUserDefaultsViewController;
  [(_UIActivityUserDefaultsViewController *)&v101 viewDidLoad];
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom != 6 && (_ShareSheetSolariumEnabled() & 1) == 0)
  {
    v5 = [MEMORY[0x1E69DC730] effectWithStyle:9];
    v6 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:v5];
    [(_UIActivityUserDefaultsViewController *)self setBackgroundView:v6];
    backgroundView = [(_UIActivityUserDefaultsViewController *)self backgroundView];
    [backgroundView setTranslatesAutoresizingMaskIntoConstraints:0];

    view = [(_UIActivityUserDefaultsViewController *)self view];
    backgroundView2 = [(_UIActivityUserDefaultsViewController *)self backgroundView];
    [view addSubview:backgroundView2];
  }

  if (_ShareSheetSolariumEnabled())
  {
    view2 = [(_UIActivityUserDefaultsViewController *)self view];
    layer = [view2 layer];
    [layer setHitTestsAsOpaque:1];
  }

  v12 = objc_alloc(MEMORY[0x1E69DD020]);
  view3 = [(_UIActivityUserDefaultsViewController *)self view];
  [view3 bounds];
  v14 = [v12 initWithFrame:2 style:?];
  [(_UIActivityUserDefaultsViewController *)self setTableView:v14];

  tableView = [(_UIActivityUserDefaultsViewController *)self tableView];
  [tableView setTranslatesAutoresizingMaskIntoConstraints:0];

  if ((_ShareSheetSolariumEnabled() & 1) == 0)
  {
    tableView2 = [(_UIActivityUserDefaultsViewController *)self tableView];
    [tableView2 setBackgroundColor:0];
  }

  tableView3 = [(_UIActivityUserDefaultsViewController *)self tableView];
  [tableView3 setDelegate:self];

  tableView4 = [(_UIActivityUserDefaultsViewController *)self tableView];
  [tableView4 setAccessibilityIdentifier:@"tableView"];

  view4 = [(_UIActivityUserDefaultsViewController *)self view];
  tableView5 = [(_UIActivityUserDefaultsViewController *)self tableView];
  [view4 addSubview:tableView5];

  v21 = objc_opt_new();
  backgroundView3 = [(_UIActivityUserDefaultsViewController *)self backgroundView];

  if (backgroundView3)
  {
    backgroundView4 = [(_UIActivityUserDefaultsViewController *)self backgroundView];
    leadingAnchor = [backgroundView4 leadingAnchor];
    view5 = [(_UIActivityUserDefaultsViewController *)self view];
    leadingAnchor2 = [view5 leadingAnchor];
    v27 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [v21 addObject:v27];

    backgroundView5 = [(_UIActivityUserDefaultsViewController *)self backgroundView];
    trailingAnchor = [backgroundView5 trailingAnchor];
    view6 = [(_UIActivityUserDefaultsViewController *)self view];
    trailingAnchor2 = [view6 trailingAnchor];
    v32 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    [v21 addObject:v32];

    backgroundView6 = [(_UIActivityUserDefaultsViewController *)self backgroundView];
    topAnchor = [backgroundView6 topAnchor];
    view7 = [(_UIActivityUserDefaultsViewController *)self view];
    topAnchor2 = [view7 topAnchor];
    v37 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [v21 addObject:v37];

    backgroundView7 = [(_UIActivityUserDefaultsViewController *)self backgroundView];
    bottomAnchor = [backgroundView7 bottomAnchor];
    view8 = [(_UIActivityUserDefaultsViewController *)self view];
    bottomAnchor2 = [view8 bottomAnchor];
    v42 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    [v21 addObject:v42];
  }

  tableView6 = [(_UIActivityUserDefaultsViewController *)self tableView];
  widthAnchor = [tableView6 widthAnchor];
  view9 = [(_UIActivityUserDefaultsViewController *)self view];
  widthAnchor2 = [view9 widthAnchor];
  v47 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  [v21 addObject:v47];

  tableView7 = [(_UIActivityUserDefaultsViewController *)self tableView];
  heightAnchor = [tableView7 heightAnchor];
  view10 = [(_UIActivityUserDefaultsViewController *)self view];
  heightAnchor2 = [view10 heightAnchor];
  v52 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
  [v21 addObject:v52];

  tableView8 = [(_UIActivityUserDefaultsViewController *)self tableView];
  centerYAnchor = [tableView8 centerYAnchor];
  view11 = [(_UIActivityUserDefaultsViewController *)self view];
  centerYAnchor2 = [view11 centerYAnchor];
  v57 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  [v21 addObject:v57];

  tableView9 = [(_UIActivityUserDefaultsViewController *)self tableView];
  centerXAnchor = [tableView9 centerXAnchor];
  view12 = [(_UIActivityUserDefaultsViewController *)self view];
  centerXAnchor2 = [view12 centerXAnchor];
  v62 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [v21 addObject:v62];

  [MEMORY[0x1E696ACD8] activateConstraints:v21];
  tableView10 = [(_UIActivityUserDefaultsViewController *)self tableView];
  [tableView10 reloadData];

  if ([(_UIActivityUserDefaultsViewController *)self activityCategory]== 1)
  {
    v64 = @"AppsView";
  }

  else
  {
    if ([(_UIActivityUserDefaultsViewController *)self activityCategory])
    {
      goto LABEL_15;
    }

    v64 = @"ActionsView";
  }

  view13 = [(_UIActivityUserDefaultsViewController *)self view];
  [view13 setAccessibilityIdentifier:v64];

LABEL_15:
  v66 = *MEMORY[0x1E69DE3D0];
  tableView11 = [(_UIActivityUserDefaultsViewController *)self tableView];
  [tableView11 setRowHeight:v66];

  tableView12 = [(_UIActivityUserDefaultsViewController *)self tableView];
  [tableView12 setEstimatedRowHeight:52.0];

  if ((_ShareSheetSolariumEnabled() & 1) == 0)
  {
    tableView13 = [(_UIActivityUserDefaultsViewController *)self tableView];
    [tableView13 setSectionHeaderHeight:v66];

    tableView14 = [(_UIActivityUserDefaultsViewController *)self tableView];
    [tableView14 setEstimatedSectionHeaderHeight:30.0];
  }

  clearColor = [MEMORY[0x1E69DC888] clearColor];
  view14 = [(_UIActivityUserDefaultsViewController *)self view];
  [view14 setBackgroundColor:clearColor];

  activityCategory = [(_UIActivityUserDefaultsViewController *)self activityCategory];
  tableView15 = [(_UIActivityUserDefaultsViewController *)self tableView];
  [tableView15 setEditing:activityCategory == 0];

  v75 = objc_opt_new();
  tableView16 = [(_UIActivityUserDefaultsViewController *)self tableView];
  [tableView16 setTableFooterView:v75];

  tableView17 = [(_UIActivityUserDefaultsViewController *)self tableView];
  [tableView17 registerClass:objc_opt_class() forCellReuseIdentifier:@"userDefaultsCell"];

  v78 = objc_alloc(MEMORY[0x1E69DC708]);
  if (activityCategory)
  {
    v79 = [v78 initWithBarButtonSystemItem:2 target:self action:sel_editUserDefaults];
    navigationItem = [(_UIActivityUserDefaultsViewController *)self navigationItem];
    [navigationItem setRightBarButtonItem:v79];

    v81 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:self action:sel_dismissUserDefaults];
    navigationItem2 = [(_UIActivityUserDefaultsViewController *)self navigationItem];
    [navigationItem2 setLeftBarButtonItem:v81];
  }

  else
  {
    v81 = [v78 initWithBarButtonSystemItem:0 target:self action:sel_dismissUserDefaults];
    navigationItem2 = [(_UIActivityUserDefaultsViewController *)self navigationItem];
    [navigationItem2 setRightBarButtonItem:v81];
  }

  if ((_ShareSheetSolariumEnabled() & 1) == 0)
  {
    navigationItem3 = [(_UIActivityUserDefaultsViewController *)self navigationItem];
    [navigationItem3 _setManualScrollEdgeAppearanceEnabled:1];

    v84 = objc_alloc_init(MEMORY[0x1E69DCCC8]);
    [v84 configureWithTransparentBackground];
    separatorColor = [MEMORY[0x1E69DC888] separatorColor];
    [v84 setShadowColor:separatorColor];

    navigationItem4 = [(_UIActivityUserDefaultsViewController *)self navigationItem];
    [navigationItem4 setScrollEdgeAppearance:v84];

    v87 = objc_alloc_init(MEMORY[0x1E69DCCC8]);
    [v87 configureWithDefaultBackground];
    separatorColor2 = [MEMORY[0x1E69DC888] separatorColor];
    [v87 setShadowColor:separatorColor2];

    navigationItem5 = [(_UIActivityUserDefaultsViewController *)self navigationItem];
    [navigationItem5 setStandardAppearance:v87];

    navigationItem6 = [(_UIActivityUserDefaultsViewController *)self navigationItem];
    [navigationItem6 _setManualScrollEdgeAppearanceProgress:1.0];
  }

  objc_initWeak(&location, self);
  v91 = [_UIActivityUserDefaultsDataSource alloc];
  tableView18 = [(_UIActivityUserDefaultsViewController *)self tableView];
  v95 = MEMORY[0x1E69E9820];
  v96 = 3221225472;
  v97 = __52___UIActivityUserDefaultsViewController_viewDidLoad__block_invoke;
  v98 = &unk_1E71F9408;
  objc_copyWeak(&v99, &location);
  v93 = [(UITableViewDiffableDataSource *)v91 initWithTableView:tableView18 cellProvider:&v95];
  [(_UIActivityUserDefaultsViewController *)self setDiffableDataSource:v93, v95, v96, v97, v98];

  diffableDataSource = [(_UIActivityUserDefaultsViewController *)self diffableDataSource];
  [diffableDataSource setDataSourceProxy:self];

  [(_UIActivityUserDefaultsViewController *)self updateUserDefaultsAnimated:0];
  objc_destroyWeak(&v99);
  objc_destroyWeak(&location);
}

- (id)_provideCellForTableView:(id)view indexPath:(id)path itemIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9 = [view dequeueReusableCellWithIdentifier:@"userDefaultsCell" forIndexPath:path];
  if (!v9)
  {
    v9 = [[_UIActivityUserDefaultsActivityCell alloc] initWithStyle:0 reuseIdentifier:@"userDefaultsCell"];
  }

  text = 0x1E69DC000;
  secondarySystemGroupedBackgroundColor = [MEMORY[0x1E69DC888] secondarySystemGroupedBackgroundColor];
  contentView = [(_UIActivityUserDefaultsActivityCell *)v9 contentView];
  [contentView setBackgroundColor:secondarySystemGroupedBackgroundColor];

  secondarySystemGroupedBackgroundColor2 = [MEMORY[0x1E69DC888] secondarySystemGroupedBackgroundColor];
  [(_UIActivityUserDefaultsActivityCell *)v9 setBackgroundColor:secondarySystemGroupedBackgroundColor2];

  currentSnapshot = [(_UIActivityUserDefaultsViewController *)self currentSnapshot];
  v15 = [currentSnapshot sectionIdentifierForSectionContainingItemIdentifier:identifierCopy];

  if ([v15 isEqualToString:@"SHARE_SHEET_EDIT_SECTION_TITLE_FAVORITES"])
  {
    [(_UIActivityUserDefaultsViewController *)self favoritesByUUID];
  }

  else
  {
    [(_UIActivityUserDefaultsViewController *)self suggestionsByUUID];
  }
  v16 = ;
  v17 = [v16 objectForKeyedSubscript:identifierCopy];

  -[_UIActivityUserDefaultsActivityCell setDisabled:](v9, "setDisabled:", [v17 isDisabled]);
  [(_UIActivityUserDefaultsActivityCell *)v9 setActivityProxy:v17];
  activitiesByUUID = [(_UIActivityUserDefaultsViewController *)self activitiesByUUID];
  identifier = [v17 identifier];
  v20 = [activitiesByUUID objectForKeyedSubscript:identifier];

  v76 = v20;
  if (v20)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      _activityImageUTI = [v20 _activityImageUTI];

      if (!_activityImageUTI)
      {
        view = [(_UIActivityUserDefaultsViewController *)self view];
        traitCollection = [view traitCollection];
        [v20 setUserInterfaceStyle:{objc_msgSend(traitCollection, "userInterfaceStyle")}];

        _activitySettingsImage = [v20 _activitySettingsImage];
        activityImageView = [(_UIActivityUserDefaultsActivityCell *)v9 activityImageView];
        [activityImageView setImage:_activitySettingsImage];

        activityTitleLabel = [(_UIActivityUserDefaultsActivityCell *)v9 activityTitleLabel];
        [activityTitleLabel setAlpha:1.0];

        activityTitle = [v20 activityTitle];
        v66 = _convertToSingleLine(activityTitle);
        activityTitleLabel2 = [(_UIActivityUserDefaultsActivityCell *)v9 activityTitleLabel];
        [activityTitleLabel2 setText:v66];

        activityTitleLabel3 = [(_UIActivityUserDefaultsActivityCell *)v9 activityTitleLabel];
        [activityTitleLabel3 setNumberOfLines:0];

        activityTitleLabel4 = [(_UIActivityUserDefaultsActivityCell *)v9 activityTitleLabel];
        LODWORD(v69) = 0.5;
        [activityTitleLabel4 _setHyphenationFactor:v69];
        goto LABEL_25;
      }
    }
  }

  activityTitleLabel5 = [(_UIActivityUserDefaultsActivityCell *)v9 activityTitleLabel];
  [activityTitleLabel5 setAlpha:1.0];

  activityTitleLabel6 = [(_UIActivityUserDefaultsActivityCell *)v9 activityTitleLabel];
  [activityTitleLabel6 setNumberOfLines:0];

  activityTitleLabel7 = [(_UIActivityUserDefaultsActivityCell *)v9 activityTitleLabel];
  LODWORD(v25) = 0.5;
  [activityTitleLabel7 _setHyphenationFactor:v25];

  applicationBundleIdentifier = [v17 applicationBundleIdentifier];
  if (!applicationBundleIdentifier)
  {
    _activityImageUTI2 = [v20 _activityImageUTI];

    if (_activityImageUTI2)
    {
      goto LABEL_12;
    }

    activityTitleLabel8 = [(_UIActivityUserDefaultsActivityCell *)v9 activityTitleLabel];
    [activityTitleLabel8 setAlpha:0.0];

    activityTitleLabel9 = [(_UIActivityUserDefaultsActivityCell *)v9 activityTitleLabel];
    [activityTitleLabel9 setText:0];

    activityImageView2 = [(_UIActivityUserDefaultsActivityCell *)v9 activityImageView];
    [activityImageView2 setImage:0];

    iconImageSlotID = [v17 iconImageSlotID];
    activityTitle2 = [v17 activityTitle];
    slotIdentifier = [activityTitle2 slotIdentifier];

    traitCollection2 = [(_UIActivityUserDefaultsViewController *)self traitCollection];
    layoutDirection = [traitCollection2 layoutDirection];

    v51 = MEMORY[0x1E6979DF8];
    if (layoutDirection != 1)
    {
      v51 = MEMORY[0x1E6979DD8];
    }

    v52 = *v51;
    v53 = *MEMORY[0x1E69DDA98];
    v78[0] = MEMORY[0x1E69E9820];
    v78[1] = 3221225472;
    v78[2] = __91___UIActivityUserDefaultsViewController__provideCellForTableView_indexPath_itemIdentifier___block_invoke_3;
    v78[3] = &unk_1E71F9458;
    v81 = iconImageSlotID;
    v54 = v9;
    v82 = slotIdentifier;
    v79 = v54;
    v80 = v52;
    activityTitleLabel4 = v52;
    [v53 _performBlockAfterCATransactionCommits:v78];
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    cGColor = [labelColor CGColor];
    activityTitleView = [(_UIActivityUserDefaultsActivityCell *)v54 activityTitleView];
    layer = [activityTitleView layer];
    [layer setContentsMultiplyColor:cGColor];

LABEL_25:
    goto LABEL_26;
  }

LABEL_12:
  _activityImageUTI3 = [v20 _activityImageUTI];
  v75 = v15;
  if (_activityImageUTI3)
  {
    activityTitle3 = [v20 activityTitle];
    _convertToSingleLine(activityTitle3);
  }

  else
  {
    activityTitle3 = [v17 activityTitle];
    text = [activityTitle3 text];
    _convertToSingleLine(text);
  }
  v30 = ;
  selfCopy = self;
  activityTitleLabel10 = [(_UIActivityUserDefaultsActivityCell *)v9 activityTitleLabel];
  [activityTitleLabel10 setText:v30];

  if (!_activityImageUTI3)
  {

    v30 = text;
  }

  v32 = identifierCopy;

  v74 = v17;
  applicationBundleIdentifier2 = [v17 applicationBundleIdentifier];
  view2 = [(_UIActivityUserDefaultsViewController *)selfCopy view];
  traitCollection3 = [view2 traitCollection];
  preferredContentSizeCategory = [traitCollection3 preferredContentSizeCategory];

  view3 = [(_UIActivityUserDefaultsViewController *)selfCopy view];
  traitCollection4 = [view3 traitCollection];
  userInterfaceStyle = [traitCollection4 userInterfaceStyle];

  activityImageProvider = [(_UIActivityUserDefaultsViewController *)selfCopy activityImageProvider];
  if (_activityImageUTI3)
  {
    v86[0] = MEMORY[0x1E69E9820];
    v86[1] = 3221225472;
    v86[2] = __91___UIActivityUserDefaultsViewController__provideCellForTableView_indexPath_itemIdentifier___block_invoke;
    v86[3] = &unk_1E71F9430;
    v41 = &v87;
    v87 = v9;
    v42 = &v88;
    v88 = v32;
    [activityImageProvider requestImageForUTI:_activityImageUTI3 activityCategory:1 contentSizeCategory:preferredContentSizeCategory userInterfaceStyle:userInterfaceStyle iconFormat:0 synchronous:0 resultHandler:v86];
  }

  else
  {
    v83[0] = MEMORY[0x1E69E9820];
    v83[1] = 3221225472;
    v83[2] = __91___UIActivityUserDefaultsViewController__provideCellForTableView_indexPath_itemIdentifier___block_invoke_2;
    v83[3] = &unk_1E71F9430;
    v41 = &v84;
    v84 = v9;
    v42 = &v85;
    v85 = v32;
    [activityImageProvider requestImageForBundleIdentifier:applicationBundleIdentifier2 activityCategory:1 contentSizeCategory:preferredContentSizeCategory userInterfaceStyle:userInterfaceStyle iconFormat:0 synchronous:0 resultHandler:v83];
  }

  identifierCopy = v32;
  self = selfCopy;
  v17 = v74;
  v15 = v75;
LABEL_26:
  [(_UIActivityUserDefaultsViewController *)self configureSwitchForCell:v9 activityProxy:v17];
  if (![(_UIActivityUserDefaultsViewController *)self activityCategory])
  {
    imageViewWidthConstraint = [(_UIActivityUserDefaultsActivityCell *)v9 imageViewWidthConstraint];
    [imageViewWidthConstraint setConstant:0.0];

    imageViewLeadingConstraint = [(_UIActivityUserDefaultsActivityCell *)v9 imageViewLeadingConstraint];
    [imageViewLeadingConstraint setConstant:0.0];

    labelLeadingConstraint = [(_UIActivityUserDefaultsActivityCell *)v9 labelLeadingConstraint];
    [labelLeadingConstraint setConstant:0.0];
  }

  return v9;
}

- (void)updateUserDefaultsAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v77 = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(MEMORY[0x1E69955A0]);
  bundleIdentifier = [(_UIActivityUserDefaultsViewController *)self bundleIdentifier];
  if ([bundleIdentifier isEqualToString:@"com.apple.mobilesafari"])
  {
    v56 = 1;
  }

  else
  {
    v56 = [bundleIdentifier isEqualToString:@"com.apple.SafariViewService"];
  }

  activityCategory = [(_UIActivityUserDefaultsViewController *)self activityCategory];
  favoritesProxies = [(_UIActivityUserDefaultsViewController *)self favoritesProxies];
  v9 = [favoritesProxies count];

  if (activityCategory != 1)
  {
    v54 = animatedCopy;
    if (v9)
    {
      [v5 appendSectionsWithIdentifiers:&unk_1EFEC8AB8];
      favoritesProxies2 = [(_UIActivityUserDefaultsViewController *)self favoritesProxies];
      v17 = [favoritesProxies2 valueForKey:@"identifier"];
      [v5 appendItemsWithIdentifiers:v17 intoSectionWithIdentifier:@"SHARE_SHEET_EDIT_SECTION_TITLE_FAVORITES"];
    }

    [v5 appendSectionsWithIdentifiers:{&unk_1EFEC8AD0, bundleIdentifier}];
    [v5 appendSectionsWithIdentifiers:&unk_1EFEC8AE8];
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    obj = [(_UIActivityUserDefaultsViewController *)self suggestionProxies];
    v18 = [obj countByEnumeratingWithState:&v66 objects:v76 count:16];
    if (!v18)
    {
LABEL_41:

      animatedCopy = v54;
      bundleIdentifier = v53;
      goto LABEL_42;
    }

    v19 = v18;
    v20 = *v67;
    v55 = *v67;
LABEL_13:
    v21 = 0;
    while (1)
    {
      if (*v67 != v20)
      {
        objc_enumerationMutation(obj);
      }

      v22 = *(*(&v66 + 1) + 8 * v21);
      activitiesByUUID = [(_UIActivityUserDefaultsViewController *)self activitiesByUUID];
      identifier = [v22 identifier];
      v25 = [activitiesByUUID objectForKeyedSubscript:identifier];

      excludedActivityTypes = [(_UIActivityUserDefaultsViewController *)self excludedActivityTypes];
      activityType = [v25 activityType];
      v28 = [excludedActivityTypes containsObject:activityType];

      if (v28)
      {
        goto LABEL_39;
      }

      if (v56 && ([v25 activityType], v29 = objc_claimAutoreleasedReturnValue(), v30 = objc_msgSend(v29, "isEqualToString:", @"com.apple.UIKit.activity.AddToReadingList"), v29, v30))
      {
        identifier2 = [v22 identifier];
        v75 = identifier2;
        v32 = &v75;
      }

      else
      {
        v64 = 0u;
        v65 = 0u;
        v62 = 0u;
        v63 = 0u;
        v33 = +[_UIActivityHelper builtinActivityClasses];
        v34 = [v33 countByEnumeratingWithState:&v62 objects:v74 count:16];
        if (v34)
        {
          v35 = v34;
          v36 = *v63;
          while (2)
          {
            for (i = 0; i != v35; ++i)
            {
              if (*v63 != v36)
              {
                objc_enumerationMutation(v33);
              }

              if (objc_opt_isKindOfClass())
              {
                v38 = 0;
                goto LABEL_30;
              }
            }

            v35 = [v33 countByEnumeratingWithState:&v62 objects:v74 count:16];
            if (v35)
            {
              continue;
            }

            break;
          }

          v38 = 1;
LABEL_30:
          v20 = v55;
        }

        else
        {
          v38 = 1;
        }

        if (!v25 || (-[_UIActivityUserDefaultsViewController applicationActivityTypes](self, "applicationActivityTypes"), v39 = objc_claimAutoreleasedReturnValue(), [v25 activityType], v40 = objc_claimAutoreleasedReturnValue(), v41 = v38 & objc_msgSend(v39, "containsObject:", v40), v40, v39, v42 = v41 == 1, v20 = v55, !v42))
        {
          identifier2 = [v22 identifier];
          v72 = identifier2;
          v32 = &v72;
          v43 = @"SHARE_SHEET_EDIT_SECTION_TITLE_OTHER";
          goto LABEL_38;
        }

        identifier2 = [v22 identifier];
        v73 = identifier2;
        v32 = &v73;
      }

      v43 = @"App Actions";
LABEL_38:
      v44 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:1];
      [v5 appendItemsWithIdentifiers:v44 intoSectionWithIdentifier:v43];

LABEL_39:
      if (++v21 == v19)
      {
        v19 = [obj countByEnumeratingWithState:&v66 objects:v76 count:16];
        if (!v19)
        {
          goto LABEL_41;
        }

        goto LABEL_13;
      }
    }
  }

  if (v9)
  {
    [v5 appendSectionsWithIdentifiers:&unk_1EFEC8A88];
    favoritesProxies3 = [(_UIActivityUserDefaultsViewController *)self favoritesProxies];
    v11 = [favoritesProxies3 valueForKey:@"identifier"];
    [v5 appendItemsWithIdentifiers:v11 intoSectionWithIdentifier:@"SHARE_SHEET_EDIT_SECTION_TITLE_FAVORITES"];
  }

  suggestionProxies = [(_UIActivityUserDefaultsViewController *)self suggestionProxies];
  v13 = [suggestionProxies count];

  if (v13)
  {
    [v5 appendSectionsWithIdentifiers:&unk_1EFEC8AA0];
    suggestionProxies2 = [(_UIActivityUserDefaultsViewController *)self suggestionProxies];
    v15 = [suggestionProxies2 valueForKey:@"identifier"];
    [v5 appendItemsWithIdentifiers:v15 intoSectionWithIdentifier:@"SHARE_SHEET_EDIT_SECTION_TITLE_SUGGESTIONS"];
  }

LABEL_42:
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  sectionIdentifiers = [v5 sectionIdentifiers];
  v46 = [sectionIdentifiers countByEnumeratingWithState:&v58 objects:v71 count:16];
  if (v46)
  {
    v47 = v46;
    v48 = *v59;
    do
    {
      for (j = 0; j != v47; ++j)
      {
        if (*v59 != v48)
        {
          objc_enumerationMutation(sectionIdentifiers);
        }

        v50 = *(*(&v58 + 1) + 8 * j);
        if (![v5 numberOfItemsInSection:v50])
        {
          v70 = v50;
          v51 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v70 count:1];
          [v5 deleteSectionsWithIdentifiers:v51];
        }
      }

      v47 = [sectionIdentifiers countByEnumeratingWithState:&v58 objects:v71 count:16];
    }

    while (v47);
  }

  [(_UIActivityUserDefaultsViewController *)self setCurrentSnapshot:v5];
  diffableDataSource = [(_UIActivityUserDefaultsViewController *)self diffableDataSource];
  [diffableDataSource applySnapshot:v5 animatingDifferences:animatedCopy];
}

- (void)configureSwitchForCell:(id)cell activityProxy:(id)proxy
{
  cellCopy = cell;
  proxyCopy = proxy;
  favoritesByUUID = [(_UIActivityUserDefaultsViewController *)self favoritesByUUID];
  identifier = [proxyCopy identifier];
  v9 = [favoritesByUUID objectForKeyedSubscript:identifier];

  if (v9)
  {
    [cellCopy setEditingAccessoryView:0];
  }

  else
  {
    canHide = [proxyCopy canHide];
    editingAccessoryView = [cellCopy editingAccessoryView];
    if (!editingAccessoryView && canHide)
    {
      v12 = objc_alloc(MEMORY[0x1E69DCFD0]);
      editingAccessoryView = [v12 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
      [editingAccessoryView addTarget:self action:sel_toggleActivityHiddenForControl_ forControlEvents:4096];
      [cellCopy setEditingAccessoryView:editingAccessoryView];
    }

    if ((canHide & 1) == 0)
    {
      [cellCopy setEditingAccessoryView:0];
    }

    [editingAccessoryView setOn:{objc_msgSend(proxyCopy, "isHidden") ^ 1}];
  }
}

- (void)traitCollectionDidChange:(id)change
{
  v5.receiver = self;
  v5.super_class = _UIActivityUserDefaultsViewController;
  [(_UIActivityUserDefaultsViewController *)&v5 traitCollectionDidChange:change];
  tableView = [(_UIActivityUserDefaultsViewController *)self tableView];
  [tableView reloadData];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = _UIActivityUserDefaultsViewController;
  [(_UIActivityUserDefaultsViewController *)&v5 viewDidDisappear:disappear];
  userDefaultsDelegate = [(_UIActivityUserDefaultsViewController *)self userDefaultsDelegate];
  [userDefaultsDelegate userDefaultsViewControllerDidDisappear:self];
}

- (void)editUserDefaults
{
  tableView = [(_UIActivityUserDefaultsViewController *)self tableView];
  [tableView setEditing:1 animated:1];

  v4 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:self action:sel_doneEditingUserDefaults];
  navigationItem = [(_UIActivityUserDefaultsViewController *)self navigationItem];
  [navigationItem setRightBarButtonItem:v4];

  navigationItem2 = [(_UIActivityUserDefaultsViewController *)self navigationItem];
  [navigationItem2 setLeftBarButtonItem:0];
}

- (void)doneEditingUserDefaults
{
  tableView = [(_UIActivityUserDefaultsViewController *)self tableView];
  [tableView setEditing:0 animated:1];

  v4 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:2 target:self action:sel_editUserDefaults];
  navigationItem = [(_UIActivityUserDefaultsViewController *)self navigationItem];
  [navigationItem setRightBarButtonItem:v4];

  v7 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:self action:sel_dismissUserDefaults];
  navigationItem2 = [(_UIActivityUserDefaultsViewController *)self navigationItem];
  [navigationItem2 setLeftBarButtonItem:v7];
}

- (void)dismissUserDefaults
{
  [(_UIActivityUserDefaultsViewController *)self dismissViewControllerAnimated:1 completion:0];
  userDefaultsDelegate = [(_UIActivityUserDefaultsViewController *)self userDefaultsDelegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    userDefaultsDelegate2 = [(_UIActivityUserDefaultsViewController *)self userDefaultsDelegate];
    [userDefaultsDelegate2 userDefaultsViewControllerDidRequestDismissal:self];
  }
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  v10 = [view cellForRowAtIndexPath:pathCopy];
  userDefaultsDelegate = [(_UIActivityUserDefaultsViewController *)self userDefaultsDelegate];
  diffableDataSource = [(_UIActivityUserDefaultsViewController *)self diffableDataSource];
  v9 = [diffableDataSource itemIdentifierForIndexPath:pathCopy];

  [userDefaultsDelegate userDefaultsViewController:self didSelectActivityWithIdentifier:v9 activityCategory:-[_UIActivityUserDefaultsViewController activityCategory](self disabled:{"activityCategory"), objc_msgSend(v10, "isDisabled")}];
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  if (_ShareSheetSolariumEnabled())
  {
    v6 = 0;
  }

  else
  {
    v7 = [(_UIActivityUserDefaultsViewController *)self titleForSection:section];
    v8 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    [v8 setNumberOfLines:0];
    v9 = MEMORY[0x1E69DB878];
    v10 = *MEMORY[0x1E69DDDC8];
    v11 = [MEMORY[0x1E69DB880] defaultFontDescriptorWithTextStyle:*MEMORY[0x1E69DDDC8] addingSymbolicTraits:2 options:0];
    v12 = [v9 fontWithDescriptor:v11 size:0.0];

    v13 = [MEMORY[0x1E69DCA40] metricsForTextStyle:v10];
    v14 = [v13 scaledFontForFont:v12];
    [v8 setFont:v14];

    [v8 setText:v7];
    [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v8 setAccessibilityIdentifier:@"header.titleLabel"];
    v6 = objc_alloc_init(MEMORY[0x1E69DD250]);
    [v6 addSubview:v8];
    v15 = objc_opt_new();
    leadingAnchor = [v8 leadingAnchor];
    layoutMarginsGuide = [v6 layoutMarginsGuide];
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    v19 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [v15 addObject:v19];

    trailingAnchor = [v8 trailingAnchor];
    layoutMarginsGuide2 = [v6 layoutMarginsGuide];
    trailingAnchor2 = [layoutMarginsGuide2 trailingAnchor];
    v23 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    [v15 addObject:v23];

    topAnchor = [v8 topAnchor];
    topAnchor2 = [v6 topAnchor];
    v26 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:26.0];
    [v15 addObject:v26];

    bottomAnchor = [v8 bottomAnchor];
    bottomAnchor2 = [v6 bottomAnchor];
    v29 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-8.0];
    [v15 addObject:v29];

    [MEMORY[0x1E696ACD8] activateConstraints:v15];
  }

  return v6;
}

- (id)tableView:(id)view targetIndexPathForMoveFromRowAtIndexPath:(id)path toProposedIndexPath:(id)indexPath
{
  pathCopy = path;
  indexPathCopy = indexPath;
  section = [pathCopy section];
  if (section != [indexPathCopy section])
  {
    v12 = pathCopy;
    goto LABEL_5;
  }

  favoritesProxies = [(_UIActivityUserDefaultsViewController *)self favoritesProxies];
  v11 = [favoritesProxies objectAtIndexedSubscript:{objc_msgSend(indexPathCopy, "row")}];

  if ([v11 canMove])
  {

    v12 = indexPathCopy;
LABEL_5:
    v13 = v12;
    goto LABEL_7;
  }

  v13 = pathCopy;

LABEL_7:

  return v13;
}

- (void)tableView:(id)view moveRowAtIndexPath:(id)path toIndexPath:(id)indexPath
{
  indexPathCopy = indexPath;
  pathCopy = path;
  favoritesProxies = [(_UIActivityUserDefaultsViewController *)self favoritesProxies];
  v15 = [favoritesProxies mutableCopy];

  favoritesProxies2 = [(_UIActivityUserDefaultsViewController *)self favoritesProxies];
  v11 = [favoritesProxies2 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];

  v12 = [pathCopy row];
  [v15 removeObjectAtIndex:v12];
  v13 = [indexPathCopy row];

  [v15 insertObject:v11 atIndex:v13];
  [(_UIActivityUserDefaultsViewController *)self setFavoritesProxies:v15];
  [(_UIActivityUserDefaultsViewController *)self updateUserDefaultsAnimated:1];
  userDefaultsDelegate = [(_UIActivityUserDefaultsViewController *)self userDefaultsDelegate];
  [userDefaultsDelegate userDefaultsViewController:self didUpdateFavoritesProxies:v15 activityCategory:{-[_UIActivityUserDefaultsViewController activityCategory](self, "activityCategory")}];
}

- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path
{
  v63 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  pathCopy = path;
  if (style == 2)
  {
    diffableDataSource = [(_UIActivityUserDefaultsViewController *)self diffableDataSource];
    v40 = [diffableDataSource itemIdentifierForIndexPath:pathCopy];

    suggestionsByUUID = [(_UIActivityUserDefaultsViewController *)self suggestionsByUUID];
    v42 = [suggestionsByUUID objectForKeyedSubscript:v40];

    suggestionProxies = [(_UIActivityUserDefaultsViewController *)self suggestionProxies];
    v44 = [suggestionProxies mutableCopy];

    [v44 removeObject:v42];
    [(_UIActivityUserDefaultsViewController *)self setSuggestionProxies:v44];
    favoritesProxies = [(_UIActivityUserDefaultsViewController *)self favoritesProxies];
    v46 = [favoritesProxies arrayByAddingObject:v42];
    [(_UIActivityUserDefaultsViewController *)self setFavoritesProxies:v46];

    suggestionsByUUID2 = [(_UIActivityUserDefaultsViewController *)self suggestionsByUUID];
    identifier = [v42 identifier];
    [suggestionsByUUID2 removeObjectForKey:identifier];

    favoritesByUUID = [(_UIActivityUserDefaultsViewController *)self favoritesByUUID];
    identifier2 = [v42 identifier];
    [favoritesByUUID setObject:v42 forKeyedSubscript:identifier2];

    [(_UIActivityUserDefaultsViewController *)self updateUserDefaultsAnimated:1];
    identifier3 = [v42 identifier];
    v52 = [(_UIActivityUserDefaultsViewController *)self cellForItemIdentifier:identifier3];
    [(_UIActivityUserDefaultsViewController *)self configureSwitchForCell:v52 activityProxy:v42];

    userDefaultsDelegate = [(_UIActivityUserDefaultsViewController *)self userDefaultsDelegate];
    identifier4 = [v42 identifier];
    [userDefaultsDelegate userDefaultsViewController:self didFavoriteActivity:1 withIdentifier:identifier4 activityCategory:{-[_UIActivityUserDefaultsViewController activityCategory](self, "activityCategory")}];
  }

  else if (style == 1)
  {
    v57 = viewCopy;
    favoritesByUUID2 = [(_UIActivityUserDefaultsViewController *)self favoritesByUUID];
    diffableDataSource2 = [(_UIActivityUserDefaultsViewController *)self diffableDataSource];
    v12 = [diffableDataSource2 itemIdentifierForIndexPath:pathCopy];
    v13 = [favoritesByUUID2 objectForKeyedSubscript:v12];

    favoritesProxies2 = [(_UIActivityUserDefaultsViewController *)self favoritesProxies];
    v15 = [favoritesProxies2 mutableCopy];

    v56 = pathCopy;
    [v15 removeObjectAtIndex:{objc_msgSend(pathCopy, "row")}];
    v55 = v15;
    [(_UIActivityUserDefaultsViewController *)self setFavoritesProxies:v15];
    favoritesByUUID3 = [(_UIActivityUserDefaultsViewController *)self favoritesByUUID];
    identifier5 = [v13 identifier];
    [favoritesByUUID3 removeObjectForKey:identifier5];

    v18 = objc_opt_new();
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    orderedUUIDs = [(_UIActivityUserDefaultsViewController *)self orderedUUIDs];
    v20 = [orderedUUIDs countByEnumeratingWithState:&v58 objects:v62 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v59;
      do
      {
        v23 = 0;
        do
        {
          if (*v59 != v22)
          {
            objc_enumerationMutation(orderedUUIDs);
          }

          v24 = *(*(&v58 + 1) + 8 * v23);
          favoritesByUUID4 = [(_UIActivityUserDefaultsViewController *)self favoritesByUUID];
          v26 = [favoritesByUUID4 objectForKeyedSubscript:v24];

          if (!v26)
          {
            identifier6 = [v13 identifier];
            v28 = [v24 isEqual:identifier6];

            if (v28)
            {
              [v18 addObject:v13];
            }

            else
            {
              suggestionsByUUID3 = [(_UIActivityUserDefaultsViewController *)self suggestionsByUUID];
              v30 = [suggestionsByUUID3 objectForKeyedSubscript:v24];

              if (v30)
              {
                suggestionsByUUID4 = [(_UIActivityUserDefaultsViewController *)self suggestionsByUUID];
                v32 = [suggestionsByUUID4 objectForKeyedSubscript:v24];
                [v18 addObject:v32];
              }
            }
          }

          ++v23;
        }

        while (v21 != v23);
        v21 = [orderedUUIDs countByEnumeratingWithState:&v58 objects:v62 count:16];
      }

      while (v21);
    }

    [(_UIActivityUserDefaultsViewController *)self setSuggestionProxies:v18];
    suggestionsByUUID5 = [(_UIActivityUserDefaultsViewController *)self suggestionsByUUID];
    identifier7 = [v13 identifier];
    [suggestionsByUUID5 setObject:v13 forKeyedSubscript:identifier7];

    [(_UIActivityUserDefaultsViewController *)self updateUserDefaultsAnimated:1];
    identifier8 = [v13 identifier];
    v36 = [(_UIActivityUserDefaultsViewController *)self cellForItemIdentifier:identifier8];
    [(_UIActivityUserDefaultsViewController *)self configureSwitchForCell:v36 activityProxy:v13];

    userDefaultsDelegate2 = [(_UIActivityUserDefaultsViewController *)self userDefaultsDelegate];
    identifier9 = [v13 identifier];
    [userDefaultsDelegate2 userDefaultsViewController:self didFavoriteActivity:0 withIdentifier:identifier9 activityCategory:{-[_UIActivityUserDefaultsViewController activityCategory](self, "activityCategory")}];

    pathCopy = v56;
    viewCopy = v57;
  }
}

- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path
{
  pathCopy = path;
  currentSnapshot = [(_UIActivityUserDefaultsViewController *)self currentSnapshot];
  sectionIdentifiers = [currentSnapshot sectionIdentifiers];
  v8 = [sectionIdentifiers objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];

  if ([v8 isEqualToString:@"SHARE_SHEET_EDIT_SECTION_TITLE_FAVORITES"])
  {
    favoritesByUUID = [(_UIActivityUserDefaultsViewController *)self favoritesByUUID];
    diffableDataSource = [(_UIActivityUserDefaultsViewController *)self diffableDataSource];
    v11 = [diffableDataSource itemIdentifierForIndexPath:pathCopy];
    v12 = [favoritesByUUID objectForKeyedSubscript:v11];

    canEdit = [v12 canEdit];
  }

  else
  {
    canEdit = 2;
  }

  return canEdit;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  if (_ShareSheetSolariumEnabled())
  {
    v6 = [(_UIActivityUserDefaultsViewController *)self titleForSection:section];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)tableView:(id)view shouldIndentWhileEditingRowAtIndexPath:(id)path
{
  pathCopy = path;
  currentSnapshot = [(_UIActivityUserDefaultsViewController *)self currentSnapshot];
  sectionIdentifiers = [currentSnapshot sectionIdentifiers];
  v8 = [sectionIdentifiers objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];

  if ([v8 isEqualToString:@"SHARE_SHEET_EDIT_SECTION_TITLE_FAVORITES"])
  {
    favoritesByUUID = [(_UIActivityUserDefaultsViewController *)self favoritesByUUID];
    diffableDataSource = [(_UIActivityUserDefaultsViewController *)self diffableDataSource];
    v11 = [diffableDataSource itemIdentifierForIndexPath:pathCopy];
    v12 = [favoritesByUUID objectForKeyedSubscript:v11];

    if ([v12 canEdit])
    {
      canMove = [v12 canMove];
    }

    else
    {
      canMove = 0;
    }
  }

  else
  {
    canMove = [(_UIActivityUserDefaultsViewController *)self activityCategory]== 1;
  }

  return canMove;
}

- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path
{
  pathCopy = path;
  activities = [(_UIActivityUserDefaultsViewController *)self activities];

  if (activities)
  {
    v7 = [(_UIActivityUserDefaultsViewController *)self activityForRowAtIndexPath:pathCopy];
    activityType = [v7 activityType];
    if ([activityType isEqualToString:@"com.apple.UIKit.activity.AirDrop"])
    {
      LOBYTE(v9) = 0;
    }

    else
    {
      activityType2 = [v7 activityType];
      v9 = [activityType2 isEqualToString:@"com.apple.UIKit.activity.Share"] ^ 1;
    }
  }

  else
  {
    LOBYTE(v9) = 1;
  }

  return v9;
}

- (BOOL)tableView:(id)view canMoveRowAtIndexPath:(id)path
{
  pathCopy = path;
  currentSnapshot = [(_UIActivityUserDefaultsViewController *)self currentSnapshot];
  sectionIdentifiers = [currentSnapshot sectionIdentifiers];
  v8 = [sectionIdentifiers objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];

  if ([v8 isEqualToString:@"SHARE_SHEET_EDIT_SECTION_TITLE_FAVORITES"] && (-[_UIActivityUserDefaultsViewController favoritesProxies](self, "favoritesProxies"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "count"), v9, v10 >= 2))
  {
    favoritesProxies = [(_UIActivityUserDefaultsViewController *)self favoritesProxies];
    v12 = [favoritesProxies objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];

    canMove = [v12 canMove];
  }

  else
  {
    canMove = 0;
  }

  return canMove;
}

- (void)tableView:(id)view didHighlightRowAtIndexPath:(id)path
{
  v7 = [view cellForRowAtIndexPath:path];
  tableCellDefaultSelectionTintColor = [MEMORY[0x1E69DC888] tableCellDefaultSelectionTintColor];
  contentView = [v7 contentView];
  [contentView setBackgroundColor:tableCellDefaultSelectionTintColor];

  tableCellDefaultSelectionTintColor2 = [MEMORY[0x1E69DC888] tableCellDefaultSelectionTintColor];
  [v7 setBackgroundColor:tableCellDefaultSelectionTintColor2];
}

- (void)tableView:(id)view didUnhighlightRowAtIndexPath:(id)path
{
  v7 = [view cellForRowAtIndexPath:path];
  secondarySystemGroupedBackgroundColor = [MEMORY[0x1E69DC888] secondarySystemGroupedBackgroundColor];
  contentView = [v7 contentView];
  [contentView setBackgroundColor:secondarySystemGroupedBackgroundColor];

  secondarySystemGroupedBackgroundColor2 = [MEMORY[0x1E69DC888] secondarySystemGroupedBackgroundColor];
  [v7 setBackgroundColor:secondarySystemGroupedBackgroundColor2];
}

- (id)tableView:(id)view titleForDeleteConfirmationButtonForRowAtIndexPath:(id)path
{
  v4 = _ShareSheetBundle();
  v5 = [v4 localizedStringForKey:@"SHARE_SHEET_DEFAULTS_REMOVE_BUTTON_TITLE" value:&stru_1EFE999E0 table:@"Localizable"];

  return v5;
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  if ((_ShareSheetSolariumEnabled() & 1) == 0)
  {
    tableView = [(_UIActivityUserDefaultsViewController *)self tableView];
    if (tableView == scrollCopy)
    {
      v5 = dyld_program_sdk_at_least();

      if (!v5)
      {
        goto LABEL_8;
      }

      navigationController = [(_UIActivityUserDefaultsViewController *)self navigationController];
      navigationBar = [navigationController navigationBar];
      [navigationBar frame];
      v9 = v8;

      [scrollCopy contentOffset];
      v10 = 0.0;
      if (v11 > -v9)
      {
        [scrollCopy contentOffset];
        v10 = fmin((v9 + v12) * 10.0, 100.0) / 100.0;
      }

      tableView = [(_UIActivityUserDefaultsViewController *)self navigationItem];
      [tableView _setManualScrollEdgeAppearanceProgress:v10];
    }
  }

LABEL_8:
}

- (id)cellForItemIdentifier:(id)identifier
{
  identifierCopy = identifier;
  tableView = [(_UIActivityUserDefaultsViewController *)self tableView];
  diffableDataSource = [(_UIActivityUserDefaultsViewController *)self diffableDataSource];
  v7 = [diffableDataSource indexPathForItemIdentifier:identifierCopy];

  v8 = [tableView cellForRowAtIndexPath:v7];

  return v8;
}

- (id)activityForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v5 = [pathCopy row];
  activities = [(_UIActivityUserDefaultsViewController *)self activities];
  v7 = [activities count];

  if (v5 >= v7)
  {
    v9 = 0;
  }

  else
  {
    activities2 = [(_UIActivityUserDefaultsViewController *)self activities];
    v9 = [activities2 objectAtIndex:{objc_msgSend(pathCopy, "row")}];
  }

  return v9;
}

- (void)toggleActivityHiddenForControl:(id)control
{
  controlCopy = control;
  tableView = [(_UIActivityUserDefaultsViewController *)self tableView];
  [controlCopy bounds];
  [tableView convertPoint:controlCopy fromView:?];
  v7 = v6;
  v9 = v8;

  tableView2 = [(_UIActivityUserDefaultsViewController *)self tableView];
  v16 = [tableView2 indexPathForRowAtPoint:{v7, v9}];

  diffableDataSource = [(_UIActivityUserDefaultsViewController *)self diffableDataSource];
  v12 = [diffableDataSource itemIdentifierForIndexPath:v16];

  suggestionsByUUID = [(_UIActivityUserDefaultsViewController *)self suggestionsByUUID];
  v14 = [suggestionsByUUID objectForKeyedSubscript:v12];

  [v14 setIsHidden:{objc_msgSend(v14, "isHidden") ^ 1}];
  userDefaultsDelegate = [(_UIActivityUserDefaultsViewController *)self userDefaultsDelegate];
  [userDefaultsDelegate userDefaultsViewController:self didToggleActivityWithIdentifier:v12 activityCategory:{-[_UIActivityUserDefaultsViewController activityCategory](self, "activityCategory")}];
}

- (void)toggleActivityHiddenForRowAtIndexPath:(id)path
{
  v4 = [(_UIActivityUserDefaultsViewController *)self activityForRowAtIndexPath:path];
  if (v4)
  {
    v8 = v4;
    userDefaults = [(_UIActivityUserDefaultsViewController *)self userDefaults];
    v6 = [userDefaults activityIsHidden:v8];

    userDefaults2 = [(_UIActivityUserDefaultsViewController *)self userDefaults];
    [userDefaults2 setActivity:v8 asHidden:v6 ^ 1u];

    v4 = v8;
  }
}

- (int64_t)preferredActivityCategory
{
  activities = [(_UIActivityUserDefaultsViewController *)self activities];
  firstObject = [activities firstObject];

  activityCategory = [objc_opt_class() activityCategory];
  return activityCategory;
}

- (id)titleForSection:(int64_t)section
{
  currentSnapshot = [(_UIActivityUserDefaultsViewController *)self currentSnapshot];
  sectionIdentifiers = [currentSnapshot sectionIdentifiers];
  v7 = [sectionIdentifiers objectAtIndexedSubscript:section];

  if (![v7 isEqualToString:@"App Actions"])
  {
    childViewControllers = _ShareSheetBundle();
    v9 = [childViewControllers localizedStringForKey:v7 value:&stru_1EFE999E0 table:@"Localizable"];
    goto LABEL_10;
  }

  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  v9 = [mainBundle objectForInfoDictionaryKey:@"CFBundleDisplayName"];

  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  keyWindow = [mEMORY[0x1E69DC668] keyWindow];
  rootViewController = [keyWindow rootViewController];
  childViewControllers = [rootViewController childViewControllers];

  if (![childViewControllers count])
  {
    goto LABEL_10;
  }

  v14 = [childViewControllers objectAtIndexedSubscript:0];
  _hostApplicationBundleIdentifier = [v14 _hostApplicationBundleIdentifier];
  if (_hostApplicationBundleIdentifier)
  {
    bundleIdentifier = _hostApplicationBundleIdentifier;

    goto LABEL_7;
  }

  bundleIdentifier = [(_UIActivityUserDefaultsViewController *)self bundleIdentifier];

  if (bundleIdentifier)
  {
LABEL_7:
    if ([bundleIdentifier length])
    {
      v17 = [MEMORY[0x1E69635E0] applicationProxyForIdentifier:bundleIdentifier];
      v18 = [v17 localizedNameForContext:0];

      v9 = v18;
    }
  }

LABEL_10:

  return v9;
}

- (_UIActivityUserDefaultsViewControllerDelegate)userDefaultsDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_userDefaultsDelegate);

  return WeakRetained;
}

@end