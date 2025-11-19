@interface NCAppPickerViewController
+ (id)appPickerViewControllerWithContentProvider:(id)a3;
- (NSArray)selectedBundleIdentifiers;
- (NSSet)shownBundleIdentifiers;
- (double)_availableContentWidth;
- (id)_initWithContentProvider:(id)a3;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (void)_cancelButtonPressed:(id)a3;
- (void)_refreshNextButton;
- (void)_reloadFooter;
- (void)_saveCellsSeen;
- (void)_updateHeightConstraintAndLayoutIfNeeded:(BOOL)a3;
- (void)appPickViewFooterShowMoreButtonPressed:(id)a3;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation NCAppPickerViewController

+ (id)appPickerViewControllerWithContentProvider:(id)a3
{
  v3 = a3;
  v4 = [[NCAppPickerViewController alloc] _initWithContentProvider:v3];

  return v4;
}

- (id)_initWithContentProvider:(id)a3
{
  v17[2] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v16.receiver = self;
  v16.super_class = NCAppPickerViewController;
  v6 = [(NCOnboardingViewController *)&v16 initWithTitle:&stru_282FE84F8 detailText:&stru_282FE84F8 contentLayout:3];
  v7 = v6;
  if (v6)
  {
    v6->_contentCollapsedCellCount = 0;
    v6->_contentCollapsable = 0;
    v6->_contentCollapsed = 1;
    v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
    mutableShownBundleIdentifiers = v7->_mutableShownBundleIdentifiers;
    v7->_mutableShownBundleIdentifiers = v8;

    v7->_showMoreButtonWasPressed = 0;
    objc_storeStrong(&v7->_contentProvider, a3);
    v10 = [MEMORY[0x277D75128] sharedApplication];
    v11 = [v10 preferredContentSizeCategory];

    v12 = *MEMORY[0x277D76818];
    v17[0] = *MEMORY[0x277D76820];
    v17[1] = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
    if ([v13 containsObject:v11])
    {

      IsAX = 1;
    }

    else
    {
      IsAX = _NCSizeCategoryIsAX(v11);
    }

    v7->_largerTextSize = IsAX;
  }

  return v7;
}

