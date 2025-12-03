@interface PowerUISmartChargeUtilities
+ (BOOL)deviceConnectedToWirelessChargerWithContext:(id)context;
+ (BOOL)deviceHasEnoughPluggedInTimeWithMinimumDays:(double)days withContext:(id)context withDefaultsDomain:(id)domain;
+ (BOOL)deviceWasConnectedToChargerWithinSeconds:(double)seconds withContext:(id)context;
+ (BOOL)doesTimeOfDayForDate:(id)date fallBetweenDate:(id)betweenDate andDate:(id)andDate;
+ (BOOL)isInternalBuild;
+ (BOOL)isOBCSupported;
+ (BOOL)isPluggedInWithContext:(id)context;
+ (BOOL)isUltraWatch;
+ (BOOL)isWeekend:(id)weekend;
+ (BOOL)isiPad;
+ (BOOL)isiPhone;
+ (BOOL)isiPod;
+ (MemoryFootprint)getMemoryUsage;
+ (double)areaOverEightyWithBatteryLevelDurations:(double *)durations;
+ (double)batteryLevelAtDate:(id)date;
+ (double)cachedHistorical80ToFullDuration;
+ (double)percentageOfBatteryDurations:(double *)durations aboveBatteryLevel:(double)level;
+ (double)timestampOfFirstEventReachingBatteryLevel:(int)level betweenStartTime:(id)time andEndTime:(id)endTime;
+ (double)totalPluginDurationAfter:(id)after withMinimumDuration:(double)duration withPluginEvents:(id)events;
+ (id)batteryLevelHistogramAroundTime:(id)time withDelta:(double)delta withOffset:(double)offset;
+ (id)batteryProperties;
+ (id)concatenateChargeSessions:(id)sessions withMaxDeltaSecondsBetweenEvents:(unint64_t)events;
+ (id)curentDateStringFromDate:(id)date withFormat:(id)format;
+ (id)dateForPreferenceKey:(id)key inDomain:(id)domain;
+ (id)dateFormatter;
+ (id)drainBetweenRelevantEventsFromDrainSessionInfo:(id)info;
+ (id)drainSessionsInfoBetweenRelevantChargesBefore:(id)before withMinimumDuration:(double)duration;
+ (id)filterChargeSessions:(id)sessions startsBefore:(id)before dynamicallyAroundDate:(id)date withinSeconds:(unint64_t)seconds;
+ (id)getCurrentBootSessionUUID;
+ (id)getTestVector:(id)vector;
+ (id)historicalFullChargeDurationStartingAt:(int)at withMinimumPluginDuration:(int)duration;
+ (id)lastPluggedInDate;
+ (id)log;
+ (id)numberForKey:(id)key fromDict:(id)dict withDefault:(int64_t)default;
+ (id)numberForPreferenceKey:(id)key inDomain:(id)domain;
+ (id)percentageOfTimeForBatteryLevels:(double *)levels withLog:(id)log;
+ (id)pluginEventsBefore:(id)before withMinimumDuration:(double)duration ignoringDisconnectsShorterThan:(double)than;
+ (id)pluginEventsBefore:(id)before withMinimumDuration:(double)duration withMinimumPlugoutBatteryLevel:(double)level ignoringDisconnectsShorterThan:(double)than;
+ (id)readDictForPreferenceKey:(id)key inDomain:(id)domain;
+ (id)readStringForPreferenceKey:(id)key inDomain:(id)domain;
+ (id)recentEngagementHistory;
+ (id)roundedDateFromDate:(id)date;
+ (id)timeStringFromDate:(id)date;
+ (id)timelineEventDate:(id)date withDefaultsDomain:(id)domain;
+ (int64_t)currentBatteryLevelWithContext:(id)context;
+ (unint64_t)decileClassificationWithTopBinCutOff:(float *)off;
+ (void)getBatteryLevelDurations:(double *)durations;
+ (void)lastPluggedInDate;
+ (void)logMemoryUsageInternalForEvent:(id)event;
+ (void)mergeDrainSessionsInfo:(id)info intoResult:(id)result;
+ (void)setDate:(id)date forPreferenceKey:(id)key inDomain:(id)domain;
@end

@implementation PowerUISmartChargeUtilities

+ (BOOL)isInternalBuild
{
  if (isInternalBuild_onceToken != -1)
  {
    +[PowerUISmartChargeUtilities isInternalBuild];
  }

  return isInternalBuild_isInternalBuild;
}

+ (MemoryFootprint)getMemoryUsage
{
  v30 = 0;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  *task_info_out = 0u;
  v8 = 0u;
  task_info_outCnt = 93;
  if (task_info(*MEMORY[0x277D85F48], 0x16u, task_info_out, &task_info_outCnt))
  {
    v3 = [self log];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      +[PowerUISmartChargeUtilities getMemoryUsage];
    }

    v4 = -1;
    v5 = -1;
  }

  else
  {
    v5 = v16 >> 10;
    v4 = *(&v17 + 1) / 1024;
  }

  result.var1 = v4;
  result.var0 = v5;
  return result;
}

+ (id)log
{
  v2 = log_log;
  if (!log_log)
  {
    v3 = os_log_create("com.apple.powerui.smartcharging", "utilities");
    v4 = log_log;
    log_log = v3;

    v2 = log_log;
  }

  return v2;
}

+ (BOOL)isiPhone
{
  v2 = MGGetStringAnswer();
  v3 = [v2 isEqualToString:@"iPhone"];

  return v3;
}

+ (void)logMemoryUsageInternalForEvent:(id)event
{
  eventCopy = event;
  if (+[PowerUISmartChargeUtilities isInternalBuild])
  {
    v5 = +[PowerUISmartChargeUtilities getMemoryUsage];
    v7 = v6;
    v8 = [self log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [(PowerUISmartChargeUtilities *)v5 logMemoryUsageInternalForEvent:v7, eventCopy, v8];
    }
  }
}

uint64_t __46__PowerUISmartChargeUtilities_isInternalBuild__block_invoke()
{
  result = os_variant_has_internal_ui();
  isInternalBuild_isInternalBuild = result;
  return result;
}

+ (BOOL)isiPad
{
  v2 = MGGetStringAnswer();
  v3 = [v2 isEqualToString:@"iPad"];

  return v3;
}

+ (BOOL)isiPod
{
  v2 = MGGetStringAnswer();
  v3 = [v2 isEqualToString:@"iPod"];

  return v3;
}

+ (BOOL)isUltraWatch
{
  v4 = *MEMORY[0x277D85DE8];
  if (MGIsDeviceOfType() & 1) != 0 || (MGIsDeviceOfType())
  {
    result = 1;
  }

  else
  {
    result = MGIsDeviceOfType();
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

+ (BOOL)isOBCSupported
{
  v2 = objc_opt_class();

  return [v2 isiPhone];
}

+ (id)getCurrentBootSessionUUID
{
  v11 = *MEMORY[0x277D85DE8];
  size = 0;
  sysctlbyname("kern.bootsessionuuid", 0, &size, 0, 0);
  v3 = malloc_type_malloc(size, 0x100004077774924uLL);
  sysctlbyname("kern.bootsessionuuid", v3, &size, 0, 0);
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:v3];
  free(v3);
  v5 = [self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v10 = v4;
    _os_log_impl(&dword_21B766000, v5, OS_LOG_TYPE_DEFAULT, "Current boot session UUID: %@", buf, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (void)getBatteryLevelDurations:(double *)durations
{
  v31 = *MEMORY[0x277D85DE8];
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__2;
  v28 = __Block_byref_object_dispose__2;
  v29 = 0;
  v5 = BiomeLibrary();
  device = [v5 Device];
  power = [device Power];
  batteryLevel = [power BatteryLevel];
  publisher = [batteryLevel publisher];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __56__PowerUISmartChargeUtilities_getBatteryLevelDurations___block_invoke;
  v23[3] = &__block_descriptor_40_e23_v16__0__BPSCompletion_8l;
  v23[4] = self;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __56__PowerUISmartChargeUtilities_getBatteryLevelDurations___block_invoke_23;
  v22[3] = &unk_2782D4218;
  v22[4] = &v24;
  v22[5] = self;
  v22[6] = durations;
  v10 = [publisher sinkWithCompletion:v23 receiveInput:v22];

  if (v25[5])
  {
    date = [MEMORY[0x277CBEAA8] date];
    [date timeIntervalSinceReferenceDate];
    v13 = v12;
    [v25[5] timestamp];
    v15 = v14;

    eventBody = [v25[5] eventBody];
    [eventBody batteryPercentage];
    v18 = v17;

    if (v18 >= 0x65)
    {
      v19 = [self log];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = [MEMORY[0x277CCABB0] numberWithInteger:v18];
        [(PowerUISmartChargeUtilities *)v20 getBatteryLevelDurations:buf, v19];
      }
    }

    else
    {
      durations[v18] = v13 - v15 + durations[v18];
    }
  }

  _Block_object_dispose(&v24, 8);

  v21 = *MEMORY[0x277D85DE8];
}

void __56__PowerUISmartChargeUtilities_getBatteryLevelDurations___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 state])
  {
    v4 = [*(a1 + 32) log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __56__PowerUISmartChargeUtilities_getBatteryLevelDurations___block_invoke_cold_1(v3);
    }
  }
}

void __56__PowerUISmartChargeUtilities_getBatteryLevelDurations___block_invoke_23(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = v4;
  v6 = *(*(a1 + 32) + 8);
  if (!*(v6 + 40))
  {
    goto LABEL_4;
  }

  [v4 timestamp];
  v8 = v7;
  [*(*(*(a1 + 32) + 8) + 40) timestamp];
  v10 = v9;
  v11 = [*(*(*(a1 + 32) + 8) + 40) eventBody];
  [v11 batteryPercentage];
  v13 = v12;

  if (v13 < 0x65)
  {
    *(*(a1 + 48) + 8 * v13) = v8 - v10 + *(*(a1 + 48) + 8 * v13);
    v6 = *(*(a1 + 32) + 8);
LABEL_4:
    objc_storeStrong((v6 + 40), a2);
    goto LABEL_8;
  }

  v14 = [*(a1 + 40) log];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    __56__PowerUISmartChargeUtilities_getBatteryLevelDurations___block_invoke_23_cold_1(v13);
  }

LABEL_8:
}

+ (double)percentageOfBatteryDurations:(double *)durations aboveBatteryLevel:(double)level
{
  v4 = 0;
  v5 = 0.0;
  v6 = 0.0;
  do
  {
    v7 = durations[v4];
    v6 = v6 + v7;
    v8 = v5 + v7;
    if (v4 >= level)
    {
      v5 = v8;
    }

    ++v4;
  }

  while (v4 != 101);
  if (v6 != 0.0)
  {
    return v5 / v6;
  }

  v9 = [self log];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    +[PowerUISmartChargeUtilities percentageOfBatteryDurations:aboveBatteryLevel:];
  }

  return 0.0;
}

+ (double)areaOverEightyWithBatteryLevelDurations:(double *)durations
{
  bzero(durations, 0x328uLL);
  [PowerUISmartChargeUtilities getBatteryLevelDurations:durations];

  [PowerUISmartChargeUtilities percentageOfBatteryDurations:durations aboveBatteryLevel:75.0];
  return result;
}

