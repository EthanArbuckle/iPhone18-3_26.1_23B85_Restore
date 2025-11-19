@interface TVRUIPersonViewController
- (BOOL)_canShowPerson;
- (TVRUIActionProviding)actionProvider;
- (TVRUIImageFetcher)imageFetcher;
- (TVRUIUpNextProviding)upNextProvider;
- (id)_collectionViewLayout;
- (id)actionButtonMenu;
- (void)_configureHierarchy;
- (void)_gotoPerson;
- (void)_requestPersonWithID:(id)a3;
- (void)_sharePerson;
- (void)_updatePerson:(id)a3 filmography:(id)a4;
- (void)_updateUIFromCurrentState;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)requestImageForTemplate:(id)a3 size:(CGSize)a4 identifier:(id)a5 completion:(id)a6;
- (void)setPersonID:(id)a3;
- (void)setPersonName:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation TVRUIPersonViewController

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = TVRUIPersonViewController;
  [(TVRUIPersonViewController *)&v3 viewDidLoad];
  [(TVRUIPersonViewController *)self _configureHierarchy];
  [(TVRUIPersonViewController *)self _updateUIFromCurrentState];
}

- (void)viewWillAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = TVRUIPersonViewController;
  [(TVRUIPersonViewController *)&v5 viewWillAppear:a3];
  v4 = [(TVRUIPersonViewController *)self navigationController];
  [v4 setNavigationBarHidden:0 animated:1];
}

- (void)viewDidAppear:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = TVRUIPersonViewController;
  [(TVRUIPersonViewController *)&v8 viewDidAppear:a3];
  v4 = [(TVRUIPersonViewController *)self collectionView];
  v5 = [v4 indexPathsForSelectedItems];

  if ([v5 count])
  {
    v6 = [(TVRUIPersonViewController *)self collectionView];
    v7 = [v5 firstObject];
    [v6 deselectItemAtIndexPath:v7 animated:1];
  }
}

- (void)setPersonID:(id)a3
{
  v6 = a3;
  v5 = [v6 isEqualToString:self->_personID];
  objc_storeStrong(&self->_personID, a3);
  if ((v5 & 1) == 0 && ![(TVRUIPersonViewController *)self isRequestingPerson])
  {
    [(TVRUIPersonViewController *)self _requestPersonWithID:v6];
  }
}

