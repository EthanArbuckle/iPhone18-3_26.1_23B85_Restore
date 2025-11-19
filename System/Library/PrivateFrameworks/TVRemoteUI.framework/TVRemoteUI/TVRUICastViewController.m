@interface TVRUICastViewController
- (TVRUIActionProviding)actionProvider;
- (TVRUICastViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)_layout;
- (void)_filterNonCharacterRolesIfNeededForMediaInfo:(id)a3;
- (void)_updateUIForMediaInfo:(id)a3;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)configureHierarchy;
- (void)openURL:(id)a3;
- (void)requestImageForTemplate:(id)a3 size:(CGSize)a4 identifier:(id)a5 completion:(id)a6;
- (void)resetContent;
- (void)setMediaInfo:(id)a3;
- (void)setMetadata:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation TVRUICastViewController

- (TVRUICastViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v8.receiver = self;
  v8.super_class = TVRUICastViewController;
  v4 = [(TVRUICastViewController *)&v8 initWithNibName:a3 bundle:a4];
  if (v4)
  {
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"TVRemoteUICastTab" value:&stru_287E6AEF8 table:@"Localizable"];
    [(TVRUICastViewController *)v4 setTitle:v6];
  }

  return v4;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = TVRUICastViewController;
  [(TVRUICastViewController *)&v5 viewDidLoad];
  v3 = +[TVRUIImageFetcher imageFetcher];
  [(TVRUICastViewController *)self setImageFetcher:v3];

  v4 = objc_alloc_init(_TVRUIAvatarGenerator);
  [(TVRUICastViewController *)self setAvatarGenerator:v4];

  [(TVRUICastViewController *)self configureHierarchy];
}

- (void)viewDidAppear:(BOOL)a3
{
  v14.receiver = self;
  v14.super_class = TVRUICastViewController;
  [(TVRUICastViewController *)&v14 viewDidAppear:a3];
  [(TVRUICastViewController *)self setHasAppeared:1];
  v4 = [(TVRUICastViewController *)self dataSource];
  v5 = [v4 snapshot];
  v6 = [v5 itemIdentifiers];
  v7 = [v6 count];

  if (!v7)
  {
    v8 = [(TVRUICastViewController *)self mediaInfo];

    if (v8)
    {
      v9 = [(TVRUICastViewController *)self mediaInfo];
      [(TVRUICastViewController *)self _updateUIForMediaInfo:v9];
    }
  }

  v10 = [(TVRUICastViewController *)self collectionView];
  v11 = [v10 indexPathsForSelectedItems];

  if ([v11 count])
  {
    v12 = [(TVRUICastViewController *)self collectionView];
    v13 = [v11 firstObject];
    [v12 deselectItemAtIndexPath:v13 animated:1];
  }
}

- (void)resetContent
{
  metadata = self->_metadata;
  self->_metadata = 0;

  v6 = objc_alloc_init(MEMORY[0x277CFB890]);
  [v6 appendSectionsWithIdentifiers:&unk_287E84C48];
  v4 = [(TVRUICastViewController *)self dataSource];
  [v4 applySnapshot:v6 animatingDifferences:0];

  if ([(TVRUICastViewController *)self horizontalMode])
  {
    v5 = [(TVRUICastViewController *)self notPlayingLabel];
    [v5 setHidden:0];
  }
}

- (void)setMetadata:(id)a3
{
  v5 = a3;
  v6 = [v5 canonicalID];
  v7 = [(TVRCNowPlayingMetadata *)self->_metadata canonicalID];
  v8 = [v6 isEqualToString:v7];

  objc_storeStrong(&self->_metadata, a3);
  if (v5)
  {
    v9 = [v5 canonicalID];
    if ([v9 length])
    {
      v10 = [v5 canonicalID];
      v11 = [v10 isEqualToString:*MEMORY[0x277D6C5B0]];

      if (((v11 | v8) & 1) == 0)
      {
        [(TVRUICastViewController *)self setMediaInfo:0];
        v12 = objc_alloc_init(MEMORY[0x277D6C540]);
        objc_initWeak(&location, self);
        v13 = [v5 canonicalID];
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = __39__TVRUICastViewController_setMetadata___block_invoke;
        v14[3] = &unk_279D87EA0;
        objc_copyWeak(&v15, &location);
        [v12 requestForCanonicalID:v13 includeRoles:1 completion:v14];

        objc_destroyWeak(&v15);
        objc_destroyWeak(&location);
      }
    }

    else
    {
    }
  }
}

