@interface Tasking
+ (void)startDpTaskingMonitorOnDispatchQ:(id)q andWorkDir:(id)dir;
- (BOOL)LoadTasking;
- (BOOL)isDeviceTasked;
- (BOOL)validate;
- (Tasking)initWithWorkDir:(id)dir;
- (id)LoadFromPlist:(id)plist forKey:(id)key;
- (id)getTaskingCriteria;
- (id)getTaskingID;
- (int64_t)getTaskingDurationInSeconds;
- (int64_t)getTaskingSizeLimitInBytes;
- (void)tryLoadDPTasking;
@end

@implementation Tasking

- (Tasking)initWithWorkDir:(id)dir
{
  dirCopy = dir;
  v11.receiver = self;
  v11.super_class = Tasking;
  v6 = [(Tasking *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_workDir, dir);
    myTaskingDict = v7->_myTaskingDict;
    v7->_myTaskingDict = 0;

    v9 = v7;
  }

  return v7;
}

+ (void)startDpTaskingMonitorOnDispatchQ:(id)q andWorkDir:(id)dir
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000FF98;
  v8[3] = &unk_10009CAA8;
  qCopy = q;
  dirCopy = dir;
  v5 = qword_1000D82A8;
  v6 = dirCopy;
  v7 = qCopy;
  if (v5 != -1)
  {
    dispatch_once(&qword_1000D82A8, v8);
  }
}

- (void)tryLoadDPTasking
{
  workDir = [(Tasking *)self workDir];
  v5 = [workDir stringByAppendingPathComponent:@"dp_tasking_payload.plist"];

  v6 = [NSURL fileURLWithPath:v5];
  v7 = +[NSFileManager defaultManager];
  if ([v7 fileExistsAtPath:v5])
  {
    v8 = [NSDictionary dictionaryWithContentsOfURL:v6 error:0];
    v9 = [v8 objectForKeyedSubscript:@"expire_time"];
    if (v9 && (+[NSDate now](NSDate, "now"), v2 = objc_claimAutoreleasedReturnValue(), v10 = [v9 compare:v2], v2, v10 == 1))
    {
      myTaskingDict = [(Tasking *)self myTaskingDict];

      if (!myTaskingDict)
      {
        v12 = oslog;
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v16) = 0;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Loading tasking payload from DP", &v16, 2u);
        }

        v13 = [v8 objectForKeyedSubscript:@"payload"];
        [(Tasking *)self setMyTaskingDict:v13];
      }
    }

    else
    {
      v14 = oslog;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        if (v9)
        {
          v2 = DateTimeToStr(v9);
          uTF8String = [v2 UTF8String];
        }

        else
        {
          uTF8String = "N/A";
        }

        v16 = 136315138;
        v17 = uTF8String;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Deleting expired payload with expire date %s", &v16, 0xCu);
        if (v9)
        {
        }
      }

      [v7 removeItemAtPath:v5 error:0];
    }
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }
}

- (BOOL)LoadTasking
{
  v4 = [(Tasking *)self LoadFromPlist:@"com.apple.da" forKey:@"ASPCarryLog_tasking"];
  if (v4)
  {
    [(Tasking *)self LoadTaskingFromDict:v4];
  }

  [(Tasking *)self tryLoadDPTasking];
  v5 = oslog;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    isDeviceTasked = [(Tasking *)self isDeviceTasked];
    if (isDeviceTasked)
    {
      getTaskingID = [(Tasking *)self getTaskingID];
      uTF8String = [getTaskingID UTF8String];
    }

    else
    {
      uTF8String = "None";
    }

    v10 = 136315138;
    v11 = uTF8String;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "DA tasking info loaded. Tasking id: %s", &v10, 0xCu);
    if (isDeviceTasked)
    {
    }
  }

  v8 = oslog;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    sub_10004A434(v8, self);
  }

  return 1;
}

- (id)LoadFromPlist:(id)plist forKey:(id)key
{
  v4 = CFPreferencesCopyValue(key, plist, @"mobile", kCFPreferencesCurrentHost);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isDeviceTasked
{
  getTaskingID = [(Tasking *)self getTaskingID];
  v3 = getTaskingID != 0;

  return v3;
}

- (id)getTaskingID
{
  myTaskingDict = [(Tasking *)self myTaskingDict];
  v4 = [myTaskingDict valueForKey:@"TASKING_ID"];

  if (!v4 || ([v4 isEqualToString:&stru_10009DDB0] & 1) != 0 || -[Tasking getTaskingDurationInSeconds](self, "getTaskingDurationInSeconds") < 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  return v5;
}

- (int64_t)getTaskingDurationInSeconds
{
  myTaskingDict = [(Tasking *)self myTaskingDict];
  v3 = [myTaskingDict objectForKeyedSubscript:@"TASKING_DURATION_SECONDS"];
  longLongValue = [v3 longLongValue];

  return longLongValue;
}

- (int64_t)getTaskingSizeLimitInBytes
{
  myTaskingDict = [(Tasking *)self myTaskingDict];
  v3 = [myTaskingDict objectForKeyedSubscript:@"TASKING_SIZE_LIMIT_BYTES"];
  longLongValue = [v3 longLongValue];

  return longLongValue;
}

- (id)getTaskingCriteria
{
  myTaskingDict = [(Tasking *)self myTaskingDict];
  v3 = [myTaskingDict objectForKeyedSubscript:@"TASKING_CRITERIA"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v3;
    v4 = [NSArray arrayWithObjects:&v7 count:1];
    v8 = v4;
    v5 = [NSArray arrayWithObjects:&v8 count:1];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v3;
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)validate
{
  myTaskingDict = [(Tasking *)self myTaskingDict];
  v4 = [myTaskingDict objectForKeyedSubscript:@"TASKING_CRITERIA_VERSION"];

  myTaskingDict2 = [(Tasking *)self myTaskingDict];
  v6 = [myTaskingDict2 objectForKeyedSubscript:@"TASKING_SIZE_LIMIT_BYTES"];

  myTaskingDict3 = [(Tasking *)self myTaskingDict];
  v8 = [myTaskingDict3 objectForKeyedSubscript:@"TASKING_ID"];

  getTaskingCriteria = [(Tasking *)self getTaskingCriteria];

  objc_opt_class();
  v10 = (objc_opt_isKindOfClass() & 1) != 0 && [v4 intValue] < 3;
  objc_opt_class();
  v11 = (objc_opt_isKindOfClass() & 1) != 0 && [v6 longLongValue] > 0;
  if (v8)
  {
    v12 = getTaskingCriteria == 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = !v12;
  v14 = v10 && v11;

  return v13 & v14;
}

@end