- (void)setPersonName:(id)a3
{
  objc_storeStrong(&self->_personName, a3);
  v5 = a3;
  v6 = [(TVRUIPersonViewController *)self navigationItem];
  [v6 setTitle:v5];
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

- (void)_configureHierarchy
{
  v92 = *MEMORY[0x277D85DE8];
  [(TVRUIPersonViewController *)self setOverrideUserInterfaceStyle:2];
  val = self;
  v3 = [(TVRUIPersonViewController *)self view];
  v4 = [MEMORY[0x277D75348] colorWithWhite:0.1 alpha:1.0];
  [v3 setBackgroundColor:v4];

  v69 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:101];
  v5 = [MEMORY[0x277D752B0] registrationWithCellClass:objc_opt_class() configurationHandler:&__block_literal_global_9];
  objc_initWeak(&location, val);
  v6 = MEMORY[0x277D752B0];
  v7 = objc_opt_class();
  v86[0] = MEMORY[0x277D85DD0];
  v86[1] = 3221225472;
  v86[2] = __48__TVRUIPersonViewController__configureHierarchy__block_invoke_2;
  v86[3] = &unk_279D88310;
  objc_copyWeak(&v87, &location);
  v8 = [v6 registrationWithCellClass:v7 configurationHandler:v86];
  v9 = objc_alloc(MEMORY[0x277D752A0]);
  v10 = [(TVRUIPersonViewController *)val _collectionViewLayout];
  v71 = [v9 initWithFrame:v10 collectionViewLayout:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];

  [v71 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v71 setClipsToBounds:1];
  [v71 setDelegate:val];
  v11 = objc_alloc(MEMORY[0x277D752D0]);
  v83[0] = MEMORY[0x277D85DD0];
  v83[1] = 3221225472;
  v83[2] = __48__TVRUIPersonViewController__configureHierarchy__block_invoke_3;
  v83[3] = &unk_279D88338;
  v55 = v5;
  v84 = v55;
  v56 = v8;
  v85 = v56;
  v68 = [v11 initWithCollectionView:v71 cellProvider:v83];
  v12 = objc_opt_class();
  v13 = +[_TVRUIPersonHeader elementKind];
  v14 = +[_TVRUIPersonHeader reuseIdentifier];
  [v71 registerClass:v12 forSupplementaryViewOfKind:v13 withReuseIdentifier:v14];

  v15 = MEMORY[0x277D75320];
  v16 = objc_opt_class();
  v17 = +[_TVRUIPersonHeader elementKind];
  v81[0] = MEMORY[0x277D85DD0];
  v81[1] = 3221225472;
  v81[2] = __48__TVRUIPersonViewController__configureHierarchy__block_invoke_4;
  v81[3] = &unk_279D88360;
  objc_copyWeak(&v82, &location);
  v18 = [v15 registrationWithSupplementaryClass:v16 elementKind:v17 configurationHandler:v81];

  v19 = objc_opt_class();
  v20 = +[_TVRUILabelHeaderView elementKind];
  v21 = +[_TVRUILabelHeaderView reuseIdentifier];
  [v71 registerClass:v19 forSupplementaryViewOfKind:v20 withReuseIdentifier:v21];

  v22 = MEMORY[0x277D75320];
  v23 = objc_opt_class();
  v24 = +[_TVRUILabelHeaderView elementKind];
  v79[0] = MEMORY[0x277D85DD0];
  v79[1] = 3221225472;
  v79[2] = __48__TVRUIPersonViewController__configureHierarchy__block_invoke_5;
  v79[3] = &unk_279D87DC0;
  objc_copyWeak(&v80, &location);
  v25 = [v22 registrationWithSupplementaryClass:v23 elementKind:v24 configurationHandler:v79];

  v76[0] = MEMORY[0x277D85DD0];
  v76[1] = 3221225472;
  v76[2] = __48__TVRUIPersonViewController__configureHierarchy__block_invoke_6;
  v76[3] = &unk_279D87DE8;
  v54 = v25;
  v77 = v54;
  v53 = v18;
  v78 = v53;
  [v68 setSupplementaryViewProvider:v76];
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v90[0] = v71;
  v90[1] = v69;
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v90 count:2];
  v27 = [v26 countByEnumeratingWithState:&v72 objects:v91 count:16];
  if (v27)
  {
    v28 = *v73;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v73 != v28)
        {
          objc_enumerationMutation(v26);
        }

        v30 = *(*(&v72 + 1) + 8 * i);
        [v30 setTranslatesAutoresizingMaskIntoConstraints:0];
        [v3 addSubview:v30];
      }

      v27 = [v26 countByEnumeratingWithState:&v72 objects:v91 count:16];
    }

    while (v27);
  }

  v52 = MEMORY[0x277CCAAD0];
  v67 = [v69 centerXAnchor];
  v66 = [v3 centerXAnchor];
  v65 = [v67 constraintEqualToAnchor:v66];
  v89[0] = v65;
  v64 = [v69 centerYAnchor];
  v63 = [v3 centerYAnchor];
  v62 = [v64 constraintEqualToAnchor:v63];
  v89[1] = v62;
  v60 = [v71 topAnchor];
  v61 = [v3 safeAreaLayoutGuide];
  v59 = [v61 topAnchor];
  v58 = [v60 constraintEqualToAnchor:v59];
  v89[2] = v58;
  v57 = [v71 leadingAnchor];
  v31 = [v3 leadingAnchor];
  v32 = [v57 constraintEqualToAnchor:v31];
  v89[3] = v32;
  v33 = [v71 trailingAnchor];
  v34 = [v3 trailingAnchor];
  v35 = [v33 constraintEqualToAnchor:v34];
  v89[4] = v35;
  v36 = [v71 bottomAnchor];
  v37 = [v3 bottomAnchor];
  v38 = [v36 constraintEqualToAnchor:v37];
  v89[5] = v38;
  v39 = [MEMORY[0x277CBEA60] arrayWithObjects:v89 count:6];
  [v52 activateConstraints:v39];

  v40 = MEMORY[0x277D755D0];
  v41 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D76920] variant:1024];
  v42 = [v40 configurationWithFont:v41];

  v43 = MEMORY[0x277D750C8];
  v44 = [MEMORY[0x277D755B8] systemImageNamed:@"ellipsis.circle" withConfiguration:v42];
  v45 = [v43 actionWithTitle:&stru_287E6AEF8 image:v44 identifier:0 handler:&__block_literal_global_32];

  v46 = [MEMORY[0x277D75230] plainButtonConfiguration];
  v47 = [MEMORY[0x277D75220] buttonWithConfiguration:v46 primaryAction:v45];
  v48 = [MEMORY[0x277D75348] whiteColor];
  [v47 setTintColor:v48];

  [v47 setOverrideUserInterfaceStyle:2];
  v49 = [(TVRUIPersonViewController *)val actionButtonMenu];
  [v47 setMenu:v49];
  [v47 setShowsMenuAsPrimaryAction:1];
  v50 = [objc_alloc(MEMORY[0x277D751E0]) initWithCustomView:v47];

  v51 = [(TVRUIPersonViewController *)val navigationItem];
  [v51 setRightBarButtonItem:v50];

  [(TVRUIPersonViewController *)val setActivityIndicatorView:v69];
  [(TVRUIPersonViewController *)val setCollectionView:v71];
  [(TVRUIPersonViewController *)val setDataSource:v68];

  objc_destroyWeak(&v80);
  objc_destroyWeak(&v82);

  objc_destroyWeak(&v87);
  objc_destroyWeak(&location);
}