+ (id)percentageOfTimeForBatteryLevels:(double *)levels withLog:(id)log
{
  v26 = *MEMORY[0x277D85DE8];
  logCopy = log;
  v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:4];
  v7 = 0;
  memset(v25, 0, sizeof(v25));
  v8 = 0.0;
  do
  {
    v9 = v7 / 0x19u;
    if (v9 >= 3)
    {
      v9 = 3;
    }

    v10 = levels[v7];
    *(v25 + v9) = v10 + *(v25 + v9);
    v8 = v8 + v10;
    ++v7;
  }

  while (v7 != 101);
  for (i = 0; i != 4; ++i)
  {
    v12 = *(v25 + i);
    if (v12 <= 0.0)
    {
      [v6 setObject:&unk_282D4E1A0 atIndexedSubscript:i];
    }

    else
    {
      v13 = [MEMORY[0x277CCABB0] numberWithDouble:v12 / v8];
      [v6 setObject:v13 atIndexedSubscript:i];

      v14 = logCopy;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [MEMORY[0x277CCABB0] numberWithInt:i];
        v16 = [MEMORY[0x277CCABB0] numberWithDouble:v12];
        *buf = 138412546;
        v22 = v15;
        v23 = 2112;
        v24 = v16;
        _os_log_impl(&dword_21B766000, v14, OS_LOG_TYPE_DEFAULT, "Quartile %@: %@", buf, 0x16u);
      }
    }
  }

  v17 = logCopy;
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [MEMORY[0x277CCABB0] numberWithDouble:v8];
    *buf = 138412546;
    v22 = v6;
    v23 = 2112;
    v24 = v18;
    _os_log_impl(&dword_21B766000, v17, OS_LOG_TYPE_DEFAULT, "Desktop Quartile Bins %@ with totalDuration %@", buf, 0x16u);
  }

  v19 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (unint64_t)decileClassificationWithTopBinCutOff:(float *)off
{
  v14[101] = *MEMORY[0x277D85DE8];
  bzero(v14, 0x328uLL);
  [self getBatteryLevelDurations:v14];
  v5 = [self log];
  v6 = [self percentageOfTimeForBatteryLevels:v14 withLog:v5];

  v7 = [v6 objectAtIndexedSubscript:3];
  [v7 floatValue];
  v9 = v8;

  v10 = 0;
  v11 = off + 1;
  while (v9 <= *(v11 - 1) || v9 > *v11)
  {
    ++v10;
    ++v11;
    if (v10 == 11)
    {
      v10 = 0;
      break;
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return v10;
}

+ (int64_t)currentBatteryLevelWithContext:(id)context
{
  v3 = MEMORY[0x277CFE338];
  contextCopy = context;
  keyPathForBatteryStateDataDictionary = [v3 keyPathForBatteryStateDataDictionary];
  v6 = [contextCopy objectForKeyedSubscript:keyPathForBatteryStateDataDictionary];

  batteryPercentageKey = [MEMORY[0x277CFE338] batteryPercentageKey];
  v8 = [v6 objectForKeyedSubscript:batteryPercentageKey];
  integerValue = [v8 integerValue];

  return integerValue;
}

+ (BOOL)isPluggedInWithContext:(id)context
{
  v3 = MEMORY[0x277CFE338];
  contextCopy = context;
  keyPathForBatteryStateDataDictionary = [v3 keyPathForBatteryStateDataDictionary];
  v6 = [contextCopy objectForKeyedSubscript:keyPathForBatteryStateDataDictionary];

  batteryExternalConnectedKey = [MEMORY[0x277CFE338] batteryExternalConnectedKey];
  v8 = [v6 objectForKeyedSubscript:batteryExternalConnectedKey];
  bOOLValue = [v8 BOOLValue];

  return bOOLValue;
}

+ (BOOL)deviceWasConnectedToChargerWithinSeconds:(double)seconds withContext:(id)context
{
  contextCopy = context;
  keyPathForBatteryStateDataDictionary = [MEMORY[0x277CFE338] keyPathForBatteryStateDataDictionary];
  v7 = [contextCopy objectForKeyedSubscript:keyPathForBatteryStateDataDictionary];

  batteryExternalConnectedKey = [MEMORY[0x277CFE338] batteryExternalConnectedKey];
  v9 = [v7 objectForKeyedSubscript:batteryExternalConnectedKey];
  bOOLValue = [v9 BOOLValue];

  if (bOOLValue)
  {
    batteryExternalConnectedChangeDateKey = [MEMORY[0x277CFE338] batteryExternalConnectedChangeDateKey];
    v12 = [v7 objectForKeyedSubscript:batteryExternalConnectedChangeDateKey];

    if (!v12)
    {
      keyPathForPluginStatus = [MEMORY[0x277CFE338] keyPathForPluginStatus];
      v12 = [contextCopy lastModifiedDateForContextualKeyPath:keyPathForPluginStatus];
    }

    date = [MEMORY[0x277CBEAA8] date];
    [date timeIntervalSinceDate:v12];
    v16 = v15;

    v17 = v16 < seconds && v16 > 0.0;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

+ (BOOL)deviceConnectedToWirelessChargerWithContext:(id)context
{
  v3 = MEMORY[0x277CFE338];
  contextCopy = context;
  keyPathForBatteryStateDataDictionary = [v3 keyPathForBatteryStateDataDictionary];
  v6 = [contextCopy objectForKeyedSubscript:keyPathForBatteryStateDataDictionary];

  batteryAdapterIsWirelessKey = [MEMORY[0x277CFE338] batteryAdapterIsWirelessKey];
  v8 = [v6 objectForKeyedSubscript:batteryAdapterIsWirelessKey];
  bOOLValue = [v8 BOOLValue];

  return bOOLValue;
}

+ (id)roundedDateFromDate:(id)date
{
  v3 = MEMORY[0x277CBEA80];
  dateCopy = date;
  currentCalendar = [v3 currentCalendar];
  v6 = [currentCalendar components:124 fromDate:dateCopy];

  v7 = (([v6 minute] / 30 + 1) * 30.0);
  [v6 setMinute:0];
  v8 = [currentCalendar dateFromComponents:v6];
  v9 = [v8 dateByAddingTimeInterval:(60 * v7)];

  return v9;
}

+ (id)dateFormatter
{
  if (dateFormatter_onceToken != -1)
  {
    +[PowerUISmartChargeUtilities dateFormatter];
  }

  v3 = dateFormatter_formatter;

  return v3;
}

uint64_t __44__PowerUISmartChargeUtilities_dateFormatter__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCA968]);
  v1 = dateFormatter_formatter;
  dateFormatter_formatter = v0;

  [dateFormatter_formatter setDateStyle:1];
  v2 = dateFormatter_formatter;

  return [v2 setTimeStyle:1];
}

+ (id)timeStringFromDate:(id)date
{
  dateCopy = date;
  v4 = +[PowerUISmartChargeUtilities dateFormatter];
  v5 = [v4 stringFromDate:dateCopy];

  return v5;
}

+ (BOOL)isWeekend:(id)weekend
{
  v3 = MEMORY[0x277CBEA80];
  weekendCopy = weekend;
  currentCalendar = [v3 currentCalendar];
  v6 = [currentCalendar isDateInWeekend:weekendCopy];

  return v6;
}

+ (id)numberForKey:(id)key fromDict:(id)dict withDefault:(int64_t)default
{
  keyCopy = key;
  if (keyCopy && dict)
  {
    v9 = [dict objectForKeyedSubscript:keyCopy];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v11 = v9;
    }

    else
    {
      v10 = [self log];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        +[PowerUISmartChargeUtilities numberForKey:fromDict:withDefault:];
      }

      v11 = [MEMORY[0x277CCABB0] numberWithInteger:default];
    }

    v13 = v11;
  }

  else
  {
    v12 = [self log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      +[PowerUISmartChargeUtilities numberForKey:fromDict:withDefault:];
    }

    v13 = [MEMORY[0x277CCABB0] numberWithInteger:default];
  }

  return v13;
}

+ (id)pluginEventsBefore:(id)before withMinimumDuration:(double)duration ignoringDisconnectsShorterThan:(double)than
{
  beforeCopy = before;
  v22 = os_transaction_create();
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__2;
  v38 = __Block_byref_object_dispose__2;
  array = [MEMORY[0x277CBEB18] array];
  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x3032000000;
  v32[3] = __Block_byref_object_copy__2;
  v32[4] = __Block_byref_object_dispose__2;
  v33 = 0;
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x3032000000;
  v30[3] = __Block_byref_object_copy__2;
  v30[4] = __Block_byref_object_dispose__2;
  v31 = 0;
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x3032000000;
  v28[3] = __Block_byref_object_copy__2;
  v28[4] = __Block_byref_object_dispose__2;
  v29 = 0;
  v7 = objc_alloc(MEMORY[0x277CF1A50]);
  v8 = [beforeCopy dateByAddingTimeInterval:-5184000.0];
  v9 = [v7 initWithStartDate:v8 endDate:beforeCopy maxEvents:0 lastN:0 reversed:0];

  v24 = BiomeLibrary();
  device = [v24 Device];
  power = [device Power];
  pluggedIn = [power PluggedIn];
  v13 = [pluggedIn publisherWithOptions:v9];
  v14 = BiomeLibrary();
  device2 = [v14 Device];
  timeZone = [device2 TimeZone];
  v17 = [timeZone publisherWithOptions:v9];
  v18 = [v13 orderedMergeWithOther:v17 comparator:&__block_literal_global_38];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __101__PowerUISmartChargeUtilities_pluginEventsBefore_withMinimumDuration_ignoringDisconnectsShorterThan___block_invoke_2;
  v27[3] = &__block_descriptor_40_e23_v16__0__BPSCompletion_8l;
  v27[4] = self;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __101__PowerUISmartChargeUtilities_pluginEventsBefore_withMinimumDuration_ignoringDisconnectsShorterThan___block_invoke_39;
  v26[3] = &unk_2782D4240;
  v26[4] = v28;
  v26[5] = v30;
  v26[6] = v32;
  v26[7] = &v34;
  *&v26[8] = than;
  *&v26[9] = duration;
  v19 = [v18 sinkWithCompletion:v27 receiveInput:v26];

  v20 = v35[5];
  _Block_object_dispose(v28, 8);

  _Block_object_dispose(v30, 8);
  _Block_object_dispose(v32, 8);

  _Block_object_dispose(&v34, 8);

  return v20;
}

uint64_t __101__PowerUISmartChargeUtilities_pluginEventsBefore_withMinimumDuration_ignoringDisconnectsShorterThan___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a3;
  [a2 timestamp];
  v6 = [v4 numberWithDouble:?];
  v7 = MEMORY[0x277CCABB0];
  [v5 timestamp];
  v9 = v8;

  v10 = [v7 numberWithDouble:v9];
  v11 = [v6 compare:v10];

  return v11;
}

void __101__PowerUISmartChargeUtilities_pluginEventsBefore_withMinimumDuration_ignoringDisconnectsShorterThan___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 state])
  {
    v4 = [*(a1 + 32) log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __101__PowerUISmartChargeUtilities_pluginEventsBefore_withMinimumDuration_ignoringDisconnectsShorterThan___block_invoke_2_cold_1(v3);
    }
  }
}

void __101__PowerUISmartChargeUtilities_pluginEventsBefore_withMinimumDuration_ignoringDisconnectsShorterThan___block_invoke_39(uint64_t a1, void *a2)
{
  v36 = a2;
  v3 = objc_autoreleasePoolPush();
  v4 = [v36 eventBody];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = *(*(a1 + 32) + 8);
    v7 = v36;
    v8 = *(v6 + 40);
    *(v6 + 40) = v7;
    goto LABEL_18;
  }

  v8 = v36;
  v9 = [v8 eventBody];
  if ([v9 starting])
  {
    v10 = *(*(*(a1 + 40) + 8) + 40);

    if (!v10)
    {
      v11 = *(*(a1 + 40) + 8);
      v12 = v8;
      v13 = *(v11 + 40);
      *(v11 + 40) = v12;
      goto LABEL_17;
    }
  }

  else
  {
  }

  v13 = [v8 eventBody];
  if (([v13 starting] & 1) == 0)
  {
    v14 = *(*(*(a1 + 40) + 8) + 40);

    if (!v14)
    {
      goto LABEL_18;
    }

    v15 = [*(*(*(a1 + 32) + 8) + 40) eventBody];
    v16 = 0.0;
    if ([v15 hasSecondsFromGMT])
    {
      v17 = [*(*(*(a1 + 32) + 8) + 40) eventBody];
      [v17 secondsFromGMT];
      v16 = v18;
    }

    v19 = MEMORY[0x277CBEAA8];
    [*(*(*(a1 + 40) + 8) + 40) timestamp];
    v13 = [v19 dateWithTimeIntervalSinceReferenceDate:v16 + v20];
    v21 = MEMORY[0x277CBEAA8];
    [v8 timestamp];
    v23 = [v21 dateWithTimeIntervalSinceReferenceDate:v16 + v22];
    v24 = *(*(*(a1 + 48) + 8) + 40);
    if (v24)
    {
      v25 = [v24 endDate];
      [v13 timeIntervalSinceDate:v25];
      v27 = v26;
      v28 = *(a1 + 64);

      if (v27 < v28)
      {
        [*(*(*(a1 + 56) + 8) + 40) removeObject:*(*(*(a1 + 48) + 8) + 40)];
        v29 = [*(*(*(a1 + 48) + 8) + 40) startDate];

        v13 = v29;
      }
    }

    v30 = [[PowerUIChargeSession alloc] initWithStartDate:v13 withEndDate:v23 withStartSoC:0 withEndSoC:0];
    v31 = *(*(a1 + 48) + 8);
    v32 = *(v31 + 40);
    *(v31 + 40) = v30;

    [v23 timeIntervalSinceDate:v13];
    if (v33 >= *(a1 + 72))
    {
      [*(*(*(a1 + 56) + 8) + 40) addObject:*(*(*(a1 + 48) + 8) + 40)];
    }

    v34 = *(*(a1 + 40) + 8);
    v35 = *(v34 + 40);
    *(v34 + 40) = 0;
  }

LABEL_17:

LABEL_18:
  objc_autoreleasePoolPop(v3);
}

