@interface NSProgress(BRCAdditions)
- (id)brc_dumpDescription;
- (uint64_t)brc_publish;
- (uint64_t)brc_unpublish;
- (void)brc_publish;
- (void)brc_unpublish;
@end

@implementation NSProgress(BRCAdditions)

- (uint64_t)brc_publish
{
  v2 = brc_bread_crumbs();
  v3 = brc_notifications_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [NSProgress(BRCAdditions) brc_publish];
  }

  return [a1 _publish];
}

- (uint64_t)brc_unpublish
{
  v2 = brc_bread_crumbs();
  v3 = brc_notifications_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [NSProgress(BRCAdditions) brc_unpublish];
  }

  return [a1 _unpublish];
}

- (id)brc_dumpDescription
{
  v2 = [MEMORY[0x277CBEB18] array];
  if ([a1 isFinished])
  {
    [v2 addObject:@"finished"];
  }

  if ([a1 isIndeterminate])
  {
    [v2 addObject:@"indeterminate"];
  }

  if ([a1 isCancelled])
  {
    [v2 addObject:@"cancelled"];
  }

  if ([a1 isPaused])
  {
    [v2 addObject:@"paused"];
  }

  if ([v2 count])
  {
    v3 = MEMORY[0x277CCACA8];
    v4 = [v2 componentsJoinedByString:@"|"];
    v5 = [v3 stringWithFormat:@"s:%@ ", v4];
  }

  else
  {
    v5 = &stru_2837504F0;
  }

  v6 = MEMORY[0x277CCACA8];
  [a1 fractionCompleted];
  v8 = [v6 stringWithFormat:@"%@f:%.4f uc:%lld/%lld", v5, v7, objc_msgSend(a1, "completedUnitCount"), objc_msgSend(a1, "totalUnitCount")];

  return v8;
}

- (void)brc_publish
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v0, v1, "[NOTIF] published progress for %@%@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)brc_unpublish
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v0, v1, "[NOTIF] unpublished progress for %@%@");
  v2 = *MEMORY[0x277D85DE8];
}

@end