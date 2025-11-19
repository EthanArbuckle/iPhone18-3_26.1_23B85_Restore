@interface NCNotificationSummarizedSectionList
- (BOOL)_collapseSection;
- (BOOL)_shouldPerformSwipeClipping;
- (BOOL)adjustForContentSizeCategoryChange;
- (BOOL)handleTapOnNotificationListBaseComponent:(id)a3;
- (BOOL)isViewVisibleForNotificationGroupList:(id)a3;
- (BOOL)notificationGroupListShouldReloadNotificationCells:(id)a3;
- (BOOL)notificationListComponent:(id)a3 shouldAllowInteractionsForNotificationRequest:(id)a4;
- (BOOL)removeNotificationRequest:(id)a3;
- (BOOL)shouldAdjustIndex;
- (BOOL)shouldContinuePresentingActionButtonsForSwipeInteraction:(id)a3;
- (BOOL)shouldNotificationGroupListPanHorizontally:(id)a3;
- (NCNotificationSummaryPlatterContainingView)summaryPlatterContainingView;
- (double)buttonsGlassBackgroundSmoothnessForSwipeInteraction:(id)a3;
- (double)buttonsGlassLuminanceForSwipeInteraction:(id)a3;
- (double)collapsedHeight;
- (double)notificationListView:(id)a3 heightForItemAtIndex:(unint64_t)a4 withWidth:(double)a5 inDisplayListAsStackMode:(BOOL)a6 ignoreExpandedGroupStack:(BOOL)a7;
- (id)_clearAction;
- (id)_newSectionHeaderView;
- (id)_notificationGroupsForDigestRankOrdering;
- (id)comparisonDate;
- (id)materialGroupNameBaseForNotificationSummaryOrderProvider:(id)a3;
- (id)notificationListView:(id)a3 viewForItemAtIndex:(unint64_t)a4;
- (id)swipeInteraction:(id)a3 actionsToRevealFromLayoutLocation:(unint64_t)a4;
- (id)titlesForSectionListsInSummaryForSummaryOrderProvider:(id)a3;
- (id)viewToMoveForSwipeInteraction:(id)a3;
- (int64_t)buttonsGlassBackgroundIdForSwipeInteraction:(id)a3;
- (int64_t)insertNotificationRequest:(id)a3;
- (unint64_t)buttonsGlassBackgroundStateForSwipeInteraction:(id)a3;
- (unint64_t)notificationListViewNumberOfItems:(id)a3;
- (void)_collapseAllGroupListViews;
- (void)_collapseAllSectionListViews;
- (void)_configureSectionListView:(id)a3;
- (void)_configureSummaryPlatterViewSwipeInteractionIfNecessary;
- (void)_configureSwipeClippingIfNecessary;
- (void)_didPerformSignificantUserInteraction;
- (void)_expandSection;
- (void)_hideSummaryPlatterView;
- (void)_insertViewToListAtIndex:(unint64_t)a3 animated:(BOOL)a4;
- (void)_reloadGroupListLeadingNotificationRequests;
- (void)_removeViewFromListAtIndex:(unint64_t)a3 animated:(BOOL)a4 isHorizontallyDisplaced:(BOOL)a5;
- (void)_resetSwipeClipping;
- (void)_setupSwipeClipping;
- (void)_showSummaryPlatterView;
- (void)_updateSectionForRankOrderedIfNecessaryAndReloadDigest:(BOOL)a3;
- (void)clearAll;
- (void)mergeNotificationGroups:(id)a3 reorderGroupNotifications:(BOOL)a4;
- (void)notificationListBaseComponentDidRemoveAll:(id)a3;
- (void)notificationListComponent:(id)a3 didRemoveNotificationRequest:(id)a4;
- (void)notificationSummaryOrderProvider:(id)a3 didUpdateOrderedNotificationGroupLists:(id)a4;
- (void)notificationSummaryOrderProvider:(id)a3 requestsPerformingDefaultActionForNotificationRequest:(id)a4 inGroupList:(id)a5;
- (void)notificationSummaryOrderProviderRequestsReloadingLeadingSummaryPlatterView:(id)a3;
- (void)sectionHeaderViewDidRequestCollapsing:(id)a3;
- (void)setDeviceAuthenticated:(BOOL)a3;
- (void)setSummaryOrderProvider:(id)a3;
- (void)swipeInteraction:(id)a3 didMoveToNewXPosition:(double)a4;
- (void)swipeInteractionDidBeginHidingActions:(id)a3;
- (void)swipeInteractionDidBeginRevealingActions:(id)a3;
- (void)swipeInteractionDidSignificantUserInteraction:(id)a3;
- (void)updateNotificationSectionSettings:(id)a3 previousSectionSettings:(id)a4;
@end

