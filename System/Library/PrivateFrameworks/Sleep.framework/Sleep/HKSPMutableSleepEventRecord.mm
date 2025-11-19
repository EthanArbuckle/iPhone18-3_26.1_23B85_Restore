@interface HKSPMutableSleepEventRecord
- (BOOL)updateSleepCoachingOnboardingCompletedVersion:(int64_t)a3 completedDate:(id)a4;
- (BOOL)updateSleepTrackingOnboardingCompletedVersion:(int64_t)a3 completedDate:(id)a4;
- (BOOL)updateSleepWindDownShortcutsOnboardingCompletedVersion:(int64_t)a3 completedDate:(id)a4;
- (HKSPMutableSleepEventRecord)init;
- (HKSPMutableSleepEventRecord)initWithCoder:(id)a3;
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
- (id)copyWithZone:(_NSZone *)a3;
- (id)initFromObject:(id)a3;
- (id)mutableCopy;
- (int64_t)lastWakeUpResultsIntroductionNotificationVersionSent;
- (int64_t)sleepCoachingOnboardingCompletedVersion;
- (int64_t)sleepTrackingOnboardingCompletedVersion;
- (int64_t)sleepWindDownShortcutsOnboardingCompletedVersion;
- (void)encodeWithCoder:(id)a3;
- (void)freeze;
- (void)setGoodMorningDismissedDate:(id)a3;
- (void)setLastModifiedDate:(id)a3;
- (void)setLastWakeUpResultsIntroductionNotificationVersionSent:(int64_t)a3;
- (void)setLastWakeUpResultsIntroductionNotificationVersionSentDate:(id)a3;
- (void)setSleepCoachingOnboardingCompletedVersion:(int64_t)a3;
- (void)setSleepCoachingOnboardingFirstCompletedDate:(id)a3;
- (void)setSleepTrackingOnboardingCompletedVersion:(int64_t)a3;
- (void)setSleepTrackingOnboardingFirstCompletedDate:(id)a3;
- (void)setSleepWindDownShortcutsOnboardingCompletedVersion:(int64_t)a3;
- (void)setSleepWindDownShortcutsOnboardingFirstCompletedDate:(id)a3;
- (void)setWakeUpAlarmDismissedDate:(id)a3;
- (void)setWakeUpAlarmSnoozedUntilDate:(id)a3;
- (void)setWakeUpConfirmedUntilDate:(id)a3;
- (void)setWakeUpEarlyNotificationConfirmedDate:(id)a3;
- (void)setWakeUpOverriddenDate:(id)a3;
@end

@implementation HKSPMutableSleepEventRecord

- (void)setLastModifiedDate:(id)a3
{
  v14 = a3;
  v4 = [objc_opt_class() allProperties];
  v5 = HKSPPropertiesByIdentifier(v4);
  v6 = [v5 objectForKeyedSubscript:@"HKSPEventRecordLastModifiedDate"];

  v7 = [(HKSPObject *)self->_originalObject hksp_valueForProperty:v6];
  if (!NAEqualObjects() || [(HKSPChangeSet *)self->_changeSet hasChangeForPropertyIdentifier:@"HKSPEventRecordLastModifiedDate"])
  {
    v8 = [v6 isRelationshipProperty];
    v9 = off_279C73598;
    if (!v8)
    {
      v9 = off_279C734F8;
    }

    v10 = *v9;
    v11 = objc_opt_class();
    changeSet = self->_changeSet;
    v13 = [[v11 alloc] initWithProperty:v6 changedValue:v14 originalValue:v7];
    [(HKSPChangeSet *)changeSet addChange:v13];
  }
}

