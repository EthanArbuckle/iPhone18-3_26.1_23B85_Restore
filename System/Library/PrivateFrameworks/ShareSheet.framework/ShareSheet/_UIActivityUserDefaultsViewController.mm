@interface _UIActivityUserDefaultsViewController
- (BOOL)tableView:(id)a3 canEditRowAtIndexPath:(id)a4;
- (BOOL)tableView:(id)a3 canMoveRowAtIndexPath:(id)a4;
- (BOOL)tableView:(id)a3 shouldIndentWhileEditingRowAtIndexPath:(id)a4;
- (_UIActivityUserDefaultsViewController)initWithActivities:(id)a3 userDefaults:(id)a4;
- (_UIActivityUserDefaultsViewController)initWithFavoritesProxies:(id)a3 suggestionProxies:(id)a4 activitiesByUUID:(id)a5 applicationActivityTypes:(id)a6 orderedUUIDs:(id)a7 excludedActivityTypes:(id)a8 activityCategory:(int64_t)a9 isPresentedModally:(BOOL)a10;
- (_UIActivityUserDefaultsViewControllerDelegate)userDefaultsDelegate;
- (id)_provideCellForTableView:(id)a3 indexPath:(id)a4 itemIdentifier:(id)a5;
- (id)activityForRowAtIndexPath:(id)a3;
- (id)cellForItemIdentifier:(id)a3;
- (id)tableView:(id)a3 targetIndexPathForMoveFromRowAtIndexPath:(id)a4 toProposedIndexPath:(id)a5;
- (id)tableView:(id)a3 titleForDeleteConfirmationButtonForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (id)titleForSection:(int64_t)a3;
- (int64_t)preferredActivityCategory;
- (int64_t)tableView:(id)a3 editingStyleForRowAtIndexPath:(id)a4;
- (void)configureSwitchForCell:(id)a3 activityProxy:(id)a4;
- (void)dismissUserDefaults;
- (void)doneEditingUserDefaults;
- (void)editUserDefaults;
- (void)scrollViewDidScroll:(id)a3;
- (void)setHostAuditToken:(id)a3;
- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5;
- (void)tableView:(id)a3 didHighlightRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 didUnhighlightRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 moveRowAtIndexPath:(id)a4 toIndexPath:(id)a5;
- (void)toggleActivityHiddenForControl:(id)a3;
- (void)toggleActivityHiddenForRowAtIndexPath:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateUserDefaultsAnimated:(BOOL)a3;
- (void)updateWithFavoritesProxies:(id)a3 suggestionProxies:(id)a4 activitiesByUUID:(id)a5 applicationActivityTypes:(id)a6 orderedUUIDs:(id)a7 excludedActivityTypes:(id)a8;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation _UIActivityUserDefaultsViewController

- (_UIActivityUserDefaultsViewController)initWithActivities:(id)a3 userDefaults:(id)a4
{
  v6 = a3;
  v7 = a4;
  v19.receiver = self;
  v19.super_class = _UIActivityUserDefaultsViewController;
  v8 = [(_UIActivityUserDefaultsViewController *)&v19 initWithNibName:0 bundle:0];
  if (v8)
  {
    v9 = [MEMORY[0x1E696AAE8] mainBundle];
    v10 = [v9 bundleIdentifier];
    bundleIdentifier = v8->_bundleIdentifier;
    v8->_bundleIdentifier = v10;

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

    if (v7)
    {
      v16 = [v7 activitiesOrderedByUserActivityOrderForActivities:v6];

      v6 = v16;
    }

    [(_UIActivityUserDefaultsViewController *)v8 setActivities:v6];
    [(_UIActivityUserDefaultsViewController *)v8 setUserDefaults:v7];
    [(_UIActivityUserDefaultsViewController *)v8 setPreferredContentSize:0.0, 184.0];
    v17 = v8;
  }

  return v8;
}

- (_UIActivityUserDefaultsViewController)initWithFavoritesProxies:(id)a3 suggestionProxies:(id)a4 activitiesByUUID:(id)a5 applicationActivityTypes:(id)a6 orderedUUIDs:(id)a7 excludedActivityTypes:(id)a8 activityCategory:(int64_t)a9 isPresentedModally:(BOOL)a10
{
  v62 = *MEMORY[0x1E69E9840];
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = [(_UIActivityUserDefaultsViewController *)self initWithActivities:0 userDefaults:0];
  v23 = v22;
  if (v22)
  {
    v48 = v21;
    v49 = v20;
    v50 = v19;
    v51 = v18;
    [(_UIActivityUserDefaultsViewController *)v22 setFavoritesProxies:v16];
    v24 = objc_opt_new();
    [(_UIActivityUserDefaultsViewController *)v23 setFavoritesByUUID:v24];

    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v25 = v16;
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
          v31 = [(_UIActivityUserDefaultsViewController *)v23 favoritesByUUID];
          v32 = [v30 identifier];
          [v31 setObject:v30 forKey:v32];
        }

        v27 = [v25 countByEnumeratingWithState:&v56 objects:v61 count:16];
      }

      while (v27);
    }

    [(_UIActivityUserDefaultsViewController *)v23 setSuggestionProxies:v17];
    v33 = objc_opt_new();
    [(_UIActivityUserDefaultsViewController *)v23 setSuggestionsByUUID:v33];

    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v34 = v17;
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
          v40 = [(_UIActivityUserDefaultsViewController *)v23 suggestionsByUUID];
          v41 = [v39 identifier];
          [v40 setObject:v39 forKey:v41];
        }

        v36 = [v34 countByEnumeratingWithState:&v52 objects:v60 count:16];
      }

      while (v36);
    }

    v18 = v51;
    [(_UIActivityUserDefaultsViewController *)v23 setActivitiesByUUID:v51];
    [(_UIActivityUserDefaultsViewController *)v23 setActivityCategory:a9];
    v19 = v50;
    [(_UIActivityUserDefaultsViewController *)v23 setApplicationActivityTypes:v50];
    v20 = v49;
    [(_UIActivityUserDefaultsViewController *)v23 setOrderedUUIDs:v49];
    v21 = v48;
    [(_UIActivityUserDefaultsViewController *)v23 setExcludedActivityTypes:v48];
    [(_UIActivityUserDefaultsViewController *)v23 setIsPresentedModally:a10];
    if (a9 == 1)
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

