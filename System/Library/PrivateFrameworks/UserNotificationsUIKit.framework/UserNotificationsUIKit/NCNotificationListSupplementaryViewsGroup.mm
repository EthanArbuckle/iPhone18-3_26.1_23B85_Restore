@interface NCNotificationListSupplementaryViewsGroup
+ (id)presentableTypes;
- (BOOL)isEligibleToPerformGroupAnimationForNotificationList:(id)list toGrouped:(BOOL)grouped;
- (BOOL)shouldContinuePresentingActionButtonsForNotificationListCell:(id)cell;
- (BOOL)shouldShowDefaultActionForNotificationListCell:(id)cell;
- (BOOL)shouldShowSupplementaryActionsForNotificationListCell:(id)cell;
- (NCNotificationListSupplementaryViewsGroup)init;
- (NSArray)hostingViewControllers;
- (NSArray)supplementaryViewControllers;
- (NSString)logDescription;
- (double)notificationListView:(id)view heightForItemAtIndex:(unint64_t)index withWidth:(double)width inDisplayListAsStackMode:(BOOL)mode ignoreExpandedGroupStack:(BOOL)stack;
- (id)_cellAtIndex:(unint64_t)index;
- (id)_clearActionForCell:(id)cell;
- (id)_configurationAtIndex:(unint64_t)index;
- (id)_configurationForCell:(id)cell;
- (id)_hostingViewControllerAtIndex:(unint64_t)index;
- (id)_supplementaryViewControllerAtIndex:(unint64_t)index;
- (id)animator;
- (id)clearAllText;
- (id)defaultActionForNotificationListCell:(id)cell;
- (id)hostingPlatterViewForSupplementaryViewController:(id)controller;
- (id)notificationListView:(id)view viewForItemAtIndex:(unint64_t)index;
- (id)purposeWithSensitiveTextHashed:(BOOL)hashed;
- (id)supplementaryActionsForNotificationListCell:(id)cell;
- (unint64_t)_existingIndexMatchingSupplementaryViewController:(id)controller;
- (unint64_t)_indexOfHostingViewController:(id)controller;
- (unint64_t)_sortedIndexForViewController:(id)controller;
- (void)_clearCell:(id)cell;
- (void)_matchStyleOfCell:(id)cell toHostingViewController:(id)controller;
- (void)_removeSupplementaryViewControllerAtIndex:(unint64_t)index;
- (void)_setGrouped:(BOOL)grouped;
- (void)_updateHostingViewController:(id)controller cell:(id)cell withConfiguration:(id)configuration;
- (void)_updateSupplementaryViewController:(id)controller withConfiguration:(id)configuration existingIndex:(unint64_t)index proposedIndex:(unint64_t)proposedIndex;
- (void)_updateUserInteraction;
- (void)animator;
- (void)clearAll;
- (void)insertSupplementaryViewController:(id)controller withConfiguration:(id)configuration;
- (void)notificationListCell:(id)cell didBeginHidingActionsForSwipeInteraction:(id)interaction;
- (void)notificationListCell:(id)cell didBeginRevealingActionsForSwipeInteraction:(id)interaction;
- (void)notificationListView:(id)view didRemoveView:(id)removeView;
- (void)notificationListView:(id)view willRemoveView:(id)removeView;
- (void)recycleView:(id)view;
- (void)removeSupplementaryViewController:(id)controller;
- (void)supplementaryHostingViewControllerPreferredContentSizeChanged:(id)changed;
- (void)supplementaryHostingViewControllerWasTapped:(id)tapped;
- (void)toggleGroupedState;
- (void)updatePositionIfNeededForSupplementaryViewController:(id)controller;
- (void)updateSupplementaryViewController:(id)controller withConfiguration:(id)configuration;
@end

@implementation NCNotificationListSupplementaryViewsGroup

- (NSArray)supplementaryViewControllers
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if ([(NCNotificationListSupplementaryViewsGroup *)self count])
  {
    v4 = 0;
    do
    {
      v5 = [(NCNotificationListSupplementaryViewsGroup *)self _supplementaryViewControllerAtIndex:v4];
      [v3 addObject:v5];

      ++v4;
    }

    while (v4 < [(NCNotificationListSupplementaryViewsGroup *)self count]);
  }

  return v3;
}

