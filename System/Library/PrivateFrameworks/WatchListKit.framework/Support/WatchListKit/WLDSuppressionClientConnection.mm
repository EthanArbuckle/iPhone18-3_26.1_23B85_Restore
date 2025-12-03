@interface WLDSuppressionClientConnection
- (WLDClientConnectionDelegate)delegate;
- (WLDSuppressionClientConnection)initWithConnection:(id)connection clientIdentifier:(id)identifier;
- (void)_didInvalidate;
- (void)enableNotificationsFor:(id)for completion:(id)completion;
- (void)suppressNotificationsFor:(id)for completion:(id)completion;
@end

@implementation WLDSuppressionClientConnection

- (WLDSuppressionClientConnection)initWithConnection:(id)connection clientIdentifier:(id)identifier
{
  connectionCopy = connection;
  identifierCopy = identifier;
  v23.receiver = self;
  v23.super_class = WLDSuppressionClientConnection;
  v9 = [(WLDSuppressionClientConnection *)&v23 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_connection, connection);
    v11 = [identifierCopy copy];
    clientIdentifier = v10->_clientIdentifier;
    v10->_clientIdentifier = v11;

    connection = v10->_connection;
    v14 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___WLKWatchlistSuppressNotificationsXPCConnectionProtocol];
    [(NSXPCConnection *)connection setExportedInterface:v14];

    [(NSXPCConnection *)v10->_connection setExportedObject:v10];
    objc_initWeak(&location, v10);
    v15 = v10->_connection;
    v17 = _NSConcreteStackBlock;
    v18 = 3221225472;
    v19 = __70__WLDSuppressionClientConnection_initWithConnection_clientIdentifier___block_invoke;
    v20 = &unk_100044AE8;
    objc_copyWeak(&v21, &location);
    [(NSXPCConnection *)v15 setInvalidationHandler:&v17];
    [(NSXPCConnection *)v10->_connection resume:v17];
    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }

  return v10;
}

void __70__WLDSuppressionClientConnection_initWithConnection_clientIdentifier___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _didInvalidate];
    WeakRetained = v2;
  }
}

- (void)suppressNotificationsFor:(id)for completion:(id)completion
{
  forCopy = for;
  completionCopy = completion;
  v7 = WLKSystemLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = forCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "WLDSuppressionClientConnection - Suppress sports notification for the event %@", &v9, 0xCu);
  }

  v8 = +[WLKSettingsStore sharedSettings];
  [v8 setSportsNotificationSuppression:1 forEventID:forCopy];
  completionCopy[2](completionCopy, 0);
}

- (void)enableNotificationsFor:(id)for completion:(id)completion
{
  forCopy = for;
  completionCopy = completion;
  v7 = WLKSystemLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = forCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "WLDSuppressionClientConnection - Enable sports notification for the event %@", &v9, 0xCu);
  }

  v8 = +[WLKSettingsStore sharedSettings];
  [v8 setSportsNotificationSuppression:0 forEventID:forCopy];
  completionCopy[2](completionCopy, 0);
}

- (void)_didInvalidate
{
  NSLog(@"Connection invalidated for client: %@", a2, self->_clientIdentifier);
  connection = self->_connection;
  self->_connection = 0;

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 clientConnectionDidInvalidate:self];
  }
}

- (WLDClientConnectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end