@interface SBAmbientChargerConnectionInfoProvider
- (SBAmbientChargerConnectionInfoProvider)initWithDelegate:(id)delegate;
- (SBAmbientChargerConnectionInfoProviderDelegate)delegate;
- (void)_setCurrentConnectedChargerId:(id)id;
- (void)accessoryConnectionInfoProvider:(id)provider accessoryEndpointAttached:(id)attached transportType:(int)type protocol:(int)protocol properties:(id)properties forConnection:(id)connection;
- (void)accessoryConnectionInfoProvider:(id)provider accessoryEndpointDetached:(id)detached forConnection:(id)connection;
- (void)dealloc;
@end

@implementation SBAmbientChargerConnectionInfoProvider

- (SBAmbientChargerConnectionInfoProvider)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v10.receiver = self;
  v10.super_class = SBAmbientChargerConnectionInfoProvider;
  v5 = [(SBAmbientChargerConnectionInfoProvider *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
    v7 = +[SBAccessoryConnectionInfoProvider sharedInstance];
    accessoryConnectionInfoProvider = v6->_accessoryConnectionInfoProvider;
    v6->_accessoryConnectionInfoProvider = v7;

    [(SBAccessoryConnectionInfoProvider *)v6->_accessoryConnectionInfoProvider addObserver:v6];
  }

  return v6;
}

- (void)dealloc
{
  [(SBAccessoryConnectionInfoProvider *)self->_accessoryConnectionInfoProvider removeObserver:self];
  v3.receiver = self;
  v3.super_class = SBAmbientChargerConnectionInfoProvider;
  [(SBAmbientChargerConnectionInfoProvider *)&v3 dealloc];
}

- (void)accessoryConnectionInfoProvider:(id)provider accessoryEndpointAttached:(id)attached transportType:(int)type protocol:(int)protocol properties:(id)properties forConnection:(id)connection
{
  v25 = *MEMORY[0x277D85DE8];
  providerCopy = provider;
  attachedCopy = attached;
  propertiesCopy = properties;
  connectionCopy = connection;
  v17 = [(SBAccessoryConnectionInfoProvider *)self->_accessoryConnectionInfoProvider accessoryConnectionType:connectionCopy];
  if (type == 12 && v17 == 4)
  {
    if (self->_connectedChargerConnectionUUID && ([connectionCopy isEqualToString:?] & 1) == 0)
    {
      v18 = SBLogAmbientChargerConnection();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [SBAmbientChargerConnectionInfoProvider accessoryConnectionInfoProvider:connectionCopy accessoryEndpointAttached:&self->_connectedChargerConnectionUUID transportType:v18 protocol:? properties:? forConnection:?];
      }
    }

    if (![(NSString *)self->_connectedChargerConnectionUUID isEqualToString:connectionCopy])
    {
      v19 = SBLogAmbientChargerConnection();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v24 = connectionCopy;
        _os_log_impl(&dword_21ED4E000, v19, OS_LOG_TYPE_DEFAULT, "Connected inductive charger with connection id %{public}@", buf, 0xCu);
      }

      objc_storeStrong(&self->_connectedChargerConnectionUUID, connection);
    }

    objc_initWeak(buf, self);
    accessoryConnectionInfoProvider = self->_accessoryConnectionInfoProvider;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __148__SBAmbientChargerConnectionInfoProvider_accessoryConnectionInfoProvider_accessoryEndpointAttached_transportType_protocol_properties_forConnection___block_invoke;
    v21[3] = &unk_2783B1DD8;
    objc_copyWeak(&v22, buf);
    [(SBAccessoryConnectionInfoProvider *)accessoryConnectionInfoProvider accessoryInfoForEndpoint:attachedCopy connection:connectionCopy withReply:v21];
    objc_destroyWeak(&v22);
    objc_destroyWeak(buf);
  }
}