- (id)animator
{
  delegate = [(NCNotificationListPresentableGroup *)self delegate];
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

- (NCNotificationListSupplementaryViewsGroup)init
{
  v6.receiver = self;
  v6.super_class = NCNotificationListSupplementaryViewsGroup;
  v2 = [(NCNotificationListSupplementaryViewsGroup *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    orderedCells = v2->_orderedCells;
    v2->_orderedCells = v3;
  }

  return v2;
}

- (void)insertSupplementaryViewController:(id)controller withConfiguration:(id)configuration
{
  v31 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  configurationCopy = configuration;
  v8 = [(NCNotificationListSupplementaryViewsGroup *)self _existingIndexMatchingSupplementaryViewController:controllerCopy];
  v9 = [(NCNotificationListSupplementaryViewsGroup *)self _sortedIndexForViewController:controllerCopy];
  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = 0;
  }

  else
  {
    v10 = v9;
  }

  v11 = *MEMORY[0x277D77DD0];
  v12 = os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT);
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (v12)
    {
      v13 = v11;
      logDescription = [(NCNotificationListSupplementaryViewsGroup *)self logDescription];
      v23 = 138543874;
      v24 = logDescription;
      v25 = 2114;
      v26 = controllerCopy;
      v27 = 2048;
      v28 = v10;
      _os_log_impl(&dword_21E77E000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ inserting new supplementary view view controller [%{public}@] at index %lu", &v23, 0x20u);
    }

    delegate = [(NCNotificationListPresentableGroup *)self delegate];
    v16 = [[NCNotificationListSupplementaryHostingViewController alloc] initWithHostedViewController:controllerCopy sectionIdentifier:self->_sectionIdentifier];
    [(NCNotificationListSupplementaryHostingViewController *)v16 setDelegate:self];
    [(NCNotificationListSupplementaryHostingViewController *)v16 setConfiguration:configurationCopy animated:0];

    if (objc_opt_respondsToSelector())
    {
      v17 = [delegate backgroundGroupNameBaseForNotificationListBaseComponent:self];
      [(NCNotificationListSupplementaryHostingViewController *)v16 setMaterialGroupNameBase:v17];
    }

    if (objc_opt_respondsToSelector())
    {
      [delegate notificationListBaseComponent:self didAddViewController:v16];
    }

    v18 = [NCNotificationListCell alloc];
    v19 = [(NCNotificationListCell *)v18 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    [(NCNotificationListCell *)v19 setActionProvider:self];
    [(NCNotificationListCell *)v19 setActionHandler:self];
    [(NSMutableArray *)self->_orderedCells insertObject:v19 atIndex:v10];
    [(NCNotificationListCell *)v19 setContentViewController:v16];
    [(NCNotificationListSupplementaryViewsGroup *)self _matchStyleOfCell:v19 toHostingViewController:v16];
    listView = [(NCNotificationListPresentableGroup *)self listView];
    [listView insertViewAtIndex:v10 animated:1];

    [(NCNotificationListSupplementaryViewsGroup *)self _updateUserInteraction];
  }

  else
  {
    if (v12)
    {
      v21 = v11;
      logDescription2 = [(NCNotificationListSupplementaryViewsGroup *)self logDescription];
      v23 = 138544130;
      v24 = logDescription2;
      v25 = 2114;
      v26 = controllerCopy;
      v27 = 2048;
      v28 = v8;
      v29 = 2048;
      v30 = v10;
      _os_log_impl(&dword_21E77E000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@ updating new supplementary view view controller [%{public}@] with existingIndex %lu; newIndex %lu", &v23, 0x2Au);
    }

    [(NCNotificationListSupplementaryViewsGroup *)self _updateSupplementaryViewController:controllerCopy withConfiguration:configurationCopy existingIndex:v8 proposedIndex:v10];
    delegate = configurationCopy;
  }
}

- (void)updateSupplementaryViewController:(id)controller withConfiguration:(id)configuration
{
  controllerCopy = controller;
  configurationCopy = configuration;
  v7 = [(NCNotificationListSupplementaryViewsGroup *)self _existingIndexMatchingSupplementaryViewController:controllerCopy];
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(NCNotificationListSupplementaryViewsGroup *)self _updateSupplementaryViewController:controllerCopy withConfiguration:configurationCopy existingIndex:v7 proposedIndex:[(NCNotificationListSupplementaryViewsGroup *)self _sortedIndexForViewController:controllerCopy]];
  }
}

- (void)updatePositionIfNeededForSupplementaryViewController:(id)controller
{
  controllerCopy = controller;
  v4 = [(NCNotificationListSupplementaryViewsGroup *)self _existingIndexMatchingSupplementaryViewController:?];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(NCNotificationListSupplementaryViewsGroup *)self _updateSupplementaryViewController:controllerCopy withConfiguration:0 existingIndex:v4 proposedIndex:[(NCNotificationListSupplementaryViewsGroup *)self _sortedIndexForViewController:controllerCopy]];
  }
}

