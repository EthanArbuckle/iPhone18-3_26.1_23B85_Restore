@interface WFTimeOfDayTrigger(CoreDuetContext)
- (id)contextStorePredicate;
@end

@implementation WFTimeOfDayTrigger(CoreDuetContext)

- (id)contextStorePredicate
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CFE318] userContext];
  v3 = [MEMORY[0x277CFE338] keyPathForSunriseSunsetDataDictionary];
  v4 = [v2 objectForKeyedSubscript:v3];

  v5 = [MEMORY[0x277CFE338] currentSunriseKey];
  v6 = [v4 objectForKey:v5];

  v7 = [MEMORY[0x277CFE338] currentSunsetKey];
  v8 = [v4 objectForKey:v7];

  v9 = [MEMORY[0x277D7C960] nextFireDateFromNowWithTrigger:a1 currentSunriseTime:v6 currentSunsetTime:v8];
  if (v9)
  {
    v10 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v9 duration:300.0];
    v11 = [MEMORY[0x277CFE338] predicateForSystemTimeInInterval:v10];
  }

  else
  {
    v12 = getWFTriggersLogObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v15 = 136315138;
      v16 = "[WFTimeOfDayTrigger(CoreDuetContext) contextStorePredicate]";
      _os_log_impl(&dword_23103C000, v12, OS_LOG_TYPE_ERROR, "%s Could not create predicate for WFTimeOfDayTrigger because next fire date was nil", &v15, 0xCu);
    }

    v11 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v11;
}

@end