@interface NCNotificationRootList
+ (NSSet)presentableTypes;
- (BOOL)_areHighlightsEnabled;
- (BOOL)_isAlertingNotificationRequest:(id)a3;
- (BOOL)_isCurrentDigestListAboveHistorySectionList;
- (BOOL)_isCurrentListDisplayStyleSettingEqualTo:(int64_t)a3;
- (BOOL)_isEligibleForStackElevationMigrationWithGroupList:(id)a3 areGenerativeModelsAvailable:(BOOL)a4;
- (BOOL)_isLockScreenPersistenceNotificationRequest:(id)a3;
- (BOOL)_isNotificationRequest:(id)a3 forSectionList:(id)a4;
- (BOOL)_isPersistentPass:(id)a3;
- (BOOL)_isPersistentStateCurrentDigestInMissedSection;
- (BOOL)_isRequestEligibleForStackElevation:(id)a3;
- (BOOL)_shouldInsertCurrentDigestIntoMissedSectionList;
- (BOOL)_shouldInsertNotificationRequestToHighlightedSectionList:(id)a3;
- (BOOL)_suppressesCurrentDigestForNotifications;
- (BOOL)_suppressesForLists:(id)a3 forProminentContentThreshold:(int64_t)a4;
- (BOOL)_suppressesHighlightsPlatterForNotifications;
- (BOOL)adjustForContentSizeCategoryChange;
- (BOOL)containsNotificationRequest:(id)a3;
- (BOOL)hasVisibleContentToReveal;
- (BOOL)hasVisibleUrgentBreakthroughContent;
- (BOOL)isNotificationStructuredSectionListCollapsable:(id)a3;
- (BOOL)isScrollingListContent;
- (BOOL)notificationStructuredSectionList:(id)a3 areNotificationsLoadedForSectionIdentifier:(id)a4;
- (BOOL)notificationStructuredSectionList:(id)a3 shouldFilterNotificationRequest:(id)a4;
- (BOOL)removeNotificationRequest:(id)a3;
- (BOOL)respondsToSelector:(SEL)a3;
- (BOOL)shouldDelayDeliveryOfNotificationRequest:(id)a3;
- (BOOL)shouldScrollToTopForNotificationListBaseComponent:(id)a3;
- (CGRect)aggregatedVisibleContentExtent;
- (Class)notificationListCacheNotificationViewControllerClass:(id)a3;
- (NCNotificationRootListDelegate)delegate;
- (NSString)logDescription;
- (double)notificationListView:(id)a3 heightForItemAtIndex:(unint64_t)a4 withWidth:(double)a5 inDisplayListAsStackMode:(BOOL)a6 ignoreExpandedGroupStack:(BOOL)a7;
- (double)scrollViewVisibleContentLayoutOffsetY;
- (double)visibleRectBottomMarginForRollUnder;
- (id)_digestTestRecipe;
- (id)_filterNotificationsInGroupLists:(id)a3 withDestinationsForSectionList:(id)a4;
- (id)_higherSectionToElevateForNotificationRequest:(id)a3 currentSectionType:(unint64_t)a4;
- (id)_initWithListView:(id)a3 delegate:(id)a4;
- (id)_insertNotificationRequest:(id)a3;
- (id)_listInfoForPersistentState;
- (id)_listInfoForStateCapture;
- (id)_missedSectionTitleForDNDMode:(id)a3;
- (id)_newDigestSectionListWithTitle:(id)a3 sectionType:(unint64_t)a4 summaryOrderProvider:(id)a5 logDescription:(id)a6;
- (id)_newMissedSectionWithTitle:(id)a3 summaryHeading:(id)a4 logDescription:(id)a5 dndMode:(id)a6;
- (id)_newSummaryOrderProviderOfType:(unint64_t)a3 fromSummaryOrderProvider:(id)a4;
- (id)_newSummaryOrderProviderOfType:(unint64_t)a3 summaryHeading:(id)a4 summaryDate:(id)a5 atxDigestDeliveryTime:(int64_t)a6 isOnboardingSummary:(BOOL)a7;
- (id)_notificationListSections;
- (id)_notificationMigrationOverrideTestRecipe;
- (id)_notificationSectionListsForEnumeration;
- (id)_sectionContainsNotificationRequest:(id)a3;
- (id)_sectionForInsertingNotificationRequest:(id)a3;
- (id)_sectionForStoredNotificationRequestOfSectionType:(unint64_t)a3;
- (id)_sectionListsForPersistentState;
- (id)_sectionListsThatSuppressDigest;
- (id)_sectionListsThatSuppressLargeFormatContent;
- (id)_sectionOfSectionType:(unint64_t)a3;
- (id)_sectionsForStateDump;
- (id)_visibleNotificationRequests;
- (id)initForTesting;
- (id)insertSupplementaryViewsContainerAtListPosition:(unint64_t)a3 identifier:(id)a4 withDescription:(id)a5;
- (id)matchingRequestForRequest:(id)a3 inList:(id)a4;
- (id)notificationListView:(id)a3 viewForItemAtIndex:(unint64_t)a4;
- (id)notificationRequestWithNotificationIdentifier:(id)a3 sectionIdentifier:(id)a4;
- (id)notificationStructuredSectionList:(id)a3 requestsAuxiliaryOptionsContentProviderForNotificationRequest:(id)a4 isLongLook:(BOOL)a5;
- (id)suggestionManager:(id)a3 notificationRequestForUUID:(id)a4;
- (id)suggestionManager:(id)a3 requestsSectionSettingsForSectionIdentifier:(id)a4;
- (id)suggestionManagerRequestsCurrentModeConfiguration:(id)a3;
- (int64_t)_atxDigestDeliveryTimeForDeliveryOrder:(int64_t)a3;
- (int64_t)_numberOfLiveActivities;
- (int64_t)currentListDisplayStyleSetting;
- (unint64_t)count;
- (unint64_t)historyCount;
- (unint64_t)incomingCount;
- (unint64_t)notificationCount;
- (unint64_t)notificationListViewNumberOfItems:(id)a3;
- (unint64_t)totalNotificationCount;
- (unint64_t)visibleNotificationCount;
- (void)_addStateCaptureBlock;
- (void)_cancelTouchesOnLiveActivities:(BOOL)a3;
- (void)_checkAndReloadSuggestionForNotificationRequest:(id)a3 withHighlightsListCount:(unint64_t)a4;
- (void)_clearAllNotifications:(BOOL)a3 supplementaryViewControllers:(BOOL)a4;
- (void)_configureCurrentDigestSectionListWithDigestInfo:(id)a3 sectionType:(unint64_t)a4 summaryOrderProviderType:(unint64_t)a5;
- (void)_configureHighlightsSectionListIfNeeded;
- (void)_configureNotificationSectionList:(id)a3 notificationCache:(id)a4 notificationListViewRevealed:(BOOL)a5 logDescription:(id)a6;
- (void)_configureOverrideMigrationOverlayLabelIfNecessary;
- (void)_configureUpcomingDigestSectionListWithDigestInfo:(id)a3;
- (void)_configureUpcomingMissedSectionForDNDMode:(id)a3;
- (void)_dissolveCurrentDigestSectionListToHistorySection;
- (void)_dissolveUpcomingDigestSectionListToHistorySection;
- (void)_elevateGroupInOtherSectionsIfNeededWithRequest:(id)a3 toSection:(id)a4;
- (void)_emitPowerLogForScrolling:(BOOL)a3;
- (void)_insertCurrentDigestSectionList;
- (void)_insertCurrentDigestSectionListToHistorySectionList;
- (void)_insertCurrentDigestSectionListToMissedSectionList;
- (void)_insertCurrentDigestSectionListToSectionList:(id)a3 atIndex:(unint64_t)a4;
- (void)_insertSectionListInHistorySectionList:(id)a3 atIndex:(unint64_t)a4 animated:(BOOL)a5;
- (void)_migrateCurrentDigestSectionListToReadSection;
- (void)_migrateNonActiveHighlightNotificationRequestsFromHighlightToIncomingSection:(id)a3;
- (void)_migrateNotificationsFromList:(id)a3 toList:(id)a4 passingTest:(id)a5 filterRequestsPassingTest:(id)a6 hideToList:(BOOL)a7 clearRequests:(BOOL)a8 filterForDestination:(BOOL)a9 animateRemoval:(BOOL)a10 reorderGroupNotifications:(BOOL)a11;
- (void)_migrateOnScheduleNotificationRequests:(id)a3 fromSection:(id)a4 toSection:(id)a5 clearRequests:(BOOL)a6 filterForDestination:(BOOL)a7 animateRemoval:(BOOL)a8;
- (void)_migrateOnScheduleNotificationRequestsFromIncomingSectionToHistorySection:(id)a3;
- (void)_migrateUpcomingDigestSectionListToCurrentDigestSectionList;
- (void)_migrateUpcomingMissedSectionToIncoming;
- (void)_notificationListDidChangeContent;
- (void)_performDeferredMigrationIfNecessary;
- (void)_regroupAllNotificationGroups;
- (void)_removeCurrentDigestSectionList;
- (void)_removeCurrentDigestSectionListFromContainingSectionList;
- (void)_removeCurrentDigestSectionListFromMissedSectionList;
- (void)_removeCurrentDigestSectionListFromSectionList:(id)a3;
- (void)_removeSectionListInHistorySectionList:(id)a3 animated:(BOOL)a4;
- (void)_scheduleAllNotificationRequestsForMigrationFromHighlightList;
- (void)_scheduleNotificationDigestMigrationIfNecessary;
- (void)_scheduleNotificationRequestsForMigrationFromIncomingListPassingTest:(id)a3;
- (void)_setHighlightsFeatureEnabled:(BOOL)a3;
- (void)_setupNotificationSectionLists;
- (void)_signpostScrollingBegan:(BOOL)a3;
- (void)_sortNotificationGroupsIfNecessary;
- (void)_toggleCurrentDigestSectionListVisibility;
- (void)_toggleCurrentDigestSectionListVisibilityInHistorySection;
- (void)_toggleUpcomingDigestSectionListVisibility;
- (void)_toggleUpcomingMissedSectionListVisibility;
- (void)_toggleVisibilityInHistorySectionListForSectionList:(id)a3 atIndex:(unint64_t)a4 isSectionHidden:(BOOL)a5 animated:(BOOL)a6;
- (void)_updateForceExpansionForHighlights;
- (void)_updateNotificationListDisplayStyleSetting;
- (void)_updateNotificationListPersistentState;
- (void)_updateOverrideMigrationOverlayLabelWithText:(id)a3 forOverrideState:(BOOL)a4;
- (void)_updateSystemSettingsForUpdatedNotificationListDisplayStyleSetting:(int64_t)a3;
- (void)_updateTransactionIfNecessary;
- (void)_updateUpcomingDigestSectionListWithDigestInfo:(id)a3;
- (void)_updateVisibilityForSectionLists;
- (void)_updateVisibleRectForContentOffset:(CGPoint)a3 size:(CGSize)a4;
- (void)_upgradeCurrentDigestSectionListForPromotionAboveFold;
- (void)adjustForLegibilitySettingsChange:(id)a3;
- (void)collapseGroupForNotificationRequest:(id)a3 withCompletion:(id)a4;
- (void)expandGroupForNotificationRequest:(id)a3 withCompletion:(id)a4;
- (void)forwardInvocation:(id)a3;
- (void)handleCoverSheetVisibilityChange:(BOOL)a3;
- (void)handleWake:(BOOL)a3;
- (void)listViewControllerPresentedByUserAction;
- (void)migrateNotificationsFromIncomingSectionToHistorySectionAndHideHistorySection:(BOOL)a3;
- (void)modifyNotificationRequest:(id)a3;
- (void)notificationListBaseComponentDidRemoveAll:(id)a3;
- (void)notificationListBaseComponentRequestsClearingAll:(id)a3;
- (void)notificationListComponent:(id)a3 didRemoveNotificationRequest:(id)a4;
- (void)notificationListDidLayoutSubviews;
- (void)notificationListMigrationScheduler:(id)a3 requestsMigratingNotificationRequests:(id)a4;
- (void)notificationListMigrationSchedulerRequestsMigratingNotificationDigest:(id)a3;
- (void)notificationStructuredSectionList:(id)a3 transitionedGroupedStateIsGrouped:(BOOL)a4;
- (void)notificationStructuredSectionListDidClearAllNotificationRequests:(id)a3;
- (void)notificationStructuredSectionListRequestsClearingSection:(id)a3;
- (void)notificationsLoadedForSectionIdentifier:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)persistentStateManager:(id)a3 didFetchMigrationTime:(id)a4 forNotificationRequest:(id)a5;
- (void)persistentStateManager:(id)a3 didFetchStoredListInfo:(id)a4;
- (void)persistentStateManager:(id)a3 didFetchSummaryMigrationTime:(id)a4;
- (void)persistentStateManager:(id)a3 didMigratedTimeSensitiveForNotificationRequest:(id)a4;
- (void)persistentStateManager:(id)a3 finishedLoadingDataForSectionType:(unint64_t)a4;
- (void)persistentStateManager:(id)a3 hasStoredDataForSectionType:(unint64_t)a4;
- (void)prepareForUIAppear;
- (void)publishScheduledDigest:(id)a3 upcomingDigest:(id)a4;
- (void)publishUpcomingDigest:(id)a3;
- (void)recycleView:(id)a3;
- (void)reloadNotificationRequest:(id)a3;
- (void)removeOverrideNotificationListDisplayStyleSettingForReason:(id)a3;
- (void)revokeUpcomingDigest:(id)a3;
- (void)setActiveDNDModeConfiguration:(id)a3;
- (void)setCurrentListDisplayStyleSetting:(int64_t)a3;
- (void)setDelegate:(id)a3;
- (void)setDeviceAuthenticated:(BOOL)a3;
- (void)setOnboardingSummaryVisible:(BOOL)a3;
- (void)setOverrideMigrationToHistory:(BOOL)a3;
- (void)setOverrideNotificationListDisplayStyleSetting:(int64_t)a3 forReason:(id)a4 hideNotificationCount:(BOOL)a5;
- (void)setScheduledDeliveryEnabled:(BOOL)a3;
- (void)setVisibleRectBottomMarginForRollUnder:(double)a3;
- (void)suggestionManager:(id)a3 requestsPresentingNotificationManagementViewType:(unint64_t)a4 forNotificationRequest:(id)a5 withPresentingView:(id)a6;
- (void)suggestionManager:(id)a3 setAllowsDirectMessages:(BOOL)a4 forSectionIdentifier:(id)a5;
- (void)suggestionManager:(id)a3 setAllowsTimeSensitive:(BOOL)a4 forSectionIdentifier:(id)a5;
- (void)suggestionManager:(id)a3 setModeConfiguration:(id)a4;
- (void)suggestionManager:(id)a3 setMuted:(BOOL)a4 untilDate:(id)a5 forSectionIdentifier:(id)a6 threadIdentifier:(id)a7;
- (void)suggestionManager:(id)a3 setScheduledDelivery:(BOOL)a4 forSectionIdentifier:(id)a5;
- (void)supplementaryViewSectionDidChangeContent:(id)a3;
- (void)testDigestTimerFired;
- (void)testDigestTimerRevoke;
- (void)testDigestTimerUpdated;
- (void)testPromoteUpcomingDigestToCurrentDigest;
- (void)toggleFilteringForSectionIdentifier:(id)a3 shouldFilter:(BOOL)a4;
- (void)toggleMissedSectionActive:(BOOL)a3 forDNDMode:(id)a4 hideVisibleNotifications:(BOOL)a5;
- (void)updateListViewVisibleRectForSize:(CGSize)a3;
- (void)updateNotificationSectionSettings:(id)a3 previousSectionSettings:(id)a4;
- (void)updateNotificationSystemSettings:(id)a3 previousSystemSettings:(id)a4;
@end

@implementation NCNotificationRootList

- (unint64_t)notificationCount
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v3 = [(NCNotificationRootList *)self notificationSections];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __43__NCNotificationRootList_notificationCount__block_invoke;
  v6[3] = &unk_278370130;
  v6[4] = self;
  v6[5] = &v7;
  [v3 enumerateObjectsUsingBlock:v6];

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __43__NCNotificationRootList_notificationCount__block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v8 = a2;
  v5 = [*(a1 + 32) _indexForReveal];
  if (v5 - [*(*(a1 + 32) + 120) count] > a3 || objc_msgSend(*(a1 + 32), "isNotificationHistoryRevealed"))
  {
    v6 = [v8 notificationCount];
  }

  else
  {
    v6 = 0;
  }

  *(*(*(a1 + 40) + 8) + 24) += v6;

  return MEMORY[0x2821F96F8]();
}

- (id)_notificationSectionListsForEnumeration
{
  v3 = objc_alloc(MEMORY[0x277CBEB58]);
  v4 = [(NCNotificationRootList *)self notificationSections];
  v5 = [v3 initWithArray:v4];

  if (self->_currentDigestSectionList && !-[NCNotificationCombinedSectionList containsSectionList:](self->_historySectionList, "containsSectionList:") && ([v5 containsObject:self->_currentDigestSectionList] & 1) == 0)
  {
    [v5 addObject:self->_currentDigestSectionList];
  }

  if (self->_upcomingDigestSectionList && ![(NCNotificationCombinedSectionList *)self->_historySectionList containsSectionList:?])
  {
    [v5 addObject:self->_upcomingDigestSectionList];
  }

  if (self->_upcomingMissedSectionList && ![(NCNotificationCombinedSectionList *)self->_historySectionList containsSectionList:?])
  {
    [v5 addObject:self->_upcomingMissedSectionList];
  }

  return v5;
}

- (void)_sortNotificationGroupsIfNecessary
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [(NCNotificationRootList *)self _notificationSectionListsForEnumeration];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) sortNotificationGroupListsIfNecessary];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)_notificationListDidChangeContent
{
  [(NCNotificationRootList *)self _updateVisibilityForSectionLists];
  [(NCNotificationRootList *)self _updateNotificationListPersistentState];
  [(NCNotificationRootList *)self _updateVisibilityOfHistorySection];
  [(NCNotificationRootList *)self _updateTransactionIfNecessary];

  [(NCNotificationRootList *)self _updateDelegateAndSubclassIfNecessaryOfContentChange];
}

- (void)_updateVisibilityForSectionLists
{
  [(NCNotificationRootList *)self _toggleUpcomingDigestSectionListVisibility];
  [(NCNotificationRootList *)self _toggleUpcomingMissedSectionListVisibility];
  [(NCNotificationRootList *)self _toggleCurrentDigestSectionListVisibility];

  [(NCNotificationRootList *)self _toggleCurrentDigestSectionListVisibilityInHistorySection];
}

- (void)_toggleUpcomingDigestSectionListVisibility
{
  if (self->_upcomingDigestSectionList)
  {
    v3 = [(NCNotificationRootList *)self _upcomingDigestSectionListIndexInHistorySectionList];
    upcomingDigestSectionList = self->_upcomingDigestSectionList;
    v5 = [(NCNotificationRootList *)self isUpcomingDigestVisible];
    v6 = [(NCNotificationRootList *)self isNotificationHistoryRevealed];

    [(NCNotificationRootList *)self _toggleVisibilityInHistorySectionListForSectionList:upcomingDigestSectionList atIndex:v3 isSectionHidden:!v5 animated:v6];
  }
}

- (void)_toggleUpcomingMissedSectionListVisibility
{
  upcomingMissedSectionList = self->_upcomingMissedSectionList;
  v4 = [(NCNotificationRootList *)self isNotificationHistoryRevealed];

  [(NCNotificationRootList *)self _toggleVisibilityInHistorySectionListForSectionList:upcomingMissedSectionList atIndex:0 isSectionHidden:0 animated:v4];
}

- (void)_toggleCurrentDigestSectionListVisibility
{
  if ([(NCNotificationRootList *)self isPerformingClearAll])
  {
    return;
  }

  currentDigestSectionList = self->_currentDigestSectionList;
  if (!currentDigestSectionList)
  {
    return;
  }

  if ([(NCNotificationCombinedSectionList *)currentDigestSectionList count])
  {
    v6 = [(NCNotificationRootList *)self notificationSections];
    if (([(NCNotificationSummarizedSectionList *)v6 containsObject:self->_currentDigestSectionList]& 1) == 0 && ![(NCNotificationCombinedSectionList *)self->_historySectionList containsSectionList:self->_currentDigestSectionList]&& ![(NCNotificationCombinedSectionList *)self->_upcomingMissedSectionList containsSectionList:self->_currentDigestSectionList]&& [(NCNotificationCombinedSectionList *)self->_currentDigestSectionList count]&& ([(NCNotificationStructuredSectionList *)self->_currentDigestSectionList sectionType]== 4 || [(NCNotificationStructuredSectionList *)self->_currentDigestSectionList sectionType]== 8))
    {
      v4 = [(NCNotificationRootList *)self deferCurrentDigestPresentationForPersistedDataLoad];

      if (!v4)
      {
        [(NCNotificationSummarizedSectionList *)self->_currentDigestSectionList setDeviceAuthenticated:[(NCNotificationRootList *)self deviceAuthenticated]];

        [(NCNotificationRootList *)self _insertCurrentDigestSectionList];
      }

      return;
    }

    v5 = v6;
  }

  else
  {
    [(NCNotificationRootList *)self _removeCurrentDigestSectionListFromContainingSectionList];
    v5 = self->_currentDigestSectionList;
    self->_currentDigestSectionList = 0;
  }
}

- (void)_toggleCurrentDigestSectionListVisibilityInHistorySection
{
  if (self->_currentDigestSectionList)
  {
    if ([(NCNotificationCombinedSectionList *)self->_historySectionList containsSectionList:?]&& ![(NCNotificationCombinedSectionList *)self->_currentDigestSectionList count])
    {

      [(NCNotificationRootList *)self _removeCurrentDigestSectionListFromHistorySectionList];
    }

    else if (![(NCNotificationCombinedSectionList *)self->_historySectionList containsSectionList:self->_currentDigestSectionList])
    {
      v4 = [(NCNotificationRootList *)self notificationSections];
      if (([v4 containsObject:self->_currentDigestSectionList] & 1) != 0 || !-[NCNotificationCombinedSectionList count](self->_currentDigestSectionList, "count"))
      {
      }

      else
      {
        v3 = [(NCNotificationStructuredSectionList *)self->_currentDigestSectionList sectionType];

        if (v3 == 6)
        {

          [(NCNotificationRootList *)self _insertCurrentDigestSectionListToHistorySectionList];
        }
      }
    }
  }
}

- (void)_updateNotificationListPersistentState
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D77DD0];
  if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    v5 = [(NCNotificationRootList *)self logDescription];
    v10 = 138543362;
    v11 = v5;
    _os_log_impl(&dword_21E77E000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ Updating Notification List Persistent State", &v10, 0xCu);
  }

  v6 = [(NCNotificationRootList *)self _sectionListsForPersistentState];
  v7 = [(NCNotificationRootList *)self persistentStateManager];
  migrationScheduler = self->_migrationScheduler;
  v9 = [(NCNotificationRootList *)self _listInfoForPersistentState];
  [v7 updatePersistentStateForNotificationList:self sectionLists:v6 listCache:0 migrationScheduler:migrationScheduler listInfo:v9 detailed:0];
}

- (id)_sectionListsForPersistentState
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = v3;
  if (self->_criticalSectionList)
  {
    [v3 addObject:?];
  }

  if (self->_persistentSectionList)
  {
    [v4 addObject:?];
  }

  if (self->_highlightedSectionList)
  {
    [v4 addObject:?];
  }

  if (self->_prominentIncomingSectionList)
  {
    [v4 addObject:?];
  }

  if (self->_incomingSectionList)
  {
    [v4 addObject:?];
  }

  if (self->_currentDigestSectionList)
  {
    [v4 addObject:?];
  }

  if (self->_upcomingDigestSectionList)
  {
    [v4 addObject:?];
  }

  if (self->_upcomingMissedSectionList)
  {
    [v4 addObject:?];
  }

  return v4;
}

- (NSString)logDescription
{
  v2 = MEMORY[0x277CCACA8];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v2 stringWithFormat:@"Notification Root List [%@]", v4];

  return v5;
}

- (id)_listInfoForPersistentState
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (self->_currentDigestSectionList || [(NCNotificationRootList *)self deferCurrentDigestPresentationForPersistedDataLoad])
  {
    upcomingMissedSectionList = self->_upcomingMissedSectionList;
    if (upcomingMissedSectionList && [(NCNotificationCombinedSectionList *)upcomingMissedSectionList containsSectionList:self->_currentDigestSectionList])
    {
      v5 = 1;
    }

    else if ([(NCNotificationRootList *)self deferCurrentDigestPresentationForPersistedDataLoad])
    {
      v5 = [(NCNotificationRootList *)self _isPersistentStateCurrentDigestInMissedSection];
    }

    else
    {
      v5 = 0;
    }

    v6 = [MEMORY[0x277CCABB0] numberWithBool:v5];
    [v3 setObject:v6 forKey:@"isCurrentDigestInMissedSection"];
  }

  if ([v3 count])
  {
    v7 = v3;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  return v7;
}

- (void)_updateTransactionIfNecessary
{
  if ([(NCNotificationRootList *)self totalNotificationCount]< 0x3E9)
  {
    v3 = 0;
  }

  else
  {
    if (self->_manyNotificationsTransaction)
    {
      return;
    }

    v3 = os_transaction_create();
  }

  self->_manyNotificationsTransaction = v3;

  MEMORY[0x2821F96F8]();
}

- (unint64_t)totalNotificationCount
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v2 = [(NCNotificationRootList *)self notificationSections];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __48__NCNotificationRootList_totalNotificationCount__block_invoke;
  v5[3] = &unk_278370158;
  v5[4] = &v6;
  [v2 enumerateObjectsUsingBlock:v5];

  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (NCNotificationRootListDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)_isCurrentDigestListAboveHistorySectionList
{
  if (!self->_currentDigestSectionList)
  {
    return 0;
  }

  v2 = self;
  v3 = [(NCNotificationRootList *)self notificationSections];
  LOBYTE(v2) = [v3 containsObject:v2->_currentDigestSectionList];

  return v2;
}

uint64_t __48__NCNotificationRootList_totalNotificationCount__block_invoke(uint64_t a1, void *a2)
{
  result = [a2 notificationCount];
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

- (id)_notificationListSections
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = [(NCNotificationRootList *)self supplementaryViewsSections];
  [v3 addObjectsFromArray:v4];

  v5 = [(NCNotificationRootList *)self notificationSections];
  [v3 addObjectsFromArray:v5];

  return v3;
}

- (unint64_t)visibleNotificationCount
{
  v3 = [(NCNotificationStructuredSectionList *)self->_incomingSectionList notificationCount];
  v4 = [(NCNotificationStructuredSectionList *)self->_criticalSectionList notificationCount]+ v3;
  v5 = [(NCNotificationStructuredSectionList *)self->_persistentSectionList notificationCount];
  v6 = v4 + v5 + [(NCNotificationStructuredSectionList *)self->_prominentIncomingSectionList notificationCount];
  v7 = v6 + [(NCNotificationStructuredSectionList *)self->_highlightedSectionList notificationCount];
  return v7 + [(NCNotificationRootList *)self _isCurrentDigestListAboveHistorySectionList];
}

- (int64_t)currentListDisplayStyleSetting
{
  result = self->_currentListDisplayStyleSetting;
  if (result)
  {
    return [result integerValue];
  }

  return result;
}

- (void)prepareForUIAppear
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = self->_notificationSections;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) prepareForUIAppear];
      }

      while (v4 != v6);
      v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)notificationListDidLayoutSubviews
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x4010000000;
  v18 = &unk_21E979265;
  v3 = *(MEMORY[0x277CBF398] + 16);
  v19 = *MEMORY[0x277CBF398];
  v20 = v3;
  v4 = [(NCNotificationRootList *)self notificationSections];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __59__NCNotificationRootList_notificationListDidLayoutSubviews__block_invoke;
  v14[3] = &unk_278370158;
  v14[4] = &v15;
  [v4 enumerateObjectsUsingBlock:v14];

  v5 = [(NCNotificationRootList *)self supplementaryViewsSections];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __59__NCNotificationRootList_notificationListDidLayoutSubviews__block_invoke_2;
  v13[3] = &unk_278370108;
  v13[4] = &v15;
  [v5 enumerateObjectsUsingBlock:v13];

  IsNull = CGRectIsNull(v16[1]);
  v7 = v16;
  if (IsNull)
  {
    v8 = *(MEMORY[0x277CBF3A0] + 16);
    v16[1].origin = *MEMORY[0x277CBF3A0];
    v7[1].size = v8;
  }

  if (!CGRectEqualToRect(self->_aggregatedVisibleContentExtent, v7[1]))
  {
    size = v16[1].size;
    self->_aggregatedVisibleContentExtent.origin = v16[1].origin;
    self->_aggregatedVisibleContentExtent.size = size;
    v10 = [(NCNotificationRootList *)self rootListView];
    v11 = [v10 debugView];
    [v11 displayRect:@"aggregatedVisibleContentExtent" withName:{self->_aggregatedVisibleContentExtent.origin.x, self->_aggregatedVisibleContentExtent.origin.y, self->_aggregatedVisibleContentExtent.size.width, self->_aggregatedVisibleContentExtent.size.height}];

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __59__NCNotificationRootList_notificationListDidLayoutSubviews__block_invoke_3;
    block[3] = &unk_27836F6A8;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  _Block_object_dispose(&v15, 8);
}

void __59__NCNotificationRootList_notificationListDidLayoutSubviews__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 listView];
  [v4 frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  LODWORD(v4) = [v3 isSectionVisible];
  if (v4)
  {
    v13.origin.x = v6;
    v13.origin.y = v8;
    v13.size.width = v10;
    v13.size.height = v12;
    if (CGRectGetHeight(v13) > 0.0)
    {
      v14.origin.x = v6;
      v14.origin.y = v8;
      v14.size.width = v10;
      v14.size.height = v12;
      *(*(*(a1 + 32) + 8) + 32) = CGRectUnion(*(*(*(a1 + 32) + 8) + 32), v14);
    }
  }
}

void __59__NCNotificationRootList_notificationListDidLayoutSubviews__block_invoke_2(uint64_t a1, void *a2)
{
  v12 = a2;
  v3 = [v12 supplementaryViewControllers];
  v4 = [v3 count];

  v5 = [v12 position];
  if (v4 && v5 != 1)
  {
    v6 = *(*(a1 + 32) + 8);
    v7 = [v12 listView];
    [v7 frame];
    v14.origin.x = v8;
    v14.origin.y = v9;
    v14.size.width = v10;
    v14.size.height = v11;
    *(*(*(a1 + 32) + 8) + 32) = CGRectUnion(v6[1], v14);
  }
}

- (CGRect)aggregatedVisibleContentExtent
{
  x = self->_aggregatedVisibleContentExtent.origin.x;
  y = self->_aggregatedVisibleContentExtent.origin.y;
  width = self->_aggregatedVisibleContentExtent.size.width;
  height = self->_aggregatedVisibleContentExtent.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)listViewControllerPresentedByUserAction
{
  v2 = [(NCNotificationRootList *)self notificationListStalenessEventTracker];
  [v2 handleEvent:0];
}

- (void)_performDeferredMigrationIfNecessary
{
  v15 = *MEMORY[0x277D85DE8];
  if ([(NCNotificationRootList *)self deferDigestMigration]&& [(NCNotificationRootList *)self _isCurrentDigestListAboveHistorySectionList])
  {
    v3 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
    {
      v4 = v3;
      v5 = [(NCNotificationRootList *)self logDescription];
      v11 = 138543362;
      v12 = v5;
      _os_log_impl(&dword_21E77E000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ performing deferred migration of current digest", &v11, 0xCu);
    }

    [(NCNotificationRootList *)self _migrateCurrentDigestSectionListToReadSection];
    [(NCNotificationRootList *)self setDeferDigestMigration:0];
  }

  if ([(NSMutableArray *)self->_notificationRequestsPendingMigration count])
  {
    v6 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
      v8 = [(NCNotificationRootList *)self logDescription];
      v9 = [(NSMutableArray *)self->_notificationRequestsPendingMigration bs_map:&__block_literal_global_194];
      v11 = 138543618;
      v12 = v8;
      v13 = 2114;
      v14 = v9;
      _os_log_impl(&dword_21E77E000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ performing deferred migration of requests pending migration %{public}@", &v11, 0x16u);
    }

    [(NCNotificationRootList *)self _migrateNonActiveHighlightNotificationRequestsFromHighlightToIncomingSection:self->_notificationRequestsPendingMigration];
    [(NCNotificationRootList *)self _migrateOnScheduleNotificationRequestsFromIncomingSectionToHistorySection:self->_notificationRequestsPendingMigration];
    notificationRequestsPendingMigration = self->_notificationRequestsPendingMigration;
    self->_notificationRequestsPendingMigration = 0;

    [(NCNotificationRootList *)self _notificationListDidChangeContent];
  }
}

- (id)_initWithListView:(id)a3 delegate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v55.receiver = self;
  v55.super_class = NCNotificationRootList;
  v9 = [(NCNotificationRootList *)&v55 init];
  if (!v9)
  {
    goto LABEL_15;
  }

  objc_storeStrong(&__sharedInstance, v9);
  objc_storeWeak(&v9->_delegate, v8);
  v10 = objc_alloc_init(NCNotificationListCache);
  notificationListCache = v9->_notificationListCache;
  v9->_notificationListCache = v10;

  [(NCNotificationListCache *)v9->_notificationListCache setDelegate:v9];
  v12 = objc_alloc_init(NCNotificationListCache);
  notificationSummaryCache = v9->_notificationSummaryCache;
  v9->_notificationSummaryCache = v12;

  [(NCNotificationListCache *)v9->_notificationSummaryCache setDelegate:v9];
  v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
  notificationSections = v9->_notificationSections;
  v9->_notificationSections = v14;

  v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
  supplementaryViewsSections = v9->_supplementaryViewsSections;
  v9->_supplementaryViewsSections = v16;

  v18 = objc_alloc_init(MEMORY[0x277CBEB38]);
  notificationListDisplayStyleSettingsForReason = v9->_notificationListDisplayStyleSettingsForReason;
  v9->_notificationListDisplayStyleSettingsForReason = v18;

  v20 = objc_alloc_init(MEMORY[0x277CBEB58]);
  loadedNotificationSections = v9->_loadedNotificationSections;
  v9->_loadedNotificationSections = v20;

  v9->_expandsVisibleRegionOnSignificantScroll = 0;
  [(NCNotificationRootList *)v9 _setupNotificationSectionLists];
  currentListDisplayStyleSetting = v9->_currentListDisplayStyleSetting;
  v9->_currentListDisplayStyleSetting = 0;

  currentListDisplayStyleSettingReason = v9->_currentListDisplayStyleSettingReason;
  v9->_currentListDisplayStyleSettingReason = 0;

  v24 = objc_alloc_init(NCSuggestionManager);
  suggestionManager = v9->_suggestionManager;
  v9->_suggestionManager = v24;

  [(NCSuggestionManager *)v9->_suggestionManager setDelegate:v9];
  v9->_performingClearAll = 0;
  *&v9->_missedSectionActive = 0;
  v9->_upcomingDigestVisible = 1;
  v26 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v27 = [v26 objectForKey:@"NCOverrideNotificationMigrationToHistory"];
  if (v27)
  {
    v28 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v9->_overrideMigrationToHistory = [v28 BOOLForKey:@"NCOverrideNotificationMigrationToHistory"];
  }

  else
  {
    v9->_overrideMigrationToHistory = 0;
  }

  v9->_overrideNotificationMigrateHighlightToHistoryTimeIntervalKey = -1.0;
  v29 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v30 = [v29 objectForKey:@"NCOverrideNotificationMigrateHighlightToHistoryTimeIntervalKey"];
  if (v30)
  {
    v31 = v30;
    v32 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [v32 doubleForKey:@"NCOverrideNotificationMigrateHighlightToHistoryTimeIntervalKey"];
    v34 = v33;

    if (v34 <= 0.0)
    {
      goto LABEL_9;
    }

    v29 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [v29 doubleForKey:@"NCOverrideNotificationMigrateHighlightToHistoryTimeIntervalKey"];
    v9->_overrideNotificationMigrateHighlightToHistoryTimeIntervalKey = v35;
  }

LABEL_9:
  v9->_overrideNotificationMigrateTimeSensitiveToHistoryTimeIntervalKey = -1.0;
  v36 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v37 = [v36 objectForKey:@"NCOverrideNotificationMigrateTimeSensitiveToHistoryTimeIntervalKey"];
  if (v37)
  {
    v38 = v37;
    v39 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [v39 doubleForKey:@"NCOverrideNotificationMigrateTimeSensitiveToHistoryTimeIntervalKey"];
    v41 = v40;

    if (v41 <= 0.0)
    {
      goto LABEL_13;
    }

    v36 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [v36 doubleForKey:@"NCOverrideNotificationMigrateTimeSensitiveToHistoryTimeIntervalKey"];
    v9->_overrideNotificationMigrateTimeSensitiveToHistoryTimeIntervalKey = v42;
  }

LABEL_13:
  v43 = [(NCNotificationRootList *)v9 _digestTestRecipe];
  [(PTDomain *)NCUNUIKitPrototypeDomain registerTestRecipe:v43];

  v44 = [(NCNotificationRootList *)v9 _notificationMigrationOverrideTestRecipe];
  [(PTDomain *)NCUNUIKitPrototypeDomain registerTestRecipe:v44];

  v45 = +[NCNotificationListStalenessEventTracker eventTrackerWithAutomaticCollation];
  notificationListStalenessEventTracker = v9->_notificationListStalenessEventTracker;
  v9->_notificationListStalenessEventTracker = v45;

  v47 = [(NCNotificationRootList *)v9 notificationListStalenessEventTracker];
  v48 = [(NCNotificationRootList *)v9 incomingSectionList];
  [v47 setStructuredSectionList:v48];

  v49 = [[NCNotificationListPersistentStateManager alloc] initWithDelegate:v9];
  persistentStateManager = v9->_persistentStateManager;
  v9->_persistentStateManager = v49;

  v51 = [[NCNotificationListMigrationScheduler alloc] initWithDelegate:v9];
  migrationScheduler = v9->_migrationScheduler;
  v9->_migrationScheduler = v51;

  v53 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v53 addObserver:v9 forKeyPath:@"NCOverrideNotificationMigrationToHistory" options:1 context:0];

  [(NCNotificationRootList *)v9 _addStateCaptureBlock];
  objc_storeStrong(&v9->_rootListView, a3);
  [(NCNotificationListViewProtocol *)v9->_rootListView setDataSource:v9];
  [(NCNotificationListViewProtocol *)v9->_rootListView _setAutomaticContentOffsetAdjustmentEnabled:0];
  [(NCNotificationListViewProtocol *)v9->_rootListView setLayoutFromBottom:0];
  [(NCNotificationListViewProtocol *)v9->_rootListView setShouldLimitViewHeightForRollUnder:1];
  [(NCNotificationRootList *)v9 _updateIndexForReveal];
  if (os_variant_has_internal_content())
  {
    v9->_powerlogBackgroundQueue = dispatch_get_global_queue(-32768, 0);
  }

