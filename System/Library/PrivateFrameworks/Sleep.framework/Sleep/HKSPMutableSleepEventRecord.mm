@interface HKSPMutableSleepEventRecord
- (BOOL)updateSleepCoachingOnboardingCompletedVersion:(int64_t)version completedDate:(id)date;
- (BOOL)updateSleepTrackingOnboardingCompletedVersion:(int64_t)version completedDate:(id)date;
- (BOOL)updateSleepWindDownShortcutsOnboardingCompletedVersion:(int64_t)version completedDate:(id)date;
- (HKSPMutableSleepEventRecord)init;
- (HKSPMutableSleepEventRecord)initWithCoder:(id)coder;
- (NSDate)goodMorningDismissedDate;
- (NSDate)lastModifiedDate;
- (NSDate)lastWakeUpResultsIntroductionNotificationVersionSentDate;
- (NSDate)sleepCoachingOnboardingFirstCompletedDate;
- (NSDate)sleepTrackingOnboardingFirstCompletedDate;
- (NSDate)sleepWindDownShortcutsOnboardingFirstCompletedDate;
- (NSDate)wakeUpAlarmDismissedDate;
- (NSDate)wakeUpAlarmSnoozedUntilDate;
- (NSDate)wakeUpConfirmedUntilDate;
- (NSDate)wakeUpEarlyNotificationConfirmedDate;
- (NSDate)wakeUpOverriddenDate;
- (id)copyWithZone:(_NSZone *)zone;
- (id)initFromObject:(id)object;
- (id)mutableCopy;
- (int64_t)lastWakeUpResultsIntroductionNotificationVersionSent;
- (int64_t)sleepCoachingOnboardingCompletedVersion;
- (int64_t)sleepTrackingOnboardingCompletedVersion;
- (int64_t)sleepWindDownShortcutsOnboardingCompletedVersion;
- (void)encodeWithCoder:(id)coder;
- (void)freeze;
- (void)setGoodMorningDismissedDate:(id)date;
- (void)setLastModifiedDate:(id)date;
- (void)setLastWakeUpResultsIntroductionNotificationVersionSent:(int64_t)sent;
- (void)setLastWakeUpResultsIntroductionNotificationVersionSentDate:(id)date;
- (void)setSleepCoachingOnboardingCompletedVersion:(int64_t)version;
- (void)setSleepCoachingOnboardingFirstCompletedDate:(id)date;
- (void)setSleepTrackingOnboardingCompletedVersion:(int64_t)version;
- (void)setSleepTrackingOnboardingFirstCompletedDate:(id)date;
- (void)setSleepWindDownShortcutsOnboardingCompletedVersion:(int64_t)version;
- (void)setSleepWindDownShortcutsOnboardingFirstCompletedDate:(id)date;
- (void)setWakeUpAlarmDismissedDate:(id)date;
- (void)setWakeUpAlarmSnoozedUntilDate:(id)date;
- (void)setWakeUpConfirmedUntilDate:(id)date;
- (void)setWakeUpEarlyNotificationConfirmedDate:(id)date;
- (void)setWakeUpOverriddenDate:(id)date;
@end

@implementation HKSPMutableSleepEventRecord

- (void)setLastModifiedDate:(id)date
{
  dateCopy = date;
  allProperties = [objc_opt_class() allProperties];
  v5 = HKSPPropertiesByIdentifier(allProperties);
  v6 = [v5 objectForKeyedSubscript:@"HKSPEventRecordLastModifiedDate"];

  v7 = [(HKSPObject *)self->_originalObject hksp_valueForProperty:v6];
  if (!NAEqualObjects() || [(HKSPChangeSet *)self->_changeSet hasChangeForPropertyIdentifier:@"HKSPEventRecordLastModifiedDate"])
  {
    isRelationshipProperty = [v6 isRelationshipProperty];
    v9 = off_279C73598;
    if (!isRelationshipProperty)
    {
      v9 = off_279C734F8;
    }

    v10 = *v9;
    v11 = objc_opt_class();
    changeSet = self->_changeSet;
    v13 = [[v11 alloc] initWithProperty:v6 changedValue:dateCopy originalValue:v7];
    [(HKSPChangeSet *)changeSet addChange:v13];
  }
}

- (NSDate)lastModifiedDate
{
  allProperties = [objc_opt_class() allProperties];
  v4 = HKSPPropertiesByIdentifier(allProperties);
  v5 = [v4 objectForKeyedSubscript:@"HKSPEventRecordLastModifiedDate"];

  if ([(HKSPChangeSet *)self->_changeSet hasChangeForPropertyIdentifier:@"HKSPEventRecordLastModifiedDate"])
  {
    [(HKSPChangeSet *)self->_changeSet changedValueForPropertyIdentifier:@"HKSPEventRecordLastModifiedDate"];
  }

  else
  {
    [(HKSPObject *)self->_originalObject hksp_valueForProperty:v5];
  }
  v6 = ;

  return v6;
}

