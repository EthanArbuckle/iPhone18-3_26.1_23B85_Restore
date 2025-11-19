@interface TVRUIAppLauncherStackViewController
- (BOOL)isCurrentlyPlayingMedia;
- (TVRUIActionProviding)actionProvider;
- (TVRUIAppLauncherStackViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (TVRUINowPlayingProviding)nowPlayingProvider;
- (id)collectionViewLayout;
- (void)_appInfosDidUpdateNotification:(id)a3;
- (void)_appInfosWillUpdateNotification:(id)a3;
- (void)_confirmOkToOpenApp:(id)a3 withHandler:(id)a4;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)configureHierarchy;
- (void)dealloc;
- (void)hideApp:(id)a3;
- (void)launchApp:(id)a3;
- (void)resetContent;
- (void)updateFromAppInfosAnimated:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation TVRUIAppLauncherStackViewController

- (TVRUIAppLauncherStackViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v9.receiver = self;
  v9.super_class = TVRUIAppLauncherStackViewController;
  v4 = [(TVRUIAppLauncherStackViewController *)&v9 initWithNibName:a3 bundle:a4];
  if (v4)
  {
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"TVRUIApps" value:&stru_287E6AEF8 table:@"Localizable"];
    [(TVRUIAppLauncherStackViewController *)v4 setTitle:v6];

    v7 = objc_alloc_init(TVREventHaptic);
    [(TVRUIAppLauncherStackViewController *)v4 setEventHaptic:v7];
  }

  return v4;
}

- (void)resetContent
{
  v4 = objc_alloc_init(MEMORY[0x277CFB890]);
  v3 = [(TVRUIAppLauncherStackViewController *)self dataSource];
  [v3 applySnapshot:v4 animatingDifferences:0];
}

- (void)viewDidLoad
{
  v10.receiver = self;
  v10.super_class = TVRUIAppLauncherStackViewController;
  [(TVRUIAppLauncherStackViewController *)&v10 viewDidLoad];
  [(TVRUIAppLauncherStackViewController *)self configureHierarchy];
  [(TVRUIAppLauncherStackViewController *)self updateFromAppInfosAnimated:0];
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 addObserver:self selector:sel__appInfosDidUpdateNotification_ name:@"TVRUILaunchableAppsControllerAppInfosDidChangeNotification" object:0];

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 addObserver:self selector:sel__appInfosWillUpdateNotification_ name:@"TVRUILaunchableAppsControllerAppInfosWillChangeNotification" object:0];

  v5 = [(TVRUIAppLauncherStackViewController *)self launchableAppsController];
  v6 = [v5 appInfos];
  v7 = [v6 count];

  if (!v7)
  {
    v8 = [(TVRUIAppLauncherStackViewController *)self loadingView];
    [v8 reset];

    v9 = [(TVRUIAppLauncherStackViewController *)self loadingView];
    [v9 didStartLoadingWithTimeout:15.0];
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = TVRUIAppLauncherStackViewController;
  [(TVRUIAppLauncherStackViewController *)&v4 viewWillAppear:a3];
  [(TVRUIAppLauncherStackViewController *)self updateFromAppInfosAnimated:1];
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = TVRUIAppLauncherStackViewController;
  [(TVRUIAppLauncherStackViewController *)&v4 dealloc];
}

