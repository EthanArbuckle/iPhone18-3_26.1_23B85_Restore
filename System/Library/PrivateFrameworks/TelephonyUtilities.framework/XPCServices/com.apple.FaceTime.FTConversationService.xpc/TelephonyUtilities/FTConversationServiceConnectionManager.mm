@interface FTConversationServiceConnectionManager
- (FTConversationServiceConnectionManager)initWithDataSource:(id)source;
- (void)addConnection:(id)connection;
- (void)addConversationLinkDescriptors:(id)descriptors reply:(id)reply;
- (void)addOrUpdateConversationLinkDescriptors:(id)descriptors reply:(id)reply;
- (void)conversationLinkDescriptorCountWithPredicate:(id)predicate reply:(id)reply;
- (void)conversationLinkDescriptorsWithPredicate:(id)predicate limit:(unint64_t)limit offset:(unint64_t)offset reply:(id)reply;
- (void)integerForKey:(id)key reply:(id)reply;
- (void)removeConnection:(id)connection;
- (void)removeConversationLinkDescriptorsWithPredicate:(id)predicate deleteReason:(int64_t)reason reply:(id)reply;
- (void)removeLinkDescriptorsFromDataSourceWithPredicate:(id)predicate reply:(id)reply;
- (void)setExpirationDate:(id)date withRevision:(int64_t)revision forConversationLinkDescriptorsWithPredicate:(id)predicate reply:(id)reply;
- (void)setInteger:(int64_t)integer forKey:(id)key reply:(id)reply;
- (void)setInvitedHandles:(id)handles withRevision:(int64_t)revision forConversationLinkDescriptorsWithPredicate:(id)predicate reply:(id)reply;
- (void)setName:(id)name withRevision:(int64_t)revision forConversationLinkDescriptorsWithPredicate:(id)predicate reply:(id)reply;
- (void)setString:(id)string forKey:(id)key reply:(id)reply;
- (void)stringForKey:(id)key reply:(id)reply;
@end

@implementation FTConversationServiceConnectionManager

- (FTConversationServiceConnectionManager)initWithDataSource:(id)source
{
  sourceCopy = source;
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

    objc_storeStrong(&v7->_dataSource, source);
  }

  return v7;
}

- (void)addConnection:(id)connection
{
  connectionCopy = connection;
  os_unfair_lock_lock(&self->_accessorLock);
  [connectionCopy setDelegate:self];
  connections = [(FTConversationServiceConnectionManager *)self connections];
  [connections addObject:connectionCopy];

  dataSource = [(FTConversationServiceConnectionManager *)self dataSource];
  queue = [connectionCopy queue];
  [dataSource addDelegate:connectionCopy queue:queue];

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)removeConnection:(id)connection
{
  connectionCopy = connection;
  os_unfair_lock_lock(&self->_accessorLock);
  delegate = [connectionCopy delegate];

  if (delegate == self)
  {
    [connectionCopy setDelegate:0];
  }

  connections = [(FTConversationServiceConnectionManager *)self connections];
  [connections removeObject:connectionCopy];

  dataSource = [(FTConversationServiceConnectionManager *)self dataSource];
  [dataSource removeDelegate:connectionCopy];

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)addConversationLinkDescriptors:(id)descriptors reply:(id)reply
{
  replyCopy = reply;
  descriptorsCopy = descriptors;
  dataSource = [(FTConversationServiceConnectionManager *)self dataSource];
  v13 = 0;
  v9 = [dataSource addConversationLinkDescriptors:descriptorsCopy error:&v13];

  v10 = v13;
  if ((v9 & 1) == 0 && v10)
  {
    v11 = FTCServiceLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10000C818();
    }
  }

  conversationServiceDataSourceError = [v10 conversationServiceDataSourceError];
  replyCopy[2](replyCopy, v9, conversationServiceDataSourceError);
}

