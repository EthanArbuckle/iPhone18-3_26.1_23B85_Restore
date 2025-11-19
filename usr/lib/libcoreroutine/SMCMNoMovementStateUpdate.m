@interface SMCMNoMovementStateUpdate
+ (id)convertSMCMNoMovementDetectionTypeToString:(int64_t)a3;
+ (id)convertSMCMNoMovementStateToString:(int64_t)a3;
+ (int64_t)convertCMNoMovementDetectionType:(int64_t)a3;
+ (int64_t)convertCMNoMovementState:(int64_t)a3;
- (SMCMNoMovementStateUpdate)initWithCMNoMovementStateUpdate:(id)a3;
- (SMCMNoMovementStateUpdate)initWithState:(int64_t)a3 detectionType:(int64_t)a4 startTime:(id)a5;
- (id)description;
@end

@implementation SMCMNoMovementStateUpdate

- (SMCMNoMovementStateUpdate)initWithState:(int64_t)a3 detectionType:(int64_t)a4 startTime:(id)a5
{
  v9 = a5;
  v13.receiver = self;
  v13.super_class = SMCMNoMovementStateUpdate;
  v10 = [(SMCMNoMovementStateUpdate *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_state = a3;
    v10->_detectionType = a4;
    objc_storeStrong(&v10->_startTime, a5);
  }

  return v11;
}

- (SMCMNoMovementStateUpdate)initWithCMNoMovementStateUpdate:(id)a3
{
  v4 = a3;
  v5 = +[SMCMNoMovementStateUpdate convertCMNoMovementState:](SMCMNoMovementStateUpdate, "convertCMNoMovementState:", [v4 state]);
  v6 = +[SMCMNoMovementStateUpdate convertCMNoMovementDetectionType:](SMCMNoMovementStateUpdate, "convertCMNoMovementDetectionType:", [v4 detectionType]);
  v7 = MEMORY[0x277CBEAA8];
  [v4 startTime];
  v9 = v8;

  v10 = [v7 dateWithTimeIntervalSinceReferenceDate:v9];
  v11 = [(SMCMNoMovementStateUpdate *)self initWithState:v5 detectionType:v6 startTime:v10];

  return v11;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [SMCMNoMovementStateUpdate convertSMCMNoMovementStateToString:[(SMCMNoMovementStateUpdate *)self state]];
  v7 = [SMCMNoMovementStateUpdate convertSMCMNoMovementDetectionTypeToString:[(SMCMNoMovementStateUpdate *)self detectionType]];
  v8 = [(SMCMNoMovementStateUpdate *)self startTime];
  v9 = [v8 stringFromDate];
  v10 = [v3 stringWithFormat:@"<%@: %p, state: %@, detectionType: %@, startTime: %@>", v5, self, v6, v7, v9];

  return v10;
}

+ (int64_t)convertCMNoMovementState:(int64_t)a3
{
  if (a3 >= 3)
  {
    return -1;
  }

  else
  {
    return a3;
  }
}

+ (int64_t)convertCMNoMovementDetectionType:(int64_t)a3
{
  if ((a3 - 1) >= 3)
  {
    return 0;
  }

  else
  {
    return a3;
  }
}

+ (id)convertSMCMNoMovementStateToString:(int64_t)a3
{
  if (a3 > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_2788CF398[a3];
  }
}

+ (id)convertSMCMNoMovementDetectionTypeToString:(int64_t)a3
{
  if ((a3 - 1) > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_2788CF3B0[a3 - 1];
  }
}

@end