- (void)updateWithFavoritesProxies:(id)a3 suggestionProxies:(id)a4 activitiesByUUID:(id)a5 applicationActivityTypes:(id)a6 orderedUUIDs:(id)a7 excludedActivityTypes:(id)a8
{
  v48 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v37 = a5;
  v36 = a6;
  v35 = a7;
  v16 = a8;
  [(_UIActivityUserDefaultsViewController *)self setFavoritesProxies:v14];
  v17 = objc_opt_new();
  [(_UIActivityUserDefaultsViewController *)self setFavoritesByUUID:v17];

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v18 = v14;
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
        v24 = [(_UIActivityUserDefaultsViewController *)self favoritesByUUID];
        v25 = [v23 identifier];
        [v24 setObject:v23 forKey:v25];

        ++v22;
      }

      while (v20 != v22);
      v20 = [v18 countByEnumeratingWithState:&v42 objects:v47 count:16];
    }

    while (v20);
  }

  [(_UIActivityUserDefaultsViewController *)self setSuggestionProxies:v15];
  v26 = objc_opt_new();
  [(_UIActivityUserDefaultsViewController *)self setSuggestionsByUUID:v26];

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v27 = v15;
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
        v33 = [(_UIActivityUserDefaultsViewController *)self suggestionsByUUID];
        v34 = [v32 identifier];
        [v33 setObject:v32 forKey:v34];

        ++v31;
      }

      while (v29 != v31);
      v29 = [v27 countByEnumeratingWithState:&v38 objects:v46 count:16];
    }

    while (v29);
  }

  [(_UIActivityUserDefaultsViewController *)self setActivitiesByUUID:v37];
  [(_UIActivityUserDefaultsViewController *)self setApplicationActivityTypes:v36];
  [(_UIActivityUserDefaultsViewController *)self setOrderedUUIDs:v35];
  [(_UIActivityUserDefaultsViewController *)self setExcludedActivityTypes:v16];
  [(_UIActivityUserDefaultsViewController *)self updateUserDefaultsAnimated:0];
}

