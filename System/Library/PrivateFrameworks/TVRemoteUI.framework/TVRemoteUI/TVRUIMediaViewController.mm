@interface TVRUIMediaViewController
- (BOOL)_canShowMediaInfo;
- (TVRUIActionProviding)actionProvider;
- (TVRUIImageFetcher)imageFetcher;
- (TVRUIUpNextProviding)upNextProvider;
- (_TVRUIAvatarGenerator)avatarGenerator;
- (id)_collectionViewLayout;
- (id)actionButtonMenu;
- (void)_addToUpNext:(id)a3;
- (void)_configureHierarchy;
- (void)_didBeginUpNextCommand;
- (void)_gotoMediaInfo;
- (void)_markAsWatched:(id)a3;
- (void)_removeFromUpNext:(id)a3;
- (void)_requestMediaInfoWithID:(id)a3;
- (void)_shareMediaInfo;
- (void)_upNextCommand:(id)a3 didCompleteWithError:(id)a4;
- (void)_updateBarButtonItemFromCurrentState;
- (void)_updateMediaInfo:(id)a3;
- (void)_updateUIFromCurrentState;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)dealloc;
- (void)requestImageForTemplate:(id)a3 size:(CGSize)a4 identifier:(id)a5 completion:(id)a6;
- (void)setMediaIdentifier:(id)a3;
- (void)setMediaInfo:(id)a3;
- (void)setMediaTitle:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation TVRUIMediaViewController

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = TVRUIMediaViewController;
  [(TVRUIMediaViewController *)&v3 viewDidLoad];
  [(TVRUIMediaViewController *)self _configureHierarchy];
  [(TVRUIMediaViewController *)self _updateUIFromCurrentState];
}

- (void)viewDidAppear:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = TVRUIMediaViewController;
  [(TVRUIMediaViewController *)&v8 viewDidAppear:a3];
  v4 = [(TVRUIMediaViewController *)self collectionView];
  v5 = [v4 indexPathsForSelectedItems];

  if ([v5 count])
  {
    v6 = [(TVRUIMediaViewController *)self collectionView];
    v7 = [v5 firstObject];
    [v6 deselectItemAtIndexPath:v7 animated:1];
  }
}

- (void)setMediaIdentifier:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_mediaIdentifier, a3);
  if ([v5 length])
  {
    [(TVRUIMediaViewController *)self _requestMediaInfoWithID:v5];
  }
}

- (void)setMediaTitle:(id)a3
{
  objc_storeStrong(&self->_mediaTitle, a3);
  v5 = a3;
  v6 = [(TVRUIMediaViewController *)self navigationItem];
  [v6 setTitle:v5];
}

- (void)dealloc
{
  v3 = [(TVRUIMediaViewController *)self infosDidChangeNotificationObserver];

  if (v3)
  {
    v4 = [MEMORY[0x277CCAB98] defaultCenter];
    v5 = [(TVRUIMediaViewController *)self infosDidChangeNotificationObserver];
    [v4 removeObserver:v5];
  }

  v6.receiver = self;
  v6.super_class = TVRUIMediaViewController;
  [(TVRUIMediaViewController *)&v6 dealloc];
}

- (void)setMediaInfo:(id)a3
{
  objc_storeStrong(&self->_mediaInfo, a3);

  [(TVRUIMediaViewController *)self _updateUIFromCurrentState];
}

- (TVRUIImageFetcher)imageFetcher
{
  imageFetcher = self->_imageFetcher;
  if (!imageFetcher)
  {
    v4 = +[TVRUIImageFetcher imageFetcher];
    v5 = self->_imageFetcher;
    self->_imageFetcher = v4;

    imageFetcher = self->_imageFetcher;
  }

  return imageFetcher;
}

- (_TVRUIAvatarGenerator)avatarGenerator
{
  avatarGenerator = self->_avatarGenerator;
  if (!avatarGenerator)
  {
    v4 = objc_alloc_init(_TVRUIAvatarGenerator);
    v5 = self->_avatarGenerator;
    self->_avatarGenerator = v4;

    avatarGenerator = self->_avatarGenerator;
  }

  return avatarGenerator;
}

