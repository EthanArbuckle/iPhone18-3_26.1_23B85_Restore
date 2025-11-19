@interface VUISyndicationConfig
- (VUISyndicationConfig)init;
@end

@implementation VUISyndicationConfig

- (VUISyndicationConfig)init
{
  v3.receiver = self;
  v3.super_class = VUISyndicationConfig;
  result = [(VUISyndicationConfig *)&v3 init];
  if (result)
  {
    result->_highlightsFetchLimit = 50;
  }

  return result;
}

@end