- (void)setWakeUpEarlyNotificationConfirmedDate:(id)date
{
  dateCopy = date;
  allProperties = [objc_opt_class() allProperties];
  v5 = HKSPPropertiesByIdentifier(allProperties);
  v6 = [v5 objectForKeyedSubscript:@"HKSPWakeUpEarlyNotificationConfirmedDate"];

  v7 = [(HKSPObject *)self->_originalObject hksp_valueForProperty:v6];
  distantPast = dateCopy;
  if (!dateCopy)
  {
    distantPast = [MEMORY[0x277CBEAA8] distantPast];
  }

  v16 = distantPast;
  if (!NAEqualObjects() || [(HKSPChangeSet *)self->_changeSet hasChangeForPropertyIdentifier:@"HKSPWakeUpEarlyNotificationConfirmedDate"])
  {
    isRelationshipProperty = [v6 isRelationshipProperty];
    v10 = off_279C73598;
    if (!isRelationshipProperty)
    {
      v10 = off_279C734F8;
    }

    v11 = *v10;
    v12 = objc_opt_class();
    changeSet = self->_changeSet;
    v14 = [[v12 alloc] initWithProperty:v6 changedValue:v16 originalValue:v7];
    [(HKSPChangeSet *)changeSet addChange:v14];
  }
}

- (NSDate)wakeUpEarlyNotificationConfirmedDate
{
  allProperties = [objc_opt_class() allProperties];
  v4 = HKSPPropertiesByIdentifier(allProperties);
  v5 = [v4 objectForKeyedSubscript:@"HKSPWakeUpEarlyNotificationConfirmedDate"];

  if ([(HKSPChangeSet *)self->_changeSet hasChangeForPropertyIdentifier:@"HKSPWakeUpEarlyNotificationConfirmedDate"])
  {
    [(HKSPChangeSet *)self->_changeSet changedValueForPropertyIdentifier:@"HKSPWakeUpEarlyNotificationConfirmedDate"];
  }

  else
  {
    [(HKSPObject *)self->_originalObject hksp_valueForProperty:v5];
  }
  v6 = ;

  return v6;
}

- (void)setWakeUpConfirmedUntilDate:(id)date
{
  dateCopy = date;
  allProperties = [objc_opt_class() allProperties];
  v5 = HKSPPropertiesByIdentifier(allProperties);
  v6 = [v5 objectForKeyedSubscript:@"HKSPWakeUpConfirmedUntilDate"];

  v7 = [(HKSPObject *)self->_originalObject hksp_valueForProperty:v6];
  distantPast = dateCopy;
  if (!dateCopy)
  {
    distantPast = [MEMORY[0x277CBEAA8] distantPast];
  }

  v16 = distantPast;
  if (!NAEqualObjects() || [(HKSPChangeSet *)self->_changeSet hasChangeForPropertyIdentifier:@"HKSPWakeUpConfirmedUntilDate"])
  {
    isRelationshipProperty = [v6 isRelationshipProperty];
    v10 = off_279C73598;
    if (!isRelationshipProperty)
    {
      v10 = off_279C734F8;
    }

    v11 = *v10;
    v12 = objc_opt_class();
    changeSet = self->_changeSet;
    v14 = [[v12 alloc] initWithProperty:v6 changedValue:v16 originalValue:v7];
    [(HKSPChangeSet *)changeSet addChange:v14];
  }
}

- (NSDate)wakeUpConfirmedUntilDate
{
  allProperties = [objc_opt_class() allProperties];
  v4 = HKSPPropertiesByIdentifier(allProperties);
  v5 = [v4 objectForKeyedSubscript:@"HKSPWakeUpConfirmedUntilDate"];

  if ([(HKSPChangeSet *)self->_changeSet hasChangeForPropertyIdentifier:@"HKSPWakeUpConfirmedUntilDate"])
  {
    [(HKSPChangeSet *)self->_changeSet changedValueForPropertyIdentifier:@"HKSPWakeUpConfirmedUntilDate"];
  }

  else
  {
    [(HKSPObject *)self->_originalObject hksp_valueForProperty:v5];
  }
  v6 = ;

  return v6;
}

- (void)setWakeUpAlarmDismissedDate:(id)date
{
  dateCopy = date;
  allProperties = [objc_opt_class() allProperties];
  v5 = HKSPPropertiesByIdentifier(allProperties);
  v6 = [v5 objectForKeyedSubscript:@"HKSPWakeUpAlarmDismissedDate"];

  v7 = [(HKSPObject *)self->_originalObject hksp_valueForProperty:v6];
  distantPast = dateCopy;
  if (!dateCopy)
  {
    distantPast = [MEMORY[0x277CBEAA8] distantPast];
  }

  v16 = distantPast;
  if (!NAEqualObjects() || [(HKSPChangeSet *)self->_changeSet hasChangeForPropertyIdentifier:@"HKSPWakeUpAlarmDismissedDate"])
  {
    isRelationshipProperty = [v6 isRelationshipProperty];
    v10 = off_279C73598;
    if (!isRelationshipProperty)
    {
      v10 = off_279C734F8;
    }

    v11 = *v10;
    v12 = objc_opt_class();
    changeSet = self->_changeSet;
    v14 = [[v12 alloc] initWithProperty:v6 changedValue:v16 originalValue:v7];
    [(HKSPChangeSet *)changeSet addChange:v14];
  }
}

