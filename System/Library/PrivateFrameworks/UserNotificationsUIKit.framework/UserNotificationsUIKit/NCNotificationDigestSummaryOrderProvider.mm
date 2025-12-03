@interface NCNotificationDigestSummaryOrderProvider
- (id)atxUUID;
- (void)atxLogSummaryPlatterExpandedIsUpcoming:(BOOL)upcoming;
- (void)atxLogSummaryPlatterShownIsUpcoming:(BOOL)upcoming;
- (void)generateDigestForATXUserNotificationArrays:(id)arrays withCompletionBlock:(id)block;
@end

@implementation NCNotificationDigestSummaryOrderProvider

- (id)atxUUID
{
  userNotificationDigest = [(NCNotificationDigestSummaryOrderProvider *)self userNotificationDigest];
  uuid = [userNotificationDigest uuid];

  return uuid;
}

- (void)atxLogSummaryPlatterShownIsUpcoming:(BOOL)upcoming
{
  userNotificationDigest = [(NCNotificationDigestSummaryOrderProvider *)self userNotificationDigest];
  [userNotificationDigest logCollapsedPreview];
}

- (void)atxLogSummaryPlatterExpandedIsUpcoming:(BOOL)upcoming
{
  upcomingCopy = upcoming;
  userNotificationDigest = [(NCNotificationDigestSummaryOrderProvider *)self userNotificationDigest];
  v5 = userNotificationDigest;
  if (upcomingCopy)
  {
    [userNotificationDigest logUpcomingView];
  }

  else
  {
    [userNotificationDigest logScheduledView];
  }
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
    _os_log_impl(&dword_21E77E000, v9, OS_LOG_TYPE_DEFAULT, "Generating new notification digest for %{public}@", buf, 0xCu);
  }

  atxDigestGeneratorClient = [objc_opt_class() atxDigestGeneratorClient];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __107__NCNotificationDigestSummaryOrderProvider_generateDigestForATXUserNotificationArrays_withCompletionBlock___block_invoke;
  v13[3] = &unk_278370B80;
  v13[4] = self;
  v14 = blockCopy;
  v12 = blockCopy;
  [atxDigestGeneratorClient generateDigestForNotificationArrays:arraysCopy reply:v13];
}

void __107__NCNotificationDigestSummaryOrderProvider_generateDigestForATXUserNotificationArrays_withCompletionBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v8 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_ERROR))
    {
      __107__NCNotificationDigestSummaryOrderProvider_generateDigestForATXUserNotificationArrays_withCompletionBlock___block_invoke_cold_1(a1, v8);
    }
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __107__NCNotificationDigestSummaryOrderProvider_generateDigestForATXUserNotificationArrays_withCompletionBlock___block_invoke_2;
    block[3] = &unk_278370B58;
    block[4] = *(a1 + 32);
    v10 = v5;
    v11 = *(a1 + 40);
    dispatch_sync(MEMORY[0x277D85CD0], block);
  }
}

uint64_t __107__NCNotificationDigestSummaryOrderProvider_generateDigestForATXUserNotificationArrays_withCompletionBlock___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setUserNotificationDigest:*(a1 + 40)];
  [*(a1 + 40) viewFlattenedGroups];
  objc_claimAutoreleasedReturnValue();
  v2 = *(a1 + 48);
  if (v2)
  {
    v2 = (*(v2 + 16))();
  }

  return MEMORY[0x2821F96F8](v2);
}

void __107__NCNotificationDigestSummaryOrderProvider_generateDigestForATXUserNotificationArrays_withCompletionBlock___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 summaryHeading];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_0_0(&dword_21E77E000, v5, v6, "Error creating new notification digest for %{public}@! [error=%@]", v7, v8, v9, v10, v11);
}

@end