@interface UpdateEventMonitorController
- (void)appDocumentDidReceiveEvent:(id)a3;
- (void)appDocumentHasBecomeActive;
@end

@implementation UpdateEventMonitorController

- (void)appDocumentDidReceiveEvent:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1E3B0598C();
}

- (void)appDocumentHasBecomeActive
{
  v2 = self;
  sub_1E3B0627C();
}

@end