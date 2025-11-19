@interface NCNotificationStructuredSectionList
- (BOOL)_areNotificationsLoadedForSectionIdentifier:(id)a3;
- (BOOL)_removeFilteredNotificationRequest:(id)a3;
- (BOOL)_removeHiddenNotificationRequest:(id)a3;
- (BOOL)_removePreloadedNotificationRequest:(id)a3;
- (BOOL)_shouldFilterNotificationRequest:(id)a3;
- (BOOL)_shouldHideForSectionIdentifier:(id)a3;
- (BOOL)_shouldHideNotificationGroupList:(id)a3;
- (BOOL)_shouldHideNotificationRequest:(id)a3;
- (BOOL)_shouldPreloadNotificationRequest:(id)a3;
- (BOOL)adjustForContentSizeCategoryChange;
- (BOOL)canAlignContentToBottomForLeadingNotificationRequestForNotificationGroupList:(id)a3;
- (BOOL)conformsToProtocol:(id)a3;
- (BOOL)containsNotificationGroup:(id)a3;
- (BOOL)containsNotificationRequest:(id)a3;
- (BOOL)handleTapOnNotificationListBaseComponent:(id)a3;
- (BOOL)hasNotificationGroupExpanded;
- (BOOL)hasVisibleContentToReveal;
- (BOOL)isEligibleToPerformGroupAnimationForNotificationListBaseComponent:(id)a3 toGrouped:(BOOL)a4;
- (BOOL)isNotificationGroupListInCollapsedStack:(id)a3;
- (BOOL)isPerformingDynamicGrouping;
- (BOOL)isSectionListCurrentlyGroupedWithContentShown;
- (BOOL)isSectionVisible;
- (BOOL)isShowingSummarizedStackForNotificationRequest:(id)a3;
- (BOOL)isViewVisibleForNotificationGroupList:(id)a3;
- (BOOL)notificationListComponent:(id)a3 shouldAllowInteractionsForNotificationRequest:(id)a4;
- (BOOL)regroupNotificationGroups;
- (BOOL)removeNotificationRequest:(id)a3;
- (BOOL)respondsToSelector:(SEL)a3;
- (BOOL)shouldAlignContentToBottomForLeadingNotificationRequestForNotificationGroupList:(id)a3;
- (BOOL)shouldNotificationGroupListPanHorizontally:(id)a3;
- (BOOL)shouldShowSummaryTextAsContentForLeadingNotificationRequestForNotificationGroupList:(id)a3;
- (NCAnimator)animator;
- (NCNotificationListComponentDelegate)delegate;
- (NCNotificationListView)listView;
- (NCNotificationStructuredSectionList)initWithTitle:(id)a3 sectionType:(unint64_t)a4;
- (NSArray)allNotificationGroups;
- (NSArray)allNotificationGroupsIncludingHidden;
- (NSArray)allNotificationRequests;
- (NSArray)orderedNotificationListComponents;
- (NSDate)comparisonDate;
- (double)collapsedHeight;
- (double)expandedHeight;
- (double)expandedHeightIgnoringNotificationStacks;
- (double)headerViewHeightForNotificationList:(id)a3 withWidth:(double)a4;
- (double)notificationListView:(id)a3 heightForItemAtIndex:(unint64_t)a4 withWidth:(double)a5 inDisplayListAsStackMode:(BOOL)a6 ignoreExpandedGroupStack:(BOOL)a7;
- (id)_backgroundGroupNameBase;
- (id)_collapsedSectionSummaryString;
- (id)_groupListForPreloadedNotificationRequest:(id)a3 createNewIfNecessary:(BOOL)a4;
- (id)_highlightsList;
- (id)_legibilitySettings;
- (id)_newGroupListForNotificationRequest:(id)a3;
- (id)_newSectionHeaderView;
- (id)_sectionSettingsForSectionIdentifier:(id)a3;
- (id)collapsedSectionSummaryStringForLeadingNotificationRequestForNotificationGroupList:(id)a3;
- (id)containerViewForHeaderViewPreviewInteractionPresentedContent:(id)a3;
- (id)headerViewForNotificationList:(id)a3;
- (id)legibilitySettingsForSectionHeaderView:(id)a3;
- (id)notificationGroupList:(id)a3 requestsAuxiliaryOptionsContentProviderForNotificationRequest:(id)a4 isLongLook:(BOOL)a5;
- (id)notificationListComponent:(id)a3 containerViewProviderForExpandedContentForViewController:(id)a4;
- (id)notificationListView:(id)a3 viewForItemAtIndex:(unint64_t)a4;
- (id)removeNotificationGroupListsForMigrationPassingTest:(id)a3 filterRequestsPassingTest:(id)a4 animate:(BOOL)a5;
- (int64_t)insertNotificationRequest:(id)a3;
- (unint64_t)_existingIndexOfGroupForNotificationRequest:(id)a3;
- (unint64_t)_existingIndexOfGroupForNotificationRequest:(id)a3 inNotificationGroupLists:(id)a4;
- (unint64_t)_existingIndexOfGroupForNotificationRequest:(id)a3 withSectionIdentifier:(id)a4 threadIdentifier:(id)a5 inNotificationGroupLists:(id)a6;
- (unint64_t)_existingIndexOfGroupForNotificationRequestForRemoval:(id)a3;
- (unint64_t)_groupingSettingForSectionIdentifier:(id)a3;
- (unint64_t)_indexOfOrderedNotificationListComponent:(id)a3;
- (unint64_t)_insertionIndexForGroup:(id)a3;
- (unint64_t)count;
- (unint64_t)dynamicGroupingThreshold;
- (unint64_t)existingIndexOfGroupForNotificationRequestForInsertion:(id)a3;
- (unint64_t)importantAdornmentEligibleOptionsForNotificationGroupList:(id)a3;
- (unint64_t)itemCountWithExpandedGroup;
- (unint64_t)notificationCount;
- (unint64_t)notificationCountIncludingHidden;
- (unint64_t)notificationListViewNumberOfItems:(id)a3;
- (void)_addHiddenNotificationGroupList:(id)a3;
- (void)_configureSectionListView:(id)a3;
- (void)_filterNotificationRequest:(id)a3;
- (void)_filterNotificationRequestsForSectionIdentifier:(id)a3;
- (void)_hideNotificationGroupsOnDeviceReauthentication;
- (void)_hideNotificationGroupsPassingTest:(id)a3;
- (void)_insertPreloadedNotificationRequest:(id)a3;
- (void)_insertViewToListAtIndex:(unint64_t)a3 animated:(BOOL)a4;
- (void)_modifyHiddenNotificationRequest:(id)a3;
- (void)_modifyPreloadedNotificationRequest:(id)a3;
- (void)_postPreloadedNotificationRequestsForSectionIdentifier:(id)a3;
- (void)_reloadLeadingNotificationRequestsForStackedNotificationGroupListsWithForceReloadAllStacks:(BOOL)a3;
- (void)_removeNotificationGroupList:(id)a3 animated:(BOOL)a4;
- (void)_removeViewFromListAtIndex:(unint64_t)a3 animated:(BOOL)a4 isHorizontallyDisplaced:(BOOL)a5;
- (void)_showHiddenNotificationGroupsOnDeviceAuthentication;
- (void)_showHiddenNotificationGroupsPassingTest:(id)a3;
- (void)_showHiddenNotificationRequestsPassingTest:(id)a3;
- (void)_toggleDynamicGroupingIfNecessaryForced:(BOOL)a3;
- (void)_toggleHiddenNotificationsOnAuthenticationChange:(BOOL)a3;
- (void)_unfilterNotificationRequestsForSectionIdentifier:(id)a3;
- (void)_updatePositionOfGroup:(id)a3 atIndex:(unint64_t)a4;
- (void)adjustForLegibilitySettingsChange:(id)a3;
- (void)clearAll;
- (void)collapseGroupForNotificationRequest:(id)a3 withCompletion:(id)a4;
- (void)didExitAlwaysOn;
- (void)expandGroupForNotificationRequest:(id)a3 withCompletion:(id)a4;
- (void)forwardInvocation:(id)a3;
- (void)handleCoverSheetVisibilityChange:(BOOL)a3;
- (void)handleWake:(BOOL)a3;
- (void)mergeNotificationGroups:(id)a3 reorderGroupNotifications:(BOOL)a4;
- (void)modifyNotificationRequest:(id)a3;
- (void)notificationListBaseComponent:(id)a3 didRemoveView:(id)a4;
- (void)notificationListBaseComponent:(id)a3 didTransitionActionsForSwipeInteraction:(id)a4 revealed:(BOOL)a5;
- (void)notificationListBaseComponent:(id)a3 willRemoveView:(id)a4;
- (void)notificationListBaseComponentDidRemoveAll:(id)a3;
- (void)notificationListComponent:(id)a3 didRemoveNotificationRequest:(id)a4;
- (void)notificationListComponent:(id)a3 isPresentingLongLookForViewController:(id)a4;
- (void)notificationListComponent:(id)a3 shouldFinishLongLookTransitionForNotificationRequest:(id)a4 trigger:(int64_t)a5 withCompletionBlock:(id)a6;
- (void)notificationListPresentableGroup:(id)a3 requestsScrollToTopOfCollectionWithCompletion:(id)a4;
- (void)notificationsLoadedForSectionIdentifier:(id)a3;
- (void)recycleView:(id)a3;
- (void)reloadNotificationRequest:(id)a3;
- (void)sectionHeaderView:(id)a3 didReceiveClearActionForSectionIdentifier:(id)a4;
- (void)sectionHeaderViewDidBeginForceTouchInteraction:(id)a3;
- (void)sectionHeaderViewDidDismissForceTouchView:(id)a3;
- (void)sectionHeaderViewDidPresentForceTouchView:(id)a3;
- (void)sectionHeaderViewDidReceiveClearAllAction:(id)a3;
- (void)sectionHeaderViewDidTransitionToClearState:(id)a3;
- (void)setDeviceAuthenticated:(BOOL)a3;
- (void)setLogDescription:(id)a3;
- (void)setNotificationListCache:(id)a3;
- (void)setSectionListViewGroupedWithContentShown:(BOOL)a3;
- (void)setTitle:(id)a3;
- (void)sortNotificationGroupListsIfNecessary;
- (void)toggleFilteringForSectionIdentifier:(id)a3 shouldFilter:(BOOL)a4;
- (void)updateNotificationSectionSettings:(id)a3 previousSectionSettings:(id)a4;
- (void)updateNotificationSystemSettings:(id)a3 previousSystemSettings:(id)a4;
@end

@implementation NCNotificationStructuredSectionList

- (unint64_t)notificationCount
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v2 = [(NCNotificationStructuredSectionList *)self notificationGroups];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __56__NCNotificationStructuredSectionList_notificationCount__block_invoke;
  v5[3] = &unk_278370650;
  v5[4] = &v6;
  [v2 enumerateObjectsUsingBlock:v5];

  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)_showHiddenNotificationGroupsOnDeviceAuthentication
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __90__NCNotificationStructuredSectionList__showHiddenNotificationGroupsOnDeviceAuthentication__block_invoke;
  v3[3] = &unk_2783701A8;
  v3[4] = self;
  [(NCNotificationStructuredSectionList *)self _showHiddenNotificationGroupsPassingTest:v3];
  [(NCNotificationStructuredSectionList *)self _showHiddenNotificationRequestsPassingTest:0];
}

- (BOOL)isPerformingDynamicGrouping
{
  v3 = [(NCNotificationStructuredSectionList *)self supportsDynamicGrouping];
  if (v3)
  {

    LOBYTE(v3) = [(NCNotificationStructuredSectionList *)self isDynamicGroupingActive];
  }

  return v3;
}

- (void)sortNotificationGroupListsIfNecessary
{
  v2 = self;
  v35 = *MEMORY[0x277D85DE8];
  v3 = [(NCNotificationStructuredSectionList *)self groupListsToSort];
  v4 = [v3 count];

  if (v4)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v5 = [(NCNotificationStructuredSectionList *)v2 groupListsToSort];
    v6 = [v5 countByEnumeratingWithState:&v26 objects:v34 count:16];
    if (v6)
    {
      v8 = v6;
      v9 = *v27;
      v10 = MEMORY[0x277D77DD0];
      *&v7 = 138543618;
      v24 = v7;
      v25 = v5;
      do
      {
        v11 = 0;
        do
        {
          if (*v27 != v9)
          {
            objc_enumerationMutation(v5);
          }

          v12 = *(*(&v26 + 1) + 8 * v11);
          v13 = [(NCNotificationStructuredSectionList *)v2 notificationGroups];
          v14 = [v13 indexOfObject:v12];

          if (v14 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v15 = *v10;
            if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
            {
              v16 = v15;
              v17 = [(NCNotificationStructuredSectionList *)v2 logDescription];
              [v12 logDescription];
              v18 = v2;
              v19 = v8;
              v20 = v9;
              v22 = v21 = v10;
              *buf = v24;
              v31 = v17;
              v32 = 2112;
              v33 = v22;
              _os_log_impl(&dword_21E77E000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ sorting group %@", buf, 0x16u);

              v10 = v21;
              v9 = v20;
              v8 = v19;
              v2 = v18;

              v5 = v25;
            }

            [(NCNotificationStructuredSectionList *)v2 _updatePositionOfGroup:v12 atIndex:v14];
          }

          ++v11;
        }

        while (v8 != v11);
        v8 = [v5 countByEnumeratingWithState:&v26 objects:v34 count:16];
      }

      while (v8);
    }

    v23 = [(NCNotificationStructuredSectionList *)v2 groupListsToSort];
    [v23 removeAllObjects];
  }
}

- (NCNotificationListView)listView
{
  listView = self->_listView;
  if (!listView)
  {
    v4 = [NCNotificationListView alloc];
    v5 = objc_opt_class();
    v6 = NCNotificationListSectionTypeString(self->_sectionType);
    v7 = [(NCNotificationListView *)v4 initWithModelType:v5 purpose:v6];
    v8 = self->_listView;
    self->_listView = v7;

    [(NCNotificationStructuredSectionList *)self _configureSectionListView:self->_listView];
    listView = self->_listView;
  }

  return listView;
}

- (unint64_t)notificationCountIncludingHidden
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v3 = [(NCNotificationStructuredSectionList *)self notificationGroups];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __71__NCNotificationStructuredSectionList_notificationCountIncludingHidden__block_invoke;
  v9[3] = &unk_278370650;
  v9[4] = &v10;
  [v3 enumerateObjectsUsingBlock:v9];

  v4 = [(NCNotificationStructuredSectionList *)self hiddenNotificationGroups];
  v5 = [v4 allObjects];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __71__NCNotificationStructuredSectionList_notificationCountIncludingHidden__block_invoke_2;
  v8[3] = &unk_278370650;
  v8[4] = &v10;
  [v5 enumerateObjectsUsingBlock:v8];

  v6 = v11[3];
  _Block_object_dispose(&v10, 8);
  return v6;
}

- (BOOL)isSectionVisible
{
  v3 = [(NCNotificationStructuredSectionList *)self listView];
  if ([v3 isRevealed])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(NCNotificationStructuredSectionList *)self listView];
    [v5 revealPercentage];
    v4 = v6 > 0.0;
  }

  return v4;
}

- (unint64_t)count
{
  v2 = [(NCNotificationStructuredSectionList *)self notificationGroups];
  v3 = [v2 count];

  return v3;
}

- (NSArray)allNotificationRequests
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = [(NCNotificationStructuredSectionList *)self notificationGroups];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __62__NCNotificationStructuredSectionList_allNotificationRequests__block_invoke;
  v7[3] = &unk_278370360;
  v5 = v3;
  v8 = v5;
  [v4 enumerateObjectsUsingBlock:v7];

  return v5;
}

- (void)didExitAlwaysOn
{
  if ([(NCNotificationStructuredSectionList *)self isHistorySection])
  {
    listView = self->_listView;

    [(NCNotificationListView *)listView didExitAlwaysOn];
  }
}

uint64_t __56__NCNotificationStructuredSectionList_notificationCount__block_invoke(uint64_t a1, void *a2)
{
  result = [a2 notificationCount];
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

- (NCNotificationListComponentDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __62__NCNotificationStructuredSectionList_allNotificationRequests__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 allNotificationRequests];
  [v2 addObjectsFromArray:v3];
}

- (NSArray)orderedNotificationListComponents
{
  v2 = [(NCNotificationStructuredSectionList *)self notificationGroups];
  v3 = [v2 copy];

  return v3;
}

- (BOOL)isSectionListCurrentlyGroupedWithContentShown
{
  if (![(NCNotificationStructuredSectionList *)self isSectionListViewGroupedWithContentShown])
  {
    return 0;
  }

  v3 = [(NCNotificationStructuredSectionList *)self listView];
  if ([v3 isGrouped])
  {
    v4 = [(NCNotificationStructuredSectionList *)self notificationGroups];
    v5 = [v4 count] > 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NCAnimator)animator
{
  v3 = [(NCNotificationStructuredSectionList *)self delegate];
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

- (id)_collapsedSectionSummaryString
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = [(NCNotificationStructuredSectionList *)self notificationGroups];
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __69__NCNotificationStructuredSectionList__collapsedSectionSummaryString__block_invoke;
  v18 = &unk_27836F7F8;
  v20 = &v21;
  v5 = v3;
  v19 = v5;
  [v4 enumerateObjectsUsingBlock:&v15];

  v6 = [MEMORY[0x277CCAAF0] localizedStringByJoiningStrings:v5];
  v7 = MEMORY[0x277CCABB8];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v22[3]];
  v9 = [v7 localizedStringFromNumber:v8 numberStyle:0];

  v10 = MEMORY[0x277CCACA8];
  v11 = NCUserNotificationsUIKitFrameworkBundle();
  v12 = [v11 localizedStringForKey:@"NOTIFICATION_LIST_STACK_SUMMARY" value:&stru_282FE84F8 table:0];
  v13 = [v10 stringWithFormat:v12, v9, v6, v15, v16, v17, v18];

  _Block_object_dispose(&v21, 8);

  return v13;
}