LABEL_15:

  return v9;
}

- (void)setDelegate:(id)a3
{
  v6 = a3;
  objc_storeWeak(&self->_delegate, v6);
  v4 = v6;
  if (v6)
  {
    rootListView = self->_rootListView;
    [v6 insetHorizontalMarginForNotificationListComponent:self];
    [(NCNotificationListViewProtocol *)rootListView setHorizontalInsetMargin:?];
    v4 = v6;
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v16 = *MEMORY[0x277D85DE8];
  if ([a3 isEqualToString:{@"NCOverrideNotificationMigrationToHistory", a4, a5, a6}])
  {
    v7 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    self->_overrideMigrationToHistory = [v7 BOOLForKey:@"NCOverrideNotificationMigrationToHistory"];

    v8 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
    {
      v9 = v8;
      v10 = [(NCNotificationRootList *)self logDescription];
      overrideMigrationToHistory = self->_overrideMigrationToHistory;
      v12 = 138543618;
      v13 = v10;
      v14 = 1024;
      v15 = overrideMigrationToHistory;
      _os_log_impl(&dword_21E77E000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ setting override migration to history to %{BOOL}d on user defaults value change", &v12, 0x12u);
    }
  }
}

- (void)migrateNotificationsFromIncomingSectionToHistorySectionAndHideHistorySection:(BOOL)a3
{
  v3 = a3;
  v50 = *MEMORY[0x277D85DE8];
  if ([(NCNotificationRootList *)self overrideMigrationToHistory])
  {
    v5 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
    {
      v6 = v5;
      v7 = [(NCNotificationRootList *)self logDescription];
      *buf = 138543362;
      v49 = v7;
      v8 = "%{public}@ not migrating notifications from incoming section to history section because override is set";
LABEL_4:
      _os_log_impl(&dword_21E77E000, v6, OS_LOG_TYPE_DEFAULT, v8, buf, 0xCu);

      return;
    }

    return;
  }

  v9 = [(NCNotificationRootList *)self highlightedSectionList];
  if ([v9 count])
  {
    goto LABEL_8;
  }

  v10 = [(NCNotificationRootList *)self prominentIncomingSectionList];
  if ([v10 count])
  {

LABEL_8:
LABEL_9:
    v11 = MEMORY[0x277D77DD0];
    v12 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
    {
      v13 = v12;
      v14 = [(NCNotificationRootList *)self logDescription];
      *buf = 138543362;
      v49 = v14;
      _os_log_impl(&dword_21E77E000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ migrating notifications from incoming section to history section", buf, 0xCu);
    }

    v15 = [(NCNotificationRootList *)self prominentIncomingSectionList];
    v16 = [(NCNotificationRootList *)self incomingSectionList];
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = __103__NCNotificationRootList_migrateNotificationsFromIncomingSectionToHistorySectionAndHideHistorySection___block_invoke;
    v47[3] = &unk_27836FFD8;
    v47[4] = self;
    BYTE2(v38) = 0;
    LOWORD(v38) = 0;
    [NCNotificationRootList _migrateNotificationsFromList:"_migrateNotificationsFromList:toList:passingTest:filterRequestsPassingTest:hideToList:clearRequests:filterForDestination:animateRemoval:reorderGroupNotifications:" toList:v15 passingTest:v16 filterRequestsPassingTest:0 hideToList:v47 clearRequests:0 filterForDestination:0 animateRemoval:v38 reorderGroupNotifications:?];

    LODWORD(v16) = _NCStackElevation();
    v17 = *v11;
    v18 = os_log_type_enabled(*v11, OS_LOG_TYPE_DEFAULT);
    if (v16)
    {
      if (v18)
      {
        v19 = v17;
        v20 = [(NCNotificationRootList *)self logDescription];
        *buf = 138543362;
        v49 = v20;
        _os_log_impl(&dword_21E77E000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@ migrating notifications in stack if needed", buf, 0xCu);
      }

      v21 = +[NCPlatformEligibility areGenerativeModelsAvailable];
      v22 = [(NCNotificationRootList *)self incomingSectionList];
      v23 = [(NCNotificationRootList *)self historySectionList];
      v45[0] = MEMORY[0x277D85DD0];
      v45[1] = 3221225472;
      v45[2] = __103__NCNotificationRootList_migrateNotificationsFromIncomingSectionToHistorySectionAndHideHistorySection___block_invoke_54;
      v45[3] = &unk_278370000;
      v45[4] = self;
      v46 = v21;
      BYTE2(v39) = 0;
      LOWORD(v39) = 1;
      [NCNotificationRootList _migrateNotificationsFromList:"_migrateNotificationsFromList:toList:passingTest:filterRequestsPassingTest:hideToList:clearRequests:filterForDestination:animateRemoval:reorderGroupNotifications:" toList:v22 passingTest:v23 filterRequestsPassingTest:v45 hideToList:0 clearRequests:v3 filterForDestination:1 animateRemoval:v39 reorderGroupNotifications:?];

      v24 = [(NCNotificationRootList *)self incomingSectionList];
      v25 = [(NCNotificationRootList *)self historySectionList];
      v42[4] = self;
      v43[0] = MEMORY[0x277D85DD0];
      v43[1] = 3221225472;
      v43[2] = __103__NCNotificationRootList_migrateNotificationsFromIncomingSectionToHistorySectionAndHideHistorySection___block_invoke_56;
      v43[3] = &unk_278370000;
      v43[4] = self;
      v44 = v21;
      v42[0] = MEMORY[0x277D85DD0];
      v42[1] = 3221225472;
      v42[2] = __103__NCNotificationRootList_migrateNotificationsFromIncomingSectionToHistorySectionAndHideHistorySection___block_invoke_57;
      v42[3] = &unk_27836FFD8;
      BYTE2(v40) = 0;
      LOWORD(v40) = 1;
      [NCNotificationRootList _migrateNotificationsFromList:"_migrateNotificationsFromList:toList:passingTest:filterRequestsPassingTest:hideToList:clearRequests:filterForDestination:animateRemoval:reorderGroupNotifications:" toList:v24 passingTest:v25 filterRequestsPassingTest:v43 hideToList:v42 clearRequests:v3 filterForDestination:1 animateRemoval:v40 reorderGroupNotifications:?];
    }

    else
    {
      if (v18)
      {
        v26 = v17;
        v27 = [(NCNotificationRootList *)self logDescription];
        *buf = 138543362;
        v49 = v27;
        _os_log_impl(&dword_21E77E000, v26, OS_LOG_TYPE_DEFAULT, "%{public}@ migrating individual notifications", buf, 0xCu);
      }

      v28 = [(NCNotificationRootList *)self incomingSectionList];
      v29 = [(NCNotificationRootList *)self historySectionList];
      v41[0] = MEMORY[0x277D85DD0];
      v41[1] = 3221225472;
      v41[2] = __103__NCNotificationRootList_migrateNotificationsFromIncomingSectionToHistorySectionAndHideHistorySection___block_invoke_2;
      v41[3] = &unk_27836FFD8;
      v41[4] = self;
      BYTE2(v39) = 0;
      LOWORD(v39) = 1;
      [NCNotificationRootList _migrateNotificationsFromList:"_migrateNotificationsFromList:toList:passingTest:filterRequestsPassingTest:hideToList:clearRequests:filterForDestination:animateRemoval:reorderGroupNotifications:" toList:v28 passingTest:v29 filterRequestsPassingTest:&__block_literal_global_5 hideToList:v41 clearRequests:v3 filterForDestination:1 animateRemoval:v39 reorderGroupNotifications:?];
    }

    if ([(NCNotificationRootList *)self deferDigestMigration]&& [(NCNotificationRootList *)self _isCurrentDigestListAboveHistorySectionList])
    {
      v30 = *v11;
      if (os_log_type_enabled(*v11, OS_LOG_TYPE_DEFAULT))
      {
        v31 = v30;
        v32 = [(NCNotificationRootList *)self logDescription];
        *buf = 138543362;
        v49 = v32;
        _os_log_impl(&dword_21E77E000, v31, OS_LOG_TYPE_DEFAULT, "%{public}@ performing deferred migration of current digest", buf, 0xCu);
      }

      [(NCNotificationRootList *)self _migrateCurrentDigestSectionListToReadSection];
      self->_deferDigestMigration = 0;
    }

    else
    {
      [(NCNotificationRootList *)self _scheduleNotificationDigestMigrationIfNecessary];
    }

    v33 = _NCStackElevation();
    [(NCNotificationRootList *)self _scheduleAllNotificationRequestsForMigrationFromHighlightList];
    if (v33)
    {
      v34 = &__block_literal_global_61_0;
    }

    else
    {
      v34 = &__block_literal_global_64;
    }

    [(NCNotificationRootList *)self _scheduleNotificationRequestsForMigrationFromIncomingListPassingTest:v34];
    [(NCNotificationRootList *)self _notificationListDidChangeContent];
    return;
  }

  v35 = [(NCNotificationRootList *)self incomingSectionList];
  v36 = [v35 count];

  if (v36)
  {
    goto LABEL_9;
  }

  v37 = *MEMORY[0x277D77DD0];
  if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v37;
    v7 = [(NCNotificationRootList *)self logDescription];
    *buf = 138543362;
    v49 = v7;
    v8 = "%{public}@ not migrating notifications to history section because highlight/prominent/incoming are empty";
    goto LABEL_4;
  }
}

uint64_t __103__NCNotificationRootList_migrateNotificationsFromIncomingSectionToHistorySectionAndHideHistorySection___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) _isLockScreenPersistenceNotificationRequest:v3];
  if (v4)
  {
    v5 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v7 = v5;
      v8 = [v6 logDescription];
      v9 = [v3 notificationIdentifier];
      v10 = [v9 un_logDigest];
      v11 = [v3 options];
      v13 = 138543874;
      v14 = v8;
      v15 = 2114;
      v16 = v10;
      v17 = 2048;
      v18 = [v11 lockScreenPersistence];
      _os_log_impl(&dword_21E77E000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ notification %{public}@ is persistent notification; lockScreenPersistence: %lu; skip migration from prominent incoming to incoming.", &v13, 0x20u);
    }
  }

  return v4;
}

uint64_t __103__NCNotificationRootList_migrateNotificationsFromIncomingSectionToHistorySectionAndHideHistorySection___block_invoke_54(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (([*(a1 + 32) _isEligibleForStackElevationMigrationWithGroupList:v3 areGenerativeModelsAvailable:*(a1 + 40)] & 1) == 0)
  {
    v10 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      v6 = v10;
      v7 = [v11 logDescription];
      v8 = [v3 logDescription];
      v24 = 138543618;
      v25 = v7;
      v26 = 2114;
      v27 = v8;
      v9 = "%{public}@ thread %{public}@ is not eligible for stack elevation migration; skip group migration from incoming to history.";
      goto LABEL_7;
    }

LABEL_8:
    v12 = 0;
    goto LABEL_9;
  }

  if ([v3 containsPersistentNotificationRequests])
  {
    v4 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = v4;
      v7 = [v5 logDescription];
      v8 = [v3 logDescription];
      v24 = 138543618;
      v25 = v7;
      v26 = 2114;
      v27 = v8;
      v9 = "%{public}@ thread %{public}@ contains persistent notification; skip migrate from incoming to history.";
LABEL_7:
      _os_log_impl(&dword_21E77E000, v6, OS_LOG_TYPE_DEFAULT, v9, &v24, 0x16u);

      goto LABEL_8;
    }

    goto LABEL_8;
  }

  v14 = [*(a1 + 32) migrationScheduler];
  v15 = [v14 migratedTimeSensitiveNotificationRequests];
  v16 = [v3 hasNewTimeSensitiveNotificationRequestsWithMigratedTimeSensitiveNotificationRequests:v15];

  v17 = *MEMORY[0x277D77DD0];
  v18 = os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT);
  if (v16)
  {
    if (!v18)
    {
      goto LABEL_8;
    }

    v19 = *(a1 + 32);
    v6 = v17;
    v7 = [v19 logDescription];
    v8 = [v3 logDescription];
    v24 = 138543618;
    v25 = v7;
    v26 = 2114;
    v27 = v8;
    v9 = "%{public}@ thread %{public}@ contains new time sensitive notification; defer migrate from incoming to history until migration timer fired.";
    goto LABEL_7;
  }

  if (v18)
  {
    v20 = *(a1 + 32);
    v21 = v17;
    v22 = [v20 logDescription];
    v23 = [v3 logDescription];
    v24 = 138543618;
    v25 = v22;
    v26 = 2114;
    v27 = v23;
    _os_log_impl(&dword_21E77E000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@ migrate thread %{public}@ from incoming to history", &v24, 0x16u);
  }

  v12 = 1;
LABEL_9:

  return v12;
}

uint64_t __103__NCNotificationRootList_migrateNotificationsFromIncomingSectionToHistorySectionAndHideHistorySection___block_invoke_56(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) _isEligibleForStackElevationMigrationWithGroupList:v3 areGenerativeModelsAvailable:*(a1 + 40)];
  v5 = *MEMORY[0x277D77DD0];
  v6 = os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      v7 = *(a1 + 32);
      v8 = v5;
      v9 = [v7 logDescription];
      v10 = [v3 logDescription];
      v14 = 138543618;
      v15 = v9;
      v16 = 2114;
      v17 = v10;
      v11 = "%{public}@ thread %{public}@ eligible for stack elevation migration; skip migrating individually from incoming to history";
LABEL_6:
      _os_log_impl(&dword_21E77E000, v8, OS_LOG_TYPE_DEFAULT, v11, &v14, 0x16u);
    }
  }

  else if (v6)
  {
    v12 = *(a1 + 32);
    v8 = v5;
    v9 = [v12 logDescription];
    v10 = [v3 logDescription];
    v14 = 138543618;
    v15 = v9;
    v16 = 2114;
    v17 = v10;
    v11 = "%{public}@ thread %{public}@ is not eligible for stack elevation migration; migrate individually from incoming to history.";
    goto LABEL_6;
  }

  return v4 ^ 1u;
}

uint64_t __103__NCNotificationRootList_migrateNotificationsFromIncomingSectionToHistorySectionAndHideHistorySection___block_invoke_57(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 options];
  v5 = [v4 lockScreenPersistence];

  if (v5)
  {
    v6 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v8 = v6;
      v9 = [v7 logDescription];
      v10 = [v3 notificationIdentifier];
      v11 = [v10 un_logDigest];
      v24 = 138543618;
      v25 = v9;
      v26 = 2114;
      v27 = v11;
      v12 = "%{public}@ notification %{public}@ is persistent notification; skip migrate from incoming to history.";
LABEL_7:
      _os_log_impl(&dword_21E77E000, v8, OS_LOG_TYPE_DEFAULT, v12, &v24, 0x16u);

      goto LABEL_8;
    }

    goto LABEL_8;
  }

  v13 = [v3 interruptionLevel];
  v14 = *MEMORY[0x277D77DD0];
  v15 = os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT);
  if (v13 == 2)
  {
    if (v15)
    {
      v16 = *(a1 + 32);
      v8 = v14;
      v9 = [v16 logDescription];
      v10 = [v3 notificationIdentifier];
      v11 = [v10 un_logDigest];
      v24 = 138543618;
      v25 = v9;
      v26 = 2114;
      v27 = v11;
      v12 = "%{public}@ notification %{public}@ is time sensitive notification; defer migrate from incoming to history until migration timer fired.";
      goto LABEL_7;
    }

LABEL_8:
    v17 = 1;
    goto LABEL_9;
  }

  if (v15)
  {
    v19 = *(a1 + 32);
    v20 = v14;
    v21 = [v19 logDescription];
    v22 = [v3 notificationIdentifier];
    v23 = [v22 un_logDigest];
    v24 = 138543618;
    v25 = v21;
    v26 = 2114;
    v27 = v23;
    _os_log_impl(&dword_21E77E000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@ migrate request %{public}@ from incoming to history", &v24, 0x16u);
  }

  v17 = 0;
LABEL_9:

  return v17;
}

uint64_t __103__NCNotificationRootList_migrateNotificationsFromIncomingSectionToHistorySectionAndHideHistorySection___block_invoke_2(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 options];
  v5 = [v4 lockScreenPersistence];

  if (v5)
  {
    v6 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v8 = v6;
      v9 = [v7 logDescription];
      v10 = [v3 notificationIdentifier];
      v11 = [v10 un_logDigest];
      v24 = 138543618;
      v25 = v9;
      v26 = 2114;
      v27 = v11;
      v12 = "%{public}@ notification %{public}@ is persistent notification; skip migrate from incoming to history.";
LABEL_7:
      _os_log_impl(&dword_21E77E000, v8, OS_LOG_TYPE_DEFAULT, v12, &v24, 0x16u);

      goto LABEL_8;
    }

    goto LABEL_8;
  }

  v13 = [v3 interruptionLevel];
  v14 = *MEMORY[0x277D77DD0];
  v15 = os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT);
  if (v13 == 2)
  {
    if (v15)
    {
      v16 = *(a1 + 32);
      v8 = v14;
      v9 = [v16 logDescription];
      v10 = [v3 notificationIdentifier];
      v11 = [v10 un_logDigest];
      v24 = 138543618;
      v25 = v9;
      v26 = 2114;
      v27 = v11;
      v12 = "%{public}@ notification %{public}@ is time sensitive notification; defer migrate from incoming to history until migration timer fired.";
      goto LABEL_7;
    }

LABEL_8:
    v17 = 1;
    goto LABEL_9;
  }

  if (v15)
  {
    v19 = *(a1 + 32);
    v20 = v14;
    v21 = [v19 logDescription];
    v22 = [v3 notificationIdentifier];
    v23 = [v22 un_logDigest];
    v24 = 138543618;
    v25 = v21;
    v26 = 2114;
    v27 = v23;
    _os_log_impl(&dword_21E77E000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@ migrate request %{public}@ from incoming to history", &v24, 0x16u);
  }

  v17 = 0;
LABEL_9:

  return v17;
}

BOOL __103__NCNotificationRootList_migrateNotificationsFromIncomingSectionToHistorySectionAndHideHistorySection___block_invoke_59(uint64_t a1, void *a2)
{
  v2 = [a2 options];
  v3 = [v2 lockScreenPersistence] == 0;

  return v3;
}

BOOL __103__NCNotificationRootList_migrateNotificationsFromIncomingSectionToHistorySectionAndHideHistorySection___block_invoke_2_62(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 interruptionLevel] == 2)
  {
    v3 = [v2 options];
    v4 = [v3 lockScreenPersistence] == 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)toggleFilteringForSectionIdentifier:(id)a3 shouldFilter:(BOOL)a4
{
  v6 = a3;
  v7 = [(NCNotificationRootList *)self _notificationSectionListsForEnumeration];
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __75__NCNotificationRootList_toggleFilteringForSectionIdentifier_shouldFilter___block_invoke;
  v12 = &unk_278370068;
  v13 = v6;
  v14 = a4;
  v8 = v6;
  [v7 enumerateObjectsUsingBlock:&v9];

  [(NCNotificationRootList *)self _notificationListDidChangeContent:v9];
  [(NCNotificationRootList *)self _updateDelegateAndSubclassIfNecessaryOfContentChange];
}

- (void)toggleMissedSectionActive:(BOOL)a3 forDNDMode:(id)a4 hideVisibleNotifications:(BOOL)a5
{
  v5 = a5;
  v6 = a3;
  v27 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = MEMORY[0x277D77DD0];
  v10 = *MEMORY[0x277D77DD0];
  if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
  {
    v11 = v10;
    v12 = [(NCNotificationRootList *)self logDescription];
    missedSectionActive = self->_missedSectionActive;
    v20 = 138543874;
    v21 = v12;
    v22 = 1024;
    *v23 = missedSectionActive;
    *&v23[4] = 1024;
    *&v23[6] = v6;
    _os_log_impl(&dword_21E77E000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ toggle missed section; wasActive: %d, isActive: %d.", &v20, 0x18u);
  }

  if (self->_missedSectionActive != v6)
  {
    if (v6)
    {
      if (v5)
      {
        [(NCNotificationRootList *)self migrateNotificationsFromIncomingSectionToHistorySectionAndHideHistorySection:[(NCNotificationRootList *)self deviceAuthenticated]^ 1];
        [(NCNotificationRootList *)self _migrateCurrentDigestSectionListToReadSection];
      }

      [(NCNotificationRootList *)self _configureUpcomingMissedSectionForDNDMode:v8];
    }

    else
    {
      if ([(NCNotificationCombinedSectionList *)self->_upcomingMissedSectionList containsSectionList:self->_currentDigestSectionList])
      {
        v14 = *v9;
        if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
        {
          v15 = v14;
          v16 = [(NCNotificationRootList *)self logDescription];
          v17 = [(NCNotificationStructuredSectionList *)self->_currentDigestSectionList logDescription];
          v18 = [(NCNotificationStructuredSectionList *)self->_upcomingMissedSectionList logDescription];
          v19 = [(NCNotificationStructuredSectionList *)self->_incomingSectionList logDescription];
          v20 = 138544130;
          v21 = v16;
          v22 = 2114;
          *v23 = v17;
          *&v23[8] = 2114;
          v24 = v18;
          v25 = 2114;
          v26 = v19;
          _os_log_impl(&dword_21E77E000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ migrating current digest %{public}@ from %{public}@ to %{public}@ as missed section was deactivated.", &v20, 0x2Au);
        }

        [(NCNotificationRootList *)self _removeCurrentDigestSectionListFromMissedSectionList];
        [(NCNotificationRootList *)self _upgradeCurrentDigestSectionListForPromotionAboveFold];
        [(NCNotificationSummarizedSectionList *)self->_currentDigestSectionList collapseSummarizedSectionList];
        [(NCNotificationRootList *)self _insertCurrentDigestSectionList];
      }

      [(NCNotificationRootList *)self _migrateUpcomingMissedSectionToIncoming];
      [(NCNotificationRootList *)self _notificationListDidChangeContent];
    }

    self->_missedSectionActive = v6;
    [(NCNotificationRootList *)self _updateDelegateAndSubclassIfNecessaryOfContentChange];
  }
}

- (id)notificationRequestWithNotificationIdentifier:(id)a3 sectionIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__0;
  v21 = __Block_byref_object_dispose__0;
  v22 = 0;
  v8 = [(NCNotificationRootList *)self notificationSections];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __90__NCNotificationRootList_notificationRequestWithNotificationIdentifier_sectionIdentifier___block_invoke;
  v13[3] = &unk_278370090;
  v9 = v6;
  v14 = v9;
  v10 = v7;
  v15 = v10;
  v16 = &v17;
  [v8 enumerateObjectsUsingBlock:v13];

  v11 = v18[5];
  _Block_object_dispose(&v17, 8);

  return v11;
}

void __90__NCNotificationRootList_notificationRequestWithNotificationIdentifier_sectionIdentifier___block_invoke(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v20 = *MEMORY[0x277D85DE8];
  [a2 allNotificationRequests];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v18 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [v11 notificationIdentifier];
        if ([v12 isEqualToString:a1[4]])
        {
          v13 = [v11 sectionIdentifier];
          v14 = [v13 isEqualToString:a1[5]];

          if (v14)
          {
            objc_storeStrong((*(a1[6] + 8) + 40), v11);
            *a4 = 1;
            goto LABEL_12;
          }
        }

        else
        {
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

LABEL_12:
}

- (void)expandGroupForNotificationRequest:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NCNotificationRootList *)self notificationSections];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __75__NCNotificationRootList_expandGroupForNotificationRequest_withCompletion___block_invoke;
  v11[3] = &unk_2783700B8;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [v8 enumerateObjectsUsingBlock:v11];
}

- (void)collapseGroupForNotificationRequest:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NCNotificationRootList *)self notificationSections];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __77__NCNotificationRootList_collapseGroupForNotificationRequest_withCompletion___block_invoke;
  v11[3] = &unk_2783700B8;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [v8 enumerateObjectsUsingBlock:v11];
}

- (BOOL)hasVisibleContentToReveal
{
  if (![(NCNotificationRootList *)self deviceAuthenticated])
  {
    v5 = [(NCNotificationRootList *)self incomingSectionList];
    if ([v5 hasVisibleContentToReveal])
    {
      v4 = 1;
LABEL_23:

      return v4;
    }

    v6 = [(NCNotificationRootList *)self highlightedSectionList];
    if ([v6 hasVisibleContentToReveal])
    {
      v4 = 1;
LABEL_22:

      goto LABEL_23;
    }

    v7 = [(NCNotificationRootList *)self _isCurrentDigestListAboveHistorySectionList];
    if (v7)
    {
      v2 = [(NCNotificationRootList *)self currentDigestSectionList];
      if ([v2 hasVisibleContentToReveal])
      {
        v4 = 1;
        goto LABEL_21;
      }

      if (([(NCNotificationRootList *)self isNotificationHistoryRevealed]& 1) == 0)
      {
        v4 = 0;
        goto LABEL_21;
      }
    }

    else if (![(NCNotificationRootList *)self isNotificationHistoryRevealed])
    {
      v4 = 0;
      goto LABEL_22;
    }

    v8 = [(NCNotificationRootList *)self upcomingDigestSectionList];
    if ([v8 hasVisibleContentToReveal])
    {

      v4 = 1;
      if (!v7)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v9 = [(NCNotificationRootList *)self upcomingMissedSectionList];
      if ([v9 hasVisibleContentToReveal])
      {

        v4 = 1;
        if (!v7)
        {
          goto LABEL_22;
        }
      }

      else
      {
        v10 = [(NCNotificationRootList *)self historySectionList];
        v4 = [v10 hasVisibleContentToReveal];

        if (!v7)
        {
          goto LABEL_22;
        }
      }
    }

LABEL_21:

    goto LABEL_22;
  }

  return 0;
}

- (void)updateNotificationSystemSettings:(id)a3 previousSystemSettings:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  -[NCNotificationRootList setScheduledDeliveryEnabled:](self, "setScheduledDeliveryEnabled:", [v6 isScheduledDeliveryEnabled]);
  v8 = [(NCNotificationRootList *)self digestScheduleManager];

  if (v8)
  {
    v9 = [(NCNotificationRootList *)self digestScheduleManager];
    v10 = [v6 scheduledDeliveryTimes];
    [v9 setDigestScheduleTimes:v10];
  }

  v11 = MEMORY[0x277D77DD0];
  if (!v7 || (v12 = [v6 shouldScheduledDeliveryShowNextSummary], v12 != objc_msgSend(v7, "shouldScheduledDeliveryShowNextSummary")))
  {
    self->_upcomingDigestVisible = [v6 shouldScheduledDeliveryShowNextSummary];
    v13 = *v11;
    if (os_log_type_enabled(*v11, OS_LOG_TYPE_DEFAULT))
    {
      v14 = v13;
      v15 = [(NCNotificationRootList *)self logDescription];
      upcomingDigestVisible = self->_upcomingDigestVisible;
      v26 = 138543618;
      v27 = v15;
      v28 = 1024;
      LODWORD(v29) = upcomingDigestVisible;
      _os_log_impl(&dword_21E77E000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ toggling visibility of upcoming digest to %{BOOL}d", &v26, 0x12u);
    }

    [(NCNotificationRootList *)self _toggleUpcomingDigestSectionListVisibility];
    if (!v7)
    {
      goto LABEL_17;
    }
  }

  v17 = [v6 listDisplayStyleSetting];
  if (v17 != [v7 listDisplayStyleSetting])
  {
LABEL_17:
    v18 = *v11;
    if (os_log_type_enabled(*v11, OS_LOG_TYPE_DEFAULT))
    {
      v19 = v18;
      v20 = [(NCNotificationRootList *)self logDescription];
      v21 = [MEMORY[0x277D77E68] stringForNotificationListDisplayStyleSetting:{objc_msgSend(v6, "listDisplayStyleSetting")}];
      v22 = [MEMORY[0x277D77E68] stringForNotificationListDisplayStyleSetting:{-[NCNotificationRootList currentListDisplayStyleSetting](self, "currentListDisplayStyleSetting")}];
      v26 = 138543874;
      v27 = v20;
      v28 = 2114;
      v29 = v21;
      v30 = 2114;
      v31 = v22;
      _os_log_impl(&dword_21E77E000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@ updating notification list display system setting to %{public}@ from %{public}@ on system settings change", &v26, 0x20u);
    }

    v23 = [(NCNotificationRootList *)self notificationListDisplayStyleSettingsForReason];
    v24 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v6, "listDisplayStyleSetting")}];
    [v23 setValue:v24 forKey:@"NCNotificationListDisplayStyleReasonSystemSetting"];

    [(NCNotificationRootList *)self _updateNotificationListDisplayStyleSetting];
    if (!v7)
    {
      goto LABEL_13;
    }
  }

  v25 = [v6 areHighlightsEnabled];
  if (v25 != [v7 areHighlightsEnabled])
  {
LABEL_13:
    -[NCNotificationRootList _setHighlightsFeatureEnabled:](self, "_setHighlightsFeatureEnabled:", [v6 areHighlightsEnabled]);
  }
}

- (BOOL)hasVisibleUrgentBreakthroughContent
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v3 = [(NCNotificationRootList *)self _visibleNotificationRequests];
  if (-[NCNotificationRootList isMissedSectionActive](self, "isMissedSectionActive") && [v3 count])
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __61__NCNotificationRootList_hasVisibleUrgentBreakthroughContent__block_invoke;
    v6[3] = &unk_2783700E0;
    v6[4] = &v7;
    [v3 enumerateObjectsUsingBlock:v6];
  }

  v4 = *(v8 + 24);

  _Block_object_dispose(&v7, 8);
  return v4;
}

void __61__NCNotificationRootList_hasVisibleUrgentBreakthroughContent__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  v6 = [v8 alertOptions];
  if ([v6 suppression])
  {
    v7 = [v8 interruptionLevel] > 1;
  }

  else
  {
    v7 = 1;
  }

  *(*(*(a1 + 32) + 8) + 24) = v7;

  *a4 = *(*(*(a1 + 32) + 8) + 24);
}

- (void)_checkAndReloadSuggestionForNotificationRequest:(id)a3 withHighlightsListCount:(unint64_t)a4
{
  v10 = a3;
  v6 = [(NCNotificationRootList *)self suggestionManager];
  [v6 checkSuggestionNeededForNotificationRequest:v10 withHighlightsListCount:a4];

  v7 = [(NCNotificationRootList *)self loadedNotificationSections];
  v8 = [v10 sectionIdentifier];
  if ([v7 containsObject:v8])
  {
    v9 = [(NCNotificationRootList *)self containsNotificationRequest:v10];

    if (v9)
    {
      goto LABEL_6;
    }

    v7 = [(NCNotificationRootList *)self suggestionManager];
    [v7 reloadRemoteSuggestions];
  }

  else
  {
  }

LABEL_6:
}

