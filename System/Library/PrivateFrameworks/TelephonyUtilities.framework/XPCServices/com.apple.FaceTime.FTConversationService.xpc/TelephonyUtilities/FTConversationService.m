@interface FTConversationService
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (BOOL)shouldAcceptConnection:(id)a3;
- (FTConversationService)initWithQueue:(id)a3;
@end

@implementation FTConversationService

- (FTConversationService)initWithQueue:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = FTConversationService;
  v6 = [(FTConversationService *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, a3);
    v8 = objc_alloc_init(FTPersistentDataSource);
    dataSource = v7->_dataSource;
    v7->_dataSource = v8;

    v10 = [[FTConversationServiceConnectionManager alloc] initWithDataSource:v7->_dataSource];
    connectionManager = v7->_connectionManager;
    v7->_connectionManager = v10;
  }

  return v7;
}

- (BOOL)shouldAcceptConnection:(id)a3
{
  v3 = [a3 conversationServiceEntitlements];
  if ([v3 containsObject:@"access-conversation-links"])
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 containsObject:@"modify-conversation-links"];
  }

  return v4;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  v6 = FTCServiceLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412290;
    v16 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Asked to accept connection %@", &v15, 0xCu);
  }

  v7 = [(FTConversationService *)self shouldAcceptConnection:v5];
  v8 = FTCServiceLog();
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      v16 = v5;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Entitlement found; accepting connection %@", &v15, 0xCu);
    }

    v10 = [FTConversationServiceConnection alloc];
    v11 = [(FTConversationService *)self queue];
    v12 = [(FTConversationServiceConnection *)v10 initWithConnection:v5 queue:v11];

    v13 = [(FTConversationService *)self connectionManager];
    [v13 addConnection:v12];
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10000CF64(v5, v9);
    }

    [v5 invalidate];
  }

  return v7;
}

@end