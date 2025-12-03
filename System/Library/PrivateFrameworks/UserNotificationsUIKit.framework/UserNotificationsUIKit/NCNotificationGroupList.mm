@interface NCNotificationGroupList
+ (NSSet)presentableTypes;
- (BOOL)_allowPanningForRequest:(id)request;
- (BOOL)_handleTapToExpandGroupForNotificationRequest:(id)request;
- (BOOL)_isContentRevealedForNotificationRequest:(id)request;
- (BOOL)_shouldAllowInteractionWithNotificationViewController:(id)controller;
- (BOOL)_shouldShowClearActionForRequest:(id)request;
- (BOOL)_shouldShowOpenActionToPerformDefaultActionForRequest:(id)request;
- (BOOL)_shouldShowOpenActionToPerformLongLookPresentationForRequest:(id)request;
- (BOOL)_shouldShowOptionsActionForRequest:(id)request;
- (BOOL)_shouldShowViewActionForRequest:(id)request;
- (BOOL)containsCommunicationTypeNotificationRequests;
- (BOOL)containsNonPersistentNotificationRequests;
- (BOOL)containsNotificationRequest:(id)request;
- (BOOL)containsPersistentNotificationRequests;
- (BOOL)containsTimeSensitiveNotificationRequests;
- (BOOL)handleTapOnNotificationViewController:(id)controller;
- (BOOL)hasNewTimeSensitiveNotificationRequestsWithMigratedTimeSensitiveNotificationRequests:(id)requests;
- (BOOL)isAttachmentImageFeaturedForNotificationViewController:(id)controller;
- (BOOL)isCurrentlyInDisplayListAsStackMode:(id)mode;
- (BOOL)isEligibleForStackElevationMigration;
- (BOOL)isEligibleToPerformGroupAnimationForNotificationList:(id)list toGrouped:(BOOL)grouped;
- (BOOL)isGroupForNotificationRequest:(id)request;
- (BOOL)isLeadingNotificationRequest:(id)request;
- (BOOL)isRichNotificationContentViewForNotificationViewController:(id)controller;
- (BOOL)matchesGroup:(id)group;
- (BOOL)notificationViewControllerShouldAllowClickPresentationInteraction:(id)interaction;
- (BOOL)notificationViewControllerShouldAllowExpandedPlatterInteraction:(id)interaction;
- (BOOL)notificationViewControllerShouldAllowLongPressGesture:(id)gesture;
- (BOOL)removeNotificationRequest:(id)request;
- (BOOL)shouldAlignContentToBottomForNotificationViewController:(id)controller;
- (BOOL)shouldContinuePresentingActionButtonsForNotificationListCell:(id)cell;
- (BOOL)shouldShowDefaultActionForNotificationListCell:(id)cell;
- (BOOL)shouldShowSupplementaryActionsForNotificationListCell:(id)cell;
- (BOOL)shouldVerticallyStackActionButtonsForNotificationListCell:(id)cell;
- (BOOL)summarizedNotificationsAllHaveMatchingIcons;
- (BOOL)summarizedNotificationsAllHaveMatchingPrimaryText;
- (BOOL)updateLeadingNotificationRequestContentProvider:(id)provider;
- (CGRect)notificationViewController:(id)controller finalFrameForDismissingLongLookFromView:(id)view;
- (CGRect)notificationViewController:(id)controller initialFrameForPresentingLongLookFromView:(id)view;
- (NCNotificationGroupList)initWithSectionIdentifier:(id)identifier threadIdentifier:(id)threadIdentifier;
- (NCNotificationRequest)leadingNotificationRequest;
- (NSArray)allNotificationRequests;
- (NSArray)criticalAlerts;
- (NSArray)persistentNotificationRequests;
- (NSString)logDescription;
- (double)notificationListView:(id)view heightForItemAtIndex:(unint64_t)index withWidth:(double)width inDisplayListAsStackMode:(BOOL)mode ignoreExpandedGroupStack:(BOOL)stack;
- (id)_cachedCellForNotificationRequest:(id)request createNewIfNecessary:(BOOL)necessary shouldConfigure:(BOOL)configure forceShowContent:(BOOL)content;
- (id)_clearActionForRequest:(id)request clearAll:(BOOL)all;
- (id)_clockSnoozeAlarmNotificationStaticContentProviderForNotificationRequest:(id)request viewController:(id)controller;
- (id)_currentCellForNotificationRequest:(id)request;
- (id)_openActionForRequest:(id)request;
- (id)_optionsActionForRequest:(id)request;
- (id)_presentLongLookActionForRequest:(id)request title:(id)title identifier:(id)identifier;
- (id)_presentLongLookActionWithOpenTitleForRequest:(id)request;
- (id)_presentLongLookActionWithViewTitleForRequest:(id)request;
- (id)_requestForListCell:(id)cell;
- (id)allAvailableCells;
- (id)animator;
- (id)clearAllText;
- (id)defaultActionForNotificationListCell:(id)cell;
- (id)headerText;
- (id)hideHomeAffordanceAnimationSettingsForNotificationViewController:(id)controller;
- (id)notificationListView:(id)view viewForItemAtIndex:(unint64_t)index;
- (id)notificationRequestPresenter:(id)presenter staticContentProviderForNotificationRequest:(id)request;
- (id)notificationRequestPresenterNotificationUsageTrackingState:(id)state;
- (id)notificationViewController:(id)controller auxiliaryOptionsContentProviderForNotificationRequest:(id)request withLongLook:(BOOL)look;
- (id)notificationViewController:(id)controller keyboardAssertionForGestureWindow:(id)window;
- (id)notificationViewControllerContainerViewProviderForExpandedContent:(id)content;
- (id)notificationViewControllerRequestCustomPlatterBackgroundView:(id)view;
- (id)purposeWithSensitiveTextHashed:(BOOL)hashed;
- (id)settleHomeAffordanceAnimationBehaviorDescriptionForNotificationViewController:(id)controller;
- (id)supplementaryActionsForNotificationListCell:(id)cell;
- (id)unhideHomeAffordanceAnimationSettingsForNotificationViewController:(id)controller;
- (int64_t)_compareNotificationRequest:(id)request withNotificationRequest:(id)notificationRequest;
- (int64_t)compare:(id)compare;
- (int64_t)insertNotificationRequest:(id)request;
- (int64_t)notificationViewControllerDateFormatStyle:(id)style;
- (unint64_t)_existingIndexForCriticalNotificationRequest:(id)request;
- (unint64_t)_existingIndexForNotificationRequest:(id)request;
- (unint64_t)_insertionIndexForNotificationRequest:(id)request;
- (unint64_t)_lockScreenPersistenceForNotificationRequest:(id)request;
- (unint64_t)_lockScreenPriorityForNotificationRequest:(id)request;
- (unint64_t)count;
- (unint64_t)importantAdornmentEligibleOptionsForNotificationViewController:(id)controller;
- (unint64_t)indexOfNotificationRequestPassingTest:(id)test;
- (unint64_t)notificationCount;
- (unint64_t)notificationListViewNumberOfItems:(id)items;
- (unint64_t)summarizedNotificationCountForLeadingRequest;
- (void)_executeClearActionForRequest:(id)request;
- (void)_executeOptionsActionForRequest:(id)request action:(id)action;
- (void)_executeViewActionForRequest:(id)request;
- (void)_hintSideSwipeForDefaultActionForNotificationRequest:(id)request;
- (void)_invalidateSnoozeAlarmNotificationStaticContentProviderTimerForNotificationRequest:(id)request;
- (void)_loadLeadingNotificationRequestCellIfNecessary;
- (void)_performAction:(id)action forNotificationRequest:(id)request withCompletion:(id)completion;
- (void)_reloadAllNotificationRequests;
- (void)_reloadNotificationCellAtIndex:(unint64_t)index;
- (void)_reloadNotificationViewForNotificationRequest:(id)request forceReloadView:(BOOL)view animated:(BOOL)animated;
- (void)_reloadRecycledGroupedNotificationCells;
- (void)_reloadRecycledNotificationCellForRequest:(id)request;
- (void)_scrollToTopIfNecessaryAndPerformBlock:(id)block;
- (void)_setGrouped:(BOOL)grouped;
- (void)_updateSummariesForLeadingNotificationRequest:(id)request forceReload:(BOOL)reload;
- (void)_updateSummariesForNewLeadingNotificationRequest:(id)request oldLeadingNotificationRequest:(id)notificationRequest;
- (void)clearAll;
- (void)longLookDidDismissForNotificationViewController:(id)controller;
- (void)longLookWillDismissForNotificationViewController:(id)controller;
- (void)longLookWillPresentForNotificationViewController:(id)controller;
- (void)mergeNotificationRequests:(id)requests;
- (void)modifyNotificationRequest:(id)request;
- (void)notificationListDidLayoutSubviews;
- (void)notificationListView:(id)view didRemoveView:(id)removeView;
- (void)notificationListView:(id)view willRemoveView:(id)removeView;
- (void)notificationManagementContentProvider:(id)provider requestsPresentingNotificationManagementViewType:(unint64_t)type forNotificationRequest:(id)request withPresentingView:(id)view;
- (void)notificationRequestPresenter:(id)presenter executeAction:(id)action withParameters:(id)parameters completion:(id)completion;
- (void)notificationRequestPresenter:(id)presenter shouldTransitionToStage:(id)stage forTrigger:(int64_t)trigger completionBlock:(id)block;
- (void)notificationViewController:(id)controller didUpdatePreferredContentSize:(CGSize)size;
- (void)notificationViewController:(id)controller dismissPresentLongLookForRequst:(id)requst animator:(id)animator;
- (void)notificationViewController:(id)controller isPerformingHoverHighlighting:(BOOL)highlighting;
- (void)notificationViewController:(id)controller requestPermissionToExecuteAction:(id)action withParameters:(id)parameters completion:(id)completion;
- (void)notificationViewController:(id)controller willPresentLongLookForRequst:(id)requst animator:(id)animator;
- (void)notificationViewControllerDidEndUserInteraction:(id)interaction;
- (void)notificationViewControllerWillBeginUserInteraction:(id)interaction;
- (void)notificationViewControllerWillDismissForCancelAction:(id)action;
- (void)recycleView:(id)view;
- (void)reloadLeadingNotificationRequestIfNecessaryWithAnimation:(BOOL)animation;
- (void)reloadLeadingNotificationRequestWithAnimation:(BOOL)animation;
- (void)reloadNotificationRequest:(id)request;
- (void)setDeviceAuthenticated:(BOOL)authenticated;
- (void)setIndividualCellBackgroundAlpha:(double)alpha;
- (void)toggleGroupedState;
- (void)updateComparisonDate;
- (void)updateNotificationSectionSettings:(id)settings previousSectionSettings:(id)sectionSettings;
- (void)updateOrderedNotificationRequests:(id)requests;
- (void)updateStackSummariesIfNeeded;
@end

@implementation NCNotificationGroupList

- (unint64_t)notificationCount
{
  orderedRequests = [(NCNotificationGroupList *)self orderedRequests];
  v3 = [orderedRequests count];

  return v3;
}

- (NSArray)allNotificationRequests
{
  orderedRequests = [(NCNotificationGroupList *)self orderedRequests];
  v3 = [orderedRequests copy];

  return v3;
}

- (NSString)logDescription
{
  v3 = MEMORY[0x277CCACA8];
  sectionIdentifier = [(NCNotificationGroupList *)self sectionIdentifier];
  threadIdentifier = [(NCNotificationGroupList *)self threadIdentifier];
  un_logDigest = [threadIdentifier un_logDigest];
  v7 = [v3 stringWithFormat:@"Group List [%@:%@]", sectionIdentifier, un_logDigest];

  return v7;
}

- (NCNotificationRequest)leadingNotificationRequest
{
  orderedRequests = [(NCNotificationGroupList *)self orderedRequests];
  firstObject = [orderedRequests firstObject];

  return firstObject;
}

- (void)updateStackSummariesIfNeeded
{
  v38 = *MEMORY[0x277D85DE8];
  orderedRequests = [(NCNotificationGroupList *)self orderedRequests];
  v4 = [orderedRequests copy];

  v5 = [v4 count];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = v4;
  v6 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v34;
    v29 = v5;
    v30 = *v34;
    do
    {
      v9 = 0;
      do
      {
        if (*v34 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v33 + 1) + 8 * v9);
        v11 = [(NCNotificationGroupList *)self contentProviders:v29];
        v12 = [v11 objectForKey:v10];

        v13 = [(NCNotificationGroupList *)self _currentCellForNotificationRequest:v10];
        if (v12)
        {
          stackedNotificationsCount = [v12 stackedNotificationsCount];
          v15 = stackedNotificationsCount != 0;
          if (stackedNotificationsCount)
          {
            [v12 setStackedNotificationsCount:0];
          }

          if ([v12 summarizedNotificationsAllHaveMatchingPrimaryText])
          {
            [v12 setSummarizedNotificationsAllHaveMatchingPrimaryText:0];
            v15 = 1;
          }

          if ([v12 summarizedNotificationsAllHaveMatchingIcons])
          {
            [v12 setSummarizedNotificationsAllHaveMatchingIcons:0];
            v15 = 1;
          }

          if (v5 > 1 != [v12 isDisplayingInStack])
          {
            [v12 setDisplayingInStack:v5 > 1];
            v15 = 1;
          }

          if ([v12 isThreadSummary])
          {
            [v12 setIsThreadSummary:0];
            v15 = 1;
          }

          if (!v13 || ([v13 notificationViewController], v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "currentTraits"), v17 = v7, v18 = objc_claimAutoreleasedReturnValue(), v32 = v15, v19 = v13, v20 = v10, v21 = objc_msgSend(v18, "isGroupCollapsed"), v22 = -[NCNotificationListPresentableGroup isGrouped](self, "isGrouped"), v18, v7 = v17, v16, v5 = v29, v8 = v30, v23 = v21 == v22, v10 = v20, v13 = v19, v15 = v32, v23))
          {
            if (!v15)
            {
              goto LABEL_22;
            }
          }

          else
          {
            notificationViewController = [v13 notificationViewController];
            [notificationViewController setHasUpdatedContent];
          }

          [(NCNotificationGroupList *)self reloadNotificationViewForNotificationRequest:v10 animated:1];
        }

LABEL_22:

        ++v9;
      }

      while (v7 != v9);
      v7 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v7);
  }

  leadingNotificationRequest = [(NCNotificationGroupList *)self leadingNotificationRequest];
  contentProviders = [(NCNotificationGroupList *)self contentProviders];
  v27 = [contentProviders objectForKey:leadingNotificationRequest];
  v28 = [(NCNotificationGroupList *)self updateLeadingNotificationRequestContentProvider:v27];

  if (v28)
  {
    [(NCNotificationGroupList *)self reloadNotificationViewForNotificationRequest:leadingNotificationRequest animated:1];
  }
}