void __39__TVRUICastViewController_setMetadata___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = [v3 roles];
    v6 = [v5 count];

    if (v6 || ([v3 showIdentifier], v7 = objc_claimAutoreleasedReturnValue(), v7, !v7))
    {
      [WeakRetained setMediaInfo:v3];
    }

    else
    {
      v8 = objc_alloc_init(MEMORY[0x277D6C540]);
      v9 = [v3 showIdentifier];
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __39__TVRUICastViewController_setMetadata___block_invoke_2;
      v10[3] = &unk_279D88C30;
      v10[4] = WeakRetained;
      [v8 requestForCanonicalID:v9 includeRoles:1 completion:v10];
    }
  }
}

void __39__TVRUICastViewController_setMetadata___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 roles];
  v4 = [v3 count];

  if (v4)
  {
    [*(a1 + 32) setMediaInfo:v5];
  }
}

- (void)configureHierarchy
{
  v60[6] = *MEMORY[0x277D85DE8];
  v3 = [(TVRUICastViewController *)self horizontalMode];
  v50 = self;
  objc_initWeak(&location, self);
  v4 = MEMORY[0x277D752B0];
  v5 = objc_opt_class();
  v57[0] = MEMORY[0x277D85DD0];
  v57[1] = 3221225472;
  v57[2] = __45__TVRUICastViewController_configureHierarchy__block_invoke;
  v57[3] = &unk_279D88C58;
  objc_copyWeak(&v58, &location);
  v6 = [v4 registrationWithCellClass:v5 configurationHandler:v57];
  v7 = MEMORY[0x277D752B0];
  v8 = objc_opt_class();
  v55[0] = MEMORY[0x277D85DD0];
  v55[1] = 3221225472;
  v55[2] = __45__TVRUICastViewController_configureHierarchy__block_invoke_2;
  v55[3] = &unk_279D88C80;
  objc_copyWeak(&v56, &location);
  v9 = [v7 registrationWithCellClass:v8 configurationHandler:v55];
  v10 = objc_alloc(MEMORY[0x277D752A0]);
  v11 = [(TVRUICastViewController *)v50 _layout];
  v12 = [v10 initWithFrame:v11 collectionViewLayout:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];

  [(UICollectionView *)v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  v13 = [MEMORY[0x277D75348] clearColor];
  [(UICollectionView *)v12 setBackgroundColor:v13];

  [(UICollectionView *)v12 setDelegate:v50];
  if (v3)
  {
    [(UICollectionView *)v12 setBouncesVertically:0];
  }

  v14 = objc_alloc(MEMORY[0x277D752D0]);
  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = __45__TVRUICastViewController_configureHierarchy__block_invoke_3;
  v51[3] = &unk_279D88CA8;
  v54 = v3;
  v35 = v9;
  v52 = v35;
  v34 = v6;
  v53 = v34;
  v36 = [v14 initWithCollectionView:v12 cellProvider:v51];
  v15 = [(TVRUICastViewController *)v50 view];
  [v15 addSubview:v12];
  v49 = v15;
  v16 = objc_alloc_init(MEMORY[0x277D756B8]);
  [(UILabel *)v16 setTranslatesAutoresizingMaskIntoConstraints:0];
  v17 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76A28]];
  [(UILabel *)v16 setFont:v17];

  v18 = [MEMORY[0x277D75348] lightTextColor];
  [(UILabel *)v16 setTextColor:v18];

  v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v20 = [v19 localizedStringForKey:@"TVRUINoCast" value:&stru_287E6AEF8 table:@"Localizable"];
  [(UILabel *)v16 setText:v20];

  [(UILabel *)v16 setHidden:[(TVRUICastViewController *)v50 horizontalMode]^ 1];
  [v49 addSubview:v16];
  v37 = MEMORY[0x277CCAAD0];
  v48 = [(UICollectionView *)v12 leadingAnchor];
  v47 = [v49 leadingAnchor];
  v46 = [v48 constraintEqualToAnchor:v47];
  v60[0] = v46;
  v45 = [(UICollectionView *)v12 trailingAnchor];
  v44 = [v49 trailingAnchor];
  v43 = [v45 constraintEqualToAnchor:v44];
  v60[1] = v43;
  v42 = [(UICollectionView *)v12 topAnchor];
  v41 = [v49 topAnchor];
  v40 = [v42 constraintEqualToAnchor:v41];
  v60[2] = v40;
  v39 = [(UICollectionView *)v12 bottomAnchor];
  v38 = [v49 bottomAnchor];
  v21 = [v39 constraintEqualToAnchor:v38];
  v60[3] = v21;
  v22 = [(UILabel *)v16 centerXAnchor];
  v23 = [v49 centerXAnchor];
  v24 = [v22 constraintEqualToAnchor:v23];
  v60[4] = v24;
  v25 = [(UILabel *)v16 centerYAnchor];
  v26 = [v49 centerYAnchor];
  v27 = [v25 constraintEqualToAnchor:v26];
  v60[5] = v27;
  v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v60 count:6];
  [v37 activateConstraints:v28];

  collectionView = v50->_collectionView;
  v50->_collectionView = v12;
  v30 = v12;

  dataSource = v50->_dataSource;
  v50->_dataSource = v36;
  v32 = v36;

  notPlayingLabel = v50->_notPlayingLabel;
  v50->_notPlayingLabel = v16;

  objc_destroyWeak(&v56);
  objc_destroyWeak(&v58);
  objc_destroyWeak(&location);
}