void __48__TVRUIPersonViewController__configureHierarchy__block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v6 = a2;
  [v6 setIsExpanded:{objc_msgSend(v5, "isExpanded")}];
  v7 = [v5 factoidItem];

  [v6 setItem:v7];
}

void __48__TVRUIPersonViewController__configureHierarchy__block_invoke_2(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v10 = a2;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    [v10 setImageProvider:WeakRetained];
    v8 = [WeakRetained upNextProvider];
    [v10 setUpNextProvider:v8];
  }

  v9 = [v6 mediaInfo];
  [v10 setMediaInfo:v9];
}

id __48__TVRUIPersonViewController__configureHierarchy__block_invoke_3(uint64_t a1, void *a2, void *a3, void *a4)
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

void __48__TVRUIPersonViewController__configureHierarchy__block_invoke_4(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [v6 setShowsImageBorder:{objc_msgSend(WeakRetained, "personImageIsAvatar") ^ 1}];
    v5 = [v4 personImage];
    [v6 setImage:v5];
  }
}

void __48__TVRUIPersonViewController__configureHierarchy__block_invoke_5(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v11 = a2;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained dataSource];
    v10 = [v9 sectionIdentifierForIndex:{objc_msgSend(v6, "section")}];

    [v11 setTitle:v10];
  }
}

id __48__TVRUIPersonViewController__configureHierarchy__block_invoke_6(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = +[_TVRUILabelHeaderView elementKind];
  v11 = [v8 isEqualToString:v10];

  if (v11)
  {
    v12 = 32;
LABEL_5:
    v15 = [v7 dequeueConfiguredReusableSupplementaryViewWithRegistration:*(a1 + v12) forIndexPath:v9];
    goto LABEL_7;
  }

  v13 = +[_TVRUIPersonHeader elementKind];
  v14 = [v8 isEqualToString:v13];

  if (v14)
  {
    v12 = 40;
    goto LABEL_5;
  }

  v15 = 0;
LABEL_7:

  return v15;
}

- (id)actionButtonMenu
{
  v24[2] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D755B8] systemImageNamed:@"arrow.up.right.square"];
  v4 = [MEMORY[0x277D755B8] systemImageNamed:@"square.and.arrow.up"];
  objc_initWeak(&location, self);
  v5 = MEMORY[0x277D750C8];
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"TVRUIGotoPerson" value:&stru_287E6AEF8 table:@"Localizable"];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __45__TVRUIPersonViewController_actionButtonMenu__block_invoke;
  v21[3] = &unk_279D87C68;
  objc_copyWeak(&v22, &location);
  v8 = [v5 actionWithTitle:v7 image:v3 identifier:0 handler:v21];

  v9 = MEMORY[0x277D750C8];
  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"TVRUISharePerson" value:&stru_287E6AEF8 table:@"Localizable"];
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __45__TVRUIPersonViewController_actionButtonMenu__block_invoke_2;
  v19 = &unk_279D87C68;
  objc_copyWeak(&v20, &location);
  v12 = [v9 actionWithTitle:v11 image:v4 identifier:0 handler:&v16];

  v24[0] = v8;
  v24[1] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:{2, v16, v17, v18, v19}];
  v14 = [MEMORY[0x277D75710] menuWithChildren:v13];

  objc_destroyWeak(&v20);
  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);

  return v14;
}

void __45__TVRUIPersonViewController_actionButtonMenu__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _gotoPerson];
}

void __45__TVRUIPersonViewController_actionButtonMenu__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _sharePerson];
}

