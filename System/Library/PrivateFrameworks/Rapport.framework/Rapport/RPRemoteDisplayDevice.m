@interface RPRemoteDisplayDevice
- (BOOL)isEqualToDevice:(id)a3;
- (NSString)persistentIdentifier;
- (RPRemoteDisplayDevice)initWithCoder:(id)a3;
- (RPRemoteDisplayDevice)initWithIdentifier:(id)a3 name:(id)a4 model:(id)a5 accountID:(id)a6;
- (RPRemoteDisplayDevice)initWithKeychainDictionaryRepresentation:(id)a3;
- (id)descriptionWithLevel:(int)a3;
- (id)keychainDictionaryRepresentation;
- (unsigned)updateWithEndpoint:(id)a3;
- (void)clearCameraCapabilitiesRefetchTimer;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RPRemoteDisplayDevice

- (RPRemoteDisplayDevice)initWithIdentifier:(id)a3 name:(id)a4 model:(id)a5 accountID:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v25.receiver = self;
  v25.super_class = RPRemoteDisplayDevice;
  v14 = [(RPRemoteDisplayDevice *)&v25 init];
  if (v14)
  {
    v15 = [v10 copy];
    idsDeviceIdentifier = v14->super._idsDeviceIdentifier;
    v14->super._idsDeviceIdentifier = v15;

    v17 = [v11 copy];
    name = v14->super._name;
    v14->super._name = v17;

    v19 = [v12 copy];
    model = v14->super._model;
    v14->super._model = v19;

    v21 = [v13 copy];
    accountID = v14->super._accountID;
    v14->super._accountID = v21;

    v23 = v14;
  }

  return v14;
}

- (RPRemoteDisplayDevice)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = RPRemoteDisplayDevice;
  v5 = [(RPEndpoint *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodePropertyListForKey:@"ccap"];
    cameraCapabilities = v5->_cameraCapabilities;
    v5->_cameraCapabilities = v6;

    v12 = 0;
    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_flags = v12;
    }

    v8 = v4;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v9 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = RPRemoteDisplayDevice;
  [(RPEndpoint *)&v8 encodeWithCoder:v4];
  cameraCapabilities = self->_cameraCapabilities;
  if (cameraCapabilities)
  {
    [v4 encodeObject:cameraCapabilities forKey:@"ccap"];
  }

  flags = self->_flags;
  if (flags)
  {
    [v4 encodeInt64:flags forKey:@"fl"];
  }

  persistentIdentifier = self->_persistentIdentifier;
  if (persistentIdentifier)
  {
    [v4 encodeObject:persistentIdentifier forKey:@"pi"];
  }
}

- (BOOL)isEqualToDevice:(id)a3
{
  v4 = a3;
  v5 = [v4 identifier];
  if (v5)
  {
    v6 = v5;
    v7 = [v4 identifier];
    v31.receiver = self;
    v31.super_class = RPRemoteDisplayDevice;
    v8 = [(RPEndpoint *)&v31 compareWithDeviceIdentifier:v7];

    if (v8)
    {
      goto LABEL_9;
    }
  }

  v9 = [v4 idsDeviceIdentifier];
  if (v9)
  {
    v10 = v9;
    v11 = [v4 idsDeviceIdentifier];
    v30.receiver = self;
    v30.super_class = RPRemoteDisplayDevice;
    v12 = [(RPEndpoint *)&v30 compareWithDeviceIdentifier:v11];

    if (v12)
    {
      goto LABEL_9;
    }
  }

  v13 = [v4 verifiedIdentity];
  if (v13)
  {
    v14 = v13;
    v15 = [v4 verifiedIdentity];
    v29.receiver = self;
    v29.super_class = RPRemoteDisplayDevice;
    v16 = [(RPEndpoint *)&v29 compareWithDeviceIdentifier:v15];

    if (v16)
    {
      goto LABEL_9;
    }
  }

  v17 = [v4 bleDevice];
  v18 = [v17 rapportIdentifier];
  if (v18)
  {
    v19 = v18;
    v20 = [v4 bleDevice];
    v21 = [v20 rapportIdentifier];
    v28.receiver = self;
    v28.super_class = RPRemoteDisplayDevice;
    v22 = [(RPEndpoint *)&v28 compareWithDeviceIdentifier:v21];

    if (v22)
    {
LABEL_9:
      v23 = 1;
      goto LABEL_15;
    }
  }

  else
  {
  }

  v24 = [v4 sessionPairingIdentifier];
  if (v24)
  {
    v25 = [v4 sessionPairingIdentifier];
    v27.receiver = self;
    v27.super_class = RPRemoteDisplayDevice;
    v23 = [(RPEndpoint *)&v27 compareWithDeviceIdentifier:v25];
  }

  else
  {
    v23 = 0;
  }

LABEL_15:
  return v23;
}

