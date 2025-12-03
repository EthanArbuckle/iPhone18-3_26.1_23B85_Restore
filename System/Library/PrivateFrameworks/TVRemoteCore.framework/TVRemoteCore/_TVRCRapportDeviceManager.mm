@interface _TVRCRapportDeviceManager
- (BOOL)createOrUpdateDeviceImplForLinkDevice:(id)device;
- (BOOL)removeDeviceImplForLinkDevice:(id)device;
- (_TVRCRapportDeviceManager)init;
- (id)description;
- (id)deviceImplForLinkDevice:(id)device;
- (void)_checkIfDuplicateNameButDifferentIDSIdentifier:(id)identifier linkDevice:(id)device;
@end

@implementation _TVRCRapportDeviceManager

- (_TVRCRapportDeviceManager)init
{
  v6.receiver = self;
  v6.super_class = _TVRCRapportDeviceManager;
  v2 = [(_TVRCRapportDeviceManager *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    deviceImplMap = v2->_deviceImplMap;
    v2->_deviceImplMap = v3;
  }

  return v2;
}

- (id)deviceImplForLinkDevice:(id)device
{
  v4 = [(_TVRCRapportDeviceManager *)self _identifierForDevice:device];
  if (v4)
  {
    deviceImplMap = [(_TVRCRapportDeviceManager *)self deviceImplMap];
    v6 = [deviceImplMap objectForKey:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)createOrUpdateDeviceImplForLinkDevice:(id)device
{
  v31 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  v5 = _TVRCRapportQueryLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    relevantIdentifiers = [deviceCopy relevantIdentifiers];
    v25 = 136315650;
    v26 = "[_TVRCRapportDeviceManager createOrUpdateDeviceImplForLinkDevice:]";
    v27 = 2114;
    v28 = deviceCopy;
    v29 = 2114;
    v30 = relevantIdentifiers;
    _os_log_impl(&dword_26CF7F000, v5, OS_LOG_TYPE_DEFAULT, "%s linkDevice=%{public}@, allIdentifiers:%{public}@", &v25, 0x20u);
  }

  v7 = [(_TVRCRapportDeviceManager *)self _identifierForDevice:deviceCopy];
  v8 = [(_TVRCRapportDeviceManager *)self deviceImplForLinkDevice:deviceCopy];
  v9 = [TVRCRPCompanionLinkClientWrapper wrapperWithDevice:deviceCopy];
  if (v8)
  {
    v10 = _TVRCRapportQueryLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      deviceWrapper = [v8 deviceWrapper];
      device = [deviceWrapper device];
      v25 = 138543618;
      v26 = device;
      v27 = 2114;
      v28 = deviceCopy;
      _os_log_impl(&dword_26CF7F000, v10, OS_LOG_TYPE_DEFAULT, "Found existing device = [%{public}@] for device = [%{public}@]", &v25, 0x16u);
    }

    linkType = [v8 linkType];
    if (linkType != [v9 linkType])
    {
      v14 = _TVRCRapportQueryLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v25) = 0;
        _os_log_impl(&dword_26CF7F000, v14, OS_LOG_TYPE_DEFAULT, "Found the same device over a different link. Creating a new device impl", &v25, 2u);
      }
    }

    [(_TVRCRapportDeviceManager *)self _checkIfDuplicateNameButDifferentIDSIdentifier:v8 linkDevice:deviceCopy];
    v15 = v8;
  }

  else
  {
    v15 = [TVRCRapportDeviceImpl implWithDevice:v9];
    v16 = _TVRCRapportQueryLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      deviceImplMap = [(_TVRCRapportDeviceManager *)self deviceImplMap];
      v25 = 138543618;
      v26 = deviceCopy;
      v27 = 2114;
      v28 = deviceImplMap;
      _os_log_impl(&dword_26CF7F000, v16, OS_LOG_TYPE_DEFAULT, "Creating new device impl with device=%{public}@, deviceRecords=%{public}@", &v25, 0x16u);
    }
  }

  v18 = _TVRCRapportQueryLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    deviceImplMap2 = [(_TVRCRapportDeviceManager *)self deviceImplMap];
    v25 = 138412290;
    v26 = deviceImplMap2;
    _os_log_impl(&dword_26CF7F000, v18, OS_LOG_TYPE_DEFAULT, "Before adding - DeviceImplMap: %@", &v25, 0xCu);
  }

  deviceImplMap3 = [(_TVRCRapportDeviceManager *)self deviceImplMap];
  [deviceImplMap3 setObject:v15 forKey:v7];

  v21 = _TVRCRapportQueryLog();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    deviceImplMap4 = [(_TVRCRapportDeviceManager *)self deviceImplMap];
    v25 = 138412290;
    v26 = deviceImplMap4;
    _os_log_impl(&dword_26CF7F000, v21, OS_LOG_TYPE_DEFAULT, "After adding - DeviceImplMap: %@", &v25, 0xCu);
  }

  v23 = *MEMORY[0x277D85DE8];
  return v8 == 0;
}

