@interface FTConversationServiceConnection
- (FTConversationServiceConnection)initWithConnection:(id)connection queue:(id)queue;
- (FTConversationServiceConnectionDelegate)delegate;
- (NSSet)entitlements;
- (void)addConversationLinkDescriptors:(id)descriptors reply:(id)reply;
- (void)addOrUpdateConversationLinkDescriptors:(id)descriptors reply:(id)reply;
- (void)conversationLinkDescriptorCountWithPredicate:(id)predicate reply:(id)reply;
- (void)conversationLinkDescriptorDidChangeForPersistentDataSource:(id)source;
- (void)conversationLinkDescriptorsWithPredicate:(id)predicate limit:(unint64_t)limit offset:(unint64_t)offset reply:(id)reply;
- (void)dealloc;
- (void)integerForKey:(id)key reply:(id)reply;
- (void)invalidate;
- (void)removeConversationLinkDescriptorsWithPredicate:(id)predicate deleteReason:(int64_t)reason reply:(id)reply;
- (void)removeLinkDescriptorsFromDataSourceWithPredicate:(id)predicate reply:(id)reply;
- (void)setDelegate:(id)delegate;
- (void)setExpirationDate:(id)date withRevision:(int64_t)revision forConversationLinkDescriptorsWithPredicate:(id)predicate reply:(id)reply;
- (void)setInteger:(int64_t)integer forKey:(id)key reply:(id)reply;
- (void)setInvitedHandles:(id)handles withRevision:(int64_t)revision forConversationLinkDescriptorsWithPredicate:(id)predicate reply:(id)reply;
- (void)setName:(id)name withRevision:(int64_t)revision forConversationLinkDescriptorsWithPredicate:(id)predicate reply:(id)reply;
- (void)setString:(id)string forKey:(id)key reply:(id)reply;
- (void)stringForKey:(id)key reply:(id)reply;
@end

@implementation FTConversationServiceConnection

- (NSSet)entitlements
{
  os_unfair_lock_lock(&self->_accessorLock);
  connection = [(FTConversationServiceConnection *)self connection];
  conversationServiceEntitlements = [connection conversationServiceEntitlements];

  os_unfair_lock_unlock(&self->_accessorLock);

  return conversationServiceEntitlements;
}

- (FTConversationServiceConnectionDelegate)delegate
{
  os_unfair_lock_lock(&self->_accessorLock);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  os_unfair_lock_unlock(&self->_accessorLock);

  return WeakRetained;
}

- (FTConversationServiceConnection)initWithConnection:(id)connection queue:(id)queue
{
  connectionCopy = connection;
  queueCopy = queue;
  v19.receiver = self;
  v19.super_class = FTConversationServiceConnection;
  v9 = [(FTConversationServiceConnection *)&v19 init];
  v10 = v9;
  if (v9)
  {
    v9->_accessorLock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v9->_queue, queue);
    objc_storeStrong(&v10->_connection, connection);
    [(NSXPCConnection *)v10->_connection setExportedObject:v10];
    v11 = +[TUConversationLinkDescriptorXPCClientDataSource serverXPCInterface];
    [(NSXPCConnection *)v10->_connection setExportedInterface:v11];

    v12 = +[TUConversationLinkDescriptorXPCClientDataSource clientXPCInterface];
    [(NSXPCConnection *)v10->_connection setRemoteObjectInterface:v12];

    objc_initWeak(&location, v10);
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000091EC;
    v16[3] = &unk_100018738;
    objc_copyWeak(&v17, &location);
    [(NSXPCConnection *)v10->_connection setInterruptionHandler:v16];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000092A8;
    v14[3] = &unk_100018738;
    objc_copyWeak(&v15, &location);
    [(NSXPCConnection *)v10->_connection setInvalidationHandler:v14];
    [(NSXPCConnection *)v10->_connection _setQueue:queueCopy];
    [(NSXPCConnection *)v10->_connection resume];
    objc_destroyWeak(&v15);
    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  return v10;
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_connection invalidate];
  v3.receiver = self;
  v3.super_class = FTConversationServiceConnection;
  [(FTConversationServiceConnection *)&v3 dealloc];
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  os_unfair_lock_lock(&self->_accessorLock);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
  }

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)invalidate
{
  os_unfair_lock_lock(&self->_accessorLock);
  connection = [(FTConversationServiceConnection *)self connection];
  [connection invalidate];

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)conversationLinkDescriptorDidChangeForPersistentDataSource:(id)source
{
  connection = [(FTConversationServiceConnection *)self connection];
  remoteObjectProxy = [connection remoteObjectProxy];
  [remoteObjectProxy conversationLinkDescriptorsDidChange];
}

