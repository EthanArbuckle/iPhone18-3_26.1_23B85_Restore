@interface REMRemindersDataViewInvocation_fetchRemindersWithLocationAlarms
- (BOOL)isEqual:(id)equal;
- (REMRemindersDataViewInvocation_fetchRemindersWithLocationAlarms)initWithCoder:(id)coder;
- (REMRemindersDataViewInvocation_fetchRemindersWithLocationAlarms)initWithIncludingCompleted:(BOOL)completed;
- (void)encodeWithCoder:(id)coder;
@end

@implementation REMRemindersDataViewInvocation_fetchRemindersWithLocationAlarms

- (REMRemindersDataViewInvocation_fetchRemindersWithLocationAlarms)initWithIncludingCompleted:(BOOL)completed
{
  v5.receiver = self;
  v5.super_class = REMRemindersDataViewInvocation_fetchRemindersWithLocationAlarms;
  result = [(REMStoreInvocationValueStorage *)&v5 init];
  if (result)
  {
    result->_includingCompleted = completed;
  }

  return result;
}

- (REMRemindersDataViewInvocation_fetchRemindersWithLocationAlarms)initWithCoder:(id)coder
{
  v4 = [coder decodeBoolForKey:@"includingCompleted"];

  return [(REMRemindersDataViewInvocation_fetchRemindersWithLocationAlarms *)self initWithIncludingCompleted:v4];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:-[REMRemindersDataViewInvocation_fetchRemindersWithLocationAlarms includingCompleted](self forKey:{"includingCompleted"), @"includingCompleted"}];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    includingCompleted = [(REMRemindersDataViewInvocation_fetchRemindersWithLocationAlarms *)self includingCompleted];
    v6 = includingCompleted ^ [equalCopy includingCompleted] ^ 1;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

@end