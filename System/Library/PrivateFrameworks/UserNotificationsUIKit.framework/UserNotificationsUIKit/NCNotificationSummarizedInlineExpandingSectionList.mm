@interface NCNotificationSummarizedInlineExpandingSectionList
- (BOOL)_removeNotificationFromCombinedAppSectionList:(id)list;
- (BOOL)_removeNotificationRequestFromAppSectionList:(id)list;
- (BOOL)_shouldCombineAppSectionLists;
- (BOOL)_shouldInsertNotificationRequestToCombinedAppSectionList:(id)list;
- (BOOL)_shouldSplitCombinedAppSectionList;
- (BOOL)adjustForContentSizeCategoryChange;
- (BOOL)notificationStructuredSectionList:(id)list areNotificationsLoadedForSectionIdentifier:(id)identifier;
- (BOOL)notificationStructuredSectionList:(id)list shouldFilterNotificationRequest:(id)request;
- (BOOL)removeNotificationRequest:(id)request;
- (BOOL)shouldReceiveTouchAtPointInWindowSpace:(CGPoint)space;
- (NCNotificationListCoalescingControlsHandlerDelegate)handlerDelegate;
- (NCNotificationSummarizedInlineExpandingSectionList)initWithTitle:(id)title sectionType:(unint64_t)type;
- (double)headerViewHeightForNotificationList:(id)list withWidth:(double)width;
- (id)_newAppSectionListForRequest:(id)request;
- (id)_newCombinedAppSectionListForRequest;
- (id)_notificationGroupsForDigestRankOrderingShouldMerge:(BOOL)merge;
- (id)backgroundGlassForNotificationList:(id)list;
- (id)backgroundViewForNotificationList:(id)list;
- (id)clearControlViewForLeadingSummaryPlatterViewForSummaryOrderProvider:(id)provider;
- (id)containerViewForClickInteractionPresentedContentForNotificationSummaryExpandedHeaderView:(id)view;
- (id)headerViewForNotificationList:(id)list;
- (id)hoverViewForNotificationList:(id)list;
- (id)materialGroupNameBaseForNotificationSummaryExpandedHeaderView:(id)view;
- (id)notificationStructuredSectionList:(id)list requestsAuxiliaryOptionsContentProviderForNotificationRequest:(id)request isLongLook:(BOOL)look;
- (id)removeNotificationGroupListsForMigrationPassingTest:(id)test filterRequestsPassingTest:(id)passingTest animate:(BOOL)animate;
- (int64_t)_insertNotificationRequestToAppSectionList:(id)list;
- (int64_t)_insertNotificationRequestToCombinedAppSectionList:(id)list;
- (int64_t)insertNotificationRequest:(id)request;
- (void)_appSectionListDidRemoveNotificationRequests:(id)requests;
- (void)_collapseAllSectionListViews;
- (void)_collapseButtonTapped:(id)tapped;
- (void)_combineAppSectionLists;
- (void)_configureCollapseButtonIfNecessary;
- (void)_configureExpandedHeaderViewIfNecessary;
- (void)_configureLeadingPlatterViewClearControlIfNecessary;
- (void)_configureSectionListView:(id)view;
- (void)_handleClearControlPrimaryAction:(id)action;
- (void)_handleClearControlTouchUpInside:(id)inside;
- (void)_modifyNotificationInCombinedAppSectionList:(id)list;
- (void)_modifyNotificationRequestInAppSectionList:(id)list;
- (void)_removeAppSectionListsIfEmpty;
- (void)_splitCombinedAppSectionList;
- (void)_toggleCombinedAppSectionListIfNecessary;
- (void)_updateAppSectionListsOnCollapse;
- (void)_updateAppSectionListsOnExpand;
- (void)_updateAppSectionsForOrderedNotificationGroupLists:(id)lists;
- (void)mergeNotificationGroups:(id)groups reorderGroupNotifications:(BOOL)notifications;
- (void)modifyNotificationRequest:(id)request;
- (void)notificationListBaseComponent:(id)component requestsScrollingToContentOffset:(double)offset withCompletion:(id)completion;
- (void)notificationListBaseComponentDidRemoveAll:(id)all;
- (void)notificationListComponent:(id)component didRemoveNotificationRequest:(id)request;
- (void)notificationStructuredSectionList:(id)list transitionedGroupedStateIsGrouped:(BOOL)grouped;
- (void)notificationStructuredSectionListDidClearAllNotificationRequests:(id)requests;
- (void)notificationStructuredSectionListRequestsClearingSection:(id)section;
- (void)notificationSummaryExpandedHeaderView:(id)view acceptedSummaryOnboarding:(BOOL)onboarding;
- (void)notificationSummaryExpandedHeaderView:(id)view didTransitionToClearState:(BOOL)state;
- (void)notificationSummaryExpandedHeaderViewDidBeginClickInteraction:(id)interaction;
- (void)notificationSummaryExpandedHeaderViewDidDismssClickInteractionPresentedContent:(id)content;
- (void)notificationSummaryExpandedHeaderViewDidPresentClickInteractionPresentedContent:(id)content;
- (void)notificationSummaryExpandedHeaderViewRequestsClearAll:(id)all;
- (void)notificationSummaryOrderProvider:(id)provider didUpdateOrderedNotificationGroupLists:(id)lists;
- (void)resetClearButtonStateAnimated:(BOOL)animated;
- (void)setDeviceAuthenticated:(BOOL)authenticated;
- (void)updateNotificationSectionSettings:(id)settings previousSectionSettings:(id)sectionSettings;
@end

@implementation NCNotificationSummarizedInlineExpandingSectionList

- (NCNotificationSummarizedInlineExpandingSectionList)initWithTitle:(id)title sectionType:(unint64_t)type
{
  v5.receiver = self;
  v5.super_class = NCNotificationSummarizedInlineExpandingSectionList;
  result = [(NCNotificationCombinedSectionList *)&v5 initWithTitle:title sectionType:type];
  if (result)
  {
    result->_combinedAppSectionListActive = 1;
  }

  return result;
}

- (void)mergeNotificationGroups:(id)groups reorderGroupNotifications:(BOOL)notifications
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __104__NCNotificationSummarizedInlineExpandingSectionList_mergeNotificationGroups_reorderGroupNotifications___block_invoke;
  v5[3] = &unk_27836F638;
  v5[4] = self;
  notificationsCopy = notifications;
  [groups enumerateObjectsUsingBlock:v5];
  [(NCNotificationSummarizedSectionList *)self _updateSectionForRankOrderedIfNecessaryAndReloadDigest:1];
}

void __104__NCNotificationSummarizedInlineExpandingSectionList_mergeNotificationGroups_reorderGroupNotifications___block_invoke(uint64_t a1, void *a2)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 sectionIdentifier];
  v5 = [*(a1 + 32) appSectionLists];
  v6 = [v5 objectForKey:v4];

  if (v6 && ([*(a1 + 32) listView], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isGrouped"), v7, v8))
  {
    v11[0] = v3;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
    [v6 mergeNotificationGroups:v9 reorderGroupNotifications:*(a1 + 40)];
  }

  else
  {
    v9 = [v3 allNotificationRequests];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __104__NCNotificationSummarizedInlineExpandingSectionList_mergeNotificationGroups_reorderGroupNotifications___block_invoke_2;
    v10[3] = &unk_27836F610;
    v10[4] = *(a1 + 32);
    [v9 enumerateObjectsUsingBlock:v10];
  }
}

- (id)removeNotificationGroupListsForMigrationPassingTest:(id)test filterRequestsPassingTest:(id)passingTest animate:(BOOL)animate
{
  animateCopy = animate;
  testCopy = test;
  passingTestCopy = passingTest;
  v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if ([(NCNotificationSummarizedInlineExpandingSectionList *)self isCombinedAppSectionListActive])
  {
    combinedAppSectionList = [(NCNotificationSummarizedInlineExpandingSectionList *)self combinedAppSectionList];
    v12 = [combinedAppSectionList removeNotificationGroupListsForMigrationPassingTest:testCopy filterRequestsPassingTest:passingTestCopy animate:animateCopy];
    [v10 addObjectsFromArray:v12];
  }

  else
  {
    appSectionLists = [(NCNotificationSummarizedInlineExpandingSectionList *)self appSectionLists];
    allValues = [appSectionLists allValues];
    v16 = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __140__NCNotificationSummarizedInlineExpandingSectionList_removeNotificationGroupListsForMigrationPassingTest_filterRequestsPassingTest_animate___block_invoke;
    v19 = &unk_27836F660;
    v20 = v10;
    v21 = testCopy;
    v22 = passingTestCopy;
    v23 = animateCopy;
    [allValues enumerateObjectsUsingBlock:&v16];
  }

  [(NCNotificationSummarizedInlineExpandingSectionList *)self _removeAppSectionListsIfEmpty:v16];

  return v10;
}

void __140__NCNotificationSummarizedInlineExpandingSectionList_removeNotificationGroupListsForMigrationPassingTest_filterRequestsPassingTest_animate___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 removeNotificationGroupListsForMigrationPassingTest:*(a1 + 40) filterRequestsPassingTest:*(a1 + 48) animate:*(a1 + 56)];
  [v2 addObjectsFromArray:v3];
}

