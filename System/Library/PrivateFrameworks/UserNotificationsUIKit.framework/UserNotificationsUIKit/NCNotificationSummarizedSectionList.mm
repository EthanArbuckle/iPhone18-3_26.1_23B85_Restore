@interface NCNotificationSummarizedSectionList
- (BOOL)_collapseSection;
- (BOOL)_shouldPerformSwipeClipping;
- (BOOL)adjustForContentSizeCategoryChange;
- (BOOL)handleTapOnNotificationListBaseComponent:(id)component;
- (BOOL)isViewVisibleForNotificationGroupList:(id)list;
- (BOOL)notificationGroupListShouldReloadNotificationCells:(id)cells;
- (BOOL)notificationListComponent:(id)component shouldAllowInteractionsForNotificationRequest:(id)request;
- (BOOL)removeNotificationRequest:(id)request;
- (BOOL)shouldAdjustIndex;
- (BOOL)shouldContinuePresentingActionButtonsForSwipeInteraction:(id)interaction;
- (BOOL)shouldNotificationGroupListPanHorizontally:(id)horizontally;
- (NCNotificationSummaryPlatterContainingView)summaryPlatterContainingView;
- (double)buttonsGlassBackgroundSmoothnessForSwipeInteraction:(id)interaction;
- (double)buttonsGlassLuminanceForSwipeInteraction:(id)interaction;
- (double)collapsedHeight;
- (double)notificationListView:(id)view heightForItemAtIndex:(unint64_t)index withWidth:(double)width inDisplayListAsStackMode:(BOOL)mode ignoreExpandedGroupStack:(BOOL)stack;
- (id)_clearAction;
- (id)_newSectionHeaderView;
- (id)_notificationGroupsForDigestRankOrdering;
- (id)comparisonDate;
- (id)materialGroupNameBaseForNotificationSummaryOrderProvider:(id)provider;
- (id)notificationListView:(id)view viewForItemAtIndex:(unint64_t)index;
- (id)swipeInteraction:(id)interaction actionsToRevealFromLayoutLocation:(unint64_t)location;
- (id)titlesForSectionListsInSummaryForSummaryOrderProvider:(id)provider;
- (id)viewToMoveForSwipeInteraction:(id)interaction;
- (int64_t)buttonsGlassBackgroundIdForSwipeInteraction:(id)interaction;
- (int64_t)insertNotificationRequest:(id)request;
- (unint64_t)buttonsGlassBackgroundStateForSwipeInteraction:(id)interaction;
- (unint64_t)notificationListViewNumberOfItems:(id)items;
- (void)_collapseAllGroupListViews;
- (void)_collapseAllSectionListViews;
- (void)_configureSectionListView:(id)view;
- (void)_configureSummaryPlatterViewSwipeInteractionIfNecessary;
- (void)_configureSwipeClippingIfNecessary;
- (void)_didPerformSignificantUserInteraction;
- (void)_expandSection;
- (void)_hideSummaryPlatterView;
- (void)_insertViewToListAtIndex:(unint64_t)index animated:(BOOL)animated;
- (void)_reloadGroupListLeadingNotificationRequests;
- (void)_removeViewFromListAtIndex:(unint64_t)index animated:(BOOL)animated isHorizontallyDisplaced:(BOOL)displaced;
- (void)_resetSwipeClipping;
- (void)_setupSwipeClipping;
- (void)_showSummaryPlatterView;
- (void)_updateSectionForRankOrderedIfNecessaryAndReloadDigest:(BOOL)digest;
- (void)clearAll;
- (void)mergeNotificationGroups:(id)groups reorderGroupNotifications:(BOOL)notifications;
- (void)notificationListBaseComponentDidRemoveAll:(id)all;
- (void)notificationListComponent:(id)component didRemoveNotificationRequest:(id)request;
- (void)notificationSummaryOrderProvider:(id)provider didUpdateOrderedNotificationGroupLists:(id)lists;
- (void)notificationSummaryOrderProvider:(id)provider requestsPerformingDefaultActionForNotificationRequest:(id)request inGroupList:(id)list;
- (void)notificationSummaryOrderProviderRequestsReloadingLeadingSummaryPlatterView:(id)view;
- (void)sectionHeaderViewDidRequestCollapsing:(id)collapsing;
- (void)setDeviceAuthenticated:(BOOL)authenticated;
- (void)setSummaryOrderProvider:(id)provider;
- (void)swipeInteraction:(id)interaction didMoveToNewXPosition:(double)position;
- (void)swipeInteractionDidBeginHidingActions:(id)actions;
- (void)swipeInteractionDidBeginRevealingActions:(id)actions;
- (void)swipeInteractionDidSignificantUserInteraction:(id)interaction;
- (void)updateNotificationSectionSettings:(id)settings previousSectionSettings:(id)sectionSettings;
@end