- (void)setOnboardingSummaryVisible:(BOOL)a3
{
  v59 = *MEMORY[0x277D85DE8];
  if (self->_onboardingSummaryVisible != a3)
  {
    v3 = a3;
    v5 = MEMORY[0x277D77DD0];
    v6 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
      v8 = [(NCNotificationRootList *)self logDescription];
      *buf = 138543618;
      v56 = v8;
      v57 = 1024;
      LODWORD(v58) = v3;
      _os_log_impl(&dword_21E77E000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ setting onboarding summary visible = %{BOOL}d", buf, 0x12u);
    }

    if (v3)
    {
      if (self->_currentDigestSectionList)
      {
        v9 = *v5;
        if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
        {
          [(NCNotificationRootList *)v9 setOnboardingSummaryVisible:?];
        }
      }

      else
      {
        v15 = [(NCNotificationCombinedSectionList *)self->_historySectionList allNotificationRequests];
        v16 = [v15 copy];

        v17 = [MEMORY[0x277CBEAA8] date];
        v18 = [v17 dateByAddingTimeInterval:-86400.0];
        v52[0] = MEMORY[0x277D85DD0];
        v52[1] = 3221225472;
        v52[2] = __54__NCNotificationRootList_setOnboardingSummaryVisible___block_invoke;
        v52[3] = &unk_27836FFD8;
        v19 = v18;
        v53 = v19;
        v20 = [v16 bs_filter:v52];
        v21 = [v20 count];
        v22 = *v5;
        if (v21 < 5)
        {
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            [NCNotificationRootList setOnboardingSummaryVisible:v22];
          }
        }

        else
        {
          v45 = v19;
          v46 = v16;
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            v23 = v22;
            v24 = [(NCNotificationRootList *)self logDescription];
            *buf = 138543618;
            v56 = v24;
            v57 = 2048;
            v58 = v21;
            _os_log_impl(&dword_21E77E000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@ creating onboarding summary with notification count %lu", buf, 0x16u);
          }

          v25 = [MEMORY[0x277CBEA80] currentCalendar];
          v26 = [v25 components:124 fromDate:v17];

          v27 = vdupq_n_s64([v26 hour]);
          v28 = vbslq_s8(vcgtq_s64(xmmword_21E9462B0, v27), vsubq_s64(xmmword_21E9462B0, v27), vaddq_s64(v27, xmmword_21E9462A0));
          v29 = vmovn_s64(vcgtq_s64(vdupq_laneq_s64(v28, 1), v28)).u8[0];
          if (v29)
          {
            v30 = 18;
          }

          else
          {
            v30 = 8;
          }

          if (v29)
          {
            v31 = @"NOTIFICATION_SUMMARY_HEADER_EVENING";
          }

          else
          {
            v31 = @"NOTIFICATION_SUMMARY_HEADER_MORNING";
          }

          [v26 setHour:v30];
          [v26 setMinute:0];
          v32 = [MEMORY[0x277CBEA80] currentCalendar];
          v33 = [v32 dateFromComponents:v26];

          v34 = NCUserNotificationsUIKitFrameworkBundle();
          v35 = [v34 localizedStringForKey:v31 value:&stru_282FE84F8 table:0];

          v36 = objc_alloc_init(NCMutableDigestInfo);
          v43 = v35;
          [(NCMutableDigestInfo *)v36 setHeaderString:v35];
          v44 = v33;
          [(NCMutableDigestInfo *)v36 setScheduleDate:v33];
          [(NCNotificationRootList *)self _configureCurrentDigestSectionListWithDigestInfo:v36 sectionType:8 summaryOrderProviderType:1];
          v50 = 0u;
          v51 = 0u;
          v48 = 0u;
          v49 = 0u;
          v37 = v20;
          v38 = [v37 countByEnumeratingWithState:&v48 objects:v54 count:16];
          if (v38)
          {
            v39 = v38;
            v40 = *v49;
            do
            {
              for (i = 0; i != v39; ++i)
              {
                if (*v49 != v40)
                {
                  objc_enumerationMutation(v37);
                }

                [(NCNotificationSummarizedSectionList *)self->_currentDigestSectionList insertNotificationRequest:*(*(&v48 + 1) + 8 * i)];
              }

              v39 = [v37 countByEnumeratingWithState:&v48 objects:v54 count:16];
            }

            while (v39);
          }

          v42 = dispatch_time(0, 500000000);
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __54__NCNotificationRootList_setOnboardingSummaryVisible___block_invoke_82;
          block[3] = &unk_27836F6A8;
          block[4] = self;
          dispatch_after(v42, MEMORY[0x277D85CD0], block);
          self->_onboardingSummaryVisible = v3;

          v19 = v45;
          v16 = v46;
        }
      }
    }

    else
    {
      v10 = *v5;
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
      {
        v11 = v10;
        v12 = [(NCNotificationRootList *)self logDescription];
        *buf = 138543362;
        v56 = v12;
        _os_log_impl(&dword_21E77E000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ removing onboarding summary from list", buf, 0xCu);
      }

      v13 = [(NCNotificationStructuredSectionList *)self->_currentDigestSectionList listView];
      [v13 setGrouped:1];

      [(NCNotificationRootList *)self _removeCurrentDigestSectionList];
      currentDigestSectionList = self->_currentDigestSectionList;
      self->_currentDigestSectionList = 0;

      self->_onboardingSummaryVisible = 0;
    }
  }
}

BOOL __54__NCNotificationRootList_setOnboardingSummaryVisible___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 timestamp];
  v5 = [v4 earlierDate:*(a1 + 32)];
  if (v5 == *(a1 + 32))
  {
    v7 = [v3 content];
    v6 = ([v7 isCommunicationType] & 1) == 0 && objc_msgSend(v3, "interruptionLevel") < 2;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)insertSupplementaryViewsContainerAtListPosition:(unint64_t)a3 identifier:(id)a4 withDescription:(id)a5
{
  v24 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v10 = *MEMORY[0x277D77DD0];
  if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
  {
    v11 = v10;
    v12 = [(NCNotificationRootList *)self logDescription];
    *buf = 138543874;
    *&buf[4] = v12;
    *&buf[12] = 2114;
    *&buf[14] = v9;
    *&buf[22] = 2048;
    v23 = a3;
    _os_log_impl(&dword_21E77E000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ inserting supplementary views container for %{public}@ at position %lu", buf, 0x20u);
  }

  v13 = [[NCNotificationListSupplementaryViewsSection alloc] initWithPosition:a3];
  supplementaryCache = self->_supplementaryCache;
  if (!supplementaryCache)
  {
    v15 = objc_alloc_init(NCNotificationListCache);
    v16 = self->_supplementaryCache;
    self->_supplementaryCache = v15;

    [(NCNotificationListCache *)self->_supplementaryCache setDelegate:self];
    supplementaryCache = self->_supplementaryCache;
  }

  [(NCNotificationListSupplementaryViewsSection *)v13 setNotificationListCache:supplementaryCache];
  [(NCNotificationListSupplementaryViewsSection *)v13 setIdentifier:v8];
  [(NCNotificationListSupplementaryViewsSection *)v13 setDescriptionString:v9];
  [(NCNotificationListSupplementaryViewsSection *)v13 setDelegate:self];
  [(NCNotificationRootList *)self _updateIndexForReveal];
  v17 = 0;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v23 = 0;
  if (a3 != 1)
  {
    supplementaryViewsSections = self->_supplementaryViewsSections;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __101__NCNotificationRootList_insertSupplementaryViewsContainerAtListPosition_identifier_withDescription___block_invoke;
    v21[3] = &unk_278370108;
    v21[4] = buf;
    [(NSMutableArray *)supplementaryViewsSections enumerateObjectsUsingBlock:v21, 0];
    v17 = *(*&buf[8] + 24);
  }

  [(NSMutableArray *)self->_supplementaryViewsSections insertObject:v13 atIndex:v17];
  v19 = [(NCNotificationRootList *)self rootListView];
  [v19 insertViewAtIndex:*(*&buf[8] + 24) animated:0];

  _Block_object_dispose(buf, 8);

  return v13;
}

void __101__NCNotificationRootList_insertSupplementaryViewsContainerAtListPosition_identifier_withDescription___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v7 position] == 1)
  {
    *(*(*(a1 + 32) + 8) + 24) = a3 + 1;
  }

  else
  {
    *a4 = 1;
  }
}

- (void)setOverrideNotificationListDisplayStyleSetting:(int64_t)a3 forReason:(id)a4 hideNotificationCount:(BOOL)a5
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = *MEMORY[0x277D77DD0];
  if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v10 = [(NCNotificationRootList *)self logDescription];
    v11 = [MEMORY[0x277D77E68] stringForNotificationListDisplayStyleSetting:a3];
    v14 = 138543874;
    v15 = v10;
    v16 = 2114;
    v17 = v11;
    v18 = 2114;
    v19 = v7;
    _os_log_impl(&dword_21E77E000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ setting override notification list display style setting to %{public}@ for reason %{public}@", &v14, 0x20u);
  }

  v12 = [(NCNotificationRootList *)self notificationListDisplayStyleSettingsForReason];
  v13 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  [v12 setValue:v13 forKey:v7];

  [(NCNotificationRootList *)self _updateNotificationListDisplayStyleSetting];
}

- (void)removeOverrideNotificationListDisplayStyleSettingForReason:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(NCNotificationRootList *)self notificationListDisplayStyleSettingsForReason];
  v6 = [v5 objectForKey:v4];

  if (v6)
  {
    v7 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
    {
      v8 = v7;
      v9 = [(NCNotificationRootList *)self logDescription];
      v11 = 138543618;
      v12 = v9;
      v13 = 2114;
      v14 = v4;
      _os_log_impl(&dword_21E77E000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ removing override notification list display style setting for reason %{public}@", &v11, 0x16u);
    }

    v10 = [(NCNotificationRootList *)self notificationListDisplayStyleSettingsForReason];
    [v10 removeObjectForKey:v4];

    [(NCNotificationRootList *)self _updateNotificationListDisplayStyleSetting];
  }
}

- (void)setActiveDNDModeConfiguration:(id)a3
{
  v6 = a3;
  if ((BSEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_activeDNDModeConfiguration, a3);
    v5 = [(NCNotificationRootList *)self rootListView];
    [v5 setNeedsLayout];
  }
}

- (void)updateListViewVisibleRectForSize:(CGSize)a3
{
  v4 = [(NCNotificationRootList *)self rootListView];
  [v4 contentOffset];
  [NCNotificationRootList _updateVisibleRectForContentOffset:"_updateVisibleRectForContentOffset:size:" size:?];
}

- (BOOL)isScrollingListContent
{
  if (![(NCNotificationListViewProtocol *)self->_rootListView isTracking])
  {
    return 0;
  }

  v3 = [(NCNotificationListViewProtocol *)self->_rootListView panGestureRecognizer];
  [v3 locationInView:self->_rootListView];
  v5 = v4;
  [v3 velocityInView:self->_rootListView];
  v7 = v6;
  [(NCNotificationListViewProtocol *)self->_rootListView firstItemOffset];
  v9 = v5 >= v8 || v7 < 0.0;

  return v9;
}

- (void)handleWake:(BOOL)a3
{
  v3 = a3;
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = self->_notificationSections;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8++) handleWake:{v3, v9}];
      }

      while (v6 != v8);
      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)handleCoverSheetVisibilityChange:(BOOL)a3
{
  v3 = a3;
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = self->_notificationSections;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8++) handleCoverSheetVisibilityChange:{v3, v9}];
      }

      while (v6 != v8);
      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (double)visibleRectBottomMarginForRollUnder
{
  v2 = [(NCNotificationRootList *)self rootListView];
  [v2 visibleRectBottomMarginForRollUnder];
  v4 = v3;

  return v4;
}

- (void)setVisibleRectBottomMarginForRollUnder:(double)a3
{
  v4 = [(NCNotificationRootList *)self rootListView];
  [v4 setVisibleRectBottomMarginForRollUnder:a3];
}

- (unint64_t)count
{
  v2 = [(NCNotificationRootList *)self notificationSections];
  v3 = [v2 count];

  return v3;
}

+ (NSSet)presentableTypes
{
  v2 = +[NCNotificationListSupplementaryViewsSection presentableTypes];
  v3 = +[NCNotificationStructuredSectionList presentableTypes];
  v4 = [v2 setByAddingObjectsFromSet:v3];

  return v4;
}

- (id)matchingRequestForRequest:(id)a3 inList:(id)a4
{
  v5 = a3;
  v6 = [a4 allNotificationRequests];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __59__NCNotificationRootList_matchingRequestForRequest_inList___block_invoke;
  v11[3] = &unk_278370180;
  v12 = v5;
  v7 = v5;
  v8 = [v6 indexOfObjectPassingTest:v11];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = 0;
  }

  else
  {
    v9 = [v6 objectAtIndex:v8];
  }

  return v9;
}

- (BOOL)removeNotificationRequest:(id)a3
{
  v151 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 requestDestinations];
  v6 = [v5 count];

  v7 = MEMORY[0x277D77DD0];
  if (!v6)
  {
    v8 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_ERROR))
    {
      [(NCNotificationRootList *)v8 removeNotificationRequest:?];
    }
  }

  v9 = [(NCNotificationRootList *)self criticalSectionList];
  v10 = [(NCNotificationRootList *)self _isNotificationRequest:v4 forSectionList:v9];

  if (v10 && (-[NCNotificationRootList criticalSectionList](self, "criticalSectionList"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 removeNotificationRequest:v4], v11, v12))
  {
    v13 = *v7;
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
    {
      v14 = v13;
      v15 = [(NCNotificationRootList *)self logDescription];
      v16 = [v4 notificationIdentifier];
      v17 = [v16 un_logDigest];
      v18 = [(NCNotificationRootList *)self criticalSectionList];
      v19 = [v18 logDescription];
      *buf = 138543874;
      v144 = v15;
      v145 = 2114;
      v146 = v17;
      v147 = 2114;
      v148 = v19;
      _os_log_impl(&dword_21E77E000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ removing notification request %{public}@ from %{public}@", buf, 0x20u);
    }

    v20 = 1;
  }

  else
  {
    v20 = 0;
  }

  v21 = [(NCNotificationRootList *)self persistentSectionList];
  v22 = [(NCNotificationRootList *)self _isNotificationRequest:v4 forSectionList:v21];

  if (v22)
  {
    v23 = [(NCNotificationRootList *)self persistentSectionList];
    v24 = [v23 removeNotificationRequest:v4];

    if (v24)
    {
      v25 = *v7;
      if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
      {
        v26 = v25;
        v27 = [(NCNotificationRootList *)self logDescription];
        v28 = [v4 notificationIdentifier];
        v29 = [v28 un_logDigest];
        v30 = [(NCNotificationRootList *)self persistentSectionList];
        v31 = [v30 logDescription];
        *buf = 138543874;
        v144 = v27;
        v145 = 2114;
        v146 = v29;
        v147 = 2114;
        v148 = v31;
        _os_log_impl(&dword_21E77E000, v26, OS_LOG_TYPE_DEFAULT, "%{public}@ removing notification request %{public}@ from %{public}@", buf, 0x20u);
      }

      v20 = 1;
    }
  }

  v32 = [(NCNotificationRootList *)self highlightedSectionList];
  v33 = [(NCNotificationRootList *)self _isNotificationRequest:v4 forSectionList:v32];

  if (v33)
  {
    v34 = [(NCNotificationRootList *)self highlightedSectionList];
    v35 = [v34 removeNotificationRequest:v4];

    if (v35)
    {
      v36 = *v7;
      if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
      {
        v37 = v36;
        v38 = [(NCNotificationRootList *)self logDescription];
        v39 = [v4 notificationIdentifier];
        v40 = [v39 un_logDigest];
        v41 = [(NCNotificationRootList *)self highlightedSectionList];
        v42 = [v41 logDescription];
        *buf = 138543874;
        v144 = v38;
        v145 = 2114;
        v146 = v40;
        v147 = 2114;
        v148 = v42;
        _os_log_impl(&dword_21E77E000, v37, OS_LOG_TYPE_DEFAULT, "%{public}@ removing notification request %{public}@ from %{public}@", buf, 0x20u);
      }

      v20 = 1;
    }
  }

  v43 = [(NCNotificationRootList *)self incomingSectionList];
  v44 = [(NCNotificationRootList *)self _isNotificationRequest:v4 forSectionList:v43];

  if (v44)
  {
    v45 = [(NCNotificationRootList *)self incomingSectionList];
    v46 = [(NCNotificationRootList *)self matchingRequestForRequest:v4 inList:v45];

    if (v46)
    {
      v47 = [v46 requestDestinations];
      v48 = [v47 containsObject:@"BulletinDestinationNotificationCenter"];

      v49 = v48 ^ 1;
    }

    else
    {
      v49 = 1;
    }

    v50 = [v4 requestDestinations];
    v51 = [v50 containsObject:@"BulletinDestinationNotificationCenter"];

    if ((v49 & 1) == 0 && (v51 & 1) == 0)
    {
      v52 = [(NCNotificationRootList *)self historySectionList];
      [v52 insertNotificationRequest:v46];

      v53 = *v7;
      if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
      {
        log = v53;
        v140 = [(NCNotificationRootList *)self logDescription];
        v142 = [v46 notificationIdentifier];
        v54 = [v142 un_logDigest];
        v55 = [(NCNotificationRootList *)self incomingSectionList];
        v56 = [v55 logDescription];
        v57 = [(NCNotificationRootList *)self historySectionList];
        v58 = [v57 logDescription];
        *buf = 138544130;
        v144 = v140;
        v145 = 2114;
        v146 = v54;
        v147 = 2114;
        v148 = v56;
        v149 = 2114;
        v150 = v58;
        _os_log_impl(&dword_21E77E000, log, OS_LOG_TYPE_DEFAULT, "%{public}@ Migrating notification request %{public}@ from %{public}@ to %{public}@ on removal", buf, 0x2Au);

        v7 = MEMORY[0x277D77DD0];
      }
    }

    v59 = [(NCNotificationRootList *)self incomingSectionList];
    v60 = [v59 removeNotificationRequest:v4];

    if (v60)
    {
      v61 = *v7;
      if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
      {
        v62 = v61;
        v63 = [(NCNotificationRootList *)self logDescription];
        v64 = [v4 notificationIdentifier];
        v65 = [v64 un_logDigest];
        v66 = [(NCNotificationRootList *)self incomingSectionList];
        v67 = [v66 logDescription];
        *buf = 138543874;
        v144 = v63;
        v145 = 2114;
        v146 = v65;
        v147 = 2114;
        v148 = v67;
        _os_log_impl(&dword_21E77E000, v62, OS_LOG_TYPE_DEFAULT, "%{public}@ removing notification request %{public}@ from %{public}@", buf, 0x20u);
      }

      v20 = 1;
    }

    if ([(NCNotificationRootList *)self isMissedSectionActive])
    {
      v68 = [(NCNotificationRootList *)self upcomingMissedSectionList];
      v69 = [v68 removeNotificationRequest:v4];

      if (v69)
      {
        v70 = *v7;
        if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
        {
          v71 = v70;
          v72 = [(NCNotificationRootList *)self logDescription];
          v73 = [v4 notificationIdentifier];
          v74 = [v73 un_logDigest];
          v75 = [(NCNotificationRootList *)self upcomingMissedSectionList];
          v76 = [v75 logDescription];
          *buf = 138543874;
          v144 = v72;
          v145 = 2114;
          v146 = v74;
          v147 = 2114;
          v148 = v76;
          _os_log_impl(&dword_21E77E000, v71, OS_LOG_TYPE_DEFAULT, "%{public}@ removing notification request %{public}@ from %{public}@", buf, 0x20u);
        }

        v20 = 1;
      }
    }
  }

  v77 = [(NCNotificationRootList *)self prominentIncomingSectionList];
  v78 = [(NCNotificationRootList *)self _isNotificationRequest:v4 forSectionList:v77];

  if (v78)
  {
    v79 = [(NCNotificationRootList *)self prominentIncomingSectionList];
    v80 = [v79 removeNotificationRequest:v4];

    if (v80)
    {
      v81 = *v7;
      if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
      {
        v82 = v81;
        v83 = [(NCNotificationRootList *)self logDescription];
        v84 = [v4 notificationIdentifier];
        v85 = [v84 un_logDigest];
        v86 = [(NCNotificationRootList *)self prominentIncomingSectionList];
        v87 = [v86 logDescription];
        *buf = 138543874;
        v144 = v83;
        v145 = 2114;
        v146 = v85;
        v147 = 2114;
        v148 = v87;
        _os_log_impl(&dword_21E77E000, v82, OS_LOG_TYPE_DEFAULT, "%{public}@ removing notification request %{public}@ from %{public}@", buf, 0x20u);
      }

      v20 = 1;
    }
  }

  v88 = [(NCNotificationRootList *)self historySectionList];
  v89 = [(NCNotificationRootList *)self _isNotificationRequest:v4 forSectionList:v88];

  if (v89)
  {
    v90 = [(NCNotificationRootList *)self historySectionList];
    v91 = [v90 removeNotificationRequest:v4];

    if (v91)
    {
      v92 = *v7;
      if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
      {
        v93 = v92;
        v94 = [(NCNotificationRootList *)self logDescription];
        v95 = [v4 notificationIdentifier];
        v96 = [v95 un_logDigest];
        v97 = [(NCNotificationRootList *)self historySectionList];
        v98 = [v97 logDescription];
        *buf = 138543874;
        v144 = v94;
        v145 = 2114;
        v146 = v96;
        v147 = 2114;
        v148 = v98;
        _os_log_impl(&dword_21E77E000, v93, OS_LOG_TYPE_DEFAULT, "%{public}@ removing notification request %{public}@ from %{public}@", buf, 0x20u);
      }

      v20 = 1;
    }
  }

  v99 = [(NCNotificationRootList *)self currentDigestSectionList];
  v100 = [(NCNotificationRootList *)self _isNotificationRequest:v4 forSectionList:v99];

  if (v100)
  {
    v101 = [(NCNotificationRootList *)self currentDigestSectionList];
    v102 = [v101 removeNotificationRequest:v4];

    if (v102)
    {
      v103 = *v7;
      if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
      {
        v104 = v103;
        v105 = [(NCNotificationRootList *)self logDescription];
        v106 = [v4 notificationIdentifier];
        v107 = [v106 un_logDigest];
        v108 = [(NCNotificationRootList *)self currentDigestSectionList];
        v109 = [v108 logDescription];
        *buf = 138543874;
        v144 = v105;
        v145 = 2114;
        v146 = v107;
        v147 = 2114;
        v148 = v109;
        _os_log_impl(&dword_21E77E000, v104, OS_LOG_TYPE_DEFAULT, "%{public}@ removing notification request %{public}@ from %{public}@", buf, 0x20u);
      }

      v20 = 1;
    }
  }

  v110 = [(NCNotificationRootList *)self upcomingDigestSectionList];
  v111 = [(NCNotificationRootList *)self _isNotificationRequest:v4 forSectionList:v110];

  if (v111 && (-[NCNotificationRootList upcomingDigestSectionList](self, "upcomingDigestSectionList"), v112 = objc_claimAutoreleasedReturnValue(), v113 = [v112 removeNotificationRequest:v4], v112, v113))
  {
    v114 = *v7;
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
    {
      v115 = v114;
      v116 = [(NCNotificationRootList *)self logDescription];
      v117 = [v4 notificationIdentifier];
      v118 = [v117 un_logDigest];
      v119 = [(NCNotificationRootList *)self upcomingDigestSectionList];
      v120 = [v119 logDescription];
      *buf = 138543874;
      v144 = v116;
      v145 = 2114;
      v146 = v118;
      v147 = 2114;
      v148 = v120;
      _os_log_impl(&dword_21E77E000, v115, OS_LOG_TYPE_DEFAULT, "%{public}@ removing notification request %{public}@ from %{public}@", buf, 0x20u);
    }
  }

  else if (!v20)
  {
    v126 = 0;
    goto LABEL_62;
  }

  v121 = *v7;
  if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
  {
    v122 = v121;
    v123 = [(NCNotificationRootList *)self logDescription];
    v124 = [v4 notificationIdentifier];
    v125 = [v124 un_logDigest];
    *buf = 138543618;
    v144 = v123;
    v145 = 2114;
    v146 = v125;
    _os_log_impl(&dword_21E77E000, v122, OS_LOG_TYPE_DEFAULT, "%{public}@ updating list views for removed notification request %{public}@", buf, 0x16u);
  }

  [(NCNotificationRootList *)self _notificationListDidChangeContent];
  [(NCNotificationRootList *)self _updateVisibilityForSectionLists];
  [(NCNotificationRootList *)self _updateNotificationListPersistentState];
  [(NCNotificationRootList *)self _updateVisibilityOfHistorySection];
  [(NCNotificationRootList *)self _updateForceExpansionForHighlights];
  v126 = 1;
LABEL_62:
  v127 = [(NCNotificationRootList *)self historySectionList];
  v128 = [(NCNotificationRootList *)self _isNotificationRequest:v4 forSectionList:v127];

  if (v128)
  {
    v129 = *v7;
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
    {
      v130 = v129;
      v131 = [(NCNotificationRootList *)self logDescription];
      v132 = [v4 notificationIdentifier];
      v133 = [v132 un_logDigest];
      *buf = 138543618;
      v144 = v131;
      v145 = 2114;
      v146 = v133;
      _os_log_impl(&dword_21E77E000, v130, OS_LOG_TYPE_DEFAULT, "%{public}@ Clear request  %{public}@ from cache as it removed from history section", buf, 0x16u);
    }

    v134 = [(NCNotificationRootList *)self notificationListCache];
    [v134 removeNotificationRequest:v4];

    v135 = [(NCNotificationRootList *)self notificationSummaryCache];
    [v135 removeNotificationRequest:v4];

    v136 = [(NCNotificationRootList *)self suggestionManager];
    [v136 clearSuggestionForNotificationRequest:v4];

    v137 = [(NCNotificationRootList *)self migrationScheduler];
    [v137 removeMigrationForNotificationRequest:v4];

    v138 = [(NCNotificationRootList *)self migrationScheduler];
    [v138 removeMigratedTimeSensitiveNotificationRequests:v4];
  }

  return v126;
}

- (void)modifyNotificationRequest:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *MEMORY[0x277D77DD0];
  if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [(NCNotificationRootList *)self logDescription];
    v8 = [v4 notificationIdentifier];
    v9 = [v8 un_logDigest];
    v11 = 138543618;
    v12 = v7;
    v13 = 2114;
    v14 = v9;
    _os_log_impl(&dword_21E77E000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ modifying notification request %{public}@", &v11, 0x16u);
  }

  v10 = [(NCNotificationRootList *)self _insertNotificationRequest:v4];
  [(NCNotificationRootList *)self _notificationListDidChangeContent];
}

- (void)reloadNotificationRequest:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *MEMORY[0x277D77DD0];
  if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [(NCNotificationRootList *)self logDescription];
    v8 = [v4 notificationIdentifier];
    v9 = [v8 un_logDigest];
    *buf = 138543618;
    v17 = v7;
    v18 = 2114;
    v19 = v9;
    _os_log_impl(&dword_21E77E000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ reloading notification request %{public}@", buf, 0x16u);
  }

  v10 = [(NCNotificationRootList *)self notificationListCache];
  [v10 clearCachedHeightsForNotificationRequest:v4];

  v11 = [(NCNotificationRootList *)self notificationSummaryCache];
  [v11 clearCachedHeightsForNotificationRequest:v4];

  v12 = [(NCNotificationRootList *)self notificationSections];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __52__NCNotificationRootList_reloadNotificationRequest___block_invoke;
  v14[3] = &unk_27836F768;
  v15 = v4;
  v13 = v4;
  [v12 enumerateObjectsUsingBlock:v14];
}

void __52__NCNotificationRootList_reloadNotificationRequest___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 containsNotificationRequest:*(a1 + 32)])
  {
    [v3 reloadNotificationRequest:*(a1 + 32)];
  }
}

- (void)updateNotificationSectionSettings:(id)a3 previousSectionSettings:(id)a4
{
  v69 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  [(NCNotificationRootList *)self _willUpdateNotificationSectionSettings:v6 previousSectionSettings:v7];
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v9 = [(NCNotificationRootList *)self criticalSectionList];

  if (v9)
  {
    v10 = [(NCNotificationRootList *)self criticalSectionList];
    [v8 addObject:v10];
  }

  v11 = [(NCNotificationRootList *)self persistentSectionList];

  if (v11)
  {
    v12 = [(NCNotificationRootList *)self persistentSectionList];
    [v8 addObject:v12];
  }

  v13 = [(NCNotificationRootList *)self highlightedSectionList];

  if (v13)
  {
    v14 = [(NCNotificationRootList *)self highlightedSectionList];
    [v8 addObject:v14];
  }

  v15 = [(NCNotificationRootList *)self prominentIncomingSectionList];

  if (v15)
  {
    v16 = [(NCNotificationRootList *)self prominentIncomingSectionList];
    [v8 addObject:v16];
  }

  v17 = [(NCNotificationRootList *)self incomingSectionList];

  if (v17)
  {
    v18 = [(NCNotificationRootList *)self incomingSectionList];
    [v8 addObject:v18];
  }

  v19 = [(NCNotificationRootList *)self upcomingMissedSectionList];

  if (v19)
  {
    v20 = [(NCNotificationRootList *)self upcomingMissedSectionList];
    [v8 addObject:v20];
  }

  if (v7)
  {
    v21 = [v6 showsInLockScreen];
    if (v21 != [v7 showsInLockScreen] && (objc_msgSend(v6, "showsInLockScreen") & 1) == 0)
    {
      v22 = *MEMORY[0x277D77DD0];
      if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
      {
        v23 = v22;
        v24 = [(NCNotificationRootList *)self logDescription];
        v25 = [v6 sectionIdentifier];
        *buf = 138543618;
        v64 = v24;
        v65 = 2114;
        v66 = v25;
        _os_log_impl(&dword_21E77E000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@ moving notifications to history section for %{public}@ on Show in Lock Screen turned OFF", buf, 0x16u);
      }

      v61[0] = MEMORY[0x277D85DD0];
      v61[1] = 3221225472;
      v61[2] = __84__NCNotificationRootList_updateNotificationSectionSettings_previousSectionSettings___block_invoke;
      v61[3] = &unk_2783701D0;
      v61[4] = self;
      v62 = v6;
      [v8 enumerateObjectsUsingBlock:v61];
      [(NCNotificationRootList *)self _updateDelegateAndSubclassIfNecessaryOfContentChange];
    }

    v26 = [v6 muteAssertion];
    v27 = [v7 muteAssertion];
    v28 = v27;
    if (v26 == v27)
    {
    }

    else
    {
      v29 = [v6 muteAssertion];

      if (v29)
      {
        v30 = *MEMORY[0x277D77DD0];
        if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
        {
          v31 = v30;
          v32 = [(NCNotificationRootList *)self logDescription];
          v33 = [v6 sectionIdentifier];
          v34 = [v6 muteAssertion];
          *buf = 138543874;
          v64 = v32;
          v65 = 2114;
          v66 = v33;
          v67 = 2112;
          v68 = v34;
          _os_log_impl(&dword_21E77E000, v31, OS_LOG_TYPE_DEFAULT, "%{public}@ moving notifications to history section for %{public}@ on mute assertion change to %@", buf, 0x20u);
        }

        v59[0] = MEMORY[0x277D85DD0];
        v59[1] = 3221225472;
        v59[2] = __84__NCNotificationRootList_updateNotificationSectionSettings_previousSectionSettings___block_invoke_88;
        v59[3] = &unk_2783701D0;
        v59[4] = self;
        v60 = v6;
        [v8 enumerateObjectsUsingBlock:v59];
        [(NCNotificationRootList *)self _updateDelegateAndSubclassIfNecessaryOfContentChange];
      }
    }

    v35 = [v6 isScheduledDeliveryEnabled];
    if (v35 != [v7 isScheduledDeliveryEnabled] && objc_msgSend(v6, "isScheduledDeliveryEnabled"))
    {
      v36 = *MEMORY[0x277D77DD0];
      if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
      {
        v37 = v36;
        v38 = [(NCNotificationRootList *)self logDescription];
        v39 = [v6 sectionIdentifier];
        *buf = 138543618;
        v64 = v38;
        v65 = 2114;
        v66 = v39;
        _os_log_impl(&dword_21E77E000, v37, OS_LOG_TYPE_DEFAULT, "%{public}@ moving notifications to upcoming digest for %{public}@ on Scheduled Delivery setting enabled", buf, 0x16u);
      }

      v57[0] = MEMORY[0x277D85DD0];
      v57[1] = 3221225472;
      v57[2] = __84__NCNotificationRootList_updateNotificationSectionSettings_previousSectionSettings___block_invoke_90;
      v57[3] = &unk_2783701D0;
      v57[4] = self;
      v58 = v6;
      [v8 enumerateObjectsUsingBlock:v57];
      [(NCNotificationRootList *)self _updateDelegateAndSubclassIfNecessaryOfContentChange];
    }

    v40 = [v6 isPrioritizationEnabled];
    if (v40 != [v7 isPrioritizationEnabled] && (objc_msgSend(v6, "isPrioritizationEnabled") & 1) == 0)
    {
      v41 = *MEMORY[0x277D77DD0];
      if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
      {
        v42 = v41;
        v43 = [(NCNotificationRootList *)self logDescription];
        v44 = [v6 sectionIdentifier];
        *buf = 138543618;
        v64 = v43;
        v65 = 2114;
        v66 = v44;
        _os_log_impl(&dword_21E77E000, v42, OS_LOG_TYPE_DEFAULT, "%{public}@ moving notifications from highlights to history for %{public}@ on prioritization disabled", buf, 0x16u);
      }

      v45 = [(NCNotificationRootList *)self highlightedSectionList];

      if (v45)
      {
        v46 = [(NCNotificationRootList *)self highlightedSectionList];
        v47 = [(NCNotificationRootList *)self historySectionList];
        v55[0] = MEMORY[0x277D85DD0];
        v55[1] = 3221225472;
        v55[2] = __84__NCNotificationRootList_updateNotificationSectionSettings_previousSectionSettings___block_invoke_92;
        v55[3] = &unk_2783701A8;
        v56 = v6;
        BYTE2(v51) = 0;
        LOWORD(v51) = 256;
        [NCNotificationRootList _migrateNotificationsFromList:"_migrateNotificationsFromList:toList:passingTest:filterRequestsPassingTest:hideToList:clearRequests:filterForDestination:animateRemoval:reorderGroupNotifications:" toList:v46 passingTest:v47 filterRequestsPassingTest:v55 hideToList:0 clearRequests:0 filterForDestination:0 animateRemoval:v51 reorderGroupNotifications:?];
      }

      [(NCNotificationRootList *)self _updateDelegateAndSubclassIfNecessaryOfContentChange];
    }
  }

  v48 = [(NCNotificationRootList *)self notificationSections];
  v52[0] = MEMORY[0x277D85DD0];
  v52[1] = 3221225472;
  v52[2] = __84__NCNotificationRootList_updateNotificationSectionSettings_previousSectionSettings___block_invoke_2_93;
  v52[3] = &unk_2783701D0;
  v53 = v6;
  v54 = v7;
  v49 = v7;
  v50 = v6;
  [v48 enumerateObjectsUsingBlock:v52];

  [(NCSuggestionManager *)self->_suggestionManager updateNotificationSectionSettings:v50 previousSectionSettings:v49];
  [(NCNotificationRootList *)self _notificationListDidChangeContent];
  [(NCNotificationRootList *)self _didUpdateNotificationSectionSettings:v50 previousSectionSettings:v49];
}

void __84__NCNotificationRootList_updateNotificationSectionSettings_previousSectionSettings___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 historySectionList];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __84__NCNotificationRootList_updateNotificationSectionSettings_previousSectionSettings___block_invoke_2;
  v7[3] = &unk_2783701A8;
  v8 = *(a1 + 40);
  BYTE2(v6) = 1;
  LOWORD(v6) = 1;
  [v3 _migrateNotificationsFromList:v4 toList:v5 passingTest:v7 filterRequestsPassingTest:0 hideToList:0 clearRequests:1 filterForDestination:v6 animateRemoval:? reorderGroupNotifications:?];
}

uint64_t __84__NCNotificationRootList_updateNotificationSectionSettings_previousSectionSettings___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 sectionIdentifier];
  v4 = [*(a1 + 32) sectionIdentifier];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

void __84__NCNotificationRootList_updateNotificationSectionSettings_previousSectionSettings___block_invoke_88(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 notificationCount])
  {
    v4 = *(a1 + 32);
    v5 = [v4 historySectionList];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __84__NCNotificationRootList_updateNotificationSectionSettings_previousSectionSettings___block_invoke_2_89;
    v7[3] = &unk_2783701A8;
    v8 = *(a1 + 40);
    BYTE2(v6) = 0;
    LOWORD(v6) = 257;
    [v4 _migrateNotificationsFromList:v3 toList:v5 passingTest:v7 filterRequestsPassingTest:0 hideToList:0 clearRequests:1 filterForDestination:v6 animateRemoval:? reorderGroupNotifications:?];
  }
}

BOOL __84__NCNotificationRootList_updateNotificationSectionSettings_previousSectionSettings___block_invoke_2_89(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 sectionIdentifier];
  v5 = [*(a1 + 32) sectionIdentifier];
  if ([v4 isEqualToString:v5])
  {
    v6 = [*(a1 + 32) muteAssertion];
    v7 = [v3 threadIdentifier];
    v8 = [v6 activeMuteAssertionLevelForThreadIdentifier:v7] != 0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __84__NCNotificationRootList_updateNotificationSectionSettings_previousSectionSettings___block_invoke_90(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 upcomingDigestSectionList];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __84__NCNotificationRootList_updateNotificationSectionSettings_previousSectionSettings___block_invoke_2_91;
  v7[3] = &unk_2783701A8;
  v8 = *(a1 + 40);
  BYTE2(v6) = 0;
  LOWORD(v6) = 256;
  [v3 _migrateNotificationsFromList:v4 toList:v5 passingTest:v7 filterRequestsPassingTest:0 hideToList:0 clearRequests:0 filterForDestination:v6 animateRemoval:? reorderGroupNotifications:?];
}

