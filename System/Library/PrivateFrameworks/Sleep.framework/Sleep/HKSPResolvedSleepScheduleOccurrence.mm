@interface HKSPResolvedSleepScheduleOccurrence
- (BOOL)isEqual:(id)a3;
- (HKSPResolvedSleepScheduleOccurrence)initWithCoder:(id)a3;
- (HKSPResolvedSleepScheduleOccurrence)initWithOccurrence:(id)a3 wakeUpEvent:(id)a4 bedtimeEvent:(id)a5 windDownEvent:(id)a6;
- (NSDateInterval)bedtimeInterval;
- (NSDateInterval)scheduledInterval;
- (NSDateInterval)windDownInterval;
- (id)generateOverrideOccurrenceForCurrentDate:(id)a3 gregorianCalendar:(id)a4;
- (id)occurrenceByAdjustingEvent:(id)a3;
- (id)occurrenceByRemovingEventWithIdentifier:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (int64_t)compare:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKSPResolvedSleepScheduleOccurrence

- (HKSPResolvedSleepScheduleOccurrence)initWithOccurrence:(id)a3 wakeUpEvent:(id)a4 bedtimeEvent:(id)a5 windDownEvent:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v19.receiver = self;
  v19.super_class = HKSPResolvedSleepScheduleOccurrence;
  v15 = [(HKSPResolvedSleepScheduleOccurrence *)&v19 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_occurrence, a3);
    objc_storeStrong(&v16->_wakeUpEvent, a4);
    objc_storeStrong(&v16->_bedtimeEvent, a5);
    objc_storeStrong(&v16->_windDownEvent, a6);
    v17 = v16;
  }

  return v16;
}

- (id)occurrenceByAdjustingEvent:(id)a3
{
  v4 = a3;
  v20 = [HKSPResolvedSleepScheduleOccurrence alloc];
  v5 = [(HKSPResolvedSleepScheduleOccurrence *)self occurrence];
  v6 = [v4 identifier];
  v7 = [v6 isEqualToString:@"HKSPSleepEventIdentifierWakeUp"];
  v8 = v4;
  if ((v7 & 1) == 0)
  {
    v8 = [(HKSPResolvedSleepScheduleOccurrence *)self wakeUpEvent];
  }

  v9 = [v4 identifier];
  v10 = [v9 isEqualToString:@"HKSPSleepEventIdentifierBedtime"];
  v11 = v4;
  if ((v10 & 1) == 0)
  {
    v11 = [(HKSPResolvedSleepScheduleOccurrence *)self bedtimeEvent];
  }

  v12 = [v4 identifier];
  if ([v12 isEqualToString:@"HKSPSleepEventIdentifierWindDown"])
  {
    v13 = [(HKSPResolvedSleepScheduleOccurrence *)v20 initWithOccurrence:v5 wakeUpEvent:v8 bedtimeEvent:v11 windDownEvent:v4];
  }

  else
  {
    [(HKSPResolvedSleepScheduleOccurrence *)self windDownEvent];
    v19 = v9;
    v14 = v7;
    v15 = v6;
    v17 = v16 = v5;
    v13 = [(HKSPResolvedSleepScheduleOccurrence *)v20 initWithOccurrence:v16 wakeUpEvent:v8 bedtimeEvent:v11 windDownEvent:v17];

    v5 = v16;
    v6 = v15;
    v7 = v14;
    v9 = v19;
  }

  if ((v10 & 1) == 0)
  {
  }

  if ((v7 & 1) == 0)
  {
  }

  return v13;
}

- (id)occurrenceByRemovingEventWithIdentifier:(id)a3
{
  v5 = a3;
  if ([v5 isEqualToString:@"HKSPSleepEventIdentifierWakeUp"])
  {
    v14 = [MEMORY[0x277CCA890] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"HKSPResolvedSleepScheduleOccurrence.m" lineNumber:58 description:{@"Invalid parameter not satisfying: %@", @"![eventIdentifier isEqualToString:HKSPSleepEventIdentifierWakeUp]"}];
  }

  v6 = [HKSPResolvedSleepScheduleOccurrence alloc];
  v7 = [(HKSPResolvedSleepScheduleOccurrence *)self occurrence];
  v8 = [(HKSPResolvedSleepScheduleOccurrence *)self wakeUpEvent];
  v9 = [v5 isEqualToString:@"HKSPSleepEventIdentifierBedtime"];
  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = [(HKSPResolvedSleepScheduleOccurrence *)self bedtimeEvent];
  }

  if (![v5 isEqualToString:@"HKSPSleepEventIdentifierWindDown"])
  {
    v12 = [(HKSPResolvedSleepScheduleOccurrence *)self windDownEvent];
    v11 = [(HKSPResolvedSleepScheduleOccurrence *)v6 initWithOccurrence:v7 wakeUpEvent:v8 bedtimeEvent:v10 windDownEvent:v12];

    if (v9)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v11 = [(HKSPResolvedSleepScheduleOccurrence *)v6 initWithOccurrence:v7 wakeUpEvent:v8 bedtimeEvent:v10 windDownEvent:0];
  if ((v9 & 1) == 0)
  {
LABEL_10:
  }

LABEL_11:

  return v11;
}