@implementation NCNotificationSummarizedSectionList

- (void)setSummaryOrderProvider:(id)provider
{
  providerCopy = provider;
  if (self->_summaryOrderProvider != providerCopy)
  {
    v8 = providerCopy;
    objc_storeStrong(&self->_summaryOrderProvider, provider);
    [(NCNotificationSummaryOrderProvider *)v8 setDelegate:self];
    [(NCNotificationSummarizedSectionList *)self _updateSectionForRankOrderedIfNecessaryAndReloadDigest:1];
    listView = [(NCNotificationStructuredSectionList *)self listView];
    [listView invalidateData];

    summaryPlatterContainingView = [(NCNotificationSummarizedSectionList *)self summaryPlatterContainingView];
    [summaryPlatterContainingView setNeedsLayout];

    [(NCNotificationSummarizedSectionList *)self _configureSummaryPlatterViewSwipeInteractionIfNecessary];
    providerCopy = v8;
  }
}

- (double)collapsedHeight
{
  summaryPlatterContainingView = [(NCNotificationSummarizedSectionList *)self summaryPlatterContainingView];
  [summaryPlatterContainingView bounds];
  v5 = v4;

  summaryPlatterContainingView2 = [(NCNotificationSummarizedSectionList *)self summaryPlatterContainingView];
  [summaryPlatterContainingView2 sizeThatFits:{v5, INFINITY}];
  v8 = v7;

  return v8;
}

- (void)mergeNotificationGroups:(id)groups reorderGroupNotifications:(BOOL)notifications
{
  v5.receiver = self;
  v5.super_class = NCNotificationSummarizedSectionList;
  [(NCNotificationCombinedSectionList *)&v5 mergeNotificationGroups:groups reorderGroupNotifications:notifications];
  [(NCNotificationSummarizedSectionList *)self _updateSectionForRankOrderedIfNecessaryAndReloadDigest:1];
}