uint64_t __84__NCNotificationRootList_updateNotificationSectionSettings_previousSectionSettings___block_invoke_2_91(uint64_t a1, void *a2)
{
  v3 = [a2 sectionIdentifier];
  v4 = [*(a1 + 32) sectionIdentifier];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

uint64_t __84__NCNotificationRootList_updateNotificationSectionSettings_previousSectionSettings___block_invoke_92(uint64_t a1, void *a2)
{
  v3 = [a2 sectionIdentifier];
  v4 = [*(a1 + 32) sectionIdentifier];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

- (double)scrollViewVisibleContentLayoutOffsetY
{
  v3 = [(NCNotificationRootList *)self rootListView];
  [v3 contentLayoutOffset];
  v5 = v4;

  v6 = [(NCNotificationRootList *)self rootListView];
  [v6 contentOffset];
  v8 = v7;
  v9 = [(NCNotificationRootList *)self rootListView];
  [v9 contentInset];
  v11 = v8 + v10;

  v12 = v11 <= v5 || v5 <= 0.0;
  result = v5 - v11;
  if (v12)
  {
    return v5;
  }

  return result;
}

- (void)setDeviceAuthenticated:(BOOL)a3
{
  if (self->_deviceAuthenticated != a3)
  {
    v13 = v3;
    v14 = v4;
    v5 = a3;
    self->_deviceAuthenticated = a3;
    v7 = [(NCNotificationRootList *)self suggestionManager];
    [v7 setDeviceAuthenticated:v5];

    v8 = MEMORY[0x277CBEB58];
    v9 = [(NCNotificationRootList *)self _notificationSectionListsForEnumeration];
    v10 = [v8 setWithSet:v9];

    if (self->_upcomingDigestSectionList)
    {
      [v10 addObject:?];
    }

    if (self->_currentDigestSectionList)
    {
      [v10 addObject:?];
    }

    if (self->_upcomingMissedSectionList)
    {
      [v10 addObject:?];
    }

    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __49__NCNotificationRootList_setDeviceAuthenticated___block_invoke;
    v11[3] = &__block_descriptor_33_e49_v24__0__NCNotificationStructuredSectionList_8_B16l;
    v12 = v5;
    [v10 enumerateObjectsUsingBlock:v11];
    if (([(NCNotificationRootList *)self isNotificationHistoryRevealed]& 1) == 0)
    {
      [(NCNotificationRootList *)self _sortNotificationGroupsIfNecessary];
    }

    [(NCNotificationRootList *)self _notificationListDidChangeContent];
  }
}

- (void)notificationsLoadedForSectionIdentifier:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(NCNotificationRootList *)self loadedNotificationSections];
  v6 = [v5 containsObject:v4];

  if ((v6 & 1) == 0)
  {
    v7 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
    {
      v8 = v7;
      v9 = [(NCNotificationRootList *)self logDescription];
      *buf = 138543618;
      v25 = v9;
      v26 = 2114;
      v27 = v4;
      _os_log_impl(&dword_21E77E000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ notifications loaded for section %{public}@", buf, 0x16u);
    }

    v10 = [(NCNotificationRootList *)self loadedNotificationSections];
    v11 = [v4 copy];
    [v10 addObject:v11];

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v12 = [(NCNotificationRootList *)self notificationSections];
    v13 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v20;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v20 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v19 + 1) + 8 * i);
          if ([v17 preloadsNotificationRequests])
          {
            [v17 notificationsLoadedForSectionIdentifier:v4];
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v14);
    }

    v18 = [(NCNotificationRootList *)self persistentStateManager];
    [v18 notificationsLoadedForSectionIdentifier:v4];
  }
}

- (id)_sectionContainsNotificationRequest:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(NCNotificationRootList *)self notificationSections];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __62__NCNotificationRootList__sectionContainsNotificationRequest___block_invoke;
  v22[3] = &unk_278370218;
  v6 = v4;
  v23 = v6;
  v7 = [v5 indexOfObjectPassingTest:v22];

  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
    {
      v9 = v8;
      v10 = [(NCNotificationRootList *)self logDescription];
      v11 = [v6 notificationIdentifier];
      v12 = [v11 un_logDigest];
      *buf = 138543618;
      v25 = v10;
      v26 = 2114;
      v27 = v12;
      _os_log_impl(&dword_21E77E000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ Request %{public}@ does not exist in the lists.", buf, 0x16u);
    }

    v13 = 0;
  }

  else
  {
    v14 = [(NCNotificationRootList *)self notificationSections];
    v13 = [v14 objectAtIndex:v7];

    v15 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
    {
      v16 = v15;
      v17 = [(NCNotificationRootList *)self logDescription];
      v18 = [v6 notificationIdentifier];
      v19 = [v18 un_logDigest];
      v20 = NCNotificationListSectionTypeString([v13 sectionType]);
      *buf = 138543874;
      v25 = v17;
      v26 = 2114;
      v27 = v19;
      v28 = 2114;
      v29 = v20;
      _os_log_impl(&dword_21E77E000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ Found request %{public}@ in section %{public}@", buf, 0x20u);
    }
  }

  return v13;
}

- (BOOL)containsNotificationRequest:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v5 = [(NCNotificationRootList *)self notificationSections];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __54__NCNotificationRootList_containsNotificationRequest___block_invoke;
  v8[3] = &unk_278370240;
  v6 = v4;
  v9 = v6;
  v10 = &v11;
  [v5 enumerateObjectsUsingBlock:v8];

  LOBYTE(v5) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);

  return v5;
}

uint64_t __54__NCNotificationRootList_containsNotificationRequest___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 containsNotificationRequest:*(a1 + 32)];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

- (BOOL)respondsToSelector:(SEL)a3
{
  v8.receiver = self;
  v8.super_class = NCNotificationRootList;
  if ([(NCNotificationRootList *)&v8 respondsToSelector:?])
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

    else
    {
      v6.receiver = self;
      v6.super_class = NCNotificationRootList;
      [(NCNotificationRootList *)&v6 forwardInvocation:v4];
    }
  }
}

- (void)notificationListBaseComponentRequestsClearingAll:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() presentableTypes];
  v6 = +[NCNotificationStructuredSectionList presentableTypes];
  v7 = [v5 isSubsetOfSet:v6];

  v8 = objc_opt_class();
  v9 = [v8 presentableTypes];
  v10 = +[NCNotificationListSupplementaryViewsSection presentableTypes];
  v11 = [v9 isSubsetOfSet:v10];

  [(NCNotificationRootList *)self _clearAllNotifications:v7 supplementaryViewControllers:v11];
}

- (id)notificationStructuredSectionList:(id)a3 requestsAuxiliaryOptionsContentProviderForNotificationRequest:(id)a4 isLongLook:(BOOL)a5
{
  v5 = a5;
  v7 = a4;
  v8 = [(NCNotificationRootList *)self suggestionManager];
  v9 = [v8 auxiliaryOptionsContentProviderForNotificationRequest:v7 isLongLook:v5];

  return v9;
}

- (BOOL)notificationStructuredSectionList:(id)a3 shouldFilterNotificationRequest:(id)a4
{
  v5 = a4;
  v6 = [(NCNotificationRootList *)self delegate];
  LOBYTE(self) = [v6 notificationRootList:self shouldFilterNotificationRequest:v5];

  return self;
}

- (BOOL)notificationStructuredSectionList:(id)a3 areNotificationsLoadedForSectionIdentifier:(id)a4
{
  v5 = a4;
  v6 = [(NCNotificationRootList *)self loadedNotificationSections];
  v7 = [v6 containsObject:v5];

  return v7;
}

- (void)notificationStructuredSectionList:(id)a3 transitionedGroupedStateIsGrouped:(BOOL)a4
{
  if (self->_currentDigestSectionList == a3 || self->_upcomingDigestSectionList == a3)
  {
    v5 = [(NCNotificationRootList *)self rootListView];
    [v5 setNeedsLayout];
  }
}

- (void)notificationStructuredSectionListRequestsClearingSection:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *MEMORY[0x277D77DD0];
  if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [(NCNotificationRootList *)self logDescription];
    v8 = [v4 logDescription];
    v9 = 138543618;
    v10 = v7;
    v11 = 2114;
    v12 = v8;
    _os_log_impl(&dword_21E77E000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ requested to clear %{public}@ from the list", &v9, 0x16u);
  }

  [v4 clearAll];
  [(NCNotificationRootList *)self _notificationListDidChangeContent];
}

- (void)notificationStructuredSectionListDidClearAllNotificationRequests:(id)a3
{
  if (self->_currentDigestSectionList == a3)
  {
    [(NCNotificationRootList *)self _removeCurrentDigestSectionListFromContainingSectionList];
    currentDigestSectionList = self->_currentDigestSectionList;
    self->_currentDigestSectionList = 0;
  }

  [(NCNotificationRootList *)self _notificationListDidChangeContent];
}

- (BOOL)isNotificationStructuredSectionListCollapsable:(id)a3
{
  v4 = a3;
  v5 = [(NCNotificationRootList *)self highlightedSectionList];

  return v5 == v4;
}

- (BOOL)shouldScrollToTopForNotificationListBaseComponent:(id)a3
{
  v4 = a3;
  v5 = [(NCNotificationRootList *)self rootListView];
  [v5 contentSize];
  v7 = v6;

  v8 = [v4 listView];

  [v8 frame];
  Height = CGRectGetHeight(v16);

  v10 = [MEMORY[0x277D759A0] mainScreen];
  [v10 bounds];
  v11 = CGRectGetHeight(v17);

  v12 = [(NCNotificationRootList *)self rootListView];
  [v12 contentInset];
  v14 = v13;

  return v7 - Height + v14 < v11;
}

- (void)notificationListComponent:(id)a3 didRemoveNotificationRequest:(id)a4
{
  v5 = a4;
  v6 = [(NCNotificationRootList *)self delegate];
  [v6 notificationListComponent:self didRemoveNotificationRequest:v5];

  [(NCNotificationRootList *)self _notificationListDidChangeContent];
}

- (void)notificationListBaseComponentDidRemoveAll:(id)a3
{
  v4 = [(NCNotificationRootList *)self delegate];
  [v4 notificationListBaseComponentDidRemoveAll:self];

  [(NCNotificationRootList *)self _notificationListDidChangeContent];
}

- (void)supplementaryViewSectionDidChangeContent:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(NCNotificationRootList *)self _hasLiveActivitiesWithThreshold:1])
  {
    v5 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
    {
      v6 = v5;
      v7 = [v4 descriptionString];
      v9 = 138543362;
      v10 = v7;
      _os_log_impl(&dword_21E77E000, v6, OS_LOG_TYPE_DEFAULT, "Moving digest for live activity %{public}@", &v9, 0xCu);
    }

    v8 = [(NCNotificationRootList *)self currentDigestSectionList];
    [v8 collapseSummarizedSectionList];

    [(NCNotificationRootList *)self _migrateCurrentDigestSectionListToReadSection];
  }

  [(NCNotificationRootList *)self _updateForceExpansionForHighlights];
}

- (double)notificationListView:(id)a3 heightForItemAtIndex:(unint64_t)a4 withWidth:(double)a5 inDisplayListAsStackMode:(BOOL)a6 ignoreExpandedGroupStack:(BOOL)a7
{
  v9 = [(NCNotificationRootList *)self _notificationListSections:a3];
  v10 = 0.0;
  if ([v9 count] > a4)
  {
    v11 = [v9 objectAtIndex:a4];
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v12 = objc_opt_class();
      v13 = v11;
      if (v12)
      {
        if (objc_opt_isKindOfClass())
        {
          v14 = v11;
        }

        else
        {
          v14 = 0;
        }
      }

      else
      {
        v14 = 0;
      }

      v15 = v14;

      v16 = [v15 listView];

      [v16 sizeThatFits:{a5, 0.0}];
      v10 = v17;
    }
  }

  return v10;
}

- (id)notificationListView:(id)a3 viewForItemAtIndex:(unint64_t)a4
{
  v6 = [(NCNotificationRootList *)self _notificationListSections];
  if ([v6 count] <= a4)
  {
    v8 = 0;
  }

  else
  {
    v7 = [v6 objectAtIndex:a4];
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v9 = objc_opt_class();
      v10 = v7;
      if (v9)
      {
        if (objc_opt_isKindOfClass())
        {
          v11 = v7;
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

      v12 = v11;

      v8 = [v12 listView];
    }

    else
    {
      v8 = 0;
    }

    v13 = [(NCNotificationRootList *)self rootListView];
    [v13 frame];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;

    v25.origin.x = v15;
    v25.origin.y = v17;
    v25.size.width = v19;
    v25.size.height = v21;
    Width = CGRectGetWidth(v25);
    v26.origin.x = v15;
    v26.origin.y = v17;
    v26.size.width = v19;
    v26.size.height = v21;
    [v8 setFrame:{0.0, 0.0, Width, CGRectGetHeight(v26)}];
  }

  return v8;
}

- (unint64_t)notificationListViewNumberOfItems:(id)a3
{
  v3 = [(NCNotificationRootList *)self _notificationListSections];
  v4 = [v3 count];

  return v4;
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

void __59__NCNotificationRootList_notificationListDidLayoutSubviews__block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 notificationRootListDidUpdateVisibleContentExtent:*(a1 + 32)];
}

- (void)suggestionManager:(id)a3 requestsPresentingNotificationManagementViewType:(unint64_t)a4 forNotificationRequest:(id)a5 withPresentingView:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = [(NCNotificationRootList *)self delegate];
  [v11 notificationListComponent:self requestsPresentingManagementViewForNotificationRequest:v10 managementViewType:a4 withPresentingView:v9 completion:0];
}

- (id)suggestionManager:(id)a3 requestsSectionSettingsForSectionIdentifier:(id)a4
{
  v5 = a4;
  v6 = [(NCNotificationRootList *)self delegate];
  v7 = [v6 notificationListComponent:self sectionSettingsForSectionIdentifier:v5];

  return v7;
}

- (void)suggestionManager:(id)a3 setMuted:(BOOL)a4 untilDate:(id)a5 forSectionIdentifier:(id)a6 threadIdentifier:(id)a7
{
  v9 = a4;
  v11 = a7;
  v12 = a6;
  v13 = a5;
  v14 = [(NCNotificationRootList *)self delegate];
  [v14 notificationListComponent:self setMuted:v9 untilDate:v13 forSectionIdentifier:v12 threadIdentifier:v11];
}

- (void)suggestionManager:(id)a3 setScheduledDelivery:(BOOL)a4 forSectionIdentifier:(id)a5
{
  v5 = a4;
  v7 = a5;
  v8 = [(NCNotificationRootList *)self delegate];
  [v8 notificationListComponent:self setScheduledDelivery:v5 forSectionIdentifier:v7];
}

- (void)suggestionManager:(id)a3 setAllowsTimeSensitive:(BOOL)a4 forSectionIdentifier:(id)a5
{
  v5 = a4;
  v7 = a5;
  v8 = [(NCNotificationRootList *)self delegate];
  [v8 notificationListComponent:self setAllowsTimeSensitive:v5 forSectionIdentifier:v7];
}

- (void)suggestionManager:(id)a3 setAllowsDirectMessages:(BOOL)a4 forSectionIdentifier:(id)a5
{
  v5 = a4;
  v7 = a5;
  v8 = [(NCNotificationRootList *)self delegate];
  [v8 notificationListComponent:self setAllowsDirectMessages:v5 forSectionIdentifier:v7];
}

- (id)suggestionManager:(id)a3 notificationRequestForUUID:(id)a4
{
  v5 = a4;
  v6 = [(NCNotificationRootList *)self delegate];
  v7 = [v6 notificationListComponent:self notificationRequestForUUID:v5];

  return v7;
}

- (id)suggestionManagerRequestsCurrentModeConfiguration:(id)a3
{
  v4 = [(NCNotificationRootList *)self delegate];
  v5 = [v4 notificationListComponentRequestsCurrentModeConfiguration:self];

  return v5;
}

- (void)suggestionManager:(id)a3 setModeConfiguration:(id)a4
{
  v5 = a4;
  v6 = [(NCNotificationRootList *)self delegate];
  [v6 notificationListComponent:self setModeConfiguration:v5];
}

- (void)adjustForLegibilitySettingsChange:(id)a3
{
  v4 = a3;
  v5 = [(NCNotificationRootList *)self _notificationSectionListsForEnumeration];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__NCNotificationRootList_adjustForLegibilitySettingsChange___block_invoke;
  v7[3] = &unk_278370268;
  v8 = v4;
  v6 = v4;
  [v5 enumerateObjectsUsingBlock:v7];
}

- (BOOL)adjustForContentSizeCategoryChange
{
  v3 = [(NCNotificationRootList *)self _notificationSectionListsForEnumeration];
  [v3 enumerateObjectsUsingBlock:&__block_literal_global_112];

  [(NSMutableArray *)self->_supplementaryViewsSections enumerateObjectsUsingBlock:&__block_literal_global_114];
  v4 = [(NCNotificationRootList *)self notificationListCache];
  [v4 adjustForContentSizeCategoryChange];

  v5 = [(NCNotificationRootList *)self supplementaryCache];
  [v5 adjustForContentSizeCategoryChange];

  v6 = [(NCNotificationRootList *)self notificationSummaryCache];
  [v6 adjustForContentSizeCategoryChange];

  return 1;
}

- (Class)notificationListCacheNotificationViewControllerClass:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v5 = [WeakRetained notificationRootListNotificationViewControllerClass:self];
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  return v5;
}

- (void)publishScheduledDigest:(id)a3 upcomingDigest:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = *MEMORY[0x277D77DD0];
  if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v10 = [(NCNotificationRootList *)self logDescription];
    v11 = 138543618;
    v12 = v10;
    v13 = 2114;
    v14 = v6;
    _os_log_impl(&dword_21E77E000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ received request from Digest Schedule Manager to promote upcoming digest to current with digest info = %{public}@", &v11, 0x16u);
  }

  [(NCNotificationRootList *)self _dissolveCurrentDigestSectionListToHistorySection];
  [(NCNotificationRootList *)self _migrateUpcomingDigestSectionListToCurrentDigestSectionList];
  [(NCNotificationRootList *)self _configureUpcomingDigestSectionListWithDigestInfo:v7];
  [(NCNotificationRootList *)self _notificationListDidChangeContent];
}

- (void)publishUpcomingDigest:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *MEMORY[0x277D77DD0];
  if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [(NCNotificationRootList *)self logDescription];
    v8 = 138543618;
    v9 = v7;
    v10 = 2114;
    v11 = v4;
    _os_log_impl(&dword_21E77E000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ received request Digest Schedule Manager to publish upcoming digest with digest info = %{public}@", &v8, 0x16u);
  }

  if (self->_upcomingDigestSectionList)
  {
    [(NCNotificationRootList *)self _updateUpcomingDigestSectionListWithDigestInfo:v4];
  }

  else
  {
    [(NCNotificationRootList *)self _configureUpcomingDigestSectionListWithDigestInfo:v4];
  }

  [(NCNotificationRootList *)self _notificationListDidChangeContent];
}

- (void)revokeUpcomingDigest:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *MEMORY[0x277D77DD0];
  if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [(NCNotificationRootList *)self logDescription];
    v8 = 138543618;
    v9 = v7;
    v10 = 2114;
    v11 = v4;
    _os_log_impl(&dword_21E77E000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ received request from Digest Schedule Manager to cancel digest with digest info = %{public}@", &v8, 0x16u);
  }

  [(NCNotificationRootList *)self _dissolveCurrentDigestSectionListToHistorySection];
  [(NCNotificationRootList *)self _dissolveUpcomingDigestSectionListToHistorySection];
  [(NCNotificationRootList *)self _notificationListDidChangeContent];
}

- (void)persistentStateManager:(id)a3 didFetchSummaryMigrationTime:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a4;
  [v5 timeIntervalSinceNow];
  v7 = v6;
  v8 = *MEMORY[0x277D77DD0];
  v9 = os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT);
  if (v7 <= 0.0)
  {
    if (v9)
    {
      v12 = v8;
      v13 = [(NCNotificationRootList *)self logDescription];
      v14 = 138543618;
      v15 = v13;
      v16 = 2112;
      v17 = v5;
      _os_log_impl(&dword_21E77E000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ persisted stored migration time for digest at %@ has expired!", &v14, 0x16u);
    }
  }

  else
  {
    if (v9)
    {
      v10 = v8;
      v11 = [(NCNotificationRootList *)self logDescription];
      v14 = 138543618;
      v15 = v11;
      v16 = 2112;
      v17 = v5;
      _os_log_impl(&dword_21E77E000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ received persisted stored migration time for digest at %@", &v14, 0x16u);
    }

    [(NCNotificationListMigrationScheduler *)self->_migrationScheduler setMigrationDateForNotificationDigest:v5];
  }
}

- (void)persistentStateManager:(id)a3 hasStoredDataForSectionType:(unint64_t)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = MEMORY[0x277D77DD0];
  v8 = *MEMORY[0x277D77DD0];
  if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v10 = [(NCNotificationRootList *)self logDescription];
    v11 = NCNotificationListSectionTypeString(a4);
    v16 = 138543618;
    v17 = v10;
    v18 = 2114;
    v19 = v11;
    _os_log_impl(&dword_21E77E000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ has persisted stored data for section %{public}@", &v16, 0x16u);
  }

  if (a4 == 4)
  {
    v12 = *v7;
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v12;
      v14 = [(NCNotificationRootList *)self logDescription];
      v15 = NCNotificationListSectionTypeString(4uLL);
      v16 = 138543618;
      v17 = v14;
      v18 = 2114;
      v19 = v15;
      _os_log_impl(&dword_21E77E000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ deferring presentation of section %{public}@ pending stored data load", &v16, 0x16u);
    }

    [(NCNotificationRootList *)self setDeferCurrentDigestPresentationForPersistedDataLoad:1];
  }
}

- (void)persistentStateManager:(id)a3 finishedLoadingDataForSectionType:(unint64_t)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = MEMORY[0x277D77DD0];
  v8 = *MEMORY[0x277D77DD0];
  if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v10 = [(NCNotificationRootList *)self logDescription];
    v11 = NCNotificationListSectionTypeString(a4);
    v16 = 138543618;
    v17 = v10;
    v18 = 2114;
    v19 = v11;
    _os_log_impl(&dword_21E77E000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ finished loading stored data for section %{public}@", &v16, 0x16u);
  }

  if (a4 == 4)
  {
    v12 = *v7;
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v12;
      v14 = [(NCNotificationRootList *)self logDescription];
      v15 = NCNotificationListSectionTypeString(4uLL);
      v16 = 138543618;
      v17 = v14;
      v18 = 2114;
      v19 = v15;
      _os_log_impl(&dword_21E77E000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ enabling presentation for section %{public}@ on stored data load finish", &v16, 0x16u);
    }

    [(NCNotificationRootList *)self setDeferCurrentDigestPresentationForPersistedDataLoad:0];
    if (self->_currentDigestSectionList && ![(NCNotificationRootList *)self _isCurrentDigestListInHistorySectionList]&& [(NCNotificationStructuredSectionList *)self->_currentDigestSectionList sectionType]== 4)
    {
      if ([(NCNotificationRootList *)self _isPersistentStateCurrentDigestInMissedSection])
      {
        [(NCNotificationRootList *)self _insertCurrentDigestSectionListToMissedSectionList];
      }

      else
      {
        [(NCNotificationRootList *)self _insertCurrentDigestSectionList];
      }
    }
  }
}

- (void)persistentStateManager:(id)a3 didFetchMigrationTime:(id)a4 forNotificationRequest:(id)a5
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  v9 = *MEMORY[0x277D77DD0];
  if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    v11 = [(NCNotificationRootList *)self logDescription];
    v12 = [v8 notificationIdentifier];
    v13 = [v12 un_logDigest];
    *buf = 138543874;
    v18 = v11;
    v19 = 2114;
    v20 = v13;
    v21 = 2112;
    v22 = v7;
    _os_log_impl(&dword_21E77E000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ received persisted stored migration time for request %{public}@ at %@", buf, 0x20u);
  }

  migrationScheduler = self->_migrationScheduler;
  v16 = v8;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v16 count:1];
  [(NCNotificationListMigrationScheduler *)migrationScheduler addMigrationForNotificationRequests:v15 forDate:v7];
}

- (void)persistentStateManager:(id)a3 didFetchStoredListInfo:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = *MEMORY[0x277D77DD0];
  if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8 = [(NCNotificationRootList *)self logDescription];
    v11 = 138543618;
    v12 = v8;
    v13 = 2114;
    v14 = v5;
    _os_log_impl(&dword_21E77E000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ received persisted stored info = %{public}@", &v11, 0x16u);
  }

  v9 = [v5 copy];
  persistentStoredListInfo = self->_persistentStoredListInfo;
  self->_persistentStoredListInfo = v9;
}

- (void)persistentStateManager:(id)a3 didMigratedTimeSensitiveForNotificationRequest:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = *MEMORY[0x277D77DD0];
  if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8 = [(NCNotificationRootList *)self logDescription];
    v9 = [v5 notificationIdentifier];
    v10 = [v9 un_logDigest];
    v11 = 138543618;
    v12 = v8;
    v13 = 2114;
    v14 = v10;
    _os_log_impl(&dword_21E77E000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ received persisted stored migrated time sensitive request %{public}@", &v11, 0x16u);
  }

  [(NCNotificationListMigrationScheduler *)self->_migrationScheduler addMigratedTimeSensitiveNotificationRequests:v5];
}

- (void)notificationListMigrationSchedulerRequestsMigratingNotificationDigest:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MEMORY[0x277D77DD0];
  v6 = *MEMORY[0x277D77DD0];
  if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8 = [(NCNotificationRootList *)self logDescription];
    v13 = 138543362;
    v14 = v8;
    _os_log_impl(&dword_21E77E000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ migration scheduler requesting digest migration", &v13, 0xCu);
  }

  if (![(NCNotificationRootList *)self _isCurrentDigestListAboveHistorySectionList])
  {
    goto LABEL_9;
  }

  if (![(NCNotificationRootList *)self deviceAuthenticated])
  {
    [(NCNotificationRootList *)self _migrateCurrentDigestSectionListToReadSection];
LABEL_9:
    v12 = 0;
    goto LABEL_10;
  }

  v9 = *v5;
  if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    v11 = [(NCNotificationRootList *)self logDescription];
    v13 = 138543362;
    v14 = v11;
    _os_log_impl(&dword_21E77E000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ deferring digest migration while device backlight is full", &v13, 0xCu);
  }

  v12 = 1;
LABEL_10:
  [(NCNotificationRootList *)self setDeferDigestMigration:v12];
  [(NCNotificationRootList *)self _notificationListDidChangeContent];
}

- (void)notificationListMigrationScheduler:(id)a3 requestsMigratingNotificationRequests:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x277D77DD0];
  v9 = *MEMORY[0x277D77DD0];
  if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    v11 = [(NCNotificationRootList *)self logDescription];
    v12 = [v7 count];
    v13 = [v7 bs_map:&__block_literal_global_120];
    *buf = 138543874;
    v25 = v11;
    v26 = 2048;
    v27 = v12;
    v28 = 2112;
    v29 = v13;
    _os_log_impl(&dword_21E77E000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ migration scheduler requesting migration for %lu requests = %@", buf, 0x20u);
  }

  v14 = [(NCNotificationRootList *)self rootListView];
  v15 = [v14 traitCollection];
  v16 = [v15 _backlightLuminance];

  if (v16 == 2)
  {
    v17 = *v8;
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
    {
      v18 = v17;
      v19 = [(NCNotificationRootList *)self logDescription];
      *buf = 138543362;
      v25 = v19;
      _os_log_impl(&dword_21E77E000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@ deferring migration of requests while backlight is full", buf, 0xCu);
    }

    notificationRequestsPendingMigration = self->_notificationRequestsPendingMigration;
    if (!notificationRequestsPendingMigration)
    {
      v21 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v22 = self->_notificationRequestsPendingMigration;
      self->_notificationRequestsPendingMigration = v21;

      notificationRequestsPendingMigration = self->_notificationRequestsPendingMigration;
    }

    [(NSMutableArray *)notificationRequestsPendingMigration addObjectsFromArray:v7];
  }

  else
  {
    [(NCNotificationRootList *)self _migrateNonActiveHighlightNotificationRequestsFromHighlightToIncomingSection:v7];
    [(NCNotificationRootList *)self _migrateOnScheduleNotificationRequestsFromIncomingSectionToHistorySection:v7];
  }

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __99__NCNotificationRootList_notificationListMigrationScheduler_requestsMigratingNotificationRequests___block_invoke_121;
  v23[3] = &unk_27836F610;
  v23[4] = self;
  [v7 enumerateObjectsUsingBlock:v23];
  [(NCNotificationRootList *)self _notificationListDidChangeContent];
}

id __99__NCNotificationRootList_notificationListMigrationScheduler_requestsMigratingNotificationRequests___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 notificationIdentifier];
  v3 = [v2 un_logDigest];

  return v3;
}

- (void)_signpostScrollingBegan:(BOOL)a3
{
  v3 = a3;
  [(NCNotificationRootList *)self _emitPowerLogForScrolling:?];
  v4 = *MEMORY[0x277D77DD0];
  v5 = os_signpost_enabled(*MEMORY[0x277D77DD0]);
  if (v3)
  {
    if (v5)
    {
      v11 = 0;
      v6 = "NC_NOTIFICATION_LIST_SCROLL_BEGIN";
      v7 = &v11;
      v8 = v4;
      v9 = OS_SIGNPOST_INTERVAL_BEGIN;
LABEL_6:
      _os_signpost_emit_with_name_impl(&dword_21E77E000, v8, v9, 0xEEEEB0B5B2B2EEEELL, v6, " enableTelemetry=YES ", v7, 2u);
    }
  }

  else if (v5)
  {
    v10 = 0;
    v6 = "NC_NOTIFICATION_LIST_SCROLL_END";
    v7 = &v10;
    v8 = v4;
    v9 = OS_SIGNPOST_INTERVAL_END;
    goto LABEL_6;
  }

  kdebug_trace();
}

- (void)_emitPowerLogForScrolling:(BOOL)a3
{
  if (os_variant_has_internal_content())
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEAC0]);
    v6 = [(NCNotificationRootList *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      v7 = [v6 notificationRootListRequestsDiagnosticsDictionary:self];

      v5 = v7;
    }

    v8 = [(NCNotificationRootList *)self _powerlogBackgroundQueue];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __52__NCNotificationRootList__emitPowerLogForScrolling___block_invoke;
    v10[3] = &unk_27836F898;
    v12 = a3;
    v11 = v5;
    v9 = v5;
    dispatch_async(v8, v10);
  }
}

void __52__NCNotificationRootList__emitPowerLogForScrolling___block_invoke(uint64_t a1)
{
  v8[2] = *MEMORY[0x277D85DE8];
  v2 = mach_absolute_time();
  if (NCOverrideNotificationMigrateTimeSensitiveToHistoryTimeIntervalKey_block_invoke_onceToken != -1)
  {
    __52__NCNotificationRootList__emitPowerLogForScrolling___block_invoke_cold_1();
  }

  v7[0] = @"scrolling";
  v3 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 40)];
  v7[1] = @"timestampOfEvent";
  v8[0] = v3;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v2];
  v8[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  v6 = [v5 mutableCopy];
  [v6 addEntriesFromDictionary:*(a1 + 32)];
  PPSSendTelemetry();
}

uint64_t __52__NCNotificationRootList__emitPowerLogForScrolling___block_invoke_2()
{
  result = PPSCreateTelemetryIdentifier();
  NCOverrideNotificationMigrateTimeSensitiveToHistoryTimeIntervalKey_block_invoke_identifier = result;
  return result;
}

- (void)_cancelTouchesOnLiveActivities:(BOOL)a3
{
  supplementaryViewsSections = self->_supplementaryViewsSections;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __57__NCNotificationRootList__cancelTouchesOnLiveActivities___block_invoke;
  v4[3] = &__block_descriptor_33_e60_v32__0__NCNotificationListSupplementaryViewsSection_8Q16_B24l;
  v5 = a3;
  [(NSMutableArray *)supplementaryViewsSections enumerateObjectsUsingBlock:v4];
}

- (void)_clearAllNotifications:(BOOL)a3 supplementaryViewControllers:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v19 = *MEMORY[0x277D85DE8];
  if (a3 || a4)
  {
    v7 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
    {
      v8 = v7;
      v9 = [(NCNotificationRootList *)self logDescription];
      v13 = 138543874;
      v14 = v9;
      v15 = 1024;
      v16 = v5;
      v17 = 1024;
      v18 = v4;
      _os_log_impl(&dword_21E77E000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ clearing all notification requests: %d supplementary view controller:%d", &v13, 0x18u);
    }

    v10 = +[NCNotificationEventTracker sharedInstance];
    [v10 notificationCenterClearAll];

    self->_performingClearAll = 1;
    if (v5)
    {
      v11 = [(NCNotificationRootList *)self notificationSections];
      [v11 enumerateObjectsUsingBlock:&__block_literal_global_143];
    }

    if (v4)
    {
      v12 = [(NCNotificationRootList *)self supplementaryViewsSections];
      [v12 enumerateObjectsUsingBlock:&__block_literal_global_145];
    }

    self->_performingClearAll = 0;
    [(NCNotificationRootList *)self _updateDelegateAndSubclassIfNecessaryOfContentChange];
    [(NCNotificationRootList *)self _notificationListDidChangeContent];
  }
}

