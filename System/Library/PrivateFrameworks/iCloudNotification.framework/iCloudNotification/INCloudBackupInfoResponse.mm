@interface INCloudBackupInfoResponse
- (INCloudBackupInfoResponse)initWithHTTPResponse:(id)response data:(id)data;
- (id)_parseBackUpDevice:(id)device;
- (id)_parseBackUpDeviceGroups:(id)groups;
- (void)_parseResponseDict;
@end

@implementation INCloudBackupInfoResponse

- (INCloudBackupInfoResponse)initWithHTTPResponse:(id)response data:(id)data
{
  v9.receiver = self;
  v9.super_class = INCloudBackupInfoResponse;
  v4 = [(INCloudBackupInfoResponse *)&v9 initWithHTTPResponse:response data:data bodyIsPlist:0];
  v5 = v4;
  if (v4)
  {
    v6 = OBJC_IVAR___AAResponse__httpResponse;
    if ([*&v4->AAResponse_opaque[OBJC_IVAR___AAResponse__httpResponse] statusCode] == 200)
    {
      [(INCloudBackupInfoResponse *)v5 _parseResponseDict];
    }

    else
    {
      v7 = _INLogSystem();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_100035C24(&v5->AAResponse_opaque[v6], v7);
      }
    }
  }

  return v5;
}

- (void)_parseResponseDict
{
  if (!self->_backupInfo)
  {
    v3 = objc_alloc_init(ICQBackupInfo);
    backupInfo = self->_backupInfo;
    self->_backupInfo = v3;
  }

  v5 = OBJC_IVAR___AAResponse__responseDictionary;
  v8 = [*&self->AAResponse_opaque[OBJC_IVAR___AAResponse__responseDictionary] objectForKeyedSubscript:@"numBackedUpDevices"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(ICQBackupInfo *)self->_backupInfo setNoOfBackupDevices:v8];
  }

  v6 = [*&self->AAResponse_opaque[v5] objectForKeyedSubscript:@"deviceGroups"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [(INCloudBackupInfoResponse *)self _parseBackUpDeviceGroups:v6];
    [(ICQBackupInfo *)self->_backupInfo setDeviceGroups:v7];
  }
}

- (id)_parseBackUpDeviceGroups:(id)groups
{
  groupsCopy = groups;
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_10000A3CC;
  v11 = &unk_100055430;
  selfCopy = self;
  v13 = objc_alloc_init(NSMutableArray);
  v5 = v13;
  [groupsCopy enumerateObjectsUsingBlock:&v8];

  v6 = [v5 copy];

  return v6;
}

- (id)_parseBackUpDevice:(id)device
{
  deviceCopy = device;
  v4 = objc_alloc_init(ICQBackupDevice);
  v5 = [deviceCopy objectForKeyedSubscript:@"deviceName"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v4 setDeviceName:v5];
  }

  v6 = [deviceCopy objectForKeyedSubscript:@"deviceSubTitle"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v4 setDeviceSubtitle:v6];
  }

  v7 = [deviceCopy objectForKeyedSubscript:@"deviceUDID"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v4 setDeviceUDID:v7];
  }

  v8 = [deviceCopy objectForKeyedSubscript:@"storageUsedInBytes"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v4 setStorageUsed:v8];
  }

  v9 = [deviceCopy objectForKeyedSubscript:@"storageUsedLabel"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v4 setStorageUsedLabel:v9];
  }

  v29 = v7;
  v30 = v6;
  v31 = v5;
  v10 = [deviceCopy objectForKeyedSubscript:@"backupSize"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v4 setBackupSize:v10];
  }

  v26 = v10;
  v11 = [deviceCopy objectForKeyedSubscript:@"deviceImageURLs"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = [[ICQImageURL alloc] initFromDictionary:v11];
    [v4 setImageURL:v12];
  }

  v13 = [deviceCopy objectForKeyedSubscript:@"deviceLargeImageURLs"];
  objc_opt_class();
  v32 = v13;
  if (objc_opt_isKindOfClass())
  {
    v14 = [[ICQImageURL alloc] initFromDictionary:v13];
    [v4 setLargeImageURL:v14];
  }

  v15 = [deviceCopy objectForKeyedSubscript:@"detailViewController"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v4 setDetailViewController:v15];
  }

  v28 = v8;
  v16 = [deviceCopy objectForKeyedSubscript:@"backupTimestamp"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v4 setBackupTimestamp:v16];
  }

  v17 = [deviceCopy objectForKeyedSubscript:@"deleteURL"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = [[NSURL alloc] initWithString:v17];
    [v4 setDeleteURL:v18];
  }

  v19 = [deviceCopy objectForKeyedSubscript:@"deleteButtonLabel"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v4 setDeleteButtonLabel:v19];
  }

  v27 = v9;
  v20 = [deviceCopy objectForKeyedSubscript:@"backupFailedByInBytes"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v4 setBackupFailedByinBytes:v20];
  }

  v25 = v11;
  v21 = [deviceCopy objectForKeyedSubscript:@"bytesRequiredForBackup"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v4 setBytesRequiredForBackup:v21];
  }

  v22 = [deviceCopy objectForKeyedSubscript:@"isActive"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v4 setIsActive:{objc_msgSend(v22, "BOOLValue")}];
  }

  v23 = [deviceCopy objectForKeyedSubscript:@"isLocalBackup"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v4 setIsLocalBackup:{objc_msgSend(v23, "BOOLValue")}];
  }

  return v4;
}

@end