- (void)configureHierarchy
{
  v53[8] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D752A0]);
  v45 = self;
  v4 = [(TVRUIAppLauncherStackViewController *)self collectionViewLayout];
  v5 = [v3 initWithFrame:v4 collectionViewLayout:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];

  v46 = v5;
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  v6 = [MEMORY[0x277D75348] clearColor];
  [v46 setBackgroundColor:v6];

  [v46 setShowsVerticalScrollIndicator:0];
  [v46 setDelegate:v45];
  [v46 setBouncesVertically:0];
  objc_initWeak(&location, v45);
  v7 = MEMORY[0x277D752B0];
  v8 = objc_opt_class();
  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = __57__TVRUIAppLauncherStackViewController_configureHierarchy__block_invoke;
  v50[3] = &unk_279D87FB8;
  objc_copyWeak(&v51, &location);
  v9 = [v7 registrationWithCellClass:v8 configurationHandler:v50];
  v10 = [MEMORY[0x277D752B0] registrationWithCellClass:objc_opt_class() configurationHandler:&__block_literal_global_3];
  v11 = objc_alloc(MEMORY[0x277D752D0]);
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = __57__TVRUIAppLauncherStackViewController_configureHierarchy__block_invoke_3;
  v47[3] = &unk_279D88000;
  v25 = v10;
  v48 = v25;
  v24 = v9;
  v49 = v24;
  v27 = [v11 initWithCollectionView:v46 cellProvider:v47];
  v12 = objc_alloc_init(TVRUILoadingView);
  [(TVRUILoadingView *)v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v14 = [v13 localizedStringForKey:@"TVRUINoAppsFound" value:&stru_287E6AEF8 table:@"Localizable"];
  [(TVRUILoadingView *)v12 setNoContentText:v14];

  v15 = [(TVRUIAppLauncherStackViewController *)v45 view];
  [v15 addSubview:v46];
  [v15 addSubview:v12];
  v26 = MEMORY[0x277CCAAD0];
  v44 = [v46 leadingAnchor];
  v43 = [v15 leadingAnchor];
  v42 = [v44 constraintEqualToAnchor:v43];
  v53[0] = v42;
  v41 = [v46 trailingAnchor];
  v40 = [v15 trailingAnchor];
  v39 = [v41 constraintEqualToAnchor:v40];
  v53[1] = v39;
  v38 = [v46 topAnchor];
  v37 = [v15 topAnchor];
  v36 = [v38 constraintEqualToAnchor:v37];
  v53[2] = v36;
  v35 = [v46 bottomAnchor];
  v34 = [v15 bottomAnchor];
  v33 = [v35 constraintEqualToAnchor:v34];
  v53[3] = v33;
  v32 = [(TVRUILoadingView *)v12 leadingAnchor];
  v31 = [v15 leadingAnchor];
  v30 = [v32 constraintEqualToAnchor:v31];
  v53[4] = v30;
  v29 = [(TVRUILoadingView *)v12 trailingAnchor];
  v28 = [v15 trailingAnchor];
  v16 = [v29 constraintEqualToAnchor:v28];
  v53[5] = v16;
  v17 = [(TVRUILoadingView *)v12 topAnchor];
  v18 = [v15 topAnchor];
  v19 = [v17 constraintEqualToAnchor:v18];
  v53[6] = v19;
  v20 = [(TVRUILoadingView *)v12 bottomAnchor];
  v21 = [v15 bottomAnchor];
  v22 = [v20 constraintEqualToAnchor:v21];
  v53[7] = v22;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:8];
  [v26 activateConstraints:v23];

  [(TVRUIAppLauncherStackViewController *)v45 setCollectionView:v46];
  [(TVRUIAppLauncherStackViewController *)v45 setDataSource:v27];
  [(TVRUIAppLauncherStackViewController *)v45 setLoadingView:v12];

  objc_destroyWeak(&v51);
  objc_destroyWeak(&location);
}

void __57__TVRUIAppLauncherStackViewController_configureHierarchy__block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [v7 setDelegate:WeakRetained];

  v9 = [v6 appInfo];

  [v7 setAppInfo:v9];
}

id __57__TVRUIAppLauncherStackViewController_configureHierarchy__block_invoke_3(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  v10 = [v7 isUnhideItem];
  v11 = 40;
  if (v10)
  {
    v11 = 32;
  }

  v12 = [v9 dequeueConfiguredReusableCellWithRegistration:*(a1 + v11) forIndexPath:v8 item:v7];

  return v12;
}

- (id)collectionViewLayout
{
  v2 = [objc_alloc(MEMORY[0x277D752B8]) initWithSectionProvider:&__block_literal_global_38];

  return v2;
}

id __59__TVRUIAppLauncherStackViewController_collectionViewLayout__block_invoke()
{
  v14[1] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CFB870];
  v1 = [MEMORY[0x277CFB840] fractionalWidthDimension:1.0];
  v2 = [MEMORY[0x277CFB840] fractionalHeightDimension:1.0];
  v3 = [v0 sizeWithWidthDimension:v1 heightDimension:v2];

  v4 = [MEMORY[0x277CFB860] itemWithLayoutSize:v3];
  v5 = MEMORY[0x277CFB870];
  v6 = [MEMORY[0x277CFB840] fractionalHeightDimension:1.77777778];
  v7 = [MEMORY[0x277CFB840] fractionalHeightDimension:1.0];
  v8 = [v5 sizeWithWidthDimension:v6 heightDimension:v7];

  v9 = MEMORY[0x277CFB850];
  v14[0] = v4;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  v11 = [v9 horizontalGroupWithLayoutSize:v8 subitems:v10];

  v12 = [MEMORY[0x277CFB868] sectionWithGroup:v11];
  [v12 setOrthogonalScrollingBehavior:2];
  [v12 setInterGroupSpacing:10.0];
  [v12 setContentInsets:{12.0, 10.0, 12.0, 10.0}];

  return v12;
}