@implementation NCNotificationSummarizedSectionList

- (void)setSummaryOrderProvider:(id)a3
{
  v5 = a3;
  if (self->_summaryOrderProvider != v5)
  {
    v8 = v5;
    objc_storeStrong(&self->_summaryOrderProvider, a3);
    [(NCNotificationSummaryOrderProvider *)v8 setDelegate:self];
    [(NCNotificationSummarizedSectionList *)self _updateSectionForRankOrderedIfNecessaryAndReloadDigest:1];
    v6 = [(NCNotificationStructuredSectionList *)self listView];
    [v6 invalidateData];

    v7 = [(NCNotificationSummarizedSectionList *)self summaryPlatterContainingView];
    [v7 setNeedsLayout];

    [(NCNotificationSummarizedSectionList *)self _configureSummaryPlatterViewSwipeInteractionIfNecessary];
    v5 = v8;
  }
}

- (double)collapsedHeight
{
  v3 = [(NCNotificationSummarizedSectionList *)self summaryPlatterContainingView];
  [v3 bounds];
  v5 = v4;

  v6 = [(NCNotificationSummarizedSectionList *)self summaryPlatterContainingView];
  [v6 sizeThatFits:{v5, INFINITY}];
  v8 = v7;

  return v8;
}

- (void)mergeNotificationGroups:(id)a3 reorderGroupNotifications:(BOOL)a4
{
  v5.receiver = self;
  v5.super_class = NCNotificationSummarizedSectionList;
  [(NCNotificationCombinedSectionList *)&v5 mergeNotificationGroups:a3 reorderGroupNotifications:a4];
  [(NCNotificationSummarizedSectionList *)self _updateSectionForRankOrderedIfNecessaryAndReloadDigest:1];
}

- (void)updateNotificationSectionSettings:(id)a3 previousSectionSettings:(id)a4
{
  v5.receiver = self;
  v5.super_class = NCNotificationSummarizedSectionList;
  [(NCNotificationCombinedSectionList *)&v5 updateNotificationSectionSettings:a3 previousSectionSettings:a4];
  [(NCNotificationSummarizedSectionList *)self _updateSectionForRankOrderedIfNecessaryAndReloadDigest:0];
}

- (void)clearAll
{
  [(NCNotificationSummarizedSectionList *)self setPerformingClearAll:1];
  v3.receiver = self;
  v3.super_class = NCNotificationSummarizedSectionList;
  [(NCNotificationCombinedSectionList *)&v3 clearAll];
  [(NCNotificationSummarizedSectionList *)self setPerformingClearAll:0];
}

- (int64_t)insertNotificationRequest:(id)a3
{
  v6.receiver = self;
  v6.super_class = NCNotificationSummarizedSectionList;
  v4 = [(NCNotificationStructuredSectionList *)&v6 insertNotificationRequest:a3];
  [(NCNotificationSummarizedSectionList *)self _updateSectionForRankOrderedIfNecessaryAndReloadDigest:1];
  [(NCNotificationSummarizedSectionList *)self _configureSummaryPlatterViewSwipeInteractionIfNecessary];
  return v4;
}

