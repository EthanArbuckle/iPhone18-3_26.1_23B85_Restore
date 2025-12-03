@interface UpdateEventMonitorController
- (void)appDocumentDidReceiveEvent:(id)event;
- (void)appDocumentHasBecomeActive;
@end

@implementation UpdateEventMonitorController

- (void)appDocumentDidReceiveEvent:(id)event
{
  eventCopy = event;
  selfCopy = self;
  sub_1E3B0598C();
}

- (void)appDocumentHasBecomeActive
{
  selfCopy = self;
  sub_1E3B0627C();
}

@end