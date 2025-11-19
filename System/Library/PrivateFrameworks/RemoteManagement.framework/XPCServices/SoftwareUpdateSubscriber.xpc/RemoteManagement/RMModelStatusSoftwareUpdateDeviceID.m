@interface RMModelStatusSoftwareUpdateDeviceID
+ (id)supportedOS;
@end

@implementation RMModelStatusSoftwareUpdateDeviceID

+ (id)supportedOS
{
  v20[0] = &off_10000CB40;
  v15 = [NSSet setWithArray:&off_10000CCB8];
  v19[0] = v15;
  v14 = [NSSet setWithArray:&off_10000CCD0];
  v19[1] = v14;
  v13 = [NSArray arrayWithObjects:v19 count:2];
  v21[0] = v13;
  v20[1] = &off_10000CB58;
  v2 = [NSSet setWithArray:&off_10000CCE8];
  v18[0] = v2;
  v3 = [NSSet setWithArray:&off_10000CD00];
  v18[1] = v3;
  v4 = [NSArray arrayWithObjects:v18 count:2];
  v21[1] = v4;
  v20[2] = &off_10000CB88;
  v5 = [NSSet setWithArray:&off_10000CD18];
  v17[0] = v5;
  v6 = [NSSet setWithArray:&off_10000CD30];
  v17[1] = v6;
  v7 = [NSArray arrayWithObjects:v17 count:2];
  v21[2] = v7;
  v20[3] = &off_10000CB70;
  v8 = [NSSet setWithArray:&off_10000CD48];
  v16[0] = v8;
  v9 = [NSSet setWithArray:&off_10000CD60];
  v16[1] = v9;
  v10 = [NSArray arrayWithObjects:v16 count:2];
  v21[3] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:4];

  return v11;
}

@end