- (BOOL)removeNotificationRequest:(id)a3
{
  v4 = a3;
  if ([(NCNotificationCombinedSectionList *)self containsNotificationRequest:v4])
  {
    v7.receiver = self;
    v7.super_class = NCNotificationSummarizedSectionList;
    v5 = [(NCNotificationStructuredSectionList *)&v7 removeNotificationRequest:v4];
    [(NCNotificationSummarizedSectionList *)self _updateSectionForRankOrderedIfNecessaryAndReloadDigest:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setDeviceAuthenticated:(BOOL)a3
{
  v3 = a3;
  [(NCNotificationSummaryOrderProvider *)self->_summaryOrderProvider setDeviceAuthenticated:?];
  if ([(NCNotificationStructuredSectionList *)self deviceAuthenticated]!= v3)
  {
    if (v3)
    {
      v5 = [(NCNotificationStructuredSectionList *)self listView];
      [v5 setPerformingContentRevealAnimation:1];
    }

    else
    {
      [(NCNotificationSummarizedSectionList *)self _collapseSection];
    }

    v6 = [(NCNotificationStructuredSectionList *)self delegate];
    [v6 notificationListComponentChangedContent:self];
  }

  v7.receiver = self;
  v7.super_class = NCNotificationSummarizedSectionList;
  [(NCNotificationCombinedSectionList *)&v7 setDeviceAuthenticated:v3];
}

- (id)comparisonDate
{
  v2 = [(NCNotificationSummarizedSectionList *)self summaryOrderProvider];
  v3 = [v2 summaryDate];

  return v3;
}

- (double)notificationListView:(id)a3 heightForItemAtIndex:(unint64_t)a4 withWidth:(double)a5 inDisplayListAsStackMode:(BOOL)a6 ignoreExpandedGroupStack:(BOOL)a7
{
  v7 = a7;
  v11 = a3;
  v12 = [(NCNotificationSummarizedSectionList *)self shouldAdjustIndex];
  v13 = [(NCNotificationSummarizedSectionList *)self shouldAdjustIndex];
  if (a4 || !v13)
  {
    v19.receiver = self;
    v19.super_class = NCNotificationSummarizedSectionList;
    [(NCNotificationCombinedSectionList *)&v19 notificationListView:v11 heightForItemAtIndex:a4 - v12 withWidth:0 inDisplayListAsStackMode:v7 ignoreExpandedGroupStack:a5];
    v16 = v17;
  }

  else
  {
    v14 = [(NCNotificationSummarizedSectionList *)self summaryPlatterContainingView];
    [v14 sizeThatFits:{a5, 0.0}];
    v16 = v15;
  }

  return v16;
}

- (id)notificationListView:(id)a3 viewForItemAtIndex:(unint64_t)a4
{
  v6 = a3;
  v7 = [(NCNotificationSummarizedSectionList *)self shouldAdjustIndex];
  v8 = [(NCNotificationSummarizedSectionList *)self shouldAdjustIndex];
  if (a4 || !v8)
  {
    v12.receiver = self;
    v12.super_class = NCNotificationSummarizedSectionList;
    v9 = [(NCNotificationCombinedSectionList *)&v12 notificationListView:v6 viewForItemAtIndex:a4 - v7];
  }

  else
  {
    v9 = [(NCNotificationSummarizedSectionList *)self summaryPlatterContainingView];
  }

  v10 = v9;

  return v10;
}

- (unint64_t)notificationListViewNumberOfItems:(id)a3
{
  v6.receiver = self;
  v6.super_class = NCNotificationSummarizedSectionList;
  v4 = [(NCNotificationStructuredSectionList *)&v6 notificationListViewNumberOfItems:a3];
  return v4 + [(NCNotificationSummarizedSectionList *)self shouldAdjustIndex];
}

- (void)notificationListComponent:(id)a3 didRemoveNotificationRequest:(id)a4
{
  v10.receiver = self;
  v10.super_class = NCNotificationSummarizedSectionList;
  [(NCNotificationCombinedSectionList *)&v10 notificationListComponent:a3 didRemoveNotificationRequest:a4];
  if (![(NCNotificationCombinedSectionList *)self notificationCount])
  {
    v5 = [(NCNotificationStructuredSectionList *)self listView];
    [v5 setGrouped:1];

    v6 = [(NCNotificationStructuredSectionList *)self listView];
    [v6 reloadHeaderView];

    v7 = +[NCNotificationEventTracker sharedInstance];
    v8 = [(NCNotificationStructuredSectionList *)self sectionType];
    v9 = [(NCNotificationSummarizedSectionList *)self atxUUID];
    [v7 dismissedSectionType:v8 withUUID:v9];
  }

  [(NCNotificationSummarizedSectionList *)self _updateSectionForRankOrderedIfNecessaryAndReloadDigest:0];
}

- (void)notificationListBaseComponentDidRemoveAll:(id)a3
{
  v9.receiver = self;
  v9.super_class = NCNotificationSummarizedSectionList;
  [(NCNotificationCombinedSectionList *)&v9 notificationListBaseComponentDidRemoveAll:a3];
  if (![(NCNotificationCombinedSectionList *)self notificationCount])
  {
    v4 = [(NCNotificationStructuredSectionList *)self listView];
    [v4 setGrouped:1];

    v5 = [(NCNotificationStructuredSectionList *)self listView];
    [v5 reloadHeaderView];

    v6 = +[NCNotificationEventTracker sharedInstance];
    v7 = [(NCNotificationStructuredSectionList *)self sectionType];
    v8 = [(NCNotificationSummarizedSectionList *)self atxUUID];
    [v6 dismissedSectionType:v7 withUUID:v8];
  }

  [(NCNotificationSummarizedSectionList *)self _updateSectionForRankOrderedIfNecessaryAndReloadDigest:0];
}

- (BOOL)notificationListComponent:(id)a3 shouldAllowInteractionsForNotificationRequest:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NCNotificationStructuredSectionList *)self listView];
  v9 = [v8 isGrouped];

  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = NCNotificationSummarizedSectionList;
    v10 = [(NCNotificationStructuredSectionList *)&v12 notificationListComponent:v6 shouldAllowInteractionsForNotificationRequest:v7];
  }

  return v10;
}

