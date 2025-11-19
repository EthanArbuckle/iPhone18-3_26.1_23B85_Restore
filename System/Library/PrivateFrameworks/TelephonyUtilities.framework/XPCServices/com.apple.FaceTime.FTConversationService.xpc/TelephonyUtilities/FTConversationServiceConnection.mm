@interface FTConversationServiceConnection
- (FTConversationServiceConnection)initWithConnection:(id)a3 queue:(id)a4;
- (FTConversationServiceConnectionDelegate)delegate;
- (NSSet)entitlements;
- (void)addConversationLinkDescriptors:(id)a3 reply:(id)a4;
- (void)addOrUpdateConversationLinkDescriptors:(id)a3 reply:(id)a4;
- (void)conversationLinkDescriptorCountWithPredicate:(id)a3 reply:(id)a4;
- (void)conversationLinkDescriptorDidChangeForPersistentDataSource:(id)a3;
- (void)conversationLinkDescriptorsWithPredicate:(id)a3 limit:(unint64_t)a4 offset:(unint64_t)a5 reply:(id)a6;
- (void)dealloc;
- (void)integerForKey:(id)a3 reply:(id)a4;
- (void)invalidate;
- (void)removeConversationLinkDescriptorsWithPredicate:(id)a3 deleteReason:(int64_t)a4 reply:(id)a5;
- (void)removeLinkDescriptorsFromDataSourceWithPredicate:(id)a3 reply:(id)a4;
- (void)setDelegate:(id)a3;
- (void)setExpirationDate:(id)a3 withRevision:(int64_t)a4 forConversationLinkDescriptorsWithPredicate:(id)a5 reply:(id)a6;
- (void)setInteger:(int64_t)a3 forKey:(id)a4 reply:(id)a5;
- (void)setInvitedHandles:(id)a3 withRevision:(int64_t)a4 forConversationLinkDescriptorsWithPredicate:(id)a5 reply:(id)a6;
- (void)setName:(id)a3 withRevision:(int64_t)a4 forConversationLinkDescriptorsWithPredicate:(id)a5 reply:(id)a6;
- (void)setString:(id)a3 forKey:(id)a4 reply:(id)a5;
- (void)stringForKey:(id)a3 reply:(id)a4;
@end

@implementation FTConversationServiceConnection

- (NSSet)entitlements
{
  os_unfair_lock_lock(&self->_accessorLock);
  v3 = [(FTConversationServiceConnection *)self connection];
  v4 = [v3 conversationServiceEntitlements];

  os_unfair_lock_unlock(&self->_accessorLock);

  return v4;
}

- (FTConversationServiceConnectionDelegate)delegate
{
  os_unfair_lock_lock(&self->_accessorLock);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  os_unfair_lock_unlock(&self->_accessorLock);

  return WeakRetained;
}

- (FTConversationServiceConnection)initWithConnection:(id)a3 queue:(id)a4
{
  v7 = a3;
  v8 = a4;
  v19.receiver = self;
  v19.super_class = FTConversationServiceConnection;
  v9 = [(FTConversationServiceConnection *)&v19 init];
  v10 = v9;
  if (v9)
  {
    v9->_accessorLock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v9->_queue, a4);
    objc_storeStrong(&v10->_connection, a3);
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
    [(NSXPCConnection *)v10->_connection _setQueue:v8];
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

- (void)setDelegate:(id)a3
{
  obj = a3;
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
  v3 = [(FTConversationServiceConnection *)self connection];
  [v3 invalidate];

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)conversationLinkDescriptorDidChangeForPersistentDataSource:(id)a3
{
  v4 = [(FTConversationServiceConnection *)self connection];
  v3 = [v4 remoteObjectProxy];
  [v3 conversationLinkDescriptorsDidChange];
}

- (void)addConversationLinkDescriptors:(id)a3 reply:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(FTConversationServiceConnection *)self entitlements];
  v10 = [v9 containsObject:@"modify-conversation-links"];

  if (v10)
  {
    v11 = [(FTConversationServiceConnection *)self delegate];
    [v11 addConversationLinkDescriptors:v7 reply:v8];
  }

  else
  {
    v12 = FTCServiceLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10000CE7C(a2);
    }

    v11 = [NSError errorWithDomain:@"com.apple.FaceTime.FTConversationService" code:1 userInfo:0];
    v8[2](v8, 0, v11);
  }
}

