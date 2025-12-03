@interface WCAFetchWiFiBehaviorParameters
+ (void)fetchWiFiBehaviorWithCompletion:(id)completion;
@end

@implementation WCAFetchWiFiBehaviorParameters

+ (void)fetchWiFiBehaviorWithCompletion:(id)completion
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  v12 = objc_alloc_init(WCAFetchKeyValuesRequest);
  v14[0] = @"WiFiInternalSSIDs";
  v14[1] = @"MacRandomization";
  v14[2] = @"SoftErrors";
  v14[3] = @"JTRN";
  v14[4] = @"DataPathTelemetry";
  v14[5] = @"WiFiAmbiguousSSIDs";
  v14[6] = @"AccessPointProfile";
  v14[7] = @"BeaconParsing";
  v3 = [NSArray arrayWithObjects:v14 count:8];
  [v12 setKeys:?];

  v4 = +[WCAAsset wifiBehaviorPlistAsset];
  [v12 setAsset:?];

  v6 = _NSConcreteStackBlock;
  v7 = -1073741824;
  v8 = 0;
  v9 = sub_1000076E8;
  v10 = &unk_100010638;
  v11 = location[0];
  [v12 setCompletionHandler:?];
  v5 = +[WCAClient sharedClient];
  [v5 executeFetchRequest:v12];

  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
}

@end