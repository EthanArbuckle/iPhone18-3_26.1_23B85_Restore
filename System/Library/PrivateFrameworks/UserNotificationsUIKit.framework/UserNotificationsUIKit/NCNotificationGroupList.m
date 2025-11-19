@interface NCNotificationGroupList
+ (NSSet)presentableTypes;
- (BOOL)_allowPanningForRequest:(id)a3;
- (BOOL)_handleTapToExpandGroupForNotificationRequest:(id)a3;
- (BOOL)_isContentRevealedForNotificationRequest:(id)a3;
- (BOOL)_shouldAllowInteractionWithNotificationViewController:(id)a3;
- (BOOL)_shouldShowClearActionForRequest:(id)a3;
- (BOOL)_shouldShowOpenActionToPerformDefaultActionForRequest:(id)a3;
- (BOOL)_shouldShowOpenActionToPerformLongLookPresentationForRequest:(id)a3;
- (BOOL)_shouldShowOptionsActionForRequest:(id)a3;
- (BOOL)_shouldShowViewActionForRequest:(id)a3;
- (BOOL)containsCommunicationTypeNotificationRequests;
- (BOOL)containsNonPersistentNotificationRequests;
- (BOOL)containsNotificationRequest:(id)a3;
- (BOOL)containsPersistentNotificationRequests;
- (BOOL)containsTimeSensitiveNotificationRequests;
- (BOOL)handleTapOnNotificationViewController:(id)a3;
- (BOOL)hasNewTimeSensitiveNotificationRequestsWithMigratedTimeSensitiveNotificationRequests:(id)a3;
- (BOOL)isAttachmentImageFeaturedForNotificationViewController:(id)a3;
- (BOOL)isCurrentlyInDisplayListAsStackMode:(id)a3;
- (BOOL)isEligibleForStackElevationMigration;
- (BOOL)isEligibleToPerformGroupAnimationForNotificationList:(id)a3 toGrouped:(BOOL)a4;
- (BOOL)isGroupForNotificationRequest:(id)a3;
- (BOOL)isLeadingNotificationRequest:(id)a3;
- (BOOL)isRichNotificationContentViewForNotificationViewController:(id)a3;
- (BOOL)matchesGroup:(id)a3;
- (BOOL)notificationViewControllerShouldAllowClickPresentationInteraction:(id)a3;
- (BOOL)notificationViewControllerShouldAllowExpandedPlatterInteraction:(id)a3;
- (BOOL)notificationViewControllerShouldAllowLongPressGesture:(id)a3;
- (BOOL)removeNotificationRequest:(id)a3;
- (BOOL)shouldAlignContentToBottomForNotificationViewController:(id)a3;
- (BOOL)shouldContinuePresentingActionButtonsForNotificationListCell:(id)a3;
- (BOOL)shouldShowDefaultActionForNotificationListCell:(id)a3;
- (BOOL)shouldShowSupplementaryActionsForNotificationListCell:(id)a3;
- (BOOL)shouldVerticallyStackActionButtonsForNotificationListCell:(id)a3;
- (BOOL)summarizedNotificationsAllHaveMatchingIcons;
- (BOOL)summarizedNotificationsAllHaveMatchingPrimaryText;
- (BOOL)updateLeadingNotificationRequestContentProvider:(id)a3;
- (CGRect)notificationViewController:(id)a3 finalFrameForDismissingLongLookFromView:(id)a4;
- (CGRect)notificationViewController:(id)a3 initialFrameForPresentingLongLookFromView:(id)a4;
- (NCNotificationGroupList)initWithSectionIdentifier:(id)a3 threadIdentifier:(id)a4;
- (NCNotificationRequest)leadingNotificationRequest;
- (NSArray)allNotificationRequests;
- (NSArray)criticalAlerts;
- (NSArray)persistentNotificationRequests;
- (NSString)logDescription;
- (double)notificationListView:(id)a3 heightForItemAtIndex:(unint64_t)a4 withWidth:(double)a5 inDisplayListAsStackMode:(BOOL)a6 ignoreExpandedGroupStack:(BOOL)a7;
- (id)_cachedCellForNotificationRequest:(id)a3 createNewIfNecessary:(BOOL)a4 shouldConfigure:(BOOL)a5 forceShowContent:(BOOL)a6;
- (id)_clearActionForRequest:(id)a3 clearAll:(BOOL)a4;
- (id)_clockSnoozeAlarmNotificationStaticContentProviderForNotificationRequest:(id)a3 viewController:(id)a4;
- (id)_currentCellForNotificationRequest:(id)a3;
- (id)_openActionForRequest:(id)a3;
- (id)_optionsActionForRequest:(id)a3;
- (id)_presentLongLookActionForRequest:(id)a3 title:(id)a4 identifier:(id)a5;
- (id)_presentLongLookActionWithOpenTitleForRequest:(id)a3;
- (id)_presentLongLookActionWithViewTitleForRequest:(id)a3;
- (id)_requestForListCell:(id)a3;
- (id)allAvailableCells;
- (id)animator;
- (id)clearAllText;
- (id)defaultActionForNotificationListCell:(id)a3;
- (id)headerText;
- (id)hideHomeAffordanceAnimationSettingsForNotificationViewController:(id)a3;
- (id)notificationListView:(id)a3 viewForItemAtIndex:(unint64_t)a4;
- (id)notificationRequestPresenter:(id)a3 staticContentProviderForNotificationRequest:(id)a4;
- (id)notificationRequestPresenterNotificationUsageTrackingState:(id)a3;
- (id)notificationViewController:(id)a3 auxiliaryOptionsContentProviderForNotificationRequest:(id)a4 withLongLook:(BOOL)a5;
- (id)notificationViewController:(id)a3 keyboardAssertionForGestureWindow:(id)a4;
- (id)notificationViewControllerContainerViewProviderForExpandedContent:(id)a3;
- (id)notificationViewControllerRequestCustomPlatterBackgroundView:(id)a3;
- (id)purposeWithSensitiveTextHashed:(BOOL)a3;
- (id)settleHomeAffordanceAnimationBehaviorDescriptionForNotificationViewController:(id)a3;
- (id)supplementaryActionsForNotificationListCell:(id)a3;
- (id)unhideHomeAffordanceAnimationSettingsForNotificationViewController:(id)a3;
- (int64_t)_compareNotificationRequest:(id)a3 withNotificationRequest:(id)a4;
- (int64_t)compare:(id)a3;
- (int64_t)insertNotificationRequest:(id)a3;
- (int64_t)notificationViewControllerDateFormatStyle:(id)a3;
- (unint64_t)_existingIndexForCriticalNotificationRequest:(id)a3;
- (unint64_t)_existingIndexForNotificationRequest:(id)a3;
- (unint64_t)_insertionIndexForNotificationRequest:(id)a3;
- (unint64_t)_lockScreenPersistenceForNotificationRequest:(id)a3;
- (unint64_t)_lockScreenPriorityForNotificationRequest:(id)a3;
- (unint64_t)count;
- (unint64_t)importantAdornmentEligibleOptionsForNotificationViewController:(id)a3;
- (unint64_t)indexOfNotificationRequestPassingTest:(id)a3;
- (unint64_t)notificationCount;
- (unint64_t)notificationListViewNumberOfItems:(id)a3;
- (unint64_t)summarizedNotificationCountForLeadingRequest;
- (void)_executeClearActionForRequest:(id)a3;
- (void)_executeOptionsActionForRequest:(id)a3 action:(id)a4;
- (void)_executeViewActionForRequest:(id)a3;
- (void)_hintSideSwipeForDefaultActionForNotificationRequest:(id)a3;
- (void)_invalidateSnoozeAlarmNotificationStaticContentProviderTimerForNotificationRequest:(id)a3;
- (void)_loadLeadingNotificationRequestCellIfNecessary;
- (void)_performAction:(id)a3 forNotificationRequest:(id)a4 withCompletion:(id)a5;
- (void)_reloadAllNotificationRequests;
- (void)_reloadNotificationCellAtIndex:(unint64_t)a3;
- (void)_reloadNotificationViewForNotificationRequest:(id)a3 forceReloadView:(BOOL)a4 animated:(BOOL)a5;
- (void)_reloadRecycledGroupedNotificationCells;
- (void)_reloadRecycledNotificationCellForRequest:(id)a3;
- (void)_scrollToTopIfNecessaryAndPerformBlock:(id)a3;
- (void)_setGrouped:(BOOL)a3;
- (void)_updateSummariesForLeadingNotificationRequest:(id)a3 forceReload:(BOOL)a4;
- (void)_updateSummariesForNewLeadingNotificationRequest:(id)a3 oldLeadingNotificationRequest:(id)a4;
- (void)clearAll;
- (void)longLookDidDismissForNotificationViewController:(id)a3;
- (void)longLookWillDismissForNotificationViewController:(id)a3;
- (void)longLookWillPresentForNotificationViewController:(id)a3;
- (void)mergeNotificationRequests:(id)a3;
- (void)modifyNotificationRequest:(id)a3;
- (void)notificationListDidLayoutSubviews;
- (void)notificationListView:(id)a3 didRemoveView:(id)a4;
- (void)notificationListView:(id)a3 willRemoveView:(id)a4;
- (void)notificationManagementContentProvider:(id)a3 requestsPresentingNotificationManagementViewType:(unint64_t)a4 forNotificationRequest:(id)a5 withPresentingView:(id)a6;
- (void)notificationRequestPresenter:(id)a3 executeAction:(id)a4 withParameters:(id)a5 completion:(id)a6;
- (void)notificationRequestPresenter:(id)a3 shouldTransitionToStage:(id)a4 forTrigger:(int64_t)a5 completionBlock:(id)a6;
- (void)notificationViewController:(id)a3 didUpdatePreferredContentSize:(CGSize)a4;
- (void)notificationViewController:(id)a3 dismissPresentLongLookForRequst:(id)a4 animator:(id)a5;
- (void)notificationViewController:(id)a3 isPerformingHoverHighlighting:(BOOL)a4;
- (void)notificationViewController:(id)a3 requestPermissionToExecuteAction:(id)a4 withParameters:(id)a5 completion:(id)a6;
- (void)notificationViewController:(id)a3 willPresentLongLookForRequst:(id)a4 animator:(id)a5;
- (void)notificationViewControllerDidEndUserInteraction:(id)a3;
- (void)notificationViewControllerWillBeginUserInteraction:(id)a3;
- (void)notificationViewControllerWillDismissForCancelAction:(id)a3;
- (void)recycleView:(id)a3;
- (void)reloadLeadingNotificationRequestIfNecessaryWithAnimation:(BOOL)a3;
- (void)reloadLeadingNotificationRequestWithAnimation:(BOOL)a3;
- (void)reloadNotificationRequest:(id)a3;
- (void)setDeviceAuthenticated:(BOOL)a3;
- (void)setIndividualCellBackgroundAlpha:(double)a3;
- (void)toggleGroupedState;
- (void)updateComparisonDate;
- (void)updateNotificationSectionSettings:(id)a3 previousSectionSettings:(id)a4;
- (void)updateOrderedNotificationRequests:(id)a3;
- (void)updateStackSummariesIfNeeded;
@end

@implementation NCNotificationGroupList

- (unint64_t)notificationCount
{
  v2 = [(NCNotificationGroupList *)self orderedRequests];
  v3 = [v2 count];

  return v3;
}

- (NSArray)allNotificationRequests
{
  v2 = [(NCNotificationGroupList *)self orderedRequests];
  v3 = [v2 copy];

  return v3;
}