- (void)setHostAuditToken:(id)a3
{
  v5 = a3;
  if (self->_hostAuditToken != v5)
  {
    objc_storeStrong(&self->_hostAuditToken, a3);
    if (v5)
    {
      [(BSAuditToken *)v5 realToken:0];
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
  v3 = [MEMORY[0x1E69DC938] currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if (v4 != 6 && (_ShareSheetSolariumEnabled() & 1) == 0)
  {
    v5 = [MEMORY[0x1E69DC730] effectWithStyle:9];
    v6 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:v5];
    [(_UIActivityUserDefaultsViewController *)self setBackgroundView:v6];
    v7 = [(_UIActivityUserDefaultsViewController *)self backgroundView];
    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];

    v8 = [(_UIActivityUserDefaultsViewController *)self view];
    v9 = [(_UIActivityUserDefaultsViewController *)self backgroundView];
    [v8 addSubview:v9];
  }

  if (_ShareSheetSolariumEnabled())
  {
    v10 = [(_UIActivityUserDefaultsViewController *)self view];
    v11 = [v10 layer];
    [v11 setHitTestsAsOpaque:1];
  }

  v12 = objc_alloc(MEMORY[0x1E69DD020]);
  v13 = [(_UIActivityUserDefaultsViewController *)self view];
  [v13 bounds];
  v14 = [v12 initWithFrame:2 style:?];
  [(_UIActivityUserDefaultsViewController *)self setTableView:v14];

  v15 = [(_UIActivityUserDefaultsViewController *)self tableView];
  [v15 setTranslatesAutoresizingMaskIntoConstraints:0];

  if ((_ShareSheetSolariumEnabled() & 1) == 0)
  {
    v16 = [(_UIActivityUserDefaultsViewController *)self tableView];
    [v16 setBackgroundColor:0];
  }

  v17 = [(_UIActivityUserDefaultsViewController *)self tableView];
  [v17 setDelegate:self];

  v18 = [(_UIActivityUserDefaultsViewController *)self tableView];
  [v18 setAccessibilityIdentifier:@"tableView"];

  v19 = [(_UIActivityUserDefaultsViewController *)self view];
  v20 = [(_UIActivityUserDefaultsViewController *)self tableView];
  [v19 addSubview:v20];

  v21 = objc_opt_new();
  v22 = [(_UIActivityUserDefaultsViewController *)self backgroundView];

  if (v22)
  {
    v23 = [(_UIActivityUserDefaultsViewController *)self backgroundView];
    v24 = [v23 leadingAnchor];
    v25 = [(_UIActivityUserDefaultsViewController *)self view];
    v26 = [v25 leadingAnchor];
    v27 = [v24 constraintEqualToAnchor:v26];
    [v21 addObject:v27];

    v28 = [(_UIActivityUserDefaultsViewController *)self backgroundView];
    v29 = [v28 trailingAnchor];
    v30 = [(_UIActivityUserDefaultsViewController *)self view];
    v31 = [v30 trailingAnchor];
    v32 = [v29 constraintEqualToAnchor:v31];
    [v21 addObject:v32];

    v33 = [(_UIActivityUserDefaultsViewController *)self backgroundView];
    v34 = [v33 topAnchor];
    v35 = [(_UIActivityUserDefaultsViewController *)self view];
    v36 = [v35 topAnchor];
    v37 = [v34 constraintEqualToAnchor:v36];
    [v21 addObject:v37];

    v38 = [(_UIActivityUserDefaultsViewController *)self backgroundView];
    v39 = [v38 bottomAnchor];
    v40 = [(_UIActivityUserDefaultsViewController *)self view];
    v41 = [v40 bottomAnchor];
    v42 = [v39 constraintEqualToAnchor:v41];
    [v21 addObject:v42];
  }

  v43 = [(_UIActivityUserDefaultsViewController *)self tableView];
  v44 = [v43 widthAnchor];
  v45 = [(_UIActivityUserDefaultsViewController *)self view];
  v46 = [v45 widthAnchor];
  v47 = [v44 constraintEqualToAnchor:v46];
  [v21 addObject:v47];

  v48 = [(_UIActivityUserDefaultsViewController *)self tableView];
  v49 = [v48 heightAnchor];
  v50 = [(_UIActivityUserDefaultsViewController *)self view];
  v51 = [v50 heightAnchor];
  v52 = [v49 constraintEqualToAnchor:v51];
  [v21 addObject:v52];

  v53 = [(_UIActivityUserDefaultsViewController *)self tableView];
  v54 = [v53 centerYAnchor];
  v55 = [(_UIActivityUserDefaultsViewController *)self view];
  v56 = [v55 centerYAnchor];
  v57 = [v54 constraintEqualToAnchor:v56];
  [v21 addObject:v57];

  v58 = [(_UIActivityUserDefaultsViewController *)self tableView];
  v59 = [v58 centerXAnchor];
  v60 = [(_UIActivityUserDefaultsViewController *)self view];
  v61 = [v60 centerXAnchor];
  v62 = [v59 constraintEqualToAnchor:v61];
  [v21 addObject:v62];

  [MEMORY[0x1E696ACD8] activateConstraints:v21];
  v63 = [(_UIActivityUserDefaultsViewController *)self tableView];
  [v63 reloadData];

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

  v65 = [(_UIActivityUserDefaultsViewController *)self view];
  [v65 setAccessibilityIdentifier:v64];

LABEL_15:
  v66 = *MEMORY[0x1E69DE3D0];
  v67 = [(_UIActivityUserDefaultsViewController *)self tableView];
  [v67 setRowHeight:v66];

  v68 = [(_UIActivityUserDefaultsViewController *)self tableView];
  [v68 setEstimatedRowHeight:52.0];

  if ((_ShareSheetSolariumEnabled() & 1) == 0)
  {
    v69 = [(_UIActivityUserDefaultsViewController *)self tableView];
    [v69 setSectionHeaderHeight:v66];

    v70 = [(_UIActivityUserDefaultsViewController *)self tableView];
    [v70 setEstimatedSectionHeaderHeight:30.0];
  }

  v71 = [MEMORY[0x1E69DC888] clearColor];
  v72 = [(_UIActivityUserDefaultsViewController *)self view];
  [v72 setBackgroundColor:v71];

  v73 = [(_UIActivityUserDefaultsViewController *)self activityCategory];
  v74 = [(_UIActivityUserDefaultsViewController *)self tableView];
  [v74 setEditing:v73 == 0];

  v75 = objc_opt_new();
  v76 = [(_UIActivityUserDefaultsViewController *)self tableView];
  [v76 setTableFooterView:v75];

  v77 = [(_UIActivityUserDefaultsViewController *)self tableView];
  [v77 registerClass:objc_opt_class() forCellReuseIdentifier:@"userDefaultsCell"];

  v78 = objc_alloc(MEMORY[0x1E69DC708]);
  if (v73)
  {
    v79 = [v78 initWithBarButtonSystemItem:2 target:self action:sel_editUserDefaults];
    v80 = [(_UIActivityUserDefaultsViewController *)self navigationItem];
    [v80 setRightBarButtonItem:v79];

    v81 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:self action:sel_dismissUserDefaults];
    v82 = [(_UIActivityUserDefaultsViewController *)self navigationItem];
    [v82 setLeftBarButtonItem:v81];
  }

  else
  {
    v81 = [v78 initWithBarButtonSystemItem:0 target:self action:sel_dismissUserDefaults];
    v82 = [(_UIActivityUserDefaultsViewController *)self navigationItem];
    [v82 setRightBarButtonItem:v81];
  }

  if ((_ShareSheetSolariumEnabled() & 1) == 0)
  {
    v83 = [(_UIActivityUserDefaultsViewController *)self navigationItem];
    [v83 _setManualScrollEdgeAppearanceEnabled:1];

    v84 = objc_alloc_init(MEMORY[0x1E69DCCC8]);
    [v84 configureWithTransparentBackground];
    v85 = [MEMORY[0x1E69DC888] separatorColor];
    [v84 setShadowColor:v85];

    v86 = [(_UIActivityUserDefaultsViewController *)self navigationItem];
    [v86 setScrollEdgeAppearance:v84];

    v87 = objc_alloc_init(MEMORY[0x1E69DCCC8]);
    [v87 configureWithDefaultBackground];
    v88 = [MEMORY[0x1E69DC888] separatorColor];
    [v87 setShadowColor:v88];

    v89 = [(_UIActivityUserDefaultsViewController *)self navigationItem];
    [v89 setStandardAppearance:v87];

    v90 = [(_UIActivityUserDefaultsViewController *)self navigationItem];
    [v90 _setManualScrollEdgeAppearanceProgress:1.0];
  }

  objc_initWeak(&location, self);
  v91 = [_UIActivityUserDefaultsDataSource alloc];
  v92 = [(_UIActivityUserDefaultsViewController *)self tableView];
  v95 = MEMORY[0x1E69E9820];
  v96 = 3221225472;
  v97 = __52___UIActivityUserDefaultsViewController_viewDidLoad__block_invoke;
  v98 = &unk_1E71F9408;
  objc_copyWeak(&v99, &location);
  v93 = [(UITableViewDiffableDataSource *)v91 initWithTableView:v92 cellProvider:&v95];
  [(_UIActivityUserDefaultsViewController *)self setDiffableDataSource:v93, v95, v96, v97, v98];

  v94 = [(_UIActivityUserDefaultsViewController *)self diffableDataSource];
  [v94 setDataSourceProxy:self];

  [(_UIActivityUserDefaultsViewController *)self updateUserDefaultsAnimated:0];
  objc_destroyWeak(&v99);
  objc_destroyWeak(&location);
}