- (unint64_t)count
{
  orderedRequests = [(NCNotificationGroupList *)self orderedRequests];
  v3 = [orderedRequests count];

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

- (void)_loadLeadingNotificationRequestCellIfNecessary
{
  leadingNotificationRequest = [(NCNotificationGroupList *)self leadingNotificationRequest];
  v4 = [(NCNotificationGroupList *)self _currentCellForNotificationRequest:leadingNotificationRequest];

  if (!v4)
  {
    leadingNotificationRequest2 = [(NCNotificationGroupList *)self leadingNotificationRequest];
    v5 = [(NCNotificationGroupList *)self _cachedCellForNotificationRequest:leadingNotificationRequest2 createNewIfNecessary:1 shouldConfigure:1 forceShowContent:1];
  }
}

- (NCNotificationGroupList)initWithSectionIdentifier:(id)identifier threadIdentifier:(id)threadIdentifier
{
  identifierCopy = identifier;
  threadIdentifierCopy = threadIdentifier;
  v20.receiver = self;
  v20.super_class = NCNotificationGroupList;
  v9 = [(NCNotificationGroupList *)&v20 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_sectionIdentifier, identifier);
    objc_storeStrong(&v10->_threadIdentifier, threadIdentifier);
    v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
    orderedRequests = v10->_orderedRequests;
    v10->_orderedRequests = v11;

    v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
    contentProviders = v10->_contentProviders;
    v10->_contentProviders = v13;

    v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
    clockSnoozeAlarmContentProviders = v10->_clockSnoozeAlarmContentProviders;
    v10->_clockSnoozeAlarmContentProviders = v15;

    v17 = objc_alloc_init(NCNotificationSummaryBuilder);
    summaryBuilder = v10->_summaryBuilder;
    v10->_summaryBuilder = v17;

    v10->_individualCellBackgroundAlpha = 1.0;
  }

  return v10;
}

- (NSArray)persistentNotificationRequests
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  allNotificationRequests = [(NCNotificationGroupList *)self allNotificationRequests];
  v5 = [allNotificationRequests countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v14 != v7)
      {
        objc_enumerationMutation(allNotificationRequests);
      }

      v9 = *(*(&v13 + 1) + 8 * v8);
      options = [v9 options];
      lockScreenPersistence = [options lockScreenPersistence];

      if (!lockScreenPersistence)
      {
        break;
      }

      [v3 addObject:v9];
      if (v6 == ++v8)
      {
        v6 = [allNotificationRequests countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  return v3;
}

- (NSArray)criticalAlerts
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  notificationSectionSettings = [(NCNotificationGroupList *)self notificationSectionSettings];
  criticalAlertsEnabled = [notificationSectionSettings criticalAlertsEnabled];

  if (criticalAlertsEnabled)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    allNotificationRequests = [(NCNotificationGroupList *)self allNotificationRequests];
    v7 = [allNotificationRequests countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(allNotificationRequests);
          }

          v11 = *(*(&v13 + 1) + 8 * i);
          if ([v11 isCriticalAlert])
          {
            [v3 addObject:v11];
          }
        }

        v8 = [allNotificationRequests countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }
  }

  return v3;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  leadingNotificationRequest = [(NCNotificationGroupList *)self leadingNotificationRequest];
  leadingNotificationRequest2 = [compareCopy leadingNotificationRequest];

  v7 = [(NCNotificationGroupList *)self _compareNotificationRequest:leadingNotificationRequest withNotificationRequest:leadingNotificationRequest2];
  return v7;
}

- (BOOL)matchesGroup:(id)group
{
  groupCopy = group;
  notificationSectionSettings = [(NCNotificationGroupList *)self notificationSectionSettings];
  groupingSetting = [notificationSectionSettings groupingSetting];

  sectionIdentifier = [(NCNotificationGroupList *)self sectionIdentifier];
  sectionIdentifier2 = [groupCopy sectionIdentifier];
  v9 = [sectionIdentifier isEqualToString:sectionIdentifier2];
  v10 = v9;
  if (groupingSetting == 2)
  {
    v11 = 0;
  }

  else
  {
    v11 = v9;
  }

  if (v10 && !groupingSetting)
  {
    threadIdentifier = [(NCNotificationGroupList *)self threadIdentifier];
    threadIdentifier2 = [groupCopy threadIdentifier];
    v11 = [threadIdentifier isEqualToString:threadIdentifier2];
  }

  return v11;
}

- (void)mergeNotificationRequests:(id)requests
{
  requestsCopy = requests;
  leadingNotificationRequest = [(NCNotificationGroupList *)self leadingNotificationRequest];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __53__NCNotificationGroupList_mergeNotificationRequests___block_invoke;
  v12[3] = &unk_27836F610;
  v12[4] = self;
  [requestsCopy enumerateObjectsUsingBlock:v12];
  [(NCNotificationGroupList *)self updateStackSummariesIfNeeded];
  leadingNotificationRequest2 = [(NCNotificationGroupList *)self leadingNotificationRequest];
  timestamp = [leadingNotificationRequest2 timestamp];
  comparisonDate = self->_comparisonDate;
  self->_comparisonDate = timestamp;

  leadingNotificationRequest3 = [(NCNotificationGroupList *)self leadingNotificationRequest];
  [(NCNotificationGroupList *)self _updateSummariesForNewLeadingNotificationRequest:leadingNotificationRequest3 oldLeadingNotificationRequest:leadingNotificationRequest];

  listView = [(NCNotificationListPresentableGroup *)self listView];
  [listView invalidateData];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __53__NCNotificationGroupList_mergeNotificationRequests___block_invoke_2;
  v11[3] = &unk_27836F610;
  v11[4] = self;
  [requestsCopy enumerateObjectsUsingBlock:v11];
}

void __53__NCNotificationGroupList_mergeNotificationRequests___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [*(a1 + 32) _existingIndexForNotificationRequest:?];
  v4 = *(a1 + 32);
  if (v3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = [v4 _insertionIndexForNotificationRequest:v7];
    v6 = [*(a1 + 32) orderedRequests];
    [v6 insertObject:v7 atIndex:v5];
  }

  else
  {
    [v4 modifyNotificationRequest:v7];
  }
}

- (BOOL)containsNonPersistentNotificationRequests
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  orderedRequests = [(NCNotificationGroupList *)self orderedRequests];
  v3 = [orderedRequests countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = *v10;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(orderedRequests);
        }

        options = [*(*(&v9 + 1) + 8 * i) options];
        lockScreenPersistence = [options lockScreenPersistence];

        if (!lockScreenPersistence)
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [orderedRequests countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (BOOL)containsPersistentNotificationRequests
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  orderedRequests = [(NCNotificationGroupList *)self orderedRequests];
  v3 = [orderedRequests countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = *v10;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(orderedRequests);
        }

        options = [*(*(&v9 + 1) + 8 * i) options];
        lockScreenPersistence = [options lockScreenPersistence];

        if (lockScreenPersistence)
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [orderedRequests countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (BOOL)isGroupForNotificationRequest:(id)request
{
  requestCopy = request;
  notificationSectionSettings = [(NCNotificationGroupList *)self notificationSectionSettings];
  groupingSetting = [notificationSectionSettings groupingSetting];

  sectionIdentifier = [requestCopy sectionIdentifier];
  sectionIdentifier2 = [(NCNotificationGroupList *)self sectionIdentifier];
  if ([sectionIdentifier isEqualToString:sectionIdentifier2])
  {
    if (groupingSetting)
    {
      v9 = 1;
    }

    else
    {
      threadIdentifier = [requestCopy threadIdentifier];
      threadIdentifier2 = [(NCNotificationGroupList *)self threadIdentifier];
      v9 = ([threadIdentifier isEqualToString:threadIdentifier2] & 1) != 0 || -[NCNotificationGroupList _existingIndexForCriticalNotificationRequest:](self, "_existingIndexForCriticalNotificationRequest:", requestCopy) != 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)isLeadingNotificationRequest:(id)request
{
  requestCopy = request;
  leadingNotificationRequest = [(NCNotificationGroupList *)self leadingNotificationRequest];
  v6 = [leadingNotificationRequest matchesRequest:requestCopy];

  return v6;
}

- (void)reloadLeadingNotificationRequestWithAnimation:(BOOL)animation
{
  animationCopy = animation;
  leadingNotificationRequest = [(NCNotificationGroupList *)self leadingNotificationRequest];
  notificationListCache = [(NCNotificationListPresentableGroup *)self notificationListCache];
  [notificationListCache clearCachedHeightsForNotificationRequest:leadingNotificationRequest];

  [(NCNotificationGroupList *)self reloadNotificationViewForNotificationRequest:leadingNotificationRequest animated:animationCopy];
}

- (void)reloadLeadingNotificationRequestIfNecessaryWithAnimation:(BOOL)animation
{
  animationCopy = animation;
  if ([(NCNotificationGroupList *)self shouldReloadLeadingNotificationRequest])
  {
    [(NCNotificationGroupList *)self reloadLeadingNotificationRequestWithAnimation:animationCopy];

    [(NCNotificationGroupList *)self setShouldReloadLeadingNotificationRequest:0];
  }
}

- (unint64_t)indexOfNotificationRequestPassingTest:(id)test
{
  testCopy = test;
  if (testCopy)
  {
    orderedRequests = [(NCNotificationGroupList *)self orderedRequests];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __65__NCNotificationGroupList_indexOfNotificationRequestPassingTest___block_invoke;
    v8[3] = &unk_278371E90;
    v9 = testCopy;
    v6 = [orderedRequests indexOfObjectPassingTest:v8];
  }

  else
  {
    v6 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v6;
}

- (void)updateOrderedNotificationRequests:(id)requests
{
  v20 = *MEMORY[0x277D85DE8];
  requestsCopy = requests;
  v5 = MEMORY[0x277CBEB98];
  orderedRequests = [(NCNotificationGroupList *)self orderedRequests];
  v7 = [v5 setWithArray:orderedRequests];
  v8 = [MEMORY[0x277CBEB98] setWithArray:requestsCopy];
  v9 = [v7 isEqualToSet:v8];

  if (v9)
  {
    orderedRequests2 = [(NCNotificationGroupList *)self orderedRequests];
    if ([orderedRequests2 isEqualToArray:requestsCopy])
    {
    }

    else
    {
      isGrouped = [(NCNotificationListPresentableGroup *)self isGrouped];

      if (isGrouped)
      {
        v13 = *MEMORY[0x277D77DD0];
        if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
        {
          v14 = v13;
          logDescription = [(NCNotificationGroupList *)self logDescription];
          v18 = 138543362;
          v19 = logDescription;
          _os_log_impl(&dword_21E77E000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ updating notification request ordering", &v18, 0xCu);
        }

        v16 = [MEMORY[0x277CBEB18] arrayWithArray:requestsCopy];
        [(NCNotificationGroupList *)self setOrderedRequests:v16];

        listView = [(NCNotificationListPresentableGroup *)self listView];
        [listView invalidateData];
      }
    }
  }

  else
  {
    v11 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_ERROR))
    {
      [(NCNotificationGroupList *)v11 updateOrderedNotificationRequests:requestsCopy];
    }
  }
}

- (void)updateComparisonDate
{
  leadingNotificationRequest = [(NCNotificationGroupList *)self leadingNotificationRequest];

  if (leadingNotificationRequest)
  {
    leadingNotificationRequest2 = [(NCNotificationGroupList *)self leadingNotificationRequest];
    timestamp = [leadingNotificationRequest2 timestamp];
    comparisonDate = self->_comparisonDate;
    self->_comparisonDate = timestamp;
  }
}

- (void)setIndividualCellBackgroundAlpha:(double)alpha
{
  if (self->_individualCellBackgroundAlpha != alpha)
  {
    self->_individualCellBackgroundAlpha = alpha;
    orderedRequests = [(NCNotificationGroupList *)self orderedRequests];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __60__NCNotificationGroupList_setIndividualCellBackgroundAlpha___block_invoke;
    v6[3] = &unk_278371EB8;
    v6[4] = self;
    *&v6[5] = alpha;
    [orderedRequests enumerateObjectsUsingBlock:v6];
  }
}

void __60__NCNotificationGroupList_setIndividualCellBackgroundAlpha___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _cachedCellForNotificationRequest:a2 createNewIfNecessary:0 shouldConfigure:0 forceShowContent:0];
  [v3 setBackgroundAlpha:*(a1 + 40)];
}

- (BOOL)containsTimeSensitiveNotificationRequests
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  orderedRequests = [(NCNotificationGroupList *)self orderedRequests];
  v3 = [orderedRequests countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(orderedRequests);
        }

        if ([*(*(&v7 + 1) + 8 * i) interruptionLevel] == 2)
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [orderedRequests countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (BOOL)containsCommunicationTypeNotificationRequests
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  orderedRequests = [(NCNotificationGroupList *)self orderedRequests];
  v3 = [orderedRequests countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = *v10;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(orderedRequests);
        }

        content = [*(*(&v9 + 1) + 8 * i) content];
        isCommunicationType = [content isCommunicationType];

        if (isCommunicationType)
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [orderedRequests countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (BOOL)hasNewTimeSensitiveNotificationRequestsWithMigratedTimeSensitiveNotificationRequests:(id)requests
{
  v16 = *MEMORY[0x277D85DE8];
  requestsCopy = requests;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  orderedRequests = [(NCNotificationGroupList *)self orderedRequests];
  v6 = [orderedRequests countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(orderedRequests);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([v9 interruptionLevel] == 2 && !objc_msgSend(requestsCopy, "containsObject:", v9))
        {
          LOBYTE(v6) = 1;
          goto LABEL_12;
        }
      }

      v6 = [orderedRequests countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v6;
}

- (BOOL)isEligibleForStackElevationMigration
{
  v14 = *MEMORY[0x277D85DE8];
  notificationSectionSettings = [(NCNotificationGroupList *)self notificationSectionSettings];
  isSummarizationEnabled = [notificationSectionSettings isSummarizationEnabled];

  if ((isSummarizationEnabled & 1) == 0)
  {
    v6 = *MEMORY[0x277D77DD0];
    v5 = os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT);
    if (!v5)
    {
      return v5;
    }

    v7 = v6;
    logDescription = [(NCNotificationGroupList *)self logDescription];
    v12 = 138543362;
    v13 = logDescription;
    v9 = "%{public}@ isSummarizationEnabled for app section is NO";
LABEL_8:
    _os_log_impl(&dword_21E77E000, v7, OS_LOG_TYPE_DEFAULT, v9, &v12, 0xCu);

    LOBYTE(v5) = 0;
    return v5;
  }

  if (![(NCNotificationGroupList *)self containsCommunicationTypeNotificationRequests])
  {
    v10 = *MEMORY[0x277D77DD0];
    v5 = os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT);
    if (!v5)
    {
      return v5;
    }

    v7 = v10;
    logDescription = [(NCNotificationGroupList *)self logDescription];
    v12 = 138543362;
    v13 = logDescription;
    v9 = "%{public}@ doesn't contain communicationType notification";
    goto LABEL_8;
  }

  LOBYTE(v5) = 1;
  return v5;
}

- (id)headerText
{
  leadingNotificationRequest = [(NCNotificationGroupList *)self leadingNotificationRequest];
  content = [leadingNotificationRequest content];
  customHeader = [content customHeader];
  v6 = customHeader;
  if (customHeader)
  {
    defaultHeader = customHeader;
  }

  else
  {
    leadingNotificationRequest2 = [(NCNotificationGroupList *)self leadingNotificationRequest];
    content2 = [leadingNotificationRequest2 content];
    defaultHeader = [content2 defaultHeader];
  }

  if (defaultHeader)
  {
    v10 = defaultHeader;
  }

  else
  {
    v11 = NCUserNotificationsUIKitFrameworkBundle();
    v10 = [v11 localizedStringForKey:@"NOTIFICATION_SECTION_GENERAL_TITLE" value:&stru_282FE84F8 table:0];
  }

  return v10;
}

- (id)clearAllText
{
  v2 = NCUserNotificationsUIKitFrameworkBundle();
  v3 = [v2 localizedStringForKey:@"NOTIFICATION_LIST_CLEAR_ALL" value:&stru_282FE84F8 table:0];

  return v3;
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
  orderedRequests = [(NCNotificationGroupList *)self orderedRequests];
  v5 = [orderedRequests copy];

  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __35__NCNotificationGroupList_clearAll__block_invoke;
  v11 = &unk_2783705B0;
  selfCopy = self;
  v13 = v3;
  v6 = v3;
  [v5 enumerateObjectsUsingBlock:&v8];
  v7 = [(NCNotificationListPresentableGroup *)self delegate:v8];
  [v7 notificationListBaseComponent:self requestsClearingPresentables:v6];
  [v7 notificationListBaseComponentDidRemoveAll:self];
}

void __35__NCNotificationGroupList_clearAll__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 removeNotificationRequest:v4];
  [*(a1 + 40) addObject:v4];
}

- (int64_t)insertNotificationRequest:(id)request
{
  v25 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  if ([(NCNotificationGroupList *)self _existingIndexForNotificationRequest:requestCopy]== 0x7FFFFFFFFFFFFFFFLL)
  {
    leadingNotificationRequest = [(NCNotificationGroupList *)self leadingNotificationRequest];
    v6 = [(NCNotificationGroupList *)self _insertionIndexForNotificationRequest:requestCopy];
    v7 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
    {
      v8 = v7;
      logDescription = [(NCNotificationGroupList *)self logDescription];
      notificationIdentifier = [requestCopy notificationIdentifier];
      un_logDigest = [notificationIdentifier un_logDigest];
      v19 = 138543874;
      v20 = logDescription;
      v21 = 2114;
      v22 = un_logDigest;
      v23 = 2048;
      v24 = v6;
      _os_log_impl(&dword_21E77E000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ inserting notification request %{public}@ at index %ld", &v19, 0x20u);
    }

    orderedRequests = [(NCNotificationGroupList *)self orderedRequests];
    [orderedRequests insertObject:requestCopy atIndex:v6];

    listView = [(NCNotificationListPresentableGroup *)self listView];
    [listView insertViewAtIndex:v6 animated:1];

    leadingNotificationRequest2 = [(NCNotificationGroupList *)self leadingNotificationRequest];
    timestamp = [leadingNotificationRequest2 timestamp];
    comparisonDate = self->_comparisonDate;
    self->_comparisonDate = timestamp;

    leadingNotificationRequest3 = [(NCNotificationGroupList *)self leadingNotificationRequest];
    [(NCNotificationGroupList *)self _updateSummariesForNewLeadingNotificationRequest:leadingNotificationRequest3 oldLeadingNotificationRequest:leadingNotificationRequest];

    [(NCNotificationGroupList *)self updateStackSummariesIfNeeded];
    [(NCNotificationGroupList *)self _reloadRecycledNotificationCellForRequest:requestCopy];
  }

  else
  {
    [(NCNotificationGroupList *)self modifyNotificationRequest:requestCopy];
  }

  return 2;
}

- (BOOL)updateLeadingNotificationRequestContentProvider:(id)provider
{
  providerCopy = provider;
  notificationRequest = [(NCNotificationGroupList *)self count];
  if (notificationRequest)
  {
    if ([(NCNotificationListPresentableGroup *)self isGrouped])
    {
      [providerCopy setStackedNotificationsCount:notificationRequest];
      notificationRequest = [providerCopy notificationRequest];
      content = [notificationRequest content];
      threadSummary = [content threadSummary];
      if (threadSummary && [(NCNotificationSectionSettings *)self->_notificationSectionSettings isSummarizationEnabled])
      {
        options = [notificationRequest options];
        if ([options canShowSummary])
        {
          options2 = [notificationRequest options];
          contentPreviewSetting = [options2 contentPreviewSetting];

          [providerCopy setIsThreadSummary:contentPreviewSetting != 2];
          if (contentPreviewSetting != 2)
          {
            [providerCopy setSummarizedNotificationsAllHaveMatchingPrimaryText:{-[NCNotificationGroupList summarizedNotificationsAllHaveMatchingPrimaryText](self, "summarizedNotificationsAllHaveMatchingPrimaryText")}];
            [providerCopy setSummarizedNotificationsAllHaveMatchingIcons:{-[NCNotificationGroupList summarizedNotificationsAllHaveMatchingIcons](self, "summarizedNotificationsAllHaveMatchingIcons")}];
            delegate = [(NCNotificationListPresentableGroup *)self delegate];
            [delegate notificationListComponent:self requestsStackSummarySuggestionVisible:1 forRequest:notificationRequest];
          }

          goto LABEL_11;
        }
      }

      [providerCopy setIsThreadSummary:0];
LABEL_11:

      LOBYTE(notificationRequest) = 1;
      goto LABEL_12;
    }

    LOBYTE(notificationRequest) = 0;
  }

LABEL_12:

  return notificationRequest;
}

- (BOOL)summarizedNotificationsAllHaveMatchingPrimaryText
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  orderedRequests = [(NCNotificationGroupList *)self orderedRequests];
  v3 = [orderedRequests countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v14;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(orderedRequests);
        }

        v8 = [NCNotificationRequestContentProvider defaultPrimaryTextForRequest:*(*(&v13 + 1) + 8 * i)];
        v9 = v8;
        if (!v5)
        {
          v5 = v8;
        }

        v10 = [v9 isEqualToString:v5];

        if (!v10)
        {
          v11 = 0;
          goto LABEL_15;
        }
      }

      v4 = [orderedRequests countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v5 = 0;
  }

  v11 = 1;
LABEL_15:

  return v11;
}

