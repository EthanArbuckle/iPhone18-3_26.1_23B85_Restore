@interface NCNotificationMissedSummaryOrderProvider
- (id)atxUUID;
- (id)leadingSummaryPlatterViewConfigureIfNecessary;
- (void)_updateSummaryContentProvider;
- (void)_updateSummaryPlatterView;
- (void)atxLogRemoval;
- (void)atxLogSummaryPlatterExpandedIsUpcoming:(BOOL)a3;
- (void)atxLogSummaryPlatterShownIsUpcoming:(BOOL)a3;
- (void)generateDigestForATXUserNotificationArrays:(id)a3 withCompletionBlock:(id)a4;
- (void)setDeviceAuthenticated:(BOOL)a3;
@end

@implementation NCNotificationMissedSummaryOrderProvider

- (void)setDeviceAuthenticated:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = NCNotificationMissedSummaryOrderProvider;
  [(NCNotificationSummaryOrderProvider *)&v4 setDeviceAuthenticated:a3];
  [(NCNotificationMissedSummaryOrderProvider *)self _updateSummaryPlatterView];
}

- (id)atxUUID
{
  v2 = [(NCNotificationMissedSummaryOrderProvider *)self missedNotificationRanking];
  v3 = [v2 uuid];

  return v3;
}

- (void)atxLogSummaryPlatterShownIsUpcoming:(BOOL)a3
{
  v3 = a3;
  v4 = [(NCNotificationMissedSummaryOrderProvider *)self missedNotificationRanking];
  [v4 logCollapsedViewWithIsUpcoming:v3];
}

- (void)atxLogSummaryPlatterExpandedIsUpcoming:(BOOL)a3
{
  v3 = a3;
  v4 = [(NCNotificationMissedSummaryOrderProvider *)self missedNotificationRanking];
  [v4 logExpandedViewWithIsUpcoming:v3];
}

- (void)atxLogRemoval
{
  v2 = [(NCNotificationMissedSummaryOrderProvider *)self missedNotificationRanking];
  [v2 logRemoval];
}

- (id)leadingSummaryPlatterViewConfigureIfNecessary
{
  summaryPlatterView = self->_summaryPlatterView;
  if (!summaryPlatterView)
  {
    v4 = [[NCNotificationSummaryPlatterView alloc] initWithRecipe:1];
    v5 = self->_summaryPlatterView;
    self->_summaryPlatterView = v4;

    [(NCNotificationSummaryPlatterView *)self->_summaryPlatterView setFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    v6 = self->_summaryPlatterView;
    v7 = [(NCNotificationSummaryOrderProvider *)self materialGroupNameBase];
    [(PLPlatterView *)v6 setMaterialGroupNameBase:v7];

    v8 = self->_summaryPlatterView;
    v9 = [(NCNotificationSummaryOrderProvider *)self summaryPlatterViewTapGestureRecognizer];
    [(NCNotificationSummaryPlatterView *)v8 addGestureRecognizer:v9];

    [(NCNotificationMissedSummaryOrderProvider *)self _updateSummaryPlatterView];
    summaryPlatterView = self->_summaryPlatterView;
  }

  return summaryPlatterView;
}

- (void)generateDigestForATXUserNotificationArrays:(id)a3 withCompletionBlock:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = *MEMORY[0x277D77DD0];
  if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v10 = [(NCNotificationSummaryOrderProvider *)self summaryHeading];
    *buf = 138543362;
    v16 = v10;
    _os_log_impl(&dword_21E77E000, v9, OS_LOG_TYPE_DEFAULT, "Generating new missed notification ranking for %{public}@", buf, 0xCu);
  }

  v11 = [objc_opt_class() atxDigestGeneratorClient];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __107__NCNotificationMissedSummaryOrderProvider_generateDigestForATXUserNotificationArrays_withCompletionBlock___block_invoke;
  v13[3] = &unk_278370C68;
  v13[4] = self;
  v14 = v7;
  v12 = v7;
  [v11 generateMissedNotificationRankingForNotificationArrays:v6 modeUUID:0 reply:v13];
}

