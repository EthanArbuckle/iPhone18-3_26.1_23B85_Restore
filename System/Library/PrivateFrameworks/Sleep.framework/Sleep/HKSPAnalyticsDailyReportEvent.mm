@interface HKSPAnalyticsDailyReportEvent
- (NSDictionary)eventPayload;
@end

@implementation HKSPAnalyticsDailyReportEvent

- (NSDictionary)eventPayload
{
  v148[48] = *MEMORY[0x277D85DE8];
  v136 = objc_alloc(MEMORY[0x277CBEB38]);
  v147[0] = @"bedTimeWindDownRemindersEnabled";
  v146 = [MEMORY[0x277CCABB0] numberWithBool:{-[HKSPAnalyticsDailyReportEvent bedTimeWindDownRemindersEnabled](self, "bedTimeWindDownRemindersEnabled")}];
  v148[0] = v146;
  v147[1] = @"chargeRemindersEnabled";
  v145 = [MEMORY[0x277CCABB0] numberWithBool:{-[HKSPAnalyticsDailyReportEvent chargeRemindersEnabled](self, "chargeRemindersEnabled")}];
  v148[1] = v145;
  v147[2] = @"isIHA";
  v144 = [MEMORY[0x277CCABB0] numberWithBool:{-[HKSPAnalyticsDailyReportEvent isImproveHealthAndActivitySubmissionAllowed](self, "isImproveHealthAndActivitySubmissionAllowed")}];
  v148[2] = v144;
  v147[3] = @"scheduleChangePast24Hours";
  v143 = [MEMORY[0x277CCABB0] numberWithBool:{-[HKSPAnalyticsDailyReportEvent scheduleChangePast24Hours](self, "scheduleChangePast24Hours")}];
  v148[3] = v143;
  v147[4] = @"scheduleChangePast7days";
  v142 = [MEMORY[0x277CCABB0] numberWithBool:{-[HKSPAnalyticsDailyReportEvent scheduleChangePast7days](self, "scheduleChangePast7days")}];
  v148[4] = v142;
  v147[5] = @"scheduleDisabled";
  v141 = [MEMORY[0x277CCABB0] numberWithBool:{-[HKSPAnalyticsDailyReportEvent scheduleDisabled](self, "scheduleDisabled")}];
  v148[5] = v141;
  v147[6] = @"scheduledSleepModeEnabled";
  v140 = [MEMORY[0x277CCABB0] numberWithBool:{-[HKSPAnalyticsDailyReportEvent scheduledSleepModeEnabled](self, "scheduledSleepModeEnabled")}];
  v148[6] = v140;
  v147[7] = @"scheduleMigration";
  v139 = [MEMORY[0x277CCABB0] numberWithBool:{-[HKSPAnalyticsDailyReportEvent scheduleMigration](self, "scheduleMigration")}];
  v148[7] = v139;
  v147[8] = @"sleepGoal";
  v3 = MEMORY[0x277CCABB0];
  [(HKSPAnalyticsDailyReportEvent *)self sleepGoal];
  v138 = [v3 numberWithDouble:?];
  v148[8] = v138;
  v147[9] = @"timeInBedTrackingEnabled";
  v137 = [MEMORY[0x277CCABB0] numberWithBool:{-[HKSPAnalyticsDailyReportEvent timeInBedTrackingEnabled](self, "timeInBedTrackingEnabled")}];
  v148[9] = v137;
  v147[10] = @"wakeUpResultsEnabled";
  v135 = [MEMORY[0x277CCABB0] numberWithBool:{-[HKSPAnalyticsDailyReportEvent wakeUpResultsEnabled](self, "wakeUpResultsEnabled")}];
  v148[10] = v135;
  v147[11] = @"watchSleepTrackingEnabled";
  v134 = [MEMORY[0x277CCABB0] numberWithBool:{-[HKSPAnalyticsDailyReportEvent watchSleepTrackingEnabled](self, "watchSleepTrackingEnabled")}];
  v148[11] = v134;
  v147[12] = @"interactedWithWindDownLast24Hrs";
  v133 = [MEMORY[0x277CCABB0] numberWithBool:{-[HKSPAnalyticsDailyReportEvent interactedWithWindDownLast24Hrs](self, "interactedWithWindDownLast24Hrs")}];
  v148[12] = v133;
  v147[13] = @"useSleepScreen";
  v132 = [MEMORY[0x277CCABB0] numberWithBool:{-[HKSPAnalyticsDailyReportEvent useSleepScreen](self, "useSleepScreen")}];
  v148[13] = v132;
  v147[14] = @"maxSleepTrackingVersionOnboarded";
  v131 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HKSPAnalyticsDailyReportEvent maxSleepTrackingVersionOnboarded](self, "maxSleepTrackingVersionOnboarded")}];
  v148[14] = v131;
  v147[15] = @"maxSleepCoachingVersionOnboarded";
  v130 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HKSPAnalyticsDailyReportEvent maxSleepCoachingVersionOnboarded](self, "maxSleepCoachingVersionOnboarded")}];
  v148[15] = v130;
  v147[16] = @"hasSleepFocusConfigured";
  v129 = [MEMORY[0x277CCABB0] numberWithBool:{-[HKSPAnalyticsDailyReportEvent hasSleepFocusConfigured](self, "hasSleepFocusConfigured")}];
  v148[16] = v129;
  v147[17] = @"alarmFriday";
  v128 = [MEMORY[0x277CCABB0] numberWithBool:{-[HKSPAnalyticsDailyReportEvent alarmFriday](self, "alarmFriday")}];
  v148[17] = v128;
  v147[18] = @"alarmMonday";
  v127 = [MEMORY[0x277CCABB0] numberWithBool:{-[HKSPAnalyticsDailyReportEvent alarmMonday](self, "alarmMonday")}];
  v148[18] = v127;
  v147[19] = @"alarmSaturday";
  v126 = [MEMORY[0x277CCABB0] numberWithBool:{-[HKSPAnalyticsDailyReportEvent alarmSaturday](self, "alarmSaturday")}];
  v148[19] = v126;
  v147[20] = @"alarmSunday";
  v125 = [MEMORY[0x277CCABB0] numberWithBool:{-[HKSPAnalyticsDailyReportEvent alarmSunday](self, "alarmSunday")}];
  v148[20] = v125;
  v147[21] = @"alarmThursday";
  v124 = [MEMORY[0x277CCABB0] numberWithBool:{-[HKSPAnalyticsDailyReportEvent alarmThursday](self, "alarmThursday")}];
  v148[21] = v124;
  v147[22] = @"alarmTuesday";
  v123 = [MEMORY[0x277CCABB0] numberWithBool:{-[HKSPAnalyticsDailyReportEvent alarmTuesday](self, "alarmTuesday")}];
  v148[22] = v123;
  v147[23] = @"alarmWednesday";
  v122 = [MEMORY[0x277CCABB0] numberWithBool:{-[HKSPAnalyticsDailyReportEvent alarmWednesday](self, "alarmWednesday")}];
  v148[23] = v122;
  v147[24] = @"scheduleFriday";
  v121 = [MEMORY[0x277CCABB0] numberWithBool:{-[HKSPAnalyticsDailyReportEvent scheduleFriday](self, "scheduleFriday")}];
  v148[24] = v121;
  v147[25] = @"scheduleMonday";
  v120 = [MEMORY[0x277CCABB0] numberWithBool:{-[HKSPAnalyticsDailyReportEvent scheduleMonday](self, "scheduleMonday")}];
  v148[25] = v120;
  v147[26] = @"scheduleSaturday";
  v119 = [MEMORY[0x277CCABB0] numberWithBool:{-[HKSPAnalyticsDailyReportEvent scheduleSaturday](self, "scheduleSaturday")}];
  v148[26] = v119;
  v147[27] = @"scheduleSunday";
  v118 = [MEMORY[0x277CCABB0] numberWithBool:{-[HKSPAnalyticsDailyReportEvent scheduleSunday](self, "scheduleSunday")}];
  v148[27] = v118;
  v147[28] = @"scheduleThursday";
  v117 = [MEMORY[0x277CCABB0] numberWithBool:{-[HKSPAnalyticsDailyReportEvent scheduleThursday](self, "scheduleThursday")}];
  v148[28] = v117;
  v147[29] = @"scheduleTuesday";
  v116 = [MEMORY[0x277CCABB0] numberWithBool:{-[HKSPAnalyticsDailyReportEvent scheduleTuesday](self, "scheduleTuesday")}];
  v148[29] = v116;
  v147[30] = @"scheduleWednesday";
  v115 = [MEMORY[0x277CCABB0] numberWithBool:{-[HKSPAnalyticsDailyReportEvent scheduleWednesday](self, "scheduleWednesday")}];
  v148[30] = v115;
  v147[31] = @"defaultScheduleFriday";
  v4 = MEMORY[0x277CCABB0];
  if ([(HKSPAnalyticsDailyReportEvent *)self scheduleFriday])
  {
    isDefaultScheduleFriday = [(HKSPAnalyticsDailyReportEvent *)self isDefaultScheduleFriday];
  }

  else
  {
    isDefaultScheduleFriday = 0;
  }

  v114 = [v4 numberWithInt:isDefaultScheduleFriday];
  v148[31] = v114;
  v147[32] = @"defaultScheduleMonday";
  v6 = MEMORY[0x277CCABB0];
  if ([(HKSPAnalyticsDailyReportEvent *)self scheduleMonday])
  {
    isDefaultScheduleMonday = [(HKSPAnalyticsDailyReportEvent *)self isDefaultScheduleMonday];
  }

  else
  {
    isDefaultScheduleMonday = 0;
  }

  v113 = [v6 numberWithInt:isDefaultScheduleMonday];
  v148[32] = v113;
  v147[33] = @"defaultScheduleSaturday";
  v8 = MEMORY[0x277CCABB0];
  if ([(HKSPAnalyticsDailyReportEvent *)self scheduleSaturday])
  {
    isDefaultScheduleSaturday = [(HKSPAnalyticsDailyReportEvent *)self isDefaultScheduleSaturday];
  }

  else
  {
    isDefaultScheduleSaturday = 0;
  }

  v112 = [v8 numberWithInt:isDefaultScheduleSaturday];
  v148[33] = v112;
  v147[34] = @"defaultScheduleSunday";
  v10 = MEMORY[0x277CCABB0];
  if ([(HKSPAnalyticsDailyReportEvent *)self scheduleSunday])
  {
    isDefaultScheduleSunday = [(HKSPAnalyticsDailyReportEvent *)self isDefaultScheduleSunday];
  }

  else
  {
    isDefaultScheduleSunday = 0;
  }

  v111 = [v10 numberWithInt:isDefaultScheduleSunday];
  v148[34] = v111;
  v147[35] = @"defaultScheduleThursday";
  v12 = MEMORY[0x277CCABB0];
  if ([(HKSPAnalyticsDailyReportEvent *)self scheduleThursday])
  {
    isDefaultScheduleThursday = [(HKSPAnalyticsDailyReportEvent *)self isDefaultScheduleThursday];
  }

  else
  {
    isDefaultScheduleThursday = 0;
  }

  v110 = [v12 numberWithInt:isDefaultScheduleThursday];
  v148[35] = v110;
  v147[36] = @"defaultScheduleTuesday";
  v14 = MEMORY[0x277CCABB0];
  if ([(HKSPAnalyticsDailyReportEvent *)self scheduleTuesday])
  {
    isDefaultScheduleTuesday = [(HKSPAnalyticsDailyReportEvent *)self isDefaultScheduleTuesday];
  }

  else
  {
    isDefaultScheduleTuesday = 0;
  }

  v109 = [v14 numberWithInt:isDefaultScheduleTuesday];
  v148[36] = v109;
  v147[37] = @"defaultScheduleWednesday";
  v16 = MEMORY[0x277CCABB0];
  if ([(HKSPAnalyticsDailyReportEvent *)self scheduleWednesday])
  {
    isDefaultScheduleWednesday = [(HKSPAnalyticsDailyReportEvent *)self isDefaultScheduleWednesday];
  }

  else
  {
    isDefaultScheduleWednesday = 0;
  }

  v108 = [v16 numberWithInt:isDefaultScheduleWednesday];
  v148[37] = v108;
  v147[38] = @"daysWornWatchToSleepInLast7Days";
  v107 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HKSPAnalyticsDailyReportEvent daysWornWatchToSleepInLast7Days](self, "daysWornWatchToSleepInLast7Days")}];
  v148[38] = v107;
  v147[39] = @"daysWornWatchToSleepInLast30Days";
  v106 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HKSPAnalyticsDailyReportEvent daysWornWatchToSleepInLast30Days](self, "daysWornWatchToSleepInLast30Days")}];
  v148[39] = v106;
  v147[40] = @"weekendDaysWornWatchToSleepInLast7Days";
  v105 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HKSPAnalyticsDailyReportEvent weekendDaysWornWatchToSleepInLast7Days](self, "weekendDaysWornWatchToSleepInLast7Days")}];
  v148[40] = v105;
  v147[41] = @"didWearWatchToSleepLastNight";
  v18 = [MEMORY[0x277CCABB0] numberWithBool:{-[HKSPAnalyticsDailyReportEvent didWearWatchToSleepLastNight](self, "didWearWatchToSleepLastNight")}];
  v148[41] = v18;
  v147[42] = @"sleepDurationLastNight";
  v19 = MEMORY[0x277CCABB0];
  [(HKSPAnalyticsDailyReportEvent *)self sleepDurationLastNight];
  v20 = [v19 numberWithDouble:?];
  v148[42] = v20;
  v147[43] = @"numberOfAwakeEventsLastNight";
  v21 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HKSPAnalyticsDailyReportEvent numberOfAwakeEventsLastNight](self, "numberOfAwakeEventsLastNight")}];
  v148[43] = v21;
  v147[44] = @"sleepStagePercentAwakeLastNight";
  v22 = MEMORY[0x277CCABB0];
  [(HKSPAnalyticsDailyReportEvent *)self sleepStagePercentAwakeLastNight];
  v23 = [v22 numberWithDouble:?];
  v148[44] = v23;
  v147[45] = @"sleepStagePercentRemLastNight";
  v24 = MEMORY[0x277CCABB0];
  [(HKSPAnalyticsDailyReportEvent *)self sleepStagePercentRemLastNight];
  v25 = [v24 numberWithDouble:?];
  v148[45] = v25;
  v147[46] = @"sleepStagePercentCoreLastNight";
  v26 = MEMORY[0x277CCABB0];
  [(HKSPAnalyticsDailyReportEvent *)self sleepStagePercentCoreLastNight];
  v27 = [v26 numberWithDouble:?];
  v148[46] = v27;
  v147[47] = @"sleepStagePercentDeepLastNight";
  v28 = MEMORY[0x277CCABB0];
  [(HKSPAnalyticsDailyReportEvent *)self sleepStagePercentDeepLastNight];
  v29 = [v28 numberWithDouble:?];
  v148[47] = v29;
  v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v148 forKeys:v147 count:48];
  v31 = [v136 initWithDictionary:v30];

  userAge = [(HKSPAnalyticsDailyReportEvent *)self userAge];

  if (userAge)
  {
    userAge2 = [(HKSPAnalyticsDailyReportEvent *)self userAge];
    [(NSDictionary *)v31 setObject:userAge2 forKeyedSubscript:@"userAge"];
  }

  biologicalSex = [(HKSPAnalyticsDailyReportEvent *)self biologicalSex];

  if (biologicalSex)
  {
    biologicalSex2 = [(HKSPAnalyticsDailyReportEvent *)self biologicalSex];
    [(NSDictionary *)v31 setObject:biologicalSex2 forKeyedSubscript:@"biologicalSex"];
  }

  hapticToneIdentifierFriday = [(HKSPAnalyticsDailyReportEvent *)self hapticToneIdentifierFriday];

  if (hapticToneIdentifierFriday)
  {
    hapticToneIdentifierFriday2 = [(HKSPAnalyticsDailyReportEvent *)self hapticToneIdentifierFriday];
    [(NSDictionary *)v31 setObject:hapticToneIdentifierFriday2 forKeyedSubscript:@"hapticToneIdentifierFriday"];
  }

  hapticToneIdentifierMonday = [(HKSPAnalyticsDailyReportEvent *)self hapticToneIdentifierMonday];

  if (hapticToneIdentifierMonday)
  {
    hapticToneIdentifierMonday2 = [(HKSPAnalyticsDailyReportEvent *)self hapticToneIdentifierMonday];
    [(NSDictionary *)v31 setObject:hapticToneIdentifierMonday2 forKeyedSubscript:@"hapticToneIdentifierMonday"];
  }

  hapticToneIdentifierSaturday = [(HKSPAnalyticsDailyReportEvent *)self hapticToneIdentifierSaturday];

  if (hapticToneIdentifierSaturday)
  {
    hapticToneIdentifierSaturday2 = [(HKSPAnalyticsDailyReportEvent *)self hapticToneIdentifierSaturday];
    [(NSDictionary *)v31 setObject:hapticToneIdentifierSaturday2 forKeyedSubscript:@"hapticToneIdentifierSaturday"];
  }

  hapticToneIdentifierSunday = [(HKSPAnalyticsDailyReportEvent *)self hapticToneIdentifierSunday];

  if (hapticToneIdentifierSunday)
  {
    hapticToneIdentifierSunday2 = [(HKSPAnalyticsDailyReportEvent *)self hapticToneIdentifierSunday];
    [(NSDictionary *)v31 setObject:hapticToneIdentifierSunday2 forKeyedSubscript:@"hapticToneIdentifierSunday"];
  }

  hapticToneIdentifierThursday = [(HKSPAnalyticsDailyReportEvent *)self hapticToneIdentifierThursday];

  if (hapticToneIdentifierThursday)
  {
    hapticToneIdentifierThursday2 = [(HKSPAnalyticsDailyReportEvent *)self hapticToneIdentifierThursday];
    [(NSDictionary *)v31 setObject:hapticToneIdentifierThursday2 forKeyedSubscript:@"hapticToneIdentifierThursday"];
  }

  hapticToneIdentifierTuesday = [(HKSPAnalyticsDailyReportEvent *)self hapticToneIdentifierTuesday];

  if (hapticToneIdentifierTuesday)
  {
    hapticToneIdentifierTuesday2 = [(HKSPAnalyticsDailyReportEvent *)self hapticToneIdentifierTuesday];
    [(NSDictionary *)v31 setObject:hapticToneIdentifierTuesday2 forKeyedSubscript:@"hapticToneIdentifierTuesday"];
  }

  hapticToneIdentifierWednesday = [(HKSPAnalyticsDailyReportEvent *)self hapticToneIdentifierWednesday];

  if (hapticToneIdentifierWednesday)
  {
    hapticToneIdentifierWednesday2 = [(HKSPAnalyticsDailyReportEvent *)self hapticToneIdentifierWednesday];
    [(NSDictionary *)v31 setObject:hapticToneIdentifierWednesday2 forKeyedSubscript:@"hapticToneIdentifierWednesday"];
  }

  activeWatchProductType = [(HKSPAnalyticsDailyReportEvent *)self activeWatchProductType];

  if (activeWatchProductType)
  {
    activeWatchProductType2 = [(HKSPAnalyticsDailyReportEvent *)self activeWatchProductType];
    [(NSDictionary *)v31 setObject:activeWatchProductType2 forKeyedSubscript:@"activeWatchProductType"];
  }

  weeksSinceOnboardedSleepSchedule = [(HKSPAnalyticsDailyReportEvent *)self weeksSinceOnboardedSleepSchedule];

  if (weeksSinceOnboardedSleepSchedule)
  {
    weeksSinceOnboardedSleepSchedule2 = [(HKSPAnalyticsDailyReportEvent *)self weeksSinceOnboardedSleepSchedule];
    [(NSDictionary *)v31 setObject:weeksSinceOnboardedSleepSchedule2 forKeyedSubscript:@"weeksSinceOnboardedSleepSchedule"];
  }

  weeksSinceOnboardedSleepTracking = [(HKSPAnalyticsDailyReportEvent *)self weeksSinceOnboardedSleepTracking];

  if (weeksSinceOnboardedSleepTracking)
  {
    weeksSinceOnboardedSleepTracking2 = [(HKSPAnalyticsDailyReportEvent *)self weeksSinceOnboardedSleepTracking];
    [(NSDictionary *)v31 setObject:weeksSinceOnboardedSleepTracking2 forKeyedSubscript:@"weeksSinceOnboardedSleepTracking"];
  }

  weeksSinceOnboardedWindDownActions = [(HKSPAnalyticsDailyReportEvent *)self weeksSinceOnboardedWindDownActions];

  if (weeksSinceOnboardedWindDownActions)
  {
    weeksSinceOnboardedWindDownActions2 = [(HKSPAnalyticsDailyReportEvent *)self weeksSinceOnboardedWindDownActions];
    [(NSDictionary *)v31 setObject:weeksSinceOnboardedWindDownActions2 forKeyedSubscript:@"weeksSinceOnboardedWindDownActions"];
  }

  stddevActualTimeAsleep = [(HKSPAnalyticsDailyReportEvent *)self stddevActualTimeAsleep];

  if (stddevActualTimeAsleep)
  {
    stddevActualTimeAsleep2 = [(HKSPAnalyticsDailyReportEvent *)self stddevActualTimeAsleep];
    [(NSDictionary *)v31 setObject:stddevActualTimeAsleep2 forKeyedSubscript:@"stddevActualTimeAsleep"];
  }

  stddevScheduledTimeAsleep = [(HKSPAnalyticsDailyReportEvent *)self stddevScheduledTimeAsleep];

  if (stddevScheduledTimeAsleep)
  {
    stddevScheduledTimeAsleep2 = [(HKSPAnalyticsDailyReportEvent *)self stddevScheduledTimeAsleep];
    [(NSDictionary *)v31 setObject:stddevScheduledTimeAsleep2 forKeyedSubscript:@"stddevScheduledTimeAsleep"];
  }

  stddevActualVsScheduledTimeAsleep = [(HKSPAnalyticsDailyReportEvent *)self stddevActualVsScheduledTimeAsleep];

  if (stddevActualVsScheduledTimeAsleep)
  {
    stddevActualVsScheduledTimeAsleep2 = [(HKSPAnalyticsDailyReportEvent *)self stddevActualVsScheduledTimeAsleep];
    [(NSDictionary *)v31 setObject:stddevActualVsScheduledTimeAsleep2 forKeyedSubscript:@"stddevActualVsScheduledTimeAsleep"];
  }

  isOnboardedBD = [(HKSPAnalyticsDailyReportEvent *)self isOnboardedBD];

  if (isOnboardedBD)
  {
    v65 = MEMORY[0x277CCABB0];
    isOnboardedBD2 = [(HKSPAnalyticsDailyReportEvent *)self isOnboardedBD];
    v67 = [v65 numberWithBool:{objc_msgSend(isOnboardedBD2, "BOOLValue")}];
    [(NSDictionary *)v31 setObject:v67 forKeyedSubscript:@"isOnboardedBD"];
  }

  meanTimeBetweenBDSessionsPastNight = [(HKSPAnalyticsDailyReportEvent *)self meanTimeBetweenBDSessionsPastNight];

  if (meanTimeBetweenBDSessionsPastNight)
  {
    meanTimeBetweenBDSessionsPastNight2 = [(HKSPAnalyticsDailyReportEvent *)self meanTimeBetweenBDSessionsPastNight];
    [(NSDictionary *)v31 setObject:meanTimeBetweenBDSessionsPastNight2 forKeyedSubscript:@"meanTimeBetweenSessionsPastNight"];
  }

  maxTimeBetweenBDSessionsPastNight = [(HKSPAnalyticsDailyReportEvent *)self maxTimeBetweenBDSessionsPastNight];

  if (maxTimeBetweenBDSessionsPastNight)
  {
    maxTimeBetweenBDSessionsPastNight2 = [(HKSPAnalyticsDailyReportEvent *)self maxTimeBetweenBDSessionsPastNight];
    [(NSDictionary *)v31 setObject:maxTimeBetweenBDSessionsPastNight2 forKeyedSubscript:@"maxTimeBetweenSessionsPastNight"];
  }

  minTimeBetweenBDSessionsPastNight = [(HKSPAnalyticsDailyReportEvent *)self minTimeBetweenBDSessionsPastNight];

  if (minTimeBetweenBDSessionsPastNight)
  {
    minTimeBetweenBDSessionsPastNight2 = [(HKSPAnalyticsDailyReportEvent *)self minTimeBetweenBDSessionsPastNight];
    [(NSDictionary *)v31 setObject:minTimeBetweenBDSessionsPastNight2 forKeyedSubscript:@"minTimeBetweenSessionsPastNight"];
  }

  numBDValuesInPastNight = [(HKSPAnalyticsDailyReportEvent *)self numBDValuesInPastNight];

  if (numBDValuesInPastNight)
  {
    numBDValuesInPastNight2 = [(HKSPAnalyticsDailyReportEvent *)self numBDValuesInPastNight];
    [(NSDictionary *)v31 setObject:numBDValuesInPastNight2 forKeyedSubscript:@"numBDValuesInPastNight"];
  }

  numBDValuesInPast30Days = [(HKSPAnalyticsDailyReportEvent *)self numBDValuesInPast30Days];

  if (numBDValuesInPast30Days)
  {
    numBDValuesInPast30Days2 = [(HKSPAnalyticsDailyReportEvent *)self numBDValuesInPast30Days];
    [(NSDictionary *)v31 setObject:numBDValuesInPast30Days2 forKeyedSubscript:@"numBDValuesInPast30Days"];
  }

  numSleepSessionsWithBDsOverThresholdLast30Days = [(HKSPAnalyticsDailyReportEvent *)self numSleepSessionsWithBDsOverThresholdLast30Days];

  if (numSleepSessionsWithBDsOverThresholdLast30Days)
  {
    numSleepSessionsWithBDsOverThresholdLast30Days2 = [(HKSPAnalyticsDailyReportEvent *)self numSleepSessionsWithBDsOverThresholdLast30Days];
    [(NSDictionary *)v31 setObject:numSleepSessionsWithBDsOverThresholdLast30Days2 forKeyedSubscript:@"numSleepSessionsWithBDsOverThresholdLast30Days"];
  }

  maxBDValueInPast30Days = [(HKSPAnalyticsDailyReportEvent *)self maxBDValueInPast30Days];

  if (maxBDValueInPast30Days)
  {
    maxBDValueInPast30Days2 = [(HKSPAnalyticsDailyReportEvent *)self maxBDValueInPast30Days];
    [(NSDictionary *)v31 setObject:maxBDValueInPast30Days2 forKeyedSubscript:@"maxBDValueInPast30Days"];
  }

  numSleepDaysWithBDsOverThresholdLast30Days = [(HKSPAnalyticsDailyReportEvent *)self numSleepDaysWithBDsOverThresholdLast30Days];

  if (numSleepDaysWithBDsOverThresholdLast30Days)
  {
    numSleepDaysWithBDsOverThresholdLast30Days2 = [(HKSPAnalyticsDailyReportEvent *)self numSleepDaysWithBDsOverThresholdLast30Days];
    [(NSDictionary *)v31 setObject:numSleepDaysWithBDsOverThresholdLast30Days2 forKeyedSubscript:@"numSleepDaysWithBDsOverThresholdLast30Days"];
  }

  numSleepDaysWithMultipleBDinPast30Days = [(HKSPAnalyticsDailyReportEvent *)self numSleepDaysWithMultipleBDinPast30Days];

  if (numSleepDaysWithMultipleBDinPast30Days)
  {
    numSleepDaysWithMultipleBDinPast30Days2 = [(HKSPAnalyticsDailyReportEvent *)self numSleepDaysWithMultipleBDinPast30Days];
    [(NSDictionary *)v31 setObject:numSleepDaysWithMultipleBDinPast30Days2 forKeyedSubscript:@"numSleepDaysWithMultipleBDinPast30Days"];
  }

  bDOnboardingCountryCode = [(HKSPAnalyticsDailyReportEvent *)self BDOnboardingCountryCode];

  if (bDOnboardingCountryCode)
  {
    bDOnboardingCountryCode2 = [(HKSPAnalyticsDailyReportEvent *)self BDOnboardingCountryCode];
    [(NSDictionary *)v31 setObject:bDOnboardingCountryCode2 forKeyedSubscript:@"BDOnboardingCountryCode"];
  }

  weeksSinceOnboardedBD = [(HKSPAnalyticsDailyReportEvent *)self weeksSinceOnboardedBD];

  if (weeksSinceOnboardedBD)
  {
    weeksSinceOnboardedBD2 = [(HKSPAnalyticsDailyReportEvent *)self weeksSinceOnboardedBD];
    [(NSDictionary *)v31 setObject:weeksSinceOnboardedBD2 forKeyedSubscript:@"weeksSinceOnboardedBD"];
  }

  areHealthNotificationsAuthorized = [(HKSPAnalyticsDailyReportEvent *)self areHealthNotificationsAuthorized];

  if (areHealthNotificationsAuthorized)
  {
    areHealthNotificationsAuthorized2 = [(HKSPAnalyticsDailyReportEvent *)self areHealthNotificationsAuthorized];
    [(NSDictionary *)v31 setObject:areHealthNotificationsAuthorized2 forKeyedSubscript:@"areHealthNotificationsAuthorized"];
  }

  numBDNotificationsInPastNight = [(HKSPAnalyticsDailyReportEvent *)self numBDNotificationsInPastNight];

  if (numBDNotificationsInPastNight)
  {
    numBDNotificationsInPastNight2 = [(HKSPAnalyticsDailyReportEvent *)self numBDNotificationsInPastNight];
    [(NSDictionary *)v31 setObject:numBDNotificationsInPastNight2 forKeyedSubscript:@"numBDNotificationsInPastNight"];
  }

  numBDNotificationsInPast30Nights = [(HKSPAnalyticsDailyReportEvent *)self numBDNotificationsInPast30Nights];

  if (numBDNotificationsInPast30Nights)
  {
    numBDNotificationsInPast30Nights2 = [(HKSPAnalyticsDailyReportEvent *)self numBDNotificationsInPast30Nights];
    [(NSDictionary *)v31 setObject:numBDNotificationsInPast30Nights2 forKeyedSubscript:@"numBDNotificationsInPast30Nights"];
  }

  numBDNotificationsInPast180Nights = [(HKSPAnalyticsDailyReportEvent *)self numBDNotificationsInPast180Nights];

  if (numBDNotificationsInPast180Nights)
  {
    numBDNotificationsInPast180Nights2 = [(HKSPAnalyticsDailyReportEvent *)self numBDNotificationsInPast180Nights];
    [(NSDictionary *)v31 setObject:numBDNotificationsInPast180Nights2 forKeyedSubscript:@"numBDNotificationsInPast180Nights"];
  }

  numDaysSinceLastBDNotification = [(HKSPAnalyticsDailyReportEvent *)self numDaysSinceLastBDNotification];

  if (numDaysSinceLastBDNotification)
  {
    numDaysSinceLastBDNotification2 = [(HKSPAnalyticsDailyReportEvent *)self numDaysSinceLastBDNotification];
    [(NSDictionary *)v31 setObject:numDaysSinceLastBDNotification2 forKeyedSubscript:@"numDaysSinceLastBDNotification"];
  }

  numDaysSinceLastAnalysis = [(HKSPAnalyticsDailyReportEvent *)self numDaysSinceLastAnalysis];

  if (numDaysSinceLastAnalysis)
  {
    numDaysSinceLastAnalysis2 = [(HKSPAnalyticsDailyReportEvent *)self numDaysSinceLastAnalysis];
    [(NSDictionary *)v31 setObject:numDaysSinceLastAnalysis2 forKeyedSubscript:@"numDaysSinceLastAnalysis"];
  }

  v102 = v31;

  v103 = *MEMORY[0x277D85DE8];
  return v31;
}

@end