@interface HKSPMutableSleepSchedule
- (BOOL)_hasChangeForDayOccurrenceKey:(id)key dayOccurrence:(id)occurrence;
- (BOOL)_hasChangeToScheduleEnabled;
- (BOOL)_shouldRemoveOverrideOccurrence:(id)occurrence;
- (BOOL)hasChangeAffectingScheduling;
- (BOOL)hasChangeToSleepDurationGoal;
- (BOOL)hasChangeToWindDownTime;
- (BOOL)hasOverrideOccurrenceRemoval;
- (BOOL)isEnabled;
- (HKSPMutableSleepSchedule)init;
- (HKSPMutableSleepSchedule)initWithCoder:(id)coder;
- (HKSPSleepScheduleDayOccurrence)fridayOccurrence;
- (HKSPSleepScheduleDayOccurrence)mondayOccurrence;
- (HKSPSleepScheduleDayOccurrence)overrideDayOccurrence;
- (HKSPSleepScheduleDayOccurrence)saturdayOccurrence;
- (HKSPSleepScheduleDayOccurrence)sundayOccurrence;
- (HKSPSleepScheduleDayOccurrence)thursdayOccurrence;
- (HKSPSleepScheduleDayOccurrence)tuesdayOccurrence;
- (HKSPSleepScheduleDayOccurrence)wednesdayOccurrence;
- (NSDate)lastModifiedDate;
- (double)sleepDurationGoal;
- (double)windDownTime;
- (id)_updatedDayOccurrence:(id)occurrence withDayOccurrence:(id)dayOccurrence;
- (id)copyWithZone:(_NSZone *)zone;
- (id)initFromObject:(id)object;
- (id)lastOverrideOccurrenceWakeUpComponents;
- (id)mutableCopy;
- (void)_freezeSavedOccurrence:(id)occurrence;
- (void)_modifyDayOccurrencesForWeekdays:(unint64_t)weekdays block:(id)block;
- (void)_updateBackingOccurrencesForOccurrence:(id)occurrence;
- (void)_updateOverrideOccurrenceForOccurrence:(id)occurrence;
- (void)encodeWithCoder:(id)coder;
- (void)freeze;
- (void)removeOccurrence:(id)occurrence;
- (void)saveOccurrence:(id)occurrence;
- (void)setFridayOccurrence:(id)occurrence;
- (void)setLastModifiedDate:(id)date;
- (void)setMondayOccurrence:(id)occurrence;
- (void)setOverrideDayOccurrence:(id)occurrence;
- (void)setSaturdayOccurrence:(id)occurrence;
- (void)setSleepDurationGoal:(double)goal;
- (void)setSundayOccurrence:(id)occurrence;
- (void)setThursdayOccurrence:(id)occurrence;
- (void)setTuesdayOccurrence:(id)occurrence;
- (void)setWednesdayOccurrence:(id)occurrence;
- (void)setWindDownTime:(double)time;
@end

@implementation HKSPMutableSleepSchedule

- (BOOL)isEnabled
{
  allProperties = [objc_opt_class() allProperties];
  v4 = HKSPPropertiesByIdentifier(allProperties);
  v5 = [v4 objectForKeyedSubscript:@"HKSPScheduleEnabled"];

  if ([(HKSPChangeSet *)self->_changeSet hasChangeForPropertyIdentifier:@"HKSPScheduleEnabled"])
  {
    [(HKSPChangeSet *)self->_changeSet changedValueForPropertyIdentifier:@"HKSPScheduleEnabled"];
  }

  else
  {
    [(HKSPObject *)self->_originalObject hksp_valueForProperty:v5];
  }
  v6 = ;
  bOOLValue = [v6 BOOLValue];

  return bOOLValue;
}

- (void)setWindDownTime:(double)time
{
  allProperties = [objc_opt_class() allProperties];
  v6 = HKSPPropertiesByIdentifier(allProperties);
  v15 = [v6 objectForKeyedSubscript:@"HKSPWindDownTimeInterval"];

  v7 = [(HKSPObject *)self->_originalObject hksp_valueForProperty:v15];
  [v7 doubleValue];
  v9 = v8;

  if (v9 != time || [(HKSPChangeSet *)self->_changeSet hasChangeForPropertyIdentifier:@"HKSPWindDownTimeInterval"])
  {
    changeSet = self->_changeSet;
    v11 = [HKSPChange alloc];
    v12 = [MEMORY[0x277CCABB0] numberWithDouble:time];
    v13 = [MEMORY[0x277CCABB0] numberWithDouble:v9];
    v14 = [(HKSPChange *)v11 initWithProperty:v15 changedValue:v12 originalValue:v13];
    [(HKSPChangeSet *)changeSet addChange:v14];
  }
}

