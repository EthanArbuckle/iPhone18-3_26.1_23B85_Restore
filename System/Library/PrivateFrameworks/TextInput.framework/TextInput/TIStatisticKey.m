@interface TIStatisticKey
+ (id)statisticKeyWithAggdName:(id)a3 andCounterName:(id)a4 andInputMode:(id)a5;
- (TIStatisticKey)initWithAggdName:(id)a3 andCounterName:(id)a4 andInputMode:(id)a5;
@end

@implementation TIStatisticKey

- (TIStatisticKey)initWithAggdName:(id)a3 andCounterName:(id)a4 andInputMode:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = TIStatisticKey;
  v12 = [(TIStatisticKey *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_aggdName, a3);
    objc_storeStrong(&v13->_counterName, a4);
    objc_storeStrong(&v13->_inputMode, a5);
  }

  return v13;
}

+ (id)statisticKeyWithAggdName:(id)a3 andCounterName:(id)a4 andInputMode:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[TIStatisticKey alloc] initWithAggdName:v9 andCounterName:v8 andInputMode:v7];

  return v10;
}

@end