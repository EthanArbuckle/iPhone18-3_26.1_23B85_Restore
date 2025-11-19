@interface REMListCalDAVNotificationContextChangeItem
- (NSArray)calDAVNotifications;
- (REMListCalDAVNotificationContextChangeItem)initWithListChangeItem:(id)a3;
- (id)addCalDAVNotificationWithUUIDString:(id)a3 hostURL:(id)a4 externalIdentifier:(id)a5 externalModificationTag:(id)a6;
- (void)_addCalDAVNotification:(id)a3;
- (void)clearCalDAVNotifications;
- (void)removeCalDAVNotication:(id)a3;
- (void)updateCalDAVNotification:(id)a3 withBlock:(id)a4;
@end

@implementation REMListCalDAVNotificationContextChangeItem

- (REMListCalDAVNotificationContextChangeItem)initWithListChangeItem:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = REMListCalDAVNotificationContextChangeItem;
  v6 = [(REMListCalDAVNotificationContextChangeItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_listChangeItem, a3);
  }

  return v7;
}

- (NSArray)calDAVNotifications
{
  v2 = [(REMListCalDAVNotificationContextChangeItem *)self listChangeItem];
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

- (id)addCalDAVNotificationWithUUIDString:(id)a3 hostURL:(id)a4 externalIdentifier:(id)a5 externalModificationTag:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = +[REMCalDAVNotification newObjectID];
  v15 = [REMCalDAVNotification alloc];
  v16 = self;
  v23 = self;
  v17 = [(REMListCalDAVNotificationContextChangeItem *)self listChangeItem];
  v18 = [v17 accountID];
  v19 = [(REMListCalDAVNotificationContextChangeItem *)v16 listChangeItem];
  v20 = [v19 objectID];
  v21 = [(REMCalDAVNotification *)v15 initCalDAVNotificationWithObjectID:v14 accountID:v18 listID:v20 uuidString:v13 hostURL:v12 externalIdentifier:v11 externalModificationTag:v10];

  [(REMListCalDAVNotificationContextChangeItem *)v23 _addCalDAVNotification:v21];

  return v21;
}

- (void)_addCalDAVNotification:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[REMLogStore write];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [(REMListCalDAVNotificationContextChangeItem *)self listChangeItem];
    v12 = 138412546;
    v13 = v6;
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&dword_19A0DB000, v5, OS_LOG_TYPE_INFO, "Adding calDAVNotification {listChangeItem: %@, calDAVNotification: %@}", &v12, 0x16u);
  }

  v7 = [(REMListCalDAVNotificationContextChangeItem *)self listChangeItem];
  v8 = [v7 calDAVNotifications];
  v9 = [v8 mutableCopy];

  if (!v9)
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  [v9 addObject:v4];
  v10 = [(REMListCalDAVNotificationContextChangeItem *)self listChangeItem];
  [v10 setCalDAVNotifications:v9];

  v11 = *MEMORY[0x1E69E9840];
}

- (void)removeCalDAVNotication:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(REMListCalDAVNotificationContextChangeItem *)self listChangeItem];
  v6 = [v5 calDAVNotifications];
  v7 = [v6 mutableCopy];

  LODWORD(v6) = [v7 containsObject:v4];
  v8 = +[REMLogStore write];
  v9 = v8;
  if (v6)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v10 = [(REMListCalDAVNotificationContextChangeItem *)self listChangeItem];
      v12 = 138412546;
      v13 = v10;
      v14 = 2112;
      v15 = v4;
      _os_log_impl(&dword_19A0DB000, v9, OS_LOG_TYPE_INFO, "Removing calDAVNotification {listChangeItem: %@, calDAVNotification: %@}", &v12, 0x16u);
    }

    [v7 removeObject:v4];
    v9 = [(REMListCalDAVNotificationContextChangeItem *)self listChangeItem];
    [v9 setCalDAVNotifications:v7];
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
    v4 = [(REMListCalDAVNotificationContextChangeItem *)self listChangeItem];
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_19A0DB000, v3, OS_LOG_TYPE_INFO, "Removing all calDAVNotifications {listChangeItem: %@}", &v7, 0xCu);
  }

  v5 = [(REMListCalDAVNotificationContextChangeItem *)self listChangeItem];
  [v5 setCalDAVNotifications:MEMORY[0x1E695E0F0]];

  v6 = *MEMORY[0x1E69E9840];
}

- (void)updateCalDAVNotification:(id)a3 withBlock:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(REMListCalDAVNotificationContextChangeItem *)self listChangeItem];
  v9 = [v8 calDAVNotifications];

  v10 = [v9 indexOfObject:v6];
  if (!v9 || (v11 = v10, v10 == 0x7FFFFFFFFFFFFFFFLL))
  {
    v12 = +[REMLogStore write];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [REMListCalDAVNotificationContextChangeItem updateCalDAVNotification:withBlock:];
    }
  }

  else
  {
    v12 = [v9 objectAtIndexedSubscript:v10];
    v13 = +[REMLogStore write];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = [(REMListCalDAVNotificationContextChangeItem *)self listChangeItem];
      v18 = 138412546;
      v19 = v14;
      v20 = 2112;
      v21 = v6;
      _os_log_impl(&dword_19A0DB000, v13, OS_LOG_TYPE_INFO, "Updating calDAVNotification {listChangeItem: %@, calDAVNotification: %@}", &v18, 0x16u);
    }

    v7[2](v7, v12);
    v15 = [(REMListCalDAVNotificationContextChangeItem *)self listChangeItem];
    v16 = [v15 changedKeysObserver];
    [v16 keyDidChange:@"calDAVNotifications"];
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