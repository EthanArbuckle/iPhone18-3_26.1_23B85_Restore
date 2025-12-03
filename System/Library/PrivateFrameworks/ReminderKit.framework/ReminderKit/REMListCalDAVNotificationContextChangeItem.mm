@interface REMListCalDAVNotificationContextChangeItem
- (NSArray)calDAVNotifications;
- (REMListCalDAVNotificationContextChangeItem)initWithListChangeItem:(id)item;
- (id)addCalDAVNotificationWithUUIDString:(id)string hostURL:(id)l externalIdentifier:(id)identifier externalModificationTag:(id)tag;
- (void)_addCalDAVNotification:(id)notification;
- (void)clearCalDAVNotifications;
- (void)removeCalDAVNotication:(id)notication;
- (void)updateCalDAVNotification:(id)notification withBlock:(id)block;
@end

@implementation REMListCalDAVNotificationContextChangeItem

- (REMListCalDAVNotificationContextChangeItem)initWithListChangeItem:(id)item
{
  itemCopy = item;
  v9.receiver = self;
  v9.super_class = REMListCalDAVNotificationContextChangeItem;
  v6 = [(REMListCalDAVNotificationContextChangeItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_listChangeItem, item);
  }

  return v7;
}

- (NSArray)calDAVNotifications
{
  listChangeItem = [(REMListCalDAVNotificationContextChangeItem *)self listChangeItem];
  calDAVNotifications = [listChangeItem calDAVNotifications];
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

- (id)addCalDAVNotificationWithUUIDString:(id)string hostURL:(id)l externalIdentifier:(id)identifier externalModificationTag:(id)tag
{
  tagCopy = tag;
  identifierCopy = identifier;
  lCopy = l;
  stringCopy = string;
  v14 = +[REMCalDAVNotification newObjectID];
  v15 = [REMCalDAVNotification alloc];
  selfCopy = self;
  selfCopy2 = self;
  listChangeItem = [(REMListCalDAVNotificationContextChangeItem *)self listChangeItem];
  accountID = [listChangeItem accountID];
  listChangeItem2 = [(REMListCalDAVNotificationContextChangeItem *)selfCopy listChangeItem];
  objectID = [listChangeItem2 objectID];
  v21 = [(REMCalDAVNotification *)v15 initCalDAVNotificationWithObjectID:v14 accountID:accountID listID:objectID uuidString:stringCopy hostURL:lCopy externalIdentifier:identifierCopy externalModificationTag:tagCopy];

  [(REMListCalDAVNotificationContextChangeItem *)selfCopy2 _addCalDAVNotification:v21];

  return v21;
}

- (void)_addCalDAVNotification:(id)notification
{
  v16 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  v5 = +[REMLogStore write];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    listChangeItem = [(REMListCalDAVNotificationContextChangeItem *)self listChangeItem];
    v12 = 138412546;
    v13 = listChangeItem;
    v14 = 2112;
    v15 = notificationCopy;
    _os_log_impl(&dword_19A0DB000, v5, OS_LOG_TYPE_INFO, "Adding calDAVNotification {listChangeItem: %@, calDAVNotification: %@}", &v12, 0x16u);
  }

  listChangeItem2 = [(REMListCalDAVNotificationContextChangeItem *)self listChangeItem];
  calDAVNotifications = [listChangeItem2 calDAVNotifications];
  v9 = [calDAVNotifications mutableCopy];

  if (!v9)
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  [v9 addObject:notificationCopy];
  listChangeItem3 = [(REMListCalDAVNotificationContextChangeItem *)self listChangeItem];
  [listChangeItem3 setCalDAVNotifications:v9];

  v11 = *MEMORY[0x1E69E9840];
}

- (void)removeCalDAVNotication:(id)notication
{
  v16 = *MEMORY[0x1E69E9840];
  noticationCopy = notication;
  listChangeItem = [(REMListCalDAVNotificationContextChangeItem *)self listChangeItem];
  calDAVNotifications = [listChangeItem calDAVNotifications];
  v7 = [calDAVNotifications mutableCopy];

  LODWORD(calDAVNotifications) = [v7 containsObject:noticationCopy];
  v8 = +[REMLogStore write];
  listChangeItem3 = v8;
  if (calDAVNotifications)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      listChangeItem2 = [(REMListCalDAVNotificationContextChangeItem *)self listChangeItem];
      v12 = 138412546;
      v13 = listChangeItem2;
      v14 = 2112;
      v15 = noticationCopy;
      _os_log_impl(&dword_19A0DB000, listChangeItem3, OS_LOG_TYPE_INFO, "Removing calDAVNotification {listChangeItem: %@, calDAVNotification: %@}", &v12, 0x16u);
    }

    [v7 removeObject:noticationCopy];
    listChangeItem3 = [(REMListCalDAVNotificationContextChangeItem *)self listChangeItem];
    [listChangeItem3 setCalDAVNotifications:v7];
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [REMListCalDAVNotificationContextChangeItem removeCalDAVNotication:];
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)clearCalDAVNotifications
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = +[REMLogStore write];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    listChangeItem = [(REMListCalDAVNotificationContextChangeItem *)self listChangeItem];
    v7 = 138412290;
    v8 = listChangeItem;
    _os_log_impl(&dword_19A0DB000, v3, OS_LOG_TYPE_INFO, "Removing all calDAVNotifications {listChangeItem: %@}", &v7, 0xCu);
  }

  listChangeItem2 = [(REMListCalDAVNotificationContextChangeItem *)self listChangeItem];
  [listChangeItem2 setCalDAVNotifications:MEMORY[0x1E695E0F0]];

  v6 = *MEMORY[0x1E69E9840];
}

- (void)updateCalDAVNotification:(id)notification withBlock:(id)block
{
  v22 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  blockCopy = block;
  listChangeItem = [(REMListCalDAVNotificationContextChangeItem *)self listChangeItem];
  calDAVNotifications = [listChangeItem calDAVNotifications];

  v10 = [calDAVNotifications indexOfObject:notificationCopy];
  if (!calDAVNotifications || (v11 = v10, v10 == 0x7FFFFFFFFFFFFFFFLL))
  {
    v12 = +[REMLogStore write];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [REMListCalDAVNotificationContextChangeItem updateCalDAVNotification:withBlock:];
    }
  }

  else
  {
    v12 = [calDAVNotifications objectAtIndexedSubscript:v10];
    v13 = +[REMLogStore write];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      listChangeItem2 = [(REMListCalDAVNotificationContextChangeItem *)self listChangeItem];
      v18 = 138412546;
      v19 = listChangeItem2;
      v20 = 2112;
      v21 = notificationCopy;
      _os_log_impl(&dword_19A0DB000, v13, OS_LOG_TYPE_INFO, "Updating calDAVNotification {listChangeItem: %@, calDAVNotification: %@}", &v18, 0x16u);
    }

    blockCopy[2](blockCopy, v12);
    listChangeItem3 = [(REMListCalDAVNotificationContextChangeItem *)self listChangeItem];
    changedKeysObserver = [listChangeItem3 changedKeysObserver];
    [changedKeysObserver keyDidChange:@"calDAVNotifications"];
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)removeCalDAVNotication:.cold.1()
{
  OUTLINED_FUNCTION_4();
  v8 = *MEMORY[0x1E69E9840];
  v1 = [v0 listChangeItem];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)updateCalDAVNotification:withBlock:.cold.1()
{
  OUTLINED_FUNCTION_4();
  v8 = *MEMORY[0x1E69E9840];
  v1 = [v0 listChangeItem];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

@end