uint64_t __69__NCNotificationStructuredSectionList__collapsedSectionSummaryString__block_invoke(uint64_t result, void *a2, unint64_t a3)
{
  if (a3 >= 2)
  {
    v4 = result;
    v5 = a2;
    *(*(*(v4 + 40) + 8) + 24) += [v5 notificationCount];
    v6 = [v5 leadingNotificationRequest];

    v7 = [v6 content];
    v8 = [v7 defaultHeader];

    if (v8 && ([*(v4 + 32) containsObject:v8] & 1) == 0)
    {
      [*(v4 + 32) addObject:v8];
    }

    return MEMORY[0x2821F96F8]();
  }

  return result;
}

- (NSArray)allNotificationGroups
{
  v2 = [(NCNotificationStructuredSectionList *)self notificationGroups];
  v3 = [v2 copy];

  return v3;
}

uint64_t __71__NCNotificationStructuredSectionList_notificationCountIncludingHidden__block_invoke(uint64_t a1, void *a2)
{
  result = [a2 notificationCount];
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

- (NSArray)allNotificationGroupsIncludingHidden
{
  v3 = [(NCNotificationStructuredSectionList *)self allNotificationGroups];
  v4 = [(NCNotificationStructuredSectionList *)self hiddenNotificationGroups];
  v5 = [v4 allObjects];

  v6 = [v3 arrayByAddingObjectsFromArray:v5];

  return v6;
}

- (double)collapsedHeight
{
  v2 = [(NCNotificationStructuredSectionList *)self listView];
  [v2 calculateSizeForGrouped:1 ignoreFeaturedLeadingView:0 ignoreExpandedGroupStack:1 inDisplayListAsStackMode:1 dynamicGroupedOverlapHeightMultiple:0];
  v4 = v3;

  return v4;
}

- (double)expandedHeightIgnoringNotificationStacks
{
  v2 = [(NCNotificationStructuredSectionList *)self listView];
  [v2 calculateSizeForGrouped:0 ignoreFeaturedLeadingView:1 ignoreExpandedGroupStack:1 inDisplayListAsStackMode:0 dynamicGroupedOverlapHeightMultiple:0];
  v4 = v3;

  return v4;
}

- (NCNotificationStructuredSectionList)initWithTitle:(id)a3 sectionType:(unint64_t)a4
{
  v7 = a3;
  v23.receiver = self;
  v23.super_class = NCNotificationStructuredSectionList;
  v8 = [(NCNotificationStructuredSectionList *)&v23 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_title, a3);
    v9->_sectionType = a4;
    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    notificationGroups = v9->_notificationGroups;
    v9->_notificationGroups = v10;

    v12 = objc_alloc_init(MEMORY[0x277CBEB58]);
    hiddenNotificationGroups = v9->_hiddenNotificationGroups;
    v9->_hiddenNotificationGroups = v12;

    v14 = objc_alloc_init(MEMORY[0x277CBEB58]);
    hiddenNotificationRequests = v9->_hiddenNotificationRequests;
    v9->_hiddenNotificationRequests = v14;

    v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
    filteredNotificationRequests = v9->_filteredNotificationRequests;
    v9->_filteredNotificationRequests = v16;

    v18 = objc_alloc_init(MEMORY[0x277CBEB38]);
    preloadedNotificationGroups = v9->_preloadedNotificationGroups;
    v9->_preloadedNotificationGroups = v18;

    v20 = objc_alloc_init(MEMORY[0x277CBEB58]);
    groupListsToSort = v9->_groupListsToSort;
    v9->_groupListsToSort = v20;

    *&v9->_dynamicGroupingActive = 1;
    v9->_allowSectionListViewGroupedWithContentShownAnimations = 1;
  }

  return v9;
}

- (BOOL)conformsToProtocol:(id)a3
{
  v4 = a3;
  if (conformsToProtocol__onceToken != -1)
  {
    [NCNotificationStructuredSectionList conformsToProtocol:];
  }

  v5 = 0;
  v6 = 1;
  while (1)
  {
    v7 = v6;
    if (protocol_isEqual(v4, *(&conformsToProtocol__defaultProtocols + v5)))
    {
      break;
    }

    v6 = 0;
    v5 = 1;
    if ((v7 & 1) == 0)
    {
      v10.receiver = self;
      v10.super_class = NCNotificationStructuredSectionList;
      v8 = [(NCNotificationStructuredSectionList *)&v10 conformsToProtocol:v4];
      goto LABEL_8;
    }
  }

  v8 = 1;
LABEL_8:

  return v8;
}

void __58__NCNotificationStructuredSectionList_conformsToProtocol___block_invoke()
{
  objc_storeStrong(conformsToProtocol__defaultProtocols, &unk_283024AB8);

  objc_storeStrong(&conformsToProtocol__defaultProtocols[1], &unk_283021370);
}

- (void)setNotificationListCache:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_notificationListCache, a3);
  v6 = [(NCNotificationStructuredSectionList *)self notificationGroups];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __64__NCNotificationStructuredSectionList_setNotificationListCache___block_invoke;
  v8[3] = &unk_278370360;
  v9 = v5;
  v7 = v5;
  [v6 enumerateObjectsUsingBlock:v8];
}

- (void)setTitle:(id)a3
{
  v7 = a3;
  if (![(NSString *)self->_title isEqualToString:?])
  {
    objc_storeStrong(&self->_title, a3);
    headerView = self->_headerView;
    self->_headerView = 0;

    v6 = [(NCNotificationStructuredSectionList *)self listView];
    [v6 reloadHeaderView];
  }
}

- (id)removeNotificationGroupListsForMigrationPassingTest:(id)a3 filterRequestsPassingTest:(id)a4 animate:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v11 = [(NCNotificationStructuredSectionList *)self notificationGroups];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __125__NCNotificationStructuredSectionList_removeNotificationGroupListsForMigrationPassingTest_filterRequestsPassingTest_animate___block_invoke;
  v21[3] = &unk_2783705D8;
  v12 = v8;
  v24 = v12;
  v13 = v9;
  v25 = v13;
  v14 = v10;
  v22 = v14;
  v23 = self;
  [v11 enumerateObjectsUsingBlock:v21];

  if (v5)
  {
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __125__NCNotificationStructuredSectionList_removeNotificationGroupListsForMigrationPassingTest_filterRequestsPassingTest_animate___block_invoke_4;
    v20[3] = &unk_278370360;
    v20[4] = self;
    [v14 enumerateObjectsUsingBlock:v20];
  }

  else
  {
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __125__NCNotificationStructuredSectionList_removeNotificationGroupListsForMigrationPassingTest_filterRequestsPassingTest_animate___block_invoke_5;
    v19[3] = &unk_278370360;
    v19[4] = self;
    [v14 enumerateObjectsUsingBlock:v19];
    v15 = [(NCNotificationStructuredSectionList *)self notificationGroups];
    [v15 removeObjectsInArray:v14];

    v16 = [(NCNotificationStructuredSectionList *)self listView];
    [v16 invalidateData];
  }

  [(NCNotificationStructuredSectionList *)self _toggleDynamicGroupingIfNecessary];
  v17 = v14;

  return v14;
}

void __125__NCNotificationStructuredSectionList_removeNotificationGroupListsForMigrationPassingTest_filterRequestsPassingTest_animate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 48);
  if (!v4 || (*(v4 + 16))(v4, v3))
  {
    v5 = objc_alloc(MEMORY[0x277CBEB18]);
    v6 = [v3 allNotificationRequests];
    v7 = [v5 initWithArray:v6];

    if (*(a1 + 56))
    {
      v8 = [v3 allNotificationRequests];
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __125__NCNotificationStructuredSectionList_removeNotificationGroupListsForMigrationPassingTest_filterRequestsPassingTest_animate___block_invoke_2;
      v20[3] = &unk_278370588;
      v22 = *(a1 + 56);
      v21 = v7;
      [v8 enumerateObjectsUsingBlock:v20];
    }

    v9 = [v7 count];
    if (v9 == [v3 notificationCount])
    {
      [*(a1 + 32) addObject:v3];
    }

    else if ([v7 count])
    {
      v10 = *(a1 + 40);
      v11 = [v7 firstObject];
      v12 = [v10 _newGroupListForNotificationRequest:v11];

      v14 = MEMORY[0x277D85DD0];
      v15 = 3221225472;
      v16 = __125__NCNotificationStructuredSectionList_removeNotificationGroupListsForMigrationPassingTest_filterRequestsPassingTest_animate___block_invoke_3;
      v17 = &unk_2783705B0;
      v18 = v3;
      v19 = v12;
      v13 = v12;
      [v7 enumerateObjectsUsingBlock:&v14];
      [*(a1 + 32) addObject:{v13, v14, v15, v16, v17}];
    }
  }
}

void __125__NCNotificationStructuredSectionList_removeNotificationGroupListsForMigrationPassingTest_filterRequestsPassingTest_animate___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((*(*(a1 + 40) + 16))())
  {
    [*(a1 + 32) removeObject:v3];
  }
}

void __125__NCNotificationStructuredSectionList_removeNotificationGroupListsForMigrationPassingTest_filterRequestsPassingTest_animate___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 removeNotificationRequest:v4];
  [*(a1 + 40) insertNotificationRequest:v4];
}

void __125__NCNotificationStructuredSectionList_removeNotificationGroupListsForMigrationPassingTest_filterRequestsPassingTest_animate___block_invoke_5(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) notificationGroups];
  v5 = [v4 indexOfObject:v3];

  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v8 = v6;
      v9 = [v7 logDescription];
      v10 = [v3 logDescription];
      v11 = 138543618;
      v12 = v9;
      v13 = 2114;
      v14 = v10;
      _os_log_impl(&dword_21E77E000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ removing notificationGroup %{public}@", &v11, 0x16u);
    }
  }
}

- (void)mergeNotificationGroups:(id)a3 reorderGroupNotifications:(BOOL)a4
{
  v5 = a3;
  v6 = [(NCNotificationStructuredSectionList *)self count];
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __89__NCNotificationStructuredSectionList_mergeNotificationGroups_reorderGroupNotifications___block_invoke;
  v19[3] = &unk_278370628;
  v19[4] = self;
  v8 = v7;
  v20 = v8;
  [v5 enumerateObjectsUsingBlock:v19];

  v9 = [(NCNotificationStructuredSectionList *)self count];
  if (!v6 && v9)
  {
    v10 = [(NCNotificationStructuredSectionList *)self listView];
    [v10 reloadHeaderView];
  }

  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __89__NCNotificationStructuredSectionList_mergeNotificationGroups_reorderGroupNotifications___block_invoke_2_96;
  v16 = &unk_27836F560;
  v17 = v8;
  v18 = self;
  v11 = v8;
  v12 = _Block_copy(&v13);
  if ([(NCNotificationStructuredSectionList *)self sectionType:v13]- 1 <= 1)
  {
    v12[2](v12);
  }

  if ([(NCNotificationStructuredSectionList *)self isSectionListViewGroupedWithContentShown])
  {
    [(NCNotificationStructuredSectionList *)self _reloadLeadingNotificationRequestsForStackedNotificationGroupListsWithForceReloadAllStacks:0];
  }
}

void __89__NCNotificationStructuredSectionList_mergeNotificationGroups_reorderGroupNotifications___block_invoke(uint64_t a1, void *a2)
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([*(a1 + 32) _shouldHideNotificationGroupList:v3])
  {
    v4 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = v4;
      v7 = [v5 logDescription];
      v8 = [v3 logDescription];
      *buf = 138543618;
      v34 = v7;
      v35 = 2114;
      v36 = v8;
      _os_log_impl(&dword_21E77E000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ hiding merged notification group %{public}@", buf, 0x16u);
    }

    [*(a1 + 32) _addHiddenNotificationGroupList:v3];
    v9 = [v3 listView];
    [v9 invalidateData];

    [v3 setDelegate:*(a1 + 32)];
    v10 = [*(a1 + 32) notificationListCache];
    [v3 setNotificationListCache:v10];
  }

  else if ([*(a1 + 32) isPerformingDynamicGrouping])
  {
    v11 = [v3 allNotificationRequests];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __89__NCNotificationStructuredSectionList_mergeNotificationGroups_reorderGroupNotifications___block_invoke_93;
    v32[3] = &unk_27836F610;
    v32[4] = *(a1 + 32);
    [v11 enumerateObjectsUsingBlock:v32];
  }

  else
  {
    v12 = [*(a1 + 32) notificationGroups];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __89__NCNotificationStructuredSectionList_mergeNotificationGroups_reorderGroupNotifications___block_invoke_2;
    v30[3] = &unk_278370600;
    v13 = v3;
    v31 = v13;
    v14 = [v12 indexOfObjectPassingTest:v30];

    if (v14 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v15 = *MEMORY[0x277D77DD0];
      if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
      {
        v16 = *(a1 + 32);
        v17 = v15;
        v18 = [v16 logDescription];
        v19 = [v13 logDescription];
        *buf = 138543618;
        v34 = v18;
        v35 = 2114;
        v36 = v19;
        _os_log_impl(&dword_21E77E000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@ inserting merged notification group %{public}@", buf, 0x16u);
      }

      v20 = [v13 allNotificationRequests];
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __89__NCNotificationStructuredSectionList_mergeNotificationGroups_reorderGroupNotifications___block_invoke_95;
      v29[3] = &unk_27836F610;
      v29[4] = *(a1 + 32);
      [v20 enumerateObjectsUsingBlock:v29];
    }

    else
    {
      v21 = [*(a1 + 32) notificationGroups];
      v22 = [v21 objectAtIndex:v14];

      v23 = *MEMORY[0x277D77DD0];
      if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
      {
        v24 = *(a1 + 32);
        v25 = v23;
        v26 = [v24 logDescription];
        v27 = [v13 logDescription];
        *buf = 138543618;
        v34 = v26;
        v35 = 2114;
        v36 = v27;
        _os_log_impl(&dword_21E77E000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@ merging notification group %{public}@ with existing group", buf, 0x16u);
      }

      v28 = [v13 allNotificationRequests];
      [v22 mergeNotificationRequests:v28];

      [*(a1 + 32) _updatePositionOfGroup:v22 atIndex:v14];
      [*(a1 + 40) addObject:v22];
    }
  }
}

uint64_t __89__NCNotificationStructuredSectionList_mergeNotificationGroups_reorderGroupNotifications___block_invoke_2_96(uint64_t a1)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __89__NCNotificationStructuredSectionList_mergeNotificationGroups_reorderGroupNotifications___block_invoke_3;
  v3[3] = &unk_278370360;
  v1 = *(a1 + 32);
  v3[4] = *(a1 + 40);
  return [v1 enumerateObjectsUsingBlock:v3];
}

void __89__NCNotificationStructuredSectionList_mergeNotificationGroups_reorderGroupNotifications___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 listView];
  if ([v4 isRevealed])
  {
    v5 = [v3 listView];
    [v5 revealPercentage];
    v6 = BSFloatApproximatelyEqualToFloat();

    if (v6)
    {
      goto LABEL_8;
    }
  }

  else
  {
  }

  v7 = *MEMORY[0x277D77DD0];
  if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_ERROR))
  {
    __89__NCNotificationStructuredSectionList_mergeNotificationGroups_reorderGroupNotifications___block_invoke_3_cold_1(a1, v7, v3);
  }

  v8 = [v3 listView];
  [v8 setRevealed:1];

  v9 = [v3 listView];
  [v9 setRevealPercentage:1.0];

LABEL_8:
}

- (BOOL)regroupNotificationGroups
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v2 = [(NCNotificationStructuredSectionList *)self notificationGroups];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __64__NCNotificationStructuredSectionList_regroupNotificationGroups__block_invoke;
  v4[3] = &unk_278370650;
  v4[4] = &v5;
  [v2 enumerateObjectsUsingBlock:v4];

  LOBYTE(v2) = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __64__NCNotificationStructuredSectionList_regroupNotificationGroups__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    v4 = 1;
  }

  else
  {
    v4 = ([v3 isGrouped] & 1) == 0 && objc_msgSend(v5, "notificationCount") > 1;
    v3 = v5;
  }

  *(*(*(a1 + 32) + 8) + 24) = v4;
  [v3 setGrouped:1 animated:0];
}

- (void)toggleFilteringForSectionIdentifier:(id)a3 shouldFilter:(BOOL)a4
{
  if (a4)
  {
    [(NCNotificationStructuredSectionList *)self _filterNotificationRequestsForSectionIdentifier:a3];
  }

  else
  {
    [(NCNotificationStructuredSectionList *)self _unfilterNotificationRequestsForSectionIdentifier:a3];
  }
}

