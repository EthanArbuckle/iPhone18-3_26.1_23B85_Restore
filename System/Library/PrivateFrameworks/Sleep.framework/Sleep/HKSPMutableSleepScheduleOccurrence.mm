@interface HKSPMutableSleepScheduleOccurrence
- (HKSPAlarmConfiguration)alarmConfiguration;
- (HKSPMutableSleepScheduleOccurrence)init;
- (HKSPMutableSleepScheduleOccurrence)initWithCoder:(id)coder;
- (HKSPMutableSleepScheduleOccurrence)initWithTemplateOccurrence:(id)occurrence;
- (HKSPSleepScheduleDayOccurrence)backingOccurrence;
- (id)copyWithZone:(_NSZone *)zone;
- (id)initFromObject:(id)object;
- (id)mutableCopy;
- (unint64_t)weekdays;
- (void)applyHourAndMinuteFromBedtimeComponents:(id)components wakeUpComponents:(id)upComponents gregorianCalendar:(id)calendar;
- (void)encodeWithCoder:(id)coder;
- (void)freeze;
- (void)setAlarmConfiguration:(id)configuration;
- (void)setBackingOccurrence:(id)occurrence;
- (void)setBedtimeComponents:(id)components;
- (void)setWakeUpComponents:(id)components;
- (void)setWeekdays:(unint64_t)weekdays;
- (void)turnOffAlarm;
- (void)turnOffWeekdays:(unint64_t)weekdays;
- (void)turnOnAlarm;
- (void)turnOnWeekdays:(unint64_t)weekdays;
@end

@implementation HKSPMutableSleepScheduleOccurrence

- (void)setBackingOccurrence:(id)occurrence
{
  occurrenceCopy = occurrence;
  allProperties = [objc_opt_class() allProperties];
  v5 = HKSPPropertiesByIdentifier(allProperties);
  v6 = [v5 objectForKeyedSubscript:@"HKSPOccurrenceBackingOccurrence"];

  v7 = [(HKSPObject *)self->_originalObject hksp_valueForProperty:v6];
  if (!NAEqualObjects() || [(HKSPChangeSet *)self->_changeSet hasChangeForPropertyIdentifier:@"HKSPOccurrenceBackingOccurrence"])
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
    v13 = [[v11 alloc] initWithProperty:v6 changedValue:occurrenceCopy originalValue:v7];
    [(HKSPChangeSet *)changeSet addChange:v13];
  }
}

- (HKSPSleepScheduleDayOccurrence)backingOccurrence
{
  allProperties = [objc_opt_class() allProperties];
  v4 = HKSPPropertiesByIdentifier(allProperties);
  v5 = [v4 objectForKeyedSubscript:@"HKSPOccurrenceBackingOccurrence"];

  if ([(HKSPChangeSet *)self->_changeSet hasChangeForPropertyIdentifier:@"HKSPOccurrenceBackingOccurrence"])
  {
    [(HKSPChangeSet *)self->_changeSet changedValueForPropertyIdentifier:@"HKSPOccurrenceBackingOccurrence"];
  }

  else
  {
    [(HKSPObject *)self->_originalObject hksp_valueForProperty:v5];
  }
  v6 = ;

  return v6;
}

- (void)setWeekdays:(unint64_t)weekdays
{
  allProperties = [objc_opt_class() allProperties];
  v6 = HKSPPropertiesByIdentifier(allProperties);
  v14 = [v6 objectForKeyedSubscript:@"HKSPOccurrenceWeekdays"];

  v7 = [(HKSPObject *)self->_originalObject hksp_valueForProperty:v14];
  unsignedIntegerValue = [v7 unsignedIntegerValue];

  if (unsignedIntegerValue != weekdays || [(HKSPChangeSet *)self->_changeSet hasChangeForPropertyIdentifier:@"HKSPOccurrenceWeekdays"])
  {
    changeSet = self->_changeSet;
    v10 = [HKSPChange alloc];
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:weekdays];
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntegerValue];
    v13 = [(HKSPChange *)v10 initWithProperty:v14 changedValue:v11 originalValue:v12];
    [(HKSPChangeSet *)changeSet addChange:v13];
  }
}

