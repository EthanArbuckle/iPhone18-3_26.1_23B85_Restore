@interface NCNotificationListSupplementaryViewsGroup
+ (id)presentableTypes;
- (BOOL)isEligibleToPerformGroupAnimationForNotificationList:(id)a3 toGrouped:(BOOL)a4;
- (BOOL)shouldContinuePresentingActionButtonsForNotificationListCell:(id)a3;
- (BOOL)shouldShowDefaultActionForNotificationListCell:(id)a3;
- (BOOL)shouldShowSupplementaryActionsForNotificationListCell:(id)a3;
- (NCNotificationListSupplementaryViewsGroup)init;
- (NSArray)hostingViewControllers;
- (NSArray)supplementaryViewControllers;
- (NSString)logDescription;
- (double)notificationListView:(id)a3 heightForItemAtIndex:(unint64_t)a4 withWidth:(double)a5 inDisplayListAsStackMode:(BOOL)a6 ignoreExpandedGroupStack:(BOOL)a7;
- (id)_cellAtIndex:(unint64_t)a3;
- (id)_clearActionForCell:(id)a3;
- (id)_configurationAtIndex:(unint64_t)a3;
- (id)_configurationForCell:(id)a3;
- (id)_hostingViewControllerAtIndex:(unint64_t)a3;
- (id)_supplementaryViewControllerAtIndex:(unint64_t)a3;
- (id)animator;
- (id)clearAllText;
- (id)defaultActionForNotificationListCell:(id)a3;
- (id)hostingPlatterViewForSupplementaryViewController:(id)a3;
- (id)notificationListView:(id)a3 viewForItemAtIndex:(unint64_t)a4;
- (id)purposeWithSensitiveTextHashed:(BOOL)a3;
- (id)supplementaryActionsForNotificationListCell:(id)a3;
- (unint64_t)_existingIndexMatchingSupplementaryViewController:(id)a3;
- (unint64_t)_indexOfHostingViewController:(id)a3;
- (unint64_t)_sortedIndexForViewController:(id)a3;
- (void)_clearCell:(id)a3;
- (void)_matchStyleOfCell:(id)a3 toHostingViewController:(id)a4;
- (void)_removeSupplementaryViewControllerAtIndex:(unint64_t)a3;
- (void)_setGrouped:(BOOL)a3;
- (void)_updateHostingViewController:(id)a3 cell:(id)a4 withConfiguration:(id)a5;
- (void)_updateSupplementaryViewController:(id)a3 withConfiguration:(id)a4 existingIndex:(unint64_t)a5 proposedIndex:(unint64_t)a6;
- (void)_updateUserInteraction;
- (void)animator;
- (void)clearAll;
- (void)insertSupplementaryViewController:(id)a3 withConfiguration:(id)a4;
- (void)notificationListCell:(id)a3 didBeginHidingActionsForSwipeInteraction:(id)a4;
- (void)notificationListCell:(id)a3 didBeginRevealingActionsForSwipeInteraction:(id)a4;
- (void)notificationListView:(id)a3 didRemoveView:(id)a4;
- (void)notificationListView:(id)a3 willRemoveView:(id)a4;
- (void)recycleView:(id)a3;
- (void)removeSupplementaryViewController:(id)a3;
- (void)supplementaryHostingViewControllerPreferredContentSizeChanged:(id)a3;
- (void)supplementaryHostingViewControllerWasTapped:(id)a3;
- (void)toggleGroupedState;
- (void)updatePositionIfNeededForSupplementaryViewController:(id)a3;
- (void)updateSupplementaryViewController:(id)a3 withConfiguration:(id)a4;
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
  v3 = [(NCNotificationListPresentableGroup *)self delegate];
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

