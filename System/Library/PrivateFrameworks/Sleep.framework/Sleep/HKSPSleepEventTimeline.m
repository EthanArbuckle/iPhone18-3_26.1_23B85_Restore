@interface HKSPSleepEventTimeline
- (HKSPSleepEventTimeline)initWithOriginDate:(id)a3;
- (NSArray)events;
- (NSArray)previousEvents;
- (NSArray)previousResolvedOccurrences;
- (NSArray)resolvedOccurrences;
- (NSArray)upcomingEvents;
- (NSArray)upcomingResolvedOccurrences;
- (id)copyWithZone:(_NSZone *)a3;
- (id)resolvedOccurrenceContainingDate:(id)a3;
- (id)resolvedOccurrenceContainingOrPrecedingDate:(id)a3;
- (id)resolvedOccurrenceOverlappingOccurrence:(id)a3;
- (id)resolvedOccurrencePrecedingDate:(id)a3;
- (id)upcomingResolvedOccurrencesBeforeDate:(id)a3;
- (void)_adjustedResolvedOccurrence:(id)a3 adjustmentBlock:(id)a4;
- (void)addResolvedOccurrence:(id)a3;
- (void)adjustResolvedOccurrence:(id)a3 removingEventWithIdentifier:(id)a4;
- (void)adjustResolvedOccurrence:(id)a3 withEvent:(id)a4;
@end

@implementation HKSPSleepEventTimeline

- (HKSPSleepEventTimeline)initWithOriginDate:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = HKSPSleepEventTimeline;
  v6 = [(HKSPSleepEventTimeline *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_originDate, a3);
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

- (id)copyWithZone:(_NSZone *)a3
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
  v2 = [(HKSPSleepEventTimeline *)self resolvedOccurrences];
  v3 = [v2 na_flatMap:&__block_literal_global_17];

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
  v3 = [(HKSPSleepEventTimeline *)self events];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __40__HKSPSleepEventTimeline_upcomingEvents__block_invoke;
  v6[3] = &unk_279C73CF8;
  v6[4] = self;
  v4 = [v3 na_filter:v6];

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
  v3 = [(HKSPSleepEventTimeline *)self events];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __40__HKSPSleepEventTimeline_previousEvents__block_invoke;
  v7[3] = &unk_279C73CF8;
  v7[4] = self;
  v4 = [v3 na_filter:v7];
  v5 = [v4 bs_reverse];

  return v5;
}

uint64_t __40__HKSPSleepEventTimeline_previousEvents__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 dueDate];
  v4 = [v3 hksp_isBeforeOrSameAsDate:*(*(a1 + 32) + 8)];

  return v4;
}

- (NSArray)upcomingResolvedOccurrences
{
  v3 = [(HKSPSleepEventTimeline *)self resolvedOccurrences];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __53__HKSPSleepEventTimeline_upcomingResolvedOccurrences__block_invoke;
  v6[3] = &unk_279C75C08;
  v6[4] = self;
  v4 = [v3 na_filter:v6];

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
  v3 = [(HKSPSleepEventTimeline *)self resolvedOccurrences];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__HKSPSleepEventTimeline_previousResolvedOccurrences__block_invoke;
  v7[3] = &unk_279C75C08;
  v7[4] = self;
  v4 = [v3 na_filter:v7];
  v5 = [v4 bs_reverse];

  return v5;
}

uint64_t __53__HKSPSleepEventTimeline_previousResolvedOccurrences__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 scheduledInterval];
  v4 = [v3 startDate];
  v5 = [v4 hksp_isBeforeOrSameAsDate:*(*(a1 + 32) + 8)];

  return v5;
}

- (id)upcomingResolvedOccurrencesBeforeDate:(id)a3
{
  v4 = MEMORY[0x277CCA970];
  v5 = a3;
  v6 = [[v4 alloc] initWithStartDate:self->_originDate endDate:v5];

  v7 = [(HKSPSleepEventTimeline *)self resolvedOccurrences];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __64__HKSPSleepEventTimeline_upcomingResolvedOccurrencesBeforeDate___block_invoke;
  v11[3] = &unk_279C75C30;
  v11[4] = self;
  v12 = v6;
  v8 = v6;
  v9 = [v7 na_filter:v11];

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

- (void)addResolvedOccurrence:(id)a3
{
  [(NSMutableArray *)self->_orderedOccurrences addObject:a3];
  orderedOccurrences = self->_orderedOccurrences;
  v5 = &__block_literal_global_15;
  [(NSMutableArray *)orderedOccurrences sortUsingComparator:&__block_literal_global_15];
}

- (void)adjustResolvedOccurrence:(id)a3 withEvent:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __61__HKSPSleepEventTimeline_adjustResolvedOccurrence_withEvent___block_invoke;
  v8[3] = &unk_279C75C58;
  v9 = v6;
  v7 = v6;
  [(HKSPSleepEventTimeline *)self _adjustedResolvedOccurrence:a3 adjustmentBlock:v8];
}