- (BOOL)summarizedNotificationsAllHaveMatchingIcons
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  orderedRequests = [(NCNotificationGroupList *)self orderedRequests];
  v3 = [orderedRequests countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = 0;
    v7 = *v16;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(orderedRequests);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        iconRecipe = [v9 iconRecipe];
        subordinateIconRecipe = [v9 subordinateIconRecipe];
        if (!v6)
        {
          v6 = iconRecipe;
          v12 = subordinateIconRecipe;

          v5 = v12;
        }

        if (!BSEqualObjects() || !BSEqualObjects())
        {

          v13 = 0;
          goto LABEL_15;
        }
      }

      v4 = [orderedRequests countByEnumeratingWithState:&v15 objects:v19 count:16];
      v13 = 1;
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v13 = 1;
  }

LABEL_15:

  return v13;
}

- (unint64_t)summarizedNotificationCountForLeadingRequest
{
  leadingNotificationRequest = [(NCNotificationGroupList *)self leadingNotificationRequest];
  v4 = [(NCNotificationGroupList *)self count];
  if (v4 < 2)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
    content = [leadingNotificationRequest content];
    threadSummary = [content threadSummary];
    if (threadSummary && [(NCNotificationSectionSettings *)self->_notificationSectionSettings isSummarizationEnabled]&& [(NCNotificationListPresentableGroup *)self isGrouped])
    {
      options = [leadingNotificationRequest options];
      if ([options contentPreviewSetting] == 2)
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)removeNotificationRequest:(id)request
{
  v28 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v5 = [(NCNotificationGroupList *)self _existingIndexForNotificationRequest:requestCopy];
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
      logDescription = [(NCNotificationGroupList *)self logDescription];
      notificationIdentifier = [requestCopy notificationIdentifier];
      un_logDigest = [notificationIdentifier un_logDigest];
      v22 = 138543874;
      v23 = logDescription;
      v24 = 2114;
      v25 = un_logDigest;
      v26 = 2048;
      v27 = v5;
      _os_log_impl(&dword_21E77E000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ removing notification request %{public}@ at index %ld", &v22, 0x20u);
    }

    leadingNotificationRequest = [(NCNotificationGroupList *)self leadingNotificationRequest];
    orderedRequests = [(NCNotificationGroupList *)self orderedRequests];
    v13 = [orderedRequests objectAtIndex:v5];

    contentProviders = [(NCNotificationGroupList *)self contentProviders];
    [contentProviders removeObjectForKey:v13];

    orderedRequests2 = [(NCNotificationGroupList *)self orderedRequests];
    [orderedRequests2 removeObjectAtIndex:v5];

    v16 = [(NCNotificationGroupList *)self _currentCellForNotificationRequest:requestCopy];
    if (v16)
    {
      v17 = [(NCNotificationListPresentableGroup *)self actionsRevealedForNotificationListCell:v16];
    }

    else
    {
      v17 = 0;
    }

    listView = [(NCNotificationListPresentableGroup *)self listView];
    [listView removeViewAtIndex:v5 animated:1 isHorizontallyDisplaced:v17];

    notificationListCache = [(NCNotificationListPresentableGroup *)self notificationListCache];
    [notificationListCache clearCacheForNotificationRequest:requestCopy];

    leadingNotificationRequest2 = [(NCNotificationGroupList *)self leadingNotificationRequest];
    [(NCNotificationGroupList *)self _updateSummariesForNewLeadingNotificationRequest:leadingNotificationRequest2 oldLeadingNotificationRequest:leadingNotificationRequest];

    [(NCNotificationGroupList *)self updateStackSummariesIfNeeded];
  }

  if ([(NCNotificationGroupList *)self count]== 1)
  {
    [(NCNotificationGroupList *)self _setGrouped:1];
  }

  if ([(NCNotificationGroupList *)self isClockNotificationGroup])
  {
    [(NCNotificationGroupList *)self _invalidateSnoozeAlarmNotificationStaticContentProviderTimerForNotificationRequest:requestCopy];
  }

  return v5 != 0x7FFFFFFFFFFFFFFFLL;
}

- (void)modifyNotificationRequest:(id)request
{
  v39 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v5 = [(NCNotificationGroupList *)self _existingIndexForNotificationRequest:requestCopy];
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = v5;
    v7 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
    {
      v8 = v7;
      logDescription = [(NCNotificationGroupList *)self logDescription];
      notificationIdentifier = [requestCopy notificationIdentifier];
      un_logDigest = [notificationIdentifier un_logDigest];
      v33 = 138543874;
      v34 = logDescription;
      v35 = 2114;
      v36 = un_logDigest;
      v37 = 2048;
      v38 = v6;
      _os_log_impl(&dword_21E77E000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ modifying notification request %{public}@ at index %ld", &v33, 0x20u);
    }

    leadingNotificationRequest = [(NCNotificationGroupList *)self leadingNotificationRequest];
    orderedRequests = [(NCNotificationGroupList *)self orderedRequests];
    v14 = [orderedRequests objectAtIndex:v6];

    contentProviders = [(NCNotificationGroupList *)self contentProviders];
    [contentProviders removeObjectForKey:v14];

    notificationListCache = [(NCNotificationListPresentableGroup *)self notificationListCache];
    [notificationListCache updateNotificationRequest:requestCopy];

    v17 = [(NCNotificationGroupList *)self _insertionIndexForNotificationRequest:requestCopy];
    orderedRequests2 = [(NCNotificationGroupList *)self orderedRequests];
    v19 = orderedRequests2;
    if (v17 == v6)
    {
      [orderedRequests2 replaceObjectAtIndex:v6 withObject:requestCopy];

      interruptionLevel = [requestCopy interruptionLevel];
      listView = [(NCNotificationListPresentableGroup *)self listView];
      v22 = listView;
      if (interruptionLevel < 3)
      {
        [listView reloadViewAtIndex:v6];
        goto LABEL_10;
      }

      [listView removeViewAtIndex:v6 animated:0];

      listView2 = [(NCNotificationListPresentableGroup *)self listView];
      v22 = listView2;
      v24 = v6;
      v25 = 0;
    }

    else
    {
      [orderedRequests2 removeObjectAtIndex:v6];

      listView3 = [(NCNotificationListPresentableGroup *)self listView];
      [listView3 removeViewAtIndex:v6 animated:0];

      v27 = (__PAIR128__(v17, v6) - v17) >> 64;
      orderedRequests3 = [(NCNotificationGroupList *)self orderedRequests];
      [orderedRequests3 insertObject:requestCopy atIndex:v27];

      listView2 = [(NCNotificationListPresentableGroup *)self listView];
      v22 = listView2;
      v24 = v27;
      v25 = 1;
    }

    [listView2 insertViewAtIndex:v24 animated:v25];
LABEL_10:

    [(NCNotificationGroupList *)self reloadNotificationViewForNotificationRequest:requestCopy animated:1];
    leadingNotificationRequest2 = [(NCNotificationGroupList *)self leadingNotificationRequest];
    timestamp = [leadingNotificationRequest2 timestamp];
    comparisonDate = self->_comparisonDate;
    self->_comparisonDate = timestamp;

    leadingNotificationRequest3 = [(NCNotificationGroupList *)self leadingNotificationRequest];
    [(NCNotificationGroupList *)self _updateSummariesForNewLeadingNotificationRequest:leadingNotificationRequest3 oldLeadingNotificationRequest:leadingNotificationRequest];

    [(NCNotificationGroupList *)self updateStackSummariesIfNeeded];
  }
}

- (void)reloadNotificationRequest:(id)request
{
  v14 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v5 = *MEMORY[0x277D77DD0];
  if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    logDescription = [(NCNotificationGroupList *)self logDescription];
    notificationIdentifier = [requestCopy notificationIdentifier];
    un_logDigest = [notificationIdentifier un_logDigest];
    v10 = 138543618;
    v11 = logDescription;
    v12 = 2114;
    v13 = un_logDigest;
    _os_log_impl(&dword_21E77E000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ reloading notification request %{public}@", &v10, 0x16u);
  }

  [(NCNotificationGroupList *)self reloadNotificationViewForNotificationRequest:requestCopy animated:1];
}

