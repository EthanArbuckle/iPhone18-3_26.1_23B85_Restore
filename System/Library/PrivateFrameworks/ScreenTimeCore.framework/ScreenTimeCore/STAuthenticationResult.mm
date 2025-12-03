@interface STAuthenticationResult
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToAuthenticationResult:(id)result;
- (STAuthenticationResult)initWithCoder:(id)coder;
- (STAuthenticationResult)initWithResult:(BOOL)result;
@end

@implementation STAuthenticationResult

- (STAuthenticationResult)initWithResult:(BOOL)result
{
  v5.receiver = self;
  v5.super_class = STAuthenticationResult;
  result = [(STAuthenticationResult *)&v5 init];
  result->_authenticated = result;
  return result;
}

- (STAuthenticationResult)initWithCoder:(id)coder
{
  v4 = [coder decodeBoolForKey:@"authenticated"];

  return [(STAuthenticationResult *)self initWithResult:v4];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(STAuthenticationResult *)self isEqualToAuthenticationResult:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToAuthenticationResult:(id)result
{
  if (result == self)
  {
    return 1;
  }

  authenticated = [result authenticated];
  return authenticated ^ [(STAuthenticationResult *)self authenticated]^ 1;
}

@end