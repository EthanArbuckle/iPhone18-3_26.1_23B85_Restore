@interface SiriCoreSQLiteQueryRange
- (SiriCoreSQLiteQueryRange)initWithLimit:(unint64_t)limit offset:(unint64_t)offset;
@end

@implementation SiriCoreSQLiteQueryRange

- (SiriCoreSQLiteQueryRange)initWithLimit:(unint64_t)limit offset:(unint64_t)offset
{
  v7.receiver = self;
  v7.super_class = SiriCoreSQLiteQueryRange;
  result = [(SiriCoreSQLiteQueryRange *)&v7 init];
  if (result)
  {
    result->_limit = limit;
    result->_offset = offset;
  }

  return result;
}

@end