- (void)removeSupplementaryViewController:(id)controller
{
  v15 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  v5 = [(NCNotificationListSupplementaryViewsGroup *)self _existingIndexMatchingSupplementaryViewController:controllerCopy];
  v6 = *MEMORY[0x277D77DD0];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_ERROR))
    {
      [(NCNotificationListSupplementaryViewsGroup *)v6 removeSupplementaryViewController:controllerCopy];
    }
  }

  else if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    logDescription = [(NCNotificationListSupplementaryViewsGroup *)self logDescription];
    v9 = 138543874;
    v10 = logDescription;
    v11 = 2114;
    v12 = controllerCopy;
    v13 = 2048;
    v14 = v5;
    _os_log_impl(&dword_21E77E000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ removing supplementary view controller [%{public}@] at index %lu", &v9, 0x20u);
  }

  [(NCNotificationListSupplementaryViewsGroup *)self _removeSupplementaryViewControllerAtIndex:v5];
}

- (id)hostingPlatterViewForSupplementaryViewController:(id)controller
{
  v4 = [(NCNotificationListSupplementaryViewsGroup *)self _existingIndexMatchingSupplementaryViewController:controller];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    platterView = 0;
  }

  else
  {
    v6 = [(NCNotificationListSupplementaryViewsGroup *)self _hostingViewControllerAtIndex:v4];
    platterView = [v6 platterView];
  }

  return platterView;
}

- (NSArray)hostingViewControllers
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if ([(NCNotificationListSupplementaryViewsGroup *)self count])
  {
    v4 = 0;
    do
    {
      v5 = [(NCNotificationListSupplementaryViewsGroup *)self _hostingViewControllerAtIndex:v4];
      [v3 addObject:v5];

      ++v4;
    }

    while (v4 < [(NCNotificationListSupplementaryViewsGroup *)self count]);
  }

  return v3;
}

- (id)clearAllText
{
  v2 = NCUserNotificationsUIKitFrameworkBundle();
  v3 = [v2 localizedStringForKey:@"NOTIFICATION_LIST_CLEAR_ALL_SUPPLEMENTARY" value:&stru_282FE84F8 table:0];

  return v3;
}

- (id)purposeWithSensitiveTextHashed:(BOOL)hashed
{
  groupingIdentifier = self->_groupingIdentifier;
  if (groupingIdentifier)
  {
    if (hashed)
    {
      un_logDigest = [(NSString *)groupingIdentifier un_logDigest];
    }

    else
    {
      un_logDigest = groupingIdentifier;
    }

    v6 = un_logDigest;
  }

  else
  {
    v6 = @"<Nil>";
  }

  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Bundle:%@Group:%@", self->_sectionIdentifier, v6];;

  return v7;
}

- (void)toggleGroupedState
{
  listView = [(NCNotificationListPresentableGroup *)self listView];
  isGrouped = [listView isGrouped];

  listView2 = [(NCNotificationListPresentableGroup *)self listView];
  v6 = [listView2 count];

  if (v6 > 1 || !((v6 != 1) | isGrouped & 1))
  {
    [(NCNotificationListSupplementaryViewsGroup *)self _setGrouped:(isGrouped & 1) == 0];

    [(NCNotificationListSupplementaryViewsGroup *)self _updateUserInteraction];
  }
}

- (double)notificationListView:(id)view heightForItemAtIndex:(unint64_t)index withWidth:(double)width inDisplayListAsStackMode:(BOOL)mode ignoreExpandedGroupStack:(BOOL)stack
{
  v8 = [(NCNotificationListSupplementaryViewsGroup *)self _hostingViewControllerAtIndex:index];
  v9 = v8;
  if (v8)
  {
    view = [v8 view];
    [view sizeThatFits:{width, 1.79769313e308}];
    v12 = v11;
  }

  else
  {
    v12 = 0.0;
  }

  return v12;
}

- (id)notificationListView:(id)view viewForItemAtIndex:(unint64_t)index
{
  v6 = [(NCNotificationListSupplementaryViewsGroup *)self _hostingViewControllerAtIndex:index];
  [v6 setContentVisible:1];
  v7 = [(NCNotificationListSupplementaryViewsGroup *)self _cellAtIndex:index];

  return v7;
}

- (void)recycleView:(id)view
{
  viewCopy = view;
  v6.receiver = self;
  v6.super_class = NCNotificationListSupplementaryViewsGroup;
  [(NCNotificationListPresentableGroup *)&v6 recycleView:viewCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(NCNotificationListSupplementaryViewsGroup *)self _hostingViewControllerForCell:viewCopy];
    [v5 setContentVisible:0];
  }
}