- (void)clearAll
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D77DD0];
  if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    v5 = [(NCNotificationStructuredSectionList *)self logDescription];
    *buf = 138543362;
    v21 = v5;
    _os_log_impl(&dword_21E77E000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ is clearing all notification requests", buf, 0xCu);
  }

  v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v8 = [(NCNotificationStructuredSectionList *)self notificationGroups];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __47__NCNotificationStructuredSectionList_clearAll__block_invoke;
  v17[3] = &unk_27836F718;
  v17[4] = self;
  v9 = v7;
  v18 = v9;
  v10 = v6;
  v19 = v10;
  [v8 enumerateObjectsUsingBlock:v17];

  v11 = [(NCNotificationStructuredSectionList *)self delegate];
  [v11 notificationListBaseComponent:self requestsClearingPresentables:v10];
  v12 = [(NCNotificationStructuredSectionList *)self notificationGroups];
  v13 = [v12 count];

  if (v13 >= 1)
  {
    v14 = (v13 & 0x7FFFFFFF) + 1;
    do
    {
      v15 = [(NCNotificationStructuredSectionList *)self notificationGroups];
      v16 = [v15 objectAtIndex:v14 - 2];

      if ([v9 containsObject:v16])
      {
        [(NCNotificationStructuredSectionList *)self _removeNotificationGroupList:v16];
      }

      --v14;
    }

    while (v14 > 1);
  }

  if (![(NCNotificationStructuredSectionList *)self count])
  {
    [v11 notificationStructuredSectionListDidClearAllNotificationRequests:self];
  }
}

void __47__NCNotificationStructuredSectionList_clearAll__block_invoke(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = [v11 allNotificationRequests];
  v4 = [v3 firstObject];
  v5 = [v4 options];
  v6 = [v5 lockScreenPriority];

  v7 = [v4 options];
  v8 = [v7 lockScreenPersistence];

  if (([*(a1 + 32) _shouldClearPersistentNotificationRequests] & 1) != 0 || !v8 || v6 == 100)
  {
    [*(a1 + 40) addObject:v11];
    v9 = *(a1 + 48);
    v10 = [v11 allNotificationRequests];
    [v9 addObjectsFromArray:v10];
  }
}

- (void)expandGroupForNotificationRequest:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NCNotificationStructuredSectionList *)self notificationGroups];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __88__NCNotificationStructuredSectionList_expandGroupForNotificationRequest_withCompletion___block_invoke;
  v11[3] = &unk_278370678;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [v8 enumerateObjectsUsingBlock:v11];
}

uint64_t __88__NCNotificationStructuredSectionList_expandGroupForNotificationRequest_withCompletion___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  v6 = [v8 isLeadingNotificationRequest:*(a1 + 32)];
  if (v6)
  {
    [v8 setGrouped:0 animated:1];
    v6 = *(a1 + 40);
    if (v6)
    {
      v6 = (*(v6 + 16))();
    }

    *a4 = 1;
  }

  return MEMORY[0x2821F96F8](v6);
}

- (void)collapseGroupForNotificationRequest:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NCNotificationStructuredSectionList *)self notificationGroups];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __90__NCNotificationStructuredSectionList_collapseGroupForNotificationRequest_withCompletion___block_invoke;
  v11[3] = &unk_278370678;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [v8 enumerateObjectsUsingBlock:v11];
}

uint64_t __90__NCNotificationStructuredSectionList_collapseGroupForNotificationRequest_withCompletion___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  v6 = [v8 isLeadingNotificationRequest:*(a1 + 32)];
  if (v6)
  {
    [v8 setGrouped:1 animated:1];
    v6 = *(a1 + 40);
    if (v6)
    {
      v6 = (*(v6 + 16))();
    }

    *a4 = 1;
  }

  return MEMORY[0x2821F96F8](v6);
}

- (BOOL)hasVisibleContentToReveal
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(NCNotificationStructuredSectionList *)self notificationGroups];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __64__NCNotificationStructuredSectionList_hasVisibleContentToReveal__block_invoke;
  v5[3] = &unk_27836F870;
  v5[4] = v2;
  v5[5] = &v6;
  [v3 enumerateObjectsUsingBlock:v5];

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

void __64__NCNotificationStructuredSectionList_hasVisibleContentToReveal__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = *(a1 + 32);
  v7 = [a2 sectionIdentifier];
  v11 = [v6 _sectionSettingsForSectionIdentifier:v7];

  v8 = v11;
  if (v11)
  {
    v9 = [v11 contentPreviewSetting] == 1;
    v8 = v11;
    v10 = v9;
    *(*(*(a1 + 40) + 8) + 24) = v10;
  }

  *a4 = *(*(*(a1 + 40) + 8) + 24);
}

- (void)setSectionListViewGroupedWithContentShown:(BOOL)a3
{
  if (self->_sectionListViewGroupedWithContentShown != a3)
  {
    v14 = v3;
    v15 = v4;
    v5 = a3;
    self->_sectionListViewGroupedWithContentShown = a3;
    if (a3)
    {
      [(NCNotificationStructuredSectionList *)self _toggleDynamicGroupingIfNecessaryForced:1];
    }

    [(NCNotificationStructuredSectionList *)self setSupportsDynamicGrouping:v5 ^ 1];
    v7 = [(NCNotificationStructuredSectionList *)self listView];
    [v7 setSupportsGrouping:v5];

    v8 = [(NCNotificationStructuredSectionList *)self listView];
    [v8 setGrouped:v5];

    v9 = [(NCNotificationStructuredSectionList *)self listView];
    [v9 setShowContentForGroupedViews:v5];

    v10 = [(NCNotificationStructuredSectionList *)self listView];
    [v10 setGroupedOverlapHeightMultiple:4.0];

    v11 = [(NCNotificationStructuredSectionList *)self allNotificationGroups];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __81__NCNotificationStructuredSectionList_setSectionListViewGroupedWithContentShown___block_invoke;
    v12[3] = &__block_descriptor_33_e40_v32__0__NCNotificationGroupList_8Q16_B24l;
    v13 = v5;
    [v11 enumerateObjectsUsingBlock:v12];

    [(NCNotificationStructuredSectionList *)self _reloadLeadingNotificationRequestsForStackedNotificationGroupListsWithForceReloadAllStacks:1];
  }
}

void __81__NCNotificationStructuredSectionList_setSectionListViewGroupedWithContentShown___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 listView];
  [v3 setShowContentForGroupedViews:*(a1 + 32)];
}

- (void)_reloadLeadingNotificationRequestsForStackedNotificationGroupListsWithForceReloadAllStacks:(BOOL)a3
{
  v5 = [(NCNotificationStructuredSectionList *)self allowSectionListViewGroupedWithContentShownAnimations];
  v6 = [(NCNotificationStructuredSectionList *)self notificationGroups];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __130__NCNotificationStructuredSectionList__reloadLeadingNotificationRequestsForStackedNotificationGroupListsWithForceReloadAllStacks___block_invoke;
  v7[3] = &unk_2783706C0;
  v7[4] = self;
  v8 = a3;
  v9 = v5;
  [v6 enumerateObjectsUsingBlock:v7];
}

void __130__NCNotificationStructuredSectionList__reloadLeadingNotificationRequestsForStackedNotificationGroupListsWithForceReloadAllStacks___block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = a2;
  v10 = v5;
  if (a3 > 2)
  {
    v9 = [v5 listView];
    [v9 setGroupedOverlapHeightMultiple:1.0];

    if (*(a1 + 40) != 1)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v6 = 1.0;
    if ([*(a1 + 32) isSectionListCurrentlyGroupedWithContentShown])
    {
      v7 = [*(a1 + 32) notificationGroups];
      if ([v7 count] <= 1)
      {
        v6 = 1.0;
      }

      else
      {
        v6 = 0.0;
      }
    }

    v8 = [v10 listView];
    [v8 setGroupedOverlapHeightMultiple:v6];
  }

  [v10 reloadLeadingNotificationRequestWithAnimation:*(a1 + 41)];
LABEL_10:
}

- (double)expandedHeight
{
  v2 = [(NCNotificationStructuredSectionList *)self listView];
  [v2 calculateSizeForGrouped:0 ignoreFeaturedLeadingView:0 ignoreExpandedGroupStack:0 inDisplayListAsStackMode:0 dynamicGroupedOverlapHeightMultiple:0];
  v4 = v3;

  return v4;
}

- (BOOL)hasNotificationGroupExpanded
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v2 = [(NCNotificationStructuredSectionList *)self allNotificationGroups];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __67__NCNotificationStructuredSectionList_hasNotificationGroupExpanded__block_invoke;
  v4[3] = &unk_278370650;
  v4[4] = &v5;
  [v2 enumerateObjectsUsingBlock:v4];

  LOBYTE(v2) = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __67__NCNotificationStructuredSectionList_hasNotificationGroupExpanded__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  if (([v6 isGrouped] & 1) == 0 && objc_msgSend(v6, "notificationCount") >= 2)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }
}

- (unint64_t)itemCountWithExpandedGroup
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v2 = [(NCNotificationStructuredSectionList *)self allNotificationGroups];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __65__NCNotificationStructuredSectionList_itemCountWithExpandedGroup__block_invoke;
  v5[3] = &unk_278370650;
  v5[4] = &v6;
  [v2 enumerateObjectsUsingBlock:v5];

  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __65__NCNotificationStructuredSectionList_itemCountWithExpandedGroup__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (([v4 isGrouped] & 1) != 0 || objc_msgSend(v4, "notificationCount") < 2)
  {
    v3 = 1;
  }

  else
  {
    v3 = [v4 count];
  }

  *(*(*(a1 + 32) + 8) + 24) += v3;
}

- (int64_t)insertNotificationRequest:(id)a3
{
  v57 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (![(NCNotificationStructuredSectionList *)self _shouldFilterNotificationRequest:v4])
  {
    if ([(NCNotificationStructuredSectionList *)self _shouldHideNotificationRequest:v4])
    {
      v10 = *MEMORY[0x277D77DD0];
      if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
      {
        v11 = v10;
        v12 = [(NCNotificationStructuredSectionList *)self logDescription];
        v13 = [v4 notificationIdentifier];
        v14 = [v13 un_logDigest];
        *v54 = 138543618;
        *&v54[4] = v12;
        *&v54[12] = 2114;
        *&v54[14] = v14;
        _os_log_impl(&dword_21E77E000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ hiding inserted notification request %{public}@", v54, 0x16u);
      }

      v15 = [(NCNotificationStructuredSectionList *)self hiddenNotificationRequests];
      [v15 addObject:v4];

      goto LABEL_13;
    }

    if ([(NCNotificationStructuredSectionList *)self _shouldPreloadNotificationRequest:v4])
    {
      v16 = *MEMORY[0x277D77DD0];
      if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
      {
        v17 = v16;
        v18 = [(NCNotificationStructuredSectionList *)self logDescription];
        v19 = [v4 notificationIdentifier];
        v20 = [v19 un_logDigest];
        v21 = [v4 sectionIdentifier];
        *v54 = 138543874;
        *&v54[4] = v18;
        *&v54[12] = 2114;
        *&v54[14] = v20;
        *&v54[22] = 2114;
        v55 = v21;
        _os_log_impl(&dword_21E77E000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@ preloading inserted notification request %{public}@ for section %{public}@", v54, 0x20u);
      }

      [(NCNotificationStructuredSectionList *)self _insertPreloadedNotificationRequest:v4];
      goto LABEL_13;
    }

    v24 = [(NCNotificationStructuredSectionList *)self count];
    v25 = [(NCNotificationStructuredSectionList *)self existingIndexOfGroupForNotificationRequestForInsertion:v4];
    if (v25 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v26 = [(NCNotificationStructuredSectionList *)self _newGroupListForNotificationRequest:v4];
      v27 = *MEMORY[0x277D77DD0];
      if (!os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_21;
      }

      v28 = v27;
      v29 = [(NCNotificationStructuredSectionList *)self logDescription];
      v30 = [v4 notificationIdentifier];
      v31 = [v30 un_logDigest];
      v32 = [v26 logDescription];
      *v54 = 138543874;
      *&v54[4] = v29;
      *&v54[12] = 2114;
      *&v54[14] = v31;
      *&v54[22] = 2114;
      v55 = v32;
      v33 = "%{public}@ inserting notification request %{public}@ in new group %{public}@";
      v34 = v28;
      v35 = 32;
    }

    else
    {
      v36 = [(NCNotificationStructuredSectionList *)self notificationGroups];
      v26 = [v36 objectAtIndex:v25];

      v37 = *MEMORY[0x277D77DD0];
      if (!os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_21;
      }

      v28 = v37;
      v29 = [(NCNotificationStructuredSectionList *)self logDescription];
      v30 = [v4 notificationIdentifier];
      v31 = [v30 un_logDigest];
      v32 = [v26 logDescription];
      *v54 = 138544130;
      *&v54[4] = v29;
      *&v54[12] = 2114;
      *&v54[14] = v31;
      *&v54[22] = 2114;
      v55 = v32;
      LOWORD(v56) = 2048;
      *(&v56 + 2) = v25;
      v33 = "%{public}@ inserting notification request %{public}@ in existing group %{public}@ at index %ld";
      v34 = v28;
      v35 = 42;
    }

    _os_log_impl(&dword_21E77E000, v34, OS_LOG_TYPE_DEFAULT, v33, v54, v35);

LABEL_21:
    v22 = [v26 insertNotificationRequest:{v4, *v54, *&v54[16], v55, v56}];
    v38 = [v26 listView];
    v39 = [v38 isGrouped];

    if (v39)
    {
      [(NCNotificationStructuredSectionList *)self _updatePositionOfGroup:v26 atIndex:v25];
    }

    v40 = [(NCNotificationStructuredSectionList *)self count];
    if (!v24 && v40)
    {
      v41 = [(NCNotificationStructuredSectionList *)self listView];
      [v41 reloadHeaderView];
    }

    [(NCNotificationStructuredSectionList *)self _toggleDynamicGroupingIfNecessary];
    if ([(NCNotificationStructuredSectionList *)self sectionType]- 1 <= 1)
    {
      v42 = [v26 listView];
      if ([v42 isRevealed])
      {
        v43 = [v26 listView];
        [v43 revealPercentage];
        v44 = BSFloatApproximatelyEqualToFloat();

        if (v44)
        {
          [(NCNotificationStructuredSectionList *)self isSectionListViewGroupedWithContentShown];
LABEL_38:

          goto LABEL_14;
        }
      }

      else
      {
      }

      v45 = *MEMORY[0x277D77DD0];
      if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_ERROR))
      {
        [(NCNotificationStructuredSectionList *)v45 insertNotificationRequest:v26];
      }

      v46 = [v26 listView];
      [v46 setRevealed:1];

      v47 = [v26 listView];
      [v47 setRevealPercentage:1.0];
    }

    if ([(NCNotificationStructuredSectionList *)self isSectionListViewGroupedWithContentShown])
    {
      v48 = *MEMORY[0x277D77DD0];
      if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
      {
        v49 = v48;
        v50 = [(NCNotificationStructuredSectionList *)self logDescription];
        v51 = [v26 leadingNotificationRequest];
        v52 = [v51 notificationIdentifier];
        v53 = [v52 un_logDigest];
        *v54 = 138543618;
        *&v54[4] = v50;
        *&v54[12] = 2114;
        *&v54[14] = v53;
        _os_log_impl(&dword_21E77E000, v49, OS_LOG_TYPE_DEFAULT, "%{public}@ reload leading notification %{public}@", v54, 0x16u);
      }

      [(NCNotificationStructuredSectionList *)self _reloadLeadingNotificationRequestsForStackedNotificationGroupListsWithForceReloadAllStacks:0];
    }

    goto LABEL_38;
  }

  v5 = *MEMORY[0x277D77DD0];
  if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [(NCNotificationStructuredSectionList *)self logDescription];
    v8 = [v4 notificationIdentifier];
    v9 = [v8 un_logDigest];
    *v54 = 138543618;
    *&v54[4] = v7;
    *&v54[12] = 2114;
    *&v54[14] = v9;
    _os_log_impl(&dword_21E77E000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ filtering inserted notification request %{public}@", v54, 0x16u);
  }

  [(NCNotificationStructuredSectionList *)self _filterNotificationRequest:v4];
LABEL_13:
  v22 = 3;
LABEL_14:

  return v22;
}

