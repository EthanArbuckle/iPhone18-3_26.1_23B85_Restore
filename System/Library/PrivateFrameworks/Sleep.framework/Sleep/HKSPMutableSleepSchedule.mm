@interface HKSPMutableSleepSchedule
- (BOOL)_hasChangeForDayOccurrenceKey:(id)a3 dayOccurrence:(id)a4;
- (BOOL)_hasChangeToScheduleEnabled;
- (BOOL)_shouldRemoveOverrideOccurrence:(id)a3;
- (BOOL)hasChangeAffectingScheduling;
- (BOOL)hasChangeToSleepDurationGoal;
- (BOOL)hasChangeToWindDownTime;
- (BOOL)hasOverrideOccurrenceRemoval;
- (BOOL)isEnabled;
- (HKSPMutableSleepSchedule)init;
- (HKSPMutableSleepSchedule)initWithCoder:(id)a3;
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
- (id)_updatedDayOccurrence:(id)a3 withDayOccurrence:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)initFromObject:(id)a3;
- (id)lastOverrideOccurrenceWakeUpComponents;
- (id)mutableCopy;
- (void)_freezeSavedOccurrence:(id)a3;
- (void)_modifyDayOccurrencesForWeekdays:(unint64_t)a3 block:(id)a4;
- (void)_updateBackingOccurrencesForOccurrence:(id)a3;
- (void)_updateOverrideOccurrenceForOccurrence:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)freeze;
- (void)removeOccurrence:(id)a3;
- (void)saveOccurrence:(id)a3;
- (void)setFridayOccurrence:(id)a3;
- (void)setLastModifiedDate:(id)a3;
- (void)setMondayOccurrence:(id)a3;
- (void)setOverrideDayOccurrence:(id)a3;
- (void)setSaturdayOccurrence:(id)a3;
- (void)setSleepDurationGoal:(double)a3;
- (void)setSundayOccurrence:(id)a3;
- (void)setThursdayOccurrence:(id)a3;
- (void)setTuesdayOccurrence:(id)a3;
- (void)setWednesdayOccurrence:(id)a3;
- (void)setWindDownTime:(double)a3;
@end

@implementation HKSPMutableSleepSchedule

- (BOOL)isEnabled
{
  v3 = [objc_opt_class() allProperties];
  v4 = HKSPPropertiesByIdentifier(v3);
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
  v7 = [v6 BOOLValue];

  return v7;
}

- (void)setWindDownTime:(double)a3
{
  v5 = [objc_opt_class() allProperties];
  v6 = HKSPPropertiesByIdentifier(v5);
  v15 = [v6 objectForKeyedSubscript:@"HKSPWindDownTimeInterval"];

  v7 = [(HKSPObject *)self->_originalObject hksp_valueForProperty:v15];
  [v7 doubleValue];
  v9 = v8;

  if (v9 != a3 || [(HKSPChangeSet *)self->_changeSet hasChangeForPropertyIdentifier:@"HKSPWindDownTimeInterval"])
  {
    changeSet = self->_changeSet;
    v11 = [HKSPChange alloc];
    v12 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
    v13 = [MEMORY[0x277CCABB0] numberWithDouble:v9];
    v14 = [(HKSPChange *)v11 initWithProperty:v15 changedValue:v12 originalValue:v13];
    [(HKSPChangeSet *)changeSet addChange:v14];
  }
}