- (void)_configureHierarchy
{
  v84 = *MEMORY[0x277D85DE8];
  [(TVRUIMediaViewController *)self setOverrideUserInterfaceStyle:2];
  val = self;
  v3 = [(TVRUIMediaViewController *)self view];
  v4 = [MEMORY[0x277D75348] colorWithWhite:0.1 alpha:1.0];
  [v3 setBackgroundColor:v4];

  v59 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:101];
  v5 = [MEMORY[0x277D752B0] registrationWithCellClass:objc_opt_class() configurationHandler:&__block_literal_global_1];
  objc_initWeak(&location, val);
  v6 = MEMORY[0x277D752B0];
  v7 = objc_opt_class();
  v78[0] = MEMORY[0x277D85DD0];
  v78[1] = 3221225472;
  v78[2] = __47__TVRUIMediaViewController__configureHierarchy__block_invoke_2;
  v78[3] = &unk_279D87D48;
  objc_copyWeak(&v79, &location);
  v8 = [v6 registrationWithCellClass:v7 configurationHandler:v78];
  v9 = objc_alloc(MEMORY[0x277D752A0]);
  v10 = [(TVRUIMediaViewController *)val _collectionViewLayout];
  v61 = [v9 initWithFrame:v10 collectionViewLayout:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];

  [v61 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v61 setClipsToBounds:1];
  [v61 setDelegate:val];
  v11 = objc_alloc(MEMORY[0x277D752D0]);
  v75[0] = MEMORY[0x277D85DD0];
  v75[1] = 3221225472;
  v75[2] = __47__TVRUIMediaViewController__configureHierarchy__block_invoke_3;
  v75[3] = &unk_279D87D70;
  v45 = v5;
  v76 = v45;
  v46 = v8;
  v77 = v46;
  v58 = [v11 initWithCollectionView:v61 cellProvider:v75];
  v12 = objc_opt_class();
  v13 = +[_TVRUIImageHeaderView elementKind];
  v14 = +[_TVRUIImageHeaderView reuseIdentifier];
  [v61 registerClass:v12 forSupplementaryViewOfKind:v13 withReuseIdentifier:v14];

  v15 = MEMORY[0x277D75320];
  v16 = objc_opt_class();
  v17 = +[_TVRUIImageHeaderView elementKind];
  v73[0] = MEMORY[0x277D85DD0];
  v73[1] = 3221225472;
  v73[2] = __47__TVRUIMediaViewController__configureHierarchy__block_invoke_4;
  v73[3] = &unk_279D87D98;
  objc_copyWeak(&v74, &location);
  v18 = [v15 registrationWithSupplementaryClass:v16 elementKind:v17 configurationHandler:v73];

  v19 = objc_opt_class();
  v20 = +[_TVRUILabelHeaderView elementKind];
  v21 = +[_TVRUILabelHeaderView reuseIdentifier];
  [v61 registerClass:v19 forSupplementaryViewOfKind:v20 withReuseIdentifier:v21];

  v22 = MEMORY[0x277D75320];
  v23 = objc_opt_class();
  v24 = +[_TVRUILabelHeaderView elementKind];
  v71[0] = MEMORY[0x277D85DD0];
  v71[1] = 3221225472;
  v71[2] = __47__TVRUIMediaViewController__configureHierarchy__block_invoke_5;
  v71[3] = &unk_279D87DC0;
  objc_copyWeak(&v72, &location);
  v25 = [v22 registrationWithSupplementaryClass:v23 elementKind:v24 configurationHandler:v71];

  v68[0] = MEMORY[0x277D85DD0];
  v68[1] = 3221225472;
  v68[2] = __47__TVRUIMediaViewController__configureHierarchy__block_invoke_6;
  v68[3] = &unk_279D87DE8;
  v44 = v25;
  v69 = v44;
  v43 = v18;
  v70 = v43;
  [v58 setSupplementaryViewProvider:v68];
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v82[0] = v61;
  v82[1] = v59;
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v82 count:2];
  v27 = [v26 countByEnumeratingWithState:&v64 objects:v83 count:16];
  if (v27)
  {
    v28 = *v65;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v65 != v28)
        {
          objc_enumerationMutation(v26);
        }

        v30 = *(*(&v64 + 1) + 8 * i);
        [v30 setTranslatesAutoresizingMaskIntoConstraints:0];
        [v3 addSubview:v30];
      }

      v27 = [v26 countByEnumeratingWithState:&v64 objects:v83 count:16];
    }

    while (v27);
  }

  v42 = MEMORY[0x277CCAAD0];
  v57 = [v59 centerXAnchor];
  v56 = [v3 centerXAnchor];
  v55 = [v57 constraintEqualToAnchor:v56];
  v81[0] = v55;
  v54 = [v59 centerYAnchor];
  v53 = [v3 centerYAnchor];
  v52 = [v54 constraintEqualToAnchor:v53];
  v81[1] = v52;
  v50 = [v61 topAnchor];
  v51 = [v3 safeAreaLayoutGuide];
  v49 = [v51 topAnchor];
  v48 = [v50 constraintEqualToAnchor:v49];
  v81[2] = v48;
  v47 = [v61 leadingAnchor];
  v31 = [v3 leadingAnchor];
  v32 = [v47 constraintEqualToAnchor:v31];
  v81[3] = v32;
  v33 = [v61 trailingAnchor];
  v34 = [v3 trailingAnchor];
  v35 = [v33 constraintEqualToAnchor:v34];
  v81[4] = v35;
  v36 = [v61 bottomAnchor];
  v37 = [v3 bottomAnchor];
  v38 = [v36 constraintEqualToAnchor:v37];
  v81[5] = v38;
  v39 = [MEMORY[0x277CBEA60] arrayWithObjects:v81 count:6];
  [v42 activateConstraints:v39];

  [(TVRUIMediaViewController *)val setActivityIndicatorView:v59];
  [(TVRUIMediaViewController *)val setCollectionView:v61];
  [(TVRUIMediaViewController *)val setDataSource:v58];
  v40 = [MEMORY[0x277CCAB98] defaultCenter];
  v62[0] = MEMORY[0x277D85DD0];
  v62[1] = 3221225472;
  v62[2] = __47__TVRUIMediaViewController__configureHierarchy__block_invoke_7;
  v62[3] = &unk_279D87E10;
  objc_copyWeak(&v63, &location);
  v41 = [v40 addObserverForName:@"TVRUIUpNextInfosDidChangeNotification" object:0 queue:0 usingBlock:v62];
  [(TVRUIMediaViewController *)val setInfosDidChangeNotificationObserver:v41];

  objc_destroyWeak(&v63);
  objc_destroyWeak(&v72);

  objc_destroyWeak(&v74);
  objc_destroyWeak(&v79);
  objc_destroyWeak(&location);
}

