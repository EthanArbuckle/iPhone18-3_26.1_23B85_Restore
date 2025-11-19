@interface MCNearbyKey
- (MCNearbyKey)initWithCharacter:(unsigned __int16)a3 logLikelihood:(float)a4;
@end

@implementation MCNearbyKey

- (MCNearbyKey)initWithCharacter:(unsigned __int16)a3 logLikelihood:(float)a4
{
  v7.receiver = self;
  v7.super_class = MCNearbyKey;
  result = [(MCNearbyKey *)&v7 init];
  if (result)
  {
    result->_character = a3;
    result->_logLikelihood = a4;
  }

  return result;
}

@end