@interface VCNRDeviceSyncService
- (BOOL)isEqual:(id)a3;
- (VCCompanionSyncService)service;
- (VCNRDeviceSyncService)initWithCompanionSyncService:(id)a3 device:(id)a4;
- (unint64_t)hash;
- (void)requestFullResync;
- (void)requestSync;
@end

@implementation VCNRDeviceSyncService

- (VCCompanionSyncService)service
{
  WeakRetained = objc_loadWeakRetained(&self->_service);

  return WeakRetained;
}

- (void)requestFullResync
{
  v2 = [(VCNRDeviceSyncService *)self service];
  [v2 requestFullResync];
}

- (void)requestSync
{
  v2 = [(VCNRDeviceSyncService *)self service];
  [v2 requestSync];
}

- (unint64_t)hash
{
  v3 = [(VCNRDeviceSyncService *)self service];
  v4 = [v3 hash];
  v5 = [(VCNRDeviceSyncService *)self syncServiceIdentifier];
  v6 = [v5 hash] ^ v4;
  v7 = [(VCNRDeviceSyncService *)self directoryURL];
  v8 = [v7 hash];

  return v6 ^ v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(VCNRDeviceSyncService *)self service];
      v6 = [(VCNRDeviceSyncService *)v4 service];
      if ([v5 isEqual:v6])
      {
        v7 = [(VCNRDeviceSyncService *)self syncServiceIdentifier];
        v8 = [(VCNRDeviceSyncService *)v4 syncServiceIdentifier];
        if ([v7 isEqual:v8])
        {
          v9 = [(VCNRDeviceSyncService *)self directoryURL];
          v10 = [(VCNRDeviceSyncService *)v4 directoryURL];
          if (v9 == v10)
          {
            v13 = 1;
          }

          else
          {
            v11 = [(VCNRDeviceSyncService *)self directoryURL];
            v12 = [(VCNRDeviceSyncService *)v4 directoryURL];
            v13 = [v11 isEqual:v12];
          }
        }

        else
        {
          v13 = 0;
        }
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (VCNRDeviceSyncService)initWithCompanionSyncService:(id)a3 device:(id)a4
{
  v39 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v32 = [MEMORY[0x277CCA890] currentHandler];
    [v32 handleFailureInMethod:a2 object:self file:@"VCNRDeviceSyncService.m" lineNumber:38 description:{@"Invalid parameter not satisfying: %@", @"service"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  v33 = [MEMORY[0x277CCA890] currentHandler];
  [v33 handleFailureInMethod:a2 object:self file:@"VCNRDeviceSyncService.m" lineNumber:39 description:{@"Invalid parameter not satisfying: %@", @"device"}];

LABEL_3:
  v34.receiver = self;
  v34.super_class = VCNRDeviceSyncService;
  v10 = [(VCNRDeviceSyncService *)&v34 init];
  if (v10)
  {
    if (objc_opt_class())
    {
      v11 = [v9 valueForProperty:*MEMORY[0x277D2BC18]];
      v12 = [v11 componentsSeparatedByString:@"."];
      v13 = [v12 firstObject];
      v14 = [v13 integerValue];

      if (v14 > 6)
      {
        v15 = 3;
LABEL_12:
        v10->_protocolVersion = v15;
        objc_storeWeak(&v10->_service, v7);
        v22 = MEMORY[0x277CCACA8];
        v23 = [v9 pairingID];
        v24 = [v23 UUIDString];
        v25 = [v22 stringWithFormat:@"CompanionSync-%@", v24];
        syncServiceIdentifier = v10->_syncServiceIdentifier;
        v10->_syncServiceIdentifier = v25;

        v17 = [v9 valueForProperty:*MEMORY[0x277D2BB68]];
        if (v17)
        {
          v27 = [MEMORY[0x277CBEBC0] fileURLWithPath:v17 isDirectory:1];
        }

        else
        {
          v27 = 0;
        }

        v28 = [v27 URLByAppendingPathComponent:*MEMORY[0x277D7A300]];
        directoryURL = v10->_directoryURL;
        v10->_directoryURL = v28;

        if (v17)
        {
        }

        v16 = v10;
        goto LABEL_21;
      }

      v20 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"B8CFCCD2-C6BE-441C-B60D-C5036FB9ABC5"];
      v21 = [v9 supportsCapability:v20];

      if (v21)
      {
        v15 = 2;
        goto LABEL_12;
      }

      v17 = getWFWatchSyncLogObject();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v36 = "[VCNRDeviceSyncService initWithCompanionSyncService:device:]";
        v37 = 2114;
        v38 = v9;
        _os_log_impl(&dword_23103C000, v17, OS_LOG_TYPE_INFO, "%s Won't sync to device %{public}@ because it does not support shortcuts", buf, 0x16u);
      }
    }

    else
    {
      v17 = getWFWatchSyncLogObject();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = objc_opt_class();
        *buf = 136315394;
        v36 = "[VCNRDeviceSyncService initWithCompanionSyncService:device:]";
        v37 = 2114;
        v38 = v18;
        v19 = v18;
        _os_log_impl(&dword_23103C000, v17, OS_LOG_TYPE_INFO, "%s Can't create a %{public}@ because NanoRegistry is not available", buf, 0x16u);
      }
    }

    v16 = 0;
LABEL_21:

    goto LABEL_22;
  }

  v16 = 0;
LABEL_22:

  v30 = *MEMORY[0x277D85DE8];
  return v16;
}

@end