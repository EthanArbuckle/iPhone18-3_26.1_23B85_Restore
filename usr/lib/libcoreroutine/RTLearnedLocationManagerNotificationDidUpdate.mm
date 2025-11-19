@interface RTLearnedLocationManagerNotificationDidUpdate
- (RTLearnedLocationManagerNotificationDidUpdate)initWithIntervalSinceLastUpdate:(double)a3 trainMode:(unint64_t)a4 trainResult:(unint64_t)a5;
- (id)description;
@end

@implementation RTLearnedLocationManagerNotificationDidUpdate

- (RTLearnedLocationManagerNotificationDidUpdate)initWithIntervalSinceLastUpdate:(double)a3 trainMode:(unint64_t)a4 trainResult:(unint64_t)a5
{
  v9.receiver = self;
  v9.super_class = RTLearnedLocationManagerNotificationDidUpdate;
  result = [(RTNotification *)&v9 init];
  if (result)
  {
    result->_intervalSinceLastUpdate = a3;
    result->_trainMode = a4;
    result->_trainResult = a5;
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