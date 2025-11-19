@interface RMModelStatusSoftwareUpdateBetaEnrollment
+ (id)supportedOS;
@end

@implementation RMModelStatusSoftwareUpdateBetaEnrollment

+ (id)supportedOS
{
  v16[0] = &off_10000CAE0;
  v2 = [NSSet setWithArray:&off_10000CC28];
  v15[0] = v2;
  v3 = [NSSet setWithArray:&off_10000CC40];
  v15[1] = v3;
  v4 = [NSArray arrayWithObjects:v15 count:2];
  v17[0] = v4;
  v16[1] = &off_10000CAF8;
  v5 = [NSSet setWithArray:&off_10000CC58];
  v14[0] = v5;
  v6 = [NSSet setWithArray:&off_10000CC70];
  v14[1] = v6;
  v7 = [NSArray arrayWithObjects:v14 count:2];
  v17[1] = v7;
  v16[2] = &off_10000CB28;
  v8 = [NSSet setWithArray:&off_10000CC88];
  v13[0] = v8;
  v9 = [NSSet setWithArray:&off_10000CCA0];
  v13[1] = v9;
  v10 = [NSArray arrayWithObjects:v13 count:2];
  v17[2] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:3];

  return v11;
}

@end