@interface TIStatisticKey
+ (id)statisticKeyWithAggdName:(id)name andCounterName:(id)counterName andInputMode:(id)mode;
- (TIStatisticKey)initWithAggdName:(id)name andCounterName:(id)counterName andInputMode:(id)mode;
@end

@implementation TIStatisticKey

- (TIStatisticKey)initWithAggdName:(id)name andCounterName:(id)counterName andInputMode:(id)mode
{
  nameCopy = name;
  counterNameCopy = counterName;
  modeCopy = mode;
  v15.receiver = self;
  v15.super_class = TIStatisticKey;
  v12 = [(TIStatisticKey *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_aggdName, name);
    objc_storeStrong(&v13->_counterName, counterName);
    objc_storeStrong(&v13->_inputMode, mode);
  }

  return v13;
}

+ (id)statisticKeyWithAggdName:(id)name andCounterName:(id)counterName andInputMode:(id)mode
{
  modeCopy = mode;
  counterNameCopy = counterName;
  nameCopy = name;
  v10 = [[TIStatisticKey alloc] initWithAggdName:nameCopy andCounterName:counterNameCopy andInputMode:modeCopy];

  return v10;
}

@end