@interface SidecarDevice
+ (id)allDevices;
+ (id)allDevicesByForcingFetchFromRelay:(BOOL)relay;
+ (id)imageURLForDeviceTypeIdentifier:(id)identifier;
- (BOOL)hasHomeButton;
- (BOOL)isEqual:(id)equal;
- (BOOL)isRealityDevice;
- (NSString)deviceTypeIdentifier;
- (NSString)localizedDeviceType;
- (NSURL)imageURL;
- (SidecarDevice)initWithCoder:(id)coder;
- (SidecarDevice)initWithIdentifier:(id)identifier model:(id)model name:(id)name version:(id)version;
- (UTType)deviceType;
- (id)description;
- (int64_t)rapportVersion;
- (unint64_t)hash;
- (void)_updateFromDevice:(id)device generation:(unint64_t)generation;
- (void)encodeWithCoder:(id)coder;
- (void)setCameraCapabilities:(id)capabilities;
- (void)setMediaRouteIdentifier:(id)identifier;
@end

@implementation SidecarDevice

- (NSURL)imageURL
{
  deviceTypeIdentifier = [(SidecarDevice *)self deviceTypeIdentifier];
  v3 = [SidecarDevice imageURLForDeviceTypeIdentifier:deviceTypeIdentifier];

  return v3;
}

- (BOOL)isRealityDevice
{
  deviceType = [(SidecarDevice *)self deviceType];
  v4 = [deviceType conformsToType:*MEMORY[0x277CE1F00]];

  if (v4)
  {
    return 1;
  }

  model = [(SidecarDevice *)self model];
  v7 = [model hasPrefix:@"RealityDevice"];

  return v7;
}

- (NSString)localizedDeviceType
{
  deviceType = [(SidecarDevice *)self deviceType];
  v3 = [MEMORY[0x277CE1CB8] typeWithIdentifier:@"com.apple.iphone"];
  if ([deviceType conformsToType:v3])
  {
    localizedDescription = [v3 localizedDescription];
  }

  else
  {
    v5 = [MEMORY[0x277CE1CB8] typeWithIdentifier:@"com.apple.ipad"];
    if ([deviceType conformsToType:v5])
    {
      localizedDescription = [v5 localizedDescription];
    }

    else
    {
      v6 = [MEMORY[0x277CE1CB8] typeWithIdentifier:@"com.apple.ipod"];
      v7 = [MEMORY[0x277CE1CB8] typeWithIdentifier:@"com.apple.ipod"];
      v8 = [deviceType conformsToType:v7];

      if (v8)
      {
        v9 = v6;
      }

      else
      {
        v9 = deviceType;
      }

      localizedDescription = [v9 localizedDescription];
    }
  }

  return localizedDescription;
}

- (NSString)deviceTypeIdentifier
{
  deviceType = [(SidecarDevice *)self deviceType];
  identifier = [deviceType identifier];

  return identifier;
}

- (UTType)deviceType
{
  deviceType = self->_deviceType;
  if (!deviceType)
  {
    v4 = [MEMORY[0x277CE1CB8] _typeWithDeviceModelCode:self->_model];
    v5 = self->_deviceType;
    self->_deviceType = v4;

    deviceType = self->_deviceType;
  }

  return deviceType;
}

- (void)setMediaRouteIdentifier:(id)identifier
{
  v4 = [identifier copy];
  mediaRouteIdentifier = self->_mediaRouteIdentifier;
  self->_mediaRouteIdentifier = v4;

  MEMORY[0x2821F96F8]();
}

- (void)setCameraCapabilities:(id)capabilities
{
  v4 = [capabilities copy];
  cameraCapabilities = self->_cameraCapabilities;
  self->_cameraCapabilities = v4;

  MEMORY[0x2821F96F8]();
}

- (BOOL)hasHomeButton
{
  deviceType = [(SidecarDevice *)self deviceType];
  v3 = [MEMORY[0x277CE1CB8] typeWithIdentifier:@"com.apple.homebuttonless-device"];
  v4 = [deviceType conformsToType:v3];

  return v4 ^ 1;
}

