@interface DocumentUpdateEventSubscriber
- (void)appDocumentDidReceiveEvent:(id)a3;
@end

@implementation DocumentUpdateEventSubscriber

- (void)appDocumentDidReceiveEvent:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1E3A60A0C(v4);
}

@end