- (id)_collectionViewLayout
{
  objc_initWeak(&location, self);
  v2 = objc_alloc(MEMORY[0x277D752B8]);
  v6 = MEMORY[0x277D85DD0];
  v7 = 3221225472;
  v8 = __50__TVRUIPersonViewController__collectionViewLayout__block_invoke;
  v9 = &unk_279D88388;
  objc_copyWeak(&v10, &location);
  v3 = [v2 initWithSectionProvider:&v6];
  v4 = objc_alloc_init(MEMORY[0x277D752C0]);
  [v4 setInterSectionSpacing:{20.0, v6, v7, v8, v9}];
  [v3 setConfiguration:v4];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);

  return v3;
}

id __50__TVRUIPersonViewController__collectionViewLayout__block_invoke(uint64_t a1, uint64_t a2)
{
  v43[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained personImageIsAvatar] ^ 1;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    +[_TVRUIMediaInfoCell preferredHeight];
    v7 = v6;
    v8 = MEMORY[0x277CFB870];
    v9 = [MEMORY[0x277CFB840] fractionalWidthDimension:1.0];
    v10 = [MEMORY[0x277CFB840] absoluteDimension:v7];
    v11 = [v8 sizeWithWidthDimension:v9 heightDimension:v10];

    v12 = [MEMORY[0x277CFB860] itemWithLayoutSize:v11];
    v13 = MEMORY[0x277CFB850];
    v41 = v12;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v41 count:1];
    v15 = [v13 verticalGroupWithLayoutSize:v11 subitems:v14];

    v16 = [MEMORY[0x277CFB868] sectionWithGroup:v15];
    v17 = MEMORY[0x277CFB870];
    v18 = [MEMORY[0x277CFB840] fractionalWidthDimension:1.0];
    v19 = [MEMORY[0x277CFB840] estimatedDimension:44.0];
    v20 = [v17 sizeWithWidthDimension:v18 heightDimension:v19];

    v21 = MEMORY[0x277CFB830];
    v22 = +[_TVRUILabelHeaderView elementKind];
    v23 = [MEMORY[0x277CFB828] layoutAnchorWithEdges:1 fractionalOffset:{0.0, -1.0}];
    v24 = [v21 supplementaryItemWithLayoutSize:v20 elementKind:v22 containerAnchor:v23];

    [v24 setContentInsets:{10.0, 20.0, 0.0, 20.0}];
    [v24 setExtendsBoundary:1];
    v40 = v24;
    v25 = &v40;
  }

  else
  {
    v26 = MEMORY[0x277CFB870];
    v27 = [MEMORY[0x277CFB840] fractionalWidthDimension:1.0];
    v28 = MEMORY[0x277CFB840];
    +[_TVRUIFactoidCell preferredHeight];
    v29 = [v28 estimatedDimension:?];
    v11 = [v26 sizeWithWidthDimension:v27 heightDimension:v29];

    v12 = [MEMORY[0x277CFB860] itemWithLayoutSize:v11];
    v30 = MEMORY[0x277CFB850];
    v43[0] = v12;
    v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:1];
    v15 = [v30 verticalGroupWithLayoutSize:v11 subitems:v31];

    v16 = [MEMORY[0x277CFB868] sectionWithGroup:v15];
    if (!v5)
    {
      goto LABEL_9;
    }

    v32 = MEMORY[0x277CFB870];
    v33 = [MEMORY[0x277CFB840] fractionalWidthDimension:1.0];
    v34 = [MEMORY[0x277CFB840] absoluteDimension:300.0];
    v20 = [v32 sizeWithWidthDimension:v33 heightDimension:v34];

    v35 = MEMORY[0x277CFB830];
    v36 = +[_TVRUIPersonHeader elementKind];
    v37 = [MEMORY[0x277CFB828] layoutAnchorWithEdges:1 fractionalOffset:{0.0, -1.0}];
    v24 = [v35 supplementaryItemWithLayoutSize:v20 elementKind:v36 containerAnchor:v37];

    [v24 setExtendsBoundary:1];
    v42 = v24;
    v25 = &v42;
  }

  v38 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];
  [v16 setBoundarySupplementaryItems:v38];

LABEL_9:

  return v16;
}

- (void)_requestPersonWithID:(id)a3
{
  v4 = a3;
  [(TVRUIPersonViewController *)self setIsRequestingPerson:1];
  objc_initWeak(&location, self);
  v5 = objc_alloc_init(MEMORY[0x277D6C548]);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __50__TVRUIPersonViewController__requestPersonWithID___block_invoke;
  v6[3] = &unk_279D883B0;
  objc_copyWeak(&v7, &location);
  [v5 requestForPersonID:v4 completion:v6];
  objc_destroyWeak(&v7);

  objc_destroyWeak(&location);
}