- (BOOL)notificationGroupListShouldReloadNotificationCells:(id)a3
{
  v3 = [(NCNotificationStructuredSectionList *)self listView];
  v4 = [v3 isGrouped];

  return v4 ^ 1;
}

- (BOOL)shouldNotificationGroupListPanHorizontally:(id)a3
{
  v4 = a3;
  v5 = [(NCNotificationStructuredSectionList *)self listView];
  v6 = [v5 isGrouped];

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = NCNotificationSummarizedSectionList;
    v7 = [(NCNotificationStructuredSectionList *)&v9 shouldNotificationGroupListPanHorizontally:v4];
  }

  return v7;
}

- (void)sectionHeaderViewDidRequestCollapsing:(id)a3
{
  [(NCNotificationSummarizedSectionList *)self _didPerformSignificantUserInteraction];

  [(NCNotificationSummarizedSectionList *)self _collapseSection];
}

- (BOOL)adjustForContentSizeCategoryChange
{
  v5.receiver = self;
  v5.super_class = NCNotificationSummarizedSectionList;
  [(NCNotificationCombinedSectionList *)&v5 adjustForContentSizeCategoryChange];
  [(NCNotificationSummaryOrderProvider *)self->_summaryOrderProvider adjustForContentSizeCategoryChange];
  v3 = [(NCNotificationStructuredSectionList *)self listView];
  [v3 reloadViewAtIndex:0];

  return 1;
}

- (void)notificationSummaryOrderProviderRequestsReloadingLeadingSummaryPlatterView:(id)a3
{
  v4 = [(NCNotificationStructuredSectionList *)self listView];
  v5 = [v4 isGrouped];

  if (v5)
  {
    v6 = [(NCNotificationStructuredSectionList *)self listView];
    [v6 reloadViewAtIndex:0];

    v8 = [(NCNotificationStructuredSectionList *)self listView];
    v7 = [v8 superview];
    [v7 setNeedsLayout];
  }
}

- (id)materialGroupNameBaseForNotificationSummaryOrderProvider:(id)a3
{
  v4 = [(NCNotificationStructuredSectionList *)self delegate];
  v5 = [v4 backgroundGroupNameBaseForNotificationListBaseComponent:self];

  return v5;
}

- (void)notificationSummaryOrderProvider:(id)a3 requestsPerformingDefaultActionForNotificationRequest:(id)a4 inGroupList:(id)a5
{
  v6 = MEMORY[0x277CBEAC0];
  v7 = MEMORY[0x277CCABB0];
  v8 = a4;
  v9 = [v7 numberWithBool:1];
  v12 = [v6 dictionaryWithObject:v9 forKey:@"NCNotificationActionDeferClearForNotificationSummaryKey"];

  v10 = [(NCNotificationStructuredSectionList *)self delegate];
  v11 = [v8 defaultAction];
  [v10 notificationListComponent:self requestsExecuteAction:v11 forNotificationRequest:v8 requestAuthentication:1 withParameters:v12 completion:0];
}

- (void)notificationSummaryOrderProvider:(id)a3 didUpdateOrderedNotificationGroupLists:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [(NCNotificationStructuredSectionList *)self listView];
  if (([v6 isGrouped] & 1) == 0)
  {
    goto LABEL_8;
  }

  v7 = [(NCNotificationStructuredSectionList *)self allNotificationGroups];
  v8 = [v7 count];
  if (v8 != [v5 count])
  {

LABEL_8:
    goto LABEL_9;
  }

  v9 = [(NCNotificationStructuredSectionList *)self notificationGroups];
  v10 = [v9 isEqualToArray:v5];

  if ((v10 & 1) == 0)
  {
    v11 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
    {
      v12 = v11;
      v13 = [(NCNotificationStructuredSectionList *)self logDescription];
      v16 = 138543362;
      v17 = v13;
      _os_log_impl(&dword_21E77E000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ reordering notification group lists", &v16, 0xCu);
    }

    v14 = [MEMORY[0x277CBEB18] arrayWithArray:v5];
    [(NCNotificationStructuredSectionList *)self setNotificationGroups:v14];

    v15 = [(NCNotificationStructuredSectionList *)self listView];
    [v15 invalidateData];
  }

LABEL_9:
}