- (int64_t)insertNotificationRequest:(id)request
{
  requestCopy = request;
  if (![(NCNotificationSummarizedInlineExpandingSectionList *)self isCombinedAppSectionListActive])
  {
LABEL_6:
    v5 = [(NCNotificationSummarizedInlineExpandingSectionList *)self _insertNotificationRequestToAppSectionList:requestCopy];
    goto LABEL_7;
  }

  if (![(NCNotificationSummarizedInlineExpandingSectionList *)self _shouldInsertNotificationRequestToCombinedAppSectionList:requestCopy])
  {
    listView = [(NCNotificationStructuredSectionList *)self listView];
    isGrouped = [listView isGrouped];

    if (!isGrouped)
    {
      v8 = [(NCNotificationSummarizedInlineExpandingSectionList *)self _insertNotificationRequestToCombinedAppSectionList:requestCopy];
      [(NCNotificationSummarizedInlineExpandingSectionList *)self setReloadCombinedAppSectionListOnCollapse:1];
      goto LABEL_8;
    }

    [(NCNotificationSummarizedInlineExpandingSectionList *)self setCombinedAppSectionListActive:0];
    [(NCNotificationSummarizedInlineExpandingSectionList *)self _splitCombinedAppSectionList];
    goto LABEL_6;
  }

  v5 = [(NCNotificationSummarizedInlineExpandingSectionList *)self _insertNotificationRequestToCombinedAppSectionList:requestCopy];
LABEL_7:
  v8 = v5;
LABEL_8:
  [(NCNotificationSummarizedSectionList *)self _updateSectionForRankOrderedIfNecessaryAndReloadDigest:1];
  [(NCNotificationSummarizedSectionList *)self _configureSummaryPlatterViewSwipeInteractionIfNecessary];

  return v8;
}

- (void)modifyNotificationRequest:(id)request
{
  requestCopy = request;
  if ([(NCNotificationSummarizedInlineExpandingSectionList *)self isCombinedAppSectionListActive])
  {
    [(NCNotificationSummarizedInlineExpandingSectionList *)self _modifyNotificationInCombinedAppSectionList:requestCopy];
  }

  else
  {
    [(NCNotificationSummarizedInlineExpandingSectionList *)self _modifyNotificationRequestInAppSectionList:requestCopy];
  }

  [(NCNotificationSummarizedSectionList *)self _updateSectionForRankOrderedIfNecessaryAndReloadDigest:1];
}

