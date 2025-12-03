@interface NCNotificationListSupplementaryViewsSection
+ (NSSet)presentableTypes;
- (BOOL)isEligibleToPerformGroupAnimationForNotificationListBaseComponent:(id)component toGrouped:(BOOL)grouped;
- (BOOL)respondsToSelector:(SEL)selector;
- (CGSize)allowedSupplementaryViewSize;
- (NCAnimator)animator;
- (NCNotificationListBaseComponentDelegate)delegate;
- (NCNotificationListSupplementaryViewsContainingDelegate)supplementaryContainerDelegate;
- (NCNotificationListSupplementaryViewsSection)initWithPosition:(unint64_t)position;
- (NCNotificationListViewProtocol)listView;
- (NSArray)groupingIdentifiers;
- (NSArray)supplementaryViewControllers;
- (NSDictionary)supplementaryViewControllersByGroupingIdentifiers;
- (double)collapsedHeight;
- (double)expandedHeight;
- (double)expandedHeightIgnoringNotificationStacks;
- (double)notificationListView:(id)view heightForItemAtIndex:(unint64_t)index withWidth:(double)width inDisplayListAsStackMode:(BOOL)mode ignoreExpandedGroupStack:(BOOL)stack;
- (id)_logDescription;
- (id)hostingPlatterViewForSupplementaryViewController:(id)controller;
- (id)notificationListView:(id)view viewForItemAtIndex:(unint64_t)index;
- (unint64_t)_indexOfExistingSupplementaryViewsGroupForGroupingIdentifier:(id)identifier;
- (unint64_t)_indexOfExistingSupplementaryViewsGroupForSupplementaryViewController:(id)controller;
- (unint64_t)_sortedIndexForGroupingIdentifier:(id)identifier;
- (unint64_t)supplementaryViewControllersCount;
- (void)_removeNotificationViewsGroup:(id)group animated:(BOOL)animated;
- (void)_updatePositionOfGroupAtIndex:(unint64_t)index;
- (void)adjustForLegibilitySettingsChange:(id)change;
- (void)cancelTouchesOnHostedViews:(BOOL)views;
- (void)clearAll;
- (void)forwardInvocation:(id)invocation;
- (void)insertSupplementaryViewController:(id)controller withConfiguration:(id)configuration;
- (void)notificationListBaseComponent:(id)component didRemoveView:(id)view;
- (void)notificationListBaseComponent:(id)component willRemoveView:(id)view;
- (void)notificationListBaseComponentDidRemoveAll:(id)all;
- (void)notificationListPresentableGroup:(id)group requestsScrollToTopOfCollectionWithCompletion:(id)completion;
- (void)notificationListSupplementaryViewsGroup:(id)group cancelTouches:(BOOL)touches onHostedViewController:(id)controller;
- (void)notificationListSupplementaryViewsGroup:(id)group didSetGrouped:(BOOL)grouped;
- (void)notificationListSupplementaryViewsGroupDidChangePreferredContentSize:(id)size;
- (void)presentViewControllerModally:(id)modally fromSupplementaryViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (void)recycleView:(id)view;
- (void)removeSupplementaryViewController:(id)controller;
- (void)setViewControllerSortComparator:(id)comparator;
- (void)updatePositionIfNeededForSupplementaryViewController:(id)controller;
- (void)updateSupplementaryViewController:(id)controller withConfiguration:(id)configuration;
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
  delegate = [(NCNotificationListSupplementaryViewsSection *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    animator = [delegate animator];
  }

  else
  {
    v5 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_FAULT))
    {
      [(NCNotificationListSupplementaryViewsGroup *)delegate animator];
    }

    animator = NCDefaultAnimator();
  }

  v6 = animator;

  return v6;
}

- (NCNotificationListBaseComponentDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (NCNotificationListSupplementaryViewsSection)initWithPosition:(unint64_t)position
{
  v9.receiver = self;
  v9.super_class = NCNotificationListSupplementaryViewsSection;
  v4 = [(NCNotificationListSupplementaryViewsSection *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_position = position;
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

- (void)cancelTouchesOnHostedViews:(BOOL)views
{
  viewsCopy = views;
  WeakRetained = objc_loadWeakRetained(&self->_supplementaryContainerDelegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained supplementaryViewsContainer:self requestsCancelTouchesOnAllSupplementaryViewControllers:viewsCopy];
  }
}

- (double)expandedHeightIgnoringNotificationStacks
{
  listView = [(NCNotificationListSupplementaryViewsSection *)self listView];
  [listView calculateSizeForGrouped:0 ignoreFeaturedLeadingView:1 ignoreExpandedGroupStack:1 inDisplayListAsStackMode:0 dynamicGroupedOverlapHeightMultiple:0];
  v4 = v3;

  return v4;
}

- (double)expandedHeight
{
  listView = [(NCNotificationListSupplementaryViewsSection *)self listView];
  [listView calculateSizeForGrouped:0 ignoreFeaturedLeadingView:0 ignoreExpandedGroupStack:0 inDisplayListAsStackMode:0 dynamicGroupedOverlapHeightMultiple:0];
  v4 = v3;

  return v4;
}

- (double)collapsedHeight
{
  listView = [(NCNotificationListSupplementaryViewsSection *)self listView];
  [listView calculateSizeForGrouped:1 ignoreFeaturedLeadingView:0 ignoreExpandedGroupStack:1 inDisplayListAsStackMode:0 dynamicGroupedOverlapHeightMultiple:0];
  v4 = v3;

  return v4;
}

- (void)adjustForLegibilitySettingsChange:(id)change
{
  changeCopy = change;
  orderedSupplementaryViewsGroups = self->_orderedSupplementaryViewsGroups;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __81__NCNotificationListSupplementaryViewsSection_adjustForLegibilitySettingsChange___block_invoke;
  v7[3] = &unk_278373150;
  v8 = changeCopy;
  v6 = changeCopy;
  [(NSMutableArray *)orderedSupplementaryViewsGroups enumerateObjectsUsingBlock:v7];
}

- (void)setViewControllerSortComparator:(id)comparator
{
  v4 = _Block_copy(comparator);
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

- (void)insertSupplementaryViewController:(id)controller withConfiguration:(id)configuration
{
  v25 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  configurationCopy = configuration;
  v8 = *MEMORY[0x277D77DD0];
  if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    _logDescription = [(NCNotificationListSupplementaryViewsSection *)self _logDescription];
    v19 = 138543874;
    v20 = _logDescription;
    v21 = 2114;
    v22 = configurationCopy;
    v23 = 2114;
    v24 = controllerCopy;
    _os_log_impl(&dword_21E77E000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ inserting supplementary view controller with configuration = %{public}@ [viewController=%{public}@]", &v19, 0x20u);
  }

  groupingIdentifier = [configurationCopy groupingIdentifier];
  v12 = [(NCNotificationListSupplementaryViewsSection *)self _indexOfExistingSupplementaryViewsGroupForGroupingIdentifier:groupingIdentifier];
  if (v12 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v13 = objc_alloc_init(NCNotificationListSupplementaryViewsGroup);
    [(NCNotificationListPresentableGroup *)v13 setNotificationListCache:self->_notificationListCache];
    [(NCNotificationListSupplementaryViewsGroup *)v13 setSectionIdentifier:self->_identifier];
    [(NCNotificationListPresentableGroup *)v13 setDelegate:self];
    [(NCNotificationListSupplementaryViewsGroup *)v13 setGroupingIdentifier:groupingIdentifier];
    groupName = [configurationCopy groupName];
    [(NCNotificationListSupplementaryViewsGroup *)v13 setGroupName:groupName];

    [(NCNotificationListSupplementaryViewsGroup *)v13 setViewControllerSortComparator:self->_viewControllerSortComparator];
    v15 = [(NCNotificationListSupplementaryViewsSection *)self _sortedIndexForGroupingIdentifier:groupingIdentifier];
    [(NSMutableArray *)self->_orderedSupplementaryViewsGroups insertObject:v13 atIndex:v15];
    listView = [(NCNotificationListSupplementaryViewsSection *)self listView];
    [listView insertViewAtIndex:v15 animated:1];
  }

  else
  {
    v17 = v12;
    v13 = [(NSMutableArray *)self->_orderedSupplementaryViewsGroups objectAtIndex:v12];
    [(NCNotificationListSupplementaryViewsSection *)self _updatePositionOfGroupAtIndex:v17];
  }

  [(NCNotificationListSupplementaryViewsGroup *)v13 insertSupplementaryViewController:controllerCopy withConfiguration:configurationCopy];
  delegate = [(NCNotificationListSupplementaryViewsSection *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate supplementaryViewSectionDidChangeContent:self];
  }
}

- (void)updateSupplementaryViewController:(id)controller withConfiguration:(id)configuration
{
  controllerCopy = controller;
  configurationCopy = configuration;
  v7 = [(NCNotificationListSupplementaryViewsSection *)self _indexOfExistingSupplementaryViewsGroupForSupplementaryViewController:controllerCopy];
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = v7;
    v9 = [(NSMutableArray *)self->_orderedSupplementaryViewsGroups objectAtIndex:v7];
    [v9 updateSupplementaryViewController:controllerCopy withConfiguration:configurationCopy];
    [(NCNotificationListSupplementaryViewsSection *)self _updatePositionOfGroupAtIndex:v8];
  }

  delegate = [(NCNotificationListSupplementaryViewsSection *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate supplementaryViewSectionDidChangeContent:self];
  }
}

- (void)updatePositionIfNeededForSupplementaryViewController:(id)controller
{
  controllerCopy = controller;
  v4 = [(NCNotificationListSupplementaryViewsSection *)self _indexOfExistingSupplementaryViewsGroupForSupplementaryViewController:?];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = v4;
    v6 = [(NSMutableArray *)self->_orderedSupplementaryViewsGroups objectAtIndex:v4];
    [v6 updatePositionIfNeededForSupplementaryViewController:controllerCopy];
    [(NCNotificationListSupplementaryViewsSection *)self _updatePositionOfGroupAtIndex:v5];
  }
}

- (void)removeSupplementaryViewController:(id)controller
{
  v17 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  v5 = *MEMORY[0x277D77DD0];
  if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    _logDescription = [(NCNotificationListSupplementaryViewsSection *)self _logDescription];
    v13 = 138543618;
    v14 = _logDescription;
    v15 = 2114;
    v16 = controllerCopy;
    _os_log_impl(&dword_21E77E000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ removing supplementary view controller [viewController=%{public}@]", &v13, 0x16u);
  }

  v8 = [(NCNotificationListSupplementaryViewsSection *)self _indexOfExistingSupplementaryViewsGroupForSupplementaryViewController:controllerCopy];
  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = v8;
    v10 = [(NSMutableArray *)self->_orderedSupplementaryViewsGroups objectAtIndex:v8];
    [v10 removeSupplementaryViewController:controllerCopy];
    if (![v10 count])
    {
      [(NSMutableArray *)self->_orderedSupplementaryViewsGroups removeObjectAtIndex:v9];
      listView = [(NCNotificationListSupplementaryViewsSection *)self listView];
      [listView removeViewAtIndex:v9 animated:1];
    }
  }

  delegate = [(NCNotificationListSupplementaryViewsSection *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate supplementaryViewSectionDidChangeContent:self];
  }
}

- (void)presentViewControllerModally:(id)modally fromSupplementaryViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  modallyCopy = modally;
  controllerCopy = controller;
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v13 = [[NCModalNavigationController alloc] initWithRootViewController:modallyCopy];
    [WeakRetained notificationListBaseComponent:self requestsModalPresentationOfNavigationController:v13 sender:controllerCopy animated:animatedCopy completion:completionCopy];
  }
}