- (NSDate)wakeUpAlarmDismissedDate
{
  allProperties = [objc_opt_class() allProperties];
  v4 = HKSPPropertiesByIdentifier(allProperties);
  v5 = [v4 objectForKeyedSubscript:@"HKSPWakeUpAlarmDismissedDate"];

  if ([(HKSPChangeSet *)self->_changeSet hasChangeForPropertyIdentifier:@"HKSPWakeUpAlarmDismissedDate"])
  {
    [(HKSPChangeSet *)self->_changeSet changedValueForPropertyIdentifier:@"HKSPWakeUpAlarmDismissedDate"];
  }

  else
  {
    [(HKSPObject *)self->_originalObject hksp_valueForProperty:v5];
  }
  v6 = ;

  return v6;
}

- (void)setWakeUpOverriddenDate:(id)date
{
  dateCopy = date;
  allProperties = [objc_opt_class() allProperties];
  v5 = HKSPPropertiesByIdentifier(allProperties);
  v6 = [v5 objectForKeyedSubscript:@"HKSPWakeUpOverriddenDate"];

  v7 = [(HKSPObject *)self->_originalObject hksp_valueForProperty:v6];
  distantPast = dateCopy;
  if (!dateCopy)
  {
    distantPast = [MEMORY[0x277CBEAA8] distantPast];
  }

  v16 = distantPast;
  if (!NAEqualObjects() || [(HKSPChangeSet *)self->_changeSet hasChangeForPropertyIdentifier:@"HKSPWakeUpOverriddenDate"])
  {
    isRelationshipProperty = [v6 isRelationshipProperty];
    v10 = off_279C73598;
    if (!isRelationshipProperty)
    {
      v10 = off_279C734F8;
    }

    v11 = *v10;
    v12 = objc_opt_class();
    changeSet = self->_changeSet;
    v14 = [[v12 alloc] initWithProperty:v6 changedValue:v16 originalValue:v7];
    [(HKSPChangeSet *)changeSet addChange:v14];
  }
}

- (NSDate)wakeUpOverriddenDate
{
  allProperties = [objc_opt_class() allProperties];
  v4 = HKSPPropertiesByIdentifier(allProperties);
  v5 = [v4 objectForKeyedSubscript:@"HKSPWakeUpOverriddenDate"];

  if ([(HKSPChangeSet *)self->_changeSet hasChangeForPropertyIdentifier:@"HKSPWakeUpOverriddenDate"])
  {
    [(HKSPChangeSet *)self->_changeSet changedValueForPropertyIdentifier:@"HKSPWakeUpOverriddenDate"];
  }

  else
  {
    [(HKSPObject *)self->_originalObject hksp_valueForProperty:v5];
  }
  v6 = ;

  return v6;
}

- (void)setWakeUpAlarmSnoozedUntilDate:(id)date
{
  dateCopy = date;
  allProperties = [objc_opt_class() allProperties];
  v5 = HKSPPropertiesByIdentifier(allProperties);
  v6 = [v5 objectForKeyedSubscript:@"HKSPWakeUpAlarmSnoozedUntilDate"];

  v7 = [(HKSPObject *)self->_originalObject hksp_valueForProperty:v6];
  distantPast = dateCopy;
  if (!dateCopy)
  {
    distantPast = [MEMORY[0x277CBEAA8] distantPast];
  }

  v16 = distantPast;
  if (!NAEqualObjects() || [(HKSPChangeSet *)self->_changeSet hasChangeForPropertyIdentifier:@"HKSPWakeUpAlarmSnoozedUntilDate"])
  {
    isRelationshipProperty = [v6 isRelationshipProperty];
    v10 = off_279C73598;
    if (!isRelationshipProperty)
    {
      v10 = off_279C734F8;
    }

    v11 = *v10;
    v12 = objc_opt_class();
    changeSet = self->_changeSet;
    v14 = [[v12 alloc] initWithProperty:v6 changedValue:v16 originalValue:v7];
    [(HKSPChangeSet *)changeSet addChange:v14];
  }
}

- (NSDate)wakeUpAlarmSnoozedUntilDate
{
  allProperties = [objc_opt_class() allProperties];
  v4 = HKSPPropertiesByIdentifier(allProperties);
  v5 = [v4 objectForKeyedSubscript:@"HKSPWakeUpAlarmSnoozedUntilDate"];

  if ([(HKSPChangeSet *)self->_changeSet hasChangeForPropertyIdentifier:@"HKSPWakeUpAlarmSnoozedUntilDate"])
  {
    [(HKSPChangeSet *)self->_changeSet changedValueForPropertyIdentifier:@"HKSPWakeUpAlarmSnoozedUntilDate"];
  }

  else
  {
    [(HKSPObject *)self->_originalObject hksp_valueForProperty:v5];
  }
  v6 = ;

  return v6;
}

