@interface NLSessionActivityHealthDataAccumulator
- (NLSessionActivityHealthDataAccumulator)initWithHealthStore:(id)store;
@end

@implementation NLSessionActivityHealthDataAccumulator

- (NLSessionActivityHealthDataAccumulator)initWithHealthStore:(id)store
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, store);
  v3 = selfCopy;
  selfCopy = 0;
  v7.receiver = v3;
  v7.super_class = NLSessionActivityHealthDataAccumulator;
  v6 = [(NLSessionActivityHealthDataAccumulator *)&v7 init];
  selfCopy = v6;
  objc_storeStrong(&selfCopy, v6);
  if (v6)
  {
    objc_storeStrong(&selfCopy->_healthStore, location[0]);
  }

  v5 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v5;
}

@end