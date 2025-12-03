@interface TRIASCovariates
+ (id)appleIntelligenceEnabledWithIdentifers:(id)identifers;
+ (id)mapsDeviceCountryCode;
+ (void)fetchBucketID:(id)d;
@end

@implementation TRIASCovariates

+ (id)mapsDeviceCountryCode
{
  v3 = sub_10000825C(v2);
  sharedConfiguration = [*(v4 + 1096) sharedConfiguration];
  countryCode = [sharedConfiguration countryCode];
  v7 = countryCode;
  if (countryCode)
  {
    v8 = countryCode;
  }

  else
  {
    v8 = &stru_100010848;
  }

  v9 = v8;

  return v8;
}

+ (void)fetchBucketID:(id)d
{
  dCopy = d;
  v4 = objc_autoreleasePoolPush();
  v6 = sub_100008280(v5);
  sharedConfiguration = [*(v7 + 1104) sharedConfiguration];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10000202C;
  v10[3] = &unk_100010518;
  v9 = dCopy;
  v11 = v9;
  [sharedConfiguration fetchBucketID:v10];

  objc_autoreleasePoolPop(v4);
}

+ (id)appleIntelligenceEnabledWithIdentifers:(id)identifers
{
  v4 = sub_1000082A4(v3);
  v6 = [*(v5 + 1112) currentWithUseCaseIdentifiers:v4];

  return [NSNumber numberWithInteger:v6];
}

@end