void __47__TVRUIMediaViewController__configureHierarchy__block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v6 = a2;
  [v6 setIsExpanded:{objc_msgSend(v5, "isExpanded")}];
  v7 = [v5 factoidItem];

  [v6 setItem:v7];
}

void __47__TVRUIMediaViewController__configureHierarchy__block_invoke_2(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v10 = a2;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    [v10 setImageProvider:WeakRetained];
    v8 = [WeakRetained avatarGenerator];
    [v10 setAvatarGenerator:v8];
  }

  v9 = [v6 role];
  [v10 setRole:v9];
}

id __47__TVRUIMediaViewController__configureHierarchy__block_invoke_3(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  v10 = [v7 isFactoid];
  v11 = 40;
  if (v10)
  {
    v11 = 32;
  }

  v12 = [v9 dequeueConfiguredReusableCellWithRegistration:*(a1 + v11) forIndexPath:v8 item:v7];

  return v12;
}

void __47__TVRUIMediaViewController__configureHierarchy__block_invoke_4(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained mediaImage];
    [v6 setImage:v5];
  }
}

void __47__TVRUIMediaViewController__configureHierarchy__block_invoke_5(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = [WeakRetained dataSource];
  v13 = [v9 itemIdentifierForIndexPath:v6];

  v10 = [v13 role];
  v11 = [v10 roleDescription];
  v12 = [v7 titleLabel];

  [v12 setText:v11];
}

id __47__TVRUIMediaViewController__configureHierarchy__block_invoke_6(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  v10 = +[_TVRUILabelHeaderView elementKind];
  v11 = [v8 isEqualToString:v10];

  v12 = 40;
  if (v11)
  {
    v12 = 32;
  }

  v13 = [v9 dequeueConfiguredReusableSupplementaryViewWithRegistration:*(a1 + v12) forIndexPath:v7];

  return v13;
}

void __47__TVRUIMediaViewController__configureHierarchy__block_invoke_7(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained setUpNextOperationInProgress:0];
    [v2 _updateBarButtonItemFromCurrentState];
    WeakRetained = v2;
  }
}

