@interface HKSPSleepEventRecord
+ (void)_appendDateDescriptionIfRelevant:(id)a3 withName:(id)a4 toBuilder:(id)a5;
- (BOOL)_needsMigrationForCoder:(id)a3;
- (BOOL)isConsolidatedSleepCoachingOnboardingCompleted;
- (BOOL)isConsolidatedSleepTrackingOnboardingCompleted;
- (BOOL)isCurrentSleepCoachingOnboardingCompleted;
- (BOOL)isCurrentSleepTrackingOnboardingCompleted;
- (BOOL)isCurrentSleepWindDownShortcutsOnboardingCompleted;
- (BOOL)isEqualToOnboardingModel:(id)a3;
- (HKSPSleepEventRecord)init;
- (HKSPSleepEventRecord)initWithCoder:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)initFromObject:(id)a3;
- (id)mutableCopy;
- (id)objectWithSyncAnchor:(id)a3;
- (id)secondsSinceAlarmDismissalFromDate:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKSPSleepEventRecord

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = objc_opt_class();
  v5 = [(HKSPSleepEventRecord *)self wakeUpAlarmSnoozedUntilDate];
  [v4 _appendDateDescriptionIfRelevant:v5 withName:@"wakeUpAlarmSnoozedUntilDate" toBuilder:v3];

  v6 = objc_opt_class();
  v7 = [(HKSPSleepEventRecord *)self wakeUpAlarmDismissedDate];
  [v6 _appendDateDescriptionIfRelevant:v7 withName:@"wakeUpAlarmDismissedDate" toBuilder:v3];

  v8 = objc_opt_class();
  v9 = [(HKSPSleepEventRecord *)self wakeUpOverriddenDate];
  [v8 _appendDateDescriptionIfRelevant:v9 withName:@"wakeUpOverriddenDate" toBuilder:v3];

  v10 = objc_opt_class();
  v11 = [(HKSPSleepEventRecord *)self wakeUpEarlyNotificationConfirmedDate];
  [v10 _appendDateDescriptionIfRelevant:v11 withName:@"wakeUpEarlyNotificationConfirmedDate" toBuilder:v3];

  v12 = objc_opt_class();
  v13 = [(HKSPSleepEventRecord *)self wakeUpConfirmedUntilDate];
  [v12 _appendDateDescriptionIfRelevant:v13 withName:@"wakeUpConfirmedUntilDate" toBuilder:v3];

  v14 = objc_opt_class();
  v15 = [(HKSPSleepEventRecord *)self goodMorningDismissedDate];
  [v14 _appendDateDescriptionIfRelevant:v15 withName:@"goodMorningDismissedDate" toBuilder:v3];

  v16 = [v3 appendInteger:-[HKSPSleepEventRecord sleepCoachingOnboardingCompletedVersion](self withName:{"sleepCoachingOnboardingCompletedVersion"), @"sleepCoachingOnboardingCompletedVersion"}];
  v17 = objc_opt_class();
  v18 = [(HKSPSleepEventRecord *)self sleepCoachingOnboardingFirstCompletedDate];
  [v17 _appendDateDescriptionIfRelevant:v18 withName:@"sleepCoachingOnboardingFirstCompletedDate" toBuilder:v3];

  v19 = [v3 appendInteger:-[HKSPSleepEventRecord sleepTrackingOnboardingCompletedVersion](self withName:{"sleepTrackingOnboardingCompletedVersion"), @"sleepTrackingOnboardingCompletedVersion"}];
  v20 = objc_opt_class();
  v21 = [(HKSPSleepEventRecord *)self sleepTrackingOnboardingFirstCompletedDate];
  [v20 _appendDateDescriptionIfRelevant:v21 withName:@"sleepTrackingOnboardingFirstCompletedDate" toBuilder:v3];

  v22 = [v3 appendInteger:-[HKSPSleepEventRecord sleepWindDownShortcutsOnboardingCompletedVersion](self withName:{"sleepWindDownShortcutsOnboardingCompletedVersion"), @"sleepWindDownShortcutsOnboardingCompletedVersion"}];
  v23 = objc_opt_class();
  v24 = [(HKSPSleepEventRecord *)self sleepWindDownShortcutsOnboardingFirstCompletedDate];
  [v23 _appendDateDescriptionIfRelevant:v24 withName:@"sleepWindDownShortcutsOnboardingFirstCompletedDate" toBuilder:v3];

  v25 = [v3 appendInteger:-[HKSPSleepEventRecord lastWakeUpResultsIntroductionNotificationVersionSent](self withName:{"lastWakeUpResultsIntroductionNotificationVersionSent"), @"lastWakeUpResultsIntroductionNotificationVersionSent"}];
  v26 = objc_opt_class();
  v27 = [(HKSPSleepEventRecord *)self lastWakeUpResultsIntroductionNotificationVersionSentDate];
  [v26 _appendDateDescriptionIfRelevant:v27 withName:@"lastWakeUpResultsIntroductionNotificationVersionSentDate" toBuilder:v3];

  return v3;
}