- (BOOL)removeNotificationRequest:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(NCNotificationStructuredSectionList *)self _shouldFilterNotificationRequest:v4])
  {
    if ([(NCNotificationStructuredSectionList *)self _removeFilteredNotificationRequest:v4])
    {
      v5 = *MEMORY[0x277D77DD0];
      if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
      {
        v6 = v5;
        v7 = [(NCNotificationStructuredSectionList *)self logDescription];
        v8 = [v4 notificationIdentifier];
        v9 = [v8 un_logDigest];
        *v28 = 138543618;
        *&v28[4] = v7;
        *&v28[12] = 2114;
        *&v28[14] = v9;
        v10 = "%{public}@ removing filtered notification request %{public}@";
LABEL_13:
        _os_log_impl(&dword_21E77E000, v6, OS_LOG_TYPE_DEFAULT, v10, v28, 0x16u);

        goto LABEL_14;
      }

      goto LABEL_14;
    }

    goto LABEL_15;
  }

  if ([(NCNotificationStructuredSectionList *)self _shouldHideNotificationRequest:v4])
  {
    if ([(NCNotificationStructuredSectionList *)self _removeHiddenNotificationRequest:v4])
    {
      v11 = *MEMORY[0x277D77DD0];
      if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
      {
        v6 = v11;
        v7 = [(NCNotificationStructuredSectionList *)self logDescription];
        v8 = [v4 notificationIdentifier];
        v9 = [v8 un_logDigest];
        *v28 = 138543618;
        *&v28[4] = v7;
        *&v28[12] = 2114;
        *&v28[14] = v9;
        v10 = "%{public}@ removing hidden notification request %{public}@";
        goto LABEL_13;
      }

LABEL_14:
      v13 = 1;
      goto LABEL_16;
    }

LABEL_15:
    v13 = 0;
    goto LABEL_16;
  }

  if ([(NCNotificationStructuredSectionList *)self _shouldPreloadNotificationRequest:v4])
  {
    if ([(NCNotificationStructuredSectionList *)self _removePreloadedNotificationRequest:v4])
    {
      v12 = *MEMORY[0x277D77DD0];
      if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
      {
        v6 = v12;
        v7 = [(NCNotificationStructuredSectionList *)self logDescription];
        v8 = [v4 notificationIdentifier];
        v9 = [v8 un_logDigest];
        *v28 = 138543618;
        *&v28[4] = v7;
        *&v28[12] = 2114;
        *&v28[14] = v9;
        v10 = "%{public}@ removing preloaded notification request %{public}@";
        goto LABEL_13;
      }

      goto LABEL_14;
    }

    goto LABEL_15;
  }

  v15 = [(NCNotificationStructuredSectionList *)self _existingIndexOfGroupForNotificationRequestForRemoval:v4];
  if (v15 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v13 = 0;
  }

  else
  {
    v16 = v15;
    v17 = [(NCNotificationStructuredSectionList *)self notificationGroups];
    v18 = [v17 objectAtIndex:v16];

    v19 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
    {
      v20 = v19;
      v21 = [(NCNotificationStructuredSectionList *)self logDescription];
      v22 = [v4 notificationIdentifier];
      v23 = [v22 un_logDigest];
      v24 = [v18 logDescription];
      *v28 = 138544130;
      *&v28[4] = v21;
      *&v28[12] = 2114;
      *&v28[14] = v23;
      *&v28[22] = 2114;
      v29 = v24;
      v30 = 2048;
      v31 = v16;
      _os_log_impl(&dword_21E77E000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@ removing notification request %{public}@ in existing group %{public}@ at index %ld", v28, 0x2Au);
    }

    v13 = [v18 removeNotificationRequest:v4];
    if ([v18 count])
    {
      v25 = [v18 listView];
      v26 = [v25 isGrouped];

      if (v26)
      {
        v27 = [(NCNotificationStructuredSectionList *)self groupListsToSort];
        [v27 addObject:v18];
      }
    }

    else
    {
      [(NCNotificationStructuredSectionList *)self _removeNotificationGroupList:v18];
    }
  }

  if ([(NCNotificationStructuredSectionList *)self isSectionListViewGroupedWithContentShown])
  {
    [(NCNotificationStructuredSectionList *)self _reloadLeadingNotificationRequestsForStackedNotificationGroupListsWithForceReloadAllStacks:0];
  }

LABEL_16:
  [(NCNotificationStructuredSectionList *)self _toggleDynamicGroupingIfNecessary:*v28];

  return v13;
}

- (void)modifyNotificationRequest:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(NCNotificationStructuredSectionList *)self _shouldFilterNotificationRequest:v4])
  {
    v5 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
    {
      v6 = v5;
      v7 = [(NCNotificationStructuredSectionList *)self logDescription];
      v8 = [v4 notificationIdentifier];
      v9 = [v8 un_logDigest];
      v30 = 138543618;
      v31 = v7;
      v32 = 2114;
      v33 = v9;
      _os_log_impl(&dword_21E77E000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ modifying filtered notification request %{public}@", &v30, 0x16u);
    }

    [(NCNotificationStructuredSectionList *)self _filterNotificationRequest:v4];
  }

  else if ([(NCNotificationStructuredSectionList *)self _shouldHideNotificationRequest:v4])
  {
    v10 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
    {
      v11 = v10;
      v12 = [(NCNotificationStructuredSectionList *)self logDescription];
      v13 = [v4 notificationIdentifier];
      v14 = [v13 un_logDigest];
      v30 = 138543618;
      v31 = v12;
      v32 = 2114;
      v33 = v14;
      _os_log_impl(&dword_21E77E000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ modifying hidden notification request %{public}@", &v30, 0x16u);
    }

    [(NCNotificationStructuredSectionList *)self _modifyHiddenNotificationRequest:v4];
  }

  else if ([(NCNotificationStructuredSectionList *)self _shouldPreloadNotificationRequest:v4])
  {
    v15 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
    {
      v16 = v15;
      v17 = [(NCNotificationStructuredSectionList *)self logDescription];
      v18 = [v4 notificationIdentifier];
      v19 = [v18 un_logDigest];
      v30 = 138543618;
      v31 = v17;
      v32 = 2114;
      v33 = v19;
      _os_log_impl(&dword_21E77E000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ modifying preloaded notification request %{public}@", &v30, 0x16u);
    }

    [(NCNotificationStructuredSectionList *)self _modifyPreloadedNotificationRequest:v4];
  }

  else
  {
    v20 = [(NCNotificationStructuredSectionList *)self _existingIndexOfGroupForNotificationRequest:v4];
    if (v20 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v21 = v20;
      v22 = [(NCNotificationStructuredSectionList *)self notificationGroups];
      v23 = [v22 objectAtIndex:v21];

      v24 = *MEMORY[0x277D77DD0];
      if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
      {
        v25 = v24;
        v26 = [(NCNotificationStructuredSectionList *)self logDescription];
        v27 = [v4 notificationIdentifier];
        v28 = [v27 un_logDigest];
        v29 = [v23 logDescription];
        v30 = 138544130;
        v31 = v26;
        v32 = 2114;
        v33 = v28;
        v34 = 2114;
        v35 = v29;
        v36 = 2048;
        v37 = v21;
        _os_log_impl(&dword_21E77E000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@ modifying notification request %{public}@ in existing group %{public}@ at index %ld", &v30, 0x2Au);
      }

      [v23 modifyNotificationRequest:v4];
      [(NCNotificationStructuredSectionList *)self _updatePositionOfGroup:v23 atIndex:v21];
      if ([(NCNotificationStructuredSectionList *)self isSectionListViewGroupedWithContentShown])
      {
        [(NCNotificationStructuredSectionList *)self _reloadLeadingNotificationRequestsForStackedNotificationGroupListsWithForceReloadAllStacks:0];
      }
    }
  }
}

- (void)reloadNotificationRequest:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(NCNotificationStructuredSectionList *)self _existingIndexOfGroupForNotificationRequest:v4];
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = v5;
    v7 = [(NCNotificationStructuredSectionList *)self notificationGroups];
    v8 = [v7 objectAtIndex:v6];

    v9 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
    {
      v10 = v9;
      v11 = [(NCNotificationStructuredSectionList *)self logDescription];
      v12 = [v4 notificationIdentifier];
      v13 = [v12 un_logDigest];
      v14 = [v8 logDescription];
      v15 = 138544130;
      v16 = v11;
      v17 = 2114;
      v18 = v13;
      v19 = 2114;
      v20 = v14;
      v21 = 2048;
      v22 = v6;
      _os_log_impl(&dword_21E77E000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ reloading notification request %{public}@ in existing group %{public}@ at index %ld", &v15, 0x2Au);
    }

    [v8 reloadNotificationRequest:v4];
  }
}

- (void)updateNotificationSectionSettings:(id)a3 previousSectionSettings:(id)a4
{
  v58 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 sectionIdentifier];
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v10 = [(NCNotificationStructuredSectionList *)self notificationGroups];
  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = __97__NCNotificationStructuredSectionList_updateNotificationSectionSettings_previousSectionSettings___block_invoke;
  v51[3] = &unk_278370628;
  v11 = v8;
  v52 = v11;
  v12 = v9;
  v53 = v12;
  [v10 enumerateObjectsUsingBlock:v51];

  if (!v7)
  {
    goto LABEL_20;
  }

  v13 = [v6 showsInNotificationCenter];
  if (v13 == [v7 showsInNotificationCenter])
  {
    v15 = 0;
    v14 = 1;
  }

  else
  {
    v14 = [v6 showsInNotificationCenter];
    v15 = [v6 showsInNotificationCenter];
  }

  v16 = [v6 notificationsEnabled];
  v17 = [v7 notificationsEnabled];
  v18 = MEMORY[0x277D77DD0];
  if (v16 == v17)
  {
    if ((v14 & 1) == 0)
    {
LABEL_7:
      v19 = *v18;
      if (os_log_type_enabled(*v18, OS_LOG_TYPE_DEFAULT))
      {
        v20 = v19;
        v21 = [(NCNotificationStructuredSectionList *)self logDescription];
        *buf = 138543618;
        v55 = v21;
        v56 = 2114;
        v57 = v11;
        _os_log_impl(&dword_21E77E000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@ hiding notifications for %{public}@ on settings change", buf, 0x16u);
      }

      v49[0] = MEMORY[0x277D85DD0];
      v49[1] = 3221225472;
      v49[2] = __97__NCNotificationStructuredSectionList_updateNotificationSectionSettings_previousSectionSettings___block_invoke_99;
      v49[3] = &unk_2783701A8;
      v50 = v11;
      [(NCNotificationStructuredSectionList *)self _hideNotificationGroupsPassingTest:v49];

      if ((v15 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_13;
    }
  }

  else if ((v14 & [v6 notificationsEnabled] & 1) == 0)
  {
    goto LABEL_7;
  }

  if (v15)
  {
LABEL_13:
    v22 = *v18;
    if (os_log_type_enabled(*v18, OS_LOG_TYPE_DEFAULT))
    {
      v23 = v22;
      v24 = [(NCNotificationStructuredSectionList *)self logDescription];
      *buf = 138543618;
      v55 = v24;
      v56 = 2114;
      v57 = v11;
      _os_log_impl(&dword_21E77E000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@ showing notifications for %{public}@ on Shows In Notification Center Turned ON", buf, 0x16u);
    }

    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = __97__NCNotificationStructuredSectionList_updateNotificationSectionSettings_previousSectionSettings___block_invoke_101;
    v47[3] = &unk_2783701A8;
    v48 = v11;
    [(NCNotificationStructuredSectionList *)self _showHiddenNotificationGroupsPassingTest:v47];
  }

LABEL_16:
  v25 = [v6 groupingSetting];
  if (v25 != [v7 groupingSetting])
  {
    v26 = *v18;
    if (os_log_type_enabled(*v18, OS_LOG_TYPE_DEFAULT))
    {
      v27 = v26;
      v28 = [(NCNotificationStructuredSectionList *)self logDescription];
      *buf = 138543618;
      v55 = v28;
      v56 = 2114;
      v57 = v11;
      _os_log_impl(&dword_21E77E000, v27, OS_LOG_TYPE_DEFAULT, "%{public}@ changed grouping setting for section %{public}@", buf, 0x16u);
    }

    v29 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __97__NCNotificationStructuredSectionList_updateNotificationSectionSettings_previousSectionSettings___block_invoke_102;
    v44[3] = &unk_278370628;
    v45 = v29;
    v46 = self;
    v30 = v29;
    [v12 enumerateObjectsUsingBlock:v44];
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __97__NCNotificationStructuredSectionList_updateNotificationSectionSettings_previousSectionSettings___block_invoke_2;
    v43[3] = &unk_27836F610;
    v43[4] = self;
    [v30 enumerateObjectsUsingBlock:v43];
  }

LABEL_20:
  v31 = [(NCNotificationStructuredSectionList *)self notificationGroups];
  v36 = MEMORY[0x277D85DD0];
  v37 = 3221225472;
  v38 = __97__NCNotificationStructuredSectionList_updateNotificationSectionSettings_previousSectionSettings___block_invoke_3;
  v39 = &unk_27836F718;
  v40 = v11;
  v41 = v6;
  v42 = v7;
  v32 = v7;
  v33 = v6;
  v34 = v11;
  [v31 enumerateObjectsUsingBlock:&v36];

  v35 = [(NCNotificationStructuredSectionList *)self delegate:v36];
  [v35 notificationListComponentChangedContent:self];
}

void __97__NCNotificationStructuredSectionList_updateNotificationSectionSettings_previousSectionSettings___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 sectionIdentifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  if (v4)
  {
    [*(a1 + 40) addObject:v5];
  }
}

uint64_t __97__NCNotificationStructuredSectionList_updateNotificationSectionSettings_previousSectionSettings___block_invoke_99(uint64_t a1, void *a2)
{
  v3 = [a2 sectionIdentifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

uint64_t __97__NCNotificationStructuredSectionList_updateNotificationSectionSettings_previousSectionSettings___block_invoke_101(uint64_t a1, void *a2)
{
  v3 = [a2 sectionIdentifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

void __97__NCNotificationStructuredSectionList_updateNotificationSectionSettings_previousSectionSettings___block_invoke_102(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = a2;
  v4 = [v5 allNotificationRequests];
  [v3 addObjectsFromArray:v4];

  [*(a1 + 40) _removeNotificationGroupList:v5];
}

void __97__NCNotificationStructuredSectionList_updateNotificationSectionSettings_previousSectionSettings___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = a2;
  v4 = [v3 notificationListCache];
  [v4 clearCacheForNotificationRequest:v5];

  [*(a1 + 32) insertNotificationRequest:v5];
}

void __97__NCNotificationStructuredSectionList_updateNotificationSectionSettings_previousSectionSettings___block_invoke_3(void *a1, void *a2)
{
  v5 = a2;
  v3 = [v5 sectionIdentifier];
  v4 = [v3 isEqualToString:a1[4]];

  if (v4)
  {
    [v5 updateNotificationSectionSettings:a1[5] previousSectionSettings:a1[6]];
  }
}

- (void)updateNotificationSystemSettings:(id)a3 previousSystemSettings:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NCNotificationStructuredSectionList *)self notificationGroups];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __95__NCNotificationStructuredSectionList_updateNotificationSystemSettings_previousSystemSettings___block_invoke;
  v11[3] = &unk_278370628;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [v8 enumerateObjectsUsingBlock:v11];
}

- (void)setDeviceAuthenticated:(BOOL)a3
{
  if (self->_deviceAuthenticated != a3)
  {
    v11 = v3;
    v12 = v4;
    v5 = a3;
    self->_deviceAuthenticated = a3;
    [(NCNotificationStructuredSectionList *)self _toggleHiddenNotificationsOnAuthenticationChange:?];
    if (v5)
    {
      [(NCNotificationStructuredSectionList *)self _showHiddenNotificationGroupsOnDeviceAuthentication];
    }

    else
    {
      [(NCNotificationStructuredSectionList *)self _hideNotificationGroupsOnDeviceReauthentication];
    }

    v7 = [(NCNotificationStructuredSectionList *)self notificationGroups];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __62__NCNotificationStructuredSectionList_setDeviceAuthenticated___block_invoke;
    v9[3] = &__block_descriptor_33_e40_v32__0__NCNotificationGroupList_8Q16_B24l;
    v10 = v5;
    [v7 enumerateObjectsUsingBlock:v9];

    v8 = [(NCNotificationStructuredSectionList *)self listView];
    [v8 setNeedsLayout];
  }
}

- (void)notificationsLoadedForSectionIdentifier:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(NCNotificationStructuredSectionList *)self preloadsNotificationRequests])
  {
    v5 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
    {
      v6 = v5;
      v7 = [(NCNotificationStructuredSectionList *)self logDescription];
      v8 = 138543618;
      v9 = v7;
      v10 = 2114;
      v11 = v4;
      _os_log_impl(&dword_21E77E000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ notifications loaded for section %{public}@", &v8, 0x16u);
    }

    [(NCNotificationStructuredSectionList *)self _postPreloadedNotificationRequestsForSectionIdentifier:v4];
  }
}

- (BOOL)containsNotificationGroup:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v5 = [(NCNotificationStructuredSectionList *)self allNotificationGroups];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __65__NCNotificationStructuredSectionList_containsNotificationGroup___block_invoke;
  v8[3] = &unk_27836F870;
  v6 = v4;
  v9 = v6;
  v10 = &v11;
  [v5 enumerateObjectsUsingBlock:v8];

  LOBYTE(v5) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);

  return v5;
}

uint64_t __65__NCNotificationStructuredSectionList_containsNotificationGroup___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 isEqual:*(a1 + 32)];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

- (BOOL)containsNotificationRequest:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v5 = [(NCNotificationStructuredSectionList *)self allNotificationGroups];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __67__NCNotificationStructuredSectionList_containsNotificationRequest___block_invoke;
  v8[3] = &unk_27836F870;
  v6 = v4;
  v9 = v6;
  v10 = &v11;
  [v5 enumerateObjectsUsingBlock:v8];

  LOBYTE(v5) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);

  return v5;
}

uint64_t __67__NCNotificationStructuredSectionList_containsNotificationRequest___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 containsNotificationRequest:*(a1 + 32)];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

- (void)setLogDescription:(id)a3
{
  v4 = MEMORY[0x277CCACA8];
  v5 = a3;
  v6 = objc_opt_class();
  v9 = NSStringFromClass(v6);
  v7 = [v4 stringWithFormat:@"%@ [%@]", v5, v9];

  logDescription = self->_logDescription;
  self->_logDescription = v7;
}