- (void)addConversationLinkDescriptors:(id)descriptors reply:(id)reply
{
  descriptorsCopy = descriptors;
  replyCopy = reply;
  entitlements = [(FTConversationServiceConnection *)self entitlements];
  v10 = [entitlements containsObject:@"modify-conversation-links"];

  if (v10)
  {
    delegate = [(FTConversationServiceConnection *)self delegate];
    [delegate addConversationLinkDescriptors:descriptorsCopy reply:replyCopy];
  }

  else
  {
    v12 = FTCServiceLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10000CE7C(a2);
    }

    delegate = [NSError errorWithDomain:@"com.apple.FaceTime.FTConversationService" code:1 userInfo:0];
    replyCopy[2](replyCopy, 0, delegate);
  }
}

- (void)addOrUpdateConversationLinkDescriptors:(id)descriptors reply:(id)reply
{
  descriptorsCopy = descriptors;
  replyCopy = reply;
  entitlements = [(FTConversationServiceConnection *)self entitlements];
  v10 = [entitlements containsObject:@"modify-conversation-links"];

  if (v10)
  {
    delegate = [(FTConversationServiceConnection *)self delegate];
    [delegate addOrUpdateConversationLinkDescriptors:descriptorsCopy reply:replyCopy];
  }

  else
  {
    v12 = FTCServiceLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10000CE7C(a2);
    }

    delegate = [NSError errorWithDomain:@"com.apple.FaceTime.FTConversationService" code:1 userInfo:0];
    replyCopy[2](replyCopy, 0, delegate);
  }
}

- (void)conversationLinkDescriptorCountWithPredicate:(id)predicate reply:(id)reply
{
  predicateCopy = predicate;
  replyCopy = reply;
  entitlements = [(FTConversationServiceConnection *)self entitlements];
  v10 = [entitlements containsObject:@"access-conversation-links"];

  if (v10)
  {
    delegate = [(FTConversationServiceConnection *)self delegate];
    [delegate conversationLinkDescriptorCountWithPredicate:predicateCopy reply:replyCopy];
  }

  else
  {
    v12 = FTCServiceLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10000CE7C(a2);
    }

    delegate = [NSError errorWithDomain:@"com.apple.FaceTime.FTConversationService" code:1 userInfo:0];
    replyCopy[2](replyCopy, 0x7FFFFFFFFFFFFFFFLL, delegate);
  }
}

- (void)conversationLinkDescriptorsWithPredicate:(id)predicate limit:(unint64_t)limit offset:(unint64_t)offset reply:(id)reply
{
  predicateCopy = predicate;
  replyCopy = reply;
  entitlements = [(FTConversationServiceConnection *)self entitlements];
  v14 = [entitlements containsObject:@"access-conversation-links"];

  if (v14)
  {
    delegate = [(FTConversationServiceConnection *)self delegate];
    [delegate conversationLinkDescriptorsWithPredicate:predicateCopy limit:limit offset:offset reply:replyCopy];
  }

  else
  {
    v16 = FTCServiceLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_10000CE7C(a2);
    }

    delegate = [NSError errorWithDomain:@"com.apple.FaceTime.FTConversationService" code:1 userInfo:0];
    replyCopy[2](replyCopy, 0, delegate);
  }
}