- (BOOL)isEligibleToPerformGroupAnimationForNotificationList:(id)list toGrouped:(BOOL)grouped
{
  groupedCopy = grouped;
  delegate = [(NCNotificationListPresentableGroup *)self delegate];
  if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v7 = [delegate isEligibleToPerformGroupAnimationForNotificationListBaseComponent:self toGrouped:groupedCopy];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (void)notificationListView:(id)view willRemoveView:(id)removeView
{
  removeViewCopy = removeView;
  delegate = [(NCNotificationListPresentableGroup *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate notificationListBaseComponent:self willRemoveView:removeViewCopy];
  }
}

- (void)notificationListView:(id)view didRemoveView:(id)removeView
{
  removeViewCopy = removeView;
  delegate = [(NCNotificationListPresentableGroup *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate notificationListBaseComponent:self didRemoveView:removeViewCopy];
  }
}

- (BOOL)shouldContinuePresentingActionButtonsForNotificationListCell:(id)cell
{
  cellCopy = cell;
  v5 = [(NCNotificationListSupplementaryViewsGroup *)self _cellAtIndex:0];

  if (v5 == cellCopy)
  {
    return 1;
  }

  else
  {
    return ![(NCNotificationListPresentableGroup *)self isGrouped];
  }
}

- (BOOL)shouldShowSupplementaryActionsForNotificationListCell:(id)cell
{
  v3 = [(NCNotificationListSupplementaryViewsGroup *)self _configurationForCell:cell];
  supplementaryActions = [v3 supplementaryActions];
  v5 = [supplementaryActions count];

  v6 = [v3 preventsUserDismissal] ^ 1;
  if (v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = v6;
  }

  return v7;
}

- (id)supplementaryActionsForNotificationListCell:(id)cell
{
  v22 = *MEMORY[0x277D85DE8];
  cellCopy = cell;
  v5 = [(NCNotificationListSupplementaryViewsGroup *)self _configurationForCell:cellCopy];
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  supplementaryActions = [v5 supplementaryActions];
  v8 = [supplementaryActions countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    pl_isDefaultAction = 0;
    v11 = *v18;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(supplementaryActions);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        if (pl_isDefaultAction)
        {
          pl_isDefaultAction = 1;
        }

        else
        {
          pl_isDefaultAction = [*(*(&v17 + 1) + 8 * i) pl_isDefaultAction];
        }

        [v6 addObject:v13];
      }

      v9 = [supplementaryActions countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  else
  {
    pl_isDefaultAction = 0;
  }

  if (([v5 preventsUserDismissal] & 1) == 0)
  {
    v14 = [(NCNotificationListSupplementaryViewsGroup *)self _clearActionForCell:cellCopy];
    v15 = v14;
    if ((pl_isDefaultAction & 1) == 0)
    {
      [v14 setPl_defaultAction:1];
    }

    [v6 addObject:v15];
  }

  return v6;
}

- (id)defaultActionForNotificationListCell:(id)cell
{
  v3 = [(NCNotificationListSupplementaryViewsGroup *)self _configurationForCell:cell];
  defaultAction = [v3 defaultAction];

  return defaultAction;
}

- (BOOL)shouldShowDefaultActionForNotificationListCell:(id)cell
{
  v4 = [(NCNotificationListSupplementaryViewsGroup *)self _configurationForCell:cell];
  delegate = [(NCNotificationListPresentableGroup *)self delegate];
  defaultAction = [v4 defaultAction];
  if (defaultAction && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v7 = [delegate shouldHintDefaultActionForNotificationListBaseComponent:self];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)notificationListCell:(id)cell didBeginRevealingActionsForSwipeInteraction:(id)interaction
{
  v10.receiver = self;
  v10.super_class = NCNotificationListSupplementaryViewsGroup;
  cellCopy = cell;
  [(NCNotificationListPresentableGroup *)&v10 notificationListCell:cellCopy didBeginRevealingActionsForSwipeInteraction:interaction];
  v7 = [(NCNotificationListSupplementaryViewsGroup *)self _hostingViewControllerForCell:cellCopy, v10.receiver, v10.super_class];

  hostedViewController = [v7 hostedViewController];

  delegate = [(NCNotificationListPresentableGroup *)self delegate];
  [delegate notificationListSupplementaryViewsGroup:self cancelTouches:1 onHostedViewController:hostedViewController];
}

- (void)notificationListCell:(id)cell didBeginHidingActionsForSwipeInteraction:(id)interaction
{
  v10.receiver = self;
  v10.super_class = NCNotificationListSupplementaryViewsGroup;
  cellCopy = cell;
  [(NCNotificationListPresentableGroup *)&v10 notificationListCell:cellCopy didBeginHidingActionsForSwipeInteraction:interaction];
  v7 = [(NCNotificationListSupplementaryViewsGroup *)self _hostingViewControllerForCell:cellCopy, v10.receiver, v10.super_class];

  hostedViewController = [v7 hostedViewController];

  delegate = [(NCNotificationListPresentableGroup *)self delegate];
  [delegate notificationListSupplementaryViewsGroup:self cancelTouches:0 onHostedViewController:hostedViewController];
}

- (void)supplementaryHostingViewControllerWasTapped:(id)tapped
{
  tappedCopy = tapped;
  if ([(NCNotificationListPresentableGroup *)self isGrouped])
  {
    [(NCNotificationListSupplementaryViewsGroup *)self _setGrouped:0];
    [(NCNotificationListSupplementaryViewsGroup *)self _updateUserInteraction];
  }

  else
  {
    configuration = [tappedCopy configuration];
    defaultAction = [configuration defaultAction];

    if (defaultAction)
    {
      delegate = [(NCNotificationListPresentableGroup *)self delegate];
      if ((objc_opt_respondsToSelector() & 1) != 0 && [delegate shouldHintDefaultActionForNotificationListBaseComponent:self])
      {
        hostedViewController = [tappedCopy hostedViewController];
        v8 = [(NCNotificationListSupplementaryViewsGroup *)self _existingIndexMatchingSupplementaryViewController:hostedViewController];

        if (v8 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v9 = [(NCNotificationListSupplementaryViewsGroup *)self _cellAtIndex:v8];
          [v9 hintSideSwipeForDefaultAction];
        }
      }

      else
      {
        [defaultAction performWithSender:self target:0];
      }
    }
  }
}

- (void)supplementaryHostingViewControllerPreferredContentSizeChanged:(id)changed
{
  v4 = [(NCNotificationListSupplementaryViewsGroup *)self _indexOfHostingViewController:changed];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = v4;
    if (v4 < [(NCNotificationListSupplementaryViewsGroup *)self count])
    {
      listView = [(NCNotificationListPresentableGroup *)self listView];
      [listView reloadViewAtIndex:v5];

      delegate = [(NCNotificationListPresentableGroup *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        [delegate notificationListSupplementaryViewsGroupDidChangePreferredContentSize:self];
      }
    }
  }
}

+ (id)presentableTypes
{
  v2 = MEMORY[0x277CBEB98];
  v3 = objc_opt_class();

  return [v2 setWithObject:v3];
}

- (void)clearAll
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v4 = [(NCNotificationListSupplementaryViewsGroup *)self count];
  if ((v4 - 1) < 0)
  {
    v6 = 1;
  }

  else
  {
    v5 = v4;
    v6 = 1;
    do
    {
      v7 = [(NCNotificationListSupplementaryViewsGroup *)self _configurationAtIndex:--v5];
      preventsUserDismissal = [v7 preventsUserDismissal];

      if (preventsUserDismissal)
      {
        v6 = 0;
      }

      else
      {
        v9 = [(NCNotificationListSupplementaryViewsGroup *)self _hostingViewControllerAtIndex:v5];
        if (v9)
        {
          [v3 addObject:v9];
        }

        [(NCNotificationListSupplementaryViewsGroup *)self _removeSupplementaryViewControllerAtIndex:v5];
      }
    }

    while (v5 > 0);
  }

  delegate = [(NCNotificationListPresentableGroup *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate notificationListBaseComponent:self requestsClearingPresentables:v3];
  }

  if (v6)
  {
    v11 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
    {
      v12 = v11;
      logDescription = [(NCNotificationListSupplementaryViewsGroup *)self logDescription];
      groupingIdentifier = [(NCNotificationListSupplementaryViewsGroup *)self groupingIdentifier];
      un_logDigest = [groupingIdentifier un_logDigest];
      v16 = 138543618;
      v17 = logDescription;
      v18 = 2114;
      v19 = un_logDigest;
      _os_log_impl(&dword_21E77E000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ all cells are removed in group %{public}@; clean up group from section.", &v16, 0x16u);
    }

    if (objc_opt_respondsToSelector())
    {
      [delegate notificationListBaseComponentDidRemoveAll:self];
    }
  }
}

- (void)_updateSupplementaryViewController:(id)controller withConfiguration:(id)configuration existingIndex:(unint64_t)index proposedIndex:(unint64_t)proposedIndex
{
  v27 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  configurationCopy = configuration;
  if (configurationCopy)
  {
    v12 = [(NCNotificationListSupplementaryViewsGroup *)self _hostingViewControllerAtIndex:index];
    v13 = [(NCNotificationListSupplementaryViewsGroup *)self _cellAtIndex:index];
    [(NCNotificationListSupplementaryViewsGroup *)self _updateHostingViewController:v12 cell:v13 withConfiguration:configurationCopy];
  }

  if (proposedIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    v14 = (__PAIR128__(proposedIndex, index) - proposedIndex) >> 64;
    if (v14 != index)
    {
      v15 = *MEMORY[0x277D77DD0];
      if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
      {
        v16 = v15;
        logDescription = [(NCNotificationListSupplementaryViewsGroup *)self logDescription];
        v21 = 138543874;
        v22 = logDescription;
        v23 = 2050;
        indexCopy = index;
        v25 = 2050;
        v26 = v14;
        _os_log_impl(&dword_21E77E000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ updating position for existing supplementary view controller, '%{public}lu' -> '%{public}lu'", &v21, 0x20u);
      }

      v18 = [(NCNotificationListSupplementaryViewsGroup *)self _cellAtIndex:index];
      [(NSMutableArray *)self->_orderedCells removeObjectAtIndex:index];
      listView = [(NCNotificationListPresentableGroup *)self listView];
      [listView removeViewAtIndex:index animated:0];

      [(NSMutableArray *)self->_orderedCells insertObject:v18 atIndex:v14];
      listView2 = [(NCNotificationListPresentableGroup *)self listView];
      [listView2 insertViewAtIndex:v14 animated:0];
    }
  }
}

- (void)_updateUserInteraction
{
  if ([(NCNotificationListSupplementaryViewsGroup *)self count])
  {
    v3 = 0;
    do
    {
      v4 = [(NCNotificationListSupplementaryViewsGroup *)self _hostingViewControllerAtIndex:v3];
      [v4 setHostedViewControllerUserInteractionEnabled:{-[NCNotificationListSupplementaryViewsGroup _shouldAllowHostedViewControllersUserInteraction](self, "_shouldAllowHostedViewControllersUserInteraction")}];

      ++v3;
    }

    while (v3 < [(NCNotificationListSupplementaryViewsGroup *)self count]);
  }
}

- (void)_clearCell:(id)cell
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = [(NCNotificationListSupplementaryViewsGroup *)self _hostingViewControllerForCell:cell];
  if (v4)
  {
    [(NCNotificationListSupplementaryViewsGroup *)self _removeSupplementaryViewControllerAtIndex:[(NCNotificationListSupplementaryViewsGroup *)self _indexOfHostingViewController:v4]];
    delegate = [(NCNotificationListPresentableGroup *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      v6 = [MEMORY[0x277CBEB98] setWithObject:v4];
      [delegate notificationListBaseComponent:self requestsClearingPresentables:v6];
    }

    if (![(NCNotificationListSupplementaryViewsGroup *)self count])
    {
      v7 = *MEMORY[0x277D77DD0];
      if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
      {
        v8 = v7;
        logDescription = [(NCNotificationListSupplementaryViewsGroup *)self logDescription];
        groupingIdentifier = [(NCNotificationListSupplementaryViewsGroup *)self groupingIdentifier];
        un_logDigest = [groupingIdentifier un_logDigest];
        v12 = 138543618;
        v13 = logDescription;
        v14 = 2114;
        v15 = un_logDigest;
        _os_log_impl(&dword_21E77E000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ all cells are removed in group %{public}@; clean up group from section.", &v12, 0x16u);
      }

      if (objc_opt_respondsToSelector())
      {
        [delegate notificationListBaseComponentDidRemoveAll:self];
      }
    }
  }
}

- (id)_clearActionForCell:(id)cell
{
  cellCopy = cell;
  listView = [(NCNotificationListPresentableGroup *)self listView];
  if ([listView isGrouped])
  {
    v6 = [(NCNotificationListSupplementaryViewsGroup *)self count];

    v7 = v6 > 1;
    if (v6 <= 1)
    {
      v8 = @"NOTIFICATION_LIST_CLEAR";
    }

    else
    {
      v8 = @"NOTIFICATION_LIST_CLEAR_ALL_CELL";
    }
  }

  else
  {

    v7 = 0;
    v8 = @"NOTIFICATION_LIST_CLEAR";
  }

  v9 = NCUserNotificationsUIKitFrameworkBundle();
  v10 = [v9 localizedStringForKey:v8 value:&stru_282FE84F8 table:0];

  objc_initWeak(&location, self);
  v11 = MEMORY[0x277D750C8];
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __65__NCNotificationListSupplementaryViewsGroup__clearActionForCell___block_invoke;
  v18 = &unk_278370538;
  objc_copyWeak(&v20, &location);
  v21 = v7;
  v12 = cellCopy;
  v19 = v12;
  v13 = [v11 actionWithTitle:v10 image:0 identifier:@"tbd" handler:&v15];
  [v13 setPl_defaultAction:{1, v15, v16, v17, v18}];

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);

  return v13;
}

void __65__NCNotificationListSupplementaryViewsGroup__clearActionForCell___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained setClearingAllNotificationRequestsForCellHorizontalSwipe:1];
    if (*(a1 + 48) == 1)
    {
      [v3 clearAll];
    }

    else
    {
      [v3 _clearCell:*(a1 + 32)];
    }

    WeakRetained = v3;
  }
}

- (void)_updateHostingViewController:(id)controller cell:(id)cell withConfiguration:(id)configuration
{
  controllerCopy = controller;
  configurationCopy = configuration;
  cellCopy = cell;
  v10 = [(NCNotificationListSupplementaryViewsGroup *)self _configurationForCell:cellCopy];
  v11 = [configurationCopy isEqual:v10];

  if (v11)
  {
    [controllerCopy setConfiguration:configurationCopy animated:1];
    [cellCopy setContentViewController:controllerCopy];
    [(NCNotificationListSupplementaryViewsGroup *)self _matchStyleOfCell:cellCopy toHostingViewController:controllerCopy];
  }

  else
  {
    delegate = [(NCNotificationListPresentableGroup *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate notificationListBaseComponent:self willUpdateViewController:controllerCopy];
    }

    [controllerCopy setConfiguration:configurationCopy animated:1];
    [cellCopy setContentViewController:controllerCopy];
    [(NCNotificationListSupplementaryViewsGroup *)self _matchStyleOfCell:cellCopy toHostingViewController:controllerCopy];

    cellCopy = [(NCNotificationListPresentableGroup *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [cellCopy notificationListBaseComponent:self didUpdateViewController:controllerCopy];
    }
  }
}

- (void)_matchStyleOfCell:(id)cell toHostingViewController:(id)controller
{
  controllerCopy = controller;
  cellCopy = cell;
  materialGroupNameBase = [controllerCopy materialGroupNameBase];
  [cellCopy setMaterialGroupNameBase:materialGroupNameBase];

  materialTintColor = [controllerCopy materialTintColor];
  [cellCopy setMaterialTintColor:materialTintColor];

  textColor = [controllerCopy textColor];
  [cellCopy setTextColor:textColor];

  materialRecipe = [controllerCopy materialRecipe];
  [cellCopy setMaterialRecipe:materialRecipe];
}

- (unint64_t)_existingIndexMatchingSupplementaryViewController:(id)controller
{
  controllerCopy = controller;
  if ([(NCNotificationListSupplementaryViewsGroup *)self count])
  {
    v5 = 0;
    while (1)
    {
      v6 = [(NCNotificationListSupplementaryViewsGroup *)self _supplementaryViewControllerAtIndex:v5];

      if (v6 == controllerCopy)
      {
        break;
      }

      if (++v5 >= [(NCNotificationListSupplementaryViewsGroup *)self count])
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v5 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v5;
}

- (unint64_t)_sortedIndexForViewController:(id)controller
{
  controllerCopy = controller;
  if (self->_viewControllerSortComparator)
  {
    for (i = 0; i < [(NCNotificationListSupplementaryViewsGroup *)self count]; ++i)
    {
      v6 = [(NCNotificationListSupplementaryViewsGroup *)self _supplementaryViewControllerAtIndex:i];
      v7 = (*(self->_viewControllerSortComparator + 2))();

      if (v7 == 1)
      {
        break;
      }
    }
  }

  else
  {
    i = 0x7FFFFFFFFFFFFFFFLL;
  }

  return i;
}

- (NSString)logDescription
{
  un_logDigest = [(NSString *)self->_groupingIdentifier un_logDigest];
  v4 = un_logDigest;
  v5 = @"<Group w/ No ID>";
  if (un_logDigest)
  {
    v5 = un_logDigest;
  }

  v6 = v5;

  v7 = MEMORY[0x277CCACA8];
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [v7 stringWithFormat:@"%@ [%@: %@]", v9, self->_sectionIdentifier, v6];

  return v10;
}

- (id)_configurationAtIndex:(unint64_t)index
{
  v3 = [(NCNotificationListSupplementaryViewsGroup *)self _hostingViewControllerAtIndex:index];
  configuration = [v3 configuration];

  return configuration;
}

- (id)_supplementaryViewControllerAtIndex:(unint64_t)index
{
  v3 = [(NCNotificationListSupplementaryViewsGroup *)self _hostingViewControllerAtIndex:index];
  hostedViewController = [v3 hostedViewController];

  return hostedViewController;
}

- (id)_hostingViewControllerAtIndex:(unint64_t)index
{
  v4 = [(NCNotificationListSupplementaryViewsGroup *)self _cellAtIndex:index];
  if (v4)
  {
    v5 = [(NCNotificationListSupplementaryViewsGroup *)self _hostingViewControllerForCell:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_cellAtIndex:(unint64_t)index
{
  v17 = *MEMORY[0x277D85DE8];
  if ([(NSMutableArray *)self->_orderedCells count]<= index)
  {
    v6 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_ERROR))
    {
      v8 = v6;
      logDescription = [(NCNotificationListSupplementaryViewsGroup *)self logDescription];
      v10 = [(NSMutableArray *)self->_orderedCells count];
      v11 = 138543874;
      v12 = logDescription;
      v13 = 2048;
      indexCopy = index;
      v15 = 2048;
      v16 = v10;
      _os_log_error_impl(&dword_21E77E000, v8, OS_LOG_TYPE_ERROR, "%{public}@ cannot vend list view for index: %lu. array count is: %lu.", &v11, 0x20u);
    }

    v5 = 0;
  }

  else
  {
    v5 = [(NSMutableArray *)self->_orderedCells objectAtIndex:index];
  }

  return v5;
}

- (unint64_t)_indexOfHostingViewController:(id)controller
{
  controllerCopy = controller;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0x7FFFFFFFFFFFFFFFLL;
  orderedCells = self->_orderedCells;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __75__NCNotificationListSupplementaryViewsGroup__indexOfHostingViewController___block_invoke;
  v9[3] = &unk_278370560;
  v6 = controllerCopy;
  v10 = v6;
  v11 = &v12;
  [(NSMutableArray *)orderedCells enumerateObjectsUsingBlock:v9];
  v7 = v13[3];

  _Block_object_dispose(&v12, 8);
  return v7;
}

void __75__NCNotificationListSupplementaryViewsGroup__indexOfHostingViewController___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = *(a1 + 32);
  v8 = [a2 contentViewController];

  if (v7 == v8)
  {
    *(*(*(a1 + 40) + 8) + 24) = a3;
    *a4 = 1;
  }
}

- (id)_configurationForCell:(id)cell
{
  v3 = [(NCNotificationListSupplementaryViewsGroup *)self _hostingViewControllerForCell:cell];
  configuration = [v3 configuration];

  return configuration;
}

- (void)_removeSupplementaryViewControllerAtIndex:(unint64_t)index
{
  if (index != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = [(NCNotificationListSupplementaryViewsGroup *)self _hostingViewControllerAtIndex:?];
    v6 = [(NSMutableArray *)self->_orderedCells objectAtIndex:index];
    if (v6)
    {
      v7 = [(NCNotificationListPresentableGroup *)self actionsRevealedForNotificationListCell:v6];
    }

    else
    {
      v7 = 0;
    }

    [(NSMutableArray *)self->_orderedCells removeObjectAtIndex:index];
    listView = [(NCNotificationListPresentableGroup *)self listView];
    [listView removeViewAtIndex:index animated:1 isHorizontallyDisplaced:v7];

    delegate = [(NCNotificationListPresentableGroup *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate notificationListBaseComponent:self didRemoveViewController:v5];
    }
  }

  if ([(NCNotificationListSupplementaryViewsGroup *)self count]== 1)
  {
    [(NCNotificationListSupplementaryViewsGroup *)self _setGrouped:1];

    [(NCNotificationListSupplementaryViewsGroup *)self _updateUserInteraction];
  }
}

- (void)_setGrouped:(BOOL)grouped
{
  groupedCopy = grouped;
  listView = [(NCNotificationListPresentableGroup *)self listView];
  [listView setGrouped:groupedCopy];

  delegate = [(NCNotificationListPresentableGroup *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate notificationListSupplementaryViewsGroup:self didSetGrouped:groupedCopy];
  }
}

- (void)removeSupplementaryViewController:(uint64_t)a3 .cold.1(void *a1, void *a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = [a2 logDescription];
  v7 = 138543618;
  v8 = v6;
  v9 = 2114;
  v10 = a3;
  _os_log_error_impl(&dword_21E77E000, v5, OS_LOG_TYPE_ERROR, "%{public}@ supplementary view controller [%{public}@] index not found", &v7, 0x16u);
}

- (void)animator
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  selfCopy = self;
  v5 = 2112;
  v6 = a2;
  _os_log_fault_impl(&dword_21E77E000, log, OS_LOG_TYPE_FAULT, "Unexpectedly didn't recieve animator from delegate: %@, for object: %@", &v3, 0x16u);
}

@end