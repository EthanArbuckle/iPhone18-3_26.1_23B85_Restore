@interface TVRUIDeviceListViewController
- (CGSize)preferredContentSize;
- (id)_collectionViewLayout;
- (id)_effectiveItems;
- (unint64_t)_effectiveItemCountForDisplay;
- (void)_configureHierarchy;
- (void)_updateDataSourceFromCurrentStateAnimated:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation TVRUIDeviceListViewController

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = TVRUIDeviceListViewController;
  [(TVRUIDeviceListViewController *)&v3 viewDidLoad];
  [(TVRUIDeviceListViewController *)self _configureHierarchy];
  [(TVRUIDeviceListViewController *)self _updateDataSourceFromCurrentStateAnimated:0];
}

- (CGSize)preferredContentSize
{
  v7.receiver = self;
  v7.super_class = TVRUIDeviceListViewController;
  [(TVRUIDeviceListViewController *)&v7 preferredContentSize];
  v4 = v3;
  v5 = [(TVRUIDeviceListViewController *)self _effectiveItemCountForDisplay]* 56.0;
  v6 = v4;
  result.height = v5;
  result.width = v6;
  return result;
}

- (void)_configureHierarchy
{
  v33[4] = *MEMORY[0x277D85DE8];
  v27 = [(TVRUIDeviceListViewController *)self view];
  [v27 tvrui_setGlassBackground];
  v2 = objc_alloc(MEMORY[0x277D752A0]);
  v3 = [(TVRUIDeviceListViewController *)self _collectionViewLayout];
  v4 = [v2 initWithFrame:v3 collectionViewLayout:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];

  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = [MEMORY[0x277D75348] clearColor];
  [v4 setBackgroundColor:v5];

  [v27 addSubview:v4];
  objc_initWeak(&location, self);
  v6 = MEMORY[0x277D752B0];
  v7 = objc_opt_class();
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __52__TVRUIDeviceListViewController__configureHierarchy__block_invoke;
  v30[3] = &unk_279D89000;
  objc_copyWeak(&v31, &location);
  v8 = [v6 registrationWithCellClass:v7 configurationHandler:v30];
  v9 = objc_alloc(MEMORY[0x277D752D0]);
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __52__TVRUIDeviceListViewController__configureHierarchy__block_invoke_2;
  v28[3] = &unk_279D89028;
  v19 = v8;
  v29 = v19;
  v21 = [v9 initWithCollectionView:v4 cellProvider:v28];
  v20 = MEMORY[0x277CCAAD0];
  v25 = [v4 leadingAnchor];
  v24 = [v27 leadingAnchor];
  v23 = [v25 constraintEqualToAnchor:v24];
  v33[0] = v23;
  v22 = [v4 trailingAnchor];
  v10 = [v27 leadingAnchor];
  v11 = [v22 constraintEqualToAnchor:v10];
  v33[1] = v11;
  v12 = [v4 topAnchor];
  v13 = [v27 topAnchor];
  v14 = [v12 constraintEqualToAnchor:v13];
  v33[2] = v14;
  v15 = [v4 bottomAnchor];
  v16 = [v27 bottomAnchor];
  v17 = [v15 constraintEqualToAnchor:v16];
  v33[3] = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:4];
  [v20 activateConstraints:v18];

  [(TVRUIDeviceListViewController *)self setCollectionView:v4];
  [(TVRUIDeviceListViewController *)self setDataSource:v21];

  objc_destroyWeak(&v31);
  objc_destroyWeak(&location);
}

void __52__TVRUIDeviceListViewController__configureHierarchy__block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v11 = a2;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained styleProvider];
    v10 = [v6 device];
    [v11 configureCellWithStyleProvider:v9 device:v10];
  }
}

- (id)_collectionViewLayout
{
  v17[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CFB870];
  v3 = [MEMORY[0x277CFB840] fractionalWidthDimension:1.0];
  v4 = [MEMORY[0x277CFB840] fractionalHeightDimension:1.0];
  v5 = [v2 sizeWithWidthDimension:v3 heightDimension:v4];

  v6 = [MEMORY[0x277CFB860] itemWithLayoutSize:v5];
  v7 = MEMORY[0x277CFB870];
  v8 = [MEMORY[0x277CFB840] fractionalWidthDimension:1.0];
  v9 = [MEMORY[0x277CFB840] absoluteDimension:56.0];
  v10 = [v7 sizeWithWidthDimension:v8 heightDimension:v9];

  v11 = MEMORY[0x277CFB850];
  v17[0] = v6;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  v13 = [v11 horizontalGroupWithLayoutSize:v10 subitems:v12];

  v14 = [MEMORY[0x277CFB868] sectionWithGroup:v13];
  v15 = [objc_alloc(MEMORY[0x277D752B8]) initWithSection:v14];

  return v15;
}

- (void)_updateDataSourceFromCurrentStateAnimated:(BOOL)a3
{
  v3 = a3;
  v7 = [(TVRUIDeviceListViewController *)self _effectiveItems];
  v5 = objc_alloc_init(MEMORY[0x277CFB890]);
  [v5 appendSectionsWithIdentifiers:&unk_287E84CD8];
  [v5 appendItemsWithIdentifiers:v7];
  v6 = [(TVRUIDeviceListViewController *)self dataSource];
  [v6 applySnapshot:v5 animatingDifferences:v3];
}

- (unint64_t)_effectiveItemCountForDisplay
{
  v3 = [(TVRUIDeviceListViewController *)self devices];
  v4 = [v3 count];

  v5 = [(TVRUIDeviceListViewController *)self devices];
  v6 = [(TVRUIDeviceListViewController *)self currentDevice];
  v7 = [v5 containsObject:v6];

  v8 = v4 - v7;
  if (v8 <= 3)
  {
    v8 = 3;
  }

  if (v8 >= 10)
  {
    return 10;
  }

  else
  {
    return v8;
  }
}

- (id)_effectiveItems
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [(TVRUIDeviceListViewController *)self devices];
  v4 = [v3 mutableCopy];

  v5 = [(TVRUIDeviceListViewController *)self currentDevice];
  [v4 removeObject:v5];

  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [_TVRUIDeviceListItem itemWithDevice:*(*(&v14 + 1) + 8 * i), v14];
        [v6 addObject:v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  return v6;
}

@end