- (id)hostingPlatterViewForSupplementaryViewController:(id)controller
{
  controllerCopy = controller;
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
  v6 = controllerCopy;
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
  listView = [(NCNotificationListSupplementaryViewsSection *)self listView];
  [listView frame];
  Width = CGRectGetWidth(v7);

  v4 = 0.0;
  v5 = Width;
  result.height = v4;
  result.width = v5;
  return result;
}

- (double)notificationListView:(id)view heightForItemAtIndex:(unint64_t)index withWidth:(double)width inDisplayListAsStackMode:(BOOL)mode ignoreExpandedGroupStack:(BOOL)stack
{
  stackCopy = stack;
  modeCopy = mode;
  if ([(NSMutableArray *)self->_orderedSupplementaryViewsGroups count:view]<= index)
  {
    return 0.0;
  }

  v11 = [(NSMutableArray *)self->_orderedSupplementaryViewsGroups objectAtIndex:index];
  listView = [v11 listView];
  isGrouped = [listView isGrouped];

  v14 = 1.0;
  if (modeCopy)
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

  listView2 = [v11 listView];
  *&v16 = v14;
  v17 = [MEMORY[0x277CCABB0] numberWithFloat:v16];
  [listView2 calculateSizeForGrouped:isGrouped | stackCopy ignoreFeaturedLeadingView:0 ignoreExpandedGroupStack:stackCopy inDisplayListAsStackMode:0 dynamicGroupedOverlapHeightMultiple:v17];
  v19 = v18;

  return v19;
}