- (void)updateNotificationSectionSettings:(id)settings previousSectionSettings:(id)sectionSettings
{
  v36 = *MEMORY[0x277D85DE8];
  settingsCopy = settings;
  sectionSettingsCopy = sectionSettings;
  objc_storeStrong(&self->_notificationSectionSettings, settings);
  if (sectionSettingsCopy)
  {
    contentPreviewSetting = [settingsCopy contentPreviewSetting];
    if (contentPreviewSetting != [sectionSettingsCopy contentPreviewSetting] || (v10 = objc_msgSend(settingsCopy, "isUserConfigurable"), v10 != objc_msgSend(sectionSettingsCopy, "isUserConfigurable")))
    {
      isGrouped = [(NCNotificationListPresentableGroup *)self isGrouped];
      v12 = *MEMORY[0x277D77DD0];
      if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
      {
        v13 = v12;
        logDescription = [(NCNotificationGroupList *)self logDescription];
        sectionIdentifier = [(NCNotificationGroupList *)self sectionIdentifier];
        *buf = 138543618;
        v33 = logDescription;
        v34 = 2114;
        v35 = sectionIdentifier;
        _os_log_impl(&dword_21E77E000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ changed content preview settings for section %{public}@", buf, 0x16u);
      }

      orderedRequests = [(NCNotificationGroupList *)self orderedRequests];
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __85__NCNotificationGroupList_updateNotificationSectionSettings_previousSectionSettings___block_invoke;
      v30[3] = &unk_278371EE0;
      v31 = isGrouped;
      v30[4] = self;
      [orderedRequests enumerateObjectsUsingBlock:v30];
LABEL_7:

      goto LABEL_8;
    }

    isSummarizationEnabled = [settingsCopy isSummarizationEnabled];
    if (isSummarizationEnabled != [sectionSettingsCopy isSummarizationEnabled] || (v18 = objc_msgSend(settingsCopy, "isUserConfigurable"), v18 != objc_msgSend(sectionSettingsCopy, "isUserConfigurable")))
    {
      v19 = *MEMORY[0x277D77DD0];
      if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
      {
        v20 = v19;
        logDescription2 = [(NCNotificationGroupList *)self logDescription];
        sectionIdentifier2 = [(NCNotificationGroupList *)self sectionIdentifier];
        *buf = 138543618;
        v33 = logDescription2;
        v34 = 2114;
        v35 = sectionIdentifier2;
        _os_log_impl(&dword_21E77E000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@ changed summarization setting for section %{public}@", buf, 0x16u);
      }

      orderedRequests2 = [(NCNotificationGroupList *)self orderedRequests];
      v24 = MEMORY[0x277D85DD0];
      v25 = 3221225472;
      v26 = __85__NCNotificationGroupList_updateNotificationSectionSettings_previousSectionSettings___block_invoke_41;
      v27 = &unk_2783705B0;
      selfCopy = self;
      v29 = settingsCopy;
      [orderedRequests2 enumerateObjectsUsingBlock:&v24];

      [(NCNotificationGroupList *)self _reloadAllNotificationRequests:v24];
      [(NCNotificationGroupList *)self updateStackSummariesIfNeeded];
      orderedRequests = v29;
      goto LABEL_7;
    }
  }

LABEL_8:
}

uint64_t __85__NCNotificationGroupList_updateNotificationSectionSettings_previousSectionSettings___block_invoke(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (a3 < 3 || (*(result + 40) & 1) == 0)
  {
    return [*(result + 32) reloadNotificationRequest:a2];
  }

  return result;
}

void __85__NCNotificationGroupList_updateNotificationSectionSettings_previousSectionSettings___block_invoke_41(uint64_t a1, uint64_t a2)
{
  v3 = [*(*(a1 + 32) + 184) objectForKey:a2];
  [v3 setSummarizationEnabled:{objc_msgSend(*(a1 + 40), "isSummarizationEnabled")}];
}

- (void)setDeviceAuthenticated:(BOOL)authenticated
{
  v26 = *MEMORY[0x277D85DE8];
  if (self->_deviceAuthenticated != authenticated)
  {
    authenticatedCopy = authenticated;
    self->_deviceAuthenticated = authenticated;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    contentProviders = [(NCNotificationGroupList *)self contentProviders];
    allValues = [contentProviders allValues];

    v7 = [allValues countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v22;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v22 != v9)
          {
            objc_enumerationMutation(allValues);
          }

          [*(*(&v21 + 1) + 8 * i) setDeviceAuthenticated:authenticatedCopy];
        }

        v8 = [allValues countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v8);
    }

    listView = [(NCNotificationListPresentableGroup *)self listView];
    [listView setDeviceAuthenticated:authenticatedCopy];

    if ([(NCNotificationGroupList *)self count])
    {
      leadingNotificationRequest = [(NCNotificationGroupList *)self leadingNotificationRequest];
      options = [leadingNotificationRequest options];
      contentPreviewSetting = [options contentPreviewSetting];

      if (contentPreviewSetting == 1)
      {
        listView2 = [(NCNotificationListPresentableGroup *)self listView];
        [listView2 setPerformingContentRevealAnimation:1];

        delegate = [(NCNotificationListPresentableGroup *)self delegate];
        v17 = [delegate notificationGroupListShouldReloadNotificationCells:self];

        if (v17)
        {
          if ([(NCNotificationListPresentableGroup *)self isGrouped])
          {
            [(NCNotificationGroupList *)self reloadNotificationViewForNotificationRequest:leadingNotificationRequest animated:1];
          }

          else
          {
            orderedRequests = [(NCNotificationGroupList *)self orderedRequests];
            v20[0] = MEMORY[0x277D85DD0];
            v20[1] = 3221225472;
            v20[2] = __50__NCNotificationGroupList_setDeviceAuthenticated___block_invoke;
            v20[3] = &unk_27836F610;
            v20[4] = self;
            [orderedRequests enumerateObjectsUsingBlock:v20];
          }

          listView3 = [(NCNotificationListPresentableGroup *)self listView];
          [listView3 setNeedsLayout];
        }

        else
        {
          [(NCNotificationGroupList *)self setShouldReloadLeadingNotificationRequest:1];
        }
      }
    }
  }
}

- (BOOL)containsNotificationRequest:(id)request
{
  requestCopy = request;
  orderedRequests = [(NCNotificationGroupList *)self orderedRequests];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __55__NCNotificationGroupList_containsNotificationRequest___block_invoke;
  v9[3] = &unk_278370180;
  v10 = requestCopy;
  v6 = requestCopy;
  v7 = [orderedRequests indexOfObjectPassingTest:v9];

  return v7 != 0x7FFFFFFFFFFFFFFFLL;
}

- (id)allAvailableCells
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  orderedRequests = [(NCNotificationGroupList *)self orderedRequests];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __44__NCNotificationGroupList_allAvailableCells__block_invoke;
  v9[3] = &unk_2783705B0;
  v9[4] = self;
  v5 = v3;
  v10 = v5;
  [orderedRequests enumerateObjectsUsingBlock:v9];

  v6 = v10;
  v7 = v5;

  return v5;
}

uint64_t __44__NCNotificationGroupList_allAvailableCells__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _currentCellForNotificationRequest:a2];
  if (v3)
  {
    v3 = [*(a1 + 40) addObject:v3];
  }

  return MEMORY[0x2821F96F8](v3);
}

- (double)notificationListView:(id)view heightForItemAtIndex:(unint64_t)index withWidth:(double)width inDisplayListAsStackMode:(BOOL)mode ignoreExpandedGroupStack:(BOOL)stack
{
  stackCopy = stack;
  modeCopy = mode;
  orderedRequests = [(NCNotificationGroupList *)self orderedRequests];
  v13 = [orderedRequests count];

  if (v13 <= index)
  {
    return 0.0;
  }

  if (!index)
  {
    [(NCNotificationGroupList *)self _loadLeadingNotificationRequestCellIfNecessary];
  }

  orderedRequests2 = [(NCNotificationGroupList *)self orderedRequests];
  v15 = [orderedRequests2 objectAtIndex:index];

  v16 = ![(NCNotificationListPresentableGroup *)self isGrouped];
  if (index)
  {
    v17 = v16;
  }

  else
  {
    v17 = 1;
  }

  v18 = objc_alloc_init(NCNotificationListCellDynamicHeightTraits);
  delegate = [(NCNotificationListPresentableGroup *)self delegate];
  v20 = modeCopy & [delegate canAlignContentToBottomForLeadingNotificationRequestForNotificationGroupList:self];
  if ([(NCNotificationListPresentableGroup *)self isGrouped])
  {
    leadingNotificationRequest = [(NCNotificationGroupList *)self leadingNotificationRequest];
    if ([leadingNotificationRequest matchesRequest:v15])
    {
      v22 = [delegate isNotificationGroupListInCollapsedStack:self];
    }

    else
    {
      v22 = 1;
    }
  }

  else
  {
    v22 = 0;
  }

  v24 = ((v20 | v22) & 1) == 0 && [(NCNotificationGroupList *)self _isContentRevealedForNotificationRequest:v15];
  [(NCNotificationListCellDynamicHeightTraits *)v18 setAlignContentToBottom:v20];
  [(NCNotificationListCellDynamicHeightTraits *)v18 setShowAuxiliaryOptions:v24];
  [(NCNotificationListCellDynamicHeightTraits *)v18 setIsGroupCollapsed:[(NCNotificationListPresentableGroup *)self isGrouped]| stackCopy];
  if (v15)
  {
    contentProviders = [(NCNotificationGroupList *)self contentProviders];
    v26 = [contentProviders objectForKey:v15];
  }

  else
  {
    v26 = 0;
  }

  notificationListCache = [(NCNotificationListPresentableGroup *)self notificationListCache];
  [notificationListCache heightForNotificationRequest:v15 contentProvider:v26 withFrameWidth:-[NCNotificationGroupList _isContentRevealedForNotificationRequest:](self isContentRevealed:"_isContentRevealedForNotificationRequest:" shouldCalculateHeight:v15) traits:{v17, v18, width}];
  v29 = v28;

  return v29;
}

- (id)notificationListView:(id)view viewForItemAtIndex:(unint64_t)index
{
  orderedRequests = [(NCNotificationGroupList *)self orderedRequests];
  v7 = [orderedRequests count];

  if (v7 <= index)
  {
    v12 = 0;
  }

  else
  {
    orderedRequests2 = [(NCNotificationGroupList *)self orderedRequests];
    v9 = [orderedRequests2 objectAtIndex:index];

    v10 = ![(NCNotificationListPresentableGroup *)self isGrouped];
    if (index)
    {
      v11 = v10;
    }

    else
    {
      v11 = 1;
    }

    v12 = [(NCNotificationGroupList *)self _cachedCellForNotificationRequest:v9 createNewIfNecessary:1 shouldConfigure:v11 forceShowContent:1];
    listView = [(NCNotificationListPresentableGroup *)self listView];
    if ([listView isHiddenBelowStack])
    {
      listView2 = [(NCNotificationListPresentableGroup *)self listView];
      v15 = [listView2 showContentForGroupedViews] ^ 1;
    }

    else
    {
      LOBYTE(v15) = 0;
    }

    notificationViewController = [v12 notificationViewController];

    [notificationViewController setNotificationContentViewHidden:v15 & 1 | ((v11 & 1) == 0)];
  }

  return v12;
}

- (unint64_t)notificationListViewNumberOfItems:(id)items
{
  orderedRequests = [(NCNotificationGroupList *)self orderedRequests];
  v4 = [orderedRequests count];

  return v4;
}

- (void)recycleView:(id)view
{
  viewCopy = view;
  v11.receiver = self;
  v11.super_class = NCNotificationGroupList;
  [(NCNotificationListPresentableGroup *)&v11 recycleView:viewCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = viewCopy;
    notificationViewController = [v5 notificationViewController];
    if ([notificationViewController hasCommittedToPresentingCustomContentProvidingViewController])
    {
      [(NCNotificationGroupList *)self setCellRecycledWhilePresentingLongLook:v5];
    }

    else
    {
      [v5 hideActionButtonsAnimated:0 fastAnimation:0 completion:0];
      notificationListCache = [(NCNotificationListPresentableGroup *)self notificationListCache];
      v8 = [notificationListCache recycleNotificationListCell:v5];

      [notificationViewController removeObserver:self];
      if ((v8 & 1) == 0)
      {
        delegate = [(NCNotificationListPresentableGroup *)self delegate];
        [delegate notificationListBaseComponent:self didRemoveViewController:notificationViewController];
      }

      notificationRequest = [notificationViewController notificationRequest];
      if ([(NCNotificationGroupList *)self isClockNotificationGroup])
      {
        [(NCNotificationGroupList *)self _invalidateSnoozeAlarmNotificationStaticContentProviderTimerForNotificationRequest:notificationRequest];
      }
    }
  }
}

