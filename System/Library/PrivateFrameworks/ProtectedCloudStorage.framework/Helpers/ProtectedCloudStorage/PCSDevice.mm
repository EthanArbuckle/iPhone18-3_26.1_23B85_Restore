@interface PCSDevice
- (BOOL)_onQueue_isReachable;
- (BOOL)isEqual:(id)equal;
- (BOOL)isReachable;
- (BOOL)supportsNewProtocol;
- (BOOL)supportsPCSKeySync;
- (NSString)UUID;
- (NSString)buildVersion;
- (NSString)model;
- (NSString)osVersion;
- (NSString)serialNumber;
- (NSString)watchSize;
- (NSUUID)pairingID;
- (PCSDevice)init;
- (PCSDevice)initWithIDSDevice:(id)device;
- (unint64_t)hash;
- (void)addObserver:(id)observer;
- (void)removeObserver:(id)observer;
- (void)updateIDSDevice:(id)device;
@end

@implementation PCSDevice

- (PCSDevice)init
{
  v8.receiver = self;
  v8.super_class = PCSDevice;
  v2 = [(PCSDevice *)&v8 init];
  if (v2)
  {
    v3 = +[NSHashTable weakObjectsHashTable];
    observers = v2->_observers;
    v2->_observers = v3;

    v5 = dispatch_queue_create("com.apple.ProtectedCloudStorage.device_internal_queue", 0);
    internalQueue = v2->_internalQueue;
    v2->_internalQueue = v5;
  }

  return v2;
}

- (PCSDevice)initWithIDSDevice:(id)device
{
  deviceCopy = device;
  v5 = [(PCSDevice *)self init];
  if (!v5)
  {
    goto LABEL_6;
  }

  if (!deviceCopy)
  {
    v16 = qword_1000407B8;
    if (os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v22) = 0;
      v17 = "Got nil IDSDevice";
      v18 = v16;
      v19 = 2;
LABEL_14:
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, v17, &v22, v19);
      goto LABEL_15;
    }

    goto LABEL_15;
  }

  v6 = IDSCopyIDForDevice();
  idsDeviceIdentifier = v5->_idsDeviceIdentifier;
  v5->_idsDeviceIdentifier = v6;

  idsDeviceIdentifier = [(PCSDevice *)v5 idsDeviceIdentifier];

  if (!idsDeviceIdentifier)
  {
    v20 = qword_1000407B8;
    if (os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 138412290;
      v23 = deviceCopy;
      v17 = "Failed to get IDS Device Identifier for %@";
LABEL_13:
      v18 = v20;
      v19 = 12;
      goto LABEL_14;
    }

LABEL_15:
    v15 = 0;
    goto LABEL_16;
  }

  [(PCSDevice *)v5 updateIDSDevice:deviceCopy];
  v9 = +[NRPairedDeviceRegistry sharedInstance];
  v10 = [v9 deviceForIDSDevice:deviceCopy];
  nrDevice = v5->_nrDevice;
  v5->_nrDevice = v10;

  nrDevice = [(PCSDevice *)v5 nrDevice];

  if (!nrDevice)
  {
    v20 = qword_1000407B8;
    if (os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 138412290;
      v23 = deviceCopy;
      v17 = "Failed to get NRDevice from IDS device %@";
      goto LABEL_13;
    }

    goto LABEL_15;
  }

  v13 = +[PCSPairedSyncDelegate sharedSyncDelegate];
  pairingID = [(PCSDevice *)v5 pairingID];
  -[PCSDevice setSyncingIsRestricted:](v5, "setSyncingIsRestricted:", [v13 syncingIsRestrictedForPairingID:pairingID]);

LABEL_6:
  v15 = v5;
LABEL_16:

  return v15;
}

