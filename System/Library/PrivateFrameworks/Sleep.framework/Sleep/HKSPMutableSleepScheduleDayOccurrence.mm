@interface HKSPMutableSleepScheduleDayOccurrence
- (BOOL)hasChangeAffectingScheduling;
- (HKSPAlarmConfiguration)alarmConfiguration;
- (HKSPMutableSleepScheduleDayOccurrence)init;
- (HKSPMutableSleepScheduleDayOccurrence)initWithCoder:(id)coder;
- (NSDateComponents)bedtimeComponents;
- (NSDateComponents)wakeUpComponents;
- (id)copyWithZone:(_NSZone *)zone;
- (id)generateSleepScheduleOccurrenceWithWeekdays:(unint64_t)weekdays;
- (id)initFromObject:(id)object;
- (id)mutableCopy;
- (void)encodeWithCoder:(id)coder;
- (void)freeze;
- (void)setAlarmConfiguration:(id)configuration;
- (void)setBedtimeComponents:(id)components;
- (void)setWakeUpComponents:(id)components;
@end

@implementation HKSPMutableSleepScheduleDayOccurrence

- (void)setBedtimeComponents:(id)components
{
  componentsCopy = components;
  allProperties = [objc_opt_class() allProperties];
  v6 = HKSPPropertiesByIdentifier(allProperties);
  v7 = [v6 objectForKeyedSubscript:@"HKSPDayOccurrenceBedtimeComponents"];

  v8 = [(HKSPObject *)self->_originalObject hksp_valueForProperty:v7];
  v9 = [componentsCopy copy];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = componentsCopy;
  }

  v18 = v11;

  if (!NAEqualObjects() || [(HKSPChangeSet *)self->_changeSet hasChangeForPropertyIdentifier:@"HKSPDayOccurrenceBedtimeComponents"])
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

- (NSDateComponents)bedtimeComponents
{
  allProperties = [objc_opt_class() allProperties];
  v4 = HKSPPropertiesByIdentifier(allProperties);
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

- (void)setWakeUpComponents:(id)components
{
  componentsCopy = components;
  allProperties = [objc_opt_class() allProperties];
  v6 = HKSPPropertiesByIdentifier(allProperties);
  v7 = [v6 objectForKeyedSubscript:@"HKSPDayOccurrenceWakeUpComponents"];

  v8 = [(HKSPObject *)self->_originalObject hksp_valueForProperty:v7];
  v9 = [componentsCopy copy];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = componentsCopy;
  }

  v18 = v11;

  if (!NAEqualObjects() || [(HKSPChangeSet *)self->_changeSet hasChangeForPropertyIdentifier:@"HKSPDayOccurrenceWakeUpComponents"])
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

- (NSDateComponents)wakeUpComponents
{
  allProperties = [objc_opt_class() allProperties];
  v4 = HKSPPropertiesByIdentifier(allProperties);
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

- (void)setAlarmConfiguration:(id)configuration
{
  configurationCopy = configuration;
  allProperties = [objc_opt_class() allProperties];
  v5 = HKSPPropertiesByIdentifier(allProperties);
  v6 = [v5 objectForKeyedSubscript:@"HKSPDayOccurrenceAlarm"];

  v7 = [(HKSPObject *)self->_originalObject hksp_valueForProperty:v6];
  if (!NAEqualObjects() || [(HKSPChangeSet *)self->_changeSet hasChangeForPropertyIdentifier:@"HKSPDayOccurrenceAlarm"])
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
    v13 = [[v11 alloc] initWithProperty:v6 changedValue:configurationCopy originalValue:v7];
    [(HKSPChangeSet *)changeSet addChange:v13];
  }
}

- (HKSPAlarmConfiguration)alarmConfiguration
{
  allProperties = [objc_opt_class() allProperties];
  v4 = HKSPPropertiesByIdentifier(allProperties);
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

- (id)initFromObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HKSPSleepScheduleDayOccurrence.m" lineNumber:251 description:@"object must be a subclass"];
  }

  v14.receiver = self;
  v14.super_class = HKSPMutableSleepScheduleDayOccurrence;
  v6 = [(HKSPSleepScheduleDayOccurrence *)&v14 init];
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

- (HKSPMutableSleepScheduleDayOccurrence)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = HKSPMutableSleepScheduleDayOccurrence;
  v5 = [(HKSPSleepScheduleDayOccurrence *)&v12 init];
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
  v4 = [HKSPSleepScheduleDayOccurrence alloc];

  return [(HKSPSleepScheduleDayOccurrence *)v4 initFromObject:self];
}

- (id)mutableCopy
{
  v3 = objc_alloc_init(objc_opt_class());
  originalObject = [(HKSPMutableSleepScheduleDayOccurrence *)self originalObject];
  v5 = [originalObject copyWithZone:0];
  v6 = v3[5];
  v3[5] = v5;

  changeSet = [(HKSPMutableSleepScheduleDayOccurrence *)self changeSet];
  deepCopy = [changeSet deepCopy];
  v9 = v3[6];
  v3[6] = deepCopy;

  return v3;
}

- (void)freeze
{
  v3 = [[HKSPSleepScheduleDayOccurrence alloc] initFromObject:self];
  originalObject = self->_originalObject;
  self->_originalObject = v3;

  [(HKSPMutableSleepScheduleDayOccurrence *)self revert];
}

- (id)generateSleepScheduleOccurrenceWithWeekdays:(unint64_t)weekdays
{
  v5 = objc_alloc_init(HKSPMutableSleepScheduleOccurrence);
  [(HKSPMutableSleepScheduleOccurrence *)v5 setWeekdays:weekdays];
  originalObject = [(HKSPMutableSleepScheduleDayOccurrence *)self originalObject];
  [(HKSPMutableSleepScheduleOccurrence *)v5 setBackingOccurrence:originalObject];

  [(HKSPMutableSleepScheduleOccurrence *)v5 freeze];
  v7 = [(HKSPMutableSleepScheduleDayOccurrence *)self mutableCopy];
  [(HKSPMutableSleepScheduleOccurrence *)v5 setBackingOccurrence:v7];

  return v5;
}

- (BOOL)hasChangeAffectingScheduling
{
  changeSet = [(HKSPMutableSleepScheduleDayOccurrence *)self changeSet];
  if ([changeSet hasChangeForPropertyIdentifier:@"HKSPDayOccurrenceBedtimeComponents"])
  {
    v4 = 1;
  }

  else
  {
    changeSet2 = [(HKSPMutableSleepScheduleDayOccurrence *)self changeSet];
    v4 = [changeSet2 hasChangeForPropertyIdentifier:@"HKSPDayOccurrenceWakeUpComponents"];
  }

  return v4;
}

@end