- (void)setScheduledDeliveryEnabled:(BOOL)a3
{
  v17 = *MEMORY[0x277D85DE8];
  if (self->_scheduledDeliveryEnabled != a3)
  {
    v3 = a3;
    v5 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
    {
      v6 = v5;
      v7 = [(NCNotificationRootList *)self logDescription];
      v8 = v7;
      v9 = @"disabled";
      if (v3)
      {
        v9 = @"enabled";
      }

      v13 = 138543618;
      v14 = v7;
      v15 = 2112;
      v16 = v9;
      _os_log_impl(&dword_21E77E000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ setting scheduled delivery %@", &v13, 0x16u);
    }

    self->_scheduledDeliveryEnabled = v3;
    if (v3)
    {
      v10 = objc_alloc_init(NCDigestScheduleManager);
      digestScheduleManager = self->_digestScheduleManager;
      self->_digestScheduleManager = v10;

      [(NCDigestScheduleManager *)self->_digestScheduleManager addObserver:self];
    }

    else
    {
      [(NCNotificationRootList *)self _dissolveCurrentDigestSectionListToHistorySection];
      [(NCNotificationRootList *)self _dissolveUpcomingDigestSectionListToHistorySection];
      [(NCDigestScheduleManager *)self->_digestScheduleManager invalidateScheduledTimer];
      v12 = self->_digestScheduleManager;
      self->_digestScheduleManager = 0;
    }
  }
}

- (void)_updateVisibleRectForContentOffset:(CGPoint)a3 size:(CGSize)a4
{
  width = a4.width;
  x = a3.x;
  v6 = fmin(a3.y, 0.0);
  v7 = a3.y - v6;
  v8 = a4.height + v6;
  v9 = [(NCNotificationRootList *)self rootListView];
  [v9 setVisibleRect:{x, v7, width, v8}];
}

- (void)_configureNotificationSectionList:(id)a3 notificationCache:(id)a4 notificationListViewRevealed:(BOOL)a5 logDescription:(id)a6
{
  v6 = a5;
  v10 = a6;
  v11 = a4;
  v12 = a3;
  [v12 setDelegate:self];
  [v12 setDeviceAuthenticated:{-[NCNotificationRootList deviceAuthenticated](self, "deviceAuthenticated")}];
  [v12 setNotificationListCache:v11];

  [v12 setNotificationListViewRevealed:v6];
  [v12 setLogDescription:v10];
}

- (void)_setHighlightsFeatureEnabled:(BOOL)a3
{
  v3 = a3;
  v47 = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277D77DD0];
  v6 = *MEMORY[0x277D77DD0];
  if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8 = [(NCNotificationRootList *)self logDescription];
    *buf = 138543618;
    v44 = v8;
    v45 = 1024;
    LODWORD(v46) = v3;
    _os_log_impl(&dword_21E77E000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ highlights feature enabled: %d", buf, 0x12u);
  }

  v9 = [(NCNotificationRootList *)self notificationSections];
  v10 = [(NCNotificationRootList *)self highlightedSectionList];
  v11 = [v9 containsObject:v10];

  if (v3)
  {
    if ((v11 & 1) == 0)
    {
      [(NCNotificationRootList *)self _configureHighlightsSectionListIfNeeded];
      v12 = [(NCNotificationRootList *)self highlightedSectionList];

      if (v12)
      {
        v13 = *v5;
        if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
        {
          v14 = v13;
          v15 = [(NCNotificationRootList *)self logDescription];
          v16 = [(NCNotificationRootList *)self highlightedSectionList];
          v17 = [v16 logDescription];
          *buf = 138543618;
          v44 = v15;
          v45 = 2114;
          v46 = v17;
          _os_log_impl(&dword_21E77E000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ adding %{public}@ to visible section", buf, 0x16u);
        }

        v18 = [(NCNotificationRootList *)self highlightedSectionList];
        [v18 setDeviceAuthenticated:{-[NCNotificationRootList deviceAuthenticated](self, "deviceAuthenticated")}];

        v19 = [(NCNotificationRootList *)self _notificationListSections];
        v20 = [v19 indexOfObject:self->_prominentIncomingSectionList];

        v21 = [(NCNotificationRootList *)self notificationSections];
        v22 = [v21 indexOfObject:self->_prominentIncomingSectionList];

        v23 = [(NCNotificationRootList *)self notificationSections];
        v24 = [(NCNotificationRootList *)self highlightedSectionList];
        [v23 insertObject:v24 atIndex:v22];

        v25 = [(NCNotificationRootList *)self rootListView];
        [v25 insertViewAtIndex:v20 animated:1];

        v26 = [(NCNotificationRootList *)self highlightedSectionList];
        [(NCNotificationRootList *)self _setRevealed:1 forSection:v26];

        [(NCNotificationRootList *)self _updateIndexForReveal];
        [(NCNotificationRootList *)self _notificationListDidChangeContent];
        v27 = [(NCNotificationRootList *)self highlightedSectionList];
        [(NCNotificationRootList *)self _notificationSectionsDidAdd:v27];
      }
    }
  }

  else if (v11)
  {
    v28 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      v29 = v28;
      v30 = [(NCNotificationRootList *)self logDescription];
      v31 = [(NCNotificationRootList *)self highlightedSectionList];
      v32 = [v31 logDescription];
      *buf = 138543618;
      v44 = v30;
      v45 = 2114;
      v46 = v32;
      _os_log_impl(&dword_21E77E000, v29, OS_LOG_TYPE_DEFAULT, "%{public}@ removing %{public}@ from visible section", buf, 0x16u);
    }

    v33 = [(NCNotificationRootList *)self highlightedSectionList];
    v34 = [(NCNotificationRootList *)self incomingSectionList];
    BYTE2(v42) = 0;
    LOWORD(v42) = 256;
    [NCNotificationRootList _migrateNotificationsFromList:"_migrateNotificationsFromList:toList:passingTest:filterRequestsPassingTest:hideToList:clearRequests:filterForDestination:animateRemoval:reorderGroupNotifications:" toList:v33 passingTest:v34 filterRequestsPassingTest:0 hideToList:0 clearRequests:0 filterForDestination:0 animateRemoval:v42 reorderGroupNotifications:?];

    v35 = [(NCNotificationRootList *)self _notificationListSections];
    v36 = [(NCNotificationRootList *)self highlightedSectionList];
    v37 = [v35 indexOfObject:v36];

    v38 = [(NCNotificationRootList *)self notificationSections];
    v39 = [(NCNotificationRootList *)self highlightedSectionList];
    [v38 removeObject:v39];

    v40 = [(NCNotificationRootList *)self rootListView];
    [v40 removeViewAtIndex:v37 animated:1 isHorizontallyDisplaced:0];

    v41 = [(NCNotificationRootList *)self highlightedSectionList];
    [(NCNotificationRootList *)self _setRevealed:0 forSection:v41];

    [(NCNotificationRootList *)self _updateIndexForReveal];
    [(NCNotificationRootList *)self _notificationListDidChangeContent];
  }
}

- (void)_configureHighlightsSectionListIfNeeded
{
  v32 = *MEMORY[0x277D85DE8];
  if (_NCIsNotificationHighlightsAllowed() && +[NCPlatformEligibility areGenerativeModelsAvailable]&& [(NCNotificationRootList *)self _areHighlightsEnabled]&& ([(NCNotificationRootList *)self highlightedSectionList], v3 = objc_claimAutoreleasedReturnValue(), v3, !v3))
  {
    v11 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
    {
      v12 = v11;
      v13 = [(NCNotificationRootList *)self logDescription];
      v22 = 138543362;
      v23 = v13;
      _os_log_impl(&dword_21E77E000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ Configuring highlights sections", &v22, 0xCu);
    }

    v14 = NCUserNotificationsUIKitFrameworkBundle();
    v5 = [v14 localizedStringForKey:@"NOTIFICATION_LIST_HEADER_IMPORTANT_HIGHLIGHTS" value:&stru_282FE84F8 table:0];

    v15 = [[NCNotificationListHighlights alloc] initWithTitle:v5 sectionType:10];
    v16 = [(NCNotificationRootList *)self rootListView];
    [v16 bounds];
    [(NCNotificationListHighlights *)v15 setContentSize:v17, v18];

    v19 = [(NCNotificationRootList *)self notificationListCache];
    [(NCNotificationRootList *)self _configureNotificationSectionList:v15 notificationCache:v19 notificationListViewRevealed:1 logDescription:@"Important Section"];

    v20 = [(NCNotificationStructuredSectionList *)v15 listView];
    [v20 setGrouped:0];

    [(NCNotificationStructuredSectionList *)v15 setSupportsDynamicGrouping:0];
    [(NCNotificationStructuredSectionList *)v15 setSectionListDestination:@"BulletinDestinationLockScreen"];
    highlightedSectionList = self->_highlightedSectionList;
    self->_highlightedSectionList = &v15->super;
  }

  else
  {
    v4 = *MEMORY[0x277D77DD0];
    if (!os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v5 = v4;
    v6 = [(NCNotificationRootList *)self logDescription];
    v7 = _NCIsNotificationHighlightsAllowed();
    v8 = +[NCPlatformEligibility areGenerativeModelsAvailable];
    v9 = [(NCNotificationRootList *)self _areHighlightsEnabled];
    v10 = [(NCNotificationRootList *)self highlightedSectionList];
    v22 = 138544386;
    v23 = v6;
    v24 = 1024;
    v25 = v7;
    v26 = 1024;
    v27 = v8;
    v28 = 1024;
    v29 = v9;
    v30 = 1024;
    v31 = v10 != 0;
    _os_log_impl(&dword_21E77E000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ Skip configuring Highlights sections list; highlightFF: %d; areGenerativeModelsAvailable: %d; areHighlightsEnabled: %d; highlightedSectionExisted: %d", &v22, 0x24u);
  }
}

- (BOOL)_areHighlightsEnabled
{
  v2 = self;
  v3 = [(NCNotificationRootList *)self delegate];
  LOBYTE(v2) = [v3 notificationRootListAreHighlightsEnabled:v2];

  return v2;
}

- (void)_setupNotificationSectionLists
{
  obj = [[NCNotificationStructuredSectionList alloc] initWithTitle:0 sectionType:12];
  v3 = [(NCNotificationRootList *)self notificationListCache];
  [(NCNotificationRootList *)self _configureNotificationSectionList:obj notificationCache:v3 notificationListViewRevealed:1 logDescription:@"Critical Section"];

  [(NCNotificationStructuredSectionList *)obj setSupportsDynamicGrouping:0];
  [(NCNotificationStructuredSectionList *)obj setSectionListDestination:@"BulletinDestinationLockScreen"];
  v4 = [(NCNotificationRootList *)self notificationSections];
  [v4 addObject:obj];

  objc_storeStrong(&self->_criticalSectionList, obj);
  v5 = [[NCNotificationStructuredSectionList alloc] initWithTitle:0 sectionType:11];
  v6 = [(NCNotificationRootList *)self notificationListCache];
  [(NCNotificationRootList *)self _configureNotificationSectionList:v5 notificationCache:v6 notificationListViewRevealed:1 logDescription:@"Persistent Section"];

  [(NCNotificationStructuredSectionList *)v5 setSupportsDynamicGrouping:0];
  [(NCNotificationStructuredSectionList *)v5 setSectionListDestination:@"BulletinDestinationLockScreen"];
  v7 = [(NCNotificationRootList *)self notificationSections];
  [v7 addObject:v5];

  persistentSectionList = self->_persistentSectionList;
  self->_persistentSectionList = v5;
  v9 = v5;

  [(NCNotificationRootList *)self _configureHighlightsSectionListIfNeeded];
  v10 = [(NCNotificationRootList *)self highlightedSectionList];

  if (v10)
  {
    v11 = [(NCNotificationRootList *)self notificationSections];
    v12 = [(NCNotificationRootList *)self highlightedSectionList];
    [v11 addObject:v12];

    v13 = [(NCNotificationRootList *)self highlightedSectionList];
    [(NCNotificationRootList *)self _setRevealed:1 forSection:v13];
  }

  v14 = [[NCNotificationStructuredSectionList alloc] initWithTitle:0 sectionType:1];
  v15 = [(NCNotificationRootList *)self notificationListCache];
  [(NCNotificationRootList *)self _configureNotificationSectionList:v14 notificationCache:v15 notificationListViewRevealed:1 logDescription:@"Prominent Incoming Section"];

  [(NCNotificationStructuredSectionList *)v14 setSupportsDynamicGrouping:0];
  [(NCNotificationStructuredSectionList *)v14 setSectionListDestination:@"BulletinDestinationLockScreen"];
  v16 = [(NCNotificationRootList *)self notificationSections];
  [v16 addObject:v14];

  prominentIncomingSectionList = self->_prominentIncomingSectionList;
  self->_prominentIncomingSectionList = v14;
  v18 = v14;

  v19 = [[NCNotificationStructuredSectionList alloc] initWithTitle:0 sectionType:2];
  v20 = [(NCNotificationRootList *)self notificationListCache];
  [(NCNotificationRootList *)self _configureNotificationSectionList:v19 notificationCache:v20 notificationListViewRevealed:1 logDescription:@"Incoming Section"];

  [(NCNotificationStructuredSectionList *)v19 setSupportsDynamicGrouping:1];
  [(NCNotificationStructuredSectionList *)v19 setPreloadsNotificationRequests:1];
  [(NCNotificationStructuredSectionList *)v19 setSectionListDestination:@"BulletinDestinationLockScreen"];
  v21 = [(NCNotificationRootList *)self notificationSections];
  [v21 addObject:v19];

  incomingSectionList = self->_incomingSectionList;
  self->_incomingSectionList = v19;
  v23 = v19;

  v24 = NCUserNotificationsUIKitFrameworkBundle();
  v25 = [v24 localizedStringForKey:@"NOTIFICATION_LIST_HEADER_NOTIFICATION_CENTER" value:&stru_282FE84F8 table:0];

  v26 = [[NCNotificationCombinedSectionList alloc] initWithTitle:v25 sectionType:0];
  v27 = [(NCNotificationRootList *)self notificationListCache];
  [(NCNotificationRootList *)self _configureNotificationSectionList:v26 notificationCache:v27 notificationListViewRevealed:0 logDescription:@"History Section"];

  [(NCNotificationStructuredSectionList *)v26 setHistorySection:1];
  [(NCNotificationStructuredSectionList *)v26 setPreloadsNotificationRequests:1];
  [(NCNotificationStructuredSectionList *)v26 setSectionListDestination:@"BulletinDestinationNotificationCenter"];
  v28 = [(NCNotificationRootList *)self notificationSections];
  [v28 addObject:v26];

  historySectionList = self->_historySectionList;
  self->_historySectionList = v26;

  if ([(NCNotificationRootList *)self isScheduledDeliveryEnabled])
  {
    v30 = [(NCNotificationRootList *)self digestScheduleManager];
    v31 = [v30 upcomingScheduledDigestInfo];

    if (v31)
    {
      [(NCNotificationRootList *)self _configureUpcomingDigestSectionListWithDigestInfo:v31];
    }
  }
}

- (BOOL)_isLockScreenPersistenceNotificationRequest:(id)a3
{
  v3 = [a3 options];
  v4 = [v3 lockScreenPersistence] == 2;

  return v4;
}

- (BOOL)_isPersistentPass:(id)a3
{
  v3 = [a3 sectionIdentifier];
  v4 = [v3 isEqual:@"com.apple.springboard.pass"];

  return v4;
}

- (BOOL)_isAlertingNotificationRequest:(id)a3
{
  v3 = a3;
  v4 = [v3 options];
  if ([v4 canTurnOnDisplay])
  {
    v5 = [v3 interruptionLevel] != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_isNotificationRequest:(id)a3 forSectionList:(id)a4
{
  v5 = a4;
  v6 = [a3 requestDestinations];
  v7 = [v5 sectionListDestination];

  LOBYTE(v5) = [v6 containsObject:v7];
  return v5;
}

- (BOOL)_shouldInsertNotificationRequestToHighlightedSectionList:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (![(NCNotificationRootList *)self _areHighlightsEnabled])
  {
    v6 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
      v8 = [(NCNotificationRootList *)self logDescription];
      v13 = 138543362;
      v14 = v8;
      _os_log_impl(&dword_21E77E000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ highlight setting is disabled", &v13, 0xCu);
LABEL_8:
    }

LABEL_9:
    v5 = 0;
    goto LABEL_10;
  }

  if (([v4 isHighlight] & 1) == 0)
  {
    v9 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
    {
      v7 = v9;
      v8 = [(NCNotificationRootList *)self logDescription];
      v10 = [v4 notificationIdentifier];
      v11 = [v10 un_logDigest];
      v13 = 138543618;
      v14 = v8;
      v15 = 2114;
      v16 = v11;
      _os_log_impl(&dword_21E77E000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ request %{public}@ is not highlighted", &v13, 0x16u);

      goto LABEL_8;
    }

    goto LABEL_9;
  }

  v5 = 1;
LABEL_10:

  return v5;
}

- (BOOL)shouldDelayDeliveryOfNotificationRequest:(id)a3
{
  v3 = [a3 alertOptions];
  v4 = [v3 suppression] == 2;

  return v4;
}

- (id)_sectionForInsertingNotificationRequest:(id)a3
{
  v59 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(NCNotificationRootList *)self persistentStateManager];
  v6 = [v5 sectionForStoredNotificationRequest:v4];

  v7 = [(NCNotificationRootList *)self _sectionForStoredNotificationRequestOfSectionType:v6];
  v8 = MEMORY[0x277D77DD0];
  if (v7)
  {
    v9 = v7;
    v10 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
    {
      v11 = v10;
      v12 = [(NCNotificationRootList *)self logDescription];
      v13 = NCNotificationListSectionTypeString(v6);
      v14 = [v4 notificationIdentifier];
      v15 = [v14 un_logDigest];
      *buf = 138543874;
      v50 = v12;
      v51 = 2112;
      v52 = v13;
      v53 = 2112;
      v54 = v15;
      _os_log_impl(&dword_21E77E000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ found existing section %@ for request %@ from notification list persistent state", buf, 0x20u);
    }

    goto LABEL_19;
  }

  if ([(NCNotificationRootList *)self isScheduledDeliveryEnabled])
  {
    v16 = [(NCNotificationRootList *)self currentDigestSectionList];
    if ([(NCNotificationRootList *)self _isNotificationRequest:v4 forSectionList:v16])
    {
      v17 = [(NCNotificationRootList *)self currentDigestSectionList];
      v18 = [v17 containsNotificationRequest:v4];

      if (v18)
      {
        v19 = [(NCNotificationRootList *)self currentDigestSectionList];
LABEL_18:
        v9 = v19;
        goto LABEL_19;
      }
    }

    else
    {
    }
  }

  if ([(NCNotificationRootList *)self isScheduledDeliveryEnabled])
  {
    v20 = [(NCNotificationRootList *)self upcomingDigestSectionList];
    v21 = [(NCNotificationRootList *)self _isNotificationRequest:v4 forSectionList:v20];

    if (v21)
    {
      v19 = [(NCNotificationRootList *)self upcomingDigestSectionList];
      goto LABEL_18;
    }
  }

  if ([(NCNotificationRootList *)self isMissedSectionActive])
  {
    if ([(NCNotificationRootList *)self shouldDelayDeliveryOfNotificationRequest:v4])
    {
      v22 = [(NCNotificationRootList *)self upcomingMissedSectionList];
      v23 = [(NCNotificationRootList *)self _isNotificationRequest:v4 forSectionList:v22];

      if (v23)
      {
        v19 = [(NCNotificationRootList *)self upcomingMissedSectionList];
        goto LABEL_18;
      }
    }
  }

  if ([(NCNotificationRootList *)self _isCriticalNotificationRequest:v4])
  {
    v19 = [(NCNotificationRootList *)self criticalSectionList];
    goto LABEL_18;
  }

  if (![(NCNotificationRootList *)self _isPersistentPass:v4])
  {
    v40 = [(NCNotificationRootList *)self highlightedSectionList];
    if ([(NCNotificationRootList *)self _isNotificationRequest:v4 forSectionList:v40])
    {
      v41 = [(NCNotificationRootList *)self _shouldInsertNotificationRequestToHighlightedSectionList:v4];

      if (v41)
      {
        v19 = [(NCNotificationRootList *)self highlightedSectionList];
        goto LABEL_18;
      }
    }

    else
    {
    }

    v42 = [(NCNotificationRootList *)self prominentIncomingSectionList];
    if ([(NCNotificationRootList *)self _isNotificationRequest:v4 forSectionList:v42])
    {
      v43 = [(NCNotificationRootList *)self _shouldInsertNotificationRequestToProminentIncomingSectionList:v4];

      if (v43)
      {
        v19 = [(NCNotificationRootList *)self prominentIncomingSectionList];
        goto LABEL_18;
      }
    }

    else
    {
    }

    v44 = [(NCNotificationRootList *)self incomingSectionList];
    v45 = [(NCNotificationRootList *)self _isNotificationRequest:v4 forSectionList:v44];

    if (v45)
    {
      v19 = [(NCNotificationRootList *)self incomingSectionList];
    }

    else
    {
      v46 = [(NCNotificationRootList *)self historySectionList];
      v47 = [(NCNotificationRootList *)self _isNotificationRequest:v4 forSectionList:v46];

      if (!v47)
      {
        v9 = 0;
        goto LABEL_19;
      }

      v19 = [(NCNotificationRootList *)self historySectionList];
    }

    goto LABEL_18;
  }

  v9 = [(NCNotificationRootList *)self persistentSectionList];
  v39 = *v8;
  if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21E77E000, v39, OS_LOG_TYPE_DEFAULT, "Sending wallet pass to the Persistent section", buf, 2u);
  }

LABEL_19:
  if (v9 == self->_historySectionList)
  {
    p_incomingSectionList = &self->_incomingSectionList;
    if ([(NCNotificationStructuredSectionList *)self->_incomingSectionList containsNotificationRequest:v4]|| (p_incomingSectionList = &self->_prominentIncomingSectionList, [(NCNotificationStructuredSectionList *)self->_prominentIncomingSectionList containsNotificationRequest:v4]) || (p_incomingSectionList = &self->_highlightedSectionList, [(NCNotificationStructuredSectionList *)self->_highlightedSectionList containsNotificationRequest:v4]) || (p_incomingSectionList = &self->_persistentSectionList, [(NCNotificationStructuredSectionList *)self->_persistentSectionList containsNotificationRequest:v4]) || (p_incomingSectionList = &self->_criticalSectionList, [(NCNotificationStructuredSectionList *)self->_criticalSectionList containsNotificationRequest:v4]) || (p_incomingSectionList = &self->_upcomingMissedSectionList, [(NCNotificationCombinedSectionList *)self->_upcomingMissedSectionList containsNotificationRequest:v4]) || (p_incomingSectionList = &self->_upcomingDigestSectionList, [(NCNotificationCombinedSectionList *)self->_upcomingDigestSectionList containsNotificationRequest:v4]) || (p_incomingSectionList = &self->_currentDigestSectionList, [(NCNotificationCombinedSectionList *)self->_currentDigestSectionList containsNotificationRequest:v4]))
    {
      v25 = *p_incomingSectionList;

      v9 = v25;
    }
  }

  v26 = [(NCNotificationRootList *)self _higherSectionToElevateForNotificationRequest:v4 currentSectionType:[(NCNotificationStructuredSectionList *)v9 sectionType]];
  v27 = v26;
  if (v26)
  {
    v28 = v26;

    v9 = v28;
  }

  v29 = *v8;
  if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
  {
    v30 = v29;
    v31 = [(NCNotificationRootList *)self logDescription];
    v32 = [v4 notificationIdentifier];
    v33 = [v32 un_logDigest];
    v34 = [v4 sectionIdentifier];
    v35 = [v4 threadIdentifier];
    [v35 un_logDigest];
    v36 = v48 = v4;
    v37 = NCNotificationListSectionTypeString([(NCNotificationStructuredSectionList *)v9 sectionType]);
    *buf = 138544386;
    v50 = v31;
    v51 = 2114;
    v52 = v33;
    v53 = 2114;
    v54 = v34;
    v55 = 2114;
    v56 = v36;
    v57 = 2114;
    v58 = v37;
    _os_log_impl(&dword_21E77E000, v30, OS_LOG_TYPE_DEFAULT, "%{public}@ Section for new request %{public}@ for Group List [%{public}@:%{public}@] is %{public}@", buf, 0x34u);

    v4 = v48;
  }

  return v9;
}

- (BOOL)_isRequestEligibleForStackElevation:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ((_NCStackElevation() & 1) == 0)
  {
    v8 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
    {
      v9 = v8;
      v10 = [(NCNotificationRootList *)self logDescription];
      v17 = 138543362;
      v18 = v10;
      v11 = "%{public}@ stack elevation feature disabled";
LABEL_9:
      _os_log_impl(&dword_21E77E000, v9, OS_LOG_TYPE_DEFAULT, v11, &v17, 0xCu);
LABEL_10:
    }

LABEL_11:
    v7 = 0;
    goto LABEL_12;
  }

  if (!+[NCPlatformEligibility areGenerativeModelsAvailable])
  {
    v12 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
    {
      v9 = v12;
      v10 = [(NCNotificationRootList *)self logDescription];
      v17 = 138543362;
      v18 = v10;
      v11 = "%{public}@ generative model unavailable";
      goto LABEL_9;
    }

    goto LABEL_11;
  }

  v5 = [v4 options];
  v6 = [v5 canShowSummary];

  if ((v6 & 1) == 0)
  {
    v14 = *MEMORY[0x277D77DD0];
    if (!os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    v9 = v14;
    v10 = [(NCNotificationRootList *)self logDescription];
    v15 = [v4 notificationIdentifier];
    v16 = [v15 un_logDigest];
    v17 = 138543618;
    v18 = v10;
    v19 = 2114;
    v20 = v16;
    _os_log_impl(&dword_21E77E000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ request %{public}@ summarization settings disabled", &v17, 0x16u);

    goto LABEL_10;
  }

  v7 = 1;
LABEL_12:

  return v7;
}

- (id)_higherSectionToElevateForNotificationRequest:(id)a3 currentSectionType:(unint64_t)a4
{
  v41 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (![(NCNotificationRootList *)self _isRequestEligibleForStackElevation:v6])
  {
    v18 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
    {
      v19 = v18;
      v20 = [(NCNotificationRootList *)self logDescription];
      v21 = [v6 notificationIdentifier];
      v22 = [v21 un_logDigest];
      *buf = 138543618;
      *&buf[4] = v20;
      *&buf[12] = 2114;
      *&buf[14] = v22;
      _os_log_impl(&dword_21E77E000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@ Skip finding hider section with request %{public}@; stack elevation not eligible", buf, 0x16u);
    }

    goto LABEL_10;
  }

  v7 = [v6 content];
  v8 = [v7 isCommunicationType];

  if ((v8 & 1) == 0)
  {
    v23 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
    {
      v24 = v23;
      v25 = [(NCNotificationRootList *)self logDescription];
      v26 = [v6 notificationIdentifier];
      v27 = [v26 un_logDigest];
      v28 = NCNotificationListSectionTypeString(a4);
      *buf = 138543874;
      *&buf[4] = v25;
      *&buf[12] = 2114;
      *&buf[14] = v27;
      *&buf[22] = 2114;
      v38 = v28;
      _os_log_impl(&dword_21E77E000, v24, OS_LOG_TYPE_DEFAULT, "%{public}@ Skip finding hider section with request %{public}@ in current section %{public}@; it's not communication request", buf, 0x20u);
    }

    goto LABEL_10;
  }

  v9 = NCStackElevationPriorityForSectionTypeString();
  v10 = NCNotificationListSectionTypeString(a4);
  v11 = [v9 indexOfObject:v10];

  if (v11 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
    {
      v13 = v12;
      v14 = [(NCNotificationRootList *)self logDescription];
      v15 = [v6 notificationIdentifier];
      v16 = [v15 un_logDigest];
      v17 = NCNotificationListSectionTypeString(a4);
      *buf = 138543874;
      *&buf[4] = v14;
      *&buf[12] = 2114;
      *&buf[14] = v16;
      *&buf[22] = 2114;
      v38 = v17;
      _os_log_impl(&dword_21E77E000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ Skip finding higher section with request %{public}@ in current section %{public}@; it's not in allow list", buf, 0x20u);
    }

LABEL_10:
    v29 = 0;
    goto LABEL_11;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v38 = __Block_byref_object_copy__0;
  v39 = __Block_byref_object_dispose__0;
  v40 = 0;
  v31 = NCStackElevationPriorityForSectionTypeString();
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __91__NCNotificationRootList__higherSectionToElevateForNotificationRequest_currentSectionType___block_invoke;
  v32[3] = &unk_278370310;
  v35 = v11;
  v36 = a4;
  v32[4] = self;
  v33 = v6;
  v34 = buf;
  [v31 enumerateObjectsUsingBlock:v32];

  v29 = *(*&buf[8] + 40);
  _Block_object_dispose(buf, 8);

LABEL_11:

  return v29;
}

void __91__NCNotificationRootList__higherSectionToElevateForNotificationRequest_currentSectionType___block_invoke(uint64_t a1, void *a2, unint64_t a3, _BYTE *a4)
{
  v43 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = v7;
  if (*(a1 + 56) <= a3)
  {
    v11 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 32);
      v13 = v11;
      v14 = [v12 logDescription];
      v15 = NCNotificationListSectionTypeString(*(a1 + 64));
      *buf = 138543874;
      v34 = v14;
      v35 = 2114;
      v36 = v15;
      v37 = 2114;
      v38 = v8;
      _os_log_impl(&dword_21E77E000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ Current section %{public}@ has higher or same priority than section %{public}@; Stop finding.", buf, 0x20u);
    }

    *a4 = 1;
  }

  else
  {
    v9 = NCNotificationListSectionTypeFromString(v7);
    if (v9 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = *MEMORY[0x277D77DD0];
      if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_FAULT))
      {
        __91__NCNotificationRootList__higherSectionToElevateForNotificationRequest_currentSectionType___block_invoke_cold_1(a1, v10);
      }
    }

    else
    {
      v16 = v9;
      v17 = [*(a1 + 32) _sectionOfSectionType:v9];
      v18 = v17;
      if (v17)
      {
        if ([v17 existingIndexOfGroupForNotificationRequestForInsertion:*(a1 + 40)] != 0x7FFFFFFFFFFFFFFFLL)
        {
          v19 = *MEMORY[0x277D77DD0];
          if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
          {
            v20 = *(a1 + 32);
            log = v19;
            v30 = [v20 logDescription];
            v31 = [*(a1 + 40) notificationIdentifier];
            v21 = [v31 un_logDigest];
            v22 = [*(a1 + 40) threadIdentifier];
            v23 = [v22 un_logDigest];
            v24 = NCNotificationListSectionTypeString(v16);
            v25 = NCNotificationListSectionTypeString(*(a1 + 64));
            *buf = 138544386;
            v34 = v30;
            v35 = 2114;
            v36 = v21;
            v37 = 2114;
            v38 = v23;
            v39 = 2114;
            v40 = v24;
            v41 = 2114;
            v42 = v25;
            _os_log_impl(&dword_21E77E000, log, OS_LOG_TYPE_DEFAULT, "%{public}@ Elevate new request %{public}@ for thread %{public}@ to higher section %{public}@; original section %{public}@", buf, 0x34u);
          }

          objc_storeStrong((*(*(a1 + 48) + 8) + 40), v18);
          *a4 = 1;
        }
      }

      else
      {
        v26 = *MEMORY[0x277D77DD0];
        if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
        {
          v27 = *(a1 + 32);
          v28 = v26;
          v29 = [v27 logDescription];
          *buf = 138543618;
          v34 = v29;
          v35 = 2114;
          v36 = v8;
          _os_log_impl(&dword_21E77E000, v28, OS_LOG_TYPE_DEFAULT, "%{public}@ Higher section %{public}@ not exist; Skip checking.", buf, 0x16u);
        }
      }
    }
  }
}

- (void)_regroupAllNotificationGroups
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D77DD0];
  if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    v5 = [(NCNotificationRootList *)self logDescription];
    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&dword_21E77E000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ regrouping all expanded notification groups", &v7, 0xCu);
  }

  v6 = [(NCNotificationRootList *)self notificationSections];
  [v6 enumerateObjectsUsingBlock:&__block_literal_global_184];
}

- (id)_visibleNotificationRequests
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = [(NCNotificationRootList *)self notificationSections];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __54__NCNotificationRootList__visibleNotificationRequests__block_invoke;
  v9[3] = &unk_2783701D0;
  v9[4] = self;
  v5 = v3;
  v10 = v5;
  [v4 enumerateObjectsUsingBlock:v9];

  v6 = v10;
  v7 = v5;

  return v5;
}

void __54__NCNotificationRootList__visibleNotificationRequests__block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v8 = a2;
  v5 = [*(a1 + 32) _indexForReveal];
  if (v5 - [*(*(a1 + 32) + 120) count] > a3 || objc_msgSend(*(a1 + 32), "isNotificationHistoryRevealed"))
  {
    v6 = *(a1 + 40);
    v7 = [v8 allNotificationRequests];
    [v6 addObjectsFromArray:v7];
  }
}

- (unint64_t)incomingCount
{
  v2 = [(NCNotificationRootList *)self incomingSectionList];
  v3 = [v2 notificationCount];

  return v3;
}

- (unint64_t)historyCount
{
  v2 = [(NCNotificationRootList *)self historySectionList];
  v3 = [v2 notificationCount];

  return v3;
}

- (void)setOverrideMigrationToHistory:(BOOL)a3
{
  if (self->_overrideMigrationToHistory != a3)
  {
    v4 = a3;
    self->_overrideMigrationToHistory = a3;
    v5 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [v5 setBool:v4 forKey:@"NCOverrideNotificationMigrationToHistory"];
  }
}

- (void)setCurrentListDisplayStyleSetting:(int64_t)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  self->_currentListDisplayStyleSetting = v4;

  MEMORY[0x2821F96F8](v4);
}

- (BOOL)_isCurrentListDisplayStyleSettingEqualTo:(int64_t)a3
{
  currentListDisplayStyleSetting = self->_currentListDisplayStyleSetting;
  if (currentListDisplayStyleSetting)
  {
    LOBYTE(currentListDisplayStyleSetting) = [(NSNumber *)currentListDisplayStyleSetting integerValue]== a3;
  }

  return currentListDisplayStyleSetting;
}

- (void)_updateSystemSettingsForUpdatedNotificationListDisplayStyleSetting:(int64_t)a3
{
  v8 = [(NCNotificationRootList *)self delegate];
  if (v8 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v5 = [v8 notificationSystemSettingsForNotificationListComponent:self];
    v6 = v5;
    if (v5 && [v5 listDisplayStyleSetting] != a3)
    {
      v7 = [v6 mutableCopy];
      [v7 setListDisplayStyleSetting:a3];
      if (objc_opt_respondsToSelector())
      {
        [v8 notificationListComponent:self setNotificationSystemSettings:v7];
      }
    }
  }

  else
  {
    v6 = 0;
  }
}

- (void)_updateNotificationListDisplayStyleSetting
{
  v31[5] = *MEMORY[0x277D85DE8];
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = [(NCNotificationRootList *)self currentListDisplayStyleSetting];
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__0;
  v17 = __Block_byref_object_dispose__0;
  v18 = 0;
  v31[0] = @"NCNotificationListDisplayStyleReasonOverrideLandscapeOrientation";
  v31[1] = @"NCNotificationListDisplayStyleSettingOverrideReasonSleep";
  v31[2] = @"NCNotificationListDisplayStyleReasonOverridePersistHidden";
  v31[3] = @"NCNotificationListDisplayStyleReasonOverrideDeviceLocked";
  v31[4] = @"NCNotificationListDisplayStyleReasonSystemSetting";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:5];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __68__NCNotificationRootList__updateNotificationListDisplayStyleSetting__block_invoke;
  v12[3] = &unk_278370338;
  v12[4] = self;
  v12[5] = &v19;
  v12[6] = &v13;
  [v3 enumerateObjectsUsingBlock:v12];
  if (![(NCNotificationRootList *)self _isCurrentListDisplayStyleSettingEqualTo:v20[3]])
  {
    v4 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [(NCNotificationRootList *)self logDescription];
      v6 = [MEMORY[0x277D77E68] stringForNotificationListDisplayStyleSetting:v20[3]];
      v7 = [MEMORY[0x277D77E68] stringForNotificationListDisplayStyleSetting:{-[NCNotificationRootList currentListDisplayStyleSetting](self, "currentListDisplayStyleSetting")}];
      v8 = v14[5];
      *buf = 138544130;
      v24 = v5;
      v25 = 2114;
      v26 = v6;
      v27 = 2114;
      v28 = v7;
      v29 = 2114;
      v30 = v8;
      _os_log_impl(&dword_21E77E000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ setting current list display setting to %{public}@ from %{public}@ for reason %{public}@", buf, 0x2Au);
    }

    [(NCNotificationRootList *)self setCurrentListDisplayStyleSetting:v20[3]];
  }

  v9 = [(NCNotificationRootList *)self currentListDisplayStyleSettingReason];
  v10 = [v9 isEqualToString:@"NCNotificationListDisplayStyleSettingOverrideReasonSleep"];

  v11 = [v14[5] isEqualToString:@"NCNotificationListDisplayStyleSettingOverrideReasonSleep"];
  [(NCNotificationRootList *)self setCurrentListDisplayStyleSettingReason:v14[5]];
  if ((v10 | v11))
  {
    [(NCNotificationRootList *)self _displayStyleDidChangeForSleep];
  }

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v19, 8);
}