- (id)titlesForSectionListsInSummaryForSummaryOrderProvider:(id)a3
{
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v5 = [(NCNotificationCombinedSectionList *)self sectionLists];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __93__NCNotificationSummarizedSectionList_titlesForSectionListsInSummaryForSummaryOrderProvider___block_invoke;
  v8[3] = &unk_27836F768;
  v6 = v4;
  v9 = v6;
  [v5 enumerateObjectsUsingBlock:v8];

  return v6;
}

uint64_t __93__NCNotificationSummarizedSectionList_titlesForSectionListsInSummaryForSummaryOrderProvider___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 title];
  if (v3)
  {
    v3 = [*(a1 + 32) addObject:v3];
  }

  return MEMORY[0x2821F96F8](v3);
}

- (BOOL)shouldContinuePresentingActionButtonsForSwipeInteraction:(id)a3
{
  v3 = [(NCNotificationStructuredSectionList *)self listView];
  v4 = [v3 isGrouped];

  return v4;
}

- (id)swipeInteraction:(id)a3 actionsToRevealFromLayoutLocation:(unint64_t)a4
{
  v7[1] = *MEMORY[0x277D85DE8];
  if (a4 == 1)
  {
    v4 = [(NCNotificationSummarizedSectionList *)self _clearAction];
    v7[0] = v4;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)viewToMoveForSwipeInteraction:(id)a3
{
  v3 = [(NCNotificationSummarizedSectionList *)self summaryPlatterContainingView];
  v4 = [v3 summaryPlatterView];

  return v4;
}

- (void)swipeInteractionDidSignificantUserInteraction:(id)a3
{
  v4 = [(NCNotificationStructuredSectionList *)self delegate];
  [v4 notificationListBaseComponentDidSignificantUserInteraction:self];
}

- (void)swipeInteractionDidBeginRevealingActions:(id)a3
{
  v4 = a3;
  [(NCNotificationSummarizedSectionList *)self setHorizontallyDisplaced:1];
  v5 = [(NCNotificationStructuredSectionList *)self delegate];
  [v5 notificationListBaseComponent:self didTransitionActionsForSwipeInteraction:v4 revealed:1];
}

- (void)swipeInteractionDidBeginHidingActions:(id)a3
{
  v4 = a3;
  [(NCNotificationSummarizedSectionList *)self setHorizontallyDisplaced:0];
  v5 = [(NCNotificationStructuredSectionList *)self delegate];
  [v5 notificationListBaseComponent:self didTransitionActionsForSwipeInteraction:v4 revealed:0];
}

- (void)swipeInteraction:(id)a3 didMoveToNewXPosition:(double)a4
{
  if (a4 == 0.0)
  {
    [(NCNotificationSummarizedSectionList *)self _resetSwipeClipping];
  }

  else
  {
    [(NCNotificationSummarizedSectionList *)self _configureSwipeClippingIfNecessary];
  }

  v6 = [(NCNotificationSummarizedSectionList *)self summaryPlatterContainingView];
  [v6 setSupportsMitosis:a4 != 0.0];
}

- (double)buttonsGlassBackgroundSmoothnessForSwipeInteraction:(id)a3
{
  v3 = [(NCNotificationSummarizedSectionList *)self summaryPlatterContainingView];
  [v3 glassSmoothness];
  v5 = v4;

  return v5;
}

- (unint64_t)buttonsGlassBackgroundStateForSwipeInteraction:(id)a3
{
  v3 = [(NCNotificationSummarizedSectionList *)self summaryPlatterContainingView];
  v4 = [v3 backgroundGlassState];

  return v4;
}

- (double)buttonsGlassLuminanceForSwipeInteraction:(id)a3
{
  v3 = [(NCNotificationStructuredSectionList *)self listView];
  v4 = [v3 traitCollection];
  [v4 glassLuminanceValue];
  v6 = v5;

  return v6;
}

- (int64_t)buttonsGlassBackgroundIdForSwipeInteraction:(id)a3
{
  v3 = [(NCNotificationSummarizedSectionList *)self summaryPlatterContainingView];
  v4 = [v3 backgroundGlassId];

  return v4;
}

- (void)_insertViewToListAtIndex:(unint64_t)a3 animated:(BOOL)a4
{
  v4.receiver = self;
  v4.super_class = NCNotificationSummarizedSectionList;
  [(NCNotificationStructuredSectionList *)&v4 _insertViewToListAtIndex:a3 + [(NCNotificationSummarizedSectionList *)self shouldAdjustIndex] animated:a4];
}

- (void)_removeViewFromListAtIndex:(unint64_t)a3 animated:(BOOL)a4 isHorizontallyDisplaced:(BOOL)a5
{
  v5.receiver = self;
  v5.super_class = NCNotificationSummarizedSectionList;
  [(NCNotificationStructuredSectionList *)&v5 _removeViewFromListAtIndex:a3 + [(NCNotificationSummarizedSectionList *)self shouldAdjustIndex] animated:a4 isHorizontallyDisplaced:a5];
}

- (id)_newSectionHeaderView
{
  v4.receiver = self;
  v4.super_class = NCNotificationSummarizedSectionList;
  v2 = [(NCNotificationStructuredSectionList *)&v4 _newSectionHeaderView];
  [v2 setShowCollapseButton:1];
  return v2;
}

- (void)_configureSectionListView:(id)a3
{
  v4.receiver = self;
  v4.super_class = NCNotificationSummarizedSectionList;
  v3 = a3;
  [(NCNotificationStructuredSectionList *)&v4 _configureSectionListView:v3];
  [v3 setSupportsGrouping:{1, v4.receiver, v4.super_class}];
}

- (id)_notificationGroupsForDigestRankOrdering
{
  v2 = [(NCNotificationStructuredSectionList *)self allNotificationGroups];
  v3 = [v2 copy];

  return v3;
}

- (BOOL)shouldAdjustIndex
{
  v2 = [(NCNotificationStructuredSectionList *)self listView];
  v3 = [v2 isGrouped];

  return v3;
}

- (NCNotificationSummaryPlatterContainingView)summaryPlatterContainingView
{
  v3 = [(NCNotificationSummaryOrderProvider *)self->_summaryOrderProvider leadingSummaryPlatterView];
  summaryPlatterContainingView = self->_summaryPlatterContainingView;
  if (summaryPlatterContainingView)
  {
    [(NCNotificationSummaryPlatterContainingView *)summaryPlatterContainingView setSummaryPlatterView:v3];
  }

  else
  {
    v5 = [[NCNotificationSummaryPlatterContainingView alloc] initWithSummaryPlatterView:v3];
    v6 = self->_summaryPlatterContainingView;
    self->_summaryPlatterContainingView = v5;
  }

  v7 = self->_summaryPlatterContainingView;
  v8 = v7;

  return v7;
}

- (void)_hideSummaryPlatterView
{
  v2 = [(NCNotificationStructuredSectionList *)self listView];
  [v2 removeViewAtIndex:0 animated:1];
}

- (void)_showSummaryPlatterView
{
  v2 = [(NCNotificationStructuredSectionList *)self listView];
  [v2 insertViewAtIndex:0 animated:1];
}

- (void)_expandSection
{
  v22 = *MEMORY[0x277D85DE8];
  [(NCNotificationSummarizedSectionList *)self _didPerformSignificantUserInteraction];
  v3 = [(NCNotificationStructuredSectionList *)self listView];
  v4 = [v3 isGrouped];

  if ([(NCNotificationCombinedSectionList *)self count]&& v4)
  {
    v5 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
    {
      v6 = v5;
      v7 = [(NCNotificationStructuredSectionList *)self logDescription];
      *buf = 138412290;
      v21 = v7;
      _os_log_impl(&dword_21E77E000, v6, OS_LOG_TYPE_DEFAULT, "Expanding summarized section %@", buf, 0xCu);
    }

    [(NCNotificationSummarizedSectionList *)self _prepareForExpand];
    v8 = [(NCNotificationStructuredSectionList *)self sectionType]== 3 || [(NCNotificationStructuredSectionList *)self sectionType]== 5;
    v9 = [(NCNotificationSummarizedSectionList *)self summaryOrderProvider];
    [v9 atxLogSummaryPlatterExpandedIsUpcoming:v8];

    v10 = +[NCNotificationEventTracker sharedInstance];
    v11 = [(NCNotificationStructuredSectionList *)self sectionType];
    v12 = [(NCNotificationSummarizedSectionList *)self atxUUID];
    [v10 expandedSectionType:v11 withUUID:v12];

    objc_initWeak(buf, self);
    v13 = [(NCNotificationStructuredSectionList *)self delegate];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __53__NCNotificationSummarizedSectionList__expandSection__block_invoke;
    v15[3] = &unk_278372028;
    objc_copyWeak(&v18, buf);
    v19 = v4;
    v14 = v13;
    v16 = v14;
    v17 = self;
    [v14 notificationListComponent:self requestsAuthenticationAndPerformBlock:v15];

    objc_destroyWeak(&v18);
    objc_destroyWeak(buf);
  }
}

void __53__NCNotificationSummarizedSectionList__expandSection__block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [WeakRetained _reloadGroupListLeadingNotificationRequests];
    v3 = [WeakRetained listView];
    [v3 setGrouped:(*(a1 + 56) & 1) == 0];

    [WeakRetained _hideSummaryPlatterView];
    [*(a1 + 32) notificationStructuredSectionList:*(a1 + 40) transitionedGroupedStateIsGrouped:0];
    v4 = [WeakRetained summaryPlatterViewSwipeInteraction];
    [v4 hideActionsAnimated:1 fastAnimation:0 completion:0];
  }
}