- (void)updateIDSDevice:(id)device
{
  deviceCopy = device;
  internalQueue = [(PCSDevice *)self internalQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000CEF4;
  v7[3] = &unk_100038CA8;
  v7[4] = self;
  v8 = deviceCopy;
  v6 = deviceCopy;
  dispatch_sync(internalQueue, v7);
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  internalQueue = [(PCSDevice *)self internalQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000D2A4;
  v7[3] = &unk_100038CA8;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_sync(internalQueue, v7);
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  internalQueue = [(PCSDevice *)self internalQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000D3AC;
  v7[3] = &unk_100038CA8;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_sync(internalQueue, v7);
}

- (NSUUID)pairingID
{
  nrDevice = [(PCSDevice *)self nrDevice];
  v3 = [nrDevice valueForProperty:NRDevicePropertyPairingID];

  return v3;
}

- (BOOL)supportsPCSKeySync
{
  nrDevice = [(PCSDevice *)self nrDevice];
  NRWatchOSVersionForRemoteDevice();
  IsGreaterThanOrEqual = NRVersionIsGreaterThanOrEqual();

  return IsGreaterThanOrEqual;
}

- (BOOL)supportsNewProtocol
{
  nrDevice = [(PCSDevice *)self nrDevice];
  NRWatchOSVersionForRemoteDevice();

  return NRVersionIsGreaterThanOrEqual();
}

- (BOOL)_onQueue_isReachable
{
  isConnected = [(PCSDevice *)self isConnected];
  if (isConnected)
  {

    LOBYTE(isConnected) = [(PCSDevice *)self isActivePairedDevice];
  }

  return isConnected;
}

- (BOOL)isReachable
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  internalQueue = [(PCSDevice *)self internalQueue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000D604;
  v5[3] = &unk_100038C30;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(internalQueue, v5);

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

- (NSString)model
{
  nrDevice = [(PCSDevice *)self nrDevice];
  v4 = [nrDevice valueForProperty:NRDevicePropertyModelNumber];

  nrDevice2 = [(PCSDevice *)self nrDevice];
  v6 = [nrDevice2 valueForProperty:NRDevicePropertyRegionInfo];

  if (!v6)
  {
    v6 = &stru_100039CF8;
  }

  if ([v4 length])
  {
    v7 = [NSString stringWithFormat:@"%@%@", v4, v6];
  }

  else
  {
    v7 = @"N/A";
  }

  return v7;
}

- (NSString)watchSize
{
  nrDevice = [(PCSDevice *)self nrDevice];
  v3 = [nrDevice valueForProperty:NRDevicePropertyProductType];

  v4 = NRDeviceSizeForProductType();
  if (v4 > 2)
  {
    v5 = @"Unhandled";
  }

  else
  {
    v5 = off_100039080[v4];
  }

  return &v5->isa;
}

- (NSString)buildVersion
{
  nrDevice = [(PCSDevice *)self nrDevice];
  v3 = [nrDevice valueForProperty:NRDevicePropertySystemBuildVersion];

  return v3;
}

- (NSString)osVersion
{
  nrDevice = [(PCSDevice *)self nrDevice];
  v3 = [nrDevice valueForProperty:NRDevicePropertySystemVersion];

  return v3;
}

- (NSString)serialNumber
{
  nrDevice = [(PCSDevice *)self nrDevice];
  v3 = [nrDevice valueForProperty:NRDevicePropertySerialNumber];

  return v3;
}

- (NSString)UUID
{
  nrDevice = [(PCSDevice *)self nrDevice];
  v3 = [nrDevice valueForProperty:NRDevicePropertyUDID];

  return v3;
}

- (unint64_t)hash
{
  idsDeviceIdentifier = [(PCSDevice *)self idsDeviceIdentifier];
  v3 = [idsDeviceIdentifier hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      idsDeviceIdentifier = [(PCSDevice *)equalCopy idsDeviceIdentifier];
      idsDeviceIdentifier2 = [(PCSDevice *)self idsDeviceIdentifier];
      v7 = [idsDeviceIdentifier isEqualToString:idsDeviceIdentifier2];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

@end