@interface NCNotificationStructuredSectionList
- (BOOL)_areNotificationsLoadedForSectionIdentifier:(id)identifier;
- (BOOL)_removeFilteredNotificationRequest:(id)request;
- (BOOL)_removeHiddenNotificationRequest:(id)request;
- (BOOL)_removePreloadedNotificationRequest:(id)request;
- (BOOL)_shouldFilterNotificationRequest:(id)request;
- (BOOL)_shouldHideForSectionIdentifier:(id)identifier;
- (BOOL)_shouldHideNotificationGroupList:(id)list;
- (BOOL)_shouldHideNotificationRequest:(id)request;
- (BOOL)_shouldPreloadNotificationRequest:(id)request;
- (BOOL)adjustForContentSizeCategoryChange;
- (BOOL)canAlignContentToBottomForLeadingNotificationRequestForNotificationGroupList:(id)list;
- (BOOL)conformsToProtocol:(id)protocol;
- (BOOL)containsNotificationGroup:(id)group;
- (BOOL)containsNotificationRequest:(id)request;
- (BOOL)handleTapOnNotificationListBaseComponent:(id)component;
- (BOOL)hasNotificationGroupExpanded;
- (BOOL)hasVisibleContentToReveal;
- (BOOL)isEligibleToPerformGroupAnimationForNotificationListBaseComponent:(id)component toGrouped:(BOOL)grouped;
- (BOOL)isNotificationGroupListInCollapsedStack:(id)stack;
- (BOOL)isPerformingDynamicGrouping;
- (BOOL)isSectionListCurrentlyGroupedWithContentShown;
- (BOOL)isSectionVisible;
- (BOOL)isShowingSummarizedStackForNotificationRequest:(id)request;
- (BOOL)isViewVisibleForNotificationGroupList:(id)list;
- (BOOL)notificationListComponent:(id)component shouldAllowInteractionsForNotificationRequest:(id)request;
- (BOOL)regroupNotificationGroups;
- (BOOL)removeNotificationRequest:(id)request;
- (BOOL)respondsToSelector:(SEL)selector;
- (BOOL)shouldAlignContentToBottomForLeadingNotificationRequestForNotificationGroupList:(id)list;
- (BOOL)shouldNotificationGroupListPanHorizontally:(id)horizontally;
- (BOOL)shouldShowSummaryTextAsContentForLeadingNotificationRequestForNotificationGroupList:(id)list;
- (NCAnimator)animator;
- (NCNotificationListComponentDelegate)delegate;
- (NCNotificationListView)listView;
- (NCNotificationStructuredSectionList)initWithTitle:(id)title sectionType:(unint64_t)type;
- (NSArray)allNotificationGroups;
- (NSArray)allNotificationGroupsIncludingHidden;
- (NSArray)allNotificationRequests;
- (NSArray)orderedNotificationListComponents;
- (NSDate)comparisonDate;
- (double)collapsedHeight;
- (double)expandedHeight;
- (double)expandedHeightIgnoringNotificationStacks;
- (double)headerViewHeightForNotificationList:(id)list withWidth:(double)width;
- (double)notificationListView:(id)view heightForItemAtIndex:(unint64_t)index withWidth:(double)width inDisplayListAsStackMode:(BOOL)mode ignoreExpandedGroupStack:(BOOL)stack;
- (id)_backgroundGroupNameBase;
- (id)_collapsedSectionSummaryString;
- (id)_groupListForPreloadedNotificationRequest:(id)request createNewIfNecessary:(BOOL)necessary;
- (id)_highlightsList;
- (id)_legibilitySettings;
- (id)_newGroupListForNotificationRequest:(id)request;
- (id)_newSectionHeaderView;
- (id)_sectionSettingsForSectionIdentifier:(id)identifier;
- (id)collapsedSectionSummaryStringForLeadingNotificationRequestForNotificationGroupList:(id)list;
- (id)containerViewForHeaderViewPreviewInteractionPresentedContent:(id)content;
- (id)headerViewForNotificationList:(id)list;
- (id)legibilitySettingsForSectionHeaderView:(id)view;
- (id)notificationGroupList:(id)list requestsAuxiliaryOptionsContentProviderForNotificationRequest:(id)request isLongLook:(BOOL)look;
- (id)notificationListComponent:(id)component containerViewProviderForExpandedContentForViewController:(id)controller;
- (id)notificationListView:(id)view viewForItemAtIndex:(unint64_t)index;
- (id)removeNotificationGroupListsForMigrationPassingTest:(id)test filterRequestsPassingTest:(id)passingTest animate:(BOOL)animate;
- (int64_t)insertNotificationRequest:(id)request;
- (unint64_t)_existingIndexOfGroupForNotificationRequest:(id)request;
- (unint64_t)_existingIndexOfGroupForNotificationRequest:(id)request inNotificationGroupLists:(id)lists;
- (unint64_t)_existingIndexOfGroupForNotificationRequest:(id)request withSectionIdentifier:(id)identifier threadIdentifier:(id)threadIdentifier inNotificationGroupLists:(id)lists;
- (unint64_t)_existingIndexOfGroupForNotificationRequestForRemoval:(id)removal;
- (unint64_t)_groupingSettingForSectionIdentifier:(id)identifier;
- (unint64_t)_indexOfOrderedNotificationListComponent:(id)component;
- (unint64_t)_insertionIndexForGroup:(id)group;
- (unint64_t)count;
- (unint64_t)dynamicGroupingThreshold;
- (unint64_t)existingIndexOfGroupForNotificationRequestForInsertion:(id)insertion;
- (unint64_t)importantAdornmentEligibleOptionsForNotificationGroupList:(id)list;
- (unint64_t)itemCountWithExpandedGroup;
- (unint64_t)notificationCount;
- (unint64_t)notificationCountIncludingHidden;
- (unint64_t)notificationListViewNumberOfItems:(id)items;
- (void)_addHiddenNotificationGroupList:(id)list;
- (void)_configureSectionListView:(id)view;
- (void)_filterNotificationRequest:(id)request;
- (void)_filterNotificationRequestsForSectionIdentifier:(id)identifier;
- (void)_hideNotificationGroupsOnDeviceReauthentication;
- (void)_hideNotificationGroupsPassingTest:(id)test;
- (void)_insertPreloadedNotificationRequest:(id)request;
- (void)_insertViewToListAtIndex:(unint64_t)index animated:(BOOL)animated;
- (void)_modifyHiddenNotificationRequest:(id)request;
- (void)_modifyPreloadedNotificationRequest:(id)request;
- (void)_postPreloadedNotificationRequestsForSectionIdentifier:(id)identifier;
- (void)_reloadLeadingNotificationRequestsForStackedNotificationGroupListsWithForceReloadAllStacks:(BOOL)stacks;
- (void)_removeNotificationGroupList:(id)list animated:(BOOL)animated;
- (void)_removeViewFromListAtIndex:(unint64_t)index animated:(BOOL)animated isHorizontallyDisplaced:(BOOL)displaced;
- (void)_showHiddenNotificationGroupsOnDeviceAuthentication;
- (void)_showHiddenNotificationGroupsPassingTest:(id)test;
- (void)_showHiddenNotificationRequestsPassingTest:(id)test;
- (void)_toggleDynamicGroupingIfNecessaryForced:(BOOL)forced;
- (void)_toggleHiddenNotificationsOnAuthenticationChange:(BOOL)change;
- (void)_unfilterNotificationRequestsForSectionIdentifier:(id)identifier;
- (void)_updatePositionOfGroup:(id)group atIndex:(unint64_t)index;
- (void)adjustForLegibilitySettingsChange:(id)change;
- (void)clearAll;
- (void)collapseGroupForNotificationRequest:(id)request withCompletion:(id)completion;
- (void)didExitAlwaysOn;
- (void)expandGroupForNotificationRequest:(id)request withCompletion:(id)completion;
- (void)forwardInvocation:(id)invocation;
- (void)handleCoverSheetVisibilityChange:(BOOL)change;
- (void)handleWake:(BOOL)wake;
- (void)mergeNotificationGroups:(id)groups reorderGroupNotifications:(BOOL)notifications;
- (void)modifyNotificationRequest:(id)request;
- (void)notificationListBaseComponent:(id)component didRemoveView:(id)view;
- (void)notificationListBaseComponent:(id)component didTransitionActionsForSwipeInteraction:(id)interaction revealed:(BOOL)revealed;
- (void)notificationListBaseComponent:(id)component willRemoveView:(id)view;
- (void)notificationListBaseComponentDidRemoveAll:(id)all;
- (void)notificationListComponent:(id)component didRemoveNotificationRequest:(id)request;
- (void)notificationListComponent:(id)component isPresentingLongLookForViewController:(id)controller;
- (void)notificationListComponent:(id)component shouldFinishLongLookTransitionForNotificationRequest:(id)request trigger:(int64_t)trigger withCompletionBlock:(id)block;
- (void)notificationListPresentableGroup:(id)group requestsScrollToTopOfCollectionWithCompletion:(id)completion;
- (void)notificationsLoadedForSectionIdentifier:(id)identifier;
- (void)recycleView:(id)view;
- (void)reloadNotificationRequest:(id)request;
- (void)sectionHeaderView:(id)view didReceiveClearActionForSectionIdentifier:(id)identifier;
- (void)sectionHeaderViewDidBeginForceTouchInteraction:(id)interaction;
- (void)sectionHeaderViewDidDismissForceTouchView:(id)view;
- (void)sectionHeaderViewDidPresentForceTouchView:(id)view;
- (void)sectionHeaderViewDidReceiveClearAllAction:(id)action;
- (void)sectionHeaderViewDidTransitionToClearState:(id)state;
- (void)setDeviceAuthenticated:(BOOL)authenticated;
- (void)setLogDescription:(id)description;
- (void)setNotificationListCache:(id)cache;
- (void)setSectionListViewGroupedWithContentShown:(BOOL)shown;
- (void)setTitle:(id)title;
- (void)sortNotificationGroupListsIfNecessary;
- (void)toggleFilteringForSectionIdentifier:(id)identifier shouldFilter:(BOOL)filter;
- (void)updateNotificationSectionSettings:(id)settings previousSectionSettings:(id)sectionSettings;
- (void)updateNotificationSystemSettings:(id)settings previousSystemSettings:(id)systemSettings;
@end

@implementation NCNotificationStructuredSectionList

- (unint64_t)notificationCount
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  notificationGroups = [(NCNotificationStructuredSectionList *)self notificationGroups];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __56__NCNotificationStructuredSectionList_notificationCount__block_invoke;
  v5[3] = &unk_278370650;
  v5[4] = &v6;
  [notificationGroups enumerateObjectsUsingBlock:v5];

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
  supportsDynamicGrouping = [(NCNotificationStructuredSectionList *)self supportsDynamicGrouping];
  if (supportsDynamicGrouping)
  {

    LOBYTE(supportsDynamicGrouping) = [(NCNotificationStructuredSectionList *)self isDynamicGroupingActive];
  }

  return supportsDynamicGrouping;
}

- (void)sortNotificationGroupListsIfNecessary
{
  selfCopy = self;
  v35 = *MEMORY[0x277D85DE8];
  groupListsToSort = [(NCNotificationStructuredSectionList *)self groupListsToSort];
  v4 = [groupListsToSort count];

  if (v4)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    groupListsToSort2 = [(NCNotificationStructuredSectionList *)selfCopy groupListsToSort];
    v6 = [groupListsToSort2 countByEnumeratingWithState:&v26 objects:v34 count:16];
    if (v6)
    {
      v8 = v6;
      v9 = *v27;
      v10 = MEMORY[0x277D77DD0];
      *&v7 = 138543618;
      v24 = v7;
      v25 = groupListsToSort2;
      do
      {
        v11 = 0;
        do
        {
          if (*v27 != v9)
          {
            objc_enumerationMutation(groupListsToSort2);
          }

          v12 = *(*(&v26 + 1) + 8 * v11);
          notificationGroups = [(NCNotificationStructuredSectionList *)selfCopy notificationGroups];
          v14 = [notificationGroups indexOfObject:v12];

          if (v14 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v15 = *v10;
            if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
            {
              v16 = v15;
              logDescription = [(NCNotificationStructuredSectionList *)selfCopy logDescription];
              [v12 logDescription];
              v18 = selfCopy;
              v19 = v8;
              v20 = v9;
              v22 = v21 = v10;
              *buf = v24;
              v31 = logDescription;
              v32 = 2112;
              v33 = v22;
              _os_log_impl(&dword_21E77E000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ sorting group %@", buf, 0x16u);

              v10 = v21;
              v9 = v20;
              v8 = v19;
              selfCopy = v18;

              groupListsToSort2 = v25;
            }

            [(NCNotificationStructuredSectionList *)selfCopy _updatePositionOfGroup:v12 atIndex:v14];
          }

          ++v11;
        }

        while (v8 != v11);
        v8 = [groupListsToSort2 countByEnumeratingWithState:&v26 objects:v34 count:16];
      }

      while (v8);
    }

    groupListsToSort3 = [(NCNotificationStructuredSectionList *)selfCopy groupListsToSort];
    [groupListsToSort3 removeAllObjects];
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
  notificationGroups = [(NCNotificationStructuredSectionList *)self notificationGroups];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __71__NCNotificationStructuredSectionList_notificationCountIncludingHidden__block_invoke;
  v9[3] = &unk_278370650;
  v9[4] = &v10;
  [notificationGroups enumerateObjectsUsingBlock:v9];

  hiddenNotificationGroups = [(NCNotificationStructuredSectionList *)self hiddenNotificationGroups];
  allObjects = [hiddenNotificationGroups allObjects];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __71__NCNotificationStructuredSectionList_notificationCountIncludingHidden__block_invoke_2;
  v8[3] = &unk_278370650;
  v8[4] = &v10;
  [allObjects enumerateObjectsUsingBlock:v8];

  v6 = v11[3];
  _Block_object_dispose(&v10, 8);
  return v6;
}

- (BOOL)isSectionVisible
{
  listView = [(NCNotificationStructuredSectionList *)self listView];
  if ([listView isRevealed])
  {
    v4 = 1;
  }

  else
  {
    listView2 = [(NCNotificationStructuredSectionList *)self listView];
    [listView2 revealPercentage];
    v4 = v6 > 0.0;
  }

  return v4;
}

- (unint64_t)count
{
  notificationGroups = [(NCNotificationStructuredSectionList *)self notificationGroups];
  v3 = [notificationGroups count];

  return v3;
}

- (NSArray)allNotificationRequests
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  notificationGroups = [(NCNotificationStructuredSectionList *)self notificationGroups];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __62__NCNotificationStructuredSectionList_allNotificationRequests__block_invoke;
  v7[3] = &unk_278370360;
  v5 = v3;
  v8 = v5;
  [notificationGroups enumerateObjectsUsingBlock:v7];

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
  notificationGroups = [(NCNotificationStructuredSectionList *)self notificationGroups];
  v3 = [notificationGroups copy];

  return v3;
}

