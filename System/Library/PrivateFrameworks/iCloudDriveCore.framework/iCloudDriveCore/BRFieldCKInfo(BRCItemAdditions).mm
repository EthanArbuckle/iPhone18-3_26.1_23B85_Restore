@interface BRFieldCKInfo(BRCItemAdditions)
- (void)revertEtagsForOldZoneTombstone;
@end

@implementation BRFieldCKInfo(BRCItemAdditions)

- (void)revertEtagsForOldZoneTombstone
{
  v11 = *MEMORY[0x277D85DE8];
  etagBeforeCrossZoneMove = [self etagBeforeCrossZoneMove];
  v7 = 138412546;
  v8 = etagBeforeCrossZoneMove;
  v9 = 2112;
  v10 = a2;
  _os_log_debug_impl(&dword_223E7A000, a3, OS_LOG_TYPE_DEBUG, "[DEBUG] Reverting etag to pre-czm tag %@%@", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

@end