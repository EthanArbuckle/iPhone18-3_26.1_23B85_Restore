@interface HKSPMutableSleepScheduleDayOccurrence
- (BOOL)hasChangeAffectingScheduling;
- (HKSPAlarmConfiguration)alarmConfiguration;
- (HKSPMutableSleepScheduleDayOccurrence)init;
- (HKSPMutableSleepScheduleDayOccurrence)initWithCoder:(id)a3;
- (NSDateComponents)bedtimeComponents;
- (NSDateComponents)wakeUpComponents;
- (id)copyWithZone:(_NSZone *)a3;
- (id)generateSleepScheduleOccurrenceWithWeekdays:(unint64_t)a3;
- (id)initFromObject:(id)a3;
- (id)mutableCopy;
- (void)encodeWithCoder:(id)a3;
- (void)freeze;
- (void)setAlarmConfiguration:(id)a3;
- (void)setBedtimeComponents:(id)a3;
- (void)setWakeUpComponents:(id)a3;
@end

@implementation HKSPMutableSleepScheduleDayOccurrence

- (void)setBedtimeComponents:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() allProperties];
  v6 = HKSPPropertiesByIdentifier(v5);
  v7 = [v6 objectForKeyedSubscript:@"HKSPDayOccurrenceBedtimeComponents"];

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

  if (!NAEqualObjects() || [(HKSPChangeSet *)self->_changeSet hasChangeForPropertyIdentifier:@"HKSPDayOccurrenceBedtimeComponents"])
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

- (NSDateComponents)bedtimeComponents
{
  v3 = [objc_opt_class() allProperties];
  v4 = HKSPPropertiesByIdentifier(v3);
  v5 = [v4 objectForKeyedSubscript:@"HKSPDayOccurrenceBedtimeComponents"];

  if ([(HKSPChangeSet *)self->_changeSet hasChangeForPropertyIdentifier:@"HKSPDayOccurrenceBedtimeComponents"])
  {
    [(HKSPChangeSet *)self->_changeSet changedValueForPropertyIdentifier:@"HKSPDayOccurrenceBedtimeComponents"];
  }

  else
  {
    [(HKSPObject *)self->_originalObject hksp_valueForProperty:v5];
  }
  v6 = ;

  return v6;
}

- (void)setWakeUpComponents:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() allProperties];
  v6 = HKSPPropertiesByIdentifier(v5);
  v7 = [v6 objectForKeyedSubscript:@"HKSPDayOccurrenceWakeUpComponents"];

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

  if (!NAEqualObjects() || [(HKSPChangeSet *)self->_changeSet hasChangeForPropertyIdentifier:@"HKSPDayOccurrenceWakeUpComponents"])
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

- (NSDateComponents)wakeUpComponents
{
  v3 = [objc_opt_class() allProperties];
  v4 = HKSPPropertiesByIdentifier(v3);
  v5 = [v4 objectForKeyedSubscript:@"HKSPDayOccurrenceWakeUpComponents"];

  if ([(HKSPChangeSet *)self->_changeSet hasChangeForPropertyIdentifier:@"HKSPDayOccurrenceWakeUpComponents"])
  {
    [(HKSPChangeSet *)self->_changeSet changedValueForPropertyIdentifier:@"HKSPDayOccurrenceWakeUpComponents"];
  }

  else
  {
    [(HKSPObject *)self->_originalObject hksp_valueForProperty:v5];
  }
  v6 = ;

  return v6;
}

