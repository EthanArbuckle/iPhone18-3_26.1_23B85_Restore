@interface RTLearnedLocationManagerNotificationDidUpdate
- (RTLearnedLocationManagerNotificationDidUpdate)initWithIntervalSinceLastUpdate:(double)update trainMode:(unint64_t)mode trainResult:(unint64_t)result;
- (id)description;
@end

@implementation RTLearnedLocationManagerNotificationDidUpdate

- (RTLearnedLocationManagerNotificationDidUpdate)initWithIntervalSinceLastUpdate:(double)update trainMode:(unint64_t)mode trainResult:(unint64_t)result
{
  v9.receiver = self;
  v9.super_class = RTLearnedLocationManagerNotificationDidUpdate;
  result = [(RTNotification *)&v9 init];
  if (result)
  {
    result->_intervalSinceLastUpdate = update;
    result->_trainMode = mode;
    result->_trainResult = result;
  }

  return result;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  [(RTLearnedLocationManagerNotificationDidUpdate *)self intervalSinceLastUpdate];
  v5 = v4;
  v6 = [objc_opt_class() stringFromTrainMode:{-[RTLearnedLocationManagerNotificationDidUpdate trainMode](self, "trainMode")}];
  v7 = [objc_opt_class() stringFromTrainResult:{-[RTLearnedLocationManagerNotificationDidUpdate trainResult](self, "trainResult")}];
  v8 = [v3 stringWithFormat:@"intervalSinceLastUpdate, %.2f, trainMode, %@, trainResult, %@", v5, v6, v7];

  return v8;
}

@end