- (void)addOrUpdateConversationLinkDescriptors:(id)descriptors reply:(id)reply
{
  replyCopy = reply;
  descriptorsCopy = descriptors;
  dataSource = [(FTConversationServiceConnectionManager *)self dataSource];
  v13 = 0;
  v9 = [dataSource addOrUpdateConversationLinkDescriptors:descriptorsCopy error:&v13];

  v10 = v13;
  if ((v9 & 1) == 0 && v10)
  {
    v11 = FTCServiceLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10000C880();
    }
  }

  conversationServiceDataSourceError = [v10 conversationServiceDataSourceError];
  replyCopy[2](replyCopy, v9, conversationServiceDataSourceError);
}

- (void)conversationLinkDescriptorCountWithPredicate:(id)predicate reply:(id)reply
{
  replyCopy = reply;
  predicateCopy = predicate;
  dataSource = [(FTConversationServiceConnectionManager *)self dataSource];
  v13 = 0;
  v9 = [dataSource conversationLinkDescriptorCountWithPredicate:predicateCopy error:&v13];

  v10 = v13;
  if (!v9 && v10)
  {
    v11 = FTCServiceLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10000C8E8();
    }
  }

  conversationServiceDataSourceError = [v10 conversationServiceDataSourceError];
  replyCopy[2](replyCopy, v9, conversationServiceDataSourceError);
}

- (void)conversationLinkDescriptorsWithPredicate:(id)predicate limit:(unint64_t)limit offset:(unint64_t)offset reply:(id)reply
{
  replyCopy = reply;
  predicateCopy = predicate;
  dataSource = [(FTConversationServiceConnectionManager *)self dataSource];
  v17 = 0;
  v13 = [dataSource conversationLinkDescriptorsWithPredicate:predicateCopy limit:limit offset:offset error:&v17];

  v14 = v17;
  if (!v13 && v14)
  {
    v15 = FTCServiceLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_10000C950();
    }
  }

  conversationServiceDataSourceError = [v14 conversationServiceDataSourceError];
  replyCopy[2](replyCopy, v13, conversationServiceDataSourceError);
}

- (void)removeConversationLinkDescriptorsWithPredicate:(id)predicate deleteReason:(int64_t)reason reply:(id)reply
{
  replyCopy = reply;
  predicateCopy = predicate;
  dataSource = [(FTConversationServiceConnectionManager *)self dataSource];
  v15 = 0;
  v11 = [dataSource removeConversationLinkDescriptorsWithPredicate:predicateCopy deleteReason:reason error:&v15];

  v12 = v15;
  if (!v11 && v12)
  {
    v13 = FTCServiceLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10000C9B8();
    }
  }

  conversationServiceDataSourceError = [v12 conversationServiceDataSourceError];
  replyCopy[2](replyCopy, v11, conversationServiceDataSourceError);
}

- (void)removeLinkDescriptorsFromDataSourceWithPredicate:(id)predicate reply:(id)reply
{
  replyCopy = reply;
  predicateCopy = predicate;
  dataSource = [(FTConversationServiceConnectionManager *)self dataSource];
  v13 = 0;
  v9 = [dataSource removeLinkDescriptorsFromDataSourceWithPredicate:predicateCopy error:&v13];

  v10 = v13;
  if (!v9 && v10)
  {
    v11 = FTCServiceLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10000CA20();
    }
  }

  conversationServiceDataSourceError = [v10 conversationServiceDataSourceError];
  replyCopy[2](replyCopy, v9, conversationServiceDataSourceError);
}

- (void)setExpirationDate:(id)date withRevision:(int64_t)revision forConversationLinkDescriptorsWithPredicate:(id)predicate reply:(id)reply
{
  replyCopy = reply;
  predicateCopy = predicate;
  dateCopy = date;
  dataSource = [(FTConversationServiceConnectionManager *)self dataSource];
  v18 = 0;
  v14 = [dataSource setExpirationDate:dateCopy withRevision:revision forConversationLinkDescriptorsWithPredicate:predicateCopy error:&v18];

  v15 = v18;
  if (!v14 && v15)
  {
    v16 = FTCServiceLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_10000CA88();
    }
  }

  conversationServiceDataSourceError = [v15 conversationServiceDataSourceError];
  replyCopy[2](replyCopy, v14, conversationServiceDataSourceError);
}