- (BOOL)isSectionListCurrentlyGroupedWithContentShown
{
  if (![(NCNotificationStructuredSectionList *)self isSectionListViewGroupedWithContentShown])
  {
    return 0;
  }

  listView = [(NCNotificationStructuredSectionList *)self listView];
  if ([listView isGrouped])
  {
    notificationGroups = [(NCNotificationStructuredSectionList *)self notificationGroups];
    v5 = [notificationGroups count] > 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NCAnimator)animator
{
  delegate = [(NCNotificationStructuredSectionList *)self delegate];
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

- (id)_collapsedSectionSummaryString
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  notificationGroups = [(NCNotificationStructuredSectionList *)self notificationGroups];
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __69__NCNotificationStructuredSectionList__collapsedSectionSummaryString__block_invoke;
  v18 = &unk_27836F7F8;
  v20 = &v21;
  v5 = v3;
  v19 = v5;
  [notificationGroups enumerateObjectsUsingBlock:&v15];

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
  notificationGroups = [(NCNotificationStructuredSectionList *)self notificationGroups];
  v3 = [notificationGroups copy];

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
  allNotificationGroups = [(NCNotificationStructuredSectionList *)self allNotificationGroups];
  hiddenNotificationGroups = [(NCNotificationStructuredSectionList *)self hiddenNotificationGroups];
  allObjects = [hiddenNotificationGroups allObjects];

  v6 = [allNotificationGroups arrayByAddingObjectsFromArray:allObjects];

  return v6;
}

- (double)collapsedHeight
{
  listView = [(NCNotificationStructuredSectionList *)self listView];
  [listView calculateSizeForGrouped:1 ignoreFeaturedLeadingView:0 ignoreExpandedGroupStack:1 inDisplayListAsStackMode:1 dynamicGroupedOverlapHeightMultiple:0];
  v4 = v3;

  return v4;
}

- (double)expandedHeightIgnoringNotificationStacks
{
  listView = [(NCNotificationStructuredSectionList *)self listView];
  [listView calculateSizeForGrouped:0 ignoreFeaturedLeadingView:1 ignoreExpandedGroupStack:1 inDisplayListAsStackMode:0 dynamicGroupedOverlapHeightMultiple:0];
  v4 = v3;

  return v4;
}

- (NCNotificationStructuredSectionList)initWithTitle:(id)title sectionType:(unint64_t)type
{
  titleCopy = title;
  v23.receiver = self;
  v23.super_class = NCNotificationStructuredSectionList;
  v8 = [(NCNotificationStructuredSectionList *)&v23 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_title, title);
    v9->_sectionType = type;
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

- (BOOL)conformsToProtocol:(id)protocol
{
  protocolCopy = protocol;
  if (conformsToProtocol__onceToken != -1)
  {
    [NCNotificationStructuredSectionList conformsToProtocol:];
  }

  v5 = 0;
  v6 = 1;
  while (1)
  {
    v7 = v6;
    if (protocol_isEqual(protocolCopy, *(&conformsToProtocol__defaultProtocols + v5)))
    {
      break;
    }

    v6 = 0;
    v5 = 1;
    if ((v7 & 1) == 0)
    {
      v10.receiver = self;
      v10.super_class = NCNotificationStructuredSectionList;
      v8 = [(NCNotificationStructuredSectionList *)&v10 conformsToProtocol:protocolCopy];
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

- (void)setNotificationListCache:(id)cache
{
  cacheCopy = cache;
  objc_storeStrong(&self->_notificationListCache, cache);
  notificationGroups = [(NCNotificationStructuredSectionList *)self notificationGroups];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __64__NCNotificationStructuredSectionList_setNotificationListCache___block_invoke;
  v8[3] = &unk_278370360;
  v9 = cacheCopy;
  v7 = cacheCopy;
  [notificationGroups enumerateObjectsUsingBlock:v8];
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  if (![(NSString *)self->_title isEqualToString:?])
  {
    objc_storeStrong(&self->_title, title);
    headerView = self->_headerView;
    self->_headerView = 0;

    listView = [(NCNotificationStructuredSectionList *)self listView];
    [listView reloadHeaderView];
  }
}

- (id)removeNotificationGroupListsForMigrationPassingTest:(id)test filterRequestsPassingTest:(id)passingTest animate:(BOOL)animate
{
  animateCopy = animate;
  testCopy = test;
  passingTestCopy = passingTest;
  v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
  notificationGroups = [(NCNotificationStructuredSectionList *)self notificationGroups];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __125__NCNotificationStructuredSectionList_removeNotificationGroupListsForMigrationPassingTest_filterRequestsPassingTest_animate___block_invoke;
  v21[3] = &unk_2783705D8;
  v12 = testCopy;
  v24 = v12;
  v13 = passingTestCopy;
  v25 = v13;
  v14 = v10;
  v22 = v14;
  selfCopy = self;
  [notificationGroups enumerateObjectsUsingBlock:v21];

  if (animateCopy)
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
    notificationGroups2 = [(NCNotificationStructuredSectionList *)self notificationGroups];
    [notificationGroups2 removeObjectsInArray:v14];

    listView = [(NCNotificationStructuredSectionList *)self listView];
    [listView invalidateData];
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

- (void)mergeNotificationGroups:(id)groups reorderGroupNotifications:(BOOL)notifications
{
  groupsCopy = groups;
  v6 = [(NCNotificationStructuredSectionList *)self count];
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __89__NCNotificationStructuredSectionList_mergeNotificationGroups_reorderGroupNotifications___block_invoke;
  v19[3] = &unk_278370628;
  v19[4] = self;
  v8 = v7;
  v20 = v8;
  [groupsCopy enumerateObjectsUsingBlock:v19];

  v9 = [(NCNotificationStructuredSectionList *)self count];
  if (!v6 && v9)
  {
    listView = [(NCNotificationStructuredSectionList *)self listView];
    [listView reloadHeaderView];
  }

  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __89__NCNotificationStructuredSectionList_mergeNotificationGroups_reorderGroupNotifications___block_invoke_2_96;
  v16 = &unk_27836F560;
  v17 = v8;
  selfCopy = self;
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
  notificationGroups = [(NCNotificationStructuredSectionList *)self notificationGroups];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __64__NCNotificationStructuredSectionList_regroupNotificationGroups__block_invoke;
  v4[3] = &unk_278370650;
  v4[4] = &v5;
  [notificationGroups enumerateObjectsUsingBlock:v4];

  LOBYTE(notificationGroups) = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return notificationGroups;
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

- (void)toggleFilteringForSectionIdentifier:(id)identifier shouldFilter:(BOOL)filter
{
  if (filter)
  {
    [(NCNotificationStructuredSectionList *)self _filterNotificationRequestsForSectionIdentifier:identifier];
  }

  else
  {
    [(NCNotificationStructuredSectionList *)self _unfilterNotificationRequestsForSectionIdentifier:identifier];
  }
}

- (void)clearAll
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D77DD0];
  if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    logDescription = [(NCNotificationStructuredSectionList *)self logDescription];
    *buf = 138543362;
    v21 = logDescription;
    _os_log_impl(&dword_21E77E000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ is clearing all notification requests", buf, 0xCu);
  }

  v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
  notificationGroups = [(NCNotificationStructuredSectionList *)self notificationGroups];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __47__NCNotificationStructuredSectionList_clearAll__block_invoke;
  v17[3] = &unk_27836F718;
  v17[4] = self;
  v9 = v7;
  v18 = v9;
  v10 = v6;
  v19 = v10;
  [notificationGroups enumerateObjectsUsingBlock:v17];

  delegate = [(NCNotificationStructuredSectionList *)self delegate];
  [delegate notificationListBaseComponent:self requestsClearingPresentables:v10];
  notificationGroups2 = [(NCNotificationStructuredSectionList *)self notificationGroups];
  v13 = [notificationGroups2 count];

  if (v13 >= 1)
  {
    v14 = (v13 & 0x7FFFFFFF) + 1;
    do
    {
      notificationGroups3 = [(NCNotificationStructuredSectionList *)self notificationGroups];
      v16 = [notificationGroups3 objectAtIndex:v14 - 2];

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
    [delegate notificationStructuredSectionListDidClearAllNotificationRequests:self];
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

- (void)expandGroupForNotificationRequest:(id)request withCompletion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  notificationGroups = [(NCNotificationStructuredSectionList *)self notificationGroups];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __88__NCNotificationStructuredSectionList_expandGroupForNotificationRequest_withCompletion___block_invoke;
  v11[3] = &unk_278370678;
  v12 = requestCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = requestCopy;
  [notificationGroups enumerateObjectsUsingBlock:v11];
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

- (void)collapseGroupForNotificationRequest:(id)request withCompletion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  notificationGroups = [(NCNotificationStructuredSectionList *)self notificationGroups];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __90__NCNotificationStructuredSectionList_collapseGroupForNotificationRequest_withCompletion___block_invoke;
  v11[3] = &unk_278370678;
  v12 = requestCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = requestCopy;
  [notificationGroups enumerateObjectsUsingBlock:v11];
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
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  notificationGroups = [(NCNotificationStructuredSectionList *)self notificationGroups];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __64__NCNotificationStructuredSectionList_hasVisibleContentToReveal__block_invoke;
  v5[3] = &unk_27836F870;
  v5[4] = selfCopy;
  v5[5] = &v6;
  [notificationGroups enumerateObjectsUsingBlock:v5];

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
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

- (void)setSectionListViewGroupedWithContentShown:(BOOL)shown
{
  if (self->_sectionListViewGroupedWithContentShown != shown)
  {
    v14 = v3;
    v15 = v4;
    shownCopy = shown;
    self->_sectionListViewGroupedWithContentShown = shown;
    if (shown)
    {
      [(NCNotificationStructuredSectionList *)self _toggleDynamicGroupingIfNecessaryForced:1];
    }

    [(NCNotificationStructuredSectionList *)self setSupportsDynamicGrouping:shownCopy ^ 1];
    listView = [(NCNotificationStructuredSectionList *)self listView];
    [listView setSupportsGrouping:shownCopy];

    listView2 = [(NCNotificationStructuredSectionList *)self listView];
    [listView2 setGrouped:shownCopy];

    listView3 = [(NCNotificationStructuredSectionList *)self listView];
    [listView3 setShowContentForGroupedViews:shownCopy];

    listView4 = [(NCNotificationStructuredSectionList *)self listView];
    [listView4 setGroupedOverlapHeightMultiple:4.0];

    allNotificationGroups = [(NCNotificationStructuredSectionList *)self allNotificationGroups];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __81__NCNotificationStructuredSectionList_setSectionListViewGroupedWithContentShown___block_invoke;
    v12[3] = &__block_descriptor_33_e40_v32__0__NCNotificationGroupList_8Q16_B24l;
    v13 = shownCopy;
    [allNotificationGroups enumerateObjectsUsingBlock:v12];

    [(NCNotificationStructuredSectionList *)self _reloadLeadingNotificationRequestsForStackedNotificationGroupListsWithForceReloadAllStacks:1];
  }
}

void __81__NCNotificationStructuredSectionList_setSectionListViewGroupedWithContentShown___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 listView];
  [v3 setShowContentForGroupedViews:*(a1 + 32)];
}

- (void)_reloadLeadingNotificationRequestsForStackedNotificationGroupListsWithForceReloadAllStacks:(BOOL)stacks
{
  allowSectionListViewGroupedWithContentShownAnimations = [(NCNotificationStructuredSectionList *)self allowSectionListViewGroupedWithContentShownAnimations];
  notificationGroups = [(NCNotificationStructuredSectionList *)self notificationGroups];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __130__NCNotificationStructuredSectionList__reloadLeadingNotificationRequestsForStackedNotificationGroupListsWithForceReloadAllStacks___block_invoke;
  v7[3] = &unk_2783706C0;
  v7[4] = self;
  stacksCopy = stacks;
  v9 = allowSectionListViewGroupedWithContentShownAnimations;
  [notificationGroups enumerateObjectsUsingBlock:v7];
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
  listView = [(NCNotificationStructuredSectionList *)self listView];
  [listView calculateSizeForGrouped:0 ignoreFeaturedLeadingView:0 ignoreExpandedGroupStack:0 inDisplayListAsStackMode:0 dynamicGroupedOverlapHeightMultiple:0];
  v4 = v3;

  return v4;
}

- (BOOL)hasNotificationGroupExpanded
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  allNotificationGroups = [(NCNotificationStructuredSectionList *)self allNotificationGroups];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __67__NCNotificationStructuredSectionList_hasNotificationGroupExpanded__block_invoke;
  v4[3] = &unk_278370650;
  v4[4] = &v5;
  [allNotificationGroups enumerateObjectsUsingBlock:v4];

  LOBYTE(allNotificationGroups) = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return allNotificationGroups;
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
  allNotificationGroups = [(NCNotificationStructuredSectionList *)self allNotificationGroups];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __65__NCNotificationStructuredSectionList_itemCountWithExpandedGroup__block_invoke;
  v5[3] = &unk_278370650;
  v5[4] = &v6;
  [allNotificationGroups enumerateObjectsUsingBlock:v5];

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

- (int64_t)insertNotificationRequest:(id)request
{
  v57 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  if (![(NCNotificationStructuredSectionList *)self _shouldFilterNotificationRequest:requestCopy])
  {
    if ([(NCNotificationStructuredSectionList *)self _shouldHideNotificationRequest:requestCopy])
    {
      v10 = *MEMORY[0x277D77DD0];
      if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
      {
        v11 = v10;
        logDescription = [(NCNotificationStructuredSectionList *)self logDescription];
        notificationIdentifier = [requestCopy notificationIdentifier];
        un_logDigest = [notificationIdentifier un_logDigest];
        *v54 = 138543618;
        *&v54[4] = logDescription;
        *&v54[12] = 2114;
        *&v54[14] = un_logDigest;
        _os_log_impl(&dword_21E77E000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ hiding inserted notification request %{public}@", v54, 0x16u);
      }

      hiddenNotificationRequests = [(NCNotificationStructuredSectionList *)self hiddenNotificationRequests];
      [hiddenNotificationRequests addObject:requestCopy];

      goto LABEL_13;
    }

    if ([(NCNotificationStructuredSectionList *)self _shouldPreloadNotificationRequest:requestCopy])
    {
      v16 = *MEMORY[0x277D77DD0];
      if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
      {
        v17 = v16;
        logDescription2 = [(NCNotificationStructuredSectionList *)self logDescription];
        notificationIdentifier2 = [requestCopy notificationIdentifier];
        un_logDigest2 = [notificationIdentifier2 un_logDigest];
        sectionIdentifier = [requestCopy sectionIdentifier];
        *v54 = 138543874;
        *&v54[4] = logDescription2;
        *&v54[12] = 2114;
        *&v54[14] = un_logDigest2;
        *&v54[22] = 2114;
        v55 = sectionIdentifier;
        _os_log_impl(&dword_21E77E000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@ preloading inserted notification request %{public}@ for section %{public}@", v54, 0x20u);
      }

      [(NCNotificationStructuredSectionList *)self _insertPreloadedNotificationRequest:requestCopy];
      goto LABEL_13;
    }

    v24 = [(NCNotificationStructuredSectionList *)self count];
    v25 = [(NCNotificationStructuredSectionList *)self existingIndexOfGroupForNotificationRequestForInsertion:requestCopy];
    if (v25 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v26 = [(NCNotificationStructuredSectionList *)self _newGroupListForNotificationRequest:requestCopy];
      v27 = *MEMORY[0x277D77DD0];
      if (!os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_21;
      }

      v28 = v27;
      logDescription3 = [(NCNotificationStructuredSectionList *)self logDescription];
      notificationIdentifier3 = [requestCopy notificationIdentifier];
      un_logDigest3 = [notificationIdentifier3 un_logDigest];
      logDescription4 = [v26 logDescription];
      *v54 = 138543874;
      *&v54[4] = logDescription3;
      *&v54[12] = 2114;
      *&v54[14] = un_logDigest3;
      *&v54[22] = 2114;
      v55 = logDescription4;
      v33 = "%{public}@ inserting notification request %{public}@ in new group %{public}@";
      v34 = v28;
      v35 = 32;
    }

    else
    {
      notificationGroups = [(NCNotificationStructuredSectionList *)self notificationGroups];
      v26 = [notificationGroups objectAtIndex:v25];

      v37 = *MEMORY[0x277D77DD0];
      if (!os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_21;
      }

      v28 = v37;
      logDescription3 = [(NCNotificationStructuredSectionList *)self logDescription];
      notificationIdentifier3 = [requestCopy notificationIdentifier];
      un_logDigest3 = [notificationIdentifier3 un_logDigest];
      logDescription4 = [v26 logDescription];
      *v54 = 138544130;
      *&v54[4] = logDescription3;
      *&v54[12] = 2114;
      *&v54[14] = un_logDigest3;
      *&v54[22] = 2114;
      v55 = logDescription4;
      LOWORD(v56) = 2048;
      *(&v56 + 2) = v25;
      v33 = "%{public}@ inserting notification request %{public}@ in existing group %{public}@ at index %ld";
      v34 = v28;
      v35 = 42;
    }

    _os_log_impl(&dword_21E77E000, v34, OS_LOG_TYPE_DEFAULT, v33, v54, v35);

LABEL_21:
    v22 = [v26 insertNotificationRequest:{requestCopy, *v54, *&v54[16], v55, v56}];
    listView = [v26 listView];
    isGrouped = [listView isGrouped];

    if (isGrouped)
    {
      [(NCNotificationStructuredSectionList *)self _updatePositionOfGroup:v26 atIndex:v25];
    }

    v40 = [(NCNotificationStructuredSectionList *)self count];
    if (!v24 && v40)
    {
      listView2 = [(NCNotificationStructuredSectionList *)self listView];
      [listView2 reloadHeaderView];
    }

    [(NCNotificationStructuredSectionList *)self _toggleDynamicGroupingIfNecessary];
    if ([(NCNotificationStructuredSectionList *)self sectionType]- 1 <= 1)
    {
      listView3 = [v26 listView];
      if ([listView3 isRevealed])
      {
        listView4 = [v26 listView];
        [listView4 revealPercentage];
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

      listView5 = [v26 listView];
      [listView5 setRevealed:1];

      listView6 = [v26 listView];
      [listView6 setRevealPercentage:1.0];
    }

    if ([(NCNotificationStructuredSectionList *)self isSectionListViewGroupedWithContentShown])
    {
      v48 = *MEMORY[0x277D77DD0];
      if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
      {
        v49 = v48;
        logDescription5 = [(NCNotificationStructuredSectionList *)self logDescription];
        leadingNotificationRequest = [v26 leadingNotificationRequest];
        notificationIdentifier4 = [leadingNotificationRequest notificationIdentifier];
        un_logDigest4 = [notificationIdentifier4 un_logDigest];
        *v54 = 138543618;
        *&v54[4] = logDescription5;
        *&v54[12] = 2114;
        *&v54[14] = un_logDigest4;
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
    logDescription6 = [(NCNotificationStructuredSectionList *)self logDescription];
    notificationIdentifier5 = [requestCopy notificationIdentifier];
    un_logDigest5 = [notificationIdentifier5 un_logDigest];
    *v54 = 138543618;
    *&v54[4] = logDescription6;
    *&v54[12] = 2114;
    *&v54[14] = un_logDigest5;
    _os_log_impl(&dword_21E77E000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ filtering inserted notification request %{public}@", v54, 0x16u);
  }

  [(NCNotificationStructuredSectionList *)self _filterNotificationRequest:requestCopy];
LABEL_13:
  v22 = 3;
LABEL_14:

  return v22;
}

- (BOOL)removeNotificationRequest:(id)request
{
  v32 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  if ([(NCNotificationStructuredSectionList *)self _shouldFilterNotificationRequest:requestCopy])
  {
    if ([(NCNotificationStructuredSectionList *)self _removeFilteredNotificationRequest:requestCopy])
    {
      v5 = *MEMORY[0x277D77DD0];
      if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
      {
        v6 = v5;
        logDescription = [(NCNotificationStructuredSectionList *)self logDescription];
        notificationIdentifier = [requestCopy notificationIdentifier];
        un_logDigest = [notificationIdentifier un_logDigest];
        *v28 = 138543618;
        *&v28[4] = logDescription;
        *&v28[12] = 2114;
        *&v28[14] = un_logDigest;
        v10 = "%{public}@ removing filtered notification request %{public}@";
LABEL_13:
        _os_log_impl(&dword_21E77E000, v6, OS_LOG_TYPE_DEFAULT, v10, v28, 0x16u);

        goto LABEL_14;
      }

      goto LABEL_14;
    }

    goto LABEL_15;
  }

  if ([(NCNotificationStructuredSectionList *)self _shouldHideNotificationRequest:requestCopy])
  {
    if ([(NCNotificationStructuredSectionList *)self _removeHiddenNotificationRequest:requestCopy])
    {
      v11 = *MEMORY[0x277D77DD0];
      if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
      {
        v6 = v11;
        logDescription = [(NCNotificationStructuredSectionList *)self logDescription];
        notificationIdentifier = [requestCopy notificationIdentifier];
        un_logDigest = [notificationIdentifier un_logDigest];
        *v28 = 138543618;
        *&v28[4] = logDescription;
        *&v28[12] = 2114;
        *&v28[14] = un_logDigest;
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

  if ([(NCNotificationStructuredSectionList *)self _shouldPreloadNotificationRequest:requestCopy])
  {
    if ([(NCNotificationStructuredSectionList *)self _removePreloadedNotificationRequest:requestCopy])
    {
      v12 = *MEMORY[0x277D77DD0];
      if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
      {
        v6 = v12;
        logDescription = [(NCNotificationStructuredSectionList *)self logDescription];
        notificationIdentifier = [requestCopy notificationIdentifier];
        un_logDigest = [notificationIdentifier un_logDigest];
        *v28 = 138543618;
        *&v28[4] = logDescription;
        *&v28[12] = 2114;
        *&v28[14] = un_logDigest;
        v10 = "%{public}@ removing preloaded notification request %{public}@";
        goto LABEL_13;
      }

      goto LABEL_14;
    }

    goto LABEL_15;
  }

  v15 = [(NCNotificationStructuredSectionList *)self _existingIndexOfGroupForNotificationRequestForRemoval:requestCopy];
  if (v15 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v13 = 0;
  }

  else
  {
    v16 = v15;
    notificationGroups = [(NCNotificationStructuredSectionList *)self notificationGroups];
    v18 = [notificationGroups objectAtIndex:v16];

    v19 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
    {
      v20 = v19;
      logDescription2 = [(NCNotificationStructuredSectionList *)self logDescription];
      notificationIdentifier2 = [requestCopy notificationIdentifier];
      un_logDigest2 = [notificationIdentifier2 un_logDigest];
      logDescription3 = [v18 logDescription];
      *v28 = 138544130;
      *&v28[4] = logDescription2;
      *&v28[12] = 2114;
      *&v28[14] = un_logDigest2;
      *&v28[22] = 2114;
      v29 = logDescription3;
      v30 = 2048;
      v31 = v16;
      _os_log_impl(&dword_21E77E000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@ removing notification request %{public}@ in existing group %{public}@ at index %ld", v28, 0x2Au);
    }

    v13 = [v18 removeNotificationRequest:requestCopy];
    if ([v18 count])
    {
      listView = [v18 listView];
      isGrouped = [listView isGrouped];

      if (isGrouped)
      {
        groupListsToSort = [(NCNotificationStructuredSectionList *)self groupListsToSort];
        [groupListsToSort addObject:v18];
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

- (void)modifyNotificationRequest:(id)request
{
  v38 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  if ([(NCNotificationStructuredSectionList *)self _shouldFilterNotificationRequest:requestCopy])
  {
    v5 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
    {
      v6 = v5;
      logDescription = [(NCNotificationStructuredSectionList *)self logDescription];
      notificationIdentifier = [requestCopy notificationIdentifier];
      un_logDigest = [notificationIdentifier un_logDigest];
      v30 = 138543618;
      v31 = logDescription;
      v32 = 2114;
      v33 = un_logDigest;
      _os_log_impl(&dword_21E77E000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ modifying filtered notification request %{public}@", &v30, 0x16u);
    }

    [(NCNotificationStructuredSectionList *)self _filterNotificationRequest:requestCopy];
  }

  else if ([(NCNotificationStructuredSectionList *)self _shouldHideNotificationRequest:requestCopy])
  {
    v10 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
    {
      v11 = v10;
      logDescription2 = [(NCNotificationStructuredSectionList *)self logDescription];
      notificationIdentifier2 = [requestCopy notificationIdentifier];
      un_logDigest2 = [notificationIdentifier2 un_logDigest];
      v30 = 138543618;
      v31 = logDescription2;
      v32 = 2114;
      v33 = un_logDigest2;
      _os_log_impl(&dword_21E77E000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ modifying hidden notification request %{public}@", &v30, 0x16u);
    }

    [(NCNotificationStructuredSectionList *)self _modifyHiddenNotificationRequest:requestCopy];
  }

  else if ([(NCNotificationStructuredSectionList *)self _shouldPreloadNotificationRequest:requestCopy])
  {
    v15 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
    {
      v16 = v15;
      logDescription3 = [(NCNotificationStructuredSectionList *)self logDescription];
      notificationIdentifier3 = [requestCopy notificationIdentifier];
      un_logDigest3 = [notificationIdentifier3 un_logDigest];
      v30 = 138543618;
      v31 = logDescription3;
      v32 = 2114;
      v33 = un_logDigest3;
      _os_log_impl(&dword_21E77E000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ modifying preloaded notification request %{public}@", &v30, 0x16u);
    }

    [(NCNotificationStructuredSectionList *)self _modifyPreloadedNotificationRequest:requestCopy];
  }

  else
  {
    v20 = [(NCNotificationStructuredSectionList *)self _existingIndexOfGroupForNotificationRequest:requestCopy];
    if (v20 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v21 = v20;
      notificationGroups = [(NCNotificationStructuredSectionList *)self notificationGroups];
      v23 = [notificationGroups objectAtIndex:v21];

      v24 = *MEMORY[0x277D77DD0];
      if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
      {
        v25 = v24;
        logDescription4 = [(NCNotificationStructuredSectionList *)self logDescription];
        notificationIdentifier4 = [requestCopy notificationIdentifier];
        un_logDigest4 = [notificationIdentifier4 un_logDigest];
        logDescription5 = [v23 logDescription];
        v30 = 138544130;
        v31 = logDescription4;
        v32 = 2114;
        v33 = un_logDigest4;
        v34 = 2114;
        v35 = logDescription5;
        v36 = 2048;
        v37 = v21;
        _os_log_impl(&dword_21E77E000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@ modifying notification request %{public}@ in existing group %{public}@ at index %ld", &v30, 0x2Au);
      }

      [v23 modifyNotificationRequest:requestCopy];
      [(NCNotificationStructuredSectionList *)self _updatePositionOfGroup:v23 atIndex:v21];
      if ([(NCNotificationStructuredSectionList *)self isSectionListViewGroupedWithContentShown])
      {
        [(NCNotificationStructuredSectionList *)self _reloadLeadingNotificationRequestsForStackedNotificationGroupListsWithForceReloadAllStacks:0];
      }
    }
  }
}

- (void)reloadNotificationRequest:(id)request
{
  v23 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v5 = [(NCNotificationStructuredSectionList *)self _existingIndexOfGroupForNotificationRequest:requestCopy];
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = v5;
    notificationGroups = [(NCNotificationStructuredSectionList *)self notificationGroups];
    v8 = [notificationGroups objectAtIndex:v6];

    v9 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
    {
      v10 = v9;
      logDescription = [(NCNotificationStructuredSectionList *)self logDescription];
      notificationIdentifier = [requestCopy notificationIdentifier];
      un_logDigest = [notificationIdentifier un_logDigest];
      logDescription2 = [v8 logDescription];
      v15 = 138544130;
      v16 = logDescription;
      v17 = 2114;
      v18 = un_logDigest;
      v19 = 2114;
      v20 = logDescription2;
      v21 = 2048;
      v22 = v6;
      _os_log_impl(&dword_21E77E000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ reloading notification request %{public}@ in existing group %{public}@ at index %ld", &v15, 0x2Au);
    }

    [v8 reloadNotificationRequest:requestCopy];
  }
}

- (void)updateNotificationSectionSettings:(id)settings previousSectionSettings:(id)sectionSettings
{
  v58 = *MEMORY[0x277D85DE8];
  settingsCopy = settings;
  sectionSettingsCopy = sectionSettings;
  sectionIdentifier = [settingsCopy sectionIdentifier];
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  notificationGroups = [(NCNotificationStructuredSectionList *)self notificationGroups];
  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = __97__NCNotificationStructuredSectionList_updateNotificationSectionSettings_previousSectionSettings___block_invoke;
  v51[3] = &unk_278370628;
  v11 = sectionIdentifier;
  v52 = v11;
  v12 = v9;
  v53 = v12;
  [notificationGroups enumerateObjectsUsingBlock:v51];

  if (!sectionSettingsCopy)
  {
    goto LABEL_20;
  }

  showsInNotificationCenter = [settingsCopy showsInNotificationCenter];
  if (showsInNotificationCenter == [sectionSettingsCopy showsInNotificationCenter])
  {
    showsInNotificationCenter3 = 0;
    showsInNotificationCenter2 = 1;
  }

  else
  {
    showsInNotificationCenter2 = [settingsCopy showsInNotificationCenter];
    showsInNotificationCenter3 = [settingsCopy showsInNotificationCenter];
  }

  notificationsEnabled = [settingsCopy notificationsEnabled];
  notificationsEnabled2 = [sectionSettingsCopy notificationsEnabled];
  v18 = MEMORY[0x277D77DD0];
  if (notificationsEnabled == notificationsEnabled2)
  {
    if ((showsInNotificationCenter2 & 1) == 0)
    {
LABEL_7:
      v19 = *v18;
      if (os_log_type_enabled(*v18, OS_LOG_TYPE_DEFAULT))
      {
        v20 = v19;
        logDescription = [(NCNotificationStructuredSectionList *)self logDescription];
        *buf = 138543618;
        v55 = logDescription;
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

      if ((showsInNotificationCenter3 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_13;
    }
  }

  else if ((showsInNotificationCenter2 & [settingsCopy notificationsEnabled] & 1) == 0)
  {
    goto LABEL_7;
  }

  if (showsInNotificationCenter3)
  {
LABEL_13:
    v22 = *v18;
    if (os_log_type_enabled(*v18, OS_LOG_TYPE_DEFAULT))
    {
      v23 = v22;
      logDescription2 = [(NCNotificationStructuredSectionList *)self logDescription];
      *buf = 138543618;
      v55 = logDescription2;
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
  groupingSetting = [settingsCopy groupingSetting];
  if (groupingSetting != [sectionSettingsCopy groupingSetting])
  {
    v26 = *v18;
    if (os_log_type_enabled(*v18, OS_LOG_TYPE_DEFAULT))
    {
      v27 = v26;
      logDescription3 = [(NCNotificationStructuredSectionList *)self logDescription];
      *buf = 138543618;
      v55 = logDescription3;
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
    selfCopy = self;
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
  notificationGroups2 = [(NCNotificationStructuredSectionList *)self notificationGroups];
  v36 = MEMORY[0x277D85DD0];
  v37 = 3221225472;
  v38 = __97__NCNotificationStructuredSectionList_updateNotificationSectionSettings_previousSectionSettings___block_invoke_3;
  v39 = &unk_27836F718;
  v40 = v11;
  v41 = settingsCopy;
  v42 = sectionSettingsCopy;
  v32 = sectionSettingsCopy;
  v33 = settingsCopy;
  v34 = v11;
  [notificationGroups2 enumerateObjectsUsingBlock:&v36];

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

- (void)updateNotificationSystemSettings:(id)settings previousSystemSettings:(id)systemSettings
{
  settingsCopy = settings;
  systemSettingsCopy = systemSettings;
  notificationGroups = [(NCNotificationStructuredSectionList *)self notificationGroups];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __95__NCNotificationStructuredSectionList_updateNotificationSystemSettings_previousSystemSettings___block_invoke;
  v11[3] = &unk_278370628;
  v12 = settingsCopy;
  v13 = systemSettingsCopy;
  v9 = systemSettingsCopy;
  v10 = settingsCopy;
  [notificationGroups enumerateObjectsUsingBlock:v11];
}

- (void)setDeviceAuthenticated:(BOOL)authenticated
{
  if (self->_deviceAuthenticated != authenticated)
  {
    v11 = v3;
    v12 = v4;
    authenticatedCopy = authenticated;
    self->_deviceAuthenticated = authenticated;
    [(NCNotificationStructuredSectionList *)self _toggleHiddenNotificationsOnAuthenticationChange:?];
    if (authenticatedCopy)
    {
      [(NCNotificationStructuredSectionList *)self _showHiddenNotificationGroupsOnDeviceAuthentication];
    }

    else
    {
      [(NCNotificationStructuredSectionList *)self _hideNotificationGroupsOnDeviceReauthentication];
    }

    notificationGroups = [(NCNotificationStructuredSectionList *)self notificationGroups];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __62__NCNotificationStructuredSectionList_setDeviceAuthenticated___block_invoke;
    v9[3] = &__block_descriptor_33_e40_v32__0__NCNotificationGroupList_8Q16_B24l;
    v10 = authenticatedCopy;
    [notificationGroups enumerateObjectsUsingBlock:v9];

    listView = [(NCNotificationStructuredSectionList *)self listView];
    [listView setNeedsLayout];
  }
}

- (void)notificationsLoadedForSectionIdentifier:(id)identifier
{
  v12 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  if ([(NCNotificationStructuredSectionList *)self preloadsNotificationRequests])
  {
    v5 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
    {
      v6 = v5;
      logDescription = [(NCNotificationStructuredSectionList *)self logDescription];
      v8 = 138543618;
      v9 = logDescription;
      v10 = 2114;
      v11 = identifierCopy;
      _os_log_impl(&dword_21E77E000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ notifications loaded for section %{public}@", &v8, 0x16u);
    }

    [(NCNotificationStructuredSectionList *)self _postPreloadedNotificationRequestsForSectionIdentifier:identifierCopy];
  }
}

- (BOOL)containsNotificationGroup:(id)group
{
  groupCopy = group;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  allNotificationGroups = [(NCNotificationStructuredSectionList *)self allNotificationGroups];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __65__NCNotificationStructuredSectionList_containsNotificationGroup___block_invoke;
  v8[3] = &unk_27836F870;
  v6 = groupCopy;
  v9 = v6;
  v10 = &v11;
  [allNotificationGroups enumerateObjectsUsingBlock:v8];

  LOBYTE(allNotificationGroups) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);

  return allNotificationGroups;
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

- (BOOL)containsNotificationRequest:(id)request
{
  requestCopy = request;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  allNotificationGroups = [(NCNotificationStructuredSectionList *)self allNotificationGroups];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __67__NCNotificationStructuredSectionList_containsNotificationRequest___block_invoke;
  v8[3] = &unk_27836F870;
  v6 = requestCopy;
  v9 = v6;
  v10 = &v11;
  [allNotificationGroups enumerateObjectsUsingBlock:v8];

  LOBYTE(allNotificationGroups) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);

  return allNotificationGroups;
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

- (void)setLogDescription:(id)description
{
  v4 = MEMORY[0x277CCACA8];
  descriptionCopy = description;
  v6 = objc_opt_class();
  v9 = NSStringFromClass(v6);
  v7 = [v4 stringWithFormat:@"%@ [%@]", descriptionCopy, v9];

  logDescription = self->_logDescription;
  self->_logDescription = v7;
}

- (NSDate)comparisonDate
{
  notificationGroups = [(NCNotificationStructuredSectionList *)self notificationGroups];
  firstObject = [notificationGroups firstObject];
  comparisonDate = [firstObject comparisonDate];

  return comparisonDate;
}

- (double)notificationListView:(id)view heightForItemAtIndex:(unint64_t)index withWidth:(double)width inDisplayListAsStackMode:(BOOL)mode ignoreExpandedGroupStack:(BOOL)stack
{
  stackCopy = stack;
  modeCopy = mode;
  viewCopy = view;
  orderedNotificationListComponents = [(NCNotificationStructuredSectionList *)self orderedNotificationListComponents];
  if ([orderedNotificationListComponents count] > index)
  {
    v14 = [orderedNotificationListComponents objectAtIndex:index];
    if (v14)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        listView = [v14 listView];
        [listView frame];
        x = v30.origin.x;
        y = v30.origin.y;
        height = v30.size.height;
        if (CGRectGetWidth(v30) == 0.0)
        {
          [listView setFrame:{x, y, width, height}];
        }

        v19 = objc_opt_class();
        v20 = listView;
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
          isGrouped = [v22 isGrouped];
          LODWORD(v24) = 1.0;
          if (modeCopy)
          {
            v25 = [(NCNotificationStructuredSectionList *)self count];
            v24 = 0.0;
            if (v25 == 1)
            {
              *&v24 = 1.0;
            }
          }

          v26 = [MEMORY[0x277CCABB0] numberWithFloat:v24];
          [v22 calculateSizeForGrouped:isGrouped | stackCopy ignoreFeaturedLeadingView:0 ignoreExpandedGroupStack:stackCopy inDisplayListAsStackMode:modeCopy dynamicGroupedOverlapHeightMultiple:v26];
        }

        else
        {
          [v20 sizeThatFits:{width, 0.0}];
        }
      }
    }
  }

  UIRoundToViewScale();
  v28 = v27;

  return v28;
}

- (id)notificationListView:(id)view viewForItemAtIndex:(unint64_t)index
{
  orderedNotificationListComponents = [(NCNotificationStructuredSectionList *)self orderedNotificationListComponents];
  if ([orderedNotificationListComponents count] <= index)
  {
    listView = 0;
  }

  else
  {
    v7 = [orderedNotificationListComponents objectAtIndex:index];
    if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      listView = [v7 listView];
      [listView updateSubviewTranslation:0.0];
      [listView setShowContentForGroupedViews:{-[NCNotificationStructuredSectionList isSectionListViewGroupedWithContentShown](self, "isSectionListViewGroupedWithContentShown")}];
    }

    else
    {
      listView = 0;
    }
  }

  return listView;
}

- (unint64_t)notificationListViewNumberOfItems:(id)items
{
  orderedNotificationListComponents = [(NCNotificationStructuredSectionList *)self orderedNotificationListComponents];
  v4 = [orderedNotificationListComponents count];

  return v4;
}

- (id)headerViewForNotificationList:(id)list
{
  title = [(NCNotificationStructuredSectionList *)self title];
  if (title && (v5 = title, v6 = [(NCNotificationStructuredSectionList *)self count], v5, v6))
  {
    headerView = self->_headerView;
    if (!headerView)
    {
      _newSectionHeaderView = [(NCNotificationStructuredSectionList *)self _newSectionHeaderView];
      v9 = self->_headerView;
      self->_headerView = _newSectionHeaderView;

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

- (double)headerViewHeightForNotificationList:(id)list withWidth:(double)width
{
  if (!self->_headerViewHeightValid)
  {
    headerView = [(NCNotificationStructuredSectionList *)self headerView];

    if (headerView)
    {
      title = [(NCNotificationStructuredSectionList *)self title];
      headerView2 = [(NCNotificationStructuredSectionList *)self headerView];
      +[NCNotificationListSectionHeaderView headerHeightWithWidth:title:isShowingCollapseButton:](NCNotificationListSectionHeaderView, "headerHeightWithWidth:title:isShowingCollapseButton:", title, [headerView2 showCollapseButton], width);
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

- (void)recycleView:(id)view
{
  viewCopy = view;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [viewCopy recycleVisibleViews];
  }
}

- (void)handleWake:(BOOL)wake
{
  wakeCopy = wake;
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  allNotificationRequests = [(NCNotificationStructuredSectionList *)self allNotificationRequests];
  v6 = [allNotificationRequests countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(allNotificationRequests);
        }

        v10 = [(NCNotificationListCache *)self->_notificationListCache listCellForNotificationRequest:*(*(&v12 + 1) + 8 * v9) viewControllerDelegate:0 createNewIfNecessary:0 shouldConfigure:0];
        contentViewController = [v10 contentViewController];
        [contentViewController handleWake:wakeCopy];

        ++v9;
      }

      while (v7 != v9);
      v7 = [allNotificationRequests countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

- (void)handleCoverSheetVisibilityChange:(BOOL)change
{
  v15 = *MEMORY[0x277D85DE8];
  if (!change)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    allNotificationRequests = [(NCNotificationStructuredSectionList *)self allNotificationRequests];
    v5 = [allNotificationRequests countByEnumeratingWithState:&v10 objects:v14 count:16];
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
            objc_enumerationMutation(allNotificationRequests);
          }

          v9 = [(NCNotificationListCache *)self->_notificationListCache listCellForNotificationRequest:*(*(&v10 + 1) + 8 * v8) viewControllerDelegate:0 createNewIfNecessary:0 shouldConfigure:0];
          [v9 hideActionButtonsAnimated:0 fastAnimation:0 completion:0];

          ++v8;
        }

        while (v6 != v8);
        v6 = [allNotificationRequests countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }
  }
}

- (BOOL)respondsToSelector:(SEL)selector
{
  v8.receiver = self;
  v8.super_class = NCNotificationStructuredSectionList;
  if ([(NCNotificationStructuredSectionList *)&v8 respondsToSelector:?])
  {
    v5 = 1;
  }

  else if ([NCNotificationStructuredListUtilities isNotificationListComponentDelegateMethod:selector])
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
  if (+[NCNotificationStructuredListUtilities isNotificationListComponentDelegateMethod:](NCNotificationStructuredListUtilities, "isNotificationListComponentDelegateMethod:", [invocationCopy selector]))
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
      v7.super_class = NCNotificationStructuredSectionList;
      [(NCNotificationStructuredSectionList *)&v7 forwardInvocation:invocationCopy];
    }
  }
}

- (id)notificationListComponent:(id)component containerViewProviderForExpandedContentForViewController:(id)controller
{
  controllerCopy = controller;
  delegate = [(NCNotificationStructuredSectionList *)self delegate];
  v7 = [delegate notificationListComponent:self containerViewProviderForExpandedContentForViewController:controllerCopy];

  return v7;
}

- (void)notificationListComponent:(id)component shouldFinishLongLookTransitionForNotificationRequest:(id)request trigger:(int64_t)trigger withCompletionBlock:(id)block
{
  componentCopy = component;
  requestCopy = request;
  blockCopy = block;
  [(NCNotificationStructuredSectionList *)self setGroupListPresentingLongLook:componentCopy];
  objc_initWeak(&location, self);
  delegate = [(NCNotificationStructuredSectionList *)self delegate];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __146__NCNotificationStructuredSectionList_notificationListComponent_shouldFinishLongLookTransitionForNotificationRequest_trigger_withCompletionBlock___block_invoke;
  v15[3] = &unk_2783706E8;
  objc_copyWeak(&v17, &location);
  v14 = blockCopy;
  v16 = v14;
  [delegate notificationListComponent:self shouldFinishLongLookTransitionForNotificationRequest:requestCopy trigger:trigger withCompletionBlock:v15];

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

- (void)notificationListComponent:(id)component isPresentingLongLookForViewController:(id)controller
{
  if (controller)
  {
    componentCopy = component;
  }

  else
  {
    componentCopy = 0;
  }

  controllerCopy = controller;
  [(NCNotificationStructuredSectionList *)self setGroupListPresentingLongLook:componentCopy];
  delegate = [(NCNotificationStructuredSectionList *)self delegate];
  [delegate notificationListComponent:self isPresentingLongLookForViewController:controllerCopy];

  groupListPresentingLongLook = [(NCNotificationStructuredSectionList *)self groupListPresentingLongLook];
  if (groupListPresentingLongLook)
  {
  }

  else if ([(NCNotificationStructuredSectionList *)self deferDynamicGroupingForPresentedLongLookOnDeviceLock])
  {

    [(NCNotificationStructuredSectionList *)self _toggleHiddenNotificationsOnAuthenticationChange:0];
  }
}

- (void)notificationListBaseComponentDidRemoveAll:(id)all
{
  [(NCNotificationStructuredSectionList *)self _removeNotificationGroupList:all];
  [(NCNotificationStructuredSectionList *)self _toggleDynamicGroupingIfNecessary];
  delegate = [(NCNotificationStructuredSectionList *)self delegate];
  [delegate notificationListBaseComponentDidRemoveAll:self];
}

- (void)notificationListComponent:(id)component didRemoveNotificationRequest:(id)request
{
  componentCopy = component;
  requestCopy = request;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = componentCopy;
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
      groupListsToSort = [(NCNotificationStructuredSectionList *)self groupListsToSort];
      [groupListsToSort addObject:v9];
LABEL_7:

      goto LABEL_9;
    }

    [(NCNotificationStructuredSectionList *)self _removeNotificationGroupList:v9];
    [(NCNotificationStructuredSectionList *)self _toggleDynamicGroupingIfNecessary];
    notificationGroups = [(NCNotificationStructuredSectionList *)self notificationGroups];
    v12 = [notificationGroups count];

    if (!v12)
    {
      groupListsToSort = [(NCNotificationStructuredSectionList *)self listView];
      [groupListsToSort reloadHeaderView];
      goto LABEL_7;
    }
  }

LABEL_9:
  delegate = [(NCNotificationStructuredSectionList *)self delegate];
  [delegate notificationListComponent:self didRemoveNotificationRequest:requestCopy];
}

- (void)notificationListBaseComponent:(id)component willRemoveView:(id)view
{
  viewCopy = view;
  delegate = [(NCNotificationStructuredSectionList *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate notificationListBaseComponent:self willRemoveView:viewCopy];
  }
}

- (void)notificationListBaseComponent:(id)component didRemoveView:(id)view
{
  viewCopy = view;
  delegate = [(NCNotificationStructuredSectionList *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate notificationListBaseComponent:self didRemoveView:viewCopy];
  }
}

- (BOOL)notificationListComponent:(id)component shouldAllowInteractionsForNotificationRequest:(id)request
{
  componentCopy = component;
  requestCopy = request;
  if (-[NCNotificationStructuredSectionList isSectionListCurrentlyGroupedWithContentShown](self, "isSectionListCurrentlyGroupedWithContentShown") && ((objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) ? (v8 = 0) : (v8 = componentCopy), (v9 = v8) != 0 && (v10 = v9, -[NCNotificationStructuredSectionList notificationGroups](self, "notificationGroups"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 indexOfObject:v10], v11, v10, v12)))
  {
    v13 = 0;
  }

  else
  {
    delegate = [(NCNotificationStructuredSectionList *)self delegate];
    v13 = [delegate notificationListComponent:self shouldAllowInteractionsForNotificationRequest:requestCopy];
  }

  return v13;
}

- (void)notificationListBaseComponent:(id)component didTransitionActionsForSwipeInteraction:(id)interaction revealed:(BOOL)revealed
{
  revealedCopy = revealed;
  componentCopy = component;
  interactionCopy = interaction;
  delegate = [(NCNotificationStructuredSectionList *)self delegate];
  [delegate notificationListBaseComponent:componentCopy didTransitionActionsForSwipeInteraction:interactionCopy revealed:revealedCopy];

  if (!revealedCopy || (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v11 = componentCopy, (isKindOfClass & 1) == 0))
  {
    v11 = 0;
  }

  [(NCNotificationStructuredSectionList *)self setGroupListWithActionsRevealed:v11];
}

- (id)notificationGroupList:(id)list requestsAuxiliaryOptionsContentProviderForNotificationRequest:(id)request isLongLook:(BOOL)look
{
  lookCopy = look;
  requestCopy = request;
  delegate = [(NCNotificationStructuredSectionList *)self delegate];
  v9 = [delegate notificationStructuredSectionList:self requestsAuxiliaryOptionsContentProviderForNotificationRequest:requestCopy isLongLook:lookCopy];

  return v9;
}

- (void)notificationListPresentableGroup:(id)group requestsScrollToTopOfCollectionWithCompletion:(id)completion
{
  completionCopy = completion;
  groupCopy = group;
  notificationGroups = [(NCNotificationStructuredSectionList *)self notificationGroups];
  v8 = [notificationGroups indexOfObject:groupCopy];

  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (completionCopy)
    {
      completionCopy[2]();
    }
  }

  else
  {
    listView = [(NCNotificationStructuredSectionList *)self listView];
    [listView layoutOffsetForViewAtIndex:v8];
    v11 = v10;

    delegate = [(NCNotificationStructuredSectionList *)self delegate];
    [delegate notificationListBaseComponent:self requestsScrollingToContentOffset:completionCopy withCompletion:v11];
  }
}

- (BOOL)isViewVisibleForNotificationGroupList:(id)list
{
  listCopy = list;
  orderedNotificationListComponents = [(NCNotificationStructuredSectionList *)self orderedNotificationListComponents];
  v6 = [orderedNotificationListComponents indexOfObject:listCopy];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  listView = [(NCNotificationStructuredSectionList *)self listView];
  v9 = [listView isVisibleForViewAtIndex:v6];

  return v9;
}

- (BOOL)isNotificationGroupListInCollapsedStack:(id)stack
{
  delegate = [(NCNotificationStructuredSectionList *)self delegate];
  listView = [(NCNotificationStructuredSectionList *)self listView];
  if ([listView isGrouped] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v6 = [delegate isNotificationStructuredSectionListCollapsable:self];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)handleTapOnNotificationListBaseComponent:(id)component
{
  if ([(NCNotificationStructuredSectionList *)self isSectionListViewGroupedWithContentShown])
  {
    listView = [(NCNotificationStructuredSectionList *)self listView];
    isGrouped = [listView isGrouped];

    if (isGrouped)
    {
      delegate = [(NCNotificationStructuredSectionList *)self delegate];
      if (delegate && (objc_opt_respondsToSelector() & 1) != 0 && [delegate handleTapOnNotificationListBaseComponent:self])
      {
        LOBYTE(isGrouped) = 1;
        [(NCNotificationStructuredSectionList *)self _reloadLeadingNotificationRequestsForStackedNotificationGroupListsWithForceReloadAllStacks:1];
      }

      else
      {
        LOBYTE(isGrouped) = 0;
      }
    }
  }

  else
  {
    LOBYTE(isGrouped) = 0;
  }

  return isGrouped;
}

- (BOOL)shouldNotificationGroupListPanHorizontally:(id)horizontally
{
  horizontallyCopy = horizontally;
  notificationGroups = [(NCNotificationStructuredSectionList *)self notificationGroups];
  v6 = [notificationGroups indexOfObject:horizontallyCopy];

  v7 = ![(NCNotificationStructuredSectionList *)self isSectionListCurrentlyGroupedWithContentShown];
  return v6 == 0x7FFFFFFFFFFFFFFFLL || v6 == 0 || v7;
}

- (BOOL)canAlignContentToBottomForLeadingNotificationRequestForNotificationGroupList:(id)list
{
  sectionType = self->_sectionType;
  listCopy = list;
  notificationGroups = [(NCNotificationStructuredSectionList *)self notificationGroups];
  v7 = [notificationGroups indexOfObject:listCopy];

  return sectionType == 2 && (v7 - 1) < 2;
}

- (BOOL)shouldAlignContentToBottomForLeadingNotificationRequestForNotificationGroupList:(id)list
{
  listCopy = list;
  notificationGroups = [(NCNotificationStructuredSectionList *)self notificationGroups];
  v6 = [notificationGroups indexOfObject:listCopy];

  result = [(NCNotificationStructuredSectionList *)self isSectionListCurrentlyGroupedWithContentShown];
  if ((v6 - 1) >= 2)
  {
    return 0;
  }

  return result;
}

- (id)collapsedSectionSummaryStringForLeadingNotificationRequestForNotificationGroupList:(id)list
{
  listCopy = list;
  notificationGroups = [(NCNotificationStructuredSectionList *)self notificationGroups];
  v6 = [notificationGroups indexOfObject:listCopy];

  isSectionListCurrentlyGroupedWithContentShown = [(NCNotificationStructuredSectionList *)self isSectionListCurrentlyGroupedWithContentShown];
  _collapsedSectionSummaryString = 0;
  if (isSectionListCurrentlyGroupedWithContentShown && v6 == 2)
  {
    notificationGroups2 = [(NCNotificationStructuredSectionList *)self notificationGroups];
    v10 = [notificationGroups2 count];

    if (v10 < 4)
    {
      _collapsedSectionSummaryString = 0;
    }

    else
    {
      _collapsedSectionSummaryString = [(NCNotificationStructuredSectionList *)self _collapsedSectionSummaryString];
    }
  }

  return _collapsedSectionSummaryString;
}

- (BOOL)shouldShowSummaryTextAsContentForLeadingNotificationRequestForNotificationGroupList:(id)list
{
  listCopy = list;
  notificationGroups = [(NCNotificationStructuredSectionList *)self notificationGroups];
  v6 = [notificationGroups count];

  notificationGroups2 = [(NCNotificationStructuredSectionList *)self notificationGroups];
  v8 = [notificationGroups2 indexOfObject:listCopy];

  isSectionListViewGroupedWithContentShown = [(NCNotificationStructuredSectionList *)self isSectionListViewGroupedWithContentShown];
  v10 = 0;
  if (isSectionListViewGroupedWithContentShown && v8)
  {
    v10 = (v8 < 2 || v6 == 3) && [listCopy notificationCount] > 1;
  }

  return v10;
}

- (unint64_t)importantAdornmentEligibleOptionsForNotificationGroupList:(id)list
{
  sectionType = [(NCNotificationStructuredSectionList *)self sectionType];
  if (sectionType > 0xC)
  {
    return -1;
  }

  if (((1 << sectionType) & 0x1BF9) != 0)
  {
    return -7;
  }

  if (((1 << sectionType) & 6) != 0)
  {
    return -5;
  }

  _highlightsList = [(NCNotificationStructuredSectionList *)self _highlightsList];
  forceExpanded = [_highlightsList forceExpanded];

  if (forceExpanded)
  {
    return -3;
  }

  else
  {
    return -7;
  }
}

- (BOOL)isEligibleToPerformGroupAnimationForNotificationListBaseComponent:(id)component toGrouped:(BOOL)grouped
{
  groupedCopy = grouped;
  componentCopy = component;
  delegate = [(NCNotificationStructuredSectionList *)self delegate];
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

- (id)_highlightsList
{
  if ([(NCNotificationStructuredSectionList *)self sectionType]== 10)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }

    v4 = selfCopy;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)sectionHeaderViewDidTransitionToClearState:(id)state
{
  stateCopy = state;
  delegate = [(NCNotificationStructuredSectionList *)self delegate];
  [delegate notificationListComponent:self didTransitionSectionHeaderView:stateCopy toClearState:1];
}

- (void)sectionHeaderView:(id)view didReceiveClearActionForSectionIdentifier:(id)identifier
{
  v14 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v6 = *MEMORY[0x277D77DD0];
  if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    logDescription = [(NCNotificationStructuredSectionList *)self logDescription];
    v10 = 138543618;
    v11 = logDescription;
    v12 = 2114;
    v13 = identifierCopy;
    _os_log_impl(&dword_21E77E000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ requests clearing notifications in section with identifier %{public}@", &v10, 0x16u);
  }

  [(NCNotificationStructuredSectionList *)self clearAll];
  delegate = [(NCNotificationStructuredSectionList *)self delegate];
  [delegate notificationListComponentChangedContent:self];
}

- (void)sectionHeaderViewDidReceiveClearAllAction:(id)action
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277D77DD0];
  if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    logDescription = [(NCNotificationStructuredSectionList *)self logDescription];
    v8 = 138543362;
    v9 = logDescription;
    _os_log_impl(&dword_21E77E000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ requests clearing all notifications", &v8, 0xCu);
  }

  delegate = [(NCNotificationStructuredSectionList *)self delegate];
  [delegate notificationListBaseComponentRequestsClearingAll:self];
}

- (id)containerViewForHeaderViewPreviewInteractionPresentedContent:(id)content
{
  delegate = [(NCNotificationStructuredSectionList *)self delegate];
  v5 = [delegate containerViewForPreviewInteractionPresentedContentForNotificationListBaseComponent:self];

  return v5;
}

- (void)sectionHeaderViewDidBeginForceTouchInteraction:(id)interaction
{
  delegate = [(NCNotificationStructuredSectionList *)self delegate];
  [delegate notificationListBaseComponent:self didBeginUserInteractionWithViewController:0];
}

- (void)sectionHeaderViewDidPresentForceTouchView:(id)view
{
  viewCopy = view;
  delegate = [(NCNotificationStructuredSectionList *)self delegate];
  [delegate notificationListComponent:self didPresentSectionHeaderView:viewCopy inForceTouchState:1];
}

- (void)sectionHeaderViewDidDismissForceTouchView:(id)view
{
  viewCopy = view;
  delegate = [(NCNotificationStructuredSectionList *)self delegate];
  [delegate notificationListComponent:self didPresentSectionHeaderView:viewCopy inForceTouchState:0];

  [delegate notificationListBaseComponent:self didEndUserInteractionWithViewController:0];
}

- (id)legibilitySettingsForSectionHeaderView:(id)view
{
  delegate = [(NCNotificationStructuredSectionList *)self delegate];
  v5 = [delegate legibilitySettingsForNotificationListBaseComponent:self];

  return v5;
}

- (void)adjustForLegibilitySettingsChange:(id)change
{
  changeCopy = change;
  notificationGroups = [(NCNotificationStructuredSectionList *)self notificationGroups];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __73__NCNotificationStructuredSectionList_adjustForLegibilitySettingsChange___block_invoke;
  v8[3] = &unk_278370360;
  v9 = changeCopy;
  v6 = changeCopy;
  [notificationGroups enumerateObjectsUsingBlock:v8];

  headerView = [(NCNotificationStructuredSectionList *)self headerView];
  [headerView adjustForLegibilitySettingsChange:v6];
}

- (BOOL)adjustForContentSizeCategoryChange
{
  notificationGroups = [(NCNotificationStructuredSectionList *)self notificationGroups];
  [notificationGroups enumerateObjectsUsingBlock:&__block_literal_global_125];

  headerView = [(NCNotificationStructuredSectionList *)self headerView];
  [headerView adjustForContentSizeCategoryChange];

  self->_headerViewHeightValid = 0;
  return 1;
}

- (void)_insertViewToListAtIndex:(unint64_t)index animated:(BOOL)animated
{
  animatedCopy = animated;
  listView = [(NCNotificationStructuredSectionList *)self listView];
  [listView insertViewAtIndex:index animated:animatedCopy];
}

- (void)_removeViewFromListAtIndex:(unint64_t)index animated:(BOOL)animated isHorizontallyDisplaced:(BOOL)displaced
{
  displacedCopy = displaced;
  animatedCopy = animated;
  listView = [(NCNotificationStructuredSectionList *)self listView];
  [listView removeViewAtIndex:index animated:animatedCopy isHorizontallyDisplaced:displacedCopy];
}

uint64_t __71__NCNotificationStructuredSectionList_notificationCountIncludingHidden__block_invoke_2(uint64_t a1, void *a2)
{
  result = [a2 notificationCount];
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

- (unint64_t)_indexOfOrderedNotificationListComponent:(id)component
{
  componentCopy = component;
  orderedNotificationListComponents = [(NCNotificationStructuredSectionList *)self orderedNotificationListComponents];
  v6 = [orderedNotificationListComponents indexOfObject:componentCopy];

  return v6;
}

- (void)_configureSectionListView:(id)view
{
  viewCopy = view;
  [viewCopy setDataSource:self];
  [viewCopy setGrouped:0];
  [viewCopy setRevealed:{-[NCNotificationStructuredSectionList isNotificationListViewRevealed](self, "isNotificationListViewRevealed")}];
  isNotificationListViewRevealed = [(NCNotificationStructuredSectionList *)self isNotificationListViewRevealed];
  v5 = 0.0;
  if (isNotificationListViewRevealed)
  {
    v5 = 1.0;
  }

  [viewCopy setRevealPercentage:v5];
  [viewCopy setShowContentForGroupedViews:{-[NCNotificationStructuredSectionList isSectionListViewGroupedWithContentShown](self, "isSectionListViewGroupedWithContentShown")}];
}

- (unint64_t)_groupingSettingForSectionIdentifier:(id)identifier
{
  v3 = [(NCNotificationStructuredSectionList *)self _sectionSettingsForSectionIdentifier:identifier];
  groupingSetting = [v3 groupingSetting];

  return groupingSetting;
}

- (id)_newGroupListForNotificationRequest:(id)request
{
  requestCopy = request;
  v5 = [NCNotificationGroupList alloc];
  sectionIdentifier = [requestCopy sectionIdentifier];
  threadIdentifier = [requestCopy threadIdentifier];
  v8 = [(NCNotificationGroupList *)v5 initWithSectionIdentifier:sectionIdentifier threadIdentifier:threadIdentifier];

  [(NCNotificationGroupList *)v8 setDeviceAuthenticated:[(NCNotificationStructuredSectionList *)self deviceAuthenticated]];
  [(NCNotificationListPresentableGroup *)v8 setDelegate:self];
  notificationListCache = [(NCNotificationStructuredSectionList *)self notificationListCache];
  [(NCNotificationListPresentableGroup *)v8 setNotificationListCache:notificationListCache];

  sectionIdentifier2 = [requestCopy sectionIdentifier];
  v11 = [(NCNotificationStructuredSectionList *)self _sectionSettingsForSectionIdentifier:sectionIdentifier2];
  [(NCNotificationGroupList *)v8 setNotificationSectionSettings:v11];

  v12 = [(NCNotificationStructuredSectionList *)self notificationSystemSettingsForNotificationListComponent:self];
  [(NCNotificationGroupList *)v8 setNotificationSystemSettings:v12];

  delegate = [(NCNotificationStructuredSectionList *)self delegate];
  v14 = [delegate notificationListComponent:self isClockNotificationRequest:requestCopy];

  [(NCNotificationGroupList *)v8 setClockNotificationGroup:v14];
  _backgroundGroupNameBase = [(NCNotificationStructuredSectionList *)self _backgroundGroupNameBase];
  [(NCNotificationListPresentableGroup *)v8 setMaterialGroupNameBase:_backgroundGroupNameBase];

  return v8;
}

- (id)_newSectionHeaderView
{
  v3 = [NCNotificationListSectionHeaderView alloc];
  v4 = [(NCNotificationListSectionHeaderView *)v3 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  title = [(NCNotificationStructuredSectionList *)self title];
  [(NCNotificationListSectionHeaderView *)v4 setTitle:title];

  [(NCNotificationListSectionHeaderView *)v4 setDelegate:self];
  _legibilitySettings = [(NCNotificationStructuredSectionList *)self _legibilitySettings];
  [(NCNotificationListSectionHeaderView *)v4 adjustForLegibilitySettingsChange:_legibilitySettings];

  [(NCNotificationListSectionHeaderView *)v4 setAdjustsFontForContentSizeCategory:1];
  _backgroundGroupNameBase = [(NCNotificationStructuredSectionList *)self _backgroundGroupNameBase];
  [(NCNotificationListSectionHeaderView *)v4 setMaterialGroupNameBase:_backgroundGroupNameBase];

  return v4;
}

- (unint64_t)existingIndexOfGroupForNotificationRequestForInsertion:(id)insertion
{
  insertionCopy = insertion;
  _notificationGroupsForInsertion = [(NCNotificationStructuredSectionList *)self _notificationGroupsForInsertion];
  v6 = [(NCNotificationStructuredSectionList *)self _existingIndexOfGroupForNotificationRequest:insertionCopy inNotificationGroupLists:_notificationGroupsForInsertion];

  v7 = 0x7FFFFFFFFFFFFFFFLL;
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [_notificationGroupsForInsertion objectAtIndex:v6];
    notificationGroups = [(NCNotificationStructuredSectionList *)self notificationGroups];
    v7 = [notificationGroups indexOfObject:v8];
  }

  return v7;
}

- (unint64_t)_existingIndexOfGroupForNotificationRequestForRemoval:(id)removal
{
  removalCopy = removal;
  notificationGroups = [(NCNotificationStructuredSectionList *)self notificationGroups];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __93__NCNotificationStructuredSectionList__existingIndexOfGroupForNotificationRequestForRemoval___block_invoke;
  v9[3] = &unk_278370600;
  v10 = removalCopy;
  v6 = removalCopy;
  v7 = [notificationGroups indexOfObjectPassingTest:v9];

  return v7;
}

- (unint64_t)_existingIndexOfGroupForNotificationRequest:(id)request
{
  requestCopy = request;
  notificationGroups = [(NCNotificationStructuredSectionList *)self notificationGroups];
  v6 = [(NCNotificationStructuredSectionList *)self _existingIndexOfGroupForNotificationRequest:requestCopy inNotificationGroupLists:notificationGroups];

  return v6;
}

- (unint64_t)_existingIndexOfGroupForNotificationRequest:(id)request inNotificationGroupLists:(id)lists
{
  listsCopy = lists;
  requestCopy = request;
  sectionIdentifier = [requestCopy sectionIdentifier];
  threadIdentifier = [requestCopy threadIdentifier];
  v10 = [(NCNotificationStructuredSectionList *)self _existingIndexOfGroupForNotificationRequest:requestCopy withSectionIdentifier:sectionIdentifier threadIdentifier:threadIdentifier inNotificationGroupLists:listsCopy];

  return v10;
}

- (unint64_t)_existingIndexOfGroupForNotificationRequest:(id)request withSectionIdentifier:(id)identifier threadIdentifier:(id)threadIdentifier inNotificationGroupLists:(id)lists
{
  requestCopy = request;
  identifierCopy = identifier;
  threadIdentifierCopy = threadIdentifier;
  listsCopy = lists;
  if ([(NCNotificationStructuredSectionList *)self isPerformingDynamicGrouping])
  {
    v14 = [(NCNotificationStructuredSectionList *)self _sectionSettingsForSectionIdentifier:identifierCopy];
    contentPreviewSetting = [v14 contentPreviewSetting];
    v16 = [(NCNotificationStructuredSectionList *)self _groupingSettingForSectionIdentifier:identifierCopy];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __147__NCNotificationStructuredSectionList__existingIndexOfGroupForNotificationRequest_withSectionIdentifier_threadIdentifier_inNotificationGroupLists___block_invoke;
    v26[3] = &unk_278370730;
    v30 = contentPreviewSetting;
    v31 = v16;
    v26[4] = self;
    v27 = requestCopy;
    v28 = identifierCopy;
    v29 = threadIdentifierCopy;
    v17 = requestCopy;
    v18 = threadIdentifierCopy;
    v19 = identifierCopy;
    v20 = [listsCopy indexOfObjectPassingTest:v26];
  }

  else
  {
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __147__NCNotificationStructuredSectionList__existingIndexOfGroupForNotificationRequest_withSectionIdentifier_threadIdentifier_inNotificationGroupLists___block_invoke_2;
    v22[3] = &unk_278370758;
    v22[4] = self;
    v23 = identifierCopy;
    v24 = threadIdentifierCopy;
    v25 = requestCopy;
    v18 = requestCopy;
    v19 = threadIdentifierCopy;
    v14 = identifierCopy;
    v20 = [listsCopy indexOfObjectPassingTest:v22];
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

- (void)_updatePositionOfGroup:(id)group atIndex:(unint64_t)index
{
  v41 = *MEMORY[0x277D85DE8];
  groupCopy = group;
  v7 = [(NCNotificationStructuredSectionList *)self _insertionIndexForGroup:groupCopy];
  if (v7 != index && v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = v7;
    v10 = MEMORY[0x277D77DD0];
    if (index != 0x7FFFFFFFFFFFFFFFLL)
    {
      v11 = [(NCNotificationStructuredSectionList *)self _indexOfOrderedNotificationListComponent:groupCopy];
      v12 = *v10;
      if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
      {
        v13 = v12;
        logDescription = [(NCNotificationStructuredSectionList *)self logDescription];
        logDescription2 = [groupCopy logDescription];
        v33 = 138543618;
        v34 = logDescription;
        v35 = 2114;
        v36 = logDescription2;
        _os_log_impl(&dword_21E77E000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ removing notificationGroup %{public}@", &v33, 0x16u);
      }

      notificationGroups = [(NCNotificationStructuredSectionList *)self notificationGroups];
      [notificationGroups removeObject:groupCopy];

      [(NCNotificationStructuredSectionList *)self _removeViewFromListAtIndex:v11 animated:0 isHorizontallyDisplaced:0];
    }

    v17 = (__PAIR128__(v9, index) - v9) >> 64;
    notificationGroups2 = [(NCNotificationStructuredSectionList *)self notificationGroups];
    v19 = [notificationGroups2 count];

    if (v17 > v19)
    {
      v20 = *v10;
      if (os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
      {
        v28 = v20;
        logDescription3 = [(NCNotificationStructuredSectionList *)self logDescription];
        logDescription4 = [groupCopy logDescription];
        notificationGroups3 = [(NCNotificationStructuredSectionList *)self notificationGroups];
        v32 = [notificationGroups3 count];
        v33 = 138544130;
        v34 = logDescription3;
        v35 = 2114;
        v36 = logDescription4;
        v37 = 2048;
        v38 = v17;
        v39 = 2048;
        v40 = v32;
        _os_log_error_impl(&dword_21E77E000, v28, OS_LOG_TYPE_ERROR, "%{public}@ attempting to insert group %{public}@ at index %ld while total group count is %ld", &v33, 0x2Au);
      }

      notificationGroups4 = [(NCNotificationStructuredSectionList *)self notificationGroups];
      v17 = [notificationGroups4 count];
    }

    v22 = *v10;
    if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
    {
      v23 = v22;
      logDescription5 = [(NCNotificationStructuredSectionList *)self logDescription];
      logDescription6 = [groupCopy logDescription];
      v33 = 138543874;
      v34 = logDescription5;
      v35 = 2114;
      v36 = logDescription6;
      v37 = 2048;
      v38 = v17;
      _os_log_impl(&dword_21E77E000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@ inserting notificationGroup %{public}@ at index %ld", &v33, 0x20u);
    }

    notificationGroups5 = [(NCNotificationStructuredSectionList *)self notificationGroups];
    [notificationGroups5 insertObject:groupCopy atIndex:v17];

    [(NCNotificationStructuredSectionList *)self _insertViewToListAtIndex:[(NCNotificationStructuredSectionList *)self _indexOfOrderedNotificationListComponent:groupCopy] animated:1];
    listView = [(NCNotificationStructuredSectionList *)self listView];
    [listView setNeedsLayout];
  }
}

- (unint64_t)_insertionIndexForGroup:(id)group
{
  groupCopy = group;
  notificationGroups = [(NCNotificationStructuredSectionList *)self notificationGroups];
  notificationGroups2 = [(NCNotificationStructuredSectionList *)self notificationGroups];
  v7 = [notificationGroups indexOfObject:groupCopy inSortedRange:0 options:objc_msgSend(notificationGroups2 usingComparator:{"count"), 1280, &__block_literal_global_128}];

  return v7;
}

- (void)_removeNotificationGroupList:(id)list animated:(BOOL)animated
{
  animatedCopy = animated;
  v28 = *MEMORY[0x277D85DE8];
  listCopy = list;
  notificationGroups = [(NCNotificationStructuredSectionList *)self notificationGroups];
  v8 = [notificationGroups indexOfObject:listCopy];

  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    listView = [listCopy listView];
    [listView recycleVisibleViews];

    v10 = [(NCNotificationStructuredSectionList *)self _indexOfOrderedNotificationListComponent:listCopy];
    groupListWithActionsRevealed = [(NCNotificationStructuredSectionList *)self groupListWithActionsRevealed];
    if (groupListWithActionsRevealed == listCopy)
    {
      isClearingAllNotificationRequestsForCellHorizontalSwipe = [listCopy isClearingAllNotificationRequestsForCellHorizontalSwipe];
    }

    else
    {
      isClearingAllNotificationRequestsForCellHorizontalSwipe = 0;
    }

    [(NCNotificationStructuredSectionList *)self _removeViewFromListAtIndex:v10 animated:animatedCopy isHorizontallyDisplaced:isClearingAllNotificationRequestsForCellHorizontalSwipe];
    v13 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
    {
      v14 = v13;
      logDescription = [(NCNotificationStructuredSectionList *)self logDescription];
      logDescription2 = [listCopy logDescription];
      v22 = 138543874;
      v23 = logDescription;
      v24 = 2114;
      v25 = logDescription2;
      v26 = 2048;
      v27 = v8;
      _os_log_impl(&dword_21E77E000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ removing notificationGroup %{public}@ at index %ld", &v22, 0x20u);
    }

    notificationGroups2 = [(NCNotificationStructuredSectionList *)self notificationGroups];
    [notificationGroups2 removeObjectAtIndex:v8];

    groupListsToSort = [(NCNotificationStructuredSectionList *)self groupListsToSort];
    [groupListsToSort removeObject:listCopy];

    if (![(NCNotificationStructuredSectionList *)self count])
    {
      headerView = [(NCNotificationStructuredSectionList *)self headerView];
      [headerView dismissModalFullScreenIfNeeded];

      listView2 = [(NCNotificationStructuredSectionList *)self listView];
      [listView2 reloadHeaderView];
    }

    listView3 = [listCopy listView];
    [listView3 setDataSource:0];
  }
}

- (id)_sectionSettingsForSectionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  delegate = [(NCNotificationStructuredSectionList *)self delegate];
  v6 = [delegate notificationListComponent:self sectionSettingsForSectionIdentifier:identifierCopy];

  return v6;
}

- (id)_legibilitySettings
{
  delegate = [(NCNotificationStructuredSectionList *)self delegate];
  v4 = [delegate legibilitySettingsForNotificationListBaseComponent:self];

  return v4;
}

- (id)_backgroundGroupNameBase
{
  delegate = [(NCNotificationStructuredSectionList *)self delegate];
  v4 = [delegate backgroundGroupNameBaseForNotificationListBaseComponent:self];

  return v4;
}

- (BOOL)_areNotificationsLoadedForSectionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  delegate = [(NCNotificationStructuredSectionList *)self delegate];
  LOBYTE(self) = [delegate notificationStructuredSectionList:self areNotificationsLoadedForSectionIdentifier:identifierCopy];

  return self;
}

- (BOOL)_shouldHideNotificationRequest:(id)request
{
  requestCopy = request;
  sectionIdentifier = [requestCopy sectionIdentifier];
  v6 = [(NCNotificationStructuredSectionList *)self _sectionSettingsForSectionIdentifier:sectionIdentifier];

  if ([requestCopy isCriticalAlert] && (objc_msgSend(v6, "criticalAlertsEnabled") & 1) != 0)
  {
    v7 = 0;
  }

  else
  {
    sectionIdentifier2 = [requestCopy sectionIdentifier];
    v7 = [(NCNotificationStructuredSectionList *)self _shouldHideForSectionIdentifier:sectionIdentifier2];
  }

  return v7;
}

- (BOOL)_shouldHideNotificationGroupList:(id)list
{
  sectionIdentifier = [list sectionIdentifier];
  LOBYTE(self) = [(NCNotificationStructuredSectionList *)self _shouldHideForSectionIdentifier:sectionIdentifier];

  return self;
}

- (BOOL)_shouldHideForSectionIdentifier:(id)identifier
{
  v4 = [(NCNotificationStructuredSectionList *)self _sectionSettingsForSectionIdentifier:identifier];
  if (v4)
  {
    if (!-[NCNotificationStructuredSectionList deviceAuthenticated](self, "deviceAuthenticated") && ![v4 showsInLockScreen] || !objc_msgSend(v4, "notificationsEnabled"))
    {
      isHistorySection = 1;
      goto LABEL_9;
    }

    if (([v4 showsInNotificationCenter] & 1) == 0)
    {
      isHistorySection = [(NCNotificationStructuredSectionList *)self isHistorySection];
      goto LABEL_9;
    }
  }

  isHistorySection = 0;
LABEL_9:

  return isHistorySection;
}

- (void)_addHiddenNotificationGroupList:(id)list
{
  listCopy = list;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__1;
  v19 = __Block_byref_object_dispose__1;
  v20 = 0;
  hiddenNotificationGroups = [(NCNotificationStructuredSectionList *)self hiddenNotificationGroups];
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __71__NCNotificationStructuredSectionList__addHiddenNotificationGroupList___block_invoke;
  v12 = &unk_2783707A0;
  v6 = listCopy;
  v13 = v6;
  v14 = &v15;
  [hiddenNotificationGroups enumerateObjectsUsingBlock:&v9];

  v7 = v16[5];
  if (v7)
  {
    allNotificationRequests = [v6 allNotificationRequests];
    [v7 mergeNotificationRequests:allNotificationRequests];
  }

  else
  {
    allNotificationRequests = [(NCNotificationStructuredSectionList *)self hiddenNotificationGroups:v9];
    [allNotificationRequests addObject:v6];
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

- (void)_hideNotificationGroupsPassingTest:(id)test
{
  testCopy = test;
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  notificationGroups = [(NCNotificationStructuredSectionList *)self notificationGroups];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __74__NCNotificationStructuredSectionList__hideNotificationGroupsPassingTest___block_invoke;
  v12[3] = &unk_2783707C8;
  v13 = v5;
  v14 = testCopy;
  v7 = v5;
  v8 = testCopy;
  [notificationGroups enumerateObjectsUsingBlock:v12];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __74__NCNotificationStructuredSectionList__hideNotificationGroupsPassingTest___block_invoke_2;
  v11[3] = &unk_2783707F0;
  v11[4] = self;
  [v7 enumerateObjectsUsingBlock:v11];
  hiddenNotificationGroups = [(NCNotificationStructuredSectionList *)self hiddenNotificationGroups];
  allObjects = [v7 allObjects];
  [hiddenNotificationGroups addObjectsFromArray:allObjects];
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

- (void)_showHiddenNotificationGroupsPassingTest:(id)test
{
  testCopy = test;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  hiddenNotificationGroups = [(NCNotificationStructuredSectionList *)self hiddenNotificationGroups];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __80__NCNotificationStructuredSectionList__showHiddenNotificationGroupsPassingTest___block_invoke;
  v10[3] = &unk_278370818;
  v11 = v5;
  v12 = testCopy;
  v10[4] = self;
  v7 = v5;
  v8 = testCopy;
  [hiddenNotificationGroups enumerateObjectsUsingBlock:v10];

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

- (void)_showHiddenNotificationRequestsPassingTest:(id)test
{
  testCopy = test;
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  hiddenNotificationRequests = [(NCNotificationStructuredSectionList *)self hiddenNotificationRequests];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __82__NCNotificationStructuredSectionList__showHiddenNotificationRequestsPassingTest___block_invoke;
  v10[3] = &unk_278370840;
  v11 = v5;
  v12 = testCopy;
  v7 = v5;
  v8 = testCopy;
  [hiddenNotificationRequests enumerateObjectsUsingBlock:v10];

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

- (BOOL)_removeHiddenNotificationRequest:(id)request
{
  requestCopy = request;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__1;
  v33 = __Block_byref_object_dispose__1;
  v34 = 0;
  hiddenNotificationRequests = [(NCNotificationStructuredSectionList *)self hiddenNotificationRequests];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __72__NCNotificationStructuredSectionList__removeHiddenNotificationRequest___block_invoke;
  v26[3] = &unk_278370890;
  v6 = requestCopy;
  v27 = v6;
  v28 = &v29;
  [hiddenNotificationRequests enumerateObjectsUsingBlock:v26];

  if (v30[5])
  {
    hiddenNotificationRequests2 = [(NCNotificationStructuredSectionList *)self hiddenNotificationRequests];
    [hiddenNotificationRequests2 removeObject:v30[5]];

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
    hiddenNotificationGroups = [(NCNotificationStructuredSectionList *)self hiddenNotificationGroups];
    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __72__NCNotificationStructuredSectionList__removeHiddenNotificationRequest___block_invoke_2;
    v17 = &unk_2783707A0;
    v10 = v6;
    v18 = v10;
    v19 = &v20;
    [hiddenNotificationGroups enumerateObjectsUsingBlock:&v14];

    v11 = v21[5];
    if (v11)
    {
      v8 = [v11 removeNotificationRequest:{v10, v14, v15, v16, v17}];
      if (![v21[5] count])
      {
        hiddenNotificationGroups2 = [(NCNotificationStructuredSectionList *)self hiddenNotificationGroups];
        [hiddenNotificationGroups2 removeObject:v21[5]];
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

- (void)_modifyHiddenNotificationRequest:(id)request
{
  requestCopy = request;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__1;
  v19 = __Block_byref_object_dispose__1;
  v20 = 0;
  hiddenNotificationRequests = [(NCNotificationStructuredSectionList *)self hiddenNotificationRequests];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __72__NCNotificationStructuredSectionList__modifyHiddenNotificationRequest___block_invoke;
  v12[3] = &unk_278370890;
  v6 = requestCopy;
  v13 = v6;
  v14 = &v15;
  [hiddenNotificationRequests enumerateObjectsUsingBlock:v12];

  if (v16[5])
  {
    hiddenNotificationRequests2 = [(NCNotificationStructuredSectionList *)self hiddenNotificationRequests];
    [hiddenNotificationRequests2 removeObject:v16[5]];

    hiddenNotificationRequests3 = [(NCNotificationStructuredSectionList *)self hiddenNotificationRequests];
    [hiddenNotificationRequests3 addObject:v6];
  }

  else
  {
    hiddenNotificationGroups = [(NCNotificationStructuredSectionList *)self hiddenNotificationGroups];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __72__NCNotificationStructuredSectionList__modifyHiddenNotificationRequest___block_invoke_2;
    v10[3] = &unk_2783707F0;
    v11 = v6;
    [hiddenNotificationGroups enumerateObjectsUsingBlock:v10];

    hiddenNotificationRequests3 = v11;
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

- (BOOL)_shouldFilterNotificationRequest:(id)request
{
  requestCopy = request;
  delegate = [(NCNotificationStructuredSectionList *)self delegate];
  LOBYTE(self) = [delegate notificationStructuredSectionList:self shouldFilterNotificationRequest:requestCopy];

  return self;
}

- (void)_filterNotificationRequest:(id)request
{
  v21 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  sectionIdentifier = [requestCopy sectionIdentifier];
  filteredNotificationRequests = [(NCNotificationStructuredSectionList *)self filteredNotificationRequests];
  v7 = [filteredNotificationRequests objectForKey:sectionIdentifier];

  if (v7)
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __66__NCNotificationStructuredSectionList__filterNotificationRequest___block_invoke;
    v18[3] = &unk_2783708B8;
    v19 = requestCopy;
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
    filteredNotificationRequests2 = [(NCNotificationStructuredSectionList *)self filteredNotificationRequests];
    [filteredNotificationRequests2 setObject:v7 forKey:sectionIdentifier];
  }

  [v7 addObject:requestCopy];
}

- (BOOL)_removeFilteredNotificationRequest:(id)request
{
  v23 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  sectionIdentifier = [requestCopy sectionIdentifier];
  filteredNotificationRequests = [(NCNotificationStructuredSectionList *)self filteredNotificationRequests];
  v7 = [filteredNotificationRequests objectForKey:sectionIdentifier];

  if (v7)
  {
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __74__NCNotificationStructuredSectionList__removeFilteredNotificationRequest___block_invoke;
    v20[3] = &unk_2783708B8;
    v21 = requestCopy;
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

- (void)_filterNotificationRequestsForSectionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [(NCNotificationStructuredSectionList *)self count];
  filteredNotificationRequests = [(NCNotificationStructuredSectionList *)self filteredNotificationRequests];
  v7 = [filteredNotificationRequests objectForKey:identifierCopy];

  if (!v7)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
    filteredNotificationRequests2 = [(NCNotificationStructuredSectionList *)self filteredNotificationRequests];
    [filteredNotificationRequests2 setObject:v7 forKey:identifierCopy];
  }

  v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
  notificationGroups = [(NCNotificationStructuredSectionList *)self notificationGroups];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __87__NCNotificationStructuredSectionList__filterNotificationRequestsForSectionIdentifier___block_invoke;
  v17[3] = &unk_278370908;
  v18 = identifierCopy;
  selfCopy = self;
  v20 = v7;
  v11 = v9;
  v21 = v11;
  v12 = v7;
  v13 = identifierCopy;
  [notificationGroups enumerateObjectsUsingBlock:v17];

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __87__NCNotificationStructuredSectionList__filterNotificationRequestsForSectionIdentifier___block_invoke_3;
  v16[3] = &unk_2783707F0;
  v16[4] = self;
  [v11 enumerateObjectsUsingBlock:v16];
  v14 = [(NCNotificationStructuredSectionList *)self count];
  if (v5 && !v14)
  {
    listView = [(NCNotificationStructuredSectionList *)self listView];
    [listView reloadHeaderView];
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

- (void)_unfilterNotificationRequestsForSectionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [(NCNotificationStructuredSectionList *)self count];
  filteredNotificationRequests = [(NCNotificationStructuredSectionList *)self filteredNotificationRequests];
  v7 = [filteredNotificationRequests objectForKey:identifierCopy];

  if (v7)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __89__NCNotificationStructuredSectionList__unfilterNotificationRequestsForSectionIdentifier___block_invoke;
    v11[3] = &unk_278370868;
    v11[4] = self;
    [v7 enumerateObjectsUsingBlock:v11];
  }

  filteredNotificationRequests2 = [(NCNotificationStructuredSectionList *)self filteredNotificationRequests];
  [filteredNotificationRequests2 removeObjectForKey:identifierCopy];

  v9 = [(NCNotificationStructuredSectionList *)self count];
  if (!v5 && v9)
  {
    listView = [(NCNotificationStructuredSectionList *)self listView];
    [listView reloadHeaderView];
  }
}

- (unint64_t)dynamicGroupingThreshold
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];
  v4 = +[NCUNUIKitPrototypeDomain rootSettings];
  v5 = v4;
  if (userInterfaceIdiom == 1)
  {
    dynamicGroupingThresholdPad = [v4 dynamicGroupingThresholdPad];
  }

  else
  {
    dynamicGroupingThresholdPad = [v4 dynamicGroupingThreshold];
  }

  v7 = dynamicGroupingThresholdPad;

  return v7;
}

- (void)_toggleDynamicGroupingIfNecessaryForced:(BOOL)forced
{
  v24 = *MEMORY[0x277D85DE8];
  if ([(NCNotificationStructuredSectionList *)self supportsDynamicGrouping])
  {
    if (forced || [(NCNotificationStructuredSectionList *)self isDynamicGroupingActive]&& (v13 = [(NCNotificationStructuredSectionList *)self notificationCount], v13 > [(NCNotificationStructuredSectionList *)self dynamicGroupingThreshold]))
    {
      v5 = *MEMORY[0x277D77DD0];
      if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
      {
        v6 = v5;
        logDescription = [(NCNotificationStructuredSectionList *)self logDescription];
        *buf = 138543362;
        v23 = logDescription;
        _os_log_impl(&dword_21E77E000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ turning dynamic grouping OFF", buf, 0xCu);
      }

      self->_dynamicGroupingActive = 0;
      v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
      notificationGroups = [(NCNotificationStructuredSectionList *)self notificationGroups];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __79__NCNotificationStructuredSectionList__toggleDynamicGroupingIfNecessaryForced___block_invoke;
      v19[3] = &unk_27836F718;
      v19[4] = self;
      v20 = v9;
      v21 = v8;
      v11 = v8;
      v12 = v9;
      [notificationGroups enumerateObjectsUsingBlock:v19];

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
        logDescription2 = [(NCNotificationStructuredSectionList *)self logDescription];
        *buf = 138543362;
        v23 = logDescription2;
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

- (void)_toggleHiddenNotificationsOnAuthenticationChange:(BOOL)change
{
  changeCopy = change;
  v35 = *MEMORY[0x277D85DE8];
  if ([(NCNotificationStructuredSectionList *)self isPerformingDynamicGrouping]&& [(NCNotificationStructuredSectionList *)self count])
  {
    if (changeCopy || ([(NCNotificationStructuredSectionList *)self groupListPresentingLongLook], v5 = objc_claimAutoreleasedReturnValue(), v5, !v5))
    {
      v9 = *MEMORY[0x277D77DD0];
      if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
      {
        v10 = v9;
        logDescription = [(NCNotificationStructuredSectionList *)self logDescription];
        v12 = logDescription;
        v13 = @"collapsing";
        if (changeCopy)
        {
          v13 = @"expanding";
        }

        *buf = 138543618;
        v32 = logDescription;
        v33 = 2112;
        v34 = v13;
        _os_log_impl(&dword_21E77E000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ %@ notification groups for dynamic grouping on authentication change", buf, 0x16u);
      }

      self->_deferDynamicGroupingForPresentedLongLookOnDeviceLock = 0;
      v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
      notificationGroups = [(NCNotificationStructuredSectionList *)self notificationGroups];
      v16 = [notificationGroups copy];

      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __88__NCNotificationStructuredSectionList__toggleHiddenNotificationsOnAuthenticationChange___block_invoke;
      v27[3] = &unk_278370930;
      v27[4] = self;
      v29 = changeCopy;
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
        logDescription2 = [(NCNotificationStructuredSectionList *)self logDescription];
        *buf = 138543362;
        v32 = logDescription2;
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

- (BOOL)_shouldPreloadNotificationRequest:(id)request
{
  requestCopy = request;
  if ([(NCNotificationStructuredSectionList *)self preloadsNotificationRequests])
  {
    sectionIdentifier = [requestCopy sectionIdentifier];
    v6 = ![(NCNotificationStructuredSectionList *)self _areNotificationsLoadedForSectionIdentifier:sectionIdentifier];
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (id)_groupListForPreloadedNotificationRequest:(id)request createNewIfNecessary:(BOOL)necessary
{
  necessaryCopy = necessary;
  requestCopy = request;
  sectionIdentifier = [requestCopy sectionIdentifier];
  threadIdentifier = [requestCopy threadIdentifier];
  preloadedNotificationGroups = [(NCNotificationStructuredSectionList *)self preloadedNotificationGroups];
  v10 = [preloadedNotificationGroups objectForKey:sectionIdentifier];

  if (v10)
  {
    v11 = [(NCNotificationStructuredSectionList *)self _existingIndexOfGroupForNotificationRequest:requestCopy withSectionIdentifier:sectionIdentifier threadIdentifier:threadIdentifier inNotificationGroupLists:v10];
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
    if (!necessaryCopy)
    {
      v10 = 0;
      v12 = 0;
      goto LABEL_11;
    }

    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    preloadedNotificationGroups2 = [(NCNotificationStructuredSectionList *)self preloadedNotificationGroups];
    [preloadedNotificationGroups2 setObject:v10 forKey:sectionIdentifier];
  }

  v12 = 0;
LABEL_8:
  if (necessaryCopy)
  {
    v12 = [(NCNotificationStructuredSectionList *)self _newGroupListForNotificationRequest:requestCopy];
    [v10 addObject:v12];
  }

LABEL_11:

  return v12;
}

- (void)_insertPreloadedNotificationRequest:(id)request
{
  requestCopy = request;
  v5 = [(NCNotificationStructuredSectionList *)self _groupListForPreloadedNotificationRequest:requestCopy createNewIfNecessary:1];
  [v5 insertNotificationRequest:requestCopy];
}

- (void)_modifyPreloadedNotificationRequest:(id)request
{
  requestCopy = request;
  v5 = [(NCNotificationStructuredSectionList *)self _groupListForPreloadedNotificationRequest:requestCopy createNewIfNecessary:0];
  [v5 modifyNotificationRequest:requestCopy];
}

- (BOOL)_removePreloadedNotificationRequest:(id)request
{
  requestCopy = request;
  v5 = [(NCNotificationStructuredSectionList *)self _groupListForPreloadedNotificationRequest:requestCopy createNewIfNecessary:0];
  v6 = [v5 removeNotificationRequest:requestCopy];
  if (![v5 count])
  {
    preloadedNotificationGroups = [(NCNotificationStructuredSectionList *)self preloadedNotificationGroups];
    sectionIdentifier = [requestCopy sectionIdentifier];
    v9 = [preloadedNotificationGroups objectForKey:sectionIdentifier];

    [v9 removeObject:v5];
  }

  return v6;
}

- (void)_postPreloadedNotificationRequestsForSectionIdentifier:(id)identifier
{
  v38 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  preloadedNotificationGroups = [(NCNotificationStructuredSectionList *)self preloadedNotificationGroups];
  v6 = [preloadedNotificationGroups objectForKey:identifierCopy];

  if (v6)
  {
    v7 = MEMORY[0x277D77DD0];
    v8 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
    {
      v9 = v8;
      logDescription = [(NCNotificationStructuredSectionList *)self logDescription];
      *buf = 138543874;
      v33 = logDescription;
      v34 = 2048;
      v35 = [v6 count];
      v36 = 2114;
      v37 = identifierCopy;
      _os_log_impl(&dword_21E77E000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ inserting preloaded notification requests [group count:%lu] for section %{public}@", buf, 0x20u);
    }

    v25 = v6;
    v26 = identifierCopy;
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
              logDescription2 = [(NCNotificationStructuredSectionList *)self logDescription];
              logDescription3 = [v16 logDescription];
              *buf = 138543618;
              v33 = logDescription2;
              v34 = 2114;
              v35 = logDescription3;
              _os_log_impl(&dword_21E77E000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@ inserting preload notification group %{public}@", buf, 0x16u);
            }

            v21 = [(NCNotificationStructuredSectionList *)self count];
            [(NCNotificationStructuredSectionList *)self _updatePositionOfGroup:v16 atIndex:0x7FFFFFFFFFFFFFFFLL];
            v22 = [(NCNotificationStructuredSectionList *)self count];
            if (!v21 && v22)
            {
              listView = [(NCNotificationStructuredSectionList *)self listView];
              [listView reloadHeaderView];
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

    preloadedNotificationGroups2 = [(NCNotificationStructuredSectionList *)self preloadedNotificationGroups];
    identifierCopy = v26;
    [preloadedNotificationGroups2 removeObjectForKey:v26];

    v6 = v25;
  }
}

- (BOOL)isShowingSummarizedStackForNotificationRequest:(id)request
{
  requestCopy = request;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  notificationGroups = [(NCNotificationStructuredSectionList *)self notificationGroups];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __86__NCNotificationStructuredSectionList_isShowingSummarizedStackForNotificationRequest___block_invoke;
  v8[3] = &unk_27836F870;
  v6 = requestCopy;
  v9 = v6;
  v10 = &v11;
  [notificationGroups enumerateObjectsUsingBlock:v8];

  LOBYTE(notificationGroups) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);

  return notificationGroups;
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