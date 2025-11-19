@interface TVPBumperConfig
- (TVPBumperConfig)init;
@end

@implementation TVPBumperConfig

- (TVPBumperConfig)init
{
  v3.receiver = self;
  v3.super_class = TVPBumperConfig;
  result = [(TVPBumperConfig *)&v3 init];
  if (result)
  {
    *&result->_textDwellTime = xmmword_26CF4C5E0;
  }

  return result;
}

@end