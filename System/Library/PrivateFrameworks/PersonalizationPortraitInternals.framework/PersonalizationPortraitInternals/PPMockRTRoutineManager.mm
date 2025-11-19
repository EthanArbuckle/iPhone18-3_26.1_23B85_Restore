@interface PPMockRTRoutineManager
+ (id)defaultManager;
+ (void)initialize;
+ (void)setMockLocationsOfInterest:(id)a3;
- (PPMockRTRoutineManager)init;
- (void)fetchLocationsOfInterestVisitedBetweenStartDate:(id)a3 endDate:(id)a4 withHandler:(id)a5;
@end

@implementation PPMockRTRoutineManager

- (void)fetchLocationsOfInterestVisitedBetweenStartDate:(id)a3 endDate:(id)a4 withHandler:(id)a5
{
  v5 = a5;
  v6 = _mockLocationsOfInterest;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __94__PPMockRTRoutineManager_fetchLocationsOfInterestVisitedBetweenStartDate_endDate_withHandler___block_invoke;
  v8[3] = &unk_278972000;
  v9 = v5;
  v7 = v5;
  [v6 runWithLockAcquired:v8];
}

- (PPMockRTRoutineManager)init
{
  v3.receiver = self;
  v3.super_class = PPMockRTRoutineManager;
  return [(PPMockRTRoutineManager *)&v3 init];
}

+ (id)defaultManager
{
  v2 = objc_opt_new();

  return v2;
}

+ (void)setMockLocationsOfInterest:(id)a3
{
  v3 = a3;
  v4 = _mockLocationsOfInterest;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __53__PPMockRTRoutineManager_setMockLocationsOfInterest___block_invoke;
  v6[3] = &unk_278971FD8;
  v7 = v3;
  v5 = v3;
  [v4 runWithLockAcquired:v6];
}

+ (void)initialize
{
  v2 = objc_opt_class();
  if (v2 == objc_opt_class())
  {
    v3 = objc_alloc(MEMORY[0x277D425F8]);
    v6 = objc_opt_new();
    v4 = [v3 initWithGuardedData:v6];
    v5 = _mockLocationsOfInterest;
    _mockLocationsOfInterest = v4;
  }
}

@end