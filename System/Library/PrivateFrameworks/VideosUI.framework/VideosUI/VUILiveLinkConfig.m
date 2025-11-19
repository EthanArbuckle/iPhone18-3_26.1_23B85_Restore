@interface VUILiveLinkConfig
- (VUILiveLinkConfig)init;
@end

@implementation VUILiveLinkConfig

- (VUILiveLinkConfig)init
{
  v3.receiver = self;
  v3.super_class = VUILiveLinkConfig;
  result = [(VUILiveLinkConfig *)&v3 init];
  if (result)
  {
    result->_isEnabled = 0;
  }

  return result;
}

@end