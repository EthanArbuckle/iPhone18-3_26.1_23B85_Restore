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
    v5 = [(HKSPAnalyticsDailyReportEvent *)self isDefaultScheduleFriday];
  }

  else
  {
    v5 = 0;
  }

  v114 = [v4 numberWithInt:v5];
  v148[31] = v114;
  v147[32] = @"defaultScheduleMonday";
  v6 = MEMORY[0x277CCABB0];
  if ([(HKSPAnalyticsDailyReportEvent *)self scheduleMonday])
  {
    v7 = [(HKSPAnalyticsDailyReportEvent *)self isDefaultScheduleMonday];
  }

  else
  {
    v7 = 0;
  }

  v113 = [v6 numberWithInt:v7];
  v148[32] = v113;
  v147[33] = @"defaultScheduleSaturday";
  v8 = MEMORY[0x277CCABB0];
  if ([(HKSPAnalyticsDailyReportEvent *)self scheduleSaturday])
  {
    v9 = [(HKSPAnalyticsDailyReportEvent *)self isDefaultScheduleSaturday];
  }

  else
  {
    v9 = 0;
  }

  v112 = [v8 numberWithInt:v9];
  v148[33] = v112;
  v147[34] = @"defaultScheduleSunday";
  v10 = MEMORY[0x277CCABB0];
  if ([(HKSPAnalyticsDailyReportEvent *)self scheduleSunday])
  {
    v11 = [(HKSPAnalyticsDailyReportEvent *)self isDefaultScheduleSunday];
  }

  else
  {
    v11 = 0;
  }

  v111 = [v10 numberWithInt:v11];
  v148[34] = v111;
  v147[35] = @"defaultScheduleThursday";
  v12 = MEMORY[0x277CCABB0];
  if ([(HKSPAnalyticsDailyReportEvent *)self scheduleThursday])
  {
    v13 = [(HKSPAnalyticsDailyReportEvent *)self isDefaultScheduleThursday];
  }

  else
  {
    v13 = 0;
  }

  v110 = [v12 numberWithInt:v13];
  v148[35] = v110;
  v147[36] = @"defaultScheduleTuesday";
  v14 = MEMORY[0x277CCABB0];
  if ([(HKSPAnalyticsDailyReportEvent *)self scheduleTuesday])
  {
    v15 = [(HKSPAnalyticsDailyReportEvent *)self isDefaultScheduleTuesday];
  }

  else
  {
    v15 = 0;
  }

  v109 = [v14 numberWithInt:v15];
  v148[36] = v109;
  v147[37] = @"defaultScheduleWednesday";
  v16 = MEMORY[0x277CCABB0];
  if ([(HKSPAnalyticsDailyReportEvent *)self scheduleWednesday])
  {
    v17 = [(HKSPAnalyticsDailyReportEvent *)self isDefaultScheduleWednesday];
  }

  else
  {
    v17 = 0;
  }

  v108 = [v16 numberWithInt:v17];
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

  v32 = [(HKSPAnalyticsDailyReportEvent *)self userAge];

  if (v32)
  {
    v33 = [(HKSPAnalyticsDailyReportEvent *)self userAge];
    [(NSDictionary *)v31 setObject:v33 forKeyedSubscript:@"userAge"];
  }

  v34 = [(HKSPAnalyticsDailyReportEvent *)self biologicalSex];

  if (v34)
  {
    v35 = [(HKSPAnalyticsDailyReportEvent *)self biologicalSex];
    [(NSDictionary *)v31 setObject:v35 forKeyedSubscript:@"biologicalSex"];
  }

  v36 = [(HKSPAnalyticsDailyReportEvent *)self hapticToneIdentifierFriday];

  if (v36)
  {
    v37 = [(HKSPAnalyticsDailyReportEvent *)self hapticToneIdentifierFriday];
    [(NSDictionary *)v31 setObject:v37 forKeyedSubscript:@"hapticToneIdentifierFriday"];
  }

  v38 = [(HKSPAnalyticsDailyReportEvent *)self hapticToneIdentifierMonday];

  if (v38)
  {
    v39 = [(HKSPAnalyticsDailyReportEvent *)self hapticToneIdentifierMonday];
    [(NSDictionary *)v31 setObject:v39 forKeyedSubscript:@"hapticToneIdentifierMonday"];
  }

  v40 = [(HKSPAnalyticsDailyReportEvent *)self hapticToneIdentifierSaturday];

  if (v40)
  {
    v41 = [(HKSPAnalyticsDailyReportEvent *)self hapticToneIdentifierSaturday];
    [(NSDictionary *)v31 setObject:v41 forKeyedSubscript:@"hapticToneIdentifierSaturday"];
  }

  v42 = [(HKSPAnalyticsDailyReportEvent *)self hapticToneIdentifierSunday];

  if (v42)
  {
    v43 = [(HKSPAnalyticsDailyReportEvent *)self hapticToneIdentifierSunday];
    [(NSDictionary *)v31 setObject:v43 forKeyedSubscript:@"hapticToneIdentifierSunday"];
  }

  v44 = [(HKSPAnalyticsDailyReportEvent *)self hapticToneIdentifierThursday];

  if (v44)
  {
    v45 = [(HKSPAnalyticsDailyReportEvent *)self hapticToneIdentifierThursday];
    [(NSDictionary *)v31 setObject:v45 forKeyedSubscript:@"hapticToneIdentifierThursday"];
  }

  v46 = [(HKSPAnalyticsDailyReportEvent *)self hapticToneIdentifierTuesday];

  if (v46)
  {
    v47 = [(HKSPAnalyticsDailyReportEvent *)self hapticToneIdentifierTuesday];
    [(NSDictionary *)v31 setObject:v47 forKeyedSubscript:@"hapticToneIdentifierTuesday"];
  }

  v48 = [(HKSPAnalyticsDailyReportEvent *)self hapticToneIdentifierWednesday];

  if (v48)
  {
    v49 = [(HKSPAnalyticsDailyReportEvent *)self hapticToneIdentifierWednesday];
    [(NSDictionary *)v31 setObject:v49 forKeyedSubscript:@"hapticToneIdentifierWednesday"];
  }

  v50 = [(HKSPAnalyticsDailyReportEvent *)self activeWatchProductType];

  if (v50)
  {
    v51 = [(HKSPAnalyticsDailyReportEvent *)self activeWatchProductType];
    [(NSDictionary *)v31 setObject:v51 forKeyedSubscript:@"activeWatchProductType"];
  }

  v52 = [(HKSPAnalyticsDailyReportEvent *)self weeksSinceOnboardedSleepSchedule];

  if (v52)
  {
    v53 = [(HKSPAnalyticsDailyReportEvent *)self weeksSinceOnboardedSleepSchedule];
    [(NSDictionary *)v31 setObject:v53 forKeyedSubscript:@"weeksSinceOnboardedSleepSchedule"];
  }

  v54 = [(HKSPAnalyticsDailyReportEvent *)self weeksSinceOnboardedSleepTracking];

  if (v54)
  {
    v55 = [(HKSPAnalyticsDailyReportEvent *)self weeksSinceOnboardedSleepTracking];
    [(NSDictionary *)v31 setObject:v55 forKeyedSubscript:@"weeksSinceOnboardedSleepTracking"];
  }

  v56 = [(HKSPAnalyticsDailyReportEvent *)self weeksSinceOnboardedWindDownActions];

  if (v56)
  {
    v57 = [(HKSPAnalyticsDailyReportEvent *)self weeksSinceOnboardedWindDownActions];
    [(NSDictionary *)v31 setObject:v57 forKeyedSubscript:@"weeksSinceOnboardedWindDownActions"];
  }

  v58 = [(HKSPAnalyticsDailyReportEvent *)self stddevActualTimeAsleep];

  if (v58)
  {
    v59 = [(HKSPAnalyticsDailyReportEvent *)self stddevActualTimeAsleep];
    [(NSDictionary *)v31 setObject:v59 forKeyedSubscript:@"stddevActualTimeAsleep"];
  }

  v60 = [(HKSPAnalyticsDailyReportEvent *)self stddevScheduledTimeAsleep];

  if (v60)
  {
    v61 = [(HKSPAnalyticsDailyReportEvent *)self stddevScheduledTimeAsleep];
    [(NSDictionary *)v31 setObject:v61 forKeyedSubscript:@"stddevScheduledTimeAsleep"];
  }

  v62 = [(HKSPAnalyticsDailyReportEvent *)self stddevActualVsScheduledTimeAsleep];

  if (v62)
  {
    v63 = [(HKSPAnalyticsDailyReportEvent *)self stddevActualVsScheduledTimeAsleep];
    [(NSDictionary *)v31 setObject:v63 forKeyedSubscript:@"stddevActualVsScheduledTimeAsleep"];
  }

  v64 = [(HKSPAnalyticsDailyReportEvent *)self isOnboardedBD];

  if (v64)
  {
    v65 = MEMORY[0x277CCABB0];
    v66 = [(HKSPAnalyticsDailyReportEvent *)self isOnboardedBD];
    v67 = [v65 numberWithBool:{objc_msgSend(v66, "BOOLValue")}];
    [(NSDictionary *)v31 setObject:v67 forKeyedSubscript:@"isOnboardedBD"];
  }

  v68 = [(HKSPAnalyticsDailyReportEvent *)self meanTimeBetweenBDSessionsPastNight];

  if (v68)
  {
    v69 = [(HKSPAnalyticsDailyReportEvent *)self meanTimeBetweenBDSessionsPastNight];
    [(NSDictionary *)v31 setObject:v69 forKeyedSubscript:@"meanTimeBetweenSessionsPastNight"];
  }

  v70 = [(HKSPAnalyticsDailyReportEvent *)self maxTimeBetweenBDSessionsPastNight];

  if (v70)
  {
    v71 = [(HKSPAnalyticsDailyReportEvent *)self maxTimeBetweenBDSessionsPastNight];
    [(NSDictionary *)v31 setObject:v71 forKeyedSubscript:@"maxTimeBetweenSessionsPastNight"];
  }

  v72 = [(HKSPAnalyticsDailyReportEvent *)self minTimeBetweenBDSessionsPastNight];

  if (v72)
  {
    v73 = [(HKSPAnalyticsDailyReportEvent *)self minTimeBetweenBDSessionsPastNight];
    [(NSDictionary *)v31 setObject:v73 forKeyedSubscript:@"minTimeBetweenSessionsPastNight"];
  }

  v74 = [(HKSPAnalyticsDailyReportEvent *)self numBDValuesInPastNight];

  if (v74)
  {
    v75 = [(HKSPAnalyticsDailyReportEvent *)self numBDValuesInPastNight];
    [(NSDictionary *)v31 setObject:v75 forKeyedSubscript:@"numBDValuesInPastNight"];
  }

  v76 = [(HKSPAnalyticsDailyReportEvent *)self numBDValuesInPast30Days];

  if (v76)
  {
    v77 = [(HKSPAnalyticsDailyReportEvent *)self numBDValuesInPast30Days];
    [(NSDictionary *)v31 setObject:v77 forKeyedSubscript:@"numBDValuesInPast30Days"];
  }

  v78 = [(HKSPAnalyticsDailyReportEvent *)self numSleepSessionsWithBDsOverThresholdLast30Days];

  if (v78)
  {
    v79 = [(HKSPAnalyticsDailyReportEvent *)self numSleepSessionsWithBDsOverThresholdLast30Days];
    [(NSDictionary *)v31 setObject:v79 forKeyedSubscript:@"numSleepSessionsWithBDsOverThresholdLast30Days"];
  }

  v80 = [(HKSPAnalyticsDailyReportEvent *)self maxBDValueInPast30Days];

  if (v80)
  {
    v81 = [(HKSPAnalyticsDailyReportEvent *)self maxBDValueInPast30Days];
    [(NSDictionary *)v31 setObject:v81 forKeyedSubscript:@"maxBDValueInPast30Days"];
  }

  v82 = [(HKSPAnalyticsDailyReportEvent *)self numSleepDaysWithBDsOverThresholdLast30Days];

  if (v82)
  {
    v83 = [(HKSPAnalyticsDailyReportEvent *)self numSleepDaysWithBDsOverThresholdLast30Days];
    [(NSDictionary *)v31 setObject:v83 forKeyedSubscript:@"numSleepDaysWithBDsOverThresholdLast30Days"];
  }

  v84 = [(HKSPAnalyticsDailyReportEvent *)self numSleepDaysWithMultipleBDinPast30Days];

  if (v84)
  {
    v85 = [(HKSPAnalyticsDailyReportEvent *)self numSleepDaysWithMultipleBDinPast30Days];
    [(NSDictionary *)v31 setObject:v85 forKeyedSubscript:@"numSleepDaysWithMultipleBDinPast30Days"];
  }

  v86 = [(HKSPAnalyticsDailyReportEvent *)self BDOnboardingCountryCode];

  if (v86)
  {
    v87 = [(HKSPAnalyticsDailyReportEvent *)self BDOnboardingCountryCode];
    [(NSDictionary *)v31 setObject:v87 forKeyedSubscript:@"BDOnboardingCountryCode"];
  }

  v88 = [(HKSPAnalyticsDailyReportEvent *)self weeksSinceOnboardedBD];

  if (v88)
  {
    v89 = [(HKSPAnalyticsDailyReportEvent *)self weeksSinceOnboardedBD];
    [(NSDictionary *)v31 setObject:v89 forKeyedSubscript:@"weeksSinceOnboardedBD"];
  }

  v90 = [(HKSPAnalyticsDailyReportEvent *)self areHealthNotificationsAuthorized];

  if (v90)
  {
    v91 = [(HKSPAnalyticsDailyReportEvent *)self areHealthNotificationsAuthorized];
    [(NSDictionary *)v31 setObject:v91 forKeyedSubscript:@"areHealthNotificationsAuthorized"];
  }

  v92 = [(HKSPAnalyticsDailyReportEvent *)self numBDNotificationsInPastNight];

  if (v92)
  {
    v93 = [(HKSPAnalyticsDailyReportEvent *)self numBDNotificationsInPastNight];
    [(NSDictionary *)v31 setObject:v93 forKeyedSubscript:@"numBDNotificationsInPastNight"];
  }

  v94 = [(HKSPAnalyticsDailyReportEvent *)self numBDNotificationsInPast30Nights];

  if (v94)
  {
    v95 = [(HKSPAnalyticsDailyReportEvent *)self numBDNotificationsInPast30Nights];
    [(NSDictionary *)v31 setObject:v95 forKeyedSubscript:@"numBDNotificationsInPast30Nights"];
  }

  v96 = [(HKSPAnalyticsDailyReportEvent *)self numBDNotificationsInPast180Nights];

  if (v96)
  {
    v97 = [(HKSPAnalyticsDailyReportEvent *)self numBDNotificationsInPast180Nights];
    [(NSDictionary *)v31 setObject:v97 forKeyedSubscript:@"numBDNotificationsInPast180Nights"];
  }

  v98 = [(HKSPAnalyticsDailyReportEvent *)self numDaysSinceLastBDNotification];

  if (v98)
  {
    v99 = [(HKSPAnalyticsDailyReportEvent *)self numDaysSinceLastBDNotification];
    [(NSDictionary *)v31 setObject:v99 forKeyedSubscript:@"numDaysSinceLastBDNotification"];
  }

  v100 = [(HKSPAnalyticsDailyReportEvent *)self numDaysSinceLastAnalysis];

  if (v100)
  {
    v101 = [(HKSPAnalyticsDailyReportEvent *)self numDaysSinceLastAnalysis];
    [(NSDictionary *)v31 setObject:v101 forKeyedSubscript:@"numDaysSinceLastAnalysis"];
  }

  v102 = v31;

  v103 = *MEMORY[0x277D85DE8];
  return v31;
}

@end