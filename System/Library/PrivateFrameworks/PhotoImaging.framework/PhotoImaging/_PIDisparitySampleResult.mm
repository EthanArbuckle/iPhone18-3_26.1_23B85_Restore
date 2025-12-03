@interface _PIDisparitySampleResult
- (_PIDisparitySampleResult)initWithDisparityValue:(float)value;
@end

@implementation _PIDisparitySampleResult

- (_PIDisparitySampleResult)initWithDisparityValue:(float)value
{
  v5.receiver = self;
  v5.super_class = _PIDisparitySampleResult;
  result = [(_PIDisparitySampleResult *)&v5 init];
  if (result)
  {
    result->_sampledDisparityValue = value;
  }

  return result;
}

@end