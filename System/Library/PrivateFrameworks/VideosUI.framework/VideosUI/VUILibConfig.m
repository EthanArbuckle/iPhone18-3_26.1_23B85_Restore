@interface VUILibConfig
- (VUILibConfig)init;
@end

@implementation VUILibConfig

- (VUILibConfig)init
{
  v3.receiver = self;
  v3.super_class = VUILibConfig;
  result = [(VUILibConfig *)&v3 init];
  if (result)
  {
    result->_collectionItemLimit = 2000;
    *&result->_focusDebounceInterval = xmmword_1E4297360;
  }

  return result;
}

@end