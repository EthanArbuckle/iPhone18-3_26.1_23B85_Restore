@interface TVRUIShortcutsMenuViewController
- (BOOL)hasInternalShortcuts;
- (BOOL)itemIsEnabled:(id)enabled;
- (CGSize)_effectiveContentSize;
- (id)_layout;
- (void)_configureHierarchy;
- (void)_invokePlayerCommandHandlerForItem:(id)item;
- (void)_toggleEditing;
- (void)_updateDataSourceAnimated:(BOOL)animated;
- (void)_updateEditButtonFromCurrentState;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation TVRUIShortcutsMenuViewController

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = TVRUIShortcutsMenuViewController;
  [(TVRUIShortcutsMenuViewController *)&v5 viewDidLoad];
  [(TVRUIShortcutsMenuViewController *)self setIsCompact:1];
  [(TVRUIShortcutsMenuViewController *)self setIsEditing:0];
  [(TVRUIShortcutsMenuViewController *)self _updateEditButtonFromCurrentState];
  v3 = objc_alloc_init(TVRUIShortcutsController);
  [(TVRUIShortcutsMenuViewController *)self setShortcutsController:v3];

  [(TVRUIShortcutsMenuViewController *)self _configureHierarchy];
  [(TVRUIShortcutsMenuViewController *)self _updateDataSourceAnimated:0];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel__shortcutsDidChange_ name:@"TVRUIShortcutsControllerShortcutsDidChangeNotification" object:0];
}

- (BOOL)hasInternalShortcuts
{
  shortcutsController = [(TVRUIShortcutsMenuViewController *)self shortcutsController];
  internalShortcuts = [shortcutsController internalShortcuts];
  v4 = [internalShortcuts count] != 0;

  return v4;
}

- (BOOL)itemIsEnabled:(id)enabled
{
  enabledCopy = enabled;
  shortcutsController = [(TVRUIShortcutsMenuViewController *)self shortcutsController];
  identifier = [enabledCopy identifier];

  LOBYTE(enabledCopy) = [shortcutsController itemIsEnabledWithIdentifier:identifier];
  return enabledCopy;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  dataSource = [(TVRUIShortcutsMenuViewController *)self dataSource];
  v7 = [dataSource itemIdentifierForIndexPath:pathCopy];

  if ([(TVRUIShortcutsMenuViewController *)self isEditing])
  {
    shortcutsController = [(TVRUIShortcutsMenuViewController *)self shortcutsController];
    identifier = [v7 identifier];
    [shortcutsController toggleItemEnablementWithIdentifier:identifier];
  }

  else
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __76__TVRUIShortcutsMenuViewController_collectionView_didSelectItemAtIndexPath___block_invoke;
    v10[3] = &unk_279D88230;
    v10[4] = self;
    v11 = v7;
    [(TVRUIShortcutsMenuViewController *)self dismissViewControllerAnimated:1 completion:v10];
  }
}

- (void)_invokePlayerCommandHandlerForItem:(id)item
{
  itemCopy = item;
  playerCommandHandler = [(TVRUIShortcutsMenuViewController *)self playerCommandHandler];

  if (playerCommandHandler)
  {
    playerCommandHandler2 = [(TVRUIShortcutsMenuViewController *)self playerCommandHandler];
    playerCommand = [itemCopy playerCommand];
    playerCommandHandler2[2](playerCommandHandler2, playerCommand, MEMORY[0x277CBEC10]);
  }
}

- (CGSize)_effectiveContentSize
{
  isCompact = [(TVRUIShortcutsMenuViewController *)self isCompact];
  isEditing = [(TVRUIShortcutsMenuViewController *)self isEditing];
  shortcutsController = [(TVRUIShortcutsMenuViewController *)self shortcutsController];
  v6 = shortcutsController;
  if (isEditing)
  {
    [shortcutsController allShortcuts];
  }

  else
  {
    [shortcutsController availableShortcuts];
  }
  v7 = ;
  v8 = [v7 count];

  if (isCompact)
  {
    if (v8 == 3 * (v8 / 3))
    {
      v8 /= 3uLL;
    }

    else
    {
      v8 = v8 / 3 + 1;
    }

    v9 = 30.0;
    v10 = 80.0;
  }

  else
  {
    v9 = 66.0;
    v10 = 44.0;
  }

  v11 = v9 + v8 * v10;
  v12 = 240.0;
  result.height = v11;
  result.width = v12;
  return result;
}

