@interface NCSchedulerViewController
+ (id)schedulerWithDeliveryTimes:(id)times;
- (BOOL)_isAddIndexPath:(id)path;
- (BOOL)_isLastIndexPath:(id)path;
- (NSArray)deliveryTimes;
- (id)_addSummaryText;
- (id)_dateComponentsForHour:(unint64_t)hour minute:(unint64_t)minute;
- (id)_indexPathForCell:(id)cell;
- (id)_initWithDeliveryTimes:(id)times;
- (id)_summaryTextForCount:(unint64_t)count;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path;
- (unint64_t)_cellCount;
- (void)_addItemAtIndexPath:(id)path;
- (void)_cancelButtonPressed:(id)pressed;
- (void)_deleteItemAtIndexPath:(id)path;
- (void)_handleAddOrRemoveActionForIndexPath:(id)path;
- (void)_insertNextTime;
- (void)_reloadCollectionViewHeight;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)schedulerCell:(id)cell didChangeTime:(id)time;
- (void)schedulerCellButtonPressed:(id)pressed;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)viewDidLoad;
@end

@implementation NCSchedulerViewController

+ (id)schedulerWithDeliveryTimes:(id)times
{
  timesCopy = times;
  v4 = [[NCSchedulerViewController alloc] _initWithDeliveryTimes:timesCopy];

  return v4;
}

- (id)_initWithDeliveryTimes:(id)times
{
  timesCopy = times;
  NCRegisterUserNotificationsUILogging();
  v5 = NCUserNotificationsUIKitFrameworkBundle();
  v6 = [v5 localizedStringForKey:@"NOTIFICATION_DIGEST_ONBOARDING_SCHEDULER_TITLE" value:&stru_282FE84F8 table:0];
  v7 = NCUserNotificationsUIKitFrameworkBundle();
  v8 = [v7 localizedStringForKey:@"NOTIFICATION_DIGEST_ONBOARDING_SCHEDULER_DESCRIPTION" value:&stru_282FE84F8 table:0];
  v15.receiver = self;
  v15.super_class = NCSchedulerViewController;
  v9 = [(NCOnboardingViewController *)&v15 initWithTitle:v6 detailText:v8 contentLayout:3];

  if (v9)
  {
    if (timesCopy)
    {
      v10 = [timesCopy mutableCopy];
      mutableDeliveryTimes = v9->_mutableDeliveryTimes;
      v9->_mutableDeliveryTimes = v10;
    }

    else
    {
      v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v13 = v9->_mutableDeliveryTimes;
      v9->_mutableDeliveryTimes = v12;

      [(NCSchedulerViewController *)v9 _insertNextTime];
      [(NCSchedulerViewController *)v9 _insertNextTime];
    }
  }

  return v9;
}

