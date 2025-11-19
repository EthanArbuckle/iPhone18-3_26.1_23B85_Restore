@interface FedStatsCohortQueryLocale
+ (id)cohortInstance;
- (FedStatsCohortQueryLocale)init;
@end

@implementation FedStatsCohortQueryLocale

- (FedStatsCohortQueryLocale)init
{
  v10.receiver = self;
  v10.super_class = FedStatsCohortQueryLocale;
  v2 = [(FedStatsCohortQueryLocale *)&v10 init];
  if (v2)
  {
    v3 = +[NSLocale preferredLanguages];
    v4 = [v3 firstObject];
    v5 = +[NSLocale currentLocale];
    v6 = [v5 objectForKey:NSLocaleCountryCode];
    v7 = [NSString stringWithFormat:@"%@_%@", v4, v6];
    deviceLocale = v2->_deviceLocale;
    v2->_deviceLocale = v7;
  }

  return v2;
}

+ (id)cohortInstance
{
  v2 = objc_alloc_init(a1);

  return v2;
}

@end