- (void)updateNotificationSectionSettings:(id)settings previousSectionSettings:(id)sectionSettings
{
  v5.receiver = self;
  v5.super_class = NCNotificationSummarizedSectionList;
  [(NCNotificationCombinedSectionList *)&v5 updateNotificationSectionSettings:settings previousSectionSettings:sectionSettings];
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

- (int64_t)insertNotificationRequest:(id)request
{
  v6.receiver = self;
  v6.super_class = NCNotificationSummarizedSectionList;
  v4 = [(NCNotificationStructuredSectionList *)&v6 insertNotificationRequest:request];
  [(NCNotificationSummarizedSectionList *)self _updateSectionForRankOrderedIfNecessaryAndReloadDigest:1];
  [(NCNotificationSummarizedSectionList *)self _configureSummaryPlatterViewSwipeInteractionIfNecessary];
  return v4;
}

- (BOOL)removeNotificationRequest:(id)request
{
  requestCopy = request;
  if ([(NCNotificationCombinedSectionList *)self containsNotificationRequest:requestCopy])
  {
    v7.receiver = self;
    v7.super_class = NCNotificationSummarizedSectionList;
    v5 = [(NCNotificationStructuredSectionList *)&v7 removeNotificationRequest:requestCopy];
    [(NCNotificationSummarizedSectionList *)self _updateSectionForRankOrderedIfNecessaryAndReloadDigest:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setDeviceAuthenticated:(BOOL)authenticated
{
  authenticatedCopy = authenticated;
  [(NCNotificationSummaryOrderProvider *)self->_summaryOrderProvider setDeviceAuthenticated:?];
  if ([(NCNotificationStructuredSectionList *)self deviceAuthenticated]!= authenticatedCopy)
  {
    if (authenticatedCopy)
    {
      listView = [(NCNotificationStructuredSectionList *)self listView];
      [listView setPerformingContentRevealAnimation:1];
    }

    else
    {
      [(NCNotificationSummarizedSectionList *)self _collapseSection];
    }

    delegate = [(NCNotificationStructuredSectionList *)self delegate];
    [delegate notificationListComponentChangedContent:self];
  }

  v7.receiver = self;
  v7.super_class = NCNotificationSummarizedSectionList;
  [(NCNotificationCombinedSectionList *)&v7 setDeviceAuthenticated:authenticatedCopy];
}

- (id)comparisonDate
{
  summaryOrderProvider = [(NCNotificationSummarizedSectionList *)self summaryOrderProvider];
  summaryDate = [summaryOrderProvider summaryDate];

  return summaryDate;
}

- (double)notificationListView:(id)view heightForItemAtIndex:(unint64_t)index withWidth:(double)width inDisplayListAsStackMode:(BOOL)mode ignoreExpandedGroupStack:(BOOL)stack
{
  stackCopy = stack;
  viewCopy = view;
  shouldAdjustIndex = [(NCNotificationSummarizedSectionList *)self shouldAdjustIndex];
  shouldAdjustIndex2 = [(NCNotificationSummarizedSectionList *)self shouldAdjustIndex];
  if (index || !shouldAdjustIndex2)
  {
    v19.receiver = self;
    v19.super_class = NCNotificationSummarizedSectionList;
    [(NCNotificationCombinedSectionList *)&v19 notificationListView:viewCopy heightForItemAtIndex:index - shouldAdjustIndex withWidth:0 inDisplayListAsStackMode:stackCopy ignoreExpandedGroupStack:width];
    v16 = v17;
  }

  else
  {
    summaryPlatterContainingView = [(NCNotificationSummarizedSectionList *)self summaryPlatterContainingView];
    [summaryPlatterContainingView sizeThatFits:{width, 0.0}];
    v16 = v15;
  }

  return v16;
}

- (id)notificationListView:(id)view viewForItemAtIndex:(unint64_t)index
{
  viewCopy = view;
  shouldAdjustIndex = [(NCNotificationSummarizedSectionList *)self shouldAdjustIndex];
  shouldAdjustIndex2 = [(NCNotificationSummarizedSectionList *)self shouldAdjustIndex];
  if (index || !shouldAdjustIndex2)
  {
    v12.receiver = self;
    v12.super_class = NCNotificationSummarizedSectionList;
    summaryPlatterContainingView = [(NCNotificationCombinedSectionList *)&v12 notificationListView:viewCopy viewForItemAtIndex:index - shouldAdjustIndex];
  }

  else
  {
    summaryPlatterContainingView = [(NCNotificationSummarizedSectionList *)self summaryPlatterContainingView];
  }

  v10 = summaryPlatterContainingView;

  return v10;
}

- (unint64_t)notificationListViewNumberOfItems:(id)items
{
  v6.receiver = self;
  v6.super_class = NCNotificationSummarizedSectionList;
  v4 = [(NCNotificationStructuredSectionList *)&v6 notificationListViewNumberOfItems:items];
  return v4 + [(NCNotificationSummarizedSectionList *)self shouldAdjustIndex];
}

- (void)notificationListComponent:(id)component didRemoveNotificationRequest:(id)request
{
  v10.receiver = self;
  v10.super_class = NCNotificationSummarizedSectionList;
  [(NCNotificationCombinedSectionList *)&v10 notificationListComponent:component didRemoveNotificationRequest:request];
  if (![(NCNotificationCombinedSectionList *)self notificationCount])
  {
    listView = [(NCNotificationStructuredSectionList *)self listView];
    [listView setGrouped:1];

    listView2 = [(NCNotificationStructuredSectionList *)self listView];
    [listView2 reloadHeaderView];

    v7 = +[NCNotificationEventTracker sharedInstance];
    sectionType = [(NCNotificationStructuredSectionList *)self sectionType];
    atxUUID = [(NCNotificationSummarizedSectionList *)self atxUUID];
    [v7 dismissedSectionType:sectionType withUUID:atxUUID];
  }

  [(NCNotificationSummarizedSectionList *)self _updateSectionForRankOrderedIfNecessaryAndReloadDigest:0];
}

- (void)notificationListBaseComponentDidRemoveAll:(id)all
{
  v9.receiver = self;
  v9.super_class = NCNotificationSummarizedSectionList;
  [(NCNotificationCombinedSectionList *)&v9 notificationListBaseComponentDidRemoveAll:all];
  if (![(NCNotificationCombinedSectionList *)self notificationCount])
  {
    listView = [(NCNotificationStructuredSectionList *)self listView];
    [listView setGrouped:1];

    listView2 = [(NCNotificationStructuredSectionList *)self listView];
    [listView2 reloadHeaderView];

    v6 = +[NCNotificationEventTracker sharedInstance];
    sectionType = [(NCNotificationStructuredSectionList *)self sectionType];
    atxUUID = [(NCNotificationSummarizedSectionList *)self atxUUID];
    [v6 dismissedSectionType:sectionType withUUID:atxUUID];
  }

  [(NCNotificationSummarizedSectionList *)self _updateSectionForRankOrderedIfNecessaryAndReloadDigest:0];
}

- (BOOL)notificationListComponent:(id)component shouldAllowInteractionsForNotificationRequest:(id)request
{
  componentCopy = component;
  requestCopy = request;
  listView = [(NCNotificationStructuredSectionList *)self listView];
  isGrouped = [listView isGrouped];

  if (isGrouped)
  {
    v10 = 0;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = NCNotificationSummarizedSectionList;
    v10 = [(NCNotificationStructuredSectionList *)&v12 notificationListComponent:componentCopy shouldAllowInteractionsForNotificationRequest:requestCopy];
  }

  return v10;
}

- (BOOL)notificationGroupListShouldReloadNotificationCells:(id)cells
{
  listView = [(NCNotificationStructuredSectionList *)self listView];
  isGrouped = [listView isGrouped];

  return isGrouped ^ 1;
}

- (BOOL)shouldNotificationGroupListPanHorizontally:(id)horizontally
{
  horizontallyCopy = horizontally;
  listView = [(NCNotificationStructuredSectionList *)self listView];
  isGrouped = [listView isGrouped];

  if (isGrouped)
  {
    v7 = 0;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = NCNotificationSummarizedSectionList;
    v7 = [(NCNotificationStructuredSectionList *)&v9 shouldNotificationGroupListPanHorizontally:horizontallyCopy];
  }

  return v7;
}

- (void)sectionHeaderViewDidRequestCollapsing:(id)collapsing
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
  listView = [(NCNotificationStructuredSectionList *)self listView];
  [listView reloadViewAtIndex:0];

  return 1;
}

- (void)notificationSummaryOrderProviderRequestsReloadingLeadingSummaryPlatterView:(id)view
{
  listView = [(NCNotificationStructuredSectionList *)self listView];
  isGrouped = [listView isGrouped];

  if (isGrouped)
  {
    listView2 = [(NCNotificationStructuredSectionList *)self listView];
    [listView2 reloadViewAtIndex:0];

    listView3 = [(NCNotificationStructuredSectionList *)self listView];
    superview = [listView3 superview];
    [superview setNeedsLayout];
  }
}

- (id)materialGroupNameBaseForNotificationSummaryOrderProvider:(id)provider
{
  delegate = [(NCNotificationStructuredSectionList *)self delegate];
  v5 = [delegate backgroundGroupNameBaseForNotificationListBaseComponent:self];

  return v5;
}

- (void)notificationSummaryOrderProvider:(id)provider requestsPerformingDefaultActionForNotificationRequest:(id)request inGroupList:(id)list
{
  v6 = MEMORY[0x277CBEAC0];
  v7 = MEMORY[0x277CCABB0];
  requestCopy = request;
  v9 = [v7 numberWithBool:1];
  v12 = [v6 dictionaryWithObject:v9 forKey:@"NCNotificationActionDeferClearForNotificationSummaryKey"];

  delegate = [(NCNotificationStructuredSectionList *)self delegate];
  defaultAction = [requestCopy defaultAction];
  [delegate notificationListComponent:self requestsExecuteAction:defaultAction forNotificationRequest:requestCopy requestAuthentication:1 withParameters:v12 completion:0];
}

- (void)notificationSummaryOrderProvider:(id)provider didUpdateOrderedNotificationGroupLists:(id)lists
{
  v18 = *MEMORY[0x277D85DE8];
  listsCopy = lists;
  listView = [(NCNotificationStructuredSectionList *)self listView];
  if (([listView isGrouped] & 1) == 0)
  {
    goto LABEL_8;
  }

  allNotificationGroups = [(NCNotificationStructuredSectionList *)self allNotificationGroups];
  v8 = [allNotificationGroups count];
  if (v8 != [listsCopy count])
  {

LABEL_8:
    goto LABEL_9;
  }

  notificationGroups = [(NCNotificationStructuredSectionList *)self notificationGroups];
  v10 = [notificationGroups isEqualToArray:listsCopy];

  if ((v10 & 1) == 0)
  {
    v11 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
    {
      v12 = v11;
      logDescription = [(NCNotificationStructuredSectionList *)self logDescription];
      v16 = 138543362;
      v17 = logDescription;
      _os_log_impl(&dword_21E77E000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ reordering notification group lists", &v16, 0xCu);
    }

    v14 = [MEMORY[0x277CBEB18] arrayWithArray:listsCopy];
    [(NCNotificationStructuredSectionList *)self setNotificationGroups:v14];

    listView2 = [(NCNotificationStructuredSectionList *)self listView];
    [listView2 invalidateData];
  }

LABEL_9:
}

- (id)titlesForSectionListsInSummaryForSummaryOrderProvider:(id)provider
{
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  sectionLists = [(NCNotificationCombinedSectionList *)self sectionLists];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __93__NCNotificationSummarizedSectionList_titlesForSectionListsInSummaryForSummaryOrderProvider___block_invoke;
  v8[3] = &unk_27836F768;
  v6 = v4;
  v9 = v6;
  [sectionLists enumerateObjectsUsingBlock:v8];

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

- (BOOL)shouldContinuePresentingActionButtonsForSwipeInteraction:(id)interaction
{
  listView = [(NCNotificationStructuredSectionList *)self listView];
  isGrouped = [listView isGrouped];

  return isGrouped;
}

- (id)swipeInteraction:(id)interaction actionsToRevealFromLayoutLocation:(unint64_t)location
{
  v7[1] = *MEMORY[0x277D85DE8];
  if (location == 1)
  {
    _clearAction = [(NCNotificationSummarizedSectionList *)self _clearAction];
    v7[0] = _clearAction;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)viewToMoveForSwipeInteraction:(id)interaction
{
  summaryPlatterContainingView = [(NCNotificationSummarizedSectionList *)self summaryPlatterContainingView];
  summaryPlatterView = [summaryPlatterContainingView summaryPlatterView];

  return summaryPlatterView;
}

- (void)swipeInteractionDidSignificantUserInteraction:(id)interaction
{
  delegate = [(NCNotificationStructuredSectionList *)self delegate];
  [delegate notificationListBaseComponentDidSignificantUserInteraction:self];
}

- (void)swipeInteractionDidBeginRevealingActions:(id)actions
{
  actionsCopy = actions;
  [(NCNotificationSummarizedSectionList *)self setHorizontallyDisplaced:1];
  delegate = [(NCNotificationStructuredSectionList *)self delegate];
  [delegate notificationListBaseComponent:self didTransitionActionsForSwipeInteraction:actionsCopy revealed:1];
}

- (void)swipeInteractionDidBeginHidingActions:(id)actions
{
  actionsCopy = actions;
  [(NCNotificationSummarizedSectionList *)self setHorizontallyDisplaced:0];
  delegate = [(NCNotificationStructuredSectionList *)self delegate];
  [delegate notificationListBaseComponent:self didTransitionActionsForSwipeInteraction:actionsCopy revealed:0];
}

- (void)swipeInteraction:(id)interaction didMoveToNewXPosition:(double)position
{
  if (position == 0.0)
  {
    [(NCNotificationSummarizedSectionList *)self _resetSwipeClipping];
  }

  else
  {
    [(NCNotificationSummarizedSectionList *)self _configureSwipeClippingIfNecessary];
  }

  summaryPlatterContainingView = [(NCNotificationSummarizedSectionList *)self summaryPlatterContainingView];
  [summaryPlatterContainingView setSupportsMitosis:position != 0.0];
}

- (double)buttonsGlassBackgroundSmoothnessForSwipeInteraction:(id)interaction
{
  summaryPlatterContainingView = [(NCNotificationSummarizedSectionList *)self summaryPlatterContainingView];
  [summaryPlatterContainingView glassSmoothness];
  v5 = v4;

  return v5;
}

- (unint64_t)buttonsGlassBackgroundStateForSwipeInteraction:(id)interaction
{
  summaryPlatterContainingView = [(NCNotificationSummarizedSectionList *)self summaryPlatterContainingView];
  backgroundGlassState = [summaryPlatterContainingView backgroundGlassState];

  return backgroundGlassState;
}

- (double)buttonsGlassLuminanceForSwipeInteraction:(id)interaction
{
  listView = [(NCNotificationStructuredSectionList *)self listView];
  traitCollection = [listView traitCollection];
  [traitCollection glassLuminanceValue];
  v6 = v5;

  return v6;
}

- (int64_t)buttonsGlassBackgroundIdForSwipeInteraction:(id)interaction
{
  summaryPlatterContainingView = [(NCNotificationSummarizedSectionList *)self summaryPlatterContainingView];
  backgroundGlassId = [summaryPlatterContainingView backgroundGlassId];

  return backgroundGlassId;
}

- (void)_insertViewToListAtIndex:(unint64_t)index animated:(BOOL)animated
{
  v4.receiver = self;
  v4.super_class = NCNotificationSummarizedSectionList;
  [(NCNotificationStructuredSectionList *)&v4 _insertViewToListAtIndex:index + [(NCNotificationSummarizedSectionList *)self shouldAdjustIndex] animated:animated];
}

- (void)_removeViewFromListAtIndex:(unint64_t)index animated:(BOOL)animated isHorizontallyDisplaced:(BOOL)displaced
{
  v5.receiver = self;
  v5.super_class = NCNotificationSummarizedSectionList;
  [(NCNotificationStructuredSectionList *)&v5 _removeViewFromListAtIndex:index + [(NCNotificationSummarizedSectionList *)self shouldAdjustIndex] animated:animated isHorizontallyDisplaced:displaced];
}

- (id)_newSectionHeaderView
{
  v4.receiver = self;
  v4.super_class = NCNotificationSummarizedSectionList;
  _newSectionHeaderView = [(NCNotificationStructuredSectionList *)&v4 _newSectionHeaderView];
  [_newSectionHeaderView setShowCollapseButton:1];
  return _newSectionHeaderView;
}

- (void)_configureSectionListView:(id)view
{
  v4.receiver = self;
  v4.super_class = NCNotificationSummarizedSectionList;
  viewCopy = view;
  [(NCNotificationStructuredSectionList *)&v4 _configureSectionListView:viewCopy];
  [viewCopy setSupportsGrouping:{1, v4.receiver, v4.super_class}];
}

- (id)_notificationGroupsForDigestRankOrdering
{
  allNotificationGroups = [(NCNotificationStructuredSectionList *)self allNotificationGroups];
  v3 = [allNotificationGroups copy];

  return v3;
}

- (BOOL)shouldAdjustIndex
{
  listView = [(NCNotificationStructuredSectionList *)self listView];
  isGrouped = [listView isGrouped];

  return isGrouped;
}

- (NCNotificationSummaryPlatterContainingView)summaryPlatterContainingView
{
  leadingSummaryPlatterView = [(NCNotificationSummaryOrderProvider *)self->_summaryOrderProvider leadingSummaryPlatterView];
  summaryPlatterContainingView = self->_summaryPlatterContainingView;
  if (summaryPlatterContainingView)
  {
    [(NCNotificationSummaryPlatterContainingView *)summaryPlatterContainingView setSummaryPlatterView:leadingSummaryPlatterView];
  }

  else
  {
    v5 = [[NCNotificationSummaryPlatterContainingView alloc] initWithSummaryPlatterView:leadingSummaryPlatterView];
    v6 = self->_summaryPlatterContainingView;
    self->_summaryPlatterContainingView = v5;
  }

  v7 = self->_summaryPlatterContainingView;
  v8 = v7;

  return v7;
}

- (void)_hideSummaryPlatterView
{
  listView = [(NCNotificationStructuredSectionList *)self listView];
  [listView removeViewAtIndex:0 animated:1];
}

- (void)_showSummaryPlatterView
{
  listView = [(NCNotificationStructuredSectionList *)self listView];
  [listView insertViewAtIndex:0 animated:1];
}

- (void)_expandSection
{
  v22 = *MEMORY[0x277D85DE8];
  [(NCNotificationSummarizedSectionList *)self _didPerformSignificantUserInteraction];
  listView = [(NCNotificationStructuredSectionList *)self listView];
  isGrouped = [listView isGrouped];

  if ([(NCNotificationCombinedSectionList *)self count]&& isGrouped)
  {
    v5 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
    {
      v6 = v5;
      logDescription = [(NCNotificationStructuredSectionList *)self logDescription];
      *buf = 138412290;
      v21 = logDescription;
      _os_log_impl(&dword_21E77E000, v6, OS_LOG_TYPE_DEFAULT, "Expanding summarized section %@", buf, 0xCu);
    }

    [(NCNotificationSummarizedSectionList *)self _prepareForExpand];
    v8 = [(NCNotificationStructuredSectionList *)self sectionType]== 3 || [(NCNotificationStructuredSectionList *)self sectionType]== 5;
    summaryOrderProvider = [(NCNotificationSummarizedSectionList *)self summaryOrderProvider];
    [summaryOrderProvider atxLogSummaryPlatterExpandedIsUpcoming:v8];

    v10 = +[NCNotificationEventTracker sharedInstance];
    sectionType = [(NCNotificationStructuredSectionList *)self sectionType];
    atxUUID = [(NCNotificationSummarizedSectionList *)self atxUUID];
    [v10 expandedSectionType:sectionType withUUID:atxUUID];

    objc_initWeak(buf, self);
    delegate = [(NCNotificationStructuredSectionList *)self delegate];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __53__NCNotificationSummarizedSectionList__expandSection__block_invoke;
    v15[3] = &unk_278372028;
    objc_copyWeak(&v18, buf);
    v19 = isGrouped;
    v14 = delegate;
    v16 = v14;
    selfCopy = self;
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
  listView = [(NCNotificationStructuredSectionList *)self listView];
  isGrouped = [listView isGrouped];

  if ((isGrouped & 1) == 0)
  {
    v5 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
    {
      v6 = v5;
      logDescription = [(NCNotificationStructuredSectionList *)self logDescription];
      v11 = 138412290;
      v12 = logDescription;
      _os_log_impl(&dword_21E77E000, v6, OS_LOG_TYPE_DEFAULT, "Collapsing summarized section %@", &v11, 0xCu);
    }

    [(NCNotificationSummarizedSectionList *)self _collapseAllGroupListViews];
    [(NCNotificationSummarizedSectionList *)self _collapseAllSectionListViews];
    [(NCNotificationSummarizedSectionList *)self _showSummaryPlatterView];
    listView2 = [(NCNotificationStructuredSectionList *)self listView];
    [listView2 setGrouped:1];

    delegate = [(NCNotificationStructuredSectionList *)self delegate];
    [delegate notificationStructuredSectionList:self transitionedGroupedStateIsGrouped:1];
  }

  return isGrouped ^ 1;
}

- (void)_collapseAllSectionListViews
{
  sectionLists = [(NCNotificationCombinedSectionList *)self sectionLists];
  [sectionLists enumerateObjectsUsingBlock:&__block_literal_global_30];
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
  allNotificationGroups = [(NCNotificationStructuredSectionList *)self allNotificationGroups];
  [allNotificationGroups enumerateObjectsUsingBlock:&__block_literal_global_46];
}

void __65__NCNotificationSummarizedSectionList__collapseAllGroupListViews__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 listView];
  [v2 setGrouped:1];
}

- (void)_reloadGroupListLeadingNotificationRequests
{
  allNotificationGroups = [(NCNotificationStructuredSectionList *)self allNotificationGroups];
  [allNotificationGroups enumerateObjectsUsingBlock:&__block_literal_global_48];

  listView = [(NCNotificationStructuredSectionList *)self listView];
  [listView setNeedsLayout];
}

- (void)_didPerformSignificantUserInteraction
{
  delegate = [(NCNotificationStructuredSectionList *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate notificationListBaseComponentDidSignificantUserInteraction:self];
  }
}

- (BOOL)isViewVisibleForNotificationGroupList:(id)list
{
  listCopy = list;
  listView = [(NCNotificationStructuredSectionList *)self listView];
  isGrouped = [listView isGrouped];

  if (isGrouped)
  {
    v7 = 0;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = NCNotificationSummarizedSectionList;
    v7 = [(NCNotificationStructuredSectionList *)&v9 isViewVisibleForNotificationGroupList:listCopy];
  }

  return v7;
}

- (BOOL)handleTapOnNotificationListBaseComponent:(id)component
{
  componentCopy = component;
  listView = [(NCNotificationStructuredSectionList *)self listView];
  isGrouped = [listView isGrouped];

  if (isGrouped)
  {
    [(NCNotificationSummarizedSectionList *)self _expandSection];
    v7 = 1;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = NCNotificationSummarizedSectionList;
    v7 = [(NCNotificationStructuredSectionList *)&v9 handleTapOnNotificationListBaseComponent:componentCopy];
  }

  return v7;
}

- (void)_updateSectionForRankOrderedIfNecessaryAndReloadDigest:(BOOL)digest
{
  digestCopy = digest;
  v17 = *MEMORY[0x277D85DE8];
  _notificationGroupsForDigestRankOrdering = [(NCNotificationSummarizedSectionList *)self _notificationGroupsForDigestRankOrdering];
  if (!-[NCNotificationSummarizedSectionList isPerformingClearAll](self, "isPerformingClearAll") && [_notificationGroupsForDigestRankOrdering count])
  {
    v6 = [_notificationGroupsForDigestRankOrdering bs_filter:&__block_literal_global_57];
    if (digestCopy || (-[NCNotificationSummaryOrderProvider cachedOrderedNotificationGroupLists](self->_summaryOrderProvider, "cachedOrderedNotificationGroupLists"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v6 isEqualToArray:v7], v7, (v8 & 1) == 0))
    {
      v9 = *MEMORY[0x277D77DD0];
      if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
      {
        v10 = v9;
        logDescription = [(NCNotificationStructuredSectionList *)self logDescription];
        v13 = 138543618;
        v14 = logDescription;
        v15 = 1024;
        v16 = digestCopy;
        _os_log_impl(&dword_21E77E000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ updating summary and section rank ordering [reloadDigest=%{BOOL}d]", &v13, 0x12u);
      }

      [(NCNotificationSummaryOrderProvider *)self->_summaryOrderProvider updateSummaryOrderWithNotificationGroupLists:v6 reloadDigest:digestCopy];
      delegate = [(NCNotificationStructuredSectionList *)self delegate];
      [delegate notificationListComponentChangedContent:self];
    }
  }
}

- (void)_configureSummaryPlatterViewSwipeInteractionIfNecessary
{
  summaryPlatterViewSwipeInteraction = [(NCNotificationSummarizedSectionList *)self summaryPlatterViewSwipeInteraction];
  view = [summaryPlatterViewSwipeInteraction view];
  if (summaryPlatterViewSwipeInteraction)
  {
    summaryPlatterContainingView = [(NCNotificationSummarizedSectionList *)self summaryPlatterContainingView];

    if (view != summaryPlatterContainingView)
    {
      [view removeInteraction:summaryPlatterViewSwipeInteraction];
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

    summaryPlatterContainingView2 = [(NCNotificationSummarizedSectionList *)self summaryPlatterContainingView];
    [summaryPlatterContainingView2 addInteraction:self->_summaryPlatterViewSwipeInteraction];

    v9 = self->_summaryPlatterViewSwipeInteraction;
    delegate = [(NCNotificationStructuredSectionList *)self delegate];
    v11 = [delegate backgroundGroupNameBaseForNotificationListBaseComponent:self];
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
  summaryPlatterContainingView = [(NCNotificationSummarizedSectionList *)self summaryPlatterContainingView];
  layer = [summaryPlatterContainingView layer];
  [layer setMaskedCorners:15];

  [summaryPlatterContainingView _setContinuousCornerRadius:23.5];
  [summaryPlatterContainingView setClipsToBounds:1];
}

- (void)_resetSwipeClipping
{
  summaryPlatterContainingView = [(NCNotificationSummarizedSectionList *)self summaryPlatterContainingView];
  layer = [summaryPlatterContainingView layer];
  [layer setMaskedCorners:0];

  [summaryPlatterContainingView setClipsToBounds:0];
}

- (BOOL)_shouldPerformSwipeClipping
{
  listView = [(NCNotificationStructuredSectionList *)self listView];
  traitCollection = [listView traitCollection];
  v4 = _NCShouldPlatterClipped();

  return v4;
}

@end