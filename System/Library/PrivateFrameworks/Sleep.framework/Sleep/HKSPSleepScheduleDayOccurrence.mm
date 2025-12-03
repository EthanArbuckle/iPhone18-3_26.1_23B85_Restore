@interface HKSPSleepScheduleDayOccurrence
+ (id)innerClasses;
- (HKSPSleepScheduleDayOccurrence)init;
- (HKSPSleepScheduleDayOccurrence)initWithCoder:(id)coder;
- (NSDateComponents)bedtimeComponents;
- (NSDateComponents)wakeUpComponents;
- (NSString)groupingIdentifier;
- (id)_decodeComponentsForPersistenceWithCoder:(id)coder key:(id)key;
- (id)generateSleepScheduleOccurrenceWithWeekdays:(unint64_t)weekdays;
- (id)initFromObject:(id)object;
- (id)mutableCopy;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (void)_encodeComponentsForPersistence:(id)persistence coder:(id)coder key:(id)key;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKSPSleepScheduleDayOccurrence

- (HKSPSleepScheduleDayOccurrence)init
{
  v8.receiver = self;
  v8.super_class = HKSPSleepScheduleDayOccurrence;
  v2 = [(HKSPSleepScheduleDayOccurrence *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v2->_version = 1;
    v4 = objc_alloc_init(HKSPAlarmConfiguration);
    alarmConfiguration = v3->_alarmConfiguration;
    v3->_alarmConfiguration = v4;

    v6 = v3;
  }

  return v3;
}

- (NSDateComponents)bedtimeComponents
{
  v2 = [(NSDateComponents *)self->_bedtimeComponents copy];

  return v2;
}

- (NSDateComponents)wakeUpComponents
{
  v2 = [(NSDateComponents *)self->_wakeUpComponents copy];

  return v2;
}

- (id)initFromObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = objectCopy;
    v6 = [(HKSPSleepScheduleDayOccurrence *)self init];
    HKSPCopyFromObject(v5, v6);

    self = v6;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (HKSPSleepScheduleDayOccurrence)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = HKSPSleepScheduleDayOccurrence;
  v5 = [(HKSPSleepScheduleDayOccurrence *)&v13 init];
  v6 = v5;
  if (v5)
  {
    HKSPDecodeObjectWithCoder(v5, coderCopy);
    if ([coderCopy hksp_serializationOptions])
    {
      v7 = [(HKSPSleepScheduleDayOccurrence *)v6 _decodeComponentsForPersistenceWithCoder:coderCopy key:@"HKSPDayOccurrenceBedtimeComponents"];
      bedtimeComponents = v6->_bedtimeComponents;
      v6->_bedtimeComponents = v7;

      v9 = [(HKSPSleepScheduleDayOccurrence *)v6 _decodeComponentsForPersistenceWithCoder:coderCopy key:@"HKSPDayOccurrenceWakeUpComponents"];
      wakeUpComponents = v6->_wakeUpComponents;
      v6->_wakeUpComponents = v9;
    }

    v11 = v6;
  }

  return v6;
}

- (id)_decodeComponentsForPersistenceWithCoder:(id)coder key:(id)key
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CBEB98];
  keyCopy = key;
  coderCopy = coder;
  v22 = objc_opt_class();
  v23 = objc_opt_class();
  v24 = objc_opt_class();
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v22 count:3];
  v9 = [v5 setWithArray:{v8, v22, v23}];
  v10 = [coderCopy decodeObjectOfClasses:v9 forKey:keyCopy];

  v11 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  v12 = [v10 objectForKeyedSubscript:@"HKSPDayOccurrenceHour"];
  [v11 setHour:{objc_msgSend(v12, "integerValue")}];

  v13 = [v10 objectForKeyedSubscript:@"HKSPDayOccurrenceMinute"];
  [v11 setMinute:{objc_msgSend(v13, "integerValue")}];

  v14 = [v10 objectForKeyedSubscript:@"HKSPDayOccurrenceYear"];

  if (v14)
  {
    v15 = [v10 objectForKeyedSubscript:@"HKSPDayOccurrenceYear"];
    [v11 setYear:{objc_msgSend(v15, "integerValue")}];
  }

  v16 = [v10 objectForKeyedSubscript:@"HKSPDayOccurrenceMonth"];

  if (v16)
  {
    v17 = [v10 objectForKeyedSubscript:@"HKSPDayOccurrenceMonth"];
    [v11 setMonth:{objc_msgSend(v17, "integerValue")}];
  }

  v18 = [v10 objectForKeyedSubscript:@"HKSPDayOccurrenceDay"];

  if (v18)
  {
    v19 = [v10 objectForKeyedSubscript:@"HKSPDayOccurrenceDay"];
    [v11 setDay:{objc_msgSend(v19, "integerValue")}];
  }

  v20 = *MEMORY[0x277D85DE8];

  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  HKSPEncodeObjectWithCoder(self, coderCopy);
  if ([coderCopy hksp_serializationOptions])
  {
    [(HKSPSleepScheduleDayOccurrence *)self _encodeComponentsForPersistence:self->_bedtimeComponents coder:coderCopy key:@"HKSPDayOccurrenceBedtimeComponents"];
    [(HKSPSleepScheduleDayOccurrence *)self _encodeComponentsForPersistence:self->_wakeUpComponents coder:coderCopy key:@"HKSPDayOccurrenceWakeUpComponents"];
  }
}

