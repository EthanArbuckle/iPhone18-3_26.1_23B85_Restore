@interface PFStateCaptureEventLog
- (NSArray)eventDescriptions;
- (PFStateCaptureEventLog)initWithEventClass:(Class)class maxEvents:(unint64_t)events;
- (id)addEvent;
- (unint64_t)count;
@end

@implementation PFStateCaptureEventLog

- (id)addEvent
{
  os_unfair_lock_lock(&self->_lock);
  if ([(NSMutableArray *)self->_lock_events count]>= self->_maxEvents)
  {
    v3 = [(NSMutableArray *)self->_lock_events objectAtIndexedSubscript:self->_lock_headIndex];
    [v3 reset];
    self->_lock_headIndex = (self->_lock_headIndex + 1) % self->_maxEvents;
  }

  else
  {
    v3 = objc_alloc_init(self->_eventClass);
    [(NSMutableArray *)self->_lock_events addObject:v3];
  }

  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSArray)eventDescriptions
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableArray *)self->_lock_events copy];
  lock_headIndex = self->_lock_headIndex;
  os_unfair_lock_unlock(&self->_lock);
  array = [MEMORY[0x1E695DF70] array];
  if ([v3 count])
  {
    v6 = 0;
    do
    {
      v7 = [v3 objectAtIndexedSubscript:lock_headIndex];
      eventDescription = [v7 eventDescription];
      [array addObject:eventDescription];

      lock_headIndex = (lock_headIndex + 1) % self->_maxEvents;
      ++v6;
    }

    while (v6 < [v3 count]);
  }

  v9 = [array copy];

  return v9;
}

- (unint64_t)count
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableArray *)self->_lock_events count];
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (PFStateCaptureEventLog)initWithEventClass:(Class)class maxEvents:(unint64_t)events
{
  v12.receiver = self;
  v12.super_class = PFStateCaptureEventLog;
  v6 = [(PFStateCaptureEventLog *)&v12 init];
  v7 = v6;
  if (v6)
  {
    v6->_eventClass = class;
    v6->_maxEvents = events;
    v6->_lock._os_unfair_lock_opaque = 0;
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    lock_events = v7->_lock_events;
    v7->_lock_events = v8;

    v7->_lock_headIndex = 0;
    v10 = v7;
  }

  return v7;
}

@end