void __45__TVRUICastViewController_configureHierarchy__block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v9 = a2;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    [v9 setImageProvider:WeakRetained];
    v8 = [WeakRetained avatarGenerator];
    [v9 setAvatarGenerator:v8];
  }

  [v9 setRole:v6];
}

void __45__TVRUICastViewController_configureHierarchy__block_invoke_2(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v9 = a2;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    [v9 setImageProvider:WeakRetained];
    v8 = [WeakRetained avatarGenerator];
    [v9 setAvatarGenerator:v8];
  }

  [v9 setRole:v6];
}

id __45__TVRUICastViewController_configureHierarchy__block_invoke_3(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = 40;
  if (*(a1 + 48))
  {
    v4 = 32;
  }

  v5 = [a2 dequeueConfiguredReusableCellWithRegistration:*(a1 + v4) forIndexPath:a3 item:a4];

  return v5;
}

- (void)setMediaInfo:(id)a3
{
  v7 = a3;
  objc_storeStrong(&self->_mediaInfo, a3);
  v5 = [(TVRUICastViewController *)self _filterNonCharacterRolesIfNeededForMediaInfo:self->_mediaInfo];
  v6 = v7;
  if (v7)
  {
    v5 = [(TVRUICastViewController *)self hasAppeared];
    v6 = v7;
    if (v5)
    {
      v5 = [(TVRUICastViewController *)self _updateUIForMediaInfo:v7];
      v6 = v7;
    }
  }

  MEMORY[0x2821F96F8](v5, v6);
}

- (id)_layout
{
  v19[1] = *MEMORY[0x277D85DE8];
  if ([(TVRUICastViewController *)self horizontalMode])
  {
    v2 = [objc_alloc(MEMORY[0x277D752B8]) initWithSectionProvider:&__block_literal_global_16];
  }

  else
  {
    +[_TVRUIRoleCell preferredHeight];
    v4 = v3;
    v5 = MEMORY[0x277CFB870];
    v6 = [MEMORY[0x277CFB840] fractionalWidthDimension:1.0];
    v7 = [MEMORY[0x277CFB840] absoluteDimension:v4];
    v8 = [v5 sizeWithWidthDimension:v6 heightDimension:v7];

    v9 = [MEMORY[0x277CFB860] itemWithLayoutSize:v8];
    v10 = MEMORY[0x277CFB870];
    v11 = [MEMORY[0x277CFB840] fractionalWidthDimension:1.0];
    v12 = [MEMORY[0x277CFB840] absoluteDimension:v4];
    v13 = [v10 sizeWithWidthDimension:v11 heightDimension:v12];

    v14 = MEMORY[0x277CFB850];
    v19[0] = v9;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
    v16 = [v14 verticalGroupWithLayoutSize:v13 subitems:v15];

    v17 = [MEMORY[0x277CFB868] sectionWithGroup:v16];
    [v17 setInterGroupSpacing:10.0];
    v2 = [objc_alloc(MEMORY[0x277D752B8]) initWithSection:v17];
  }

  return v2;
}