- (id)actionButtonMenu
{
  v56[2] = *MEMORY[0x277D85DE8];
  v38 = [MEMORY[0x277D755B8] systemImageNamed:@"arrow.up.right.square"];
  v36 = [MEMORY[0x277D755B8] systemImageNamed:@"square.and.arrow.up"];
  v39 = [(TVRUIMediaViewController *)self mediaInfo];
  v3 = [v39 kind];
  switch(v3)
  {
    case 2:
      v4 = @"TVRUIShareMovie";
      v5 = @"TVRUIGotoMovie";
      goto LABEL_7;
    case 3:
      v4 = @"TVRUIShareShow";
      v5 = @"TVRUIGotoShow";
      goto LABEL_7;
    case 5:
      v4 = @"TVRUIShareSportingEvent";
      v5 = @"TVRUIGotoSportingEvent";
LABEL_7:
      v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v37 = [v6 localizedStringForKey:v5 value:&stru_287E6AEF8 table:@"Localizable"];

      v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v35 = [v7 localizedStringForKey:v4 value:&stru_287E6AEF8 table:@"Localizable"];

      goto LABEL_9;
  }

  v37 = &stru_287E6AEF8;
  v35 = &stru_287E6AEF8;
LABEL_9:
  objc_initWeak(&location, self);
  v8 = MEMORY[0x277D750C8];
  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = __44__TVRUIMediaViewController_actionButtonMenu__block_invoke;
  v51[3] = &unk_279D87C68;
  objc_copyWeak(&v52, &location);
  v34 = [v8 actionWithTitle:v37 image:v38 identifier:0 handler:v51];
  v9 = MEMORY[0x277D750C8];
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = __44__TVRUIMediaViewController_actionButtonMenu__block_invoke_2;
  v49[3] = &unk_279D87C68;
  objc_copyWeak(&v50, &location);
  v33 = [v9 actionWithTitle:v35 image:v36 identifier:0 handler:v49];
  v10 = [(TVRUIMediaViewController *)self upNextProvider];
  v11 = [v10 isItemInUpNextForMediaInfo:v39];

  v12 = MEMORY[0x277D750C8];
  v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  if (v11)
  {
    v32 = [v13 localizedStringForKey:@"RemoveFromUpNext" value:&stru_287E6AEF8 table:@"Localizable"];
    v14 = [MEMORY[0x277D755B8] systemImageNamed:@"minus.circle"];
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __44__TVRUIMediaViewController_actionButtonMenu__block_invoke_3;
    v46[3] = &unk_279D87E38;
    v15 = &v48;
    objc_copyWeak(&v48, &location);
    v16 = v39;
    v47 = v16;
    v17 = [v12 actionWithTitle:v32 image:v14 identifier:0 handler:v46];
    v56[0] = v17;
    v18 = MEMORY[0x277D750C8];
    v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v20 = [v19 localizedStringForKey:@"MarkAsWatched" value:&stru_287E6AEF8 table:@"Localizable"];
    v21 = [MEMORY[0x277D755B8] systemImageNamed:@"rectangle.badge.checkmark"];
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __44__TVRUIMediaViewController_actionButtonMenu__block_invoke_4;
    v43[3] = &unk_279D87E38;
    objc_copyWeak(&v45, &location);
    v44 = v16;
    v22 = [v18 actionWithTitle:v20 image:v21 identifier:0 handler:v43];
    v56[1] = v22;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v56 count:2];

    objc_destroyWeak(&v45);
    v24 = &v47;
  }

  else
  {
    v25 = [v13 localizedStringForKey:@"TVRUIAddToUpNext" value:&stru_287E6AEF8 table:@"Localizable"];
    v26 = [MEMORY[0x277D755B8] systemImageNamed:@"plus.circle"];
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __44__TVRUIMediaViewController_actionButtonMenu__block_invoke_5;
    v40[3] = &unk_279D87E38;
    v15 = &v42;
    objc_copyWeak(&v42, &location);
    v41 = v39;
    v27 = [v12 actionWithTitle:v25 image:v26 identifier:0 handler:v40];
    v55 = v27;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v55 count:1];

    v24 = &v41;
  }

  objc_destroyWeak(v15);
  v28 = [MEMORY[0x277D75710] menuWithTitle:&stru_287E6AEF8 image:0 identifier:0 options:1 children:v23];

  v54[0] = v34;
  v54[1] = v33;
  v54[2] = v28;
  v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v54 count:3];
  v30 = [MEMORY[0x277D75710] menuWithChildren:v29];

  objc_destroyWeak(&v50);
  objc_destroyWeak(&v52);
  objc_destroyWeak(&location);

  return v30;
}