- (void)insertSupplementaryViewController:(id)a3 withConfiguration:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(NCNotificationListSupplementaryViewsGroup *)self _existingIndexMatchingSupplementaryViewController:v6];
  v9 = [(NCNotificationListSupplementaryViewsGroup *)self _sortedIndexForViewController:v6];
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
      v14 = [(NCNotificationListSupplementaryViewsGroup *)self logDescription];
      v23 = 138543874;
      v24 = v14;
      v25 = 2114;
      v26 = v6;
      v27 = 2048;
      v28 = v10;
      _os_log_impl(&dword_21E77E000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ inserting new supplementary view view controller [%{public}@] at index %lu", &v23, 0x20u);
    }

    v15 = [(NCNotificationListPresentableGroup *)self delegate];
    v16 = [[NCNotificationListSupplementaryHostingViewController alloc] initWithHostedViewController:v6 sectionIdentifier:self->_sectionIdentifier];
    [(NCNotificationListSupplementaryHostingViewController *)v16 setDelegate:self];
    [(NCNotificationListSupplementaryHostingViewController *)v16 setConfiguration:v7 animated:0];

    if (objc_opt_respondsToSelector())
    {
      v17 = [v15 backgroundGroupNameBaseForNotificationListBaseComponent:self];
      [(NCNotificationListSupplementaryHostingViewController *)v16 setMaterialGroupNameBase:v17];
    }

    if (objc_opt_respondsToSelector())
    {
      [v15 notificationListBaseComponent:self didAddViewController:v16];
    }

    v18 = [NCNotificationListCell alloc];
    v19 = [(NCNotificationListCell *)v18 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    [(NCNotificationListCell *)v19 setActionProvider:self];
    [(NCNotificationListCell *)v19 setActionHandler:self];
    [(NSMutableArray *)self->_orderedCells insertObject:v19 atIndex:v10];
    [(NCNotificationListCell *)v19 setContentViewController:v16];
    [(NCNotificationListSupplementaryViewsGroup *)self _matchStyleOfCell:v19 toHostingViewController:v16];
    v20 = [(NCNotificationListPresentableGroup *)self listView];
    [v20 insertViewAtIndex:v10 animated:1];

    [(NCNotificationListSupplementaryViewsGroup *)self _updateUserInteraction];
  }

  else
  {
    if (v12)
    {
      v21 = v11;
      v22 = [(NCNotificationListSupplementaryViewsGroup *)self logDescription];
      v23 = 138544130;
      v24 = v22;
      v25 = 2114;
      v26 = v6;
      v27 = 2048;
      v28 = v8;
      v29 = 2048;
      v30 = v10;
      _os_log_impl(&dword_21E77E000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@ updating new supplementary view view controller [%{public}@] with existingIndex %lu; newIndex %lu", &v23, 0x2Au);
    }

    [(NCNotificationListSupplementaryViewsGroup *)self _updateSupplementaryViewController:v6 withConfiguration:v7 existingIndex:v8 proposedIndex:v10];
    v15 = v7;
  }
}

- (void)updateSupplementaryViewController:(id)a3 withConfiguration:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(NCNotificationListSupplementaryViewsGroup *)self _existingIndexMatchingSupplementaryViewController:v8];
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(NCNotificationListSupplementaryViewsGroup *)self _updateSupplementaryViewController:v8 withConfiguration:v6 existingIndex:v7 proposedIndex:[(NCNotificationListSupplementaryViewsGroup *)self _sortedIndexForViewController:v8]];
  }
}

- (void)updatePositionIfNeededForSupplementaryViewController:(id)a3
{
  v5 = a3;
  v4 = [(NCNotificationListSupplementaryViewsGroup *)self _existingIndexMatchingSupplementaryViewController:?];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(NCNotificationListSupplementaryViewsGroup *)self _updateSupplementaryViewController:v5 withConfiguration:0 existingIndex:v4 proposedIndex:[(NCNotificationListSupplementaryViewsGroup *)self _sortedIndexForViewController:v5]];
  }
}