- (void)_updateEditButtonFromCurrentState
{
  isEditing = [(TVRUIShortcutsMenuViewController *)self isEditing];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = v4;
  if (isEditing)
  {
    v6 = @"TVRUIDone";
  }

  else
  {
    v6 = @"TVRUIEdit";
  }

  v10 = [v4 localizedStringForKey:v6 value:&stru_287E6AEF8 table:@"Localizable"];

  editButton = [(TVRUIShortcutsMenuViewController *)self editButton];
  configuration = [editButton configuration];

  [configuration setTitle:v10];
  editButton2 = [(TVRUIShortcutsMenuViewController *)self editButton];
  [editButton2 setConfiguration:configuration];
}

- (void)_toggleEditing
{
  [(TVRUIShortcutsMenuViewController *)self setIsEditing:[(TVRUIShortcutsMenuViewController *)self isEditing]^ 1];
  [(TVRUIShortcutsMenuViewController *)self setIsCompact:[(TVRUIShortcutsMenuViewController *)self isEditing]^ 1];
  [(TVRUIShortcutsMenuViewController *)self _updateEditButtonFromCurrentState];
  [(TVRUIShortcutsMenuViewController *)self _updateDataSourceAnimated:1];
  [(TVRUIShortcutsMenuViewController *)self _effectiveContentSize];
  v4 = v3;
  v6 = v5;
  popoverPresentationController = [(TVRUIShortcutsMenuViewController *)self popoverPresentationController];
  presentedViewController = [popoverPresentationController presentedViewController];
  [presentedViewController setPreferredContentSize:{v4, v6}];
}