- (id)descriptionWithLevel:(int)a3
{
  v4 = shouldPrintSensitiveData();
  v53 = 0;
  NSAppendPrintF();
  v5 = 0;
  v6 = self->super._accountAltDSID;
  v7 = self->super._identifier;
  v8 = self->super._idsDeviceIdentifier;
  if ([(NSString *)v8 isEqual:v7])
  {

    v7 = 0;
  }

  if (v6)
  {
    v52 = v5;
    formatSensitiveData(", AltDSID ", v4);
    v35 = v6;
    NSAppendPrintF();
    v9 = v5;

    v5 = v9;
  }

  if (v8)
  {
    v51 = v5;
    formatSensitiveData(", IDS ", v4);
    v35 = v8;
    NSAppendPrintF();
    v10 = v5;

    v5 = v10;
  }

  if (v7)
  {
    v50 = v5;
    formatSensitiveData(", ID ", v4);
    v35 = v7;
    NSAppendPrintF();
    v11 = v5;

    v5 = v11;
  }

  persistentIdentifier = self->_persistentIdentifier;
  if (persistentIdentifier)
  {
    v49 = v5;
    v13 = persistentIdentifier;
    formatSensitiveData(", PI ", v4);
    v35 = v13;
    NSAppendPrintF();
    v14 = v5;

    v5 = v14;
  }

  name = self->super._name;
  if (name)
  {
    v48 = v5;
    v16 = name;
    formatSensitiveData(", Nm ", v4);
    v35 = v16;
    NSAppendPrintF();
    v17 = v5;

    v5 = v17;
  }

  model = self->super._model;
  if (model)
  {
    v47 = v5;
    v19 = model;
    formatSensitiveData(", Md ", v4);
    v35 = v19;
    NSAppendPrintF();
    v20 = v5;

    v5 = v20;
  }

  sessionPairingIdentifier = self->super._sessionPairingIdentifier;
  if (sessionPairingIdentifier)
  {
    v46 = v5;
    v22 = sessionPairingIdentifier;
    formatSensitiveData(", spID ", v4);
    v35 = v22;
    NSAppendPrintF();
    v23 = v5;

    v5 = v23;
  }

  if (v4)
  {
    v45.receiver = self;
    v45.super_class = RPRemoteDisplayDevice;
    [(RPEndpoint *)&v45 operatingSystemVersion];
    if (v44)
    {
      v43 = v5;
      v41.receiver = self;
      v41.super_class = RPRemoteDisplayDevice;
      [(RPEndpoint *)&v41 operatingSystemVersion];
      v35 = RPNSOperatingSystemVersionToString(v42);
      NSAppendPrintF();
      v24 = v43;

      v5 = v24;
    }

    sourceVersion = self->super._sourceVersion;
    if (sourceVersion)
    {
      v40 = v5;
      v35 = sourceVersion;
      NSAppendPrintF();
      v26 = v5;

      v5 = v26;
    }
  }

  cameraCapabilities = self->_cameraCapabilities;
  if (cameraCapabilities)
  {
    v39 = v5;
    v35 = [(NSDictionary *)cameraCapabilities count];
    NSAppendPrintF();
    v28 = v5;

    v5 = v28;
  }

  v38.receiver = self;
  v38.super_class = RPRemoteDisplayDevice;
  if ([(RPEndpoint *)&v38 cameraState])
  {
    NSAppendPrintF();
    v30 = v5;

    v5 = v30;
  }

  if (self->_flags)
  {
    flags = self->_flags;
    NSAppendPrintF();
    v31 = v5;

    v5 = v31;
  }

  if (self->super._statusFlags)
  {
    statusFlags = self->super._statusFlags;
    NSAppendPrintF();
    v32 = v5;

    v5 = v32;
  }

  v33 = v5;

  return v5;
}

- (unsigned)updateWithEndpoint:(id)a3
{
  v7.receiver = self;
  v7.super_class = RPRemoteDisplayDevice;
  v4 = [(RPEndpoint *)&v7 updateWithEndpoint:a3];
  idsDeviceIdentifier = self->super._idsDeviceIdentifier;
  if (idsDeviceIdentifier && !self->_persistentIdentifier)
  {
    objc_storeStrong(&self->_persistentIdentifier, idsDeviceIdentifier);
    v4 |= 2u;
  }

  return v4;
}

