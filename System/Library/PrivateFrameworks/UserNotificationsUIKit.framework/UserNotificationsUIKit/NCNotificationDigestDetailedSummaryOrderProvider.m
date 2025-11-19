@interface NCNotificationDigestDetailedSummaryOrderProvider
- (BOOL)_presentFeaturedNotificationsInline;
- (BOOL)_shouldAllowTapOnLeadingSummaryPlatterView;
- (id)_atxHighlightedGroups;
- (id)leadingSummaryPlatterViewConfigureIfNecessary;
- (unint64_t)_totalNotificationCountForSectionIdentifier:(id)a3;
- (void)_updateAppsSummaryContentProvidersWithRankedGroups:(id)a3;
- (void)_updateCommunicationsSummaryContentProvider;
- (void)_updateDigestSummaryPlatterView;
- (void)_updateFeaturedNotificationContentProvidersWithHighlightedGroups:(id)a3;
- (void)setDeviceAuthenticated:(BOOL)a3;
@end

@implementation NCNotificationDigestDetailedSummaryOrderProvider

- (void)setDeviceAuthenticated:(BOOL)a3
{
  v3 = a3;
  v17 = *MEMORY[0x277D85DE8];
  v15.receiver = self;
  v15.super_class = NCNotificationDigestDetailedSummaryOrderProvider;
  [(NCNotificationSummaryOrderProvider *)&v15 setDeviceAuthenticated:?];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = self->_featuredNotificationContentProviders;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v11 + 1) + 8 * v9++) setDeviceAuthenticated:{v3, v11}];
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v7);
  }

  [(NCNotificationSummaryContentProvider *)self->_communicationsSummaryContentProvider setDeviceAuthenticated:v3];
  [(NCNotificationSummaryContentProvider *)self->_appsSummaryContentProvider setDeviceAuthenticated:v3];
  [(NCDigestSummaryPlatterView *)self->_digestSummaryPlatterView updateContent];
  v10 = [(NCNotificationSummaryOrderProvider *)self delegate];
  [v10 notificationSummaryOrderProviderRequestsReloadingLeadingSummaryPlatterView:self];
}