void __44__TVRUIMediaViewController_actionButtonMenu__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _gotoMediaInfo];
}

void __44__TVRUIMediaViewController_actionButtonMenu__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _shareMediaInfo];
}

void __44__TVRUIMediaViewController_actionButtonMenu__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _removeFromUpNext:*(a1 + 32)];
}

void __44__TVRUIMediaViewController_actionButtonMenu__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _markAsWatched:*(a1 + 32)];
}

void __44__TVRUIMediaViewController_actionButtonMenu__block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _addToUpNext:*(a1 + 32)];
}

- (id)_collectionViewLayout
{
  v2 = [objc_alloc(MEMORY[0x277D752B8]) initWithSectionProvider:&__block_literal_global_79];
  v3 = objc_alloc_init(MEMORY[0x277D752C0]);
  [v3 setInterSectionSpacing:20.0];
  [v2 setConfiguration:v3];

  return v2;
}

id __49__TVRUIMediaViewController__collectionViewLayout__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v45[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (a2)
  {
    +[_TVRUIRoleCell preferredHeight];
    v6 = v5;
    v7 = MEMORY[0x277CFB870];
    v8 = [MEMORY[0x277CFB840] fractionalWidthDimension:1.0];
    v9 = [MEMORY[0x277CFB840] absoluteDimension:v6];
    v10 = [v7 sizeWithWidthDimension:v8 heightDimension:v9];

    v11 = [MEMORY[0x277CFB860] itemWithLayoutSize:v10];
    v12 = MEMORY[0x277CFB850];
    v43 = v11;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v43 count:1];
    v14 = [v12 verticalGroupWithLayoutSize:v10 subitems:v13];

    v15 = [MEMORY[0x277CFB868] sectionWithGroup:v14];
    [v15 setInterGroupSpacing:10.0];
    [v15 setContentInsets:{10.0, 20.0, 0.0, 20.0}];
    v16 = MEMORY[0x277CFB870];
    v17 = [MEMORY[0x277CFB840] fractionalWidthDimension:1.0];
    v18 = [MEMORY[0x277CFB840] estimatedDimension:44.0];
    v19 = [v16 sizeWithWidthDimension:v17 heightDimension:v18];

    v20 = MEMORY[0x277CFB830];
    v21 = +[_TVRUILabelHeaderView elementKind];
    v22 = [MEMORY[0x277CFB828] layoutAnchorWithEdges:1 fractionalOffset:{0.0, -1.0}];
    v23 = [v20 supplementaryItemWithLayoutSize:v19 elementKind:v21 containerAnchor:v22];

    [v23 setExtendsBoundary:1];
    v42 = v23;
    v24 = &v42;
  }

  else
  {
    v25 = MEMORY[0x277CFB870];
    v26 = [MEMORY[0x277CFB840] fractionalWidthDimension:1.0];
    v27 = MEMORY[0x277CFB840];
    +[_TVRUIFactoidCell preferredHeight];
    v28 = [v27 estimatedDimension:?];
    v10 = [v25 sizeWithWidthDimension:v26 heightDimension:v28];

    v11 = [MEMORY[0x277CFB860] itemWithLayoutSize:v10];
    v29 = MEMORY[0x277CFB850];
    v45[0] = v11;
    v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:1];
    v14 = [v29 verticalGroupWithLayoutSize:v10 subitems:v30];

    v15 = [MEMORY[0x277CFB868] sectionWithGroup:v14];
    v31 = [v4 container];
    [v31 contentSize];
    [_TVRUIImageHeaderView computedHeightForWidth:?];
    v33 = v32;

    v34 = MEMORY[0x277CFB870];
    v35 = [MEMORY[0x277CFB840] fractionalWidthDimension:1.0];
    v36 = [MEMORY[0x277CFB840] absoluteDimension:v33];
    v19 = [v34 sizeWithWidthDimension:v35 heightDimension:v36];

    v37 = MEMORY[0x277CFB830];
    v38 = +[_TVRUIImageHeaderView elementKind];
    v39 = [MEMORY[0x277CFB828] layoutAnchorWithEdges:1 fractionalOffset:{0.0, -1.0}];
    v23 = [v37 supplementaryItemWithLayoutSize:v19 elementKind:v38 containerAnchor:v39];

    [v23 setExtendsBoundary:1];
    v44 = v23;
    v24 = &v44;
  }

  v40 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
  [v15 setBoundarySupplementaryItems:v40];

  return v15;
}

