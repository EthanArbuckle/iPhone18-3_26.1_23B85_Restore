@interface FTConversationServiceConnectionManager
- (FTConversationServiceConnectionManager)initWithDataSource:(id)a3;
- (void)addConnection:(id)a3;
- (void)addConversationLinkDescriptors:(id)a3 reply:(id)a4;
- (void)addOrUpdateConversationLinkDescriptors:(id)a3 reply:(id)a4;
- (void)conversationLinkDescriptorCountWithPredicate:(id)a3 reply:(id)a4;
- (void)conversationLinkDescriptorsWithPredicate:(id)a3 limit:(unint64_t)a4 offset:(unint64_t)a5 reply:(id)a6;
- (void)integerForKey:(id)a3 reply:(id)a4;
- (void)removeConnection:(id)a3;
- (void)removeConversationLinkDescriptorsWithPredicate:(id)a3 deleteReason:(int64_t)a4 reply:(id)a5;
- (void)removeLinkDescriptorsFromDataSourceWithPredicate:(id)a3 reply:(id)a4;
- (void)setExpirationDate:(id)a3 withRevision:(int64_t)a4 forConversationLinkDescriptorsWithPredicate:(id)a5 reply:(id)a6;
- (void)setInteger:(int64_t)a3 forKey:(id)a4 reply:(id)a5;
- (void)setInvitedHandles:(id)a3 withRevision:(int64_t)a4 forConversationLinkDescriptorsWithPredicate:(id)a5 reply:(id)a6;
- (void)setName:(id)a3 withRevision:(int64_t)a4 forConversationLinkDescriptorsWithPredicate:(id)a5 reply:(id)a6;
- (void)setString:(id)a3 forKey:(id)a4 reply:(id)a5;
- (void)stringForKey:(id)a3 reply:(id)a4;
@end

@implementation FTConversationServiceConnectionManager

- (FTConversationServiceConnectionManager)initWithDataSource:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = FTConversationServiceConnectionManager;
  v6 = [(FTConversationServiceConnectionManager *)&v11 init];
  v7 = v6;
  if (v6)
  {
    v6->_accessorLock._os_unfair_lock_opaque = 0;
    v8 = objc_alloc_init(NSMutableSet);
    connections = v7->_connections;
    v7->_connections = v8;

    objc_storeStrong(&v7->_dataSource, a3);
  }

  return v7;
}

- (void)addConnection:(id)a3
{
  v7 = a3;
  os_unfair_lock_lock(&self->_accessorLock);
  [v7 setDelegate:self];
  v4 = [(FTConversationServiceConnectionManager *)self connections];
  [v4 addObject:v7];

  v5 = [(FTConversationServiceConnectionManager *)self dataSource];
  v6 = [v7 queue];
  [v5 addDelegate:v7 queue:v6];

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)removeConnection:(id)a3
{
  v7 = a3;
  os_unfair_lock_lock(&self->_accessorLock);
  v4 = [v7 delegate];

  if (v4 == self)
  {
    [v7 setDelegate:0];
  }

  v5 = [(FTConversationServiceConnectionManager *)self connections];
  [v5 removeObject:v7];

  v6 = [(FTConversationServiceConnectionManager *)self dataSource];
  [v6 removeDelegate:v7];

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)addConversationLinkDescriptors:(id)a3 reply:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(FTConversationServiceConnectionManager *)self dataSource];
  v13 = 0;
  v9 = [v8 addConversationLinkDescriptors:v7 error:&v13];

  v10 = v13;
  if ((v9 & 1) == 0 && v10)
  {
    v11 = FTCServiceLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10000C818();
    }
  }

  v12 = [v10 conversationServiceDataSourceError];
  v6[2](v6, v9, v12);
}

- (void)addOrUpdateConversationLinkDescriptors:(id)a3 reply:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(FTConversationServiceConnectionManager *)self dataSource];
  v13 = 0;
  v9 = [v8 addOrUpdateConversationLinkDescriptors:v7 error:&v13];

  v10 = v13;
  if ((v9 & 1) == 0 && v10)
  {
    v11 = FTCServiceLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10000C880();
    }
  }

  v12 = [v10 conversationServiceDataSourceError];
  v6[2](v6, v9, v12);
}

- (void)conversationLinkDescriptorCountWithPredicate:(id)a3 reply:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(FTConversationServiceConnectionManager *)self dataSource];
  v13 = 0;
  v9 = [v8 conversationLinkDescriptorCountWithPredicate:v7 error:&v13];

  v10 = v13;
  if (!v9 && v10)
  {
    v11 = FTCServiceLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10000C8E8();
    }
  }

  v12 = [v10 conversationServiceDataSourceError];
  v6[2](v6, v9, v12);
}

- (void)conversationLinkDescriptorsWithPredicate:(id)a3 limit:(unint64_t)a4 offset:(unint64_t)a5 reply:(id)a6
{
  v10 = a6;
  v11 = a3;
  v12 = [(FTConversationServiceConnectionManager *)self dataSource];
  v17 = 0;
  v13 = [v12 conversationLinkDescriptorsWithPredicate:v11 limit:a4 offset:a5 error:&v17];

  v14 = v17;
  if (!v13 && v14)
  {
    v15 = FTCServiceLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_10000C950();
    }
  }

  v16 = [v14 conversationServiceDataSourceError];
  v10[2](v10, v13, v16);
}