+ (id)pluginEventsBefore:(id)before withMinimumDuration:(double)duration withMinimumPlugoutBatteryLevel:(double)level ignoringDisconnectsShorterThan:(double)than
{
  v53[2] = *MEMORY[0x277D85DE8];
  beforeCopy = before;
  v25 = os_transaction_create();
  v47 = 0;
  v48 = &v47;
  v49 = 0x3032000000;
  v50 = __Block_byref_object_copy__2;
  v51 = __Block_byref_object_dispose__2;
  array = [MEMORY[0x277CBEB18] array];
  v45[0] = 0;
  v45[1] = v45;
  v45[2] = 0x3032000000;
  v45[3] = __Block_byref_object_copy__2;
  v45[4] = __Block_byref_object_dispose__2;
  v46 = 0;
  v43[0] = 0;
  v43[1] = v43;
  v43[2] = 0x3032000000;
  v43[3] = __Block_byref_object_copy__2;
  v43[4] = __Block_byref_object_dispose__2;
  v44 = 0;
  v41[0] = 0;
  v41[1] = v41;
  v41[2] = 0x3032000000;
  v41[3] = __Block_byref_object_copy__2;
  v41[4] = __Block_byref_object_dispose__2;
  v42 = 0;
  v39[0] = 0;
  v39[1] = v39;
  v39[2] = 0x3032000000;
  v39[3] = __Block_byref_object_copy__2;
  v39[4] = __Block_byref_object_dispose__2;
  v40 = 0;
  v37[0] = 0;
  v37[1] = v37;
  v37[2] = 0x2020000000;
  v38 = -1;
  v9 = objc_alloc(MEMORY[0x277CF1A50]);
  v10 = [beforeCopy dateByAddingTimeInterval:-5184000.0];
  v11 = [v9 initWithStartDate:v10 endDate:beforeCopy maxEvents:0 lastN:0 reversed:0];

  v33 = BiomeLibrary();
  device = [v33 Device];
  power = [device Power];
  pluggedIn = [power PluggedIn];
  v27 = [pluggedIn publisherWithOptions:v11];
  v29 = BiomeLibrary();
  device2 = [v29 Device];
  timeZone = [device2 TimeZone];
  v13 = [timeZone publisherWithOptions:v11];
  v53[0] = v13;
  v14 = BiomeLibrary();
  device3 = [v14 Device];
  power2 = [device3 Power];
  batteryLevel = [power2 BatteryLevel];
  v18 = [batteryLevel publisherWithOptions:v11];
  v53[1] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:2];
  v20 = [v27 orderedMergeWithOthers:v19 comparator:&__block_literal_global_45];
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __132__PowerUISmartChargeUtilities_pluginEventsBefore_withMinimumDuration_withMinimumPlugoutBatteryLevel_ignoringDisconnectsShorterThan___block_invoke_2;
  v36[3] = &__block_descriptor_40_e23_v16__0__BPSCompletion_8l;
  v36[4] = self;
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __132__PowerUISmartChargeUtilities_pluginEventsBefore_withMinimumDuration_withMinimumPlugoutBatteryLevel_ignoringDisconnectsShorterThan___block_invoke_46;
  v35[3] = &unk_2782D4268;
  v35[4] = v39;
  v35[5] = v41;
  v35[6] = v43;
  v35[7] = v37;
  v35[8] = v45;
  v35[9] = &v47;
  *&v35[10] = than;
  *&v35[11] = duration;
  *&v35[12] = level;
  v35[13] = self;
  v21 = [v20 sinkWithCompletion:v36 receiveInput:v35];

  v22 = v48[5];
  _Block_object_dispose(v37, 8);
  _Block_object_dispose(v39, 8);

  _Block_object_dispose(v41, 8);
  _Block_object_dispose(v43, 8);

  _Block_object_dispose(v45, 8);
  _Block_object_dispose(&v47, 8);

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

uint64_t __132__PowerUISmartChargeUtilities_pluginEventsBefore_withMinimumDuration_withMinimumPlugoutBatteryLevel_ignoringDisconnectsShorterThan___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a3;
  [a2 timestamp];
  v6 = [v4 numberWithDouble:?];
  v7 = MEMORY[0x277CCABB0];
  [v5 timestamp];
  v9 = v8;

  v10 = [v7 numberWithDouble:v9];
  v11 = [v6 compare:v10];

  return v11;
}

void __132__PowerUISmartChargeUtilities_pluginEventsBefore_withMinimumDuration_withMinimumPlugoutBatteryLevel_ignoringDisconnectsShorterThan___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 state])
  {
    v4 = [*(a1 + 32) log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __101__PowerUISmartChargeUtilities_pluginEventsBefore_withMinimumDuration_ignoringDisconnectsShorterThan___block_invoke_2_cold_1(v3);
    }
  }
}

void __132__PowerUISmartChargeUtilities_pluginEventsBefore_withMinimumDuration_withMinimumPlugoutBatteryLevel_ignoringDisconnectsShorterThan___block_invoke_46(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = objc_autoreleasePoolPush();
  v6 = [v4 eventBody];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v9 = [v4 eventBody];
    objc_opt_class();
    v10 = objc_opt_isKindOfClass();

    if (v10)
    {
      v8 = *(a1 + 40);
      goto LABEL_5;
    }

    v11 = v4;
    v12 = [v11 eventBody];
    if ([v12 starting])
    {
      v13 = *(*(*(a1 + 48) + 8) + 40);

      if (!v13)
      {
        objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
        v14 = [*(*(*(a1 + 32) + 8) + 40) eventBody];
        [v14 batteryPercentage];
        *(*(*(a1 + 56) + 8) + 24) = v15;
        goto LABEL_11;
      }
    }

    else
    {
    }

    v14 = [v11 eventBody];
    if (([v14 starting] & 1) == 0)
    {
      v16 = *(*(*(a1 + 48) + 8) + 40);

      if (v16)
      {
        v17 = [*(*(*(a1 + 40) + 8) + 40) eventBody];
        v18 = 0.0;
        if ([v17 hasSecondsFromGMT])
        {
          v19 = [*(*(*(a1 + 40) + 8) + 40) eventBody];
          [v19 secondsFromGMT];
          v18 = v20;
        }

        v21 = MEMORY[0x277CBEAA8];
        [*(*(*(a1 + 48) + 8) + 40) timestamp];
        v23 = [v21 dateWithTimeIntervalSinceReferenceDate:v18 + v22];
        v24 = MEMORY[0x277CBEAA8];
        [v11 timestamp];
        v26 = [v24 dateWithTimeIntervalSinceReferenceDate:v18 + v25];
        v27 = *(*(*(a1 + 64) + 8) + 40);
        if (v27)
        {
          v28 = [v27 endDate];
          [v23 timeIntervalSinceDate:v28];
          v30 = v29;
          v31 = *(a1 + 80);

          if (v30 < v31)
          {
            [*(*(*(a1 + 72) + 8) + 40) removeObject:*(*(*(a1 + 64) + 8) + 40)];
            v32 = [*(*(*(a1 + 64) + 8) + 40) startDate];

            v33 = [*(*(*(a1 + 64) + 8) + 40) startSoC];
            *(*(*(a1 + 56) + 8) + 24) = [v33 intValue];

            v23 = v32;
          }
        }

        v34 = [PowerUIChargeSession alloc];
        v35 = [MEMORY[0x277CCABB0] numberWithInt:*(*(*(a1 + 56) + 8) + 24)];
        v36 = MEMORY[0x277CCABB0];
        v37 = [*(*(*(a1 + 32) + 8) + 40) eventBody];
        [v37 batteryPercentage];
        v38 = [v36 numberWithDouble:?];
        v39 = [(PowerUIChargeSession *)v34 initWithStartDate:v23 withEndDate:v26 withStartSoC:v35 withEndSoC:v38];
        v40 = *(*(a1 + 64) + 8);
        v41 = *(v40 + 40);
        *(v40 + 40) = v39;

        [v26 timeIntervalSinceDate:v23];
        if (v42 >= *(a1 + 88))
        {
          v43 = [*(*(*(a1 + 32) + 8) + 40) eventBody];
          [v43 batteryPercentage];
          v45 = v44;
          v46 = *(a1 + 96);

          if (v45 >= v46)
          {
            [*(*(*(a1 + 72) + 8) + 40) addObject:*(*(*(a1 + 64) + 8) + 40)];
            v47 = [*(a1 + 104) log];
            if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
            {
              __132__PowerUISmartChargeUtilities_pluginEventsBefore_withMinimumDuration_withMinimumPlugoutBatteryLevel_ignoringDisconnectsShorterThan___block_invoke_46_cold_1(a1 + 64, v47);
            }
          }
        }

        v48 = *(*(a1 + 48) + 8);
        v49 = *(v48 + 40);
        *(v48 + 40) = 0;

        *(*(*(a1 + 56) + 8) + 24) = -1;
      }

      goto LABEL_24;
    }

LABEL_11:

LABEL_24:
    goto LABEL_25;
  }

  v8 = *(a1 + 32);
LABEL_5:
  objc_storeStrong((*(v8 + 8) + 40), a2);
LABEL_25:
  objc_autoreleasePoolPop(v5);
}

+ (id)drainBetweenRelevantEventsFromDrainSessionInfo:(id)info
{
  v20 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v4 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = infoCopy;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v10 objectForKey:{@"drain_depth", v15}];

        if (v11)
        {
          v12 = [v10 objectForKeyedSubscript:@"drain_depth"];
          [v4 addObject:v12];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)curentDateStringFromDate:(id)date withFormat:(id)format
{
  v5 = MEMORY[0x277CCA968];
  formatCopy = format;
  dateCopy = date;
  v8 = objc_alloc_init(v5);
  [v8 setDateFormat:formatCopy];

  v9 = [v8 stringFromDate:dateCopy];

  return v9;
}

+ (id)drainSessionsInfoBetweenRelevantChargesBefore:(id)before withMinimumDuration:(double)duration
{
  v71[2] = *MEMORY[0x277D85DE8];
  beforeCopy = before;
  v24 = os_transaction_create();
  v25 = objc_opt_new();
  v65 = 0;
  v66 = &v65;
  v67 = 0x3032000000;
  v68 = __Block_byref_object_copy__2;
  v69 = __Block_byref_object_dispose__2;
  v70 = objc_opt_new();
  v61 = 0;
  v62 = &v61;
  v63 = 0x2020000000;
  v64 = 0;
  v59[0] = 0;
  v59[1] = v59;
  v59[2] = 0x2020000000;
  v60 = 0;
  v53 = 0;
  v54 = &v53;
  v55 = 0x3032000000;
  v56 = __Block_byref_object_copy__2;
  v57 = __Block_byref_object_dispose__2;
  v58 = 0;
  v51[0] = 0;
  v51[1] = v51;
  v51[2] = 0x3032000000;
  v51[3] = __Block_byref_object_copy__2;
  v51[4] = __Block_byref_object_dispose__2;
  v52 = 0;
  v49[0] = 0;
  v49[1] = v49;
  v49[2] = 0x3032000000;
  v49[3] = __Block_byref_object_copy__2;
  v49[4] = __Block_byref_object_dispose__2;
  v50 = 0;
  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = __Block_byref_object_copy__2;
  v47 = __Block_byref_object_dispose__2;
  v48 = 0;
  v41[0] = 0;
  v41[1] = v41;
  v41[2] = 0x3032000000;
  v41[3] = __Block_byref_object_copy__2;
  v41[4] = __Block_byref_object_dispose__2;
  v42 = 0;
  v39[0] = 0;
  v39[1] = v39;
  v39[2] = 0x3032000000;
  v39[3] = __Block_byref_object_copy__2;
  v39[4] = __Block_byref_object_dispose__2;
  v40 = 0;
  v37[0] = 0;
  v37[1] = v37;
  v37[2] = 0x3032000000;
  v37[3] = __Block_byref_object_copy__2;
  v37[4] = __Block_byref_object_dispose__2;
  v38 = 0;
  v5 = objc_alloc(MEMORY[0x277CF1A50]);
  v6 = [beforeCopy dateByAddingTimeInterval:-5184000.0];
  v34 = [v5 initWithStartDate:v6 endDate:beforeCopy maxEvents:0 lastN:0 reversed:0];

  v32 = BiomeLibrary();
  device = [v32 Device];
  power = [device Power];
  pluggedIn = [power PluggedIn];
  v26 = [pluggedIn publisherWithOptions:v34];
  v28 = BiomeLibrary();
  device2 = [v28 Device];
  power2 = [device2 Power];
  batteryLevel = [power2 BatteryLevel];
  v10 = [batteryLevel publisherWithOptions:v34];
  v71[0] = v10;
  v11 = BiomeLibrary();
  device3 = [v11 Device];
  timeZone = [device3 TimeZone];
  v14 = [timeZone publisherWithOptions:v34];
  v71[1] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v71 count:2];
  v16 = [v26 orderedMergeWithOthers:v15 comparator:&__block_literal_global_53];
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __97__PowerUISmartChargeUtilities_drainSessionsInfoBetweenRelevantChargesBefore_withMinimumDuration___block_invoke_2;
  v36[3] = &__block_descriptor_40_e23_v16__0__BPSCompletion_8l;
  v36[4] = self;
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __97__PowerUISmartChargeUtilities_drainSessionsInfoBetweenRelevantChargesBefore_withMinimumDuration___block_invoke_54;
  v35[3] = &unk_2782D4290;
  v35[4] = v37;
  v35[5] = &v53;
  v35[6] = &v61;
  v35[7] = &v43;
  v35[8] = v59;
  v35[9] = v39;
  v35[10] = v51;
  v35[11] = &v65;
  *&v35[14] = duration;
  v35[12] = v41;
  v35[13] = v49;
  v17 = [v16 sinkWithCompletion:v36 receiveInput:v35];

  if ([v66[5] count] && v54[5] && !v44[5] && v62[3] >= 1)
  {
    lastObject = [v66[5] lastObject];
    v19 = [MEMORY[0x277CCABB0] numberWithLong:v62[3]];
    [lastObject setObject:v19 forKeyedSubscript:@"drain_depth"];

    v20 = MEMORY[0x277CBEAA8];
    [v54[5] timestamp];
    v21 = [v20 dateWithTimeIntervalSinceReferenceDate:?];
    [lastObject setObject:v21 forKeyedSubscript:@"drain_end"];
  }

  [self mergeDrainSessionsInfo:v66[5] intoResult:v25];

  _Block_object_dispose(v37, 8);
  _Block_object_dispose(v39, 8);

  _Block_object_dispose(v41, 8);
  _Block_object_dispose(&v43, 8);

  _Block_object_dispose(v49, 8);
  _Block_object_dispose(v51, 8);

  _Block_object_dispose(&v53, 8);
  _Block_object_dispose(v59, 8);
  _Block_object_dispose(&v61, 8);
  _Block_object_dispose(&v65, 8);

  v22 = *MEMORY[0x277D85DE8];

  return v25;
}