- (void)viewDidLoad
{
  v3 = [(NCAppPickerViewController *)self navigationController];
  [v3 setNavigationBarHidden:0 animated:1];

  v54.receiver = self;
  v54.super_class = NCAppPickerViewController;
  [(NCOnboardingViewController *)&v54 viewDidLoad];
  v4 = [(NCAppPickerViewController *)self scrollView];
  [v4 setScrollEnabled:0];

  v5 = objc_alloc_init(MEMORY[0x277D752F0]);
  [v5 setMinimumLineSpacing:8.0];
  [(NCAppPickerViewController *)self _availableContentWidth];
  v7 = v6;
  v8 = [(NCAppPickerContentProvider *)self->_contentProvider longestAppName];
  [NCAppPickerViewCell preferredHeightForText:v8 cellWidth:v7];
  self->_cellHeight = v9;

  [v5 setItemSize:{v7, self->_cellHeight}];
  [NCAppPickerViewHeader preferredHeightForWidth:[(NCAppPickerContentProvider *)self->_contentProvider isAbleToSortByAvgNumberOfNotifications] supportsSortByAvgNumberOfNotifications:v7];
  self->_headerHeight = v10;
  [v5 setHeaderReferenceSize:{v7, v10}];
  [NCAppPickerViewFooter preferredHeightForWidth:self->_contentCollapsed showMoreButton:v7];
  self->_footerHeight = v11;
  [v5 setFooterReferenceSize:{v7, v11}];
  v12 = objc_alloc(MEMORY[0x277D752A0]);
  v13 = [v12 initWithFrame:v5 collectionViewLayout:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  collectionView = self->_collectionView;
  self->_collectionView = v13;

  [(UICollectionView *)self->_collectionView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UICollectionView *)self->_collectionView setDataSource:self];
  [(UICollectionView *)self->_collectionView setDelegate:self];
  [(UICollectionView *)self->_collectionView setShowsHorizontalScrollIndicator:0];
  [(UICollectionView *)self->_collectionView setAutomaticallyAdjustsScrollIndicatorInsets:0];
  [(UICollectionView *)self->_collectionView setContentInsetAdjustmentBehavior:2];
  v15 = self->_collectionView;
  v16 = objc_opt_class();
  v17 = +[NCAppPickerViewCell reuseIdentifier];
  [(UICollectionView *)v15 registerClass:v16 forCellWithReuseIdentifier:v17];

  v18 = self->_collectionView;
  v19 = objc_opt_class();
  v20 = *MEMORY[0x277D767D8];
  v21 = +[NCAppPickerViewHeader reuseIdentifier];
  [(UICollectionView *)v18 registerClass:v19 forSupplementaryViewOfKind:v20 withReuseIdentifier:v21];

  v22 = self->_collectionView;
  v23 = objc_opt_class();
  v24 = *MEMORY[0x277D767D0];
  v25 = +[NCAppPickerViewFooter reuseIdentifier];
  [(UICollectionView *)v22 registerClass:v23 forSupplementaryViewOfKind:v24 withReuseIdentifier:v25];

  v26 = [(NCAppPickerViewController *)self contentView];
  [v26 addSubview:self->_collectionView];

  v27 = [(OBBaseWelcomeController *)self navigationItem];
  [v27 setHidesBackButton:1];

  v28 = objc_alloc(MEMORY[0x277D751E0]);
  v29 = NCUserNotificationsUIKitFrameworkBundle();
  v30 = [v29 localizedStringForKey:@"NOTIFICATION_DIGEST_ONBOARDING_APP_PICKER_CANCEL" value:&stru_282FE84F8 table:0];
  v31 = [v28 initWithTitle:v30 style:0 target:self action:sel__cancelButtonPressed_];

  v32 = [(OBBaseWelcomeController *)self navigationItem];
  [v32 setLeftBarButtonItem:v31];

  v33 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v34 = [(UICollectionView *)self->_collectionView heightAnchor];
  v35 = [v34 constraintEqualToConstant:0.0];
  heightConstraint = self->_heightConstraint;
  self->_heightConstraint = v35;

  [v33 addObject:self->_heightConstraint];
  v37 = [(UICollectionView *)self->_collectionView leadingAnchor];
  v38 = [(NCAppPickerViewController *)self contentView];
  v39 = [v38 leadingAnchor];
  v40 = [v37 constraintEqualToAnchor:v39];
  [v33 addObject:v40];

  v41 = [(NCAppPickerViewController *)self contentView];
  v42 = [v41 trailingAnchor];
  v43 = [(UICollectionView *)self->_collectionView trailingAnchor];
  v44 = [v42 constraintEqualToAnchor:v43];
  [v33 addObject:v44];

  v45 = [(UICollectionView *)self->_collectionView topAnchor];
  v46 = [(NCAppPickerViewController *)self contentView];
  v47 = [v46 topAnchor];
  v48 = [v45 constraintEqualToAnchor:v47];
  topConstraint = self->_topConstraint;
  self->_topConstraint = v48;

  [v33 addObject:self->_topConstraint];
  v50 = [(NCAppPickerViewController *)self contentView];
  v51 = [v50 bottomAnchor];
  v52 = [(UICollectionView *)self->_collectionView bottomAnchor];
  v53 = [v51 constraintEqualToAnchor:v52];
  [v33 addObject:v53];

  [(NCAppPickerViewController *)self _updateHeightConstraintAndLayoutIfNeeded:0];
  [MEMORY[0x277CCAAD0] activateConstraints:v33];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = NCAppPickerViewController;
  [(NCAppPickerViewController *)&v4 viewWillAppear:a3];
  [(NCAppPickerViewController *)self performSelector:sel__updateHeightConstraintAndLayout withObject:0 afterDelay:0.0];
  [(NCAppPickerViewController *)self _refreshNextButton];
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = NCAppPickerViewController;
  [(OBBaseWelcomeController *)&v4 viewDidAppear:a3];
  self->_viewHasAppeared = 1;
  [(NCAppPickerViewController *)self _saveCellsSeen];
}