- (BOOL)removeNotificationRequest:(id)request
{
  requestCopy = request;
  if ([(NCNotificationCombinedSectionList *)self containsNotificationRequest:requestCopy])
  {
    if ([(NCNotificationSummarizedInlineExpandingSectionList *)self isCombinedAppSectionListActive])
    {
      v5 = [(NCNotificationSummarizedInlineExpandingSectionList *)self _removeNotificationFromCombinedAppSectionList:requestCopy];
    }

    else
    {
      v5 = [(NCNotificationSummarizedInlineExpandingSectionList *)self _removeNotificationRequestFromAppSectionList:requestCopy];
      if ([(NCNotificationSummarizedInlineExpandingSectionList *)self _shouldCombineAppSectionLists])
      {
        listView = [(NCNotificationStructuredSectionList *)self listView];
        isGrouped = [listView isGrouped];

        if (isGrouped)
        {
          [(NCNotificationSummarizedInlineExpandingSectionList *)self setCombinedAppSectionListActive:1];
          [(NCNotificationSummarizedInlineExpandingSectionList *)self _combineAppSectionLists];
        }

        else
        {
          [(NCNotificationSummarizedInlineExpandingSectionList *)self setReloadCombinedAppSectionListOnCollapse:1];
        }
      }
    }

    [(NCNotificationSummarizedSectionList *)self _updateSectionForRankOrderedIfNecessaryAndReloadDigest:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)updateNotificationSectionSettings:(id)settings previousSectionSettings:(id)sectionSettings
{
  v5.receiver = self;
  v5.super_class = NCNotificationSummarizedInlineExpandingSectionList;
  [(NCNotificationSummarizedSectionList *)&v5 updateNotificationSectionSettings:settings previousSectionSettings:sectionSettings];
  [(NCNotificationSummarizedInlineExpandingSectionList *)self _removeAppSectionListsIfEmpty];
}

- (void)setDeviceAuthenticated:(BOOL)authenticated
{
  v7.receiver = self;
  v7.super_class = NCNotificationSummarizedInlineExpandingSectionList;
  [(NCNotificationSummarizedSectionList *)&v7 setDeviceAuthenticated:?];
  if (!authenticated)
  {
    leadingPlatterViewClearControl = self->_leadingPlatterViewClearControl;
    if (leadingPlatterViewClearControl)
    {
      if ([(NCToggleControl *)leadingPlatterViewClearControl isExpanded])
      {
        [(NCToggleControl *)self->_leadingPlatterViewClearControl setExpanded:0];
        delegate = [(NCNotificationStructuredSectionList *)self delegate];
        [delegate notificationListBaseComponent:self didTransitionCoalescingControlsHandler:self toClearState:0];
      }
    }
  }
}

- (id)headerViewForNotificationList:(id)list
{
  [(NCNotificationSummarizedInlineExpandingSectionList *)self _configureExpandedHeaderViewIfNecessary];
  expandedHeaderView = self->_expandedHeaderView;

  return expandedHeaderView;
}

- (double)headerViewHeightForNotificationList:(id)list withWidth:(double)width
{
  [(NCNotificationSummarizedInlineExpandingSectionList *)self _configureExpandedHeaderViewIfNecessary];
  [(NCNotificationSummaryExpandedHeaderView *)self->_expandedHeaderView sizeThatFits:width, 0.0];
  return v6;
}

- (id)backgroundViewForNotificationList:(id)list
{
  [(NCNotificationSummarizedInlineExpandingSectionList *)self _configureBackgroundPlatterViewIfNecessary];
  backgroundPlatterView = self->_backgroundPlatterView;

  return backgroundPlatterView;
}

- (id)backgroundGlassForNotificationList:(id)list
{
  listView = [(NCNotificationStructuredSectionList *)self listView];
  isGrouped = [listView isGrouped];

  if (isGrouped)
  {
    v6 = 0;
  }

  else
  {
    v6 = [objc_alloc(MEMORY[0x277D763B0]) initWithVariant:1 size:1];
    listView2 = [(NCNotificationStructuredSectionList *)self listView];
    traitCollection = [listView2 traitCollection];
    [traitCollection glassLuminanceValue];
    [v6 setAdaptiveFixedLuminance:?];

    [v6 setSubvariant:@"lockscreenNotifications"];
    [v6 setBackdropGroupName:@"lockscreenElements"];
  }

  return v6;
}

- (id)hoverViewForNotificationList:(id)list
{
  [(NCNotificationSummarizedInlineExpandingSectionList *)self _configureCollapseButtonIfNecessary];
  collapseButtonView = self->_collapseButtonView;

  return collapseButtonView;
}

- (void)notificationSummaryOrderProvider:(id)provider didUpdateOrderedNotificationGroupLists:(id)lists
{
  v16 = *MEMORY[0x277D85DE8];
  listsCopy = lists;
  listView = [(NCNotificationStructuredSectionList *)self listView];
  isGrouped = [listView isGrouped];

  v8 = *MEMORY[0x277D77DD0];
  v9 = os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT);
  if (isGrouped)
  {
    if (v9)
    {
      v10 = v8;
      logDescription = [(NCNotificationStructuredSectionList *)self logDescription];
      v14 = 138543362;
      v15 = logDescription;
      _os_log_impl(&dword_21E77E000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ updating app sections for digest ordered notifications", &v14, 0xCu);
    }

    [(NCNotificationSummarizedInlineExpandingSectionList *)self _updateAppSectionsForOrderedNotificationGroupLists:listsCopy];
  }

  else
  {
    if (v9)
    {
      v12 = v8;
      logDescription2 = [(NCNotificationStructuredSectionList *)self logDescription];
      v14 = 138543362;
      v15 = logDescription2;
      _os_log_impl(&dword_21E77E000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ deferring updating app sections for digest ordered notifications because it is expanded", &v14, 0xCu);
    }

    [(NCNotificationSummarizedInlineExpandingSectionList *)self setReloadOrderingOnCollapse:1];
  }
}

- (id)clearControlViewForLeadingSummaryPlatterViewForSummaryOrderProvider:(id)provider
{
  [(NCNotificationSummarizedInlineExpandingSectionList *)self _configureLeadingPlatterViewClearControlIfNecessary];
  leadingPlatterViewClearControl = self->_leadingPlatterViewClearControl;

  return leadingPlatterViewClearControl;
}

- (id)notificationStructuredSectionList:(id)list requestsAuxiliaryOptionsContentProviderForNotificationRequest:(id)request isLongLook:(BOOL)look
{
  lookCopy = look;
  requestCopy = request;
  delegate = [(NCNotificationStructuredSectionList *)self delegate];
  v9 = [delegate notificationStructuredSectionList:self requestsAuxiliaryOptionsContentProviderForNotificationRequest:requestCopy isLongLook:lookCopy];

  return v9;
}

- (BOOL)notificationStructuredSectionList:(id)list shouldFilterNotificationRequest:(id)request
{
  requestCopy = request;
  delegate = [(NCNotificationStructuredSectionList *)self delegate];
  LOBYTE(self) = [delegate notificationStructuredSectionList:self shouldFilterNotificationRequest:requestCopy];

  return self;
}

- (void)notificationListBaseComponent:(id)component requestsScrollingToContentOffset:(double)offset withCompletion:(id)completion
{
  completionCopy = completion;
  delegate = [(NCNotificationStructuredSectionList *)self delegate];
  [delegate notificationListBaseComponent:self requestsScrollingToContentOffset:completionCopy withCompletion:offset];
}

- (BOOL)notificationStructuredSectionList:(id)list areNotificationsLoadedForSectionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  delegate = [(NCNotificationStructuredSectionList *)self delegate];
  LOBYTE(self) = [delegate notificationStructuredSectionList:self areNotificationsLoadedForSectionIdentifier:identifierCopy];

  return self;
}

- (void)notificationStructuredSectionList:(id)list transitionedGroupedStateIsGrouped:(BOOL)grouped
{
  groupedCopy = grouped;
  delegate = [(NCNotificationStructuredSectionList *)self delegate];
  [delegate notificationStructuredSectionList:self transitionedGroupedStateIsGrouped:groupedCopy];
}

- (void)notificationStructuredSectionListRequestsClearingSection:(id)section
{
  sectionCopy = section;
  delegate = [(NCNotificationStructuredSectionList *)self delegate];
  [delegate notificationStructuredSectionListRequestsClearingSection:sectionCopy];
}

- (void)notificationStructuredSectionListDidClearAllNotificationRequests:(id)requests
{
  requestsCopy = requests;
  delegate = [(NCNotificationStructuredSectionList *)self delegate];
  [delegate notificationStructuredSectionListDidClearAllNotificationRequests:requestsCopy];
}

- (void)notificationListBaseComponentDidRemoveAll:(id)all
{
  allCopy = all;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = allCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  [(NCNotificationSummarizedInlineExpandingSectionList *)self _appSectionListDidRemoveNotificationRequests:v6];
  v7.receiver = self;
  v7.super_class = NCNotificationSummarizedInlineExpandingSectionList;
  [(NCNotificationSummarizedSectionList *)&v7 notificationListBaseComponentDidRemoveAll:allCopy];
}

- (void)notificationListComponent:(id)component didRemoveNotificationRequest:(id)request
{
  requestCopy = request;
  componentCopy = component;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = componentCopy;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  [(NCNotificationSummarizedInlineExpandingSectionList *)self _appSectionListDidRemoveNotificationRequests:v9];
  v10.receiver = self;
  v10.super_class = NCNotificationSummarizedInlineExpandingSectionList;
  [(NCNotificationSummarizedSectionList *)&v10 notificationListComponent:componentCopy didRemoveNotificationRequest:requestCopy];
}

- (void)notificationSummaryExpandedHeaderView:(id)view acceptedSummaryOnboarding:(BOOL)onboarding
{
  onboardingCopy = onboarding;
  delegate = [(NCNotificationStructuredSectionList *)self delegate];
  if (delegate)
  {
    v7 = delegate;
    [delegate notificationListComponent:self acceptedSummaryOnboarding:onboardingCopy];
    delegate = v7;
  }
}

- (id)materialGroupNameBaseForNotificationSummaryExpandedHeaderView:(id)view
{
  delegate = [(NCNotificationStructuredSectionList *)self delegate];
  v5 = [delegate backgroundGroupNameBaseForNotificationListBaseComponent:self];

  return v5;
}

- (void)notificationSummaryExpandedHeaderViewRequestsClearAll:(id)all
{
  delegate = [(NCNotificationStructuredSectionList *)self delegate];
  [delegate notificationListBaseComponentRequestsClearingAll:self];
}

- (id)containerViewForClickInteractionPresentedContentForNotificationSummaryExpandedHeaderView:(id)view
{
  delegate = [(NCNotificationStructuredSectionList *)self delegate];
  v5 = [delegate containerViewForPreviewInteractionPresentedContentForNotificationListBaseComponent:self];

  return v5;
}

- (void)notificationSummaryExpandedHeaderViewDidBeginClickInteraction:(id)interaction
{
  delegate = [(NCNotificationStructuredSectionList *)self delegate];
  [delegate notificationListBaseComponent:self didBeginUserInteractionWithViewController:0];
}

- (void)notificationSummaryExpandedHeaderViewDidPresentClickInteractionPresentedContent:(id)content
{
  contentCopy = content;
  delegate = [(NCNotificationStructuredSectionList *)self delegate];
  [delegate notificationListBaseComponent:self didPresentCoalescingControlsHandler:contentCopy inForceTouchState:1];
}

- (void)notificationSummaryExpandedHeaderViewDidDismssClickInteractionPresentedContent:(id)content
{
  contentCopy = content;
  delegate = [(NCNotificationStructuredSectionList *)self delegate];
  [delegate notificationListBaseComponent:self didPresentCoalescingControlsHandler:contentCopy inForceTouchState:0];

  [delegate notificationListBaseComponent:self didEndUserInteractionWithViewController:0];
}

- (void)notificationSummaryExpandedHeaderView:(id)view didTransitionToClearState:(BOOL)state
{
  stateCopy = state;
  viewCopy = view;
  delegate = [(NCNotificationStructuredSectionList *)self delegate];
  [delegate notificationListBaseComponent:self didTransitionCoalescingControlsHandler:viewCopy toClearState:stateCopy];

  [delegate notificationListBaseComponentDidSignificantUserInteraction:self];
}

- (BOOL)adjustForContentSizeCategoryChange
{
  v10.receiver = self;
  v10.super_class = NCNotificationSummarizedInlineExpandingSectionList;
  [(NCNotificationSummarizedSectionList *)&v10 adjustForContentSizeCategoryChange];
  [(NCNotificationSummaryExpandedHeaderView *)self->_expandedHeaderView adjustForContentSizeCategoryChange];
  appSectionLists = [(NCNotificationSummarizedInlineExpandingSectionList *)self appSectionLists];
  allValues = [appSectionLists allValues];
  [allValues enumerateObjectsUsingBlock:&__block_literal_global_2];

  collapseButtonView = self->_collapseButtonView;
  self->_collapseButtonView = 0;

  listView = [(NCNotificationStructuredSectionList *)self listView];
  [listView reloadHoverView];

  leadingPlatterViewClearControl = self->_leadingPlatterViewClearControl;
  self->_leadingPlatterViewClearControl = 0;

  summaryOrderProvider = [(NCNotificationSummarizedSectionList *)self summaryOrderProvider];
  [summaryOrderProvider updateLeadingSummaryPlatterView];

  return 1;
}

- (void)resetClearButtonStateAnimated:(BOOL)animated
{
  animatedCopy = animated;
  if ([(NCToggleControl *)self->_leadingPlatterViewClearControl isExpanded])
  {
    if (animatedCopy)
    {
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = __84__NCNotificationSummarizedInlineExpandingSectionList_resetClearButtonStateAnimated___block_invoke;
      v6[3] = &unk_27836F6A8;
      v6[4] = self;
      [MEMORY[0x277D75D18] _animateUsingSpringWithTension:0 friction:v6 interactive:0 animations:200.0 completion:25.0];
    }

    else
    {
      leadingPlatterViewClearControl = self->_leadingPlatterViewClearControl;

      [(NCToggleControl *)leadingPlatterViewClearControl setExpanded:0];
    }
  }
}

void __84__NCNotificationSummarizedInlineExpandingSectionList_resetClearButtonStateAnimated___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) leadingPlatterViewClearControl];
  [v1 setExpanded:0];
}

