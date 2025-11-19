@interface NCNotificationListSupplementaryViewsSection
+ (NSSet)presentableTypes;
- (BOOL)isEligibleToPerformGroupAnimationForNotificationListBaseComponent:(id)a3 toGrouped:(BOOL)a4;
- (BOOL)respondsToSelector:(SEL)a3;
- (CGSize)allowedSupplementaryViewSize;
- (NCAnimator)animator;
- (NCNotificationListBaseComponentDelegate)delegate;
- (NCNotificationListSupplementaryViewsContainingDelegate)supplementaryContainerDelegate;
- (NCNotificationListSupplementaryViewsSection)initWithPosition:(unint64_t)a3;
- (NCNotificationListViewProtocol)listView;
- (NSArray)groupingIdentifiers;
- (NSArray)supplementaryViewControllers;
- (NSDictionary)supplementaryViewControllersByGroupingIdentifiers;
- (double)collapsedHeight;
- (double)expandedHeight;
- (double)expandedHeightIgnoringNotificationStacks;
- (double)notificationListView:(id)a3 heightForItemAtIndex:(unint64_t)a4 withWidth:(double)a5 inDisplayListAsStackMode:(BOOL)a6 ignoreExpandedGroupStack:(BOOL)a7;
- (id)_logDescription;
- (id)hostingPlatterViewForSupplementaryViewController:(id)a3;
- (id)notificationListView:(id)a3 viewForItemAtIndex:(unint64_t)a4;
- (unint64_t)_indexOfExistingSupplementaryViewsGroupForGroupingIdentifier:(id)a3;
- (unint64_t)_indexOfExistingSupplementaryViewsGroupForSupplementaryViewController:(id)a3;
- (unint64_t)_sortedIndexForGroupingIdentifier:(id)a3;
- (unint64_t)supplementaryViewControllersCount;
- (void)_removeNotificationViewsGroup:(id)a3 animated:(BOOL)a4;
- (void)_updatePositionOfGroupAtIndex:(unint64_t)a3;
- (void)adjustForLegibilitySettingsChange:(id)a3;
- (void)cancelTouchesOnHostedViews:(BOOL)a3;
- (void)clearAll;
- (void)forwardInvocation:(id)a3;
- (void)insertSupplementaryViewController:(id)a3 withConfiguration:(id)a4;
- (void)notificationListBaseComponent:(id)a3 didRemoveView:(id)a4;
- (void)notificationListBaseComponent:(id)a3 willRemoveView:(id)a4;
- (void)notificationListBaseComponentDidRemoveAll:(id)a3;
- (void)notificationListPresentableGroup:(id)a3 requestsScrollToTopOfCollectionWithCompletion:(id)a4;
- (void)notificationListSupplementaryViewsGroup:(id)a3 cancelTouches:(BOOL)a4 onHostedViewController:(id)a5;
- (void)notificationListSupplementaryViewsGroup:(id)a3 didSetGrouped:(BOOL)a4;
- (void)notificationListSupplementaryViewsGroupDidChangePreferredContentSize:(id)a3;
- (void)presentViewControllerModally:(id)a3 fromSupplementaryViewController:(id)a4 animated:(BOOL)a5 completion:(id)a6;
- (void)recycleView:(id)a3;
- (void)removeSupplementaryViewController:(id)a3;
- (void)setViewControllerSortComparator:(id)a3;
- (void)updatePositionIfNeededForSupplementaryViewController:(id)a3;
- (void)updateSupplementaryViewController:(id)a3 withConfiguration:(id)a4;
@end

@implementation NCNotificationListSupplementaryViewsSection

- (NSArray)supplementaryViewControllers
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  orderedSupplementaryViewsGroups = self->_orderedSupplementaryViewsGroups;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __75__NCNotificationListSupplementaryViewsSection_supplementaryViewControllers__block_invoke;
  v7[3] = &unk_278373150;
  v5 = v3;
  v8 = v5;
  [(NSMutableArray *)orderedSupplementaryViewsGroups enumerateObjectsUsingBlock:v7];

  return v5;
}

void __75__NCNotificationListSupplementaryViewsSection_supplementaryViewControllers__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 supplementaryViewControllers];
  [v2 addObjectsFromArray:v3];
}