- (void)_updateBarButtonItemFromCurrentState
{
  if ([(TVRUIMediaViewController *)self upNextOperationInProgress])
  {
    v3 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
    [v3 startAnimating];
    v14 = [objc_alloc(MEMORY[0x277D751E0]) initWithCustomView:v3];
  }

  else
  {
    v4 = MEMORY[0x277D755D0];
    v5 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D76920] variant:1024];
    v3 = [v4 configurationWithFont:v5];

    v6 = MEMORY[0x277D750C8];
    v7 = [MEMORY[0x277D755B8] systemImageNamed:@"ellipsis.circle" withConfiguration:v3];
    v8 = [v6 actionWithTitle:&stru_287E6AEF8 image:v7 identifier:0 handler:&__block_literal_global_95];

    v9 = [MEMORY[0x277D75230] plainButtonConfiguration];
    v10 = [MEMORY[0x277D75220] buttonWithConfiguration:v9 primaryAction:v8];
    v11 = [MEMORY[0x277D75348] whiteColor];
    [v10 setTintColor:v11];

    [v10 setOverrideUserInterfaceStyle:2];
    v12 = [(TVRUIMediaViewController *)self actionButtonMenu];
    [v10 setMenu:v12];

    [v10 setShowsMenuAsPrimaryAction:1];
    [(TVRUIMediaViewController *)self setActionButton:v10];
    v14 = [objc_alloc(MEMORY[0x277D751E0]) initWithCustomView:v10];
  }

  v13 = [(TVRUIMediaViewController *)self navigationItem];
  [v13 setRightBarButtonItem:v14];
}

- (void)_requestMediaInfoWithID:(id)a3
{
  v4 = a3;
  if (![(TVRUIMediaViewController *)self isRequestingMediaInfo])
  {
    [(TVRUIMediaViewController *)self setIsRequestingMediaInfo:1];
    objc_initWeak(&location, self);
    v5 = objc_alloc_init(MEMORY[0x277D6C540]);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __52__TVRUIMediaViewController__requestMediaInfoWithID___block_invoke;
    v6[3] = &unk_279D87EA0;
    objc_copyWeak(&v7, &location);
    [v5 requestForCanonicalID:v4 includeRoles:1 completion:v6];
    objc_destroyWeak(&v7);

    objc_destroyWeak(&location);
  }
}

void __52__TVRUIMediaViewController__requestMediaInfoWithID___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    if (!a3)
    {
      [WeakRetained _updateMediaInfo:v7];
    }

    [v6 setIsRequestingMediaInfo:0];
  }
}

- (void)_updateMediaInfo:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a3;
  objc_storeStrong(&self->_mediaInfo, a3);
  if (v5)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v6 = [v5 roles];
    v7 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v7)
    {
      v8 = *v24;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v24 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v23 + 1) + 8 * i);
          v11 = [v10 imageURLTemplate];
          +[_TVRUIRoleCell preferredImageSize];
          v13 = v12;
          v15 = v14;
          v16 = [v10 canonicalID];
          [(TVRUIMediaViewController *)self requestImageForTemplate:v11 size:v16 identifier:&__block_literal_global_102 completion:v13, v15];
        }

        v7 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v7);
    }

    objc_initWeak(&location, self);
    v17 = [(TVRUIMediaViewController *)self imageFetcher];
    v18 = [v5 imageURLTemplate];
    v19 = [v5 identifier];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __45__TVRUIMediaViewController__updateMediaInfo___block_invoke_2;
    v20[3] = &unk_279D87EC8;
    objc_copyWeak(&v21, &location);
    [v17 fetchImageWithTemplateString:v18 size:v19 identifier:v20 completion:{600.0, 338.0}];

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }
}

void __45__TVRUIMediaViewController__updateMediaInfo___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained setMediaImage:v6];
    [v5 _updateUIFromCurrentState];
  }
}