- (NSArray)selectedBundleIdentifiers
{
  contentProvider = self->_contentProvider;
  if (contentProvider)
  {
    v3 = [(NCAppPickerContentProvider *)contentProvider selectedBundleIdentifiers];
  }

  else
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEA60]);
  }

  return v3;
}

- (NSSet)shownBundleIdentifiers
{
  v2 = [(NSMutableSet *)self->_mutableShownBundleIdentifiers copy];

  return v2;
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  if (self->_contentCollapsable && self->_contentCollapsed)
  {
    return self->_contentCollapsedCellCount;
  }

  else
  {
    return [(NCAppPickerContentProvider *)self->_contentProvider totalCount:a3];
  }
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[NCAppPickerViewCell reuseIdentifier];
  v9 = [v7 dequeueReusableCellWithReuseIdentifier:v8 forIndexPath:v6];

  v10 = [v6 item];
  v11 = [(NCAppPickerContentProvider *)self->_contentProvider nameForIndex:v10];
  +[NCAppPickerViewCell preferredImageDimension];
  v13 = [(NCAppPickerContentProvider *)self->_contentProvider imageForIndex:v10 size:v12, v12];
  [v9 configureWithName:v11 image:v13 avgNumberOfNotificationsCount:-[NCAppPickerContentProvider avgNumberOfNotificationsForIndex:](self->_contentProvider maxAvgNumberOfNotificationsCount:"avgNumberOfNotificationsForIndex:" selected:{v10), -[NCAppPickerContentProvider maxAvgNumberOfNotifications](self->_contentProvider, "maxAvgNumberOfNotifications"), -[NCAppPickerContentProvider isSelectedForIndex:](self->_contentProvider, "isSelectedForIndex:", v10)}];

  return v9;
}

- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = *MEMORY[0x277D767D8];
  if ([v9 isEqualToString:*MEMORY[0x277D767D8]])
  {
    v12 = +[NCAppPickerViewHeader reuseIdentifier];
    v13 = [v8 dequeueReusableSupplementaryViewOfKind:v11 withReuseIdentifier:v12 forIndexPath:v10];

    [v13 configureSupportsSortByAvgNumberOfNotifications:{-[NCAppPickerContentProvider isAbleToSortByAvgNumberOfNotifications](self->_contentProvider, "isAbleToSortByAvgNumberOfNotifications")}];
  }

  else
  {
    v14 = *MEMORY[0x277D767D0];
    if ([v9 isEqualToString:*MEMORY[0x277D767D0]])
    {
      v15 = +[NCAppPickerViewFooter reuseIdentifier];
      v13 = [v8 dequeueReusableSupplementaryViewOfKind:v14 withReuseIdentifier:v15 forIndexPath:v10];

      [v13 configureWithShowMoreButton:self->_contentCollapsed delegate:self];
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v9[1] = *MEMORY[0x277D85DE8];
  contentProvider = self->_contentProvider;
  v6 = a4;
  -[NCAppPickerContentProvider toggleSelectedForIndex:](contentProvider, "toggleSelectedForIndex:", [v6 item]);
  [(NCAppPickerViewController *)self _refreshNextButton];
  collectionView = self->_collectionView;
  v9[0] = v6;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  [(UICollectionView *)collectionView reconfigureItemsAtIndexPaths:v8];
}

- (void)appPickViewFooterShowMoreButtonPressed:(id)a3
{
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  for (i = self->_contentCollapsedCellCount; i < [(NCAppPickerContentProvider *)self->_contentProvider totalCount]; ++i)
  {
    v6 = [MEMORY[0x277CCAA70] indexPathForItem:i inSection:0];
    [v4 addObject:v6];
  }

  collectionView = self->_collectionView;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __68__NCAppPickerViewController_appPickViewFooterShowMoreButtonPressed___block_invoke;
  v10[3] = &unk_27836F560;
  v10[4] = self;
  v11 = v4;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __68__NCAppPickerViewController_appPickViewFooterShowMoreButtonPressed___block_invoke_2;
  v9[3] = &unk_278370CD0;
  v9[4] = self;
  v8 = v4;
  [(UICollectionView *)collectionView performBatchUpdates:v10 completion:v9];
}

uint64_t __68__NCAppPickerViewController_appPickViewFooterShowMoreButtonPressed___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 1265) = 0;
  *(*(a1 + 32) + 1353) = 1;
  [*(*(a1 + 32) + 1296) insertItemsAtIndexPaths:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 _reloadFooter];
}