- (id)_provideCellForTableView:(id)a3 indexPath:(id)a4 itemIdentifier:(id)a5
{
  v8 = a5;
  v9 = [a3 dequeueReusableCellWithIdentifier:@"userDefaultsCell" forIndexPath:a4];
  if (!v9)
  {
    v9 = [[_UIActivityUserDefaultsActivityCell alloc] initWithStyle:0 reuseIdentifier:@"userDefaultsCell"];
  }

  v10 = 0x1E69DC000;
  v11 = [MEMORY[0x1E69DC888] secondarySystemGroupedBackgroundColor];
  v12 = [(_UIActivityUserDefaultsActivityCell *)v9 contentView];
  [v12 setBackgroundColor:v11];

  v13 = [MEMORY[0x1E69DC888] secondarySystemGroupedBackgroundColor];
  [(_UIActivityUserDefaultsActivityCell *)v9 setBackgroundColor:v13];

  v14 = [(_UIActivityUserDefaultsViewController *)self currentSnapshot];
  v15 = [v14 sectionIdentifierForSectionContainingItemIdentifier:v8];

  if ([v15 isEqualToString:@"SHARE_SHEET_EDIT_SECTION_TITLE_FAVORITES"])
  {
    [(_UIActivityUserDefaultsViewController *)self favoritesByUUID];
  }

  else
  {
    [(_UIActivityUserDefaultsViewController *)self suggestionsByUUID];
  }
  v16 = ;
  v17 = [v16 objectForKeyedSubscript:v8];

  -[_UIActivityUserDefaultsActivityCell setDisabled:](v9, "setDisabled:", [v17 isDisabled]);
  [(_UIActivityUserDefaultsActivityCell *)v9 setActivityProxy:v17];
  v18 = [(_UIActivityUserDefaultsViewController *)self activitiesByUUID];
  v19 = [v17 identifier];
  v20 = [v18 objectForKeyedSubscript:v19];

  v76 = v20;
  if (v20)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v21 = [v20 _activityImageUTI];

      if (!v21)
      {
        v60 = [(_UIActivityUserDefaultsViewController *)self view];
        v61 = [v60 traitCollection];
        [v20 setUserInterfaceStyle:{objc_msgSend(v61, "userInterfaceStyle")}];

        v62 = [v20 _activitySettingsImage];
        v63 = [(_UIActivityUserDefaultsActivityCell *)v9 activityImageView];
        [v63 setImage:v62];

        v64 = [(_UIActivityUserDefaultsActivityCell *)v9 activityTitleLabel];
        [v64 setAlpha:1.0];

        v65 = [v20 activityTitle];
        v66 = _convertToSingleLine(v65);
        v67 = [(_UIActivityUserDefaultsActivityCell *)v9 activityTitleLabel];
        [v67 setText:v66];

        v68 = [(_UIActivityUserDefaultsActivityCell *)v9 activityTitleLabel];
        [v68 setNumberOfLines:0];

        v55 = [(_UIActivityUserDefaultsActivityCell *)v9 activityTitleLabel];
        LODWORD(v69) = 0.5;
        [v55 _setHyphenationFactor:v69];
        goto LABEL_25;
      }
    }
  }

  v22 = [(_UIActivityUserDefaultsActivityCell *)v9 activityTitleLabel];
  [v22 setAlpha:1.0];

  v23 = [(_UIActivityUserDefaultsActivityCell *)v9 activityTitleLabel];
  [v23 setNumberOfLines:0];

  v24 = [(_UIActivityUserDefaultsActivityCell *)v9 activityTitleLabel];
  LODWORD(v25) = 0.5;
  [v24 _setHyphenationFactor:v25];

  v26 = [v17 applicationBundleIdentifier];
  if (!v26)
  {
    v27 = [v20 _activityImageUTI];

    if (v27)
    {
      goto LABEL_12;
    }

    v43 = [(_UIActivityUserDefaultsActivityCell *)v9 activityTitleLabel];
    [v43 setAlpha:0.0];

    v44 = [(_UIActivityUserDefaultsActivityCell *)v9 activityTitleLabel];
    [v44 setText:0];

    v45 = [(_UIActivityUserDefaultsActivityCell *)v9 activityImageView];
    [v45 setImage:0];

    v46 = [v17 iconImageSlotID];
    v47 = [v17 activityTitle];
    v48 = [v47 slotIdentifier];

    v49 = [(_UIActivityUserDefaultsViewController *)self traitCollection];
    v50 = [v49 layoutDirection];

    v51 = MEMORY[0x1E6979DF8];
    if (v50 != 1)
    {
      v51 = MEMORY[0x1E6979DD8];
    }

    v52 = *v51;
    v53 = *MEMORY[0x1E69DDA98];
    v78[0] = MEMORY[0x1E69E9820];
    v78[1] = 3221225472;
    v78[2] = __91___UIActivityUserDefaultsViewController__provideCellForTableView_indexPath_itemIdentifier___block_invoke_3;
    v78[3] = &unk_1E71F9458;
    v81 = v46;
    v54 = v9;
    v82 = v48;
    v79 = v54;
    v80 = v52;
    v55 = v52;
    [v53 _performBlockAfterCATransactionCommits:v78];
    v56 = [MEMORY[0x1E69DC888] labelColor];
    v57 = [v56 CGColor];
    v58 = [(_UIActivityUserDefaultsActivityCell *)v54 activityTitleView];
    v59 = [v58 layer];
    [v59 setContentsMultiplyColor:v57];

LABEL_25:
    goto LABEL_26;
  }

LABEL_12:
  v28 = [v20 _activityImageUTI];
  v75 = v15;
  if (v28)
  {
    v29 = [v20 activityTitle];
    _convertToSingleLine(v29);
  }

  else
  {
    v29 = [v17 activityTitle];
    v10 = [v29 text];
    _convertToSingleLine(v10);
  }
  v30 = ;
  v77 = self;
  v31 = [(_UIActivityUserDefaultsActivityCell *)v9 activityTitleLabel];
  [v31 setText:v30];

  if (!v28)
  {

    v30 = v10;
  }

  v32 = v8;

  v74 = v17;
  v33 = [v17 applicationBundleIdentifier];
  v34 = [(_UIActivityUserDefaultsViewController *)v77 view];
  v35 = [v34 traitCollection];
  v36 = [v35 preferredContentSizeCategory];

  v37 = [(_UIActivityUserDefaultsViewController *)v77 view];
  v38 = [v37 traitCollection];
  v39 = [v38 userInterfaceStyle];

  v40 = [(_UIActivityUserDefaultsViewController *)v77 activityImageProvider];
  if (v28)
  {
    v86[0] = MEMORY[0x1E69E9820];
    v86[1] = 3221225472;
    v86[2] = __91___UIActivityUserDefaultsViewController__provideCellForTableView_indexPath_itemIdentifier___block_invoke;
    v86[3] = &unk_1E71F9430;
    v41 = &v87;
    v87 = v9;
    v42 = &v88;
    v88 = v32;
    [v40 requestImageForUTI:v28 activityCategory:1 contentSizeCategory:v36 userInterfaceStyle:v39 iconFormat:0 synchronous:0 resultHandler:v86];
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
    [v40 requestImageForBundleIdentifier:v33 activityCategory:1 contentSizeCategory:v36 userInterfaceStyle:v39 iconFormat:0 synchronous:0 resultHandler:v83];
  }

  v8 = v32;
  self = v77;
  v17 = v74;
  v15 = v75;