uint64_t __97__PowerUISmartChargeUtilities_drainSessionsInfoBetweenRelevantChargesBefore_withMinimumDuration___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a3;
  [a2 timestamp];
  v6 = [v4 numberWithDouble:?];
  v7 = MEMORY[0x277CCABB0];
  [v5 timestamp];
  v9 = v8;

  v10 = [v7 numberWithDouble:v9];
  v11 = [v6 compare:v10];

  return v11;
}

void __97__PowerUISmartChargeUtilities_drainSessionsInfoBetweenRelevantChargesBefore_withMinimumDuration___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 state])
  {
    v4 = [*(a1 + 32) log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __97__PowerUISmartChargeUtilities_drainSessionsInfoBetweenRelevantChargesBefore_withMinimumDuration___block_invoke_2_cold_1(v3);
    }
  }
}

void __97__PowerUISmartChargeUtilities_drainSessionsInfoBetweenRelevantChargesBefore_withMinimumDuration___block_invoke_54(uint64_t a1, void *a2)
{
  v72 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = [v72 eventBody];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = *(*(a1 + 32) + 8);
    v8 = v72;
    v9 = *(v7 + 40);
    *(v7 + 40) = v8;
LABEL_3:

    goto LABEL_4;
  }

  v10 = [v72 eventBody];
  objc_opt_class();
  v11 = objc_opt_isKindOfClass();

  if (v11)
  {
    v9 = v72;
    v12 = *(a1 + 40);
    v13 = *(*(v12 + 8) + 40);
    if (v13)
    {
      v14 = [v13 eventBody];
      [v14 batteryPercentage];
      v16 = v15;
      v17 = [v9 eventBody];
      [v17 batteryPercentage];
      v19 = v18;

      v12 = *(a1 + 40);
      if (v16 > v19)
      {
        v20 = [*(*(v12 + 8) + 40) eventBody];
        [v20 batteryPercentage];
        v22 = v21;
        v23 = [v9 eventBody];
        [v23 batteryPercentage];
        *(*(*(a1 + 48) + 8) + 24) = (v22 - v24 + *(*(*(a1 + 48) + 8) + 24));

        v12 = *(a1 + 40);
      }
    }

    objc_storeStrong((*(v12 + 8) + 40), a2);
    if (*(*(*(a1 + 56) + 8) + 40))
    {
      v25 = [*(*(*(a1 + 40) + 8) + 40) eventBody];
      [v25 batteryPercentage];
      v27 = v26;

      if (v27 >= 80.0)
      {
        *(*(*(a1 + 64) + 8) + 24) = 1;
      }
    }

    goto LABEL_3;
  }

  if (*(*(*(a1 + 40) + 8) + 40))
  {
    objc_storeStrong((*(*(a1 + 72) + 8) + 40), a2);
    if (!*(*(*(a1 + 56) + 8) + 40))
    {
      v61 = [*(*(*(a1 + 72) + 8) + 40) eventBody];
      v62 = [v61 starting];

      v63 = *(a1 + 56);
      if (v62)
      {
        objc_storeStrong((*(v63 + 8) + 40), *(*(*(a1 + 72) + 8) + 40));
        objc_storeStrong((*(*(a1 + 80) + 8) + 40), *(*(*(a1 + 40) + 8) + 40));
        if ([*(*(*(a1 + 88) + 8) + 40) count])
        {
          v9 = [*(*(*(a1 + 88) + 8) + 40) lastObject];
          v64 = [MEMORY[0x277CCABB0] numberWithLong:*(*(*(a1 + 48) + 8) + 24)];
          [v9 setObject:v64 forKeyedSubscript:@"drain_depth"];

          v65 = [*(*(*(a1 + 32) + 8) + 40) eventBody];
          v66 = 0.0;
          if ([v65 hasSecondsFromGMT])
          {
            v67 = [*(*(*(a1 + 32) + 8) + 40) eventBody];
            [v67 secondsFromGMT];
            v66 = v68;
          }

          v69 = MEMORY[0x277CBEAA8];
          [*(*(*(a1 + 40) + 8) + 40) timestamp];
          v71 = [v69 dateWithTimeIntervalSinceReferenceDate:v66 + v70];
          [v9 setObject:v71 forKeyedSubscript:@"drain_end"];

          goto LABEL_3;
        }

        goto LABEL_4;
      }

      if (!*(*(v63 + 8) + 40))
      {
        goto LABEL_4;
      }
    }

    v28 = [*(*(*(a1 + 72) + 8) + 40) eventBody];
    v29 = [v28 starting];

    if ((v29 & 1) == 0)
    {
      objc_storeStrong((*(*(a1 + 96) + 8) + 40), *(*(*(a1 + 72) + 8) + 40));
      v30 = [*(*(*(a1 + 32) + 8) + 40) eventBody];
      v31 = 0.0;
      if ([v30 hasSecondsFromGMT])
      {
        v32 = [*(*(*(a1 + 32) + 8) + 40) eventBody];
        [v32 secondsFromGMT];
        v31 = v33;
      }

      v34 = MEMORY[0x277CBEAA8];
      [*(*(*(a1 + 56) + 8) + 40) timestamp];
      v9 = [v34 dateWithTimeIntervalSinceReferenceDate:v31 + v35];
      v36 = MEMORY[0x277CBEAA8];
      [*(*(*(a1 + 96) + 8) + 40) timestamp];
      v38 = [v36 dateWithTimeIntervalSinceReferenceDate:v31 + v37];
      [v38 timeIntervalSinceDate:v9];
      if (v39 >= *(a1 + 112))
      {
        objc_storeStrong((*(*(a1 + 104) + 8) + 40), *(*(*(a1 + 40) + 8) + 40));
        v40 = objc_opt_new();
        [v40 setObject:v9 forKeyedSubscript:@"start"];
        [v40 setObject:v38 forKeyedSubscript:@"end"];
        v41 = MEMORY[0x277CCABB0];
        [v38 timeIntervalSinceDate:v9];
        v42 = [v41 numberWithDouble:?];
        [v40 setObject:v42 forKeyedSubscript:@"charge_duration"];

        v43 = MEMORY[0x277CCABB0];
        v44 = [*(*(*(a1 + 40) + 8) + 40) eventBody];
        [v44 batteryPercentage];
        v45 = [v43 numberWithDouble:?];
        [v40 setObject:v45 forKeyedSubscript:@"charge_end_soc"];

        v46 = MEMORY[0x277CCABB0];
        v47 = [*(*(*(a1 + 80) + 8) + 40) eventBody];
        [v47 batteryPercentage];
        v48 = [v46 numberWithDouble:?];
        [v40 setObject:v48 forKeyedSubscript:@"charge_start_soc"];

        [v40 setObject:&unk_282D4E1A0 forKeyedSubscript:@"drain_depth"];
        [v40 setObject:&unk_282D4E1A0 forKeyedSubscript:@"drain_duration"];
        v49 = [MEMORY[0x277CCABB0] numberWithBool:*(*(*(a1 + 64) + 8) + 24)];
        [v40 setObject:v49 forKeyedSubscript:@"relevant_charge_session"];

        v50 = [*(*(*(a1 + 80) + 8) + 40) eventBody];
        [v50 batteryPercentage];
        v52 = v51;

        if (v52 <= 0.0)
        {
          [v40 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"relevant_charge_session"];
        }

        [*(*(*(a1 + 88) + 8) + 40) addObject:v40];
      }

      *(*(*(a1 + 48) + 8) + 24) = 0;
      v53 = *(*(a1 + 56) + 8);
      v54 = *(v53 + 40);
      *(v53 + 40) = 0;

      v55 = *(*(a1 + 96) + 8);
      v56 = *(v55 + 40);
      *(v55 + 40) = 0;

      v57 = *(*(a1 + 80) + 8);
      v58 = *(v57 + 40);
      *(v57 + 40) = 0;

      v59 = *(*(a1 + 104) + 8);
      v60 = *(v59 + 40);
      *(v59 + 40) = 0;

      *(*(*(a1 + 64) + 8) + 24) = 0;
      goto LABEL_3;
    }
  }

LABEL_4:
  objc_autoreleasePoolPop(v4);
}

+ (void)mergeDrainSessionsInfo:(id)info intoResult:(id)result
{
  infoCopy = info;
  resultCopy = result;
  v68 = objc_opt_new();
  if ([infoCopy count])
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = v7;
      v9 = [infoCopy objectAtIndexedSubscript:{v5, resultCopy}];
      v7 = [v9 mutableCopy];

      v10 = [v7 objectForKeyedSubscript:@"relevant_charge_session"];
      bOOLValue = [v10 BOOLValue];

      v12 = v6;
      if ([infoCopy count] > v6)
      {
        v13 = infoCopy;
        while (1)
        {
          v14 = [v13 objectAtIndexedSubscript:v12];
          v15 = [v14 objectForKeyedSubscript:@"drain_depth"];
          integerValue = [v15 integerValue];

          if (integerValue)
          {
            break;
          }

          v17 = [infoCopy objectAtIndexedSubscript:v12];
          v18 = [v17 objectForKeyedSubscript:@"relevant_charge_session"];
          bOOLValue |= [v18 BOOLValue];

          ++v12;
          ++v6;
          v19 = [infoCopy count] > v12;
          v13 = infoCopy;
          if (!v19)
          {
            goto LABEL_9;
          }
        }
      }

      v13 = infoCopy;
LABEL_9:
      if ([v13 count] <= v12)
      {
        break;
      }

      v20 = [infoCopy objectAtIndexedSubscript:v12];
      v21 = [v20 objectForKeyedSubscript:@"charge_end_soc"];
      [v7 setObject:v21 forKeyedSubscript:@"charge_end_soc"];

      v22 = [infoCopy objectAtIndexedSubscript:v12];
      v23 = [v22 objectForKeyedSubscript:@"end"];
      [v7 setObject:v23 forKeyedSubscript:@"end"];

      v24 = MEMORY[0x277CCABB0];
      v25 = [v7 objectForKeyedSubscript:@"end"];
      v26 = [v7 objectForKeyedSubscript:@"start"];
      [v25 timeIntervalSinceDate:v26];
      v27 = [v24 numberWithDouble:?];
      [v7 setObject:v27 forKeyedSubscript:@"charge_duration"];

      v28 = [infoCopy objectAtIndexedSubscript:v12];
      v29 = [v28 objectForKeyedSubscript:@"drain_depth"];
      [v7 setObject:v29 forKeyedSubscript:@"drain_depth"];

      v30 = [infoCopy objectAtIndexedSubscript:v12];
      v31 = [v30 objectForKeyedSubscript:@"drain_end"];
      [v7 setObject:v31 forKeyedSubscript:@"drain_end"];

      v32 = [MEMORY[0x277CCABB0] numberWithBool:bOOLValue & 1];
      [v7 setObject:v32 forKeyedSubscript:@"relevant_charge_session"];

      [v68 addObject:v7];
      v5 = ++v6;
    }

    while ([infoCopy count] > v6);
  }

  else
  {
    v7 = 0;
  }

  if (![v68 count])
  {
    v60 = v7;
    goto LABEL_28;
  }

  v33 = 0;
  v34 = 0;
  v35 = @"drain_depth";
  do
  {
    v36 = [v68 objectAtIndexedSubscript:v33];
    v37 = [v36 mutableCopy];

    v38 = [v37 objectForKeyedSubscript:v35];
    integerValue2 = [v38 integerValue];

    v66 = v37;
    v40 = [v37 objectForKeyedSubscript:@"drain_end"];
    v41 = v34 + 1;
    v33 = v41;
    if ([v68 count] <= v41)
    {
      v55 = v41;
      v56 = 0.0;
      goto LABEL_25;
    }

    v42 = 0;
    while (1)
    {
      v43 = [v68 objectAtIndexedSubscript:v33];
      v44 = [v43 objectForKeyedSubscript:@"relevant_charge_session"];
      if (([v44 BOOLValue] & 1) == 0)
      {

        goto LABEL_21;
      }

      [v68 objectAtIndexedSubscript:v33];
      v46 = v45 = v35;
      v47 = [v46 objectForKeyedSubscript:@"charge_start_soc"];
      v48 = v40;
      integerValue3 = [v47 integerValue];

      v35 = v45;
      v19 = integerValue3 <= 0;
      v40 = v48;
      if (!v19)
      {
        break;
      }

LABEL_21:
      v50 = [v68 objectAtIndexedSubscript:v33];
      v51 = [v50 objectForKeyedSubscript:v35];
      integerValue2 += [v51 integerValue];

      v52 = [v68 objectAtIndexedSubscript:v33];
      v57 = [v52 objectForKeyedSubscript:@"drain_end"];

      v53 = [v68 objectAtIndexedSubscript:v33];
      v54 = [v53 objectForKeyedSubscript:@"charge_duration"];
      v42 += [v54 integerValue];

      ++v33;
      v40 = v57;
      if ([v68 count] <= v33)
      {
        goto LABEL_24;
      }
    }

    v57 = v48;
LABEL_24:
    v55 = v33;
    v33 = v33;
    v56 = v42;
    v40 = v57;
LABEL_25:
    v58 = [MEMORY[0x277CCABB0] numberWithLong:integerValue2];
    [v66 setObject:v58 forKeyedSubscript:v35];

    [v66 setObject:v40 forKeyedSubscript:@"drain_end"];
    v59 = MEMORY[0x277CCABB0];
    v60 = v66;
    v61 = [v66 objectForKeyedSubscript:@"end"];
    [v40 timeIntervalSinceDate:v61];
    v63 = [v59 numberWithDouble:v62 - v56];
    [v66 setObject:v63 forKeyedSubscript:@"drain_duration"];

    [v65 addObject:v66];
    v7 = v66;
    v34 = v55;
  }

  while ([v68 count] > v33);
