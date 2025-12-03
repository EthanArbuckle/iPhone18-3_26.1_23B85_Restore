@interface NCNotificationMissedSummaryOrderProvider
- (id)atxUUID;
- (id)leadingSummaryPlatterViewConfigureIfNecessary;
- (void)_updateSummaryContentProvider;
- (void)_updateSummaryPlatterView;
- (void)atxLogRemoval;
- (void)atxLogSummaryPlatterExpandedIsUpcoming:(BOOL)upcoming;
- (void)atxLogSummaryPlatterShownIsUpcoming:(BOOL)upcoming;
- (void)generateDigestForATXUserNotificationArrays:(id)arrays withCompletionBlock:(id)block;
- (void)setDeviceAuthenticated:(BOOL)authenticated;
@end

@implementation NCNotificationMissedSummaryOrderProvider

- (void)setDeviceAuthenticated:(BOOL)authenticated
{
  v4.receiver = self;
  v4.super_class = NCNotificationMissedSummaryOrderProvider;
  [(NCNotificationSummaryOrderProvider *)&v4 setDeviceAuthenticated:authenticated];
  [(NCNotificationMissedSummaryOrderProvider *)self _updateSummaryPlatterView];
}

- (id)atxUUID
{
  missedNotificationRanking = [(NCNotificationMissedSummaryOrderProvider *)self missedNotificationRanking];
  uuid = [missedNotificationRanking uuid];

  return uuid;
}

- (void)atxLogSummaryPlatterShownIsUpcoming:(BOOL)upcoming
{
  upcomingCopy = upcoming;
  missedNotificationRanking = [(NCNotificationMissedSummaryOrderProvider *)self missedNotificationRanking];
  [missedNotificationRanking logCollapsedViewWithIsUpcoming:upcomingCopy];
}

- (void)atxLogSummaryPlatterExpandedIsUpcoming:(BOOL)upcoming
{
  upcomingCopy = upcoming;
  missedNotificationRanking = [(NCNotificationMissedSummaryOrderProvider *)self missedNotificationRanking];
  [missedNotificationRanking logExpandedViewWithIsUpcoming:upcomingCopy];
}

- (void)atxLogRemoval
{
  missedNotificationRanking = [(NCNotificationMissedSummaryOrderProvider *)self missedNotificationRanking];
  [missedNotificationRanking logRemoval];
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
    materialGroupNameBase = [(NCNotificationSummaryOrderProvider *)self materialGroupNameBase];
    [(PLPlatterView *)v6 setMaterialGroupNameBase:materialGroupNameBase];

    v8 = self->_summaryPlatterView;
    summaryPlatterViewTapGestureRecognizer = [(NCNotificationSummaryOrderProvider *)self summaryPlatterViewTapGestureRecognizer];
    [(NCNotificationSummaryPlatterView *)v8 addGestureRecognizer:summaryPlatterViewTapGestureRecognizer];

    [(NCNotificationMissedSummaryOrderProvider *)self _updateSummaryPlatterView];
    summaryPlatterView = self->_summaryPlatterView;
  }

  return summaryPlatterView;
}

- (void)generateDigestForATXUserNotificationArrays:(id)arrays withCompletionBlock:(id)block
{
  v17 = *MEMORY[0x277D85DE8];
  arraysCopy = arrays;
  blockCopy = block;
  v8 = *MEMORY[0x277D77DD0];
  if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    summaryHeading = [(NCNotificationSummaryOrderProvider *)self summaryHeading];
    *buf = 138543362;
    v16 = summaryHeading;
    _os_log_impl(&dword_21E77E000, v9, OS_LOG_TYPE_DEFAULT, "Generating new missed notification ranking for %{public}@", buf, 0xCu);
  }

  atxDigestGeneratorClient = [objc_opt_class() atxDigestGeneratorClient];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __107__NCNotificationMissedSummaryOrderProvider_generateDigestForATXUserNotificationArrays_withCompletionBlock___block_invoke;
  v13[3] = &unk_278370C68;
  v13[4] = self;
  v14 = blockCopy;
  v12 = blockCopy;
  [atxDigestGeneratorClient generateMissedNotificationRankingForNotificationArrays:arraysCopy modeUUID:0 reply:v13];
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
  delegate = [(NCNotificationSummaryOrderProvider *)self delegate];
  [delegate notificationSummaryOrderProviderRequestsReloadingLeadingSummaryPlatterView:self];
}

- (void)_updateSummaryContentProvider
{
  cachedOrderedNotificationGroupLists = [(NCNotificationSummaryOrderProvider *)self cachedOrderedNotificationGroupLists];
  missedNotificationRanking = [(NCNotificationMissedSummaryOrderProvider *)self missedNotificationRanking];
  rankedGroups = [missedNotificationRanking rankedGroups];

  v5 = [(NCNotificationSummaryOrderProvider *)self orderedNotificationGroupLists:cachedOrderedNotificationGroupLists forATXUserNotificationDigestNotificationGroup:rankedGroups orderGroupNotifications:0];
  if (![v5 count])
  {
    cachedOrderedNotificationGroupLists2 = [(NCNotificationSummaryOrderProvider *)self cachedOrderedNotificationGroupLists];

    v5 = cachedOrderedNotificationGroupLists2;
  }

  titlesForSectionListsInSummary = [(NCNotificationSummaryOrderProvider *)self titlesForSectionListsInSummary];
  if ([v5 count] || objc_msgSend(titlesForSectionListsInSummary, "count"))
  {
    v8 = [(NCNotificationSummaryOrderProvider *)self representativeNotificationRequestsForNotificationGroupLists:v5];
    v9 = [NCNotificationSummaryContentProvider summaryContentProviderOfType:2 notificationRequests:v8];
    summaryContentProvider = self->_summaryContentProvider;
    self->_summaryContentProvider = v9;

    [(NCNotificationSummaryContentProvider *)self->_summaryContentProvider setDeviceAuthenticated:[(NCNotificationSummaryOrderProvider *)self isDeviceAuthenticated]];
    v11 = self->_summaryContentProvider;
    summaryHeading = [(NCNotificationSummaryOrderProvider *)self summaryHeading];
    [(NCNotificationSummaryContentProvider *)v11 setSummaryTitle:summaryHeading];

    v13 = self->_summaryContentProvider;
    dndMode = [(NCNotificationSummaryOrderProvider *)self dndMode];
    symbolImageName = [dndMode symbolImageName];
    [(NCNotificationSummaryContentProvider *)v13 setSummaryIconSymbolName:symbolImageName];

    [(NCNotificationSummaryContentProvider *)self->_summaryContentProvider setTitlesForSectionListsInSummary:titlesForSectionListsInSummary];
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