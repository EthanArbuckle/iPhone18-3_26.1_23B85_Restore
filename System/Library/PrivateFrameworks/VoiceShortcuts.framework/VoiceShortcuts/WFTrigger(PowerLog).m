@interface WFTrigger(PowerLog)
+ (id)powerLogEventKindForTrigger:()PowerLog;
@end

@implementation WFTrigger(PowerLog)

+ (id)powerLogEventKindForTrigger:()PowerLog
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (powerLogEventKindForTrigger__onceToken != -1)
  {
    dispatch_once(&powerLogEventKindForTrigger__onceToken, &__block_literal_global_1805);
  }

  v4 = powerLogEventKindForTrigger__eventKinds;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [v4 objectForKeyedSubscript:v6];

  if (!v7)
  {
    v8 = getWFTriggersLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315394;
      v12 = "+[WFTrigger(PowerLog) powerLogEventKindForTrigger:]";
      v13 = 2112;
      v14 = objc_opt_class();
      _os_log_impl(&dword_23103C000, v8, OS_LOG_TYPE_ERROR, "%s Missing eventKind for %@", &v11, 0x16u);
    }

    v7 = &unk_2845ED158;
  }

  v9 = *MEMORY[0x277D85DE8];

  return v7;
}

@end