- (BOOL)shouldReceiveTouchAtPointInWindowSpace:(CGPoint)space
{
  y = space.y;
  x = space.x;
  summaryOrderProvider = [(NCNotificationSummarizedSectionList *)self summaryOrderProvider];
  leadingSummaryPlatterView = [summaryOrderProvider leadingSummaryPlatterView];
  leadingPlatterViewClearControl = [(NCNotificationSummarizedInlineExpandingSectionList *)self leadingPlatterViewClearControl];
  [leadingPlatterViewClearControl frame];
  [leadingSummaryPlatterView convertRect:0 toView:?];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v19.origin.x = v10;
  v19.origin.y = v12;
  v19.size.width = v14;
  v19.size.height = v16;
  v18.x = x;
  v18.y = y;
  LOBYTE(summaryOrderProvider) = CGRectContainsPoint(v19, v18);
  return [(NCToggleControl *)self->_leadingPlatterViewClearControl isExpanded]& summaryOrderProvider;
}

- (void)_collapseAllSectionListViews
{
  v12 = *MEMORY[0x277D85DE8];
  appSectionLists = [(NCNotificationSummarizedInlineExpandingSectionList *)self appSectionLists];
  [appSectionLists enumerateKeysAndObjectsUsingBlock:&__block_literal_global_24];

  [(NCNotificationSummarizedInlineExpandingSectionList *)self _updateAppSectionListsOnCollapse];
  if ([(NCNotificationSummarizedInlineExpandingSectionList *)self reloadCombinedAppSectionListOnCollapse])
  {
    [(NCNotificationSummarizedInlineExpandingSectionList *)self setReloadCombinedAppSectionListOnCollapse:0];
    [(NCNotificationSummarizedInlineExpandingSectionList *)self _toggleCombinedAppSectionListIfNecessary];
    if (![(NCNotificationSummarizedInlineExpandingSectionList *)self reloadOrderingOnCollapse])
    {
      v4 = *MEMORY[0x277D77DD0];
      if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
      {
        v5 = v4;
        logDescription = [(NCNotificationStructuredSectionList *)self logDescription];
        v10 = 138543362;
        v11 = logDescription;
        _os_log_impl(&dword_21E77E000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ reloading ordering of app sections on collapse for combined app section", &v10, 0xCu);
      }

      [(NCNotificationSummarizedSectionList *)self _updateSectionForRankOrderedIfNecessaryAndReloadDigest:1];
    }
  }

  if ([(NCNotificationSummarizedInlineExpandingSectionList *)self reloadOrderingOnCollapse])
  {
    v7 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
    {
      v8 = v7;
      logDescription2 = [(NCNotificationStructuredSectionList *)self logDescription];
      v10 = 138543362;
      v11 = logDescription2;
      _os_log_impl(&dword_21E77E000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ reloading ordering of app sections on collapse", &v10, 0xCu);
    }

    [(NCNotificationSummarizedInlineExpandingSectionList *)self setReloadOrderingOnCollapse:0];
    [(NCNotificationSummarizedSectionList *)self _updateSectionForRankOrderedIfNecessaryAndReloadDigest:1];
  }
}

- (void)_configureSectionListView:(id)view
{
  v4.receiver = self;
  v4.super_class = NCNotificationSummarizedInlineExpandingSectionList;
  viewCopy = view;
  [(NCNotificationSummarizedSectionList *)&v4 _configureSectionListView:viewCopy];
  [viewCopy setGroupingAnimationStyle:{1, v4.receiver, v4.super_class}];
  [viewCopy setShowStackBelowLeadingView:0];
  [viewCopy setPreferredBottomTransitionTransformer:1];
  [viewCopy setVisibleRectBottomMarginForRollUnder:-80.0];
}

- (void)_configureExpandedHeaderViewIfNecessary
{
  v27 = *MEMORY[0x277D85DE8];
  expandedHeaderView = self->_expandedHeaderView;
  if (!expandedHeaderView)
  {
    v4 = objc_alloc_init(NCNotificationSummaryExpandedHeaderView);
    v5 = self->_expandedHeaderView;
    self->_expandedHeaderView = v4;

    [(NCNotificationSummaryExpandedHeaderView *)self->_expandedHeaderView setDelegate:self];
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    requiredVisualStyleCategories = [(NCNotificationListBaseContentView *)self->_expandedHeaderView requiredVisualStyleCategories];
    v7 = [requiredVisualStyleCategories countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v23;
      do
      {
        v10 = 0;
        do
        {
          if (*v23 != v9)
          {
            objc_enumerationMutation(requiredVisualStyleCategories);
          }

          integerValue = [*(*(&v22 + 1) + 8 * v10) integerValue];
          v12 = self->_expandedHeaderView;
          v13 = [(PLPlatterView *)self->_backgroundPlatterView visualStylingProviderForCategory:integerValue];
          [(NCNotificationListBaseContentView *)v12 setVisualStylingProvider:v13 forCategory:integerValue];

          ++v10;
        }

        while (v8 != v10);
        v8 = [requiredVisualStyleCategories countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v8);
    }

    expandedHeaderView = self->_expandedHeaderView;
  }

  summaryOrderProvider = [(NCNotificationSummarizedSectionList *)self summaryOrderProvider];
  summaryHeading = [summaryOrderProvider summaryHeading];
  [(NCNotificationSummaryExpandedHeaderView *)expandedHeaderView setTitle:summaryHeading];

  v16 = self->_expandedHeaderView;
  summaryOrderProvider2 = [(NCNotificationSummarizedSectionList *)self summaryOrderProvider];
  -[NCNotificationSummaryExpandedHeaderView setOnboarding:](v16, "setOnboarding:", [summaryOrderProvider2 isOnboardingSummary]);

  summaryOrderProvider3 = [(NCNotificationSummarizedSectionList *)self summaryOrderProvider];
  LODWORD(summaryOrderProvider2) = [summaryOrderProvider3 isOnboardingSummary];

  v19 = self->_expandedHeaderView;
  if (summaryOrderProvider2)
  {
    v20 = NCUserNotificationsUIKitFrameworkBundle();
    v21 = [v20 localizedStringForKey:@"NOTIFICATION_SUMMARY_ONBOARDING_SUGGESTION_EXPLANATION" value:&stru_282FE84F8 table:0];
    [(NCNotificationSummaryExpandedHeaderView *)v19 setSubtitle:v21];
  }

  else
  {
    [(NCNotificationSummaryExpandedHeaderView *)v19 setSubtitle:0];
  }
}

- (void)_configureCollapseButtonIfNecessary
{
  if (!self->_collapseButtonView)
  {
    v3 = MEMORY[0x277D755D0];
    v4 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76A28]];
    v14 = [v3 configurationWithFont:v4 scale:2];

    v5 = [MEMORY[0x277D755B8] systemImageNamed:@"chevron.down" withConfiguration:v14];
    v6 = [objc_alloc(MEMORY[0x277D3D2F8]) initWithMaterialRecipe:1];
    [(UIView *)v6 setGlyph:v5];
    delegate = [(NCNotificationStructuredSectionList *)self delegate];
    v8 = [delegate backgroundGroupNameBaseForNotificationListBaseComponent:self];
    [(UIView *)v6 setMaterialGroupNameBase:v8];

    [(UIView *)v6 setAccessibilityIdentifier:@"notification-summary-collapse-control"];
    [(UIView *)v6 addTarget:self action:sel__collapseButtonTapped_ forControlEvents:0x2000];
    _glyphView = [(UIView *)v6 _glyphView];
    [_glyphView sizeThatFits:{*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)}];

    BSRectWithSize();
    [(UIView *)v6 setBounds:?];
    collapseButtonView = self->_collapseButtonView;
    self->_collapseButtonView = v6;
    v11 = v6;

    layer = [(UIView *)self->_collapseButtonView layer];

    [layer setShadowColor:CGColorGetConstantColor(*MEMORY[0x277CBF3B8])];
    [layer setShadowRadius:5.0];
    LODWORD(v13) = 1045220557;
    [layer setShadowOpacity:v13];
    [layer setShadowOffset:{1.0, 3.0}];
  }
}