void __68__NCNotificationRootList__updateNotificationListDisplayStyleSetting__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v7 = [*(a1 + 32) notificationListDisplayStyleSettingsForReason];
  v8 = [v7 objectForKey:v9];

  if (v8)
  {
    *(*(*(a1 + 40) + 8) + 24) = [v8 unsignedIntegerValue];
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (id)_insertNotificationRequest:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(NCNotificationRootList *)self _sectionForInsertingNotificationRequest:v4];
  v6 = MEMORY[0x277CBEB58];
  v7 = [(NCNotificationRootList *)self _notificationSectionListsForEnumeration];
  v8 = [v6 setWithSet:v7];

  if (self->_upcomingDigestSectionList)
  {
    [v8 addObject:?];
  }

  if (self->_currentDigestSectionList)
  {
    v9 = [(NCNotificationRootList *)self _sectionListsThatSuppressDigest];
    v10 = [v5 sectionType];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v11 = v9;
    v12 = [v11 countByEnumeratingWithState:&v29 objects:v37 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v30;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v30 != v14)
          {
            objc_enumerationMutation(v11);
          }

          if ([*(*(&v29 + 1) + 8 * i) sectionType] == v10)
          {

            v16 = *MEMORY[0x277D77DD0];
            if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
            {
              v17 = v16;
              v18 = [(NCNotificationRootList *)self logDescription];
              v19 = [v4 notificationIdentifier];
              v20 = [v19 un_logDigest];
              *buf = 138543618;
              v34 = v18;
              v35 = 2114;
              v36 = v20;
              _os_log_impl(&dword_21E77E000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@ Moving digest for inserted notification %{public}@", buf, 0x16u);
            }

            v21 = [(NCNotificationRootList *)self currentDigestSectionList];
            [v21 collapseSummarizedSectionList];

            [(NCNotificationRootList *)self _migrateCurrentDigestSectionListToReadSection];
            goto LABEL_16;
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v29 objects:v37 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

LABEL_16:
    if (self->_currentDigestSectionList)
    {
      [v8 addObject:?];
    }
  }

  if (self->_upcomingMissedSectionList)
  {
    [v8 addObject:?];
  }

  if (v5)
  {
    [v8 removeObject:v5];
  }

  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __53__NCNotificationRootList__insertNotificationRequest___block_invoke;
  v27[3] = &unk_278370268;
  v22 = v4;
  v28 = v22;
  [v8 enumerateObjectsUsingBlock:v27];
  if (v5)
  {
    v23 = [v5 insertNotificationRequest:v22];
  }

  else
  {
    v23 = 1;
  }

  [(NCNotificationRootList *)self _updateForceExpansionForHighlights];
  v24 = +[NCNotificationEventTracker sharedInstance];
  [v24 insertedNotificationRequest:v22 toSectionType:{objc_msgSend(v5, "sectionType")}];

  [(NCNotificationRootList *)self _elevateGroupInOtherSectionsIfNeededWithRequest:v22 toSection:v5];
  v25 = objc_alloc_init(NCNotificationRootListInsertionResult);
  [(NCNotificationRootListInsertionResult *)v25 setUpdate:v23];
  [(NCNotificationRootListInsertionResult *)v25 setSection:v5];

  return v25;
}

- (void)_migrateNotificationsFromList:(id)a3 toList:(id)a4 passingTest:(id)a5 filterRequestsPassingTest:(id)a6 hideToList:(BOOL)a7 clearRequests:(BOOL)a8 filterForDestination:(BOOL)a9 animateRemoval:(BOOL)a10 reorderGroupNotifications:(BOOL)a11
{
  v11 = a8;
  v12 = a7;
  v17 = a10;
  v44 = *MEMORY[0x277D85DE8];
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v22 = *MEMORY[0x277D77DD0];
  if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
  {
    v23 = v22;
    [(NCNotificationRootList *)self logDescription];
    v24 = v35 = v12;
    [v18 logDescription];
    v25 = v11;
    v26 = v21;
    v28 = v27 = v20;
    v29 = [v19 logDescription];
    *buf = 138543874;
    v39 = v24;
    v40 = 2114;
    v41 = v28;
    v42 = 2114;
    v43 = v29;
    _os_log_impl(&dword_21E77E000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@ migrating notification requests from %{public}@ to %{public}@", buf, 0x20u);

    v20 = v27;
    v21 = v26;
    v11 = v25;
    v17 = a10;

    v12 = v35;
  }

  v30 = [v18 removeNotificationGroupListsForMigrationPassingTest:v20 filterRequestsPassingTest:v21 animate:v17];
  v31 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v32 = v31;
  if (v11)
  {
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __188__NCNotificationRootList__migrateNotificationsFromList_toList_passingTest_filterRequestsPassingTest_hideToList_clearRequests_filterForDestination_animateRemoval_reorderGroupNotifications___block_invoke;
    v36[3] = &unk_278370360;
    v37 = v31;
    [v30 enumerateObjectsUsingBlock:v36];
  }

  if (a9)
  {
    v33 = [(NCNotificationRootList *)self _filterNotificationsInGroupLists:v30 withDestinationsForSectionList:v19];

    v30 = v33;
  }

  if ([v30 count])
  {
    [(NCNotificationRootList *)self _regroupAllNotificationGroups];
  }

  if ([v30 count])
  {
    if (v12)
    {
      [(NCNotificationRootList *)self _setRevealed:0 forSection:v19];
      if (![v19 sectionType])
      {
        [(NCNotificationRootList *)self _scrollToSystemPreferredPageTypeIfPossible];
      }
    }
  }

  [v19 mergeNotificationGroups:v30 reorderGroupNotifications:a11];
  if ([v32 count])
  {
    v34 = [(NCNotificationRootList *)self delegate];
    [v34 notificationRootList:self requestsClearingFromIncomingSectionNotificationRequests:v32];

    if ([v18 sectionType] == 2 && !objc_msgSend(v19, "sectionType"))
    {
      [v32 enumerateObjectsUsingBlock:&__block_literal_global_192];
    }
  }
}

void __188__NCNotificationRootList__migrateNotificationsFromList_toList_passingTest_filterRequestsPassingTest_hideToList_clearRequests_filterForDestination_animateRemoval_reorderGroupNotifications___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 allNotificationRequests];
  [v2 addObjectsFromArray:v3];
}

void __188__NCNotificationRootList__migrateNotificationsFromList_toList_passingTest_filterRequestsPassingTest_hideToList_clearRequests_filterForDestination_animateRemoval_reorderGroupNotifications___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[NCNotificationEventTracker sharedInstance];
  [v3 hideNotificationRequest:v2];
}

- (id)_filterNotificationsInGroupLists:(id)a3 withDestinationsForSectionList:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v20 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = v6;
  v8 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v8)
  {
    v9 = v8;
    v21 = *v27;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v27 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v26 + 1) + 8 * i);
        v12 = [v11 allNotificationRequests];
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v13 = [v12 countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v23;
          do
          {
            for (j = 0; j != v14; ++j)
            {
              if (*v23 != v15)
              {
                objc_enumerationMutation(v12);
              }

              v17 = *(*(&v22 + 1) + 8 * j);
              if (![(NCNotificationRootList *)self _isNotificationRequest:v17 forSectionList:v7])
              {
                [v11 removeNotificationRequest:v17];
              }
            }

            v14 = [v12 countByEnumeratingWithState:&v22 objects:v30 count:16];
          }

          while (v14);
        }

        if ([v11 count])
        {
          [v20 addObject:v11];
        }
      }

      v9 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v9);
  }

  return v20;
}

- (void)_scheduleNotificationRequestsForMigrationFromIncomingListPassingTest:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MEMORY[0x277D77DD0];
  v6 = *MEMORY[0x277D77DD0];
  if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8 = [(NCNotificationRootList *)self logDescription];
    *buf = 138543362;
    v26 = v8;
    _os_log_impl(&dword_21E77E000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ scheduling migration for incoming list.", buf, 0xCu);
  }

  v9 = [(NCNotificationRootList *)self incomingSectionList];
  v10 = [v9 allNotificationRequests];

  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __95__NCNotificationRootList__scheduleNotificationRequestsForMigrationFromIncomingListPassingTest___block_invoke;
  v22[3] = &unk_2783703A8;
  v12 = v4;
  v24 = v12;
  v22[4] = self;
  v13 = v11;
  v23 = v13;
  [v10 enumerateObjectsUsingBlock:v22];
  v14 = 3600.0;
  if (os_variant_has_internal_content())
  {
    [(NCNotificationRootList *)self overrideNotificationMigrateTimeSensitiveToHistoryTimeIntervalKey];
    if (v15 > 0.0)
    {
      v16 = *v5;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = v16;
        v18 = [(NCNotificationRootList *)self logDescription];
        [(NCNotificationRootList *)self overrideNotificationMigrateTimeSensitiveToHistoryTimeIntervalKey];
        *buf = 138543618;
        v26 = v18;
        v27 = 2050;
        v28 = v19;
        _os_log_impl(&dword_21E77E000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@ Found override value for TimeSensitive migrate timeInterval %{public}.2f.", buf, 0x16u);
      }

      [(NCNotificationRootList *)self overrideNotificationMigrateTimeSensitiveToHistoryTimeIntervalKey];
      v14 = v20;
    }
  }

  v21 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:v14];
  [(NCNotificationListMigrationScheduler *)self->_migrationScheduler addMigrationForNotificationRequests:v13 forDate:v21];
}

void __95__NCNotificationRootList__scheduleNotificationRequestsForMigrationFromIncomingListPassingTest___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 48);
  if (!v4 || (*(v4 + 16))(v4, v3))
  {
    v5 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v7 = v5;
      v8 = [v6 logDescription];
      v9 = [v3 notificationIdentifier];
      v10 = [v9 un_logDigest];
      v11 = 138543618;
      v12 = v8;
      v13 = 2114;
      v14 = v10;
      _os_log_impl(&dword_21E77E000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ schedule request %{public}@ for incoming to history migration.", &v11, 0x16u);
    }

    [*(a1 + 40) addObject:v3];
  }
}

- (void)_scheduleAllNotificationRequestsForMigrationFromHighlightList
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = [(NCNotificationRootList *)self highlightedSectionList];
  if (v3)
  {
    v4 = v3;
    v5 = [(NCNotificationRootList *)self highlightedSectionList];
    v6 = [v5 notificationCount];

    if (v6)
    {
      v7 = MEMORY[0x277D77DD0];
      v8 = *MEMORY[0x277D77DD0];
      if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
      {
        v9 = v8;
        v10 = [(NCNotificationRootList *)self logDescription];
        v21 = 138543362;
        v22 = v10;
        _os_log_impl(&dword_21E77E000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ scheduling migration for all notifications in highlight list.", &v21, 0xCu);
      }

      v11 = [(NCNotificationRootList *)self highlightedSectionList];
      v12 = [v11 allNotificationRequests];

      v13 = 900.0;
      if (os_variant_has_internal_content())
      {
        [(NCNotificationRootList *)self overrideNotificationMigrateHighlightToHistoryTimeIntervalKey];
        if (v14 > 0.0)
        {
          v15 = *v7;
          if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
          {
            v16 = v15;
            v17 = [(NCNotificationRootList *)self logDescription];
            [(NCNotificationRootList *)self overrideNotificationMigrateHighlightToHistoryTimeIntervalKey];
            v21 = 138543618;
            v22 = v17;
            v23 = 2050;
            v24 = v18;
            _os_log_impl(&dword_21E77E000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ Found override value for Highlight migrate timeInterval %{public}.2f.", &v21, 0x16u);
          }

          [(NCNotificationRootList *)self overrideNotificationMigrateHighlightToHistoryTimeIntervalKey];
          v13 = v19;
        }
      }

      v20 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:v13];
      [(NCNotificationListMigrationScheduler *)self->_migrationScheduler addMigrationForNotificationRequests:v12 forDate:v20];
    }
  }
}

- (void)_scheduleNotificationDigestMigrationIfNecessary
{
  if ([(NCNotificationRootList *)self _isCurrentDigestListAboveHistorySectionList]&& ![(NCNotificationRootList *)self isOnboardingSummaryVisible])
  {
    v3 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:1800.0];
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [(NCNotificationListMigrationScheduler *)self->_migrationScheduler setMigrationDateForNotificationDigest:v3];
}

id __62__NCNotificationRootList__performDeferredMigrationIfNecessary__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 notificationIdentifier];
  v3 = [v2 un_logDigest];

  return v3;
}

- (BOOL)_isEligibleForStackElevationMigrationWithGroupList:(id)a3 areGenerativeModelsAvailable:(BOOL)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = v6;
  if (!a4)
  {
    v9 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
    {
      v10 = v9;
      v11 = [(NCNotificationRootList *)self logDescription];
      v15 = 138543362;
      v16 = v11;
      _os_log_impl(&dword_21E77E000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ generative models are not available", &v15, 0xCu);
LABEL_8:
    }

LABEL_9:
    v8 = 0;
    goto LABEL_10;
  }

  if (([v6 isEligibleForStackElevationMigration] & 1) == 0)
  {
    v12 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
    {
      v10 = v12;
      v11 = [(NCNotificationRootList *)self logDescription];
      v13 = [v7 logDescription];
      v15 = 138543618;
      v16 = v11;
      v17 = 2114;
      v18 = v13;
      _os_log_impl(&dword_21E77E000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ thread %{public}@ is not is not eligible for stack elevation", &v15, 0x16u);

      goto LABEL_8;
    }

    goto LABEL_9;
  }

  v8 = 1;
LABEL_10:

  return v8;
}

- (void)_migrateNonActiveHighlightNotificationRequestsFromHighlightToIncomingSection:(id)a3
{
  v4 = a3;
  v5 = [(NCNotificationRootList *)self highlightedSectionList];

  if (v5)
  {
    if (_NCStackElevation())
    {
      v6 = +[NCPlatformEligibility areGenerativeModelsAvailable];
      v7 = [(NCNotificationRootList *)self highlightedSectionList];
      v8 = [(NCNotificationRootList *)self incomingSectionList];
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __103__NCNotificationRootList__migrateNonActiveHighlightNotificationRequestsFromHighlightToIncomingSection___block_invoke;
      v26[3] = &unk_2783703D0;
      v26[4] = self;
      v28 = v6;
      v9 = v4;
      v27 = v9;
      BYTE2(v15) = 0;
      LOWORD(v15) = 0;
      [NCNotificationRootList _migrateNotificationsFromList:"_migrateNotificationsFromList:toList:passingTest:filterRequestsPassingTest:hideToList:clearRequests:filterForDestination:animateRemoval:reorderGroupNotifications:" toList:v7 passingTest:v8 filterRequestsPassingTest:v26 hideToList:0 clearRequests:0 filterForDestination:0 animateRemoval:v15 reorderGroupNotifications:?];

      v10 = [(NCNotificationRootList *)self highlightedSectionList];
      v11 = [(NCNotificationRootList *)self incomingSectionList];
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __103__NCNotificationRootList__migrateNonActiveHighlightNotificationRequestsFromHighlightToIncomingSection___block_invoke_196;
      v24[3] = &unk_278370000;
      v24[4] = self;
      v25 = v6;
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __103__NCNotificationRootList__migrateNonActiveHighlightNotificationRequestsFromHighlightToIncomingSection___block_invoke_197;
      v21[3] = &unk_2783703F8;
      v22 = v9;
      v23 = self;
      BYTE2(v16) = 0;
      LOWORD(v16) = 0;
      [NCNotificationRootList _migrateNotificationsFromList:"_migrateNotificationsFromList:toList:passingTest:filterRequestsPassingTest:hideToList:clearRequests:filterForDestination:animateRemoval:reorderGroupNotifications:" toList:v10 passingTest:v11 filterRequestsPassingTest:v24 hideToList:v21 clearRequests:0 filterForDestination:0 animateRemoval:v16 reorderGroupNotifications:?];

      v12 = v27;
    }

    else
    {
      v13 = [(NCNotificationRootList *)self highlightedSectionList];
      v14 = [(NCNotificationRootList *)self incomingSectionList];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __103__NCNotificationRootList__migrateNonActiveHighlightNotificationRequestsFromHighlightToIncomingSection___block_invoke_198;
      v19[3] = &unk_2783701A8;
      v20 = v4;
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __103__NCNotificationRootList__migrateNonActiveHighlightNotificationRequestsFromHighlightToIncomingSection___block_invoke_3;
      v17[3] = &unk_27836FFD8;
      v18 = v20;
      BYTE2(v15) = 0;
      LOWORD(v15) = 0;
      [NCNotificationRootList _migrateNotificationsFromList:"_migrateNotificationsFromList:toList:passingTest:filterRequestsPassingTest:hideToList:clearRequests:filterForDestination:animateRemoval:reorderGroupNotifications:" toList:v13 passingTest:v14 filterRequestsPassingTest:v19 hideToList:v17 clearRequests:0 filterForDestination:0 animateRemoval:v15 reorderGroupNotifications:?];

      v12 = v20;
    }
  }
}

BOOL __103__NCNotificationRootList__migrateNonActiveHighlightNotificationRequestsFromHighlightToIncomingSection___block_invoke(uint64_t a1, void *a2)
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([*(a1 + 32) _isEligibleForStackElevationMigrationWithGroupList:v3 areGenerativeModelsAvailable:*(a1 + 48)])
  {
    v4 = [v3 leadingNotificationRequest];
    v5 = *(a1 + 40);
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __103__NCNotificationRootList__migrateNonActiveHighlightNotificationRequestsFromHighlightToIncomingSection___block_invoke_195;
    v28[3] = &unk_278370180;
    v6 = v4;
    v29 = v6;
    v7 = [v5 indexOfObjectPassingTest:v28];
    v8 = *MEMORY[0x277D77DD0];
    v9 = os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT);
    v10 = v7 == 0x7FFFFFFFFFFFFFFFLL;
    v11 = v7 != 0x7FFFFFFFFFFFFFFFLL;
    if (v10)
    {
      if (v9)
      {
        v21 = *(a1 + 32);
        v22 = v8;
        v23 = [v21 logDescription];
        v24 = [v6 notificationIdentifier];
        v25 = [v24 un_logDigest];
        v26 = [v3 logDescription];
        *buf = 138543874;
        v31 = v23;
        v32 = 2114;
        v33 = v25;
        v34 = 2114;
        v35 = v26;
        _os_log_impl(&dword_21E77E000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@ leading notification %{public}@ in the thread %{public}@ is not within the target requests we want to migrate this time; Skip migration from highlight to incoming.", buf, 0x20u);
      }
    }

    else if (v9)
    {
      v12 = *(a1 + 32);
      v13 = v8;
      v14 = [v12 logDescription];
      v15 = [v3 logDescription];
      *buf = 138543618;
      v31 = v14;
      v32 = 2114;
      v33 = v15;
      _os_log_impl(&dword_21E77E000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ migrate thread %{public}@ from highlight to incoming.", buf, 0x16u);
    }
  }

  else
  {
    v16 = *MEMORY[0x277D77DD0];
    v11 = 0;
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(a1 + 32);
      v18 = v16;
      v19 = [v17 logDescription];
      v20 = [v3 logDescription];
      *buf = 138543618;
      v31 = v19;
      v32 = 2114;
      v33 = v20;
      _os_log_impl(&dword_21E77E000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@ thread %{public}@ is not eligible for stack elevation migration; skip group migration from highlight to incoming.", buf, 0x16u);

      v11 = 0;
    }
  }

  return v11;
}

uint64_t __103__NCNotificationRootList__migrateNonActiveHighlightNotificationRequestsFromHighlightToIncomingSection___block_invoke_196(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) _isEligibleForStackElevationMigrationWithGroupList:v3 areGenerativeModelsAvailable:*(a1 + 40)];
  v5 = *MEMORY[0x277D77DD0];
  v6 = os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      v7 = *(a1 + 32);
      v8 = v5;
      v9 = [v7 logDescription];
      v10 = [v3 logDescription];
      v14 = 138543618;
      v15 = v9;
      v16 = 2114;
      v17 = v10;
      v11 = "%{public}@ thread %{public}@ eligible for stack elevation migration; skip migrating individually from highlight to incoming";
LABEL_6:
      _os_log_impl(&dword_21E77E000, v8, OS_LOG_TYPE_DEFAULT, v11, &v14, 0x16u);
    }
  }

  else if (v6)
  {
    v12 = *(a1 + 32);
    v8 = v5;
    v9 = [v12 logDescription];
    v10 = [v3 logDescription];
    v14 = 138543618;
    v15 = v9;
    v16 = 2114;
    v17 = v10;
    v11 = "%{public}@ thread %{public}@ is not eligible for stack elevation migration; migrate individually from highlight to incoming.";
    goto LABEL_6;
  }

  return v4 ^ 1u;
}

BOOL __103__NCNotificationRootList__migrateNonActiveHighlightNotificationRequestsFromHighlightToIncomingSection___block_invoke_197(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __103__NCNotificationRootList__migrateNonActiveHighlightNotificationRequestsFromHighlightToIncomingSection___block_invoke_2;
  v14[3] = &unk_278370180;
  v5 = v3;
  v15 = v5;
  v6 = [v4 indexOfObjectPassingTest:v14];
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 40);
      v9 = v7;
      v10 = [v8 logDescription];
      v11 = [v5 notificationIdentifier];
      v12 = [v11 un_logDigest];
      *buf = 138543618;
      v17 = v10;
      v18 = 2114;
      v19 = v12;
      _os_log_impl(&dword_21E77E000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ migrate request %{public}@ from highlight to incoming.", buf, 0x16u);
    }
  }

  return v6 == 0x7FFFFFFFFFFFFFFFLL;
}

BOOL __103__NCNotificationRootList__migrateNonActiveHighlightNotificationRequestsFromHighlightToIncomingSection___block_invoke_198(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __103__NCNotificationRootList__migrateNonActiveHighlightNotificationRequestsFromHighlightToIncomingSection___block_invoke_2_199;
  v8[3] = &unk_278370180;
  v9 = v3;
  v5 = v3;
  v6 = [v4 indexOfObjectPassingTest:v8] != 0x7FFFFFFFFFFFFFFFLL;

  return v6;
}

uint64_t __103__NCNotificationRootList__migrateNonActiveHighlightNotificationRequestsFromHighlightToIncomingSection___block_invoke_2_199(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) sectionIdentifier];
  v5 = [v3 sectionIdentifier];
  if ([v4 isEqualToString:v5])
  {
    v6 = [*(a1 + 32) threadIdentifier];
    v7 = [v3 threadIdentifier];
    v8 = [v6 isEqualToString:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

BOOL __103__NCNotificationRootList__migrateNonActiveHighlightNotificationRequestsFromHighlightToIncomingSection___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __103__NCNotificationRootList__migrateNonActiveHighlightNotificationRequestsFromHighlightToIncomingSection___block_invoke_4;
  v8[3] = &unk_278370180;
  v9 = v3;
  v5 = v3;
  v6 = [v4 indexOfObjectPassingTest:v8] == 0x7FFFFFFFFFFFFFFFLL;

  return v6;
}

- (void)_migrateOnScheduleNotificationRequestsFromIncomingSectionToHistorySection:(id)a3
{
  v4 = a3;
  v6 = [(NCNotificationRootList *)self incomingSectionList];
  v5 = [(NCNotificationRootList *)self historySectionList];
  [(NCNotificationRootList *)self _migrateOnScheduleNotificationRequests:v4 fromSection:v6 toSection:v5 clearRequests:1 filterForDestination:1 animateRemoval:0];
}

- (void)_migrateOnScheduleNotificationRequests:(id)a3 fromSection:(id)a4 toSection:(id)a5 clearRequests:(BOOL)a6 filterForDestination:(BOOL)a7 animateRemoval:(BOOL)a8
{
  v10 = a6;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  if (_NCStackElevation())
  {
    v17 = +[NCPlatformEligibility areGenerativeModelsAvailable];
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __137__NCNotificationRootList__migrateOnScheduleNotificationRequests_fromSection_toSection_clearRequests_filterForDestination_animateRemoval___block_invoke;
    v41[3] = &unk_278370420;
    v41[4] = self;
    v45 = v17;
    v18 = v14;
    v42 = v18;
    v26 = v14;
    v19 = v15;
    v43 = v19;
    v20 = v16;
    v44 = v20;
    BYTE2(v24) = 0;
    BYTE1(v24) = a8;
    LOBYTE(v24) = a7;
    [NCNotificationRootList _migrateNotificationsFromList:"_migrateNotificationsFromList:toList:passingTest:filterRequestsPassingTest:hideToList:clearRequests:filterForDestination:animateRemoval:reorderGroupNotifications:" toList:v19 passingTest:v20 filterRequestsPassingTest:v41 hideToList:0 clearRequests:1 filterForDestination:v10 animateRemoval:v24 reorderGroupNotifications:?];
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __137__NCNotificationRootList__migrateOnScheduleNotificationRequests_fromSection_toSection_clearRequests_filterForDestination_animateRemoval___block_invoke_201;
    v39[3] = &unk_278370000;
    v39[4] = self;
    v40 = v17;
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __137__NCNotificationRootList__migrateOnScheduleNotificationRequests_fromSection_toSection_clearRequests_filterForDestination_animateRemoval___block_invoke_202;
    v34[3] = &unk_278370448;
    v35 = v18;
    v36 = self;
    v37 = v19;
    v38 = v20;
    v21 = v20;
    v22 = v19;
    v14 = v26;
    *(&v25 + 1) = a8;
    LOBYTE(v25) = a7;
    [NCNotificationRootList _migrateNotificationsFromList:"_migrateNotificationsFromList:toList:passingTest:filterRequestsPassingTest:hideToList:clearRequests:filterForDestination:animateRemoval:reorderGroupNotifications:" toList:v22 passingTest:v21 filterRequestsPassingTest:v39 hideToList:v34 clearRequests:1 filterForDestination:v10 animateRemoval:v25 reorderGroupNotifications:?];

    v23 = v42;
  }

  else
  {
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __137__NCNotificationRootList__migrateOnScheduleNotificationRequests_fromSection_toSection_clearRequests_filterForDestination_animateRemoval___block_invoke_203;
    v32[3] = &unk_2783701A8;
    v33 = v14;
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __137__NCNotificationRootList__migrateOnScheduleNotificationRequests_fromSection_toSection_clearRequests_filterForDestination_animateRemoval___block_invoke_3;
    v27[3] = &unk_278370448;
    v28 = v33;
    v29 = self;
    v30 = v15;
    v31 = v16;
    BYTE2(v24) = 0;
    BYTE1(v24) = a8;
    LOBYTE(v24) = a7;
    [NCNotificationRootList _migrateNotificationsFromList:"_migrateNotificationsFromList:toList:passingTest:filterRequestsPassingTest:hideToList:clearRequests:filterForDestination:animateRemoval:reorderGroupNotifications:" toList:v15 passingTest:v16 filterRequestsPassingTest:v32 hideToList:v27 clearRequests:1 filterForDestination:v10 animateRemoval:v24 reorderGroupNotifications:?];

    v23 = v33;
  }
}

uint64_t __137__NCNotificationRootList__migrateOnScheduleNotificationRequests_fromSection_toSection_clearRequests_filterForDestination_animateRemoval___block_invoke(uint64_t a1, void *a2)
{
  v46 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([*(a1 + 32) _isEligibleForStackElevationMigrationWithGroupList:v3 areGenerativeModelsAvailable:*(a1 + 64)])
  {
    v4 = [v3 leadingNotificationRequest];
    v5 = *(a1 + 40);
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __137__NCNotificationRootList__migrateOnScheduleNotificationRequests_fromSection_toSection_clearRequests_filterForDestination_animateRemoval___block_invoke_200;
    v34[3] = &unk_278370180;
    v6 = v4;
    v35 = v6;
    if ([v5 indexOfObjectPassingTest:v34] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = *MEMORY[0x277D77DD0];
      if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1 + 32);
        v9 = v7;
        v10 = [v8 logDescription];
        v11 = [v6 notificationIdentifier];
        v12 = [v11 un_logDigest];
        v13 = [v3 logDescription];
        v14 = NCNotificationListSectionTypeString([*(a1 + 48) sectionType]);
        v15 = NCNotificationListSectionTypeString([*(a1 + 56) sectionType]);
        *buf = 138544386;
        v37 = v10;
        v38 = 2114;
        v39 = v12;
        v40 = 2114;
        v41 = v13;
        v42 = 2114;
        v43 = v14;
        v44 = 2114;
        v45 = v15;
        _os_log_impl(&dword_21E77E000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ leading notification %{public}@ in the thread %{public}@ is not within the target requests we want to migrate this time; skip migration from %{public}@ to %{public}@.", buf, 0x34u);

LABEL_10:
      }
    }

    else
    {
      v22 = [v3 containsPersistentNotificationRequests];
      v23 = *MEMORY[0x277D77DD0];
      v24 = os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT);
      if (!v22)
      {
        if (v24)
        {
          v27 = *(a1 + 32);
          v28 = v23;
          v29 = [v27 logDescription];
          v30 = [v3 logDescription];
          v31 = NCNotificationListSectionTypeString([*(a1 + 48) sectionType]);
          v32 = NCNotificationListSectionTypeString([*(a1 + 56) sectionType]);
          *buf = 138544130;
          v37 = v29;
          v38 = 2114;
          v39 = v30;
          v40 = 2114;
          v41 = v31;
          v42 = 2114;
          v43 = v32;
          _os_log_impl(&dword_21E77E000, v28, OS_LOG_TYPE_DEFAULT, "%{public}@ migrate thread %{public}@ from %{public}@ to %{public}@.", buf, 0x2Au);
        }

        v17 = 1;
        goto LABEL_15;
      }

      if (v24)
      {
        v25 = *(a1 + 32);
        v9 = v23;
        v10 = [v25 logDescription];
        v12 = [v3 logDescription];
        v13 = NCNotificationListSectionTypeString([*(a1 + 48) sectionType]);
        v26 = NCNotificationListSectionTypeString([*(a1 + 56) sectionType]);
        *buf = 138544130;
        v37 = v10;
        v38 = 2114;
        v39 = v12;
        v40 = 2114;
        v41 = v13;
        v42 = 2114;
        v43 = v26;
        _os_log_impl(&dword_21E77E000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ found persistent notification in thread %{public}@; skip migration from %{public}@ to %{public}@.", buf, 0x2Au);

        goto LABEL_10;
      }
    }

    v17 = 0;
LABEL_15:

    goto LABEL_16;
  }

  v16 = *MEMORY[0x277D77DD0];
  v17 = 0;
  if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
  {
    v18 = *(a1 + 32);
    v19 = v16;
    v20 = [v18 logDescription];
    v21 = [v3 logDescription];
    *buf = 138543618;
    v37 = v20;
    v38 = 2114;
    v39 = v21;
    _os_log_impl(&dword_21E77E000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@ thread %{public}@ is not eligible for stack elevation migration; skip group migration from incoming to history.", buf, 0x16u);

    v17 = 0;
  }

LABEL_16:

  return v17;
}

uint64_t __137__NCNotificationRootList__migrateOnScheduleNotificationRequests_fromSection_toSection_clearRequests_filterForDestination_animateRemoval___block_invoke_201(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) _isEligibleForStackElevationMigrationWithGroupList:v3 areGenerativeModelsAvailable:*(a1 + 40)];
  v5 = *MEMORY[0x277D77DD0];
  v6 = os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      v7 = *(a1 + 32);
      v8 = v5;
      v9 = [v7 logDescription];
      v10 = [v3 logDescription];
      v14 = 138543618;
      v15 = v9;
      v16 = 2114;
      v17 = v10;
      v11 = "%{public}@ thread %{public}@ eligible for stack elevation migration; skip migrating individually from incoming to history";
LABEL_6:
      _os_log_impl(&dword_21E77E000, v8, OS_LOG_TYPE_DEFAULT, v11, &v14, 0x16u);
    }
  }

  else if (v6)
  {
    v12 = *(a1 + 32);
    v8 = v5;
    v9 = [v12 logDescription];
    v10 = [v3 logDescription];
    v14 = 138543618;
    v15 = v9;
    v16 = 2114;
    v17 = v10;
    v11 = "%{public}@ thread %{public}@ is not eligible for stack elevation migration; migrate individually from incoming to history.";
    goto LABEL_6;
  }

  return v4 ^ 1u;
}

