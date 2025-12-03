@interface HKSPSleepEventTimeline
- (HKSPSleepEventTimeline)initWithOriginDate:(id)date;
- (NSArray)events;
- (NSArray)previousEvents;
- (NSArray)previousResolvedOccurrences;
- (NSArray)resolvedOccurrences;
- (NSArray)upcomingEvents;
- (NSArray)upcomingResolvedOccurrences;
- (id)copyWithZone:(_NSZone *)zone;
- (id)resolvedOccurrenceContainingDate:(id)date;
- (id)resolvedOccurrenceContainingOrPrecedingDate:(id)date;
- (id)resolvedOccurrenceOverlappingOccurrence:(id)occurrence;
- (id)resolvedOccurrencePrecedingDate:(id)date;
- (id)upcomingResolvedOccurrencesBeforeDate:(id)date;
- (void)_adjustedResolvedOccurrence:(id)occurrence adjustmentBlock:(id)block;
- (void)addResolvedOccurrence:(id)occurrence;
- (void)adjustResolvedOccurrence:(id)occurrence removingEventWithIdentifier:(id)identifier;
- (void)adjustResolvedOccurrence:(id)occurrence withEvent:(id)event;
@end

@implementation HKSPSleepEventTimeline

- (HKSPSleepEventTimeline)initWithOriginDate:(id)date
{
  dateCopy = date;
  v14.receiver = self;
  v14.super_class = HKSPSleepEventTimeline;
  v6 = [(HKSPSleepEventTimeline *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_originDate, date);
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    orderedOccurrences = v7->_orderedOccurrences;
    v7->_orderedOccurrences = v8;

    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    timelineAdjustments = v7->_timelineAdjustments;
    v7->_timelineAdjustments = v10;

    v12 = v7;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(HKSPSleepEventTimeline);
  v5 = [(NSDate *)self->_originDate copy];
  originDate = v4->_originDate;
  v4->_originDate = v5;

  v7 = [(NSMutableArray *)self->_orderedOccurrences mutableCopy];
  orderedOccurrences = v4->_orderedOccurrences;
  v4->_orderedOccurrences = v7;

  v9 = [(NSMutableArray *)self->_timelineAdjustments mutableCopy];
  timelineAdjustments = v4->_timelineAdjustments;
  v4->_timelineAdjustments = v9;

  return v4;
}

- (NSArray)resolvedOccurrences
{
  v2 = [(NSMutableArray *)self->_orderedOccurrences copy];

  return v2;
}

- (NSArray)events
{
  resolvedOccurrences = [(HKSPSleepEventTimeline *)self resolvedOccurrences];
  v3 = [resolvedOccurrences na_flatMap:&__block_literal_global_17];

  return v3;
}

id __32__HKSPSleepEventTimeline_events__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = [v2 windDownEvent];

  if (v4)
  {
    v5 = [v2 windDownEvent];
    [v3 addObject:v5];
  }

  v6 = [v2 bedtimeEvent];

  if (v6)
  {
    v7 = [v2 bedtimeEvent];
    [v3 addObject:v7];
  }

  v8 = [v2 wakeUpEvent];
  [v3 addObject:v8];

  return v3;
}

- (NSArray)upcomingEvents
{
  events = [(HKSPSleepEventTimeline *)self events];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __40__HKSPSleepEventTimeline_upcomingEvents__block_invoke;
  v6[3] = &unk_279C73CF8;
  v6[4] = self;
  v4 = [events na_filter:v6];

  return v4;
}

uint64_t __40__HKSPSleepEventTimeline_upcomingEvents__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 dueDate];
  v4 = [v3 hksp_isAfterDate:*(*(a1 + 32) + 8)];

  return v4;
}

- (NSArray)previousEvents
{
  events = [(HKSPSleepEventTimeline *)self events];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __40__HKSPSleepEventTimeline_previousEvents__block_invoke;
  v7[3] = &unk_279C73CF8;
  v7[4] = self;
  v4 = [events na_filter:v7];
  bs_reverse = [v4 bs_reverse];

  return bs_reverse;
}

uint64_t __40__HKSPSleepEventTimeline_previousEvents__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 dueDate];
  v4 = [v3 hksp_isBeforeOrSameAsDate:*(*(a1 + 32) + 8)];

  return v4;
}