LABEL_26:
  [(_UIActivityUserDefaultsViewController *)self configureSwitchForCell:v9 activityProxy:v17];
  if (![(_UIActivityUserDefaultsViewController *)self activityCategory])
  {
    v70 = [(_UIActivityUserDefaultsActivityCell *)v9 imageViewWidthConstraint];
    [v70 setConstant:0.0];

    v71 = [(_UIActivityUserDefaultsActivityCell *)v9 imageViewLeadingConstraint];
    [v71 setConstant:0.0];

    v72 = [(_UIActivityUserDefaultsActivityCell *)v9 labelLeadingConstraint];
    [v72 setConstant:0.0];
  }

  return v9;
}

- (void)updateUserDefaultsAnimated:(BOOL)a3
{
  v3 = a3;
  v77 = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(MEMORY[0x1E69955A0]);
  v6 = [(_UIActivityUserDefaultsViewController *)self bundleIdentifier];
  if ([v6 isEqualToString:@"com.apple.mobilesafari"])
  {
    v56 = 1;
  }

  else
  {
    v56 = [v6 isEqualToString:@"com.apple.SafariViewService"];
  }

  v7 = [(_UIActivityUserDefaultsViewController *)self activityCategory];
  v8 = [(_UIActivityUserDefaultsViewController *)self favoritesProxies];
  v9 = [v8 count];

  if (v7 != 1)
  {
    v54 = v3;
    if (v9)
    {
      [v5 appendSectionsWithIdentifiers:&unk_1EFEC8AB8];
      v16 = [(_UIActivityUserDefaultsViewController *)self favoritesProxies];
      v17 = [v16 valueForKey:@"identifier"];
      [v5 appendItemsWithIdentifiers:v17 intoSectionWithIdentifier:@"SHARE_SHEET_EDIT_SECTION_TITLE_FAVORITES"];
    }

    [v5 appendSectionsWithIdentifiers:{&unk_1EFEC8AD0, v6}];
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

      v3 = v54;
      v6 = v53;
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
      v23 = [(_UIActivityUserDefaultsViewController *)self activitiesByUUID];
      v24 = [v22 identifier];
      v25 = [v23 objectForKeyedSubscript:v24];

      v26 = [(_UIActivityUserDefaultsViewController *)self excludedActivityTypes];
      v27 = [v25 activityType];
      v28 = [v26 containsObject:v27];

      if (v28)
      {
        goto LABEL_39;
      }

      if (v56 && ([v25 activityType], v29 = objc_claimAutoreleasedReturnValue(), v30 = objc_msgSend(v29, "isEqualToString:", @"com.apple.UIKit.activity.AddToReadingList"), v29, v30))
      {
        v31 = [v22 identifier];
        v75 = v31;
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
          v31 = [v22 identifier];
          v72 = v31;
          v32 = &v72;
          v43 = @"SHARE_SHEET_EDIT_SECTION_TITLE_OTHER";
          goto LABEL_38;
        }

        v31 = [v22 identifier];
        v73 = v31;
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
    v10 = [(_UIActivityUserDefaultsViewController *)self favoritesProxies];
    v11 = [v10 valueForKey:@"identifier"];
    [v5 appendItemsWithIdentifiers:v11 intoSectionWithIdentifier:@"SHARE_SHEET_EDIT_SECTION_TITLE_FAVORITES"];
  }

  v12 = [(_UIActivityUserDefaultsViewController *)self suggestionProxies];
  v13 = [v12 count];

  if (v13)
  {
    [v5 appendSectionsWithIdentifiers:&unk_1EFEC8AA0];
    v14 = [(_UIActivityUserDefaultsViewController *)self suggestionProxies];
    v15 = [v14 valueForKey:@"identifier"];
    [v5 appendItemsWithIdentifiers:v15 intoSectionWithIdentifier:@"SHARE_SHEET_EDIT_SECTION_TITLE_SUGGESTIONS"];
  }

LABEL_42:
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v45 = [v5 sectionIdentifiers];
  v46 = [v45 countByEnumeratingWithState:&v58 objects:v71 count:16];
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
          objc_enumerationMutation(v45);
        }

        v50 = *(*(&v58 + 1) + 8 * j);
        if (![v5 numberOfItemsInSection:v50])
        {
          v70 = v50;
          v51 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v70 count:1];
          [v5 deleteSectionsWithIdentifiers:v51];
        }
      }

      v47 = [v45 countByEnumeratingWithState:&v58 objects:v71 count:16];
    }

    while (v47);
  }

  [(_UIActivityUserDefaultsViewController *)self setCurrentSnapshot:v5];
  v52 = [(_UIActivityUserDefaultsViewController *)self diffableDataSource];
  [v52 applySnapshot:v5 animatingDifferences:v3];
}

- (void)configureSwitchForCell:(id)a3 activityProxy:(id)a4
{
  v13 = a3;
  v6 = a4;
  v7 = [(_UIActivityUserDefaultsViewController *)self favoritesByUUID];
  v8 = [v6 identifier];
  v9 = [v7 objectForKeyedSubscript:v8];

  if (v9)
  {
    [v13 setEditingAccessoryView:0];
  }

  else
  {
    v10 = [v6 canHide];
    v11 = [v13 editingAccessoryView];
    if (!v11 && v10)
    {
      v12 = objc_alloc(MEMORY[0x1E69DCFD0]);
      v11 = [v12 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
      [v11 addTarget:self action:sel_toggleActivityHiddenForControl_ forControlEvents:4096];
      [v13 setEditingAccessoryView:v11];
    }

    if ((v10 & 1) == 0)
    {
      [v13 setEditingAccessoryView:0];
    }

    [v11 setOn:{objc_msgSend(v6, "isHidden") ^ 1}];
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v5.receiver = self;
  v5.super_class = _UIActivityUserDefaultsViewController;
  [(_UIActivityUserDefaultsViewController *)&v5 traitCollectionDidChange:a3];
  v4 = [(_UIActivityUserDefaultsViewController *)self tableView];
  [v4 reloadData];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = _UIActivityUserDefaultsViewController;
  [(_UIActivityUserDefaultsViewController *)&v5 viewDidDisappear:a3];
  v4 = [(_UIActivityUserDefaultsViewController *)self userDefaultsDelegate];
  [v4 userDefaultsViewControllerDidDisappear:self];
}

- (void)editUserDefaults
{
  v3 = [(_UIActivityUserDefaultsViewController *)self tableView];
  [v3 setEditing:1 animated:1];

  v4 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:self action:sel_doneEditingUserDefaults];
  v5 = [(_UIActivityUserDefaultsViewController *)self navigationItem];
  [v5 setRightBarButtonItem:v4];

  v6 = [(_UIActivityUserDefaultsViewController *)self navigationItem];
  [v6 setLeftBarButtonItem:0];
}

- (void)doneEditingUserDefaults
{
  v3 = [(_UIActivityUserDefaultsViewController *)self tableView];
  [v3 setEditing:0 animated:1];

  v4 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:2 target:self action:sel_editUserDefaults];
  v5 = [(_UIActivityUserDefaultsViewController *)self navigationItem];
  [v5 setRightBarButtonItem:v4];

  v7 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:self action:sel_dismissUserDefaults];
  v6 = [(_UIActivityUserDefaultsViewController *)self navigationItem];
  [v6 setLeftBarButtonItem:v7];
}