- (void)setAlarmConfiguration:(id)a3
{
  v14 = a3;
  v4 = [objc_opt_class() allProperties];
  v5 = HKSPPropertiesByIdentifier(v4);
  v6 = [v5 objectForKeyedSubscript:@"HKSPDayOccurrenceAlarm"];

  v7 = [(HKSPObject *)self->_originalObject hksp_valueForProperty:v6];
  if (!NAEqualObjects() || [(HKSPChangeSet *)self->_changeSet hasChangeForPropertyIdentifier:@"HKSPDayOccurrenceAlarm"])
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

- (HKSPAlarmConfiguration)alarmConfiguration
{
  v3 = [objc_opt_class() allProperties];
  v4 = HKSPPropertiesByIdentifier(v3);
  v5 = [v4 objectForKeyedSubscript:@"HKSPDayOccurrenceAlarm"];

  if ([(HKSPChangeSet *)self->_changeSet hasChangeForPropertyIdentifier:@"HKSPDayOccurrenceAlarm"])
  {
    [(HKSPChangeSet *)self->_changeSet changedValueForPropertyIdentifier:@"HKSPDayOccurrenceAlarm"];
  }

  else
  {
    [(HKSPObject *)self->_originalObject hksp_valueForProperty:v5];
  }
  v6 = ;

  return v6;
}

- (HKSPMutableSleepScheduleDayOccurrence)init
{
  v9.receiver = self;
  v9.super_class = HKSPMutableSleepScheduleDayOccurrence;
  v2 = [(HKSPSleepScheduleDayOccurrence *)&v9 init];
  if (v2)
  {
    v3 = objc_alloc_init(HKSPSleepScheduleDayOccurrence);
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
    [v13 handleFailureInMethod:a2 object:self file:@"HKSPSleepScheduleDayOccurrence.m" lineNumber:251 description:@"object must be a subclass"];
  }

  v14.receiver = self;
  v14.super_class = HKSPMutableSleepScheduleDayOccurrence;
  v6 = [(HKSPSleepScheduleDayOccurrence *)&v14 init];
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

- (HKSPMutableSleepScheduleDayOccurrence)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = HKSPMutableSleepScheduleDayOccurrence;
  v5 = [(HKSPSleepScheduleDayOccurrence *)&v12 init];
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
  v4 = [HKSPSleepScheduleDayOccurrence alloc];

  return [(HKSPSleepScheduleDayOccurrence *)v4 initFromObject:self];
}

- (id)mutableCopy
{
  v3 = objc_alloc_init(objc_opt_class());
  v4 = [(HKSPMutableSleepScheduleDayOccurrence *)self originalObject];
  v5 = [v4 copyWithZone:0];
  v6 = v3[5];
  v3[5] = v5;

  v7 = [(HKSPMutableSleepScheduleDayOccurrence *)self changeSet];
  v8 = [v7 deepCopy];
  v9 = v3[6];
  v3[6] = v8;

  return v3;
}

- (void)freeze
{
  v3 = [[HKSPSleepScheduleDayOccurrence alloc] initFromObject:self];
  originalObject = self->_originalObject;
  self->_originalObject = v3;

  [(HKSPMutableSleepScheduleDayOccurrence *)self revert];
}

- (id)generateSleepScheduleOccurrenceWithWeekdays:(unint64_t)a3
{
  v5 = objc_alloc_init(HKSPMutableSleepScheduleOccurrence);
  [(HKSPMutableSleepScheduleOccurrence *)v5 setWeekdays:a3];
  v6 = [(HKSPMutableSleepScheduleDayOccurrence *)self originalObject];
  [(HKSPMutableSleepScheduleOccurrence *)v5 setBackingOccurrence:v6];

  [(HKSPMutableSleepScheduleOccurrence *)v5 freeze];
  v7 = [(HKSPMutableSleepScheduleDayOccurrence *)self mutableCopy];
  [(HKSPMutableSleepScheduleOccurrence *)v5 setBackingOccurrence:v7];

  return v5;
}

- (BOOL)hasChangeAffectingScheduling
{
  v3 = [(HKSPMutableSleepScheduleDayOccurrence *)self changeSet];
  if ([v3 hasChangeForPropertyIdentifier:@"HKSPDayOccurrenceBedtimeComponents"])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(HKSPMutableSleepScheduleDayOccurrence *)self changeSet];
    v4 = [v5 hasChangeForPropertyIdentifier:@"HKSPDayOccurrenceWakeUpComponents"];
  }

  return v4;
}

@end