- (void)_collapseButtonTapped:(id)tapped
{
  delegate = [(NCNotificationStructuredSectionList *)self delegate];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __76__NCNotificationSummarizedInlineExpandingSectionList__collapseButtonTapped___block_invoke;
  v5[3] = &unk_27836F6A8;
  v5[4] = self;
  [delegate notificationListBaseComponent:self requestsScrollingToContentOffset:v5 withCompletion:0.0];
}

- (void)_configureLeadingPlatterViewClearControlIfNecessary
{
  if (!self->_leadingPlatterViewClearControl)
  {
    v3 = NCUserNotificationsUIKitFrameworkBundle();
    v4 = [v3 localizedStringForKey:@"NOTIFICATION_LIST_CLEAR_ALL" value:&stru_282FE84F8 table:0];
    v5 = [NCToggleControl dismissControlWithMaterialRecipe:51 clearAllText:v4];
    leadingPlatterViewClearControl = self->_leadingPlatterViewClearControl;
    self->_leadingPlatterViewClearControl = v5;

    v7 = self->_leadingPlatterViewClearControl;
    delegate = [(NCNotificationStructuredSectionList *)self delegate];
    v9 = [delegate backgroundGroupNameBaseForNotificationListBaseComponent:self];
    [(PLGlyphControl *)v7 setMaterialGroupNameBase:v9];

    [(NCToggleControl *)self->_leadingPlatterViewClearControl setVisualStyle:0];
    [(NCToggleControl *)self->_leadingPlatterViewClearControl setOverrideUserInterfaceStyle:2];
    [(NCToggleControl *)self->_leadingPlatterViewClearControl addTarget:self action:sel__handleClearControlTouchUpInside_ forControlEvents:64];
    v10 = self->_leadingPlatterViewClearControl;

    [(NCToggleControl *)v10 addTarget:self action:sel__handleClearControlPrimaryAction_ forControlEvents:0x2000];
  }
}

- (void)_handleClearControlTouchUpInside:(id)inside
{
  delegate = [(NCNotificationStructuredSectionList *)self delegate];
  [delegate notificationListBaseComponent:self didTransitionCoalescingControlsHandler:self toClearState:{-[NCToggleControl isExpanded](self->_leadingPlatterViewClearControl, "isExpanded") ^ 1}];
}

- (void)_handleClearControlPrimaryAction:(id)action
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277D77DD0];
  if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    logDescription = [(NCNotificationStructuredSectionList *)self logDescription];
    v7 = 138543362;
    v8 = logDescription;
    _os_log_impl(&dword_21E77E000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ clearing summary via leading platter clear button", &v7, 0xCu);
  }

  [(NCNotificationSummarizedSectionList *)self clearAll];
}

- (id)_notificationGroupsForDigestRankOrderingShouldMerge:(BOOL)merge
{
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  sectionLists = [(NCNotificationCombinedSectionList *)self sectionLists];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __106__NCNotificationSummarizedInlineExpandingSectionList__notificationGroupsForDigestRankOrderingShouldMerge___block_invoke;
  v11[3] = &unk_27836F6F0;
  mergeCopy = merge;
  v11[4] = self;
  v7 = v5;
  v12 = v7;
  [sectionLists enumerateObjectsUsingBlock:v11];

  v8 = v12;
  v9 = v7;

  return v7;
}

void __106__NCNotificationSummarizedInlineExpandingSectionList__notificationGroupsForDigestRankOrderingShouldMerge___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 allNotificationGroups];
  if (*(a1 + 48) == 1)
  {
    v4 = [*(a1 + 32) listView];
    if ([v4 isGrouped])
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        goto LABEL_6;
      }

      [v6 groupListsForSmartOrdering];
      v3 = v4 = v3;
    }
  }

LABEL_6:
  [*(a1 + 40) addObjectsFromArray:v3];
}

- (id)_newAppSectionListForRequest:(id)request
{
  v25 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v5 = [NCNotificationAppSectionList alloc];
  content = [requestCopy content];
  defaultHeader = [content defaultHeader];
  v8 = [(NCNotificationAppSectionList *)v5 initWithTitle:defaultHeader sectionType:7];

  [(NCNotificationStructuredSectionList *)v8 setDelegate:self];
  sectionIdentifier = [requestCopy sectionIdentifier];
  [(NCNotificationAppSectionList *)v8 setSectionIdentifier:sectionIdentifier];

  [(NCNotificationAppSectionList *)v8 setDeviceAuthenticated:[(NCNotificationStructuredSectionList *)self deviceAuthenticated]];
  notificationListCache = [(NCNotificationStructuredSectionList *)self notificationListCache];
  [(NCNotificationStructuredSectionList *)v8 setNotificationListCache:notificationListCache];

  [(NCNotificationStructuredSectionList *)v8 setNotificationListViewRevealed:1];
  sectionIdentifier2 = [requestCopy sectionIdentifier];
  [(NCNotificationStructuredSectionList *)v8 setLogDescription:sectionIdentifier2];

  [(NCNotificationSummarizedInlineExpandingSectionList *)self _configureBackgroundPlatterViewIfNecessary];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  requiredVisualStyleCategories = [(NCNotificationAppSectionList *)v8 requiredVisualStyleCategories];
  v13 = [requiredVisualStyleCategories countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v21;
    do
    {
      v16 = 0;
      do
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(requiredVisualStyleCategories);
        }

        integerValue = [*(*(&v20 + 1) + 8 * v16) integerValue];
        v18 = [(PLPlatterView *)self->_backgroundPlatterView visualStylingProviderForCategory:integerValue];
        [(NCNotificationAppSectionList *)v8 setVisualStylingProvider:v18 forCategory:integerValue];

        ++v16;
      }

      while (v14 != v16);
      v14 = [requiredVisualStyleCategories countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v14);
  }

  return v8;
}

