@interface HKSPSleepEventRecord
+ (void)_appendDateDescriptionIfRelevant:(id)relevant withName:(id)name toBuilder:(id)builder;
- (BOOL)_needsMigrationForCoder:(id)coder;
- (BOOL)isConsolidatedSleepCoachingOnboardingCompleted;
- (BOOL)isConsolidatedSleepTrackingOnboardingCompleted;
- (BOOL)isCurrentSleepCoachingOnboardingCompleted;
- (BOOL)isCurrentSleepTrackingOnboardingCompleted;
- (BOOL)isCurrentSleepWindDownShortcutsOnboardingCompleted;
- (BOOL)isEqualToOnboardingModel:(id)model;
- (HKSPSleepEventRecord)init;
- (HKSPSleepEventRecord)initWithCoder:(id)coder;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)initFromObject:(id)object;
- (id)mutableCopy;
- (id)objectWithSyncAnchor:(id)anchor;
- (id)secondsSinceAlarmDismissalFromDate:(id)date;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKSPSleepEventRecord

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = objc_opt_class();
  wakeUpAlarmSnoozedUntilDate = [(HKSPSleepEventRecord *)self wakeUpAlarmSnoozedUntilDate];
  [v4 _appendDateDescriptionIfRelevant:wakeUpAlarmSnoozedUntilDate withName:@"wakeUpAlarmSnoozedUntilDate" toBuilder:v3];

  v6 = objc_opt_class();
  wakeUpAlarmDismissedDate = [(HKSPSleepEventRecord *)self wakeUpAlarmDismissedDate];
  [v6 _appendDateDescriptionIfRelevant:wakeUpAlarmDismissedDate withName:@"wakeUpAlarmDismissedDate" toBuilder:v3];

  v8 = objc_opt_class();
  wakeUpOverriddenDate = [(HKSPSleepEventRecord *)self wakeUpOverriddenDate];
  [v8 _appendDateDescriptionIfRelevant:wakeUpOverriddenDate withName:@"wakeUpOverriddenDate" toBuilder:v3];

  v10 = objc_opt_class();
  wakeUpEarlyNotificationConfirmedDate = [(HKSPSleepEventRecord *)self wakeUpEarlyNotificationConfirmedDate];
  [v10 _appendDateDescriptionIfRelevant:wakeUpEarlyNotificationConfirmedDate withName:@"wakeUpEarlyNotificationConfirmedDate" toBuilder:v3];

  v12 = objc_opt_class();
  wakeUpConfirmedUntilDate = [(HKSPSleepEventRecord *)self wakeUpConfirmedUntilDate];
  [v12 _appendDateDescriptionIfRelevant:wakeUpConfirmedUntilDate withName:@"wakeUpConfirmedUntilDate" toBuilder:v3];

  v14 = objc_opt_class();
  goodMorningDismissedDate = [(HKSPSleepEventRecord *)self goodMorningDismissedDate];
  [v14 _appendDateDescriptionIfRelevant:goodMorningDismissedDate withName:@"goodMorningDismissedDate" toBuilder:v3];

  v16 = [v3 appendInteger:-[HKSPSleepEventRecord sleepCoachingOnboardingCompletedVersion](self withName:{"sleepCoachingOnboardingCompletedVersion"), @"sleepCoachingOnboardingCompletedVersion"}];
  v17 = objc_opt_class();
  sleepCoachingOnboardingFirstCompletedDate = [(HKSPSleepEventRecord *)self sleepCoachingOnboardingFirstCompletedDate];
  [v17 _appendDateDescriptionIfRelevant:sleepCoachingOnboardingFirstCompletedDate withName:@"sleepCoachingOnboardingFirstCompletedDate" toBuilder:v3];

  v19 = [v3 appendInteger:-[HKSPSleepEventRecord sleepTrackingOnboardingCompletedVersion](self withName:{"sleepTrackingOnboardingCompletedVersion"), @"sleepTrackingOnboardingCompletedVersion"}];
  v20 = objc_opt_class();
  sleepTrackingOnboardingFirstCompletedDate = [(HKSPSleepEventRecord *)self sleepTrackingOnboardingFirstCompletedDate];
  [v20 _appendDateDescriptionIfRelevant:sleepTrackingOnboardingFirstCompletedDate withName:@"sleepTrackingOnboardingFirstCompletedDate" toBuilder:v3];

  v22 = [v3 appendInteger:-[HKSPSleepEventRecord sleepWindDownShortcutsOnboardingCompletedVersion](self withName:{"sleepWindDownShortcutsOnboardingCompletedVersion"), @"sleepWindDownShortcutsOnboardingCompletedVersion"}];
  v23 = objc_opt_class();
  sleepWindDownShortcutsOnboardingFirstCompletedDate = [(HKSPSleepEventRecord *)self sleepWindDownShortcutsOnboardingFirstCompletedDate];
  [v23 _appendDateDescriptionIfRelevant:sleepWindDownShortcutsOnboardingFirstCompletedDate withName:@"sleepWindDownShortcutsOnboardingFirstCompletedDate" toBuilder:v3];

  v25 = [v3 appendInteger:-[HKSPSleepEventRecord lastWakeUpResultsIntroductionNotificationVersionSent](self withName:{"lastWakeUpResultsIntroductionNotificationVersionSent"), @"lastWakeUpResultsIntroductionNotificationVersionSent"}];
  v26 = objc_opt_class();
  lastWakeUpResultsIntroductionNotificationVersionSentDate = [(HKSPSleepEventRecord *)self lastWakeUpResultsIntroductionNotificationVersionSentDate];
  [v26 _appendDateDescriptionIfRelevant:lastWakeUpResultsIntroductionNotificationVersionSentDate withName:@"lastWakeUpResultsIntroductionNotificationVersionSentDate" toBuilder:v3];

  return v3;
}