- (int64_t)rapportVersion
{
  result = self->_rapportVersion;
  if (!result)
  {
    version = [(SidecarDevice *)self version];
    v5 = [version componentsSeparatedByString:@"."];

    v6 = [v5 count];
    if (v6 < 1)
    {
      goto LABEL_6;
    }

    v7 = v6;
    v8 = [v5 objectAtIndexedSubscript:0];
    self->_rapportVersion += 10000 * [v8 integerValue];

    if (v7 == 1 || ([v5 objectAtIndexedSubscript:1], v9 = objc_claimAutoreleasedReturnValue(), self->_rapportVersion = (fmax(objc_msgSend(v9, "integerValue"), 99.0) * 100.0 + self->_rapportVersion), v9, v7 <= 2))
    {
LABEL_6:
      self->_rapportVersion = self->_rapportVersion;
    }

    else
    {
      v10 = [v5 objectAtIndexedSubscript:2];
      self->_rapportVersion = (fmax([v10 integerValue], 99.0) + self->_rapportVersion);
    }

    return self->_rapportVersion;
  }

  return result;
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  uUIDString = [(NSUUID *)self->_identifier UUIDString];
  v4 = [uUIDString substringToIndex:8];
  v5 = [v2 stringWithFormat:@"IDS %@", v4];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  encodeObject(coderCopy, @"identifier", identifier);
  encodeObject(coderCopy, @"model", self->_model);
  encodeObject(coderCopy, @"name", self->_name);
  encodeInteger(coderCopy, @"status", self->_status);
  encodeObject(coderCopy, @"version", self->_version);
  encodeInteger(coderCopy, @"cameraState", self->_cameraState);
  encodeObject(coderCopy, @"cameraCapabilities", self->_cameraCapabilities);
  encodeObject(coderCopy, @"mediaRouteIdentifier", self->_mediaRouteIdentifier);
}

- (SidecarDevice)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = decodeObject(coderCopy, @"identifier", v6);
  v8 = decodeObject(coderCopy, @"model", v5);
  v9 = decodeObject(coderCopy, @"name", v5);
  v25 = decodeInteger(coderCopy, @"status");
  v10 = decodeObject(coderCopy, @"version", v5);
  v11 = decodeInteger(coderCopy, @"cameraState");
  v12 = @"cameraCapabilities";
  v13 = coderCopy;
  if ([v13 allowsKeyedCoding])
  {
    v14 = [v13 decodePropertyListForKey:@"cameraCapabilities"];
    decodeObject = v13;
  }

  else
  {
    decodeObject = [v13 decodeObject];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = decodeObject;
    }

    else
    {
      v16 = 0;
    }

    v14 = v16;
  }

  v17 = decodeObject(v13, @"mediaRouteIdentifier", v5);

  v26.receiver = self;
  v26.super_class = SidecarDevice;
  v18 = [(SidecarDevice *)&v26 init];
  v19 = v18;
  v20 = 0;
  if (v18 && v7 && v8 && v9)
  {
    objc_storeStrong(&v18->_identifier, v7);
    objc_storeStrong(&v19->_model, v8);
    objc_storeStrong(&v19->_name, v9);
    v19->_status = v25;
    if (v10)
    {
      v21 = v10;
    }

    else
    {
      v21 = &stru_2877BC080;
    }

    objc_storeStrong(&v19->_version, v21);
    v19->_cameraState = v11;
    if (v14)
    {
      v22 = v14;
    }

    else
    {
      v22 = MEMORY[0x277CBEC10];
    }

    objc_storeStrong(&v19->_cameraCapabilities, v22);
    if (v17)
    {
      v23 = v17;
    }

    else
    {
      v23 = &stru_2877BC080;
    }

    objc_storeStrong(&v19->_mediaRouteIdentifier, v23);
    v20 = v19;
  }

  return v20;
}