- (unint64_t)weekdays
{
  allProperties = [objc_opt_class() allProperties];
  v4 = HKSPPropertiesByIdentifier(allProperties);
  v5 = [v4 objectForKeyedSubscript:@"HKSPOccurrenceWeekdays"];

  if ([(HKSPChangeSet *)self->_changeSet hasChangeForPropertyIdentifier:@"HKSPOccurrenceWeekdays"])
  {
    [(HKSPChangeSet *)self->_changeSet changedValueForPropertyIdentifier:@"HKSPOccurrenceWeekdays"];
  }

  else
  {
    [(HKSPObject *)self->_originalObject hksp_valueForProperty:v5];
  }
  v6 = ;
  unsignedIntegerValue = [v6 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (HKSPMutableSleepScheduleOccurrence)init
{
  v9.receiver = self;
  v9.super_class = HKSPMutableSleepScheduleOccurrence;
  v2 = [(HKSPSleepScheduleOccurrence *)&v9 init];
  if (v2)
  {
    v3 = objc_alloc_init(HKSPSleepScheduleOccurrence);
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
    [currentHandler handleFailureInMethod:a2 object:self file:@"HKSPSleepScheduleOccurrence.m" lineNumber:405 description:@"object must be a subclass"];
  }

  v14.receiver = self;
  v14.super_class = HKSPMutableSleepScheduleOccurrence;
  v6 = [(HKSPSleepScheduleOccurrence *)&v14 init];
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

- (HKSPMutableSleepScheduleOccurrence)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = HKSPMutableSleepScheduleOccurrence;
  v5 = [(HKSPSleepScheduleOccurrence *)&v12 init];
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

- (HKSPMutableSleepScheduleOccurrence)initWithTemplateOccurrence:(id)occurrence
{
  occurrenceCopy = occurrence;
  v5 = [(HKSPMutableSleepScheduleOccurrence *)self init];
  if (v5)
  {
    bedtimeComponents = [occurrenceCopy bedtimeComponents];
    [(HKSPMutableSleepScheduleOccurrence *)v5 setBedtimeComponents:bedtimeComponents];

    wakeUpComponents = [occurrenceCopy wakeUpComponents];
    [(HKSPMutableSleepScheduleOccurrence *)v5 setWakeUpComponents:wakeUpComponents];

    -[HKSPMutableSleepScheduleOccurrence setWeekdays:](v5, "setWeekdays:", [occurrenceCopy weekdays]);
    v8 = [HKSPMutableAlarmConfiguration alloc];
    alarmConfiguration = [occurrenceCopy alarmConfiguration];
    v10 = [(HKSPMutableAlarmConfiguration *)v8 initWithTemplateAlarmConfiguration:alarmConfiguration];
    [(HKSPMutableSleepScheduleOccurrence *)v5 setAlarmConfiguration:v10];
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
  v4 = [HKSPSleepScheduleOccurrence alloc];

  return [(HKSPSleepScheduleOccurrence *)v4 initFromObject:self];
}

- (id)mutableCopy
{
  v3 = objc_alloc_init(objc_opt_class());
  originalObject = [(HKSPMutableSleepScheduleOccurrence *)self originalObject];
  v5 = [originalObject copyWithZone:0];
  v6 = v3[4];
  v3[4] = v5;

  changeSet = [(HKSPMutableSleepScheduleOccurrence *)self changeSet];
  deepCopy = [changeSet deepCopy];
  v9 = v3[5];
  v3[5] = deepCopy;

  return v3;
}

- (void)freeze
{
  v3 = [[HKSPSleepScheduleOccurrence alloc] initFromObject:self];
  originalObject = self->_originalObject;
  self->_originalObject = v3;

  [(HKSPMutableSleepScheduleOccurrence *)self revert];
}

- (void)turnOnWeekdays:(unint64_t)weekdays
{
  v4 = [(HKSPMutableSleepScheduleOccurrence *)self weekdays]| weekdays;

  [(HKSPMutableSleepScheduleOccurrence *)self setWeekdays:v4];
}

- (void)turnOffWeekdays:(unint64_t)weekdays
{
  v4 = [(HKSPMutableSleepScheduleOccurrence *)self weekdays]& ~weekdays;

  [(HKSPMutableSleepScheduleOccurrence *)self setWeekdays:v4];
}

- (void)turnOnAlarm
{
  alarmConfiguration = [(HKSPMutableSleepScheduleOccurrence *)self alarmConfiguration];
  v4 = [alarmConfiguration mutableCopy];

  [v4 setEnabled:1];
  [(HKSPMutableSleepScheduleOccurrence *)self setAlarmConfiguration:v4];
}

- (void)turnOffAlarm
{
  alarmConfiguration = [(HKSPMutableSleepScheduleOccurrence *)self alarmConfiguration];
  v4 = [alarmConfiguration mutableCopy];

  [v4 setEnabled:0];
  [(HKSPMutableSleepScheduleOccurrence *)self setAlarmConfiguration:v4];
}

- (void)setWakeUpComponents:(id)components
{
  componentsCopy = components;
  backingOccurrence = [(HKSPMutableSleepScheduleOccurrence *)self backingOccurrence];
  v6 = [backingOccurrence mutableCopy];

  [v6 setWakeUpComponents:componentsCopy];
  [(HKSPMutableSleepScheduleOccurrence *)self setBackingOccurrence:v6];
}

- (void)setBedtimeComponents:(id)components
{
  componentsCopy = components;
  backingOccurrence = [(HKSPMutableSleepScheduleOccurrence *)self backingOccurrence];
  v6 = [backingOccurrence mutableCopy];

  [v6 setBedtimeComponents:componentsCopy];
  [(HKSPMutableSleepScheduleOccurrence *)self setBackingOccurrence:v6];
}

- (HKSPAlarmConfiguration)alarmConfiguration
{
  backingOccurrence = [(HKSPMutableSleepScheduleOccurrence *)self backingOccurrence];
  alarmConfiguration = [backingOccurrence alarmConfiguration];
  v4 = [alarmConfiguration mutableCopy];

  return v4;
}

- (void)setAlarmConfiguration:(id)configuration
{
  configurationCopy = configuration;
  backingOccurrence = [(HKSPMutableSleepScheduleOccurrence *)self backingOccurrence];
  v6 = [backingOccurrence mutableCopy];

  [v6 setAlarmConfiguration:configurationCopy];
  [(HKSPMutableSleepScheduleOccurrence *)self setBackingOccurrence:v6];
}

- (void)applyHourAndMinuteFromBedtimeComponents:(id)components wakeUpComponents:(id)upComponents gregorianCalendar:(id)calendar
{
  componentsCopy = components;
  upComponentsCopy = upComponents;
  calendarCopy = calendar;
  if (!componentsCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HKSPSleepScheduleOccurrence.m" lineNumber:506 description:{@"Invalid parameter not satisfying: %@", @"bedtimeComponents != nil"}];

    if (upComponentsCopy)
    {
      goto LABEL_3;
    }

LABEL_14:
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"HKSPSleepScheduleOccurrence.m" lineNumber:507 description:{@"Invalid parameter not satisfying: %@", @"wakeUpComponents != nil"}];

    goto LABEL_3;
  }

  if (!upComponentsCopy)
  {
    goto LABEL_14;
  }

LABEL_3:
  if ([(HKSPSleepScheduleOccurrence *)self isSingleDayOverride]&& ([(HKSPSleepScheduleOccurrence *)self wakeUpComponents], (v11 = objc_claimAutoreleasedReturnValue()) != 0) && (v12 = v11, [(HKSPSleepScheduleOccurrence *)self bedtimeComponents], v13 = objc_claimAutoreleasedReturnValue(), v13, v12, v13))
  {
    wakeUpComponents = [(HKSPSleepScheduleOccurrence *)self wakeUpComponents];
    v15 = [wakeUpComponents copy];

    [v15 setHour:{objc_msgSend(upComponentsCopy, "hour")}];
    [v15 setMinute:{objc_msgSend(upComponentsCopy, "minute")}];
    v16 = [calendarCopy dateFromComponents:v15];
    if (v16)
    {
      v17 = objc_alloc_init(MEMORY[0x277CBEAB8]);
      [v17 setHour:{objc_msgSend(componentsCopy, "hour")}];
      [v17 setMinute:{objc_msgSend(componentsCopy, "minute")}];
      v18 = [calendarCopy hksp_previousDateBeforeDate:v16 matchingComponents:v17];
      v19 = [calendarCopy components:124 fromDate:v16];
      [(HKSPMutableSleepScheduleOccurrence *)self setWakeUpComponents:v19];

      v20 = [calendarCopy components:124 fromDate:v18];
      [(HKSPMutableSleepScheduleOccurrence *)self setBedtimeComponents:v20];
    }
  }

  else
  {
    [(HKSPMutableSleepScheduleOccurrence *)self setBedtimeComponents:componentsCopy];
    [(HKSPMutableSleepScheduleOccurrence *)self setWakeUpComponents:upComponentsCopy];
  }
}

@end