- (BOOL)_collapseSection
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [(NCNotificationStructuredSectionList *)self listView];
  v4 = [v3 isGrouped];

  if ((v4 & 1) == 0)
  {
    v5 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
    {
      v6 = v5;
      v7 = [(NCNotificationStructuredSectionList *)self logDescription];
      v11 = 138412290;
      v12 = v7;
      _os_log_impl(&dword_21E77E000, v6, OS_LOG_TYPE_DEFAULT, "Collapsing summarized section %@", &v11, 0xCu);
    }

    [(NCNotificationSummarizedSectionList *)self _collapseAllGroupListViews];
    [(NCNotificationSummarizedSectionList *)self _collapseAllSectionListViews];
    [(NCNotificationSummarizedSectionList *)self _showSummaryPlatterView];
    v8 = [(NCNotificationStructuredSectionList *)self listView];
    [v8 setGrouped:1];

    v9 = [(NCNotificationStructuredSectionList *)self delegate];
    [v9 notificationStructuredSectionList:self transitionedGroupedStateIsGrouped:1];
  }

  return v4 ^ 1;
}

- (void)_collapseAllSectionListViews
{
  v2 = [(NCNotificationCombinedSectionList *)self sectionLists];
  [v2 enumerateObjectsUsingBlock:&__block_literal_global_30];
}