- (id)leadingSummaryPlatterViewConfigureIfNecessary
{
  digestSummaryPlatterView = self->_digestSummaryPlatterView;
  if (!digestSummaryPlatterView)
  {
    v4 = [[NCDigestSummaryPlatterView alloc] initWithRecipe:1];
    v5 = self->_digestSummaryPlatterView;
    self->_digestSummaryPlatterView = v4;

    [(NCDigestSummaryPlatterView *)self->_digestSummaryPlatterView setFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    v6 = self->_digestSummaryPlatterView;
    v7 = [(NCNotificationSummaryOrderProvider *)self materialGroupNameBase];
    [(NCDigestSummaryPlatterView *)v6 setMaterialGroupNameBase:v7];

    v8 = self->_digestSummaryPlatterView;
    v9 = [(NCNotificationSummaryOrderProvider *)self summaryPlatterViewTapGestureRecognizer];
    [(NCDigestSummaryPlatterView *)v8 addGestureRecognizer:v9];

    [(NCDigestSummaryPlatterView *)self->_digestSummaryPlatterView setAlpha:1.0];
    [(NCNotificationDigestDetailedSummaryOrderProvider *)self _updateDigestSummaryPlatterView];
    digestSummaryPlatterView = self->_digestSummaryPlatterView;
  }

  return digestSummaryPlatterView;
}

- (void)_updateDigestSummaryPlatterView
{
  v3 = [(NCNotificationDigestDetailedSummaryOrderProvider *)self leadingSummaryPlatterViewConfigureIfNecessary];
  v4 = [(NCNotificationSummaryOrderProvider *)self isOnboardingSummary];
  digestSummaryPlatterView = self->_digestSummaryPlatterView;
  if (v4)
  {
    [(NCDigestSummaryPlatterView *)self->_digestSummaryPlatterView setDate:0];
    v6 = self->_digestSummaryPlatterView;
    v7 = NCUserNotificationsUIKitFrameworkBundle();
    v8 = [v7 localizedStringForKey:@"NOTIFICATION_SUMMARY_ONBOARDING_SUGGESTION_TITLE" value:&stru_282FE84F8 table:0];
    [(NCDigestSummaryPlatterView *)v6 setHeading:v8];

    v9 = self->_digestSummaryPlatterView;
    v10 = NCUserNotificationsUIKitFrameworkBundle();
    v11 = [v10 localizedStringForKey:@"NOTIFICATION_SUMMARY_ONBOARDING_SUGGESTION_MESSAGE" value:&stru_282FE84F8 table:0];
    [(NCDigestSummaryPlatterView *)v9 setSubheading:v11];
  }

  else
  {
    v12 = [(NCNotificationSummaryOrderProvider *)self summaryDate];
    if (v12)
    {
      [(NCDigestSummaryPlatterView *)digestSummaryPlatterView setDate:v12];
    }

    else
    {
      v13 = [MEMORY[0x277CBEAA8] date];
      [(NCDigestSummaryPlatterView *)digestSummaryPlatterView setDate:v13];
    }

    v14 = self->_digestSummaryPlatterView;
    v10 = [(NCNotificationSummaryOrderProvider *)self summaryHeading];
    [(NCDigestSummaryPlatterView *)v14 setHeading:v10];
  }

  v25 = [(NCNotificationDigestDetailedSummaryOrderProvider *)self _atxHighlightedGroups];
  [(NCNotificationDigestDetailedSummaryOrderProvider *)self _updateFeaturedNotificationContentProvidersWithHighlightedGroups:v25];
  [(NCNotificationDigestDetailedSummaryOrderProvider *)self _updateCommunicationsSummaryContentProvider];
  v15 = MEMORY[0x277CBEB18];
  v16 = [(NCNotificationDigestSummaryOrderProvider *)self userNotificationDigest];
  v17 = [v16 rankedGroups];
  v18 = [v15 arrayWithArray:v17];

  [v18 removeObjectsInArray:v25];
  [(NCNotificationDigestDetailedSummaryOrderProvider *)self _updateAppsSummaryContentProvidersWithRankedGroups:v18];
  if ([(NCNotificationSummaryOrderProvider *)self isOnboardingSummary])
  {
    [(NCDigestSummaryPlatterView *)self->_digestSummaryPlatterView setCount:0];
  }

  else if ([(NCNotificationDigestDetailedSummaryOrderProvider *)self _shouldAllowTapOnLeadingSummaryPlatterView])
  {
    v19 = [(NCNotificationSummaryOrderProvider *)self cachedOrderedNotificationGroupLists];
    v20 = [(NCNotificationSummaryOrderProvider *)self notificationCountForNotificationGroupLists:v19];

    if (v20 >= 0x63)
    {
      v21 = 99;
    }

    else
    {
      v21 = v20;
    }

    [(NCDigestSummaryPlatterView *)self->_digestSummaryPlatterView setCount:v21];
    [(NCDigestSummaryPlatterView *)self->_digestSummaryPlatterView setClearControlView:0];
  }

  else
  {
    [(NCDigestSummaryPlatterView *)self->_digestSummaryPlatterView setCount:0];
    v22 = self->_digestSummaryPlatterView;
    v23 = [(NCNotificationSummaryOrderProvider *)self clearControlViewForLeadingSummaryPlatterView];
    [(NCDigestSummaryPlatterView *)v22 setClearControlView:v23];
  }

  v24 = [(NCNotificationSummaryOrderProvider *)self delegate];
  [v24 notificationSummaryOrderProviderRequestsReloadingLeadingSummaryPlatterView:self];

  [(NCDigestSummaryPlatterView *)self->_digestSummaryPlatterView updateContent];
}

- (id)_atxHighlightedGroups
{
  v47 = *MEMORY[0x277D85DE8];
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__2;
  v39 = __Block_byref_object_dispose__2;
  v3 = [(NCNotificationDigestSummaryOrderProvider *)self userNotificationDigest];
  v4 = [v3 highlightedGroups];
  v40 = [(NCNotificationSummaryOrderProvider *)self filterPresentNotificationGroupsInDigestNotificationGroups:v4];

  if ([v36[5] count] <= 2)
  {
    v5 = [(NCNotificationSummaryOrderProvider *)self cachedOrderedNotificationGroupLists];
    v6 = [v5 count];
    LODWORD(v6) = v6 > [v36[5] count];

    if (v6)
    {
      v7 = *MEMORY[0x277D77DD0];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v22 = [(NCNotificationSummaryOrderProvider *)self summaryHeading];
        v23 = [v36[5] count];
        v24 = [(NCNotificationSummaryOrderProvider *)self cachedOrderedNotificationGroupLists];
        v25 = [v24 count];
        *buf = 138543874;
        v42 = v22;
        v43 = 2048;
        v44 = v23;
        v45 = 2048;
        v46 = v25;
        _os_log_error_impl(&dword_21E77E000, v7, OS_LOG_TYPE_ERROR, "Notification digest for %{public}@ returned %lu highlighted groups while total count is %lu", buf, 0x20u);
      }

      v8 = objc_alloc(MEMORY[0x277CBEB18]);
      v9 = [v8 initWithArray:v36[5]];
      v10 = [(NCNotificationDigestSummaryOrderProvider *)self userNotificationDigest];
      v11 = [v10 rankedGroups];
      v12 = [(NCNotificationSummaryOrderProvider *)self filterPresentNotificationGroupsInDigestNotificationGroups:v11];

      v13 = [(NCNotificationDigestSummaryOrderProvider *)self userNotificationDigest];
      v14 = [v13 messageGroups];
      v15 = [(NCNotificationSummaryOrderProvider *)self filterPresentNotificationGroupsInDigestNotificationGroups:v14];

      v16 = [v12 indexesOfObjectsPassingTest:&__block_literal_global_248];
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __73__NCNotificationDigestDetailedSummaryOrderProvider__atxHighlightedGroups__block_invoke_2;
      v30[3] = &unk_278370BC8;
      v17 = v12;
      v31 = v17;
      v18 = v9;
      v32 = v18;
      v19 = v15;
      v33 = v19;
      v34 = &v35;
      [v16 enumerateIndexesUsingBlock:v30];
      if ([v36[5] count] <= 2)
      {
        v26[0] = MEMORY[0x277D85DD0];
        v26[1] = 3221225472;
        v26[2] = __73__NCNotificationDigestDetailedSummaryOrderProvider__atxHighlightedGroups__block_invoke_3;
        v26[3] = &unk_278370BF0;
        v27 = v18;
        v28 = v19;
        v29 = &v35;
        [v17 enumerateObjectsUsingBlock:v26];
      }
    }
  }

  v20 = v36[5];
  _Block_object_dispose(&v35, 8);

  return v20;
}

