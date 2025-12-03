@interface BRCPQLInjectionBasedOnConditionBase
+ (id)_createInjectionWithCondition:(BOOL)condition;
@end

@implementation BRCPQLInjectionBasedOnConditionBase

+ (id)_createInjectionWithCondition:(BOOL)condition
{
  v3 = brc_bread_crumbs();
  v4 = brc_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    +[BRCPQLInjectionServerClientTableBase serverTable];
  }

  v5 = [MEMORY[0x277D82C18] rawInjection:"" length:0];

  return v5;
}

@end