- (unint64_t)hash
{
  identifier = [(SidecarDevice *)self identifier];
  v3 = [identifier hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v17 = 1;
  }

  else if ([(SidecarDevice *)equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
    status = [(SidecarDevice *)v5 status];
    if (status == [(SidecarDevice *)self status])
    {
      identifier = [(SidecarDevice *)v5 identifier];
      identifier2 = [(SidecarDevice *)self identifier];
      if ([identifier isEqual:identifier2])
      {
        model = [(SidecarDevice *)v5 model];
        model2 = [(SidecarDevice *)self model];
        if ([model isEqual:model2])
        {
          name = [(SidecarDevice *)v5 name];
          name2 = [(SidecarDevice *)self name];
          if ([name isEqual:name2])
          {
            version = [(SidecarDevice *)v5 version];
            version2 = [(SidecarDevice *)self version];
            v21 = version;
            v15 = version;
            v16 = version2;
            if ([v15 isEqual:version2])
            {
              mediaRouteIdentifier = [(SidecarDevice *)v5 mediaRouteIdentifier];
              mediaRouteIdentifier2 = [(SidecarDevice *)self mediaRouteIdentifier];
              v17 = [mediaRouteIdentifier isEqual:mediaRouteIdentifier2];
            }

            else
            {
              v17 = 0;
            }
          }

          else
          {
            v17 = 0;
          }
        }

        else
        {
          v17 = 0;
        }
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (void)_updateFromDevice:(id)device generation:(unint64_t)generation
{
  deviceCopy = device;
  identifier = [deviceCopy identifier];
  if (([identifier isEqual:self->_identifier] & 1) == 0)
  {
    __assert_rtn("[SidecarDevice _updateFromDevice:generation:]", "SidecarDevice.m", 73, "[device.identifier isEqual:_identifier]");
  }

  if (self->_generation != generation)
  {
    self->_generation = generation;
    model = [deviceCopy model];
    v8 = [model isEqualToString:self->_model];

    if ((v8 & 1) == 0)
    {
      model2 = [deviceCopy model];
      model = self->_model;
      self->_model = model2;

      deviceType = self->_deviceType;
      self->_deviceType = 0;
    }

    name = [deviceCopy name];
    v13 = [name isEqualToString:self->_name];

    if ((v13 & 1) == 0)
    {
      name2 = [deviceCopy name];
      name = self->_name;
      self->_name = name2;
    }

    self->_status = [deviceCopy status];
    version = [deviceCopy version];
    version = self->_version;
    self->_version = version;

    self->_cameraState = [deviceCopy cameraState];
    cameraCapabilities = [deviceCopy cameraCapabilities];
    cameraCapabilities = self->_cameraCapabilities;
    self->_cameraCapabilities = cameraCapabilities;

    mediaRouteIdentifier = [deviceCopy mediaRouteIdentifier];
    mediaRouteIdentifier = self->_mediaRouteIdentifier;
    self->_mediaRouteIdentifier = mediaRouteIdentifier;
  }
}

- (SidecarDevice)initWithIdentifier:(id)identifier model:(id)model name:(id)name version:(id)version
{
  identifierCopy = identifier;
  modelCopy = model;
  nameCopy = name;
  versionCopy = version;
  v18.receiver = self;
  v18.super_class = SidecarDevice;
  v15 = [(SidecarDevice *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_identifier, identifier);
    objc_storeStrong(&v16->_model, model);
    objc_storeStrong(&v16->_name, name);
    objc_storeStrong(&v16->_version, version);
  }

  return v16;
}

+ (id)imageURLForDeviceTypeIdentifier:(id)identifier
{
  v3 = [MEMORY[0x277CE1CB8] typeWithIdentifier:identifier];
  v4 = [MEMORY[0x277CE1CB8] typeWithIdentifier:@"com.apple.homebuttonless-device"];
  v5 = [v3 conformsToType:v4];

  v6 = [MEMORY[0x277CE1CB8] typeWithIdentifier:@"com.apple.iphone"];
  v7 = [v3 conformsToType:v6];

  if (v7)
  {
    v8 = @"com.apple.iphone-x";
    v9 = v5 == 0;
  }

  else
  {
    v10 = [MEMORY[0x277CE1CB8] typeWithIdentifier:@"com.apple.ipad"];
    v11 = [v3 conformsToType:v10];

    v8 = @"com.apple.ipad-pro";
    if (!v5)
    {
      v8 = @"com.apple.ipad";
    }

    v9 = v11 == 0;
  }

  if (v9)
  {
    v12 = @"com.apple.iphone";
  }

  else
  {
    v12 = v8;
  }

  v13 = SidecarCoreBundle();
  v14 = [v13 URLForResource:v12 withExtension:@"pdf"];

  return v14;
}

+ (id)allDevicesByForcingFetchFromRelay:(BOOL)relay
{
  relayCopy = relay;
  v58 = *MEMORY[0x277D85DE8];
  SidecarRegisterStateNotification();
  v4 = atomic_load(&SidecarDeviceState);
  v5 = atomic_exchange(&allDevicesByForcingFetchFromRelay__allDevicesGeneration, v4);
  v48 = 0;
  v49 = &v48;
  v50 = 0x3032000000;
  v51 = __Block_byref_object_copy__493;
  v52 = __Block_byref_object_dispose__494;
  v53 = 0;
  if (v5 != v4 || relayCopy)
  {
    v42 = 0;
    v43 = &v42;
    v44 = 0x3032000000;
    v45 = __Block_byref_object_copy__493;
    v46 = __Block_byref_object_dispose__494;
    v47 = 0;
    v7 = SidecarQueue();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __51__SidecarDevice_allDevicesByForcingFetchFromRelay___block_invoke;
    block[3] = &unk_279BC31F8;
    block[4] = &v42;
    dispatch_sync(v7, block);

    if (v4 || relayCopy)
    {
      v8 = SidecarDevicesForService(@"*");
      if (relayCopy)
      {
        v9 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v8, "count")}];
        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        v10 = v8;
        v11 = [v10 countByEnumeratingWithState:&v37 objects:v57 count:16];
        if (v11)
        {
          v12 = *v38;
          do
          {
            for (i = 0; i != v11; ++i)
            {
              if (*v38 != v12)
              {
                objc_enumerationMutation(v10);
              }

              identifier = [*(*(&v37 + 1) + 8 * i) identifier];
              [v9 addObject:identifier];
            }

            v11 = [v10 countByEnumeratingWithState:&v37 objects:v57 count:16];
          }

          while (v11);
        }

        v15 = SidecarCoreLogSubsystem(OS_LOG_TYPE_DEFAULT);
        v16 = v15;
        if (v15 && os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v56 = v9;
          _os_log_impl(&dword_26604C000, v16, OS_LOG_TYPE_DEFAULT, "Forced a fetch of devices from SidecarRelay. Identifiers of devices fetched: [%@]", buf, 0xCu);
        }
      }
    }

    else
    {
      v8 = MEMORY[0x277CBEBF8];
    }

    v17 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v8, "count")}];
    v18 = v49[5];
    v49[5] = v17;

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v19 = v8;
    v20 = [v19 countByEnumeratingWithState:&v33 objects:v54 count:16];
    if (v20)
    {
      v21 = *v34;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v34 != v21)
          {
            objc_enumerationMutation(v19);
          }

          v23 = *(*(&v33 + 1) + 8 * j);
          identifier2 = [v23 identifier];
          v25 = [v43[5] objectForKeyedSubscript:identifier2];
          v26 = v25;
          if (v25)
          {
            [v25 _updateFromDevice:v23 generation:v4];
            v23 = v26;
          }

          else
          {
            v23[8] = v4;
          }

          [v49[5] setObject:v23 forKeyedSubscript:identifier2];
        }

        v20 = [v19 countByEnumeratingWithState:&v33 objects:v54 count:16];
      }

      while (v20);
    }

    _Block_object_dispose(&v42, 8);
  }

  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = __Block_byref_object_copy__493;
  v46 = __Block_byref_object_dispose__494;
  v47 = 0;
  v27 = SidecarQueue();
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __51__SidecarDevice_allDevicesByForcingFetchFromRelay___block_invoke_52;
  v32[3] = &unk_279BC3248;
  v32[4] = &v48;
  v32[5] = &v42;
  dispatch_sync(v27, v32);

  v28 = v43[5];
  if (!v28)
  {
    v28 = MEMORY[0x277CBEBF8];
  }

  v29 = v28;
  _Block_object_dispose(&v42, 8);

  _Block_object_dispose(&v48, 8);
  v30 = *MEMORY[0x277D85DE8];

  return v29;
}

