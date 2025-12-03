@interface NCAppPickerViewController
+ (id)appPickerViewControllerWithContentProvider:(id)provider;
- (NSArray)selectedBundleIdentifiers;
- (NSSet)shownBundleIdentifiers;
- (double)_availableContentWidth;
- (id)_initWithContentProvider:(id)provider;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (void)_cancelButtonPressed:(id)pressed;
- (void)_refreshNextButton;
- (void)_reloadFooter;
- (void)_saveCellsSeen;
- (void)_updateHeightConstraintAndLayoutIfNeeded:(BOOL)needed;
- (void)appPickViewFooterShowMoreButtonPressed:(id)pressed;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation NCAppPickerViewController

+ (id)appPickerViewControllerWithContentProvider:(id)provider
{
  providerCopy = provider;
  v4 = [[NCAppPickerViewController alloc] _initWithContentProvider:providerCopy];

  return v4;
}

- (id)_initWithContentProvider:(id)provider
{
  v17[2] = *MEMORY[0x277D85DE8];
  providerCopy = provider;
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
    objc_storeStrong(&v7->_contentProvider, provider);
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    preferredContentSizeCategory = [mEMORY[0x277D75128] preferredContentSizeCategory];

    v12 = *MEMORY[0x277D76818];
    v17[0] = *MEMORY[0x277D76820];
    v17[1] = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
    if ([v13 containsObject:preferredContentSizeCategory])
    {

      IsAX = 1;
    }

    else
    {
      IsAX = _NCSizeCategoryIsAX(preferredContentSizeCategory);
    }

    v7->_largerTextSize = IsAX;
  }

  return v7;
}

- (void)viewDidLoad
{
  navigationController = [(NCAppPickerViewController *)self navigationController];
  [navigationController setNavigationBarHidden:0 animated:1];

  v54.receiver = self;
  v54.super_class = NCAppPickerViewController;
  [(NCOnboardingViewController *)&v54 viewDidLoad];
  scrollView = [(NCAppPickerViewController *)self scrollView];
  [scrollView setScrollEnabled:0];

  v5 = objc_alloc_init(MEMORY[0x277D752F0]);
  [v5 setMinimumLineSpacing:8.0];
  [(NCAppPickerViewController *)self _availableContentWidth];
  v7 = v6;
  longestAppName = [(NCAppPickerContentProvider *)self->_contentProvider longestAppName];
  [NCAppPickerViewCell preferredHeightForText:longestAppName cellWidth:v7];
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

  contentView = [(NCAppPickerViewController *)self contentView];
  [contentView addSubview:self->_collectionView];

  navigationItem = [(OBBaseWelcomeController *)self navigationItem];
  [navigationItem setHidesBackButton:1];

  v28 = objc_alloc(MEMORY[0x277D751E0]);
  v29 = NCUserNotificationsUIKitFrameworkBundle();
  v30 = [v29 localizedStringForKey:@"NOTIFICATION_DIGEST_ONBOARDING_APP_PICKER_CANCEL" value:&stru_282FE84F8 table:0];
  v31 = [v28 initWithTitle:v30 style:0 target:self action:sel__cancelButtonPressed_];

  navigationItem2 = [(OBBaseWelcomeController *)self navigationItem];
  [navigationItem2 setLeftBarButtonItem:v31];

  v33 = objc_alloc_init(MEMORY[0x277CBEB18]);
  heightAnchor = [(UICollectionView *)self->_collectionView heightAnchor];
  v35 = [heightAnchor constraintEqualToConstant:0.0];
  heightConstraint = self->_heightConstraint;
  self->_heightConstraint = v35;

  [v33 addObject:self->_heightConstraint];
  leadingAnchor = [(UICollectionView *)self->_collectionView leadingAnchor];
  contentView2 = [(NCAppPickerViewController *)self contentView];
  leadingAnchor2 = [contentView2 leadingAnchor];
  v40 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v33 addObject:v40];

  contentView3 = [(NCAppPickerViewController *)self contentView];
  trailingAnchor = [contentView3 trailingAnchor];
  trailingAnchor2 = [(UICollectionView *)self->_collectionView trailingAnchor];
  v44 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [v33 addObject:v44];

  topAnchor = [(UICollectionView *)self->_collectionView topAnchor];
  contentView4 = [(NCAppPickerViewController *)self contentView];
  topAnchor2 = [contentView4 topAnchor];
  v48 = [topAnchor constraintEqualToAnchor:topAnchor2];
  topConstraint = self->_topConstraint;
  self->_topConstraint = v48;

  [v33 addObject:self->_topConstraint];
  contentView5 = [(NCAppPickerViewController *)self contentView];
  bottomAnchor = [contentView5 bottomAnchor];
  bottomAnchor2 = [(UICollectionView *)self->_collectionView bottomAnchor];
  v53 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [v33 addObject:v53];

  [(NCAppPickerViewController *)self _updateHeightConstraintAndLayoutIfNeeded:0];
  [MEMORY[0x277CCAAD0] activateConstraints:v33];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = NCAppPickerViewController;
  [(NCAppPickerViewController *)&v4 viewWillAppear:appear];
  [(NCAppPickerViewController *)self performSelector:sel__updateHeightConstraintAndLayout withObject:0 afterDelay:0.0];
  [(NCAppPickerViewController *)self _refreshNextButton];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = NCAppPickerViewController;
  [(OBBaseWelcomeController *)&v4 viewDidAppear:appear];
  self->_viewHasAppeared = 1;
  [(NCAppPickerViewController *)self _saveCellsSeen];
}