- (void)viewDidLoad
{
  v59.receiver = self;
  v59.super_class = NCSchedulerViewController;
  [(NCOnboardingViewController *)&v59 viewDidLoad];
  v3 = NCUserNotificationsUIKitFrameworkBundle();
  v4 = [v3 localizedStringForKey:@"NOTIFICATION_DIGEST_ONBOARDING_SCHEDULER_NEXT_BUTTON" value:&stru_282FE84F8 table:0];
  [(NCOnboardingViewController *)self setNextButtonText:v4];

  v5 = objc_alloc(MEMORY[0x277D751E0]);
  v6 = NCUserNotificationsUIKitFrameworkBundle();
  v7 = [v6 localizedStringForKey:@"NOTIFICATION_DIGEST_ONBOARDING_SCHEDULER_CANCEL" value:&stru_282FE84F8 table:0];
  v8 = [v5 initWithTitle:v7 style:0 target:self action:sel__cancelButtonPressed_];

  navigationItem = [(OBBaseWelcomeController *)self navigationItem];
  [navigationItem setRightBarButtonItem:v8];

  navigationController = [(NCSchedulerViewController *)self navigationController];
  view = [navigationController view];
  v12 = view;
  if (view)
  {
    contentView = view;
  }

  else
  {
    contentView = [(NCSchedulerViewController *)self contentView];
  }

  v14 = contentView;

  [v14 frame];
  v16 = v15 + -48.0;
  _addSummaryText = [(NCSchedulerViewController *)self _addSummaryText];
  [NCSchedulerViewCell preferredHeightForText:_addSummaryText width:v16];
  v19 = v18;

  v20 = [(NCSchedulerViewController *)self _summaryTextForCount:12];
  [NCSchedulerViewCell preferredHeightForText:v20 width:v16];
  v22 = v21;

  if (v19 >= v22)
  {
    v23 = v19;
  }

  else
  {
    v23 = v22;
  }

  self->_dynamicCellHeight = v23;
  v24 = objc_alloc_init(MEMORY[0x277D752F0]);
  [v24 setMinimumLineSpacing:0.0];
  [v24 setItemSize:{v16, self->_dynamicCellHeight}];
  [NCSchedulerViewHeader preferredHeightForWidth:v16];
  self->_dynamicHeaderHeight = v25;
  [v24 setHeaderReferenceSize:{v16, v25}];
  v26 = objc_alloc(MEMORY[0x277D752A0]);
  v27 = [v26 initWithFrame:v24 collectionViewLayout:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  collectionView = self->_collectionView;
  self->_collectionView = v27;

  [(UICollectionView *)self->_collectionView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UICollectionView *)self->_collectionView setContentInset:0.0, 24.0, 0.0, 24.0];
  [(UICollectionView *)self->_collectionView setDataSource:self];
  [(UICollectionView *)self->_collectionView setDelegate:self];
  [(UICollectionView *)self->_collectionView setScrollEnabled:0];
  [(UICollectionView *)self->_collectionView setAutomaticallyAdjustsScrollIndicatorInsets:0];
  v29 = self->_collectionView;
  v30 = objc_opt_class();
  v31 = *MEMORY[0x277D767D8];
  v32 = +[NCSchedulerViewHeader reuseIdentifier];
  [(UICollectionView *)v29 registerClass:v30 forSupplementaryViewOfKind:v31 withReuseIdentifier:v32];

  v33 = self->_collectionView;
  v34 = objc_opt_class();
  v35 = +[NCSchedulerViewCell reuseIdentifier];
  [(UICollectionView *)v33 registerClass:v34 forCellWithReuseIdentifier:v35];

  contentView2 = [(NCSchedulerViewController *)self contentView];
  [contentView2 addSubview:self->_collectionView];

  v37 = objc_alloc_init(MEMORY[0x277CBEB18]);
  leadingAnchor = [(UICollectionView *)self->_collectionView leadingAnchor];
  contentView3 = [(NCSchedulerViewController *)self contentView];
  leadingAnchor2 = [contentView3 leadingAnchor];
  v41 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v37 addObject:v41];

  contentView4 = [(NCSchedulerViewController *)self contentView];
  trailingAnchor = [contentView4 trailingAnchor];
  trailingAnchor2 = [(UICollectionView *)self->_collectionView trailingAnchor];
  v45 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [v37 addObject:v45];

  topAnchor = [(UICollectionView *)self->_collectionView topAnchor];
  contentView5 = [(NCSchedulerViewController *)self contentView];
  topAnchor2 = [contentView5 topAnchor];
  v49 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v37 addObject:v49];

  contentView6 = [(NCSchedulerViewController *)self contentView];
  bottomAnchor = [contentView6 bottomAnchor];
  bottomAnchor2 = [(UICollectionView *)self->_collectionView bottomAnchor];
  v53 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [v37 addObject:v53];

  [(NCSchedulerViewController *)self _heightThatFitsCollectionView];
  v55 = v54;
  heightAnchor = [(UICollectionView *)self->_collectionView heightAnchor];
  v57 = [heightAnchor constraintEqualToConstant:v55];
  heightConstraint = self->_heightConstraint;
  self->_heightConstraint = v57;

  [v37 addObject:self->_heightConstraint];
  [MEMORY[0x277CCAAD0] activateConstraints:v37];
  [(UICollectionView *)self->_collectionView reloadData];
}

- (NSArray)deliveryTimes
{
  v2 = [(NSMutableArray *)self->_mutableDeliveryTimes copy];

  return v2;
}

- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path
{
  v6 = *MEMORY[0x277D767D8];
  pathCopy = path;
  viewCopy = view;
  v9 = +[NCSchedulerViewHeader reuseIdentifier];
  v10 = [viewCopy dequeueReusableSupplementaryViewOfKind:v6 withReuseIdentifier:v9 forIndexPath:pathCopy];

  return v10;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = +[NCSchedulerViewCell reuseIdentifier];
  v9 = [viewCopy dequeueReusableCellWithReuseIdentifier:v8 forIndexPath:pathCopy];

  v10 = [(NCSchedulerViewController *)self _isFirstIndexPath:pathCopy];
  v11 = [(NCSchedulerViewController *)self _isLastIndexPath:pathCopy];
  if ([(NCSchedulerViewController *)self _isAddIndexPath:pathCopy])
  {
    systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
    _addSummaryText = [(NCSchedulerViewController *)self _addSummaryText];
    LOBYTE(v18) = v11;
    [v9 configureWithSymbolName:@"plus" symbolColor:systemBlueColor title:_addSummaryText timeOfDay:0 delegate:self top:v10 bottom:v18];
LABEL_3:

LABEL_4:
    goto LABEL_11;
  }

  item = [pathCopy item];
  if (item < [(NSMutableArray *)self->_mutableDeliveryTimes count])
  {
    systemBlueColor = -[NCSchedulerViewController _summaryTextForCount:](self, "_summaryTextForCount:", [pathCopy item] + 1);
    if (v10)
    {
      v15 = 0;
    }

    else
    {
      v15 = @"minus";
    }

    if (v10)
    {
      _addSummaryText = 0;
    }

    else
    {
      _addSummaryText = [MEMORY[0x277D75348] systemRedColor];
    }

    v17 = -[NSMutableArray objectAtIndex:](self->_mutableDeliveryTimes, "objectAtIndex:", [pathCopy item]);
    LOBYTE(v18) = v11;
    [v9 configureWithSymbolName:v15 symbolColor:_addSummaryText title:systemBlueColor timeOfDay:v17 delegate:self top:v10 bottom:v18];

    if (v10)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

LABEL_11:

  return v9;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  if ([(NCSchedulerViewController *)self _isAddIndexPath:?])
  {
    [(NCSchedulerViewController *)self _handleAddOrRemoveActionForIndexPath:pathCopy];
  }
}

- (void)schedulerCell:(id)cell didChangeTime:(id)time
{
  timeCopy = time;
  v6 = [(NCSchedulerViewController *)self _indexPathForCell:cell];
  v7 = v6;
  if (v6)
  {
    item = [v6 item];
    if (item < [(NSMutableArray *)self->_mutableDeliveryTimes count])
    {
      -[NSMutableArray replaceObjectAtIndex:withObject:](self->_mutableDeliveryTimes, "replaceObjectAtIndex:withObject:", [v7 item], timeCopy);
      v9 = [(NSMutableArray *)self->_mutableDeliveryTimes sortedArrayUsingComparator:&__block_literal_global_20];
      v10 = [v9 mutableCopy];

      mutableDeliveryTimes = self->_mutableDeliveryTimes;
      self->_mutableDeliveryTimes = v10;
      v12 = v10;

      [(UICollectionView *)self->_collectionView reloadData];
    }
  }
}

uint64_t __57__NCSchedulerViewController_schedulerCell_didChangeTime___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 hour];
  if (v6 <= [v5 hour])
  {
    v8 = [v4 hour];
    v7 = -1;
    if (v8 == [v5 hour])
    {
      v9 = [v4 minute];
      if (v9 >= [v5 minute])
      {
        v7 = 1;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (void)schedulerCellButtonPressed:(id)pressed
{
  v4 = [(NCSchedulerViewController *)self _indexPathForCell:pressed];
  if (v4)
  {
    v4 = [(NCSchedulerViewController *)self _handleAddOrRemoveActionForIndexPath:v4];
  }

  MEMORY[0x2821F96F8](v4);
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  v4.receiver = self;
  v4.super_class = NCSchedulerViewController;
  [(NCSchedulerViewController *)&v4 touchesBegan:began withEvent:event];
}

- (void)_insertNextTime
{
  if (![(NCSchedulerViewController *)self _currentDailyDigestCount])
  {
    selfCopy4 = self;
    v4 = 8;
    goto LABEL_5;
  }

  if ([(NCSchedulerViewController *)self _currentDailyDigestCount]== 1)
  {
    selfCopy4 = self;
    v4 = 18;
LABEL_5:
    v5 = 0;
LABEL_6:
    v6 = [(NCSchedulerViewController *)selfCopy4 _dateComponentsForHour:v4 minute:v5];
    goto LABEL_7;
  }

  lastObject = [(NSMutableArray *)self->_mutableDeliveryTimes lastObject];
  hour = [lastObject hour];

  if (hour > 0x16 || ([(NCSchedulerViewController *)self _dateComponentsForHour:hour + 1 minute:0], (v6 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    lastObject2 = [(NSMutableArray *)self->_mutableDeliveryTimes lastObject];
    minute = [lastObject2 minute];

    if (minute > 0x3A)
    {
      selfCopy4 = self;
      v4 = hour;
      v5 = 59;
    }

    else
    {
      v5 = minute + 1;
      selfCopy4 = self;
      v4 = hour;
    }

    goto LABEL_6;
  }

LABEL_7:
  v11 = v6;
  [(NSMutableArray *)self->_mutableDeliveryTimes addObject:v6];
}

- (void)_handleAddOrRemoveActionForIndexPath:(id)path
{
  pathCopy = path;
  if ([(NCSchedulerViewController *)self _isAddIndexPath:?])
  {
    [(NCSchedulerViewController *)self _addItemAtIndexPath:pathCopy];
  }

  else
  {
    item = [pathCopy item];
    if (item < [(NSMutableArray *)self->_mutableDeliveryTimes count])
    {
      [(NCSchedulerViewController *)self _deleteItemAtIndexPath:pathCopy];
    }
  }
}

- (unint64_t)_cellCount
{
  _currentDailyDigestCount = [(NCSchedulerViewController *)self _currentDailyDigestCount];
  if (_currentDailyDigestCount + 1 < 0xC)
  {
    return _currentDailyDigestCount + 1;
  }

  else
  {
    return 12;
  }
}

- (BOOL)_isLastIndexPath:(id)path
{
  pathCopy = path;
  v5 = [(NCSchedulerViewController *)self _cellCount]- 1;
  item = [pathCopy item];

  return v5 == item;
}

- (BOOL)_isAddIndexPath:(id)path
{
  v4 = [(NCSchedulerViewController *)self _isLastIndexPath:path];
  if (v4)
  {
    LOBYTE(v4) = [(NCSchedulerViewController *)self _currentDailyDigestCount]< 0xC;
  }

  return v4;
}

- (void)_reloadCollectionViewHeight
{
  [(NCSchedulerViewController *)self _heightThatFitsCollectionView];
  v4 = v3;
  [(NSLayoutConstraint *)self->_heightConstraint constant];
  if (v4 != v5)
  {
    [(NSLayoutConstraint *)self->_heightConstraint setConstant:v4];
    [(UICollectionView *)self->_collectionView setNeedsLayout];
    collectionView = self->_collectionView;

    [(UICollectionView *)collectionView layoutIfNeeded];
  }
}

- (id)_indexPathForCell:(id)cell
{
  cellCopy = cell;
  visibleCells = [(UICollectionView *)self->_collectionView visibleCells];
  indexPathsForVisibleItems = [(UICollectionView *)self->_collectionView indexPathsForVisibleItems];
  v7 = [visibleCells count];
  v8 = MEMORY[0x277D77DE0];
  if (v7)
  {
    v9 = 0;
    while (1)
    {
      v10 = [visibleCells objectAtIndex:v9];

      v11 = [indexPathsForVisibleItems count];
      if (v10 == cellCopy)
      {
        break;
      }

      if (++v9 >= [visibleCells count])
      {
        goto LABEL_11;
      }
    }

    if (v9 >= v11)
    {
      v13 = *v8;
      if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
      {
        [NCSchedulerViewController _indexPathForCell:v13];
      }
    }

    else
    {
      v12 = [indexPathsForVisibleItems objectAtIndex:v9];
      if (v12)
      {
        goto LABEL_14;
      }
    }
  }

LABEL_11:
  v14 = *v8;
  if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
  {
    [NCSchedulerViewController _indexPathForCell:v14];
  }

  v12 = 0;
LABEL_14:

  return v12;
}

- (void)_deleteItemAtIndexPath:(id)path
{
  pathCopy = path;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  collectionView = self->_collectionView;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __52__NCSchedulerViewController__deleteItemAtIndexPath___block_invoke;
  v11[3] = &unk_2783715C0;
  v11[4] = self;
  v12 = pathCopy;
  v13 = v5;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __52__NCSchedulerViewController__deleteItemAtIndexPath___block_invoke_2;
  v9[3] = &unk_278371A00;
  v9[4] = self;
  v10 = v13;
  v7 = v13;
  v8 = pathCopy;
  [(UICollectionView *)collectionView performBatchUpdates:v11 completion:v9];
}

void __52__NCSchedulerViewController__deleteItemAtIndexPath___block_invoke(uint64_t a1)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _currentDailyDigestCount];
  [*(*(a1 + 32) + 1264) removeObjectAtIndex:{objc_msgSend(*(a1 + 40), "item")}];
  [*(a1 + 32) _reloadCollectionViewHeight];
  for (i = [*(a1 + 40) item]; i < objc_msgSend(*(a1 + 32), "_cellCount"); ++i)
  {
    v4 = *(a1 + 48);
    v5 = [MEMORY[0x277CCAA70] indexPathForItem:i inSection:0];
    [v4 addObject:v5];
  }

  if (v2 != 12)
  {
    v6 = [*(a1 + 32) collectionView];
    v8[0] = *(a1 + 40);
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
    [v6 deleteItemsAtIndexPaths:v7];
  }
}

void __52__NCSchedulerViewController__deleteItemAtIndexPath___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) collectionView];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __52__NCSchedulerViewController__deleteItemAtIndexPath___block_invoke_4;
  v4[3] = &unk_278371A00;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [v2 performBatchUpdates:&__block_literal_global_38 completion:v4];
}