- (NCNotificationListViewProtocol)listView
{
  listView = self->_listView;
  if (!listView)
  {
    v4 = [[NCNotificationListView alloc] initWithModelType:objc_opt_class() purpose:self->_identifier];
    v5 = self->_listView;
    self->_listView = v4;

    [(NCNotificationListViewProtocol *)self->_listView setGrouped:1];
    [(NCNotificationListViewProtocol *)self->_listView setDataSource:self];
    [(NCNotificationListViewProtocol *)self->_listView setRevealed:1];
    [(NCNotificationListViewProtocol *)self->_listView setRevealPercentage:1.0];
    listView = self->_listView;
  }

  return listView;
}

- (NCAnimator)animator
{
  v3 = [(NCNotificationListSupplementaryViewsSection *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 animator];
  }

  else
  {
    v5 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_FAULT))
    {
      [(NCNotificationListSupplementaryViewsGroup *)v3 animator];
    }

    v4 = NCDefaultAnimator();
  }

  v6 = v4;

  return v6;
}

- (NCNotificationListBaseComponentDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (NCNotificationListSupplementaryViewsSection)initWithPosition:(unint64_t)a3
{
  v9.receiver = self;
  v9.super_class = NCNotificationListSupplementaryViewsSection;
  v4 = [(NCNotificationListSupplementaryViewsSection *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_position = a3;
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    orderedSupplementaryViewsGroups = v5->_orderedSupplementaryViewsGroups;
    v5->_orderedSupplementaryViewsGroups = v6;
  }

  return v5;
}

void __90__NCNotificationListSupplementaryViewsSection_collapseAllExpandedSupplementaryViewsGroups__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (([v2 isGrouped] & 1) == 0)
  {
    [v2 setGrouped:1 animated:1];
  }
}

- (void)cancelTouchesOnHostedViews:(BOOL)a3
{
  v3 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_supplementaryContainerDelegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained supplementaryViewsContainer:self requestsCancelTouchesOnAllSupplementaryViewControllers:v3];
  }
}

- (double)expandedHeightIgnoringNotificationStacks
{
  v2 = [(NCNotificationListSupplementaryViewsSection *)self listView];
  [v2 calculateSizeForGrouped:0 ignoreFeaturedLeadingView:1 ignoreExpandedGroupStack:1 inDisplayListAsStackMode:0 dynamicGroupedOverlapHeightMultiple:0];
  v4 = v3;

  return v4;
}

- (double)expandedHeight
{
  v2 = [(NCNotificationListSupplementaryViewsSection *)self listView];
  [v2 calculateSizeForGrouped:0 ignoreFeaturedLeadingView:0 ignoreExpandedGroupStack:0 inDisplayListAsStackMode:0 dynamicGroupedOverlapHeightMultiple:0];
  v4 = v3;

  return v4;
}

- (double)collapsedHeight
{
  v2 = [(NCNotificationListSupplementaryViewsSection *)self listView];
  [v2 calculateSizeForGrouped:1 ignoreFeaturedLeadingView:0 ignoreExpandedGroupStack:1 inDisplayListAsStackMode:0 dynamicGroupedOverlapHeightMultiple:0];
  v4 = v3;

  return v4;
}

- (void)adjustForLegibilitySettingsChange:(id)a3
{
  v4 = a3;
  orderedSupplementaryViewsGroups = self->_orderedSupplementaryViewsGroups;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __81__NCNotificationListSupplementaryViewsSection_adjustForLegibilitySettingsChange___block_invoke;
  v7[3] = &unk_278373150;
  v8 = v4;
  v6 = v4;
  [(NSMutableArray *)orderedSupplementaryViewsGroups enumerateObjectsUsingBlock:v7];
}

- (void)setViewControllerSortComparator:(id)a3
{
  v4 = _Block_copy(a3);
  viewControllerSortComparator = self->_viewControllerSortComparator;
  self->_viewControllerSortComparator = v4;

  orderedSupplementaryViewsGroups = self->_orderedSupplementaryViewsGroups;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __79__NCNotificationListSupplementaryViewsSection_setViewControllerSortComparator___block_invoke;
  v7[3] = &unk_278373150;
  v7[4] = self;
  [(NSMutableArray *)orderedSupplementaryViewsGroups enumerateObjectsUsingBlock:v7];
}

