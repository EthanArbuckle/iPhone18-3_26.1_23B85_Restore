@interface TRIASCovariates
+ (id)appleIntelligenceEnabledWithIdentifers:(id)a3;
+ (id)mapsDeviceCountryCode;
+ (void)fetchBucketID:(id)a3;
@end

@implementation TRIASCovariates

+ (id)mapsDeviceCountryCode
{
  v3 = sub_10000825C(v2);
  v5 = [*(v4 + 1096) sharedConfiguration];
  v6 = [v5 countryCode];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = &stru_100010848;
  }

  v9 = v8;

  return v8;
}

+ (void)fetchBucketID:(id)a3
{
  v3 = a3;
  v4 = objc_autoreleasePoolPush();
  v6 = sub_100008280(v5);
  v8 = [*(v7 + 1104) sharedConfiguration];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10000202C;
  v10[3] = &unk_100010518;
  v9 = v3;
  v11 = v9;
  [v8 fetchBucketID:v10];

  objc_autoreleasePoolPop(v4);
}

+ (id)appleIntelligenceEnabledWithIdentifers:(id)a3
{
  v4 = sub_1000082A4(v3);
  v6 = [*(v5 + 1112) currentWithUseCaseIdentifiers:v4];

  return [NSNumber numberWithInteger:v6];
}

@end