uint64_t __68__NCAppPickerViewController_appPickViewFooterShowMoreButtonPressed___block_invoke_2(uint64_t result, int a2)
{
  if (a2)
  {
    return [*(result + 32) _saveCellsSeen];
  }

  return result;
}

- (double)_availableContentWidth
{
  v3 = [(NCAppPickerViewController *)self navigationController];
  v4 = [v3 view];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [(NCAppPickerViewController *)self contentView];
  }

  v7 = v6;

  [v7 frame];
  v9 = v8 + -32.0;

  return v9;
}

- (void)_reloadFooter
{
  [(NCAppPickerViewController *)self _availableContentWidth];
  v4 = v3;
  v8 = [(UICollectionView *)self->_collectionView collectionViewLayout];
  [NCAppPickerViewFooter preferredHeightForWidth:self->_contentCollapsed showMoreButton:v4];
  [v8 setFooterReferenceSize:{v4, v5}];
  v6 = [(UICollectionView *)self->_collectionView visibleSupplementaryViewsOfKind:*MEMORY[0x277D767D0]];
  v7 = [v6 firstObject];

  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v7 configureWithShowMoreButton:self->_contentCollapsed delegate:self];
    }
  }
}

- (void)_saveCellsSeen
{
  if (self->_viewHasAppeared)
  {
    [(UICollectionView *)self->_collectionView contentOffset];
    v4 = v3 - self->_headerHeight;
    v5 = fmax(v4, 0.0);
    v6 = fmax(v4 + self->_collectionViewVisibleHeight, 0.0);
    v7 = self->_cellHeight + 8.0;
    v8 = v5 / v7;
    v9 = floor(v5 / v7);
    v10 = ceil(v8);
    if (v8 - v9 <= 0.25)
    {
      v11 = v9;
    }

    else
    {
      v11 = v10;
    }

    v12 = v6 / v7;
    v13 = floor(v6 / v7);
    v14 = v12 - v13 >= 0.75 || v12 <= 0.0;
    v15 = floor(v12 + -1.0);
    if (!v14)
    {
      v13 = v15;
    }

    v16 = v13;
    v17 = [(NCAppPickerContentProvider *)self->_contentProvider totalCount]- 1;
    v18 = [(UICollectionView *)self->_collectionView numberOfItemsInSection:0]- 1;
    if (v18 >= v16)
    {
      v18 = v16;
    }

    if (v17 >= v18)
    {
      v17 = v18;
    }

    v19 = v12 - v8;
    if (v12 - v8 > 0.75)
    {
      for (i = v11; i <= v17; ++i)
      {
        v21 = [(NCAppPickerContentProvider *)self->_contentProvider bundleIdentifierForIndex:i, v19];
        if (v21)
        {
          [(NSMutableSet *)self->_mutableShownBundleIdentifiers addObject:v21];
        }
      }
    }
  }
}

- (void)_refreshNextButton
{
  if ([(NCAppPickerContentProvider *)self->_contentProvider selectedCount])
  {
    v3 = MEMORY[0x277CCABB8];
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[NCAppPickerContentProvider selectedCount](self->_contentProvider, "selectedCount")}];
    v11 = [v3 localizedStringFromNumber:v4 numberStyle:0];

    v5 = MEMORY[0x277CCACA8];
    v6 = NCUserNotificationsUIKitFrameworkBundle();
    v7 = [v6 localizedStringForKey:@"NOTIFICATION_DIGEST_ADD_APPS_FORMAT_WITH_LOCALIZED_NUMBER" value:&stru_282FE84F8 table:0];
    v8 = [v5 stringWithFormat:v7, -[NCAppPickerContentProvider selectedCount](self->_contentProvider, "selectedCount"), v11];

    [(NCOnboardingViewController *)self setNextButtonText:v8];
    [(NCOnboardingViewController *)self setNextButtonEnabled:1];
  }

  else
  {
    v9 = NCUserNotificationsUIKitFrameworkBundle();
    v10 = [v9 localizedStringForKey:@"NOTIFICATION_DIGEST_ONBOARDING_ADD_APPS" value:&stru_282FE84F8 table:0];
    [(NCOnboardingViewController *)self setNextButtonText:v10];

    [(NCOnboardingViewController *)self setNextButtonEnabled:0];
  }
}

