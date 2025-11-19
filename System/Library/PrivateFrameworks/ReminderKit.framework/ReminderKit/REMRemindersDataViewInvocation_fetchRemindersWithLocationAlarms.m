@interface REMRemindersDataViewInvocation_fetchRemindersWithLocationAlarms
- (BOOL)isEqual:(id)a3;
- (REMRemindersDataViewInvocation_fetchRemindersWithLocationAlarms)initWithCoder:(id)a3;
- (REMRemindersDataViewInvocation_fetchRemindersWithLocationAlarms)initWithIncludingCompleted:(BOOL)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation REMRemindersDataViewInvocation_fetchRemindersWithLocationAlarms

- (REMRemindersDataViewInvocation_fetchRemindersWithLocationAlarms)initWithIncludingCompleted:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = REMRemindersDataViewInvocation_fetchRemindersWithLocationAlarms;
  result = [(REMStoreInvocationValueStorage *)&v5 init];
  if (result)
  {
    result->_includingCompleted = a3;
  }

  return result;
}

- (REMRemindersDataViewInvocation_fetchRemindersWithLocationAlarms)initWithCoder:(id)a3
{
  v4 = [a3 decodeBoolForKey:@"includingCompleted"];

  return [(REMRemindersDataViewInvocation_fetchRemindersWithLocationAlarms *)self initWithIncludingCompleted:v4];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeBool:-[REMRemindersDataViewInvocation_fetchRemindersWithLocationAlarms includingCompleted](self forKey:{"includingCompleted"), @"includingCompleted"}];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(REMRemindersDataViewInvocation_fetchRemindersWithLocationAlarms *)self includingCompleted];
    v6 = v5 ^ [v4 includingCompleted] ^ 1;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

@end