- (void)removeConversationLinkDescriptorsWithPredicate:(id)predicate deleteReason:(int64_t)reason reply:(id)reply
{
  reasonCopy = reason;
  predicateCopy = predicate;
  replyCopy = reply;
  entitlements = [(FTConversationServiceConnection *)self entitlements];
  v12 = [entitlements containsObject:@"modify-conversation-links"];

  if (v12)
  {
    delegate = [(FTConversationServiceConnection *)self delegate];
    [delegate removeConversationLinkDescriptorsWithPredicate:predicateCopy deleteReason:reasonCopy reply:replyCopy];
  }

  else
  {
    v14 = FTCServiceLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10000CE7C(a2);
    }

    delegate = [NSError errorWithDomain:@"com.apple.FaceTime.FTConversationService" code:1 userInfo:0];
    replyCopy[2](replyCopy, 0x7FFFFFFFFFFFFFFFLL, delegate);
  }
}

- (void)removeLinkDescriptorsFromDataSourceWithPredicate:(id)predicate reply:(id)reply
{
  predicateCopy = predicate;
  replyCopy = reply;
  entitlements = [(FTConversationServiceConnection *)self entitlements];
  v10 = [entitlements containsObject:@"modify-conversation-links"];

  if (v10)
  {
    delegate = [(FTConversationServiceConnection *)self delegate];
    [delegate removeLinkDescriptorsFromDataSourceWithPredicate:predicateCopy reply:replyCopy];
  }

  else
  {
    v12 = FTCServiceLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10000CE7C(a2);
    }

    delegate = [NSError errorWithDomain:@"com.apple.FaceTime.FTConversationService" code:1 userInfo:0];
    replyCopy[2](replyCopy, 0x7FFFFFFFFFFFFFFFLL, delegate);
  }
}

- (void)setExpirationDate:(id)date withRevision:(int64_t)revision forConversationLinkDescriptorsWithPredicate:(id)predicate reply:(id)reply
{
  dateCopy = date;
  predicateCopy = predicate;
  replyCopy = reply;
  entitlements = [(FTConversationServiceConnection *)self entitlements];
  v15 = [entitlements containsObject:@"modify-conversation-links"];

  if (v15)
  {
    delegate = [(FTConversationServiceConnection *)self delegate];
    [delegate setExpirationDate:dateCopy withRevision:revision forConversationLinkDescriptorsWithPredicate:predicateCopy reply:replyCopy];
  }

  else
  {
    v17 = FTCServiceLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_10000CE7C(a2);
    }

    delegate = [NSError errorWithDomain:@"com.apple.FaceTime.FTConversationService" code:1 userInfo:0];
    replyCopy[2](replyCopy, 0x7FFFFFFFFFFFFFFFLL, delegate);
  }
}

- (void)setInvitedHandles:(id)handles withRevision:(int64_t)revision forConversationLinkDescriptorsWithPredicate:(id)predicate reply:(id)reply
{
  handlesCopy = handles;
  predicateCopy = predicate;
  replyCopy = reply;
  entitlements = [(FTConversationServiceConnection *)self entitlements];
  v15 = [entitlements containsObject:@"modify-conversation-links"];

  if (v15)
  {
    delegate = [(FTConversationServiceConnection *)self delegate];
    [delegate setInvitedHandles:handlesCopy withRevision:revision forConversationLinkDescriptorsWithPredicate:predicateCopy reply:replyCopy];
  }

  else
  {
    v17 = FTCServiceLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_10000CE7C(a2);
    }

    delegate = [NSError errorWithDomain:@"com.apple.FaceTime.FTConversationService" code:1 userInfo:0];
    replyCopy[2](replyCopy, 0x7FFFFFFFFFFFFFFFLL, delegate);
  }
}