- (void)_encodeComponentsForPersistence:(id)persistence coder:(id)coder key:(id)key
{
  persistenceCopy = persistence;
  v7 = MEMORY[0x277CBEB38];
  keyCopy = key;
  coderCopy = coder;
  v10 = objc_alloc_init(v7);
  v11 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(persistenceCopy, "hour")}];
  [v10 setObject:v11 forKeyedSubscript:@"HKSPDayOccurrenceHour"];

  v12 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(persistenceCopy, "minute")}];
  [v10 setObject:v12 forKeyedSubscript:@"HKSPDayOccurrenceMinute"];

  if ([persistenceCopy year] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v13 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(persistenceCopy, "year")}];
    [v10 setObject:v13 forKeyedSubscript:@"HKSPDayOccurrenceYear"];
  }

  if ([persistenceCopy month] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v14 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(persistenceCopy, "month")}];
    [v10 setObject:v14 forKeyedSubscript:@"HKSPDayOccurrenceMonth"];
  }

  if ([persistenceCopy day] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v15 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(persistenceCopy, "day")}];
    [v10 setObject:v15 forKeyedSubscript:@"HKSPDayOccurrenceDay"];
  }

  v16 = [v10 copy];
  [coderCopy encodeObject:v16 forKey:keyCopy];
}

+ (id)innerClasses
{
  v2 = MEMORY[0x277CBEB98];
  v3 = objc_opt_class();

  return [v2 setWithObject:v3];
}

- (id)mutableCopy
{
  v3 = [HKSPMutableSleepScheduleDayOccurrence alloc];

  return [(HKSPMutableSleepScheduleDayOccurrence *)v3 initFromObject:self];
}

- (id)generateSleepScheduleOccurrenceWithWeekdays:(unint64_t)weekdays
{
  v5 = objc_alloc_init(HKSPMutableSleepScheduleOccurrence);
  [(HKSPMutableSleepScheduleOccurrence *)v5 setWeekdays:weekdays];
  v6 = [(HKSPSleepScheduleDayOccurrence *)self copy];
  [(HKSPMutableSleepScheduleOccurrence *)v5 setBackingOccurrence:v6];

  v7 = [(HKSPMutableSleepScheduleOccurrence *)v5 copy];

  return v7;
}

id __72__HKSPSleepScheduleDayOccurrence_isEquivalentToOccurrenceIgnoringDates___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 identifier];
  if ([v6 isEqualToString:@"HKSPDayOccurrenceWakeUpComponents"])
  {

LABEL_4:
    v9 = [v5 hksp_timeComponents];
    goto LABEL_6;
  }

  v7 = [v4 identifier];
  v8 = [v7 isEqualToString:@"HKSPDayOccurrenceBedtimeComponents"];

  if (v8)
  {
    goto LABEL_4;
  }

  v9 = v5;
LABEL_6:
  v10 = v9;

  return v10;
}

id __77__HKSPSleepScheduleDayOccurrence_isAlarmEquivalentToOccurrenceIgnoringDates___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 identifier];
  v7 = [v6 isEqualToString:@"HKSPDayOccurrenceWakeUpComponents"];

  if (v7)
  {
    v8 = [v5 hksp_timeComponents];
  }

  else
  {
    v9 = [v4 identifier];
    v10 = [v9 isEqualToString:@"HKSPDayOccurrenceBedtimeComponents"];

    if (v10)
    {
      v11 = MEMORY[0x277CBEC38];
      goto LABEL_7;
    }

    v8 = v5;
  }

  v11 = v8;
LABEL_7:

  return v11;
}

- (NSString)groupingIdentifier
{
  builder = [MEMORY[0x277CF0C40] builder];
  bedtimeComponents = [(HKSPSleepScheduleDayOccurrence *)self bedtimeComponents];
  v5 = [builder appendObject:bedtimeComponents];

  wakeUpComponents = [(HKSPSleepScheduleDayOccurrence *)self wakeUpComponents];
  v7 = [builder appendObject:wakeUpComponents];

  alarmConfiguration = [(HKSPSleepScheduleDayOccurrence *)self alarmConfiguration];
  v9 = [builder appendObject:alarmConfiguration];

  v10 = [builder hash];
  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", v10];

  return v11;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(HKSPSleepScheduleDayOccurrence *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  bedtimeComponents = [(HKSPSleepScheduleDayOccurrence *)self bedtimeComponents];
  hksp_description = [bedtimeComponents hksp_description];
  [v3 appendString:hksp_description withName:@"bedtime"];

  wakeUpComponents = [(HKSPSleepScheduleDayOccurrence *)self wakeUpComponents];
  hksp_description2 = [wakeUpComponents hksp_description];
  [v3 appendString:hksp_description2 withName:@"wakeUp"];

  alarmConfiguration = [(HKSPSleepScheduleDayOccurrence *)self alarmConfiguration];
  v9 = [v3 appendBool:objc_msgSend(alarmConfiguration withName:{"isEnabled"), @"alarm"}];

  return v3;
}

@end