LABEL_28:
}

+ (double)timestampOfFirstEventReachingBatteryLevel:(int)level betweenStartTime:(id)time andEndTime:(id)endTime
{
  timeCopy = time;
  endTimeCopy = endTime;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v9 = [objc_alloc(MEMORY[0x277CF1A50]) initWithStartDate:timeCopy endDate:endTimeCopy maxEvents:0 lastN:0 reversed:0];
  v10 = BiomeLibrary();
  device = [v10 Device];
  power = [device Power];
  batteryLevel = [power BatteryLevel];
  v14 = [batteryLevel publisherWithOptions:v9];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __101__PowerUISmartChargeUtilities_timestampOfFirstEventReachingBatteryLevel_betweenStartTime_andEndTime___block_invoke;
  v23[3] = &__block_descriptor_36_e22_B16__0__BMStoreEvent_8l;
  levelCopy = level;
  v15 = [v14 filterWithIsIncluded:v23];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __101__PowerUISmartChargeUtilities_timestampOfFirstEventReachingBatteryLevel_betweenStartTime_andEndTime___block_invoke_2;
  v22[3] = &__block_descriptor_40_e23_v16__0__BPSCompletion_8l;
  v22[4] = self;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __101__PowerUISmartChargeUtilities_timestampOfFirstEventReachingBatteryLevel_betweenStartTime_andEndTime___block_invoke_82;
  v20[3] = &unk_2782D42D8;
  levelCopy2 = level;
  v20[4] = &v25;
  v16 = [v15 sinkWithCompletion:v22 shouldContinue:v20];

  v17 = v26[3];
  _Block_object_dispose(&v25, 8);

  return v17;
}

BOOL __101__PowerUISmartChargeUtilities_timestampOfFirstEventReachingBatteryLevel_betweenStartTime_andEndTime___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 eventBody];
  [v3 batteryPercentage];
  v5 = v4 >= *(a1 + 32);

  return v5;
}

void __101__PowerUISmartChargeUtilities_timestampOfFirstEventReachingBatteryLevel_betweenStartTime_andEndTime___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 state])
  {
    v4 = [*(a1 + 32) log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __101__PowerUISmartChargeUtilities_timestampOfFirstEventReachingBatteryLevel_betweenStartTime_andEndTime___block_invoke_2_cold_1(v3);
    }
  }
}

BOOL __101__PowerUISmartChargeUtilities_timestampOfFirstEventReachingBatteryLevel_betweenStartTime_andEndTime___block_invoke_82(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 eventBody];
  [v4 batteryPercentage];
  v6 = v5;
  v7 = *(a1 + 40);

  if (v6 >= v7)
  {
    [v3 timestamp];
    *(*(*(a1 + 32) + 8) + 24) = v8;
  }

  return v6 < v7;
}

+ (id)historicalFullChargeDurationStartingAt:(int)at withMinimumPluginDuration:(int)duration
{
  v35 = *MEMORY[0x277D85DE8];
  if (at > 79)
  {
    v27 = 0;
    v28 = &v27;
    v29 = 0x3032000000;
    v30 = __Block_byref_object_copy__2;
    v31 = __Block_byref_object_dispose__2;
    array = [MEMORY[0x277CBEB18] array];
    v9 = objc_autoreleasePoolPush();
    v26[0] = 0;
    v26[1] = v26;
    v26[2] = 0x2020000000;
    v26[3] = 0;
    v25[0] = 0;
    v25[1] = v25;
    v25[2] = 0x2020000000;
    v25[3] = 0;
    v10 = BiomeLibrary();
    device = [v10 Device];
    charging = [device Charging];
    smartCharging = [charging SmartCharging];
    publisher = [smartCharging publisher];
    v15 = [publisher filterWithIsIncluded:&__block_literal_global_84];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __96__PowerUISmartChargeUtilities_historicalFullChargeDurationStartingAt_withMinimumPluginDuration___block_invoke_2;
    v24[3] = &__block_descriptor_40_e23_v16__0__BPSCompletion_8l;
    v24[4] = self;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __96__PowerUISmartChargeUtilities_historicalFullChargeDurationStartingAt_withMinimumPluginDuration___block_invoke_85;
    v21[3] = &unk_2782D4300;
    v21[4] = v26;
    v21[5] = v25;
    atCopy = at;
    durationCopy = duration;
    v21[6] = &v27;
    v16 = [v15 sinkWithCompletion:v24 receiveInput:v21];

    v17 = [self log];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = v28[5];
      *buf = 138412290;
      v34 = v18;
      _os_log_impl(&dword_21B766000, v17, OS_LOG_TYPE_DEFAULT, "historical80to100Time durations: %@", buf, 0xCu);
    }

    _Block_object_dispose(v25, 8);
    _Block_object_dispose(v26, 8);
    objc_autoreleasePoolPop(v9);
    v6 = [MEMORY[0x277CBEA60] arrayWithArray:v28[5]];
    _Block_object_dispose(&v27, 8);
  }

  else
  {
    v5 = [self log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      +[PowerUISmartChargeUtilities historicalFullChargeDurationStartingAt:withMinimumPluginDuration:];
    }

    v6 = MEMORY[0x277CBEBF8];
  }

  v19 = *MEMORY[0x277D85DE8];

  return v6;
}

BOOL __96__PowerUISmartChargeUtilities_historicalFullChargeDurationStartingAt_withMinimumPluginDuration___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 eventBody];
  if ([v3 obcEvent] == 6)
  {
    v4 = 1;
  }

  else
  {
    v5 = [v2 eventBody];
    if ([v5 obcEvent] == 12)
    {
      v4 = 1;
    }

    else
    {
      v6 = [v2 eventBody];
      if ([v6 obcEvent] == 7)
      {
        v4 = 1;
      }

      else
      {
        v7 = [v2 eventBody];
        if ([v7 obcEvent] == 9)
        {
          v4 = 1;
        }

        else
        {
          v8 = [v2 eventBody];
          v4 = [v8 obcEvent] == 10;
        }
      }
    }
  }

  return v4;
}

void __96__PowerUISmartChargeUtilities_historicalFullChargeDurationStartingAt_withMinimumPluginDuration___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 state])
  {
    v4 = [*(a1 + 32) log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __96__PowerUISmartChargeUtilities_historicalFullChargeDurationStartingAt_withMinimumPluginDuration___block_invoke_2_cold_1(v3);
    }
  }
}

void __96__PowerUISmartChargeUtilities_historicalFullChargeDurationStartingAt_withMinimumPluginDuration___block_invoke_85(uint64_t a1, void *a2)
{
  v31 = a2;
  v3 = [v31 eventBody];
  v4 = [v3 obcEvent];

  if (v4 == 12)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    v5 = *(a1 + 40);
LABEL_3:
    *(*(v5 + 8) + 24) = 0;
    goto LABEL_12;
  }

  v6 = [v31 eventBody];
  v7 = [v6 obcEvent];

  v8 = [v31 eventBody];
  v9 = v8;
  if (v7 == 6)
  {
    v10 = [v8 batteryLevel];
    v11 = *(a1 + 56);

    if (v10 > v11)
    {
      goto LABEL_12;
    }

    [v31 timestamp];
    v13 = *(a1 + 40);
    goto LABEL_11;
  }

  if ([v8 obcEvent] == 7)
  {

    v14 = v31;
LABEL_10:
    [v14 timestamp];
    v13 = *(a1 + 32);
LABEL_11:
    *(*(v13 + 8) + 24) = v12;
    goto LABEL_12;
  }

  v15 = [v31 eventBody];
  v16 = [v15 obcEvent];

  v14 = v31;
  if (v16 == 9)
  {
    goto LABEL_10;
  }

  v17 = [v31 eventBody];
  if ([v17 obcEvent] != 10)
  {
    goto LABEL_24;
  }

  v18 = [v31 eventBody];
  if ([v18 batteryLevel] != 100 || *(*(*(a1 + 32) + 8) + 24) == 0.0)
  {

LABEL_24:
    goto LABEL_12;
  }

  v19 = *(*(*(a1 + 40) + 8) + 24);

  if (v19 != 0.0)
  {
    v20 = *(a1 + 56);
    v21 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:*(*(*(a1 + 32) + 8) + 24)];
    v22 = MEMORY[0x277CBEAA8];
    [v31 timestamp];
    v23 = [v22 dateWithTimeIntervalSinceReferenceDate:?];
    [PowerUISmartChargeUtilities timestampOfFirstEventReachingBatteryLevel:v20 betweenStartTime:v21 andEndTime:v23];
    v25 = v24;

    if (v25 > 0.0)
    {
      [v31 timestamp];
      if (v26 - *(*(*(a1 + 40) + 8) + 24) > *(a1 + 60))
      {
        v27 = *(*(*(a1 + 48) + 8) + 40);
        v28 = MEMORY[0x277CCABB0];
        [v31 timestamp];
        v30 = [v28 numberWithDouble:v29 - v25];
        [v27 addObject:v30];
      }
    }

    *(*(*(a1 + 40) + 8) + 24) = 0;
    v5 = *(a1 + 32);
    goto LABEL_3;
  }

LABEL_12:
}

+ (double)cachedHistorical80ToFullDuration
{
  if (cachedHistorical80ToFullDuration_onceToken != -1)
  {
    +[PowerUISmartChargeUtilities cachedHistorical80ToFullDuration];
  }

  return *&cachedHistorical80ToFullDuration_eightyToFullDuration;
}

void __63__PowerUISmartChargeUtilities_cachedHistorical80ToFullDuration__block_invoke()
{
  v4 = [PowerUISmartChargeUtilities historicalFullChargeDurationStartingAt:80 withMinimumPluginDuration:300];
  if ([v4 count] < 3)
  {
    v2 = v4;
  }

  else
  {
    v0 = [v4 sortedArrayUsingSelector:sel_compare_];
    v1 = [v0 subarrayWithRange:{1, objc_msgSend(v0, "count") - 2}];

    v2 = v1;
  }

  v5 = v2;
  [v2 percentile:0.9];
  *&cachedHistorical80ToFullDuration_eightyToFullDuration = v3 / 60.0;
}