- (void)_updateUIFromCurrentState
{
  v47 = *MEMORY[0x277D85DE8];
  [(TVRUIMediaViewController *)self _updateBarButtonItemFromCurrentState];
  v3 = [(TVRUIMediaViewController *)self mediaInfo];
  v4 = [(TVRUIMediaViewController *)self _canShowMediaInfo];
  v5 = [(TVRUIMediaViewController *)self activityIndicatorView];
  [v5 setHidden:v4];

  if (v4)
  {
    v6 = objc_alloc_init(MEMORY[0x277CFB890]);
    [v6 appendSectionsWithIdentifiers:&unk_287E84A80];
    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v8 = [v3 tvrui_formattedSummary];
    if ([v8 length])
    {
      v9 = [_TVRUIFactoidItem factoidWithText:v8 options:1];
      v10 = [_TVRUIMediaItem itemWithFactoidItem:v9];
      [v7 addObject:v10];
    }

    v11 = [v3 extendedDescription];
    v12 = [v11 length];

    if (v12)
    {
      v13 = [v3 extendedDescription];
      v14 = [_TVRUIFactoidItem factoidWithText:v13 options:6];
      v15 = [_TVRUIMediaItem itemWithFactoidItem:v14];
      [v7 addObject:v15];
    }

    v32 = v7;
    [v6 appendItemsWithIdentifiers:v7];
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v33 = v3;
    obj = [v3 roleCategories];
    v16 = [obj countByEnumeratingWithState:&v40 objects:v46 count:16];
    if (v16)
    {
      v17 = v16;
      v35 = *v41;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v41 != v35)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v40 + 1) + 8 * i);
          v20 = [v19 roleDescription];
          v45 = v20;
          v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v45 count:1];
          [v6 appendSectionsWithIdentifiers:v21];

          v22 = objc_alloc_init(MEMORY[0x277CBEB18]);
          v36 = 0u;
          v37 = 0u;
          v38 = 0u;
          v39 = 0u;
          v23 = [v19 roles];
          v24 = [v23 countByEnumeratingWithState:&v36 objects:v44 count:16];
          if (v24)
          {
            v25 = v24;
            v26 = *v37;
            do
            {
              for (j = 0; j != v25; ++j)
              {
                if (*v37 != v26)
                {
                  objc_enumerationMutation(v23);
                }

                v28 = [_TVRUIMediaItem itemWithRole:*(*(&v36 + 1) + 8 * j)];
                [v22 addObject:v28];
              }

              v25 = [v23 countByEnumeratingWithState:&v36 objects:v44 count:16];
            }

            while (v25);
          }

          [v6 appendItemsWithIdentifiers:v22];
        }

        v17 = [obj countByEnumeratingWithState:&v40 objects:v46 count:16];
      }

      while (v17);
    }

    v29 = [(TVRUIMediaViewController *)self dataSource];
    [v29 applySnapshot:v6 animatingDifferences:0];

    v3 = v33;
  }

  else
  {
    v30 = [(TVRUIMediaViewController *)self activityIndicatorView];
    [v30 startAnimating];
  }
}

- (BOOL)_canShowMediaInfo
{
  v3 = [(TVRUIMediaViewController *)self mediaInfo];

  v4 = [(TVRUIMediaViewController *)self mediaImage];

  if (v3)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  return !v5;
}

- (void)_shareMediaInfo
{
  v3 = [(TVRUIMediaViewController *)self mediaInfo];
  v6 = [v3 productURL];

  if (v6)
  {
    v4 = [(TVRUIMediaViewController *)self actionProvider];
    v5 = [(TVRUIMediaViewController *)self view];
    [v4 shareItem:v6 presentingViewController:self sourceView:v5];
  }
}

- (void)_gotoMediaInfo
{
  v3 = [(TVRUIMediaViewController *)self mediaInfo];
  v5 = [v3 productURL];

  if (v5)
  {
    v4 = [(TVRUIMediaViewController *)self actionProvider];
    [v4 openURL:v5];
  }
}

- (void)_addToUpNext:(id)a3
{
  v5 = a3;
  v6 = [v5 identifier];
  if ([v6 length])
  {
    [(TVRUIMediaViewController *)self _didBeginUpNextCommand];
    objc_initWeak(&location, self);
    v7 = [(TVRUIMediaViewController *)self upNextProvider];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __41__TVRUIMediaViewController__addToUpNext___block_invoke;
    v8[3] = &unk_279D87EF0;
    objc_copyWeak(v9, &location);
    v9[1] = a2;
    [v7 addItemWithMediaIdentifier:v6 completion:v8];

    objc_destroyWeak(v9);
    objc_destroyWeak(&location);
  }
}