- (double)windDownTime
{
  allProperties = [objc_opt_class() allProperties];
  v4 = HKSPPropertiesByIdentifier(allProperties);
  v5 = [v4 objectForKeyedSubscript:@"HKSPWindDownTimeInterval"];

  if ([(HKSPChangeSet *)self->_changeSet hasChangeForPropertyIdentifier:@"HKSPWindDownTimeInterval"])
  {
    [(HKSPChangeSet *)self->_changeSet changedValueForPropertyIdentifier:@"HKSPWindDownTimeInterval"];
  }

  else
  {
    [(HKSPObject *)self->_originalObject hksp_valueForProperty:v5];
  }
  v6 = ;
  [v6 doubleValue];
  v8 = v7;

  return v8;
}

- (void)setSleepDurationGoal:(double)goal
{
  allProperties = [objc_opt_class() allProperties];
  v6 = HKSPPropertiesByIdentifier(allProperties);
  v15 = [v6 objectForKeyedSubscript:@"HKSPSleepDurationGoal"];

  v7 = [(HKSPObject *)self->_originalObject hksp_valueForProperty:v15];
  [v7 doubleValue];
  v9 = v8;

  if (v9 != goal || [(HKSPChangeSet *)self->_changeSet hasChangeForPropertyIdentifier:@"HKSPSleepDurationGoal"])
  {
    changeSet = self->_changeSet;
    v11 = [HKSPChange alloc];
    v12 = [MEMORY[0x277CCABB0] numberWithDouble:goal];
    v13 = [MEMORY[0x277CCABB0] numberWithDouble:v9];
    v14 = [(HKSPChange *)v11 initWithProperty:v15 changedValue:v12 originalValue:v13];
    [(HKSPChangeSet *)changeSet addChange:v14];
  }
}

- (double)sleepDurationGoal
{
  allProperties = [objc_opt_class() allProperties];
  v4 = HKSPPropertiesByIdentifier(allProperties);
  v5 = [v4 objectForKeyedSubscript:@"HKSPSleepDurationGoal"];

  if ([(HKSPChangeSet *)self->_changeSet hasChangeForPropertyIdentifier:@"HKSPSleepDurationGoal"])
  {
    [(HKSPChangeSet *)self->_changeSet changedValueForPropertyIdentifier:@"HKSPSleepDurationGoal"];
  }

  else
  {
    [(HKSPObject *)self->_originalObject hksp_valueForProperty:v5];
  }
  v6 = ;
  [v6 doubleValue];
  v8 = v7;

  return v8;
}

- (void)setLastModifiedDate:(id)date
{
  dateCopy = date;
  allProperties = [objc_opt_class() allProperties];
  v5 = HKSPPropertiesByIdentifier(allProperties);
  v6 = [v5 objectForKeyedSubscript:@"HKSPScheduleLastModifiedDate"];

  v7 = [(HKSPObject *)self->_originalObject hksp_valueForProperty:v6];
  if (!NAEqualObjects() || [(HKSPChangeSet *)self->_changeSet hasChangeForPropertyIdentifier:@"HKSPScheduleLastModifiedDate"])
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
  v5 = [v4 objectForKeyedSubscript:@"HKSPScheduleLastModifiedDate"];

  if ([(HKSPChangeSet *)self->_changeSet hasChangeForPropertyIdentifier:@"HKSPScheduleLastModifiedDate"])
  {
    [(HKSPChangeSet *)self->_changeSet changedValueForPropertyIdentifier:@"HKSPScheduleLastModifiedDate"];
  }

  else
  {
    [(HKSPObject *)self->_originalObject hksp_valueForProperty:v5];
  }
  v6 = ;

  return v6;
}