- (NSDate)comparisonDate
{
  v2 = [(NCNotificationStructuredSectionList *)self notificationGroups];
  v3 = [v2 firstObject];
  v4 = [v3 comparisonDate];

  return v4;
}

- (double)notificationListView:(id)a3 heightForItemAtIndex:(unint64_t)a4 withWidth:(double)a5 inDisplayListAsStackMode:(BOOL)a6 ignoreExpandedGroupStack:(BOOL)a7
{
  v7 = a7;
  v8 = a6;
  v12 = a3;
  v13 = [(NCNotificationStructuredSectionList *)self orderedNotificationListComponents];
  if ([v13 count] > a4)
  {
    v14 = [v13 objectAtIndex:a4];
    if (v14)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v15 = [v14 listView];
        [v15 frame];
        x = v30.origin.x;
        y = v30.origin.y;
        height = v30.size.height;
        if (CGRectGetWidth(v30) == 0.0)
        {
          [v15 setFrame:{x, y, a5, height}];
        }

        v19 = objc_opt_class();
        v20 = v15;
        if (v19)
        {
          if (objc_opt_isKindOfClass())
          {
            v21 = v20;
          }

          else
          {
            v21 = 0;
          }
        }

        else
        {
          v21 = 0;
        }

        v22 = v21;

        if (v22)
        {
          v23 = [v22 isGrouped];
          LODWORD(v24) = 1.0;
          if (v8)
          {
            v25 = [(NCNotificationStructuredSectionList *)self count];
            v24 = 0.0;
            if (v25 == 1)
            {
              *&v24 = 1.0;
            }
          }

          v26 = [MEMORY[0x277CCABB0] numberWithFloat:v24];
          [v22 calculateSizeForGrouped:v23 | v7 ignoreFeaturedLeadingView:0 ignoreExpandedGroupStack:v7 inDisplayListAsStackMode:v8 dynamicGroupedOverlapHeightMultiple:v26];
        }

        else
        {
          [v20 sizeThatFits:{a5, 0.0}];
        }
      }
    }
  }

  UIRoundToViewScale();
  v28 = v27;

  return v28;
}

- (id)notificationListView:(id)a3 viewForItemAtIndex:(unint64_t)a4
{
  v6 = [(NCNotificationStructuredSectionList *)self orderedNotificationListComponents];
  if ([v6 count] <= a4)
  {
    v8 = 0;
  }

  else
  {
    v7 = [v6 objectAtIndex:a4];
    if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v8 = [v7 listView];
      [v8 updateSubviewTranslation:0.0];
      [v8 setShowContentForGroupedViews:{-[NCNotificationStructuredSectionList isSectionListViewGroupedWithContentShown](self, "isSectionListViewGroupedWithContentShown")}];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (unint64_t)notificationListViewNumberOfItems:(id)a3
{
  v3 = [(NCNotificationStructuredSectionList *)self orderedNotificationListComponents];
  v4 = [v3 count];

  return v4;
}

- (id)headerViewForNotificationList:(id)a3
{
  v4 = [(NCNotificationStructuredSectionList *)self title];
  if (v4 && (v5 = v4, v6 = [(NCNotificationStructuredSectionList *)self count], v5, v6))
  {
    headerView = self->_headerView;
    if (!headerView)
    {
      v8 = [(NCNotificationStructuredSectionList *)self _newSectionHeaderView];
      v9 = self->_headerView;
      self->_headerView = v8;

      self->_headerViewHeightValid = 0;
      headerView = self->_headerView;
    }

    v10 = headerView;
  }

  else
  {
    v11 = self->_headerView;
    if (v11)
    {
      self->_headerView = 0;
    }

    v10 = 0;
  }

  return v10;
}

- (double)headerViewHeightForNotificationList:(id)a3 withWidth:(double)a4
{
  if (!self->_headerViewHeightValid)
  {
    v6 = [(NCNotificationStructuredSectionList *)self headerView];

    if (v6)
    {
      v7 = [(NCNotificationStructuredSectionList *)self title];
      v8 = [(NCNotificationStructuredSectionList *)self headerView];
      +[NCNotificationListSectionHeaderView headerHeightWithWidth:title:isShowingCollapseButton:](NCNotificationListSectionHeaderView, "headerHeightWithWidth:title:isShowingCollapseButton:", v7, [v8 showCollapseButton], a4);
      self->_headerViewHeight = v9;
    }

    else
    {
      self->_headerViewHeight = 0.0;
    }

    self->_headerViewHeightValid = 1;
  }

  return self->_headerViewHeight;
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

- (void)handleWake:(BOOL)a3
{
  v3 = a3;
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(NCNotificationStructuredSectionList *)self allNotificationRequests];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [(NCNotificationListCache *)self->_notificationListCache listCellForNotificationRequest:*(*(&v12 + 1) + 8 * v9) viewControllerDelegate:0 createNewIfNecessary:0 shouldConfigure:0];
        v11 = [v10 contentViewController];
        [v11 handleWake:v3];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

- (void)handleCoverSheetVisibilityChange:(BOOL)a3
{
  v15 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v4 = [(NCNotificationStructuredSectionList *)self allNotificationRequests];
    v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      do
      {
        v8 = 0;
        do
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = [(NCNotificationListCache *)self->_notificationListCache listCellForNotificationRequest:*(*(&v10 + 1) + 8 * v8) viewControllerDelegate:0 createNewIfNecessary:0 shouldConfigure:0];
          [v9 hideActionButtonsAnimated:0 fastAnimation:0 completion:0];

          ++v8;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }
  }
}

- (BOOL)respondsToSelector:(SEL)a3
{
  v8.receiver = self;
  v8.super_class = NCNotificationStructuredSectionList;
  if ([(NCNotificationStructuredSectionList *)&v8 respondsToSelector:?])
  {
    v5 = 1;
  }

  else if ([NCNotificationStructuredListUtilities isNotificationListComponentDelegateMethod:a3])
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
  if (+[NCNotificationStructuredListUtilities isNotificationListComponentDelegateMethod:](NCNotificationStructuredListUtilities, "isNotificationListComponentDelegateMethod:", [v4 selector]))
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
      v7.super_class = NCNotificationStructuredSectionList;
      [(NCNotificationStructuredSectionList *)&v7 forwardInvocation:v4];
    }
  }
}

- (id)notificationListComponent:(id)a3 containerViewProviderForExpandedContentForViewController:(id)a4
{
  v5 = a4;
  v6 = [(NCNotificationStructuredSectionList *)self delegate];
  v7 = [v6 notificationListComponent:self containerViewProviderForExpandedContentForViewController:v5];

  return v7;
}

- (void)notificationListComponent:(id)a3 shouldFinishLongLookTransitionForNotificationRequest:(id)a4 trigger:(int64_t)a5 withCompletionBlock:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  [(NCNotificationStructuredSectionList *)self setGroupListPresentingLongLook:v10];
  objc_initWeak(&location, self);
  v13 = [(NCNotificationStructuredSectionList *)self delegate];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __146__NCNotificationStructuredSectionList_notificationListComponent_shouldFinishLongLookTransitionForNotificationRequest_trigger_withCompletionBlock___block_invoke;
  v15[3] = &unk_2783706E8;
  objc_copyWeak(&v17, &location);
  v14 = v12;
  v16 = v14;
  [v13 notificationListComponent:self shouldFinishLongLookTransitionForNotificationRequest:v11 trigger:a5 withCompletionBlock:v15];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

uint64_t __146__NCNotificationStructuredSectionList_notificationListComponent_shouldFinishLongLookTransitionForNotificationRequest_trigger_withCompletionBlock___block_invoke(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained setGroupListPresentingLongLook:0];
  }

  result = *(a1 + 32);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

- (void)notificationListComponent:(id)a3 isPresentingLongLookForViewController:(id)a4
{
  if (a4)
  {
    v5 = a3;
  }

  else
  {
    v5 = 0;
  }

  v6 = a4;
  [(NCNotificationStructuredSectionList *)self setGroupListPresentingLongLook:v5];
  v7 = [(NCNotificationStructuredSectionList *)self delegate];
  [v7 notificationListComponent:self isPresentingLongLookForViewController:v6];

  v8 = [(NCNotificationStructuredSectionList *)self groupListPresentingLongLook];
  if (v8)
  {
  }

  else if ([(NCNotificationStructuredSectionList *)self deferDynamicGroupingForPresentedLongLookOnDeviceLock])
  {

    [(NCNotificationStructuredSectionList *)self _toggleHiddenNotificationsOnAuthenticationChange:0];
  }
}

- (void)notificationListBaseComponentDidRemoveAll:(id)a3
{
  [(NCNotificationStructuredSectionList *)self _removeNotificationGroupList:a3];
  [(NCNotificationStructuredSectionList *)self _toggleDynamicGroupingIfNecessary];
  v4 = [(NCNotificationStructuredSectionList *)self delegate];
  [v4 notificationListBaseComponentDidRemoveAll:self];
}

- (void)notificationListComponent:(id)a3 didRemoveNotificationRequest:(id)a4
{
  v14 = a3;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v14;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  v9 = v8;
  if (v8)
  {
    if ([v8 count])
    {
      v10 = [(NCNotificationStructuredSectionList *)self groupListsToSort];
      [v10 addObject:v9];
LABEL_7:

      goto LABEL_9;
    }

    [(NCNotificationStructuredSectionList *)self _removeNotificationGroupList:v9];
    [(NCNotificationStructuredSectionList *)self _toggleDynamicGroupingIfNecessary];
    v11 = [(NCNotificationStructuredSectionList *)self notificationGroups];
    v12 = [v11 count];

    if (!v12)
    {
      v10 = [(NCNotificationStructuredSectionList *)self listView];
      [v10 reloadHeaderView];
      goto LABEL_7;
    }
  }

LABEL_9:
  v13 = [(NCNotificationStructuredSectionList *)self delegate];
  [v13 notificationListComponent:self didRemoveNotificationRequest:v6];
}

- (void)notificationListBaseComponent:(id)a3 willRemoveView:(id)a4
{
  v6 = a4;
  v5 = [(NCNotificationStructuredSectionList *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 notificationListBaseComponent:self willRemoveView:v6];
  }
}

- (void)notificationListBaseComponent:(id)a3 didRemoveView:(id)a4
{
  v6 = a4;
  v5 = [(NCNotificationStructuredSectionList *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 notificationListBaseComponent:self didRemoveView:v6];
  }
}

- (BOOL)notificationListComponent:(id)a3 shouldAllowInteractionsForNotificationRequest:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (-[NCNotificationStructuredSectionList isSectionListCurrentlyGroupedWithContentShown](self, "isSectionListCurrentlyGroupedWithContentShown") && ((objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) ? (v8 = 0) : (v8 = v6), (v9 = v8) != 0 && (v10 = v9, -[NCNotificationStructuredSectionList notificationGroups](self, "notificationGroups"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 indexOfObject:v10], v11, v10, v12)))
  {
    v13 = 0;
  }

  else
  {
    v14 = [(NCNotificationStructuredSectionList *)self delegate];
    v13 = [v14 notificationListComponent:self shouldAllowInteractionsForNotificationRequest:v7];
  }

  return v13;
}

- (void)notificationListBaseComponent:(id)a3 didTransitionActionsForSwipeInteraction:(id)a4 revealed:(BOOL)a5
{
  v5 = a5;
  v12 = a3;
  v8 = a4;
  v9 = [(NCNotificationStructuredSectionList *)self delegate];
  [v9 notificationListBaseComponent:v12 didTransitionActionsForSwipeInteraction:v8 revealed:v5];

  if (!v5 || (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v11 = v12, (isKindOfClass & 1) == 0))
  {
    v11 = 0;
  }

  [(NCNotificationStructuredSectionList *)self setGroupListWithActionsRevealed:v11];
}

- (id)notificationGroupList:(id)a3 requestsAuxiliaryOptionsContentProviderForNotificationRequest:(id)a4 isLongLook:(BOOL)a5
{
  v5 = a5;
  v7 = a4;
  v8 = [(NCNotificationStructuredSectionList *)self delegate];
  v9 = [v8 notificationStructuredSectionList:self requestsAuxiliaryOptionsContentProviderForNotificationRequest:v7 isLongLook:v5];

  return v9;
}

- (void)notificationListPresentableGroup:(id)a3 requestsScrollToTopOfCollectionWithCompletion:(id)a4
{
  v13 = a4;
  v6 = a3;
  v7 = [(NCNotificationStructuredSectionList *)self notificationGroups];
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
    v9 = [(NCNotificationStructuredSectionList *)self listView];
    [v9 layoutOffsetForViewAtIndex:v8];
    v11 = v10;

    v12 = [(NCNotificationStructuredSectionList *)self delegate];
    [v12 notificationListBaseComponent:self requestsScrollingToContentOffset:v13 withCompletion:v11];
  }
}

- (BOOL)isViewVisibleForNotificationGroupList:(id)a3
{
  v4 = a3;
  v5 = [(NCNotificationStructuredSectionList *)self orderedNotificationListComponents];
  v6 = [v5 indexOfObject:v4];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v8 = [(NCNotificationStructuredSectionList *)self listView];
  v9 = [v8 isVisibleForViewAtIndex:v6];

  return v9;
}

- (BOOL)isNotificationGroupListInCollapsedStack:(id)a3
{
  v4 = [(NCNotificationStructuredSectionList *)self delegate];
  v5 = [(NCNotificationStructuredSectionList *)self listView];
  if ([v5 isGrouped] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v6 = [v4 isNotificationStructuredSectionListCollapsable:self];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)handleTapOnNotificationListBaseComponent:(id)a3
{
  if ([(NCNotificationStructuredSectionList *)self isSectionListViewGroupedWithContentShown])
  {
    v4 = [(NCNotificationStructuredSectionList *)self listView];
    v5 = [v4 isGrouped];

    if (v5)
    {
      v6 = [(NCNotificationStructuredSectionList *)self delegate];
      if (v6 && (objc_opt_respondsToSelector() & 1) != 0 && [v6 handleTapOnNotificationListBaseComponent:self])
      {
        LOBYTE(v5) = 1;
        [(NCNotificationStructuredSectionList *)self _reloadLeadingNotificationRequestsForStackedNotificationGroupListsWithForceReloadAllStacks:1];
      }

      else
      {
        LOBYTE(v5) = 0;
      }
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (BOOL)shouldNotificationGroupListPanHorizontally:(id)a3
{
  v4 = a3;
  v5 = [(NCNotificationStructuredSectionList *)self notificationGroups];
  v6 = [v5 indexOfObject:v4];

  v7 = ![(NCNotificationStructuredSectionList *)self isSectionListCurrentlyGroupedWithContentShown];
  return v6 == 0x7FFFFFFFFFFFFFFFLL || v6 == 0 || v7;
}

- (BOOL)canAlignContentToBottomForLeadingNotificationRequestForNotificationGroupList:(id)a3
{
  sectionType = self->_sectionType;
  v5 = a3;
  v6 = [(NCNotificationStructuredSectionList *)self notificationGroups];
  v7 = [v6 indexOfObject:v5];

  return sectionType == 2 && (v7 - 1) < 2;
}

- (BOOL)shouldAlignContentToBottomForLeadingNotificationRequestForNotificationGroupList:(id)a3
{
  v4 = a3;
  v5 = [(NCNotificationStructuredSectionList *)self notificationGroups];
  v6 = [v5 indexOfObject:v4];

  result = [(NCNotificationStructuredSectionList *)self isSectionListCurrentlyGroupedWithContentShown];
  if ((v6 - 1) >= 2)
  {
    return 0;
  }

  return result;
}

- (id)collapsedSectionSummaryStringForLeadingNotificationRequestForNotificationGroupList:(id)a3
{
  v4 = a3;
  v5 = [(NCNotificationStructuredSectionList *)self notificationGroups];
  v6 = [v5 indexOfObject:v4];

  v7 = [(NCNotificationStructuredSectionList *)self isSectionListCurrentlyGroupedWithContentShown];
  v8 = 0;
  if (v7 && v6 == 2)
  {
    v9 = [(NCNotificationStructuredSectionList *)self notificationGroups];
    v10 = [v9 count];

    if (v10 < 4)
    {
      v8 = 0;
    }

    else
    {
      v8 = [(NCNotificationStructuredSectionList *)self _collapsedSectionSummaryString];
    }
  }

  return v8;
}

- (BOOL)shouldShowSummaryTextAsContentForLeadingNotificationRequestForNotificationGroupList:(id)a3
{
  v4 = a3;
  v5 = [(NCNotificationStructuredSectionList *)self notificationGroups];
  v6 = [v5 count];

  v7 = [(NCNotificationStructuredSectionList *)self notificationGroups];
  v8 = [v7 indexOfObject:v4];

  v9 = [(NCNotificationStructuredSectionList *)self isSectionListViewGroupedWithContentShown];
  v10 = 0;
  if (v9 && v8)
  {
    v10 = (v8 < 2 || v6 == 3) && [v4 notificationCount] > 1;
  }

  return v10;
}

- (unint64_t)importantAdornmentEligibleOptionsForNotificationGroupList:(id)a3
{
  v4 = [(NCNotificationStructuredSectionList *)self sectionType];
  if (v4 > 0xC)
  {
    return -1;
  }

  if (((1 << v4) & 0x1BF9) != 0)
  {
    return -7;
  }

  if (((1 << v4) & 6) != 0)
  {
    return -5;
  }

  v6 = [(NCNotificationStructuredSectionList *)self _highlightsList];
  v7 = [v6 forceExpanded];

  if (v7)
  {
    return -3;
  }

  else
  {
    return -7;
  }
}

- (BOOL)isEligibleToPerformGroupAnimationForNotificationListBaseComponent:(id)a3 toGrouped:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(NCNotificationStructuredSectionList *)self delegate];
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

- (id)_highlightsList
{
  if ([(NCNotificationStructuredSectionList *)self sectionType]== 10)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = self;
    }

    else
    {
      v3 = 0;
    }

    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)sectionHeaderViewDidTransitionToClearState:(id)a3
{
  v4 = a3;
  v5 = [(NCNotificationStructuredSectionList *)self delegate];
  [v5 notificationListComponent:self didTransitionSectionHeaderView:v4 toClearState:1];
}

- (void)sectionHeaderView:(id)a3 didReceiveClearActionForSectionIdentifier:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = *MEMORY[0x277D77DD0];
  if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8 = [(NCNotificationStructuredSectionList *)self logDescription];
    v10 = 138543618;
    v11 = v8;
    v12 = 2114;
    v13 = v5;
    _os_log_impl(&dword_21E77E000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ requests clearing notifications in section with identifier %{public}@", &v10, 0x16u);
  }

  [(NCNotificationStructuredSectionList *)self clearAll];
  v9 = [(NCNotificationStructuredSectionList *)self delegate];
  [v9 notificationListComponentChangedContent:self];
}

- (void)sectionHeaderViewDidReceiveClearAllAction:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277D77DD0];
  if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    v6 = [(NCNotificationStructuredSectionList *)self logDescription];
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&dword_21E77E000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ requests clearing all notifications", &v8, 0xCu);
  }

  v7 = [(NCNotificationStructuredSectionList *)self delegate];
  [v7 notificationListBaseComponentRequestsClearingAll:self];
}

