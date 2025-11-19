@interface UNNotificationSourceMuteAssertion
+ (id)sourceMuteAssertionUntilDate:(id)a3;
- (BOOL)isActiveForThreadIdentifier:(id)a3 currentDate:(id)a4;
- (UNNotificationSourceMuteAssertion)initWithCoder:(id)a3;
- (UNNotificationSourceMuteAssertion)initWithExpirationDate:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UNNotificationSourceMuteAssertion

- (UNNotificationSourceMuteAssertion)initWithExpirationDate:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = UNNotificationSourceMuteAssertion;
  v6 = [(UNNotificationMuteAssertion *)&v9 _init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(v6 + 1, a3);
  }

  return v7;
}

+ (id)sourceMuteAssertionUntilDate:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithExpirationDate:v4];

  return v5;
}

- (BOOL)isActiveForThreadIdentifier:(id)a3 currentDate:(id)a4
{
  v5 = a4;
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [MEMORY[0x277CBEAA8] now];
  }

  v8 = v7;
  v9 = [(NSDate *)self->_expirationDate compare:v7]== NSOrderedDescending;

  return v9;
}

- (UNNotificationSourceMuteAssertion)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = UNNotificationSourceMuteAssertion;
  v5 = [(UNNotificationMuteAssertion *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"expirationDate"];
    expirationDate = v5->_expirationDate;
    v5->_expirationDate = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = UNNotificationSourceMuteAssertion;
  v4 = a3;
  [(UNNotificationMuteAssertion *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_expirationDate forKey:{@"expirationDate", v5.receiver, v5.super_class}];
}

@end