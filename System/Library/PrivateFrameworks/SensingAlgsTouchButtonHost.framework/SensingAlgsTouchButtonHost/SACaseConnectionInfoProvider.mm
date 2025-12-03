@interface SACaseConnectionInfoProvider
- (SACaseConnectionInfoProvider)init;
- (void)accessoryEndpointAttached:(id)attached transportType:(int)type protocol:(int)protocol properties:(id)properties forConnection:(id)connection;
- (void)accessoryEndpointDetached:(id)detached forConnection:(id)connection;
- (void)dealloc;
- (void)setConnectedCaseId:(unsigned __int8)id;
@end

@implementation SACaseConnectionInfoProvider

- (SACaseConnectionInfoProvider)init
{
  v8.receiver = self;
  v8.super_class = SACaseConnectionInfoProvider;
  v2 = [(SACaseConnectionInfoProvider *)&v8 init];
  if (v2)
  {
    mEMORY[0x277CFD210] = [MEMORY[0x277CFD210] sharedInstance];
    connectionInfoProvider = v2->_connectionInfoProvider;
    v2->_connectionInfoProvider = mEMORY[0x277CFD210];

    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    [(ACCConnectionInfo *)v2->_connectionInfoProvider registerDelegate:v2 withIdentifier:v6];
  }

  return v2;
}

- (void)dealloc
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  [(ACCConnectionInfo *)self->_connectionInfoProvider registerDelegate:0 withIdentifier:v4];

  v5.receiver = self;
  v5.super_class = SACaseConnectionInfoProvider;
  [(SACaseConnectionInfoProvider *)&v5 dealloc];
}

- (void)accessoryEndpointAttached:(id)attached transportType:(int)type protocol:(int)protocol properties:(id)properties forConnection:(id)connection
{
  v25 = *MEMORY[0x277D85DE8];
  propertiesCopy = properties;
  connectionCopy = connection;
  v11 = *MEMORY[0x277CFD330];
  v12 = [propertiesCopy objectForKeyedSubscript:*MEMORY[0x277CFD330]];
  null = [MEMORY[0x277CBEB68] null];
  if (v12 == null)
  {
    unsignedCharValue = 0;
  }

  else
  {
    v14 = [propertiesCopy objectForKeyedSubscript:v11];
    unsignedCharValue = [v14 unsignedCharValue];
  }

  v16 = SALoggingGeneral();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_1_4_2(v24, unsignedCharValue);
    _os_log_impl(&dword_2655CA000, v16, OS_LOG_TYPE_DEFAULT, "[SACaseConnectionInfoProvider] Connected case with NFC type %{public}d", v24, 8u);
  }

  if ((unsignedCharValue - 144) <= 5 && ((1 << (unsignedCharValue + 112)) & 0x23) != 0)
  {
    v17 = SALoggingGeneral();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_0_0(v24);
      _os_log_impl(&dword_2655CA000, v17, OS_LOG_TYPE_DEFAULT, "[SACaseConnectionInfoProvider] Connected case with a matching NFC type", v24, 2u);
    }

    p_connectedCaseConnectionUUID = &self->_connectedCaseConnectionUUID;
    if (self->_connectedCaseConnectionUUID && ([connectionCopy isEqualToString:?] & 1) == 0)
    {
      v19 = SALoggingGeneral();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_2_2_8_66_8_66(v24, connectionCopy, *p_connectedCaseConnectionUUID);
        _os_log_impl(&dword_2655CA000, v19, OS_LOG_TYPE_DEFAULT, "[SACaseConnectionInfoProvider] Connected case with connection id %{public}@ while case with connection id %{public}@ is already connected!", v24, 0x16u);
      }
    }

    if (([*p_connectedCaseConnectionUUID isEqualToString:connectionCopy] & 1) == 0)
    {
      v20 = SALoggingGeneral();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_2_1_8_66(v24, connectionCopy);
        _os_log_impl(&dword_2655CA000, v20, OS_LOG_TYPE_DEFAULT, "[SACaseConnectionInfoProvider] Connected case with connection id %{public}@", v24, 0xCu);
      }

      objc_storeStrong(&self->_connectedCaseConnectionUUID, connection);
    }

    if (self->_currentConnectedCaseId != unsignedCharValue)
    {
      v21 = SALoggingGeneral();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_0_1_4_2(v24, unsignedCharValue);
        _os_log_impl(&dword_2655CA000, v21, OS_LOG_TYPE_DEFAULT, "[SACaseConnectionInfoProvider] Connected case with NFC type %{public}d", v24, 8u);
      }

      [(SACaseConnectionInfoProvider *)self setConnectedCaseId:unsignedCharValue];
    }
  }

  else
  {
    v22 = SALoggingGeneral();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_0_0(v24);
      _os_log_impl(&dword_2655CA000, v22, OS_LOG_TYPE_DEFAULT, "[SACaseConnectionInfoProvider] Connected case with a mismatched NFC type", v24, 2u);
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)accessoryEndpointDetached:(id)detached forConnection:(id)connection
{
  v10 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  if ([connectionCopy isEqualToString:self->_connectedCaseConnectionUUID])
  {
    v6 = SALoggingGeneral();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_1_8_66(v9, connectionCopy);
      _os_log_impl(&dword_2655CA000, v6, OS_LOG_TYPE_DEFAULT, "[SACaseConnectionInfoProvider] Disconnected case with connection id %{public}@", v9, 0xCu);
    }

    connectedCaseConnectionUUID = self->_connectedCaseConnectionUUID;
    self->_connectedCaseConnectionUUID = 0;

    [(SACaseConnectionInfoProvider *)self setConnectedCaseId:0];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)setConnectedCaseId:(unsigned __int8)id
{
  v9 = *MEMORY[0x277D85DE8];
  if (self->_currentConnectedCaseId)
  {
    v3 = self->_currentConnectedCaseId == id;
  }

  else
  {
    v3 = 0;
  }

  if (!v3)
  {
    idCopy = id;
    v6 = SALoggingGeneral();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_0_1_4_2(v8, idCopy);
      _os_log_impl(&dword_2655CA000, v6, OS_LOG_TYPE_DEFAULT, "[SACaseConnectionInfoProvider] Setting current connected case id %{public}d", v8, 8u);
    }

    self->_currentConnectedCaseId = idCopy;
  }

  v7 = *MEMORY[0x277D85DE8];
}

@end