- (NSString)logDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(NCNotificationGroupList *)self sectionIdentifier];
  v5 = [(NCNotificationGroupList *)self threadIdentifier];
  v6 = [v5 un_logDigest];
  v7 = [v3 stringWithFormat:@"Group List [%@:%@]", v4, v6];

  return v7;
}

- (NCNotificationRequest)leadingNotificationRequest
{
  v2 = [(NCNotificationGroupList *)self orderedRequests];
  v3 = [v2 firstObject];

  return v3;
}

- (void)updateStackSummariesIfNeeded
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = [(NCNotificationGroupList *)self orderedRequests];
  v4 = [v3 copy];

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
          v14 = [v12 stackedNotificationsCount];
          v15 = v14 != 0;
          if (v14)
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
            v24 = [v13 notificationViewController];
            [v24 setHasUpdatedContent];
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

  v25 = [(NCNotificationGroupList *)self leadingNotificationRequest];
  v26 = [(NCNotificationGroupList *)self contentProviders];
  v27 = [v26 objectForKey:v25];
  v28 = [(NCNotificationGroupList *)self updateLeadingNotificationRequestContentProvider:v27];

  if (v28)
  {
    [(NCNotificationGroupList *)self reloadNotificationViewForNotificationRequest:v25 animated:1];
  }
}

- (unint64_t)count
{
  v2 = [(NCNotificationGroupList *)self orderedRequests];
  v3 = [v2 count];

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

- (void)_loadLeadingNotificationRequestCellIfNecessary
{
  v3 = [(NCNotificationGroupList *)self leadingNotificationRequest];
  v4 = [(NCNotificationGroupList *)self _currentCellForNotificationRequest:v3];

  if (!v4)
  {
    v6 = [(NCNotificationGroupList *)self leadingNotificationRequest];
    v5 = [(NCNotificationGroupList *)self _cachedCellForNotificationRequest:v6 createNewIfNecessary:1 shouldConfigure:1 forceShowContent:1];
  }
}

- (NCNotificationGroupList)initWithSectionIdentifier:(id)a3 threadIdentifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  v20.receiver = self;
  v20.super_class = NCNotificationGroupList;
  v9 = [(NCNotificationGroupList *)&v20 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_sectionIdentifier, a3);
    objc_storeStrong(&v10->_threadIdentifier, a4);
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
  v4 = [(NCNotificationGroupList *)self allNotificationRequests];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
        objc_enumerationMutation(v4);
      }

      v9 = *(*(&v13 + 1) + 8 * v8);
      v10 = [v9 options];
      v11 = [v10 lockScreenPersistence];

      if (!v11)
      {
        break;
      }

      [v3 addObject:v9];
      if (v6 == ++v8)
      {
        v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
  v4 = [(NCNotificationGroupList *)self notificationSectionSettings];
  v5 = [v4 criticalAlertsEnabled];

  if (v5)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = [(NCNotificationGroupList *)self allNotificationRequests];
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v13 + 1) + 8 * i);
          if ([v11 isCriticalAlert])
          {
            [v3 addObject:v11];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }
  }

  return v3;
}

- (int64_t)compare:(id)a3
{
  v4 = a3;
  v5 = [(NCNotificationGroupList *)self leadingNotificationRequest];
  v6 = [v4 leadingNotificationRequest];

  v7 = [(NCNotificationGroupList *)self _compareNotificationRequest:v5 withNotificationRequest:v6];
  return v7;
}

- (BOOL)matchesGroup:(id)a3
{
  v4 = a3;
  v5 = [(NCNotificationGroupList *)self notificationSectionSettings];
  v6 = [v5 groupingSetting];

  v7 = [(NCNotificationGroupList *)self sectionIdentifier];
  v8 = [v4 sectionIdentifier];
  v9 = [v7 isEqualToString:v8];
  v10 = v9;
  if (v6 == 2)
  {
    v11 = 0;
  }

  else
  {
    v11 = v9;
  }

  if (v10 && !v6)
  {
    v12 = [(NCNotificationGroupList *)self threadIdentifier];
    v13 = [v4 threadIdentifier];
    v11 = [v12 isEqualToString:v13];
  }

  return v11;
}

- (void)mergeNotificationRequests:(id)a3
{
  v4 = a3;
  v5 = [(NCNotificationGroupList *)self leadingNotificationRequest];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __53__NCNotificationGroupList_mergeNotificationRequests___block_invoke;
  v12[3] = &unk_27836F610;
  v12[4] = self;
  [v4 enumerateObjectsUsingBlock:v12];
  [(NCNotificationGroupList *)self updateStackSummariesIfNeeded];
  v6 = [(NCNotificationGroupList *)self leadingNotificationRequest];
  v7 = [v6 timestamp];
  comparisonDate = self->_comparisonDate;
  self->_comparisonDate = v7;

  v9 = [(NCNotificationGroupList *)self leadingNotificationRequest];
  [(NCNotificationGroupList *)self _updateSummariesForNewLeadingNotificationRequest:v9 oldLeadingNotificationRequest:v5];

  v10 = [(NCNotificationListPresentableGroup *)self listView];
  [v10 invalidateData];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __53__NCNotificationGroupList_mergeNotificationRequests___block_invoke_2;
  v11[3] = &unk_27836F610;
  v11[4] = self;
  [v4 enumerateObjectsUsingBlock:v11];
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
  v2 = [(NCNotificationGroupList *)self orderedRequests];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = *v10;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = [*(*(&v9 + 1) + 8 * i) options];
        v7 = [v6 lockScreenPersistence];

        if (!v7)
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
  v2 = [(NCNotificationGroupList *)self orderedRequests];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = *v10;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = [*(*(&v9 + 1) + 8 * i) options];
        v7 = [v6 lockScreenPersistence];

        if (v7)
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
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

- (BOOL)isGroupForNotificationRequest:(id)a3
{
  v4 = a3;
  v5 = [(NCNotificationGroupList *)self notificationSectionSettings];
  v6 = [v5 groupingSetting];

  v7 = [v4 sectionIdentifier];
  v8 = [(NCNotificationGroupList *)self sectionIdentifier];
  if ([v7 isEqualToString:v8])
  {
    if (v6)
    {
      v9 = 1;
    }

    else
    {
      v10 = [v4 threadIdentifier];
      v11 = [(NCNotificationGroupList *)self threadIdentifier];
      v9 = ([v10 isEqualToString:v11] & 1) != 0 || -[NCNotificationGroupList _existingIndexForCriticalNotificationRequest:](self, "_existingIndexForCriticalNotificationRequest:", v4) != 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)isLeadingNotificationRequest:(id)a3
{
  v4 = a3;
  v5 = [(NCNotificationGroupList *)self leadingNotificationRequest];
  v6 = [v5 matchesRequest:v4];

  return v6;
}

- (void)reloadLeadingNotificationRequestWithAnimation:(BOOL)a3
{
  v3 = a3;
  v6 = [(NCNotificationGroupList *)self leadingNotificationRequest];
  v5 = [(NCNotificationListPresentableGroup *)self notificationListCache];
  [v5 clearCachedHeightsForNotificationRequest:v6];

  [(NCNotificationGroupList *)self reloadNotificationViewForNotificationRequest:v6 animated:v3];
}

- (void)reloadLeadingNotificationRequestIfNecessaryWithAnimation:(BOOL)a3
{
  v3 = a3;
  if ([(NCNotificationGroupList *)self shouldReloadLeadingNotificationRequest])
  {
    [(NCNotificationGroupList *)self reloadLeadingNotificationRequestWithAnimation:v3];

    [(NCNotificationGroupList *)self setShouldReloadLeadingNotificationRequest:0];
  }
}

- (unint64_t)indexOfNotificationRequestPassingTest:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(NCNotificationGroupList *)self orderedRequests];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __65__NCNotificationGroupList_indexOfNotificationRequestPassingTest___block_invoke;
    v8[3] = &unk_278371E90;
    v9 = v4;
    v6 = [v5 indexOfObjectPassingTest:v8];
  }

  else
  {
    v6 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v6;
}

- (void)updateOrderedNotificationRequests:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MEMORY[0x277CBEB98];
  v6 = [(NCNotificationGroupList *)self orderedRequests];
  v7 = [v5 setWithArray:v6];
  v8 = [MEMORY[0x277CBEB98] setWithArray:v4];
  v9 = [v7 isEqualToSet:v8];

  if (v9)
  {
    v10 = [(NCNotificationGroupList *)self orderedRequests];
    if ([v10 isEqualToArray:v4])
    {
    }

    else
    {
      v12 = [(NCNotificationListPresentableGroup *)self isGrouped];

      if (v12)
      {
        v13 = *MEMORY[0x277D77DD0];
        if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
        {
          v14 = v13;
          v15 = [(NCNotificationGroupList *)self logDescription];
          v18 = 138543362;
          v19 = v15;
          _os_log_impl(&dword_21E77E000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ updating notification request ordering", &v18, 0xCu);
        }

        v16 = [MEMORY[0x277CBEB18] arrayWithArray:v4];
        [(NCNotificationGroupList *)self setOrderedRequests:v16];

        v17 = [(NCNotificationListPresentableGroup *)self listView];
        [v17 invalidateData];
      }
    }
  }

  else
  {
    v11 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_ERROR))
    {
      [(NCNotificationGroupList *)v11 updateOrderedNotificationRequests:v4];
    }
  }
}

- (void)updateComparisonDate
{
  v3 = [(NCNotificationGroupList *)self leadingNotificationRequest];

  if (v3)
  {
    v6 = [(NCNotificationGroupList *)self leadingNotificationRequest];
    v4 = [v6 timestamp];
    comparisonDate = self->_comparisonDate;
    self->_comparisonDate = v4;
  }
}

- (void)setIndividualCellBackgroundAlpha:(double)a3
{
  if (self->_individualCellBackgroundAlpha != a3)
  {
    self->_individualCellBackgroundAlpha = a3;
    v5 = [(NCNotificationGroupList *)self orderedRequests];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __60__NCNotificationGroupList_setIndividualCellBackgroundAlpha___block_invoke;
    v6[3] = &unk_278371EB8;
    v6[4] = self;
    *&v6[5] = a3;
    [v5 enumerateObjectsUsingBlock:v6];
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
  v2 = [(NCNotificationGroupList *)self orderedRequests];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v7 + 1) + 8 * i) interruptionLevel] == 2)
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
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
  v2 = [(NCNotificationGroupList *)self orderedRequests];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = *v10;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = [*(*(&v9 + 1) + 8 * i) content];
        v7 = [v6 isCommunicationType];

        if (v7)
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
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

- (BOOL)hasNewTimeSensitiveNotificationRequestsWithMigratedTimeSensitiveNotificationRequests:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(NCNotificationGroupList *)self orderedRequests];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([v9 interruptionLevel] == 2 && !objc_msgSend(v4, "containsObject:", v9))
        {
          LOBYTE(v6) = 1;
          goto LABEL_12;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
  v3 = [(NCNotificationGroupList *)self notificationSectionSettings];
  v4 = [v3 isSummarizationEnabled];

  if ((v4 & 1) == 0)
  {
    v6 = *MEMORY[0x277D77DD0];
    v5 = os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT);
    if (!v5)
    {
      return v5;
    }

    v7 = v6;
    v8 = [(NCNotificationGroupList *)self logDescription];
    v12 = 138543362;
    v13 = v8;
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
    v8 = [(NCNotificationGroupList *)self logDescription];
    v12 = 138543362;
    v13 = v8;
    v9 = "%{public}@ doesn't contain communicationType notification";
    goto LABEL_8;
  }

  LOBYTE(v5) = 1;
  return v5;
}

