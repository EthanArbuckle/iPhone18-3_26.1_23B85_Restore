@interface CSCAStat
- (CSCAStat)init;
@end

@implementation CSCAStat

- (CSCAStat)init
{
  v3.receiver = self;
  v3.super_class = CSCAStat;
  result = [(CSCAStat *)&v3 init];
  if (result)
  {
    *&result->_userAge = 255;
    *&result->_mcc1 = xmmword_10037DE10;
  }

  return result;
}

@end