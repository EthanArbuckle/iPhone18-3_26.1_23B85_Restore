@interface HDSPTestIDSMessage
- (HDSPTestIDSMessage)initWithCoder:(id)coder;
- (NSString)identifier;
@end

@implementation HDSPTestIDSMessage

- (NSString)identifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (HDSPTestIDSMessage)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = HDSPTestIDSMessage;
  v3 = [(HDSPTestIDSMessage *)&v7 init];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  return v4;
}

@end