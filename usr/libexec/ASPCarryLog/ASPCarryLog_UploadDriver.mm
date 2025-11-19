@interface ASPCarryLog_UploadDriver
- (int)_DRResponseConversion:(unsigned __int8)a3;
- (int)allowToParticipateTaskingId:(id)a3 DeviceId:(id)a4;
- (int)uploadFile:(id)a3 TaskingId:(id)a4 DeviceId:(id)a5 LogType:(id)a6;
@end

@implementation ASPCarryLog_UploadDriver

- (int)_DRResponseConversion:(unsigned __int8)a3
{
  if (a3 == 2)
  {
    return 2;
  }

  else
  {
    return a3 == 1;
  }
}

- (int)uploadFile:(id)a3 TaskingId:(id)a4 DeviceId:(id)a5 LogType:(id)a6
{
  v15 = @"DeviceID";
  v16 = a5;
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];

  ASPCarryLog_UploadFileToDP(v12, @"com.apple.coreos.nand", v11, @"com.apple.nand.iolog", v13, v9);
  return 1;
}

- (int)allowToParticipateTaskingId:(id)a3 DeviceId:(id)a4
{
  v6 = a3;
  v7 = a4;
  v18 = @"DeviceID";
  v19 = v7;
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
    v12 = [v10 localizedDescription];
    v13 = [v12 UTF8String];

    v14 = oslog;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      sub_10004919C(v13, v14);
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