- (void)setInvitedHandles:(id)handles withRevision:(int64_t)revision forConversationLinkDescriptorsWithPredicate:(id)predicate reply:(id)reply
{
  replyCopy = reply;
  predicateCopy = predicate;
  handlesCopy = handles;
  dataSource = [(FTConversationServiceConnectionManager *)self dataSource];
  v18 = 0;
  v14 = [dataSource setInvitedHandles:handlesCopy withRevision:revision forConversationLinkDescriptorsWithPredicate:predicateCopy error:&v18];

  v15 = v18;
  if (!v14 && v15)
  {
    v16 = FTCServiceLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_10000CA88();
    }
  }

  conversationServiceDataSourceError = [v15 conversationServiceDataSourceError];
  replyCopy[2](replyCopy, v14, conversationServiceDataSourceError);
}

- (void)setName:(id)name withRevision:(int64_t)revision forConversationLinkDescriptorsWithPredicate:(id)predicate reply:(id)reply
{
  replyCopy = reply;
  predicateCopy = predicate;
  nameCopy = name;
  dataSource = [(FTConversationServiceConnectionManager *)self dataSource];
  v18 = 0;
  v14 = [dataSource setName:nameCopy withRevision:revision forConversationLinkDescriptorsWithPredicate:predicateCopy error:&v18];

  v15 = v18;
  if (!v14 && v15)
  {
    v16 = FTCServiceLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_10000CA88();
    }
  }

  conversationServiceDataSourceError = [v15 conversationServiceDataSourceError];
  replyCopy[2](replyCopy, v14, conversationServiceDataSourceError);
}

- (void)setInteger:(int64_t)integer forKey:(id)key reply:(id)reply
{
  replyCopy = reply;
  keyCopy = key;
  dataSource = [(FTConversationServiceConnectionManager *)self dataSource];
  v15 = 0;
  v11 = [dataSource setInteger:integer forKey:keyCopy error:&v15];

  v12 = v15;
  if ((v11 & 1) == 0 && v12)
  {
    v13 = FTCServiceLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10000CAF0();
    }
  }

  conversationServiceDataSourceError = [v12 conversationServiceDataSourceError];
  replyCopy[2](replyCopy, v11, conversationServiceDataSourceError);
}

- (void)integerForKey:(id)key reply:(id)reply
{
  replyCopy = reply;
  keyCopy = key;
  dataSource = [(FTConversationServiceConnectionManager *)self dataSource];
  v13 = 0;
  v9 = [dataSource integerForKey:keyCopy error:&v13];

  v10 = v13;
  if (!v9 && v10)
  {
    v11 = FTCServiceLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10000CAF0();
    }
  }

  conversationServiceDataSourceError = [v10 conversationServiceDataSourceError];
  replyCopy[2](replyCopy, v9, conversationServiceDataSourceError);
}

- (void)setString:(id)string forKey:(id)key reply:(id)reply
{
  replyCopy = reply;
  keyCopy = key;
  stringCopy = string;
  dataSource = [(FTConversationServiceConnectionManager *)self dataSource];
  v16 = 0;
  v12 = [dataSource setString:stringCopy forKey:keyCopy error:&v16];

  v13 = v16;
  if ((v12 & 1) == 0 && v13)
  {
    v14 = FTCServiceLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10000CB58();
    }
  }

  conversationServiceDataSourceError = [v13 conversationServiceDataSourceError];
  replyCopy[2](replyCopy, v12, conversationServiceDataSourceError);
}

- (void)stringForKey:(id)key reply:(id)reply
{
  replyCopy = reply;
  keyCopy = key;
  dataSource = [(FTConversationServiceConnectionManager *)self dataSource];
  v13 = 0;
  v9 = [dataSource stringForKey:keyCopy error:&v13];

  v10 = v13;
  if (!v9 && v10)
  {
    v11 = FTCServiceLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10000CAF0();
    }
  }

  conversationServiceDataSourceError = [v10 conversationServiceDataSourceError];
  replyCopy[2](replyCopy, v9, conversationServiceDataSourceError);
}

@end