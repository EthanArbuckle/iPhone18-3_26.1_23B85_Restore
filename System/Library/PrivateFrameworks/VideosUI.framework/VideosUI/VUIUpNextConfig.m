@interface VUIUpNextConfig
- (VUIUpNextConfig)init;
@end

@implementation VUIUpNextConfig

- (VUIUpNextConfig)init
{
  v3.receiver = self;
  v3.super_class = VUIUpNextConfig;
  result = [(VUIUpNextConfig *)&v3 init];
  if (result)
  {
    *&result->_upNextCallDelayAfterMarkAsWatched = vdupq_n_s64(0x1F4uLL);
    result->_shouldUpdateOutboundAfterRemoveFromUpNext = 0;
  }

  return result;
}

@end