- (id)headerText
{
  v3 = [(NCNotificationGroupList *)self leadingNotificationRequest];
  v4 = [v3 content];
  v5 = [v4 customHeader];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v8 = [(NCNotificationGroupList *)self leadingNotificationRequest];
    v9 = [v8 content];
    v7 = [v9 defaultHeader];
  }

  if (v7)
  {
    v10 = v7;
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
  v4 = [(NCNotificationGroupList *)self orderedRequests];
  v5 = [v4 copy];

  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __35__NCNotificationGroupList_clearAll__block_invoke;
  v11 = &unk_2783705B0;
  v12 = self;
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

- (int64_t)insertNotificationRequest:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(NCNotificationGroupList *)self _existingIndexForNotificationRequest:v4]== 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = [(NCNotificationGroupList *)self leadingNotificationRequest];
    v6 = [(NCNotificationGroupList *)self _insertionIndexForNotificationRequest:v4];
    v7 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
    {
      v8 = v7;
      v9 = [(NCNotificationGroupList *)self logDescription];
      v10 = [v4 notificationIdentifier];
      v11 = [v10 un_logDigest];
      v19 = 138543874;
      v20 = v9;
      v21 = 2114;
      v22 = v11;
      v23 = 2048;
      v24 = v6;
      _os_log_impl(&dword_21E77E000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ inserting notification request %{public}@ at index %ld", &v19, 0x20u);
    }

    v12 = [(NCNotificationGroupList *)self orderedRequests];
    [v12 insertObject:v4 atIndex:v6];

    v13 = [(NCNotificationListPresentableGroup *)self listView];
    [v13 insertViewAtIndex:v6 animated:1];

    v14 = [(NCNotificationGroupList *)self leadingNotificationRequest];
    v15 = [v14 timestamp];
    comparisonDate = self->_comparisonDate;
    self->_comparisonDate = v15;

    v17 = [(NCNotificationGroupList *)self leadingNotificationRequest];
    [(NCNotificationGroupList *)self _updateSummariesForNewLeadingNotificationRequest:v17 oldLeadingNotificationRequest:v5];

    [(NCNotificationGroupList *)self updateStackSummariesIfNeeded];
    [(NCNotificationGroupList *)self _reloadRecycledNotificationCellForRequest:v4];
  }

  else
  {
    [(NCNotificationGroupList *)self modifyNotificationRequest:v4];
  }

  return 2;
}

- (BOOL)updateLeadingNotificationRequestContentProvider:(id)a3
{
  v4 = a3;
  v5 = [(NCNotificationGroupList *)self count];
  if (v5)
  {
    if ([(NCNotificationListPresentableGroup *)self isGrouped])
    {
      [v4 setStackedNotificationsCount:v5];
      v5 = [v4 notificationRequest];
      v6 = [v5 content];
      v7 = [v6 threadSummary];
      if (v7 && [(NCNotificationSectionSettings *)self->_notificationSectionSettings isSummarizationEnabled])
      {
        v8 = [v5 options];
        if ([v8 canShowSummary])
        {
          v9 = [v5 options];
          v10 = [v9 contentPreviewSetting];

          [v4 setIsThreadSummary:v10 != 2];
          if (v10 != 2)
          {
            [v4 setSummarizedNotificationsAllHaveMatchingPrimaryText:{-[NCNotificationGroupList summarizedNotificationsAllHaveMatchingPrimaryText](self, "summarizedNotificationsAllHaveMatchingPrimaryText")}];
            [v4 setSummarizedNotificationsAllHaveMatchingIcons:{-[NCNotificationGroupList summarizedNotificationsAllHaveMatchingIcons](self, "summarizedNotificationsAllHaveMatchingIcons")}];
            v11 = [(NCNotificationListPresentableGroup *)self delegate];
            [v11 notificationListComponent:self requestsStackSummarySuggestionVisible:1 forRequest:v5];
          }

          goto LABEL_11;
        }
      }

      [v4 setIsThreadSummary:0];
LABEL_11:

      LOBYTE(v5) = 1;
      goto LABEL_12;
    }

    LOBYTE(v5) = 0;
  }

LABEL_12:

  return v5;
}

- (BOOL)summarizedNotificationsAllHaveMatchingPrimaryText
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = [(NCNotificationGroupList *)self orderedRequests];
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v2);
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

      v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
  v2 = [(NCNotificationGroupList *)self orderedRequests];
  v3 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(v2);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [v9 iconRecipe];
        v11 = [v9 subordinateIconRecipe];
        if (!v6)
        {
          v6 = v10;
          v12 = v11;

          v5 = v12;
        }

        if (!BSEqualObjects() || !BSEqualObjects())
        {

          v13 = 0;
          goto LABEL_15;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
  v3 = [(NCNotificationGroupList *)self leadingNotificationRequest];
  v4 = [(NCNotificationGroupList *)self count];
  if (v4 < 2)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
    v6 = [v3 content];
    v7 = [v6 threadSummary];
    if (v7 && [(NCNotificationSectionSettings *)self->_notificationSectionSettings isSummarizationEnabled]&& [(NCNotificationListPresentableGroup *)self isGrouped])
    {
      v8 = [v3 options];
      if ([v8 contentPreviewSetting] == 2)
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

- (BOOL)removeNotificationRequest:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(NCNotificationGroupList *)self _existingIndexForNotificationRequest:v4];
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
      v8 = [(NCNotificationGroupList *)self logDescription];
      v9 = [v4 notificationIdentifier];
      v10 = [v9 un_logDigest];
      v22 = 138543874;
      v23 = v8;
      v24 = 2114;
      v25 = v10;
      v26 = 2048;
      v27 = v5;
      _os_log_impl(&dword_21E77E000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ removing notification request %{public}@ at index %ld", &v22, 0x20u);
    }

    v11 = [(NCNotificationGroupList *)self leadingNotificationRequest];
    v12 = [(NCNotificationGroupList *)self orderedRequests];
    v13 = [v12 objectAtIndex:v5];

    v14 = [(NCNotificationGroupList *)self contentProviders];
    [v14 removeObjectForKey:v13];

    v15 = [(NCNotificationGroupList *)self orderedRequests];
    [v15 removeObjectAtIndex:v5];

    v16 = [(NCNotificationGroupList *)self _currentCellForNotificationRequest:v4];
    if (v16)
    {
      v17 = [(NCNotificationListPresentableGroup *)self actionsRevealedForNotificationListCell:v16];
    }

    else
    {
      v17 = 0;
    }

    v18 = [(NCNotificationListPresentableGroup *)self listView];
    [v18 removeViewAtIndex:v5 animated:1 isHorizontallyDisplaced:v17];

    v19 = [(NCNotificationListPresentableGroup *)self notificationListCache];
    [v19 clearCacheForNotificationRequest:v4];

    v20 = [(NCNotificationGroupList *)self leadingNotificationRequest];
    [(NCNotificationGroupList *)self _updateSummariesForNewLeadingNotificationRequest:v20 oldLeadingNotificationRequest:v11];

    [(NCNotificationGroupList *)self updateStackSummariesIfNeeded];
  }

  if ([(NCNotificationGroupList *)self count]== 1)
  {
    [(NCNotificationGroupList *)self _setGrouped:1];
  }

  if ([(NCNotificationGroupList *)self isClockNotificationGroup])
  {
    [(NCNotificationGroupList *)self _invalidateSnoozeAlarmNotificationStaticContentProviderTimerForNotificationRequest:v4];
  }

  return v5 != 0x7FFFFFFFFFFFFFFFLL;
}

- (void)modifyNotificationRequest:(id)a3
{
  v39 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(NCNotificationGroupList *)self _existingIndexForNotificationRequest:v4];
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = v5;
    v7 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
    {
      v8 = v7;
      v9 = [(NCNotificationGroupList *)self logDescription];
      v10 = [v4 notificationIdentifier];
      v11 = [v10 un_logDigest];
      v33 = 138543874;
      v34 = v9;
      v35 = 2114;
      v36 = v11;
      v37 = 2048;
      v38 = v6;
      _os_log_impl(&dword_21E77E000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ modifying notification request %{public}@ at index %ld", &v33, 0x20u);
    }

    v12 = [(NCNotificationGroupList *)self leadingNotificationRequest];
    v13 = [(NCNotificationGroupList *)self orderedRequests];
    v14 = [v13 objectAtIndex:v6];

    v15 = [(NCNotificationGroupList *)self contentProviders];
    [v15 removeObjectForKey:v14];

    v16 = [(NCNotificationListPresentableGroup *)self notificationListCache];
    [v16 updateNotificationRequest:v4];

    v17 = [(NCNotificationGroupList *)self _insertionIndexForNotificationRequest:v4];
    v18 = [(NCNotificationGroupList *)self orderedRequests];
    v19 = v18;
    if (v17 == v6)
    {
      [v18 replaceObjectAtIndex:v6 withObject:v4];

      v20 = [v4 interruptionLevel];
      v21 = [(NCNotificationListPresentableGroup *)self listView];
      v22 = v21;
      if (v20 < 3)
      {
        [v21 reloadViewAtIndex:v6];
        goto LABEL_10;
      }

      [v21 removeViewAtIndex:v6 animated:0];

      v23 = [(NCNotificationListPresentableGroup *)self listView];
      v22 = v23;
      v24 = v6;
      v25 = 0;
    }

    else
    {
      [v18 removeObjectAtIndex:v6];

      v26 = [(NCNotificationListPresentableGroup *)self listView];
      [v26 removeViewAtIndex:v6 animated:0];

      v27 = (__PAIR128__(v17, v6) - v17) >> 64;
      v28 = [(NCNotificationGroupList *)self orderedRequests];
      [v28 insertObject:v4 atIndex:v27];

      v23 = [(NCNotificationListPresentableGroup *)self listView];
      v22 = v23;
      v24 = v27;
      v25 = 1;
    }

    [v23 insertViewAtIndex:v24 animated:v25];
LABEL_10:

    [(NCNotificationGroupList *)self reloadNotificationViewForNotificationRequest:v4 animated:1];
    v29 = [(NCNotificationGroupList *)self leadingNotificationRequest];
    v30 = [v29 timestamp];
    comparisonDate = self->_comparisonDate;
    self->_comparisonDate = v30;

    v32 = [(NCNotificationGroupList *)self leadingNotificationRequest];
    [(NCNotificationGroupList *)self _updateSummariesForNewLeadingNotificationRequest:v32 oldLeadingNotificationRequest:v12];

    [(NCNotificationGroupList *)self updateStackSummariesIfNeeded];
  }
}

- (void)reloadNotificationRequest:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *MEMORY[0x277D77DD0];
  if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [(NCNotificationGroupList *)self logDescription];
    v8 = [v4 notificationIdentifier];
    v9 = [v8 un_logDigest];
    v10 = 138543618;
    v11 = v7;
    v12 = 2114;
    v13 = v9;
    _os_log_impl(&dword_21E77E000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ reloading notification request %{public}@", &v10, 0x16u);
  }

  [(NCNotificationGroupList *)self reloadNotificationViewForNotificationRequest:v4 animated:1];
}

