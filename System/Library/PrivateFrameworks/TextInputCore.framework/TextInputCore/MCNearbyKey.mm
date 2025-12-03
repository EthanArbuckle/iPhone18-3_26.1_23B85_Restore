@interface MCNearbyKey
- (MCNearbyKey)initWithCharacter:(unsigned __int16)character logLikelihood:(float)likelihood;
@end

@implementation MCNearbyKey

- (MCNearbyKey)initWithCharacter:(unsigned __int16)character logLikelihood:(float)likelihood
{
  v7.receiver = self;
  v7.super_class = MCNearbyKey;
  result = [(MCNearbyKey *)&v7 init];
  if (result)
  {
    result->_character = character;
    result->_logLikelihood = likelihood;
  }

  return result;
}

@end