- (BOOL)isCurrentSleepTrackingOnboardingCompleted
{
  v3 = [(HKSPSleepEventRecord *)self isAnySleepTrackingOnboardingCompleted];
  if (v3)
  {
    LOBYTE(v3) = [(HKSPSleepEventRecord *)self sleepTrackingOnboardingCompletedVersion]> 1;
  }

  return v3;
}

- (BOOL)isCurrentSleepWindDownShortcutsOnboardingCompleted
{
  v3 = [(HKSPSleepEventRecord *)self isAnySleepWindDownShortcutsOnboardingCompleted];
  if (v3)
  {
    LOBYTE(v3) = [(HKSPSleepEventRecord *)self sleepWindDownShortcutsOnboardingCompletedVersion]> 1;
  }

  return v3;
}

- (BOOL)isCurrentSleepCoachingOnboardingCompleted
{
  v3 = [(HKSPSleepEventRecord *)self isAnySleepCoachingOnboardingCompleted];
  if (v3)
  {
    LOBYTE(v3) = [(HKSPSleepEventRecord *)self sleepCoachingOnboardingCompletedVersion]> 1;
  }

  return v3;
}

- (BOOL)isEqualToOnboardingModel:(id)a3
{
  v4 = a3;
  v5 = [(HKSPSleepEventRecord *)self sleepCoachingOnboardingCompletedVersion];
  if (v5 == [v4 sleepCoachingOnboardingCompletedVersion] && (v6 = -[HKSPSleepEventRecord sleepTrackingOnboardingCompletedVersion](self, "sleepTrackingOnboardingCompletedVersion"), v6 == objc_msgSend(v4, "sleepTrackingOnboardingCompletedVersion")))
  {
    v7 = [(HKSPSleepEventRecord *)self sleepWindDownShortcutsOnboardingCompletedVersion];
    v8 = v7 == [v4 sleepWindDownShortcutsOnboardingCompletedVersion];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (HKSPSleepEventRecord)init
{
  v22.receiver = self;
  v22.super_class = HKSPSleepEventRecord;
  v2 = [(HKSPSleepEventRecord *)&v22 init];
  v3 = v2;
  if (v2)
  {
    v2->_version = 1;
    v4 = [MEMORY[0x277CBEAA8] distantPast];
    wakeUpEarlyNotificationConfirmedDate = v3->_wakeUpEarlyNotificationConfirmedDate;
    v3->_wakeUpEarlyNotificationConfirmedDate = v4;

    v6 = [MEMORY[0x277CBEAA8] distantPast];
    wakeUpConfirmedUntilDate = v3->_wakeUpConfirmedUntilDate;
    v3->_wakeUpConfirmedUntilDate = v6;

    v8 = [MEMORY[0x277CBEAA8] distantPast];
    wakeUpAlarmDismissedDate = v3->_wakeUpAlarmDismissedDate;
    v3->_wakeUpAlarmDismissedDate = v8;

    v10 = [MEMORY[0x277CBEAA8] distantPast];
    wakeUpOverriddenDate = v3->_wakeUpOverriddenDate;
    v3->_wakeUpOverriddenDate = v10;

    v12 = [MEMORY[0x277CBEAA8] distantPast];
    wakeUpAlarmSnoozedUntilDate = v3->_wakeUpAlarmSnoozedUntilDate;
    v3->_wakeUpAlarmSnoozedUntilDate = v12;

    v14 = [MEMORY[0x277CBEAA8] distantPast];
    goodMorningDismissedDate = v3->_goodMorningDismissedDate;
    v3->_goodMorningDismissedDate = v14;

    sleepCoachingOnboardingFirstCompletedDate = v3->_sleepCoachingOnboardingFirstCompletedDate;
    v3->_sleepCoachingOnboardingCompletedVersion = 0;
    v3->_sleepCoachingOnboardingFirstCompletedDate = 0;

    sleepTrackingOnboardingFirstCompletedDate = v3->_sleepTrackingOnboardingFirstCompletedDate;
    v3->_sleepTrackingOnboardingCompletedVersion = 0;
    v3->_sleepTrackingOnboardingFirstCompletedDate = 0;

    sleepWindDownShortcutsOnboardingFirstCompletedDate = v3->_sleepWindDownShortcutsOnboardingFirstCompletedDate;
    v3->_sleepWindDownShortcutsOnboardingCompletedVersion = 0;
    v3->_sleepWindDownShortcutsOnboardingFirstCompletedDate = 0;

    lastWakeUpResultsIntroductionNotificationVersionSentDate = v3->_lastWakeUpResultsIntroductionNotificationVersionSentDate;
    v3->_lastWakeUpResultsIntroductionNotificationVersionSent = 0;
    v3->_lastWakeUpResultsIntroductionNotificationVersionSentDate = 0;

    v20 = v3;
  }

  return v3;
}

- (id)initFromObject:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(HKSPSleepEventRecord *)self init];
    HKSPCopyFromObject(v5, v6);
    v7 = [v5 syncAnchor];

    v8 = [v7 copyWithZone:0];
    syncAnchor = v6->_syncAnchor;
    v6->_syncAnchor = v8;

    self = v6;
    v10 = self;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)objectWithSyncAnchor:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initFromObject:self];
  v6 = [v4 copyWithZone:0];

  v7 = v5[3];
  v5[3] = v6;

  return v5;
}