- (unint64_t)supplementaryViewControllersCount
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  orderedSupplementaryViewsGroups = self->_orderedSupplementaryViewsGroups;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __80__NCNotificationListSupplementaryViewsSection_supplementaryViewControllersCount__block_invoke;
  v5[3] = &unk_278373178;
  v5[4] = &v6;
  [(NSMutableArray *)orderedSupplementaryViewsGroups enumerateObjectsUsingBlock:v5];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __80__NCNotificationListSupplementaryViewsSection_supplementaryViewControllersCount__block_invoke(uint64_t a1, void *a2)
{
  result = [a2 count];
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

- (NSArray)groupingIdentifiers
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  orderedSupplementaryViewsGroups = self->_orderedSupplementaryViewsGroups;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __66__NCNotificationListSupplementaryViewsSection_groupingIdentifiers__block_invoke;
  v7[3] = &unk_278373150;
  v5 = v3;
  v8 = v5;
  [(NSMutableArray *)orderedSupplementaryViewsGroups enumerateObjectsUsingBlock:v7];

  return v5;
}

uint64_t __66__NCNotificationListSupplementaryViewsSection_groupingIdentifiers__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 groupingIdentifier];
  if (v3)
  {
    v3 = [*(a1 + 32) addObject:v3];
  }

  return MEMORY[0x2821F96F8](v3);
}

- (NSDictionary)supplementaryViewControllersByGroupingIdentifiers
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  orderedSupplementaryViewsGroups = self->_orderedSupplementaryViewsGroups;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __96__NCNotificationListSupplementaryViewsSection_supplementaryViewControllersByGroupingIdentifiers__block_invoke;
  v7[3] = &unk_278373150;
  v5 = v3;
  v8 = v5;
  [(NSMutableArray *)orderedSupplementaryViewsGroups enumerateObjectsUsingBlock:v7];

  return v5;
}

void __96__NCNotificationListSupplementaryViewsSection_supplementaryViewControllersByGroupingIdentifiers__block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 groupingIdentifier];
  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = [v6 supplementaryViewControllers];
    [v4 setObject:v5 forKey:v3];
  }
}

- (void)insertSupplementaryViewController:(id)a3 withConfiguration:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = *MEMORY[0x277D77DD0];
  if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v10 = [(NCNotificationListSupplementaryViewsSection *)self _logDescription];
    v19 = 138543874;
    v20 = v10;
    v21 = 2114;
    v22 = v7;
    v23 = 2114;
    v24 = v6;
    _os_log_impl(&dword_21E77E000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ inserting supplementary view controller with configuration = %{public}@ [viewController=%{public}@]", &v19, 0x20u);
  }

  v11 = [v7 groupingIdentifier];
  v12 = [(NCNotificationListSupplementaryViewsSection *)self _indexOfExistingSupplementaryViewsGroupForGroupingIdentifier:v11];
  if (v12 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v13 = objc_alloc_init(NCNotificationListSupplementaryViewsGroup);
    [(NCNotificationListPresentableGroup *)v13 setNotificationListCache:self->_notificationListCache];
    [(NCNotificationListSupplementaryViewsGroup *)v13 setSectionIdentifier:self->_identifier];
    [(NCNotificationListPresentableGroup *)v13 setDelegate:self];
    [(NCNotificationListSupplementaryViewsGroup *)v13 setGroupingIdentifier:v11];
    v14 = [v7 groupName];
    [(NCNotificationListSupplementaryViewsGroup *)v13 setGroupName:v14];

    [(NCNotificationListSupplementaryViewsGroup *)v13 setViewControllerSortComparator:self->_viewControllerSortComparator];
    v15 = [(NCNotificationListSupplementaryViewsSection *)self _sortedIndexForGroupingIdentifier:v11];
    [(NSMutableArray *)self->_orderedSupplementaryViewsGroups insertObject:v13 atIndex:v15];
    v16 = [(NCNotificationListSupplementaryViewsSection *)self listView];
    [v16 insertViewAtIndex:v15 animated:1];
  }

  else
  {
    v17 = v12;
    v13 = [(NSMutableArray *)self->_orderedSupplementaryViewsGroups objectAtIndex:v12];
    [(NCNotificationListSupplementaryViewsSection *)self _updatePositionOfGroupAtIndex:v17];
  }

  [(NCNotificationListSupplementaryViewsGroup *)v13 insertSupplementaryViewController:v6 withConfiguration:v7];
  v18 = [(NCNotificationListSupplementaryViewsSection *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v18 supplementaryViewSectionDidChangeContent:self];
  }
}

