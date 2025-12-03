@interface SiriTTSTrainingAgentUtils
+ (id)mapTaskStatusToTaskEventString:(int64_t)string;
+ (int)getAssetQualityVersionFromAsset:(id)asset;
+ (void)postTaskStatusNotification:(int64_t)notification;
@end

@implementation SiriTTSTrainingAgentUtils

+ (id)mapTaskStatusToTaskEventString:(int64_t)string
{
  if ((string - 1) > 5)
  {
    v4 = 0;
  }

  else
  {
    v4 = **(&off_100025250 + string - 1);
  }

  return v4;
}

+ (void)postTaskStatusNotification:(int64_t)notification
{
  v4 = [SiriTTSTrainingAgentUtils mapTaskStatusToTaskEventString:notification];
  v3 = v4;
  notify_post([v4 UTF8String]);
}

+ (int)getAssetQualityVersionFromAsset:(id)asset
{
  assetCopy = asset;
  v15[0] = assetCopy;
  v15[1] = @"Info.plist";
  v4 = [NSArray arrayWithObjects:v15 count:2];
  v5 = [NSString pathWithComponents:v4];

  v14 = 0;
  v6 = +[NSFileManager defaultManager];
  v7 = [v6 fileExistsAtPath:v5 isDirectory:&v14];
  v8 = v14;

  intValue = -1;
  if (v7 && (v8 & 1) == 0)
  {
    v10 = [NSDictionary dictionaryWithContentsOfFile:v5];
    v11 = [v10 objectForKey:@"MobileAssetProperties"];
    v12 = [v11 valueForKey:@"AssetQualityVersion"];
    intValue = [v12 intValue];
  }

  return intValue;
}

@end