+ (id)batteryProperties
{
  v2 = *MEMORY[0x277CD28A0];
  v3 = IOServiceMatching("IOPMPowerSource");
  MatchingService = IOServiceGetMatchingService(v2, v3);
  if (MatchingService)
  {
    v5 = MatchingService;
    properties = 0;
    IORegistryEntryCreateCFProperties(MatchingService, &properties, *MEMORY[0x277CBECE8], 0);
    v6 = properties;
    v7 = [(__CFDictionary *)properties copy];

    IOObjectRelease(v5);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)concatenateChargeSessions:(id)sessions withMaxDeltaSecondsBetweenEvents:(unint64_t)events
{
  v46 = *MEMORY[0x277D85DE8];
  sessionsCopy = sessions;
  if ([sessionsCopy count] > 1)
  {
    selfCopy = self;
    reverseObjectEnumerator = [sessionsCopy reverseObjectEnumerator];
    allObjects = [reverseObjectEnumerator allObjects];

    array = [MEMORY[0x277CBEB18] array];
    v8 = [allObjects count];
    LODWORD(v9) = v8 - 1;
    if (v8 >= 2)
    {
      do
      {
        v10 = v9;
        do
        {
          v11 = [allObjects objectAtIndexedSubscript:v10];
          null = [MEMORY[0x277CBEB68] null];
          if ([v11 isEqual:null])
          {

            v13 = v10;
          }

          else
          {
            v14 = [allObjects objectAtIndexedSubscript:v10];

            v13 = v10;
            if (v14)
            {
              goto LABEL_10;
            }
          }

          --v10;
        }

        while (v13 > 0);
        LODWORD(v10) = -1;
LABEL_10:
        LODWORD(v9) = v10 - 1;
        if (v10 < 1)
        {
LABEL_18:
          if ((v9 & 0x80000000) == 0)
          {
            v9 = v9;
            while (1)
            {
              v19 = [allObjects objectAtIndexedSubscript:v9];
              startDate = [v19 startDate];
              v21 = [allObjects objectAtIndexedSubscript:v9 + 1];
              endDate = [v21 endDate];
              [startDate timeIntervalSinceDate:endDate];
              v24 = v23;
              v25 = v23 >= 0 ? v24 : -v24;

              if (v25 > events)
              {
                break;
              }

              v18 = v9-- <= 0;
              if (v18)
              {
                goto LABEL_26;
              }
            }
          }
        }

        else
        {
          v9 = (v10 - 1);
          do
          {
            v15 = [allObjects objectAtIndexedSubscript:v9];
            null2 = [MEMORY[0x277CBEB68] null];
            if ([v15 isEqual:null2])
            {
            }

            else
            {
              v17 = [allObjects objectAtIndexedSubscript:v9];

              if (v17)
              {
                goto LABEL_18;
              }
            }

            v18 = v9-- <= 0;
          }

          while (!v18);
LABEL_26:
          LODWORD(v9) = -1;
        }

        if (v9 >= v10 - 1)
        {
          v32 = [allObjects objectAtIndexedSubscript:v10];
          LODWORD(v9) = v10 - 1;
        }

        else
        {
          v40 = [PowerUIChargeSession alloc];
          v41 = [allObjects objectAtIndexedSubscript:v10];
          startDate2 = [v41 startDate];
          v26 = [allObjects objectAtIndexedSubscript:v9 + 1];
          endDate2 = [v26 endDate];
          v28 = [allObjects objectAtIndexedSubscript:v10];
          startSoC = [v28 startSoC];
          v30 = [allObjects objectAtIndexedSubscript:v9 + 1];
          endSoC = [v30 endSoC];
          v32 = [(PowerUIChargeSession *)v40 initWithStartDate:startDate2 withEndDate:endDate2 withStartSoC:startSoC withEndSoC:endSoC];
        }

        [array addObject:v32];
      }

      while (v9 > 0);
    }

    if (!v9)
    {
      v33 = [allObjects objectAtIndexedSubscript:0];
      [array addObject:v33];
    }

    v34 = [selfCopy log];
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v35 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(allObjects, "count") - objc_msgSend(array, "count")}];
      *buf = 138412290;
      v45 = v35;
      _os_log_impl(&dword_21B766000, v34, OS_LOG_TYPE_DEFAULT, "Concatenated %@ events", buf, 0xCu);
    }
  }

  else
  {
    allObjects = sessionsCopy;
    array = allObjects;
  }

  v36 = *MEMORY[0x277D85DE8];

  return array;
}

+ (id)recentEngagementHistory
{
  v40[10] = *MEMORY[0x277D85DE8];
  v38 = [MEMORY[0x277CBEAA8] now];
  v2 = +[PowerUIAnalyticsManager sharedInstance];
  v3 = [v38 dateByAddingTimeInterval:-86400.0];
  v37 = v2;
  v4 = [v2 chargingStatisticsFrom:v38 to:v3];

  v5 = [v38 dateByAddingTimeInterval:-259200.0];
  v6 = [v2 chargingStatisticsFrom:v38 to:v5];

  v7 = [v4 objectForKeyedSubscript:@"numberUnderCharges"];
  v8 = [v7 intValue] > 0;

  v9 = [v4 objectForKeyedSubscript:@"totalTempDisableEvents"];
  v10 = [v9 intValue] > 0;

  v11 = [v4 objectForKeyedSubscript:@"numberChargeSessionsReachingTargetSoC"];
  v34 = [v11 intValue] > 0;

  v36 = v4;
  v12 = [v4 objectForKeyedSubscript:@"DEoCCount"];
  v13 = [v12 intValue] > 0;

  v14 = [v6 objectForKeyedSubscript:@"numberUnderCharges"];
  v33 = [v14 intValue] > 0;

  v15 = [v6 objectForKeyedSubscript:@"totalTempDisableEvents"];
  v31 = [v15 intValue] > 0;

  v16 = [v6 objectForKeyedSubscript:@"numberChargeSessionsReachingTargetSoC"];
  v30 = [v16 intValue] > 0;

  v17 = [v6 objectForKeyedSubscript:@"DEoCCount"];
  v18 = [v17 intValue] > 0;

  v39[0] = @"LastDayEngagement";
  v35 = [v36 objectForKeyedSubscript:@"sawEngagement"];
  v40[0] = v35;
  v39[1] = @"LastDayDEoCEngagement";
  v32 = [MEMORY[0x277CCABB0] numberWithBool:v13];
  v40[1] = v32;
  v39[2] = @"LastDayInterrupted";
  v19 = [MEMORY[0x277CCABB0] numberWithBool:v8];
  v40[2] = v19;
  v39[3] = @"LastDayOverride";
  v20 = [MEMORY[0x277CCABB0] numberWithBool:v10];
  v40[3] = v20;
  v39[4] = @"LastDayFullyCharged";
  v21 = [MEMORY[0x277CCABB0] numberWithBool:v34];
  v40[4] = v21;
  v39[5] = @"LastThreeEngagement";
  v22 = [v6 objectForKeyedSubscript:@"sawEngagement"];
  v40[5] = v22;
  v39[6] = @"LastThreeDEoCEngagement";
  v23 = [MEMORY[0x277CCABB0] numberWithBool:v18];
  v40[6] = v23;
  v39[7] = @"LastThreeInterrupted";
  v24 = [MEMORY[0x277CCABB0] numberWithBool:v33];
  v40[7] = v24;
  v39[8] = @"LastThreeOverride";
  v25 = [MEMORY[0x277CCABB0] numberWithBool:v31];
  v40[8] = v25;
  v39[9] = @"LastThreeFullyCharged";
  v26 = [MEMORY[0x277CCABB0] numberWithBool:v30];
  v40[9] = v26;
  v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:v39 count:10];

  v28 = *MEMORY[0x277D85DE8];

  return v27;
}

+ (id)filterChargeSessions:(id)sessions startsBefore:(id)before dynamicallyAroundDate:(id)date withinSeconds:(unint64_t)seconds
{
  sessionsCopy = sessions;
  v10 = MEMORY[0x277CBEB18];
  dateCopy = date;
  beforeCopy = before;
  array = [v10 array];
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  timeZone = [currentCalendar timeZone];
  v15 = [dateCopy dateByAddingTimeInterval:{objc_msgSend(timeZone, "secondsFromGMT")}];

  timeZone2 = [currentCalendar timeZone];
  v17 = [beforeCopy dateByAddingTimeInterval:{objc_msgSend(timeZone2, "secondsFromGMT")}];

  v37 = v15;
  [currentCalendar components:96 fromDate:v15];
  v36 = v41 = currentCalendar;
  v18 = [currentCalendar dateFromComponents:?];
  v38 = [v18 dateByAddingTimeInterval:86400.0];
  if ([sessionsCopy count])
  {
    v19 = 0;
    secondsCopy = seconds;
    v39 = v17;
    do
    {
      v21 = objc_autoreleasePoolPush();
      v22 = [sessionsCopy objectAtIndexedSubscript:v19];
      startDate = [v22 startDate];

      if (v19)
      {
        v24 = [sessionsCopy objectAtIndexedSubscript:v19 - 1];
        endDate = [v24 endDate];
      }

      else
      {
        endDate = [MEMORY[0x277CBEAA8] distantPast];
      }

      [startDate timeIntervalSinceDate:endDate];
      if (v26 >= 0.0)
      {
        [startDate timeIntervalSinceDate:v17];
        if (v27 < 0.0)
        {
          v28 = [v41 components:96 fromDate:startDate];
          v29 = [v41 dateFromComponents:v28];
          v30 = [v29 dateByAddingTimeInterval:86400.0];
          [v29 timeIntervalSinceDate:v18];
          if (v31 < 0.0)
          {
            v31 = -v31;
          }

          if (v31 < secondsCopy)
          {
            goto LABEL_17;
          }

          [v30 timeIntervalSinceDate:v18];
          if (v32 < 0.0)
          {
            v32 = -v32;
          }

          if (v32 < secondsCopy)
          {
            goto LABEL_17;
          }

          [v29 timeIntervalSinceDate:v38];
          if (v33 < 0.0)
          {
            v33 = -v33;
          }

          if (v33 < secondsCopy)
          {
LABEL_17:
            v34 = [sessionsCopy objectAtIndexedSubscript:v19];
            [array addObject:v34];
          }

          v17 = v39;
        }
      }

      objc_autoreleasePoolPop(v21);
      ++v19;
    }

    while ([sessionsCopy count] > v19);
  }

  return array;
}

+ (BOOL)doesTimeOfDayForDate:(id)date fallBetweenDate:(id)betweenDate andDate:(id)andDate
{
  dateCopy = date;
  betweenDateCopy = betweenDate;
  andDateCopy = andDate;
  [andDateCopy timeIntervalSinceDate:betweenDateCopy];
  if (v10 < 86400.0)
  {
    if (doesTimeOfDayForDate_fallBetweenDate_andDate__onceToken != -1)
    {
      +[PowerUISmartChargeUtilities doesTimeOfDayForDate:fallBetweenDate:andDate:];
    }

    v22 = [doesTimeOfDayForDate_fallBetweenDate_andDate__currentCalendar components:96 fromDate:betweenDateCopy];
    v11 = [doesTimeOfDayForDate_fallBetweenDate_andDate__currentCalendar dateFromComponents:?];
    v12 = [doesTimeOfDayForDate_fallBetweenDate_andDate__currentCalendar components:96 fromDate:andDateCopy];
    v13 = [doesTimeOfDayForDate_fallBetweenDate_andDate__currentCalendar dateFromComponents:v12];
    v14 = [doesTimeOfDayForDate_fallBetweenDate_andDate__currentCalendar components:96 fromDate:dateCopy];
    v15 = [doesTimeOfDayForDate_fallBetweenDate_andDate__currentCalendar dateFromComponents:v14];
    v16 = [v11 earlierDate:v13];

    v17 = [v15 earlierDate:v11];
    v18 = v17;
    if (v16 == v11)
    {
      if (v17 != v11)
      {
        v19 = 0;
        goto LABEL_11;
      }
    }

    else if (v17 == v11)
    {
      v19 = 1;
LABEL_11:

      goto LABEL_12;
    }

    v20 = [v15 earlierDate:v13];
    v19 = v20 == v15;

    goto LABEL_11;
  }

  v19 = 1;
LABEL_12:

  return v19;
}

uint64_t __76__PowerUISmartChargeUtilities_doesTimeOfDayForDate_fallBetweenDate_andDate___block_invoke()
{
  doesTimeOfDayForDate_fallBetweenDate_andDate__currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];

  return MEMORY[0x2821F96F8]();
}

+ (id)readStringForPreferenceKey:(id)key inDomain:(id)domain
{
  v4 = CFPreferencesCopyAppValue(key, domain);

  return v4;
}

+ (void)setDate:(id)date forPreferenceKey:(id)key inDomain:(id)domain
{
  key = key;
  domainCopy = domain;
  if (date)
  {
    v8 = MEMORY[0x277CCABB0];
    [date timeIntervalSinceReferenceDate];
    v9 = [v8 numberWithDouble:?];
  }

  else
  {
    v9 = 0;
  }

  CFPreferencesSetAppValue(key, v9, domainCopy);
}