- (NSDate)lastModifiedDate
{
  v3 = [objc_opt_class() allProperties];
  v4 = HKSPPropertiesByIdentifier(v3);
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

- (void)setWakeUpEarlyNotificationConfirmedDate:(id)a3
{
  v15 = a3;
  v4 = [objc_opt_class() allProperties];
  v5 = HKSPPropertiesByIdentifier(v4);
  v6 = [v5 objectForKeyedSubscript:@"HKSPWakeUpEarlyNotificationConfirmedDate"];

  v7 = [(HKSPObject *)self->_originalObject hksp_valueForProperty:v6];
  v8 = v15;
  if (!v15)
  {
    v8 = [MEMORY[0x277CBEAA8] distantPast];
  }

  v16 = v8;
  if (!NAEqualObjects() || [(HKSPChangeSet *)self->_changeSet hasChangeForPropertyIdentifier:@"HKSPWakeUpEarlyNotificationConfirmedDate"])
  {
    v9 = [v6 isRelationshipProperty];
    v10 = off_279C73598;
    if (!v9)
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
  v3 = [objc_opt_class() allProperties];
  v4 = HKSPPropertiesByIdentifier(v3);
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

- (void)setWakeUpConfirmedUntilDate:(id)a3
{
  v15 = a3;
  v4 = [objc_opt_class() allProperties];
  v5 = HKSPPropertiesByIdentifier(v4);
  v6 = [v5 objectForKeyedSubscript:@"HKSPWakeUpConfirmedUntilDate"];

  v7 = [(HKSPObject *)self->_originalObject hksp_valueForProperty:v6];
  v8 = v15;
  if (!v15)
  {
    v8 = [MEMORY[0x277CBEAA8] distantPast];
  }

  v16 = v8;
  if (!NAEqualObjects() || [(HKSPChangeSet *)self->_changeSet hasChangeForPropertyIdentifier:@"HKSPWakeUpConfirmedUntilDate"])
  {
    v9 = [v6 isRelationshipProperty];
    v10 = off_279C73598;
    if (!v9)
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
  v3 = [objc_opt_class() allProperties];
  v4 = HKSPPropertiesByIdentifier(v3);
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

- (void)setWakeUpAlarmDismissedDate:(id)a3
{
  v15 = a3;
  v4 = [objc_opt_class() allProperties];
  v5 = HKSPPropertiesByIdentifier(v4);
  v6 = [v5 objectForKeyedSubscript:@"HKSPWakeUpAlarmDismissedDate"];

  v7 = [(HKSPObject *)self->_originalObject hksp_valueForProperty:v6];
  v8 = v15;
  if (!v15)
  {
    v8 = [MEMORY[0x277CBEAA8] distantPast];
  }

  v16 = v8;
  if (!NAEqualObjects() || [(HKSPChangeSet *)self->_changeSet hasChangeForPropertyIdentifier:@"HKSPWakeUpAlarmDismissedDate"])
  {
    v9 = [v6 isRelationshipProperty];
    v10 = off_279C73598;
    if (!v9)
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
  v3 = [objc_opt_class() allProperties];
  v4 = HKSPPropertiesByIdentifier(v3);
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

- (void)setWakeUpOverriddenDate:(id)a3
{
  v15 = a3;
  v4 = [objc_opt_class() allProperties];
  v5 = HKSPPropertiesByIdentifier(v4);
  v6 = [v5 objectForKeyedSubscript:@"HKSPWakeUpOverriddenDate"];

  v7 = [(HKSPObject *)self->_originalObject hksp_valueForProperty:v6];
  v8 = v15;
  if (!v15)
  {
    v8 = [MEMORY[0x277CBEAA8] distantPast];
  }

  v16 = v8;
  if (!NAEqualObjects() || [(HKSPChangeSet *)self->_changeSet hasChangeForPropertyIdentifier:@"HKSPWakeUpOverriddenDate"])
  {
    v9 = [v6 isRelationshipProperty];
    v10 = off_279C73598;
    if (!v9)
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
  v3 = [objc_opt_class() allProperties];
  v4 = HKSPPropertiesByIdentifier(v3);
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

- (void)setWakeUpAlarmSnoozedUntilDate:(id)a3
{
  v15 = a3;
  v4 = [objc_opt_class() allProperties];
  v5 = HKSPPropertiesByIdentifier(v4);
  v6 = [v5 objectForKeyedSubscript:@"HKSPWakeUpAlarmSnoozedUntilDate"];

  v7 = [(HKSPObject *)self->_originalObject hksp_valueForProperty:v6];
  v8 = v15;
  if (!v15)
  {
    v8 = [MEMORY[0x277CBEAA8] distantPast];
  }

  v16 = v8;
  if (!NAEqualObjects() || [(HKSPChangeSet *)self->_changeSet hasChangeForPropertyIdentifier:@"HKSPWakeUpAlarmSnoozedUntilDate"])
  {
    v9 = [v6 isRelationshipProperty];
    v10 = off_279C73598;
    if (!v9)
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
  v3 = [objc_opt_class() allProperties];
  v4 = HKSPPropertiesByIdentifier(v3);
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

- (void)setGoodMorningDismissedDate:(id)a3
{
  v15 = a3;
  v4 = [objc_opt_class() allProperties];
  v5 = HKSPPropertiesByIdentifier(v4);
  v6 = [v5 objectForKeyedSubscript:@"HKSPGoodMorningDismissedDate"];

  v7 = [(HKSPObject *)self->_originalObject hksp_valueForProperty:v6];
  v8 = v15;
  if (!v15)
  {
    v8 = [MEMORY[0x277CBEAA8] distantPast];
  }

  v16 = v8;
  if (!NAEqualObjects() || [(HKSPChangeSet *)self->_changeSet hasChangeForPropertyIdentifier:@"HKSPGoodMorningDismissedDate"])
  {
    v9 = [v6 isRelationshipProperty];
    v10 = off_279C73598;
    if (!v9)
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
  v3 = [objc_opt_class() allProperties];
  v4 = HKSPPropertiesByIdentifier(v3);
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

- (void)setSleepCoachingOnboardingCompletedVersion:(int64_t)a3
{
  v5 = [objc_opt_class() allProperties];
  v6 = HKSPPropertiesByIdentifier(v5);
  v14 = [v6 objectForKeyedSubscript:@"HKSPSleepCoachingOnboardingCompletedVersion"];

  v7 = [(HKSPObject *)self->_originalObject hksp_valueForProperty:v14];
  v8 = [v7 integerValue];

  if (v8 != a3 || [(HKSPChangeSet *)self->_changeSet hasChangeForPropertyIdentifier:@"HKSPSleepCoachingOnboardingCompletedVersion"])
  {
    changeSet = self->_changeSet;
    v10 = [HKSPChange alloc];
    v11 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
    v12 = [MEMORY[0x277CCABB0] numberWithInteger:v8];
    v13 = [(HKSPChange *)v10 initWithProperty:v14 changedValue:v11 originalValue:v12];
    [(HKSPChangeSet *)changeSet addChange:v13];
  }
}

- (int64_t)sleepCoachingOnboardingCompletedVersion
{
  v3 = [objc_opt_class() allProperties];
  v4 = HKSPPropertiesByIdentifier(v3);
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
  v7 = [v6 integerValue];

  return v7;
}

- (void)setSleepCoachingOnboardingFirstCompletedDate:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() allProperties];
  v6 = HKSPPropertiesByIdentifier(v5);
  v7 = [v6 objectForKeyedSubscript:@"HKSPSleepCoachingOnboardingFirstCompletedDate"];

  v8 = [(HKSPObject *)self->_originalObject hksp_valueForProperty:v7];
  v9 = [v4 copy];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v4;
  }

  v18 = v11;

  if (!NAEqualObjects() || [(HKSPChangeSet *)self->_changeSet hasChangeForPropertyIdentifier:@"HKSPSleepCoachingOnboardingFirstCompletedDate"])
  {
    v12 = [v7 isRelationshipProperty];
    v13 = off_279C73598;
    if (!v12)
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
  v3 = [objc_opt_class() allProperties];
  v4 = HKSPPropertiesByIdentifier(v3);
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

- (void)setSleepTrackingOnboardingCompletedVersion:(int64_t)a3
{
  v5 = [objc_opt_class() allProperties];
  v6 = HKSPPropertiesByIdentifier(v5);
  v14 = [v6 objectForKeyedSubscript:@"HKSPSleepTrackingOnboardingCompletedVersion"];

  v7 = [(HKSPObject *)self->_originalObject hksp_valueForProperty:v14];
  v8 = [v7 integerValue];

  if (v8 != a3 || [(HKSPChangeSet *)self->_changeSet hasChangeForPropertyIdentifier:@"HKSPSleepTrackingOnboardingCompletedVersion"])
  {
    changeSet = self->_changeSet;
    v10 = [HKSPChange alloc];
    v11 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
    v12 = [MEMORY[0x277CCABB0] numberWithInteger:v8];
    v13 = [(HKSPChange *)v10 initWithProperty:v14 changedValue:v11 originalValue:v12];
    [(HKSPChangeSet *)changeSet addChange:v13];
  }
}

- (int64_t)sleepTrackingOnboardingCompletedVersion
{
  v3 = [objc_opt_class() allProperties];
  v4 = HKSPPropertiesByIdentifier(v3);
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
  v7 = [v6 integerValue];

  return v7;
}

- (void)setSleepTrackingOnboardingFirstCompletedDate:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() allProperties];
  v6 = HKSPPropertiesByIdentifier(v5);
  v7 = [v6 objectForKeyedSubscript:@"HKSPSleepTrackingOnboardingFirstCompletedDate"];

  v8 = [(HKSPObject *)self->_originalObject hksp_valueForProperty:v7];
  v9 = [v4 copy];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v4;
  }

  v18 = v11;

  if (!NAEqualObjects() || [(HKSPChangeSet *)self->_changeSet hasChangeForPropertyIdentifier:@"HKSPSleepTrackingOnboardingFirstCompletedDate"])
  {
    v12 = [v7 isRelationshipProperty];
    v13 = off_279C73598;
    if (!v12)
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
  v3 = [objc_opt_class() allProperties];
  v4 = HKSPPropertiesByIdentifier(v3);
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

- (void)setSleepWindDownShortcutsOnboardingCompletedVersion:(int64_t)a3
{
  v5 = [objc_opt_class() allProperties];
  v6 = HKSPPropertiesByIdentifier(v5);
  v14 = [v6 objectForKeyedSubscript:@"HKSPSleepWindDownShortcutsOnboardingCompletedVersion"];

  v7 = [(HKSPObject *)self->_originalObject hksp_valueForProperty:v14];
  v8 = [v7 integerValue];

  if (v8 != a3 || [(HKSPChangeSet *)self->_changeSet hasChangeForPropertyIdentifier:@"HKSPSleepWindDownShortcutsOnboardingCompletedVersion"])
  {
    changeSet = self->_changeSet;
    v10 = [HKSPChange alloc];
    v11 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
    v12 = [MEMORY[0x277CCABB0] numberWithInteger:v8];
    v13 = [(HKSPChange *)v10 initWithProperty:v14 changedValue:v11 originalValue:v12];
    [(HKSPChangeSet *)changeSet addChange:v13];
  }
}

- (int64_t)sleepWindDownShortcutsOnboardingCompletedVersion
{
  v3 = [objc_opt_class() allProperties];
  v4 = HKSPPropertiesByIdentifier(v3);
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
  v7 = [v6 integerValue];

  return v7;
}

- (void)setSleepWindDownShortcutsOnboardingFirstCompletedDate:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() allProperties];
  v6 = HKSPPropertiesByIdentifier(v5);
  v7 = [v6 objectForKeyedSubscript:@"HKSPSleepWindDownShortcutsOnboardingFirstCompletedDate"];

  v8 = [(HKSPObject *)self->_originalObject hksp_valueForProperty:v7];
  v9 = [v4 copy];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v4;
  }

  v18 = v11;

  if (!NAEqualObjects() || [(HKSPChangeSet *)self->_changeSet hasChangeForPropertyIdentifier:@"HKSPSleepWindDownShortcutsOnboardingFirstCompletedDate"])
  {
    v12 = [v7 isRelationshipProperty];
    v13 = off_279C73598;
    if (!v12)
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
  v3 = [objc_opt_class() allProperties];
  v4 = HKSPPropertiesByIdentifier(v3);
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

- (void)setLastWakeUpResultsIntroductionNotificationVersionSent:(int64_t)a3
{
  v5 = [objc_opt_class() allProperties];
  v6 = HKSPPropertiesByIdentifier(v5);
  v14 = [v6 objectForKeyedSubscript:@"HKSPLastWakeUpResultsIntroductionNotificationVersionSent"];

  v7 = [(HKSPObject *)self->_originalObject hksp_valueForProperty:v14];
  v8 = [v7 integerValue];

  if (v8 != a3 || [(HKSPChangeSet *)self->_changeSet hasChangeForPropertyIdentifier:@"HKSPLastWakeUpResultsIntroductionNotificationVersionSent"])
  {
    changeSet = self->_changeSet;
    v10 = [HKSPChange alloc];
    v11 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
    v12 = [MEMORY[0x277CCABB0] numberWithInteger:v8];
    v13 = [(HKSPChange *)v10 initWithProperty:v14 changedValue:v11 originalValue:v12];
    [(HKSPChangeSet *)changeSet addChange:v13];
  }
}

- (int64_t)lastWakeUpResultsIntroductionNotificationVersionSent
{
  v3 = [objc_opt_class() allProperties];
  v4 = HKSPPropertiesByIdentifier(v3);
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
  v7 = [v6 integerValue];

  return v7;
}

- (void)setLastWakeUpResultsIntroductionNotificationVersionSentDate:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() allProperties];
  v6 = HKSPPropertiesByIdentifier(v5);
  v7 = [v6 objectForKeyedSubscript:@"HKSPLastWakeUpResultsIntroductionNotificationVersionSentDate"];

  v8 = [(HKSPObject *)self->_originalObject hksp_valueForProperty:v7];
  v9 = [v4 copy];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v4;
  }

  v18 = v11;

  if (!NAEqualObjects() || [(HKSPChangeSet *)self->_changeSet hasChangeForPropertyIdentifier:@"HKSPLastWakeUpResultsIntroductionNotificationVersionSentDate"])
  {
    v12 = [v7 isRelationshipProperty];
    v13 = off_279C73598;
    if (!v12)
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
  v3 = [objc_opt_class() allProperties];
  v4 = HKSPPropertiesByIdentifier(v3);
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

- (id)initFromObject:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v13 = [MEMORY[0x277CCA890] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"HKSPSleepEventRecord.m" lineNumber:280 description:@"object must be a subclass"];
  }

  v14.receiver = self;
  v14.super_class = HKSPMutableSleepEventRecord;
  v6 = [(HKSPSleepEventRecord *)&v14 init];
  if (v6)
  {
    v7 = [v5 copyWithZone:0];
    originalObject = v6->_originalObject;
    v6->_originalObject = v7;

    v9 = objc_alloc_init(HKSPChangeSet);
    changeSet = v6->_changeSet;
    v6->_changeSet = v9;

    v11 = v6;
  }

  return v6;
}

- (HKSPMutableSleepEventRecord)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = HKSPMutableSleepEventRecord;
  v5 = [(HKSPSleepEventRecord *)&v12 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HKSPOriginalObject"];
    originalObject = v5->_originalObject;
    v5->_originalObject = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HKSPChangeSet"];
    changeSet = v5->_changeSet;
    v5->_changeSet = v8;

    v10 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  originalObject = self->_originalObject;
  v5 = a3;
  [v5 encodeObject:originalObject forKey:@"HKSPOriginalObject"];
  [v5 encodeObject:self->_changeSet forKey:@"HKSPChangeSet"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [HKSPSleepEventRecord alloc];

  return [(HKSPSleepEventRecord *)v4 initFromObject:self];
}

- (id)mutableCopy
{
  v3 = objc_alloc_init(objc_opt_class());
  v4 = [(HKSPMutableSleepEventRecord *)self originalObject];
  v5 = [v4 copyWithZone:0];
  v6 = v3[18];
  v3[18] = v5;

  v7 = [(HKSPMutableSleepEventRecord *)self changeSet];
  v8 = [v7 deepCopy];
  v9 = v3[19];
  v3[19] = v8;

  return v3;
}

- (void)freeze
{
  v3 = [[HKSPSleepEventRecord alloc] initFromObject:self];
  originalObject = self->_originalObject;
  self->_originalObject = v3;

  [(HKSPMutableSleepEventRecord *)self revert];
}

- (BOOL)updateSleepCoachingOnboardingCompletedVersion:(int64_t)a3 completedDate:(id)a4
{
  v6 = a4;
  if (!a3)
  {
    [(HKSPMutableSleepEventRecord *)self setSleepCoachingOnboardingCompletedVersion:0];
    [(HKSPMutableSleepEventRecord *)self setSleepCoachingOnboardingFirstCompletedDate:0];
LABEL_10:
    v8 = 1;
    goto LABEL_11;
  }

  if ([(HKSPMutableSleepEventRecord *)self sleepCoachingOnboardingCompletedVersion])
  {
    v7 = [(HKSPMutableSleepEventRecord *)self sleepCoachingOnboardingFirstCompletedDate];

    if (v7)
    {
      v8 = 0;
      goto LABEL_8;
    }
  }

  else
  {
    [(HKSPMutableSleepEventRecord *)self setSleepCoachingOnboardingCompletedVersion:a3];
  }

  [(HKSPMutableSleepEventRecord *)self setSleepCoachingOnboardingFirstCompletedDate:v6];
  v8 = 1;
LABEL_8:
  if ([(HKSPMutableSleepEventRecord *)self sleepCoachingOnboardingCompletedVersion]< a3)
  {
    [(HKSPMutableSleepEventRecord *)self setSleepCoachingOnboardingCompletedVersion:a3];
    goto LABEL_10;
  }

LABEL_11:

  return v8;
}

- (BOOL)updateSleepTrackingOnboardingCompletedVersion:(int64_t)a3 completedDate:(id)a4
{
  v6 = a4;
  if (!a3)
  {
    [(HKSPMutableSleepEventRecord *)self setSleepTrackingOnboardingCompletedVersion:0];
    [(HKSPMutableSleepEventRecord *)self setSleepTrackingOnboardingFirstCompletedDate:0];
LABEL_10:
    v8 = 1;
    goto LABEL_11;
  }

  if ([(HKSPMutableSleepEventRecord *)self sleepTrackingOnboardingCompletedVersion])
  {
    v7 = [(HKSPMutableSleepEventRecord *)self sleepTrackingOnboardingFirstCompletedDate];

    if (v7)
    {
      v8 = 0;
      goto LABEL_8;
    }
  }

  else
  {
    [(HKSPMutableSleepEventRecord *)self setSleepTrackingOnboardingCompletedVersion:a3];
  }

  [(HKSPMutableSleepEventRecord *)self setSleepTrackingOnboardingFirstCompletedDate:v6];
  v8 = 1;
LABEL_8:
  if ([(HKSPMutableSleepEventRecord *)self sleepTrackingOnboardingCompletedVersion]< a3)
  {
    [(HKSPMutableSleepEventRecord *)self setSleepTrackingOnboardingCompletedVersion:a3];
    goto LABEL_10;
  }

LABEL_11:

  return v8;
}

- (BOOL)updateSleepWindDownShortcutsOnboardingCompletedVersion:(int64_t)a3 completedDate:(id)a4
{
  v6 = a4;
  if (!a3)
  {
    [(HKSPMutableSleepEventRecord *)self setSleepWindDownShortcutsOnboardingCompletedVersion:0];
    [(HKSPMutableSleepEventRecord *)self setSleepWindDownShortcutsOnboardingFirstCompletedDate:0];
LABEL_10:
    v8 = 1;
    goto LABEL_11;
  }

  if ([(HKSPMutableSleepEventRecord *)self sleepWindDownShortcutsOnboardingCompletedVersion])
  {
    v7 = [(HKSPMutableSleepEventRecord *)self sleepWindDownShortcutsOnboardingFirstCompletedDate];

    if (v7)
    {
      v8 = 0;
      goto LABEL_8;
    }
  }

  else
  {
    [(HKSPMutableSleepEventRecord *)self setSleepWindDownShortcutsOnboardingCompletedVersion:a3];
  }

  [(HKSPMutableSleepEventRecord *)self setSleepWindDownShortcutsOnboardingFirstCompletedDate:v6];
  v8 = 1;
LABEL_8:
  if ([(HKSPMutableSleepEventRecord *)self sleepWindDownShortcutsOnboardingCompletedVersion]< a3)
  {
    [(HKSPMutableSleepEventRecord *)self setSleepWindDownShortcutsOnboardingCompletedVersion:a3];
    goto LABEL_10;
  }

LABEL_11:

  return v8;
}

@end