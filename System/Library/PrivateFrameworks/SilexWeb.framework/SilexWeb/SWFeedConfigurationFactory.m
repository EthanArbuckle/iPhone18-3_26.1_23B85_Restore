@interface SWFeedConfigurationFactory
- (id)createFeedConfigurationForViewController:(id)a3;
@end

@implementation SWFeedConfigurationFactory

- (id)createFeedConfigurationForViewController:(id)a3
{
  v3 = objc_alloc_init(SWFeedConfiguration);

  return v3;
}

@end