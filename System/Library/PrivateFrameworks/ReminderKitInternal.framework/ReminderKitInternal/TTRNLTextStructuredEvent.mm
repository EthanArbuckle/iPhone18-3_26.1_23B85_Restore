@interface TTRNLTextStructuredEvent
- (NSArray)locations;
- (TTRNLTextStructuredEvent)initWithStructuredEvent:(void *)event;
- (TTRNLTextStructuredEventRecurrentEvent)recurrentEvent;
- (void)dealloc;
@end

@implementation TTRNLTextStructuredEvent

- (TTRNLTextStructuredEvent)initWithStructuredEvent:(void *)event
{
  v6.receiver = self;
  v6.super_class = TTRNLTextStructuredEvent;
  v4 = [(TTRNLTextStructuredEvent *)&v6 init];
  if (v4)
  {
    CFRetain(event);
    v4->_structuredEvent = event;
  }

  return v4;
}

- (void)dealloc
{
  CFRelease(self->_structuredEvent);
  v3.receiver = self;
  v3.super_class = TTRNLTextStructuredEvent;
  [(TTRNLTextStructuredEvent *)&v3 dealloc];
}

- (TTRNLTextStructuredEventRecurrentEvent)recurrentEvent
{
  [(TTRNLTextStructuredEvent *)self structuredEvent];
  RecurrentEvent = NLTextStructuredEventGetRecurrentEvent();
  if (RecurrentEvent)
  {
    EventRange = NLTextSlotRecurrentEventGetEventRange();
    v5 = v4;
    v6 = NLTextSlotRecurrentEventGetEventFrequency();
    v7 = NLTextSlotRecurrentEventGetEventStartDate();
    v8 = NLTextSlotRecurrentEventGetEventEndDate();
    RecurrentEvent = [[TTRNLTextStructuredEventRecurrentEvent alloc] initWithRange:EventRange startDate:v5 endDate:v7 isAllDay:v8 frequency:NLTextSlotRecurrentEventIsAllDayEvent() != 0, v6];
  }

  return RecurrentEvent;
}

- (NSArray)locations
{
  v24 = *MEMORY[0x277D85DE8];
  [(TTRNLTextStructuredEvent *)self structuredEvent];
  v2 = NLTextStructuredEventGetLocationRanges();
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v2, "count")}];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(v4);
        }

        Range = NLTextSlotGetRange();
        v11 = v10;
        v12 = NLTextSlotGetSlotID() - 5;
        if (v12 <= 5)
        {
          v13 = qword_230314468[v12];
          v14 = qword_230314498[v12];
          v15 = [TTRNLTextStructuredEventLocation alloc];
          v16 = [(TTRNLTextStructuredEventLocation *)v15 initWithRange:Range locationType:v11 proximity:v13, v14, v19];
          [v3 addObject:v16];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v6);
  }

  v17 = [v3 copy];

  return v17;
}

@end