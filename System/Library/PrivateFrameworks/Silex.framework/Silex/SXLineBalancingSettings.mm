@interface SXLineBalancingSettings
- (SXLineBalancingSettings)initWithLineBalancingEnabled:(BOOL)enabled;
@end

@implementation SXLineBalancingSettings

- (SXLineBalancingSettings)initWithLineBalancingEnabled:(BOOL)enabled
{
  v5.receiver = self;
  v5.super_class = SXLineBalancingSettings;
  result = [(SXLineBalancingSettings *)&v5 init];
  if (result)
  {
    result->_enableLineBalancing = enabled;
  }

  return result;
}

@end