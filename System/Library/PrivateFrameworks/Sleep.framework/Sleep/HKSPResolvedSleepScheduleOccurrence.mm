@interface HKSPResolvedSleepScheduleOccurrence
- (BOOL)isEqual:(id)equal;
- (HKSPResolvedSleepScheduleOccurrence)initWithCoder:(id)coder;
- (HKSPResolvedSleepScheduleOccurrence)initWithOccurrence:(id)occurrence wakeUpEvent:(id)event bedtimeEvent:(id)bedtimeEvent windDownEvent:(id)downEvent;
- (NSDateInterval)bedtimeInterval;
- (NSDateInterval)scheduledInterval;
- (NSDateInterval)windDownInterval;
- (id)generateOverrideOccurrenceForCurrentDate:(id)date gregorianCalendar:(id)calendar;
- (id)occurrenceByAdjustingEvent:(id)event;
- (id)occurrenceByRemovingEventWithIdentifier:(id)identifier;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (int64_t)compare:(id)compare;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKSPResolvedSleepScheduleOccurrence

- (HKSPResolvedSleepScheduleOccurrence)initWithOccurrence:(id)occurrence wakeUpEvent:(id)event bedtimeEvent:(id)bedtimeEvent windDownEvent:(id)downEvent
{
  occurrenceCopy = occurrence;
  eventCopy = event;
  bedtimeEventCopy = bedtimeEvent;
  downEventCopy = downEvent;
  v19.receiver = self;
  v19.super_class = HKSPResolvedSleepScheduleOccurrence;
  v15 = [(HKSPResolvedSleepScheduleOccurrence *)&v19 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_occurrence, occurrence);
    objc_storeStrong(&v16->_wakeUpEvent, event);
    objc_storeStrong(&v16->_bedtimeEvent, bedtimeEvent);
    objc_storeStrong(&v16->_windDownEvent, downEvent);
    v17 = v16;
  }

  return v16;
}

- (id)occurrenceByAdjustingEvent:(id)event
{
  eventCopy = event;
  v20 = [HKSPResolvedSleepScheduleOccurrence alloc];
  occurrence = [(HKSPResolvedSleepScheduleOccurrence *)self occurrence];
  identifier = [eventCopy identifier];
  v7 = [identifier isEqualToString:@"HKSPSleepEventIdentifierWakeUp"];
  wakeUpEvent = eventCopy;
  if ((v7 & 1) == 0)
  {
    wakeUpEvent = [(HKSPResolvedSleepScheduleOccurrence *)self wakeUpEvent];
  }

  identifier2 = [eventCopy identifier];
  v10 = [identifier2 isEqualToString:@"HKSPSleepEventIdentifierBedtime"];
  bedtimeEvent = eventCopy;
  if ((v10 & 1) == 0)
  {
    bedtimeEvent = [(HKSPResolvedSleepScheduleOccurrence *)self bedtimeEvent];
  }

  identifier3 = [eventCopy identifier];
  if ([identifier3 isEqualToString:@"HKSPSleepEventIdentifierWindDown"])
  {
    v13 = [(HKSPResolvedSleepScheduleOccurrence *)v20 initWithOccurrence:occurrence wakeUpEvent:wakeUpEvent bedtimeEvent:bedtimeEvent windDownEvent:eventCopy];
  }

  else
  {
    [(HKSPResolvedSleepScheduleOccurrence *)self windDownEvent];
    v19 = identifier2;
    v14 = v7;
    v15 = identifier;
    v17 = v16 = occurrence;
    v13 = [(HKSPResolvedSleepScheduleOccurrence *)v20 initWithOccurrence:v16 wakeUpEvent:wakeUpEvent bedtimeEvent:bedtimeEvent windDownEvent:v17];

    occurrence = v16;
    identifier = v15;
    v7 = v14;
    identifier2 = v19;
  }

  if ((v10 & 1) == 0)
  {
  }

  if ((v7 & 1) == 0)
  {
  }

  return v13;
}

- (id)occurrenceByRemovingEventWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy isEqualToString:@"HKSPSleepEventIdentifierWakeUp"])
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HKSPResolvedSleepScheduleOccurrence.m" lineNumber:58 description:{@"Invalid parameter not satisfying: %@", @"![eventIdentifier isEqualToString:HKSPSleepEventIdentifierWakeUp]"}];
  }

  v6 = [HKSPResolvedSleepScheduleOccurrence alloc];
  occurrence = [(HKSPResolvedSleepScheduleOccurrence *)self occurrence];
  wakeUpEvent = [(HKSPResolvedSleepScheduleOccurrence *)self wakeUpEvent];
  v9 = [identifierCopy isEqualToString:@"HKSPSleepEventIdentifierBedtime"];
  if (v9)
  {
    bedtimeEvent = 0;
  }

  else
  {
    bedtimeEvent = [(HKSPResolvedSleepScheduleOccurrence *)self bedtimeEvent];
  }

  if (![identifierCopy isEqualToString:@"HKSPSleepEventIdentifierWindDown"])
  {
    windDownEvent = [(HKSPResolvedSleepScheduleOccurrence *)self windDownEvent];
    v11 = [(HKSPResolvedSleepScheduleOccurrence *)v6 initWithOccurrence:occurrence wakeUpEvent:wakeUpEvent bedtimeEvent:bedtimeEvent windDownEvent:windDownEvent];

    if (v9)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v11 = [(HKSPResolvedSleepScheduleOccurrence *)v6 initWithOccurrence:occurrence wakeUpEvent:wakeUpEvent bedtimeEvent:bedtimeEvent windDownEvent:0];
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
  dueDate = [(HKSPSleepEvent *)self->_windDownEvent dueDate];
  v6 = dueDate;
  if (dueDate)
  {
    v7 = 0;
    dueDate3 = dueDate;
  }

  else
  {
    dueDate2 = [(HKSPSleepEvent *)self->_bedtimeEvent dueDate];
    v2 = dueDate2;
    if (dueDate2)
    {
      v7 = 0;
      dueDate3 = dueDate2;
    }

    else
    {
      dueDate3 = [(HKSPSleepEvent *)self->_wakeUpEvent dueDate];
      v7 = 1;
    }
  }

  dueDate4 = [(HKSPSleepEvent *)self->_wakeUpEvent dueDate];
  v11 = [v4 initWithStartDate:dueDate3 endDate:dueDate4];

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
  dueDate = [(HKSPSleepEvent *)self->_bedtimeEvent dueDate];
  if (dueDate)
  {
    v4 = objc_alloc(MEMORY[0x277CCA970]);
    dueDate2 = [(HKSPSleepEvent *)self->_bedtimeEvent dueDate];
    dueDate3 = [(HKSPSleepEvent *)self->_wakeUpEvent dueDate];
    v7 = [v4 initWithStartDate:dueDate2 endDate:dueDate3];
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
    dueDate = [(HKSPSleepEvent *)self->_windDownEvent dueDate];
    dueDate2 = [(HKSPSleepEvent *)self->_bedtimeEvent dueDate];
    v6 = [v3 initWithStartDate:dueDate endDate:dueDate2];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)generateOverrideOccurrenceForCurrentDate:(id)date gregorianCalendar:(id)calendar
{
  v37 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  calendarCopy = calendar;
  v8 = HKSPLogForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v33 = 138543618;
    v34 = objc_opt_class();
    v35 = 2114;
    v36 = dateCopy;
    v9 = v34;
    _os_log_impl(&dword_269A84000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] generating override occurrence for current date %{public}@", &v33, 0x16u);
  }

  scheduledInterval = [(HKSPResolvedSleepScheduleOccurrence *)self scheduledInterval];
  v11 = [scheduledInterval containsDate:dateCopy];

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

    scheduledInterval2 = [(HKSPResolvedSleepScheduleOccurrence *)self scheduledInterval];
    startDate = [scheduledInterval2 startDate];

    occurrence = [(HKSPResolvedSleepScheduleOccurrence *)self occurrence];
    v25 = [occurrence overrideOccurrenceTemplateForCurrentDate:startDate gregorianCalendar:calendarCopy];
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

  wakeUpEvent = [(HKSPResolvedSleepScheduleOccurrence *)self wakeUpEvent];
  type = [wakeUpEvent type];

  if (type)
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

  wakeUpEvent2 = [(HKSPResolvedSleepScheduleOccurrence *)self wakeUpEvent];
  startDate = [wakeUpEvent2 dueDate];

  occurrence2 = [(HKSPResolvedSleepScheduleOccurrence *)self occurrence];
  occurrence = [occurrence2 bedtimeDateForWakeUpDate:startDate gregorianCalendar:calendarCopy];

  v30 = [calendarCopy components:124 fromDate:startDate];
  v31 = [calendarCopy components:124 fromDate:occurrence];
  occurrence3 = [(HKSPResolvedSleepScheduleOccurrence *)self occurrence];
  v25 = [occurrence3 overrideOccurrenceWithWakeUpComponents:v30 bedtimeComponents:v31];

LABEL_13:
  v26 = *MEMORY[0x277D85DE8];

  return v25;
}