+ (id)dateForPreferenceKey:(id)key inDomain:(id)domain
{
  v4 = CFPreferencesCopyAppValue(key, domain);
  v5 = v4;
  if (v4)
  {
    v6 = MEMORY[0x277CBEAA8];
    [v4 doubleValue];
    v7 = [v6 dateWithTimeIntervalSinceReferenceDate:?];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)numberForPreferenceKey:(id)key inDomain:(id)domain
{
  v4 = CFPreferencesCopyAppValue(key, domain);

  return v4;
}

+ (id)readDictForPreferenceKey:(id)key inDomain:(id)domain
{
  v4 = CFPreferencesCopyAppValue(key, domain);

  return v4;
}

+ (id)timelineEventDate:(id)date withDefaultsDomain:(id)domain
{
  v29 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  v7 = CFPreferencesCopyAppValue(@"timeline", domain);
  v8 = [v7 mutableCopy];

  if (v8)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v10)
    {
      v11 = v10;
      selfCopy = self;
      v12 = *v25;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v25 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v24 + 1) + 8 * i);
          v15 = [v14 objectForKeyedSubscript:@"event"];
          v16 = [v15 isEqualToString:dateCopy];

          if (v16)
          {
            v18 = MEMORY[0x277CBEAA8];
            v19 = [v14 objectForKeyedSubscript:@"date"];
            [v19 doubleValue];
            v17 = [v18 dateWithTimeIntervalSinceReferenceDate:?];

            v20 = [selfCopy log];
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
            {
              +[PowerUISmartChargeUtilities timelineEventDate:withDefaultsDomain:];
            }

            goto LABEL_14;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v17 = 0;
LABEL_14:
  }

  else
  {
    v17 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];

  return v17;
}

+ (id)batteryLevelHistogramAroundTime:(id)time withDelta:(double)delta withOffset:(double)offset
{
  v62[4] = *MEMORY[0x277D85DE8];
  timeCopy = time;
  v8 = BiomeLibrary();
  device = [v8 Device];
  power = [device Power];
  batteryLevel = [power BatteryLevel];

  v57 = 0;
  v58 = &v57;
  v59 = 0x2020000000;
  v12 = malloc_type_calloc(0x65uLL, 8uLL, 0x100004000313F17uLL);
  v13 = 0;
  v60 = v12;
  do
  {
    *(v58[3] + v13) = 0;
    v13 += 8;
  }

  while (v13 != 64);
  v55[0] = 0;
  v55[1] = v55;
  v55[2] = 0x2020000000;
  v56 = -1;
  v54[0] = 0;
  v54[1] = v54;
  v54[2] = 0x2020000000;
  v54[3] = 0;
  if (!timeCopy)
  {
    timeCopy = [MEMORY[0x277CBEAA8] now];
  }

  v14 = [timeCopy dateByAddingTimeInterval:-2592000.0];
  v15 = [v14 dateByAddingTimeInterval:offset];

  v48 = 0;
  v49 = &v48;
  v50 = 0x3032000000;
  v51 = __Block_byref_object_copy__2;
  v52 = __Block_byref_object_dispose__2;
  v53 = [v15 dateByAddingTimeInterval:-delta];
  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = __Block_byref_object_copy__2;
  v46 = __Block_byref_object_dispose__2;
  v47 = [v15 dateByAddingTimeInterval:delta];
  v40[0] = 0;
  v40[1] = v40;
  v40[2] = 0x3032000000;
  v40[3] = __Block_byref_object_copy__2;
  v40[4] = __Block_byref_object_dispose__2;
  v16 = objc_alloc(MEMORY[0x277CCA970]);
  v41 = [v16 initWithStartDate:v49[5] endDate:v43[5]];
  v17 = objc_alloc(MEMORY[0x277CF1A50]);
  v18 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-2592000.0];
  v19 = [v17 initWithStartDate:v18 endDate:0 maxEvents:0 lastN:0 reversed:0];

  v20 = [batteryLevel publisherWithOptions:v19];
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __84__PowerUISmartChargeUtilities_batteryLevelHistogramAroundTime_withDelta_withOffset___block_invoke_2;
  v39[3] = &unk_2782D4328;
  v39[4] = &v42;
  v39[5] = &v48;
  v39[6] = v40;
  v39[7] = v55;
  v39[8] = &v57;
  v39[9] = v54;
  v21 = [v20 sinkWithCompletion:&__block_literal_global_149 receiveInput:v39];

  v22 = 0;
  v23 = 0.0;
  v24 = 0.0;
  v25 = 0.0;
  v26 = 0.0;
  do
  {
    if (v22 > 0x13)
    {
      if (v22 > 0x31)
      {
        v27 = v58[3];
        v28 = v27[v22];
        v29 = v26 + v28;
        v30 = v25 + v28;
        if (v22 <= 0x5E)
        {
          v25 = v30;
        }

        else
        {
          v26 = v29;
        }
      }

      else
      {
        v27 = v58[3];
        v24 = v24 + v27[v22];
      }
    }

    else
    {
      v27 = v58[3];
      v23 = v23 + v27[v22];
    }

    ++v22;
  }

  while (v22 != 101);
  free(v27);
  v31 = v26 + v25 + v24 + v23;
  v61[0] = &unk_282D4E1B8;
  v32 = [MEMORY[0x277CCABB0] numberWithDouble:v26 / v31];
  v62[0] = v32;
  v61[1] = &unk_282D4E1D0;
  v33 = [MEMORY[0x277CCABB0] numberWithDouble:v25 / v31];
  v62[1] = v33;
  v61[2] = &unk_282D4E1E8;
  v34 = [MEMORY[0x277CCABB0] numberWithDouble:v24 / v31];
  v62[2] = v34;
  v61[3] = &unk_282D4E1A0;
  v35 = [MEMORY[0x277CCABB0] numberWithDouble:v23 / v31];
  v62[3] = v35;
  v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v62 forKeys:v61 count:4];

  _Block_object_dispose(v40, 8);
  _Block_object_dispose(&v42, 8);

  _Block_object_dispose(&v48, 8);
  _Block_object_dispose(v54, 8);
  _Block_object_dispose(v55, 8);
  _Block_object_dispose(&v57, 8);

  v37 = *MEMORY[0x277D85DE8];

  return v36;
}

void __84__PowerUISmartChargeUtilities_batteryLevelHistogramAroundTime_withDelta_withOffset___block_invoke_2(void *a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x277CBEAA8];
  v23 = v3;
  [v3 timestamp];
  v5 = [v4 dateWithTimeIntervalSinceReferenceDate:?];
  [v5 timeIntervalSinceDate:*(*(a1[4] + 8) + 40)];
  if (v6 > 0.0)
  {
    v7 = [*(*(a1[5] + 8) + 40) dateByAddingTimeInterval:86400.0];
    v8 = *(a1[5] + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    v10 = [*(*(a1[4] + 8) + 40) dateByAddingTimeInterval:86400.0];
    v11 = *(a1[4] + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    v13 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:*(*(a1[5] + 8) + 40) endDate:*(*(a1[4] + 8) + 40)];
    v14 = *(a1[6] + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;
  }

  if ([*(*(a1[6] + 8) + 40) containsDate:v5])
  {
    v16 = v23;
    if (*(*(a1[7] + 8) + 24) != -1)
    {
      [v23 timestamp];
      v16 = v23;
      v18 = *(*(a1[8] + 8) + 24);
      v19 = *(*(a1[7] + 8) + 24);
      *(v18 + 8 * v19) = v17 - *(*(a1[9] + 8) + 24) + *(v18 + 8 * v19);
    }

    v20 = [v16 eventBody];
    [v20 batteryPercentage];
    *(*(a1[7] + 8) + 24) = v21;

    [v23 timestamp];
    *(*(a1[9] + 8) + 24) = v22;
  }
}

+ (BOOL)deviceHasEnoughPluggedInTimeWithMinimumDays:(double)days withContext:(id)context withDefaultsDomain:(id)domain
{
  v32 = *MEMORY[0x277D85DE8];
  v7 = os_transaction_create();
  date = [MEMORY[0x277CBEAA8] date];
  v9 = [PowerUISmartChargeUtilities pluginEventsBefore:date withMinimumDuration:1200.0 ignoringDisconnectsShorterThan:300.0];
  v10 = [PowerUISmartChargeUtilities concatenateChargeSessions:v9 withMaxDeltaSecondsBetweenEvents:10];

  firstObject = [v10 firstObject];
  startDate = [firstObject startDate];
  [date timeIntervalSinceDate:startDate];
  v14 = v13;

  if (v14 < days * 86400.0)
  {
LABEL_9:
    v19 = [self log];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v28 = 134217984;
      v29 = v14 / 86400.0;
      _os_log_impl(&dword_21B766000, v19, OS_LOG_TYPE_DEFAULT, "Not real carry device: First plugin: %0.2f days ago", &v28, 0xCu);
    }

    goto LABEL_11;
  }

  if ([v10 count] < 9)
  {
    v24 = [self log];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v28 = 134217984;
      v29 = COERCE_DOUBLE([v10 count]);
      _os_log_impl(&dword_21B766000, v24, OS_LOG_TYPE_DEFAULT, "Event count: %lu, too low", &v28, 0xCu);
    }

    goto LABEL_9;
  }

  lastObject = [v10 lastObject];
  startDate2 = [lastObject startDate];
  [date timeIntervalSinceDate:startDate2];
  v18 = v17;

  if (v18 <= 604800.0)
  {
    v25 = 1;
    goto LABEL_12;
  }

  v19 = [self log];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v10, "count")}];
    v20 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    lastObject2 = [v10 lastObject];
    startDate3 = [lastObject2 startDate];
    [date timeIntervalSinceDate:startDate3];
    v28 = 138543618;
    v29 = v20;
    v30 = 2048;
    v31 = v23 / 86400.0;
    _os_log_impl(&dword_21B766000, v19, OS_LOG_TYPE_DEFAULT, "Not real carry device: %{public}@ events, Last plugin: %0.2f days ago", &v28, 0x16u);
  }

LABEL_11:

  v25 = 0;
LABEL_12:

  v26 = *MEMORY[0x277D85DE8];
  return v25;
}

+ (double)totalPluginDurationAfter:(id)after withMinimumDuration:(double)duration withPluginEvents:(id)events
{
  v27 = *MEMORY[0x277D85DE8];
  afterCopy = after;
  eventsCopy = events;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = [eventsCopy countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v23;
    v12 = 0.0;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(eventsCopy);
        }

        v14 = *(*(&v22 + 1) + 8 * i);
        startDate = [v14 startDate];
        [afterCopy timeIntervalSinceDate:startDate];
        v17 = v16;

        if (v17 <= 0.0)
        {
          [v14 duration];
          if (v18 >= duration)
          {
            [v14 duration];
            v12 = v12 + v12 + v19;
          }
        }
      }

      v10 = [eventsCopy countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v10);
  }

  else
  {
    v12 = 0.0;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v12;
}

+ (id)getTestVector:(id)vector
{
  vectorCopy = vector;
  v48 = 0;
  v44 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"(.+?) options:(.+?)" error:{1, &v48}];
  v4 = v48;
  v47 = v4;
  v42 = vectorCopy;
  v5 = [MEMORY[0x277CCACA8] stringWithContentsOfURL:vectorCopy encoding:1 error:&v47];
  v41 = v47;

  v6 = objc_alloc_init(MEMORY[0x277CCABB8]);
  [v6 setNumberStyle:1];
  v7 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:@"en_US_POSIX"];
  [v6 setLocale:v7];

  v40 = v5;
  v8 = [v5 componentsSeparatedByString:@"\n"];
  v9 = [v8 objectAtIndexedSubscript:0];
  v10 = [v9 componentsSeparatedByString:{@", "}];

  v11 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v10, "count")}];
  if ([v10 count])
  {
    v12 = 0;
    do
    {
      v13 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v8, "count") - 1}];
      [v11 setObject:v13 atIndexedSubscript:v12];

      ++v12;
    }

    while ([v10 count] > v12);
  }

  if (([v8 count] - 3) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v14 = 1;
    v43 = v8;
    while (1)
    {
      v15 = [v8 objectAtIndexedSubscript:v14];
      v46 = v14;
      v16 = [v8 objectAtIndexedSubscript:v14];
      v17 = [v44 stringByReplacingMatchesInString:v15 options:0 range:0 withTemplate:{objc_msgSend(v16, "length"), @"$1.$2"}];

      v45 = v17;
      v18 = [v17 componentsSeparatedByString:{@", "}];
      if ([v10 count])
      {
        break;
      }

LABEL_17:

      v14 = v46 + 1;
      v8 = v43;
      if ([v43 count] - 1 <= (v46 + 1))
      {
        goto LABEL_18;
      }
    }

    v19 = 0;
    v20 = v46 - 1;
    while (1)
    {
      v21 = [v18 objectAtIndexedSubscript:v19];
      v22 = [v6 numberFromString:v21];

      v23 = [v18 objectAtIndexedSubscript:v19];
      v24 = v23;
      if (v22)
      {
        break;
      }

      v27 = [v23 isEqualToString:@"True"];

      if (v27)
      {
        v28 = [v11 objectAtIndexedSubscript:v19];
        v24 = v28;
        v29 = &unk_282D4E200;
        goto LABEL_14;
      }

      v30 = [v18 objectAtIndexedSubscript:v19];
      v31 = [v30 isEqualToString:@"False"];

      if (v31)
      {
        v28 = [v11 objectAtIndexedSubscript:v19];
        v24 = v28;
        v29 = &unk_282D4E1A0;
LABEL_14:
        [v28 setObject:v29 atIndexedSubscript:v20];
LABEL_15:
      }

      if ([v10 count] <= ++v19)
      {
        goto LABEL_17;
      }
    }

    v25 = [v6 numberFromString:v23];
    v26 = [v11 objectAtIndexedSubscript:v19];
    [v26 setObject:v25 atIndexedSubscript:v20];

    goto LABEL_15;
  }