id __34__TVRUICastViewController__layout__block_invoke()
{
  v14[1] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CFB870];
  v1 = [MEMORY[0x277CFB840] fractionalWidthDimension:1.0];
  v2 = [MEMORY[0x277CFB840] fractionalHeightDimension:1.0];
  v3 = [v0 sizeWithWidthDimension:v1 heightDimension:v2];

  v4 = [MEMORY[0x277CFB860] itemWithLayoutSize:v3];
  [v4 setContentInsets:{5.0, 5.0, 5.0, 5.0}];
  v5 = MEMORY[0x277CFB870];
  v6 = [MEMORY[0x277CFB840] fractionalWidthDimension:0.35];
  v7 = [MEMORY[0x277CFB840] fractionalHeightDimension:1.0];
  v8 = [v5 sizeWithWidthDimension:v6 heightDimension:v7];

  v9 = MEMORY[0x277CFB850];
  v14[0] = v4;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  v11 = [v9 horizontalGroupWithLayoutSize:v8 subitems:v10];

  v12 = [MEMORY[0x277CFB868] sectionWithGroup:v11];
  [v12 setOrthogonalScrollingBehavior:2];
  [v12 setContentInsets:{5.0, 5.0, 5.0, 5.0}];

  return v12;
}

- (void)_updateUIForMediaInfo:(id)a3
{
  v10 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CFB890]);
  [v4 appendSectionsWithIdentifiers:&unk_287E84C60];
  v5 = [v10 roles];
  v6 = [v5 count];

  if (v6)
  {
    v7 = [v10 roles];
    [v4 appendItemsWithIdentifiers:v7];

    if (![(TVRUICastViewController *)self horizontalMode])
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if ([(TVRUICastViewController *)self horizontalMode])
  {
LABEL_3:
    v8 = [(TVRUICastViewController *)self notPlayingLabel];
    [v8 setHidden:v6 != 0];
  }

LABEL_4:
  v9 = [(TVRUICastViewController *)self dataSource];
  [v9 applySnapshot:v4 animatingDifferences:0];
}

- (void)openURL:(id)a3
{
  v4 = a3;
  v5 = [(TVRUICastViewController *)self actionProvider];
  [v5 openURL:v4];
}

- (void)_filterNonCharacterRolesIfNeededForMediaInfo:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 roles];
  v5 = [v4 count];

  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = [v3 roles];
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v15 + 1) + 8 * i);
          v13 = [v12 characterName];
          v14 = [v13 length];

          if (v14)
          {
            [v6 addObject:v12];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }

    if ([v6 count])
    {
      [v3 setRoles:v6];
    }
  }
}

- (void)requestImageForTemplate:(id)a3 size:(CGSize)a4 identifier:(id)a5 completion:(id)a6
{
  height = a4.height;
  width = a4.width;
  v11 = a6;
  v12 = a5;
  v13 = a3;
  v14 = [(TVRUICastViewController *)self imageFetcher];
  [v14 fetchImageWithTemplateString:v13 size:v12 identifier:v11 completion:{width, height}];
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v6 = a4;
  [a3 deselectItemAtIndexPath:v6 animated:1];
  v7 = [(TVRUICastViewController *)self dataSource];
  v14 = [v7 itemIdentifierForIndexPath:v6];

  if (v14)
  {
    v8 = [(TVRUICastViewController *)self imageFetcher];
    v9 = [v14 canonicalID];
    v10 = [v8 cachedImageForIdentifier:v9];

    v11 = [(TVRUICastViewController *)self actionProvider];
    v12 = [v14 canonicalID];
    v13 = [v14 actorName];
    [v11 presentPersonWithID:v12 name:v13 image:v10 presentingViewController:self];
  }
}

- (TVRUIActionProviding)actionProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_actionProvider);

  return WeakRetained;
}

@end