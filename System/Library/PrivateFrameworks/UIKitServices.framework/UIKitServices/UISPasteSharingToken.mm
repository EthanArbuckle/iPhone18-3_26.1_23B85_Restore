@interface UISPasteSharingToken
- (BOOL)isEqual:(id)equal;
- (UISPasteSharingToken)init;
- (UISPasteSharingToken)initWithCoder:(id)coder;
- (UISPasteSharingToken)initWithTokenValue:(unint64_t)value;
@end

@implementation UISPasteSharingToken

- (UISPasteSharingToken)init
{
  __buf = 0;
  arc4random_buf(&__buf, 8uLL);
  return [(UISPasteSharingToken *)self initWithTokenValue:__buf];
}

- (UISPasteSharingToken)initWithTokenValue:(unint64_t)value
{
  v5.receiver = self;
  v5.super_class = UISPasteSharingToken;
  result = [(UISPasteSharingToken *)&v5 init];
  if (result)
  {
    result->_tokenValue = value;
  }

  return result;
}

- (UISPasteSharingToken)initWithCoder:(id)coder
{
  v4 = [coder decodeInt64ForKey:@"sharingTokenValue"];

  return [(UISPasteSharingToken *)self initWithTokenValue:v4];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      tokenValue = [(UISPasteSharingToken *)equalCopy tokenValue];
      v6 = tokenValue == [(UISPasteSharingToken *)self tokenValue];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

@end