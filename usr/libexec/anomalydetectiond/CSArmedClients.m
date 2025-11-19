@interface CSArmedClients
- (CSArmedClients)init;
@end

@implementation CSArmedClients

- (CSArmedClients)init
{
  v3.receiver = self;
  v3.super_class = CSArmedClients;
  result = [(CSArmedClients *)&v3 init];
  if (result)
  {
    *&result->_kappaArmedSeconds = xmmword_10037DE20;
  }

  return result;
}

@end