- (NSArray)upcomingResolvedOccurrences
{
  resolvedOccurrences = [(HKSPSleepEventTimeline *)self resolvedOccurrences];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __53__HKSPSleepEventTimeline_upcomingResolvedOccurrences__block_invoke;
  v6[3] = &unk_279C75C08;
  v6[4] = self;
  v4 = [resolvedOccurrences na_filter:v6];

  return v4;
}

uint64_t __53__HKSPSleepEventTimeline_upcomingResolvedOccurrences__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 wakeUpEvent];
  v4 = [v3 dueDate];
  v5 = [v4 hksp_isAfterDate:*(*(a1 + 32) + 8)];

  return v5;
}

- (NSArray)previousResolvedOccurrences
{
  resolvedOccurrences = [(HKSPSleepEventTimeline *)self resolvedOccurrences];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__HKSPSleepEventTimeline_previousResolvedOccurrences__block_invoke;
  v7[3] = &unk_279C75C08;
  v7[4] = self;
  v4 = [resolvedOccurrences na_filter:v7];
  bs_reverse = [v4 bs_reverse];

  return bs_reverse;
}

uint64_t __53__HKSPSleepEventTimeline_previousResolvedOccurrences__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 scheduledInterval];
  v4 = [v3 startDate];
  v5 = [v4 hksp_isBeforeOrSameAsDate:*(*(a1 + 32) + 8)];

  return v5;
}

- (id)upcomingResolvedOccurrencesBeforeDate:(id)date
{
  v4 = MEMORY[0x277CCA970];
  dateCopy = date;
  v6 = [[v4 alloc] initWithStartDate:self->_originDate endDate:dateCopy];

  resolvedOccurrences = [(HKSPSleepEventTimeline *)self resolvedOccurrences];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __64__HKSPSleepEventTimeline_upcomingResolvedOccurrencesBeforeDate___block_invoke;
  v11[3] = &unk_279C75C30;
  v11[4] = self;
  v12 = v6;
  v8 = v6;
  v9 = [resolvedOccurrences na_filter:v11];

  return v9;
}

uint64_t __64__HKSPSleepEventTimeline_upcomingResolvedOccurrencesBeforeDate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 occurrence];
  v5 = [v4 isSingleDayOverride];

  if (v5)
  {
    v6 = [v3 scheduledInterval];

    v7 = [v6 endDate];
    v8 = [v7 hksp_isAfterOrSameAsDate:*(*(a1 + 32) + 8)];
  }

  else
  {
    v9 = *(a1 + 40);
    v6 = [v3 wakeUpEvent];

    v7 = [v6 dueDate];
    v8 = [v9 hksp_containsDate:v7 searchOptions:2];
  }

  v10 = v8;

  return v10;
}

- (void)addResolvedOccurrence:(id)occurrence
{
  [(NSMutableArray *)self->_orderedOccurrences addObject:occurrence];
  orderedOccurrences = self->_orderedOccurrences;
  v5 = &__block_literal_global_15;
  [(NSMutableArray *)orderedOccurrences sortUsingComparator:&__block_literal_global_15];
}

- (void)adjustResolvedOccurrence:(id)occurrence withEvent:(id)event
{
  eventCopy = event;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __61__HKSPSleepEventTimeline_adjustResolvedOccurrence_withEvent___block_invoke;
  v8[3] = &unk_279C75C58;
  v9 = eventCopy;
  v7 = eventCopy;
  [(HKSPSleepEventTimeline *)self _adjustedResolvedOccurrence:occurrence adjustmentBlock:v8];
}

- (void)adjustResolvedOccurrence:(id)occurrence removingEventWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __79__HKSPSleepEventTimeline_adjustResolvedOccurrence_removingEventWithIdentifier___block_invoke;
  v8[3] = &unk_279C75C58;
  v9 = identifierCopy;
  v7 = identifierCopy;
  [(HKSPSleepEventTimeline *)self _adjustedResolvedOccurrence:occurrence adjustmentBlock:v8];
}