- (void)_appInfosWillUpdateNotification:(id)a3
{
  v4 = [(TVRUIAppLauncherStackViewController *)self loadingView];
  [v4 reset];

  v5 = [(TVRUIAppLauncherStackViewController *)self loadingView];
  [v5 didStartLoadingWithTimeout:15.0];
}

- (void)_appInfosDidUpdateNotification:(id)a3
{
  [(TVRUIAppLauncherStackViewController *)self updateFromAppInfosAnimated:1];
  v4 = [(TVRUIAppLauncherStackViewController *)self dataSource];
  v5 = [v4 snapshot];
  v6 = [v5 numberOfItems] > 0;

  v7 = [(TVRUIAppLauncherStackViewController *)self loadingView];
  [v7 loadingCompleteWithContent:v6];
}

- (void)updateFromAppInfosAnimated:(BOOL)a3
{
  v3 = a3;
  v28 = *MEMORY[0x277D85DE8];
  v5 = objc_alloc_init(MEMORY[0x277CFB890]);
  [v5 appendSectionsWithIdentifiers:&unk_287E84A98];
  v6 = [(TVRUIAppLauncherStackViewController *)self launchableAppsController];
  v7 = [v6 orderedAppInfos];
  v8 = v7;
  v9 = MEMORY[0x277CBEBF8];
  if (v7)
  {
    v9 = v7;
  }

  v10 = v9;

  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v12 = v10;
  v13 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v24;
    do
    {
      v16 = 0;
      do
      {
        if (*v24 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [_TVRUIAppInfoItem itemWithAppInfo:*(*(&v23 + 1) + 8 * v16), v23];
        [v11 addObject:v17];

        ++v16;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v14);
  }

  v18 = [(TVRUIAppLauncherStackViewController *)self launchableAppsController];
  if (![v18 hasHiddenApps])
  {
    goto LABEL_13;
  }

  v19 = [(TVRUIAppLauncherStackViewController *)self launchableAppsController];
  v20 = [v19 orderedAppInfos];
  v21 = [v20 count];

  if (v21)
  {
    v18 = +[_TVRUIAppInfoItem unhideItem];
    [v11 addObject:v18];
LABEL_13:
  }

  [v5 appendItemsWithIdentifiers:{v11, v23}];
  v22 = [(TVRUIAppLauncherStackViewController *)self dataSource];
  [v22 applySnapshot:v5 animatingDifferences:v3];
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(TVRUIAppLauncherStackViewController *)self dataSource];
  v9 = [v8 itemIdentifierForIndexPath:v7];

  if ([v9 isUnhideItem])
  {
    v10 = [(TVRUIAppLauncherStackViewController *)self launchableAppsController];
    [v10 unhideApps];
  }

  else
  {
    v11 = [v9 appInfo];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __79__TVRUIAppLauncherStackViewController_collectionView_didSelectItemAtIndexPath___block_invoke;
    v13[3] = &unk_279D88050;
    v13[4] = self;
    v14 = v11;
    v15 = v6;
    v16 = v7;
    v12 = v11;
    [(TVRUIAppLauncherStackViewController *)self _confirmOkToOpenApp:v12 withHandler:v13];
  }
}

void __79__TVRUIAppLauncherStackViewController_collectionView_didSelectItemAtIndexPath___block_invoke(uint64_t a1)
{
  [*(a1 + 32) launchApp:*(a1 + 40)];
  v2 = [*(a1 + 48) cellForItemAtIndexPath:*(a1 + 56)];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x277D75D40]);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __79__TVRUIAppLauncherStackViewController_collectionView_didSelectItemAtIndexPath___block_invoke_2;
    v11[3] = &unk_279D87C20;
    v4 = v2;
    v12 = v4;
    v5 = [v3 initWithDuration:1 curve:v11 animations:0.1];
    v6 = MEMORY[0x277D85DD0];
    v7 = 3221225472;
    v8 = __79__TVRUIAppLauncherStackViewController_collectionView_didSelectItemAtIndexPath___block_invoke_3;
    v9 = &unk_279D88028;
    v10 = v4;
    [v5 addCompletion:&v6];
    [v5 startAnimation];
  }
}