void __50__TVRUIPersonViewController__requestPersonWithID___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v10 = a2;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    if (!a4)
    {
      [WeakRetained _updatePerson:v10 filmography:v7];
    }

    [v9 setIsRequestingPerson:0];
  }
}

- (void)_updatePerson:(id)a3 filmography:(id)a4
{
  v7 = a3;
  v8 = a4;
  objc_storeStrong(&self->_person, a3);
  objc_storeStrong(&self->_filmography, a4);
  if (v7)
  {
    [(TVRUIPersonViewController *)self _updateUIFromCurrentState];
    v9 = [v7 imageURLTemplate];
    v10 = [v9 length];

    if (v10)
    {
      objc_initWeak(&location, self);
      v11 = [(TVRUIPersonViewController *)self imageFetcher];
      v12 = [v7 imageURLTemplate];
      v13 = [v7 identifier];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __55__TVRUIPersonViewController__updatePerson_filmography___block_invoke;
      v14[3] = &unk_279D87EC8;
      objc_copyWeak(&v15, &location);
      [v11 fetchImageWithTemplateString:v12 size:v13 identifier:v14 completion:{1000.0, 1000.0}];

      objc_destroyWeak(&v15);
      objc_destroyWeak(&location);
    }

    else
    {
      [(TVRUIPersonViewController *)self _updatePersonFallbackImageFromCurrentState];
      [(TVRUIPersonViewController *)self _updateUIFromCurrentState];
    }
  }
}

void __55__TVRUIPersonViewController__updatePerson_filmography___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained personImage];

    if (!v6)
    {
      if (v7)
      {
        [v5 setPersonImage:?];
      }

      else
      {
        [v5 _updatePersonFallbackImageFromCurrentState];
      }

      [v5 _updateUIFromCurrentState];
    }
  }
}

- (void)_updateUIFromCurrentState
{
  v60 = *MEMORY[0x277D85DE8];
  v3 = [(TVRUIPersonViewController *)self person];
  v4 = [(TVRUIPersonViewController *)self _canShowPerson];
  v5 = [(TVRUIPersonViewController *)self activityIndicatorView];
  [v5 setHidden:v4];

  if (v4)
  {
    v6 = [v3 name];
    v7 = [(TVRUIPersonViewController *)self navigationItem];
    [v7 setTitle:v6];

    v8 = objc_alloc_init(MEMORY[0x277CFB890]);
    [v8 appendSectionsWithIdentifiers:&unk_287E84AE0];
    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v10 = [v3 birthplace];
    v11 = __54__TVRUIPersonViewController__updateUIFromCurrentState__block_invoke(v10, &stru_287E6AEF8, v10);

    v12 = [v3 formattedBirthDate];
    v13 = __54__TVRUIPersonViewController__updateUIFromCurrentState__block_invoke(v12, v11, v12);

    v14 = [v3 formattedDeathDate];
    v15 = __54__TVRUIPersonViewController__updateUIFromCurrentState__block_invoke(v14, v13, v14);

    v16 = [v3 formattedAge];
    v17 = __54__TVRUIPersonViewController__updateUIFromCurrentState__block_invoke(v16, v15, v16);

    if ([v17 length])
    {
      v18 = [_TVRUIFactoidItem factoidWithText:v17 options:1];
      v19 = [_TVRUIPersonItem itemWithFactoidItem:v18];
      [v9 addObject:v19];
    }

    v20 = [v3 bio];
    v21 = [v20 length];

    if (v21)
    {
      v22 = [v3 bio];
      v23 = [_TVRUIFactoidItem factoidWithText:v22 options:6];
      v24 = [_TVRUIPersonItem itemWithFactoidItem:v23];
      [v9 addObject:v24];
    }

    v46 = v3;
    v44 = v9;
    [v8 appendItemsWithIdentifiers:v9];
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v45 = self;
    v25 = [(TVRUIPersonViewController *)self filmography];
    v26 = [v25 categories];

    obj = v26;
    v27 = [v26 countByEnumeratingWithState:&v53 objects:v59 count:16];
    if (v27)
    {
      v28 = v27;
      v48 = *v54;
      do
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v54 != v48)
          {
            objc_enumerationMutation(obj);
          }

          v30 = *(*(&v53 + 1) + 8 * i);
          v31 = [v30 title];
          v58 = v31;
          v32 = [MEMORY[0x277CBEA60] arrayWithObjects:&v58 count:1];
          v33 = v8;
          [v8 appendSectionsWithIdentifiers:v32];

          v34 = objc_alloc_init(MEMORY[0x277CBEB18]);
          v49 = 0u;
          v50 = 0u;
          v51 = 0u;
          v52 = 0u;
          v35 = [v30 orderedItems];
          v36 = [v35 countByEnumeratingWithState:&v49 objects:v57 count:16];
          if (v36)
          {
            v37 = v36;
            v38 = *v50;
            do
            {
              for (j = 0; j != v37; ++j)
              {
                if (*v50 != v38)
                {
                  objc_enumerationMutation(v35);
                }

                v40 = [_TVRUIPersonItem itemWithMediaInfo:*(*(&v49 + 1) + 8 * j)];
                [v34 addObject:v40];
              }

              v37 = [v35 countByEnumeratingWithState:&v49 objects:v57 count:16];
            }

            while (v37);
          }

          v8 = v33;
          [v33 appendItemsWithIdentifiers:v34];
        }

        v28 = [obj countByEnumeratingWithState:&v53 objects:v59 count:16];
      }

      while (v28);
    }

    v41 = [(TVRUIPersonViewController *)v45 dataSource];
    [v41 applySnapshotUsingReloadData:v8];

    v3 = v46;
  }

  else
  {
    v42 = [(TVRUIPersonViewController *)self activityIndicatorView];
    [v42 startAnimating];
  }
}