- (void)_configureHierarchy
{
  v90 = *MEMORY[0x277D85DE8];
  objc_initWeak(&location, self);
  view = [(TVRUIShortcutsMenuViewController *)self view];
  v2 = objc_alloc(MEMORY[0x277D752A0]);
  _layout = [(TVRUIShortcutsMenuViewController *)self _layout];
  v73 = [v2 initWithFrame:_layout collectionViewLayout:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];

  [v73 setTranslatesAutoresizingMaskIntoConstraints:0];
  clearColor = [MEMORY[0x277D75348] clearColor];
  [v73 setBackgroundColor:clearColor];

  [v73 setDelegate:self];
  [view addSubview:v73];
  v70 = objc_alloc_init(MEMORY[0x277D756B8]);
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"TVRUIShortcuts" value:&stru_287E6AEF8 table:@"Localizable"];
  [v70 setText:v6];

  v7 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  [v70 setFont:v7];

  whiteColor = [MEMORY[0x277D75348] whiteColor];
  [v70 setTextColor:whiteColor];

  borderlessButtonConfiguration = [MEMORY[0x277D75230] borderlessButtonConfiguration];
  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"TVRUIEdit" value:&stru_287E6AEF8 table:@"Localizable"];
  [borderlessButtonConfiguration setTitle:v11];

  [borderlessButtonConfiguration setButtonSize:0];
  v12 = MEMORY[0x277D750C8];
  v84[0] = MEMORY[0x277D85DD0];
  v84[1] = 3221225472;
  v84[2] = __55__TVRUIShortcutsMenuViewController__configureHierarchy__block_invoke;
  v84[3] = &unk_279D87C68;
  objc_copyWeak(&v85, &location);
  v13 = [v12 actionWithHandler:v84];
  v69 = [MEMORY[0x277D75220] buttonWithConfiguration:borderlessButtonConfiguration primaryAction:v13];
  whiteColor2 = [MEMORY[0x277D75348] whiteColor];
  [v69 setTintColor:whiteColor2];

  objc_destroyWeak(&v85);
  v15 = objc_alloc_init(MEMORY[0x277D75D18]);
  [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
  [view addSubview:v15];
  v82 = 0u;
  v83 = 0u;
  v81 = 0u;
  v80 = 0u;
  v88[0] = v69;
  v88[1] = v70;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v88 count:2];
  v17 = [v16 countByEnumeratingWithState:&v80 objects:v89 count:16];
  if (v17)
  {
    v18 = *v81;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v81 != v18)
        {
          objc_enumerationMutation(v16);
        }

        v20 = *(*(&v80 + 1) + 8 * i);
        [v20 setTranslatesAutoresizingMaskIntoConstraints:0];
        [v15 addSubview:v20];
      }

      v17 = [v16 countByEnumeratingWithState:&v80 objects:v89 count:16];
    }

    while (v17);
  }

  v40 = MEMORY[0x277CCAAD0];
  topAnchor = [v15 topAnchor];
  topAnchor2 = [view topAnchor];
  v66 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:20.0];
  v87[0] = v66;
  leadingAnchor = [v15 leadingAnchor];
  leadingAnchor2 = [view leadingAnchor];
  v63 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:20.0];
  v87[1] = v63;
  trailingAnchor = [v15 trailingAnchor];
  trailingAnchor2 = [view trailingAnchor];
  v60 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-10.0];
  v87[2] = v60;
  topAnchor3 = [v70 topAnchor];
  topAnchor4 = [v15 topAnchor];
  v57 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v87[3] = v57;
  bottomAnchor = [v70 bottomAnchor];
  bottomAnchor2 = [v15 bottomAnchor];
  v54 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v87[4] = v54;
  leadingAnchor3 = [v70 leadingAnchor];
  leadingAnchor4 = [v15 leadingAnchor];
  v51 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v87[5] = v51;
  centerYAnchor = [v69 centerYAnchor];
  centerYAnchor2 = [v15 centerYAnchor];
  v48 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v87[6] = v48;
  trailingAnchor3 = [v69 trailingAnchor];
  trailingAnchor4 = [v15 trailingAnchor];
  v45 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v87[7] = v45;
  topAnchor5 = [v73 topAnchor];
  bottomAnchor3 = [v15 bottomAnchor];
  v42 = [topAnchor5 constraintEqualToAnchor:bottomAnchor3 constant:20.0];
  v87[8] = v42;
  leadingAnchor5 = [v73 leadingAnchor];
  leadingAnchor6 = [view leadingAnchor];
  v22 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
  v87[9] = v22;
  trailingAnchor5 = [v73 trailingAnchor];
  trailingAnchor6 = [view trailingAnchor];
  v25 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
  v87[10] = v25;
  bottomAnchor4 = [v73 bottomAnchor];
  bottomAnchor5 = [view bottomAnchor];
  v28 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5];
  v87[11] = v28;
  v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v87 count:12];
  [v40 activateConstraints:v29];

  v30 = MEMORY[0x277D752B0];
  v31 = objc_opt_class();
  v78[0] = MEMORY[0x277D85DD0];
  v78[1] = 3221225472;
  v78[2] = __55__TVRUIShortcutsMenuViewController__configureHierarchy__block_invoke_2;
  v78[3] = &unk_279D88F68;
  objc_copyWeak(&v79, &location);
  v32 = [v30 registrationWithCellClass:v31 configurationHandler:v78];
  v33 = [MEMORY[0x277D75320] registrationWithSupplementaryClass:objc_opt_class() elementKind:@"internalHeaderElementKind" configurationHandler:&__block_literal_global_21];
  v34 = objc_alloc(MEMORY[0x277D752D0]);
  v76[0] = MEMORY[0x277D85DD0];
  v76[1] = 3221225472;
  v76[2] = __55__TVRUIShortcutsMenuViewController__configureHierarchy__block_invoke_4;
  v76[3] = &unk_279D88FB0;
  v35 = v32;
  v77 = v35;
  v36 = [v34 initWithCollectionView:v73 cellProvider:v76];
  v37 = objc_opt_class();
  v38 = +[_TVRUIShortcutInternalHeaderView reuseIdentifier];
  [v73 registerClass:v37 forSupplementaryViewOfKind:@"internalHeaderElementKind" withReuseIdentifier:v38];

  v74[0] = MEMORY[0x277D85DD0];
  v74[1] = 3221225472;
  v74[2] = __55__TVRUIShortcutsMenuViewController__configureHierarchy__block_invoke_5;
  v74[3] = &unk_279D88FD8;
  v39 = v33;
  v75 = v39;
  [v36 setSupplementaryViewProvider:v74];
  [(TVRUIShortcutsMenuViewController *)self setCollectionView:v73];
  [(TVRUIShortcutsMenuViewController *)self setDataSource:v36];
  [(TVRUIShortcutsMenuViewController *)self setEditButton:v69];

  objc_destroyWeak(&v79);
  objc_destroyWeak(&location);
}

void __55__TVRUIShortcutsMenuViewController__configureHierarchy__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _toggleEditing];
}

void __55__TVRUIShortcutsMenuViewController__configureHierarchy__block_invoke_2(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [v8 setDelegate:WeakRetained];

  [v8 setItem:v6];
}

