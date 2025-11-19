@interface WBSCloudTabDeviceParameters
+ (id)parametersWithDevice:(id)a3;
+ (id)parametersWithDictionary:(id)a3;
- (NSDictionary)dictionaryRepresentation;
- (WBSCloudTabDeviceParameters)init;
- (void)setLastModified:(id)a3;
@end

@implementation WBSCloudTabDeviceParameters

- (WBSCloudTabDeviceParameters)init
{
  v6.receiver = self;
  v6.super_class = WBSCloudTabDeviceParameters;
  v2 = [(WBSCloudTabDeviceParameters *)&v6 init];
  v3 = v2;
  if (v2)
  {
    *&v2->_closeRequestSupported = 257;
    v4 = v2;
  }

  return v3;
}

+ (id)parametersWithDevice:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(a1);
  [v5 setCloseRequestSupported:{objc_msgSend(v4, "isCloseRequestSupported")}];
  [v5 setCloudKitBookmarkSyncingSupported:{objc_msgSend(v4, "isCloudKitBookmarkSyncingSupported")}];
  v6 = [v4 name];
  [v5 setDeviceName:v6];

  v7 = [v4 deviceTypeIdentifier];
  [v5 setDeviceTypeIdentifier:v7];

  [v5 setHasDuplicateName:{objc_msgSend(v4, "hasDuplicateName")}];
  [v5 setEphemeralDevice:{objc_msgSend(v4, "isEphemeralDevice")}];
  v8 = [v4 lastModified];
  [v5 setLastModified:v8];

  v9 = [v4 tabs];

  [v5 setTabs:v9];

  return v5;
}

+ (id)parametersWithDictionary:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(a1);
  v6 = [v4 safari_stringForKey:@"DeviceName"];
  v7 = [v6 copy];
  [v5 setDeviceName:v7];

  [v5 setHasDuplicateName:{objc_msgSend(v4, "safari_BOOLForKey:", @"HasDuplicateDeviceName"}];
  [v5 setEphemeralDevice:{objc_msgSend(v4, "safari_BOOLForKey:", @"IsEphemeralDevice"}];
  v8 = [v4 safari_dateForKey:@"LastModified"];
  [v5 setLastModified:v8];

  v9 = [v4 safari_dictionaryForKey:@"Capabilities"];
  [v5 setCloseRequestSupported:{objc_msgSend(v9, "safari_BOOLForKey:", @"CloseTabRequest"}];
  v21 = v9;
  [v5 setCloudKitBookmarkSyncingSupported:{objc_msgSend(v9, "safari_BOOLForKey:", @"CloudKitBookmarkSyncing"}];
  v10 = [v4 safari_stringForKey:@"DeviceTypeIdentifier"];
  [v5 setDeviceTypeIdentifier:v10];

  v11 = [v4 safari_arrayForKey:@"Tabs"];
  v12 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v11, "count")}];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v13 = v11;
  v14 = [v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v23;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v23 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [[WBSCloudTab alloc] initWithDictionary:*(*(&v22 + 1) + 8 * i)];
        v19 = [(WBSCloudTab *)v18 url];

        if (v19)
        {
          [v12 addObject:v18];
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v15);
  }

  [v5 setTabs:v12];

  return v5;
}

- (NSDictionary)dictionaryRepresentation
{
  v12[4] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = MEMORY[0x1E695E118];
  [v3 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"CloseTabRequest"];
  [v3 setObject:v4 forKeyedSubscript:@"CloudKitBookmarkSyncing"];
  v11[0] = @"DictionaryType";
  v11[1] = @"DeviceName";
  deviceName = self->_deviceName;
  v12[0] = @"Device";
  v12[1] = deviceName;
  v11[2] = @"LastModified";
  v11[3] = @"Capabilities";
  v12[2] = self->_lastModified;
  v12[3] = v3;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:4];
  v7 = [v6 mutableCopy];

  if (self->_hasDuplicateName)
  {
    [v7 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"HasDuplicateDeviceName"];
  }

  if (self->_ephemeralDevice)
  {
    [v7 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"IsEphemeralDevice"];
  }

  deviceTypeIdentifier = self->_deviceTypeIdentifier;
  if (deviceTypeIdentifier)
  {
    [v7 setObject:deviceTypeIdentifier forKeyedSubscript:@"DeviceTypeIdentifier"];
  }

  if ([(NSArray *)self->_tabs count])
  {
    v9 = [(NSArray *)self->_tabs safari_mapAndFilterObjectsUsingBlock:&__block_literal_global_20];
    if ([v9 count])
    {
      [v7 setObject:v9 forKeyedSubscript:@"Tabs"];
    }
  }

  return v7;
}

- (void)setLastModified:(id)a3
{
  v4 = [a3 safari_startOfDay];
  lastModified = self->_lastModified;
  self->_lastModified = v4;
}

@end