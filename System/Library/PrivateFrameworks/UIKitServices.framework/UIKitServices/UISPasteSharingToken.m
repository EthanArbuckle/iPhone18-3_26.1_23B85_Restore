@interface UISPasteSharingToken
- (BOOL)isEqual:(id)a3;
- (UISPasteSharingToken)init;
- (UISPasteSharingToken)initWithCoder:(id)a3;
- (UISPasteSharingToken)initWithTokenValue:(unint64_t)a3;
@end

@implementation UISPasteSharingToken

- (UISPasteSharingToken)init
{
  __buf = 0;
  arc4random_buf(&__buf, 8uLL);
  return [(UISPasteSharingToken *)self initWithTokenValue:__buf];
}

- (UISPasteSharingToken)initWithTokenValue:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = UISPasteSharingToken;
  result = [(UISPasteSharingToken *)&v5 init];
  if (result)
  {
    result->_tokenValue = a3;
  }

  return result;
}

- (UISPasteSharingToken)initWithCoder:(id)a3
{
  v4 = [a3 decodeInt64ForKey:@"sharingTokenValue"];

  return [(UISPasteSharingToken *)self initWithTokenValue:v4];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(UISPasteSharingToken *)v4 tokenValue];
      v6 = v5 == [(UISPasteSharingToken *)self tokenValue];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

@end