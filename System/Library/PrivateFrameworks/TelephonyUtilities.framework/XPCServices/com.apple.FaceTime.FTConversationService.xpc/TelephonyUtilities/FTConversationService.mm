@interface FTConversationService
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (BOOL)shouldAcceptConnection:(id)connection;
- (FTConversationService)initWithQueue:(id)queue;
@end

@implementation FTConversationService

- (FTConversationService)initWithQueue:(id)queue
{
  queueCopy = queue;
  v13.receiver = self;
  v13.super_class = FTConversationService;
  v6 = [(FTConversationService *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, queue);
    v8 = objc_alloc_init(FTPersistentDataSource);
    dataSource = v7->_dataSource;
    v7->_dataSource = v8;

    v10 = [[FTConversationServiceConnectionManager alloc] initWithDataSource:v7->_dataSource];
    connectionManager = v7->_connectionManager;
    v7->_connectionManager = v10;
  }

  return v7;
}

- (BOOL)shouldAcceptConnection:(id)connection
{
  conversationServiceEntitlements = [connection conversationServiceEntitlements];
  if ([conversationServiceEntitlements containsObject:@"access-conversation-links"])
  {
    v4 = 1;
  }

  else
  {
    v4 = [conversationServiceEntitlements containsObject:@"modify-conversation-links"];
  }

  return v4;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v6 = FTCServiceLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412290;
    v16 = connectionCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Asked to accept connection %@", &v15, 0xCu);
  }

  v7 = [(FTConversationService *)self shouldAcceptConnection:connectionCopy];
  v8 = FTCServiceLog();
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      v16 = connectionCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Entitlement found; accepting connection %@", &v15, 0xCu);
    }

    v10 = [FTConversationServiceConnection alloc];
    queue = [(FTConversationService *)self queue];
    v12 = [(FTConversationServiceConnection *)v10 initWithConnection:connectionCopy queue:queue];

    connectionManager = [(FTConversationService *)self connectionManager];
    [connectionManager addConnection:v12];
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10000CF64(connectionCopy, v9);
    }

    [connectionCopy invalidate];
  }

  return v7;
}

@end