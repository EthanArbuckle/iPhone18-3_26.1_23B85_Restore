@interface WBSCloudHistoryPushAgent
- (BOOL)_hasAcknowledgedPushNotifications;
- (BOOL)_hasUnacknowledgedPushNotifications;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (WBSCloudHistoryPushAgent)init;
- (id)_userDefaults;
- (void)_setHasAcknowlegedPushNotifications:(BOOL)notifications;
- (void)_setHasUnacknowledgedPushNotifications:(BOOL)notifications;
- (void)acknowledgePendingPushNotifications;
- (void)clearAcknowledgedPushNotifications;
- (void)connection:(id)connection didReceiveIncomingMessage:(id)message;
- (void)connection:(id)connection didReceivePublicToken:(id)token;
- (void)getPushNotifications:(id)notifications;
- (void)queryMemoryFootprint:(id)footprint;
@end

@implementation WBSCloudHistoryPushAgent

- (WBSCloudHistoryPushAgent)init
{
  v15.receiver = self;
  v15.super_class = WBSCloudHistoryPushAgent;
  v2 = [(WBSCloudHistoryPushAgent *)&v15 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.WBSCloudHistoryPushAgent.State", 0);
    pushNotificationStateQueue = v2->_pushNotificationStateQueue;
    v2->_pushNotificationStateQueue = v3;

    v5 = [objc_alloc(MEMORY[0x1E696B0D8]) initWithMachServiceName:@"com.apple.SafariCloudHistoryPushAgent"];
    xpcListener = v2->_xpcListener;
    v2->_xpcListener = v5;

    [(NSXPCListener *)v2->_xpcListener setDelegate:v2];
    [(NSXPCListener *)v2->_xpcListener resume];
    v7 = objc_alloc(MEMORY[0x1E698CF30]);
    v8 = *MEMORY[0x1E698CF20];
    v9 = MEMORY[0x1E69E96A0];
    v10 = MEMORY[0x1E69E96A0];
    v11 = [v7 initWithEnvironmentName:v8 namedDelegatePort:@"com.apple.aps.SafariCloudHistoryPushAgent" queue:v9];
    pushConnection = v2->_pushConnection;
    v2->_pushConnection = v11;

    [(APSConnection *)v2->_pushConnection setDelegate:v2];
    v13 = v2;
  }

  return v2;
}

- (void)connection:(id)connection didReceivePublicToken:(id)token
{
  v7[1] = *MEMORY[0x1E69E9840];
  v5 = [(WBSCloudHistoryPushAgent *)self _pushTopic:connection];
  v7[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  [(APSConnection *)self->_pushConnection _setEnabledTopics:v6];
}

- (void)connection:(id)connection didReceiveIncomingMessage:(id)message
{
  v5 = MEMORY[0x1E695B9E0];
  userInfo = [message userInfo];
  v7 = [v5 notificationFromRemoteNotificationDictionary:userInfo];

  if (!v7)
  {
    v9 = WBS_LOG_CHANNEL_PREFIXCloudHistory();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_13;
    }

    *buf = 0;
    v10 = "Ignoring push notification because notification is nil";
    goto LABEL_12;
  }

  containerIdentifier = [v7 containerIdentifier];
  if (![containerIdentifier isEqualToString:@"com.apple.SafariShared.History"])
  {
    v11 = [containerIdentifier isEqualToString:@"com.apple.SafariShared.WBSCloudHistoryStore"];

    if (v11)
    {
      goto LABEL_7;
    }

    v9 = WBS_LOG_CHANNEL_PREFIXCloudHistory();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_13;
    }

    *buf = 0;
    v10 = "Ignoring push notification because it is not about history";
LABEL_12:
    _os_log_impl(&dword_1BB6F3000, v9, OS_LOG_TYPE_DEFAULT, v10, buf, 2u);
    goto LABEL_13;
  }

LABEL_7:
  v12 = WBS_LOG_CHANNEL_PREFIXCloudHistory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BB6F3000, v12, OS_LOG_TYPE_DEFAULT, "Received CloudHistory related push notification", buf, 2u);
  }

  pushNotificationStateQueue = self->_pushNotificationStateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__WBSCloudHistoryPushAgent_connection_didReceiveIncomingMessage___block_invoke;
  block[3] = &unk_1E7FB6F80;
  block[4] = self;
  dispatch_async(pushNotificationStateQueue, block);
LABEL_13:
}

