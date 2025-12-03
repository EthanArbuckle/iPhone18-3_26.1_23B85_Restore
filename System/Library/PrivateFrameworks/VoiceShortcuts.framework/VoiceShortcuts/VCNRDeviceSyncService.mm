@interface VCNRDeviceSyncService
- (BOOL)isEqual:(id)equal;
- (VCCompanionSyncService)service;
- (VCNRDeviceSyncService)initWithCompanionSyncService:(id)service device:(id)device;
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
  service = [(VCNRDeviceSyncService *)self service];
  [service requestFullResync];
}

- (void)requestSync
{
  service = [(VCNRDeviceSyncService *)self service];
  [service requestSync];
}

- (unint64_t)hash
{
  service = [(VCNRDeviceSyncService *)self service];
  v4 = [service hash];
  syncServiceIdentifier = [(VCNRDeviceSyncService *)self syncServiceIdentifier];
  v6 = [syncServiceIdentifier hash] ^ v4;
  directoryURL = [(VCNRDeviceSyncService *)self directoryURL];
  v8 = [directoryURL hash];

  return v6 ^ v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      service = [(VCNRDeviceSyncService *)self service];
      service2 = [(VCNRDeviceSyncService *)equalCopy service];
      if ([service isEqual:service2])
      {
        syncServiceIdentifier = [(VCNRDeviceSyncService *)self syncServiceIdentifier];
        syncServiceIdentifier2 = [(VCNRDeviceSyncService *)equalCopy syncServiceIdentifier];
        if ([syncServiceIdentifier isEqual:syncServiceIdentifier2])
        {
          directoryURL = [(VCNRDeviceSyncService *)self directoryURL];
          directoryURL2 = [(VCNRDeviceSyncService *)equalCopy directoryURL];
          if (directoryURL == directoryURL2)
          {
            v13 = 1;
          }

          else
          {
            directoryURL3 = [(VCNRDeviceSyncService *)self directoryURL];
            directoryURL4 = [(VCNRDeviceSyncService *)equalCopy directoryURL];
            v13 = [directoryURL3 isEqual:directoryURL4];
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

- (VCNRDeviceSyncService)initWithCompanionSyncService:(id)service device:(id)device
{
  v39 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  deviceCopy = device;
  v9 = deviceCopy;
  if (serviceCopy)
  {
    if (deviceCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"VCNRDeviceSyncService.m" lineNumber:38 description:{@"Invalid parameter not satisfying: %@", @"service"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"VCNRDeviceSyncService.m" lineNumber:39 description:{@"Invalid parameter not satisfying: %@", @"device"}];

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
      firstObject = [v12 firstObject];
      integerValue = [firstObject integerValue];

      if (integerValue > 6)
      {
        v15 = 3;
LABEL_12:
        v10->_protocolVersion = v15;
        objc_storeWeak(&v10->_service, serviceCopy);
        v22 = MEMORY[0x277CCACA8];
        pairingID = [v9 pairingID];
        uUIDString = [pairingID UUIDString];
        v25 = [v22 stringWithFormat:@"CompanionSync-%@", uUIDString];
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