- (BOOL)removeDeviceImplForLinkDevice:(id)device
{
  v27 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  v5 = _TVRCRapportQueryLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 136315394;
    v24 = "[_TVRCRapportDeviceManager removeDeviceImplForLinkDevice:]";
    v25 = 2114;
    v26 = deviceCopy;
    _os_log_impl(&dword_26CF7F000, v5, OS_LOG_TYPE_DEFAULT, "%s device=%{public}@", &v23, 0x16u);
  }

  v6 = [(_TVRCRapportDeviceManager *)self _identifierForDevice:deviceCopy];
  deviceImplMap = [(_TVRCRapportDeviceManager *)self deviceImplMap];
  v8 = [deviceImplMap objectForKey:v6];

  v9 = _TVRCRapportQueryLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [deviceCopy identifier];
    v23 = 138412546;
    v24 = v8;
    v25 = 2112;
    v26 = identifier;
    _os_log_impl(&dword_26CF7F000, v9, OS_LOG_TYPE_DEFAULT, "Device impl to be removed = %@ for device id = %@", &v23, 0x16u);
  }

  if (v8 && ([v8 name], v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(deviceCopy, "name"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v11, "isEqualToString:", v12), v12, v11, v13))
  {
    v14 = _TVRCRapportQueryLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      deviceImplMap2 = [(_TVRCRapportDeviceManager *)self deviceImplMap];
      v23 = 138412290;
      v24 = deviceImplMap2;
      _os_log_impl(&dword_26CF7F000, v14, OS_LOG_TYPE_DEFAULT, "Before removing - DeviceImplMap: %@", &v23, 0xCu);
    }

    deviceImplMap3 = [(_TVRCRapportDeviceManager *)self deviceImplMap];
    [deviceImplMap3 removeObjectForKey:v6];

    v17 = _TVRCRapportQueryLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      deviceImplMap4 = [(_TVRCRapportDeviceManager *)self deviceImplMap];
      v23 = 138412290;
      v24 = deviceImplMap4;
      _os_log_impl(&dword_26CF7F000, v17, OS_LOG_TYPE_DEFAULT, "After removing - DeviceImplMap: %@", &v23, 0xCu);
    }

    v19 = _TVRCRapportQueryLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 138543362;
      v24 = v6;
      _os_log_impl(&dword_26CF7F000, v19, OS_LOG_TYPE_DEFAULT, "Removed %{public}@", &v23, 0xCu);
    }

    v20 = 1;
  }

  else
  {
    v19 = _TVRCRapportQueryLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [(_TVRCRapportDeviceManager *)deviceCopy removeDeviceImplForLinkDevice:v19];
    }

    v20 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  deviceImplMap = [(_TVRCRapportDeviceManager *)self deviceImplMap];
  v5 = [v3 appendObject:deviceImplMap withName:@"deviceImplMap"];

  build = [v3 build];

  return build;
}

- (void)_checkIfDuplicateNameButDifferentIDSIdentifier:(id)identifier linkDevice:(id)device
{
  deviceCopy = device;
  deviceWrapper = [identifier deviceWrapper];
  identifier = [deviceWrapper identifier];
  idsDeviceIdentifier = [deviceCopy idsDeviceIdentifier];

  LOBYTE(deviceCopy) = [identifier isEqualToString:idsDeviceIdentifier];
  if ((deviceCopy & 1) == 0)
  {
    v9 = _TVRCRapportQueryLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [_TVRCRapportDeviceManager _checkIfDuplicateNameButDifferentIDSIdentifier:v9 linkDevice:?];
    }
  }
}

- (void)removeDeviceImplForLinkDevice:(NSObject *)a3 .cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = [a2 deviceImplMap];
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(&dword_26CF7F000, a3, OS_LOG_TYPE_ERROR, "Asked to remove device we don't already know about, device=%{public}@. devices:%@", v6, 0x16u);

  v5 = *MEMORY[0x277D85DE8];
}

@end