- (void)setMondayOccurrence:(id)occurrence
{
  occurrenceCopy = occurrence;
  allProperties = [objc_opt_class() allProperties];
  v5 = HKSPPropertiesByIdentifier(allProperties);
  v6 = [v5 objectForKeyedSubscript:@"HKSPMondayOccurrence"];

  v7 = [(HKSPObject *)self->_originalObject hksp_valueForProperty:v6];
  if (!NAEqualObjects() || [(HKSPChangeSet *)self->_changeSet hasChangeForPropertyIdentifier:@"HKSPMondayOccurrence"])
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

- (HKSPSleepScheduleDayOccurrence)mondayOccurrence
{
  allProperties = [objc_opt_class() allProperties];
  v4 = HKSPPropertiesByIdentifier(allProperties);
  v5 = [v4 objectForKeyedSubscript:@"HKSPMondayOccurrence"];

  if ([(HKSPChangeSet *)self->_changeSet hasChangeForPropertyIdentifier:@"HKSPMondayOccurrence"])
  {
    [(HKSPChangeSet *)self->_changeSet changedValueForPropertyIdentifier:@"HKSPMondayOccurrence"];
  }

  else
  {
    [(HKSPObject *)self->_originalObject hksp_valueForProperty:v5];
  }
  v6 = ;

  return v6;
}

- (void)setTuesdayOccurrence:(id)occurrence
{
  occurrenceCopy = occurrence;
  allProperties = [objc_opt_class() allProperties];
  v5 = HKSPPropertiesByIdentifier(allProperties);
  v6 = [v5 objectForKeyedSubscript:@"HKSPTuesdayOccurrence"];

  v7 = [(HKSPObject *)self->_originalObject hksp_valueForProperty:v6];
  if (!NAEqualObjects() || [(HKSPChangeSet *)self->_changeSet hasChangeForPropertyIdentifier:@"HKSPTuesdayOccurrence"])
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

- (HKSPSleepScheduleDayOccurrence)tuesdayOccurrence
{
  allProperties = [objc_opt_class() allProperties];
  v4 = HKSPPropertiesByIdentifier(allProperties);
  v5 = [v4 objectForKeyedSubscript:@"HKSPTuesdayOccurrence"];

  if ([(HKSPChangeSet *)self->_changeSet hasChangeForPropertyIdentifier:@"HKSPTuesdayOccurrence"])
  {
    [(HKSPChangeSet *)self->_changeSet changedValueForPropertyIdentifier:@"HKSPTuesdayOccurrence"];
  }

  else
  {
    [(HKSPObject *)self->_originalObject hksp_valueForProperty:v5];
  }
  v6 = ;

  return v6;
}

- (void)setWednesdayOccurrence:(id)occurrence
{
  occurrenceCopy = occurrence;
  allProperties = [objc_opt_class() allProperties];
  v5 = HKSPPropertiesByIdentifier(allProperties);
  v6 = [v5 objectForKeyedSubscript:@"HKSPWednesdayOccurrence"];

  v7 = [(HKSPObject *)self->_originalObject hksp_valueForProperty:v6];
  if (!NAEqualObjects() || [(HKSPChangeSet *)self->_changeSet hasChangeForPropertyIdentifier:@"HKSPWednesdayOccurrence"])
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

- (HKSPSleepScheduleDayOccurrence)wednesdayOccurrence
{
  allProperties = [objc_opt_class() allProperties];
  v4 = HKSPPropertiesByIdentifier(allProperties);
  v5 = [v4 objectForKeyedSubscript:@"HKSPWednesdayOccurrence"];

  if ([(HKSPChangeSet *)self->_changeSet hasChangeForPropertyIdentifier:@"HKSPWednesdayOccurrence"])
  {
    [(HKSPChangeSet *)self->_changeSet changedValueForPropertyIdentifier:@"HKSPWednesdayOccurrence"];
  }

  else
  {
    [(HKSPObject *)self->_originalObject hksp_valueForProperty:v5];
  }
  v6 = ;

  return v6;
}

- (void)setThursdayOccurrence:(id)occurrence
{
  occurrenceCopy = occurrence;
  allProperties = [objc_opt_class() allProperties];
  v5 = HKSPPropertiesByIdentifier(allProperties);
  v6 = [v5 objectForKeyedSubscript:@"HKSPThursdayOccurrence"];

  v7 = [(HKSPObject *)self->_originalObject hksp_valueForProperty:v6];
  if (!NAEqualObjects() || [(HKSPChangeSet *)self->_changeSet hasChangeForPropertyIdentifier:@"HKSPThursdayOccurrence"])
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

- (HKSPSleepScheduleDayOccurrence)thursdayOccurrence
{
  allProperties = [objc_opt_class() allProperties];
  v4 = HKSPPropertiesByIdentifier(allProperties);
  v5 = [v4 objectForKeyedSubscript:@"HKSPThursdayOccurrence"];

  if ([(HKSPChangeSet *)self->_changeSet hasChangeForPropertyIdentifier:@"HKSPThursdayOccurrence"])
  {
    [(HKSPChangeSet *)self->_changeSet changedValueForPropertyIdentifier:@"HKSPThursdayOccurrence"];
  }

  else
  {
    [(HKSPObject *)self->_originalObject hksp_valueForProperty:v5];
  }
  v6 = ;

  return v6;
}

- (void)setFridayOccurrence:(id)occurrence
{
  occurrenceCopy = occurrence;
  allProperties = [objc_opt_class() allProperties];
  v5 = HKSPPropertiesByIdentifier(allProperties);
  v6 = [v5 objectForKeyedSubscript:@"HKSPFridayOccurrence"];

  v7 = [(HKSPObject *)self->_originalObject hksp_valueForProperty:v6];
  if (!NAEqualObjects() || [(HKSPChangeSet *)self->_changeSet hasChangeForPropertyIdentifier:@"HKSPFridayOccurrence"])
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

- (HKSPSleepScheduleDayOccurrence)fridayOccurrence
{
  allProperties = [objc_opt_class() allProperties];
  v4 = HKSPPropertiesByIdentifier(allProperties);
  v5 = [v4 objectForKeyedSubscript:@"HKSPFridayOccurrence"];

  if ([(HKSPChangeSet *)self->_changeSet hasChangeForPropertyIdentifier:@"HKSPFridayOccurrence"])
  {
    [(HKSPChangeSet *)self->_changeSet changedValueForPropertyIdentifier:@"HKSPFridayOccurrence"];
  }

  else
  {
    [(HKSPObject *)self->_originalObject hksp_valueForProperty:v5];
  }
  v6 = ;

  return v6;
}

- (void)setSaturdayOccurrence:(id)occurrence
{
  occurrenceCopy = occurrence;
  allProperties = [objc_opt_class() allProperties];
  v5 = HKSPPropertiesByIdentifier(allProperties);
  v6 = [v5 objectForKeyedSubscript:@"HKSPSaturdayOccurrence"];

  v7 = [(HKSPObject *)self->_originalObject hksp_valueForProperty:v6];
  if (!NAEqualObjects() || [(HKSPChangeSet *)self->_changeSet hasChangeForPropertyIdentifier:@"HKSPSaturdayOccurrence"])
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

- (HKSPSleepScheduleDayOccurrence)saturdayOccurrence
{
  allProperties = [objc_opt_class() allProperties];
  v4 = HKSPPropertiesByIdentifier(allProperties);
  v5 = [v4 objectForKeyedSubscript:@"HKSPSaturdayOccurrence"];

  if ([(HKSPChangeSet *)self->_changeSet hasChangeForPropertyIdentifier:@"HKSPSaturdayOccurrence"])
  {
    [(HKSPChangeSet *)self->_changeSet changedValueForPropertyIdentifier:@"HKSPSaturdayOccurrence"];
  }

  else
  {
    [(HKSPObject *)self->_originalObject hksp_valueForProperty:v5];
  }
  v6 = ;

  return v6;
}

- (void)setSundayOccurrence:(id)occurrence
{
  occurrenceCopy = occurrence;
  allProperties = [objc_opt_class() allProperties];
  v5 = HKSPPropertiesByIdentifier(allProperties);
  v6 = [v5 objectForKeyedSubscript:@"HKSPSundayOccurrence"];

  v7 = [(HKSPObject *)self->_originalObject hksp_valueForProperty:v6];
  if (!NAEqualObjects() || [(HKSPChangeSet *)self->_changeSet hasChangeForPropertyIdentifier:@"HKSPSundayOccurrence"])
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

- (HKSPSleepScheduleDayOccurrence)sundayOccurrence
{
  allProperties = [objc_opt_class() allProperties];
  v4 = HKSPPropertiesByIdentifier(allProperties);
  v5 = [v4 objectForKeyedSubscript:@"HKSPSundayOccurrence"];

  if ([(HKSPChangeSet *)self->_changeSet hasChangeForPropertyIdentifier:@"HKSPSundayOccurrence"])
  {
    [(HKSPChangeSet *)self->_changeSet changedValueForPropertyIdentifier:@"HKSPSundayOccurrence"];
  }

  else
  {
    [(HKSPObject *)self->_originalObject hksp_valueForProperty:v5];
  }
  v6 = ;

  return v6;
}

- (void)setOverrideDayOccurrence:(id)occurrence
{
  occurrenceCopy = occurrence;
  allProperties = [objc_opt_class() allProperties];
  v5 = HKSPPropertiesByIdentifier(allProperties);
  v6 = [v5 objectForKeyedSubscript:@"HKSPOverrideOccurrence"];

  v7 = [(HKSPObject *)self->_originalObject hksp_valueForProperty:v6];
  if (!NAEqualObjects() || [(HKSPChangeSet *)self->_changeSet hasChangeForPropertyIdentifier:@"HKSPOverrideOccurrence"])
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

- (HKSPSleepScheduleDayOccurrence)overrideDayOccurrence
{
  allProperties = [objc_opt_class() allProperties];
  v4 = HKSPPropertiesByIdentifier(allProperties);
  v5 = [v4 objectForKeyedSubscript:@"HKSPOverrideOccurrence"];

  if ([(HKSPChangeSet *)self->_changeSet hasChangeForPropertyIdentifier:@"HKSPOverrideOccurrence"])
  {
    [(HKSPChangeSet *)self->_changeSet changedValueForPropertyIdentifier:@"HKSPOverrideOccurrence"];
  }

  else
  {
    [(HKSPObject *)self->_originalObject hksp_valueForProperty:v5];
  }
  v6 = ;

  return v6;
}

- (HKSPMutableSleepSchedule)init
{
  v9.receiver = self;
  v9.super_class = HKSPMutableSleepSchedule;
  v2 = [(HKSPSleepSchedule *)&v9 init];
  if (v2)
  {
    v3 = objc_alloc_init(HKSPSleepSchedule);
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
    [currentHandler handleFailureInMethod:a2 object:self file:@"HKSPSleepSchedule.m" lineNumber:625 description:@"object must be a subclass"];
  }

  v14.receiver = self;
  v14.super_class = HKSPMutableSleepSchedule;
  v6 = [(HKSPSleepSchedule *)&v14 init];
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

- (HKSPMutableSleepSchedule)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = HKSPMutableSleepSchedule;
  v5 = [(HKSPSleepSchedule *)&v12 init];
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
  v4 = [HKSPSleepSchedule alloc];

  return [(HKSPSleepSchedule *)v4 initFromObject:self];
}

- (id)mutableCopy
{
  v3 = objc_alloc_init(objc_opt_class());
  originalObject = [(HKSPMutableSleepSchedule *)self originalObject];
  v5 = [originalObject copyWithZone:0];
  v6 = v3[15];
  v3[15] = v5;

  changeSet = [(HKSPMutableSleepSchedule *)self changeSet];
  deepCopy = [changeSet deepCopy];
  v9 = v3[16];
  v3[16] = deepCopy;

  return v3;
}

- (void)freeze
{
  v3 = [[HKSPSleepSchedule alloc] initFromObject:self];
  originalObject = self->_originalObject;
  self->_originalObject = v3;

  [(HKSPMutableSleepSchedule *)self revert];
}

- (void)saveOccurrence:(id)occurrence
{
  v10 = *MEMORY[0x277D85DE8];
  occurrenceCopy = occurrence;
  if ([occurrenceCopy isSingleDayOverride])
  {
    [(HKSPMutableSleepSchedule *)self _updateOverrideOccurrenceForOccurrence:occurrenceCopy];
  }

  else
  {
    [(HKSPMutableSleepSchedule *)self _updateBackingOccurrencesForOccurrence:occurrenceCopy];
    overrideOccurrence = [(HKSPSleepSchedule *)self overrideOccurrence];
    if (overrideOccurrence && [(HKSPMutableSleepSchedule *)self _shouldRemoveOverrideOccurrence:overrideOccurrence])
    {
      v6 = HKSPLogForCategory(5uLL);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 138543618;
        *&v9[4] = objc_opt_class();
        *&v9[12] = 2114;
        *&v9[14] = overrideOccurrence;
        v7 = *&v9[4];
        _os_log_impl(&dword_269A84000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] removing override occurrence %{public}@", v9, 0x16u);
      }

      [(HKSPMutableSleepSchedule *)self removeOccurrence:overrideOccurrence];
    }
  }

  [(HKSPMutableSleepSchedule *)self _freezeSavedOccurrence:occurrenceCopy, *v9, *&v9[16], v10];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_updateOverrideOccurrenceForOccurrence:(id)occurrence
{
  v23 = *MEMORY[0x277D85DE8];
  occurrenceCopy = occurrence;
  if ([(HKSPMutableSleepSchedule *)self _shouldRemoveOverrideOccurrence:occurrenceCopy])
  {
    v5 = HKSPLogForCategory(5uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138543618;
      v20 = objc_opt_class();
      v21 = 2114;
      v22 = occurrenceCopy;
      v6 = v20;
      _os_log_impl(&dword_269A84000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] removing override occurrence %{public}@", &v19, 0x16u);
    }

    [(HKSPMutableSleepSchedule *)self removeOccurrence:occurrenceCopy];
  }

  else
  {
    backingOccurrence = [occurrenceCopy backingOccurrence];
    v8 = [backingOccurrence mutableCopy];

    overrideDayOccurrence = [(HKSPMutableSleepSchedule *)self overrideDayOccurrence];

    if (overrideDayOccurrence)
    {
      overrideDayOccurrence2 = [(HKSPMutableSleepSchedule *)self overrideDayOccurrence];
      v11 = [overrideDayOccurrence2 mutableCopy];

      overrideDayOccurrence3 = [(HKSPMutableSleepSchedule *)self overrideDayOccurrence];
      v13 = HKSPGenerateChangeSetBetweenObjects(overrideDayOccurrence3, v8);

      HKSPApplyChangesToObject(v11, v13);
      v8 = v11;
    }

    v14 = HKSPLogForCategory(5uLL);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = objc_opt_class();
      v16 = v15;
      changeSet = [v8 changeSet];
      v19 = 138543618;
      v20 = v15;
      v21 = 2114;
      v22 = changeSet;
      _os_log_impl(&dword_269A84000, v14, OS_LOG_TYPE_DEFAULT, "[%{public}@] saved override occurrence changes %{public}@", &v19, 0x16u);
    }

    [(HKSPMutableSleepSchedule *)self setOverrideDayOccurrence:v8];
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_freezeSavedOccurrence:(id)occurrence
{
  occurrenceCopy = occurrence;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [occurrenceCopy freeze];
  }
}

- (BOOL)_shouldRemoveOverrideOccurrence:(id)occurrence
{
  occurrenceCopy = occurrence;
  v5 = [(HKSPSleepSchedule *)self overridenOccurrenceForOverrideOccurrence:occurrenceCopy];
  v6 = [v5 isEquivalentToOverrideOccurrence:occurrenceCopy];

  return v6;
}

- (void)_updateBackingOccurrencesForOccurrence:(id)occurrence
{
  occurrenceCopy = occurrence;
  backingOccurrence = [occurrenceCopy backingOccurrence];
  changeSet = [occurrenceCopy changeSet];
  if (([changeSet hasChangeForPropertyIdentifier:@"HKSPOccurrenceWeekdays"] & 1) == 0)
  {

LABEL_6:
    v11 = -1;
    goto LABEL_7;
  }

  changeSet2 = [occurrenceCopy changeSet];
  v8 = [changeSet2 originalValueForPropertyIdentifier:@"HKSPOccurrenceWeekdays"];
  unsignedIntegerValue = [v8 unsignedIntegerValue];

  if (unsignedIntegerValue == 0xFFFFFFFFLL || unsignedIntegerValue == [occurrenceCopy weekdays])
  {
    goto LABEL_6;
  }

  -[HKSPMutableSleepSchedule _modifyDayOccurrencesForWeekdays:block:](self, "_modifyDayOccurrencesForWeekdays:block:", unsignedIntegerValue & ~[occurrenceCopy weekdays], &__block_literal_global_560);
  v10 = [occurrenceCopy weekdays] & ~unsignedIntegerValue;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __67__HKSPMutableSleepSchedule__updateBackingOccurrencesForOccurrence___block_invoke_2;
  v16[3] = &unk_279C74D70;
  v16[4] = self;
  v17 = backingOccurrence;
  [(HKSPMutableSleepSchedule *)self _modifyDayOccurrencesForWeekdays:v10 block:v16];

  v11 = ~v10;
LABEL_7:
  weekdays = [occurrenceCopy weekdays];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __67__HKSPMutableSleepSchedule__updateBackingOccurrencesForOccurrence___block_invoke_3;
  v14[3] = &unk_279C74D70;
  v14[4] = self;
  v15 = backingOccurrence;
  v13 = backingOccurrence;
  [(HKSPMutableSleepSchedule *)self _modifyDayOccurrencesForWeekdays:weekdays & v11 block:v14];
}

- (id)_updatedDayOccurrence:(id)occurrence withDayOccurrence:(id)dayOccurrence
{
  occurrenceCopy = occurrence;
  dayOccurrenceCopy = dayOccurrence;
  v7 = dayOccurrenceCopy;
  if (occurrenceCopy)
  {
    v8 = [occurrenceCopy mutableCopy];
    v9 = HKSPGenerateChangeSetBetweenObjects(occurrenceCopy, v7);

    HKSPApplyChangesToObject(v8, v9);
    v7 = v9;
  }

  else
  {
    v8 = [dayOccurrenceCopy mutableCopy];
  }

  return v8;
}

- (void)removeOccurrence:(id)occurrence
{
  occurrenceCopy = occurrence;
  if ([occurrenceCopy weekdays] != 0xFFFFFFFFLL)
  {
    wakeUpComponents = [occurrenceCopy wakeUpComponents];

    if (wakeUpComponents)
    {
      if ([occurrenceCopy isSingleDayOverride])
      {
        [(HKSPMutableSleepSchedule *)self setOverrideDayOccurrence:0];
      }

      else
      {
        -[HKSPMutableSleepSchedule _modifyDayOccurrencesForWeekdays:block:](self, "_modifyDayOccurrencesForWeekdays:block:", [occurrenceCopy weekdays], &__block_literal_global_562);
      }
    }
  }
}

- (void)_modifyDayOccurrencesForWeekdays:(unint64_t)weekdays block:(id)block
{
  blockCopy = block;
  v7 = blockCopy;
  if (weekdays != 0xFFFFFFFF)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __67__HKSPMutableSleepSchedule__modifyDayOccurrencesForWeekdays_block___block_invoke;
    v8[3] = &unk_279C74D98;
    v8[4] = self;
    v9 = blockCopy;
    HKSPWeekdaysEnumerateDays(weekdays, v8, 0);
  }
}

void __67__HKSPMutableSleepSchedule__modifyDayOccurrencesForWeekdays_block___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2 <= 3)
  {
    switch(a2)
    {
      case 1:
        v7 = *(a1 + 40);
        v10 = [*(a1 + 32) sundayOccurrence];
        v4 = (*(v7 + 16))(v7);
        [*(a1 + 32) setSundayOccurrence:v4];
        break;
      case 2:
        v9 = *(a1 + 40);
        v10 = [*(a1 + 32) mondayOccurrence];
        v4 = (*(v9 + 16))(v9);
        [*(a1 + 32) setMondayOccurrence:v4];
        break;
      case 3:
        v5 = *(a1 + 40);
        v10 = [*(a1 + 32) tuesdayOccurrence];
        v4 = (*(v5 + 16))(v5);
        [*(a1 + 32) setTuesdayOccurrence:v4];
        break;
      default:
        return;
    }
  }

  else if (a2 > 5)
  {
    if (a2 == 6)
    {
      v8 = *(a1 + 40);
      v10 = [*(a1 + 32) fridayOccurrence];
      v4 = (*(v8 + 16))(v8);
      [*(a1 + 32) setFridayOccurrence:v4];
    }

    else
    {
      if (a2 != 7)
      {
        return;
      }

      v6 = *(a1 + 40);
      v10 = [*(a1 + 32) saturdayOccurrence];
      v4 = (*(v6 + 16))(v6);
      [*(a1 + 32) setSaturdayOccurrence:v4];
    }
  }

  else
  {
    v3 = *(a1 + 40);
    if (a2 == 4)
    {
      v10 = [*(a1 + 32) wednesdayOccurrence];
      v4 = (*(v3 + 16))(v3);
      [*(a1 + 32) setWednesdayOccurrence:v4];
    }

    else
    {
      v10 = [*(a1 + 32) thursdayOccurrence];
      v4 = (*(v3 + 16))(v3);
      [*(a1 + 32) setThursdayOccurrence:v4];
    }
  }
}

- (BOOL)hasChangeToSleepDurationGoal
{
  changeSet = [(HKSPMutableSleepSchedule *)self changeSet];
  v3 = [changeSet hasChangeForPropertyIdentifier:@"HKSPSleepDurationGoal"];

  return v3;
}

- (BOOL)hasChangeToWindDownTime
{
  changeSet = [(HKSPMutableSleepSchedule *)self changeSet];
  v3 = [changeSet hasChangeForPropertyIdentifier:@"HKSPWindDownTimeInterval"];

  return v3;
}

- (BOOL)_hasChangeToScheduleEnabled
{
  changeSet = [(HKSPMutableSleepSchedule *)self changeSet];
  v3 = [changeSet hasChangeForPropertyIdentifier:@"HKSPScheduleEnabled"];

  return v3;
}

- (BOOL)hasChangeAffectingScheduling
{
  if ([(HKSPMutableSleepSchedule *)self hasChangeToWindDownTime]|| [(HKSPMutableSleepSchedule *)self _hasChangeToScheduleEnabled])
  {
    return 1;
  }

  mondayOccurrence = [(HKSPMutableSleepSchedule *)self mondayOccurrence];
  if ([(HKSPMutableSleepSchedule *)self _hasChangeForDayOccurrenceKey:@"HKSPMondayOccurrence" dayOccurrence:mondayOccurrence])
  {
    v3 = 1;
  }

  else
  {
    tuesdayOccurrence = [(HKSPMutableSleepSchedule *)self tuesdayOccurrence];
    if ([(HKSPMutableSleepSchedule *)self _hasChangeForDayOccurrenceKey:@"HKSPTuesdayOccurrence" dayOccurrence:tuesdayOccurrence])
    {
      v3 = 1;
    }

    else
    {
      wednesdayOccurrence = [(HKSPMutableSleepSchedule *)self wednesdayOccurrence];
      if ([(HKSPMutableSleepSchedule *)self _hasChangeForDayOccurrenceKey:@"HKSPWednesdayOccurrence" dayOccurrence:wednesdayOccurrence])
      {
        v3 = 1;
      }

      else
      {
        thursdayOccurrence = [(HKSPMutableSleepSchedule *)self thursdayOccurrence];
        if ([(HKSPMutableSleepSchedule *)self _hasChangeForDayOccurrenceKey:@"HKSPThursdayOccurrence" dayOccurrence:thursdayOccurrence])
        {
          v3 = 1;
        }

        else
        {
          fridayOccurrence = [(HKSPMutableSleepSchedule *)self fridayOccurrence];
          if ([(HKSPMutableSleepSchedule *)self _hasChangeForDayOccurrenceKey:@"HKSPFridayOccurrence" dayOccurrence:fridayOccurrence])
          {
            v3 = 1;
          }

          else
          {
            saturdayOccurrence = [(HKSPMutableSleepSchedule *)self saturdayOccurrence];
            if ([(HKSPMutableSleepSchedule *)self _hasChangeForDayOccurrenceKey:@"HKSPSaturdayOccurrence" dayOccurrence:saturdayOccurrence])
            {
              v3 = 1;
            }

            else
            {
              sundayOccurrence = [(HKSPMutableSleepSchedule *)self sundayOccurrence];
              if ([(HKSPMutableSleepSchedule *)self _hasChangeForDayOccurrenceKey:@"HKSPSundayOccurrence" dayOccurrence:sundayOccurrence])
              {
                v3 = 1;
              }

              else
              {
                overrideDayOccurrence = [(HKSPMutableSleepSchedule *)self overrideDayOccurrence];
                v3 = [(HKSPMutableSleepSchedule *)self _hasChangeForDayOccurrenceKey:@"HKSPOverrideOccurrence" dayOccurrence:overrideDayOccurrence];
              }
            }
          }
        }
      }
    }
  }

  return v3;
}

- (BOOL)_hasChangeForDayOccurrenceKey:(id)key dayOccurrence:(id)occurrence
{
  keyCopy = key;
  occurrenceCopy = occurrence;
  changeSet = [(HKSPMutableSleepSchedule *)self changeSet];
  v9 = [changeSet hasChangeForPropertyIdentifier:keyCopy];

  if (v9)
  {
    if (occurrenceCopy && (-[HKSPMutableSleepSchedule changeSet](self, "changeSet"), v10 = objc_claimAutoreleasedReturnValue(), [v10 originalValueForPropertyIdentifier:keyCopy], v11 = objc_claimAutoreleasedReturnValue(), v11, v10, v11))
    {
      hasChangeAffectingScheduling = [occurrenceCopy hasChangeAffectingScheduling];
    }

    else
    {
      hasChangeAffectingScheduling = 1;
    }
  }

  else
  {
    hasChangeAffectingScheduling = 0;
  }

  return hasChangeAffectingScheduling;
}

- (BOOL)hasOverrideOccurrenceRemoval
{
  overrideDayOccurrence = [(HKSPMutableSleepSchedule *)self overrideDayOccurrence];
  if (overrideDayOccurrence)
  {
    v4 = 0;
  }

  else
  {
    v4 = [(HKSPMutableSleepSchedule *)self _hasChangeForDayOccurrenceKey:@"HKSPOverrideOccurrence" dayOccurrence:0];
  }

  return v4;
}

- (id)lastOverrideOccurrenceWakeUpComponents
{
  if ([(HKSPMutableSleepSchedule *)self hasOverrideOccurrenceRemoval])
  {
    changeSet = [(HKSPMutableSleepSchedule *)self changeSet];
    overrideOccurrence = [changeSet originalValueForPropertyIdentifier:@"HKSPOverrideOccurrence"];
  }

  else
  {
    overrideOccurrence = [(HKSPSleepSchedule *)self overrideOccurrence];
  }

  wakeUpComponents = [overrideOccurrence wakeUpComponents];

  return wakeUpComponents;
}

@end