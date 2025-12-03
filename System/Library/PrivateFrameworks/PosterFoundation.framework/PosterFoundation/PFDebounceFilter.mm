@interface PFDebounceFilter
- (BOOL)allowEvent;
- (PFDebounceFilter)initWithDebounceAfterEvents:(unint64_t)events withinTimeInterval:(double)interval;
@end

@implementation PFDebounceFilter

- (PFDebounceFilter)initWithDebounceAfterEvents:(unint64_t)events withinTimeInterval:(double)interval
{
  v11.receiver = self;
  v11.super_class = PFDebounceFilter;
  v6 = [(PFDebounceFilter *)&v11 init];
  v7 = v6;
  if (v6)
  {
    v6->_debounceAfterEvents = events;
    v6->_interval = interval;
    v8 = objc_opt_new();
    eventTimestamps = v7->_eventTimestamps;
    v7->_eventTimestamps = v8;
  }

  return v7;
}

- (BOOL)allowEvent
{
  if (!self->_debounceAfterEvents)
  {
    return 0;
  }

  v3 = [MEMORY[0x1E695DF00] now];
  [v3 timeIntervalSince1970];
  v5 = v4;

  v6 = [(NSMutableArray *)self->_eventTimestamps count];
  debounceAfterEvents = self->_debounceAfterEvents;
  eventTimestamps = self->_eventTimestamps;
  if (v6 >= debounceAfterEvents)
  {
    v11 = [(NSMutableArray *)self->_eventTimestamps objectAtIndexedSubscript:debounceAfterEvents - 1];
    [v11 doubleValue];
    v13 = v12;

    v10 = v5 - v13 > self->_interval;
    v14 = self->_eventTimestamps;
    v15 = [MEMORY[0x1E696AD98] numberWithDouble:v5];
    [(NSMutableArray *)v14 insertObject:v15 atIndex:0];

    [(NSMutableArray *)self->_eventTimestamps removeLastObject];
  }

  else
  {
    v9 = [MEMORY[0x1E696AD98] numberWithDouble:v5];
    [(NSMutableArray *)eventTimestamps insertObject:v9 atIndex:0];

    return 1;
  }

  return v10;
}

@end