id __54__TVRUIPersonViewController__updateUIFromCurrentState__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  if ([v4 length])
  {
    if ([v5 length])
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@ %@", v4, @"・", v5];
    }

    else
    {
      v6 = v4;
    }
  }

  else
  {
    v6 = v5;
  }

  v7 = v6;

  return v7;
}

- (BOOL)_canShowPerson
{
  v3 = [(TVRUIPersonViewController *)self person];

  v4 = [(TVRUIPersonViewController *)self filmography];

  v5 = [(TVRUIPersonViewController *)self personImage];

  if (v3)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = v6;
  if (v6 || v5)
  {
    return v7 ^ 1;
  }

  return [(TVRUIPersonViewController *)self personImageIsAvatar];
}

- (void)_sharePerson
{
  v3 = [(TVRUIPersonViewController *)self person];
  v6 = [v3 url];

  if (v6)
  {
    v4 = [(TVRUIPersonViewController *)self actionProvider];
    v5 = [(TVRUIPersonViewController *)self view];
    [v4 shareItem:v6 presentingViewController:self sourceView:v5];
  }
}

- (void)_gotoPerson
{
  v3 = [(TVRUIPersonViewController *)self person];
  v5 = [v3 url];

  if (v5)
  {
    v4 = [(TVRUIPersonViewController *)self actionProvider];
    [v4 openURL:v5];
  }
}

- (void)requestImageForTemplate:(id)a3 size:(CGSize)a4 identifier:(id)a5 completion:(id)a6
{
  v9 = a4.width + a4.width;
  v10 = a4.height + a4.height;
  v11 = a6;
  v12 = a5;
  v13 = a3;
  v14 = [(TVRUIPersonViewController *)self imageFetcher];
  [v14 fetchImageWithTemplateString:v13 size:v12 identifier:v11 completion:{v9, v10}];
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v17[1] = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [(TVRUIPersonViewController *)self dataSource];
  v7 = [v6 itemIdentifierForIndexPath:v5];

  if ([v7 isFactoid] && objc_msgSend(v7, "isExpandable"))
  {
    [v7 setIsExpanded:{objc_msgSend(v7, "isExpanded") ^ 1}];
    v8 = [(TVRUIPersonViewController *)self dataSource];
    v9 = [v8 snapshot];

    v17[0] = v7;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
    [v9 reconfigureItemsWithIdentifiers:v10];

    v11 = [(TVRUIPersonViewController *)self dataSource];
    [v11 applySnapshot:v9 animatingDifferences:0];
  }

  else if ([v7 isMediaInfo])
  {
    v12 = [(TVRUIPersonViewController *)self actionProvider];
    v13 = [v7 mediaInfo];
    v14 = [v13 identifier];
    v15 = [v7 mediaInfo];
    v16 = [v15 title];
    [v12 presentMediaWithID:v14 title:v16 presentingViewController:self];
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

@end