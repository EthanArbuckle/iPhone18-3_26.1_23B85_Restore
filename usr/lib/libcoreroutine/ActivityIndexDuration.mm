@interface ActivityIndexDuration
- (ActivityIndexDuration)initWithType:(unint64_t)a3 index:(unint64_t)a4 duration:(double)a5;
@end

@implementation ActivityIndexDuration

- (ActivityIndexDuration)initWithType:(unint64_t)a3 index:(unint64_t)a4 duration:(double)a5
{
  v9.receiver = self;
  v9.super_class = ActivityIndexDuration;
  result = [(ActivityIndexDuration *)&v9 init];
  if (result)
  {
    result->_type = a3;
    result->_index = a4;
    result->_duration = a5;
  }

  return result;
}

@end