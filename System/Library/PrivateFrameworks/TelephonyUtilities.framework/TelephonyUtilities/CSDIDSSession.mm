@interface CSDIDSSession
- (BOOL)isCellularDataAllowed;
- (BOOL)isCellularDataPreferred;
- (BOOL)isWiFiAllowed;
- (CSDIDSSession)init;
- (CSDIDSSession)initWithSessionProvider:(id)a3;
- (NSString)UUID;
- (NSString)propertiesDescription;
- (NSUUID)clientUUID;
- (id)description;
- (void)_updateSessionPreferences;
- (void)setCellularDataAllowed:(BOOL)a3;
- (void)setClientUUID:(id)a3;
- (void)setWiFiAllowed:(BOOL)a3;
@end

@implementation CSDIDSSession

- (CSDIDSSession)init
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"CSDIDSSession.m" lineNumber:26 description:{@"%s is not available. Use a designated initializer instead.", "-[CSDIDSSession init]"}];

  return 0;
}

- (CSDIDSSession)initWithSessionProvider:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = CSDIDSSession;
  v6 = [(CSDIDSSession *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sessionProvider, a3);
    v8 = +[NSMutableDictionary dictionary];
    preferences = v7->_preferences;
    v7->_preferences = v8;
  }

  return v7;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = [(CSDIDSSession *)self propertiesDescription];
  v5 = [NSString stringWithFormat:@"<%@ %p %@>", v3, self, v4];

  return v5;
}

- (NSString)propertiesDescription
{
  v2 = [(CSDIDSSession *)self UUID];
  v3 = [NSString stringWithFormat:@"UUID=%@", v2];

  return v3;
}

- (NSString)UUID
{
  v2 = [(CSDIDSSession *)self sessionProvider];
  v3 = [v2 UUID];

  return v3;
}

- (void)_updateSessionPreferences
{
  v4 = [(CSDIDSSession *)self sessionProvider];
  v3 = [(CSDIDSSession *)self preferences];
  [v4 setPreferences:v3];
}

- (BOOL)isWiFiAllowed
{
  v2 = [(CSDIDSSession *)self preferences];
  v3 = [v2 objectForKeyedSubscript:IDSSessionDisallowWifiInterfaceKey];
  v4 = [v3 BOOLValue];

  return v4 ^ 1;
}

- (void)setWiFiAllowed:(BOOL)a3
{
  v3 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = self;
    v10 = 1024;
    v11 = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "self: %@ wiFiAllowed: %d", &v8, 0x12u);
  }

  v6 = [NSNumber numberWithInt:!v3];
  v7 = [(CSDIDSSession *)self preferences];
  [v7 setObject:v6 forKeyedSubscript:IDSSessionDisallowWifiInterfaceKey];

  [(CSDIDSSession *)self _updateSessionPreferences];
}

- (BOOL)isCellularDataAllowed
{
  v2 = [(CSDIDSSession *)self preferences];
  v3 = [v2 objectForKeyedSubscript:IDSSessionDisallowCellularInterfaceKey];
  v4 = [v3 BOOLValue];

  return v4 ^ 1;
}

- (void)setCellularDataAllowed:(BOOL)a3
{
  v3 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = self;
    v10 = 1024;
    v11 = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "self: %@ cellularDataAllowed: %d", &v8, 0x12u);
  }

  v6 = [NSNumber numberWithInt:!v3];
  v7 = [(CSDIDSSession *)self preferences];
  [v7 setObject:v6 forKeyedSubscript:IDSSessionDisallowCellularInterfaceKey];

  [(CSDIDSSession *)self _updateSessionPreferences];
}

- (BOOL)isCellularDataPreferred
{
  v2 = [(CSDIDSSession *)self preferences];
  v3 = [v2 objectForKeyedSubscript:IDSSessionPreferCellularForCallSetupKey];
  v4 = [v3 BOOLValue];

  return v4;
}

- (NSUUID)clientUUID
{
  v3 = [(CSDIDSSession *)self preferences];
  v4 = IDSSessionClientUUIDKey;
  v5 = [v3 objectForKeyedSubscript:IDSSessionClientUUIDKey];
  if (v5)
  {
    v6 = [NSUUID alloc];
    v7 = [(CSDIDSSession *)self preferences];
    v8 = [v7 objectForKeyedSubscript:v4];
    v9 = [v6 initWithUUIDString:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)setClientUUID:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 UUIDString];
    v9 = 138412546;
    v10 = self;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "self: %@ clientUUID: %@", &v9, 0x16u);
  }

  v7 = [v4 UUIDString];
  v8 = [(CSDIDSSession *)self preferences];
  [v8 setObject:v7 forKeyedSubscript:IDSSessionClientUUIDKey];

  [(CSDIDSSession *)self _updateSessionPreferences];
}

@end