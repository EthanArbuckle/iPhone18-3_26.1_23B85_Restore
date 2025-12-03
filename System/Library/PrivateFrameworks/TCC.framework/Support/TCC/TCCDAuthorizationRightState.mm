@interface TCCDAuthorizationRightState
- (NSString)description;
- (NSString)reasonDescription;
- (NSString)rightDescription;
- (TCCDAuthorizationRightState)init;
- (void)reset;
@end

@implementation TCCDAuthorizationRightState

- (TCCDAuthorizationRightState)init
{
  v5.receiver = self;
  v5.super_class = TCCDAuthorizationRightState;
  v2 = [(TCCDAuthorizationRightState *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(TCCDAuthorizationRightState *)v2 setRight:1];
    [(TCCDAuthorizationRightState *)v3 setReason:0];
  }

  return v3;
}

- (NSString)description
{
  v3 = objc_alloc_init(NSMutableString);
  rightDescription = [(TCCDAuthorizationRightState *)self rightDescription];
  reasonDescription = [(TCCDAuthorizationRightState *)self reasonDescription];
  [v3 appendFormat:@"%@ (%@)", rightDescription, reasonDescription];

  return v3;
}

- (NSString)rightDescription
{
  right = [(TCCDAuthorizationRightState *)self right];
  if (right > 7)
  {
    return @"<Unspported Authorization Right value>";
  }

  else
  {
    return *(&off_1000A5FE8 + right);
  }
}

- (NSString)reasonDescription
{
  reason = [(TCCDAuthorizationRightState *)self reason];
  if (reason > 0xF)
  {
    return @"<Unspported Authorization Reason value>";
  }

  else
  {
    return *(&off_1000A6028 + reason);
  }
}

- (void)reset
{
  [(TCCDAuthorizationRightState *)self setRight:1];

  [(TCCDAuthorizationRightState *)self setReason:0];
}

@end