- (void)_adjustedResolvedOccurrence:(id)occurrence adjustmentBlock:(id)block
{
  occurrenceCopy = occurrence;
  timelineAdjustments = self->_timelineAdjustments;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __70__HKSPSleepEventTimeline__adjustedResolvedOccurrence_adjustmentBlock___block_invoke;
  v17[3] = &unk_279C75C80;
  v8 = occurrenceCopy;
  v18 = v8;
  blockCopy = block;
  v10 = [(NSMutableArray *)timelineAdjustments na_firstObjectPassingTest:v17];
  v11 = v10;
  if (v10)
  {
    adjustedOccurrence = [v10 adjustedOccurrence];
    v13 = blockCopy[2](blockCopy, adjustedOccurrence);

    [v11 setAdjustedOccurrence:v13];
    adjustedOccurrence2 = [v11 adjustedOccurrence];
  }

  else
  {
    v15 = objc_alloc_init(_HKSPSleepEventTimelineAdjustment);
    [(_HKSPSleepEventTimelineAdjustment *)v15 setOriginalOccurrence:v8];
    v16 = blockCopy[2](blockCopy, v8);

    [(_HKSPSleepEventTimelineAdjustment *)v15 setAdjustedOccurrence:v16];
    [(NSMutableArray *)self->_timelineAdjustments addObject:v15];
    adjustedOccurrence = v8;
    adjustedOccurrence2 = [(_HKSPSleepEventTimelineAdjustment *)v15 adjustedOccurrence];
  }

  [(NSMutableArray *)self->_orderedOccurrences removeObject:adjustedOccurrence];
  [(HKSPSleepEventTimeline *)self addResolvedOccurrence:adjustedOccurrence2];
}

uint64_t __70__HKSPSleepEventTimeline__adjustedResolvedOccurrence_adjustmentBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 originalOccurrence];
  if ([v4 isEqual:*(a1 + 32)])
  {
    v5 = 1;
  }

  else
  {
    v6 = [v3 adjustedOccurrence];
    v5 = [v6 isEqual:*(a1 + 32)];
  }

  return v5;
}

- (id)resolvedOccurrenceOverlappingOccurrence:(id)occurrence
{
  occurrenceCopy = occurrence;
  resolvedOccurrences = [(HKSPSleepEventTimeline *)self resolvedOccurrences];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __66__HKSPSleepEventTimeline_resolvedOccurrenceOverlappingOccurrence___block_invoke;
  v9[3] = &unk_279C75C08;
  v10 = occurrenceCopy;
  v6 = occurrenceCopy;
  v7 = [resolvedOccurrences na_firstObjectPassingTest:v9];

  return v7;
}

uint64_t __66__HKSPSleepEventTimeline_resolvedOccurrenceOverlappingOccurrence___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 scheduledInterval];
  v4 = [*(a1 + 32) scheduledInterval];
  v5 = [v3 hksp_overlapsInterval:v4];

  return v5;
}

- (id)resolvedOccurrenceContainingDate:(id)date
{
  dateCopy = date;
  resolvedOccurrences = [(HKSPSleepEventTimeline *)self resolvedOccurrences];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __59__HKSPSleepEventTimeline_resolvedOccurrenceContainingDate___block_invoke;
  v9[3] = &unk_279C75C08;
  v10 = dateCopy;
  v6 = dateCopy;
  v7 = [resolvedOccurrences na_firstObjectPassingTest:v9];

  return v7;
}

uint64_t __59__HKSPSleepEventTimeline_resolvedOccurrenceContainingDate___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 scheduledInterval];
  v4 = [v3 hksp_containsDate:*(a1 + 32)];

  return v4;
}

- (id)resolvedOccurrencePrecedingDate:(id)date
{
  dateCopy = date;
  resolvedOccurrences = [(HKSPSleepEventTimeline *)self resolvedOccurrences];
  bs_reverse = [resolvedOccurrences bs_reverse];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __58__HKSPSleepEventTimeline_resolvedOccurrencePrecedingDate___block_invoke;
  v10[3] = &unk_279C75C08;
  v11 = dateCopy;
  v7 = dateCopy;
  v8 = [bs_reverse na_firstObjectPassingTest:v10];

  return v8;
}

uint64_t __58__HKSPSleepEventTimeline_resolvedOccurrencePrecedingDate___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 scheduledInterval];
  v4 = [v3 endDate];
  v5 = [v4 hksp_isBeforeOrSameAsDate:*(a1 + 32)];

  return v5;
}

- (id)resolvedOccurrenceContainingOrPrecedingDate:(id)date
{
  dateCopy = date;
  v5 = [(HKSPSleepEventTimeline *)self resolvedOccurrenceContainingDate:dateCopy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [(HKSPSleepEventTimeline *)self resolvedOccurrencePrecedingDate:dateCopy];
  }

  v8 = v7;

  return v8;
}

@end