- (void)notificationListDidLayoutSubviews
{
  delegate = [(NCNotificationListPresentableGroup *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate groupListDidLayout:self];
  }
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

- (BOOL)isCurrentlyInDisplayListAsStackMode:(id)mode
{
  delegate = [(NCNotificationListPresentableGroup *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [delegate isCurrentlyInDisplayListAsStackMode:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
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

- (id)notificationRequestPresenter:(id)presenter staticContentProviderForNotificationRequest:(id)request
{
  presenterCopy = presenter;
  requestCopy = request;
  v8 = objc_opt_class();
  v9 = presenterCopy;
  if (v8)
  {
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  if ([v11 isShortLook])
  {
    orderedRequests = [(NCNotificationGroupList *)self orderedRequests];
    if ([orderedRequests containsObject:requestCopy])
    {
      isClockNotificationGroup = [(NCNotificationGroupList *)self isClockNotificationGroup];

      if (isClockNotificationGroup)
      {
        v14 = [(NCNotificationGroupList *)self _clockSnoozeAlarmNotificationStaticContentProviderForNotificationRequest:requestCopy viewController:v11];
        goto LABEL_21;
      }
    }

    else
    {
    }

    delegate = [(NCNotificationListPresentableGroup *)self delegate];
    contentProviders = [(NCNotificationGroupList *)self contentProviders];
    v14 = [contentProviders objectForKey:requestCopy];

    if (!v14)
    {
      if ((objc_opt_respondsToSelector() & 1) == 0 || ([delegate notificationGroupList:self requestsContentProviderForNotificationRequest:requestCopy], (v14 = objc_claimAutoreleasedReturnValue()) == 0))
      {
        v14 = [[NCNotificationRequestCoalescingContentProvider alloc] initWithNotificationRequest:requestCopy];
      }

      contentProviders2 = [(NCNotificationGroupList *)self contentProviders];
      [contentProviders2 bs_setSafeObject:v14 forKey:requestCopy];
    }

    [(NCNotificationRequestCoalescingContentProvider *)v14 setDeviceAuthenticated:[(NCNotificationGroupList *)self deviceAuthenticated]];
    notificationSectionSettings = [(NCNotificationGroupList *)self notificationSectionSettings];
    -[NCNotificationRequestCoalescingContentProvider setSummarizationEnabled:](v14, "setSummarizationEnabled:", [notificationSectionSettings isSummarizationEnabled]);

    leadingNotificationRequest = [(NCNotificationGroupList *)self leadingNotificationRequest];
    if ([requestCopy matchesRequest:leadingNotificationRequest])
    {
      [(NCNotificationGroupList *)self updateLeadingNotificationRequestContentProvider:v14];
      v20 = [delegate collapsedSectionSummaryStringForLeadingNotificationRequestForNotificationGroupList:self];
      [(NCNotificationRequestCoalescingContentProvider *)v14 setLeadingRequestInGroup:[(NCNotificationGroupList *)self count]> 1];
      [(NCNotificationRequestCoalescingContentProvider *)v14 setCollapsedSectionSummaryString:v20];
      summaryBuilder = [(NCNotificationGroupList *)self summaryBuilder];
      [(NCNotificationRequestCoalescingContentProvider *)v14 setOverridenSummaryBuilder:summaryBuilder];
    }

    else
    {
      [(NCNotificationGroupList *)self count];
      [(NCNotificationRequestCoalescingContentProvider *)v14 setLeadingRequestInGroup:0];
      [(NCNotificationRequestCoalescingContentProvider *)v14 setCollapsedSectionSummaryString:0];
      [(NCNotificationRequestCoalescingContentProvider *)v14 setOverridenSummaryBuilder:0];
    }

    [(NCNotificationRequestCoalescingContentProvider *)v14 setDisplayingInStack:[(NCNotificationGroupList *)self count]> 1];
    [(NCNotificationRequestContentProvider *)v14 setDelegate:v11];
  }

  else
  {
    v14 = 0;
  }

LABEL_21:

  return v14;
}

- (void)notificationRequestPresenter:(id)presenter shouldTransitionToStage:(id)stage forTrigger:(int64_t)trigger completionBlock:(id)block
{
  presenterCopy = presenter;
  blockCopy = block;
  v11 = objc_opt_class();
  v16 = presenterCopy;
  if (v11)
  {
    if (objc_opt_isKindOfClass())
    {
      v12 = v16;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  delegate = [(NCNotificationListPresentableGroup *)self delegate];
  notificationRequest = [v13 notificationRequest];

  [delegate notificationListComponent:self shouldFinishLongLookTransitionForNotificationRequest:notificationRequest trigger:trigger withCompletionBlock:blockCopy];
}

- (void)notificationRequestPresenter:(id)presenter executeAction:(id)action withParameters:(id)parameters completion:(id)completion
{
  v39 = *MEMORY[0x277D85DE8];
  presenterCopy = presenter;
  actionCopy = action;
  parametersCopy = parameters;
  completionCopy = completion;
  v13 = objc_opt_class();
  v14 = presenterCopy;
  if (v13)
  {
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;

  notificationRequest = [v16 notificationRequest];
  notificationIdentifier = [notificationRequest notificationIdentifier];
  un_logDigest = [notificationIdentifier un_logDigest];

  logDescription = [(NCNotificationGroupList *)self logDescription];
  delegate = [(NCNotificationListPresentableGroup *)self delegate];
  defaultAction = [notificationRequest defaultAction];
  if (defaultAction != actionCopy)
  {
    goto LABEL_9;
  }

  presentedExpandedPlatterViewController = [v16 presentedExpandedPlatterViewController];
  if (presentedExpandedPlatterViewController)
  {

LABEL_9:
LABEL_10:
    v24 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v34 = logDescription;
      v35 = 2114;
      v36 = delegate;
      v37 = 2114;
      v38 = un_logDigest;
      _os_log_impl(&dword_21E77E000, v24, OS_LOG_TYPE_DEFAULT, "%{public}@ Asking delegate %{public}@ to execute action for %{public}@", buf, 0x20u);
    }

    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __96__NCNotificationGroupList_notificationRequestPresenter_executeAction_withParameters_completion___block_invoke;
    v29[3] = &unk_278371F08;
    v32 = completionCopy;
    v30 = logDescription;
    v31 = un_logDigest;
    v25 = parametersCopy;
    [delegate notificationListComponent:self requestsExecuteAction:actionCopy forNotificationRequest:notificationRequest requestAuthentication:1 withParameters:parametersCopy completion:v29];

    goto LABEL_13;
  }

  v27 = [delegate shouldHintDefaultActionForNotificationListBaseComponent:self];

  if (!v27)
  {
    goto LABEL_10;
  }

  v26 = *MEMORY[0x277D77DD0];
  if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v34 = logDescription;
    v35 = 2114;
    v36 = un_logDigest;
    _os_log_impl(&dword_21E77E000, v26, OS_LOG_TYPE_DEFAULT, "%{public}@ Hinting side swipe instead of executing action for %{public}@", buf, 0x16u);
  }

  [(NCNotificationGroupList *)self _hintSideSwipeForDefaultActionForNotificationRequest:notificationRequest];
  v25 = parametersCopy;
  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }

LABEL_13:
}

void __96__NCNotificationGroupList_notificationRequestPresenter_executeAction_withParameters_completion___block_invoke(void *a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = a1[6];
  v3 = *MEMORY[0x277D77DD0];
  v4 = os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      v5 = a1[4];
      v6 = a1[5];
      v7 = v3;
      v8 = NSStringFromBOOL();
      v13 = 138543874;
      v14 = v5;
      v15 = 2114;
      v16 = v6;
      v17 = 2112;
      v18 = v8;
      _os_log_impl(&dword_21E77E000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ Completion of action execution for %{public}@. didExecute: %@", &v13, 0x20u);
    }

    (*(a1[6] + 16))();
  }

  else if (v4)
  {
    v9 = a1[4];
    v10 = a1[5];
    v11 = v3;
    v12 = NSStringFromBOOL();
    v13 = 138543874;
    v14 = v9;
    v15 = 2114;
    v16 = v10;
    v17 = 2112;
    v18 = v12;
    _os_log_impl(&dword_21E77E000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ Quiet Completion (no handler) of action execution for %{public}@: %@", &v13, 0x20u);
  }
}

- (id)notificationRequestPresenterNotificationUsageTrackingState:(id)state
{
  delegate = [(NCNotificationListPresentableGroup *)self delegate];
  v5 = [delegate notificationUsageTrackingStateForNotificationListComponent:self];

  return v5;
}

- (void)notificationViewController:(id)controller requestPermissionToExecuteAction:(id)action withParameters:(id)parameters completion:(id)completion
{
  completionCopy = completion;
  parametersCopy = parameters;
  actionCopy = action;
  controllerCopy = controller;
  delegate = [(NCNotificationListPresentableGroup *)self delegate];
  notificationRequest = [controllerCopy notificationRequest];

  [delegate notificationListComponent:self requestPermissionToExecuteAction:actionCopy forNotificationRequest:notificationRequest withParameters:parametersCopy completion:completionCopy];
}

- (void)notificationViewControllerWillDismissForCancelAction:(id)action
{
  actionCopy = action;
  delegate = [(NCNotificationListPresentableGroup *)self delegate];
  [delegate notificationListComponent:self willDismissLongLookForCancelActionForViewController:actionCopy];
}

- (int64_t)notificationViewControllerDateFormatStyle:(id)style
{
  v3 = MEMORY[0x277CBEA80];
  styleCopy = style;
  currentCalendar = [v3 currentCalendar];
  staticContentProvider = [styleCopy staticContentProvider];

  date = [staticContentProvider date];
  v8 = [currentCalendar isDateInToday:date];

  return v8;
}

- (BOOL)notificationViewControllerShouldAllowExpandedPlatterInteraction:(id)interaction
{
  interactionCopy = interaction;
  if ([(NCNotificationGroupList *)self _shouldAllowInteractionWithNotificationViewController:interactionCopy])
  {
    delegate = [(NCNotificationListPresentableGroup *)self delegate];
    notificationRequest = [interactionCopy notificationRequest];
    v7 = [delegate notificationListComponent:self shouldAllowInteractionsForNotificationRequest:notificationRequest];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)notificationViewControllerShouldAllowClickPresentationInteraction:(id)interaction
{
  interactionCopy = interaction;
  if ([(NCNotificationGroupList *)self _shouldAllowInteractionWithNotificationViewController:interactionCopy])
  {
    delegate = [(NCNotificationListPresentableGroup *)self delegate];
    notificationRequest = [interactionCopy notificationRequest];
    v7 = [delegate notificationListComponent:self shouldAllowInteractionsForNotificationRequest:notificationRequest];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)notificationViewControllerContainerViewProviderForExpandedContent:(id)content
{
  contentCopy = content;
  delegate = [(NCNotificationListPresentableGroup *)self delegate];
  v6 = [delegate notificationListComponent:self containerViewProviderForExpandedContentForViewController:contentCopy];

  return v6;
}

- (CGRect)notificationViewController:(id)controller initialFrameForPresentingLongLookFromView:(id)view
{
  viewCopy = view;
  notificationRequest = [controller notificationRequest];
  v8 = [(NCNotificationGroupList *)self _currentCellForNotificationRequest:notificationRequest];

  superview = [viewCopy superview];
  [viewCopy frame];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  if (v8)
  {
    contentView = [v8 contentView];
    [superview convertRect:contentView toView:{v11, v13, v15, v17}];
    v20 = v19;
    v22 = v21;
    v24 = v23;

    contentView2 = [v8 contentView];
    superview = contentView2;
    v26 = 0.0;
    v27 = v20;
    v28 = v22;
    v29 = v24;
  }

  else
  {
    contentView2 = superview;
    v26 = v11;
    v27 = v13;
    v28 = v15;
    v29 = v17;
  }

  [contentView2 convertRect:0 toView:{v26, v27, v28, v29}];
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;

  v38 = v31;
  v39 = v33;
  v40 = v35;
  v41 = v37;
  result.size.height = v41;
  result.size.width = v40;
  result.origin.y = v39;
  result.origin.x = v38;
  return result;
}

- (CGRect)notificationViewController:(id)controller finalFrameForDismissingLongLookFromView:(id)view
{
  viewCopy = view;
  controllerCopy = controller;
  listView = [(NCNotificationListPresentableGroup *)self listView];
  window = [listView window];
  self->_longLookDismissalFinalFrameCalculatedWithoutWindow = window == 0;

  notificationRequest = [controllerCopy notificationRequest];

  v11 = [(NCNotificationGroupList *)self _currentCellForNotificationRequest:notificationRequest];

  if (v11)
  {
    superview = [v11 superview];
    [v11 frame];
    [superview convertRect:0 toView:?];
    v14 = v13;
    v16 = v15;

    [v11 frame];
    [viewCopy sizeThatFits:{CGRectGetWidth(v38), 1.79769313e308}];
    v18 = v17;
    v20 = v19;
  }

  else
  {
    superview2 = [viewCopy superview];
    [viewCopy frame];
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v29 = v28;

    [superview2 convertRect:0 toView:{v23, v25, v27, v29}];
    v14 = v30;
    v16 = v31;
    v18 = v32;
    v20 = v33;
    viewCopy = superview2;
  }

  v34 = v14;
  v35 = v16;
  v36 = v18;
  v37 = v20;
  result.size.height = v37;
  result.size.width = v36;
  result.origin.y = v35;
  result.origin.x = v34;
  return result;
}

- (id)notificationViewController:(id)controller keyboardAssertionForGestureWindow:(id)window
{
  windowCopy = window;
  delegate = [(NCNotificationListPresentableGroup *)self delegate];
  v7 = [delegate notificationListComponent:self keyboardAssertionForGestureWindow:windowCopy];

  return v7;
}

- (id)hideHomeAffordanceAnimationSettingsForNotificationViewController:(id)controller
{
  delegate = [(NCNotificationListPresentableGroup *)self delegate];
  v5 = [delegate hideHomeAffordanceAnimationSettingsForNotificationListComponent:self];

  return v5;
}

- (id)unhideHomeAffordanceAnimationSettingsForNotificationViewController:(id)controller
{
  delegate = [(NCNotificationListPresentableGroup *)self delegate];
  v5 = [delegate unhideHomeAffordanceAnimationSettingsForNotificationListComponent:self];

  return v5;
}

- (id)settleHomeAffordanceAnimationBehaviorDescriptionForNotificationViewController:(id)controller
{
  delegate = [(NCNotificationListPresentableGroup *)self delegate];
  v5 = [delegate settleHomeAffordanceAnimationBehaviorDescriptionForNotificationListComponent:self];

  return v5;
}

- (BOOL)notificationViewControllerShouldAllowLongPressGesture:(id)gesture
{
  selfCopy = self;
  delegate = [(NCNotificationListPresentableGroup *)self delegate];
  LOBYTE(selfCopy) = [delegate notificationListComponentShouldAllowLongPressGesture:selfCopy];

  return selfCopy;
}

- (void)notificationViewController:(id)controller isPerformingHoverHighlighting:(BOOL)highlighting
{
  controllerCopy = controller;
  leadingNotificationRequest = [(NCNotificationGroupList *)self leadingNotificationRequest];
  v8 = [(NCNotificationGroupList *)self _currentCellForNotificationRequest:leadingNotificationRequest];
  notificationViewController = [v8 notificationViewController];

  LODWORD(leadingNotificationRequest) = [(NCNotificationListPresentableGroup *)self isGrouped];
  if (leadingNotificationRequest && notificationViewController == controllerCopy)
  {
    orderedRequests = [(NCNotificationGroupList *)self orderedRequests];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __84__NCNotificationGroupList_notificationViewController_isPerformingHoverHighlighting___block_invoke;
    v11[3] = &unk_278371EE0;
    v11[4] = self;
    highlightingCopy = highlighting;
    [orderedRequests enumerateObjectsUsingBlock:v11];
  }
}

void __84__NCNotificationGroupList_notificationViewController_isPerformingHoverHighlighting___block_invoke(uint64_t a1, void *a2, unint64_t a3, BOOL *a4)
{
  v7 = a2;
  v8 = v7;
  if (a3 - 1 <= 1)
  {
    v9 = MEMORY[0x277D75D18];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __84__NCNotificationGroupList_notificationViewController_isPerformingHoverHighlighting___block_invoke_2;
    v10[3] = &unk_278371F30;
    v10[4] = *(a1 + 32);
    v11 = v7;
    v12 = *(a1 + 40);
    [v9 animateWithDuration:v10 animations:0.2];
  }

  *a4 = a3 > 2;
}

void __84__NCNotificationGroupList_notificationViewController_isPerformingHoverHighlighting___block_invoke_2(uint64_t a1)
{
  v3 = [*(a1 + 32) _currentCellForNotificationRequest:*(a1 + 40)];
  v2 = [v3 notificationViewController];
  [v2 setPlatterHighlighted:*(a1 + 48)];
}

- (void)notificationViewController:(id)controller didUpdatePreferredContentSize:(CGSize)size
{
  height = size.height;
  controllerCopy = controller;
  notificationRequest = [controllerCopy notificationRequest];
  notificationRequest2 = [controllerCopy notificationRequest];
  v8 = [(NCNotificationGroupList *)self containsNotificationRequest:notificationRequest2];

  if (v8)
  {
    currentTraits = [controllerCopy currentTraits];
    notificationListCache = [(NCNotificationListPresentableGroup *)self notificationListCache];
    v11 = [notificationListCache invalidateCachedHeightIfNecessaryForNotificationRequest:notificationRequest updatedHeight:-[NCNotificationGroupList _isContentRevealedForNotificationRequest:](self isContentRevealed:"_isContentRevealedForNotificationRequest:" traits:{notificationRequest), currentTraits, height}];

    if (v11)
    {
      listView = [(NCNotificationListPresentableGroup *)self listView];
      [listView setNeedsLayout];
    }
  }
}

- (BOOL)isRichNotificationContentViewForNotificationViewController:(id)controller
{
  selfCopy = self;
  delegate = [(NCNotificationListPresentableGroup *)self delegate];
  LOBYTE(selfCopy) = [delegate isRichNotificationContentViewForNotificationGroupList:selfCopy];

  return selfCopy;
}

- (BOOL)isAttachmentImageFeaturedForNotificationViewController:(id)controller
{
  selfCopy = self;
  delegate = [(NCNotificationListPresentableGroup *)self delegate];
  LOBYTE(selfCopy) = [delegate isAttachmentImageFeaturedForNotificationGroupList:selfCopy];

  return selfCopy;
}

- (BOOL)handleTapOnNotificationViewController:(id)controller
{
  controllerCopy = controller;
  delegate = [(NCNotificationListPresentableGroup *)self delegate];
  [delegate notificationListBaseComponentDidSignificantUserInteraction:self];
  if (objc_opt_respondsToSelector() & 1) != 0 && ([delegate handleTapOnNotificationListBaseComponent:self])
  {
    v6 = 1;
  }

  else
  {
    notificationRequest = [controllerCopy notificationRequest];
    v6 = [(NCNotificationGroupList *)self _handleTapToExpandGroupForNotificationRequest:notificationRequest];
  }

  return v6;
}

- (BOOL)shouldAlignContentToBottomForNotificationViewController:(id)controller
{
  notificationRequest = [controller notificationRequest];
  leadingNotificationRequest = [(NCNotificationGroupList *)self leadingNotificationRequest];
  if (leadingNotificationRequest == notificationRequest)
  {
    delegate = [(NCNotificationListPresentableGroup *)self delegate];
    v6 = [delegate shouldAlignContentToBottomForLeadingNotificationRequestForNotificationGroupList:self];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)importantAdornmentEligibleOptionsForNotificationViewController:(id)controller
{
  delegate = [(NCNotificationListPresentableGroup *)self delegate];
  v5 = [delegate importantAdornmentEligibleOptionsForNotificationGroupList:self];

  return v5;
}

- (void)notificationViewController:(id)controller willPresentLongLookForRequst:(id)requst animator:(id)animator
{
  requstCopy = requst;
  animatorCopy = animator;
  delegate = [(NCNotificationListPresentableGroup *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate notificationListComponent:self willPresentLongLookForRequst:requstCopy animator:animatorCopy];
  }
}

- (void)notificationViewController:(id)controller dismissPresentLongLookForRequst:(id)requst animator:(id)animator
{
  requstCopy = requst;
  animatorCopy = animator;
  delegate = [(NCNotificationListPresentableGroup *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate notificationListComponent:self dismissPresentLongLookForRequst:requstCopy animator:animatorCopy];
  }
}

- (id)notificationViewControllerRequestCustomPlatterBackgroundView:(id)view
{
  delegate = [(NCNotificationListPresentableGroup *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [delegate requestCustomPlatterBackgroundViewForNotificationGroupList:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)notificationViewController:(id)controller auxiliaryOptionsContentProviderForNotificationRequest:(id)request withLongLook:(BOOL)look
{
  lookCopy = look;
  requestCopy = request;
  delegate = [(NCNotificationListPresentableGroup *)self delegate];
  v9 = [delegate notificationGroupList:self requestsAuxiliaryOptionsContentProviderForNotificationRequest:requestCopy isLongLook:lookCopy];

  return v9;
}

- (void)notificationManagementContentProvider:(id)provider requestsPresentingNotificationManagementViewType:(unint64_t)type forNotificationRequest:(id)request withPresentingView:(id)view
{
  viewCopy = view;
  requestCopy = request;
  delegate = [(NCNotificationListPresentableGroup *)self delegate];
  [delegate notificationListComponent:self requestsPresentingManagementViewForNotificationRequest:requestCopy managementViewType:type withPresentingView:viewCopy completion:0];
}

- (void)notificationViewControllerWillBeginUserInteraction:(id)interaction
{
  interactionCopy = interaction;
  delegate = [(NCNotificationListPresentableGroup *)self delegate];
  [delegate notificationListBaseComponent:self didBeginUserInteractionWithViewController:interactionCopy];
}

- (void)notificationViewControllerDidEndUserInteraction:(id)interaction
{
  interactionCopy = interaction;
  delegate = [(NCNotificationListPresentableGroup *)self delegate];
  [delegate notificationListBaseComponent:self didEndUserInteractionWithViewController:interactionCopy];
}

- (void)longLookWillPresentForNotificationViewController:(id)controller
{
  controllerCopy = controller;
  delegate = [(NCNotificationListPresentableGroup *)self delegate];
  [delegate notificationListComponent:self isPresentingLongLookForViewController:controllerCopy];

  view = [controllerCopy view];

  [view setHidden:1];
}

- (void)longLookWillDismissForNotificationViewController:(id)controller
{
  controllerCopy = controller;
  shouldRestorePresentingShortLookOnDismiss = [controllerCopy shouldRestorePresentingShortLookOnDismiss];
  view = [controllerCopy view];
  [view setHidden:shouldRestorePresentingShortLookOnDismiss ^ 1u];

  notificationRequest = [controllerCopy notificationRequest];

  v9 = [(NCNotificationGroupList *)self _currentCellForNotificationRequest:notificationRequest];

  if ((shouldRestorePresentingShortLookOnDismiss & 1) == 0 && [(NCNotificationListPresentableGroup *)self isGrouped])
  {
    [(NCNotificationGroupList *)self _reloadNotificationCellAtIndex:1];
    listView = [(NCNotificationListPresentableGroup *)self listView];
    [listView revealNotificationContentBelowGroupedViewIfNecessary:v9];
  }
}

- (void)longLookDidDismissForNotificationViewController:(id)controller
{
  v19 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  v5 = *MEMORY[0x277D77DD0];
  if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    logDescription = [(NCNotificationGroupList *)self logDescription];
    notificationRequest = [controllerCopy notificationRequest];
    notificationIdentifier = [notificationRequest notificationIdentifier];
    un_logDigest = [notificationIdentifier un_logDigest];
    v15 = 138543618;
    v16 = logDescription;
    v17 = 2114;
    v18 = un_logDigest;
    _os_log_impl(&dword_21E77E000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ did dismiss long look for notification request %{public}@", &v15, 0x16u);
  }

  cellRecycledWhilePresentingLongLook = [(NCNotificationGroupList *)self cellRecycledWhilePresentingLongLook];
  notificationViewController = [cellRecycledWhilePresentingLongLook notificationViewController];

  if (notificationViewController == controllerCopy)
  {
    [(NCNotificationGroupList *)self recycleView:cellRecycledWhilePresentingLongLook];
    [(NCNotificationGroupList *)self setCellRecycledWhilePresentingLongLook:0];
  }

  else if (self->_longLookDismissalFinalFrameCalculatedWithoutWindow)
  {
    notificationRequest2 = [controllerCopy notificationRequest];
    [(NCNotificationGroupList *)self reloadNotificationRequest:notificationRequest2];

    self->_longLookDismissalFinalFrameCalculatedWithoutWindow = 0;
  }

  delegate = [(NCNotificationListPresentableGroup *)self delegate];
  [delegate notificationListComponent:self isPresentingLongLookForViewController:0];
}

- (BOOL)shouldContinuePresentingActionButtonsForNotificationListCell:(id)cell
{
  cellCopy = cell;
  leadingNotificationRequest = [(NCNotificationGroupList *)self leadingNotificationRequest];
  v6 = [(NCNotificationGroupList *)self _currentCellForNotificationRequest:leadingNotificationRequest];

  if (v6 == cellCopy)
  {
    LOBYTE(v7) = 1;
  }

  else
  {
    v7 = ![(NCNotificationListPresentableGroup *)self isGrouped];
  }

  return v7;
}

- (BOOL)shouldShowSupplementaryActionsForNotificationListCell:(id)cell
{
  v4 = [(NCNotificationGroupList *)self _requestForListCell:cell];
  if ([(NCNotificationGroupList *)self _allowPanningForRequest:v4])
  {
    v5 = [(NCNotificationGroupList *)self _shouldShowOptionsActionForRequest:v4]|| [(NCNotificationGroupList *)self _shouldShowViewActionForRequest:v4]|| [(NCNotificationGroupList *)self _shouldShowClearActionForRequest:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)supplementaryActionsForNotificationListCell:(id)cell
{
  v4 = [(NCNotificationGroupList *)self _requestForListCell:cell];
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if ([(NCNotificationGroupList *)self _shouldShowOptionsActionForRequest:v4])
  {
    v6 = [(NCNotificationGroupList *)self _optionsActionForRequest:v4];
    [v5 addObject:v6];
  }

  if ([(NCNotificationGroupList *)self _shouldShowViewActionForRequest:v4])
  {
    v7 = [(NCNotificationGroupList *)self _presentLongLookActionWithViewTitleForRequest:v4];
    [v5 addObject:v7];
  }

  if ([(NCNotificationGroupList *)self _shouldShowClearActionForRequest:v4])
  {
    listView = [(NCNotificationListPresentableGroup *)self listView];
    if ([listView isGrouped])
    {
      v9 = [(NCNotificationGroupList *)self notificationCount]> 1;
    }

    else
    {
      v9 = 0;
    }

    v10 = [(NCNotificationGroupList *)self _clearActionForRequest:v4 clearAll:v9];
    [v5 addObject:v10];
  }

  return v5;
}

- (id)defaultActionForNotificationListCell:(id)cell
{
  v4 = [(NCNotificationGroupList *)self _requestForListCell:cell];
  if ([(NCNotificationGroupList *)self _shouldShowOpenActionToPerformLongLookPresentationForRequest:v4])
  {
    [(NCNotificationGroupList *)self _presentLongLookActionWithOpenTitleForRequest:v4];
  }

  else
  {
    [(NCNotificationGroupList *)self _openActionForRequest:v4];
  }
  v5 = ;

  return v5;
}

- (BOOL)shouldShowDefaultActionForNotificationListCell:(id)cell
{
  v4 = [(NCNotificationGroupList *)self _requestForListCell:cell];
  if ([(NCNotificationGroupList *)self _allowPanningForRequest:v4])
  {
    v5 = [(NCNotificationGroupList *)self _shouldShowOpenActionToPerformDefaultActionForRequest:v4]|| [(NCNotificationGroupList *)self _shouldShowOpenActionToPerformLongLookPresentationForRequest:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)shouldVerticallyStackActionButtonsForNotificationListCell:(id)cell
{
  selfCopy = self;
  delegate = [(NCNotificationListPresentableGroup *)self delegate];
  LOBYTE(selfCopy) = [delegate isAttachmentImageFeaturedForNotificationGroupList:selfCopy];

  return selfCopy;
}

- (void)_reloadAllNotificationRequests
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  orderedRequests = [(NCNotificationGroupList *)self orderedRequests];
  v4 = [orderedRequests countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(orderedRequests);
        }

        [(NCNotificationGroupList *)self reloadNotificationViewForNotificationRequest:*(*(&v8 + 1) + 8 * v7++) animated:1];
      }

      while (v5 != v7);
      v5 = [orderedRequests countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)_reloadNotificationViewForNotificationRequest:(id)request forceReloadView:(BOOL)view animated:(BOOL)animated
{
  animatedCopy = animated;
  viewCopy = view;
  requestCopy = request;
  if (requestCopy)
  {
    v9 = [(NCNotificationGroupList *)self _currentCellForNotificationRequest:requestCopy];
    v10 = v9;
    if (v9)
    {
      [v9 hideActionButtonsAnimated:1 fastAnimation:0 completion:0];
      notificationViewController = [v10 notificationViewController];
      delegate = [notificationViewController delegate];

      if (delegate != self)
      {
        [notificationViewController setDelegate:self];
      }

      notificationRequest = [notificationViewController notificationRequest];

      if (notificationRequest == requestCopy)
      {
        [notificationViewController invalidateContentProviders];
      }

      else
      {
        [notificationViewController setNotificationRequest:requestCopy];
      }

      view = [notificationViewController view];
      isHidden = [view isHidden];

      if (isHidden)
      {
        v16 = *MEMORY[0x277D77DD0];
        if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_ERROR))
        {
          [NCNotificationGroupList _reloadNotificationViewForNotificationRequest:v16 forceReloadView:self animated:requestCopy];
        }

        view2 = [notificationViewController view];
        [view2 setHidden:0];
      }

      animator = [(NCNotificationGroupList *)self animator];
      if (animatedCopy)
      {
        v24[0] = MEMORY[0x277D85DD0];
        v24[1] = 3221225472;
        v24[2] = __98__NCNotificationGroupList__reloadNotificationViewForNotificationRequest_forceReloadView_animated___block_invoke;
        v24[3] = &unk_27836F6A8;
        v19 = &v25;
        v25 = notificationViewController;
        [animator animateUsingSpringWithTension:1 friction:1 interactive:v24 type:0 animations:240.0 completion:20.0];
      }

      else
      {
        v22[0] = MEMORY[0x277D85DD0];
        v22[1] = 3221225472;
        v22[2] = __98__NCNotificationGroupList__reloadNotificationViewForNotificationRequest_forceReloadView_animated___block_invoke_2;
        v22[3] = &unk_27836F6A8;
        v19 = &v23;
        v23 = notificationViewController;
        [animator performAnimationType:1 withoutAnimation:v22];
      }

      if (viewCopy)
      {
        listView = [(NCNotificationListPresentableGroup *)self listView];
        orderedRequests = [(NCNotificationGroupList *)self orderedRequests];
        [listView reloadViewAtIndex:{objc_msgSend(orderedRequests, "indexOfObject:", requestCopy)}];
      }
    }
  }
}

- (void)_scrollToTopIfNecessaryAndPerformBlock:(id)block
{
  blockCopy = block;
  delegate = [(NCNotificationListPresentableGroup *)self delegate];
  v5 = [delegate shouldScrollToTopForNotificationListBaseComponent:self];
  listView = [(NCNotificationListPresentableGroup *)self listView];
  v7 = [listView isVisibleForViewAtIndex:0];

  if (!v7 || v5)
  {
    [delegate notificationListPresentableGroup:self requestsScrollToTopOfCollectionWithCompletion:blockCopy];
  }

  else if (blockCopy)
  {
    blockCopy[2]();
  }
}

- (id)purposeWithSensitiveTextHashed:(BOOL)hashed
{
  threadIdentifier = self->_threadIdentifier;
  if (threadIdentifier)
  {
    if (hashed)
    {
      un_logDigest = [(NSString *)threadIdentifier un_logDigest];
    }

    else
    {
      un_logDigest = threadIdentifier;
    }

    v6 = un_logDigest;
  }

  else
  {
    v6 = @"<Nil>";
  }

  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Bundle:%@Thread:%@", self->_sectionIdentifier, v6];;

  return v7;
}

- (void)toggleGroupedState
{
  selfCopy = self;
  logDescription = [a2 logDescription];
  leadingNotificationRequest = [a2 leadingNotificationRequest];
  notificationIdentifier = [leadingNotificationRequest notificationIdentifier];
  un_logDigest = [notificationIdentifier un_logDigest];
  OUTLINED_FUNCTION_0_8();
  _os_log_error_impl(v7, v8, v9, v10, v11, 0x16u);
}

void __45__NCNotificationGroupList_toggleGroupedState__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = [v5 isDeviceAuthenticated];
  if (v6 != [*(a1 + 32) deviceAuthenticated])
  {
    [v5 setDeviceAuthenticated:{objc_msgSend(*(a1 + 32), "deviceAuthenticated")}];
    [*(a1 + 32) reloadNotificationViewForNotificationRequest:v7 animated:1];
  }
}

- (void)_hintSideSwipeForDefaultActionForNotificationRequest:(id)request
{
  v3 = [(NCNotificationGroupList *)self _currentCellForNotificationRequest:request];
  if (v3)
  {
    v4 = v3;
    [v3 hintSideSwipeForDefaultAction];
    v3 = v4;
  }
}

- (void)_updateSummariesForNewLeadingNotificationRequest:(id)request oldLeadingNotificationRequest:(id)notificationRequest
{
  notificationRequestCopy = notificationRequest;
  requestCopy = request;
  summaryBuilder = [(NCNotificationGroupList *)self summaryBuilder];
  orderedRequests = [(NCNotificationGroupList *)self orderedRequests];
  [summaryBuilder updateWithNotificationRequests:orderedRequests];

  v9 = notificationRequestCopy;
  if (notificationRequestCopy != requestCopy && requestCopy && notificationRequestCopy)
  {
    contentProviders = [(NCNotificationGroupList *)self contentProviders];
    v11 = [contentProviders objectForKey:notificationRequestCopy];
    [v11 setOverridenSummaryBuilder:0];

    v9 = notificationRequestCopy;
  }
}

- (void)_updateSummariesForLeadingNotificationRequest:(id)request forceReload:(BOOL)reload
{
  reloadCopy = reload;
  requestCopy = request;
  notificationListCache = [(NCNotificationListPresentableGroup *)self notificationListCache];
  [notificationListCache clearCachedHeightsForNotificationRequest:requestCopy];

  contentProviders = [(NCNotificationGroupList *)self contentProviders];
  v8 = [contentProviders objectForKey:requestCopy];
  summaryBuilder = [(NCNotificationGroupList *)self summaryBuilder];
  [v8 setOverridenSummaryBuilder:summaryBuilder];

  [(NCNotificationGroupList *)self _reloadNotificationViewForNotificationRequest:requestCopy forceReloadView:reloadCopy animated:1];
}

- (id)_cachedCellForNotificationRequest:(id)request createNewIfNecessary:(BOOL)necessary shouldConfigure:(BOOL)configure forceShowContent:(BOOL)content
{
  configureCopy = configure;
  necessaryCopy = necessary;
  requestCopy = request;
  notificationListCache = [(NCNotificationListPresentableGroup *)self notificationListCache];
  v12 = [notificationListCache listCellForNotificationRequest:requestCopy viewControllerDelegate:self createNewIfNecessary:necessaryCopy shouldConfigure:configureCopy];

  if (v12)
  {
    cellRecycledWhilePresentingLongLook = [(NCNotificationGroupList *)self cellRecycledWhilePresentingLongLook];
    if (v12 == cellRecycledWhilePresentingLongLook)
    {
      [(NCNotificationGroupList *)self setCellRecycledWhilePresentingLongLook:0];
LABEL_10:

      goto LABEL_11;
    }

    notificationViewController = [v12 notificationViewController];
    [notificationViewController addObserver:self];
    materialGroupNameBase = [(NCNotificationListPresentableGroup *)self materialGroupNameBase];
    [notificationViewController setMaterialGroupNameBase:materialGroupNameBase];
    parentViewController = [notificationViewController parentViewController];

    if (parentViewController)
    {
      if (content)
      {
LABEL_5:
        v17 = 0;
LABEL_9:
        view = [notificationViewController view];
        [view setHidden:v17];

        [notificationViewController setHasUpdatedContent];
        [v12 setActionProvider:self];
        [v12 setActionHandler:self];
        [v12 setMaterialGroupNameBase:materialGroupNameBase];
        [v12 setMaterialRecipe:{objc_msgSend(notificationViewController, "materialRecipe")}];
        [v12 setBackgroundAlpha:self->_individualCellBackgroundAlpha];
        [v12 setContentAlpha:1.0];
        [v12 setDateAlpha:1.0];
        [v12 setCompositeAlpha:1.0];
        v20 = *(MEMORY[0x277CBF2C0] + 16);
        v22[0] = *MEMORY[0x277CBF2C0];
        v22[1] = v20;
        v22[2] = *(MEMORY[0x277CBF2C0] + 32);
        [v12 setContentTransform:v22];
        [v12 setHideDate:0];
        [v12 setAllowContentToCrossFade:1];

        goto LABEL_10;
      }
    }

    else
    {
      delegate = [(NCNotificationListPresentableGroup *)self delegate];
      [delegate notificationListBaseComponent:self didAddViewController:notificationViewController];

      if (content)
      {
        goto LABEL_5;
      }
    }

    v17 = [notificationViewController isNotPresentingOrHasCommittedToDismissingCustomContentProvidingViewController] ^ 1;
    goto LABEL_9;
  }

LABEL_11:

  return v12;
}

- (id)_currentCellForNotificationRequest:(id)request
{
  requestCopy = request;
  notificationListCache = [(NCNotificationListPresentableGroup *)self notificationListCache];
  v6 = [notificationListCache listCellForNotificationRequest:requestCopy viewControllerDelegate:self createNewIfNecessary:0 shouldConfigure:0];

  return v6;
}

- (id)_requestForListCell:(id)cell
{
  notificationViewController = [cell notificationViewController];
  notificationRequest = [notificationViewController notificationRequest];

  return notificationRequest;
}

- (BOOL)_allowPanningForRequest:(id)request
{
  v28 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  delegate = [(NCNotificationListPresentableGroup *)self delegate];
  v6 = [delegate shouldNotificationGroupListPanHorizontally:self];

  if (v6)
  {
    if ([(NCNotificationListPresentableGroup *)self isGrouped])
    {
      leadingNotificationRequest = [(NCNotificationGroupList *)self leadingNotificationRequest];
      v8 = [requestCopy matchesRequest:leadingNotificationRequest];
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x277D77DD0];
  if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    notificationIdentifier = [requestCopy notificationIdentifier];
    un_logDigest = [notificationIdentifier un_logDigest];
    isGrouped = [(NCNotificationListPresentableGroup *)self isGrouped];
    leadingNotificationRequest2 = [(NCNotificationGroupList *)self leadingNotificationRequest];
    notificationIdentifier2 = [leadingNotificationRequest2 notificationIdentifier];
    un_logDigest2 = [notificationIdentifier2 un_logDigest];
    v18 = 138544386;
    v19 = un_logDigest;
    v20 = 1024;
    v21 = v6;
    v22 = 1024;
    v23 = isGrouped;
    v24 = 2114;
    v25 = un_logDigest2;
    v26 = 1024;
    v27 = v8;
    _os_log_impl(&dword_21E77E000, v10, OS_LOG_TYPE_DEFAULT, "Group list determining pan eligibility = %{public}@ delegateCheck: %{BOOL}d isGrouped: %{BOOL}d leadingNotificationRequest: %{public}@ [ shouldPanHorizontally = %{BOOL}d ]", &v18, 0x28u);
  }

  return v8;
}

- (BOOL)_shouldShowOptionsActionForRequest:(id)request
{
  requestCopy = request;
  delegate = [(NCNotificationListPresentableGroup *)self delegate];
  topLevelSectionIdentifier = [requestCopy topLevelSectionIdentifier];

  v7 = [delegate notificationListComponent:self sectionSettingsForSectionIdentifier:topLevelSectionIdentifier];

  LOBYTE(requestCopy) = [v7 isUserConfigurable];
  return requestCopy;
}

- (BOOL)_shouldShowViewActionForRequest:(id)request
{
  requestCopy = request;
  delegate = [(NCNotificationListPresentableGroup *)self delegate];
  LOBYTE(self) = [delegate notificationListComponent:self shouldAllowInteractionsForNotificationRequest:requestCopy];

  return self ^ 1;
}

- (BOOL)_shouldShowClearActionForRequest:(id)request
{
  options = [request options];
  hideClearActionInList = [options hideClearActionInList];

  return hideClearActionInList ^ 1;
}

- (BOOL)_shouldShowOpenActionToPerformDefaultActionForRequest:(id)request
{
  defaultAction = [request defaultAction];
  if (defaultAction)
  {
    delegate = [(NCNotificationListPresentableGroup *)self delegate];
    v6 = [delegate shouldHintDefaultActionForNotificationListBaseComponent:self];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)_shouldShowOpenActionToPerformLongLookPresentationForRequest:(id)request
{
  requestCopy = request;
  defaultAction = [requestCopy defaultAction];
  if (defaultAction)
  {
    v6 = 0;
  }

  else
  {
    options = [requestCopy options];
    if ([options revealsAdditionalContentIfNoDefaultAction])
    {
      delegate = [(NCNotificationListPresentableGroup *)self delegate];
      v6 = [delegate shouldHintDefaultActionForNotificationListBaseComponent:self];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (id)_openActionForRequest:(id)request
{
  requestCopy = request;
  objc_initWeak(&location, self);
  v5 = MEMORY[0x277D750C8];
  v6 = NCUserNotificationsUIKitFrameworkBundle();
  v7 = [v6 localizedStringForKey:@"NOTIFICATION_LIST_OPEN" value:&stru_282FE84F8 table:0];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __49__NCNotificationGroupList__openActionForRequest___block_invoke;
  v12[3] = &unk_278371940;
  objc_copyWeak(&v14, &location);
  v8 = requestCopy;
  v13 = v8;
  v9 = [v5 actionWithTitle:v7 image:0 identifier:@"NCNotificationGroupListActionIdentifierOpen" handler:v12];

  delegate = [(NCNotificationListPresentableGroup *)self delegate];
  LOBYTE(self) = [delegate isAttachmentImageFeaturedForNotificationGroupList:self];

  if ((self & 1) == 0)
  {
    [v9 setPl_defaultAction:1];
  }

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);

  return v9;
}

void __49__NCNotificationGroupList__openActionForRequest___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = [*(a1 + 32) defaultAction];
    [v4 _performAction:v3 forNotificationRequest:*(a1 + 32) withCompletion:0];

    WeakRetained = v4;
  }
}

- (id)_optionsActionForRequest:(id)request
{
  requestCopy = request;
  objc_initWeak(&location, self);
  v5 = MEMORY[0x277D750C8];
  v6 = NCUserNotificationsUIKitFrameworkBundle();
  v7 = [v6 localizedStringForKey:@"NOTIFICATION_LIST_OPTIONS" value:&stru_282FE84F8 table:0];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __52__NCNotificationGroupList__optionsActionForRequest___block_invoke;
  v11[3] = &unk_278371940;
  objc_copyWeak(&v13, &location);
  v8 = requestCopy;
  v12 = v8;
  v9 = [v5 actionWithTitle:v7 image:0 identifier:@"NCNotificationGroupListActionIdentifierOptions" handler:v11];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);

  return v9;
}

void __52__NCNotificationGroupList__optionsActionForRequest___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _executeOptionsActionForRequest:*(a1 + 32) action:v5];
  }
}

- (void)_executeOptionsActionForRequest:(id)request action:(id)action
{
  requestCopy = request;
  actionCopy = action;
  objc_initWeak(&location, self);
  delegate = [(NCNotificationListPresentableGroup *)self delegate];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __66__NCNotificationGroupList__executeOptionsActionForRequest_action___block_invoke;
  v10[3] = &unk_278371FA8;
  objc_copyWeak(&v12, &location);
  v9 = requestCopy;
  v11 = v9;
  [delegate notificationListComponent:self requestsPresentingOptionsMenuForNotificationRequest:v9 presentingViewProvider:v10 optionsForSection:0 completion:0];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __66__NCNotificationGroupList__executeOptionsActionForRequest_action___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained _currentCellForNotificationRequest:*(a1 + 32)];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __66__NCNotificationGroupList__executeOptionsActionForRequest_action___block_invoke_2;
    v8[3] = &unk_278371F80;
    v9 = v6;
    v10 = v3;
    v7 = v6;
    [v7 revealSupplementaryActionsWithCompletion:v8];
  }
}

uint64_t __66__NCNotificationGroupList__executeOptionsActionForRequest_action___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) senderForActionWithIdentifier:@"NCNotificationGroupListActionIdentifierOptions"];
  if (objc_claimAutoreleasedReturnValue())
  {
    (*(*(a1 + 40) + 16))();
  }

  return MEMORY[0x2821F9730]();
}

- (id)_presentLongLookActionWithOpenTitleForRequest:(id)request
{
  requestCopy = request;
  v5 = NCUserNotificationsUIKitFrameworkBundle();
  v6 = [v5 localizedStringForKey:@"NOTIFICATION_LIST_OPEN" value:&stru_282FE84F8 table:0];
  v7 = [(NCNotificationGroupList *)self _presentLongLookActionForRequest:requestCopy title:v6 identifier:@"NCNotificationGroupListActionIdentifierOpen"];

  return v7;
}

- (id)_presentLongLookActionWithViewTitleForRequest:(id)request
{
  requestCopy = request;
  v5 = NCUserNotificationsUIKitFrameworkBundle();
  v6 = [v5 localizedStringForKey:@"NOTIFICATION_LIST_VIEW" value:&stru_282FE84F8 table:0];
  v7 = [(NCNotificationGroupList *)self _presentLongLookActionForRequest:requestCopy title:v6 identifier:@"NCNotificationGroupListActionIdentifierView"];

  return v7;
}

- (id)_presentLongLookActionForRequest:(id)request title:(id)title identifier:(id)identifier
{
  requestCopy = request;
  titleCopy = title;
  identifierCopy = identifier;
  objc_initWeak(&location, self);
  v11 = MEMORY[0x277D750C8];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __77__NCNotificationGroupList__presentLongLookActionForRequest_title_identifier___block_invoke;
  v15[3] = &unk_278371940;
  objc_copyWeak(&v17, &location);
  v12 = requestCopy;
  v16 = v12;
  v13 = [v11 actionWithTitle:titleCopy image:0 identifier:identifierCopy handler:v15];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);

  return v13;
}

void __77__NCNotificationGroupList__presentLongLookActionForRequest_title_identifier___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _executeViewActionForRequest:*(a1 + 32)];
    WeakRetained = v3;
  }
}

