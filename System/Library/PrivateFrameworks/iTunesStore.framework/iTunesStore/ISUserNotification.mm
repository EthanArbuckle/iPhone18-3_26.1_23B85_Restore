@interface ISUserNotification
- (ISUserNotification)init;
- (ISUserNotification)initWithDictionary:(id)dictionary options:(unint64_t)options;
- (NSDictionary)dictionary;
- (__CFUserNotification)copyUserNotification;
- (void)dealloc;
@end

@implementation ISUserNotification

- (ISUserNotification)init
{
  v3.receiver = self;
  v3.super_class = ISUserNotification;
  result = [(ISUserNotification *)&v3 init];
  if (result)
  {
    result->_allowedRetryCount = 3;
  }

  return result;
}

- (ISUserNotification)initWithDictionary:(id)dictionary options:(unint64_t)options
{
  v6 = [(ISUserNotification *)self init];
  if (v6)
  {
    v6->_dictionary = [dictionary copy];
    v6->_optionFlags = options;
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = ISUserNotification;
  [(ISUserNotification *)&v3 dealloc];
}

- (__CFUserNotification)copyUserNotification
{
  error = 0;
  result = CFUserNotificationCreate(0, 0.0, self->_optionFlags, &error, self->_dictionary);
  if (result)
  {
    v3 = error == 0;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    CFRelease(result);
    return 0;
  }

  return result;
}

- (NSDictionary)dictionary
{
  v2 = self->_dictionary;

  return v2;
}

@end