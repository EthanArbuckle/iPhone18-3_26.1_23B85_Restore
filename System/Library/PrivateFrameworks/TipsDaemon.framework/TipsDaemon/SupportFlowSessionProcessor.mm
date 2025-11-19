@interface SupportFlowSessionProcessor
- (SupportFlowSessionProcessor)init;
- (void)processAnalytics;
@end

@implementation SupportFlowSessionProcessor

- (void)processAnalytics
{
  v2 = self;
  SupportFlowSessionProcessor.processAnalytics()();
}

- (SupportFlowSessionProcessor)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(SupportFlowSessionProcessor *)&v3 init];
}

@end