- (void)setGoodMorningDismissedDate:(id)date
{
  dateCopy = date;
  allProperties = [objc_opt_class() allProperties];
  v5 = HKSPPropertiesByIdentifier(allProperties);
  v6 = [v5 objectForKeyedSubscript:@"HKSPGoodMorningDismissedDate"];

  v7 = [(HKSPObject *)self->_originalObject hksp_valueForProperty:v6];
  distantPast = dateCopy;
  if (!dateCopy)
  {
    distantPast = [MEMORY[0x277CBEAA8] distantPast];
  }

  v16 = distantPast;
  if (!NAEqualObjects() || [(HKSPChangeSet *)self->_changeSet hasChangeForPropertyIdentifier:@"HKSPGoodMorningDismissedDate"])
  {
    isRelationshipProperty = [v6 isRelationshipProperty];
    v10 = off_279C73598;
    if (!isRelationshipProperty)
    {
      v10 = off_279C734F8;
    }

    v11 = *v10;
    v12 = objc_opt_class();
    changeSet = self->_changeSet;
    v14 = [[v12 alloc] initWithProperty:v6 changedValue:v16 originalValue:v7];
    [(HKSPChangeSet *)changeSet addChange:v14];
  }
}

- (NSDate)goodMorningDismissedDate
{
  allProperties = [objc_opt_class() allProperties];
  v4 = HKSPPropertiesByIdentifier(allProperties);
  v5 = [v4 objectForKeyedSubscript:@"HKSPGoodMorningDismissedDate"];

  if ([(HKSPChangeSet *)self->_changeSet hasChangeForPropertyIdentifier:@"HKSPGoodMorningDismissedDate"])
  {
    [(HKSPChangeSet *)self->_changeSet changedValueForPropertyIdentifier:@"HKSPGoodMorningDismissedDate"];
  }

  else
  {
    [(HKSPObject *)self->_originalObject hksp_valueForProperty:v5];
  }
  v6 = ;

  return v6;
}

- (void)setSleepCoachingOnboardingCompletedVersion:(int64_t)version
{
  allProperties = [objc_opt_class() allProperties];
  v6 = HKSPPropertiesByIdentifier(allProperties);
  v14 = [v6 objectForKeyedSubscript:@"HKSPSleepCoachingOnboardingCompletedVersion"];

  v7 = [(HKSPObject *)self->_originalObject hksp_valueForProperty:v14];
  integerValue = [v7 integerValue];

  if (integerValue != version || [(HKSPChangeSet *)self->_changeSet hasChangeForPropertyIdentifier:@"HKSPSleepCoachingOnboardingCompletedVersion"])
  {
    changeSet = self->_changeSet;
    v10 = [HKSPChange alloc];
    v11 = [MEMORY[0x277CCABB0] numberWithInteger:version];
    v12 = [MEMORY[0x277CCABB0] numberWithInteger:integerValue];
    v13 = [(HKSPChange *)v10 initWithProperty:v14 changedValue:v11 originalValue:v12];
    [(HKSPChangeSet *)changeSet addChange:v13];
  }
}

- (int64_t)sleepCoachingOnboardingCompletedVersion
{
  allProperties = [objc_opt_class() allProperties];
  v4 = HKSPPropertiesByIdentifier(allProperties);
  v5 = [v4 objectForKeyedSubscript:@"HKSPSleepCoachingOnboardingCompletedVersion"];

  if ([(HKSPChangeSet *)self->_changeSet hasChangeForPropertyIdentifier:@"HKSPSleepCoachingOnboardingCompletedVersion"])
  {
    [(HKSPChangeSet *)self->_changeSet changedValueForPropertyIdentifier:@"HKSPSleepCoachingOnboardingCompletedVersion"];
  }

  else
  {
    [(HKSPObject *)self->_originalObject hksp_valueForProperty:v5];
  }
  v6 = ;
  integerValue = [v6 integerValue];

  return integerValue;
}

- (void)setSleepCoachingOnboardingFirstCompletedDate:(id)date
{
  dateCopy = date;
  allProperties = [objc_opt_class() allProperties];
  v6 = HKSPPropertiesByIdentifier(allProperties);
  v7 = [v6 objectForKeyedSubscript:@"HKSPSleepCoachingOnboardingFirstCompletedDate"];

  v8 = [(HKSPObject *)self->_originalObject hksp_valueForProperty:v7];
  v9 = [dateCopy copy];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = dateCopy;
  }

  v18 = v11;

  if (!NAEqualObjects() || [(HKSPChangeSet *)self->_changeSet hasChangeForPropertyIdentifier:@"HKSPSleepCoachingOnboardingFirstCompletedDate"])
  {
    isRelationshipProperty = [v7 isRelationshipProperty];
    v13 = off_279C73598;
    if (!isRelationshipProperty)
    {
      v13 = off_279C734F8;
    }

    v14 = *v13;
    v15 = objc_opt_class();
    changeSet = self->_changeSet;
    v17 = [[v15 alloc] initWithProperty:v7 changedValue:v18 originalValue:v8];
    [(HKSPChangeSet *)changeSet addChange:v17];
  }
}

