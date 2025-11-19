@interface VUIPlayerTabsConfig
- (VUIPlayerTabsConfig)init;
@end

@implementation VUIPlayerTabsConfig

- (VUIPlayerTabsConfig)init
{
  v3.receiver = self;
  v3.super_class = VUIPlayerTabsConfig;
  result = [(VUIPlayerTabsConfig *)&v3 init];
  if (result)
  {
    result->_infoTabMustHaveImageToDisplay = 0;
  }

  return result;
}

@end