@interface UpdateTabItemsEventMonitorController
- (void)appDocumentDidReceiveEvent:(id)a3;
- (void)appDocumentHasBecomeActive;
@end

@implementation UpdateTabItemsEventMonitorController

- (void)appDocumentDidReceiveEvent:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1E374C280(v4);
}

- (void)appDocumentHasBecomeActive
{
  v2 = self;
  sub_1E374C5A8();
}

@end