void __73__NCNotificationDigestDetailedSummaryOrderProvider__atxHighlightedGroups__block_invoke_2(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v5 = [*(a1 + 32) objectAtIndex:a2];
  if (([*(a1 + 40) containsObject:?] & 1) == 0 && (objc_msgSend(*(a1 + 48), "containsObject:", v5) & 1) == 0)
  {
    [*(a1 + 40) addObject:v5];
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), *(a1 + 40));
    if ([*(*(*(a1 + 56) + 8) + 40) count] == 3)
    {
      *a3 = 1;
    }
  }
}

void __73__NCNotificationDigestDetailedSummaryOrderProvider__atxHighlightedGroups__block_invoke_3(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  if (([*(a1 + 32) containsObject:?] & 1) == 0 && (objc_msgSend(*(a1 + 40), "containsObject:", v6) & 1) == 0)
  {
    [*(a1 + 32) addObject:v6];
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), *(a1 + 32));
  }

  if ([*(*(*(a1 + 48) + 8) + 40) count] == 3)
  {
    *a4 = 1;
  }
}

- (void)_updateFeaturedNotificationContentProvidersWithHighlightedGroups:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v23 = a3;
  v4 = [(NCNotificationSummaryOrderProvider *)self cachedOrderedNotificationGroupLists];
  v5 = [(NCNotificationSummaryOrderProvider *)self orderedNotificationGroupLists:v4 forATXUserNotificationDigestNotificationGroup:v23 orderGroupNotifications:0];

  if (![v5 count])
  {
    v6 = [(NCNotificationSummaryOrderProvider *)self cachedOrderedNotificationGroupLists];
    v7 = [(NCNotificationSummaryOrderProvider *)self cachedOrderedNotificationGroupLists];
    v8 = [v7 count];

    if (v8 >= 3)
    {
      v9 = 3;
    }

    else
    {
      v9 = v8;
    }

    v10 = [v6 subarrayWithRange:{0, v9}];

    v5 = v10;
  }

  v24 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = v5;
  v11 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v11)
  {
    v12 = *v32;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v32 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v31 + 1) + 8 * i);
        v15 = [v14 leadingNotificationRequest];
        v16 = v15;
        if (v15)
        {
          featuredNotificationContentProviders = self->_featuredNotificationContentProviders;
          v29[0] = MEMORY[0x277D85DD0];
          v29[1] = 3221225472;
          v29[2] = __117__NCNotificationDigestDetailedSummaryOrderProvider__updateFeaturedNotificationContentProvidersWithHighlightedGroups___block_invoke;
          v29[3] = &unk_278370C18;
          v18 = v15;
          v30 = v18;
          v19 = [(NSArray *)featuredNotificationContentProviders indexOfObjectPassingTest:v29];
          if (v19 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v20 = -[NCDigestFeaturedNotificationContentProvider initWithNotificationRequest:groupCount:]([NCDigestFeaturedNotificationContentProvider alloc], "initWithNotificationRequest:groupCount:", v18, [v14 notificationCount]);
            v21 = [(NCNotificationSummaryOrderProvider *)self listComponentDelegate];
            [(NCDigestFeaturedNotificationContentProvider *)v20 setListComponentDelegate:v21];

            [(NCNotificationRequestCoalescingContentProvider *)v20 setDeviceAuthenticated:[(NCNotificationSummaryOrderProvider *)self isDeviceAuthenticated]];
            objc_initWeak(&location, self);
            v26[0] = MEMORY[0x277D85DD0];
            v26[1] = 3221225472;
            v26[2] = __117__NCNotificationDigestDetailedSummaryOrderProvider__updateFeaturedNotificationContentProvidersWithHighlightedGroups___block_invoke_2;
            v26[3] = &unk_278370C40;
            objc_copyWeak(&v27, &location);
            v26[4] = self;
            v26[5] = v14;
            [(NCDigestFeaturedNotificationContentProvider *)v20 setDefaultActionBlock:v26];
            objc_destroyWeak(&v27);
            objc_destroyWeak(&location);
          }

          else
          {
            v20 = [(NSArray *)self->_featuredNotificationContentProviders objectAtIndex:v19];
          }

          v22 = [v18 sectionIdentifier];
          [(NCDigestFeaturedNotificationContentProvider *)v20 setAppNotificationCount:[(NCNotificationDigestDetailedSummaryOrderProvider *)self _totalNotificationCountForSectionIdentifier:v22]];

          if (v20)
          {
            [v24 addObject:v20];
          }
        }
      }

      v11 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v11);
  }

  if (![(NSArray *)self->_featuredNotificationContentProviders isEqualToArray:v24])
  {
    objc_storeStrong(&self->_featuredNotificationContentProviders, v24);
    [(NCDigestSummaryPlatterView *)self->_digestSummaryPlatterView setFeaturedNotificationContentProviders:self->_featuredNotificationContentProviders];
  }

  [(NCDigestSummaryPlatterView *)self->_digestSummaryPlatterView setPresentFeaturedNotificationsInline:[(NCNotificationDigestDetailedSummaryOrderProvider *)self _presentFeaturedNotificationsInline]];
}