- (void)updateNotificationSectionSettings:(id)a3 previousSectionSettings:(id)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  objc_storeStrong(&self->_notificationSectionSettings, a3);
  if (v8)
  {
    v9 = [v7 contentPreviewSetting];
    if (v9 != [v8 contentPreviewSetting] || (v10 = objc_msgSend(v7, "isUserConfigurable"), v10 != objc_msgSend(v8, "isUserConfigurable")))
    {
      v11 = [(NCNotificationListPresentableGroup *)self isGrouped];
      v12 = *MEMORY[0x277D77DD0];
      if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
      {
        v13 = v12;
        v14 = [(NCNotificationGroupList *)self logDescription];
        v15 = [(NCNotificationGroupList *)self sectionIdentifier];
        *buf = 138543618;
        v33 = v14;
        v34 = 2114;
        v35 = v15;
        _os_log_impl(&dword_21E77E000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ changed content preview settings for section %{public}@", buf, 0x16u);
      }

      v16 = [(NCNotificationGroupList *)self orderedRequests];
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __85__NCNotificationGroupList_updateNotificationSectionSettings_previousSectionSettings___block_invoke;
      v30[3] = &unk_278371EE0;
      v31 = v11;
      v30[4] = self;
      [v16 enumerateObjectsUsingBlock:v30];
LABEL_7:

      goto LABEL_8;
    }

    v17 = [v7 isSummarizationEnabled];
    if (v17 != [v8 isSummarizationEnabled] || (v18 = objc_msgSend(v7, "isUserConfigurable"), v18 != objc_msgSend(v8, "isUserConfigurable")))
    {
      v19 = *MEMORY[0x277D77DD0];
      if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
      {
        v20 = v19;
        v21 = [(NCNotificationGroupList *)self logDescription];
        v22 = [(NCNotificationGroupList *)self sectionIdentifier];
        *buf = 138543618;
        v33 = v21;
        v34 = 2114;
        v35 = v22;
        _os_log_impl(&dword_21E77E000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@ changed summarization setting for section %{public}@", buf, 0x16u);
      }

      v23 = [(NCNotificationGroupList *)self orderedRequests];
      v24 = MEMORY[0x277D85DD0];
      v25 = 3221225472;
      v26 = __85__NCNotificationGroupList_updateNotificationSectionSettings_previousSectionSettings___block_invoke_41;
      v27 = &unk_2783705B0;
      v28 = self;
      v29 = v7;
      [v23 enumerateObjectsUsingBlock:&v24];

      [(NCNotificationGroupList *)self _reloadAllNotificationRequests:v24];
      [(NCNotificationGroupList *)self updateStackSummariesIfNeeded];
      v16 = v29;
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

- (void)setDeviceAuthenticated:(BOOL)a3
{
  v26 = *MEMORY[0x277D85DE8];
  if (self->_deviceAuthenticated != a3)
  {
    v3 = a3;
    self->_deviceAuthenticated = a3;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v5 = [(NCNotificationGroupList *)self contentProviders];
    v6 = [v5 allValues];

    v7 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
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
            objc_enumerationMutation(v6);
          }

          [*(*(&v21 + 1) + 8 * i) setDeviceAuthenticated:v3];
        }

        v8 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v8);
    }

    v11 = [(NCNotificationListPresentableGroup *)self listView];
    [v11 setDeviceAuthenticated:v3];

    if ([(NCNotificationGroupList *)self count])
    {
      v12 = [(NCNotificationGroupList *)self leadingNotificationRequest];
      v13 = [v12 options];
      v14 = [v13 contentPreviewSetting];

      if (v14 == 1)
      {
        v15 = [(NCNotificationListPresentableGroup *)self listView];
        [v15 setPerformingContentRevealAnimation:1];

        v16 = [(NCNotificationListPresentableGroup *)self delegate];
        v17 = [v16 notificationGroupListShouldReloadNotificationCells:self];

        if (v17)
        {
          if ([(NCNotificationListPresentableGroup *)self isGrouped])
          {
            [(NCNotificationGroupList *)self reloadNotificationViewForNotificationRequest:v12 animated:1];
          }

          else
          {
            v18 = [(NCNotificationGroupList *)self orderedRequests];
            v20[0] = MEMORY[0x277D85DD0];
            v20[1] = 3221225472;
            v20[2] = __50__NCNotificationGroupList_setDeviceAuthenticated___block_invoke;
            v20[3] = &unk_27836F610;
            v20[4] = self;
            [v18 enumerateObjectsUsingBlock:v20];
          }

          v19 = [(NCNotificationListPresentableGroup *)self listView];
          [v19 setNeedsLayout];
        }

        else
        {
          [(NCNotificationGroupList *)self setShouldReloadLeadingNotificationRequest:1];
        }
      }
    }
  }
}

- (BOOL)containsNotificationRequest:(id)a3
{
  v4 = a3;
  v5 = [(NCNotificationGroupList *)self orderedRequests];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __55__NCNotificationGroupList_containsNotificationRequest___block_invoke;
  v9[3] = &unk_278370180;
  v10 = v4;
  v6 = v4;
  v7 = [v5 indexOfObjectPassingTest:v9];

  return v7 != 0x7FFFFFFFFFFFFFFFLL;
}

- (id)allAvailableCells
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = [(NCNotificationGroupList *)self orderedRequests];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __44__NCNotificationGroupList_allAvailableCells__block_invoke;
  v9[3] = &unk_2783705B0;
  v9[4] = self;
  v5 = v3;
  v10 = v5;
  [v4 enumerateObjectsUsingBlock:v9];

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

- (double)notificationListView:(id)a3 heightForItemAtIndex:(unint64_t)a4 withWidth:(double)a5 inDisplayListAsStackMode:(BOOL)a6 ignoreExpandedGroupStack:(BOOL)a7
{
  v7 = a7;
  v8 = a6;
  v12 = [(NCNotificationGroupList *)self orderedRequests];
  v13 = [v12 count];

  if (v13 <= a4)
  {
    return 0.0;
  }

  if (!a4)
  {
    [(NCNotificationGroupList *)self _loadLeadingNotificationRequestCellIfNecessary];
  }

  v14 = [(NCNotificationGroupList *)self orderedRequests];
  v15 = [v14 objectAtIndex:a4];

  v16 = ![(NCNotificationListPresentableGroup *)self isGrouped];
  if (a4)
  {
    v17 = v16;
  }

  else
  {
    v17 = 1;
  }

  v18 = objc_alloc_init(NCNotificationListCellDynamicHeightTraits);
  v19 = [(NCNotificationListPresentableGroup *)self delegate];
  v20 = v8 & [v19 canAlignContentToBottomForLeadingNotificationRequestForNotificationGroupList:self];
  if ([(NCNotificationListPresentableGroup *)self isGrouped])
  {
    v21 = [(NCNotificationGroupList *)self leadingNotificationRequest];
    if ([v21 matchesRequest:v15])
    {
      v22 = [v19 isNotificationGroupListInCollapsedStack:self];
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
  [(NCNotificationListCellDynamicHeightTraits *)v18 setIsGroupCollapsed:[(NCNotificationListPresentableGroup *)self isGrouped]| v7];
  if (v15)
  {
    v25 = [(NCNotificationGroupList *)self contentProviders];
    v26 = [v25 objectForKey:v15];
  }

  else
  {
    v26 = 0;
  }

  v27 = [(NCNotificationListPresentableGroup *)self notificationListCache];
  [v27 heightForNotificationRequest:v15 contentProvider:v26 withFrameWidth:-[NCNotificationGroupList _isContentRevealedForNotificationRequest:](self isContentRevealed:"_isContentRevealedForNotificationRequest:" shouldCalculateHeight:v15) traits:{v17, v18, a5}];
  v29 = v28;

  return v29;
}

- (id)notificationListView:(id)a3 viewForItemAtIndex:(unint64_t)a4
{
  v6 = [(NCNotificationGroupList *)self orderedRequests];
  v7 = [v6 count];

  if (v7 <= a4)
  {
    v12 = 0;
  }

  else
  {
    v8 = [(NCNotificationGroupList *)self orderedRequests];
    v9 = [v8 objectAtIndex:a4];

    v10 = ![(NCNotificationListPresentableGroup *)self isGrouped];
    if (a4)
    {
      v11 = v10;
    }

    else
    {
      v11 = 1;
    }

    v12 = [(NCNotificationGroupList *)self _cachedCellForNotificationRequest:v9 createNewIfNecessary:1 shouldConfigure:v11 forceShowContent:1];
    v13 = [(NCNotificationListPresentableGroup *)self listView];
    if ([v13 isHiddenBelowStack])
    {
      v14 = [(NCNotificationListPresentableGroup *)self listView];
      v15 = [v14 showContentForGroupedViews] ^ 1;
    }

    else
    {
      LOBYTE(v15) = 0;
    }

    v16 = [v12 notificationViewController];

    [v16 setNotificationContentViewHidden:v15 & 1 | ((v11 & 1) == 0)];
  }

  return v12;
}

- (unint64_t)notificationListViewNumberOfItems:(id)a3
{
  v3 = [(NCNotificationGroupList *)self orderedRequests];
  v4 = [v3 count];

  return v4;
}

- (void)recycleView:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = NCNotificationGroupList;
  [(NCNotificationListPresentableGroup *)&v11 recycleView:v4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 notificationViewController];
    if ([v6 hasCommittedToPresentingCustomContentProvidingViewController])
    {
      [(NCNotificationGroupList *)self setCellRecycledWhilePresentingLongLook:v5];
    }

    else
    {
      [v5 hideActionButtonsAnimated:0 fastAnimation:0 completion:0];
      v7 = [(NCNotificationListPresentableGroup *)self notificationListCache];
      v8 = [v7 recycleNotificationListCell:v5];

      [v6 removeObserver:self];
      if ((v8 & 1) == 0)
      {
        v9 = [(NCNotificationListPresentableGroup *)self delegate];
        [v9 notificationListBaseComponent:self didRemoveViewController:v6];
      }

      v10 = [v6 notificationRequest];
      if ([(NCNotificationGroupList *)self isClockNotificationGroup])
      {
        [(NCNotificationGroupList *)self _invalidateSnoozeAlarmNotificationStaticContentProviderTimerForNotificationRequest:v10];
      }
    }
  }
}

