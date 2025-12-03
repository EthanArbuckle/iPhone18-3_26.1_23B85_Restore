@interface CSDIDSSession
- (BOOL)isCellularDataAllowed;
- (BOOL)isCellularDataPreferred;
- (BOOL)isWiFiAllowed;
- (CSDIDSSession)init;
- (CSDIDSSession)initWithSessionProvider:(id)provider;
- (NSString)UUID;
- (NSString)propertiesDescription;
- (NSUUID)clientUUID;
- (id)description;
- (void)_updateSessionPreferences;
- (void)setCellularDataAllowed:(BOOL)allowed;
- (void)setClientUUID:(id)d;
- (void)setWiFiAllowed:(BOOL)allowed;
@end

@implementation CSDIDSSession

- (CSDIDSSession)init
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"CSDIDSSession.m" lineNumber:26 description:{@"%s is not available. Use a designated initializer instead.", "-[CSDIDSSession init]"}];

  return 0;
}

- (CSDIDSSession)initWithSessionProvider:(id)provider
{
  providerCopy = provider;
  v11.receiver = self;
  v11.super_class = CSDIDSSession;
  v6 = [(CSDIDSSession *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sessionProvider, provider);
    v8 = +[NSMutableDictionary dictionary];
    preferences = v7->_preferences;
    v7->_preferences = v8;
  }

  return v7;
}

- (id)description
{
  v3 = objc_opt_class();
  propertiesDescription = [(CSDIDSSession *)self propertiesDescription];
  v5 = [NSString stringWithFormat:@"<%@ %p %@>", v3, self, propertiesDescription];

  return v5;
}

- (NSString)propertiesDescription
{
  uUID = [(CSDIDSSession *)self UUID];
  v3 = [NSString stringWithFormat:@"UUID=%@", uUID];

  return v3;
}

- (NSString)UUID
{
  sessionProvider = [(CSDIDSSession *)self sessionProvider];
  uUID = [sessionProvider UUID];

  return uUID;
}

- (void)_updateSessionPreferences
{
  sessionProvider = [(CSDIDSSession *)self sessionProvider];
  preferences = [(CSDIDSSession *)self preferences];
  [sessionProvider setPreferences:preferences];
}

- (BOOL)isWiFiAllowed
{
  preferences = [(CSDIDSSession *)self preferences];
  v3 = [preferences objectForKeyedSubscript:IDSSessionDisallowWifiInterfaceKey];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue ^ 1;
}

- (void)setWiFiAllowed:(BOOL)allowed
{
  allowedCopy = allowed;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    selfCopy = self;
    v10 = 1024;
    v11 = allowedCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "self: %@ wiFiAllowed: %d", &v8, 0x12u);
  }

  v6 = [NSNumber numberWithInt:!allowedCopy];
  preferences = [(CSDIDSSession *)self preferences];
  [preferences setObject:v6 forKeyedSubscript:IDSSessionDisallowWifiInterfaceKey];

  [(CSDIDSSession *)self _updateSessionPreferences];
}

- (BOOL)isCellularDataAllowed
{
  preferences = [(CSDIDSSession *)self preferences];
  v3 = [preferences objectForKeyedSubscript:IDSSessionDisallowCellularInterfaceKey];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue ^ 1;
}

- (void)setCellularDataAllowed:(BOOL)allowed
{
  allowedCopy = allowed;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    selfCopy = self;
    v10 = 1024;
    v11 = allowedCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "self: %@ cellularDataAllowed: %d", &v8, 0x12u);
  }

  v6 = [NSNumber numberWithInt:!allowedCopy];
  preferences = [(CSDIDSSession *)self preferences];
  [preferences setObject:v6 forKeyedSubscript:IDSSessionDisallowCellularInterfaceKey];

  [(CSDIDSSession *)self _updateSessionPreferences];
}

- (BOOL)isCellularDataPreferred
{
  preferences = [(CSDIDSSession *)self preferences];
  v3 = [preferences objectForKeyedSubscript:IDSSessionPreferCellularForCallSetupKey];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (NSUUID)clientUUID
{
  preferences = [(CSDIDSSession *)self preferences];
  v4 = IDSSessionClientUUIDKey;
  v5 = [preferences objectForKeyedSubscript:IDSSessionClientUUIDKey];
  if (v5)
  {
    v6 = [NSUUID alloc];
    preferences2 = [(CSDIDSSession *)self preferences];
    v8 = [preferences2 objectForKeyedSubscript:v4];
    v9 = [v6 initWithUUIDString:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)setClientUUID:(id)d
{
  dCopy = d;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    uUIDString = [dCopy UUIDString];
    v9 = 138412546;
    selfCopy = self;
    v11 = 2112;
    v12 = uUIDString;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "self: %@ clientUUID: %@", &v9, 0x16u);
  }

  uUIDString2 = [dCopy UUIDString];
  preferences = [(CSDIDSSession *)self preferences];
  [preferences setObject:uUIDString2 forKeyedSubscript:IDSSessionClientUUIDKey];

  [(CSDIDSSession *)self _updateSessionPreferences];
}

@end