BOOL __137__NCNotificationRootList__migrateOnScheduleNotificationRequests_fromSection_toSection_clearRequests_filterForDestination_animateRemoval___block_invoke_202(uint64_t a1, void *a2)
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __137__NCNotificationRootList__migrateOnScheduleNotificationRequests_fromSection_toSection_clearRequests_filterForDestination_animateRemoval___block_invoke_2;
  v28[3] = &unk_278370180;
  v5 = v3;
  v29 = v5;
  v6 = [v4 indexOfObjectPassingTest:v28];
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [*(a1 + 32) objectAtIndexedSubscript:v6];
    v9 = [v8 options];
    v10 = [v9 lockScreenPersistence];
    v7 = v10 != 0;

    v11 = *MEMORY[0x277D77DD0];
    v12 = os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT);
    if (v10)
    {
      if (v12)
      {
        v13 = *(a1 + 40);
        log = v11;
        v14 = [v13 logDescription];
        v15 = [v8 notificationIdentifier];
        v16 = [v15 un_logDigest];
        v17 = [v8 options];
        v18 = [v17 lockScreenPersistence];
        v19 = NCNotificationListSectionTypeString([*(a1 + 48) sectionType]);
        v20 = NCNotificationListSectionTypeString([*(a1 + 56) sectionType]);
        *buf = 138544386;
        v31 = v14;
        v32 = 2114;
        v33 = v16;
        v34 = 2048;
        v35 = v18;
        v36 = 2114;
        v37 = v19;
        v38 = 2114;
        v39 = v20;
        v21 = log;
        _os_log_impl(&dword_21E77E000, log, OS_LOG_TYPE_DEFAULT, "%{public}@ found the request %{public}@, but it's lock screen persistence %lu; Skip migration from %{public}@ to %{public}@.", buf, 0x34u);

LABEL_8:
      }
    }

    else if (v12)
    {
      v22 = *(a1 + 40);
      v21 = v11;
      v14 = [v22 logDescription];
      v23 = [v8 notificationIdentifier];
      v16 = [v23 un_logDigest];
      v24 = NCNotificationListSectionTypeString([*(a1 + 48) sectionType]);
      v25 = NCNotificationListSectionTypeString([*(a1 + 56) sectionType]);
      *buf = 138544130;
      v31 = v14;
      v32 = 2114;
      v33 = v16;
      v34 = 2114;
      v35 = v24;
      v36 = 2114;
      v37 = v25;
      _os_log_impl(&dword_21E77E000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@ migrate request %{public}@ from %{public}@ to %{public}@.", buf, 0x2Au);

      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = 1;
LABEL_10:

  return v7;
}

BOOL __137__NCNotificationRootList__migrateOnScheduleNotificationRequests_fromSection_toSection_clearRequests_filterForDestination_animateRemoval___block_invoke_203(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __137__NCNotificationRootList__migrateOnScheduleNotificationRequests_fromSection_toSection_clearRequests_filterForDestination_animateRemoval___block_invoke_2_204;
  v8[3] = &unk_278370180;
  v9 = v3;
  v5 = v3;
  v6 = [v4 indexOfObjectPassingTest:v8] != 0x7FFFFFFFFFFFFFFFLL;

  return v6;
}

uint64_t __137__NCNotificationRootList__migrateOnScheduleNotificationRequests_fromSection_toSection_clearRequests_filterForDestination_animateRemoval___block_invoke_2_204(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) sectionIdentifier];
  v5 = [v3 sectionIdentifier];
  if ([v4 isEqualToString:v5])
  {
    v6 = [*(a1 + 32) threadIdentifier];
    v7 = [v3 threadIdentifier];
    v8 = [v6 isEqualToString:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

BOOL __137__NCNotificationRootList__migrateOnScheduleNotificationRequests_fromSection_toSection_clearRequests_filterForDestination_animateRemoval___block_invoke_3(uint64_t a1, void *a2)
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __137__NCNotificationRootList__migrateOnScheduleNotificationRequests_fromSection_toSection_clearRequests_filterForDestination_animateRemoval___block_invoke_4;
  v28[3] = &unk_278370180;
  v5 = v3;
  v29 = v5;
  v6 = [v4 indexOfObjectPassingTest:v28];
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [*(a1 + 32) objectAtIndexedSubscript:v6];
    v9 = [v8 options];
    v10 = [v9 lockScreenPersistence];
    v7 = v10 != 0;

    v11 = *MEMORY[0x277D77DD0];
    v12 = os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT);
    if (v10)
    {
      if (v12)
      {
        v13 = *(a1 + 40);
        log = v11;
        v14 = [v13 logDescription];
        v15 = [v8 notificationIdentifier];
        v16 = [v15 un_logDigest];
        v17 = [v8 options];
        v18 = [v17 lockScreenPersistence];
        v19 = NCNotificationListSectionTypeString([*(a1 + 48) sectionType]);
        v20 = NCNotificationListSectionTypeString([*(a1 + 56) sectionType]);
        *buf = 138544386;
        v31 = v14;
        v32 = 2114;
        v33 = v16;
        v34 = 2048;
        v35 = v18;
        v36 = 2114;
        v37 = v19;
        v38 = 2114;
        v39 = v20;
        v21 = log;
        _os_log_impl(&dword_21E77E000, log, OS_LOG_TYPE_DEFAULT, "%{public}@ found the request %{public}@, but it's lock screen persistence %lu; Skip migration from %{public}@ to %{public}@.", buf, 0x34u);

LABEL_8:
      }
    }

    else if (v12)
    {
      v22 = *(a1 + 40);
      v21 = v11;
      v14 = [v22 logDescription];
      v23 = [v8 notificationIdentifier];
      v16 = [v23 un_logDigest];
      v24 = NCNotificationListSectionTypeString([*(a1 + 48) sectionType]);
      v25 = NCNotificationListSectionTypeString([*(a1 + 56) sectionType]);
      *buf = 138544130;
      v31 = v14;
      v32 = 2114;
      v33 = v16;
      v34 = 2114;
      v35 = v24;
      v36 = 2114;
      v37 = v25;
      _os_log_impl(&dword_21E77E000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@ migrate request %{public}@ from %{public}@ to %{public}@.", buf, 0x2Au);

      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = 1;
LABEL_10:

  return v7;
}

- (void)_elevateGroupInOtherSectionsIfNeededWithRequest:(id)a3 toSection:(id)a4
{
  v49 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([(NCNotificationRootList *)self _isRequestEligibleForStackElevation:v6])
  {
    v8 = [v6 content];
    v9 = [v8 isCommunicationType];

    if (v9)
    {
      v10 = NCStackElevationPriorityForSectionTypeString();
      v11 = NCNotificationListSectionTypeString([v7 sectionType]);
      v12 = [v10 indexOfObject:v11];

      if (v12 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v13 = *MEMORY[0x277D77DD0];
        if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
        {
          v14 = v13;
          v15 = [(NCNotificationRootList *)self logDescription];
          v16 = [v6 notificationIdentifier];
          v17 = [v16 un_logDigest];
          v18 = NCNotificationListSectionTypeString([v7 sectionType]);
          *buf = 138543874;
          v42 = v15;
          v43 = 2114;
          v44 = v17;
          v45 = 2114;
          v46 = v18;
          v19 = "%{public}@ Skip elevate same groups in other section with request %{public}@ in section %{public}@; it's not in allow list";
LABEL_10:
          _os_log_impl(&dword_21E77E000, v14, OS_LOG_TYPE_DEFAULT, v19, buf, 0x20u);
LABEL_11:

          goto LABEL_12;
        }
      }

      else
      {
        v23 = [v7 existingIndexOfGroupForNotificationRequestForInsertion:v6];
        if (v23 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v24 = *MEMORY[0x277D77DD0];
          if (!os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_13;
          }

          v14 = v24;
          v15 = [(NCNotificationRootList *)self logDescription];
          v16 = [v6 notificationIdentifier];
          v17 = [v16 un_logDigest];
          v18 = NCNotificationListSectionTypeString([v7 sectionType]);
          *buf = 138543874;
          v42 = v15;
          v43 = 2114;
          v44 = v17;
          v45 = 2114;
          v46 = v18;
          _os_log_error_impl(&dword_21E77E000, v14, OS_LOG_TYPE_ERROR, "%{public}@ No group found with request %{public}@ in section %{public}@", buf, 0x20u);
          goto LABEL_11;
        }

        v25 = v23;
        v26 = [v7 allNotificationGroups];
        v27 = [v26 objectAtIndex:v25];

        v28 = *MEMORY[0x277D77DD0];
        if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
        {
          log = v28;
          v35 = [(NCNotificationRootList *)self logDescription];
          v29 = [v27 logDescription];
          v30 = [v6 notificationIdentifier];
          v31 = [v30 un_logDigest];
          v32 = NCNotificationListSectionTypeString([v7 sectionType]);
          *buf = 138544130;
          v42 = v35;
          v43 = 2114;
          v44 = v29;
          v45 = 2114;
          v46 = v31;
          v47 = 2114;
          v48 = v32;
          _os_log_impl(&dword_21E77E000, log, OS_LOG_TYPE_DEFAULT, "%{public}@ Elevating same group %{public}@ in other sections with request %{public}@ in section %{public}@", buf, 0x2Au);
        }

        v33 = NCStackElevationPriorityForSectionTypeString();
        v37[0] = MEMORY[0x277D85DD0];
        v37[1] = 3221225472;
        v37[2] = __84__NCNotificationRootList__elevateGroupInOtherSectionsIfNeededWithRequest_toSection___block_invoke;
        v37[3] = &unk_278370498;
        v40 = v12;
        v37[4] = self;
        v38 = v7;
        v39 = v27;
        v34 = v27;
        [v33 enumerateObjectsUsingBlock:v37];
      }
    }

    else
    {
      v22 = *MEMORY[0x277D77DD0];
      if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
      {
        v14 = v22;
        v15 = [(NCNotificationRootList *)self logDescription];
        v16 = [v6 notificationIdentifier];
        v17 = [v16 un_logDigest];
        v18 = NCNotificationListSectionTypeString([v7 sectionType]);
        *buf = 138543874;
        v42 = v15;
        v43 = 2114;
        v44 = v17;
        v45 = 2114;
        v46 = v18;
        v19 = "%{public}@ Skip elevate same groups in other section with request %{public}@ in section %{public}@; it's not communication request";
        goto LABEL_10;
      }
    }
  }

  else
  {
    v20 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
    {
      v14 = v20;
      v15 = [(NCNotificationRootList *)self logDescription];
      v21 = [v6 notificationIdentifier];
      v17 = [v21 un_logDigest];
      *buf = 138543618;
      v42 = v15;
      v43 = 2114;
      v44 = v17;
      _os_log_impl(&dword_21E77E000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ Skip elevate same groups in other section with request %{public}@; stack elevation not eligible", buf, 0x16u);

LABEL_12:
    }
  }

LABEL_13:
}

void __84__NCNotificationRootList__elevateGroupInOtherSectionsIfNeededWithRequest_toSection___block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = v5;
  if (*(a1 + 56) >= a3)
  {
    v9 = *MEMORY[0x277D77DD0];
    if (!os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_13;
    }

    v10 = *(a1 + 32);
    v11 = v9;
    v12 = [v10 logDescription];
    v13 = NCNotificationListSectionTypeString([*(a1 + 40) sectionType]);
    *buf = 138543874;
    v30 = v12;
    v31 = 2114;
    v32 = v6;
    v33 = 2114;
    v34 = v13;
    v14 = "%{public}@ Section %{public}@ has higher or same priority than toSection %{public}@; Stop migrating to toSection.";
    v15 = v11;
    v16 = 32;
    goto LABEL_7;
  }

  v7 = NCNotificationListSectionTypeFromString(v5);
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = [*(a1 + 32) _sectionOfSectionType:v7];
    if (v11)
    {
      v17 = *(a1 + 32);
      v18 = *(a1 + 40);
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __84__NCNotificationRootList__elevateGroupInOtherSectionsIfNeededWithRequest_toSection___block_invoke_205;
      v24[3] = &unk_278370470;
      v19 = *(a1 + 48);
      v20 = *(a1 + 32);
      v25 = v19;
      v26 = v20;
      v27 = v11;
      v28 = *(a1 + 40);
      BYTE2(v23) = 1;
      LOWORD(v23) = 0;
      [v17 _migrateNotificationsFromList:v27 toList:v18 passingTest:v24 filterRequestsPassingTest:0 hideToList:0 clearRequests:0 filterForDestination:v23 animateRemoval:? reorderGroupNotifications:?];

      goto LABEL_12;
    }

    v21 = *MEMORY[0x277D77DD0];
    if (!os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    v22 = *(a1 + 32);
    v12 = v21;
    v13 = [v22 logDescription];
    *buf = 138543618;
    v30 = v13;
    v31 = 2114;
    v32 = v6;
    v14 = "%{public}@ fromSection %{public}@ not exist; Skip migrating.";
    v15 = v12;
    v16 = 22;
LABEL_7:
    _os_log_impl(&dword_21E77E000, v15, OS_LOG_TYPE_DEFAULT, v14, buf, v16);

LABEL_12:
    goto LABEL_13;
  }

  v8 = *MEMORY[0x277D77DD0];
  if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_FAULT))
  {
    __91__NCNotificationRootList__higherSectionToElevateForNotificationRequest_currentSectionType___block_invoke_cold_1(a1, v8);
  }

LABEL_13:
}

uint64_t __84__NCNotificationRootList__elevateGroupInOtherSectionsIfNeededWithRequest_toSection___block_invoke_205(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) matchesGroup:v3];
  if (v4)
  {
    v5 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 40);
      v7 = v5;
      v8 = [v6 logDescription];
      v9 = [v3 logDescription];
      v10 = NCNotificationListSectionTypeString([*(a1 + 48) sectionType]);
      v11 = NCNotificationListSectionTypeString([*(a1 + 56) sectionType]);
      v13 = 138544130;
      v14 = v8;
      v15 = 2114;
      v16 = v9;
      v17 = 2114;
      v18 = v10;
      v19 = 2114;
      v20 = v11;
      _os_log_impl(&dword_21E77E000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ Found same group %{public}@ in %{public}@, elevate to %{public}@", &v13, 0x2Au);
    }
  }

  return v4;
}

- (id)_sectionOfSectionType:(unint64_t)a3
{
  if (a3 <= 0xC && ((0x1C7Fu >> a3) & 1) != 0)
  {
    v4 = *(&self->super.isa + qword_21E9462C8[a3]);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)_isPersistentStateCurrentDigestInMissedSection
{
  persistentStoredListInfo = self->_persistentStoredListInfo;
  if (persistentStoredListInfo)
  {
    v3 = [(NSDictionary *)persistentStoredListInfo objectForKey:@"isCurrentDigestInMissedSection"];
    v4 = [v3 BOOLValue];

    LOBYTE(persistentStoredListInfo) = v4;
  }

  return persistentStoredListInfo;
}

- (id)_sectionForStoredNotificationRequestOfSectionType:(unint64_t)a3
{
  v5 = 0;
  if (a3 > 4)
  {
    if (a3 > 9)
    {
      switch(a3)
      {
        case 0xAuLL:
          p_highlightedSectionList = &self->_highlightedSectionList;
          break;
        case 0xBuLL:
          p_highlightedSectionList = &self->_persistentSectionList;
          break;
        case 0xCuLL:
          p_highlightedSectionList = &self->_criticalSectionList;
          break;
        default:
          goto LABEL_30;
      }

      goto LABEL_28;
    }

    if (a3 != 5)
    {
      if (a3 != 6)
      {
        goto LABEL_30;
      }

      goto LABEL_15;
    }

    p_highlightedSectionList = &self->_upcomingDigestSectionList;
LABEL_28:
    currentDigestSectionList = *p_highlightedSectionList;
    goto LABEL_29;
  }

  if (a3 <= 2)
  {
    if (a3 == 1)
    {
      p_highlightedSectionList = &self->_prominentIncomingSectionList;
    }

    else
    {
      if (a3 != 2)
      {
        goto LABEL_30;
      }

      p_highlightedSectionList = &self->_incomingSectionList;
    }

    goto LABEL_28;
  }

  if (a3 == 3)
  {
    p_highlightedSectionList = &self->_upcomingMissedSectionList;
    goto LABEL_28;
  }

LABEL_15:
  p_highlightedSectionList = &self->_currentDigestSectionList;
  currentDigestSectionList = self->_currentDigestSectionList;
  if (!currentDigestSectionList)
  {
    v8 = [(NCDigestScheduleManager *)self->_digestScheduleManager previouslyScheduledDigestInfo];
    v9 = [(NCNotificationRootList *)self _isPersistentStateCurrentDigestInMissedSection];
    if (a3 == 6 || v9)
    {
      v11 = 2;
    }

    else
    {
      v11 = 1;
    }

    [(NCNotificationRootList *)self _configureCurrentDigestSectionListWithDigestInfo:v8 sectionType:a3 summaryOrderProviderType:v11];

    goto LABEL_28;
  }

LABEL_29:
  v5 = currentDigestSectionList;
LABEL_30:

  return v5;
}

- (void)_insertSectionListInHistorySectionList:(id)a3 atIndex:(unint64_t)a4 animated:(BOOL)a5
{
  v5 = a5;
  v20 = *MEMORY[0x277D85DE8];
  v8 = a3;
  if (![(NCNotificationCombinedSectionList *)self->_historySectionList containsSectionList:v8])
  {
    v9 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
    {
      v10 = v9;
      v11 = [(NCNotificationRootList *)self logDescription];
      v12 = [v8 logDescription];
      v13 = [(NCNotificationStructuredSectionList *)self->_historySectionList logDescription];
      v14 = 138543874;
      v15 = v11;
      v16 = 2114;
      v17 = v12;
      v18 = 2114;
      v19 = v13;
      _os_log_impl(&dword_21E77E000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ inserting %{public}@ to %{public}@", &v14, 0x20u);
    }

    [(NCNotificationCombinedSectionList *)self->_historySectionList insertNotificationSectionList:v8 atIndex:a4 animated:v5];
    [v8 setDeviceAuthenticated:{-[NCNotificationRootList deviceAuthenticated](self, "deviceAuthenticated")}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v8 collapseSummarizedSectionList];
    }
  }
}

- (void)_removeSectionListInHistorySectionList:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if ([(NCNotificationCombinedSectionList *)self->_historySectionList containsSectionList:v6])
  {
    v7 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
    {
      v8 = v7;
      v9 = [(NCNotificationRootList *)self logDescription];
      v10 = [v6 logDescription];
      v11 = [(NCNotificationStructuredSectionList *)self->_historySectionList logDescription];
      v12 = 138543874;
      v13 = v9;
      v14 = 2114;
      v15 = v10;
      v16 = 2114;
      v17 = v11;
      _os_log_impl(&dword_21E77E000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ removing %{public}@ from %{public}@", &v12, 0x20u);
    }

    [(NCNotificationCombinedSectionList *)self->_historySectionList removeNotificationSectionList:v6 animated:v4];
  }
}

- (void)_toggleVisibilityInHistorySectionListForSectionList:(id)a3 atIndex:(unint64_t)a4 isSectionHidden:(BOOL)a5 animated:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v10 = a3;
  if (v10)
  {
    v11 = v10;
    if (-[NCNotificationCombinedSectionList containsSectionList:](self->_historySectionList, "containsSectionList:", v10) || ![v11 notificationCount] || v7)
    {
      v10 = [(NCNotificationCombinedSectionList *)self->_historySectionList containsSectionList:v11];
      if (v10)
      {
        v10 = [v11 notificationCount];
        if (!v10 || v7)
        {
          v10 = [(NCNotificationRootList *)self _removeSectionListInHistorySectionList:v11 animated:v6];
        }
      }
    }

    else
    {
      v10 = [(NCNotificationRootList *)self _insertSectionListInHistorySectionList:v11 atIndex:a4 animated:v6];
    }
  }

  MEMORY[0x2821F96F8](v10);
}

- (id)_newMissedSectionWithTitle:(id)a3 summaryHeading:(id)a4 logDescription:(id)a5 dndMode:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [(NCNotificationCombinedSectionList *)[NCNotificationSummarizedSectionList alloc] initWithTitle:v13 sectionType:3];

  v15 = [(NCNotificationRootList *)self _newSummaryOrderProviderOfType:0 summaryHeading:v12 summaryDate:0 atxDigestDeliveryTime:2 isOnboardingSummary:0];
  [v15 setDndMode:v10];

  v16 = [(NCNotificationRootList *)self notificationListCache];
  [(NCNotificationRootList *)self _configureNotificationSectionList:v14 notificationCache:v16 notificationListViewRevealed:[(NCNotificationRootList *)self isNotificationHistoryRevealed] logDescription:v11];

  [(NCNotificationSummarizedSectionList *)v14 setSummaryOrderProvider:v15];
  [(NCNotificationStructuredSectionList *)v14 setSectionListDestination:@"BulletinDestinationLockScreen"];
  v17 = [(NCNotificationStructuredSectionList *)v14 listView];
  [v17 setGrouped:1];

  return v14;
}

- (void)_configureUpcomingMissedSectionForDNDMode:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!self->_upcomingMissedSectionList)
  {
    v5 = [(NCNotificationRootList *)self _missedSectionTitleForDNDMode:v4];
    v6 = [(NCNotificationRootList *)self _newMissedSectionWithTitle:v5 summaryHeading:v5 logDescription:@"Upcoming Missed Section" dndMode:v4];
    upcomingMissedSectionList = self->_upcomingMissedSectionList;
    self->_upcomingMissedSectionList = v6;

    v8 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
    {
      v9 = v8;
      v10 = [(NCNotificationRootList *)self logDescription];
      v11 = [(NCNotificationStructuredSectionList *)self->_upcomingMissedSectionList logDescription];
      v12 = [v4 modeIdentifier];
      v13 = 138544130;
      v14 = v10;
      v15 = 2114;
      v16 = v11;
      v17 = 2112;
      v18 = v5;
      v19 = 2114;
      v20 = v12;
      _os_log_impl(&dword_21E77E000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ configured new %{public}@ with title %@ for mode %{public}@", &v13, 0x2Au);
    }
  }
}

- (id)_missedSectionTitleForDNDMode:(id)a3
{
  v3 = a3;
  v4 = NCUserNotificationsUIKitFrameworkBundle();
  v5 = [v4 localizedStringForKey:@"NOTIFICATION_LIST_MISSED_SECTION_HEADER_DO_NOT_DISTURB" value:&stru_282FE84F8 table:0];

  v6 = [v3 semanticType];
  if (v6 <= 3)
  {
    if (v6 > 1)
    {
      if (v6 == 2)
      {
        v7 = NCUserNotificationsUIKitFrameworkBundle();
        v8 = v7;
        v9 = @"NOTIFICATION_LIST_MISSED_SECTION_HEADER_DRIVING";
      }

      else
      {
        v7 = NCUserNotificationsUIKitFrameworkBundle();
        v8 = v7;
        v9 = @"NOTIFICATION_LIST_MISSED_SECTION_HEADER_FITNESS";
      }

      goto LABEL_20;
    }

    if (!v6)
    {
      v7 = NCUserNotificationsUIKitFrameworkBundle();
      v8 = v7;
      v9 = @"NOTIFICATION_LIST_MISSED_SECTION_HEADER_DO_NOT_DISTURB";
      goto LABEL_20;
    }

    if (v6 == 1)
    {
      v7 = NCUserNotificationsUIKitFrameworkBundle();
      v8 = v7;
      v9 = @"NOTIFICATION_LIST_MISSED_SECTION_HEADER_SLEEP";
      goto LABEL_20;
    }
  }

  else
  {
    if (v6 <= 5)
    {
      if (v6 == 4)
      {
        v7 = NCUserNotificationsUIKitFrameworkBundle();
        v8 = v7;
        v9 = @"NOTIFICATION_LIST_MISSED_SECTION_HEADER_WORK";
      }

      else
      {
        v7 = NCUserNotificationsUIKitFrameworkBundle();
        v8 = v7;
        v9 = @"NOTIFICATION_LIST_MISSED_SECTION_HEADER_PERSONAL";
      }

      goto LABEL_20;
    }

    switch(v6)
    {
      case 6:
        v7 = NCUserNotificationsUIKitFrameworkBundle();
        v8 = v7;
        v9 = @"NOTIFICATION_LIST_MISSED_SECTION_HEADER_READING";
        goto LABEL_20;
      case 7:
        v7 = NCUserNotificationsUIKitFrameworkBundle();
        v8 = v7;
        v9 = @"NOTIFICATION_LIST_MISSED_SECTION_HEADER_GAMING";
        goto LABEL_20;
      case 8:
        v7 = NCUserNotificationsUIKitFrameworkBundle();
        v8 = v7;
        v9 = @"NOTIFICATION_LIST_MISSED_SECTION_HEADER_MINDFULNESS";
LABEL_20:
        v10 = [v7 localizedStringForKey:v9 value:&stru_282FE84F8 table:0];
        goto LABEL_21;
    }
  }

  v12 = MEMORY[0x277CCACA8];
  v8 = NCUserNotificationsUIKitFrameworkBundle();
  v13 = [v8 localizedStringForKey:@"NOTIFICATION_LIST_MISSED_SECTION_HEADER_GENERAL" value:&stru_282FE84F8 table:0];
  v14 = [v3 name];
  v10 = [v12 stringWithFormat:v13, v14];

  v5 = v13;
LABEL_21:

  return v10;
}

- (void)_migrateUpcomingMissedSectionToIncoming
{
  v23 = *MEMORY[0x277D85DE8];
  if (self->_upcomingMissedSectionList)
  {
    v3 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
    {
      v4 = v3;
      v5 = [(NCNotificationRootList *)self logDescription];
      v6 = [(NCNotificationStructuredSectionList *)self->_upcomingMissedSectionList logDescription];
      v7 = [(NCNotificationStructuredSectionList *)self->_incomingSectionList logDescription];
      *buf = 138543874;
      v18 = v5;
      v19 = 2114;
      v20 = v6;
      v21 = 2114;
      v22 = v7;
      _os_log_impl(&dword_21E77E000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ migrating all notifications from %{public}@ to %{public}@", buf, 0x20u);
    }

    v8 = +[NCNotificationEventTracker sharedInstance];
    v9 = [(NCNotificationSummarizedSectionList *)self->_upcomingMissedSectionList atxUUID];
    [v8 missedBundleExpired:v9];

    v10 = [(NCNotificationSummarizedSectionList *)self->_upcomingMissedSectionList summaryOrderProvider];
    [v10 atxLogSummaryPlatterRemoval];

    upcomingMissedSectionList = self->_upcomingMissedSectionList;
    prominentIncomingSectionList = self->_prominentIncomingSectionList;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __65__NCNotificationRootList__migrateUpcomingMissedSectionToIncoming__block_invoke;
    v16[3] = &unk_27836FFD8;
    v16[4] = self;
    BYTE2(v14) = 1;
    LOWORD(v14) = 0;
    [NCNotificationRootList _migrateNotificationsFromList:"_migrateNotificationsFromList:toList:passingTest:filterRequestsPassingTest:hideToList:clearRequests:filterForDestination:animateRemoval:reorderGroupNotifications:" toList:upcomingMissedSectionList passingTest:prominentIncomingSectionList filterRequestsPassingTest:0 hideToList:v16 clearRequests:0 filterForDestination:0 animateRemoval:v14 reorderGroupNotifications:?];
    BYTE2(v15) = 1;
    LOWORD(v15) = 0;
    [NCNotificationRootList _migrateNotificationsFromList:"_migrateNotificationsFromList:toList:passingTest:filterRequestsPassingTest:hideToList:clearRequests:filterForDestination:animateRemoval:reorderGroupNotifications:" toList:self->_upcomingMissedSectionList passingTest:self->_incomingSectionList filterRequestsPassingTest:0 hideToList:0 clearRequests:0 filterForDestination:0 animateRemoval:v15 reorderGroupNotifications:?];
    [(NCNotificationRootList *)self _removeSectionListInHistorySectionList:self->_upcomingMissedSectionList animated:[(NCNotificationRootList *)self isNotificationHistoryRevealed]];
    v13 = self->_upcomingMissedSectionList;
    self->_upcomingMissedSectionList = 0;
  }
}

- (id)_newDigestSectionListWithTitle:(id)a3 sectionType:(unint64_t)a4 summaryOrderProvider:(id)a5 logDescription:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a3;
  v13 = [[NCNotificationSummarizedInlineExpandingSectionList alloc] initWithTitle:v12 sectionType:a4];

  v14 = [(NCNotificationRootList *)self notificationSummaryCache];
  [(NCNotificationRootList *)self _configureNotificationSectionList:v13 notificationCache:v14 notificationListViewRevealed:1 logDescription:v10];

  [(NCNotificationSummarizedSectionList *)v13 setSummaryOrderProvider:v11];
  v15 = [(NCNotificationStructuredSectionList *)v13 listView];
  [v15 setGrouped:1];

  [(NCNotificationRootList *)self _setRevealed:1 forSection:v13];
  [(NCNotificationStructuredSectionList *)v13 setSectionListDestination:@"BulletinDestinationDigest"];
  return v13;
}

- (id)_newSummaryOrderProviderOfType:(unint64_t)a3 summaryHeading:(id)a4 summaryDate:(id)a5 atxDigestDeliveryTime:(int64_t)a6 isOnboardingSummary:(BOOL)a7
{
  v7 = a7;
  v12 = a5;
  v13 = a4;
  v14 = [NCNotificationSummaryOrderProvider notificationSummaryOrderProviderOfType:a3];
  [v14 setOnboardingSummary:v7];
  [v14 setDeviceAuthenticated:{-[NCNotificationRootList deviceAuthenticated](self, "deviceAuthenticated")}];
  [v14 setSummaryHeading:v13];

  [v14 setSummaryDate:v12];
  [v14 setAtxDigestDeliveryTime:a6];
  return v14;
}

- (id)_newSummaryOrderProviderOfType:(unint64_t)a3 fromSummaryOrderProvider:(id)a4
{
  v6 = a4;
  v7 = [v6 summaryHeading];
  v8 = [v6 summaryDate];
  v9 = [v6 atxDigestDeliveryTime];

  v10 = [(NCNotificationRootList *)self _newSummaryOrderProviderOfType:a3 summaryHeading:v7 summaryDate:v8 atxDigestDeliveryTime:v9 isOnboardingSummary:0];
  return v10;
}

- (int64_t)_atxDigestDeliveryTimeForDeliveryOrder:(int64_t)a3
{
  if (a3)
  {
    return a3 == 2;
  }

  else
  {
    return 2;
  }
}

- (void)_configureUpcomingDigestSectionListWithDigestInfo:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_upcomingDigestSectionList)
  {
    v5 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_ERROR))
    {
      [(NCNotificationRootList *)v5 _configureUpcomingDigestSectionListWithDigestInfo:&self->_upcomingDigestSectionList];
    }
  }

  else
  {
    v6 = NCUserNotificationsUIKitFrameworkBundle();
    v7 = [v6 localizedStringForKey:@"NOTIFICATION_SUMMARY_HEADER_NEXT" value:&stru_282FE84F8 table:0];
    v8 = [v4 scheduleDate];
    v9 = -[NCNotificationRootList _newSummaryOrderProviderOfType:summaryHeading:summaryDate:atxDigestDeliveryTime:isOnboardingSummary:](self, "_newSummaryOrderProviderOfType:summaryHeading:summaryDate:atxDigestDeliveryTime:isOnboardingSummary:", 2, v7, v8, -[NCNotificationRootList _atxDigestDeliveryTimeForDeliveryOrder:](self, "_atxDigestDeliveryTimeForDeliveryOrder:", [v4 deliveryOrder]), 0);

    v10 = NCUserNotificationsUIKitFrameworkBundle();
    v11 = [v10 localizedStringForKey:@"NOTIFICATION_SUMMARY_SECTION_TITLE_NEXT" value:&stru_282FE84F8 table:0];
    v12 = [(NCNotificationRootList *)self _newDigestSectionListWithTitle:v11 sectionType:5 summaryOrderProvider:v9 logDescription:@"Upcoming Digest"];
    upcomingDigestSectionList = self->_upcomingDigestSectionList;
    self->_upcomingDigestSectionList = v12;

    v14 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
    {
      v15 = v14;
      v16 = [(NCNotificationRootList *)self logDescription];
      v17 = [(NCNotificationStructuredSectionList *)self->_upcomingDigestSectionList logDescription];
      v18 = 138543874;
      v19 = v16;
      v20 = 2114;
      v21 = v17;
      v22 = 2114;
      v23 = v4;
      _os_log_impl(&dword_21E77E000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ configured new %{public}@ with digest info : %{public}@", &v18, 0x20u);
    }
  }
}