- (void)removeSupplementaryViewController:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(NCNotificationListSupplementaryViewsGroup *)self _existingIndexMatchingSupplementaryViewController:v4];
  v6 = *MEMORY[0x277D77DD0];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_ERROR))
    {
      [(NCNotificationListSupplementaryViewsGroup *)v6 removeSupplementaryViewController:v4];
    }
  }

  else if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8 = [(NCNotificationListSupplementaryViewsGroup *)self logDescription];
    v9 = 138543874;
    v10 = v8;
    v11 = 2114;
    v12 = v4;
    v13 = 2048;
    v14 = v5;
    _os_log_impl(&dword_21E77E000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ removing supplementary view controller [%{public}@] at index %lu", &v9, 0x20u);
  }

  [(NCNotificationListSupplementaryViewsGroup *)self _removeSupplementaryViewControllerAtIndex:v5];
}

- (id)hostingPlatterViewForSupplementaryViewController:(id)a3
{
  v4 = [(NCNotificationListSupplementaryViewsGroup *)self _existingIndexMatchingSupplementaryViewController:a3];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    v6 = [(NCNotificationListSupplementaryViewsGroup *)self _hostingViewControllerAtIndex:v4];
    v5 = [v6 platterView];
  }

  return v5;
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

- (id)purposeWithSensitiveTextHashed:(BOOL)a3
{
  groupingIdentifier = self->_groupingIdentifier;
  if (groupingIdentifier)
  {
    if (a3)
    {
      v5 = [(NSString *)groupingIdentifier un_logDigest];
    }

    else
    {
      v5 = groupingIdentifier;
    }

    v6 = v5;
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
  v3 = [(NCNotificationListPresentableGroup *)self listView];
  v4 = [v3 isGrouped];

  v5 = [(NCNotificationListPresentableGroup *)self listView];
  v6 = [v5 count];

  if (v6 > 1 || !((v6 != 1) | v4 & 1))
  {
    [(NCNotificationListSupplementaryViewsGroup *)self _setGrouped:(v4 & 1) == 0];

    [(NCNotificationListSupplementaryViewsGroup *)self _updateUserInteraction];
  }
}

- (double)notificationListView:(id)a3 heightForItemAtIndex:(unint64_t)a4 withWidth:(double)a5 inDisplayListAsStackMode:(BOOL)a6 ignoreExpandedGroupStack:(BOOL)a7
{
  v8 = [(NCNotificationListSupplementaryViewsGroup *)self _hostingViewControllerAtIndex:a4];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 view];
    [v10 sizeThatFits:{a5, 1.79769313e308}];
    v12 = v11;
  }

  else
  {
    v12 = 0.0;
  }

  return v12;
}

- (id)notificationListView:(id)a3 viewForItemAtIndex:(unint64_t)a4
{
  v6 = [(NCNotificationListSupplementaryViewsGroup *)self _hostingViewControllerAtIndex:a4];
  [v6 setContentVisible:1];
  v7 = [(NCNotificationListSupplementaryViewsGroup *)self _cellAtIndex:a4];

  return v7;
}

- (void)recycleView:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = NCNotificationListSupplementaryViewsGroup;
  [(NCNotificationListPresentableGroup *)&v6 recycleView:v4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(NCNotificationListSupplementaryViewsGroup *)self _hostingViewControllerForCell:v4];
    [v5 setContentVisible:0];
  }
}