uint64_t __79__TVRUIAppLauncherStackViewController_collectionView_didSelectItemAtIndexPath___block_invoke_2(uint64_t a1)
{
  CGAffineTransformMakeScale(&v5, 1.1, 1.1);
  v2 = *(a1 + 32);
  v4 = v5;
  return [v2 setTransform:&v4];
}

void __79__TVRUIAppLauncherStackViewController_collectionView_didSelectItemAtIndexPath___block_invoke_3(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277D75D40]);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __79__TVRUIAppLauncherStackViewController_collectionView_didSelectItemAtIndexPath___block_invoke_4;
  v4[3] = &unk_279D87C20;
  v5 = *(a1 + 32);
  v3 = [v2 initWithDuration:2 curve:v4 animations:0.1];
  [v3 startAnimation];
}

uint64_t __79__TVRUIAppLauncherStackViewController_collectionView_didSelectItemAtIndexPath___block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(MEMORY[0x277CBF2C0] + 16);
  v4[0] = *MEMORY[0x277CBF2C0];
  v4[1] = v2;
  v4[2] = *(MEMORY[0x277CBF2C0] + 32);
  return [v1 setTransform:v4];
}

- (BOOL)isCurrentlyPlayingMedia
{
  v2 = [(TVRUIAppLauncherStackViewController *)self nowPlayingProvider];
  v3 = [v2 nowPlayingInfo];

  if (v3)
  {
    v4 = [v3 playbackRate];
    [v4 floatValue];
    if (v5 == 0.0)
    {
      v7 = 0;
    }

    else
    {
      v6 = [v3 playbackState];
      v7 = [v6 integerValue] == 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_confirmOkToOpenApp:(id)a3 withHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(TVRUIAppLauncherStackViewController *)self isCurrentlyPlayingMedia])
  {
    v8 = [(TVRUIAppLauncherStackViewController *)self nowPlayingProvider];
    v9 = [v8 nowPlayingInfo];
    v29 = [v9 metadata];

    v10 = MEMORY[0x277CCACA8];
    v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v12 = [v11 localizedStringForKey:@"TVRUINowPlayingFormatted" value:&stru_287E6AEF8 table:@"Localizable"];
    v13 = [v29 title];
    v28 = [v10 stringWithFormat:v12, v13];

    v14 = MEMORY[0x277CCACA8];
    v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v16 = [v15 localizedStringForKey:@"TVRUIOpenApp" value:&stru_287E6AEF8 table:@"Localizable"];
    v17 = [v6 localizedName];
    v27 = [v14 stringWithFormat:v16, v17];

    v18 = [MEMORY[0x277D75110] alertControllerWithTitle:v28 message:v27 preferredStyle:1];
    v19 = MEMORY[0x277D750F8];
    v20 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v21 = [v20 localizedStringForKey:@"TVRUICancel" value:&stru_287E6AEF8 table:@"Localizable"];
    v22 = [v19 actionWithTitle:v21 style:1 handler:&__block_literal_global_66];
    [v18 addAction:v22];

    v23 = MEMORY[0x277D750F8];
    v24 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v25 = [v24 localizedStringForKey:@"TVRUIOpenTitle" value:&stru_287E6AEF8 table:@"Localizable"];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __71__TVRUIAppLauncherStackViewController__confirmOkToOpenApp_withHandler___block_invoke_2;
    v30[3] = &unk_279D88098;
    v31 = v7;
    v26 = [v23 actionWithTitle:v25 style:0 handler:v30];
    [v18 addAction:v26];

    [(TVRUIAppLauncherStackViewController *)self presentViewController:v18 animated:1 completion:0];
  }

  else
  {
    v7[2](v7);
  }
}

- (void)launchApp:(id)a3
{
  v6 = [a3 bundleID];
  if ([v6 length])
  {
    v4 = [(TVRUIAppLauncherStackViewController *)self launchableAppsController];
    [v4 launchAppWithBundleID:v6];

    v5 = [(TVRUIAppLauncherStackViewController *)self eventHaptic];
    [v5 playSelectionEventHaptic];
  }
}

- (void)hideApp:(id)a3
{
  v5 = [a3 bundleID];
  if ([v5 length])
  {
    v4 = [(TVRUIAppLauncherStackViewController *)self launchableAppsController];
    [v4 hideAppWithBundleID:v5];
  }
}

- (TVRUIActionProviding)actionProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_actionProvider);

  return WeakRetained;
}

- (TVRUINowPlayingProviding)nowPlayingProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_nowPlayingProvider);

  return WeakRetained;
}

@end