- (void)_updateUpcomingDigestSectionListWithDigestInfo:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(NCNotificationCombinedSectionList *)self->_upcomingDigestSectionList allNotificationRequests];
  v6 = [v5 copy];

  [(NCNotificationRootList *)self _removeSectionListInHistorySectionList:self->_upcomingDigestSectionList animated:0];
  upcomingDigestSectionList = self->_upcomingDigestSectionList;
  self->_upcomingDigestSectionList = 0;

  [(NCNotificationRootList *)self _configureUpcomingDigestSectionListWithDigestInfo:v4];
  v8 = *MEMORY[0x277D77DD0];
  if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v10 = [(NCNotificationRootList *)self logDescription];
    v11 = [(NCNotificationStructuredSectionList *)self->_upcomingDigestSectionList logDescription];
    *buf = 138543874;
    v23 = v10;
    v24 = 2114;
    v25 = v11;
    v26 = 2114;
    v27 = v4;
    _os_log_impl(&dword_21E77E000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ replaced existing with new %{public}@ with digest info : %{public}@", buf, 0x20u);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v12 = v6;
  v13 = [v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v18;
    do
    {
      v16 = 0;
      do
      {
        if (*v18 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [(NCNotificationSummarizedSectionList *)self->_upcomingDigestSectionList insertNotificationRequest:*(*(&v17 + 1) + 8 * v16++), v17];
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v14);
  }
}

- (void)_dissolveUpcomingDigestSectionListToHistorySection
{
  v16 = *MEMORY[0x277D85DE8];
  if (self->_upcomingDigestSectionList)
  {
    v3 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
    {
      v4 = v3;
      v5 = [(NCNotificationRootList *)self logDescription];
      v6 = [(NCNotificationStructuredSectionList *)self->_upcomingDigestSectionList logDescription];
      v7 = [(NCNotificationStructuredSectionList *)self->_historySectionList logDescription];
      *buf = 138543874;
      v11 = v5;
      v12 = 2114;
      v13 = v6;
      v14 = 2114;
      v15 = v7;
      _os_log_impl(&dword_21E77E000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ removing %{public}@ and moving all notifications to %{public}@", buf, 0x20u);
    }

    BYTE2(v9) = 1;
    LOWORD(v9) = 1;
    [NCNotificationRootList _migrateNotificationsFromList:"_migrateNotificationsFromList:toList:passingTest:filterRequestsPassingTest:hideToList:clearRequests:filterForDestination:animateRemoval:reorderGroupNotifications:" toList:self->_upcomingDigestSectionList passingTest:self->_historySectionList filterRequestsPassingTest:0 hideToList:0 clearRequests:0 filterForDestination:1 animateRemoval:v9 reorderGroupNotifications:?];
    [(NCNotificationRootList *)self _removeSectionListInHistorySectionList:self->_upcomingDigestSectionList animated:0];
    upcomingDigestSectionList = self->_upcomingDigestSectionList;
    self->_upcomingDigestSectionList = 0;
  }
}

- (void)_configureCurrentDigestSectionListWithDigestInfo:(id)a3 sectionType:(unint64_t)a4 summaryOrderProviderType:(unint64_t)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = v8;
  if (self->_currentDigestSectionList)
  {
    v10 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_ERROR))
    {
      [NCNotificationRootList _configureCurrentDigestSectionListWithDigestInfo:v10 sectionType:self summaryOrderProviderType:&self->_currentDigestSectionList];
    }
  }

  else
  {
    v11 = [v8 headerString];
    v12 = [v9 scheduleDate];
    v13 = -[NCNotificationRootList _newSummaryOrderProviderOfType:summaryHeading:summaryDate:atxDigestDeliveryTime:isOnboardingSummary:](self, "_newSummaryOrderProviderOfType:summaryHeading:summaryDate:atxDigestDeliveryTime:isOnboardingSummary:", a5, v11, v12, -[NCNotificationRootList _atxDigestDeliveryTimeForDeliveryOrder:](self, "_atxDigestDeliveryTimeForDeliveryOrder:", [v9 deliveryOrder]), a4 == 8);

    v14 = [v9 titleString];
    v15 = NCNotificationListSectionTypeString(a4);
    v16 = [(NCNotificationRootList *)self _newDigestSectionListWithTitle:v14 sectionType:a4 summaryOrderProvider:v13 logDescription:v15];
    currentDigestSectionList = self->_currentDigestSectionList;
    self->_currentDigestSectionList = v16;

    v18 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
    {
      v19 = v18;
      v20 = [(NCNotificationRootList *)self logDescription];
      v21 = [(NCNotificationStructuredSectionList *)self->_currentDigestSectionList logDescription];
      v22 = 138543874;
      v23 = v20;
      v24 = 2114;
      v25 = v21;
      v26 = 2114;
      v27 = v9;
      _os_log_impl(&dword_21E77E000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@ configured new %{public}@ with digest info : %{public}@", &v22, 0x20u);
    }
  }
}

- (void)_insertCurrentDigestSectionList
{
  v20 = *MEMORY[0x277D85DE8];
  if (self->_currentDigestSectionList)
  {
    v3 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
    {
      v4 = v3;
      v5 = [(NCNotificationRootList *)self logDescription];
      v6 = [(NCNotificationStructuredSectionList *)self->_currentDigestSectionList logDescription];
      v16 = 138543618;
      v17 = v5;
      v18 = 2114;
      v19 = v6;
      _os_log_impl(&dword_21E77E000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ inserting %{public}@ to visible section", &v16, 0x16u);
    }

    v7 = [(NCNotificationRootList *)self _notificationListSections];
    v8 = [(NCNotificationRootList *)self _suppressesCurrentDigestForNotifications];
    v9 = [v7 indexOfObject:self->_incomingSectionList];
    v10 = [(NCNotificationRootList *)self notificationSections];
    v11 = [v10 indexOfObject:self->_incomingSectionList];

    [(NCNotificationSummarizedSectionList *)self->_currentDigestSectionList setDeviceAuthenticated:[(NCNotificationRootList *)self deviceAuthenticated]];
    v12 = [(NCNotificationRootList *)self notificationSections];
    [v12 insertObject:self->_currentDigestSectionList atIndex:v11];

    v13 = [(NCNotificationRootList *)self rootListView];
    [v13 insertViewAtIndex:v9 animated:1];

    [(NCNotificationRootList *)self _updateIndexForReveal];
    if ([(NCNotificationRootList *)self currentListDisplayStyleSetting]== 2)
    {
      if (v8)
      {
        v14 = 0;
      }

      else
      {
        v14 = [(NCNotificationRootList *)self isNotificationHistoryRevealed];
      }

      [(NCNotificationRootList *)self _setRevealed:v14 forSection:self->_currentDigestSectionList];
    }

    [(NCNotificationRootList *)self _updateDelegateAndSubclassIfNecessaryOfContentChange];
    v15 = [(NCNotificationRootList *)self currentDigestSectionList];
    [(NCNotificationRootList *)self _notificationSectionsDidAdd:v15];

    if (v8)
    {
      [(NCNotificationRootList *)self _migrateCurrentDigestSectionListToReadSection];
    }
  }
}

- (void)_removeCurrentDigestSectionList
{
  v15 = *MEMORY[0x277D85DE8];
  if (self->_currentDigestSectionList)
  {
    v3 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
    {
      v4 = v3;
      v5 = [(NCNotificationRootList *)self logDescription];
      v6 = [(NCNotificationStructuredSectionList *)self->_currentDigestSectionList logDescription];
      v11 = 138543618;
      v12 = v5;
      v13 = 2114;
      v14 = v6;
      _os_log_impl(&dword_21E77E000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ removing %{public}@ from visible section", &v11, 0x16u);
    }

    v7 = [(NCNotificationRootList *)self _notificationListSections];
    v8 = [v7 indexOfObject:self->_currentDigestSectionList];
    v9 = [(NCNotificationRootList *)self notificationSections];
    [v9 removeObject:self->_currentDigestSectionList];

    v10 = [(NCNotificationRootList *)self rootListView];
    [v10 removeViewAtIndex:v8 animated:1 isHorizontallyDisplaced:{-[NCNotificationSummarizedSectionList isHorizontallyDisplaced](self->_currentDigestSectionList, "isHorizontallyDisplaced")}];

    [(NCNotificationRootList *)self _updateIndexForReveal];
    [(NCNotificationRootList *)self _updateDelegateAndSubclassIfNecessaryOfContentChange];
  }
}

- (void)_insertCurrentDigestSectionListToSectionList:(id)a3 atIndex:(unint64_t)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  currentDigestSectionList = self->_currentDigestSectionList;
  if (currentDigestSectionList && -[NCNotificationCombinedSectionList count](currentDigestSectionList, "count") && ([v6 containsSectionList:self->_currentDigestSectionList] & 1) == 0)
  {
    v8 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
    {
      v9 = v8;
      v10 = [(NCNotificationRootList *)self logDescription];
      v11 = [(NCNotificationStructuredSectionList *)self->_currentDigestSectionList logDescription];
      v12 = [v6 logDescription];
      v13 = 138544130;
      v14 = v10;
      v15 = 2114;
      v16 = v11;
      v17 = 2114;
      v18 = v12;
      v19 = 2048;
      v20 = a4;
      _os_log_impl(&dword_21E77E000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ inserting %{public}@ to %{public}@ at index %lu", &v13, 0x2Au);
    }

    [v6 insertNotificationSectionList:self->_currentDigestSectionList atIndex:a4 animated:{-[NCNotificationRootList isNotificationHistoryRevealed](self, "isNotificationHistoryRevealed")}];
  }
}

- (void)_removeCurrentDigestSectionListFromSectionList:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (self->_currentDigestSectionList && [v4 containsSectionList:?])
  {
    v6 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
      v8 = [(NCNotificationRootList *)self logDescription];
      v9 = [(NCNotificationStructuredSectionList *)self->_currentDigestSectionList logDescription];
      v10 = [v5 logDescription];
      v11 = 138543874;
      v12 = v8;
      v13 = 2114;
      v14 = v9;
      v15 = 2114;
      v16 = v10;
      _os_log_impl(&dword_21E77E000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ removing %{public}@ from %{public}@", &v11, 0x20u);
    }

    [v5 removeNotificationSectionList:self->_currentDigestSectionList animated:{-[NCNotificationRootList isNotificationHistoryRevealed](self, "isNotificationHistoryRevealed")}];
  }
}

- (void)_insertCurrentDigestSectionListToMissedSectionList
{
  [(NCNotificationRootList *)self _insertCurrentDigestSectionListToSectionList:self->_upcomingMissedSectionList atIndex:0];
  v3 = [(NCNotificationSummarizedSectionList *)self->_upcomingMissedSectionList summaryOrderProvider];
  [v3 updateLeadingSummaryPlatterView];
}

- (void)_removeCurrentDigestSectionListFromMissedSectionList
{
  [(NCNotificationRootList *)self _removeCurrentDigestSectionListFromSectionList:self->_upcomingMissedSectionList];
  v3 = [(NCNotificationSummarizedSectionList *)self->_upcomingMissedSectionList summaryOrderProvider];
  [v3 updateLeadingSummaryPlatterView];
}

- (void)_insertCurrentDigestSectionListToHistorySectionList
{
  v15 = *MEMORY[0x277D85DE8];
  currentDigestSectionList = self->_currentDigestSectionList;
  if (currentDigestSectionList && [(NCNotificationCombinedSectionList *)currentDigestSectionList count]&& ![(NCNotificationCombinedSectionList *)self->_historySectionList containsSectionList:self->_currentDigestSectionList])
  {
    v4 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
    {
      v5 = v4;
      v6 = [(NCNotificationRootList *)self logDescription];
      v7 = [(NCNotificationStructuredSectionList *)self->_currentDigestSectionList logDescription];
      v8 = [(NCNotificationStructuredSectionList *)self->_historySectionList logDescription];
      v9 = 138543874;
      v10 = v6;
      v11 = 2114;
      v12 = v7;
      v13 = 2114;
      v14 = v8;
      _os_log_impl(&dword_21E77E000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ inserting %{public}@ to %{public}@ at chronologically", &v9, 0x20u);
    }

    [(NCNotificationCombinedSectionList *)self->_historySectionList insertNotificationSectionListChronologically:self->_currentDigestSectionList animated:[(NCNotificationRootList *)self isNotificationHistoryRevealed]];
  }
}

- (void)_removeCurrentDigestSectionListFromContainingSectionList
{
  v3 = [(NCNotificationRootList *)self notificationSections];
  v4 = [v3 containsObject:self->_currentDigestSectionList];

  if (v4)
  {

    [(NCNotificationRootList *)self _removeCurrentDigestSectionList];
  }

  else if ([(NCNotificationCombinedSectionList *)self->_upcomingMissedSectionList containsSectionList:self->_currentDigestSectionList])
  {

    [(NCNotificationRootList *)self _removeCurrentDigestSectionListFromMissedSectionList];
  }

  else if ([(NCNotificationCombinedSectionList *)self->_historySectionList containsSectionList:self->_currentDigestSectionList])
  {

    [(NCNotificationRootList *)self _removeCurrentDigestSectionListFromHistorySectionList];
  }
}

- (void)_upgradeCurrentDigestSectionListForPromotionAboveFold
{
  currentDigestSectionList = self->_currentDigestSectionList;
  if (currentDigestSectionList)
  {
    v7 = [(NCNotificationSummarizedSectionList *)currentDigestSectionList summaryOrderProvider];
    v4 = [v7 summaryHeading];
    v5 = [v7 summaryDate];
    v6 = -[NCNotificationRootList _newSummaryOrderProviderOfType:summaryHeading:summaryDate:atxDigestDeliveryTime:isOnboardingSummary:](self, "_newSummaryOrderProviderOfType:summaryHeading:summaryDate:atxDigestDeliveryTime:isOnboardingSummary:", 1, v4, v5, [v7 atxDigestDeliveryTime], 0);

    [(NCNotificationSummarizedSectionList *)self->_currentDigestSectionList setSummaryOrderProvider:v6];
  }
}

- (void)_migrateUpcomingDigestSectionListToCurrentDigestSectionList
{
  v38 = *MEMORY[0x277D85DE8];
  if (self->_upcomingDigestSectionList)
  {
    v3 = MEMORY[0x277D77DD0];
    v4 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
    {
      v5 = v4;
      v6 = [(NCNotificationRootList *)self logDescription];
      v7 = [(NCNotificationStructuredSectionList *)self->_upcomingDigestSectionList logDescription];
      v32 = 138543618;
      v33 = v6;
      v34 = 2114;
      v35 = v7;
      _os_log_impl(&dword_21E77E000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ moving %{public}@ to current digest", &v32, 0x16u);
    }

    p_currentDigestSectionList = &self->_currentDigestSectionList;
    currentDigestSectionList = self->_currentDigestSectionList;
    if (currentDigestSectionList && [(NCNotificationCombinedSectionList *)currentDigestSectionList notificationCount])
    {
      [(NCNotificationRootList *)self _dissolveCurrentDigestSectionListToHistorySection];
    }

    [(NCNotificationRootList *)self _removeSectionListInHistorySectionList:self->_upcomingDigestSectionList animated:0];
    objc_storeStrong(&self->_currentDigestSectionList, self->_upcomingDigestSectionList);
    if ([(NCNotificationRootList *)self currentListDisplayStyleSetting]== 2)
    {
      [(NCNotificationRootList *)self _setRevealed:[(NCNotificationRootList *)self isNotificationHistoryRevealed] forSection:self->_currentDigestSectionList];
    }

    [(NCNotificationStructuredSectionList *)self->_currentDigestSectionList setLogDescription:@"Current Digest"];
    v10 = [(NCNotificationRootList *)self digestScheduleManager];
    v11 = [v10 previouslyScheduledDigestInfo];

    v12 = self->_currentDigestSectionList;
    v13 = [v11 titleString];
    [(NCNotificationStructuredSectionList *)v12 setTitle:v13];

    if ([(NCNotificationRootList *)self isMissedSectionActive])
    {
      v14 = 2;
    }

    else
    {
      v14 = 1;
    }

    v15 = [v11 headerString];
    v16 = [v11 scheduleDate];
    v17 = -[NCNotificationRootList _newSummaryOrderProviderOfType:summaryHeading:summaryDate:atxDigestDeliveryTime:isOnboardingSummary:](self, "_newSummaryOrderProviderOfType:summaryHeading:summaryDate:atxDigestDeliveryTime:isOnboardingSummary:", v14, v15, v16, -[NCNotificationRootList _atxDigestDeliveryTimeForDeliveryOrder:](self, "_atxDigestDeliveryTimeForDeliveryOrder:", [v11 deliveryOrder]), 0);

    [(NCNotificationSummarizedSectionList *)self->_currentDigestSectionList setSummaryOrderProvider:v17];
    [(NCNotificationStructuredSectionList *)self->_currentDigestSectionList setSectionType:4];
    upcomingDigestSectionList = self->_upcomingDigestSectionList;
    self->_upcomingDigestSectionList = 0;

    if ([(NCNotificationCombinedSectionList *)self->_currentDigestSectionList notificationCount])
    {
      [(NCNotificationRootList *)self setDeferCurrentDigestPresentationForPersistedDataLoad:0];
      if ([(NCNotificationRootList *)self _shouldInsertCurrentDigestIntoMissedSectionList])
      {
        v19 = *v3;
        if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
        {
          v20 = v19;
          v21 = [(NCNotificationRootList *)self logDescription];
          v22 = [(NCNotificationStructuredSectionList *)self->_currentDigestSectionList logDescription];
          v23 = [(NCNotificationStructuredSectionList *)self->_upcomingMissedSectionList logDescription];
          v32 = 138543874;
          v33 = v21;
          v34 = 2114;
          v35 = v22;
          v36 = 2114;
          v37 = v23;
          _os_log_impl(&dword_21E77E000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@ moving %{public}@ to %{public}@ because missed section is active and exclusive.", &v32, 0x20u);
        }

        [(NCNotificationRootList *)self _insertCurrentDigestSectionListToMissedSectionList];
      }

      else
      {
        [(NCNotificationRootList *)self _insertCurrentDigestSectionList];
      }

      v29 = [(NCNotificationSummarizedSectionList *)self->_currentDigestSectionList summaryOrderProvider];
      [v29 atxLogSummaryPlatterShownIsUpcoming:0];

      v30 = +[NCNotificationEventTracker sharedInstance];
      v31 = [(NCNotificationSummarizedSectionList *)self->_currentDigestSectionList atxUUID];
      [v30 digestAppeared:v31];

      [(NCNotificationListMigrationScheduler *)self->_migrationScheduler setMigrationDateForNotificationDigest:0];
    }

    else
    {
      v24 = *v3;
      if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
      {
        v25 = v24;
        v26 = [(NCNotificationRootList *)self logDescription];
        v27 = [(NCNotificationStructuredSectionList *)self->_currentDigestSectionList logDescription];
        v32 = 138543618;
        v33 = v26;
        v34 = 2114;
        v35 = v27;
        _os_log_impl(&dword_21E77E000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@ not presenting current digest %{public}@ because it has no notifications", &v32, 0x16u);
      }

      v28 = *p_currentDigestSectionList;
      *p_currentDigestSectionList = 0;
    }
  }
}

- (void)_migrateCurrentDigestSectionListToReadSection
{
  v18 = *MEMORY[0x277D85DE8];
  if (self->_currentDigestSectionList && ![(NCNotificationCombinedSectionList *)self->_historySectionList containsSectionList:?])
  {
    v3 = [(NCNotificationRootList *)self _isCurrentDigestListInMissedSectionList];
    v4 = *MEMORY[0x277D77DD0];
    v5 = os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT);
    if (v3)
    {
      if (v5)
      {
        v6 = v4;
        v7 = [(NCNotificationRootList *)self logDescription];
        v8 = [(NCNotificationStructuredSectionList *)self->_currentDigestSectionList logDescription];
        v14 = 138543618;
        v15 = v7;
        v16 = 2114;
        v17 = v8;
        _os_log_impl(&dword_21E77E000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ moving %{public}@ from missed section to history", &v14, 0x16u);
      }

      [(NCNotificationRootList *)self _removeCurrentDigestSectionListFromMissedSectionList];
    }

    else
    {
      if (v5)
      {
        v9 = v4;
        v10 = [(NCNotificationRootList *)self logDescription];
        v11 = [(NCNotificationStructuredSectionList *)self->_currentDigestSectionList logDescription];
        v14 = 138543618;
        v15 = v10;
        v16 = 2114;
        v17 = v11;
        _os_log_impl(&dword_21E77E000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ moving %{public}@ from visible section to history", &v14, 0x16u);
      }

      [(NCNotificationRootList *)self _removeCurrentDigestSectionList];
    }

    [(NCNotificationStructuredSectionList *)self->_currentDigestSectionList setLogDescription:@"Read Digest"];
    [(NCNotificationStructuredSectionList *)self->_currentDigestSectionList setSectionType:6];
    v12 = [(NCNotificationSummarizedSectionList *)self->_currentDigestSectionList summaryOrderProvider];
    v13 = [(NCNotificationRootList *)self _newSummaryOrderProviderOfType:2 fromSummaryOrderProvider:v12];

    [(NCNotificationSummarizedSectionList *)self->_currentDigestSectionList setSummaryOrderProvider:v13];
    [(NCNotificationRootList *)self _setRevealed:1 forSection:self->_currentDigestSectionList];
    [(NCNotificationRootList *)self _insertCurrentDigestSectionListToHistorySectionList];
    [(NCNotificationListMigrationScheduler *)self->_migrationScheduler setMigrationDateForNotificationDigest:0];
  }
}

- (void)_dissolveCurrentDigestSectionListToHistorySection
{
  v18 = *MEMORY[0x277D85DE8];
  if (self->_currentDigestSectionList)
  {
    v3 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
    {
      v4 = v3;
      v5 = [(NCNotificationRootList *)self logDescription];
      v6 = [(NCNotificationStructuredSectionList *)self->_currentDigestSectionList logDescription];
      v7 = [(NCNotificationStructuredSectionList *)self->_historySectionList logDescription];
      *buf = 138543874;
      v13 = v5;
      v14 = 2114;
      v15 = v6;
      v16 = 2114;
      v17 = v7;
      _os_log_impl(&dword_21E77E000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ removing %{public}@ and moving all notifications to %{public}@", buf, 0x20u);
    }

    [(NCNotificationRootList *)self _removeCurrentDigestSectionListFromContainingSectionList];
    BYTE2(v11) = 1;
    LOWORD(v11) = 1;
    [NCNotificationRootList _migrateNotificationsFromList:"_migrateNotificationsFromList:toList:passingTest:filterRequestsPassingTest:hideToList:clearRequests:filterForDestination:animateRemoval:reorderGroupNotifications:" toList:self->_currentDigestSectionList passingTest:self->_historySectionList filterRequestsPassingTest:0 hideToList:0 clearRequests:0 filterForDestination:1 animateRemoval:v11 reorderGroupNotifications:?];
    v8 = +[NCNotificationEventTracker sharedInstance];
    v9 = [(NCNotificationSummarizedSectionList *)self->_currentDigestSectionList atxUUID];
    [v8 digestExpired:v9];

    currentDigestSectionList = self->_currentDigestSectionList;
    self->_currentDigestSectionList = 0;
  }
}

- (BOOL)_shouldInsertCurrentDigestIntoMissedSectionList
{
  v3 = [(NCNotificationRootList *)self isMissedSectionActive];
  v4 = [(NCNotificationRootList *)self activeDNDModeConfiguration];
  v5 = v4;
  if (v3 && v4)
  {
    LOBYTE(v3) = [v4 nc_modeConfigurationHasExclusiveAppConfigurationType];
  }

  return v3;
}

- (id)_sectionListsThatSuppressDigest
{
  v3 = MEMORY[0x277CBEB18];
  v4 = [(NCNotificationRootList *)self _sectionListsThatSuppressLargeFormatContent];
  v5 = [v3 arrayWithArray:v4];

  if (v5)
  {
    if (self->_incomingSectionList)
    {
      [v5 addObject:?];
    }

    if (self->_highlightedSectionList)
    {
      [v5 addObject:?];
    }
  }

  v6 = [v5 copy];

  return v6;
}

- (id)_sectionListsThatSuppressLargeFormatContent
{
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = v3;
  if (self->_criticalSectionList)
  {
    [v3 addObject:?];
  }

  if (self->_persistentSectionList)
  {
    [v4 addObject:?];
  }

  if (self->_prominentIncomingSectionList)
  {
    [v4 addObject:?];
  }

  v5 = [v4 copy];

  return v5;
}

- (BOOL)_suppressesCurrentDigestForNotifications
{
  v2 = self;
  v3 = [(NCNotificationRootList *)self _sectionListsThatSuppressDigest];
  LOBYTE(v2) = [(NCNotificationRootList *)v2 _suppressesForLists:v3 forProminentContentThreshold:1];

  return v2;
}

- (BOOL)_suppressesHighlightsPlatterForNotifications
{
  v2 = self;
  v3 = [(NCNotificationRootList *)self _sectionListsThatSuppressLargeFormatContent];
  LOBYTE(v2) = [(NCNotificationRootList *)v2 _suppressesForLists:v3 forProminentContentThreshold:3];

  return v2;
}

- (void)_updateForceExpansionForHighlights
{
  v5 = [(NCNotificationRootList *)self highlightedSectionList];
  v3 = [v5 forceExpanded];
  v4 = [(NCNotificationRootList *)self _suppressesHighlightsPlatterForNotifications];
  if (v3 != v4)
  {
    [v5 setForceExpanded:v4];
  }
}

- (BOOL)_suppressesForLists:(id)a3 forProminentContentThreshold:(int64_t)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (a4)
  {
    v7 = [(NCNotificationRootList *)self _numberOfLiveActivities];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [*(*(&v15 + 1) + 8 * i) allNotificationRequests];
          v7 += [v13 count];
        }

        v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v10);
    }

    LOBYTE(a4) = v7 >= a4;
  }

  return a4;
}

- (int64_t)_numberOfLiveActivities
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = [(NCNotificationRootList *)self supplementaryViewsSections];
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v12 + 1) + 8 * i);
        v8 = [v7 identifier];
        v9 = [v8 isEqualToString:@"LiveActivities"];

        if (v9)
        {
          v10 = [v7 supplementaryViewControllersCount];
          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (void)_addStateCaptureBlock
{
  objc_initWeak(&location, self);
  v2 = MEMORY[0x277D85CD0];
  v3 = MEMORY[0x277D85CD0];
  v8[1] = MEMORY[0x277D85DD0];
  v8[2] = 3221225472;
  v8[3] = __47__NCNotificationRootList__addStateCaptureBlock__block_invoke;
  v8[4] = &unk_2783704C0;
  objc_copyWeak(&v9, &location);
  v4 = BSLogAddStateCaptureBlockWithTitle();

  v7[1] = MEMORY[0x277D85DD0];
  v7[2] = 3221225472;
  v7[3] = __47__NCNotificationRootList__addStateCaptureBlock__block_invoke_2;
  v7[4] = &unk_2783704C0;
  objc_copyWeak(v8, &location);
  v5 = BSLogAddStateCaptureBlockWithTitle();

  objc_copyWeak(v7, &location);
  v6 = BSLogAddStateCaptureBlockWithTitle();

  objc_destroyWeak(v7);
  objc_destroyWeak(v8);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

id __47__NCNotificationRootList__addStateCaptureBlock__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained persistentStateManager];
  v3 = [WeakRetained _sectionsForStateDump];
  v4 = [WeakRetained notificationListCache];
  v5 = [WeakRetained migrationScheduler];
  v6 = [WeakRetained _listInfoForStateCapture];
  v7 = [v2 stateRepresentationForNotificationList:WeakRetained sectionLists:v3 listCache:v4 migrationScheduler:v5 listInfo:v6 detailed:1];

  return v7;
}

id __47__NCNotificationRootList__addStateCaptureBlock__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (WeakRetained)
  {
    [WeakRetained overrideMigrationToHistory];
    v3 = NSStringFromBOOL();
    [v2 setValue:v3 forKey:@"OverrideMigrationToHistory"];

    v4 = MEMORY[0x277CCABB0];
    [WeakRetained overrideNotificationMigrateTimeSensitiveToHistoryTimeIntervalKey];
    v5 = [v4 numberWithDouble:?];
    [v2 setValue:v5 forKey:@"OverrideMigrateTimeSensitiveToHistoryTimeInterval"];

    v6 = MEMORY[0x277CCABB0];
    [WeakRetained overrideNotificationMigrateHighlightToHistoryTimeIntervalKey];
    v7 = [v6 numberWithDouble:?];
    [v2 setValue:v7 forKey:@"OverrideMigrateHighlightToHistoryTimeInterval"];
  }

  return v2;
}

id __47__NCNotificationRootList__addStateCaptureBlock__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (WeakRetained)
  {
    _NCIsNotificationHighlightsAllowed();
    v4 = NSStringFromBOOL();
    [v3 setValue:v4 forKey:@"isNotificationHighlightsAllowed"];

    +[NCPlatformEligibility areGenerativeModelsAvailable];
    v5 = NSStringFromBOOL();
    [v3 setValue:v5 forKey:@"areGenerativeModelsAvailable"];

    [WeakRetained _areHighlightsEnabled];
    v6 = NSStringFromBOOL();
    [v3 setValue:v6 forKey:@"areHighlightEnabled"];

    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v8 = [*(a1 + 32) notificationSections];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __47__NCNotificationRootList__addStateCaptureBlock__block_invoke_4;
    v12[3] = &unk_27836F768;
    v13 = v7;
    v9 = v7;
    [v8 enumerateObjectsUsingBlock:v12];

    v10 = [v9 componentsJoinedByString:@"/"];
    [v3 setValue:v10 forKey:@"availableSections"];
  }

  return v3;
}

void __47__NCNotificationRootList__addStateCaptureBlock__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = NCNotificationListSectionTypeString([a2 sectionType]);
  [v2 addObject:v3];
}

- (id)_listInfoForStateCapture
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = [(NCNotificationRootList *)self _listInfoForPersistentState];
  if (v4)
  {
    [v3 addEntriesFromDictionary:v4];
  }

  if (self->_upcomingDigestSectionList)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithBool:{-[NCNotificationRootList isUpcomingDigestVisible](self, "isUpcomingDigestVisible")}];
    [v3 setObject:v5 forKey:@"isUpcomingDigestVisible"];
  }

  if ([(NCNotificationRootList *)self isOnboardingSummaryVisible])
  {
    v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[NCNotificationRootList isOnboardingSummaryVisible](self, "isOnboardingSummaryVisible")}];
    [v3 setObject:v6 forKey:@"isOnboardingDigestVisible"];
  }

  v7 = [MEMORY[0x277D77E68] stringForNotificationListDisplayStyleSetting:{-[NCNotificationRootList currentListDisplayStyleSetting](self, "currentListDisplayStyleSetting")}];
  [v3 setObject:v7 forKey:@"currentListDisplayStyleSetting"];

  if ([v3 count])
  {
    v8 = v3;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  return v8;
}

- (id)_sectionsForStateDump
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = v3;
  if (self->_criticalSectionList)
  {
    [v3 addObject:?];
  }

  if (self->_persistentSectionList)
  {
    [v4 addObject:?];
  }

  if (self->_highlightedSectionList)
  {
    [v4 addObject:?];
  }

  if (self->_prominentIncomingSectionList)
  {
    [v4 addObject:?];
  }

  if (self->_incomingSectionList)
  {
    [v4 addObject:?];
  }

  if (self->_currentDigestSectionList)
  {
    [v4 addObject:?];
  }

  if (self->_upcomingDigestSectionList)
  {
    [v4 addObject:?];
  }

  if (self->_upcomingMissedSectionList)
  {
    [v4 addObject:?];
  }

  if (self->_historySectionList)
  {
    [v4 addObject:?];
  }

  return v4;
}

- (id)_digestTestRecipe
{
  v4[4] = self;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __43__NCNotificationRootList__digestTestRecipe__block_invoke;
  v5[3] = &unk_27836F6A8;
  v5[4] = self;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __43__NCNotificationRootList__digestTestRecipe__block_invoke_310;
  v4[3] = &unk_27836F6A8;
  v2 = [MEMORY[0x277D431D0] recipeWithTitle:@"Notification Digest Promotion/Onboarding Suggestion" increaseAction:v5 decreaseAction:v4];

  return v2;
}

void __43__NCNotificationRootList__digestTestRecipe__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  if (([*(a1 + 32) _isCurrentDigestListAboveHistorySectionList] & 1) != 0 || objc_msgSend(*(a1 + 32), "_isCurrentDigestListInMissedSectionList"))
  {
    v2 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 32);
      v4 = v2;
      v5 = [v3 logDescription];
      v15 = 138543362;
      v16 = v5;
      _os_log_impl(&dword_21E77E000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ migrating current digest to Notification Center via test recipe", &v15, 0xCu);
    }

    [*(a1 + 32) _migrateCurrentDigestSectionListToReadSection];
LABEL_6:
    [*(a1 + 32) _notificationListDidChangeContent];
    return;
  }

  v6 = [*(a1 + 32) upcomingDigestSectionList];
  v7 = [v6 count];

  if (v7)
  {
    v8 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v10 = v8;
      v11 = [v9 logDescription];
      v15 = 138543362;
      v16 = v11;
      _os_log_impl(&dword_21E77E000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ promoting upcoming digest to current digest via test recipe", &v15, 0xCu);
    }

    [*(a1 + 32) _migrateCurrentDigestSectionListToReadSection];
    [*(a1 + 32) _migrateUpcomingDigestSectionListToCurrentDigestSectionList];
    v12 = *(a1 + 32);
    v13 = [v12 digestScheduleManager];
    v14 = [v13 upcomingScheduledDigestInfo];
    [v12 _configureUpcomingDigestSectionListWithDigestInfo:v14];

    goto LABEL_6;
  }
}

uint64_t __43__NCNotificationRootList__digestTestRecipe__block_invoke_310(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D77DD0];
  if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 logDescription];
    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&dword_21E77E000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ requests presenting digest onboarding platter via test recipe", &v7, 0xCu);
  }

  if ([*(a1 + 32) isOnboardingSummaryVisible])
  {
    [*(a1 + 32) setOnboardingSummaryVisible:0];
  }

  [*(a1 + 32) _migrateCurrentDigestSectionListToReadSection];
  [*(a1 + 32) _dissolveCurrentDigestSectionListToHistorySection];
  return [*(a1 + 32) setOnboardingSummaryVisible:1];
}

- (id)_notificationMigrationOverrideTestRecipe
{
  v4[4] = self;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __66__NCNotificationRootList__notificationMigrationOverrideTestRecipe__block_invoke;
  v5[3] = &unk_27836F6A8;
  v5[4] = self;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __66__NCNotificationRootList__notificationMigrationOverrideTestRecipe__block_invoke_317;
  v4[3] = &unk_27836F6A8;
  v2 = [MEMORY[0x277D431D0] recipeWithTitle:@"Notification List History Migration Override [UP: Enable increaseAction:DN: Disable]" decreaseAction:{v5, v4}];

  return v2;
}

uint64_t __66__NCNotificationRootList__notificationMigrationOverrideTestRecipe__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (([*(a1 + 32) overrideMigrationToHistory] & 1) == 0)
  {
    v2 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 32);
      v4 = v2;
      v5 = [v3 logDescription];
      v7 = 138543362;
      v8 = v5;
      _os_log_impl(&dword_21E77E000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ overriding notification migration to history via test recipe", &v7, 0xCu);
    }

    [*(a1 + 32) setOverrideMigrationToHistory:1];
  }

  return [*(a1 + 32) _updateOverrideMigrationOverlayLabelWithText:@"Overriding Notification Migration" forOverrideState:1];
}

uint64_t __66__NCNotificationRootList__notificationMigrationOverrideTestRecipe__block_invoke_317(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) overrideMigrationToHistory])
  {
    v2 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 32);
      v4 = v2;
      v5 = [v3 logDescription];
      v7 = 138543362;
      v8 = v5;
      _os_log_impl(&dword_21E77E000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ removing override for notification migration to history via test recipe", &v7, 0xCu);
    }

    [*(a1 + 32) setOverrideMigrationToHistory:0];
  }

  return [*(a1 + 32) _updateOverrideMigrationOverlayLabelWithText:@"Removing Notification Migration Override" forOverrideState:0];
}

- (void)_configureOverrideMigrationOverlayLabelIfNecessary
{
  v3 = [(NCNotificationRootList *)self overrideMigrationOverlayLabel];

  if (!v3)
  {
    v4 = objc_alloc(MEMORY[0x277D756B8]);
    v5 = [(NCNotificationRootList *)self rootListView];
    [v5 bounds];
    v13 = [v4 initWithFrame:?];

    [v13 setNumberOfLines:0];
    [v13 setTextAlignment:1];
    v6 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76A08]];
    [v13 setFont:v6];

    v7 = [MEMORY[0x277D75348] whiteColor];
    [v13 setTextColor:v7];

    v8 = [v13 layer];
    LODWORD(v9) = 1041865114;
    [v8 setShadowOpacity:v9];

    v10 = [v13 layer];
    [v10 setShadowRadius:5.0];

    v11 = [v13 layer];
    [v11 setShadowOffset:{0.0, 2.0}];

    v12 = [(NCNotificationRootList *)self rootListView];
    [v12 addSubview:v13];

    [(NCNotificationRootList *)self setOverrideMigrationOverlayLabel:v13];
  }
}

- (void)_updateOverrideMigrationOverlayLabelWithText:(id)a3 forOverrideState:(BOOL)a4
{
  v6 = a3;
  [(NCNotificationRootList *)self _configureOverrideMigrationOverlayLabelIfNecessary];
  v7 = [(NCNotificationRootList *)self overrideMigrationOverlayLabel];
  [v7 setText:v6];

  v8 = [(NCNotificationRootList *)self overrideMigrationOverlayLabel];
  [v8 setAlpha:0.0];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __88__NCNotificationRootList__updateOverrideMigrationOverlayLabelWithText_forOverrideState___block_invoke;
  v11[3] = &unk_27836F6A8;
  v11[4] = self;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __88__NCNotificationRootList__updateOverrideMigrationOverlayLabelWithText_forOverrideState___block_invoke_2;
  v9[3] = &unk_278370510;
  v9[4] = self;
  v10 = a4;
  [MEMORY[0x277D75D18] animateWithDuration:0 delay:v11 options:v9 animations:0.3 completion:0.0];
}

void __88__NCNotificationRootList__updateOverrideMigrationOverlayLabelWithText_forOverrideState___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) overrideMigrationOverlayLabel];
  [v1 setAlpha:1.0];
}

uint64_t __88__NCNotificationRootList__updateOverrideMigrationOverlayLabelWithText_forOverrideState___block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) overrideMigrationToHistory];
  v3 = *(a1 + 40);
  if (v3 == result)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __88__NCNotificationRootList__updateOverrideMigrationOverlayLabelWithText_forOverrideState___block_invoke_3;
    v6[3] = &unk_27836F6A8;
    v7 = *(a1 + 32);
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __88__NCNotificationRootList__updateOverrideMigrationOverlayLabelWithText_forOverrideState___block_invoke_4;
    v4[3] = &unk_278370510;
    v4[4] = v7;
    v5 = v3;
    return [MEMORY[0x277D75D18] animateWithDuration:0 delay:v6 options:v4 animations:1.0 completion:1.0];
  }

  return result;
}

void __88__NCNotificationRootList__updateOverrideMigrationOverlayLabelWithText_forOverrideState___block_invoke_3(uint64_t a1)
{
  v1 = [*(a1 + 32) overrideMigrationOverlayLabel];
  [v1 setAlpha:0.0];
}

uint64_t __88__NCNotificationRootList__updateOverrideMigrationOverlayLabelWithText_forOverrideState___block_invoke_4(uint64_t a1)
{
  result = [*(a1 + 32) overrideMigrationToHistory];
  if (*(a1 + 40) == result)
  {
    v3 = [*(a1 + 32) overrideMigrationOverlayLabel];
    [v3 removeFromSuperview];

    v4 = *(a1 + 32);

    return [v4 setOverrideMigrationOverlayLabel:0];
  }

  return result;
}

- (id)initForTesting
{
  v3 = [[NCNotificationListView alloc] initWithModelType:objc_opt_class() purpose:@"Testing"];
  v4 = [(NCNotificationRootList *)self _initWithListView:v3 delegate:0];

  return v4;
}

- (void)testPromoteUpcomingDigestToCurrentDigest
{
  [(NCNotificationRootList *)self _migrateUpcomingDigestSectionListToCurrentDigestSectionList];

  [(NCNotificationRootList *)self _notificationListDidChangeContent];
}

- (void)testDigestTimerFired
{
  v3 = [(NCNotificationRootList *)self digestScheduleManager];
  v4 = [v3 upcomingScheduledDigestInfo];

  [(NCNotificationRootList *)self publishScheduledDigest:v4 upcomingDigest:v4];
}

- (void)testDigestTimerUpdated
{
  v3 = [(NCNotificationRootList *)self digestScheduleManager];
  v4 = [v3 upcomingScheduledDigestInfo];

  [(NCNotificationRootList *)self publishUpcomingDigest:v4];
}

- (void)testDigestTimerRevoke
{
  v3 = [(NCNotificationRootList *)self digestScheduleManager];
  v4 = [v3 upcomingScheduledDigestInfo];

  [(NCNotificationRootList *)self revokeUpcomingDigest:v4];
}

- (void)setOnboardingSummaryVisible:(void *)a1 .cold.1(void *a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 logDescription];
  v5 = 138543362;
  v6 = v4;
  _os_log_error_impl(&dword_21E77E000, v3, OS_LOG_TYPE_ERROR, "%{public}@ tried to create onboarding summary while a current digest already exists!", &v5, 0xCu);
}

- (void)setOnboardingSummaryVisible:(void *)a1 .cold.2(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_1_0() logDescription];
  OUTLINED_FUNCTION_0_0(&dword_21E77E000, v4, v5, "%{public}@ not creating onboarding summary because notification count is %lu", v6, v7, v8, v9, 2u);
}

- (void)removeNotificationRequest:(void *)a1 .cold.1(void *a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a1;
  [a2 logDescription];
  objc_claimAutoreleasedReturnValue();
  v4 = [OUTLINED_FUNCTION_1_0() notificationIdentifier];
  v5 = [v4 un_logDigest];
  v6 = 138543618;
  v7 = a2;
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(&dword_21E77E000, v3, OS_LOG_TYPE_ERROR, "%{public}@ notification request %{public}@ has empty requestDestinations! Please check with client or UN.", &v6, 0x16u);
}

void __91__NCNotificationRootList__higherSectionToElevateForNotificationRequest_currentSectionType___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [OUTLINED_FUNCTION_1_0() logDescription];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4(&dword_21E77E000, v5, v6, "%{public}@ Can't map %{public}@ to NCNotificationListSectionType enum!", v7, v8, v9, v10, v11);
}

- (void)_configureUpcomingDigestSectionListWithDigestInfo:(id *)a3 .cold.1(void *a1, uint64_t a2, id *a3)
{
  v5 = a1;
  v6 = [OUTLINED_FUNCTION_1_0() logDescription];
  v7 = [*a3 logDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0(&dword_21E77E000, v8, v9, "%{public}@ configuring a new upcoming section while one already exists %{public}@", v10, v11, v12, v13, 2u);
}

- (void)_configureCurrentDigestSectionListWithDigestInfo:(void *)a1 sectionType:(uint64_t)a2 summaryOrderProviderType:(id *)a3 .cold.1(void *a1, uint64_t a2, id *a3)
{
  v5 = a1;
  v6 = [OUTLINED_FUNCTION_1_0() logDescription];
  v7 = [*a3 logDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0(&dword_21E77E000, v8, v9, "%{public}@ configuring a new current digest section while one already exists %{public}@", v10, v11, v12, v13, 2u);
}

@end