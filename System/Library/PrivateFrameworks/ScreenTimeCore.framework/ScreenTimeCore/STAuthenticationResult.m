@interface STAuthenticationResult
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToAuthenticationResult:(id)a3;
- (STAuthenticationResult)initWithCoder:(id)a3;
- (STAuthenticationResult)initWithResult:(BOOL)a3;
@end

@implementation STAuthenticationResult

- (STAuthenticationResult)initWithResult:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = STAuthenticationResult;
  result = [(STAuthenticationResult *)&v5 init];
  result->_authenticated = a3;
  return result;
}

- (STAuthenticationResult)initWithCoder:(id)a3
{
  v4 = [a3 decodeBoolForKey:@"authenticated"];

  return [(STAuthenticationResult *)self initWithResult:v4];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(STAuthenticationResult *)self isEqualToAuthenticationResult:v4];
  }

  return v5;
}

- (BOOL)isEqualToAuthenticationResult:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  v4 = [a3 authenticated];
  return v4 ^ [(STAuthenticationResult *)self authenticated]^ 1;
}

@end