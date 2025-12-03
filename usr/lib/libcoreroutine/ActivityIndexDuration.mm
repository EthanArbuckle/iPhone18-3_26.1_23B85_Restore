@interface ActivityIndexDuration
- (ActivityIndexDuration)initWithType:(unint64_t)type index:(unint64_t)index duration:(double)duration;
@end

@implementation ActivityIndexDuration

- (ActivityIndexDuration)initWithType:(unint64_t)type index:(unint64_t)index duration:(double)duration
{
  v9.receiver = self;
  v9.super_class = ActivityIndexDuration;
  result = [(ActivityIndexDuration *)&v9 init];
  if (result)
  {
    result->_type = type;
    result->_index = index;
    result->_duration = duration;
  }

  return result;
}

@end