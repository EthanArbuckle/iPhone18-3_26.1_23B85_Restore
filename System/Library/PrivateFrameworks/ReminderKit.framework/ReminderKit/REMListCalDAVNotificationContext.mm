@interface REMListCalDAVNotificationContext
- (NSArray)calDAVNotifications;
- (REMListCalDAVNotificationContext)initWithList:(id)list;
@end

@implementation REMListCalDAVNotificationContext

- (REMListCalDAVNotificationContext)initWithList:(id)list
{
  listCopy = list;
  v9.receiver = self;
  v9.super_class = REMListCalDAVNotificationContext;
  v6 = [(REMListCalDAVNotificationContext *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_list, list);
  }

  return v7;
}

- (NSArray)calDAVNotifications
{
  list = [(REMListCalDAVNotificationContext *)self list];
  calDAVNotifications = [list calDAVNotifications];
  v4 = calDAVNotifications;
  if (calDAVNotifications)
  {
    v5 = calDAVNotifications;
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  v6 = v5;

  return v5;
}

@end