- (id)notificationListView:(id)view viewForItemAtIndex:(unint64_t)index
{
  if ([(NSMutableArray *)self->_orderedSupplementaryViewsGroups count]<= index)
  {
    listView = 0;
  }

  else
  {
    v6 = [(NSMutableArray *)self->_orderedSupplementaryViewsGroups objectAtIndex:index];
    listView = [v6 listView];
  }

  return listView;
}

- (void)recycleView:(id)view
{
  viewCopy = view;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [viewCopy recycleVisibleViews];
  }
}

- (BOOL)respondsToSelector:(SEL)selector
{
  v8.receiver = self;
  v8.super_class = NCNotificationListSupplementaryViewsSection;
  if ([(NCNotificationListSupplementaryViewsSection *)&v8 respondsToSelector:?])
  {
    v5 = 1;
  }

  else if ([NCNotificationStructuredListUtilities isNotificationListBaseComponentDelegateMethod:selector])
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

- (void)forwardInvocation:(id)invocation
{
  invocationCopy = invocation;
  if (+[NCNotificationStructuredListUtilities isNotificationListBaseComponentDelegateMethod:](NCNotificationStructuredListUtilities, "isNotificationListBaseComponentDelegateMethod:", [invocationCopy selector]))
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      [invocationCopy invokeWithTarget:WeakRetained];
    }

    else if ([WeakRetained conformsToProtocol:&unk_283021370] && (objc_opt_respondsToSelector() & 1) != 0)
    {
      delegate = [WeakRetained delegate];
      [invocationCopy invokeWithTarget:delegate];
    }

    else
    {
      v7.receiver = self;
      v7.super_class = NCNotificationListSupplementaryViewsSection;
      [(NCNotificationListSupplementaryViewsSection *)&v7 forwardInvocation:invocationCopy];
    }
  }
}

- (void)notificationListBaseComponentDidRemoveAll:(id)all
{
  v15 = *MEMORY[0x277D85DE8];
  allCopy = all;
  v5 = *MEMORY[0x277D77DD0];
  if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    _logDescription = [(NCNotificationListSupplementaryViewsSection *)self _logDescription];
    groupingIdentifier = [allCopy groupingIdentifier];
    un_logDigest = [groupingIdentifier un_logDigest];
    v11 = 138543618;
    v12 = _logDescription;
    v13 = 2114;
    v14 = un_logDigest;
    _os_log_impl(&dword_21E77E000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ supplementary view groups %{public}@ did remove all cells; cleanup up the group", &v11, 0x16u);
  }

  [(NCNotificationListSupplementaryViewsSection *)self _removeNotificationViewsGroup:allCopy animated:1];
  delegate = [(NCNotificationListSupplementaryViewsSection *)self delegate];
  [delegate notificationListBaseComponentDidRemoveAll:self];
}