- (id)containerViewForHeaderViewPreviewInteractionPresentedContent:(id)a3
{
  v4 = [(NCNotificationStructuredSectionList *)self delegate];
  v5 = [v4 containerViewForPreviewInteractionPresentedContentForNotificationListBaseComponent:self];

  return v5;
}

- (void)sectionHeaderViewDidBeginForceTouchInteraction:(id)a3
{
  v4 = [(NCNotificationStructuredSectionList *)self delegate];
  [v4 notificationListBaseComponent:self didBeginUserInteractionWithViewController:0];
}

- (void)sectionHeaderViewDidPresentForceTouchView:(id)a3
{
  v4 = a3;
  v5 = [(NCNotificationStructuredSectionList *)self delegate];
  [v5 notificationListComponent:self didPresentSectionHeaderView:v4 inForceTouchState:1];
}

- (void)sectionHeaderViewDidDismissForceTouchView:(id)a3
{
  v4 = a3;
  v5 = [(NCNotificationStructuredSectionList *)self delegate];
  [v5 notificationListComponent:self didPresentSectionHeaderView:v4 inForceTouchState:0];

  [v5 notificationListBaseComponent:self didEndUserInteractionWithViewController:0];
}

- (id)legibilitySettingsForSectionHeaderView:(id)a3
{
  v4 = [(NCNotificationStructuredSectionList *)self delegate];
  v5 = [v4 legibilitySettingsForNotificationListBaseComponent:self];

  return v5;
}

- (void)adjustForLegibilitySettingsChange:(id)a3
{
  v4 = a3;
  v5 = [(NCNotificationStructuredSectionList *)self notificationGroups];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __73__NCNotificationStructuredSectionList_adjustForLegibilitySettingsChange___block_invoke;
  v8[3] = &unk_278370360;
  v9 = v4;
  v6 = v4;
  [v5 enumerateObjectsUsingBlock:v8];

  v7 = [(NCNotificationStructuredSectionList *)self headerView];
  [v7 adjustForLegibilitySettingsChange:v6];
}

- (BOOL)adjustForContentSizeCategoryChange
{
  v3 = [(NCNotificationStructuredSectionList *)self notificationGroups];
  [v3 enumerateObjectsUsingBlock:&__block_literal_global_125];

  v4 = [(NCNotificationStructuredSectionList *)self headerView];
  [v4 adjustForContentSizeCategoryChange];

  self->_headerViewHeightValid = 0;
  return 1;
}

- (void)_insertViewToListAtIndex:(unint64_t)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = [(NCNotificationStructuredSectionList *)self listView];
  [v6 insertViewAtIndex:a3 animated:v4];
}

- (void)_removeViewFromListAtIndex:(unint64_t)a3 animated:(BOOL)a4 isHorizontallyDisplaced:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = [(NCNotificationStructuredSectionList *)self listView];
  [v8 removeViewAtIndex:a3 animated:v6 isHorizontallyDisplaced:v5];
}

uint64_t __71__NCNotificationStructuredSectionList_notificationCountIncludingHidden__block_invoke_2(uint64_t a1, void *a2)
{
  result = [a2 notificationCount];
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

- (unint64_t)_indexOfOrderedNotificationListComponent:(id)a3
{
  v4 = a3;
  v5 = [(NCNotificationStructuredSectionList *)self orderedNotificationListComponents];
  v6 = [v5 indexOfObject:v4];

  return v6;
}

- (void)_configureSectionListView:(id)a3
{
  v6 = a3;
  [v6 setDataSource:self];
  [v6 setGrouped:0];
  [v6 setRevealed:{-[NCNotificationStructuredSectionList isNotificationListViewRevealed](self, "isNotificationListViewRevealed")}];
  v4 = [(NCNotificationStructuredSectionList *)self isNotificationListViewRevealed];
  v5 = 0.0;
  if (v4)
  {
    v5 = 1.0;
  }

  [v6 setRevealPercentage:v5];
  [v6 setShowContentForGroupedViews:{-[NCNotificationStructuredSectionList isSectionListViewGroupedWithContentShown](self, "isSectionListViewGroupedWithContentShown")}];
}

- (unint64_t)_groupingSettingForSectionIdentifier:(id)a3
{
  v3 = [(NCNotificationStructuredSectionList *)self _sectionSettingsForSectionIdentifier:a3];
  v4 = [v3 groupingSetting];

  return v4;
}

- (id)_newGroupListForNotificationRequest:(id)a3
{
  v4 = a3;
  v5 = [NCNotificationGroupList alloc];
  v6 = [v4 sectionIdentifier];
  v7 = [v4 threadIdentifier];
  v8 = [(NCNotificationGroupList *)v5 initWithSectionIdentifier:v6 threadIdentifier:v7];

  [(NCNotificationGroupList *)v8 setDeviceAuthenticated:[(NCNotificationStructuredSectionList *)self deviceAuthenticated]];
  [(NCNotificationListPresentableGroup *)v8 setDelegate:self];
  v9 = [(NCNotificationStructuredSectionList *)self notificationListCache];
  [(NCNotificationListPresentableGroup *)v8 setNotificationListCache:v9];

  v10 = [v4 sectionIdentifier];
  v11 = [(NCNotificationStructuredSectionList *)self _sectionSettingsForSectionIdentifier:v10];
  [(NCNotificationGroupList *)v8 setNotificationSectionSettings:v11];

  v12 = [(NCNotificationStructuredSectionList *)self notificationSystemSettingsForNotificationListComponent:self];
  [(NCNotificationGroupList *)v8 setNotificationSystemSettings:v12];

  v13 = [(NCNotificationStructuredSectionList *)self delegate];
  v14 = [v13 notificationListComponent:self isClockNotificationRequest:v4];

  [(NCNotificationGroupList *)v8 setClockNotificationGroup:v14];
  v15 = [(NCNotificationStructuredSectionList *)self _backgroundGroupNameBase];
  [(NCNotificationListPresentableGroup *)v8 setMaterialGroupNameBase:v15];

  return v8;
}

- (id)_newSectionHeaderView
{
  v3 = [NCNotificationListSectionHeaderView alloc];
  v4 = [(NCNotificationListSectionHeaderView *)v3 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v5 = [(NCNotificationStructuredSectionList *)self title];
  [(NCNotificationListSectionHeaderView *)v4 setTitle:v5];

  [(NCNotificationListSectionHeaderView *)v4 setDelegate:self];
  v6 = [(NCNotificationStructuredSectionList *)self _legibilitySettings];
  [(NCNotificationListSectionHeaderView *)v4 adjustForLegibilitySettingsChange:v6];

  [(NCNotificationListSectionHeaderView *)v4 setAdjustsFontForContentSizeCategory:1];
  v7 = [(NCNotificationStructuredSectionList *)self _backgroundGroupNameBase];
  [(NCNotificationListSectionHeaderView *)v4 setMaterialGroupNameBase:v7];

  return v4;
}

- (unint64_t)existingIndexOfGroupForNotificationRequestForInsertion:(id)a3
{
  v4 = a3;
  v5 = [(NCNotificationStructuredSectionList *)self _notificationGroupsForInsertion];
  v6 = [(NCNotificationStructuredSectionList *)self _existingIndexOfGroupForNotificationRequest:v4 inNotificationGroupLists:v5];

  v7 = 0x7FFFFFFFFFFFFFFFLL;
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [v5 objectAtIndex:v6];
    v9 = [(NCNotificationStructuredSectionList *)self notificationGroups];
    v7 = [v9 indexOfObject:v8];
  }

  return v7;
}

- (unint64_t)_existingIndexOfGroupForNotificationRequestForRemoval:(id)a3
{
  v4 = a3;
  v5 = [(NCNotificationStructuredSectionList *)self notificationGroups];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __93__NCNotificationStructuredSectionList__existingIndexOfGroupForNotificationRequestForRemoval___block_invoke;
  v9[3] = &unk_278370600;
  v10 = v4;
  v6 = v4;
  v7 = [v5 indexOfObjectPassingTest:v9];

  return v7;
}

- (unint64_t)_existingIndexOfGroupForNotificationRequest:(id)a3
{
  v4 = a3;
  v5 = [(NCNotificationStructuredSectionList *)self notificationGroups];
  v6 = [(NCNotificationStructuredSectionList *)self _existingIndexOfGroupForNotificationRequest:v4 inNotificationGroupLists:v5];

  return v6;
}

- (unint64_t)_existingIndexOfGroupForNotificationRequest:(id)a3 inNotificationGroupLists:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 sectionIdentifier];
  v9 = [v7 threadIdentifier];
  v10 = [(NCNotificationStructuredSectionList *)self _existingIndexOfGroupForNotificationRequest:v7 withSectionIdentifier:v8 threadIdentifier:v9 inNotificationGroupLists:v6];

  return v10;
}

- (unint64_t)_existingIndexOfGroupForNotificationRequest:(id)a3 withSectionIdentifier:(id)a4 threadIdentifier:(id)a5 inNotificationGroupLists:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if ([(NCNotificationStructuredSectionList *)self isPerformingDynamicGrouping])
  {
    v14 = [(NCNotificationStructuredSectionList *)self _sectionSettingsForSectionIdentifier:v11];
    v15 = [v14 contentPreviewSetting];
    v16 = [(NCNotificationStructuredSectionList *)self _groupingSettingForSectionIdentifier:v11];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __147__NCNotificationStructuredSectionList__existingIndexOfGroupForNotificationRequest_withSectionIdentifier_threadIdentifier_inNotificationGroupLists___block_invoke;
    v26[3] = &unk_278370730;
    v30 = v15;
    v31 = v16;
    v26[4] = self;
    v27 = v10;
    v28 = v11;
    v29 = v12;
    v17 = v10;
    v18 = v12;
    v19 = v11;
    v20 = [v13 indexOfObjectPassingTest:v26];
  }

  else
  {
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __147__NCNotificationStructuredSectionList__existingIndexOfGroupForNotificationRequest_withSectionIdentifier_threadIdentifier_inNotificationGroupLists___block_invoke_2;
    v22[3] = &unk_278370758;
    v22[4] = self;
    v23 = v11;
    v24 = v12;
    v25 = v10;
    v18 = v10;
    v19 = v12;
    v14 = v11;
    v20 = [v13 indexOfObjectPassingTest:v22];
  }

  return v20;
}

uint64_t __147__NCNotificationStructuredSectionList__existingIndexOfGroupForNotificationRequest_withSectionIdentifier_threadIdentifier_inNotificationGroupLists___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 64);
  if (!v4 || v4 == 1 && ([*(a1 + 32) deviceAuthenticated] & 1) != 0 || *(a1 + 72) == 2)
  {
    v5 = [v3 isLeadingNotificationRequest:*(a1 + 40)];
LABEL_6:
    v6 = v5;
    goto LABEL_7;
  }

  if ([*(a1 + 40) isCriticalAlert])
  {
    v5 = [v3 containsCriticalNotificationRequest:*(a1 + 40)];
    goto LABEL_6;
  }

  v8 = [v3 sectionIdentifier];
  if ([v8 isEqualToString:*(a1 + 48)])
  {
    v9 = [v3 threadIdentifier];
    v6 = [v9 isEqualToString:*(a1 + 56)];
  }

  else
  {
    v6 = 0;
  }

LABEL_7:
  return v6;
}

uint64_t __147__NCNotificationStructuredSectionList__existingIndexOfGroupForNotificationRequest_withSectionIdentifier_threadIdentifier_inNotificationGroupLists___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 sectionIdentifier];
  v6 = [v4 _groupingSettingForSectionIdentifier:v5];

  if (v6 == 2)
  {
    if (!*(a1 + 56) || ([v3 isLeadingNotificationRequest:?] & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  if (v6 == 1)
  {
    v10 = [v3 sectionIdentifier];
    v11 = [v10 isEqualToString:*(a1 + 40)];

    if ((v11 & 1) == 0)
    {
      goto LABEL_13;
    }

LABEL_11:
    v12 = 1;
    goto LABEL_16;
  }

  if (v6)
  {
    goto LABEL_13;
  }

  v7 = [v3 sectionIdentifier];
  if (([v7 isEqualToString:*(a1 + 40)] & 1) == 0)
  {

    goto LABEL_13;
  }

  v8 = [v3 threadIdentifier];
  v9 = [v8 isEqualToString:*(a1 + 48)];

  if (v9)
  {
    goto LABEL_11;
  }

LABEL_13:
  if ([*(a1 + 56) isCriticalAlert])
  {
    v12 = [v3 containsCriticalNotificationRequest:*(a1 + 56)];
  }

  else
  {
    v12 = 0;
  }

LABEL_16:

  return v12;
}

- (void)_updatePositionOfGroup:(id)a3 atIndex:(unint64_t)a4
{
  v41 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(NCNotificationStructuredSectionList *)self _insertionIndexForGroup:v6];
  if (v7 != a4 && v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = v7;
    v10 = MEMORY[0x277D77DD0];
    if (a4 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v11 = [(NCNotificationStructuredSectionList *)self _indexOfOrderedNotificationListComponent:v6];
      v12 = *v10;
      if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
      {
        v13 = v12;
        v14 = [(NCNotificationStructuredSectionList *)self logDescription];
        v15 = [v6 logDescription];
        v33 = 138543618;
        v34 = v14;
        v35 = 2114;
        v36 = v15;
        _os_log_impl(&dword_21E77E000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ removing notificationGroup %{public}@", &v33, 0x16u);
      }

      v16 = [(NCNotificationStructuredSectionList *)self notificationGroups];
      [v16 removeObject:v6];

      [(NCNotificationStructuredSectionList *)self _removeViewFromListAtIndex:v11 animated:0 isHorizontallyDisplaced:0];
    }

    v17 = (__PAIR128__(v9, a4) - v9) >> 64;
    v18 = [(NCNotificationStructuredSectionList *)self notificationGroups];
    v19 = [v18 count];

    if (v17 > v19)
    {
      v20 = *v10;
      if (os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
      {
        v28 = v20;
        v29 = [(NCNotificationStructuredSectionList *)self logDescription];
        v30 = [v6 logDescription];
        v31 = [(NCNotificationStructuredSectionList *)self notificationGroups];
        v32 = [v31 count];
        v33 = 138544130;
        v34 = v29;
        v35 = 2114;
        v36 = v30;
        v37 = 2048;
        v38 = v17;
        v39 = 2048;
        v40 = v32;
        _os_log_error_impl(&dword_21E77E000, v28, OS_LOG_TYPE_ERROR, "%{public}@ attempting to insert group %{public}@ at index %ld while total group count is %ld", &v33, 0x2Au);
      }

      v21 = [(NCNotificationStructuredSectionList *)self notificationGroups];
      v17 = [v21 count];
    }

    v22 = *v10;
    if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
    {
      v23 = v22;
      v24 = [(NCNotificationStructuredSectionList *)self logDescription];
      v25 = [v6 logDescription];
      v33 = 138543874;
      v34 = v24;
      v35 = 2114;
      v36 = v25;
      v37 = 2048;
      v38 = v17;
      _os_log_impl(&dword_21E77E000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@ inserting notificationGroup %{public}@ at index %ld", &v33, 0x20u);
    }

    v26 = [(NCNotificationStructuredSectionList *)self notificationGroups];
    [v26 insertObject:v6 atIndex:v17];

    [(NCNotificationStructuredSectionList *)self _insertViewToListAtIndex:[(NCNotificationStructuredSectionList *)self _indexOfOrderedNotificationListComponent:v6] animated:1];
    v27 = [(NCNotificationStructuredSectionList *)self listView];
    [v27 setNeedsLayout];
  }
}

- (unint64_t)_insertionIndexForGroup:(id)a3
{
  v4 = a3;
  v5 = [(NCNotificationStructuredSectionList *)self notificationGroups];
  v6 = [(NCNotificationStructuredSectionList *)self notificationGroups];
  v7 = [v5 indexOfObject:v4 inSortedRange:0 options:objc_msgSend(v6 usingComparator:{"count"), 1280, &__block_literal_global_128}];

  return v7;
}

- (void)_removeNotificationGroupList:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(NCNotificationStructuredSectionList *)self notificationGroups];
  v8 = [v7 indexOfObject:v6];

  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = [v6 listView];
    [v9 recycleVisibleViews];

    v10 = [(NCNotificationStructuredSectionList *)self _indexOfOrderedNotificationListComponent:v6];
    v11 = [(NCNotificationStructuredSectionList *)self groupListWithActionsRevealed];
    if (v11 == v6)
    {
      v12 = [v6 isClearingAllNotificationRequestsForCellHorizontalSwipe];
    }

    else
    {
      v12 = 0;
    }

    [(NCNotificationStructuredSectionList *)self _removeViewFromListAtIndex:v10 animated:v4 isHorizontallyDisplaced:v12];
    v13 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
    {
      v14 = v13;
      v15 = [(NCNotificationStructuredSectionList *)self logDescription];
      v16 = [v6 logDescription];
      v22 = 138543874;
      v23 = v15;
      v24 = 2114;
      v25 = v16;
      v26 = 2048;
      v27 = v8;
      _os_log_impl(&dword_21E77E000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ removing notificationGroup %{public}@ at index %ld", &v22, 0x20u);
    }

    v17 = [(NCNotificationStructuredSectionList *)self notificationGroups];
    [v17 removeObjectAtIndex:v8];

    v18 = [(NCNotificationStructuredSectionList *)self groupListsToSort];
    [v18 removeObject:v6];

    if (![(NCNotificationStructuredSectionList *)self count])
    {
      v19 = [(NCNotificationStructuredSectionList *)self headerView];
      [v19 dismissModalFullScreenIfNeeded];

      v20 = [(NCNotificationStructuredSectionList *)self listView];
      [v20 reloadHeaderView];
    }

    v21 = [v6 listView];
    [v21 setDataSource:0];
  }
}

- (id)_sectionSettingsForSectionIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(NCNotificationStructuredSectionList *)self delegate];
  v6 = [v5 notificationListComponent:self sectionSettingsForSectionIdentifier:v4];

  return v6;
}