- (void)updateSupplementaryViewController:(id)a3 withConfiguration:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = [(NCNotificationListSupplementaryViewsSection *)self _indexOfExistingSupplementaryViewsGroupForSupplementaryViewController:v11];
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = v7;
    v9 = [(NSMutableArray *)self->_orderedSupplementaryViewsGroups objectAtIndex:v7];
    [v9 updateSupplementaryViewController:v11 withConfiguration:v6];
    [(NCNotificationListSupplementaryViewsSection *)self _updatePositionOfGroupAtIndex:v8];
  }

  v10 = [(NCNotificationListSupplementaryViewsSection *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v10 supplementaryViewSectionDidChangeContent:self];
  }
}

- (void)updatePositionIfNeededForSupplementaryViewController:(id)a3
{
  v7 = a3;
  v4 = [(NCNotificationListSupplementaryViewsSection *)self _indexOfExistingSupplementaryViewsGroupForSupplementaryViewController:?];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = v4;
    v6 = [(NSMutableArray *)self->_orderedSupplementaryViewsGroups objectAtIndex:v4];
    [v6 updatePositionIfNeededForSupplementaryViewController:v7];
    [(NCNotificationListSupplementaryViewsSection *)self _updatePositionOfGroupAtIndex:v5];
  }
}

- (void)removeSupplementaryViewController:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *MEMORY[0x277D77DD0];
  if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [(NCNotificationListSupplementaryViewsSection *)self _logDescription];
    v13 = 138543618;
    v14 = v7;
    v15 = 2114;
    v16 = v4;
    _os_log_impl(&dword_21E77E000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ removing supplementary view controller [viewController=%{public}@]", &v13, 0x16u);
  }

  v8 = [(NCNotificationListSupplementaryViewsSection *)self _indexOfExistingSupplementaryViewsGroupForSupplementaryViewController:v4];
  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = v8;
    v10 = [(NSMutableArray *)self->_orderedSupplementaryViewsGroups objectAtIndex:v8];
    [v10 removeSupplementaryViewController:v4];
    if (![v10 count])
    {
      [(NSMutableArray *)self->_orderedSupplementaryViewsGroups removeObjectAtIndex:v9];
      v11 = [(NCNotificationListSupplementaryViewsSection *)self listView];
      [v11 removeViewAtIndex:v9 animated:1];
    }
  }

  v12 = [(NCNotificationListSupplementaryViewsSection *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v12 supplementaryViewSectionDidChangeContent:self];
  }
}

- (void)presentViewControllerModally:(id)a3 fromSupplementaryViewController:(id)a4 animated:(BOOL)a5 completion:(id)a6
{
  v7 = a5;
  v14 = a3;
  v10 = a4;
  v11 = a6;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v13 = [[NCModalNavigationController alloc] initWithRootViewController:v14];
    [WeakRetained notificationListBaseComponent:self requestsModalPresentationOfNavigationController:v13 sender:v10 animated:v7 completion:v11];
  }
}

- (id)hostingPlatterViewForSupplementaryViewController:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__14;
  v16 = __Block_byref_object_dispose__14;
  v17 = 0;
  orderedSupplementaryViewsGroups = self->_orderedSupplementaryViewsGroups;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __96__NCNotificationListSupplementaryViewsSection_hostingPlatterViewForSupplementaryViewController___block_invoke;
  v9[3] = &unk_2783731A0;
  v11 = &v12;
  v6 = v4;
  v10 = v6;
  [(NSMutableArray *)orderedSupplementaryViewsGroups enumerateObjectsUsingBlock:v9];
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __96__NCNotificationListSupplementaryViewsSection_hostingPlatterViewForSupplementaryViewController___block_invoke(uint64_t a1, void *a2, uint64_t a3, BOOL *a4)
{
  v6 = [a2 hostingPlatterViewForSupplementaryViewController:*(a1 + 32)];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  *a4 = *(*(*(a1 + 40) + 8) + 40) != 0;
}

