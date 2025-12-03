@interface BRCPQLInjectionServerClientTableBase
+ (id)_createInjectionWithServerTruth:(BOOL)truth;
+ (id)clientTable;
+ (id)serverTable;
+ (void)serverTable;
@end

@implementation BRCPQLInjectionServerClientTableBase

+ (id)_createInjectionWithServerTruth:(BOOL)truth
{
  v3 = MEMORY[0x277D82C10];
  if (truth)
  {
    [self serverTable];
  }

  else
  {
    [self clientTable];
  }
  v4 = ;
  v5 = [v3 nameWithString:v4];

  return v5;
}

+ (id)serverTable
{
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    +[BRCPQLInjectionServerClientTableBase serverTable];
  }

  return &stru_2837504F0;
}

+ (id)clientTable
{
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    +[BRCPQLInjectionServerClientTableBase serverTable];
  }

  return &stru_2837504F0;
}

+ (void)serverTable
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, v0, v1, "[CRIT] UNREACHABLE: Should be implemented by derived class%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end