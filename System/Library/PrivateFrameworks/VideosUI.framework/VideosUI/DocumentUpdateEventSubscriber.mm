@interface DocumentUpdateEventSubscriber
- (void)appDocumentDidReceiveEvent:(id)event;
@end

@implementation DocumentUpdateEventSubscriber

- (void)appDocumentDidReceiveEvent:(id)event
{
  eventCopy = event;
  selfCopy = self;
  sub_1E3A60A0C(eventCopy);
}

@end