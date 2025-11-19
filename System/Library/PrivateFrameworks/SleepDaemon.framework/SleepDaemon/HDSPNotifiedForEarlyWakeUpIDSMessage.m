@interface HDSPNotifiedForEarlyWakeUpIDSMessage
- (HDSPNotifiedForEarlyWakeUpIDSMessage)initWithCoder:(id)a3;
- (NSString)identifier;
@end

@implementation HDSPNotifiedForEarlyWakeUpIDSMessage

- (NSString)identifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (HDSPNotifiedForEarlyWakeUpIDSMessage)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = HDSPNotifiedForEarlyWakeUpIDSMessage;
  v3 = [(HDSPNotifiedForEarlyWakeUpIDSMessage *)&v7 init];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  return v4;
}

@end