@interface REMListCalDAVNotificationContext
- (NSArray)calDAVNotifications;
- (REMListCalDAVNotificationContext)initWithList:(id)a3;
@end

@implementation REMListCalDAVNotificationContext

- (REMListCalDAVNotificationContext)initWithList:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = REMListCalDAVNotificationContext;
  v6 = [(REMListCalDAVNotificationContext *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_list, a3);
  }

  return v7;
}

- (NSArray)calDAVNotifications
{
  v2 = [(REMListCalDAVNotificationContext *)self list];
  v3 = [v2 calDAVNotifications];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  v6 = v5;

  return v5;
}

@end