- (NSString)persistentIdentifier
{
  persistentIdentifier = self->_persistentIdentifier;
  if (persistentIdentifier || (persistentIdentifier = self->super._idsDeviceIdentifier) != 0)
  {
    v4 = persistentIdentifier;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)clearCameraCapabilitiesRefetchTimer
{
  cameraCapabilitiesRefetchTimer = self->_cameraCapabilitiesRefetchTimer;
  if (cameraCapabilitiesRefetchTimer)
  {
    v5 = cameraCapabilitiesRefetchTimer;
    dispatch_source_cancel(v5);
    v4 = self->_cameraCapabilitiesRefetchTimer;
    self->_cameraCapabilitiesRefetchTimer = 0;
  }
}

- (RPRemoteDisplayDevice)initWithKeychainDictionaryRepresentation:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKey:@"idsD"];

  if (!v5)
  {
    if (gLogCategory_RPRemoteDisplayDevice <= 90 && (gLogCategory_RPRemoteDisplayDevice != -1 || _LogCategory_Initialize()))
    {
      [RPRemoteDisplayDevice initWithKeychainDictionaryRepresentation:];
    }

    goto LABEL_37;
  }

  v38.receiver = self;
  v38.super_class = RPRemoteDisplayDevice;
  self = [(RPRemoteDisplayDevice *)&v38 init];
  if (!self)
  {
LABEL_37:
    v36 = 0;
    goto LABEL_38;
  }

  v6 = [v4 objectForKey:@"idsD"];
  v7 = objc_opt_class();
  v8 = v6;
  if (v7)
  {
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  [(RPEndpoint *)self setIdsDeviceIdentifier:v10];
  v11 = [v4 objectForKey:@"idsD"];
  v12 = objc_opt_class();
  v13 = v11;
  if (v12)
  {
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;

  [(RPRemoteDisplayDevice *)self setPersistentIdentifier:v15];
  v16 = [v4 objectForKey:@"nm"];
  v17 = objc_opt_class();
  v18 = v16;
  if (v17)
  {
    if (objc_opt_isKindOfClass())
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  v20 = v19;

  [(RPEndpoint *)self setName:v20];
  v21 = [v4 objectForKey:@"md"];
  v22 = objc_opt_class();
  v23 = v21;
  if (v22)
  {
    if (objc_opt_isKindOfClass())
    {
      v24 = v23;
    }

    else
    {
      v24 = 0;
    }
  }

  else
  {
    v24 = 0;
  }

  v25 = v24;

  [(RPEndpoint *)self setModel:v25];
  v26 = [v4 objectForKey:@"aid"];
  v27 = objc_opt_class();
  v28 = v26;
  if (v27)
  {
    if (objc_opt_isKindOfClass())
    {
      v29 = v28;
    }

    else
    {
      v29 = 0;
    }
  }

  else
  {
    v29 = 0;
  }

  v30 = v29;

  [(RPEndpoint *)self setAccountID:v30];
  v31 = [v4 objectForKey:@"altDSID"];
  v32 = objc_opt_class();
  v33 = v31;
  if (v32)
  {
    if (objc_opt_isKindOfClass())
    {
      v34 = v33;
    }

    else
    {
      v34 = 0;
    }
  }

  else
  {
    v34 = 0;
  }

  v35 = v34;

  [(RPEndpoint *)self setAccountAltDSID:v35];
  self = self;
  v36 = self;
LABEL_38:

  return v36;
}

- (id)keychainDictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  idsDeviceIdentifier = self->super._idsDeviceIdentifier;
  if (idsDeviceIdentifier)
  {
    v5 = [(NSString *)idsDeviceIdentifier copy];
    [v3 setObject:v5 forKey:@"idsD"];
  }

  name = self->super._name;
  if (name)
  {
    v7 = [(NSString *)name copy];
    [v3 setObject:v7 forKey:@"nm"];
  }

  model = self->super._model;
  if (model)
  {
    v9 = [(NSString *)model copy];
    [v3 setObject:v9 forKey:@"md"];
  }

  accountID = self->super._accountID;
  if (accountID)
  {
    v11 = [(NSString *)accountID copy];
    [v3 setObject:v11 forKey:@"aid"];
  }

  accountAltDSID = self->super._accountAltDSID;
  if (accountAltDSID)
  {
    v13 = [(NSString *)accountAltDSID copy];
    [v3 setObject:v13 forKey:@"altDSID"];
  }

  v14 = [v3 copy];

  return v14;
}

@end