void __51__SidecarDevice_allDevicesByForcingFetchFromRelay___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = [allDevicesByForcingFetchFromRelay__allDevicesArray count];
  v3 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:v2];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = allDevicesByForcingFetchFromRelay__allDevicesArray;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = *(*(*(a1 + 32) + 8) + 40);
        v13 = [v11 identifier];
        [v12 setObject:v11 forKeyedSubscript:v13];
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __51__SidecarDevice_allDevicesByForcingFetchFromRelay___block_invoke_52(uint64_t a1)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  if (v2)
  {
    v3 = [v2 allValues];
    v4 = allDevicesByForcingFetchFromRelay__allDevicesArray;
    allDevicesByForcingFetchFromRelay__allDevicesArray = v3;
  }

  v5 = [MEMORY[0x277CE1CB8] typeWithIdentifier:@"com.apple.iphone"];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __51__SidecarDevice_allDevicesByForcingFetchFromRelay___block_invoke_2;
  v9[3] = &unk_279BC3220;
  v9[4] = v5;
  v6 = [allDevicesByForcingFetchFromRelay__allDevicesArray sortedArrayUsingComparator:v9];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

uint64_t __51__SidecarDevice_allDevicesByForcingFetchFromRelay___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v5;
  v8 = v6;
  v9 = MEMORY[0x277CE1CB8];
  v10 = [v7 deviceTypeIdentifier];
  v11 = [v9 typeWithIdentifier:v10];

  v12 = MEMORY[0x277CE1CB8];
  v13 = [v8 deviceTypeIdentifier];
  v14 = [v12 typeWithIdentifier:v13];

  v15 = [v11 conformsToType:*(a1 + 32)];
  v16 = [v14 conformsToType:*(a1 + 32)];
  if (v15)
  {
    v17 = -1;
  }

  else
  {
    v17 = 1;
  }

  if (v15 == v16)
  {
    v18 = [v7 name];
    v19 = [v8 name];
    v17 = [v18 compare:v19 options:705];

    if (!v17)
    {
      v20 = [v7 model];
      v21 = [v8 model];
      v17 = [v20 compare:v21 options:65];

      if (!v17)
      {
        v22 = [v7 identifier];
        v23 = [v22 UUIDString];
        v24 = [v8 identifier];
        v25 = [v24 UUIDString];
        v17 = [v23 compare:v25 options:0];
      }
    }
  }

  return v17;
}

+ (id)allDevices
{
  v2 = objc_opt_class();

  return [v2 allDevicesByForcingFetchFromRelay:0];
}

@end