- (BOOL)isCurrentSleepTrackingOnboardingCompleted
{
  isAnySleepTrackingOnboardingCompleted = [(HKSPSleepEventRecord *)self isAnySleepTrackingOnboardingCompleted];
  if (isAnySleepTrackingOnboardingCompleted)
  {
    LOBYTE(isAnySleepTrackingOnboardingCompleted) = [(HKSPSleepEventRecord *)self sleepTrackingOnboardingCompletedVersion]> 1;
  }

  return isAnySleepTrackingOnboardingCompleted;
}

- (BOOL)isCurrentSleepWindDownShortcutsOnboardingCompleted
{
  isAnySleepWindDownShortcutsOnboardingCompleted = [(HKSPSleepEventRecord *)self isAnySleepWindDownShortcutsOnboardingCompleted];
  if (isAnySleepWindDownShortcutsOnboardingCompleted)
  {
    LOBYTE(isAnySleepWindDownShortcutsOnboardingCompleted) = [(HKSPSleepEventRecord *)self sleepWindDownShortcutsOnboardingCompletedVersion]> 1;
  }

  return isAnySleepWindDownShortcutsOnboardingCompleted;
}

- (BOOL)isCurrentSleepCoachingOnboardingCompleted
{
  isAnySleepCoachingOnboardingCompleted = [(HKSPSleepEventRecord *)self isAnySleepCoachingOnboardingCompleted];
  if (isAnySleepCoachingOnboardingCompleted)
  {
    LOBYTE(isAnySleepCoachingOnboardingCompleted) = [(HKSPSleepEventRecord *)self sleepCoachingOnboardingCompletedVersion]> 1;
  }

  return isAnySleepCoachingOnboardingCompleted;
}

- (BOOL)isEqualToOnboardingModel:(id)model
{
  modelCopy = model;
  sleepCoachingOnboardingCompletedVersion = [(HKSPSleepEventRecord *)self sleepCoachingOnboardingCompletedVersion];
  if (sleepCoachingOnboardingCompletedVersion == [modelCopy sleepCoachingOnboardingCompletedVersion] && (v6 = -[HKSPSleepEventRecord sleepTrackingOnboardingCompletedVersion](self, "sleepTrackingOnboardingCompletedVersion"), v6 == objc_msgSend(modelCopy, "sleepTrackingOnboardingCompletedVersion")))
  {
    sleepWindDownShortcutsOnboardingCompletedVersion = [(HKSPSleepEventRecord *)self sleepWindDownShortcutsOnboardingCompletedVersion];
    v8 = sleepWindDownShortcutsOnboardingCompletedVersion == [modelCopy sleepWindDownShortcutsOnboardingCompletedVersion];
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
    distantPast = [MEMORY[0x277CBEAA8] distantPast];
    wakeUpEarlyNotificationConfirmedDate = v3->_wakeUpEarlyNotificationConfirmedDate;
    v3->_wakeUpEarlyNotificationConfirmedDate = distantPast;

    distantPast2 = [MEMORY[0x277CBEAA8] distantPast];
    wakeUpConfirmedUntilDate = v3->_wakeUpConfirmedUntilDate;
    v3->_wakeUpConfirmedUntilDate = distantPast2;

    distantPast3 = [MEMORY[0x277CBEAA8] distantPast];
    wakeUpAlarmDismissedDate = v3->_wakeUpAlarmDismissedDate;
    v3->_wakeUpAlarmDismissedDate = distantPast3;

    distantPast4 = [MEMORY[0x277CBEAA8] distantPast];
    wakeUpOverriddenDate = v3->_wakeUpOverriddenDate;
    v3->_wakeUpOverriddenDate = distantPast4;

    distantPast5 = [MEMORY[0x277CBEAA8] distantPast];
    wakeUpAlarmSnoozedUntilDate = v3->_wakeUpAlarmSnoozedUntilDate;
    v3->_wakeUpAlarmSnoozedUntilDate = distantPast5;

    distantPast6 = [MEMORY[0x277CBEAA8] distantPast];
    goodMorningDismissedDate = v3->_goodMorningDismissedDate;
    v3->_goodMorningDismissedDate = distantPast6;

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

- (id)initFromObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = objectCopy;
    v6 = [(HKSPSleepEventRecord *)self init];
    HKSPCopyFromObject(v5, v6);
    syncAnchor = [v5 syncAnchor];

    v8 = [syncAnchor copyWithZone:0];
    syncAnchor = v6->_syncAnchor;
    v6->_syncAnchor = v8;

    self = v6;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)objectWithSyncAnchor:(id)anchor
{
  anchorCopy = anchor;
  v5 = [objc_alloc(objc_opt_class()) initFromObject:self];
  v6 = [anchorCopy copyWithZone:0];

  v7 = v5[3];
  v5[3] = v6;

  return v5;
}

- (HKSPSleepEventRecord)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = HKSPSleepEventRecord;
  v5 = [(HKSPSleepEventRecord *)&v11 init];
  v6 = v5;
  if (v5)
  {
    HKSPDecodeObjectWithCoder(v5, coderCopy);
    if (([coderCopy hksp_serializationOptions] & 1) == 0)
    {
      v7 = [coderCopy decodeObjectOfClass:HKSPSyncAnchorClass() forKey:@"HKSPEventRecordSyncAnchor"];
      syncAnchor = v6->_syncAnchor;
      v6->_syncAnchor = v7;
    }

    if ([(HKSPSleepEventRecord *)v6 _needsMigrationForCoder:coderCopy])
    {
      [(HKSPSleepEventRecord *)v6 _migrateForCoder:coderCopy];
    }

    v9 = v6;
  }

  return v6;
}