- (void)_removeNotificationViewsGroup:(id)group animated:(BOOL)animated
{
  animatedCopy = animated;
  groupCopy = group;
  v6 = [(NSMutableArray *)self->_orderedSupplementaryViewsGroups indexOfObject:?];
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = v6;
    [(NSMutableArray *)self->_orderedSupplementaryViewsGroups removeObjectAtIndex:v6];
    listView = [(NCNotificationListSupplementaryViewsSection *)self listView];
    [listView removeViewAtIndex:v7 animated:animatedCopy isHorizontallyDisplaced:{objc_msgSend(groupCopy, "isClearingAllNotificationRequestsForCellHorizontalSwipe")}];
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
  orderedSupplementaryViewsGroups = [(NCNotificationListSupplementaryViewsSection *)self orderedSupplementaryViewsGroups];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __55__NCNotificationListSupplementaryViewsSection_clearAll__block_invoke;
  v12[3] = &unk_278373150;
  v5 = v3;
  v13 = v5;
  [orderedSupplementaryViewsGroups enumerateObjectsUsingBlock:v12];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained notificationListBaseComponent:self requestsClearingPresentables:v5];
  }

  orderedSupplementaryViewsGroups2 = [(NCNotificationListSupplementaryViewsSection *)self orderedSupplementaryViewsGroups];
  v8 = [orderedSupplementaryViewsGroups2 count];

  v9 = v8 - 1;
  if (v8 - 1 >= 0)
  {
    do
    {
      listView = [(NCNotificationListSupplementaryViewsSection *)self listView];
      [listView removeViewAtIndex:v9 animated:1];

      orderedSupplementaryViewsGroups3 = [(NCNotificationListSupplementaryViewsSection *)self orderedSupplementaryViewsGroups];
      [orderedSupplementaryViewsGroups3 removeObjectAtIndex:v9];

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

- (void)notificationListBaseComponent:(id)component willRemoveView:(id)view
{
  viewCopy = view;
  delegate = [(NCNotificationListSupplementaryViewsSection *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate notificationListBaseComponent:self willRemoveView:viewCopy];
  }
}

- (void)notificationListBaseComponent:(id)component didRemoveView:(id)view
{
  viewCopy = view;
  delegate = [(NCNotificationListSupplementaryViewsSection *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate notificationListBaseComponent:self didRemoveView:viewCopy];
  }
}

- (void)notificationListPresentableGroup:(id)group requestsScrollToTopOfCollectionWithCompletion:(id)completion
{
  completionCopy = completion;
  groupCopy = group;
  orderedSupplementaryViewsGroups = [(NCNotificationListSupplementaryViewsSection *)self orderedSupplementaryViewsGroups];
  v8 = [orderedSupplementaryViewsGroups indexOfObject:groupCopy];

  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (completionCopy)
    {
      completionCopy[2]();
    }
  }

  else
  {
    listView = [(NCNotificationListSupplementaryViewsSection *)self listView];
    [listView layoutOffsetForViewAtIndex:v8];
    v11 = v10;

    delegate = [(NCNotificationListSupplementaryViewsSection *)self delegate];
    [delegate notificationListBaseComponent:self requestsScrollingToContentOffset:completionCopy withCompletion:v11];
  }
}

- (void)notificationListSupplementaryViewsGroup:(id)group cancelTouches:(BOOL)touches onHostedViewController:(id)controller
{
  touchesCopy = touches;
  controllerCopy = controller;
  WeakRetained = objc_loadWeakRetained(&self->_supplementaryContainerDelegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained supplementaryViewsContainer:self requestsCancelTouches:touchesCopy onSupplementaryViewController:controllerCopy];
  }
}