- (CGSize)allowedSupplementaryViewSize
{
  v2 = [(NCNotificationListSupplementaryViewsSection *)self listView];
  [v2 frame];
  Width = CGRectGetWidth(v7);

  v4 = 0.0;
  v5 = Width;
  result.height = v4;
  result.width = v5;
  return result;
}

- (double)notificationListView:(id)a3 heightForItemAtIndex:(unint64_t)a4 withWidth:(double)a5 inDisplayListAsStackMode:(BOOL)a6 ignoreExpandedGroupStack:(BOOL)a7
{
  v7 = a7;
  v8 = a6;
  if ([(NSMutableArray *)self->_orderedSupplementaryViewsGroups count:a3]<= a4)
  {
    return 0.0;
  }

  v11 = [(NSMutableArray *)self->_orderedSupplementaryViewsGroups objectAtIndex:a4];
  v12 = [v11 listView];
  v13 = [v12 isGrouped];

  v14 = 1.0;
  if (v8)
  {
    if ([(NCNotificationListSupplementaryViewsSection *)self count]== 1)
    {
      v14 = 1.0;
    }

    else
    {
      v14 = 0.0;
    }
  }

  v15 = [v11 listView];
  *&v16 = v14;
  v17 = [MEMORY[0x277CCABB0] numberWithFloat:v16];
  [v15 calculateSizeForGrouped:v13 | v7 ignoreFeaturedLeadingView:0 ignoreExpandedGroupStack:v7 inDisplayListAsStackMode:0 dynamicGroupedOverlapHeightMultiple:v17];
  v19 = v18;

  return v19;
}

- (id)notificationListView:(id)a3 viewForItemAtIndex:(unint64_t)a4
{
  if ([(NSMutableArray *)self->_orderedSupplementaryViewsGroups count]<= a4)
  {
    v7 = 0;
  }

  else
  {
    v6 = [(NSMutableArray *)self->_orderedSupplementaryViewsGroups objectAtIndex:a4];
    v7 = [v6 listView];
  }

  return v7;
}

- (void)recycleView:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v3 recycleVisibleViews];
  }
}

- (BOOL)respondsToSelector:(SEL)a3
{
  v8.receiver = self;
  v8.super_class = NCNotificationListSupplementaryViewsSection;
  if ([(NCNotificationListSupplementaryViewsSection *)&v8 respondsToSelector:?])
  {
    v5 = 1;
  }

  else if ([NCNotificationStructuredListUtilities isNotificationListBaseComponentDelegateMethod:a3])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v5 = objc_opt_respondsToSelector();
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

- (void)forwardInvocation:(id)a3
{
  v4 = a3;
  if (+[NCNotificationStructuredListUtilities isNotificationListBaseComponentDelegateMethod:](NCNotificationStructuredListUtilities, "isNotificationListBaseComponentDelegateMethod:", [v4 selector]))
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      [v4 invokeWithTarget:WeakRetained];
    }

    else if ([WeakRetained conformsToProtocol:&unk_283021370] && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v6 = [WeakRetained delegate];
      [v4 invokeWithTarget:v6];
    }

    else
    {
      v7.receiver = self;
      v7.super_class = NCNotificationListSupplementaryViewsSection;
      [(NCNotificationListSupplementaryViewsSection *)&v7 forwardInvocation:v4];
    }
  }
}

- (void)notificationListBaseComponentDidRemoveAll:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *MEMORY[0x277D77DD0];
  if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [(NCNotificationListSupplementaryViewsSection *)self _logDescription];
    v8 = [v4 groupingIdentifier];
    v9 = [v8 un_logDigest];
    v11 = 138543618;
    v12 = v7;
    v13 = 2114;
    v14 = v9;
    _os_log_impl(&dword_21E77E000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ supplementary view groups %{public}@ did remove all cells; cleanup up the group", &v11, 0x16u);
  }

  [(NCNotificationListSupplementaryViewsSection *)self _removeNotificationViewsGroup:v4 animated:1];
  v10 = [(NCNotificationListSupplementaryViewsSection *)self delegate];
  [v10 notificationListBaseComponentDidRemoveAll:self];
}