- (NSDate)sleepCoachingOnboardingFirstCompletedDate
{
  allProperties = [objc_opt_class() allProperties];
  v4 = HKSPPropertiesByIdentifier(allProperties);
  v5 = [v4 objectForKeyedSubscript:@"HKSPSleepCoachingOnboardingFirstCompletedDate"];

  if ([(HKSPChangeSet *)self->_changeSet hasChangeForPropertyIdentifier:@"HKSPSleepCoachingOnboardingFirstCompletedDate"])
  {
    [(HKSPChangeSet *)self->_changeSet changedValueForPropertyIdentifier:@"HKSPSleepCoachingOnboardingFirstCompletedDate"];
  }

  else
  {
    [(HKSPObject *)self->_originalObject hksp_valueForProperty:v5];
  }
  v6 = ;

  return v6;
}

- (void)setSleepTrackingOnboardingCompletedVersion:(int64_t)version
{
  allProperties = [objc_opt_class() allProperties];
  v6 = HKSPPropertiesByIdentifier(allProperties);
  v14 = [v6 objectForKeyedSubscript:@"HKSPSleepTrackingOnboardingCompletedVersion"];

  v7 = [(HKSPObject *)self->_originalObject hksp_valueForProperty:v14];
  integerValue = [v7 integerValue];

  if (integerValue != version || [(HKSPChangeSet *)self->_changeSet hasChangeForPropertyIdentifier:@"HKSPSleepTrackingOnboardingCompletedVersion"])
  {
    changeSet = self->_changeSet;
    v10 = [HKSPChange alloc];
    v11 = [MEMORY[0x277CCABB0] numberWithInteger:version];
    v12 = [MEMORY[0x277CCABB0] numberWithInteger:integerValue];
    v13 = [(HKSPChange *)v10 initWithProperty:v14 changedValue:v11 originalValue:v12];
    [(HKSPChangeSet *)changeSet addChange:v13];
  }
}

- (int64_t)sleepTrackingOnboardingCompletedVersion
{
  allProperties = [objc_opt_class() allProperties];
  v4 = HKSPPropertiesByIdentifier(allProperties);
  v5 = [v4 objectForKeyedSubscript:@"HKSPSleepTrackingOnboardingCompletedVersion"];

  if ([(HKSPChangeSet *)self->_changeSet hasChangeForPropertyIdentifier:@"HKSPSleepTrackingOnboardingCompletedVersion"])
  {
    [(HKSPChangeSet *)self->_changeSet changedValueForPropertyIdentifier:@"HKSPSleepTrackingOnboardingCompletedVersion"];
  }

  else
  {
    [(HKSPObject *)self->_originalObject hksp_valueForProperty:v5];
  }
  v6 = ;
  integerValue = [v6 integerValue];

  return integerValue;
}

- (void)setSleepTrackingOnboardingFirstCompletedDate:(id)date
{
  dateCopy = date;
  allProperties = [objc_opt_class() allProperties];
  v6 = HKSPPropertiesByIdentifier(allProperties);
  v7 = [v6 objectForKeyedSubscript:@"HKSPSleepTrackingOnboardingFirstCompletedDate"];

  v8 = [(HKSPObject *)self->_originalObject hksp_valueForProperty:v7];
  v9 = [dateCopy copy];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = dateCopy;
  }

  v18 = v11;

  if (!NAEqualObjects() || [(HKSPChangeSet *)self->_changeSet hasChangeForPropertyIdentifier:@"HKSPSleepTrackingOnboardingFirstCompletedDate"])
  {
    isRelationshipProperty = [v7 isRelationshipProperty];
    v13 = off_279C73598;
    if (!isRelationshipProperty)
    {
      v13 = off_279C734F8;
    }

    v14 = *v13;
    v15 = objc_opt_class();
    changeSet = self->_changeSet;
    v17 = [[v15 alloc] initWithProperty:v7 changedValue:v18 originalValue:v8];
    [(HKSPChangeSet *)changeSet addChange:v17];
  }
}

- (NSDate)sleepTrackingOnboardingFirstCompletedDate
{
  allProperties = [objc_opt_class() allProperties];
  v4 = HKSPPropertiesByIdentifier(allProperties);
  v5 = [v4 objectForKeyedSubscript:@"HKSPSleepTrackingOnboardingFirstCompletedDate"];

  if ([(HKSPChangeSet *)self->_changeSet hasChangeForPropertyIdentifier:@"HKSPSleepTrackingOnboardingFirstCompletedDate"])
  {
    [(HKSPChangeSet *)self->_changeSet changedValueForPropertyIdentifier:@"HKSPSleepTrackingOnboardingFirstCompletedDate"];
  }

  else
  {
    [(HKSPObject *)self->_originalObject hksp_valueForProperty:v5];
  }
  v6 = ;

  return v6;
}