- (HKSPSleepEventRecord)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = HKSPSleepEventRecord;
  v5 = [(HKSPSleepEventRecord *)&v11 init];
  v6 = v5;
  if (v5)
  {
    HKSPDecodeObjectWithCoder(v5, v4);
    if (([v4 hksp_serializationOptions] & 1) == 0)
    {
      v7 = [v4 decodeObjectOfClass:HKSPSyncAnchorClass() forKey:@"HKSPEventRecordSyncAnchor"];
      syncAnchor = v6->_syncAnchor;
      v6->_syncAnchor = v7;
    }

    if ([(HKSPSleepEventRecord *)v6 _needsMigrationForCoder:v4])
    {
      [(HKSPSleepEventRecord *)v6 _migrateForCoder:v4];
    }

    v9 = v6;
  }

  return v6;
}

- (BOOL)_needsMigrationForCoder:(id)a3
{
  v3 = a3;
  v4 = ([v3 hksp_serializationOptions] & 1) != 0 && objc_msgSend(v3, "decodeIntegerForKey:", @"HKSPEventRecordVersion") == 0;

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  HKSPEncodeObjectWithCoder(self, v4);
  if (([v4 hksp_serializationOptions] & 1) == 0)
  {
    [v4 encodeObject:self->_syncAnchor forKey:@"HKSPEventRecordSyncAnchor"];
  }
}

- (id)mutableCopy
{
  v3 = [HKSPMutableSleepEventRecord alloc];

  return [(HKSPMutableSleepEventRecord *)v3 initFromObject:self];
}

- (id)succinctDescription
{
  v2 = [(HKSPSleepEventRecord *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

+ (void)_appendDateDescriptionIfRelevant:(id)a3 withName:(id)a4 toBuilder:(id)a5
{
  v12 = a3;
  v7 = a4;
  v8 = a5;
  if (v12)
  {
    v9 = [MEMORY[0x277CBEAA8] distantPast];
    if (([v12 isEqualToDate:v9] & 1) == 0)
    {
      v10 = [MEMORY[0x277CBEAA8] distantFuture];
      v11 = [v12 isEqualToDate:v10];

      if (v11)
      {
        goto LABEL_6;
      }

      v9 = [v12 hkspDescription];
      [v8 appendString:v9 withName:v7];
    }
  }

LABEL_6:
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(HKSPSleepEventRecord *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (BOOL)isConsolidatedSleepCoachingOnboardingCompleted
{
  v3 = [(HKSPSleepEventRecord *)self isAnySleepCoachingOnboardingCompleted];
  if (v3)
  {
    LOBYTE(v3) = [(HKSPSleepEventRecord *)self sleepCoachingOnboardingCompletedVersion]> 2;
  }

  return v3;
}

- (BOOL)isConsolidatedSleepTrackingOnboardingCompleted
{
  v3 = [(HKSPSleepEventRecord *)self isAnySleepTrackingOnboardingCompleted];
  if (v3)
  {
    LOBYTE(v3) = [(HKSPSleepEventRecord *)self sleepTrackingOnboardingCompletedVersion]> 2;
  }

  return v3;
}

- (id)secondsSinceAlarmDismissalFromDate:(id)a3
{
  v4 = a3;
  v5 = [(HKSPSleepEventRecord *)self wakeUpAlarmDismissedDate];
  if (v5 && ([MEMORY[0x277CBEAA8] distantPast], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v5, "isEqualToDate:", v6), v6, (v7 & 1) == 0))
  {
    v9 = MEMORY[0x277CCABB0];
    [v5 timeIntervalSinceDate:v4];
    if (v10 < 0.0)
    {
      v10 = -v10;
    }

    v8 = [v9 numberWithDouble:v10];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end