- (void)_executeViewActionForRequest:(id)request
{
  requestCopy = request;
  objc_initWeak(&location, self);
  v5 = [(NCNotificationGroupList *)self _currentCellForNotificationRequest:requestCopy];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__NCNotificationGroupList__executeViewActionForRequest___block_invoke;
  v7[3] = &unk_278370A90;
  objc_copyWeak(&v9, &location);
  v6 = v5;
  v8 = v6;
  [v6 hideActionButtonsAnimated:1 fastAnimation:1 completion:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __56__NCNotificationGroupList__executeViewActionForRequest___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v3 = [WeakRetained delegate];
    v4 = [*(a1 + 32) notificationViewController];
    [v3 notificationListBaseComponent:v6 didBeginUserInteractionWithViewController:v4];

    v5 = [*(a1 + 32) notificationViewController];
    [v5 presentLongLookAnimated:1 trigger:3 completion:0];

    WeakRetained = v6;
  }
}

- (id)_clearActionForRequest:(id)request clearAll:(BOOL)all
{
  allCopy = all;
  requestCopy = request;
  v7 = NCUserNotificationsUIKitFrameworkBundle();
  v8 = v7;
  if (allCopy)
  {
    v9 = @"NOTIFICATION_LIST_CLEAR_ALL_CELL";
  }

  else
  {
    v9 = @"NOTIFICATION_LIST_CLEAR";
  }

  v10 = [v7 localizedStringForKey:v9 value:&stru_282FE84F8 table:0];

  objc_initWeak(&location, self);
  v11 = MEMORY[0x277D750C8];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __59__NCNotificationGroupList__clearActionForRequest_clearAll___block_invoke;
  v17[3] = &unk_278371940;
  objc_copyWeak(&v19, &location);
  v12 = requestCopy;
  v18 = v12;
  v13 = [v11 actionWithTitle:v10 image:0 identifier:@"NCNotificationGroupListActionIdentifierClear" handler:v17];
  delegate = [(NCNotificationListPresentableGroup *)self delegate];
  v15 = [delegate isAttachmentImageFeaturedForNotificationGroupList:self];

  if ((v15 & 1) == 0)
  {
    [v13 setPl_defaultAction:1];
  }

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);

  return v13;
}