- (void)_removeNotificationViewsGroup:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v9 = a3;
  v6 = [(NSMutableArray *)self->_orderedSupplementaryViewsGroups indexOfObject:?];
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = v6;
    [(NSMutableArray *)self->_orderedSupplementaryViewsGroups removeObjectAtIndex:v6];
    v8 = [(NCNotificationListSupplementaryViewsSection *)self listView];
    [v8 removeViewAtIndex:v7 animated:v4 isHorizontallyDisplaced:{objc_msgSend(v9, "isClearingAllNotificationRequestsForCellHorizontalSwipe")}];
  }
}

+ (NSSet)presentableTypes
{
  v2 = MEMORY[0x277CBEB98];
  v3 = objc_opt_class();

  return [v2 setWithObject:v3];
}

- (void)clearAll
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v4 = [(NCNotificationListSupplementaryViewsSection *)self orderedSupplementaryViewsGroups];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __55__NCNotificationListSupplementaryViewsSection_clearAll__block_invoke;
  v12[3] = &unk_278373150;
  v5 = v3;
  v13 = v5;
  [v4 enumerateObjectsUsingBlock:v12];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained notificationListBaseComponent:self requestsClearingPresentables:v5];
  }

  v7 = [(NCNotificationListSupplementaryViewsSection *)self orderedSupplementaryViewsGroups];
  v8 = [v7 count];

  v9 = v8 - 1;
  if (v8 - 1 >= 0)
  {
    do
    {
      v10 = [(NCNotificationListSupplementaryViewsSection *)self listView];
      [v10 removeViewAtIndex:v9 animated:1];

      v11 = [(NCNotificationListSupplementaryViewsSection *)self orderedSupplementaryViewsGroups];
      [v11 removeObjectAtIndex:v9];

      --v9;
    }

    while (v9 != -1);
  }
}

void __55__NCNotificationListSupplementaryViewsSection_clearAll__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 hostingViewControllers];
  [v2 addObjectsFromArray:v3];
}

- (void)notificationListBaseComponent:(id)a3 willRemoveView:(id)a4
{
  v6 = a4;
  v5 = [(NCNotificationListSupplementaryViewsSection *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 notificationListBaseComponent:self willRemoveView:v6];
  }
}

- (void)notificationListBaseComponent:(id)a3 didRemoveView:(id)a4
{
  v6 = a4;
  v5 = [(NCNotificationListSupplementaryViewsSection *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 notificationListBaseComponent:self didRemoveView:v6];
  }
}

- (void)notificationListPresentableGroup:(id)a3 requestsScrollToTopOfCollectionWithCompletion:(id)a4
{
  v13 = a4;
  v6 = a3;
  v7 = [(NCNotificationListSupplementaryViewsSection *)self orderedSupplementaryViewsGroups];
  v8 = [v7 indexOfObject:v6];

  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (v13)
    {
      v13[2]();
    }
  }

  else
  {
    v9 = [(NCNotificationListSupplementaryViewsSection *)self listView];
    [v9 layoutOffsetForViewAtIndex:v8];
    v11 = v10;

    v12 = [(NCNotificationListSupplementaryViewsSection *)self delegate];
    [v12 notificationListBaseComponent:self requestsScrollingToContentOffset:v13 withCompletion:v11];
  }
}

- (void)notificationListSupplementaryViewsGroup:(id)a3 cancelTouches:(BOOL)a4 onHostedViewController:(id)a5
{
  v5 = a4;
  v8 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_supplementaryContainerDelegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained supplementaryViewsContainer:self requestsCancelTouches:v5 onSupplementaryViewController:v8];
  }
}

- (void)notificationListSupplementaryViewsGroup:(id)a3 didSetGrouped:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  v6 = [(NCNotificationListSupplementaryViewsSection *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v6 notificationListBaseComponent:v7 didSetGrouped:v4];
  }
}