- (void)addOrUpdateConversationLinkDescriptors:(id)a3 reply:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(FTConversationServiceConnection *)self entitlements];
  v10 = [v9 containsObject:@"modify-conversation-links"];

  if (v10)
  {
    v11 = [(FTConversationServiceConnection *)self delegate];
    [v11 addOrUpdateConversationLinkDescriptors:v7 reply:v8];
  }

  else
  {
    v12 = FTCServiceLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10000CE7C(a2);
    }

    v11 = [NSError errorWithDomain:@"com.apple.FaceTime.FTConversationService" code:1 userInfo:0];
    v8[2](v8, 0, v11);
  }
}

- (void)conversationLinkDescriptorCountWithPredicate:(id)a3 reply:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(FTConversationServiceConnection *)self entitlements];
  v10 = [v9 containsObject:@"access-conversation-links"];

  if (v10)
  {
    v11 = [(FTConversationServiceConnection *)self delegate];
    [v11 conversationLinkDescriptorCountWithPredicate:v7 reply:v8];
  }

  else
  {
    v12 = FTCServiceLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10000CE7C(a2);
    }

    v11 = [NSError errorWithDomain:@"com.apple.FaceTime.FTConversationService" code:1 userInfo:0];
    v8[2](v8, 0x7FFFFFFFFFFFFFFFLL, v11);
  }
}

- (void)conversationLinkDescriptorsWithPredicate:(id)a3 limit:(unint64_t)a4 offset:(unint64_t)a5 reply:(id)a6
{
  v11 = a3;
  v12 = a6;
  v13 = [(FTConversationServiceConnection *)self entitlements];
  v14 = [v13 containsObject:@"access-conversation-links"];

  if (v14)
  {
    v15 = [(FTConversationServiceConnection *)self delegate];
    [v15 conversationLinkDescriptorsWithPredicate:v11 limit:a4 offset:a5 reply:v12];
  }

  else
  {
    v16 = FTCServiceLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_10000CE7C(a2);
    }

    v15 = [NSError errorWithDomain:@"com.apple.FaceTime.FTConversationService" code:1 userInfo:0];
    v12[2](v12, 0, v15);
  }
}

- (void)removeConversationLinkDescriptorsWithPredicate:(id)a3 deleteReason:(int64_t)a4 reply:(id)a5
{
  v6 = a4;
  v9 = a3;
  v10 = a5;
  v11 = [(FTConversationServiceConnection *)self entitlements];
  v12 = [v11 containsObject:@"modify-conversation-links"];

  if (v12)
  {
    v13 = [(FTConversationServiceConnection *)self delegate];
    [v13 removeConversationLinkDescriptorsWithPredicate:v9 deleteReason:v6 reply:v10];
  }

  else
  {
    v14 = FTCServiceLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10000CE7C(a2);
    }

    v13 = [NSError errorWithDomain:@"com.apple.FaceTime.FTConversationService" code:1 userInfo:0];
    v10[2](v10, 0x7FFFFFFFFFFFFFFFLL, v13);
  }
}

- (void)removeLinkDescriptorsFromDataSourceWithPredicate:(id)a3 reply:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(FTConversationServiceConnection *)self entitlements];
  v10 = [v9 containsObject:@"modify-conversation-links"];

  if (v10)
  {
    v11 = [(FTConversationServiceConnection *)self delegate];
    [v11 removeLinkDescriptorsFromDataSourceWithPredicate:v7 reply:v8];
  }

  else
  {
    v12 = FTCServiceLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10000CE7C(a2);
    }

    v11 = [NSError errorWithDomain:@"com.apple.FaceTime.FTConversationService" code:1 userInfo:0];
    v8[2](v8, 0x7FFFFFFFFFFFFFFFLL, v11);
  }
}

- (void)setExpirationDate:(id)a3 withRevision:(int64_t)a4 forConversationLinkDescriptorsWithPredicate:(id)a5 reply:(id)a6
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v14 = [(FTConversationServiceConnection *)self entitlements];
  v15 = [v14 containsObject:@"modify-conversation-links"];

  if (v15)
  {
    v16 = [(FTConversationServiceConnection *)self delegate];
    [v16 setExpirationDate:v11 withRevision:a4 forConversationLinkDescriptorsWithPredicate:v12 reply:v13];
  }

  else
  {
    v17 = FTCServiceLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_10000CE7C(a2);
    }

    v16 = [NSError errorWithDomain:@"com.apple.FaceTime.FTConversationService" code:1 userInfo:0];
    v13[2](v13, 0x7FFFFFFFFFFFFFFFLL, v16);
  }
}