- (void)setSleepWindDownShortcutsOnboardingCompletedVersion:(int64_t)version
{
  allProperties = [objc_opt_class() allProperties];
  v6 = HKSPPropertiesByIdentifier(allProperties);
  v14 = [v6 objectForKeyedSubscript:@"HKSPSleepWindDownShortcutsOnboardingCompletedVersion"];

  v7 = [(HKSPObject *)self->_originalObject hksp_valueForProperty:v14];
  integerValue = [v7 integerValue];

  if (integerValue != version || [(HKSPChangeSet *)self->_changeSet hasChangeForPropertyIdentifier:@"HKSPSleepWindDownShortcutsOnboardingCompletedVersion"])
  {
    changeSet = self->_changeSet;
    v10 = [HKSPChange alloc];
    v11 = [MEMORY[0x277CCABB0] numberWithInteger:version];
    v12 = [MEMORY[0x277CCABB0] numberWithInteger:integerValue];
    v13 = [(HKSPChange *)v10 initWithProperty:v14 changedValue:v11 originalValue:v12];
    [(HKSPChangeSet *)changeSet addChange:v13];
  }
}

- (int64_t)sleepWindDownShortcutsOnboardingCompletedVersion
{
  allProperties = [objc_opt_class() allProperties];
  v4 = HKSPPropertiesByIdentifier(allProperties);
  v5 = [v4 objectForKeyedSubscript:@"HKSPSleepWindDownShortcutsOnboardingCompletedVersion"];

  if ([(HKSPChangeSet *)self->_changeSet hasChangeForPropertyIdentifier:@"HKSPSleepWindDownShortcutsOnboardingCompletedVersion"])
  {
    [(HKSPChangeSet *)self->_changeSet changedValueForPropertyIdentifier:@"HKSPSleepWindDownShortcutsOnboardingCompletedVersion"];
  }

  else
  {
    [(HKSPObject *)self->_originalObject hksp_valueForProperty:v5];
  }
  v6 = ;
  integerValue = [v6 integerValue];

  return integerValue;
}

- (void)setSleepWindDownShortcutsOnboardingFirstCompletedDate:(id)date
{
  dateCopy = date;
  allProperties = [objc_opt_class() allProperties];
  v6 = HKSPPropertiesByIdentifier(allProperties);
  v7 = [v6 objectForKeyedSubscript:@"HKSPSleepWindDownShortcutsOnboardingFirstCompletedDate"];

  v8 = [(HKSPObject *)self->_originalObject hksp_valueForProperty:v7];
  v9 = [dateCopy copy];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = dateCopy;
  }

  v18 = v11;

  if (!NAEqualObjects() || [(HKSPChangeSet *)self->_changeSet hasChangeForPropertyIdentifier:@"HKSPSleepWindDownShortcutsOnboardingFirstCompletedDate"])
  {
    isRelationshipProperty = [v7 isRelationshipProperty];
    v13 = off_279C73598;
    if (!isRelationshipProperty)
    {
      v13 = off_279C734F8;
    }

    v14 = *v13;
    v15 = objc_opt_class();
    changeSet = self->_changeSet;
    v17 = [[v15 alloc] initWithProperty:v7 changedValue:v18 originalValue:v8];
    [(HKSPChangeSet *)changeSet addChange:v17];
  }
}

- (NSDate)sleepWindDownShortcutsOnboardingFirstCompletedDate
{
  allProperties = [objc_opt_class() allProperties];
  v4 = HKSPPropertiesByIdentifier(allProperties);
  v5 = [v4 objectForKeyedSubscript:@"HKSPSleepWindDownShortcutsOnboardingFirstCompletedDate"];

  if ([(HKSPChangeSet *)self->_changeSet hasChangeForPropertyIdentifier:@"HKSPSleepWindDownShortcutsOnboardingFirstCompletedDate"])
  {
    [(HKSPChangeSet *)self->_changeSet changedValueForPropertyIdentifier:@"HKSPSleepWindDownShortcutsOnboardingFirstCompletedDate"];
  }

  else
  {
    [(HKSPObject *)self->_originalObject hksp_valueForProperty:v5];
  }
  v6 = ;

  return v6;
}

- (void)setLastWakeUpResultsIntroductionNotificationVersionSent:(int64_t)sent
{
  allProperties = [objc_opt_class() allProperties];
  v6 = HKSPPropertiesByIdentifier(allProperties);
  v14 = [v6 objectForKeyedSubscript:@"HKSPLastWakeUpResultsIntroductionNotificationVersionSent"];

  v7 = [(HKSPObject *)self->_originalObject hksp_valueForProperty:v14];
  integerValue = [v7 integerValue];

  if (integerValue != sent || [(HKSPChangeSet *)self->_changeSet hasChangeForPropertyIdentifier:@"HKSPLastWakeUpResultsIntroductionNotificationVersionSent"])
  {
    changeSet = self->_changeSet;
    v10 = [HKSPChange alloc];
    v11 = [MEMORY[0x277CCABB0] numberWithInteger:sent];
    v12 = [MEMORY[0x277CCABB0] numberWithInteger:integerValue];
    v13 = [(HKSPChange *)v10 initWithProperty:v14 changedValue:v11 originalValue:v12];
    [(HKSPChangeSet *)changeSet addChange:v13];
  }
}