void __67__NCNotificationSummarizedSectionList__collapseAllSectionListViews__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v2 collapseSummarizedSectionList];
  }
}

- (void)_collapseAllGroupListViews
{
  v2 = [(NCNotificationStructuredSectionList *)self allNotificationGroups];
  [v2 enumerateObjectsUsingBlock:&__block_literal_global_46];
}

void __65__NCNotificationSummarizedSectionList__collapseAllGroupListViews__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 listView];
  [v2 setGrouped:1];
}

- (void)_reloadGroupListLeadingNotificationRequests
{
  v3 = [(NCNotificationStructuredSectionList *)self allNotificationGroups];
  [v3 enumerateObjectsUsingBlock:&__block_literal_global_48];

  v4 = [(NCNotificationStructuredSectionList *)self listView];
  [v4 setNeedsLayout];
}

- (void)_didPerformSignificantUserInteraction
{
  v3 = [(NCNotificationStructuredSectionList *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v3 notificationListBaseComponentDidSignificantUserInteraction:self];
  }
}

- (BOOL)isViewVisibleForNotificationGroupList:(id)a3
{
  v4 = a3;
  v5 = [(NCNotificationStructuredSectionList *)self listView];
  v6 = [v5 isGrouped];

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = NCNotificationSummarizedSectionList;
    v7 = [(NCNotificationStructuredSectionList *)&v9 isViewVisibleForNotificationGroupList:v4];
  }

  return v7;
}

- (BOOL)handleTapOnNotificationListBaseComponent:(id)a3
{
  v4 = a3;
  v5 = [(NCNotificationStructuredSectionList *)self listView];
  v6 = [v5 isGrouped];

  if (v6)
  {
    [(NCNotificationSummarizedSectionList *)self _expandSection];
    v7 = 1;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = NCNotificationSummarizedSectionList;
    v7 = [(NCNotificationStructuredSectionList *)&v9 handleTapOnNotificationListBaseComponent:v4];
  }

  return v7;
}

