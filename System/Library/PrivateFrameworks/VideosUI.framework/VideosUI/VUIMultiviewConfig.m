@interface VUIMultiviewConfig
- (VUIMultiviewConfig)init;
@end

@implementation VUIMultiviewConfig

- (VUIMultiviewConfig)init
{
  v3.receiver = self;
  v3.super_class = VUIMultiviewConfig;
  result = [(VUIMultiviewConfig *)&v3 init];
  if (result)
  {
    result->_isEnabled = 0;
    result->_maximumPlayerCount = 4;
  }

  return result;
}

@end