- (int64_t)lastWakeUpResultsIntroductionNotificationVersionSent
{
  allProperties = [objc_opt_class() allProperties];
  v4 = HKSPPropertiesByIdentifier(allProperties);
  v5 = [v4 objectForKeyedSubscript:@"HKSPLastWakeUpResultsIntroductionNotificationVersionSent"];

  if ([(HKSPChangeSet *)self->_changeSet hasChangeForPropertyIdentifier:@"HKSPLastWakeUpResultsIntroductionNotificationVersionSent"])
  {
    [(HKSPChangeSet *)self->_changeSet changedValueForPropertyIdentifier:@"HKSPLastWakeUpResultsIntroductionNotificationVersionSent"];
  }

  else
  {
    [(HKSPObject *)self->_originalObject hksp_valueForProperty:v5];
  }
  v6 = ;
  integerValue = [v6 integerValue];

  return integerValue;
}

- (void)setLastWakeUpResultsIntroductionNotificationVersionSentDate:(id)date
{
  dateCopy = date;
  allProperties = [objc_opt_class() allProperties];
  v6 = HKSPPropertiesByIdentifier(allProperties);
  v7 = [v6 objectForKeyedSubscript:@"HKSPLastWakeUpResultsIntroductionNotificationVersionSentDate"];

  v8 = [(HKSPObject *)self->_originalObject hksp_valueForProperty:v7];
  v9 = [dateCopy copy];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = dateCopy;
  }

  v18 = v11;

  if (!NAEqualObjects() || [(HKSPChangeSet *)self->_changeSet hasChangeForPropertyIdentifier:@"HKSPLastWakeUpResultsIntroductionNotificationVersionSentDate"])
  {
    isRelationshipProperty = [v7 isRelationshipProperty];
    v13 = off_279C73598;
    if (!isRelationshipProperty)
    {
      v13 = off_279C734F8;
    }

    v14 = *v13;
    v15 = objc_opt_class();
    changeSet = self->_changeSet;
    v17 = [[v15 alloc] initWithProperty:v7 changedValue:v18 originalValue:v8];
    [(HKSPChangeSet *)changeSet addChange:v17];
  }
}

- (NSDate)lastWakeUpResultsIntroductionNotificationVersionSentDate
{
  allProperties = [objc_opt_class() allProperties];
  v4 = HKSPPropertiesByIdentifier(allProperties);
  v5 = [v4 objectForKeyedSubscript:@"HKSPLastWakeUpResultsIntroductionNotificationVersionSentDate"];

  if ([(HKSPChangeSet *)self->_changeSet hasChangeForPropertyIdentifier:@"HKSPLastWakeUpResultsIntroductionNotificationVersionSentDate"])
  {
    [(HKSPChangeSet *)self->_changeSet changedValueForPropertyIdentifier:@"HKSPLastWakeUpResultsIntroductionNotificationVersionSentDate"];
  }

  else
  {
    [(HKSPObject *)self->_originalObject hksp_valueForProperty:v5];
  }
  v6 = ;

  return v6;
}

- (HKSPMutableSleepEventRecord)init
{
  v9.receiver = self;
  v9.super_class = HKSPMutableSleepEventRecord;
  v2 = [(HKSPSleepEventRecord *)&v9 init];
  if (v2)
  {
    v3 = objc_alloc_init(HKSPSleepEventRecord);
    originalObject = v2->_originalObject;
    v2->_originalObject = v3;

    v5 = objc_alloc_init(HKSPChangeSet);
    changeSet = v2->_changeSet;
    v2->_changeSet = v5;

    v7 = v2;
  }

  return v2;
}

- (id)initFromObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HKSPSleepEventRecord.m" lineNumber:280 description:@"object must be a subclass"];
  }

  v14.receiver = self;
  v14.super_class = HKSPMutableSleepEventRecord;
  v6 = [(HKSPSleepEventRecord *)&v14 init];
  if (v6)
  {
    v7 = [objectCopy copyWithZone:0];
    originalObject = v6->_originalObject;
    v6->_originalObject = v7;

    v9 = objc_alloc_init(HKSPChangeSet);
    changeSet = v6->_changeSet;
    v6->_changeSet = v9;

    v11 = v6;
  }

  return v6;
}

