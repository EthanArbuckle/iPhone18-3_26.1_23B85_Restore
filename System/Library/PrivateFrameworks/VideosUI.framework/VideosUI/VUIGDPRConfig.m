@interface VUIGDPRConfig
- (VUIGDPRConfig)init;
@end

@implementation VUIGDPRConfig

- (VUIGDPRConfig)init
{
  v3.receiver = self;
  v3.super_class = VUIGDPRConfig;
  result = [(VUIGDPRConfig *)&v3 init];
  if (result)
  {
    result->_popoverHeight = 0.0;
  }

  return result;
}

@end