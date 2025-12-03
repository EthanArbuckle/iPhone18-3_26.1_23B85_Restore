@interface NSData(BRCQuarantine)
- (uint64_t)br_qtnFlags;
- (void)br_qtnFlags;
@end

@implementation NSData(BRCQuarantine)

- (uint64_t)br_qtnFlags
{
  bytes = [self bytes];
  if ([self length] >= 7 && *bytes == 113 && *(bytes + 1) == 47 && *(bytes + 6) == 59)
  {
    return strtol((bytes + 2), 0, 16);
  }

  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    [NSData(BRCQuarantine) br_qtnFlags];
  }

  return 0;
}

- (void)br_qtnFlags
{
  OUTLINED_FUNCTION_9_3();
  v9 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCACA8] brc_hexadecimalStringWithBytes:objc_msgSend(v1 length:{"bytes"), objc_msgSend(v0, "length")}];
  [v2 UTF8String];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_13();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

@end