- (void)setInvitedHandles:(id)a3 withRevision:(int64_t)a4 forConversationLinkDescriptorsWithPredicate:(id)a5 reply:(id)a6
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v14 = [(FTConversationServiceConnection *)self entitlements];
  v15 = [v14 containsObject:@"modify-conversation-links"];

  if (v15)
  {
    v16 = [(FTConversationServiceConnection *)self delegate];
    [v16 setInvitedHandles:v11 withRevision:a4 forConversationLinkDescriptorsWithPredicate:v12 reply:v13];
  }

  else
  {
    v17 = FTCServiceLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_10000CE7C(a2);
    }

    v16 = [NSError errorWithDomain:@"com.apple.FaceTime.FTConversationService" code:1 userInfo:0];
    v13[2](v13, 0x7FFFFFFFFFFFFFFFLL, v16);
  }
}

- (void)setName:(id)a3 withRevision:(int64_t)a4 forConversationLinkDescriptorsWithPredicate:(id)a5 reply:(id)a6
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v14 = [(FTConversationServiceConnection *)self entitlements];
  v15 = [v14 containsObject:@"modify-conversation-links"];

  if (v15)
  {
    v16 = [(FTConversationServiceConnection *)self delegate];
    [v16 setName:v11 withRevision:a4 forConversationLinkDescriptorsWithPredicate:v12 reply:v13];
  }

  else
  {
    v17 = FTCServiceLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_10000CE7C(a2);
    }

    v16 = [NSError errorWithDomain:@"com.apple.FaceTime.FTConversationService" code:1 userInfo:0];
    v13[2](v13, 0x7FFFFFFFFFFFFFFFLL, v16);
  }
}

- (void)setInteger:(int64_t)a3 forKey:(id)a4 reply:(id)a5
{
  v9 = a4;
  v10 = a5;
  v11 = [(FTConversationServiceConnection *)self entitlements];
  v12 = [v11 containsObject:@"modify-conversation-links"];

  if (v12)
  {
    v13 = [(FTConversationServiceConnection *)self delegate];
    [v13 setInteger:a3 forKey:v9 reply:v10];
  }

  else
  {
    v14 = FTCServiceLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10000CE7C(a2);
    }

    v13 = [NSError errorWithDomain:@"com.apple.FaceTime.FTConversationService" code:1 userInfo:0];
    v10[2](v10, 1, v13);
  }
}

- (void)integerForKey:(id)a3 reply:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(FTConversationServiceConnection *)self entitlements];
  v10 = [v9 containsObject:@"access-conversation-links"];

  if (v10)
  {
    v11 = [(FTConversationServiceConnection *)self delegate];
    [v11 integerForKey:v7 reply:v8];
  }

  else
  {
    v12 = FTCServiceLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10000CE7C(a2);
    }

    v11 = [NSError errorWithDomain:@"com.apple.FaceTime.FTConversationService" code:1 userInfo:0];
    v8[2](v8, 0x7FFFFFFFFFFFFFFFLL, v11);
  }
}

- (void)setString:(id)a3 forKey:(id)a4 reply:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [(FTConversationServiceConnection *)self entitlements];
  v13 = [v12 containsObject:@"modify-conversation-links"];

  if (v13)
  {
    v14 = [(FTConversationServiceConnection *)self delegate];
    [v14 setString:v9 forKey:v10 reply:v11];
  }

  else
  {
    v15 = FTCServiceLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_10000CE7C(a2);
    }

    v14 = [NSError errorWithDomain:@"com.apple.FaceTime.FTConversationService" code:1 userInfo:0];
    v11[2](v11, 1, v14);
  }
}

- (void)stringForKey:(id)a3 reply:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(FTConversationServiceConnection *)self entitlements];
  v10 = [v9 containsObject:@"access-conversation-links"];

  if (v10)
  {
    v11 = [(FTConversationServiceConnection *)self delegate];
    [v11 stringForKey:v7 reply:v8];
  }

  else
  {
    v12 = FTCServiceLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10000CE7C(a2);
    }

    v11 = [NSError errorWithDomain:@"com.apple.FaceTime.FTConversationService" code:1 userInfo:0];
    v8[2](v8, 0, v11);
  }
}

@end