void __148__SBAmbientChargerConnectionInfoProvider_accessoryConnectionInfoProvider_accessoryEndpointAttached_transportType_protocol_properties_forConnection___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (v5)
  {
    v7 = [v5 objectForKey:*MEMORY[0x277CFD220]];
    v8 = [MEMORY[0x277CBEB68] null];
    v9 = v8;
    if (v7 == v8)
    {
    }

    else
    {
      v10 = objc_opt_class();
      v11 = v7;
      if (v10)
      {
        if (objc_opt_isKindOfClass())
        {
          v12 = v11;
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {
        v12 = 0;
      }

      v13 = v12;

      if (v13)
      {
        v14 = [WeakRetained currentConnectedChargerId];
        v15 = [v13 isEqualToString:v14];

        if ((v15 & 1) == 0)
        {
          v16 = SBLogAmbientChargerConnection();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v18 = 138543362;
            v19 = v13;
            _os_log_impl(&dword_21ED4E000, v16, OS_LOG_TYPE_DEFAULT, "Connected inductive charger with accesory id %{public}@", &v18, 0xCu);
          }

          [WeakRetained _setCurrentConnectedChargerId:v13];
        }

LABEL_17:

        goto LABEL_18;
      }
    }

    v17 = SBLogAmbientChargerConnection();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v18) = 0;
      _os_log_impl(&dword_21ED4E000, v17, OS_LOG_TYPE_DEFAULT, "Connected inductive charger does not have an accessory id!", &v18, 2u);
    }

    v13 = 0;
    goto LABEL_17;
  }

LABEL_18:
}

- (void)accessoryConnectionInfoProvider:(id)provider accessoryEndpointDetached:(id)detached forConnection:(id)connection
{
  v14 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  if ([connectionCopy isEqualToString:self->_connectedChargerConnectionUUID])
  {
    v7 = SBLogAmbientChargerConnection();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138543362;
      v13 = connectionCopy;
      _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "Disconnected inductive charger with connection id %{public}@", &v12, 0xCu);
    }

    delegate = [(SBAmbientChargerConnectionInfoProvider *)self delegate];
    currentConnectedChargerId = [(SBAmbientChargerConnectionInfoProvider *)self currentConnectedChargerId];
    [delegate chargerConnectionInfoProvider:self didDisconnectChargerWithId:currentConnectedChargerId];

    connectedChargerConnectionUUID = self->_connectedChargerConnectionUUID;
    self->_connectedChargerConnectionUUID = 0;

    currentConnectedChargerId = self->_currentConnectedChargerId;
    self->_currentConnectedChargerId = 0;
  }
}

- (void)_setCurrentConnectedChargerId:(id)id
{
  v11 = *MEMORY[0x277D85DE8];
  idCopy = id;
  currentConnectedChargerId = self->_currentConnectedChargerId;
  if (!currentConnectedChargerId || ![(NSString *)currentConnectedChargerId isEqualToString:idCopy])
  {
    v7 = SBLogAmbientChargerConnection();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138543362;
      v10 = idCopy;
      _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "Setting current connected inductive charger id %{public}@", &v9, 0xCu);
    }

    objc_storeStrong(&self->_currentConnectedChargerId, id);
    delegate = [(SBAmbientChargerConnectionInfoProvider *)self delegate];
    [delegate chargerConnectionInfoProvider:self didConnectChargerWithId:idCopy];
  }
}

- (SBAmbientChargerConnectionInfoProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)accessoryConnectionInfoProvider:(os_log_t)log accessoryEndpointAttached:transportType:protocol:properties:forConnection:.cold.1(uint64_t a1, uint64_t *a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v4 = 138543618;
  v5 = a1;
  v6 = 2114;
  v7 = v3;
  _os_log_error_impl(&dword_21ED4E000, log, OS_LOG_TYPE_ERROR, "Connected inductive charger with connection id %{public}@ while charger with connection id %{public}@ is already connected!", &v4, 0x16u);
}

@end