- (void)dismissUserDefaults
{
  [(_UIActivityUserDefaultsViewController *)self dismissViewControllerAnimated:1 completion:0];
  v3 = [(_UIActivityUserDefaultsViewController *)self userDefaultsDelegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(_UIActivityUserDefaultsViewController *)self userDefaultsDelegate];
    [v5 userDefaultsViewControllerDidRequestDismissal:self];
  }
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  v10 = [a3 cellForRowAtIndexPath:v6];
  v7 = [(_UIActivityUserDefaultsViewController *)self userDefaultsDelegate];
  v8 = [(_UIActivityUserDefaultsViewController *)self diffableDataSource];
  v9 = [v8 itemIdentifierForIndexPath:v6];

  [v7 userDefaultsViewController:self didSelectActivityWithIdentifier:v9 activityCategory:-[_UIActivityUserDefaultsViewController activityCategory](self disabled:{"activityCategory"), objc_msgSend(v10, "isDisabled")}];
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  if (_ShareSheetSolariumEnabled())
  {
    v6 = 0;
  }

  else
  {
    v7 = [(_UIActivityUserDefaultsViewController *)self titleForSection:a4];
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
    v16 = [v8 leadingAnchor];
    v17 = [v6 layoutMarginsGuide];
    v18 = [v17 leadingAnchor];
    v19 = [v16 constraintEqualToAnchor:v18];
    [v15 addObject:v19];

    v20 = [v8 trailingAnchor];
    v21 = [v6 layoutMarginsGuide];
    v22 = [v21 trailingAnchor];
    v23 = [v20 constraintEqualToAnchor:v22];
    [v15 addObject:v23];

    v24 = [v8 topAnchor];
    v25 = [v6 topAnchor];
    v26 = [v24 constraintEqualToAnchor:v25 constant:26.0];
    [v15 addObject:v26];

    v27 = [v8 bottomAnchor];
    v28 = [v6 bottomAnchor];
    v29 = [v27 constraintEqualToAnchor:v28 constant:-8.0];
    [v15 addObject:v29];

    [MEMORY[0x1E696ACD8] activateConstraints:v15];
  }

  return v6;
}

- (id)tableView:(id)a3 targetIndexPathForMoveFromRowAtIndexPath:(id)a4 toProposedIndexPath:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [v7 section];
  if (v9 != [v8 section])
  {
    v12 = v7;
    goto LABEL_5;
  }

  v10 = [(_UIActivityUserDefaultsViewController *)self favoritesProxies];
  v11 = [v10 objectAtIndexedSubscript:{objc_msgSend(v8, "row")}];

  if ([v11 canMove])
  {

    v12 = v8;
LABEL_5:
    v13 = v12;
    goto LABEL_7;
  }

  v13 = v7;

LABEL_7:

  return v13;
}

- (void)tableView:(id)a3 moveRowAtIndexPath:(id)a4 toIndexPath:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [(_UIActivityUserDefaultsViewController *)self favoritesProxies];
  v15 = [v9 mutableCopy];

  v10 = [(_UIActivityUserDefaultsViewController *)self favoritesProxies];
  v11 = [v10 objectAtIndexedSubscript:{objc_msgSend(v8, "row")}];

  v12 = [v8 row];
  [v15 removeObjectAtIndex:v12];
  v13 = [v7 row];

  [v15 insertObject:v11 atIndex:v13];
  [(_UIActivityUserDefaultsViewController *)self setFavoritesProxies:v15];
  [(_UIActivityUserDefaultsViewController *)self updateUserDefaultsAnimated:1];
  v14 = [(_UIActivityUserDefaultsViewController *)self userDefaultsDelegate];
  [v14 userDefaultsViewController:self didUpdateFavoritesProxies:v15 activityCategory:{-[_UIActivityUserDefaultsViewController activityCategory](self, "activityCategory")}];
}

- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5
{
  v63 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  if (a4 == 2)
  {
    v39 = [(_UIActivityUserDefaultsViewController *)self diffableDataSource];
    v40 = [v39 itemIdentifierForIndexPath:v9];

    v41 = [(_UIActivityUserDefaultsViewController *)self suggestionsByUUID];
    v42 = [v41 objectForKeyedSubscript:v40];

    v43 = [(_UIActivityUserDefaultsViewController *)self suggestionProxies];
    v44 = [v43 mutableCopy];

    [v44 removeObject:v42];
    [(_UIActivityUserDefaultsViewController *)self setSuggestionProxies:v44];
    v45 = [(_UIActivityUserDefaultsViewController *)self favoritesProxies];
    v46 = [v45 arrayByAddingObject:v42];
    [(_UIActivityUserDefaultsViewController *)self setFavoritesProxies:v46];

    v47 = [(_UIActivityUserDefaultsViewController *)self suggestionsByUUID];
    v48 = [v42 identifier];
    [v47 removeObjectForKey:v48];

    v49 = [(_UIActivityUserDefaultsViewController *)self favoritesByUUID];
    v50 = [v42 identifier];
    [v49 setObject:v42 forKeyedSubscript:v50];

    [(_UIActivityUserDefaultsViewController *)self updateUserDefaultsAnimated:1];
    v51 = [v42 identifier];
    v52 = [(_UIActivityUserDefaultsViewController *)self cellForItemIdentifier:v51];
    [(_UIActivityUserDefaultsViewController *)self configureSwitchForCell:v52 activityProxy:v42];

    v53 = [(_UIActivityUserDefaultsViewController *)self userDefaultsDelegate];
    v54 = [v42 identifier];
    [v53 userDefaultsViewController:self didFavoriteActivity:1 withIdentifier:v54 activityCategory:{-[_UIActivityUserDefaultsViewController activityCategory](self, "activityCategory")}];
  }

  else if (a4 == 1)
  {
    v57 = v8;
    v10 = [(_UIActivityUserDefaultsViewController *)self favoritesByUUID];
    v11 = [(_UIActivityUserDefaultsViewController *)self diffableDataSource];
    v12 = [v11 itemIdentifierForIndexPath:v9];
    v13 = [v10 objectForKeyedSubscript:v12];

    v14 = [(_UIActivityUserDefaultsViewController *)self favoritesProxies];
    v15 = [v14 mutableCopy];

    v56 = v9;
    [v15 removeObjectAtIndex:{objc_msgSend(v9, "row")}];
    v55 = v15;
    [(_UIActivityUserDefaultsViewController *)self setFavoritesProxies:v15];
    v16 = [(_UIActivityUserDefaultsViewController *)self favoritesByUUID];
    v17 = [v13 identifier];
    [v16 removeObjectForKey:v17];

    v18 = objc_opt_new();
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v19 = [(_UIActivityUserDefaultsViewController *)self orderedUUIDs];
    v20 = [v19 countByEnumeratingWithState:&v58 objects:v62 count:16];
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
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v58 + 1) + 8 * v23);
          v25 = [(_UIActivityUserDefaultsViewController *)self favoritesByUUID];
          v26 = [v25 objectForKeyedSubscript:v24];

          if (!v26)
          {
            v27 = [v13 identifier];
            v28 = [v24 isEqual:v27];

            if (v28)
            {
              [v18 addObject:v13];
            }

            else
            {
              v29 = [(_UIActivityUserDefaultsViewController *)self suggestionsByUUID];
              v30 = [v29 objectForKeyedSubscript:v24];

              if (v30)
              {
                v31 = [(_UIActivityUserDefaultsViewController *)self suggestionsByUUID];
                v32 = [v31 objectForKeyedSubscript:v24];
                [v18 addObject:v32];
              }
            }
          }

          ++v23;
        }

        while (v21 != v23);
        v21 = [v19 countByEnumeratingWithState:&v58 objects:v62 count:16];
      }

      while (v21);
    }

    [(_UIActivityUserDefaultsViewController *)self setSuggestionProxies:v18];
    v33 = [(_UIActivityUserDefaultsViewController *)self suggestionsByUUID];
    v34 = [v13 identifier];
    [v33 setObject:v13 forKeyedSubscript:v34];

    [(_UIActivityUserDefaultsViewController *)self updateUserDefaultsAnimated:1];
    v35 = [v13 identifier];
    v36 = [(_UIActivityUserDefaultsViewController *)self cellForItemIdentifier:v35];
    [(_UIActivityUserDefaultsViewController *)self configureSwitchForCell:v36 activityProxy:v13];

    v37 = [(_UIActivityUserDefaultsViewController *)self userDefaultsDelegate];
    v38 = [v13 identifier];
    [v37 userDefaultsViewController:self didFavoriteActivity:0 withIdentifier:v38 activityCategory:{-[_UIActivityUserDefaultsViewController activityCategory](self, "activityCategory")}];

    v9 = v56;
    v8 = v57;
  }
}

- (int64_t)tableView:(id)a3 editingStyleForRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(_UIActivityUserDefaultsViewController *)self currentSnapshot];
  v7 = [v6 sectionIdentifiers];
  v8 = [v7 objectAtIndexedSubscript:{objc_msgSend(v5, "section")}];

  if ([v8 isEqualToString:@"SHARE_SHEET_EDIT_SECTION_TITLE_FAVORITES"])
  {
    v9 = [(_UIActivityUserDefaultsViewController *)self favoritesByUUID];
    v10 = [(_UIActivityUserDefaultsViewController *)self diffableDataSource];
    v11 = [v10 itemIdentifierForIndexPath:v5];
    v12 = [v9 objectForKeyedSubscript:v11];

    v13 = [v12 canEdit];
  }

  else
  {
    v13 = 2;
  }

  return v13;
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  if (_ShareSheetSolariumEnabled())
  {
    v6 = [(_UIActivityUserDefaultsViewController *)self titleForSection:a4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)tableView:(id)a3 shouldIndentWhileEditingRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(_UIActivityUserDefaultsViewController *)self currentSnapshot];
  v7 = [v6 sectionIdentifiers];
  v8 = [v7 objectAtIndexedSubscript:{objc_msgSend(v5, "section")}];

  if ([v8 isEqualToString:@"SHARE_SHEET_EDIT_SECTION_TITLE_FAVORITES"])
  {
    v9 = [(_UIActivityUserDefaultsViewController *)self favoritesByUUID];
    v10 = [(_UIActivityUserDefaultsViewController *)self diffableDataSource];
    v11 = [v10 itemIdentifierForIndexPath:v5];
    v12 = [v9 objectForKeyedSubscript:v11];

    if ([v12 canEdit])
    {
      v13 = [v12 canMove];
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = [(_UIActivityUserDefaultsViewController *)self activityCategory]== 1;
  }

  return v13;
}

- (BOOL)tableView:(id)a3 canEditRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(_UIActivityUserDefaultsViewController *)self activities];

  if (v6)
  {
    v7 = [(_UIActivityUserDefaultsViewController *)self activityForRowAtIndexPath:v5];
    v8 = [v7 activityType];
    if ([v8 isEqualToString:@"com.apple.UIKit.activity.AirDrop"])
    {
      LOBYTE(v9) = 0;
    }

    else
    {
      v10 = [v7 activityType];
      v9 = [v10 isEqualToString:@"com.apple.UIKit.activity.Share"] ^ 1;
    }
  }

  else
  {
    LOBYTE(v9) = 1;
  }

  return v9;
}

- (BOOL)tableView:(id)a3 canMoveRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(_UIActivityUserDefaultsViewController *)self currentSnapshot];
  v7 = [v6 sectionIdentifiers];
  v8 = [v7 objectAtIndexedSubscript:{objc_msgSend(v5, "section")}];

  if ([v8 isEqualToString:@"SHARE_SHEET_EDIT_SECTION_TITLE_FAVORITES"] && (-[_UIActivityUserDefaultsViewController favoritesProxies](self, "favoritesProxies"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "count"), v9, v10 >= 2))
  {
    v11 = [(_UIActivityUserDefaultsViewController *)self favoritesProxies];
    v12 = [v11 objectAtIndexedSubscript:{objc_msgSend(v5, "row")}];

    v13 = [v12 canMove];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)tableView:(id)a3 didHighlightRowAtIndexPath:(id)a4
{
  v7 = [a3 cellForRowAtIndexPath:a4];
  v4 = [MEMORY[0x1E69DC888] tableCellDefaultSelectionTintColor];
  v5 = [v7 contentView];
  [v5 setBackgroundColor:v4];

  v6 = [MEMORY[0x1E69DC888] tableCellDefaultSelectionTintColor];
  [v7 setBackgroundColor:v6];
}

