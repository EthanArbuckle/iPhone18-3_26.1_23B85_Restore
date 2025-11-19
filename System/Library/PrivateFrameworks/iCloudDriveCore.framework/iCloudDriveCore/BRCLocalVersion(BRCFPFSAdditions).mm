@interface BRCLocalVersion(BRCFPFSAdditions)
@end

@implementation BRCLocalVersion(BRCFPFSAdditions)

- (void)initFromResultSet:()BRCFPFSAdditions pos:.cold.1(void *a1, uint64_t a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_fault_impl(&dword_223E7A000, log, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: can't unarchive CKRecord: %@%@", buf, 0x16u);
}

@end