- (HKSPResolvedSleepScheduleOccurrence)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = HKSPResolvedSleepScheduleOccurrence;
  v5 = [(HKSPResolvedSleepScheduleOccurrence *)&v16 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"occurrence"];
    occurrence = v5->_occurrence;
    v5->_occurrence = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"wakeUpEvent"];
    wakeUpEvent = v5->_wakeUpEvent;
    v5->_wakeUpEvent = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bedtimeEvent"];
    bedtimeEvent = v5->_bedtimeEvent;
    v5->_bedtimeEvent = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"windDownEvent"];
    windDownEvent = v5->_windDownEvent;
    v5->_windDownEvent = v12;

    v14 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  occurrence = self->_occurrence;
  coderCopy = coder;
  [coderCopy encodeObject:occurrence forKey:@"occurrence"];
  [coderCopy encodeObject:self->_wakeUpEvent forKey:@"wakeUpEvent"];
  [coderCopy encodeObject:self->_bedtimeEvent forKey:@"bedtimeEvent"];
  [coderCopy encodeObject:self->_windDownEvent forKey:@"windDownEvent"];
}

- (int64_t)compare:(id)compare
{
  wakeUpEvent = self->_wakeUpEvent;
  wakeUpEvent = [compare wakeUpEvent];
  v5 = [(HKSPSleepEvent *)wakeUpEvent compare:wakeUpEvent];

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v19 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
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
  builder = [MEMORY[0x277CF0C40] builder];
  v4 = [builder appendObject:self->_occurrence];
  v5 = [builder appendObject:self->_wakeUpEvent];
  v6 = [builder appendObject:self->_bedtimeEvent];
  v7 = [builder appendObject:self->_windDownEvent];
  v8 = [builder hash];

  return v8;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(HKSPResolvedSleepScheduleOccurrence *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendObject:self->_occurrence withName:@"occurrence"];
  dueDate = [(HKSPSleepEvent *)self->_bedtimeEvent dueDate];
  hkspDescription = [dueDate hkspDescription];
  v7 = [v3 appendObject:hkspDescription withName:@"bedtime"];

  dueDate2 = [(HKSPSleepEvent *)self->_wakeUpEvent dueDate];
  hkspDescription2 = [dueDate2 hkspDescription];
  v10 = [v3 appendObject:hkspDescription2 withName:@"wakeup"];

  dueDate3 = [(HKSPSleepEvent *)self->_windDownEvent dueDate];
  hkspDescription3 = [dueDate3 hkspDescription];
  v13 = [v3 appendObject:hkspDescription3 withName:@"winddown"];

  return v3;
}

@end