void __107__NCNotificationMissedSummaryOrderProvider_generateDigestForATXUserNotificationArrays_withCompletionBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v8 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_ERROR))
    {
      __107__NCNotificationMissedSummaryOrderProvider_generateDigestForATXUserNotificationArrays_withCompletionBlock___block_invoke_cold_1(a1, v8);
    }
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __107__NCNotificationMissedSummaryOrderProvider_generateDigestForATXUserNotificationArrays_withCompletionBlock___block_invoke_2;
    block[3] = &unk_278370B58;
    block[4] = *(a1 + 32);
    v10 = v5;
    v11 = *(a1 + 40);
    dispatch_sync(MEMORY[0x277D85CD0], block);
  }
}

uint64_t __107__NCNotificationMissedSummaryOrderProvider_generateDigestForATXUserNotificationArrays_withCompletionBlock___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setMissedNotificationRanking:*(a1 + 40)];
  [*(a1 + 40) rankedGroups];
  objc_claimAutoreleasedReturnValue();
  v2 = *(a1 + 48);
  if (v2)
  {
    v2 = (*(v2 + 16))();
  }

  return MEMORY[0x2821F96F8](v2);
}

- (void)_updateSummaryPlatterView
{
  [(NCNotificationMissedSummaryOrderProvider *)self _updateSummaryContentProvider];
  [(NCNotificationSummaryOrderProvider *)self configureSummaryContentDisplaying:self->_summaryPlatterView withSummaryContentProviding:self->_summaryContentProvider];
  v3 = [(NCNotificationSummaryOrderProvider *)self delegate];
  [v3 notificationSummaryOrderProviderRequestsReloadingLeadingSummaryPlatterView:self];
}

- (void)_updateSummaryContentProvider
{
  v16 = [(NCNotificationSummaryOrderProvider *)self cachedOrderedNotificationGroupLists];
  v3 = [(NCNotificationMissedSummaryOrderProvider *)self missedNotificationRanking];
  v4 = [v3 rankedGroups];

  v5 = [(NCNotificationSummaryOrderProvider *)self orderedNotificationGroupLists:v16 forATXUserNotificationDigestNotificationGroup:v4 orderGroupNotifications:0];
  if (![v5 count])
  {
    v6 = [(NCNotificationSummaryOrderProvider *)self cachedOrderedNotificationGroupLists];

    v5 = v6;
  }

  v7 = [(NCNotificationSummaryOrderProvider *)self titlesForSectionListsInSummary];
  if ([v5 count] || objc_msgSend(v7, "count"))
  {
    v8 = [(NCNotificationSummaryOrderProvider *)self representativeNotificationRequestsForNotificationGroupLists:v5];
    v9 = [NCNotificationSummaryContentProvider summaryContentProviderOfType:2 notificationRequests:v8];
    summaryContentProvider = self->_summaryContentProvider;
    self->_summaryContentProvider = v9;

    [(NCNotificationSummaryContentProvider *)self->_summaryContentProvider setDeviceAuthenticated:[(NCNotificationSummaryOrderProvider *)self isDeviceAuthenticated]];
    v11 = self->_summaryContentProvider;
    v12 = [(NCNotificationSummaryOrderProvider *)self summaryHeading];
    [(NCNotificationSummaryContentProvider *)v11 setSummaryTitle:v12];

    v13 = self->_summaryContentProvider;
    v14 = [(NCNotificationSummaryOrderProvider *)self dndMode];
    v15 = [v14 symbolImageName];
    [(NCNotificationSummaryContentProvider *)v13 setSummaryIconSymbolName:v15];

    [(NCNotificationSummaryContentProvider *)self->_summaryContentProvider setTitlesForSectionListsInSummary:v7];
  }

  else
  {
    v8 = self->_summaryContentProvider;
    self->_summaryContentProvider = 0;
  }
}

void __107__NCNotificationMissedSummaryOrderProvider_generateDigestForATXUserNotificationArrays_withCompletionBlock___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 summaryHeading];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_0_0(&dword_21E77E000, v5, v6, "Error creating missed notification ranking for %{public}@! [error=%@]", v7, v8, v9, v10, v11);
}

@end