- (void)notificationListSupplementaryViewsGroup:(id)group didSetGrouped:(BOOL)grouped
{
  groupedCopy = grouped;
  groupCopy = group;
  delegate = [(NCNotificationListSupplementaryViewsSection *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate notificationListBaseComponent:groupCopy didSetGrouped:groupedCopy];
  }
}

- (void)notificationListSupplementaryViewsGroupDidChangePreferredContentSize:(id)size
{
  delegate = [(NCNotificationListSupplementaryViewsSection *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate supplementaryViewSectionDidChangeHeight:self];
  }
}

- (BOOL)isEligibleToPerformGroupAnimationForNotificationListBaseComponent:(id)component toGrouped:(BOOL)grouped
{
  groupedCopy = grouped;
  componentCopy = component;
  delegate = [(NCNotificationListSupplementaryViewsSection *)self delegate];
  if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v8 = [delegate isEligibleToPerformGroupAnimationForNotificationListBaseComponent:componentCopy toGrouped:groupedCopy];
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (void)_updatePositionOfGroupAtIndex:(unint64_t)index
{
  if (index != 0x7FFFFFFFFFFFFFFFLL && [(NSMutableArray *)self->_orderedSupplementaryViewsGroups count]> index)
  {
    v10 = [(NSMutableArray *)self->_orderedSupplementaryViewsGroups objectAtIndex:index];
    groupingIdentifier = [v10 groupingIdentifier];
    v6 = [(NCNotificationListSupplementaryViewsSection *)self _sortedIndexForGroupingIdentifier:groupingIdentifier];
    v7 = (__PAIR128__(v6, index) - v6) >> 64;
    if (v7 != index)
    {
      [(NSMutableArray *)self->_orderedSupplementaryViewsGroups removeObjectAtIndex:index];
      [(NSMutableArray *)self->_orderedSupplementaryViewsGroups insertObject:v10 atIndex:v7];
      listView = [(NCNotificationListSupplementaryViewsSection *)self listView];
      [listView removeViewAtIndex:index animated:0];

      listView2 = [(NCNotificationListSupplementaryViewsSection *)self listView];
      [listView2 insertViewAtIndex:v7 animated:1];
    }
  }
}

- (unint64_t)_indexOfExistingSupplementaryViewsGroupForSupplementaryViewController:(id)controller
{
  controllerCopy = controller;
  orderedSupplementaryViewsGroups = self->_orderedSupplementaryViewsGroups;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __117__NCNotificationListSupplementaryViewsSection__indexOfExistingSupplementaryViewsGroupForSupplementaryViewController___block_invoke;
  v9[3] = &unk_2783731C8;
  v10 = controllerCopy;
  v6 = controllerCopy;
  v7 = [(NSMutableArray *)orderedSupplementaryViewsGroups indexOfObjectPassingTest:v9];

  return v7;
}

- (unint64_t)_indexOfExistingSupplementaryViewsGroupForGroupingIdentifier:(id)identifier
{
  identifierCopy = identifier;
  orderedSupplementaryViewsGroups = self->_orderedSupplementaryViewsGroups;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __108__NCNotificationListSupplementaryViewsSection__indexOfExistingSupplementaryViewsGroupForGroupingIdentifier___block_invoke;
  v9[3] = &unk_2783731C8;
  v10 = identifierCopy;
  v6 = identifierCopy;
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

- (unint64_t)_sortedIndexForGroupingIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (self->_groupSortComparator && [(NSMutableArray *)self->_orderedSupplementaryViewsGroups count])
  {
    v5 = 0;
    do
    {
      v6 = [(NSMutableArray *)self->_orderedSupplementaryViewsGroups objectAtIndex:v5];
      groupingIdentifier = [v6 groupingIdentifier];

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