void __52__NCSchedulerViewController__deleteItemAtIndexPath___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) collectionView];
  [v2 reloadItemsAtIndexPaths:*(a1 + 40)];
}

- (void)_addItemAtIndexPath:(id)path
{
  pathCopy = path;
  _currentDailyDigestCount = [(NCSchedulerViewController *)self _currentDailyDigestCount];
  collectionView = self->_collectionView;
  if (_currentDailyDigestCount == 11)
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __49__NCSchedulerViewController__addItemAtIndexPath___block_invoke;
    v16[3] = &unk_27836F560;
    v7 = &v17;
    v16[4] = self;
    v17 = pathCopy;
    v8 = pathCopy;
    v9 = v16;
    v10 = collectionView;
    v11 = 0;
  }

  else
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __49__NCSchedulerViewController__addItemAtIndexPath___block_invoke_2;
    v14[3] = &unk_27836F560;
    v7 = &v15;
    v14[4] = self;
    v15 = pathCopy;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __49__NCSchedulerViewController__addItemAtIndexPath___block_invoke_3;
    v13[3] = &unk_278370CD0;
    v13[4] = self;
    v12 = pathCopy;
    v9 = v14;
    v11 = v13;
    v10 = collectionView;
  }

  [(UICollectionView *)v10 performBatchUpdates:v9 completion:v11];
}