uint64_t __117__NCNotificationDigestDetailedSummaryOrderProvider__updateFeaturedNotificationContentProvidersWithHighlightedGroups___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 notificationRequest];
  v4 = [v3 matchesRequest:*(a1 + 32)];

  return v4;
}

void __117__NCNotificationDigestDetailedSummaryOrderProvider__updateFeaturedNotificationContentProvidersWithHighlightedGroups___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained delegate];
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) leadingNotificationRequest];
  [v2 notificationSummaryOrderProvider:v3 requestsPerformingDefaultActionForNotificationRequest:v4 inGroupList:*(a1 + 40)];
}

- (unint64_t)_totalNotificationCountForSectionIdentifier:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v5 = [(NCNotificationSummaryOrderProvider *)self cachedOrderedNotificationGroupLists];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __96__NCNotificationDigestDetailedSummaryOrderProvider__totalNotificationCountForSectionIdentifier___block_invoke;
  v9[3] = &unk_27836F870;
  v6 = v4;
  v10 = v6;
  v11 = &v12;
  [v5 enumerateObjectsUsingBlock:v9];

  v7 = v13[3];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __96__NCNotificationDigestDetailedSummaryOrderProvider__totalNotificationCountForSectionIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 sectionIdentifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  if (v4)
  {
    *(*(*(a1 + 40) + 8) + 24) += [v5 notificationCount];
  }
}