- (int64_t)_insertNotificationRequestToAppSectionList:(id)list
{
  listCopy = list;
  if (!self->_appSectionLists)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    appSectionLists = self->_appSectionLists;
    self->_appSectionLists = v5;
  }

  sectionIdentifier = [listCopy sectionIdentifier];
  v8 = [(NSMutableDictionary *)self->_appSectionLists objectForKey:sectionIdentifier];
  if (!v8)
  {
    v8 = [(NCNotificationSummarizedInlineExpandingSectionList *)self _newAppSectionListForRequest:listCopy];
    [(NSMutableDictionary *)self->_appSectionLists setValue:v8 forKey:sectionIdentifier];
  }

  comparisonDate = [v8 comparisonDate];
  v10 = [v8 insertNotificationRequest:listCopy];
  comparisonDate2 = [v8 comparisonDate];
  listView = [(NCNotificationStructuredSectionList *)self listView];
  isGrouped = [listView isGrouped];

  if (isGrouped)
  {
    if (([comparisonDate isEqualToDate:comparisonDate2] & 1) == 0 && -[NCNotificationCombinedSectionList containsSectionList:](self, "containsSectionList:", v8))
    {
      [(NCNotificationCombinedSectionList *)self removeNotificationSectionList:v8 animated:0];
    }
  }

  else
  {
    appSectionListsToReloadOnCollapse = self->_appSectionListsToReloadOnCollapse;
    if (!appSectionListsToReloadOnCollapse)
    {
      v15 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v16 = self->_appSectionListsToReloadOnCollapse;
      self->_appSectionListsToReloadOnCollapse = v15;

      appSectionListsToReloadOnCollapse = self->_appSectionListsToReloadOnCollapse;
    }

    [(NSMutableSet *)appSectionListsToReloadOnCollapse addObject:v8];
    [comparisonDate isEqualToDate:comparisonDate2];
  }

  if (![(NCNotificationCombinedSectionList *)self containsSectionList:v8])
  {
    [(NCNotificationCombinedSectionList *)self insertNotificationSectionList:v8 atIndex:0 animated:isGrouped ^ 1u];
  }

  return v10;
}

- (void)_modifyNotificationRequestInAppSectionList:(id)list
{
  listCopy = list;
  if (self->_appSectionLists)
  {
    v8 = listCopy;
    sectionIdentifier = [listCopy sectionIdentifier];
    v6 = [(NSMutableDictionary *)self->_appSectionLists objectForKey:sectionIdentifier];
    v7 = v6;
    if (v6)
    {
      [v6 modifyNotificationRequest:v8];
    }

    listCopy = v8;
  }
}

- (BOOL)_removeNotificationRequestFromAppSectionList:(id)list
{
  listCopy = list;
  v5 = listCopy;
  if (self->_appSectionLists)
  {
    sectionIdentifier = [listCopy sectionIdentifier];
    listView = [(NCNotificationStructuredSectionList *)self listView];
    isGrouped = [listView isGrouped];

    v9 = [(NSMutableDictionary *)self->_appSectionLists objectForKey:sectionIdentifier];
    v10 = v9;
    if (v9)
    {
      v11 = [v9 removeNotificationRequest:v5];
      if (![v10 notificationCount])
      {
        [(NCNotificationCombinedSectionList *)self removeNotificationSectionList:v10 animated:isGrouped ^ 1u];
        [(NSMutableDictionary *)self->_appSectionLists removeObjectForKey:sectionIdentifier];
      }

      if (![(NSMutableDictionary *)self->_appSectionLists count])
      {
        appSectionLists = self->_appSectionLists;
        self->_appSectionLists = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)_updateAppSectionsForOrderedNotificationGroupLists:(id)lists
{
  v28 = *MEMORY[0x277D85DE8];
  listsCopy = lists;
  if ([(NCNotificationSummarizedInlineExpandingSectionList *)self isCombinedAppSectionListActive])
  {
    allNotificationGroups = [(NCNotificationStructuredSectionList *)self->_combinedAppSectionList allNotificationGroups];
    if (([listsCopy isEqualToArray:allNotificationGroups] & 1) == 0)
    {
      v6 = *MEMORY[0x277D77DD0];
      if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
      {
        v7 = v6;
        logDescription = [(NCNotificationStructuredSectionList *)self logDescription];
        logDescription2 = [(NCNotificationStructuredSectionList *)self->_combinedAppSectionList logDescription];
        *buf = 138543618;
        v25 = logDescription;
        v26 = 2114;
        v27 = logDescription2;
        _os_log_impl(&dword_21E77E000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ reordering group lists for %{public}@", buf, 0x16u);
      }

      [(NCNotificationAppSectionList *)self->_combinedAppSectionList setGroupListsForSmartOrdering:listsCopy];
    }
  }

  else
  {
    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __105__NCNotificationSummarizedInlineExpandingSectionList__updateAppSectionsForOrderedNotificationGroupLists___block_invoke;
    v21[3] = &unk_27836F718;
    v21[4] = self;
    allNotificationGroups = v10;
    v22 = allNotificationGroups;
    v12 = v11;
    v23 = v12;
    [listsCopy enumerateObjectsUsingBlock:v21];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __105__NCNotificationSummarizedInlineExpandingSectionList__updateAppSectionsForOrderedNotificationGroupLists___block_invoke_2;
    v20[3] = &unk_27836F740;
    v20[4] = self;
    [v12 enumerateKeysAndObjectsUsingBlock:v20];
    sectionLists = [(NCNotificationCombinedSectionList *)self sectionLists];
    v14 = [sectionLists isEqualToArray:allNotificationGroups];

    if ((v14 & 1) == 0)
    {
      v15 = *MEMORY[0x277D77DD0];
      if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
      {
        v16 = v15;
        logDescription3 = [(NCNotificationStructuredSectionList *)self logDescription];
        *buf = 138543362;
        v25 = logDescription3;
        _os_log_impl(&dword_21E77E000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ reordering app section lists", buf, 0xCu);
      }

      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __105__NCNotificationSummarizedInlineExpandingSectionList__updateAppSectionsForOrderedNotificationGroupLists___block_invoke_58;
      v19[3] = &unk_27836F768;
      v19[4] = self;
      [allNotificationGroups enumerateObjectsUsingBlock:v19];
      [(NCNotificationCombinedSectionList *)self setSectionLists:allNotificationGroups];
      listView = [(NCNotificationStructuredSectionList *)self listView];
      [listView invalidateData];
    }
  }
}

void __105__NCNotificationSummarizedInlineExpandingSectionList__updateAppSectionsForOrderedNotificationGroupLists___block_invoke(id *a1, void *a2)
{
  v7 = a2;
  v3 = [v7 sectionIdentifier];
  v4 = [a1[4] appSectionLists];
  v5 = [v4 objectForKey:v3];

  if (v5 && ([a1[5] containsObject:v5] & 1) == 0)
  {
    [a1[5] addObject:v5];
  }

  v6 = [a1[6] objectForKey:v3];
  if (!v6)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [a1[6] setValue:v6 forKey:v3];
  }

  [v6 addObject:v7];
}

void __105__NCNotificationSummarizedInlineExpandingSectionList__updateAppSectionsForOrderedNotificationGroupLists___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = a2;
  v8 = [v6 appSectionLists];
  v9 = [v8 objectForKey:v7];

  if (v9)
  {
    v10 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      v12 = v10;
      v13 = [v11 logDescription];
      v14 = [v9 logDescription];
      v15 = 138543618;
      v16 = v13;
      v17 = 2114;
      v18 = v14;
      _os_log_impl(&dword_21E77E000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ reordering group lists for %{public}@", &v15, 0x16u);
    }

    [v9 setGroupListsForSmartOrdering:v5];
  }
}

- (void)_appSectionListDidRemoveNotificationRequests:(id)requests
{
  requestsCopy = requests;
  if (requestsCopy)
  {
    notificationCount = [requestsCopy notificationCount];
    listView = [(NCNotificationStructuredSectionList *)self listView];
    isGrouped = [listView isGrouped];
    v7 = isGrouped;
    if (!notificationCount)
    {
      [(NCNotificationCombinedSectionList *)self removeNotificationSectionList:requestsCopy animated:isGrouped ^ 1u];

      if ([(NCNotificationSummarizedInlineExpandingSectionList *)self isCombinedAppSectionListActive]&& (appSectionLists = self->_combinedAppSectionList, appSectionLists == requestsCopy))
      {
        self->_combinedAppSectionList = 0;
      }

      else
      {
        appSectionLists = [(NCNotificationSummarizedInlineExpandingSectionList *)self appSectionLists];
        sectionIdentifier = [requestsCopy sectionIdentifier];
        [appSectionLists removeObjectForKey:sectionIdentifier];

        if ([(NSMutableDictionary *)self->_appSectionLists count])
        {
          goto LABEL_13;
        }

        appSectionLists = self->_appSectionLists;
        self->_appSectionLists = 0;
      }

LABEL_12:

      goto LABEL_13;
    }

    if ((v7 & 1) == 0)
    {
      if (!self->_appSectionListsToReloadOnCollapse)
      {
        v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
        appSectionListsToReloadOnCollapse = self->_appSectionListsToReloadOnCollapse;
        self->_appSectionListsToReloadOnCollapse = v8;
      }

      appSectionLists = [(NCNotificationSummarizedInlineExpandingSectionList *)self appSectionListsToReloadOnCollapse];
      [appSectionLists addObject:requestsCopy];
      goto LABEL_12;
    }
  }

LABEL_13:
  if (![(NCNotificationSummarizedInlineExpandingSectionList *)self isCombinedAppSectionListActive]&& [(NCNotificationSummarizedInlineExpandingSectionList *)self _shouldCombineAppSectionLists])
  {
    listView2 = [(NCNotificationStructuredSectionList *)self listView];
    isGrouped2 = [listView2 isGrouped];

    if (isGrouped2)
    {
      [(NCNotificationSummarizedInlineExpandingSectionList *)self setCombinedAppSectionListActive:1];
      [(NCNotificationSummarizedInlineExpandingSectionList *)self _combineAppSectionLists];
    }

    else
    {
      [(NCNotificationSummarizedInlineExpandingSectionList *)self setReloadCombinedAppSectionListOnCollapse:1];
    }
  }
}

- (void)_updateAppSectionListsOnCollapse
{
  appSectionListsToReloadOnCollapse = [(NCNotificationSummarizedInlineExpandingSectionList *)self appSectionListsToReloadOnCollapse];
  [appSectionListsToReloadOnCollapse enumerateObjectsUsingBlock:&__block_literal_global_61];

  [(NCNotificationSummarizedInlineExpandingSectionList *)self setAppSectionListsToReloadOnCollapse:0];
}

void __86__NCNotificationSummarizedInlineExpandingSectionList__updateAppSectionListsOnCollapse__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 groupListsForSmartOrdering];
  [v2 setGroupListsForSmartOrdering:v3];
}

- (void)_updateAppSectionListsOnExpand
{
  sectionLists = [(NCNotificationCombinedSectionList *)self sectionLists];
  [sectionLists enumerateObjectsUsingBlock:&__block_literal_global_63];
}

uint64_t __84__NCNotificationSummarizedInlineExpandingSectionList__updateAppSectionListsOnExpand__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (v4 && (isKindOfClass & 1) != 0)
  {
    isKindOfClass = [v4 unmergeNotificationGroupListsIfNecessary];
  }

  return MEMORY[0x2821F96F8](isKindOfClass);
}

