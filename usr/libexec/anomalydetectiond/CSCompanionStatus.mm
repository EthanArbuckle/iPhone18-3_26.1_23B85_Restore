@interface CSCompanionStatus
- (CSCompanionStatus)initWithTimestamp:(unint64_t)timestamp code:(int)code;
@end

@implementation CSCompanionStatus

- (CSCompanionStatus)initWithTimestamp:(unint64_t)timestamp code:(int)code
{
  v7.receiver = self;
  v7.super_class = CSCompanionStatus;
  result = [(CSCompanionStatus *)&v7 init];
  if (result)
  {
    result->_c_struct.timestamp = timestamp;
    result->_c_struct.code = code;
  }

  return result;
}

@end