- (NSDateInterval)scheduledInterval
{
  v4 = objc_alloc(MEMORY[0x277CCA970]);
  v5 = [(HKSPSleepEvent *)self->_windDownEvent dueDate];
  v6 = v5;
  if (v5)
  {
    v7 = 0;
    v8 = v5;
  }

  else
  {
    v9 = [(HKSPSleepEvent *)self->_bedtimeEvent dueDate];
    v2 = v9;
    if (v9)
    {
      v7 = 0;
      v8 = v9;
    }

    else
    {
      v8 = [(HKSPSleepEvent *)self->_wakeUpEvent dueDate];
      v7 = 1;
    }
  }

  v10 = [(HKSPSleepEvent *)self->_wakeUpEvent dueDate];
  v11 = [v4 initWithStartDate:v8 endDate:v10];

  if (v7)
  {
  }

  if (!v6)
  {
  }

  return v11;
}

- (NSDateInterval)bedtimeInterval
{
  v3 = [(HKSPSleepEvent *)self->_bedtimeEvent dueDate];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x277CCA970]);
    v5 = [(HKSPSleepEvent *)self->_bedtimeEvent dueDate];
    v6 = [(HKSPSleepEvent *)self->_wakeUpEvent dueDate];
    v7 = [v4 initWithStartDate:v5 endDate:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSDateInterval)windDownInterval
{
  if (self->_windDownEvent && self->_bedtimeEvent)
  {
    v3 = objc_alloc(MEMORY[0x277CCA970]);
    v4 = [(HKSPSleepEvent *)self->_windDownEvent dueDate];
    v5 = [(HKSPSleepEvent *)self->_bedtimeEvent dueDate];
    v6 = [v3 initWithStartDate:v4 endDate:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)generateOverrideOccurrenceForCurrentDate:(id)a3 gregorianCalendar:(id)a4
{
  v37 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = HKSPLogForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v33 = 138543618;
    v34 = objc_opt_class();
    v35 = 2114;
    v36 = v6;
    v9 = v34;
    _os_log_impl(&dword_269A84000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] generating override occurrence for current date %{public}@", &v33, 0x16u);
  }

  v10 = [(HKSPResolvedSleepScheduleOccurrence *)self scheduledInterval];
  v11 = [v10 containsDate:v6];

  v12 = HKSPLogForCategory(0);
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (!v11)
  {
    if (v13)
    {
      v21 = objc_opt_class();
      v33 = 138543362;
      v34 = v21;
      v19 = v21;
      v20 = "[%{public}@] date is outside this occurrence's interval, generating override from template";
      goto LABEL_11;
    }

LABEL_12:

    v22 = [(HKSPResolvedSleepScheduleOccurrence *)self scheduledInterval];
    v23 = [v22 startDate];

    v24 = [(HKSPResolvedSleepScheduleOccurrence *)self occurrence];
    v25 = [v24 overrideOccurrenceTemplateForCurrentDate:v23 gregorianCalendar:v7];
    goto LABEL_13;
  }

  if (v13)
  {
    v14 = objc_opt_class();
    v33 = 138543362;
    v34 = v14;
    v15 = v14;
    _os_log_impl(&dword_269A84000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] current date is inside this occurrence's interval, generating override for this occurrence", &v33, 0xCu);
  }

  v16 = [(HKSPResolvedSleepScheduleOccurrence *)self wakeUpEvent];
  v17 = [v16 type];

  if (v17)
  {
    v12 = HKSPLogForCategory(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v18 = objc_opt_class();
      v33 = 138543362;
      v34 = v18;
      v19 = v18;
      v20 = "[%{public}@] this occurrence is snoozed, generating overide from template";
LABEL_11:
      _os_log_impl(&dword_269A84000, v12, OS_LOG_TYPE_DEFAULT, v20, &v33, 0xCu);

      goto LABEL_12;
    }

    goto LABEL_12;
  }

  v28 = [(HKSPResolvedSleepScheduleOccurrence *)self wakeUpEvent];
  v23 = [v28 dueDate];

  v29 = [(HKSPResolvedSleepScheduleOccurrence *)self occurrence];
  v24 = [v29 bedtimeDateForWakeUpDate:v23 gregorianCalendar:v7];

  v30 = [v7 components:124 fromDate:v23];
  v31 = [v7 components:124 fromDate:v24];
  v32 = [(HKSPResolvedSleepScheduleOccurrence *)self occurrence];
  v25 = [v32 overrideOccurrenceWithWakeUpComponents:v30 bedtimeComponents:v31];

LABEL_13:
  v26 = *MEMORY[0x277D85DE8];

  return v25;
}

- (HKSPResolvedSleepScheduleOccurrence)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = HKSPResolvedSleepScheduleOccurrence;
  v5 = [(HKSPResolvedSleepScheduleOccurrence *)&v16 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"occurrence"];
    occurrence = v5->_occurrence;
    v5->_occurrence = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"wakeUpEvent"];
    wakeUpEvent = v5->_wakeUpEvent;
    v5->_wakeUpEvent = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bedtimeEvent"];
    bedtimeEvent = v5->_bedtimeEvent;
    v5->_bedtimeEvent = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"windDownEvent"];
    windDownEvent = v5->_windDownEvent;
    v5->_windDownEvent = v12;

    v14 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  occurrence = self->_occurrence;
  v5 = a3;
  [v5 encodeObject:occurrence forKey:@"occurrence"];
  [v5 encodeObject:self->_wakeUpEvent forKey:@"wakeUpEvent"];
  [v5 encodeObject:self->_bedtimeEvent forKey:@"bedtimeEvent"];
  [v5 encodeObject:self->_windDownEvent forKey:@"windDownEvent"];
}