void __41__TVRUIMediaViewController__addToUpNext___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = NSStringFromSelector(*(a1 + 40));
  [WeakRetained _upNextCommand:v4 didCompleteWithError:v3];
}

- (void)_removeFromUpNext:(id)a3
{
  v5 = a3;
  v6 = [v5 identifier];
  if ([v6 length])
  {
    [(TVRUIMediaViewController *)self _didBeginUpNextCommand];
    objc_initWeak(&location, self);
    v7 = [(TVRUIMediaViewController *)self upNextProvider];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __46__TVRUIMediaViewController__removeFromUpNext___block_invoke;
    v8[3] = &unk_279D87EF0;
    objc_copyWeak(v9, &location);
    v9[1] = a2;
    [v7 removeItemWithMediaIdentifier:v6 completion:v8];

    objc_destroyWeak(v9);
    objc_destroyWeak(&location);
  }
}

void __46__TVRUIMediaViewController__removeFromUpNext___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = NSStringFromSelector(*(a1 + 40));
  [WeakRetained _upNextCommand:v4 didCompleteWithError:v3];
}

- (void)_markAsWatched:(id)a3
{
  v5 = a3;
  v6 = [v5 identifier];
  if ([v6 length])
  {
    [(TVRUIMediaViewController *)self _didBeginUpNextCommand];
    objc_initWeak(&location, self);
    v7 = [(TVRUIMediaViewController *)self upNextProvider];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __43__TVRUIMediaViewController__markAsWatched___block_invoke;
    v8[3] = &unk_279D87EF0;
    objc_copyWeak(v9, &location);
    v9[1] = a2;
    [v7 markAsWatchedWithMediaIdentifier:v6 completion:v8];

    objc_destroyWeak(v9);
    objc_destroyWeak(&location);
  }
}

void __43__TVRUIMediaViewController__markAsWatched___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = NSStringFromSelector(*(a1 + 40));
  [WeakRetained _upNextCommand:v4 didCompleteWithError:v3];
}

- (void)_didBeginUpNextCommand
{
  [(TVRUIMediaViewController *)self setUpNextOperationInProgress:1];

  [(TVRUIMediaViewController *)self _updateBarButtonItemFromCurrentState];
}

- (void)_upNextCommand:(id)a3 didCompleteWithError:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = _TVRUINowPlayingLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(TVRUIMediaViewController *)v6 _upNextCommand:v7 didCompleteWithError:v8];
    }

    [(TVRUIMediaViewController *)self setUpNextOperationInProgress:0];
    [(TVRUIMediaViewController *)self _updateBarButtonItemFromCurrentState];
  }
}

- (void)requestImageForTemplate:(id)a3 size:(CGSize)a4 identifier:(id)a5 completion:(id)a6
{
  height = a4.height;
  width = a4.width;
  v11 = a6;
  v12 = a5;
  v13 = a3;
  v14 = [(TVRUIMediaViewController *)self imageFetcher];
  [v14 fetchImageWithTemplateString:v13 size:v12 identifier:v11 completion:{width, height}];
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v16[1] = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [(TVRUIMediaViewController *)self dataSource];
  v7 = [v6 itemIdentifierForIndexPath:v5];

  if ([v7 isFactoid] && objc_msgSend(v7, "isExpandable"))
  {
    [v7 setIsExpanded:{objc_msgSend(v7, "isExpanded") ^ 1}];
    v8 = [(TVRUIMediaViewController *)self dataSource];
    v9 = [v8 snapshot];

    v16[0] = v7;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
    [v9 reconfigureItemsWithIdentifiers:v10];

    v11 = [(TVRUIMediaViewController *)self dataSource];
    [v11 applySnapshot:v9 animatingDifferences:0];
  }

  else if ([v7 isRole])
  {
    v12 = [v7 role];
    v13 = [(TVRUIMediaViewController *)self actionProvider];
    v14 = [v12 canonicalID];
    v15 = [v12 actorName];
    [v13 presentPersonWithID:v14 name:v15 image:0 presentingViewController:self];
  }
}

- (TVRUIActionProviding)actionProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_actionProvider);

  return WeakRetained;
}

- (TVRUIUpNextProviding)upNextProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_upNextProvider);

  return WeakRetained;
}

- (void)_upNextCommand:(os_log_t)log didCompleteWithError:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&dword_26CFEB000, log, OS_LOG_TYPE_ERROR, "Error performing %@ %{public}@", &v3, 0x16u);
}

@end