- (double)windDownTime
{
  v3 = [objc_opt_class() allProperties];
  v4 = HKSPPropertiesByIdentifier(v3);
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

- (void)setSleepDurationGoal:(double)a3
{
  v5 = [objc_opt_class() allProperties];
  v6 = HKSPPropertiesByIdentifier(v5);
  v15 = [v6 objectForKeyedSubscript:@"HKSPSleepDurationGoal"];

  v7 = [(HKSPObject *)self->_originalObject hksp_valueForProperty:v15];
  [v7 doubleValue];
  v9 = v8;

  if (v9 != a3 || [(HKSPChangeSet *)self->_changeSet hasChangeForPropertyIdentifier:@"HKSPSleepDurationGoal"])
  {
    changeSet = self->_changeSet;
    v11 = [HKSPChange alloc];
    v12 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
    v13 = [MEMORY[0x277CCABB0] numberWithDouble:v9];
    v14 = [(HKSPChange *)v11 initWithProperty:v15 changedValue:v12 originalValue:v13];
    [(HKSPChangeSet *)changeSet addChange:v14];
  }
}

- (double)sleepDurationGoal
{
  v3 = [objc_opt_class() allProperties];
  v4 = HKSPPropertiesByIdentifier(v3);
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

- (void)setLastModifiedDate:(id)a3
{
  v14 = a3;
  v4 = [objc_opt_class() allProperties];
  v5 = HKSPPropertiesByIdentifier(v4);
  v6 = [v5 objectForKeyedSubscript:@"HKSPScheduleLastModifiedDate"];

  v7 = [(HKSPObject *)self->_originalObject hksp_valueForProperty:v6];
  if (!NAEqualObjects() || [(HKSPChangeSet *)self->_changeSet hasChangeForPropertyIdentifier:@"HKSPScheduleLastModifiedDate"])
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

- (void)setMondayOccurrence:(id)a3
{
  v14 = a3;
  v4 = [objc_opt_class() allProperties];
  v5 = HKSPPropertiesByIdentifier(v4);
  v6 = [v5 objectForKeyedSubscript:@"HKSPMondayOccurrence"];

  v7 = [(HKSPObject *)self->_originalObject hksp_valueForProperty:v6];
  if (!NAEqualObjects() || [(HKSPChangeSet *)self->_changeSet hasChangeForPropertyIdentifier:@"HKSPMondayOccurrence"])
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

- (HKSPSleepScheduleDayOccurrence)mondayOccurrence
{
  v3 = [objc_opt_class() allProperties];
  v4 = HKSPPropertiesByIdentifier(v3);
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

- (void)setTuesdayOccurrence:(id)a3
{
  v14 = a3;
  v4 = [objc_opt_class() allProperties];
  v5 = HKSPPropertiesByIdentifier(v4);
  v6 = [v5 objectForKeyedSubscript:@"HKSPTuesdayOccurrence"];

  v7 = [(HKSPObject *)self->_originalObject hksp_valueForProperty:v6];
  if (!NAEqualObjects() || [(HKSPChangeSet *)self->_changeSet hasChangeForPropertyIdentifier:@"HKSPTuesdayOccurrence"])
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

- (HKSPSleepScheduleDayOccurrence)tuesdayOccurrence
{
  v3 = [objc_opt_class() allProperties];
  v4 = HKSPPropertiesByIdentifier(v3);
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

- (void)setWednesdayOccurrence:(id)a3
{
  v14 = a3;
  v4 = [objc_opt_class() allProperties];
  v5 = HKSPPropertiesByIdentifier(v4);
  v6 = [v5 objectForKeyedSubscript:@"HKSPWednesdayOccurrence"];

  v7 = [(HKSPObject *)self->_originalObject hksp_valueForProperty:v6];
  if (!NAEqualObjects() || [(HKSPChangeSet *)self->_changeSet hasChangeForPropertyIdentifier:@"HKSPWednesdayOccurrence"])
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

- (HKSPSleepScheduleDayOccurrence)wednesdayOccurrence
{
  v3 = [objc_opt_class() allProperties];
  v4 = HKSPPropertiesByIdentifier(v3);
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

- (void)setThursdayOccurrence:(id)a3
{
  v14 = a3;
  v4 = [objc_opt_class() allProperties];
  v5 = HKSPPropertiesByIdentifier(v4);
  v6 = [v5 objectForKeyedSubscript:@"HKSPThursdayOccurrence"];

  v7 = [(HKSPObject *)self->_originalObject hksp_valueForProperty:v6];
  if (!NAEqualObjects() || [(HKSPChangeSet *)self->_changeSet hasChangeForPropertyIdentifier:@"HKSPThursdayOccurrence"])
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

- (HKSPSleepScheduleDayOccurrence)thursdayOccurrence
{
  v3 = [objc_opt_class() allProperties];
  v4 = HKSPPropertiesByIdentifier(v3);
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

- (void)setFridayOccurrence:(id)a3
{
  v14 = a3;
  v4 = [objc_opt_class() allProperties];
  v5 = HKSPPropertiesByIdentifier(v4);
  v6 = [v5 objectForKeyedSubscript:@"HKSPFridayOccurrence"];

  v7 = [(HKSPObject *)self->_originalObject hksp_valueForProperty:v6];
  if (!NAEqualObjects() || [(HKSPChangeSet *)self->_changeSet hasChangeForPropertyIdentifier:@"HKSPFridayOccurrence"])
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

- (HKSPSleepScheduleDayOccurrence)fridayOccurrence
{
  v3 = [objc_opt_class() allProperties];
  v4 = HKSPPropertiesByIdentifier(v3);
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

- (void)setSaturdayOccurrence:(id)a3
{
  v14 = a3;
  v4 = [objc_opt_class() allProperties];
  v5 = HKSPPropertiesByIdentifier(v4);
  v6 = [v5 objectForKeyedSubscript:@"HKSPSaturdayOccurrence"];

  v7 = [(HKSPObject *)self->_originalObject hksp_valueForProperty:v6];
  if (!NAEqualObjects() || [(HKSPChangeSet *)self->_changeSet hasChangeForPropertyIdentifier:@"HKSPSaturdayOccurrence"])
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

- (HKSPSleepScheduleDayOccurrence)saturdayOccurrence
{
  v3 = [objc_opt_class() allProperties];
  v4 = HKSPPropertiesByIdentifier(v3);
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

- (void)setSundayOccurrence:(id)a3
{
  v14 = a3;
  v4 = [objc_opt_class() allProperties];
  v5 = HKSPPropertiesByIdentifier(v4);
  v6 = [v5 objectForKeyedSubscript:@"HKSPSundayOccurrence"];

  v7 = [(HKSPObject *)self->_originalObject hksp_valueForProperty:v6];
  if (!NAEqualObjects() || [(HKSPChangeSet *)self->_changeSet hasChangeForPropertyIdentifier:@"HKSPSundayOccurrence"])
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

- (HKSPSleepScheduleDayOccurrence)sundayOccurrence
{
  v3 = [objc_opt_class() allProperties];
  v4 = HKSPPropertiesByIdentifier(v3);
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

- (void)setOverrideDayOccurrence:(id)a3
{
  v14 = a3;
  v4 = [objc_opt_class() allProperties];
  v5 = HKSPPropertiesByIdentifier(v4);
  v6 = [v5 objectForKeyedSubscript:@"HKSPOverrideOccurrence"];

  v7 = [(HKSPObject *)self->_originalObject hksp_valueForProperty:v6];
  if (!NAEqualObjects() || [(HKSPChangeSet *)self->_changeSet hasChangeForPropertyIdentifier:@"HKSPOverrideOccurrence"])
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

- (HKSPSleepScheduleDayOccurrence)overrideDayOccurrence
{
  v3 = [objc_opt_class() allProperties];
  v4 = HKSPPropertiesByIdentifier(v3);
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

- (id)initFromObject:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v13 = [MEMORY[0x277CCA890] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"HKSPSleepSchedule.m" lineNumber:625 description:@"object must be a subclass"];
  }

  v14.receiver = self;
  v14.super_class = HKSPMutableSleepSchedule;
  v6 = [(HKSPSleepSchedule *)&v14 init];
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

- (HKSPMutableSleepSchedule)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = HKSPMutableSleepSchedule;
  v5 = [(HKSPSleepSchedule *)&v12 init];
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
  v4 = [HKSPSleepSchedule alloc];

  return [(HKSPSleepSchedule *)v4 initFromObject:self];
}

- (id)mutableCopy
{
  v3 = objc_alloc_init(objc_opt_class());
  v4 = [(HKSPMutableSleepSchedule *)self originalObject];
  v5 = [v4 copyWithZone:0];
  v6 = v3[15];
  v3[15] = v5;

  v7 = [(HKSPMutableSleepSchedule *)self changeSet];
  v8 = [v7 deepCopy];
  v9 = v3[16];
  v3[16] = v8;

  return v3;
}

- (void)freeze
{
  v3 = [[HKSPSleepSchedule alloc] initFromObject:self];
  originalObject = self->_originalObject;
  self->_originalObject = v3;

  [(HKSPMutableSleepSchedule *)self revert];
}

- (void)saveOccurrence:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 isSingleDayOverride])
  {
    [(HKSPMutableSleepSchedule *)self _updateOverrideOccurrenceForOccurrence:v4];
  }

  else
  {
    [(HKSPMutableSleepSchedule *)self _updateBackingOccurrencesForOccurrence:v4];
    v5 = [(HKSPSleepSchedule *)self overrideOccurrence];
    if (v5 && [(HKSPMutableSleepSchedule *)self _shouldRemoveOverrideOccurrence:v5])
    {
      v6 = HKSPLogForCategory(5uLL);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 138543618;
        *&v9[4] = objc_opt_class();
        *&v9[12] = 2114;
        *&v9[14] = v5;
        v7 = *&v9[4];
        _os_log_impl(&dword_269A84000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] removing override occurrence %{public}@", v9, 0x16u);
      }

      [(HKSPMutableSleepSchedule *)self removeOccurrence:v5];
    }
  }

  [(HKSPMutableSleepSchedule *)self _freezeSavedOccurrence:v4, *v9, *&v9[16], v10];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_updateOverrideOccurrenceForOccurrence:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(HKSPMutableSleepSchedule *)self _shouldRemoveOverrideOccurrence:v4])
  {
    v5 = HKSPLogForCategory(5uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138543618;
      v20 = objc_opt_class();
      v21 = 2114;
      v22 = v4;
      v6 = v20;
      _os_log_impl(&dword_269A84000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] removing override occurrence %{public}@", &v19, 0x16u);
    }

    [(HKSPMutableSleepSchedule *)self removeOccurrence:v4];
  }

  else
  {
    v7 = [v4 backingOccurrence];
    v8 = [v7 mutableCopy];

    v9 = [(HKSPMutableSleepSchedule *)self overrideDayOccurrence];

    if (v9)
    {
      v10 = [(HKSPMutableSleepSchedule *)self overrideDayOccurrence];
      v11 = [v10 mutableCopy];

      v12 = [(HKSPMutableSleepSchedule *)self overrideDayOccurrence];
      v13 = HKSPGenerateChangeSetBetweenObjects(v12, v8);

      HKSPApplyChangesToObject(v11, v13);
      v8 = v11;
    }

    v14 = HKSPLogForCategory(5uLL);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = objc_opt_class();
      v16 = v15;
      v17 = [v8 changeSet];
      v19 = 138543618;
      v20 = v15;
      v21 = 2114;
      v22 = v17;
      _os_log_impl(&dword_269A84000, v14, OS_LOG_TYPE_DEFAULT, "[%{public}@] saved override occurrence changes %{public}@", &v19, 0x16u);
    }

    [(HKSPMutableSleepSchedule *)self setOverrideDayOccurrence:v8];
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_freezeSavedOccurrence:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v3 freeze];
  }
}

- (BOOL)_shouldRemoveOverrideOccurrence:(id)a3
{
  v4 = a3;
  v5 = [(HKSPSleepSchedule *)self overridenOccurrenceForOverrideOccurrence:v4];
  v6 = [v5 isEquivalentToOverrideOccurrence:v4];

  return v6;
}

- (void)_updateBackingOccurrencesForOccurrence:(id)a3
{
  v4 = a3;
  v5 = [v4 backingOccurrence];
  v6 = [v4 changeSet];
  if (([v6 hasChangeForPropertyIdentifier:@"HKSPOccurrenceWeekdays"] & 1) == 0)
  {

LABEL_6:
    v11 = -1;
    goto LABEL_7;
  }

  v7 = [v4 changeSet];
  v8 = [v7 originalValueForPropertyIdentifier:@"HKSPOccurrenceWeekdays"];
  v9 = [v8 unsignedIntegerValue];

  if (v9 == 0xFFFFFFFFLL || v9 == [v4 weekdays])
  {
    goto LABEL_6;
  }

  -[HKSPMutableSleepSchedule _modifyDayOccurrencesForWeekdays:block:](self, "_modifyDayOccurrencesForWeekdays:block:", v9 & ~[v4 weekdays], &__block_literal_global_560);
  v10 = [v4 weekdays] & ~v9;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __67__HKSPMutableSleepSchedule__updateBackingOccurrencesForOccurrence___block_invoke_2;
  v16[3] = &unk_279C74D70;
  v16[4] = self;
  v17 = v5;
  [(HKSPMutableSleepSchedule *)self _modifyDayOccurrencesForWeekdays:v10 block:v16];

  v11 = ~v10;
LABEL_7:
  v12 = [v4 weekdays];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __67__HKSPMutableSleepSchedule__updateBackingOccurrencesForOccurrence___block_invoke_3;
  v14[3] = &unk_279C74D70;
  v14[4] = self;
  v15 = v5;
  v13 = v5;
  [(HKSPMutableSleepSchedule *)self _modifyDayOccurrencesForWeekdays:v12 & v11 block:v14];
}

- (id)_updatedDayOccurrence:(id)a3 withDayOccurrence:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5)
  {
    v8 = [v5 mutableCopy];
    v9 = HKSPGenerateChangeSetBetweenObjects(v5, v7);

    HKSPApplyChangesToObject(v8, v9);
    v7 = v9;
  }

  else
  {
    v8 = [v6 mutableCopy];
  }

  return v8;
}

- (void)removeOccurrence:(id)a3
{
  v5 = a3;
  if ([v5 weekdays] != 0xFFFFFFFFLL)
  {
    v4 = [v5 wakeUpComponents];

    if (v4)
    {
      if ([v5 isSingleDayOverride])
      {
        [(HKSPMutableSleepSchedule *)self setOverrideDayOccurrence:0];
      }

      else
      {
        -[HKSPMutableSleepSchedule _modifyDayOccurrencesForWeekdays:block:](self, "_modifyDayOccurrencesForWeekdays:block:", [v5 weekdays], &__block_literal_global_562);
      }
    }
  }
}

- (void)_modifyDayOccurrencesForWeekdays:(unint64_t)a3 block:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (a3 != 0xFFFFFFFF)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __67__HKSPMutableSleepSchedule__modifyDayOccurrencesForWeekdays_block___block_invoke;
    v8[3] = &unk_279C74D98;
    v8[4] = self;
    v9 = v6;
    HKSPWeekdaysEnumerateDays(a3, v8, 0);
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
  v2 = [(HKSPMutableSleepSchedule *)self changeSet];
  v3 = [v2 hasChangeForPropertyIdentifier:@"HKSPSleepDurationGoal"];

  return v3;
}

- (BOOL)hasChangeToWindDownTime
{
  v2 = [(HKSPMutableSleepSchedule *)self changeSet];
  v3 = [v2 hasChangeForPropertyIdentifier:@"HKSPWindDownTimeInterval"];

  return v3;
}

- (BOOL)_hasChangeToScheduleEnabled
{
  v2 = [(HKSPMutableSleepSchedule *)self changeSet];
  v3 = [v2 hasChangeForPropertyIdentifier:@"HKSPScheduleEnabled"];

  return v3;
}

- (BOOL)hasChangeAffectingScheduling
{
  if ([(HKSPMutableSleepSchedule *)self hasChangeToWindDownTime]|| [(HKSPMutableSleepSchedule *)self _hasChangeToScheduleEnabled])
  {
    return 1;
  }

  v4 = [(HKSPMutableSleepSchedule *)self mondayOccurrence];
  if ([(HKSPMutableSleepSchedule *)self _hasChangeForDayOccurrenceKey:@"HKSPMondayOccurrence" dayOccurrence:v4])
  {
    v3 = 1;
  }

  else
  {
    v5 = [(HKSPMutableSleepSchedule *)self tuesdayOccurrence];
    if ([(HKSPMutableSleepSchedule *)self _hasChangeForDayOccurrenceKey:@"HKSPTuesdayOccurrence" dayOccurrence:v5])
    {
      v3 = 1;
    }

    else
    {
      v6 = [(HKSPMutableSleepSchedule *)self wednesdayOccurrence];
      if ([(HKSPMutableSleepSchedule *)self _hasChangeForDayOccurrenceKey:@"HKSPWednesdayOccurrence" dayOccurrence:v6])
      {
        v3 = 1;
      }

      else
      {
        v7 = [(HKSPMutableSleepSchedule *)self thursdayOccurrence];
        if ([(HKSPMutableSleepSchedule *)self _hasChangeForDayOccurrenceKey:@"HKSPThursdayOccurrence" dayOccurrence:v7])
        {
          v3 = 1;
        }

        else
        {
          v8 = [(HKSPMutableSleepSchedule *)self fridayOccurrence];
          if ([(HKSPMutableSleepSchedule *)self _hasChangeForDayOccurrenceKey:@"HKSPFridayOccurrence" dayOccurrence:v8])
          {
            v3 = 1;
          }

          else
          {
            v9 = [(HKSPMutableSleepSchedule *)self saturdayOccurrence];
            if ([(HKSPMutableSleepSchedule *)self _hasChangeForDayOccurrenceKey:@"HKSPSaturdayOccurrence" dayOccurrence:v9])
            {
              v3 = 1;
            }

            else
            {
              v10 = [(HKSPMutableSleepSchedule *)self sundayOccurrence];
              if ([(HKSPMutableSleepSchedule *)self _hasChangeForDayOccurrenceKey:@"HKSPSundayOccurrence" dayOccurrence:v10])
              {
                v3 = 1;
              }

              else
              {
                v11 = [(HKSPMutableSleepSchedule *)self overrideDayOccurrence];
                v3 = [(HKSPMutableSleepSchedule *)self _hasChangeForDayOccurrenceKey:@"HKSPOverrideOccurrence" dayOccurrence:v11];
              }
            }
          }
        }
      }
    }
  }

  return v3;
}

- (BOOL)_hasChangeForDayOccurrenceKey:(id)a3 dayOccurrence:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HKSPMutableSleepSchedule *)self changeSet];
  v9 = [v8 hasChangeForPropertyIdentifier:v6];

  if (v9)
  {
    if (v7 && (-[HKSPMutableSleepSchedule changeSet](self, "changeSet"), v10 = objc_claimAutoreleasedReturnValue(), [v10 originalValueForPropertyIdentifier:v6], v11 = objc_claimAutoreleasedReturnValue(), v11, v10, v11))
    {
      v12 = [v7 hasChangeAffectingScheduling];
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)hasOverrideOccurrenceRemoval
{
  v3 = [(HKSPMutableSleepSchedule *)self overrideDayOccurrence];
  if (v3)
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
    v3 = [(HKSPMutableSleepSchedule *)self changeSet];
    v4 = [v3 originalValueForPropertyIdentifier:@"HKSPOverrideOccurrence"];
  }

  else
  {
    v4 = [(HKSPSleepSchedule *)self overrideOccurrence];
  }

  v5 = [v4 wakeUpComponents];

  return v5;
}

@end