- (NSArray)selectedBundleIdentifiers
{
  contentProvider = self->_contentProvider;
  if (contentProvider)
  {
    selectedBundleIdentifiers = [(NCAppPickerContentProvider *)contentProvider selectedBundleIdentifiers];
  }

  else
  {
    selectedBundleIdentifiers = objc_alloc_init(MEMORY[0x277CBEA60]);
  }

  return selectedBundleIdentifiers;
}

- (NSSet)shownBundleIdentifiers
{
  v2 = [(NSMutableSet *)self->_mutableShownBundleIdentifiers copy];

  return v2;
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  if (self->_contentCollapsable && self->_contentCollapsed)
  {
    return self->_contentCollapsedCellCount;
  }

  else
  {
    return [(NCAppPickerContentProvider *)self->_contentProvider totalCount:view];
  }
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = +[NCAppPickerViewCell reuseIdentifier];
  v9 = [viewCopy dequeueReusableCellWithReuseIdentifier:v8 forIndexPath:pathCopy];

  item = [pathCopy item];
  v11 = [(NCAppPickerContentProvider *)self->_contentProvider nameForIndex:item];
  +[NCAppPickerViewCell preferredImageDimension];
  v13 = [(NCAppPickerContentProvider *)self->_contentProvider imageForIndex:item size:v12, v12];
  [v9 configureWithName:v11 image:v13 avgNumberOfNotificationsCount:-[NCAppPickerContentProvider avgNumberOfNotificationsForIndex:](self->_contentProvider maxAvgNumberOfNotificationsCount:"avgNumberOfNotificationsForIndex:" selected:{item), -[NCAppPickerContentProvider maxAvgNumberOfNotifications](self->_contentProvider, "maxAvgNumberOfNotifications"), -[NCAppPickerContentProvider isSelectedForIndex:](self->_contentProvider, "isSelectedForIndex:", item)}];

  return v9;
}

- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path
{
  viewCopy = view;
  kindCopy = kind;
  pathCopy = path;
  v11 = *MEMORY[0x277D767D8];
  if ([kindCopy isEqualToString:*MEMORY[0x277D767D8]])
  {
    v12 = +[NCAppPickerViewHeader reuseIdentifier];
    v13 = [viewCopy dequeueReusableSupplementaryViewOfKind:v11 withReuseIdentifier:v12 forIndexPath:pathCopy];

    [v13 configureSupportsSortByAvgNumberOfNotifications:{-[NCAppPickerContentProvider isAbleToSortByAvgNumberOfNotifications](self->_contentProvider, "isAbleToSortByAvgNumberOfNotifications")}];
  }

  else
  {
    v14 = *MEMORY[0x277D767D0];
    if ([kindCopy isEqualToString:*MEMORY[0x277D767D0]])
    {
      v15 = +[NCAppPickerViewFooter reuseIdentifier];
      v13 = [viewCopy dequeueReusableSupplementaryViewOfKind:v14 withReuseIdentifier:v15 forIndexPath:pathCopy];

      [v13 configureWithShowMoreButton:self->_contentCollapsed delegate:self];
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  v9[1] = *MEMORY[0x277D85DE8];
  contentProvider = self->_contentProvider;
  pathCopy = path;
  -[NCAppPickerContentProvider toggleSelectedForIndex:](contentProvider, "toggleSelectedForIndex:", [pathCopy item]);
  [(NCAppPickerViewController *)self _refreshNextButton];
  collectionView = self->_collectionView;
  v9[0] = pathCopy;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  [(UICollectionView *)collectionView reconfigureItemsAtIndexPaths:v8];
}

- (void)appPickViewFooterShowMoreButtonPressed:(id)pressed
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
  navigationController = [(NCAppPickerViewController *)self navigationController];
  view = [navigationController view];
  v5 = view;
  if (view)
  {
    contentView = view;
  }

  else
  {
    contentView = [(NCAppPickerViewController *)self contentView];
  }

  v7 = contentView;

  [v7 frame];
  v9 = v8 + -32.0;

  return v9;
}

- (void)_reloadFooter
{
  [(NCAppPickerViewController *)self _availableContentWidth];
  v4 = v3;
  collectionViewLayout = [(UICollectionView *)self->_collectionView collectionViewLayout];
  [NCAppPickerViewFooter preferredHeightForWidth:self->_contentCollapsed showMoreButton:v4];
  [collectionViewLayout setFooterReferenceSize:{v4, v5}];
  v6 = [(UICollectionView *)self->_collectionView visibleSupplementaryViewsOfKind:*MEMORY[0x277D767D0]];
  firstObject = [v6 firstObject];

  if (firstObject)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [firstObject configureWithShowMoreButton:self->_contentCollapsed delegate:self];
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

- (void)_cancelButtonPressed:(id)pressed
{
  navigationController = [(NCAppPickerViewController *)self navigationController];
  [navigationController dismissViewControllerAnimated:1 completion:0];
}

- (void)_updateHeightConstraintAndLayoutIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  contentView = [(NCAppPickerViewController *)self contentView];
  [contentView frame];
  v7 = v6;

  if ([(NCAppPickerViewController *)self _shouldInlineButtontray])
  {
    view = [(NCAppPickerViewController *)self view];
    [view bounds];
    v10 = v9;
    view2 = [(NCAppPickerViewController *)self view];
    [view2 safeAreaInsets];
    v13 = v10 - v12;
    buttonTray = [(NCAppPickerViewController *)self buttonTray];
    [buttonTray bounds];
    v16 = v13 - v15;

    v17 = 0.0;
  }

  else
  {
    buttonTray2 = [(NCAppPickerViewController *)self buttonTray];
    [buttonTray2 frame];
    v20 = v19;
    buttonTray3 = [(NCAppPickerViewController *)self buttonTray];
    [buttonTray3 frame];
    v23 = v20 + v22;
    view3 = [(NCAppPickerViewController *)self view];
    [view3 safeAreaInsets];
    v16 = v23 - v25;

    view = [(NCAppPickerViewController *)self buttonTray];
    [view frame];
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

    totalCount = [(NCAppPickerContentProvider *)self->_contentProvider totalCount];
    self->_contentCollapsable = totalCount > v35;
    if (totalCount <= v35)
    {
      v37 = 0;
    }

    else
    {
      v37 = v35;
    }

    self->_contentCollapsedCellCount = v37;
    if (neededCopy)
    {
      contentView2 = [(NCAppPickerViewController *)self contentView];
      [contentView2 needsUpdateConstraints];

      contentView3 = [(NCAppPickerViewController *)self contentView];
      [contentView3 setNeedsLayout];

      contentView4 = [(NCAppPickerViewController *)self contentView];
      [contentView4 layoutIfNeeded];

      collectionView = self->_collectionView;

      [(UICollectionView *)collectionView reloadData];
    }
  }
}

@end