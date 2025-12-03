@interface UpdateTabItemsEventMonitorController
- (void)appDocumentDidReceiveEvent:(id)event;
- (void)appDocumentHasBecomeActive;
@end

@implementation UpdateTabItemsEventMonitorController

- (void)appDocumentDidReceiveEvent:(id)event
{
  eventCopy = event;
  selfCopy = self;
  sub_1E374C280(eventCopy);
}

- (void)appDocumentHasBecomeActive
{
  selfCopy = self;
  sub_1E374C5A8();
}

@end