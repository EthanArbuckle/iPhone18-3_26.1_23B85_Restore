@interface SiriCoreSQLiteQueryRange
- (SiriCoreSQLiteQueryRange)initWithLimit:(unint64_t)a3 offset:(unint64_t)a4;
@end

@implementation SiriCoreSQLiteQueryRange

- (SiriCoreSQLiteQueryRange)initWithLimit:(unint64_t)a3 offset:(unint64_t)a4
{
  v7.receiver = self;
  v7.super_class = SiriCoreSQLiteQueryRange;
  result = [(SiriCoreSQLiteQueryRange *)&v7 init];
  if (result)
  {
    result->_limit = a3;
    result->_offset = a4;
  }

  return result;
}

@end