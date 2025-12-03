@interface SMCMNoMovementStateUpdate
+ (id)convertSMCMNoMovementDetectionTypeToString:(int64_t)string;
+ (id)convertSMCMNoMovementStateToString:(int64_t)string;
+ (int64_t)convertCMNoMovementDetectionType:(int64_t)type;
+ (int64_t)convertCMNoMovementState:(int64_t)state;
- (SMCMNoMovementStateUpdate)initWithCMNoMovementStateUpdate:(id)update;
- (SMCMNoMovementStateUpdate)initWithState:(int64_t)state detectionType:(int64_t)type startTime:(id)time;
- (id)description;
@end

@implementation SMCMNoMovementStateUpdate

- (SMCMNoMovementStateUpdate)initWithState:(int64_t)state detectionType:(int64_t)type startTime:(id)time
{
  timeCopy = time;
  v13.receiver = self;
  v13.super_class = SMCMNoMovementStateUpdate;
  v10 = [(SMCMNoMovementStateUpdate *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_state = state;
    v10->_detectionType = type;
    objc_storeStrong(&v10->_startTime, time);
  }

  return v11;
}

- (SMCMNoMovementStateUpdate)initWithCMNoMovementStateUpdate:(id)update
{
  updateCopy = update;
  v5 = +[SMCMNoMovementStateUpdate convertCMNoMovementState:](SMCMNoMovementStateUpdate, "convertCMNoMovementState:", [updateCopy state]);
  v6 = +[SMCMNoMovementStateUpdate convertCMNoMovementDetectionType:](SMCMNoMovementStateUpdate, "convertCMNoMovementDetectionType:", [updateCopy detectionType]);
  v7 = MEMORY[0x277CBEAA8];
  [updateCopy startTime];
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
  startTime = [(SMCMNoMovementStateUpdate *)self startTime];
  stringFromDate = [startTime stringFromDate];
  v10 = [v3 stringWithFormat:@"<%@: %p, state: %@, detectionType: %@, startTime: %@>", v5, self, v6, v7, stringFromDate];

  return v10;
}

+ (int64_t)convertCMNoMovementState:(int64_t)state
{
  if (state >= 3)
  {
    return -1;
  }

  else
  {
    return state;
  }
}

+ (int64_t)convertCMNoMovementDetectionType:(int64_t)type
{
  if ((type - 1) >= 3)
  {
    return 0;
  }

  else
  {
    return type;
  }
}

+ (id)convertSMCMNoMovementStateToString:(int64_t)string
{
  if (string > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_2788CF398[string];
  }
}

+ (id)convertSMCMNoMovementDetectionTypeToString:(int64_t)string
{
  if ((string - 1) > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_2788CF3B0[string - 1];
  }
}

@end