- (void)adjustResolvedOccurrence:(id)a3 removingEventWithIdentifier:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __79__HKSPSleepEventTimeline_adjustResolvedOccurrence_removingEventWithIdentifier___block_invoke;
  v8[3] = &unk_279C75C58;
  v9 = v6;
  v7 = v6;
  [(HKSPSleepEventTimeline *)self _adjustedResolvedOccurrence:a3 adjustmentBlock:v8];
}

- (void)_adjustedResolvedOccurrence:(id)a3 adjustmentBlock:(id)a4
{
  v6 = a3;
  timelineAdjustments = self->_timelineAdjustments;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __70__HKSPSleepEventTimeline__adjustedResolvedOccurrence_adjustmentBlock___block_invoke;
  v17[3] = &unk_279C75C80;
  v8 = v6;
  v18 = v8;
  v9 = a4;
  v10 = [(NSMutableArray *)timelineAdjustments na_firstObjectPassingTest:v17];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 adjustedOccurrence];
    v13 = v9[2](v9, v12);

    [v11 setAdjustedOccurrence:v13];
    v14 = [v11 adjustedOccurrence];
  }

  else
  {
    v15 = objc_alloc_init(_HKSPSleepEventTimelineAdjustment);
    [(_HKSPSleepEventTimelineAdjustment *)v15 setOriginalOccurrence:v8];
    v16 = v9[2](v9, v8);

    [(_HKSPSleepEventTimelineAdjustment *)v15 setAdjustedOccurrence:v16];
    [(NSMutableArray *)self->_timelineAdjustments addObject:v15];
    v12 = v8;
    v14 = [(_HKSPSleepEventTimelineAdjustment *)v15 adjustedOccurrence];
  }

  [(NSMutableArray *)self->_orderedOccurrences removeObject:v12];
  [(HKSPSleepEventTimeline *)self addResolvedOccurrence:v14];
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

- (id)resolvedOccurrenceOverlappingOccurrence:(id)a3
{
  v4 = a3;
  v5 = [(HKSPSleepEventTimeline *)self resolvedOccurrences];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __66__HKSPSleepEventTimeline_resolvedOccurrenceOverlappingOccurrence___block_invoke;
  v9[3] = &unk_279C75C08;
  v10 = v4;
  v6 = v4;
  v7 = [v5 na_firstObjectPassingTest:v9];

  return v7;
}

uint64_t __66__HKSPSleepEventTimeline_resolvedOccurrenceOverlappingOccurrence___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 scheduledInterval];
  v4 = [*(a1 + 32) scheduledInterval];
  v5 = [v3 hksp_overlapsInterval:v4];

  return v5;
}

- (id)resolvedOccurrenceContainingDate:(id)a3
{
  v4 = a3;
  v5 = [(HKSPSleepEventTimeline *)self resolvedOccurrences];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __59__HKSPSleepEventTimeline_resolvedOccurrenceContainingDate___block_invoke;
  v9[3] = &unk_279C75C08;
  v10 = v4;
  v6 = v4;
  v7 = [v5 na_firstObjectPassingTest:v9];

  return v7;
}

uint64_t __59__HKSPSleepEventTimeline_resolvedOccurrenceContainingDate___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 scheduledInterval];
  v4 = [v3 hksp_containsDate:*(a1 + 32)];

  return v4;
}

- (id)resolvedOccurrencePrecedingDate:(id)a3
{
  v4 = a3;
  v5 = [(HKSPSleepEventTimeline *)self resolvedOccurrences];
  v6 = [v5 bs_reverse];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __58__HKSPSleepEventTimeline_resolvedOccurrencePrecedingDate___block_invoke;
  v10[3] = &unk_279C75C08;
  v11 = v4;
  v7 = v4;
  v8 = [v6 na_firstObjectPassingTest:v10];

  return v8;
}

uint64_t __58__HKSPSleepEventTimeline_resolvedOccurrencePrecedingDate___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 scheduledInterval];
  v4 = [v3 endDate];
  v5 = [v4 hksp_isBeforeOrSameAsDate:*(a1 + 32)];

  return v5;
}

- (id)resolvedOccurrenceContainingOrPrecedingDate:(id)a3
{
  v4 = a3;
  v5 = [(HKSPSleepEventTimeline *)self resolvedOccurrenceContainingDate:v4];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [(HKSPSleepEventTimeline *)self resolvedOccurrencePrecedingDate:v4];
  }

  v8 = v7;

  return v8;
}

@end