- (HKSPMutableSleepEventRecord)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = HKSPMutableSleepEventRecord;
  v5 = [(HKSPSleepEventRecord *)&v12 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HKSPOriginalObject"];
    originalObject = v5->_originalObject;
    v5->_originalObject = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HKSPChangeSet"];
    changeSet = v5->_changeSet;
    v5->_changeSet = v8;

    v10 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  originalObject = self->_originalObject;
  coderCopy = coder;
  [coderCopy encodeObject:originalObject forKey:@"HKSPOriginalObject"];
  [coderCopy encodeObject:self->_changeSet forKey:@"HKSPChangeSet"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [HKSPSleepEventRecord alloc];

  return [(HKSPSleepEventRecord *)v4 initFromObject:self];
}

- (id)mutableCopy
{
  v3 = objc_alloc_init(objc_opt_class());
  originalObject = [(HKSPMutableSleepEventRecord *)self originalObject];
  v5 = [originalObject copyWithZone:0];
  v6 = v3[18];
  v3[18] = v5;

  changeSet = [(HKSPMutableSleepEventRecord *)self changeSet];
  deepCopy = [changeSet deepCopy];
  v9 = v3[19];
  v3[19] = deepCopy;

  return v3;
}

- (void)freeze
{
  v3 = [[HKSPSleepEventRecord alloc] initFromObject:self];
  originalObject = self->_originalObject;
  self->_originalObject = v3;

  [(HKSPMutableSleepEventRecord *)self revert];
}

- (BOOL)updateSleepCoachingOnboardingCompletedVersion:(int64_t)version completedDate:(id)date
{
  dateCopy = date;
  if (!version)
  {
    [(HKSPMutableSleepEventRecord *)self setSleepCoachingOnboardingCompletedVersion:0];
    [(HKSPMutableSleepEventRecord *)self setSleepCoachingOnboardingFirstCompletedDate:0];
LABEL_10:
    v8 = 1;
    goto LABEL_11;
  }

  if ([(HKSPMutableSleepEventRecord *)self sleepCoachingOnboardingCompletedVersion])
  {
    sleepCoachingOnboardingFirstCompletedDate = [(HKSPMutableSleepEventRecord *)self sleepCoachingOnboardingFirstCompletedDate];

    if (sleepCoachingOnboardingFirstCompletedDate)
    {
      v8 = 0;
      goto LABEL_8;
    }
  }

  else
  {
    [(HKSPMutableSleepEventRecord *)self setSleepCoachingOnboardingCompletedVersion:version];
  }

  [(HKSPMutableSleepEventRecord *)self setSleepCoachingOnboardingFirstCompletedDate:dateCopy];
  v8 = 1;
LABEL_8:
  if ([(HKSPMutableSleepEventRecord *)self sleepCoachingOnboardingCompletedVersion]< version)
  {
    [(HKSPMutableSleepEventRecord *)self setSleepCoachingOnboardingCompletedVersion:version];
    goto LABEL_10;
  }

LABEL_11:

  return v8;
}

- (BOOL)updateSleepTrackingOnboardingCompletedVersion:(int64_t)version completedDate:(id)date
{
  dateCopy = date;
  if (!version)
  {
    [(HKSPMutableSleepEventRecord *)self setSleepTrackingOnboardingCompletedVersion:0];
    [(HKSPMutableSleepEventRecord *)self setSleepTrackingOnboardingFirstCompletedDate:0];
LABEL_10:
    v8 = 1;
    goto LABEL_11;
  }

  if ([(HKSPMutableSleepEventRecord *)self sleepTrackingOnboardingCompletedVersion])
  {
    sleepTrackingOnboardingFirstCompletedDate = [(HKSPMutableSleepEventRecord *)self sleepTrackingOnboardingFirstCompletedDate];

    if (sleepTrackingOnboardingFirstCompletedDate)
    {
      v8 = 0;
      goto LABEL_8;
    }
  }

  else
  {
    [(HKSPMutableSleepEventRecord *)self setSleepTrackingOnboardingCompletedVersion:version];
  }

  [(HKSPMutableSleepEventRecord *)self setSleepTrackingOnboardingFirstCompletedDate:dateCopy];
  v8 = 1;
LABEL_8:
  if ([(HKSPMutableSleepEventRecord *)self sleepTrackingOnboardingCompletedVersion]< version)
  {
    [(HKSPMutableSleepEventRecord *)self setSleepTrackingOnboardingCompletedVersion:version];
    goto LABEL_10;
  }

LABEL_11:

  return v8;
}

- (BOOL)updateSleepWindDownShortcutsOnboardingCompletedVersion:(int64_t)version completedDate:(id)date
{
  dateCopy = date;
  if (!version)
  {
    [(HKSPMutableSleepEventRecord *)self setSleepWindDownShortcutsOnboardingCompletedVersion:0];
    [(HKSPMutableSleepEventRecord *)self setSleepWindDownShortcutsOnboardingFirstCompletedDate:0];
LABEL_10:
    v8 = 1;
    goto LABEL_11;
  }

  if ([(HKSPMutableSleepEventRecord *)self sleepWindDownShortcutsOnboardingCompletedVersion])
  {
    sleepWindDownShortcutsOnboardingFirstCompletedDate = [(HKSPMutableSleepEventRecord *)self sleepWindDownShortcutsOnboardingFirstCompletedDate];

    if (sleepWindDownShortcutsOnboardingFirstCompletedDate)
    {
      v8 = 0;
      goto LABEL_8;
    }
  }

  else
  {
    [(HKSPMutableSleepEventRecord *)self setSleepWindDownShortcutsOnboardingCompletedVersion:version];
  }

  [(HKSPMutableSleepEventRecord *)self setSleepWindDownShortcutsOnboardingFirstCompletedDate:dateCopy];
  v8 = 1;
LABEL_8:
  if ([(HKSPMutableSleepEventRecord *)self sleepWindDownShortcutsOnboardingCompletedVersion]< version)
  {
    [(HKSPMutableSleepEventRecord *)self setSleepWindDownShortcutsOnboardingCompletedVersion:version];
    goto LABEL_10;
  }

LABEL_11:

  return v8;
}

@end