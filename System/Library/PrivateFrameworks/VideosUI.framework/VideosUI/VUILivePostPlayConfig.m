@interface VUILivePostPlayConfig
- (VUILivePostPlayConfig)init;
@end

@implementation VUILivePostPlayConfig

- (VUILivePostPlayConfig)init
{
  v3.receiver = self;
  v3.super_class = VUILivePostPlayConfig;
  result = [(VUILivePostPlayConfig *)&v3 init];
  if (result)
  {
    *&result->_clockScorePollingInterval = xmmword_1E4297370;
  }

  return result;
}

@end