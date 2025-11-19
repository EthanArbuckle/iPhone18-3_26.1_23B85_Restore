@interface UNNotificationThreadsMuteAssertion
+ (id)threadsMuteAssertionWithExpirationDateByThreadID:(id)a3;
- (BOOL)isActiveForThreadIdentifier:(id)a3 currentDate:(id)a4;
- (UNNotificationThreadsMuteAssertion)initWithCoder:(id)a3;
- (UNNotificationThreadsMuteAssertion)initWithExpirationDateByThreadID:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UNNotificationThreadsMuteAssertion

- (UNNotificationThreadsMuteAssertion)initWithExpirationDateByThreadID:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = UNNotificationThreadsMuteAssertion;
  v5 = [(UNNotificationMuteAssertion *)&v9 _init];
  if (v5)
  {
    v6 = [v4 copy];
    expirationDateByThreadID = v5->_expirationDateByThreadID;
    v5->_expirationDateByThreadID = v6;
  }

  return v5;
}

+ (id)threadsMuteAssertionWithExpirationDateByThreadID:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithExpirationDateByThreadID:v4];

  return v5;
}

- (BOOL)isActiveForThreadIdentifier:(id)a3 currentDate:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 length])
  {
    v8 = [(NSDictionary *)self->_expirationDateByThreadID objectForKey:v6];
    if (v8)
    {
      if (v7)
      {
        v9 = v7;
      }

      else
      {
        v9 = [MEMORY[0x277CBEAA8] now];
      }

      v11 = v9;
      v10 = [v8 compare:v9] == 1;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (UNNotificationThreadsMuteAssertion)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = UNNotificationThreadsMuteAssertion;
  v5 = [(UNNotificationMuteAssertion *)&v13 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"threadID"];
    expirationDateByThreadID = v5->_expirationDateByThreadID;
    v5->_expirationDateByThreadID = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = UNNotificationThreadsMuteAssertion;
  v4 = a3;
  [(UNNotificationMuteAssertion *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_expirationDateByThreadID forKey:{@"threadID", v5.receiver, v5.super_class}];
}

@end