- (id)_legibilitySettings
{
  v3 = [(NCNotificationStructuredSectionList *)self delegate];
  v4 = [v3 legibilitySettingsForNotificationListBaseComponent:self];

  return v4;
}

- (id)_backgroundGroupNameBase
{
  v3 = [(NCNotificationStructuredSectionList *)self delegate];
  v4 = [v3 backgroundGroupNameBaseForNotificationListBaseComponent:self];

  return v4;
}

- (BOOL)_areNotificationsLoadedForSectionIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(NCNotificationStructuredSectionList *)self delegate];
  LOBYTE(self) = [v5 notificationStructuredSectionList:self areNotificationsLoadedForSectionIdentifier:v4];

  return self;
}

- (BOOL)_shouldHideNotificationRequest:(id)a3
{
  v4 = a3;
  v5 = [v4 sectionIdentifier];
  v6 = [(NCNotificationStructuredSectionList *)self _sectionSettingsForSectionIdentifier:v5];

  if ([v4 isCriticalAlert] && (objc_msgSend(v6, "criticalAlertsEnabled") & 1) != 0)
  {
    v7 = 0;
  }

  else
  {
    v8 = [v4 sectionIdentifier];
    v7 = [(NCNotificationStructuredSectionList *)self _shouldHideForSectionIdentifier:v8];
  }

  return v7;
}

- (BOOL)_shouldHideNotificationGroupList:(id)a3
{
  v4 = [a3 sectionIdentifier];
  LOBYTE(self) = [(NCNotificationStructuredSectionList *)self _shouldHideForSectionIdentifier:v4];

  return self;
}

- (BOOL)_shouldHideForSectionIdentifier:(id)a3
{
  v4 = [(NCNotificationStructuredSectionList *)self _sectionSettingsForSectionIdentifier:a3];
  if (v4)
  {
    if (!-[NCNotificationStructuredSectionList deviceAuthenticated](self, "deviceAuthenticated") && ![v4 showsInLockScreen] || !objc_msgSend(v4, "notificationsEnabled"))
    {
      v5 = 1;
      goto LABEL_9;
    }

    if (([v4 showsInNotificationCenter] & 1) == 0)
    {
      v5 = [(NCNotificationStructuredSectionList *)self isHistorySection];
      goto LABEL_9;
    }
  }

  v5 = 0;
LABEL_9:

  return v5;
}

- (void)_addHiddenNotificationGroupList:(id)a3
{
  v4 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__1;
  v19 = __Block_byref_object_dispose__1;
  v20 = 0;
  v5 = [(NCNotificationStructuredSectionList *)self hiddenNotificationGroups];
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __71__NCNotificationStructuredSectionList__addHiddenNotificationGroupList___block_invoke;
  v12 = &unk_2783707A0;
  v6 = v4;
  v13 = v6;
  v14 = &v15;
  [v5 enumerateObjectsUsingBlock:&v9];

  v7 = v16[5];
  if (v7)
  {
    v8 = [v6 allNotificationRequests];
    [v7 mergeNotificationRequests:v8];
  }

  else
  {
    v8 = [(NCNotificationStructuredSectionList *)self hiddenNotificationGroups:v9];
    [v8 addObject:v6];
  }

  _Block_object_dispose(&v15, 8);
}

void __71__NCNotificationStructuredSectionList__addHiddenNotificationGroupList___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = a2;
  if ([v6 matchesGroup:*(a1 + 32)])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a3 = 1;
  }
}

- (void)_hideNotificationGroupsOnDeviceReauthentication
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __86__NCNotificationStructuredSectionList__hideNotificationGroupsOnDeviceReauthentication__block_invoke;
  v2[3] = &unk_2783701A8;
  v2[4] = self;
  [(NCNotificationStructuredSectionList *)self _hideNotificationGroupsPassingTest:v2];
}

uint64_t __90__NCNotificationStructuredSectionList__showHiddenNotificationGroupsOnDeviceAuthentication__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 sectionIdentifier];
  v4 = [v2 _sectionSettingsForSectionIdentifier:v3];

  v5 = [v4 showsInNotificationCenter];
  return v5;
}

- (void)_hideNotificationGroupsPassingTest:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v6 = [(NCNotificationStructuredSectionList *)self notificationGroups];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __74__NCNotificationStructuredSectionList__hideNotificationGroupsPassingTest___block_invoke;
  v12[3] = &unk_2783707C8;
  v13 = v5;
  v14 = v4;
  v7 = v5;
  v8 = v4;
  [v6 enumerateObjectsUsingBlock:v12];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __74__NCNotificationStructuredSectionList__hideNotificationGroupsPassingTest___block_invoke_2;
  v11[3] = &unk_2783707F0;
  v11[4] = self;
  [v7 enumerateObjectsUsingBlock:v11];
  v9 = [(NCNotificationStructuredSectionList *)self hiddenNotificationGroups];
  v10 = [v7 allObjects];
  [v9 addObjectsFromArray:v10];
}

uint64_t __74__NCNotificationStructuredSectionList__hideNotificationGroupsPassingTest___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  v7 = v3;
  if (!v4 || (v5 = (*(v4 + 16))(), v5))
  {
    v5 = [*(a1 + 32) addObject:v7];
  }

  return MEMORY[0x2821F96F8](v5);
}

void __74__NCNotificationStructuredSectionList__hideNotificationGroupsPassingTest___block_invoke_2(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  [v3 setGrouped:1 animated:0];
  v4 = [v3 criticalAlerts];
  [*(a1 + 32) _removeNotificationGroupList:v3];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * i);
        [v3 removeNotificationRequest:{v10, v11}];
        [*(a1 + 32) insertNotificationRequest:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)_showHiddenNotificationGroupsPassingTest:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = [(NCNotificationStructuredSectionList *)self hiddenNotificationGroups];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __80__NCNotificationStructuredSectionList__showHiddenNotificationGroupsPassingTest___block_invoke;
  v10[3] = &unk_278370818;
  v11 = v5;
  v12 = v4;
  v10[4] = self;
  v7 = v5;
  v8 = v4;
  [v6 enumerateObjectsUsingBlock:v10];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __80__NCNotificationStructuredSectionList__showHiddenNotificationGroupsPassingTest___block_invoke_138;
  v9[3] = &unk_278370360;
  v9[4] = self;
  [v7 enumerateObjectsUsingBlock:v9];
}

void __80__NCNotificationStructuredSectionList__showHiddenNotificationGroupsPassingTest___block_invoke(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 48);
  if (!v4 || (*(v4 + 16))(v4, v3))
  {
    v17 = v3;
    [v3 allNotificationRequests];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    obj = v22 = 0u;
    v5 = [obj countByEnumeratingWithState:&v19 objects:v27 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v20;
      v8 = MEMORY[0x277D77DD0];
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v20 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v19 + 1) + 8 * i);
          if (v10)
          {
            v11 = *v8;
            if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
            {
              v12 = *(a1 + 32);
              v13 = v11;
              v14 = [v12 logDescription];
              v15 = [v10 notificationIdentifier];
              v16 = [v15 un_logDigest];
              *buf = 138543618;
              v24 = v14;
              v25 = 2114;
              v26 = v16;
              _os_log_impl(&dword_21E77E000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ inserting hidden notification %{public}@", buf, 0x16u);
            }

            [*(a1 + 32) insertNotificationRequest:v10];
          }
        }

        v6 = [obj countByEnumeratingWithState:&v19 objects:v27 count:16];
      }

      while (v6);
    }

    v3 = v17;
    [*(a1 + 40) addObject:v17];
  }
}

void __80__NCNotificationStructuredSectionList__showHiddenNotificationGroupsPassingTest___block_invoke_138(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 hiddenNotificationGroups];
  [v4 removeObject:v3];
}

- (void)_showHiddenNotificationRequestsPassingTest:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v6 = [(NCNotificationStructuredSectionList *)self hiddenNotificationRequests];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __82__NCNotificationStructuredSectionList__showHiddenNotificationRequestsPassingTest___block_invoke;
  v10[3] = &unk_278370840;
  v11 = v5;
  v12 = v4;
  v7 = v5;
  v8 = v4;
  [v6 enumerateObjectsUsingBlock:v10];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __82__NCNotificationStructuredSectionList__showHiddenNotificationRequestsPassingTest___block_invoke_2;
  v9[3] = &unk_278370868;
  v9[4] = self;
  [v7 enumerateObjectsUsingBlock:v9];
}

uint64_t __82__NCNotificationStructuredSectionList__showHiddenNotificationRequestsPassingTest___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  v7 = v3;
  if (!v4 || (v5 = (*(v4 + 16))(), v5))
  {
    v5 = [*(a1 + 32) addObject:v7];
  }

  return MEMORY[0x2821F96F8](v5);
}

void __82__NCNotificationStructuredSectionList__showHiddenNotificationRequestsPassingTest___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 insertNotificationRequest:v4];
  v5 = [*(a1 + 32) hiddenNotificationRequests];
  [v5 removeObject:v4];
}

- (BOOL)_removeHiddenNotificationRequest:(id)a3
{
  v4 = a3;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__1;
  v33 = __Block_byref_object_dispose__1;
  v34 = 0;
  v5 = [(NCNotificationStructuredSectionList *)self hiddenNotificationRequests];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __72__NCNotificationStructuredSectionList__removeHiddenNotificationRequest___block_invoke;
  v26[3] = &unk_278370890;
  v6 = v4;
  v27 = v6;
  v28 = &v29;
  [v5 enumerateObjectsUsingBlock:v26];

  if (v30[5])
  {
    v7 = [(NCNotificationStructuredSectionList *)self hiddenNotificationRequests];
    [v7 removeObject:v30[5]];

    v8 = 1;
  }

  else
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x3032000000;
    v23 = __Block_byref_object_copy__1;
    v24 = __Block_byref_object_dispose__1;
    v25 = 0;
    v9 = [(NCNotificationStructuredSectionList *)self hiddenNotificationGroups];
    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __72__NCNotificationStructuredSectionList__removeHiddenNotificationRequest___block_invoke_2;
    v17 = &unk_2783707A0;
    v10 = v6;
    v18 = v10;
    v19 = &v20;
    [v9 enumerateObjectsUsingBlock:&v14];

    v11 = v21[5];
    if (v11)
    {
      v8 = [v11 removeNotificationRequest:{v10, v14, v15, v16, v17}];
      if (![v21[5] count])
      {
        v12 = [(NCNotificationStructuredSectionList *)self hiddenNotificationGroups];
        [v12 removeObject:v21[5]];
      }
    }

    else
    {
      v8 = 0;
    }

    _Block_object_dispose(&v20, 8);
  }

  _Block_object_dispose(&v29, 8);
  return v8;
}

void __72__NCNotificationStructuredSectionList__removeHiddenNotificationRequest___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = a2;
  if ([v6 matchesRequest:*(a1 + 32)])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a3 = 1;
  }
}

void __72__NCNotificationStructuredSectionList__removeHiddenNotificationRequest___block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = a2;
  if ([v6 isGroupForNotificationRequest:*(a1 + 32)])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a3 = 1;
  }
}

- (void)_modifyHiddenNotificationRequest:(id)a3
{
  v4 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__1;
  v19 = __Block_byref_object_dispose__1;
  v20 = 0;
  v5 = [(NCNotificationStructuredSectionList *)self hiddenNotificationRequests];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __72__NCNotificationStructuredSectionList__modifyHiddenNotificationRequest___block_invoke;
  v12[3] = &unk_278370890;
  v6 = v4;
  v13 = v6;
  v14 = &v15;
  [v5 enumerateObjectsUsingBlock:v12];

  if (v16[5])
  {
    v7 = [(NCNotificationStructuredSectionList *)self hiddenNotificationRequests];
    [v7 removeObject:v16[5]];

    v8 = [(NCNotificationStructuredSectionList *)self hiddenNotificationRequests];
    [v8 addObject:v6];
  }

  else
  {
    v9 = [(NCNotificationStructuredSectionList *)self hiddenNotificationGroups];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __72__NCNotificationStructuredSectionList__modifyHiddenNotificationRequest___block_invoke_2;
    v10[3] = &unk_2783707F0;
    v11 = v6;
    [v9 enumerateObjectsUsingBlock:v10];

    v8 = v11;
  }

  _Block_object_dispose(&v15, 8);
}

void __72__NCNotificationStructuredSectionList__modifyHiddenNotificationRequest___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = a2;
  if ([v6 matchesRequest:*(a1 + 32)])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a3 = 1;
  }
}

void __72__NCNotificationStructuredSectionList__modifyHiddenNotificationRequest___block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  if ([v5 isGroupForNotificationRequest:*(a1 + 32)])
  {
    [v5 modifyNotificationRequest:*(a1 + 32)];
    *a3 = 1;
  }
}

- (BOOL)_shouldFilterNotificationRequest:(id)a3
{
  v4 = a3;
  v5 = [(NCNotificationStructuredSectionList *)self delegate];
  LOBYTE(self) = [v5 notificationStructuredSectionList:self shouldFilterNotificationRequest:v4];

  return self;
}

- (void)_filterNotificationRequest:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 sectionIdentifier];
  v6 = [(NCNotificationStructuredSectionList *)self filteredNotificationRequests];
  v7 = [v6 objectForKey:v5];

  if (v7)
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __66__NCNotificationStructuredSectionList__filterNotificationRequest___block_invoke;
    v18[3] = &unk_2783708B8;
    v19 = v4;
    v8 = [v7 objectsPassingTest:v18];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v9 = [v8 countByEnumeratingWithState:&v14 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v15;
      do
      {
        v12 = 0;
        do
        {
          if (*v15 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [v7 removeObject:*(*(&v14 + 1) + 8 * v12++)];
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v14 objects:v20 count:16];
      }

      while (v10);
    }
  }

  else
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v13 = [(NCNotificationStructuredSectionList *)self filteredNotificationRequests];
    [v13 setObject:v7 forKey:v5];
  }

  [v7 addObject:v4];
}

