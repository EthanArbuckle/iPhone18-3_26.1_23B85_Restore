@interface EventMonitorBlockEvent
- (BOOL)hasOccurred;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
- (void)performAction;
@end

@implementation EventMonitorBlockEvent

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = EventMonitorBlockEvent;
  [(EventMonitorBlockEvent *)&v3 dealloc];
}

- (BOOL)hasOccurred
{
  testBlock = self->_testBlock;
  if (testBlock)
  {
    LOBYTE(testBlock) = testBlock[2]();
  }

  return testBlock;
}

- (void)performAction
{
  eventBlock = self->_eventBlock;
  if (eventBlock)
  {
    eventBlock[2]();
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = EventMonitorBlockEvent;
  v5 = [(EventMonitorEvent *)&v7 copyWithZone:?];
  v5[4] = [self->_eventBlock copyWithZone:zone];
  v5[5] = [self->_testBlock copyWithZone:zone];
  return v5;
}

@end