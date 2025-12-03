@interface TVRUIPersonViewController
- (BOOL)_canShowPerson;
- (TVRUIActionProviding)actionProvider;
- (TVRUIImageFetcher)imageFetcher;
- (TVRUIUpNextProviding)upNextProvider;
- (id)_collectionViewLayout;
- (id)actionButtonMenu;
- (void)_configureHierarchy;
- (void)_gotoPerson;
- (void)_requestPersonWithID:(id)d;
- (void)_sharePerson;
- (void)_updatePerson:(id)person filmography:(id)filmography;
- (void)_updateUIFromCurrentState;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)requestImageForTemplate:(id)template size:(CGSize)size identifier:(id)identifier completion:(id)completion;
- (void)setPersonID:(id)d;
- (void)setPersonName:(id)name;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
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

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = TVRUIPersonViewController;
  [(TVRUIPersonViewController *)&v5 viewWillAppear:appear];
  navigationController = [(TVRUIPersonViewController *)self navigationController];
  [navigationController setNavigationBarHidden:0 animated:1];
}

- (void)viewDidAppear:(BOOL)appear
{
  v8.receiver = self;
  v8.super_class = TVRUIPersonViewController;
  [(TVRUIPersonViewController *)&v8 viewDidAppear:appear];
  collectionView = [(TVRUIPersonViewController *)self collectionView];
  indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];

  if ([indexPathsForSelectedItems count])
  {
    collectionView2 = [(TVRUIPersonViewController *)self collectionView];
    firstObject = [indexPathsForSelectedItems firstObject];
    [collectionView2 deselectItemAtIndexPath:firstObject animated:1];
  }
}

- (void)setPersonID:(id)d
{
  dCopy = d;
  v5 = [dCopy isEqualToString:self->_personID];
  objc_storeStrong(&self->_personID, d);
  if ((v5 & 1) == 0 && ![(TVRUIPersonViewController *)self isRequestingPerson])
  {
    [(TVRUIPersonViewController *)self _requestPersonWithID:dCopy];
  }
}

- (void)setPersonName:(id)name
{
  objc_storeStrong(&self->_personName, name);
  nameCopy = name;
  navigationItem = [(TVRUIPersonViewController *)self navigationItem];
  [navigationItem setTitle:nameCopy];
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
  view = [(TVRUIPersonViewController *)self view];
  v4 = [MEMORY[0x277D75348] colorWithWhite:0.1 alpha:1.0];
  [view setBackgroundColor:v4];

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
  _collectionViewLayout = [(TVRUIPersonViewController *)val _collectionViewLayout];
  v71 = [v9 initWithFrame:_collectionViewLayout collectionViewLayout:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];

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
        [view addSubview:v30];
      }

      v27 = [v26 countByEnumeratingWithState:&v72 objects:v91 count:16];
    }

    while (v27);
  }

  v52 = MEMORY[0x277CCAAD0];
  centerXAnchor = [v69 centerXAnchor];
  centerXAnchor2 = [view centerXAnchor];
  v65 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v89[0] = v65;
  centerYAnchor = [v69 centerYAnchor];
  centerYAnchor2 = [view centerYAnchor];
  v62 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v89[1] = v62;
  topAnchor = [v71 topAnchor];
  safeAreaLayoutGuide = [view safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide topAnchor];
  v58 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v89[2] = v58;
  leadingAnchor = [v71 leadingAnchor];
  leadingAnchor2 = [view leadingAnchor];
  v32 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v89[3] = v32;
  trailingAnchor = [v71 trailingAnchor];
  trailingAnchor2 = [view trailingAnchor];
  v35 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v89[4] = v35;
  bottomAnchor = [v71 bottomAnchor];
  bottomAnchor2 = [view bottomAnchor];
  v38 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v89[5] = v38;
  v39 = [MEMORY[0x277CBEA60] arrayWithObjects:v89 count:6];
  [v52 activateConstraints:v39];

  v40 = MEMORY[0x277D755D0];
  v41 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D76920] variant:1024];
  v42 = [v40 configurationWithFont:v41];

  v43 = MEMORY[0x277D750C8];
  v44 = [MEMORY[0x277D755B8] systemImageNamed:@"ellipsis.circle" withConfiguration:v42];
  v45 = [v43 actionWithTitle:&stru_287E6AEF8 image:v44 identifier:0 handler:&__block_literal_global_32];

  plainButtonConfiguration = [MEMORY[0x277D75230] plainButtonConfiguration];
  v47 = [MEMORY[0x277D75220] buttonWithConfiguration:plainButtonConfiguration primaryAction:v45];
  whiteColor = [MEMORY[0x277D75348] whiteColor];
  [v47 setTintColor:whiteColor];

  [v47 setOverrideUserInterfaceStyle:2];
  actionButtonMenu = [(TVRUIPersonViewController *)val actionButtonMenu];
  [v47 setMenu:actionButtonMenu];
  [v47 setShowsMenuAsPrimaryAction:1];
  v50 = [objc_alloc(MEMORY[0x277D751E0]) initWithCustomView:v47];

  navigationItem = [(TVRUIPersonViewController *)val navigationItem];
  [navigationItem setRightBarButtonItem:v50];

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