void __49__NCSchedulerViewController__addItemAtIndexPath___block_invoke(uint64_t a1)
{
  v4[1] = *MEMORY[0x277D85DE8];
  [*(a1 + 32) _insertNextTime];
  v2 = [*(a1 + 32) collectionView];
  v4[0] = *(a1 + 40);
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];
  [v2 reloadItemsAtIndexPaths:v3];
}

void __49__NCSchedulerViewController__addItemAtIndexPath___block_invoke_2(uint64_t a1)
{
  v8[1] = *MEMORY[0x277D85DE8];
  [*(a1 + 32) _insertNextTime];
  [*(a1 + 32) _reloadCollectionViewHeight];
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  for (i = [*(a1 + 40) item]; i < objc_msgSend(*(a1 + 32), "_cellCount") - 1; ++i)
  {
    v4 = [MEMORY[0x277CCAA70] indexPathForItem:i inSection:0];
    [v2 addObject:v4];
  }

  v5 = [*(a1 + 32) collectionView];
  [v5 reloadItemsAtIndexPaths:v2];

  v6 = [*(a1 + 32) collectionView];
  v8[0] = *(a1 + 40);
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  [v6 insertItemsAtIndexPaths:v7];
}

void __49__NCSchedulerViewController__addItemAtIndexPath___block_invoke_3(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) scrollView];
    [v3 contentSize];
    v5 = v4;
    v6 = [*(a1 + 32) scrollView];
    [v6 bounds];
    v8 = v5 - v7;
    v9 = [*(a1 + 32) scrollView];
    [v9 contentInset];
    v11 = v8 + v10;

    if (v11 > 0.0)
    {
      v12 = [*(a1 + 32) scrollView];
      [v12 setContentOffset:1 animated:{0.0, v11}];
    }
  }
}

- (id)_summaryTextForCount:(unint64_t)count
{
  if (count - 1 > 0xB)
  {
    v5 = 0;
  }

  else
  {
    v3 = off_278371A20[count - 1];
    v4 = NCUserNotificationsUIKitFrameworkBundle();
    v5 = [v4 localizedStringForKey:v3 value:&stru_282FE84F8 table:0];
  }

  return v5;
}

- (id)_addSummaryText
{
  v2 = NCUserNotificationsUIKitFrameworkBundle();
  v3 = [v2 localizedStringForKey:@"NOTIFICATION_DIGEST_SETTINGS_ADD_SUMMARY" value:&stru_282FE84F8 table:0];

  return v3;
}

- (id)_dateComponentsForHour:(unint64_t)hour minute:(unint64_t)minute
{
  v6 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  [v6 setHour:hour];
  [v6 setMinute:minute];

  return v6;
}

- (void)_cancelButtonPressed:(id)pressed
{
  navigationController = [(NCSchedulerViewController *)self navigationController];
  [navigationController dismissViewControllerAnimated:1 completion:0];
}

@end