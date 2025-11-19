@interface SFAuthenticationDevice
- (BOOL)isEqual:(id)a3;
- (SFAuthenticationDevice)init;
- (SFAuthenticationDevice)initWith:(id)a3;
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

- (SFAuthenticationDevice)initWith:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = SFAuthenticationDevice;
  v5 = [(SFAuthenticationDevice *)&v18 init];
  if (v5)
  {
    v6 = [v4 modelDescription];
    modelDescription = v5->_modelDescription;
    v5->_modelDescription = v6;

    v5->_enabledAsKey = [v4 unlockEnabled];
    v5->_enabledAsLock = [v4 canUnlockDevice];
    v5->_bluetoothCloudPaired = [v4 bluetoothCloudPaired];
    v8 = [v4 uniqueID];
    idsDeviceID = v5->_idsDeviceID;
    v5->_idsDeviceID = v8;
  }

  v10 = [v4 uniqueID];
  [(SFPeerDevice *)v5 setUniqueID:v10];

  v11 = [v4 modelIdentifier];
  [(SFPeerDevice *)v5 setModelIdentifier:v11];

  v12 = [v4 productName];
  [(SFPeerDevice *)v5 setProductName:v12];

  v13 = [v4 productVersion];
  [(SFPeerDevice *)v5 setProductVersion:v13];

  v14 = [v4 name];
  [(SFPeerDevice *)v5 setName:v14];

  v15 = [v4 deviceColor];
  [(SFPeerDevice *)v5 setDeviceColor:v15];

  v16 = [v4 enclosureColor];
  [(SFPeerDevice *)v5 setEnclosureColor:v16];

  -[SFPeerDevice setDefaultPairedDevice:](v5, "setDefaultPairedDevice:", [v4 isDefaultPairedDevice]);
  -[SFPeerDevice setValidKey:](v5, "setValidKey:", [v4 validKey]);
  -[SFPeerDevice setKeyCounter:](v5, "setKeyCounter:", [v4 keyCounter]);

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(SFAuthenticationDevice *)self idsDeviceID];
      v7 = [(SFAuthenticationDevice *)v5 idsDeviceID];
      v8 = [v6 isEqual:v7];

      if (v8 && (v9 = [(SFAuthenticationDevice *)self bluetoothCloudPaired], v9 == [(SFAuthenticationDevice *)v5 bluetoothCloudPaired]))
      {
        v11 = [(SFPeerDevice *)self name];
        v12 = [(SFPeerDevice *)v5 name];
        v10 = [v11 isEqualToString:v12];
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