- (int64_t)compare:(id)a3
{
  wakeUpEvent = self->_wakeUpEvent;
  v4 = [a3 wakeUpEvent];
  v5 = [(HKSPSleepEvent *)wakeUpEvent compare:v4];

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v19 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [MEMORY[0x277CF0C20] builderWithObject:v5 ofExpectedClass:objc_opt_class()];
      occurrence = self->_occurrence;
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __47__HKSPResolvedSleepScheduleOccurrence_isEqual___block_invoke;
      v30[3] = &unk_279C75950;
      v8 = v5;
      v31 = v8;
      v9 = [v6 appendObject:occurrence counterpart:v30];
      wakeUpEvent = self->_wakeUpEvent;
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __47__HKSPResolvedSleepScheduleOccurrence_isEqual___block_invoke_2;
      v28[3] = &unk_279C75978;
      v11 = v8;
      v29 = v11;
      v12 = [v6 appendObject:wakeUpEvent counterpart:v28];
      bedtimeEvent = self->_bedtimeEvent;
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __47__HKSPResolvedSleepScheduleOccurrence_isEqual___block_invoke_3;
      v26[3] = &unk_279C75978;
      v14 = v11;
      v27 = v14;
      v15 = [v6 appendObject:bedtimeEvent counterpart:v26];
      windDownEvent = self->_windDownEvent;
      v21 = MEMORY[0x277D85DD0];
      v22 = 3221225472;
      v23 = __47__HKSPResolvedSleepScheduleOccurrence_isEqual___block_invoke_4;
      v24 = &unk_279C75978;
      v25 = v14;
      v17 = v14;
      v18 = [v6 appendObject:windDownEvent counterpart:&v21];
      v19 = [v6 isEqual];
    }

    else
    {
      v19 = 0;
    }
  }

  return v19;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CF0C40] builder];
  v4 = [v3 appendObject:self->_occurrence];
  v5 = [v3 appendObject:self->_wakeUpEvent];
  v6 = [v3 appendObject:self->_bedtimeEvent];
  v7 = [v3 appendObject:self->_windDownEvent];
  v8 = [v3 hash];

  return v8;
}

- (id)succinctDescription
{
  v2 = [(HKSPResolvedSleepScheduleOccurrence *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendObject:self->_occurrence withName:@"occurrence"];
  v5 = [(HKSPSleepEvent *)self->_bedtimeEvent dueDate];
  v6 = [v5 hkspDescription];
  v7 = [v3 appendObject:v6 withName:@"bedtime"];

  v8 = [(HKSPSleepEvent *)self->_wakeUpEvent dueDate];
  v9 = [v8 hkspDescription];
  v10 = [v3 appendObject:v9 withName:@"wakeup"];

  v11 = [(HKSPSleepEvent *)self->_windDownEvent dueDate];
  v12 = [v11 hkspDescription];
  v13 = [v3 appendObject:v12 withName:@"winddown"];

  return v3;
}

@end