- (void)_updateDataSourceAnimated:(BOOL)animated
{
  animatedCopy = animated;
  isEditing = [(TVRUIShortcutsMenuViewController *)self isEditing];
  v13 = objc_alloc_init(MEMORY[0x277CFB890]);
  [v13 appendSectionsWithIdentifiers:&unk_287E84C90];
  shortcutsController = [(TVRUIShortcutsMenuViewController *)self shortcutsController];
  availableShortcuts = [shortcutsController availableShortcuts];
  [v13 appendItemsWithIdentifiers:availableShortcuts];

  if (isEditing)
  {
    [v13 appendSectionsWithIdentifiers:&unk_287E84CA8];
    shortcutsController2 = [(TVRUIShortcutsMenuViewController *)self shortcutsController];
    disabledShortcuts = [shortcutsController2 disabledShortcuts];
    [v13 appendItemsWithIdentifiers:disabledShortcuts];

    if ([(TVRUIShortcutsMenuViewController *)self hasInternalShortcuts]&& isEditing)
    {
      [v13 appendSectionsWithIdentifiers:&unk_287E84CC0];
      shortcutsController3 = [(TVRUIShortcutsMenuViewController *)self shortcutsController];
      internalShortcuts = [shortcutsController3 internalShortcuts];
      [v13 appendItemsWithIdentifiers:internalShortcuts];
    }
  }

  else
  {
    [(TVRUIShortcutsMenuViewController *)self hasInternalShortcuts];
  }

  dataSource = [(TVRUIShortcutsMenuViewController *)self dataSource];
  [dataSource applySnapshot:v13 animatingDifferences:animatedCopy];
}

- (id)_layout
{
  objc_initWeak(&location, self);
  v2 = objc_alloc(MEMORY[0x277D752B8]);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __43__TVRUIShortcutsMenuViewController__layout__block_invoke;
  v5[3] = &unk_279D88388;
  objc_copyWeak(&v6, &location);
  v3 = [v2 initWithSectionProvider:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);

  return v3;
}

id __43__TVRUIShortcutsMenuViewController__layout__block_invoke(uint64_t a1, uint64_t a2)
{
  v39[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained isCompact];
    v6 = MEMORY[0x277CFB870];
    if (v5)
    {
      v7 = [MEMORY[0x277CFB840] fractionalWidthDimension:0.333333333];
      v8 = [MEMORY[0x277CFB840] fractionalHeightDimension:1.0];
      v9 = [v6 sizeWithWidthDimension:v7 heightDimension:v8];

      v10 = [MEMORY[0x277CFB860] itemWithLayoutSize:v9];
      [v10 setContentInsets:{5.0, 5.0, 5.0, 5.0}];
      v11 = MEMORY[0x277CFB870];
      v12 = [MEMORY[0x277CFB840] fractionalWidthDimension:1.0];
      v13 = [MEMORY[0x277CFB840] fractionalWidthDimension:0.3];
      v14 = [v11 sizeWithWidthDimension:v12 heightDimension:v13];

      v15 = [MEMORY[0x277CFB850] horizontalGroupWithLayoutSize:v14 repeatingSubitem:v10 count:3];
      v16 = [MEMORY[0x277CFB868] sectionWithGroup:v15];
      [v16 setContentInsets:{0.0, 10.0, 0.0, 10.0}];
    }

    else
    {
      v17 = [MEMORY[0x277CFB840] fractionalWidthDimension:1.0];
      v18 = [MEMORY[0x277CFB840] fractionalHeightDimension:1.0];
      v9 = [v6 sizeWithWidthDimension:v17 heightDimension:v18];

      v10 = [MEMORY[0x277CFB860] itemWithLayoutSize:v9];
      v19 = MEMORY[0x277CFB870];
      v20 = [MEMORY[0x277CFB840] fractionalWidthDimension:1.0];
      v21 = [MEMORY[0x277CFB840] absoluteDimension:44.0];
      v22 = [v19 sizeWithWidthDimension:v20 heightDimension:v21];

      v23 = MEMORY[0x277CFB850];
      v39[0] = v10;
      v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:1];
      v25 = [v23 horizontalGroupWithLayoutSize:v22 subitems:v24];

      v16 = [MEMORY[0x277CFB868] sectionWithGroup:v25];
      v26 = [v4 dataSource];
      v27 = [v26 snapshot];

      v28 = [v27 sectionIdentifiers];
      v29 = [v28 objectAtIndexedSubscript:a2];
      v30 = [v29 isEqualToString:@"internalSection"];

      if (v30)
      {
        v31 = MEMORY[0x277CFB870];
        v32 = [MEMORY[0x277CFB840] fractionalWidthDimension:1.0];
        v33 = [MEMORY[0x277CFB840] estimatedDimension:44.0];
        v34 = [v31 sizeWithWidthDimension:v32 heightDimension:v33];

        v35 = [MEMORY[0x277CFB830] boundarySupplementaryItemWithLayoutSize:v34 elementKind:@"internalHeaderElementKind" alignment:1];
        v38 = v35;
        v36 = [MEMORY[0x277CBEA60] arrayWithObjects:&v38 count:1];
        [v16 setBoundarySupplementaryItems:v36];
      }
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

@end