- (BOOL)_needsMigrationForCoder:(id)coder
{
  coderCopy = coder;
  v4 = ([coderCopy hksp_serializationOptions] & 1) != 0 && objc_msgSend(coderCopy, "decodeIntegerForKey:", @"HKSPEventRecordVersion") == 0;

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  HKSPEncodeObjectWithCoder(self, coderCopy);
  if (([coderCopy hksp_serializationOptions] & 1) == 0)
  {
    [coderCopy encodeObject:self->_syncAnchor forKey:@"HKSPEventRecordSyncAnchor"];
  }
}

- (id)mutableCopy
{
  v3 = [HKSPMutableSleepEventRecord alloc];

  return [(HKSPMutableSleepEventRecord *)v3 initFromObject:self];
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(HKSPSleepEventRecord *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

+ (void)_appendDateDescriptionIfRelevant:(id)relevant withName:(id)name toBuilder:(id)builder
{
  relevantCopy = relevant;
  nameCopy = name;
  builderCopy = builder;
  if (relevantCopy)
  {
    distantPast = [MEMORY[0x277CBEAA8] distantPast];
    if (([relevantCopy isEqualToDate:distantPast] & 1) == 0)
    {
      distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
      v11 = [relevantCopy isEqualToDate:distantFuture];

      if (v11)
      {
        goto LABEL_6;
      }

      distantPast = [relevantCopy hkspDescription];
      [builderCopy appendString:distantPast withName:nameCopy];
    }
  }

LABEL_6:
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(HKSPSleepEventRecord *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (BOOL)isConsolidatedSleepCoachingOnboardingCompleted
{
  isAnySleepCoachingOnboardingCompleted = [(HKSPSleepEventRecord *)self isAnySleepCoachingOnboardingCompleted];
  if (isAnySleepCoachingOnboardingCompleted)
  {
    LOBYTE(isAnySleepCoachingOnboardingCompleted) = [(HKSPSleepEventRecord *)self sleepCoachingOnboardingCompletedVersion]> 2;
  }

  return isAnySleepCoachingOnboardingCompleted;
}

- (BOOL)isConsolidatedSleepTrackingOnboardingCompleted
{
  isAnySleepTrackingOnboardingCompleted = [(HKSPSleepEventRecord *)self isAnySleepTrackingOnboardingCompleted];
  if (isAnySleepTrackingOnboardingCompleted)
  {
    LOBYTE(isAnySleepTrackingOnboardingCompleted) = [(HKSPSleepEventRecord *)self sleepTrackingOnboardingCompletedVersion]> 2;
  }

  return isAnySleepTrackingOnboardingCompleted;
}

- (id)secondsSinceAlarmDismissalFromDate:(id)date
{
  dateCopy = date;
  wakeUpAlarmDismissedDate = [(HKSPSleepEventRecord *)self wakeUpAlarmDismissedDate];
  if (wakeUpAlarmDismissedDate && ([MEMORY[0x277CBEAA8] distantPast], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(wakeUpAlarmDismissedDate, "isEqualToDate:", v6), v6, (v7 & 1) == 0))
  {
    v9 = MEMORY[0x277CCABB0];
    [wakeUpAlarmDismissedDate timeIntervalSinceDate:dateCopy];
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