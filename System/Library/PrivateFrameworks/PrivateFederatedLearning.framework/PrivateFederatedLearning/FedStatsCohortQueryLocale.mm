@interface FedStatsCohortQueryLocale
+ (id)cohortInstance;
- (FedStatsCohortQueryLocale)init;
@end

@implementation FedStatsCohortQueryLocale

- (FedStatsCohortQueryLocale)init
{
  v11.receiver = self;
  v11.super_class = FedStatsCohortQueryLocale;
  v2 = [(FedStatsCohortQueryLocale *)&v11 init];
  if (v2)
  {
    v3 = MEMORY[0x277CCACA8];
    preferredLanguages = [MEMORY[0x277CBEAF8] preferredLanguages];
    firstObject = [preferredLanguages firstObject];
    currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
    v7 = [currentLocale objectForKey:*MEMORY[0x277CBE690]];
    v8 = [v3 stringWithFormat:@"%@_%@", firstObject, v7];
    deviceLocale = v2->_deviceLocale;
    v2->_deviceLocale = v8;
  }

  return v2;
}

+ (id)cohortInstance
{
  v2 = objc_alloc_init(self);

  return v2;
}

@end