- (void)notificationListSupplementaryViewsGroupDidChangePreferredContentSize:(id)a3
{
  v4 = [(NCNotificationListSupplementaryViewsSection *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 supplementaryViewSectionDidChangeHeight:self];
  }
}

- (BOOL)isEligibleToPerformGroupAnimationForNotificationListBaseComponent:(id)a3 toGrouped:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(NCNotificationListSupplementaryViewsSection *)self delegate];
  if (v7 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v8 = [v7 isEligibleToPerformGroupAnimationForNotificationListBaseComponent:v6 toGrouped:v4];
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (void)_updatePositionOfGroupAtIndex:(unint64_t)a3
{
  if (a3 != 0x7FFFFFFFFFFFFFFFLL && [(NSMutableArray *)self->_orderedSupplementaryViewsGroups count]> a3)
  {
    v10 = [(NSMutableArray *)self->_orderedSupplementaryViewsGroups objectAtIndex:a3];
    v5 = [v10 groupingIdentifier];
    v6 = [(NCNotificationListSupplementaryViewsSection *)self _sortedIndexForGroupingIdentifier:v5];
    v7 = (__PAIR128__(v6, a3) - v6) >> 64;
    if (v7 != a3)
    {
      [(NSMutableArray *)self->_orderedSupplementaryViewsGroups removeObjectAtIndex:a3];
      [(NSMutableArray *)self->_orderedSupplementaryViewsGroups insertObject:v10 atIndex:v7];
      v8 = [(NCNotificationListSupplementaryViewsSection *)self listView];
      [v8 removeViewAtIndex:a3 animated:0];

      v9 = [(NCNotificationListSupplementaryViewsSection *)self listView];
      [v9 insertViewAtIndex:v7 animated:1];
    }
  }
}

- (unint64_t)_indexOfExistingSupplementaryViewsGroupForSupplementaryViewController:(id)a3
{
  v4 = a3;
  orderedSupplementaryViewsGroups = self->_orderedSupplementaryViewsGroups;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __117__NCNotificationListSupplementaryViewsSection__indexOfExistingSupplementaryViewsGroupForSupplementaryViewController___block_invoke;
  v9[3] = &unk_2783731C8;
  v10 = v4;
  v6 = v4;
  v7 = [(NSMutableArray *)orderedSupplementaryViewsGroups indexOfObjectPassingTest:v9];

  return v7;
}

- (unint64_t)_indexOfExistingSupplementaryViewsGroupForGroupingIdentifier:(id)a3
{
  v4 = a3;
  orderedSupplementaryViewsGroups = self->_orderedSupplementaryViewsGroups;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __108__NCNotificationListSupplementaryViewsSection__indexOfExistingSupplementaryViewsGroupForGroupingIdentifier___block_invoke;
  v9[3] = &unk_2783731C8;
  v10 = v4;
  v6 = v4;
  v7 = [(NSMutableArray *)orderedSupplementaryViewsGroups indexOfObjectPassingTest:v9];

  return v7;
}

uint64_t __108__NCNotificationListSupplementaryViewsSection__indexOfExistingSupplementaryViewsGroupForGroupingIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 groupingIdentifier];
  v4 = [v2 isEqualToString:v3];

  return v4;
}

- (unint64_t)_sortedIndexForGroupingIdentifier:(id)a3
{
  v4 = a3;
  if (self->_groupSortComparator && [(NSMutableArray *)self->_orderedSupplementaryViewsGroups count])
  {
    v5 = 0;
    do
    {
      v6 = [(NSMutableArray *)self->_orderedSupplementaryViewsGroups objectAtIndex:v5];
      v7 = [v6 groupingIdentifier];

      v8 = (*(self->_groupSortComparator + 2))();
      if (v8 == 1)
      {
        break;
      }

      ++v5;
    }

    while (v5 < [(NSMutableArray *)self->_orderedSupplementaryViewsGroups count]);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_logDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"%@ [%@]", v5, self->_identifier];

  return v6;
}

- (NCNotificationListSupplementaryViewsContainingDelegate)supplementaryContainerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_supplementaryContainerDelegate);

  return WeakRetained;
}

@end