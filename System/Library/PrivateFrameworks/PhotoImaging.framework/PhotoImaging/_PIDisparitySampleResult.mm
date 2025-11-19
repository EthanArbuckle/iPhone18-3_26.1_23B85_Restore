@interface _PIDisparitySampleResult
- (_PIDisparitySampleResult)initWithDisparityValue:(float)a3;
@end

@implementation _PIDisparitySampleResult

- (_PIDisparitySampleResult)initWithDisparityValue:(float)a3
{
  v5.receiver = self;
  v5.super_class = _PIDisparitySampleResult;
  result = [(_PIDisparitySampleResult *)&v5 init];
  if (result)
  {
    result->_sampledDisparityValue = a3;
  }

  return result;
}

@end