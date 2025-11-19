@interface SiriTTSTrainingAgentUtils
+ (id)mapTaskStatusToTaskEventString:(int64_t)a3;
+ (int)getAssetQualityVersionFromAsset:(id)a3;
+ (void)postTaskStatusNotification:(int64_t)a3;
@end

@implementation SiriTTSTrainingAgentUtils

+ (id)mapTaskStatusToTaskEventString:(int64_t)a3
{
  if ((a3 - 1) > 5)
  {
    v4 = 0;
  }

  else
  {
    v4 = **(&off_100025250 + a3 - 1);
  }

  return v4;
}

+ (void)postTaskStatusNotification:(int64_t)a3
{
  v4 = [SiriTTSTrainingAgentUtils mapTaskStatusToTaskEventString:a3];
  v3 = v4;
  notify_post([v4 UTF8String]);
}

+ (int)getAssetQualityVersionFromAsset:(id)a3
{
  v3 = a3;
  v15[0] = v3;
  v15[1] = @"Info.plist";
  v4 = [NSArray arrayWithObjects:v15 count:2];
  v5 = [NSString pathWithComponents:v4];

  v14 = 0;
  v6 = +[NSFileManager defaultManager];
  v7 = [v6 fileExistsAtPath:v5 isDirectory:&v14];
  v8 = v14;

  v9 = -1;
  if (v7 && (v8 & 1) == 0)
  {
    v10 = [NSDictionary dictionaryWithContentsOfFile:v5];
    v11 = [v10 objectForKey:@"MobileAssetProperties"];
    v12 = [v11 valueForKey:@"AssetQualityVersion"];
    v9 = [v12 intValue];
  }

  return v9;
}

@end