- (BOOL)isEligibleToPerformGroupAnimationForNotificationList:(id)a3 toGrouped:(BOOL)a4
{
  v4 = a4;
  v6 = [(NCNotificationListPresentableGroup *)self delegate];
  if (v6 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v7 = [v6 isEligibleToPerformGroupAnimationForNotificationListBaseComponent:self toGrouped:v4];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (void)notificationListView:(id)a3 willRemoveView:(id)a4
{
  v6 = a4;
  v5 = [(NCNotificationListPresentableGroup *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 notificationListBaseComponent:self willRemoveView:v6];
  }
}

- (void)notificationListView:(id)a3 didRemoveView:(id)a4
{
  v6 = a4;
  v5 = [(NCNotificationListPresentableGroup *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 notificationListBaseComponent:self didRemoveView:v6];
  }
}

- (BOOL)shouldContinuePresentingActionButtonsForNotificationListCell:(id)a3
{
  v4 = a3;
  v5 = [(NCNotificationListSupplementaryViewsGroup *)self _cellAtIndex:0];

  if (v5 == v4)
  {
    return 1;
  }

  else
  {
    return ![(NCNotificationListPresentableGroup *)self isGrouped];
  }
}

- (BOOL)shouldShowSupplementaryActionsForNotificationListCell:(id)a3
{
  v3 = [(NCNotificationListSupplementaryViewsGroup *)self _configurationForCell:a3];
  v4 = [v3 supplementaryActions];
  v5 = [v4 count];

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

- (id)supplementaryActionsForNotificationListCell:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(NCNotificationListSupplementaryViewsGroup *)self _configurationForCell:v4];
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = [v5 supplementaryActions];
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v18;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        if (v10)
        {
          v10 = 1;
        }

        else
        {
          v10 = [*(*(&v17 + 1) + 8 * i) pl_isDefaultAction];
        }

        [v6 addObject:v13];
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  else
  {
    v10 = 0;
  }

  if (([v5 preventsUserDismissal] & 1) == 0)
  {
    v14 = [(NCNotificationListSupplementaryViewsGroup *)self _clearActionForCell:v4];
    v15 = v14;
    if ((v10 & 1) == 0)
    {
      [v14 setPl_defaultAction:1];
    }

    [v6 addObject:v15];
  }

  return v6;
}

- (id)defaultActionForNotificationListCell:(id)a3
{
  v3 = [(NCNotificationListSupplementaryViewsGroup *)self _configurationForCell:a3];
  v4 = [v3 defaultAction];

  return v4;
}

- (BOOL)shouldShowDefaultActionForNotificationListCell:(id)a3
{
  v4 = [(NCNotificationListSupplementaryViewsGroup *)self _configurationForCell:a3];
  v5 = [(NCNotificationListPresentableGroup *)self delegate];
  v6 = [v4 defaultAction];
  if (v6 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v7 = [v5 shouldHintDefaultActionForNotificationListBaseComponent:self];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)notificationListCell:(id)a3 didBeginRevealingActionsForSwipeInteraction:(id)a4
{
  v10.receiver = self;
  v10.super_class = NCNotificationListSupplementaryViewsGroup;
  v6 = a3;
  [(NCNotificationListPresentableGroup *)&v10 notificationListCell:v6 didBeginRevealingActionsForSwipeInteraction:a4];
  v7 = [(NCNotificationListSupplementaryViewsGroup *)self _hostingViewControllerForCell:v6, v10.receiver, v10.super_class];

  v8 = [v7 hostedViewController];

  v9 = [(NCNotificationListPresentableGroup *)self delegate];
  [v9 notificationListSupplementaryViewsGroup:self cancelTouches:1 onHostedViewController:v8];
}

- (void)notificationListCell:(id)a3 didBeginHidingActionsForSwipeInteraction:(id)a4
{
  v10.receiver = self;
  v10.super_class = NCNotificationListSupplementaryViewsGroup;
  v6 = a3;
  [(NCNotificationListPresentableGroup *)&v10 notificationListCell:v6 didBeginHidingActionsForSwipeInteraction:a4];
  v7 = [(NCNotificationListSupplementaryViewsGroup *)self _hostingViewControllerForCell:v6, v10.receiver, v10.super_class];

  v8 = [v7 hostedViewController];

  v9 = [(NCNotificationListPresentableGroup *)self delegate];
  [v9 notificationListSupplementaryViewsGroup:self cancelTouches:0 onHostedViewController:v8];
}

- (void)supplementaryHostingViewControllerWasTapped:(id)a3
{
  v10 = a3;
  if ([(NCNotificationListPresentableGroup *)self isGrouped])
  {
    [(NCNotificationListSupplementaryViewsGroup *)self _setGrouped:0];
    [(NCNotificationListSupplementaryViewsGroup *)self _updateUserInteraction];
  }

  else
  {
    v4 = [v10 configuration];
    v5 = [v4 defaultAction];

    if (v5)
    {
      v6 = [(NCNotificationListPresentableGroup *)self delegate];
      if ((objc_opt_respondsToSelector() & 1) != 0 && [v6 shouldHintDefaultActionForNotificationListBaseComponent:self])
      {
        v7 = [v10 hostedViewController];
        v8 = [(NCNotificationListSupplementaryViewsGroup *)self _existingIndexMatchingSupplementaryViewController:v7];

        if (v8 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v9 = [(NCNotificationListSupplementaryViewsGroup *)self _cellAtIndex:v8];
          [v9 hintSideSwipeForDefaultAction];
        }
      }

      else
      {
        [v5 performWithSender:self target:0];
      }
    }
  }
}

- (void)supplementaryHostingViewControllerPreferredContentSizeChanged:(id)a3
{
  v4 = [(NCNotificationListSupplementaryViewsGroup *)self _indexOfHostingViewController:a3];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = v4;
    if (v4 < [(NCNotificationListSupplementaryViewsGroup *)self count])
    {
      v6 = [(NCNotificationListPresentableGroup *)self listView];
      [v6 reloadViewAtIndex:v5];

      v7 = [(NCNotificationListPresentableGroup *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        [v7 notificationListSupplementaryViewsGroupDidChangePreferredContentSize:self];
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
      v8 = [v7 preventsUserDismissal];

      if (v8)
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

  v10 = [(NCNotificationListPresentableGroup *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v10 notificationListBaseComponent:self requestsClearingPresentables:v3];
  }

  if (v6)
  {
    v11 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
    {
      v12 = v11;
      v13 = [(NCNotificationListSupplementaryViewsGroup *)self logDescription];
      v14 = [(NCNotificationListSupplementaryViewsGroup *)self groupingIdentifier];
      v15 = [v14 un_logDigest];
      v16 = 138543618;
      v17 = v13;
      v18 = 2114;
      v19 = v15;
      _os_log_impl(&dword_21E77E000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ all cells are removed in group %{public}@; clean up group from section.", &v16, 0x16u);
    }

    if (objc_opt_respondsToSelector())
    {
      [v10 notificationListBaseComponentDidRemoveAll:self];
    }
  }
}

- (void)_updateSupplementaryViewController:(id)a3 withConfiguration:(id)a4 existingIndex:(unint64_t)a5 proposedIndex:(unint64_t)a6
{
  v27 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  if (v11)
  {
    v12 = [(NCNotificationListSupplementaryViewsGroup *)self _hostingViewControllerAtIndex:a5];
    v13 = [(NCNotificationListSupplementaryViewsGroup *)self _cellAtIndex:a5];
    [(NCNotificationListSupplementaryViewsGroup *)self _updateHostingViewController:v12 cell:v13 withConfiguration:v11];
  }

  if (a6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v14 = (__PAIR128__(a6, a5) - a6) >> 64;
    if (v14 != a5)
    {
      v15 = *MEMORY[0x277D77DD0];
      if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
      {
        v16 = v15;
        v17 = [(NCNotificationListSupplementaryViewsGroup *)self logDescription];
        v21 = 138543874;
        v22 = v17;
        v23 = 2050;
        v24 = a5;
        v25 = 2050;
        v26 = v14;
        _os_log_impl(&dword_21E77E000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ updating position for existing supplementary view controller, '%{public}lu' -> '%{public}lu'", &v21, 0x20u);
      }

      v18 = [(NCNotificationListSupplementaryViewsGroup *)self _cellAtIndex:a5];
      [(NSMutableArray *)self->_orderedCells removeObjectAtIndex:a5];
      v19 = [(NCNotificationListPresentableGroup *)self listView];
      [v19 removeViewAtIndex:a5 animated:0];

      [(NSMutableArray *)self->_orderedCells insertObject:v18 atIndex:v14];
      v20 = [(NCNotificationListPresentableGroup *)self listView];
      [v20 insertViewAtIndex:v14 animated:0];
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

- (void)_clearCell:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = [(NCNotificationListSupplementaryViewsGroup *)self _hostingViewControllerForCell:a3];
  if (v4)
  {
    [(NCNotificationListSupplementaryViewsGroup *)self _removeSupplementaryViewControllerAtIndex:[(NCNotificationListSupplementaryViewsGroup *)self _indexOfHostingViewController:v4]];
    v5 = [(NCNotificationListPresentableGroup *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      v6 = [MEMORY[0x277CBEB98] setWithObject:v4];
      [v5 notificationListBaseComponent:self requestsClearingPresentables:v6];
    }

    if (![(NCNotificationListSupplementaryViewsGroup *)self count])
    {
      v7 = *MEMORY[0x277D77DD0];
      if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
      {
        v8 = v7;
        v9 = [(NCNotificationListSupplementaryViewsGroup *)self logDescription];
        v10 = [(NCNotificationListSupplementaryViewsGroup *)self groupingIdentifier];
        v11 = [v10 un_logDigest];
        v12 = 138543618;
        v13 = v9;
        v14 = 2114;
        v15 = v11;
        _os_log_impl(&dword_21E77E000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ all cells are removed in group %{public}@; clean up group from section.", &v12, 0x16u);
      }

      if (objc_opt_respondsToSelector())
      {
        [v5 notificationListBaseComponentDidRemoveAll:self];
      }
    }
  }
}

- (id)_clearActionForCell:(id)a3
{
  v4 = a3;
  v5 = [(NCNotificationListPresentableGroup *)self listView];
  if ([v5 isGrouped])
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
  v12 = v4;
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

- (void)_updateHostingViewController:(id)a3 cell:(id)a4 withConfiguration:(id)a5
{
  v13 = a3;
  v8 = a5;
  v9 = a4;
  v10 = [(NCNotificationListSupplementaryViewsGroup *)self _configurationForCell:v9];
  v11 = [v8 isEqual:v10];

  if (v11)
  {
    [v13 setConfiguration:v8 animated:1];
    [v9 setContentViewController:v13];
    [(NCNotificationListSupplementaryViewsGroup *)self _matchStyleOfCell:v9 toHostingViewController:v13];
  }

  else
  {
    v12 = [(NCNotificationListPresentableGroup *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [v12 notificationListBaseComponent:self willUpdateViewController:v13];
    }

    [v13 setConfiguration:v8 animated:1];
    [v9 setContentViewController:v13];
    [(NCNotificationListSupplementaryViewsGroup *)self _matchStyleOfCell:v9 toHostingViewController:v13];

    v9 = [(NCNotificationListPresentableGroup *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [v9 notificationListBaseComponent:self didUpdateViewController:v13];
    }
  }
}

- (void)_matchStyleOfCell:(id)a3 toHostingViewController:(id)a4
{
  v5 = a4;
  v10 = a3;
  v6 = [v5 materialGroupNameBase];
  [v10 setMaterialGroupNameBase:v6];

  v7 = [v5 materialTintColor];
  [v10 setMaterialTintColor:v7];

  v8 = [v5 textColor];
  [v10 setTextColor:v8];

  v9 = [v5 materialRecipe];
  [v10 setMaterialRecipe:v9];
}

- (unint64_t)_existingIndexMatchingSupplementaryViewController:(id)a3
{
  v4 = a3;
  if ([(NCNotificationListSupplementaryViewsGroup *)self count])
  {
    v5 = 0;
    while (1)
    {
      v6 = [(NCNotificationListSupplementaryViewsGroup *)self _supplementaryViewControllerAtIndex:v5];

      if (v6 == v4)
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

- (unint64_t)_sortedIndexForViewController:(id)a3
{
  v4 = a3;
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
  v3 = [(NSString *)self->_groupingIdentifier un_logDigest];
  v4 = v3;
  v5 = @"<Group w/ No ID>";
  if (v3)
  {
    v5 = v3;
  }

  v6 = v5;

  v7 = MEMORY[0x277CCACA8];
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [v7 stringWithFormat:@"%@ [%@: %@]", v9, self->_sectionIdentifier, v6];

  return v10;
}

- (id)_configurationAtIndex:(unint64_t)a3
{
  v3 = [(NCNotificationListSupplementaryViewsGroup *)self _hostingViewControllerAtIndex:a3];
  v4 = [v3 configuration];

  return v4;
}

- (id)_supplementaryViewControllerAtIndex:(unint64_t)a3
{
  v3 = [(NCNotificationListSupplementaryViewsGroup *)self _hostingViewControllerAtIndex:a3];
  v4 = [v3 hostedViewController];

  return v4;
}

- (id)_hostingViewControllerAtIndex:(unint64_t)a3
{
  v4 = [(NCNotificationListSupplementaryViewsGroup *)self _cellAtIndex:a3];
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

- (id)_cellAtIndex:(unint64_t)a3
{
  v17 = *MEMORY[0x277D85DE8];
  if ([(NSMutableArray *)self->_orderedCells count]<= a3)
  {
    v6 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_ERROR))
    {
      v8 = v6;
      v9 = [(NCNotificationListSupplementaryViewsGroup *)self logDescription];
      v10 = [(NSMutableArray *)self->_orderedCells count];
      v11 = 138543874;
      v12 = v9;
      v13 = 2048;
      v14 = a3;
      v15 = 2048;
      v16 = v10;
      _os_log_error_impl(&dword_21E77E000, v8, OS_LOG_TYPE_ERROR, "%{public}@ cannot vend list view for index: %lu. array count is: %lu.", &v11, 0x20u);
    }

    v5 = 0;
  }

  else
  {
    v5 = [(NSMutableArray *)self->_orderedCells objectAtIndex:a3];
  }

  return v5;
}

- (unint64_t)_indexOfHostingViewController:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0x7FFFFFFFFFFFFFFFLL;
  orderedCells = self->_orderedCells;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __75__NCNotificationListSupplementaryViewsGroup__indexOfHostingViewController___block_invoke;
  v9[3] = &unk_278370560;
  v6 = v4;
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

- (id)_configurationForCell:(id)a3
{
  v3 = [(NCNotificationListSupplementaryViewsGroup *)self _hostingViewControllerForCell:a3];
  v4 = [v3 configuration];

  return v4;
}

- (void)_removeSupplementaryViewControllerAtIndex:(unint64_t)a3
{
  if (a3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = [(NCNotificationListSupplementaryViewsGroup *)self _hostingViewControllerAtIndex:?];
    v6 = [(NSMutableArray *)self->_orderedCells objectAtIndex:a3];
    if (v6)
    {
      v7 = [(NCNotificationListPresentableGroup *)self actionsRevealedForNotificationListCell:v6];
    }

    else
    {
      v7 = 0;
    }

    [(NSMutableArray *)self->_orderedCells removeObjectAtIndex:a3];
    v8 = [(NCNotificationListPresentableGroup *)self listView];
    [v8 removeViewAtIndex:a3 animated:1 isHorizontallyDisplaced:v7];

    v9 = [(NCNotificationListPresentableGroup *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [v9 notificationListBaseComponent:self didRemoveViewController:v5];
    }
  }

  if ([(NCNotificationListSupplementaryViewsGroup *)self count]== 1)
  {
    [(NCNotificationListSupplementaryViewsGroup *)self _setGrouped:1];

    [(NCNotificationListSupplementaryViewsGroup *)self _updateUserInteraction];
  }
}

- (void)_setGrouped:(BOOL)a3
{
  v3 = a3;
  v5 = [(NCNotificationListPresentableGroup *)self listView];
  [v5 setGrouped:v3];

  v6 = [(NCNotificationListPresentableGroup *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v6 notificationListSupplementaryViewsGroup:self didSetGrouped:v3];
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
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_fault_impl(&dword_21E77E000, log, OS_LOG_TYPE_FAULT, "Unexpectedly didn't recieve animator from delegate: %@, for object: %@", &v3, 0x16u);
}

@end