- (void)tableView:(id)a3 didUnhighlightRowAtIndexPath:(id)a4
{
  v7 = [a3 cellForRowAtIndexPath:a4];
  v4 = [MEMORY[0x1E69DC888] secondarySystemGroupedBackgroundColor];
  v5 = [v7 contentView];
  [v5 setBackgroundColor:v4];

  v6 = [MEMORY[0x1E69DC888] secondarySystemGroupedBackgroundColor];
  [v7 setBackgroundColor:v6];
}

- (id)tableView:(id)a3 titleForDeleteConfirmationButtonForRowAtIndexPath:(id)a4
{
  v4 = _ShareSheetBundle();
  v5 = [v4 localizedStringForKey:@"SHARE_SHEET_DEFAULTS_REMOVE_BUTTON_TITLE" value:&stru_1EFE999E0 table:@"Localizable"];

  return v5;
}

- (void)scrollViewDidScroll:(id)a3
{
  v13 = a3;
  if ((_ShareSheetSolariumEnabled() & 1) == 0)
  {
    v4 = [(_UIActivityUserDefaultsViewController *)self tableView];
    if (v4 == v13)
    {
      v5 = dyld_program_sdk_at_least();

      if (!v5)
      {
        goto LABEL_8;
      }

      v6 = [(_UIActivityUserDefaultsViewController *)self navigationController];
      v7 = [v6 navigationBar];
      [v7 frame];
      v9 = v8;

      [v13 contentOffset];
      v10 = 0.0;
      if (v11 > -v9)
      {
        [v13 contentOffset];
        v10 = fmin((v9 + v12) * 10.0, 100.0) / 100.0;
      }

      v4 = [(_UIActivityUserDefaultsViewController *)self navigationItem];
      [v4 _setManualScrollEdgeAppearanceProgress:v10];
    }
  }

LABEL_8:
}

- (id)cellForItemIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(_UIActivityUserDefaultsViewController *)self tableView];
  v6 = [(_UIActivityUserDefaultsViewController *)self diffableDataSource];
  v7 = [v6 indexPathForItemIdentifier:v4];

  v8 = [v5 cellForRowAtIndexPath:v7];

  return v8;
}

- (id)activityForRowAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [v4 row];
  v6 = [(_UIActivityUserDefaultsViewController *)self activities];
  v7 = [v6 count];

  if (v5 >= v7)
  {
    v9 = 0;
  }

  else
  {
    v8 = [(_UIActivityUserDefaultsViewController *)self activities];
    v9 = [v8 objectAtIndex:{objc_msgSend(v4, "row")}];
  }

  return v9;
}

- (void)toggleActivityHiddenForControl:(id)a3
{
  v4 = a3;
  v5 = [(_UIActivityUserDefaultsViewController *)self tableView];
  [v4 bounds];
  [v5 convertPoint:v4 fromView:?];
  v7 = v6;
  v9 = v8;

  v10 = [(_UIActivityUserDefaultsViewController *)self tableView];
  v16 = [v10 indexPathForRowAtPoint:{v7, v9}];

  v11 = [(_UIActivityUserDefaultsViewController *)self diffableDataSource];
  v12 = [v11 itemIdentifierForIndexPath:v16];

  v13 = [(_UIActivityUserDefaultsViewController *)self suggestionsByUUID];
  v14 = [v13 objectForKeyedSubscript:v12];

  [v14 setIsHidden:{objc_msgSend(v14, "isHidden") ^ 1}];
  v15 = [(_UIActivityUserDefaultsViewController *)self userDefaultsDelegate];
  [v15 userDefaultsViewController:self didToggleActivityWithIdentifier:v12 activityCategory:{-[_UIActivityUserDefaultsViewController activityCategory](self, "activityCategory")}];
}

- (void)toggleActivityHiddenForRowAtIndexPath:(id)a3
{
  v4 = [(_UIActivityUserDefaultsViewController *)self activityForRowAtIndexPath:a3];
  if (v4)
  {
    v8 = v4;
    v5 = [(_UIActivityUserDefaultsViewController *)self userDefaults];
    v6 = [v5 activityIsHidden:v8];

    v7 = [(_UIActivityUserDefaultsViewController *)self userDefaults];
    [v7 setActivity:v8 asHidden:v6 ^ 1u];

    v4 = v8;
  }
}

- (int64_t)preferredActivityCategory
{
  v2 = [(_UIActivityUserDefaultsViewController *)self activities];
  v3 = [v2 firstObject];

  v4 = [objc_opt_class() activityCategory];
  return v4;
}

- (id)titleForSection:(int64_t)a3
{
  v5 = [(_UIActivityUserDefaultsViewController *)self currentSnapshot];
  v6 = [v5 sectionIdentifiers];
  v7 = [v6 objectAtIndexedSubscript:a3];

  if (![v7 isEqualToString:@"App Actions"])
  {
    v13 = _ShareSheetBundle();
    v9 = [v13 localizedStringForKey:v7 value:&stru_1EFE999E0 table:@"Localizable"];
    goto LABEL_10;
  }

  v8 = [MEMORY[0x1E696AAE8] mainBundle];
  v9 = [v8 objectForInfoDictionaryKey:@"CFBundleDisplayName"];

  v10 = [MEMORY[0x1E69DC668] sharedApplication];
  v11 = [v10 keyWindow];
  v12 = [v11 rootViewController];
  v13 = [v12 childViewControllers];

  if (![v13 count])
  {
    goto LABEL_10;
  }

  v14 = [v13 objectAtIndexedSubscript:0];
  v15 = [v14 _hostApplicationBundleIdentifier];
  if (v15)
  {
    v16 = v15;

    goto LABEL_7;
  }

  v16 = [(_UIActivityUserDefaultsViewController *)self bundleIdentifier];

  if (v16)
  {
LABEL_7:
    if ([v16 length])
    {
      v17 = [MEMORY[0x1E69635E0] applicationProxyForIdentifier:v16];
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