- (void)_updateSectionForRankOrderedIfNecessaryAndReloadDigest:(BOOL)a3
{
  v3 = a3;
  v17 = *MEMORY[0x277D85DE8];
  v5 = [(NCNotificationSummarizedSectionList *)self _notificationGroupsForDigestRankOrdering];
  if (!-[NCNotificationSummarizedSectionList isPerformingClearAll](self, "isPerformingClearAll") && [v5 count])
  {
    v6 = [v5 bs_filter:&__block_literal_global_57];
    if (v3 || (-[NCNotificationSummaryOrderProvider cachedOrderedNotificationGroupLists](self->_summaryOrderProvider, "cachedOrderedNotificationGroupLists"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v6 isEqualToArray:v7], v7, (v8 & 1) == 0))
    {
      v9 = *MEMORY[0x277D77DD0];
      if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
      {
        v10 = v9;
        v11 = [(NCNotificationStructuredSectionList *)self logDescription];
        v13 = 138543618;
        v14 = v11;
        v15 = 1024;
        v16 = v3;
        _os_log_impl(&dword_21E77E000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ updating summary and section rank ordering [reloadDigest=%{BOOL}d]", &v13, 0x12u);
      }

      [(NCNotificationSummaryOrderProvider *)self->_summaryOrderProvider updateSummaryOrderWithNotificationGroupLists:v6 reloadDigest:v3];
      v12 = [(NCNotificationStructuredSectionList *)self delegate];
      [v12 notificationListComponentChangedContent:self];
    }
  }
}

- (void)_configureSummaryPlatterViewSwipeInteractionIfNecessary
{
  v12 = [(NCNotificationSummarizedSectionList *)self summaryPlatterViewSwipeInteraction];
  v3 = [v12 view];
  if (v12)
  {
    v4 = [(NCNotificationSummarizedSectionList *)self summaryPlatterContainingView];

    if (v3 != v4)
    {
      [v3 removeInteraction:v12];
      [(NCNotificationSummarizedSectionList *)self setSummaryPlatterViewSwipeInteraction:0];
    }
  }

  summaryPlatterViewSwipeInteraction = self->_summaryPlatterViewSwipeInteraction;
  if (summaryPlatterViewSwipeInteraction)
  {
    [(PLSwipeInteraction *)summaryPlatterViewSwipeInteraction hideActionsAnimated:0 fastAnimation:0 completion:0];
  }

  else
  {
    v6 = [objc_alloc(MEMORY[0x277D3D330]) initWithDelegate:self];
    v7 = self->_summaryPlatterViewSwipeInteraction;
    self->_summaryPlatterViewSwipeInteraction = v6;

    v8 = [(NCNotificationSummarizedSectionList *)self summaryPlatterContainingView];
    [v8 addInteraction:self->_summaryPlatterViewSwipeInteraction];

    v9 = self->_summaryPlatterViewSwipeInteraction;
    v10 = [(NCNotificationStructuredSectionList *)self delegate];
    v11 = [v10 backgroundGroupNameBaseForNotificationListBaseComponent:self];
    [(PLSwipeInteraction *)v9 setMaterialGroupNameBase:v11];
  }
}

- (id)_clearAction
{
  v3 = NCUserNotificationsUIKitFrameworkBundle();
  v4 = [v3 localizedStringForKey:@"NOTIFICATION_LIST_CLEAR" value:&stru_282FE84F8 table:0];

  objc_initWeak(&location, self);
  v5 = MEMORY[0x277D750C8];
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __51__NCNotificationSummarizedSectionList__clearAction__block_invoke;
  v11 = &unk_27836F428;
  objc_copyWeak(&v12, &location);
  v6 = [v5 actionWithTitle:v4 image:0 identifier:@"NCNotificationSummarizedSectionListActionIdentifierClear" handler:&v8];
  [v6 setPl_defaultAction:{1, v8, v9, v10, v11}];
  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);

  return v6;
}

void __51__NCNotificationSummarizedSectionList__clearAction__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained delegate];
    [v2 notificationStructuredSectionListRequestsClearingSection:v3];

    WeakRetained = v3;
  }
}

- (void)_configureSwipeClippingIfNecessary
{
  if ([(NCNotificationSummarizedSectionList *)self _shouldPerformSwipeClipping])
  {

    [(NCNotificationSummarizedSectionList *)self _setupSwipeClipping];
  }

  else
  {

    [(NCNotificationSummarizedSectionList *)self _resetSwipeClipping];
  }
}

- (void)_setupSwipeClipping
{
  v3 = [(NCNotificationSummarizedSectionList *)self summaryPlatterContainingView];
  v2 = [v3 layer];
  [v2 setMaskedCorners:15];

  [v3 _setContinuousCornerRadius:23.5];
  [v3 setClipsToBounds:1];
}

- (void)_resetSwipeClipping
{
  v3 = [(NCNotificationSummarizedSectionList *)self summaryPlatterContainingView];
  v2 = [v3 layer];
  [v2 setMaskedCorners:0];

  [v3 setClipsToBounds:0];
}

- (BOOL)_shouldPerformSwipeClipping
{
  v2 = [(NCNotificationStructuredSectionList *)self listView];
  v3 = [v2 traitCollection];
  v4 = _NCShouldPlatterClipped();

  return v4;
}

@end