void __59__NCNotificationGroupList__clearActionForRequest_clearAll___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _executeClearActionForRequest:*(a1 + 32)];
    WeakRetained = v3;
  }
}

- (void)_executeClearActionForRequest:(id)request
{
  requestCopy = request;
  v5 = [(NCNotificationGroupList *)self _currentCellForNotificationRequest:requestCopy];
  notificationViewController = [v5 notificationViewController];

  v7 = +[NCNotificationEventTracker sharedInstance];
  notificationUsageTrackingState = [notificationViewController notificationUsageTrackingState];
  [v7 shortLookClearedForNotificationRequest:requestCopy withState:notificationUsageTrackingState];

  v9 = *MEMORY[0x277D77DD0];
  if (os_signpost_enabled(*MEMORY[0x277D77DD0]))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_21E77E000, v9, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "NC_NOTIFICATION_DISMISSAL_BEGIN", " enableTelemetry=YES ", buf, 2u);
  }

  kdebug_trace();
  delegate = [(NCNotificationListPresentableGroup *)self delegate];
  if ([(NCNotificationListPresentableGroup *)self isGrouped])
  {
    [(NCNotificationGroupList *)self setClearingAllNotificationRequestsForCellHorizontalSwipe:1];
    v11 = objc_alloc_init(MEMORY[0x277CBEB58]);
    orderedRequests = [(NCNotificationGroupList *)self orderedRequests];
    clearAction = [orderedRequests copy];

    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __57__NCNotificationGroupList__executeClearActionForRequest___block_invoke;
    v18 = &unk_2783705B0;
    selfCopy = self;
    v20 = v11;
    v14 = v11;
    [clearAction enumerateObjectsUsingBlock:&v15];
    [delegate notificationListBaseComponentDidRemoveAll:{self, v15, v16, v17, v18, selfCopy}];
    [delegate notificationListBaseComponent:self requestsClearingPresentables:v14];
  }

  else
  {
    if ([(NCNotificationGroupList *)self count]== 1)
    {
      [(NCNotificationGroupList *)self setClearingAllNotificationRequestsForCellHorizontalSwipe:1];
    }

    if (objc_opt_respondsToSelector())
    {
      [delegate notificationListComponent:self willRemoveNotificationRequest:requestCopy];
    }

    [(NCNotificationGroupList *)self removeNotificationRequest:requestCopy];
    [delegate notificationListComponent:self didRemoveNotificationRequest:requestCopy];
    clearAction = [requestCopy clearAction];
    [(NCNotificationGroupList *)self _performAction:clearAction forNotificationRequest:requestCopy withCompletion:0];
  }

  [delegate notificationListComponentChangedContent:self];
}