- (void)removeConversationLinkDescriptorsWithPredicate:(id)a3 deleteReason:(int64_t)a4 reply:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [(FTConversationServiceConnectionManager *)self dataSource];
  v15 = 0;
  v11 = [v10 removeConversationLinkDescriptorsWithPredicate:v9 deleteReason:a4 error:&v15];

  v12 = v15;
  if (!v11 && v12)
  {
    v13 = FTCServiceLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10000C9B8();
    }
  }

  v14 = [v12 conversationServiceDataSourceError];
  v8[2](v8, v11, v14);
}

- (void)removeLinkDescriptorsFromDataSourceWithPredicate:(id)a3 reply:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(FTConversationServiceConnectionManager *)self dataSource];
  v13 = 0;
  v9 = [v8 removeLinkDescriptorsFromDataSourceWithPredicate:v7 error:&v13];

  v10 = v13;
  if (!v9 && v10)
  {
    v11 = FTCServiceLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10000CA20();
    }
  }

  v12 = [v10 conversationServiceDataSourceError];
  v6[2](v6, v9, v12);
}

- (void)setExpirationDate:(id)a3 withRevision:(int64_t)a4 forConversationLinkDescriptorsWithPredicate:(id)a5 reply:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a3;
  v13 = [(FTConversationServiceConnectionManager *)self dataSource];
  v18 = 0;
  v14 = [v13 setExpirationDate:v12 withRevision:a4 forConversationLinkDescriptorsWithPredicate:v11 error:&v18];

  v15 = v18;
  if (!v14 && v15)
  {
    v16 = FTCServiceLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_10000CA88();
    }
  }

  v17 = [v15 conversationServiceDataSourceError];
  v10[2](v10, v14, v17);
}

- (void)setInvitedHandles:(id)a3 withRevision:(int64_t)a4 forConversationLinkDescriptorsWithPredicate:(id)a5 reply:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a3;
  v13 = [(FTConversationServiceConnectionManager *)self dataSource];
  v18 = 0;
  v14 = [v13 setInvitedHandles:v12 withRevision:a4 forConversationLinkDescriptorsWithPredicate:v11 error:&v18];

  v15 = v18;
  if (!v14 && v15)
  {
    v16 = FTCServiceLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_10000CA88();
    }
  }

  v17 = [v15 conversationServiceDataSourceError];
  v10[2](v10, v14, v17);
}

- (void)setName:(id)a3 withRevision:(int64_t)a4 forConversationLinkDescriptorsWithPredicate:(id)a5 reply:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a3;
  v13 = [(FTConversationServiceConnectionManager *)self dataSource];
  v18 = 0;
  v14 = [v13 setName:v12 withRevision:a4 forConversationLinkDescriptorsWithPredicate:v11 error:&v18];

  v15 = v18;
  if (!v14 && v15)
  {
    v16 = FTCServiceLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_10000CA88();
    }
  }

  v17 = [v15 conversationServiceDataSourceError];
  v10[2](v10, v14, v17);
}

- (void)setInteger:(int64_t)a3 forKey:(id)a4 reply:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [(FTConversationServiceConnectionManager *)self dataSource];
  v15 = 0;
  v11 = [v10 setInteger:a3 forKey:v9 error:&v15];

  v12 = v15;
  if ((v11 & 1) == 0 && v12)
  {
    v13 = FTCServiceLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10000CAF0();
    }
  }

  v14 = [v12 conversationServiceDataSourceError];
  v8[2](v8, v11, v14);
}

- (void)integerForKey:(id)a3 reply:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(FTConversationServiceConnectionManager *)self dataSource];
  v13 = 0;
  v9 = [v8 integerForKey:v7 error:&v13];

  v10 = v13;
  if (!v9 && v10)
  {
    v11 = FTCServiceLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10000CAF0();
    }
  }

  v12 = [v10 conversationServiceDataSourceError];
  v6[2](v6, v9, v12);
}

- (void)setString:(id)a3 forKey:(id)a4 reply:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(FTConversationServiceConnectionManager *)self dataSource];
  v16 = 0;
  v12 = [v11 setString:v10 forKey:v9 error:&v16];

  v13 = v16;
  if ((v12 & 1) == 0 && v13)
  {
    v14 = FTCServiceLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10000CB58();
    }
  }

  v15 = [v13 conversationServiceDataSourceError];
  v8[2](v8, v12, v15);
}

- (void)stringForKey:(id)a3 reply:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(FTConversationServiceConnectionManager *)self dataSource];
  v13 = 0;
  v9 = [v8 stringForKey:v7 error:&v13];

  v10 = v13;
  if (!v9 && v10)
  {
    v11 = FTCServiceLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10000CAF0();
    }
  }

  v12 = [v10 conversationServiceDataSourceError];
  v6[2](v6, v9, v12);
}

@end