- (void)setName:(id)name withRevision:(int64_t)revision forConversationLinkDescriptorsWithPredicate:(id)predicate reply:(id)reply
{
  nameCopy = name;
  predicateCopy = predicate;
  replyCopy = reply;
  entitlements = [(FTConversationServiceConnection *)self entitlements];
  v15 = [entitlements containsObject:@"modify-conversation-links"];

  if (v15)
  {
    delegate = [(FTConversationServiceConnection *)self delegate];
    [delegate setName:nameCopy withRevision:revision forConversationLinkDescriptorsWithPredicate:predicateCopy reply:replyCopy];
  }

  else
  {
    v17 = FTCServiceLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_10000CE7C(a2);
    }

    delegate = [NSError errorWithDomain:@"com.apple.FaceTime.FTConversationService" code:1 userInfo:0];
    replyCopy[2](replyCopy, 0x7FFFFFFFFFFFFFFFLL, delegate);
  }
}

- (void)setInteger:(int64_t)integer forKey:(id)key reply:(id)reply
{
  keyCopy = key;
  replyCopy = reply;
  entitlements = [(FTConversationServiceConnection *)self entitlements];
  v12 = [entitlements containsObject:@"modify-conversation-links"];

  if (v12)
  {
    delegate = [(FTConversationServiceConnection *)self delegate];
    [delegate setInteger:integer forKey:keyCopy reply:replyCopy];
  }

  else
  {
    v14 = FTCServiceLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10000CE7C(a2);
    }

    delegate = [NSError errorWithDomain:@"com.apple.FaceTime.FTConversationService" code:1 userInfo:0];
    replyCopy[2](replyCopy, 1, delegate);
  }
}

- (void)integerForKey:(id)key reply:(id)reply
{
  keyCopy = key;
  replyCopy = reply;
  entitlements = [(FTConversationServiceConnection *)self entitlements];
  v10 = [entitlements containsObject:@"access-conversation-links"];

  if (v10)
  {
    delegate = [(FTConversationServiceConnection *)self delegate];
    [delegate integerForKey:keyCopy reply:replyCopy];
  }

  else
  {
    v12 = FTCServiceLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10000CE7C(a2);
    }

    delegate = [NSError errorWithDomain:@"com.apple.FaceTime.FTConversationService" code:1 userInfo:0];
    replyCopy[2](replyCopy, 0x7FFFFFFFFFFFFFFFLL, delegate);
  }
}

- (void)setString:(id)string forKey:(id)key reply:(id)reply
{
  stringCopy = string;
  keyCopy = key;
  replyCopy = reply;
  entitlements = [(FTConversationServiceConnection *)self entitlements];
  v13 = [entitlements containsObject:@"modify-conversation-links"];

  if (v13)
  {
    delegate = [(FTConversationServiceConnection *)self delegate];
    [delegate setString:stringCopy forKey:keyCopy reply:replyCopy];
  }

  else
  {
    v15 = FTCServiceLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_10000CE7C(a2);
    }

    delegate = [NSError errorWithDomain:@"com.apple.FaceTime.FTConversationService" code:1 userInfo:0];
    replyCopy[2](replyCopy, 1, delegate);
  }
}

- (void)stringForKey:(id)key reply:(id)reply
{
  keyCopy = key;
  replyCopy = reply;
  entitlements = [(FTConversationServiceConnection *)self entitlements];
  v10 = [entitlements containsObject:@"access-conversation-links"];

  if (v10)
  {
    delegate = [(FTConversationServiceConnection *)self delegate];
    [delegate stringForKey:keyCopy reply:replyCopy];
  }

  else
  {
    v12 = FTCServiceLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10000CE7C(a2);
    }

    delegate = [NSError errorWithDomain:@"com.apple.FaceTime.FTConversationService" code:1 userInfo:0];
    replyCopy[2](replyCopy, 0, delegate);
  }
}

@end