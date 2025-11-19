@interface CSArmedSeconds
- (CSArmedSeconds)init;
@end

@implementation CSArmedSeconds

- (CSArmedSeconds)init
{
  v3.receiver = self;
  v3.super_class = CSArmedSeconds;
  result = [(CSArmedSeconds *)&v3 init];
  if (result)
  {
    result->_armedSeconds = 0;
    result->_isArmed = 0;
  }

  return result;
}

@end