- (void)_cancelButtonPressed:(id)a3
{
  v3 = [(NCAppPickerViewController *)self navigationController];
  [v3 dismissViewControllerAnimated:1 completion:0];
}

- (void)_updateHeightConstraintAndLayoutIfNeeded:(BOOL)a3
{
  v3 = a3;
  v5 = [(NCAppPickerViewController *)self contentView];
  [v5 frame];
  v7 = v6;

  if ([(NCAppPickerViewController *)self _shouldInlineButtontray])
  {
    v8 = [(NCAppPickerViewController *)self view];
    [v8 bounds];
    v10 = v9;
    v11 = [(NCAppPickerViewController *)self view];
    [v11 safeAreaInsets];
    v13 = v10 - v12;
    v14 = [(NCAppPickerViewController *)self buttonTray];
    [v14 bounds];
    v16 = v13 - v15;

    v17 = 0.0;
  }

  else
  {
    v18 = [(NCAppPickerViewController *)self buttonTray];
    [v18 frame];
    v20 = v19;
    v21 = [(NCAppPickerViewController *)self buttonTray];
    [v21 frame];
    v23 = v20 + v22;
    v24 = [(NCAppPickerViewController *)self view];
    [v24 safeAreaInsets];
    v16 = v23 - v25;

    v8 = [(NCAppPickerViewController *)self buttonTray];
    [v8 frame];
    v17 = v26;
  }

  v27 = -v7;

  [(NSLayoutConstraint *)self->_heightConstraint constant];
  if (v16 != v28 || ([(NSLayoutConstraint *)self->_topConstraint constant], v29 != v27) || ([(UICollectionView *)self->_collectionView contentInset], v30 != v17) || ([(UICollectionView *)self->_collectionView verticalScrollIndicatorInsets], v31 != v17))
  {
    [(UICollectionView *)self->_collectionView setContentInset:0.0, 16.0, v17, 16.0];
    [(UICollectionView *)self->_collectionView setVerticalScrollIndicatorInsets:0.0, 0.0, v17, 0.0];
    [(NSLayoutConstraint *)self->_heightConstraint setConstant:v16];
    [(NSLayoutConstraint *)self->_topConstraint setConstant:v27];
    self->_collectionViewVisibleHeight = v16 - v17;
    v32 = v16 - v17 - self->_footerHeight - self->_headerHeight;
    cellHeight = self->_cellHeight;
    v34 = v32 / (cellHeight + 8.0);
    if (v34 < 4.0)
    {
      v34 = 4.0;
    }

    if (v34 * 8.0 + (v34 + 1) * cellHeight >= v32)
    {
      v35 = v34;
    }

    else
    {
      v35 = v34 + 1;
    }

    v36 = [(NCAppPickerContentProvider *)self->_contentProvider totalCount];
    self->_contentCollapsable = v36 > v35;
    if (v36 <= v35)
    {
      v37 = 0;
    }

    else
    {
      v37 = v35;
    }

    self->_contentCollapsedCellCount = v37;
    if (v3)
    {
      v38 = [(NCAppPickerViewController *)self contentView];
      [v38 needsUpdateConstraints];

      v39 = [(NCAppPickerViewController *)self contentView];
      [v39 setNeedsLayout];

      v40 = [(NCAppPickerViewController *)self contentView];
      [v40 layoutIfNeeded];

      collectionView = self->_collectionView;

      [(UICollectionView *)collectionView reloadData];
    }
  }
}

@end