- (void)_removeAppSectionListsIfEmpty
{
  if ([(NCNotificationSummarizedInlineExpandingSectionList *)self isCombinedAppSectionListActive]&& (v3 = self->_combinedAppSectionList) != 0)
  {
    if (![(NCNotificationStructuredSectionList *)v3 notificationCount])
    {
      combinedAppSectionList = self->_combinedAppSectionList;
      listView = [(NCNotificationStructuredSectionList *)self listView];
      -[NCNotificationCombinedSectionList removeNotificationSectionList:animated:](self, "removeNotificationSectionList:animated:", combinedAppSectionList, [listView isGrouped] ^ 1);

      v6 = self->_combinedAppSectionList;
      self->_combinedAppSectionList = 0;
    }
  }

  else if (![(NCNotificationSummarizedInlineExpandingSectionList *)self isCombinedAppSectionListActive]&& [(NSMutableDictionary *)self->_appSectionLists count])
  {
    allValues = [(NSMutableDictionary *)self->_appSectionLists allValues];
    v8 = [allValues copy];

    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __83__NCNotificationSummarizedInlineExpandingSectionList__removeAppSectionListsIfEmpty__block_invoke;
    v10[3] = &unk_27836F7D0;
    v10[4] = self;
    [v8 enumerateObjectsUsingBlock:v10];
    if (![(NSMutableDictionary *)self->_appSectionLists count])
    {
      appSectionLists = self->_appSectionLists;
      self->_appSectionLists = 0;
    }
  }
}

void __83__NCNotificationSummarizedInlineExpandingSectionList__removeAppSectionListsIfEmpty__block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  if (![v7 notificationCount])
  {
    v3 = *(a1 + 32);
    v4 = [v3 listView];
    [v3 removeNotificationSectionList:v7 animated:{objc_msgSend(v4, "isGrouped") ^ 1}];

    v5 = *(*(a1 + 32) + 248);
    v6 = [v7 sectionIdentifier];
    [v5 removeObjectForKey:v6];
  }
}

- (id)_newCombinedAppSectionListForRequest
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [[NCNotificationAppSectionList alloc] initWithTitle:0 sectionType:7];
  [(NCNotificationStructuredSectionList *)v3 setDelegate:self];
  [(NCNotificationAppSectionList *)v3 setCombinedAppSectionList:1];
  [(NCNotificationAppSectionList *)v3 setSectionIdentifier:@"combinedAppSectionList"];
  [(NCNotificationAppSectionList *)v3 setDeviceAuthenticated:[(NCNotificationStructuredSectionList *)self deviceAuthenticated]];
  notificationListCache = [(NCNotificationStructuredSectionList *)self notificationListCache];
  [(NCNotificationStructuredSectionList *)v3 setNotificationListCache:notificationListCache];

  [(NCNotificationStructuredSectionList *)v3 setNotificationListViewRevealed:1];
  [(NCNotificationStructuredSectionList *)v3 setLogDescription:@"Combined App Section"];
  [(NCNotificationSummarizedInlineExpandingSectionList *)self _configureBackgroundPlatterViewIfNecessary];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  requiredVisualStyleCategories = [(NCNotificationAppSectionList *)v3 requiredVisualStyleCategories];
  v6 = [requiredVisualStyleCategories countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(requiredVisualStyleCategories);
        }

        integerValue = [*(*(&v13 + 1) + 8 * v9) integerValue];
        v11 = [(PLPlatterView *)self->_backgroundPlatterView visualStylingProviderForCategory:integerValue];
        [(NCNotificationAppSectionList *)v3 setVisualStylingProvider:v11 forCategory:integerValue];

        ++v9;
      }

      while (v7 != v9);
      v7 = [requiredVisualStyleCategories countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  return v3;
}

- (BOOL)_shouldInsertNotificationRequestToCombinedAppSectionList:(id)list
{
  listCopy = list;
  v5 = listCopy;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v6 = 1;
  v17 = 1;
  if (self->_combinedAppSectionList)
  {
    sectionIdentifier = [listCopy sectionIdentifier];
    allNotificationGroups = [(NCNotificationStructuredSectionList *)self->_combinedAppSectionList allNotificationGroups];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __111__NCNotificationSummarizedInlineExpandingSectionList__shouldInsertNotificationRequestToCombinedAppSectionList___block_invoke;
    v11[3] = &unk_27836F7F8;
    v13 = &v14;
    v9 = sectionIdentifier;
    v12 = v9;
    [allNotificationGroups enumerateObjectsUsingBlock:v11];

    v6 = *(v15 + 24);
  }

  _Block_object_dispose(&v14, 8);

  return v6 & 1;
}

void __111__NCNotificationSummarizedInlineExpandingSectionList__shouldInsertNotificationRequestToCombinedAppSectionList___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 sectionIdentifier];
  *(*(*(a1 + 40) + 8) + 24) = [v6 isEqualToString:*(a1 + 32)] ^ 1;

  *a4 = *(*(*(a1 + 40) + 8) + 24) ^ 1;
}

- (int64_t)_insertNotificationRequestToCombinedAppSectionList:(id)list
{
  listCopy = list;
  combinedAppSectionList = self->_combinedAppSectionList;
  if (!combinedAppSectionList)
  {
    _newCombinedAppSectionListForRequest = [(NCNotificationSummarizedInlineExpandingSectionList *)self _newCombinedAppSectionListForRequest];
    v7 = self->_combinedAppSectionList;
    self->_combinedAppSectionList = _newCombinedAppSectionListForRequest;

    [(NCNotificationCombinedSectionList *)self insertNotificationSectionList:self->_combinedAppSectionList atIndex:0 animated:0];
    combinedAppSectionList = self->_combinedAppSectionList;
  }

  v8 = [(NCNotificationAppSectionList *)combinedAppSectionList insertNotificationRequest:listCopy];

  return v8;
}

