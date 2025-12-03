@interface SFAuthenticationDevice
- (BOOL)isEqual:(id)equal;
- (SFAuthenticationDevice)init;
- (SFAuthenticationDevice)initWith:(id)with;
@end

@implementation SFAuthenticationDevice

- (SFAuthenticationDevice)init
{
  v6.receiver = self;
  v6.super_class = SFAuthenticationDevice;
  v2 = [(SFAuthenticationDevice *)&v6 init];
  v3 = v2;
  if (v2)
  {
    modelDescription = v2->_modelDescription;
    v2->_modelDescription = &stru_1F1D30528;
  }

  return v3;
}

- (SFAuthenticationDevice)initWith:(id)with
{
  withCopy = with;
  v18.receiver = self;
  v18.super_class = SFAuthenticationDevice;
  v5 = [(SFAuthenticationDevice *)&v18 init];
  if (v5)
  {
    modelDescription = [withCopy modelDescription];
    modelDescription = v5->_modelDescription;
    v5->_modelDescription = modelDescription;

    v5->_enabledAsKey = [withCopy unlockEnabled];
    v5->_enabledAsLock = [withCopy canUnlockDevice];
    v5->_bluetoothCloudPaired = [withCopy bluetoothCloudPaired];
    uniqueID = [withCopy uniqueID];
    idsDeviceID = v5->_idsDeviceID;
    v5->_idsDeviceID = uniqueID;
  }

  uniqueID2 = [withCopy uniqueID];
  [(SFPeerDevice *)v5 setUniqueID:uniqueID2];

  modelIdentifier = [withCopy modelIdentifier];
  [(SFPeerDevice *)v5 setModelIdentifier:modelIdentifier];

  productName = [withCopy productName];
  [(SFPeerDevice *)v5 setProductName:productName];

  productVersion = [withCopy productVersion];
  [(SFPeerDevice *)v5 setProductVersion:productVersion];

  name = [withCopy name];
  [(SFPeerDevice *)v5 setName:name];

  deviceColor = [withCopy deviceColor];
  [(SFPeerDevice *)v5 setDeviceColor:deviceColor];

  enclosureColor = [withCopy enclosureColor];
  [(SFPeerDevice *)v5 setEnclosureColor:enclosureColor];

  -[SFPeerDevice setDefaultPairedDevice:](v5, "setDefaultPairedDevice:", [withCopy isDefaultPairedDevice]);
  -[SFPeerDevice setValidKey:](v5, "setValidKey:", [withCopy validKey]);
  -[SFPeerDevice setKeyCounter:](v5, "setKeyCounter:", [withCopy keyCounter]);

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      idsDeviceID = [(SFAuthenticationDevice *)self idsDeviceID];
      idsDeviceID2 = [(SFAuthenticationDevice *)v5 idsDeviceID];
      v8 = [idsDeviceID isEqual:idsDeviceID2];

      if (v8 && (v9 = [(SFAuthenticationDevice *)self bluetoothCloudPaired], v9 == [(SFAuthenticationDevice *)v5 bluetoothCloudPaired]))
      {
        name = [(SFPeerDevice *)self name];
        name2 = [(SFPeerDevice *)v5 name];
        v10 = [name isEqualToString:name2];
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

@end