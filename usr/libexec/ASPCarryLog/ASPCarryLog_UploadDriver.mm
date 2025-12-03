@interface ASPCarryLog_UploadDriver
- (int)_DRResponseConversion:(unsigned __int8)conversion;
- (int)allowToParticipateTaskingId:(id)id DeviceId:(id)deviceId;
- (int)uploadFile:(id)file TaskingId:(id)id DeviceId:(id)deviceId LogType:(id)type;
@end

@implementation ASPCarryLog_UploadDriver

- (int)_DRResponseConversion:(unsigned __int8)conversion
{
  if (conversion == 2)
  {
    return 2;
  }

  else
  {
    return conversion == 1;
  }
}

- (int)uploadFile:(id)file TaskingId:(id)id DeviceId:(id)deviceId LogType:(id)type
{
  v15 = @"DeviceID";
  deviceIdCopy = deviceId;
  typeCopy = type;
  deviceIdCopy2 = deviceId;
  idCopy = id;
  fileCopy = file;
  v13 = [NSDictionary dictionaryWithObjects:&deviceIdCopy forKeys:&v15 count:1];

  ASPCarryLog_UploadFileToDP(fileCopy, @"com.apple.coreos.nand", idCopy, @"com.apple.nand.iolog", v13, typeCopy);
  return 1;
}

- (int)allowToParticipateTaskingId:(id)id DeviceId:(id)deviceId
{
  idCopy = id;
  deviceIdCopy = deviceId;
  v18 = @"DeviceID";
  v19 = deviceIdCopy;
  v8 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  if (&_DRShouldEnableLogGathering)
  {
    v9 = DRShouldEnableLogGathering();
    v10 = 0;
    if (!v10)
    {
      v16 = [(ASPCarryLog_UploadDriver *)self _DRResponseConversion:v9];
      goto LABEL_10;
    }

    v11 = v10;
    localizedDescription = [v10 localizedDescription];
    uTF8String = [localizedDescription UTF8String];

    v14 = oslog;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      sub_10004919C(uTF8String, v14);
    }
  }

  else
  {
    v15 = oslog;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      sub_100049214(v15);
    }
  }

  v16 = 0;
LABEL_10:

  return v16;
}

@end