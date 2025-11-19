@interface CSCompanionStatus
- (CSCompanionStatus)initWithTimestamp:(unint64_t)a3 code:(int)a4;
@end

@implementation CSCompanionStatus

- (CSCompanionStatus)initWithTimestamp:(unint64_t)a3 code:(int)a4
{
  v7.receiver = self;
  v7.super_class = CSCompanionStatus;
  result = [(CSCompanionStatus *)&v7 init];
  if (result)
  {
    result->_c_struct.timestamp = a3;
    result->_c_struct.code = a4;
  }

  return result;
}

@end