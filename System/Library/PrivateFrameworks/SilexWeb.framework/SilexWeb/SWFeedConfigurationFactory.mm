@interface SWFeedConfigurationFactory
- (id)createFeedConfigurationForViewController:(id)controller;
@end

@implementation SWFeedConfigurationFactory

- (id)createFeedConfigurationForViewController:(id)controller
{
  v3 = objc_alloc_init(SWFeedConfiguration);

  return v3;
}

@end