LABEL_18:
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if ([v10 count])
  {
    v33 = 0;
    do
    {
      v34 = MEMORY[0x277CBEA60];
      v35 = [v11 objectAtIndexedSubscript:v33];
      v36 = [v34 arrayWithArray:v35];
      v37 = [v10 objectAtIndexedSubscript:v33];
      [dictionary setObject:v36 forKeyedSubscript:v37];

      ++v33;
    }

    while ([v10 count] > v33);
  }

  v38 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:dictionary];

  return v38;
}

+ (double)batteryLevelAtDate:(id)date
{
  dateCopy = date;
  [dateCopy timeIntervalSinceNow];
  if (v5 <= -10.0)
  {
    v24 = 0;
    v25[0] = &v24;
    v25[1] = 0x2020000000;
    v25[2] = 0;
    v12 = [objc_alloc(MEMORY[0x277CF1A50]) initWithStartDate:dateCopy endDate:0 maxEvents:20 lastN:0 reversed:1];
    v13 = BiomeLibrary();
    device = [v13 Device];
    power = [device Power];
    batteryLevel = [power BatteryLevel];
    v17 = [batteryLevel publisherWithOptions:v12];
    v18 = [v17 filterWithIsIncluded:&__block_literal_global_185];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __50__PowerUISmartChargeUtilities_batteryLevelAtDate___block_invoke_2;
    v23[3] = &__block_descriptor_40_e23_v16__0__BPSCompletion_8l;
    v23[4] = self;
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __50__PowerUISmartChargeUtilities_batteryLevelAtDate___block_invoke_186;
    v22[3] = &unk_2782D4350;
    v22[4] = &v24;
    v19 = [v18 sinkWithCompletion:v23 shouldContinue:v22];

    v20 = [self log];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      [(PowerUISmartChargeUtilities *)dateCopy batteryLevelAtDate:v25];
    }

    integerValue = *(v25[0] + 24);
    _Block_object_dispose(&v24, 8);
  }

  else
  {
    userContext = [MEMORY[0x277CFE318] userContext];
    keyPathForBatteryStateDataDictionary = [MEMORY[0x277CFE338] keyPathForBatteryStateDataDictionary];
    v8 = [userContext objectForKeyedSubscript:keyPathForBatteryStateDataDictionary];

    batteryPercentageKey = [MEMORY[0x277CFE338] batteryPercentageKey];
    v10 = [v8 objectForKeyedSubscript:batteryPercentageKey];
    integerValue = [v10 integerValue];
  }

  return integerValue;
}

void __50__PowerUISmartChargeUtilities_batteryLevelAtDate___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 state])
  {
    v4 = [*(a1 + 32) log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __50__PowerUISmartChargeUtilities_batteryLevelAtDate___block_invoke_2_cold_1(v3);
    }
  }
}

uint64_t __50__PowerUISmartChargeUtilities_batteryLevelAtDate___block_invoke_186(uint64_t a1, void *a2)
{
  v3 = [a2 eventBody];
  [v3 batteryPercentage];
  *(*(*(a1 + 32) + 8) + 24) = v4;

  return 0;
}

+ (id)lastPluggedInDate
{
  v35 = *MEMORY[0x277D85DE8];
  userContext = [MEMORY[0x277CFE318] userContext];
  if (![PowerUISmartChargeUtilities isPluggedInWithContext:userContext])
  {
    v31 = 0;
    v32[0] = &v31;
    v32[1] = 0x3032000000;
    v32[2] = __Block_byref_object_copy__2;
    v32[3] = __Block_byref_object_dispose__2;
    v33 = 0;
    v8 = [objc_alloc(MEMORY[0x277CF1A50]) initWithStartDate:0 endDate:0 maxEvents:8 lastN:0 reversed:1];
    v9 = BiomeLibrary();
    device = [v9 Device];
    power = [device Power];
    pluggedIn = [power PluggedIn];
    v13 = [pluggedIn publisherWithOptions:v8];
    v14 = [v13 filterWithIsIncluded:&__block_literal_global_191];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __48__PowerUISmartChargeUtilities_lastPluggedInDate__block_invoke_2;
    v30[3] = &__block_descriptor_40_e23_v16__0__BPSCompletion_8l;
    v30[4] = self;
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __48__PowerUISmartChargeUtilities_lastPluggedInDate__block_invoke_192;
    v29[3] = &unk_2782D4350;
    v29[4] = &v31;
    v15 = [v14 sinkWithCompletion:v30 shouldContinue:v29];

    v16 = *(v32[0] + 40);
    if (v16)
    {
      [v16 timeIntervalSinceNow];
      if (v17 <= 0.0)
      {
        v25 = [self log];
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          [*(v32[0] + 40) timeIntervalSinceNow];
          [(PowerUISmartChargeUtilities *)v32 lastPluggedInDate:buf];
        }

        date = *(v32[0] + 40);
        goto LABEL_16;
      }

      v18 = [self log];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        +[PowerUISmartChargeUtilities lastPluggedInDate];
      }
    }

    else
    {
      v18 = [self log];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        +[PowerUISmartChargeUtilities lastPluggedInDate];
      }
    }

    date = [MEMORY[0x277CBEAA8] date];
LABEL_16:
    v23 = date;

    _Block_object_dispose(&v31, 8);
    goto LABEL_20;
  }

  keyPathForBatteryStateDataDictionary = [MEMORY[0x277CFE338] keyPathForBatteryStateDataDictionary];
  v5 = [userContext objectForKeyedSubscript:keyPathForBatteryStateDataDictionary];

  v6 = [v5 objectForKeyedSubscript:@"externalConnectedChangeDate"];

  if (v6)
  {
    date2 = [v5 objectForKeyedSubscript:@"externalConnectedChangeDate"];
LABEL_18:
    v23 = date2;
    goto LABEL_19;
  }

  keyPathForPluginStatus = [MEMORY[0x277CFE338] keyPathForPluginStatus];
  v20 = [userContext objectForKeyedSubscript:keyPathForPluginStatus];
  bOOLValue = [v20 BOOLValue];

  if (!bOOLValue)
  {
    date2 = [MEMORY[0x277CBEAA8] date];
    goto LABEL_18;
  }

  keyPathForPluginStatus2 = [MEMORY[0x277CFE338] keyPathForPluginStatus];
  v23 = [userContext lastModifiedDateForContextualKeyPath:keyPathForPluginStatus2];

LABEL_19:
LABEL_20:

  v27 = *MEMORY[0x277D85DE8];

  return v23;
}

void __48__PowerUISmartChargeUtilities_lastPluggedInDate__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 state])
  {
    v4 = [*(a1 + 32) log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __48__PowerUISmartChargeUtilities_lastPluggedInDate__block_invoke_2_cold_1(v3);
    }
  }
}

BOOL __48__PowerUISmartChargeUtilities_lastPluggedInDate__block_invoke_192(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 eventBody];
  v5 = [v4 starting];

  if (v5)
  {
    v6 = MEMORY[0x277CBEAA8];
    [v3 timestamp];
    v7 = [v6 dateWithTimeIntervalSinceReferenceDate:?];
    v8 = *(*(a1 + 32) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    v10 = 1;
  }

  else
  {
    v10 = *(*(*(a1 + 32) + 8) + 40) == 0;
  }

  return v10;
}

+ (void)logMemoryUsageInternalForEvent:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a1];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a2];
  v10 = 138412802;
  v11 = a3;
  v12 = 2112;
  v13 = v7;
  v14 = 2112;
  v15 = v8;
  _os_log_debug_impl(&dword_21B766000, a4, OS_LOG_TYPE_DEBUG, "(%@) current memory usage: %@ kB - peak usage: %@ kB", &v10, 0x20u);

  v9 = *MEMORY[0x277D85DE8];
}

+ (void)getBatteryLevelDurations:(os_log_t)log .cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_21B766000, log, OS_LOG_TYPE_ERROR, "Skipping battery level %@", buf, 0xCu);
}

void __56__PowerUISmartChargeUtilities_getBatteryLevelDurations___block_invoke_cold_1(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = [a1 error];
  v2 = [v1 description];
  [v2 UTF8String];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1(&dword_21B766000, v3, v4, "Error getting battery stream in batteryLevelDurations: %s", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x277D85DE8];
}

void __56__PowerUISmartChargeUtilities_getBatteryLevelDurations___block_invoke_23_cold_1(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [MEMORY[0x277CCABB0] numberWithInteger:a1];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1(&dword_21B766000, v2, v3, "Skipping battery level %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

+ (void)numberForKey:fromDict:withDefault:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_21B766000, v0, OS_LOG_TYPE_DEBUG, "Either key or dictionary is null. Returning default value: %ld.", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

+ (void)numberForKey:fromDict:withDefault:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_0(&dword_21B766000, v0, v1, "Encountered missing value for %@. Filling with default value: %ld.");
  v2 = *MEMORY[0x277D85DE8];
}

void __101__PowerUISmartChargeUtilities_pluginEventsBefore_withMinimumDuration_ignoringDisconnectsShorterThan___block_invoke_2_cold_1(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = [a1 error];
  v2 = [v1 description];
  [v2 UTF8String];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1(&dword_21B766000, v3, v4, "Error getting plugin biome events in pluginEventsBefore - %s", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x277D85DE8];
}

void __132__PowerUISmartChargeUtilities_pluginEventsBefore_withMinimumDuration_withMinimumPlugoutBatteryLevel_ignoringDisconnectsShorterThan___block_invoke_46_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(*(*a1 + 8) + 40);
  v4 = 138412290;
  v5 = v2;
  _os_log_debug_impl(&dword_21B766000, a2, OS_LOG_TYPE_DEBUG, "  %@", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

void __97__PowerUISmartChargeUtilities_drainSessionsInfoBetweenRelevantChargesBefore_withMinimumDuration___block_invoke_2_cold_1(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = [a1 error];
  v2 = [v1 description];
  [v2 UTF8String];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1(&dword_21B766000, v3, v4, "Error getting biome events in drain calculation - %s", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x277D85DE8];
}

void __101__PowerUISmartChargeUtilities_timestampOfFirstEventReachingBatteryLevel_betweenStartTime_andEndTime___block_invoke_2_cold_1(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = [a1 error];
  v2 = [v1 description];
  [v2 UTF8String];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1(&dword_21B766000, v3, v4, "Error getting BatteryLevel in timestampOfFirstEventReachingBatteryLevel: %s", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x277D85DE8];
}

void __96__PowerUISmartChargeUtilities_historicalFullChargeDurationStartingAt_withMinimumPluginDuration___block_invoke_2_cold_1(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = [a1 error];
  v2 = [v1 description];
  [v2 UTF8String];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1(&dword_21B766000, v3, v4, "Error getting chargingExperience biome events in historical80to100Time: %s", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x277D85DE8];
}

+ (void)timelineEventDate:withDefaultsDomain:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_0(&dword_21B766000, v0, v1, "Timeline event '%@' exists %@");
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)batteryLevelAtDate:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(*a2 + 24);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_0(&dword_21B766000, v3, v4, "Battery level at %@ is %lf");
  v5 = *MEMORY[0x277D85DE8];
}

void __50__PowerUISmartChargeUtilities_batteryLevelAtDate___block_invoke_2_cold_1(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = [a1 error];
  v2 = [v1 description];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1(&dword_21B766000, v3, v4, "Error getting battery level biome events in batteryLevelAtDate %@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x277D85DE8];
}

+ (void)lastPluggedInDate
{
  v4 = *(*self + 40);
  *buf = 134218242;
  *(buf + 4) = -a4;
  *(buf + 6) = 2112;
  *(buf + 14) = v4;
  _os_log_debug_impl(&dword_21B766000, log, OS_LOG_TYPE_DEBUG, "Last plug-in was %.2f seconds ago at %@", buf, 0x16u);
}

void __48__PowerUISmartChargeUtilities_lastPluggedInDate__block_invoke_2_cold_1(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = [a1 error];
  v2 = [v1 description];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1(&dword_21B766000, v3, v4, "Error getting plugged in biome events in lastPluggedInDate %@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x277D85DE8];
}

@end