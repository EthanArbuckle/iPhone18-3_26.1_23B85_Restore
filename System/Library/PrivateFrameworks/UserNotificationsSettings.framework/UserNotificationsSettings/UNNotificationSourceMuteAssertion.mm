@interface UNNotificationSourceMuteAssertion
+ (id)sourceMuteAssertionUntilDate:(id)date;
- (BOOL)isActiveForThreadIdentifier:(id)identifier currentDate:(id)date;
- (UNNotificationSourceMuteAssertion)initWithCoder:(id)coder;
- (UNNotificationSourceMuteAssertion)initWithExpirationDate:(id)date;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UNNotificationSourceMuteAssertion

- (UNNotificationSourceMuteAssertion)initWithExpirationDate:(id)date
{
  dateCopy = date;
  v9.receiver = self;
  v9.super_class = UNNotificationSourceMuteAssertion;
  _init = [(UNNotificationMuteAssertion *)&v9 _init];
  v7 = _init;
  if (_init)
  {
    objc_storeStrong(_init + 1, date);
  }

  return v7;
}

+ (id)sourceMuteAssertionUntilDate:(id)date
{
  dateCopy = date;
  v5 = [[self alloc] initWithExpirationDate:dateCopy];

  return v5;
}

- (BOOL)isActiveForThreadIdentifier:(id)identifier currentDate:(id)date
{
  dateCopy = date;
  v6 = dateCopy;
  if (dateCopy)
  {
    v7 = dateCopy;
  }

  else
  {
    v7 = [MEMORY[0x277CBEAA8] now];
  }

  v8 = v7;
  v9 = [(NSDate *)self->_expirationDate compare:v7]== NSOrderedDescending;

  return v9;
}

- (UNNotificationSourceMuteAssertion)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = UNNotificationSourceMuteAssertion;
  v5 = [(UNNotificationMuteAssertion *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"expirationDate"];
    expirationDate = v5->_expirationDate;
    v5->_expirationDate = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = UNNotificationSourceMuteAssertion;
  coderCopy = coder;
  [(UNNotificationMuteAssertion *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_expirationDate forKey:{@"expirationDate", v5.receiver, v5.super_class}];
}

@end