- (void)_updateAppsSummaryContentProvidersWithRankedGroups:(id)a3
{
  v4 = a3;
  v5 = [(NCNotificationSummaryOrderProvider *)self cachedOrderedNotificationGroupLists];
  v9 = [(NCNotificationSummaryOrderProvider *)self orderedNotificationGroupLists:v5 forATXUserNotificationDigestNotificationGroup:v4 orderGroupNotifications:0];

  if ([v9 count])
  {
    v6 = [(NCNotificationSummaryOrderProvider *)self representativeNotificationRequestsForNotificationGroupLists:v9];
    v7 = [NCNotificationSummaryContentProvider summaryContentProviderOfType:0 notificationRequests:v6];
    appsSummaryContentProvider = self->_appsSummaryContentProvider;
    self->_appsSummaryContentProvider = v7;
  }

  else
  {
    v6 = self->_appsSummaryContentProvider;
    self->_appsSummaryContentProvider = 0;
  }

  [(NCDigestSummaryPlatterView *)self->_digestSummaryPlatterView setAppsSummaryContentProvider:self->_appsSummaryContentProvider];
}

- (void)_updateCommunicationsSummaryContentProvider
{
  v3 = [(NCNotificationSummaryOrderProvider *)self cachedOrderedNotificationGroupLists];
  v4 = [(NCNotificationDigestSummaryOrderProvider *)self userNotificationDigest];
  v5 = [v4 messageGroups];
  v9 = [(NCNotificationSummaryOrderProvider *)self orderedNotificationGroupLists:v3 forATXUserNotificationDigestNotificationGroup:v5 orderGroupNotifications:0];

  if ([v9 count])
  {
    v6 = [(NCNotificationSummaryOrderProvider *)self representativeNotificationRequestsForNotificationGroupLists:v9];
    v7 = [NCNotificationSummaryContentProvider summaryContentProviderOfType:1 notificationRequests:v6];
    communicationsSummaryContentProvider = self->_communicationsSummaryContentProvider;
    self->_communicationsSummaryContentProvider = v7;
  }

  else
  {
    v6 = self->_communicationsSummaryContentProvider;
    self->_communicationsSummaryContentProvider = 0;
  }

  [(NCDigestSummaryPlatterView *)self->_digestSummaryPlatterView setCommunicationsSummaryContentProvider:self->_communicationsSummaryContentProvider];
}

- (BOOL)_shouldAllowTapOnLeadingSummaryPlatterView
{
  v18 = *MEMORY[0x277D85DE8];
  if (self->_communicationsSummaryContentProvider)
  {
    LOBYTE(v2) = 1;
  }

  else
  {
    v4 = [(NSArray *)self->_featuredNotificationContentProviders count];
    v2 = v4 > 2 || [(NCNotificationSummaryOrderProvider *)self currentNotificationCount]> v4;
    v5 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
    {
      if (v2)
      {
        v6 = @"Allowing";
      }

      else
      {
        v6 = @"Not allowing";
      }

      v7 = v5;
      v8 = [(NCNotificationSummaryOrderProvider *)self summaryHeading];
      v10 = 138544130;
      v11 = v6;
      v12 = 2114;
      v13 = v8;
      v14 = 2048;
      v15 = v4;
      v16 = 2048;
      v17 = [(NCNotificationSummaryOrderProvider *)self currentNotificationCount];
      _os_log_impl(&dword_21E77E000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ tap on leading summary platter for %{public}@ with featured notification count = %lu and total notification count = %lu", &v10, 0x2Au);
    }
  }

  return v2;
}

- (BOOL)_presentFeaturedNotificationsInline
{
  v3 = [(NSArray *)self->_featuredNotificationContentProviders count];
  if (v3 == 2)
  {
    v3 = [(NCNotificationSummaryOrderProvider *)self currentNotificationCount];
  }

  return v3 < 3;
}

@end