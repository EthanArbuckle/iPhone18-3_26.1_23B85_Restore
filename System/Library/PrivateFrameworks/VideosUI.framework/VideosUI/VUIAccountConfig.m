@interface VUIAccountConfig
- (VUIAccountConfig)init;
@end

@implementation VUIAccountConfig

- (VUIAccountConfig)init
{
  v3.receiver = self;
  v3.super_class = VUIAccountConfig;
  result = [(VUIAccountConfig *)&v3 init];
  if (result)
  {
    *&result->_showAccountSettingButtonOnLibraryTab = 257;
  }

  return result;
}

@end