void __65__WBSCloudHistoryPushAgent_connection_didReceiveIncomingMessage___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _setHasUnacknowledgedPushNotifications:1];
  v1 = [MEMORY[0x1E696ABB0] defaultCenter];
  [v1 postNotificationName:@"com.apple.SafariShared.CloudHistory.PushReceived" object:0];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v12 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  v6 = [connectionCopy valueForEntitlement:@"com.apple.private.safari.can-use-history-push-agent"];
  bOOLValue = [v6 BOOLValue];

  if (bOOLValue)
  {
    v8 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F3AA3B38];
    [connectionCopy setExportedInterface:v8];

    [connectionCopy setExportedObject:self];
    [connectionCopy resume];
  }

  else
  {
    v9 = WBS_LOG_CHANNEL_PREFIXCloudHistory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      -[WBSCloudHistoryPushAgent listener:shouldAcceptNewConnection:].cold.1(v11, [connectionCopy processIdentifier], v9);
    }
  }

  return bOOLValue;
}

- (void)getPushNotifications:(id)notifications
{
  notificationsCopy = notifications;
  pushNotificationStateQueue = self->_pushNotificationStateQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__WBSCloudHistoryPushAgent_getPushNotifications___block_invoke;
  v7[3] = &unk_1E7FB6BC0;
  v7[4] = self;
  v8 = notificationsCopy;
  v6 = notificationsCopy;
  dispatch_async(pushNotificationStateQueue, v7);
}

uint64_t __49__WBSCloudHistoryPushAgent_getPushNotifications___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) _hasUnacknowledgedPushNotifications];
  v4 = [*(a1 + 32) _hasAcknowledgedPushNotifications];
  v5 = *(v2 + 16);

  return v5(v2, v3, v4);
}

- (void)queryMemoryFootprint:(id)footprint
{
  footprintCopy = footprint;
  v6 = 0;
  v4 = [objc_alloc(MEMORY[0x1E69C88E0]) initWithError:&v6];
  v5 = v6;
  footprintCopy[2](footprintCopy, v4, v5);
}

- (void)acknowledgePendingPushNotifications
{
  pushNotificationStateQueue = self->_pushNotificationStateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__WBSCloudHistoryPushAgent_acknowledgePendingPushNotifications__block_invoke;
  block[3] = &unk_1E7FB6F80;
  block[4] = self;
  dispatch_async(pushNotificationStateQueue, block);
}

uint64_t __63__WBSCloudHistoryPushAgent_acknowledgePendingPushNotifications__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _hasUnacknowledgedPushNotifications];
  if (result)
  {
    [*(a1 + 32) _setHasUnacknowledgedPushNotifications:0];
    v3 = *(a1 + 32);

    return [v3 _setHasAcknowlegedPushNotifications:1];
  }

  return result;
}

- (void)clearAcknowledgedPushNotifications
{
  pushNotificationStateQueue = self->_pushNotificationStateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__WBSCloudHistoryPushAgent_clearAcknowledgedPushNotifications__block_invoke;
  block[3] = &unk_1E7FB6F80;
  block[4] = self;
  dispatch_async(pushNotificationStateQueue, block);
}

- (id)_userDefaults
{
  v2 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.SafariCloudHistoryPushAgent"];

  return v2;
}

- (BOOL)_hasUnacknowledgedPushNotifications
{
  _userDefaults = [(WBSCloudHistoryPushAgent *)self _userDefaults];
  v3 = [_userDefaults BOOLForKey:@"UnacknowledgedPushNotifications"];

  return v3;
}

- (void)_setHasUnacknowledgedPushNotifications:(BOOL)notifications
{
  notificationsCopy = notifications;
  _userDefaults = [(WBSCloudHistoryPushAgent *)self _userDefaults];
  [_userDefaults setBool:notificationsCopy forKey:@"UnacknowledgedPushNotifications"];
}

- (BOOL)_hasAcknowledgedPushNotifications
{
  _userDefaults = [(WBSCloudHistoryPushAgent *)self _userDefaults];
  v3 = [_userDefaults BOOLForKey:@"AcknowledgedPushNotifications"];

  return v3;
}

- (void)_setHasAcknowlegedPushNotifications:(BOOL)notifications
{
  notificationsCopy = notifications;
  _userDefaults = [(WBSCloudHistoryPushAgent *)self _userDefaults];
  [_userDefaults setBool:notificationsCopy forKey:@"AcknowledgedPushNotifications"];
}

- (void)listener:(os_log_t)log shouldAcceptNewConnection:.cold.1(uint8_t *buf, int a2, os_log_t log)
{
  *buf = 67109120;
  *(buf + 1) = a2;
  _os_log_error_impl(&dword_1BB6F3000, log, OS_LOG_TYPE_ERROR, "Connection to history push agent by %d was denied: Missing entitlement", buf, 8u);
}

@end