- (void)notificationListDidLayoutSubviews
{
  v3 = [(NCNotificationListPresentableGroup *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v3 groupListDidLayout:self];
  }
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

- (BOOL)isCurrentlyInDisplayListAsStackMode:(id)a3
{
  v4 = [(NCNotificationListPresentableGroup *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [v4 isCurrentlyInDisplayListAsStackMode:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
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

- (id)notificationRequestPresenter:(id)a3 staticContentProviderForNotificationRequest:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_class();
  v9 = v6;
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
    v12 = [(NCNotificationGroupList *)self orderedRequests];
    if ([v12 containsObject:v7])
    {
      v13 = [(NCNotificationGroupList *)self isClockNotificationGroup];

      if (v13)
      {
        v14 = [(NCNotificationGroupList *)self _clockSnoozeAlarmNotificationStaticContentProviderForNotificationRequest:v7 viewController:v11];
        goto LABEL_21;
      }
    }

    else
    {
    }

    v15 = [(NCNotificationListPresentableGroup *)self delegate];
    v16 = [(NCNotificationGroupList *)self contentProviders];
    v14 = [v16 objectForKey:v7];

    if (!v14)
    {
      if ((objc_opt_respondsToSelector() & 1) == 0 || ([v15 notificationGroupList:self requestsContentProviderForNotificationRequest:v7], (v14 = objc_claimAutoreleasedReturnValue()) == 0))
      {
        v14 = [[NCNotificationRequestCoalescingContentProvider alloc] initWithNotificationRequest:v7];
      }

      v17 = [(NCNotificationGroupList *)self contentProviders];
      [v17 bs_setSafeObject:v14 forKey:v7];
    }

    [(NCNotificationRequestCoalescingContentProvider *)v14 setDeviceAuthenticated:[(NCNotificationGroupList *)self deviceAuthenticated]];
    v18 = [(NCNotificationGroupList *)self notificationSectionSettings];
    -[NCNotificationRequestCoalescingContentProvider setSummarizationEnabled:](v14, "setSummarizationEnabled:", [v18 isSummarizationEnabled]);

    v19 = [(NCNotificationGroupList *)self leadingNotificationRequest];
    if ([v7 matchesRequest:v19])
    {
      [(NCNotificationGroupList *)self updateLeadingNotificationRequestContentProvider:v14];
      v20 = [v15 collapsedSectionSummaryStringForLeadingNotificationRequestForNotificationGroupList:self];
      [(NCNotificationRequestCoalescingContentProvider *)v14 setLeadingRequestInGroup:[(NCNotificationGroupList *)self count]> 1];
      [(NCNotificationRequestCoalescingContentProvider *)v14 setCollapsedSectionSummaryString:v20];
      v21 = [(NCNotificationGroupList *)self summaryBuilder];
      [(NCNotificationRequestCoalescingContentProvider *)v14 setOverridenSummaryBuilder:v21];
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

- (void)notificationRequestPresenter:(id)a3 shouldTransitionToStage:(id)a4 forTrigger:(int64_t)a5 completionBlock:(id)a6
{
  v9 = a3;
  v10 = a6;
  v11 = objc_opt_class();
  v16 = v9;
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

  v14 = [(NCNotificationListPresentableGroup *)self delegate];
  v15 = [v13 notificationRequest];

  [v14 notificationListComponent:self shouldFinishLongLookTransitionForNotificationRequest:v15 trigger:a5 withCompletionBlock:v10];
}

- (void)notificationRequestPresenter:(id)a3 executeAction:(id)a4 withParameters:(id)a5 completion:(id)a6
{
  v39 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v28 = a5;
  v12 = a6;
  v13 = objc_opt_class();
  v14 = v10;
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

  v17 = [v16 notificationRequest];
  v18 = [v17 notificationIdentifier];
  v19 = [v18 un_logDigest];

  v20 = [(NCNotificationGroupList *)self logDescription];
  v21 = [(NCNotificationListPresentableGroup *)self delegate];
  v22 = [v17 defaultAction];
  if (v22 != v11)
  {
    goto LABEL_9;
  }

  v23 = [v16 presentedExpandedPlatterViewController];
  if (v23)
  {

LABEL_9:
LABEL_10:
    v24 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v34 = v20;
      v35 = 2114;
      v36 = v21;
      v37 = 2114;
      v38 = v19;
      _os_log_impl(&dword_21E77E000, v24, OS_LOG_TYPE_DEFAULT, "%{public}@ Asking delegate %{public}@ to execute action for %{public}@", buf, 0x20u);
    }

    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __96__NCNotificationGroupList_notificationRequestPresenter_executeAction_withParameters_completion___block_invoke;
    v29[3] = &unk_278371F08;
    v32 = v12;
    v30 = v20;
    v31 = v19;
    v25 = v28;
    [v21 notificationListComponent:self requestsExecuteAction:v11 forNotificationRequest:v17 requestAuthentication:1 withParameters:v28 completion:v29];

    goto LABEL_13;
  }

  v27 = [v21 shouldHintDefaultActionForNotificationListBaseComponent:self];

  if (!v27)
  {
    goto LABEL_10;
  }

  v26 = *MEMORY[0x277D77DD0];
  if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v34 = v20;
    v35 = 2114;
    v36 = v19;
    _os_log_impl(&dword_21E77E000, v26, OS_LOG_TYPE_DEFAULT, "%{public}@ Hinting side swipe instead of executing action for %{public}@", buf, 0x16u);
  }

  [(NCNotificationGroupList *)self _hintSideSwipeForDefaultActionForNotificationRequest:v17];
  v25 = v28;
  if (v12)
  {
    (*(v12 + 2))(v12, 0);
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

- (id)notificationRequestPresenterNotificationUsageTrackingState:(id)a3
{
  v4 = [(NCNotificationListPresentableGroup *)self delegate];
  v5 = [v4 notificationUsageTrackingStateForNotificationListComponent:self];

  return v5;
}

- (void)notificationViewController:(id)a3 requestPermissionToExecuteAction:(id)a4 withParameters:(id)a5 completion:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v15 = [(NCNotificationListPresentableGroup *)self delegate];
  v14 = [v13 notificationRequest];

  [v15 notificationListComponent:self requestPermissionToExecuteAction:v12 forNotificationRequest:v14 withParameters:v11 completion:v10];
}

- (void)notificationViewControllerWillDismissForCancelAction:(id)a3
{
  v4 = a3;
  v5 = [(NCNotificationListPresentableGroup *)self delegate];
  [v5 notificationListComponent:self willDismissLongLookForCancelActionForViewController:v4];
}

- (int64_t)notificationViewControllerDateFormatStyle:(id)a3
{
  v3 = MEMORY[0x277CBEA80];
  v4 = a3;
  v5 = [v3 currentCalendar];
  v6 = [v4 staticContentProvider];

  v7 = [v6 date];
  v8 = [v5 isDateInToday:v7];

  return v8;
}

- (BOOL)notificationViewControllerShouldAllowExpandedPlatterInteraction:(id)a3
{
  v4 = a3;
  if ([(NCNotificationGroupList *)self _shouldAllowInteractionWithNotificationViewController:v4])
  {
    v5 = [(NCNotificationListPresentableGroup *)self delegate];
    v6 = [v4 notificationRequest];
    v7 = [v5 notificationListComponent:self shouldAllowInteractionsForNotificationRequest:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)notificationViewControllerShouldAllowClickPresentationInteraction:(id)a3
{
  v4 = a3;
  if ([(NCNotificationGroupList *)self _shouldAllowInteractionWithNotificationViewController:v4])
  {
    v5 = [(NCNotificationListPresentableGroup *)self delegate];
    v6 = [v4 notificationRequest];
    v7 = [v5 notificationListComponent:self shouldAllowInteractionsForNotificationRequest:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)notificationViewControllerContainerViewProviderForExpandedContent:(id)a3
{
  v4 = a3;
  v5 = [(NCNotificationListPresentableGroup *)self delegate];
  v6 = [v5 notificationListComponent:self containerViewProviderForExpandedContentForViewController:v4];

  return v6;
}

- (CGRect)notificationViewController:(id)a3 initialFrameForPresentingLongLookFromView:(id)a4
{
  v6 = a4;
  v7 = [a3 notificationRequest];
  v8 = [(NCNotificationGroupList *)self _currentCellForNotificationRequest:v7];

  v9 = [v6 superview];
  [v6 frame];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  if (v8)
  {
    v18 = [v8 contentView];
    [v9 convertRect:v18 toView:{v11, v13, v15, v17}];
    v20 = v19;
    v22 = v21;
    v24 = v23;

    v25 = [v8 contentView];
    v9 = v25;
    v26 = 0.0;
    v27 = v20;
    v28 = v22;
    v29 = v24;
  }

  else
  {
    v25 = v9;
    v26 = v11;
    v27 = v13;
    v28 = v15;
    v29 = v17;
  }

  [v25 convertRect:0 toView:{v26, v27, v28, v29}];
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

- (CGRect)notificationViewController:(id)a3 finalFrameForDismissingLongLookFromView:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(NCNotificationListPresentableGroup *)self listView];
  v9 = [v8 window];
  self->_longLookDismissalFinalFrameCalculatedWithoutWindow = v9 == 0;

  v10 = [v7 notificationRequest];

  v11 = [(NCNotificationGroupList *)self _currentCellForNotificationRequest:v10];

  if (v11)
  {
    v12 = [v11 superview];
    [v11 frame];
    [v12 convertRect:0 toView:?];
    v14 = v13;
    v16 = v15;

    [v11 frame];
    [v6 sizeThatFits:{CGRectGetWidth(v38), 1.79769313e308}];
    v18 = v17;
    v20 = v19;
  }

  else
  {
    v21 = [v6 superview];
    [v6 frame];
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v29 = v28;

    [v21 convertRect:0 toView:{v23, v25, v27, v29}];
    v14 = v30;
    v16 = v31;
    v18 = v32;
    v20 = v33;
    v6 = v21;
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

- (id)notificationViewController:(id)a3 keyboardAssertionForGestureWindow:(id)a4
{
  v5 = a4;
  v6 = [(NCNotificationListPresentableGroup *)self delegate];
  v7 = [v6 notificationListComponent:self keyboardAssertionForGestureWindow:v5];

  return v7;
}

- (id)hideHomeAffordanceAnimationSettingsForNotificationViewController:(id)a3
{
  v4 = [(NCNotificationListPresentableGroup *)self delegate];
  v5 = [v4 hideHomeAffordanceAnimationSettingsForNotificationListComponent:self];

  return v5;
}

- (id)unhideHomeAffordanceAnimationSettingsForNotificationViewController:(id)a3
{
  v4 = [(NCNotificationListPresentableGroup *)self delegate];
  v5 = [v4 unhideHomeAffordanceAnimationSettingsForNotificationListComponent:self];

  return v5;
}

- (id)settleHomeAffordanceAnimationBehaviorDescriptionForNotificationViewController:(id)a3
{
  v4 = [(NCNotificationListPresentableGroup *)self delegate];
  v5 = [v4 settleHomeAffordanceAnimationBehaviorDescriptionForNotificationListComponent:self];

  return v5;
}

- (BOOL)notificationViewControllerShouldAllowLongPressGesture:(id)a3
{
  v3 = self;
  v4 = [(NCNotificationListPresentableGroup *)self delegate];
  LOBYTE(v3) = [v4 notificationListComponentShouldAllowLongPressGesture:v3];

  return v3;
}

- (void)notificationViewController:(id)a3 isPerformingHoverHighlighting:(BOOL)a4
{
  v6 = a3;
  v7 = [(NCNotificationGroupList *)self leadingNotificationRequest];
  v8 = [(NCNotificationGroupList *)self _currentCellForNotificationRequest:v7];
  v9 = [v8 notificationViewController];

  LODWORD(v7) = [(NCNotificationListPresentableGroup *)self isGrouped];
  if (v7 && v9 == v6)
  {
    v10 = [(NCNotificationGroupList *)self orderedRequests];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __84__NCNotificationGroupList_notificationViewController_isPerformingHoverHighlighting___block_invoke;
    v11[3] = &unk_278371EE0;
    v11[4] = self;
    v12 = a4;
    [v10 enumerateObjectsUsingBlock:v11];
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

- (void)notificationViewController:(id)a3 didUpdatePreferredContentSize:(CGSize)a4
{
  height = a4.height;
  v13 = a3;
  v6 = [v13 notificationRequest];
  v7 = [v13 notificationRequest];
  v8 = [(NCNotificationGroupList *)self containsNotificationRequest:v7];

  if (v8)
  {
    v9 = [v13 currentTraits];
    v10 = [(NCNotificationListPresentableGroup *)self notificationListCache];
    v11 = [v10 invalidateCachedHeightIfNecessaryForNotificationRequest:v6 updatedHeight:-[NCNotificationGroupList _isContentRevealedForNotificationRequest:](self isContentRevealed:"_isContentRevealedForNotificationRequest:" traits:{v6), v9, height}];

    if (v11)
    {
      v12 = [(NCNotificationListPresentableGroup *)self listView];
      [v12 setNeedsLayout];
    }
  }
}

- (BOOL)isRichNotificationContentViewForNotificationViewController:(id)a3
{
  v3 = self;
  v4 = [(NCNotificationListPresentableGroup *)self delegate];
  LOBYTE(v3) = [v4 isRichNotificationContentViewForNotificationGroupList:v3];

  return v3;
}

- (BOOL)isAttachmentImageFeaturedForNotificationViewController:(id)a3
{
  v3 = self;
  v4 = [(NCNotificationListPresentableGroup *)self delegate];
  LOBYTE(v3) = [v4 isAttachmentImageFeaturedForNotificationGroupList:v3];

  return v3;
}

- (BOOL)handleTapOnNotificationViewController:(id)a3
{
  v4 = a3;
  v5 = [(NCNotificationListPresentableGroup *)self delegate];
  [v5 notificationListBaseComponentDidSignificantUserInteraction:self];
  if (objc_opt_respondsToSelector() & 1) != 0 && ([v5 handleTapOnNotificationListBaseComponent:self])
  {
    v6 = 1;
  }

  else
  {
    v7 = [v4 notificationRequest];
    v6 = [(NCNotificationGroupList *)self _handleTapToExpandGroupForNotificationRequest:v7];
  }

  return v6;
}

- (BOOL)shouldAlignContentToBottomForNotificationViewController:(id)a3
{
  v4 = [a3 notificationRequest];
  v5 = [(NCNotificationGroupList *)self leadingNotificationRequest];
  if (v5 == v4)
  {
    v7 = [(NCNotificationListPresentableGroup *)self delegate];
    v6 = [v7 shouldAlignContentToBottomForLeadingNotificationRequestForNotificationGroupList:self];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)importantAdornmentEligibleOptionsForNotificationViewController:(id)a3
{
  v4 = [(NCNotificationListPresentableGroup *)self delegate];
  v5 = [v4 importantAdornmentEligibleOptionsForNotificationGroupList:self];

  return v5;
}

- (void)notificationViewController:(id)a3 willPresentLongLookForRequst:(id)a4 animator:(id)a5
{
  v9 = a4;
  v7 = a5;
  v8 = [(NCNotificationListPresentableGroup *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v8 notificationListComponent:self willPresentLongLookForRequst:v9 animator:v7];
  }
}

- (void)notificationViewController:(id)a3 dismissPresentLongLookForRequst:(id)a4 animator:(id)a5
{
  v9 = a4;
  v7 = a5;
  v8 = [(NCNotificationListPresentableGroup *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v8 notificationListComponent:self dismissPresentLongLookForRequst:v9 animator:v7];
  }
}

- (id)notificationViewControllerRequestCustomPlatterBackgroundView:(id)a3
{
  v4 = [(NCNotificationListPresentableGroup *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [v4 requestCustomPlatterBackgroundViewForNotificationGroupList:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)notificationViewController:(id)a3 auxiliaryOptionsContentProviderForNotificationRequest:(id)a4 withLongLook:(BOOL)a5
{
  v5 = a5;
  v7 = a4;
  v8 = [(NCNotificationListPresentableGroup *)self delegate];
  v9 = [v8 notificationGroupList:self requestsAuxiliaryOptionsContentProviderForNotificationRequest:v7 isLongLook:v5];

  return v9;
}

- (void)notificationManagementContentProvider:(id)a3 requestsPresentingNotificationManagementViewType:(unint64_t)a4 forNotificationRequest:(id)a5 withPresentingView:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = [(NCNotificationListPresentableGroup *)self delegate];
  [v11 notificationListComponent:self requestsPresentingManagementViewForNotificationRequest:v10 managementViewType:a4 withPresentingView:v9 completion:0];
}

- (void)notificationViewControllerWillBeginUserInteraction:(id)a3
{
  v4 = a3;
  v5 = [(NCNotificationListPresentableGroup *)self delegate];
  [v5 notificationListBaseComponent:self didBeginUserInteractionWithViewController:v4];
}

- (void)notificationViewControllerDidEndUserInteraction:(id)a3
{
  v4 = a3;
  v5 = [(NCNotificationListPresentableGroup *)self delegate];
  [v5 notificationListBaseComponent:self didEndUserInteractionWithViewController:v4];
}

- (void)longLookWillPresentForNotificationViewController:(id)a3
{
  v4 = a3;
  v5 = [(NCNotificationListPresentableGroup *)self delegate];
  [v5 notificationListComponent:self isPresentingLongLookForViewController:v4];

  v6 = [v4 view];

  [v6 setHidden:1];
}

- (void)longLookWillDismissForNotificationViewController:(id)a3
{
  v4 = a3;
  v5 = [v4 shouldRestorePresentingShortLookOnDismiss];
  v6 = [v4 view];
  [v6 setHidden:v5 ^ 1u];

  v7 = [v4 notificationRequest];

  v9 = [(NCNotificationGroupList *)self _currentCellForNotificationRequest:v7];

  if ((v5 & 1) == 0 && [(NCNotificationListPresentableGroup *)self isGrouped])
  {
    [(NCNotificationGroupList *)self _reloadNotificationCellAtIndex:1];
    v8 = [(NCNotificationListPresentableGroup *)self listView];
    [v8 revealNotificationContentBelowGroupedViewIfNecessary:v9];
  }
}

- (void)longLookDidDismissForNotificationViewController:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *MEMORY[0x277D77DD0];
  if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [(NCNotificationGroupList *)self logDescription];
    v8 = [v4 notificationRequest];
    v9 = [v8 notificationIdentifier];
    v10 = [v9 un_logDigest];
    v15 = 138543618;
    v16 = v7;
    v17 = 2114;
    v18 = v10;
    _os_log_impl(&dword_21E77E000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ did dismiss long look for notification request %{public}@", &v15, 0x16u);
  }

  v11 = [(NCNotificationGroupList *)self cellRecycledWhilePresentingLongLook];
  v12 = [v11 notificationViewController];

  if (v12 == v4)
  {
    [(NCNotificationGroupList *)self recycleView:v11];
    [(NCNotificationGroupList *)self setCellRecycledWhilePresentingLongLook:0];
  }

  else if (self->_longLookDismissalFinalFrameCalculatedWithoutWindow)
  {
    v13 = [v4 notificationRequest];
    [(NCNotificationGroupList *)self reloadNotificationRequest:v13];

    self->_longLookDismissalFinalFrameCalculatedWithoutWindow = 0;
  }

  v14 = [(NCNotificationListPresentableGroup *)self delegate];
  [v14 notificationListComponent:self isPresentingLongLookForViewController:0];
}

- (BOOL)shouldContinuePresentingActionButtonsForNotificationListCell:(id)a3
{
  v4 = a3;
  v5 = [(NCNotificationGroupList *)self leadingNotificationRequest];
  v6 = [(NCNotificationGroupList *)self _currentCellForNotificationRequest:v5];

  if (v6 == v4)
  {
    LOBYTE(v7) = 1;
  }

  else
  {
    v7 = ![(NCNotificationListPresentableGroup *)self isGrouped];
  }

  return v7;
}

- (BOOL)shouldShowSupplementaryActionsForNotificationListCell:(id)a3
{
  v4 = [(NCNotificationGroupList *)self _requestForListCell:a3];
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

- (id)supplementaryActionsForNotificationListCell:(id)a3
{
  v4 = [(NCNotificationGroupList *)self _requestForListCell:a3];
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
    v8 = [(NCNotificationListPresentableGroup *)self listView];
    if ([v8 isGrouped])
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

- (id)defaultActionForNotificationListCell:(id)a3
{
  v4 = [(NCNotificationGroupList *)self _requestForListCell:a3];
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

- (BOOL)shouldShowDefaultActionForNotificationListCell:(id)a3
{
  v4 = [(NCNotificationGroupList *)self _requestForListCell:a3];
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

- (BOOL)shouldVerticallyStackActionButtonsForNotificationListCell:(id)a3
{
  v3 = self;
  v4 = [(NCNotificationListPresentableGroup *)self delegate];
  LOBYTE(v3) = [v4 isAttachmentImageFeaturedForNotificationGroupList:v3];

  return v3;
}

- (void)_reloadAllNotificationRequests
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [(NCNotificationGroupList *)self orderedRequests];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
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
          objc_enumerationMutation(v3);
        }

        [(NCNotificationGroupList *)self reloadNotificationViewForNotificationRequest:*(*(&v8 + 1) + 8 * v7++) animated:1];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)_reloadNotificationViewForNotificationRequest:(id)a3 forceReloadView:(BOOL)a4 animated:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = a3;
  if (v8)
  {
    v9 = [(NCNotificationGroupList *)self _currentCellForNotificationRequest:v8];
    v10 = v9;
    if (v9)
    {
      [v9 hideActionButtonsAnimated:1 fastAnimation:0 completion:0];
      v11 = [v10 notificationViewController];
      v12 = [v11 delegate];

      if (v12 != self)
      {
        [v11 setDelegate:self];
      }

      v13 = [v11 notificationRequest];

      if (v13 == v8)
      {
        [v11 invalidateContentProviders];
      }

      else
      {
        [v11 setNotificationRequest:v8];
      }

      v14 = [v11 view];
      v15 = [v14 isHidden];

      if (v15)
      {
        v16 = *MEMORY[0x277D77DD0];
        if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_ERROR))
        {
          [NCNotificationGroupList _reloadNotificationViewForNotificationRequest:v16 forceReloadView:self animated:v8];
        }

        v17 = [v11 view];
        [v17 setHidden:0];
      }

      v18 = [(NCNotificationGroupList *)self animator];
      if (v5)
      {
        v24[0] = MEMORY[0x277D85DD0];
        v24[1] = 3221225472;
        v24[2] = __98__NCNotificationGroupList__reloadNotificationViewForNotificationRequest_forceReloadView_animated___block_invoke;
        v24[3] = &unk_27836F6A8;
        v19 = &v25;
        v25 = v11;
        [v18 animateUsingSpringWithTension:1 friction:1 interactive:v24 type:0 animations:240.0 completion:20.0];
      }

      else
      {
        v22[0] = MEMORY[0x277D85DD0];
        v22[1] = 3221225472;
        v22[2] = __98__NCNotificationGroupList__reloadNotificationViewForNotificationRequest_forceReloadView_animated___block_invoke_2;
        v22[3] = &unk_27836F6A8;
        v19 = &v23;
        v23 = v11;
        [v18 performAnimationType:1 withoutAnimation:v22];
      }

      if (v6)
      {
        v20 = [(NCNotificationListPresentableGroup *)self listView];
        v21 = [(NCNotificationGroupList *)self orderedRequests];
        [v20 reloadViewAtIndex:{objc_msgSend(v21, "indexOfObject:", v8)}];
      }
    }
  }
}

- (void)_scrollToTopIfNecessaryAndPerformBlock:(id)a3
{
  v8 = a3;
  v4 = [(NCNotificationListPresentableGroup *)self delegate];
  v5 = [v4 shouldScrollToTopForNotificationListBaseComponent:self];
  v6 = [(NCNotificationListPresentableGroup *)self listView];
  v7 = [v6 isVisibleForViewAtIndex:0];

  if (!v7 || v5)
  {
    [v4 notificationListPresentableGroup:self requestsScrollToTopOfCollectionWithCompletion:v8];
  }

  else if (v8)
  {
    v8[2]();
  }
}

- (id)purposeWithSensitiveTextHashed:(BOOL)a3
{
  threadIdentifier = self->_threadIdentifier;
  if (threadIdentifier)
  {
    if (a3)
    {
      v5 = [(NSString *)threadIdentifier un_logDigest];
    }

    else
    {
      v5 = threadIdentifier;
    }

    v6 = v5;
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
  v3 = a1;
  v4 = [a2 logDescription];
  v5 = [a2 leadingNotificationRequest];
  v6 = [v5 notificationIdentifier];
  v12 = [v6 un_logDigest];
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

- (void)_hintSideSwipeForDefaultActionForNotificationRequest:(id)a3
{
  v3 = [(NCNotificationGroupList *)self _currentCellForNotificationRequest:a3];
  if (v3)
  {
    v4 = v3;
    [v3 hintSideSwipeForDefaultAction];
    v3 = v4;
  }
}

- (void)_updateSummariesForNewLeadingNotificationRequest:(id)a3 oldLeadingNotificationRequest:(id)a4
{
  v12 = a4;
  v6 = a3;
  v7 = [(NCNotificationGroupList *)self summaryBuilder];
  v8 = [(NCNotificationGroupList *)self orderedRequests];
  [v7 updateWithNotificationRequests:v8];

  v9 = v12;
  if (v12 != v6 && v6 && v12)
  {
    v10 = [(NCNotificationGroupList *)self contentProviders];
    v11 = [v10 objectForKey:v12];
    [v11 setOverridenSummaryBuilder:0];

    v9 = v12;
  }
}

- (void)_updateSummariesForLeadingNotificationRequest:(id)a3 forceReload:(BOOL)a4
{
  v4 = a4;
  v10 = a3;
  v6 = [(NCNotificationListPresentableGroup *)self notificationListCache];
  [v6 clearCachedHeightsForNotificationRequest:v10];

  v7 = [(NCNotificationGroupList *)self contentProviders];
  v8 = [v7 objectForKey:v10];
  v9 = [(NCNotificationGroupList *)self summaryBuilder];
  [v8 setOverridenSummaryBuilder:v9];

  [(NCNotificationGroupList *)self _reloadNotificationViewForNotificationRequest:v10 forceReloadView:v4 animated:1];
}

- (id)_cachedCellForNotificationRequest:(id)a3 createNewIfNecessary:(BOOL)a4 shouldConfigure:(BOOL)a5 forceShowContent:(BOOL)a6
{
  v7 = a5;
  v8 = a4;
  v10 = a3;
  v11 = [(NCNotificationListPresentableGroup *)self notificationListCache];
  v12 = [v11 listCellForNotificationRequest:v10 viewControllerDelegate:self createNewIfNecessary:v8 shouldConfigure:v7];

  if (v12)
  {
    v13 = [(NCNotificationGroupList *)self cellRecycledWhilePresentingLongLook];
    if (v12 == v13)
    {
      [(NCNotificationGroupList *)self setCellRecycledWhilePresentingLongLook:0];
LABEL_10:

      goto LABEL_11;
    }

    v14 = [v12 notificationViewController];
    [v14 addObserver:self];
    v15 = [(NCNotificationListPresentableGroup *)self materialGroupNameBase];
    [v14 setMaterialGroupNameBase:v15];
    v16 = [v14 parentViewController];

    if (v16)
    {
      if (a6)
      {
LABEL_5:
        v17 = 0;
LABEL_9:
        v19 = [v14 view];
        [v19 setHidden:v17];

        [v14 setHasUpdatedContent];
        [v12 setActionProvider:self];
        [v12 setActionHandler:self];
        [v12 setMaterialGroupNameBase:v15];
        [v12 setMaterialRecipe:{objc_msgSend(v14, "materialRecipe")}];
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
      v18 = [(NCNotificationListPresentableGroup *)self delegate];
      [v18 notificationListBaseComponent:self didAddViewController:v14];

      if (a6)
      {
        goto LABEL_5;
      }
    }

    v17 = [v14 isNotPresentingOrHasCommittedToDismissingCustomContentProvidingViewController] ^ 1;
    goto LABEL_9;
  }

LABEL_11:

  return v12;
}

- (id)_currentCellForNotificationRequest:(id)a3
{
  v4 = a3;
  v5 = [(NCNotificationListPresentableGroup *)self notificationListCache];
  v6 = [v5 listCellForNotificationRequest:v4 viewControllerDelegate:self createNewIfNecessary:0 shouldConfigure:0];

  return v6;
}

- (id)_requestForListCell:(id)a3
{
  v3 = [a3 notificationViewController];
  v4 = [v3 notificationRequest];

  return v4;
}

- (BOOL)_allowPanningForRequest:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(NCNotificationListPresentableGroup *)self delegate];
  v6 = [v5 shouldNotificationGroupListPanHorizontally:self];

  if (v6)
  {
    if ([(NCNotificationListPresentableGroup *)self isGrouped])
    {
      v7 = [(NCNotificationGroupList *)self leadingNotificationRequest];
      v8 = [v4 matchesRequest:v7];
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
    v11 = [v4 notificationIdentifier];
    v12 = [v11 un_logDigest];
    v13 = [(NCNotificationListPresentableGroup *)self isGrouped];
    v14 = [(NCNotificationGroupList *)self leadingNotificationRequest];
    v15 = [v14 notificationIdentifier];
    v16 = [v15 un_logDigest];
    v18 = 138544386;
    v19 = v12;
    v20 = 1024;
    v21 = v6;
    v22 = 1024;
    v23 = v13;
    v24 = 2114;
    v25 = v16;
    v26 = 1024;
    v27 = v8;
    _os_log_impl(&dword_21E77E000, v10, OS_LOG_TYPE_DEFAULT, "Group list determining pan eligibility = %{public}@ delegateCheck: %{BOOL}d isGrouped: %{BOOL}d leadingNotificationRequest: %{public}@ [ shouldPanHorizontally = %{BOOL}d ]", &v18, 0x28u);
  }

  return v8;
}

- (BOOL)_shouldShowOptionsActionForRequest:(id)a3
{
  v4 = a3;
  v5 = [(NCNotificationListPresentableGroup *)self delegate];
  v6 = [v4 topLevelSectionIdentifier];

  v7 = [v5 notificationListComponent:self sectionSettingsForSectionIdentifier:v6];

  LOBYTE(v4) = [v7 isUserConfigurable];
  return v4;
}

- (BOOL)_shouldShowViewActionForRequest:(id)a3
{
  v4 = a3;
  v5 = [(NCNotificationListPresentableGroup *)self delegate];
  LOBYTE(self) = [v5 notificationListComponent:self shouldAllowInteractionsForNotificationRequest:v4];

  return self ^ 1;
}

- (BOOL)_shouldShowClearActionForRequest:(id)a3
{
  v3 = [a3 options];
  v4 = [v3 hideClearActionInList];

  return v4 ^ 1;
}

- (BOOL)_shouldShowOpenActionToPerformDefaultActionForRequest:(id)a3
{
  v4 = [a3 defaultAction];
  if (v4)
  {
    v5 = [(NCNotificationListPresentableGroup *)self delegate];
    v6 = [v5 shouldHintDefaultActionForNotificationListBaseComponent:self];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)_shouldShowOpenActionToPerformLongLookPresentationForRequest:(id)a3
{
  v4 = a3;
  v5 = [v4 defaultAction];
  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v7 = [v4 options];
    if ([v7 revealsAdditionalContentIfNoDefaultAction])
    {
      v8 = [(NCNotificationListPresentableGroup *)self delegate];
      v6 = [v8 shouldHintDefaultActionForNotificationListBaseComponent:self];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (id)_openActionForRequest:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = MEMORY[0x277D750C8];
  v6 = NCUserNotificationsUIKitFrameworkBundle();
  v7 = [v6 localizedStringForKey:@"NOTIFICATION_LIST_OPEN" value:&stru_282FE84F8 table:0];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __49__NCNotificationGroupList__openActionForRequest___block_invoke;
  v12[3] = &unk_278371940;
  objc_copyWeak(&v14, &location);
  v8 = v4;
  v13 = v8;
  v9 = [v5 actionWithTitle:v7 image:0 identifier:@"NCNotificationGroupListActionIdentifierOpen" handler:v12];

  v10 = [(NCNotificationListPresentableGroup *)self delegate];
  LOBYTE(self) = [v10 isAttachmentImageFeaturedForNotificationGroupList:self];

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

- (id)_optionsActionForRequest:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = MEMORY[0x277D750C8];
  v6 = NCUserNotificationsUIKitFrameworkBundle();
  v7 = [v6 localizedStringForKey:@"NOTIFICATION_LIST_OPTIONS" value:&stru_282FE84F8 table:0];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __52__NCNotificationGroupList__optionsActionForRequest___block_invoke;
  v11[3] = &unk_278371940;
  objc_copyWeak(&v13, &location);
  v8 = v4;
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

- (void)_executeOptionsActionForRequest:(id)a3 action:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [(NCNotificationListPresentableGroup *)self delegate];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __66__NCNotificationGroupList__executeOptionsActionForRequest_action___block_invoke;
  v10[3] = &unk_278371FA8;
  objc_copyWeak(&v12, &location);
  v9 = v6;
  v11 = v9;
  [v8 notificationListComponent:self requestsPresentingOptionsMenuForNotificationRequest:v9 presentingViewProvider:v10 optionsForSection:0 completion:0];

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

- (id)_presentLongLookActionWithOpenTitleForRequest:(id)a3
{
  v4 = a3;
  v5 = NCUserNotificationsUIKitFrameworkBundle();
  v6 = [v5 localizedStringForKey:@"NOTIFICATION_LIST_OPEN" value:&stru_282FE84F8 table:0];
  v7 = [(NCNotificationGroupList *)self _presentLongLookActionForRequest:v4 title:v6 identifier:@"NCNotificationGroupListActionIdentifierOpen"];

  return v7;
}

- (id)_presentLongLookActionWithViewTitleForRequest:(id)a3
{
  v4 = a3;
  v5 = NCUserNotificationsUIKitFrameworkBundle();
  v6 = [v5 localizedStringForKey:@"NOTIFICATION_LIST_VIEW" value:&stru_282FE84F8 table:0];
  v7 = [(NCNotificationGroupList *)self _presentLongLookActionForRequest:v4 title:v6 identifier:@"NCNotificationGroupListActionIdentifierView"];

  return v7;
}

- (id)_presentLongLookActionForRequest:(id)a3 title:(id)a4 identifier:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_initWeak(&location, self);
  v11 = MEMORY[0x277D750C8];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __77__NCNotificationGroupList__presentLongLookActionForRequest_title_identifier___block_invoke;
  v15[3] = &unk_278371940;
  objc_copyWeak(&v17, &location);
  v12 = v8;
  v16 = v12;
  v13 = [v11 actionWithTitle:v9 image:0 identifier:v10 handler:v15];

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

- (void)_executeViewActionForRequest:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(NCNotificationGroupList *)self _currentCellForNotificationRequest:v4];
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

- (id)_clearActionForRequest:(id)a3 clearAll:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = NCUserNotificationsUIKitFrameworkBundle();
  v8 = v7;
  if (v4)
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
  v12 = v6;
  v18 = v12;
  v13 = [v11 actionWithTitle:v10 image:0 identifier:@"NCNotificationGroupListActionIdentifierClear" handler:v17];
  v14 = [(NCNotificationListPresentableGroup *)self delegate];
  v15 = [v14 isAttachmentImageFeaturedForNotificationGroupList:self];

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

- (void)_executeClearActionForRequest:(id)a3
{
  v4 = a3;
  v5 = [(NCNotificationGroupList *)self _currentCellForNotificationRequest:v4];
  v6 = [v5 notificationViewController];

  v7 = +[NCNotificationEventTracker sharedInstance];
  v8 = [v6 notificationUsageTrackingState];
  [v7 shortLookClearedForNotificationRequest:v4 withState:v8];

  v9 = *MEMORY[0x277D77DD0];
  if (os_signpost_enabled(*MEMORY[0x277D77DD0]))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_21E77E000, v9, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "NC_NOTIFICATION_DISMISSAL_BEGIN", " enableTelemetry=YES ", buf, 2u);
  }

  kdebug_trace();
  v10 = [(NCNotificationListPresentableGroup *)self delegate];
  if ([(NCNotificationListPresentableGroup *)self isGrouped])
  {
    [(NCNotificationGroupList *)self setClearingAllNotificationRequestsForCellHorizontalSwipe:1];
    v11 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v12 = [(NCNotificationGroupList *)self orderedRequests];
    v13 = [v12 copy];

    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __57__NCNotificationGroupList__executeClearActionForRequest___block_invoke;
    v18 = &unk_2783705B0;
    v19 = self;
    v20 = v11;
    v14 = v11;
    [v13 enumerateObjectsUsingBlock:&v15];
    [v10 notificationListBaseComponentDidRemoveAll:{self, v15, v16, v17, v18, v19}];
    [v10 notificationListBaseComponent:self requestsClearingPresentables:v14];
  }

  else
  {
    if ([(NCNotificationGroupList *)self count]== 1)
    {
      [(NCNotificationGroupList *)self setClearingAllNotificationRequestsForCellHorizontalSwipe:1];
    }

    if (objc_opt_respondsToSelector())
    {
      [v10 notificationListComponent:self willRemoveNotificationRequest:v4];
    }

    [(NCNotificationGroupList *)self removeNotificationRequest:v4];
    [v10 notificationListComponent:self didRemoveNotificationRequest:v4];
    v13 = [v4 clearAction];
    [(NCNotificationGroupList *)self _performAction:v13 forNotificationRequest:v4 withCompletion:0];
  }

  [v10 notificationListComponentChangedContent:self];
}

void __57__NCNotificationGroupList__executeClearActionForRequest___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 removeNotificationRequest:v4];
  [*(a1 + 40) addObject:v4];
}

- (void)_performAction:(id)a3 forNotificationRequest:(id)a4 withCompletion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(NCNotificationListPresentableGroup *)self delegate];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __80__NCNotificationGroupList__performAction_forNotificationRequest_withCompletion___block_invoke;
  v13[3] = &unk_27836FF88;
  v14 = v8;
  v12 = v8;
  [v11 notificationListComponent:self requestsExecuteAction:v10 forNotificationRequest:v9 requestAuthentication:1 withParameters:MEMORY[0x277CBEC10] completion:v13];
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

- (id)_clockSnoozeAlarmNotificationStaticContentProviderForNotificationRequest:(id)a3 viewController:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NCNotificationGroupList *)self clockSnoozeAlarmContentProviders];
  v9 = [v8 objectForKey:v6];

  if (!v9 || ([v9 viewController], v10 = objc_claimAutoreleasedReturnValue(), v10, v10 != v7))
  {
    [v9 invalidateTimer];
    v11 = [[NCSnoozeAlarmNotificationStaticContentProvider alloc] initWithNotificationRequest:v6 viewController:v7];

    v12 = [(NCNotificationGroupList *)self clockSnoozeAlarmContentProviders];
    [v12 bs_setSafeObject:v11 forKey:v6];

    v9 = v11;
  }

  return v9;
}

- (void)_invalidateSnoozeAlarmNotificationStaticContentProviderTimerForNotificationRequest:(id)a3
{
  v7 = a3;
  v4 = [(NCNotificationGroupList *)self clockSnoozeAlarmContentProviders];
  v5 = [v4 objectForKey:v7];

  if (v5)
  {
    [v5 invalidateTimer];
    v6 = [(NCNotificationGroupList *)self clockSnoozeAlarmContentProviders];
    [v6 removeObjectForKey:v7];
  }
}

- (unint64_t)_lockScreenPersistenceForNotificationRequest:(id)a3
{
  v3 = [a3 options];
  v4 = [v3 lockScreenPersistence];

  return v4;
}

- (unint64_t)_lockScreenPriorityForNotificationRequest:(id)a3
{
  v3 = [a3 options];
  v4 = [v3 lockScreenPriority];

  return v4;
}

- (unint64_t)_existingIndexForNotificationRequest:(id)a3
{
  v4 = a3;
  v5 = [(NCNotificationGroupList *)self orderedRequests];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __64__NCNotificationGroupList__existingIndexForNotificationRequest___block_invoke;
  v9[3] = &unk_278370180;
  v6 = v4;
  v10 = v6;
  v7 = [v5 indexOfObjectPassingTest:v9];

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

- (unint64_t)_existingIndexForCriticalNotificationRequest:(id)a3
{
  v4 = a3;
  if ([v4 isCriticalAlert] && (-[NCNotificationGroupList sectionIdentifier](self, "sectionIdentifier"), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "sectionIdentifier"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v5, "isEqualToString:", v6), v6, v5, v7))
  {
    v8 = [(NCNotificationGroupList *)self orderedRequests];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __72__NCNotificationGroupList__existingIndexForCriticalNotificationRequest___block_invoke;
    v11[3] = &unk_278370180;
    v12 = v4;
    v9 = [v8 indexOfObjectPassingTest:v11];
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

- (unint64_t)_insertionIndexForNotificationRequest:(id)a3
{
  v4 = a3;
  v5 = [(NCNotificationGroupList *)self orderedRequests];
  v6 = [(NCNotificationGroupList *)self orderedRequests];
  v7 = [v6 count];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __65__NCNotificationGroupList__insertionIndexForNotificationRequest___block_invoke;
  v10[3] = &unk_278371FD0;
  v10[4] = self;
  v8 = [v5 indexOfObject:v4 inSortedRange:0 options:v7 usingComparator:{1280, v10}];

  return v8;
}

- (int64_t)_compareNotificationRequest:(id)a3 withNotificationRequest:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NCNotificationGroupList *)self _lockScreenPriorityForNotificationRequest:v6];
  v9 = [(NCNotificationGroupList *)self _lockScreenPriorityForNotificationRequest:v7];
  v10 = [(NCNotificationGroupList *)self _lockScreenPersistenceForNotificationRequest:v6];
  v11 = [(NCNotificationGroupList *)self _lockScreenPersistenceForNotificationRequest:v7];
  if (v8 == v9)
  {
    if (v10 == v11)
    {
      v12 = [v7 timestamp];
      v13 = [v6 timestamp];
      v14 = [v12 compare:v13];
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

- (BOOL)_isContentRevealedForNotificationRequest:(id)a3
{
  v4 = [a3 options];
  v5 = [v4 contentPreviewSetting];

  if (!v5)
  {
    return 1;
  }

  if (v5 != 1)
  {
    return 0;
  }

  return [(NCNotificationGroupList *)self deviceAuthenticated];
}

- (void)_reloadNotificationCellAtIndex:(unint64_t)a3
{
  if ([(NCNotificationGroupList *)self count]> a3)
  {
    v5 = [(NCNotificationGroupList *)self orderedRequests];
    v6 = [v5 objectAtIndex:a3];

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

- (void)_reloadRecycledNotificationCellForRequest:(id)a3
{
  v10 = a3;
  v4 = [(NCNotificationGroupList *)self _currentCellForNotificationRequest:?];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 notificationViewController];
    v7 = [(NCNotificationListPresentableGroup *)self listView];
    [v6 setNotificationContentViewHidden:{objc_msgSend(v7, "isHiddenBelowStack")}];

    [v6 setPlatterHighlighted:0];
    [v6 addObserver:self];
    v8 = [v6 delegate];

    if (v8 != self)
    {
      [v6 setDelegate:self];
    }

    v9 = [v6 notificationRequest];

    if (v9 == v10)
    {
      [v6 invalidateContentProviders];
    }

    else
    {
      [v6 setNotificationRequest:?];
    }

    [v6 updateContent];
  }
}

- (BOOL)_shouldAllowInteractionWithNotificationViewController:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(NCNotificationListPresentableGroup *)self delegate];
  v6 = [v5 isViewVisibleForNotificationGroupList:self];

  v7 = [(NCNotificationGroupList *)self leadingNotificationRequest];
  v8 = [(NCNotificationGroupList *)self _currentCellForNotificationRequest:v7];
  v9 = [v8 notificationViewController];

  v10 = v9 == v4;
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
    v12 = [(NCNotificationGroupList *)self logDescription];
    v13 = [v4 notificationRequest];
    v14 = [v13 notificationIdentifier];
    v15 = [v14 un_logDigest];
    *buf = 138544898;
    v19 = v12;
    v20 = 2114;
    v21 = v15;
    v22 = 1024;
    v23 = v6;
    v24 = 1024;
    v25 = [(NCNotificationListPresentableGroup *)self isGrouped];
    v26 = 2048;
    v27 = [(NCNotificationGroupList *)self count];
    v28 = 1024;
    v29 = v9 == v4;
    v30 = 1024;
    v31 = v10;
    _os_log_impl(&dword_21E77E000, log, OS_LOG_TYPE_DEFAULT, "%{public}@ should allow interaction with request %{public}@: [visible=%{BOOL}d \t grouped=%{BOOL}d \t count=%ld \t leadingRequest=%{BOOL}d] = %{BOOL}d", buf, 0x38u);
  }

  return v10;
}

- (BOOL)_handleTapToExpandGroupForNotificationRequest:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 options];
  v6 = [v5 contentPreviewSetting];

  v7 = [v4 sectionIdentifier];
  v8 = [MEMORY[0x277CEBE80] applicationWithBundleIdentifier:v7];
  v9 = [v8 isLocked];
  v10 = [v4 options];
  if ([v10 coalescesWhenLocked] || !((v6 != 2) | v9 & 1))
  {

    goto LABEL_9;
  }

  v11 = [(NCNotificationListPresentableGroup *)self isGrouped];

  if (!v11)
  {
LABEL_9:
    v20 = 0;
    goto LABEL_12;
  }

  v12 = [v4 options];
  v13 = [v12 contentPreviewSetting];

  if (v13)
  {
    v14 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
    {
      v15 = v14;
      v16 = [(NCNotificationGroupList *)self logDescription];
      v17 = [v4 notificationIdentifier];
      v18 = [v17 un_logDigest];
      *buf = 138543618;
      v25 = v16;
      v26 = 2114;
      v27 = v18;
      _os_log_impl(&dword_21E77E000, v15, OS_LOG_TYPE_DEFAULT, "Expanding notification group %{public}@ for tap on request %{public}@", buf, 0x16u);
    }

    objc_initWeak(buf, self);
    v19 = [(NCNotificationListPresentableGroup *)self delegate];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __73__NCNotificationGroupList__handleTapToExpandGroupForNotificationRequest___block_invoke;
    v22[3] = &unk_278371FF8;
    objc_copyWeak(&v23, buf);
    [v19 notificationListComponent:self requestsAuthenticationAndPerformBlock:v22];

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

- (void)_setGrouped:(BOOL)a3
{
  v3 = a3;
  v5 = [(NCNotificationListPresentableGroup *)self listView];
  v6 = [v5 isGrouped];

  v7 = [(NCNotificationListPresentableGroup *)self listView];
  [v7 setGrouped:v3];

  [(NCNotificationGroupList *)self updateStackSummariesIfNeeded];
  if (!v3)
  {
    v8 = [(NCNotificationListPresentableGroup *)self delegate];
    v9 = [(NCNotificationGroupList *)self leadingNotificationRequest];
    [v8 notificationListComponent:self requestsStackSummarySuggestionVisible:0 forRequest:v9];
  }

  if (UNCCatchMe() && [(NCNotificationSectionSettings *)self->_notificationSectionSettings isSummarizationEnabled])
  {
    v10 = [(NCNotificationGroupList *)self leadingNotificationRequest];
    [(NCNotificationGroupList *)self _updateSummariesForLeadingNotificationRequest:v10 forceReload:0];
  }

  if (v6 != v3)
  {
    v11 = [(NCNotificationListPresentableGroup *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [v11 notificationListBaseComponent:self didSetGrouped:v3];
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