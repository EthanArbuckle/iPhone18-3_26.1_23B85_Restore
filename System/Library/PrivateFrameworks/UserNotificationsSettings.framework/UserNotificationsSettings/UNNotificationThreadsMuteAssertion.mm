@interface UNNotificationThreadsMuteAssertion
+ (id)threadsMuteAssertionWithExpirationDateByThreadID:(id)d;
- (BOOL)isActiveForThreadIdentifier:(id)identifier currentDate:(id)date;
- (UNNotificationThreadsMuteAssertion)initWithCoder:(id)coder;
- (UNNotificationThreadsMuteAssertion)initWithExpirationDateByThreadID:(id)d;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UNNotificationThreadsMuteAssertion

- (UNNotificationThreadsMuteAssertion)initWithExpirationDateByThreadID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = UNNotificationThreadsMuteAssertion;
  _init = [(UNNotificationMuteAssertion *)&v9 _init];
  if (_init)
  {
    v6 = [dCopy copy];
    expirationDateByThreadID = _init->_expirationDateByThreadID;
    _init->_expirationDateByThreadID = v6;
  }

  return _init;
}

+ (id)threadsMuteAssertionWithExpirationDateByThreadID:(id)d
{
  dCopy = d;
  v5 = [[self alloc] initWithExpirationDateByThreadID:dCopy];

  return v5;
}

- (BOOL)isActiveForThreadIdentifier:(id)identifier currentDate:(id)date
{
  identifierCopy = identifier;
  dateCopy = date;
  if ([identifierCopy length])
  {
    v8 = [(NSDictionary *)self->_expirationDateByThreadID objectForKey:identifierCopy];
    if (v8)
    {
      if (dateCopy)
      {
        v9 = dateCopy;
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

- (UNNotificationThreadsMuteAssertion)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = UNNotificationThreadsMuteAssertion;
  v5 = [(UNNotificationMuteAssertion *)&v13 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"threadID"];
    expirationDateByThreadID = v5->_expirationDateByThreadID;
    v5->_expirationDateByThreadID = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = UNNotificationThreadsMuteAssertion;
  coderCopy = coder;
  [(UNNotificationMuteAssertion *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_expirationDateByThreadID forKey:{@"threadID", v5.receiver, v5.super_class}];
}

@end