void __57__NCNotificationGroupList__executeClearActionForRequest___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 removeNotificationRequest:v4];
  [*(a1 + 40) addObject:v4];
}

- (void)_performAction:(id)action forNotificationRequest:(id)request withCompletion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  actionCopy = action;
  delegate = [(NCNotificationListPresentableGroup *)self delegate];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __80__NCNotificationGroupList__performAction_forNotificationRequest_withCompletion___block_invoke;
  v13[3] = &unk_27836FF88;
  v14 = completionCopy;
  v12 = completionCopy;
  [delegate notificationListComponent:self requestsExecuteAction:actionCopy forNotificationRequest:requestCopy requestAuthentication:1 withParameters:MEMORY[0x277CBEC10] completion:v13];
}

uint64_t __80__NCNotificationGroupList__performAction_forNotificationRequest_withCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (id)_clockSnoozeAlarmNotificationStaticContentProviderForNotificationRequest:(id)request viewController:(id)controller
{
  requestCopy = request;
  controllerCopy = controller;
  clockSnoozeAlarmContentProviders = [(NCNotificationGroupList *)self clockSnoozeAlarmContentProviders];
  v9 = [clockSnoozeAlarmContentProviders objectForKey:requestCopy];

  if (!v9 || ([v9 viewController], v10 = objc_claimAutoreleasedReturnValue(), v10, v10 != controllerCopy))
  {
    [v9 invalidateTimer];
    v11 = [[NCSnoozeAlarmNotificationStaticContentProvider alloc] initWithNotificationRequest:requestCopy viewController:controllerCopy];

    clockSnoozeAlarmContentProviders2 = [(NCNotificationGroupList *)self clockSnoozeAlarmContentProviders];
    [clockSnoozeAlarmContentProviders2 bs_setSafeObject:v11 forKey:requestCopy];

    v9 = v11;
  }

  return v9;
}

- (void)_invalidateSnoozeAlarmNotificationStaticContentProviderTimerForNotificationRequest:(id)request
{
  requestCopy = request;
  clockSnoozeAlarmContentProviders = [(NCNotificationGroupList *)self clockSnoozeAlarmContentProviders];
  v5 = [clockSnoozeAlarmContentProviders objectForKey:requestCopy];

  if (v5)
  {
    [v5 invalidateTimer];
    clockSnoozeAlarmContentProviders2 = [(NCNotificationGroupList *)self clockSnoozeAlarmContentProviders];
    [clockSnoozeAlarmContentProviders2 removeObjectForKey:requestCopy];
  }
}

- (unint64_t)_lockScreenPersistenceForNotificationRequest:(id)request
{
  options = [request options];
  lockScreenPersistence = [options lockScreenPersistence];

  return lockScreenPersistence;
}

- (unint64_t)_lockScreenPriorityForNotificationRequest:(id)request
{
  options = [request options];
  lockScreenPriority = [options lockScreenPriority];

  return lockScreenPriority;
}

- (unint64_t)_existingIndexForNotificationRequest:(id)request
{
  requestCopy = request;
  orderedRequests = [(NCNotificationGroupList *)self orderedRequests];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __64__NCNotificationGroupList__existingIndexForNotificationRequest___block_invoke;
  v9[3] = &unk_278370180;
  v6 = requestCopy;
  v10 = v6;
  v7 = [orderedRequests indexOfObjectPassingTest:v9];

  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if ([v6 isCriticalAlert])
    {
      v7 = [(NCNotificationGroupList *)self _existingIndexForCriticalNotificationRequest:v6];
    }

    else
    {
      v7 = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return v7;
}

- (unint64_t)_existingIndexForCriticalNotificationRequest:(id)request
{
  requestCopy = request;
  if ([requestCopy isCriticalAlert] && (-[NCNotificationGroupList sectionIdentifier](self, "sectionIdentifier"), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(requestCopy, "sectionIdentifier"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v5, "isEqualToString:", v6), v6, v5, v7))
  {
    orderedRequests = [(NCNotificationGroupList *)self orderedRequests];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __72__NCNotificationGroupList__existingIndexForCriticalNotificationRequest___block_invoke;
    v11[3] = &unk_278370180;
    v12 = requestCopy;
    v9 = [orderedRequests indexOfObjectPassingTest:v11];
  }

  else
  {
    v9 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v9;
}

uint64_t __72__NCNotificationGroupList__existingIndexForCriticalNotificationRequest___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 notificationIdentifier];
  v5 = [v3 notificationIdentifier];

  v6 = [v4 isEqualToString:v5];
  return v6;
}

- (unint64_t)_insertionIndexForNotificationRequest:(id)request
{
  requestCopy = request;
  orderedRequests = [(NCNotificationGroupList *)self orderedRequests];
  orderedRequests2 = [(NCNotificationGroupList *)self orderedRequests];
  v7 = [orderedRequests2 count];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __65__NCNotificationGroupList__insertionIndexForNotificationRequest___block_invoke;
  v10[3] = &unk_278371FD0;
  v10[4] = self;
  v8 = [orderedRequests indexOfObject:requestCopy inSortedRange:0 options:v7 usingComparator:{1280, v10}];

  return v8;
}

- (int64_t)_compareNotificationRequest:(id)request withNotificationRequest:(id)notificationRequest
{
  requestCopy = request;
  notificationRequestCopy = notificationRequest;
  v8 = [(NCNotificationGroupList *)self _lockScreenPriorityForNotificationRequest:requestCopy];
  v9 = [(NCNotificationGroupList *)self _lockScreenPriorityForNotificationRequest:notificationRequestCopy];
  v10 = [(NCNotificationGroupList *)self _lockScreenPersistenceForNotificationRequest:requestCopy];
  v11 = [(NCNotificationGroupList *)self _lockScreenPersistenceForNotificationRequest:notificationRequestCopy];
  if (v8 == v9)
  {
    if (v10 == v11)
    {
      timestamp = [notificationRequestCopy timestamp];
      timestamp2 = [requestCopy timestamp];
      v14 = [timestamp compare:timestamp2];
    }

    else if (v10 == 2)
    {
      v14 = -1;
    }

    else
    {
      v14 = 1;
    }
  }

  else if (v8 > v9)
  {
    v14 = -1;
  }

  else
  {
    v14 = 1;
  }

  return v14;
}

- (BOOL)_isContentRevealedForNotificationRequest:(id)request
{
  options = [request options];
  contentPreviewSetting = [options contentPreviewSetting];

  if (!contentPreviewSetting)
  {
    return 1;
  }

  if (contentPreviewSetting != 1)
  {
    return 0;
  }

  return [(NCNotificationGroupList *)self deviceAuthenticated];
}

- (void)_reloadNotificationCellAtIndex:(unint64_t)index
{
  if ([(NCNotificationGroupList *)self count]> index)
  {
    orderedRequests = [(NCNotificationGroupList *)self orderedRequests];
    v6 = [orderedRequests objectAtIndex:index];

    if (v6)
    {
      [(NCNotificationGroupList *)self _reloadRecycledNotificationCellForRequest:v6];
    }
  }
}

- (void)_reloadRecycledGroupedNotificationCells
{
  for (i = 1; i != 3; ++i)
  {
    [(NCNotificationGroupList *)self _reloadNotificationCellAtIndex:i];
  }
}

- (void)_reloadRecycledNotificationCellForRequest:(id)request
{
  requestCopy = request;
  v4 = [(NCNotificationGroupList *)self _currentCellForNotificationRequest:?];
  v5 = v4;
  if (v4)
  {
    notificationViewController = [v4 notificationViewController];
    listView = [(NCNotificationListPresentableGroup *)self listView];
    [notificationViewController setNotificationContentViewHidden:{objc_msgSend(listView, "isHiddenBelowStack")}];

    [notificationViewController setPlatterHighlighted:0];
    [notificationViewController addObserver:self];
    delegate = [notificationViewController delegate];

    if (delegate != self)
    {
      [notificationViewController setDelegate:self];
    }

    notificationRequest = [notificationViewController notificationRequest];

    if (notificationRequest == requestCopy)
    {
      [notificationViewController invalidateContentProviders];
    }

    else
    {
      [notificationViewController setNotificationRequest:?];
    }

    [notificationViewController updateContent];
  }
}

- (BOOL)_shouldAllowInteractionWithNotificationViewController:(id)controller
{
  v32 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  delegate = [(NCNotificationListPresentableGroup *)self delegate];
  v6 = [delegate isViewVisibleForNotificationGroupList:self];

  leadingNotificationRequest = [(NCNotificationGroupList *)self leadingNotificationRequest];
  v8 = [(NCNotificationGroupList *)self _currentCellForNotificationRequest:leadingNotificationRequest];
  notificationViewController = [v8 notificationViewController];

  v10 = notificationViewController == controllerCopy;
  if (v6)
  {
    if (![(NCNotificationListPresentableGroup *)self isGrouped]&& [(NCNotificationGroupList *)self count]> 1)
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = *MEMORY[0x277D77DD0];
  if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
  {
    log = v11;
    logDescription = [(NCNotificationGroupList *)self logDescription];
    notificationRequest = [controllerCopy notificationRequest];
    notificationIdentifier = [notificationRequest notificationIdentifier];
    un_logDigest = [notificationIdentifier un_logDigest];
    *buf = 138544898;
    v19 = logDescription;
    v20 = 2114;
    v21 = un_logDigest;
    v22 = 1024;
    v23 = v6;
    v24 = 1024;
    isGrouped = [(NCNotificationListPresentableGroup *)self isGrouped];
    v26 = 2048;
    v27 = [(NCNotificationGroupList *)self count];
    v28 = 1024;
    v29 = notificationViewController == controllerCopy;
    v30 = 1024;
    v31 = v10;
    _os_log_impl(&dword_21E77E000, log, OS_LOG_TYPE_DEFAULT, "%{public}@ should allow interaction with request %{public}@: [visible=%{BOOL}d \t grouped=%{BOOL}d \t count=%ld \t leadingRequest=%{BOOL}d] = %{BOOL}d", buf, 0x38u);
  }

  return v10;
}

- (BOOL)_handleTapToExpandGroupForNotificationRequest:(id)request
{
  v28 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  options = [requestCopy options];
  contentPreviewSetting = [options contentPreviewSetting];

  sectionIdentifier = [requestCopy sectionIdentifier];
  v8 = [MEMORY[0x277CEBE80] applicationWithBundleIdentifier:sectionIdentifier];
  isLocked = [v8 isLocked];
  options2 = [requestCopy options];
  if ([options2 coalescesWhenLocked] || !((contentPreviewSetting != 2) | isLocked & 1))
  {

    goto LABEL_9;
  }

  isGrouped = [(NCNotificationListPresentableGroup *)self isGrouped];

  if (!isGrouped)
  {
LABEL_9:
    v20 = 0;
    goto LABEL_12;
  }

  options3 = [requestCopy options];
  contentPreviewSetting2 = [options3 contentPreviewSetting];

  if (contentPreviewSetting2)
  {
    v14 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
    {
      v15 = v14;
      logDescription = [(NCNotificationGroupList *)self logDescription];
      notificationIdentifier = [requestCopy notificationIdentifier];
      un_logDigest = [notificationIdentifier un_logDigest];
      *buf = 138543618;
      v25 = logDescription;
      v26 = 2114;
      v27 = un_logDigest;
      _os_log_impl(&dword_21E77E000, v15, OS_LOG_TYPE_DEFAULT, "Expanding notification group %{public}@ for tap on request %{public}@", buf, 0x16u);
    }

    objc_initWeak(buf, self);
    delegate = [(NCNotificationListPresentableGroup *)self delegate];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __73__NCNotificationGroupList__handleTapToExpandGroupForNotificationRequest___block_invoke;
    v22[3] = &unk_278371FF8;
    objc_copyWeak(&v23, buf);
    [delegate notificationListComponent:self requestsAuthenticationAndPerformBlock:v22];

    objc_destroyWeak(&v23);
    objc_destroyWeak(buf);
  }

  else
  {
    [(NCNotificationGroupList *)self toggleGroupedState];
  }

  v20 = 1;
LABEL_12:

  return v20;
}

void __73__NCNotificationGroupList__handleTapToExpandGroupForNotificationRequest___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained toggleGroupedState];
  }
}

- (void)_setGrouped:(BOOL)grouped
{
  groupedCopy = grouped;
  listView = [(NCNotificationListPresentableGroup *)self listView];
  isGrouped = [listView isGrouped];

  listView2 = [(NCNotificationListPresentableGroup *)self listView];
  [listView2 setGrouped:groupedCopy];

  [(NCNotificationGroupList *)self updateStackSummariesIfNeeded];
  if (!groupedCopy)
  {
    delegate = [(NCNotificationListPresentableGroup *)self delegate];
    leadingNotificationRequest = [(NCNotificationGroupList *)self leadingNotificationRequest];
    [delegate notificationListComponent:self requestsStackSummarySuggestionVisible:0 forRequest:leadingNotificationRequest];
  }

  if (UNCCatchMe() && [(NCNotificationSectionSettings *)self->_notificationSectionSettings isSummarizationEnabled])
  {
    leadingNotificationRequest2 = [(NCNotificationGroupList *)self leadingNotificationRequest];
    [(NCNotificationGroupList *)self _updateSummariesForLeadingNotificationRequest:leadingNotificationRequest2 forceReload:0];
  }

  if (isGrouped != groupedCopy)
  {
    delegate2 = [(NCNotificationListPresentableGroup *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate2 notificationListBaseComponent:self didSetGrouped:groupedCopy];
    }
  }
}

- (void)updateOrderedNotificationRequests:(void *)a3 .cold.1(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = [a2 logDescription];
  [a3 count];
  v7 = [a2 orderedRequests];
  [v7 count];
  OUTLINED_FUNCTION_0_8();
  _os_log_error_impl(v8, v9, v10, v11, v12, 0x20u);
}

- (void)_reloadNotificationViewForNotificationRequest:(void *)a1 forceReloadView:(void *)a2 animated:(void *)a3 .cold.1(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = [a2 logDescription];
  v7 = [a3 notificationIdentifier];
  v13 = [v7 un_logDigest];
  OUTLINED_FUNCTION_0_8();
  _os_log_error_impl(v8, v9, v10, v11, v12, 0x16u);
}

@end