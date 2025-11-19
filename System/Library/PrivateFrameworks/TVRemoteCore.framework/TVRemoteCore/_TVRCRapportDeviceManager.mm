@interface _TVRCRapportDeviceManager
- (BOOL)createOrUpdateDeviceImplForLinkDevice:(id)a3;
- (BOOL)removeDeviceImplForLinkDevice:(id)a3;
- (_TVRCRapportDeviceManager)init;
- (id)description;
- (id)deviceImplForLinkDevice:(id)a3;
- (void)_checkIfDuplicateNameButDifferentIDSIdentifier:(id)a3 linkDevice:(id)a4;
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

- (id)deviceImplForLinkDevice:(id)a3
{
  v4 = [(_TVRCRapportDeviceManager *)self _identifierForDevice:a3];
  if (v4)
  {
    v5 = [(_TVRCRapportDeviceManager *)self deviceImplMap];
    v6 = [v5 objectForKey:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)createOrUpdateDeviceImplForLinkDevice:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _TVRCRapportQueryLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 relevantIdentifiers];
    v25 = 136315650;
    v26 = "[_TVRCRapportDeviceManager createOrUpdateDeviceImplForLinkDevice:]";
    v27 = 2114;
    v28 = v4;
    v29 = 2114;
    v30 = v6;
    _os_log_impl(&dword_26CF7F000, v5, OS_LOG_TYPE_DEFAULT, "%s linkDevice=%{public}@, allIdentifiers:%{public}@", &v25, 0x20u);
  }

  v7 = [(_TVRCRapportDeviceManager *)self _identifierForDevice:v4];
  v8 = [(_TVRCRapportDeviceManager *)self deviceImplForLinkDevice:v4];
  v9 = [TVRCRPCompanionLinkClientWrapper wrapperWithDevice:v4];
  if (v8)
  {
    v10 = _TVRCRapportQueryLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v8 deviceWrapper];
      v12 = [v11 device];
      v25 = 138543618;
      v26 = v12;
      v27 = 2114;
      v28 = v4;
      _os_log_impl(&dword_26CF7F000, v10, OS_LOG_TYPE_DEFAULT, "Found existing device = [%{public}@] for device = [%{public}@]", &v25, 0x16u);
    }

    v13 = [v8 linkType];
    if (v13 != [v9 linkType])
    {
      v14 = _TVRCRapportQueryLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v25) = 0;
        _os_log_impl(&dword_26CF7F000, v14, OS_LOG_TYPE_DEFAULT, "Found the same device over a different link. Creating a new device impl", &v25, 2u);
      }
    }

    [(_TVRCRapportDeviceManager *)self _checkIfDuplicateNameButDifferentIDSIdentifier:v8 linkDevice:v4];
    v15 = v8;
  }

  else
  {
    v15 = [TVRCRapportDeviceImpl implWithDevice:v9];
    v16 = _TVRCRapportQueryLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [(_TVRCRapportDeviceManager *)self deviceImplMap];
      v25 = 138543618;
      v26 = v4;
      v27 = 2114;
      v28 = v17;
      _os_log_impl(&dword_26CF7F000, v16, OS_LOG_TYPE_DEFAULT, "Creating new device impl with device=%{public}@, deviceRecords=%{public}@", &v25, 0x16u);
    }
  }

  v18 = _TVRCRapportQueryLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = [(_TVRCRapportDeviceManager *)self deviceImplMap];
    v25 = 138412290;
    v26 = v19;
    _os_log_impl(&dword_26CF7F000, v18, OS_LOG_TYPE_DEFAULT, "Before adding - DeviceImplMap: %@", &v25, 0xCu);
  }

  v20 = [(_TVRCRapportDeviceManager *)self deviceImplMap];
  [v20 setObject:v15 forKey:v7];

  v21 = _TVRCRapportQueryLog();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = [(_TVRCRapportDeviceManager *)self deviceImplMap];
    v25 = 138412290;
    v26 = v22;
    _os_log_impl(&dword_26CF7F000, v21, OS_LOG_TYPE_DEFAULT, "After adding - DeviceImplMap: %@", &v25, 0xCu);
  }

  v23 = *MEMORY[0x277D85DE8];
  return v8 == 0;
}

- (BOOL)removeDeviceImplForLinkDevice:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _TVRCRapportQueryLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 136315394;
    v24 = "[_TVRCRapportDeviceManager removeDeviceImplForLinkDevice:]";
    v25 = 2114;
    v26 = v4;
    _os_log_impl(&dword_26CF7F000, v5, OS_LOG_TYPE_DEFAULT, "%s device=%{public}@", &v23, 0x16u);
  }

  v6 = [(_TVRCRapportDeviceManager *)self _identifierForDevice:v4];
  v7 = [(_TVRCRapportDeviceManager *)self deviceImplMap];
  v8 = [v7 objectForKey:v6];

  v9 = _TVRCRapportQueryLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v4 identifier];
    v23 = 138412546;
    v24 = v8;
    v25 = 2112;
    v26 = v10;
    _os_log_impl(&dword_26CF7F000, v9, OS_LOG_TYPE_DEFAULT, "Device impl to be removed = %@ for device id = %@", &v23, 0x16u);
  }

  if (v8 && ([v8 name], v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "name"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v11, "isEqualToString:", v12), v12, v11, v13))
  {
    v14 = _TVRCRapportQueryLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [(_TVRCRapportDeviceManager *)self deviceImplMap];
      v23 = 138412290;
      v24 = v15;
      _os_log_impl(&dword_26CF7F000, v14, OS_LOG_TYPE_DEFAULT, "Before removing - DeviceImplMap: %@", &v23, 0xCu);
    }

    v16 = [(_TVRCRapportDeviceManager *)self deviceImplMap];
    [v16 removeObjectForKey:v6];

    v17 = _TVRCRapportQueryLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [(_TVRCRapportDeviceManager *)self deviceImplMap];
      v23 = 138412290;
      v24 = v18;
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
      [(_TVRCRapportDeviceManager *)v4 removeDeviceImplForLinkDevice:v19];
    }

    v20 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [(_TVRCRapportDeviceManager *)self deviceImplMap];
  v5 = [v3 appendObject:v4 withName:@"deviceImplMap"];

  v6 = [v3 build];

  return v6;
}

- (void)_checkIfDuplicateNameButDifferentIDSIdentifier:(id)a3 linkDevice:(id)a4
{
  v5 = a4;
  v6 = [a3 deviceWrapper];
  v7 = [v6 identifier];
  v8 = [v5 idsDeviceIdentifier];

  LOBYTE(v5) = [v7 isEqualToString:v8];
  if ((v5 & 1) == 0)
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