- (BOOL)_removeNotificationFromCombinedAppSectionList:(id)list
{
  listCopy = list;
  combinedAppSectionList = self->_combinedAppSectionList;
  if (combinedAppSectionList && [(NCNotificationStructuredSectionList *)combinedAppSectionList containsNotificationRequest:listCopy])
  {
    v6 = [(NCNotificationAppSectionList *)self->_combinedAppSectionList removeNotificationRequest:listCopy];
    if (![(NCNotificationStructuredSectionList *)self->_combinedAppSectionList count])
    {
      [(NCNotificationCombinedSectionList *)self removeNotificationSectionList:self->_combinedAppSectionList animated:1];
      v7 = self->_combinedAppSectionList;
      self->_combinedAppSectionList = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_modifyNotificationInCombinedAppSectionList:(id)list
{
  listCopy = list;
  combinedAppSectionList = self->_combinedAppSectionList;
  if (combinedAppSectionList)
  {
    v6 = listCopy;
    combinedAppSectionList = [(NCNotificationStructuredSectionList *)combinedAppSectionList containsNotificationRequest:listCopy];
    if (combinedAppSectionList)
    {
      combinedAppSectionList = [(NCNotificationAppSectionList *)self->_combinedAppSectionList modifyNotificationRequest:v6];
    }
  }

  MEMORY[0x2821F96F8](combinedAppSectionList);
}

- (BOOL)_shouldCombineAppSectionLists
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 1;
  if ([(NSMutableDictionary *)self->_appSectionLists count])
  {
    appSectionLists = self->_appSectionLists;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __83__NCNotificationSummarizedInlineExpandingSectionList__shouldCombineAppSectionLists__block_invoke;
    v6[3] = &unk_27836F820;
    v6[4] = &v7;
    [(NSMutableDictionary *)appSectionLists enumerateKeysAndObjectsUsingBlock:v6];
  }

  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

void __83__NCNotificationSummarizedInlineExpandingSectionList__shouldCombineAppSectionLists__block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v11 = [a3 allNotificationGroups];
  if ([v11 count] == 1)
  {
    v6 = [v11 firstObject];
    v7 = [v6 notificationCount] == 1;
    v9 = *(a1 + 32);
    v8 = a1 + 32;
    *(*(v9 + 8) + 24) = v7;
  }

  else
  {
    v10 = *(a1 + 32);
    v8 = a1 + 32;
    *(*(v10 + 8) + 24) = 0;
  }

  *a4 = *(*(*v8 + 8) + 24) ^ 1;
}

- (void)_combineAppSectionLists
{
  v15 = *MEMORY[0x277D85DE8];
  if ([(NSMutableDictionary *)self->_appSectionLists count])
  {
    v3 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
    {
      v4 = v3;
      logDescription = [(NCNotificationStructuredSectionList *)self logDescription];
      *buf = 138543362;
      v14 = logDescription;
      _os_log_impl(&dword_21E77E000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ combining app section lists into a combined list", buf, 0xCu);
    }

    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    appSectionLists = self->_appSectionLists;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __77__NCNotificationSummarizedInlineExpandingSectionList__combineAppSectionLists__block_invoke;
    v10[3] = &unk_27836F848;
    v11 = v6;
    selfCopy = self;
    v8 = v6;
    [(NSMutableDictionary *)appSectionLists enumerateKeysAndObjectsUsingBlock:v10];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __77__NCNotificationSummarizedInlineExpandingSectionList__combineAppSectionLists__block_invoke_2;
    v9[3] = &unk_27836F610;
    v9[4] = self;
    [v8 enumerateObjectsUsingBlock:v9];
  }
}

void __77__NCNotificationSummarizedInlineExpandingSectionList__combineAppSectionLists__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v6 = a3;
  v5 = [v6 allNotificationRequests];
  [v4 addObjectsFromArray:v5];

  [*(a1 + 40) removeNotificationSectionList:v6 animated:0];
}

- (BOOL)_shouldSplitCombinedAppSectionList
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  combinedAppSectionList = self->_combinedAppSectionList;
  if (combinedAppSectionList)
  {
    allNotificationGroups = [(NCNotificationStructuredSectionList *)combinedAppSectionList allNotificationGroups];
    v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __88__NCNotificationSummarizedInlineExpandingSectionList__shouldSplitCombinedAppSectionList__block_invoke;
    v8[3] = &unk_27836F870;
    v5 = v4;
    v9 = v5;
    v10 = &v11;
    [allNotificationGroups enumerateObjectsUsingBlock:v8];

    v6 = *(v12 + 24);
  }

  else
  {
    v6 = 0;
  }

  _Block_object_dispose(&v11, 8);
  return v6 & 1;
}

void __88__NCNotificationSummarizedInlineExpandingSectionList__shouldSplitCombinedAppSectionList__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v6 = [v7 sectionIdentifier];
  if (([*(a1 + 32) containsObject:v6] & 1) != 0 || objc_msgSend(v7, "notificationCount") >= 2)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  else
  {
    [*(a1 + 32) addObject:v6];
  }

  *a4 = *(*(*(a1 + 40) + 8) + 24);
}

- (void)_splitCombinedAppSectionList
{
  v12 = *MEMORY[0x277D85DE8];
  if (self->_combinedAppSectionList)
  {
    v3 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
    {
      v4 = v3;
      logDescription = [(NCNotificationStructuredSectionList *)self logDescription];
      *buf = 138543362;
      v11 = logDescription;
      _os_log_impl(&dword_21E77E000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ splitting combined app section list", buf, 0xCu);
    }

    allNotificationRequests = [(NCNotificationStructuredSectionList *)self->_combinedAppSectionList allNotificationRequests];
    v7 = [allNotificationRequests copy];

    [(NCNotificationCombinedSectionList *)self removeNotificationSectionList:self->_combinedAppSectionList animated:0];
    combinedAppSectionList = self->_combinedAppSectionList;
    self->_combinedAppSectionList = 0;

    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __82__NCNotificationSummarizedInlineExpandingSectionList__splitCombinedAppSectionList__block_invoke;
    v9[3] = &unk_27836F610;
    v9[4] = self;
    [v7 enumerateObjectsUsingBlock:v9];
  }
}

- (void)_toggleCombinedAppSectionListIfNecessary
{
  v11 = *MEMORY[0x277D85DE8];
  if ([(NCNotificationSummarizedInlineExpandingSectionList *)self isCombinedAppSectionListActive]&& [(NCNotificationSummarizedInlineExpandingSectionList *)self _shouldSplitCombinedAppSectionList])
  {
    v3 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
    {
      v4 = v3;
      logDescription = [(NCNotificationStructuredSectionList *)self logDescription];
      v9 = 138543362;
      v10 = logDescription;
      _os_log_impl(&dword_21E77E000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ splitting combined app section", &v9, 0xCu);
    }

    [(NCNotificationSummarizedInlineExpandingSectionList *)self setCombinedAppSectionListActive:0];
    [(NCNotificationSummarizedInlineExpandingSectionList *)self _splitCombinedAppSectionList];
  }

  else if (![(NCNotificationSummarizedInlineExpandingSectionList *)self isCombinedAppSectionListActive]&& [(NCNotificationSummarizedInlineExpandingSectionList *)self _shouldCombineAppSectionLists])
  {
    v6 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
      logDescription2 = [(NCNotificationStructuredSectionList *)self logDescription];
      v9 = 138543362;
      v10 = logDescription2;
      _os_log_impl(&dword_21E77E000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ combining app sections", &v9, 0xCu);
    }

    [(NCNotificationSummarizedInlineExpandingSectionList *)self setCombinedAppSectionListActive:1];
    [(NCNotificationSummarizedInlineExpandingSectionList *)self _combineAppSectionLists];
  }
}

- (NCNotificationListCoalescingControlsHandlerDelegate)handlerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->handlerDelegate);

  return WeakRetained;
}

@end