- (BOOL)_removeFilteredNotificationRequest:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 sectionIdentifier];
  v6 = [(NCNotificationStructuredSectionList *)self filteredNotificationRequests];
  v7 = [v6 objectForKey:v5];

  if (v7)
  {
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __74__NCNotificationStructuredSectionList__removeFilteredNotificationRequest___block_invoke;
    v20[3] = &unk_2783708B8;
    v21 = v4;
    v8 = [v7 objectsPassingTest:v20];
    v16 = 0u;
    v17 = 0u;
    v9 = [v8 count] != 0;
    v18 = 0u;
    v19 = 0u;
    v10 = v8;
    v11 = [v10 countByEnumeratingWithState:&v16 objects:v22 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v17;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v17 != v13)
          {
            objc_enumerationMutation(v10);
          }

          [v7 removeObject:{*(*(&v16 + 1) + 8 * i), v16}];
        }

        v12 = [v10 countByEnumeratingWithState:&v16 objects:v22 count:16];
      }

      while (v12);
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_filterNotificationRequestsForSectionIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(NCNotificationStructuredSectionList *)self count];
  v6 = [(NCNotificationStructuredSectionList *)self filteredNotificationRequests];
  v7 = [v6 objectForKey:v4];

  if (!v7)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v8 = [(NCNotificationStructuredSectionList *)self filteredNotificationRequests];
    [v8 setObject:v7 forKey:v4];
  }

  v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v10 = [(NCNotificationStructuredSectionList *)self notificationGroups];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __87__NCNotificationStructuredSectionList__filterNotificationRequestsForSectionIdentifier___block_invoke;
  v17[3] = &unk_278370908;
  v18 = v4;
  v19 = self;
  v20 = v7;
  v11 = v9;
  v21 = v11;
  v12 = v7;
  v13 = v4;
  [v10 enumerateObjectsUsingBlock:v17];

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __87__NCNotificationStructuredSectionList__filterNotificationRequestsForSectionIdentifier___block_invoke_3;
  v16[3] = &unk_2783707F0;
  v16[4] = self;
  [v11 enumerateObjectsUsingBlock:v16];
  v14 = [(NCNotificationStructuredSectionList *)self count];
  if (v5 && !v14)
  {
    v15 = [(NCNotificationStructuredSectionList *)self listView];
    [v15 reloadHeaderView];
  }
}

void __87__NCNotificationStructuredSectionList__filterNotificationRequestsForSectionIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 sectionIdentifier];
  v5 = [v4 isEqualToString:*(a1 + 32)];

  if (v5)
  {
    v6 = [v3 allNotificationRequests];
    v7 = [v6 copy];

    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __87__NCNotificationStructuredSectionList__filterNotificationRequestsForSectionIdentifier___block_invoke_2;
    v9[3] = &unk_2783708E0;
    v9[4] = *(a1 + 40);
    v8 = v3;
    v10 = v8;
    v11 = *(a1 + 48);
    [v7 enumerateObjectsUsingBlock:v9];
    if (![v8 count])
    {
      [*(a1 + 56) addObject:v8];
    }
  }
}

void __87__NCNotificationStructuredSectionList__filterNotificationRequestsForSectionIdentifier___block_invoke_2(id *a1, void *a2)
{
  v3 = a2;
  if ([a1[4] _shouldFilterNotificationRequest:?])
  {
    [a1[5] removeNotificationRequest:v3];
    [a1[6] addObject:v3];
  }
}

- (void)_unfilterNotificationRequestsForSectionIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(NCNotificationStructuredSectionList *)self count];
  v6 = [(NCNotificationStructuredSectionList *)self filteredNotificationRequests];
  v7 = [v6 objectForKey:v4];

  if (v7)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __89__NCNotificationStructuredSectionList__unfilterNotificationRequestsForSectionIdentifier___block_invoke;
    v11[3] = &unk_278370868;
    v11[4] = self;
    [v7 enumerateObjectsUsingBlock:v11];
  }

  v8 = [(NCNotificationStructuredSectionList *)self filteredNotificationRequests];
  [v8 removeObjectForKey:v4];

  v9 = [(NCNotificationStructuredSectionList *)self count];
  if (!v5 && v9)
  {
    v10 = [(NCNotificationStructuredSectionList *)self listView];
    [v10 reloadHeaderView];
  }
}

- (unint64_t)dynamicGroupingThreshold
{
  v2 = [MEMORY[0x277D75418] currentDevice];
  v3 = [v2 userInterfaceIdiom];
  v4 = +[NCUNUIKitPrototypeDomain rootSettings];
  v5 = v4;
  if (v3 == 1)
  {
    v6 = [v4 dynamicGroupingThresholdPad];
  }

  else
  {
    v6 = [v4 dynamicGroupingThreshold];
  }

  v7 = v6;

  return v7;
}

- (void)_toggleDynamicGroupingIfNecessaryForced:(BOOL)a3
{
  v24 = *MEMORY[0x277D85DE8];
  if ([(NCNotificationStructuredSectionList *)self supportsDynamicGrouping])
  {
    if (a3 || [(NCNotificationStructuredSectionList *)self isDynamicGroupingActive]&& (v13 = [(NCNotificationStructuredSectionList *)self notificationCount], v13 > [(NCNotificationStructuredSectionList *)self dynamicGroupingThreshold]))
    {
      v5 = *MEMORY[0x277D77DD0];
      if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
      {
        v6 = v5;
        v7 = [(NCNotificationStructuredSectionList *)self logDescription];
        *buf = 138543362;
        v23 = v7;
        _os_log_impl(&dword_21E77E000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ turning dynamic grouping OFF", buf, 0xCu);
      }

      self->_dynamicGroupingActive = 0;
      v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v10 = [(NCNotificationStructuredSectionList *)self notificationGroups];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __79__NCNotificationStructuredSectionList__toggleDynamicGroupingIfNecessaryForced___block_invoke;
      v19[3] = &unk_27836F718;
      v19[4] = self;
      v20 = v9;
      v21 = v8;
      v11 = v8;
      v12 = v9;
      [v10 enumerateObjectsUsingBlock:v19];

      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __79__NCNotificationStructuredSectionList__toggleDynamicGroupingIfNecessaryForced___block_invoke_2;
      v18[3] = &unk_2783707F0;
      v18[4] = self;
      [v11 enumerateObjectsUsingBlock:v18];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __79__NCNotificationStructuredSectionList__toggleDynamicGroupingIfNecessaryForced___block_invoke_3;
      v17[3] = &unk_278370868;
      v17[4] = self;
      [v12 enumerateObjectsUsingBlock:v17];
    }

    else if (![(NCNotificationStructuredSectionList *)self isDynamicGroupingActive]&& ![(NCNotificationStructuredSectionList *)self count])
    {
      v14 = *MEMORY[0x277D77DD0];
      if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
      {
        v15 = v14;
        v16 = [(NCNotificationStructuredSectionList *)self logDescription];
        *buf = 138543362;
        v23 = v16;
        _os_log_impl(&dword_21E77E000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ turning dynamic grouping ON", buf, 0xCu);
      }

      self->_dynamicGroupingActive = 1;
    }
  }
}

void __79__NCNotificationStructuredSectionList__toggleDynamicGroupingIfNecessaryForced___block_invoke(id *a1, void *a2, uint64_t a3)
{
  v12 = a2;
  v5 = a1[4];
  v6 = [v12 sectionIdentifier];
  v7 = [v12 threadIdentifier];
  v8 = [a1[4] notificationGroups];
  v9 = [v5 _existingIndexOfGroupWithSectionIdentifier:v6 threadIdentifier:v7 inNotificationGroupLists:v8];

  if (v9 != 0x7FFFFFFFFFFFFFFFLL && v9 != a3)
  {
    v11 = [v12 allNotificationRequests];
    [a1[5] addObjectsFromArray:v11];
    [a1[6] addObject:v12];
  }
}

- (void)_toggleHiddenNotificationsOnAuthenticationChange:(BOOL)a3
{
  v3 = a3;
  v35 = *MEMORY[0x277D85DE8];
  if ([(NCNotificationStructuredSectionList *)self isPerformingDynamicGrouping]&& [(NCNotificationStructuredSectionList *)self count])
  {
    if (v3 || ([(NCNotificationStructuredSectionList *)self groupListPresentingLongLook], v5 = objc_claimAutoreleasedReturnValue(), v5, !v5))
    {
      v9 = *MEMORY[0x277D77DD0];
      if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
      {
        v10 = v9;
        v11 = [(NCNotificationStructuredSectionList *)self logDescription];
        v12 = v11;
        v13 = @"collapsing";
        if (v3)
        {
          v13 = @"expanding";
        }

        *buf = 138543618;
        v32 = v11;
        v33 = 2112;
        v34 = v13;
        _os_log_impl(&dword_21E77E000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ %@ notification groups for dynamic grouping on authentication change", buf, 0x16u);
      }

      self->_deferDynamicGroupingForPresentedLongLookOnDeviceLock = 0;
      v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v15 = [(NCNotificationStructuredSectionList *)self notificationGroups];
      v16 = [v15 copy];

      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __88__NCNotificationStructuredSectionList__toggleHiddenNotificationsOnAuthenticationChange___block_invoke;
      v27[3] = &unk_278370930;
      v27[4] = self;
      v29 = v3;
      v17 = v14;
      v28 = v17;
      [v16 enumerateObjectsUsingBlock:v27];
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v18 = v17;
      v19 = [v18 countByEnumeratingWithState:&v23 objects:v30 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v24;
        do
        {
          v22 = 0;
          do
          {
            if (*v24 != v21)
            {
              objc_enumerationMutation(v18);
            }

            [(NCNotificationStructuredSectionList *)self insertNotificationRequest:*(*(&v23 + 1) + 8 * v22++), v23];
          }

          while (v20 != v22);
          v20 = [v18 countByEnumeratingWithState:&v23 objects:v30 count:16];
        }

        while (v20);
      }
    }

    else
    {
      v6 = *MEMORY[0x277D77DD0];
      if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
      {
        v7 = v6;
        v8 = [(NCNotificationStructuredSectionList *)self logDescription];
        *buf = 138543362;
        v32 = v8;
        _os_log_impl(&dword_21E77E000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ deferring dynamic grouping on authentication change while presenting long look", buf, 0xCu);
      }

      self->_deferDynamicGroupingForPresentedLongLookOnDeviceLock = 1;
    }
  }
}

void __88__NCNotificationStructuredSectionList__toggleHiddenNotificationsOnAuthenticationChange___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 sectionIdentifier];
  v6 = [v4 _sectionSettingsForSectionIdentifier:v5];

  if ([v6 contentPreviewSetting] == 1)
  {
    v7 = [v3 allNotificationRequests];
    v8 = v7;
    if (*(a1 + 48) == 1)
    {
      v9 = [v7 subarrayWithRange:{1, objc_msgSend(v7, "count") - 1}];

      v8 = v9;
    }

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v10 = v8;
    v11 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v17;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v17 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v16 + 1) + 8 * i);
          if (*(a1 + 48) == 1)
          {
            [v3 removeNotificationRequest:{*(*(&v16 + 1) + 8 * i), v16}];
          }

          [*(a1 + 40) addObject:{v15, v16}];
        }

        v12 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v12);
    }

    if ((*(a1 + 48) & 1) == 0)
    {
      [*(a1 + 32) _removeNotificationGroupList:v3];
    }
  }
}

- (BOOL)_shouldPreloadNotificationRequest:(id)a3
{
  v4 = a3;
  if ([(NCNotificationStructuredSectionList *)self preloadsNotificationRequests])
  {
    v5 = [v4 sectionIdentifier];
    v6 = ![(NCNotificationStructuredSectionList *)self _areNotificationsLoadedForSectionIdentifier:v5];
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (id)_groupListForPreloadedNotificationRequest:(id)a3 createNewIfNecessary:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [v6 sectionIdentifier];
  v8 = [v6 threadIdentifier];
  v9 = [(NCNotificationStructuredSectionList *)self preloadedNotificationGroups];
  v10 = [v9 objectForKey:v7];

  if (v10)
  {
    v11 = [(NCNotificationStructuredSectionList *)self _existingIndexOfGroupForNotificationRequest:v6 withSectionIdentifier:v7 threadIdentifier:v8 inNotificationGroupLists:v10];
    if (v11 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v12 = [v10 objectAtIndex:v11];
      if (v12)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }
  }

  else
  {
    if (!v4)
    {
      v10 = 0;
      v12 = 0;
      goto LABEL_11;
    }

    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v13 = [(NCNotificationStructuredSectionList *)self preloadedNotificationGroups];
    [v13 setObject:v10 forKey:v7];
  }

  v12 = 0;
LABEL_8:
  if (v4)
  {
    v12 = [(NCNotificationStructuredSectionList *)self _newGroupListForNotificationRequest:v6];
    [v10 addObject:v12];
  }

LABEL_11:

  return v12;
}

- (void)_insertPreloadedNotificationRequest:(id)a3
{
  v4 = a3;
  v5 = [(NCNotificationStructuredSectionList *)self _groupListForPreloadedNotificationRequest:v4 createNewIfNecessary:1];
  [v5 insertNotificationRequest:v4];
}

- (void)_modifyPreloadedNotificationRequest:(id)a3
{
  v4 = a3;
  v5 = [(NCNotificationStructuredSectionList *)self _groupListForPreloadedNotificationRequest:v4 createNewIfNecessary:0];
  [v5 modifyNotificationRequest:v4];
}

- (BOOL)_removePreloadedNotificationRequest:(id)a3
{
  v4 = a3;
  v5 = [(NCNotificationStructuredSectionList *)self _groupListForPreloadedNotificationRequest:v4 createNewIfNecessary:0];
  v6 = [v5 removeNotificationRequest:v4];
  if (![v5 count])
  {
    v7 = [(NCNotificationStructuredSectionList *)self preloadedNotificationGroups];
    v8 = [v4 sectionIdentifier];
    v9 = [v7 objectForKey:v8];

    [v9 removeObject:v5];
  }

  return v6;
}

- (void)_postPreloadedNotificationRequestsForSectionIdentifier:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(NCNotificationStructuredSectionList *)self preloadedNotificationGroups];
  v6 = [v5 objectForKey:v4];

  if (v6)
  {
    v7 = MEMORY[0x277D77DD0];
    v8 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
    {
      v9 = v8;
      v10 = [(NCNotificationStructuredSectionList *)self logDescription];
      *buf = 138543874;
      v33 = v10;
      v34 = 2048;
      v35 = [v6 count];
      v36 = 2114;
      v37 = v4;
      _os_log_impl(&dword_21E77E000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ inserting preloaded notification requests [group count:%lu] for section %{public}@", buf, 0x20u);
    }

    v25 = v6;
    v26 = v4;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v11 = v6;
    v12 = [v11 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v28;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v28 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v27 + 1) + 8 * i);
          if ([v16 count])
          {
            [v16 setDeviceAuthenticated:{-[NCNotificationStructuredSectionList deviceAuthenticated](self, "deviceAuthenticated")}];
            v17 = *v7;
            if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
            {
              v18 = v17;
              v19 = [(NCNotificationStructuredSectionList *)self logDescription];
              v20 = [v16 logDescription];
              *buf = 138543618;
              v33 = v19;
              v34 = 2114;
              v35 = v20;
              _os_log_impl(&dword_21E77E000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@ inserting preload notification group %{public}@", buf, 0x16u);
            }

            v21 = [(NCNotificationStructuredSectionList *)self count];
            [(NCNotificationStructuredSectionList *)self _updatePositionOfGroup:v16 atIndex:0x7FFFFFFFFFFFFFFFLL];
            v22 = [(NCNotificationStructuredSectionList *)self count];
            if (!v21 && v22)
            {
              v23 = [(NCNotificationStructuredSectionList *)self listView];
              [v23 reloadHeaderView];
            }

            if ([(NCNotificationStructuredSectionList *)self isSectionListViewGroupedWithContentShown])
            {
              [(NCNotificationStructuredSectionList *)self _reloadLeadingNotificationRequestsForStackedNotificationGroupListsWithForceReloadAllStacks:1];
            }
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v13);
    }

    v24 = [(NCNotificationStructuredSectionList *)self preloadedNotificationGroups];
    v4 = v26;
    [v24 removeObjectForKey:v26];

    v6 = v25;
  }
}

- (BOOL)isShowingSummarizedStackForNotificationRequest:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v5 = [(NCNotificationStructuredSectionList *)self notificationGroups];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __86__NCNotificationStructuredSectionList_isShowingSummarizedStackForNotificationRequest___block_invoke;
  v8[3] = &unk_27836F870;
  v6 = v4;
  v9 = v6;
  v10 = &v11;
  [v5 enumerateObjectsUsingBlock:v8];

  LOBYTE(v5) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);

  return v5;
}

void __86__NCNotificationStructuredSectionList_isShowingSummarizedStackForNotificationRequest___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  if ([v6 isLeadingNotificationRequest:*(a1 + 32)] && objc_msgSend(v6, "summarizedNotificationCountForLeadingRequest"))
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }
}

void __89__NCNotificationStructuredSectionList_mergeNotificationGroups_reorderGroupNotifications___block_invoke_3_cold_1(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 logDescription];
  v8 = [a3 logDescription];
  v9 = NCNotificationListSectionTypeString([*(a1 + 32) sectionType]);
  v10 = [a3 listView];
  [v10 isRevealed];
  v11 = [a3 listView];
  [v11 revealPercentage];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1(&dword_21E77E000, v12, v13, "%{public}@ merged thread '%{public}@' in '%{public}@' is not reveal correctly; isRevealed: %{public}d; revealPercentage: %{public}f", v14, v15, v16, v17, v18);
}

- (void)insertNotificationRequest:(void *)a3 .cold.1(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = [a2 logDescription];
  v7 = [a3 logDescription];
  v8 = NCNotificationListSectionTypeString([a2 sectionType]);
  v9 = [a3 listView];
  [v9 isRevealed];
  v10 = [a3 listView];
  [v10 revealPercentage];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1(&dword_21E77E000, v11, v12, "%{public}@ thread '%{public}@' in '%{public}@' is not reveal correctly; isRevealed: %{public}d; revealPercentage: %{public}f", v13, v14, v15, v16, v17);
}

@end