- (void)_requestPersonWithID:(id)d
{
  dCopy = d;
  [(TVRUIPersonViewController *)self setIsRequestingPerson:1];
  objc_initWeak(&location, self);
  v5 = objc_alloc_init(MEMORY[0x277D6C548]);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __50__TVRUIPersonViewController__requestPersonWithID___block_invoke;
  v6[3] = &unk_279D883B0;
  objc_copyWeak(&v7, &location);
  [v5 requestForPersonID:dCopy completion:v6];
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

- (void)_updatePerson:(id)person filmography:(id)filmography
{
  personCopy = person;
  filmographyCopy = filmography;
  objc_storeStrong(&self->_person, person);
  objc_storeStrong(&self->_filmography, filmography);
  if (personCopy)
  {
    [(TVRUIPersonViewController *)self _updateUIFromCurrentState];
    imageURLTemplate = [personCopy imageURLTemplate];
    v10 = [imageURLTemplate length];

    if (v10)
    {
      objc_initWeak(&location, self);
      imageFetcher = [(TVRUIPersonViewController *)self imageFetcher];
      imageURLTemplate2 = [personCopy imageURLTemplate];
      identifier = [personCopy identifier];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __55__TVRUIPersonViewController__updatePerson_filmography___block_invoke;
      v14[3] = &unk_279D87EC8;
      objc_copyWeak(&v15, &location);
      [imageFetcher fetchImageWithTemplateString:imageURLTemplate2 size:identifier identifier:v14 completion:{1000.0, 1000.0}];

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
  person = [(TVRUIPersonViewController *)self person];
  _canShowPerson = [(TVRUIPersonViewController *)self _canShowPerson];
  activityIndicatorView = [(TVRUIPersonViewController *)self activityIndicatorView];
  [activityIndicatorView setHidden:_canShowPerson];

  if (_canShowPerson)
  {
    name = [person name];
    navigationItem = [(TVRUIPersonViewController *)self navigationItem];
    [navigationItem setTitle:name];

    v8 = objc_alloc_init(MEMORY[0x277CFB890]);
    [v8 appendSectionsWithIdentifiers:&unk_287E84AE0];
    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    birthplace = [person birthplace];
    v11 = __54__TVRUIPersonViewController__updateUIFromCurrentState__block_invoke(birthplace, &stru_287E6AEF8, birthplace);

    formattedBirthDate = [person formattedBirthDate];
    v13 = __54__TVRUIPersonViewController__updateUIFromCurrentState__block_invoke(formattedBirthDate, v11, formattedBirthDate);

    formattedDeathDate = [person formattedDeathDate];
    v15 = __54__TVRUIPersonViewController__updateUIFromCurrentState__block_invoke(formattedDeathDate, v13, formattedDeathDate);

    formattedAge = [person formattedAge];
    v17 = __54__TVRUIPersonViewController__updateUIFromCurrentState__block_invoke(formattedAge, v15, formattedAge);

    if ([v17 length])
    {
      v18 = [_TVRUIFactoidItem factoidWithText:v17 options:1];
      v19 = [_TVRUIPersonItem itemWithFactoidItem:v18];
      [v9 addObject:v19];
    }

    v20 = [person bio];
    v21 = [v20 length];

    if (v21)
    {
      v22 = [person bio];
      v23 = [_TVRUIFactoidItem factoidWithText:v22 options:6];
      v24 = [_TVRUIPersonItem itemWithFactoidItem:v23];
      [v9 addObject:v24];
    }

    v46 = person;
    v44 = v9;
    [v8 appendItemsWithIdentifiers:v9];
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    selfCopy = self;
    filmography = [(TVRUIPersonViewController *)self filmography];
    categories = [filmography categories];

    obj = categories;
    v27 = [categories countByEnumeratingWithState:&v53 objects:v59 count:16];
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
          title = [v30 title];
          v58 = title;
          v32 = [MEMORY[0x277CBEA60] arrayWithObjects:&v58 count:1];
          v33 = v8;
          [v8 appendSectionsWithIdentifiers:v32];

          v34 = objc_alloc_init(MEMORY[0x277CBEB18]);
          v49 = 0u;
          v50 = 0u;
          v51 = 0u;
          v52 = 0u;
          orderedItems = [v30 orderedItems];
          v36 = [orderedItems countByEnumeratingWithState:&v49 objects:v57 count:16];
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
                  objc_enumerationMutation(orderedItems);
                }

                v40 = [_TVRUIPersonItem itemWithMediaInfo:*(*(&v49 + 1) + 8 * j)];
                [v34 addObject:v40];
              }

              v37 = [orderedItems countByEnumeratingWithState:&v49 objects:v57 count:16];
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

    dataSource = [(TVRUIPersonViewController *)selfCopy dataSource];
    [dataSource applySnapshotUsingReloadData:v8];

    person = v46;
  }

  else
  {
    activityIndicatorView2 = [(TVRUIPersonViewController *)self activityIndicatorView];
    [activityIndicatorView2 startAnimating];
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
  person = [(TVRUIPersonViewController *)self person];

  filmography = [(TVRUIPersonViewController *)self filmography];

  personImage = [(TVRUIPersonViewController *)self personImage];

  if (person)
  {
    v6 = filmography == 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = v6;
  if (v6 || personImage)
  {
    return v7 ^ 1;
  }

  return [(TVRUIPersonViewController *)self personImageIsAvatar];
}

- (void)_sharePerson
{
  person = [(TVRUIPersonViewController *)self person];
  v6 = [person url];

  if (v6)
  {
    actionProvider = [(TVRUIPersonViewController *)self actionProvider];
    view = [(TVRUIPersonViewController *)self view];
    [actionProvider shareItem:v6 presentingViewController:self sourceView:view];
  }
}

- (void)_gotoPerson
{
  person = [(TVRUIPersonViewController *)self person];
  v5 = [person url];

  if (v5)
  {
    actionProvider = [(TVRUIPersonViewController *)self actionProvider];
    [actionProvider openURL:v5];
  }
}

- (void)requestImageForTemplate:(id)template size:(CGSize)size identifier:(id)identifier completion:(id)completion
{
  v9 = size.width + size.width;
  v10 = size.height + size.height;
  completionCopy = completion;
  identifierCopy = identifier;
  templateCopy = template;
  imageFetcher = [(TVRUIPersonViewController *)self imageFetcher];
  [imageFetcher fetchImageWithTemplateString:templateCopy size:identifierCopy identifier:completionCopy completion:{v9, v10}];
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  v17[1] = *MEMORY[0x277D85DE8];
  pathCopy = path;
  dataSource = [(TVRUIPersonViewController *)self dataSource];
  v7 = [dataSource itemIdentifierForIndexPath:pathCopy];

  if ([v7 isFactoid] && objc_msgSend(v7, "isExpandable"))
  {
    [v7 setIsExpanded:{objc_msgSend(v7, "isExpanded") ^ 1}];
    dataSource2 = [(TVRUIPersonViewController *)self dataSource];
    snapshot = [dataSource2 snapshot];

    v17[0] = v7;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
    [snapshot reconfigureItemsWithIdentifiers:v10];

    dataSource3 = [(TVRUIPersonViewController *)self dataSource];
    [dataSource3 applySnapshot:snapshot animatingDifferences:0];
  }

  else if ([v7 isMediaInfo])
  {
    actionProvider = [(TVRUIPersonViewController *)self actionProvider];
    mediaInfo = [v7 mediaInfo];
    identifier = [mediaInfo identifier];
    mediaInfo2 = [v7 mediaInfo];
    title = [mediaInfo2 title];
    [actionProvider presentMediaWithID:identifier title:title presentingViewController:self];
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