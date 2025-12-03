@interface STSExpressEventInfo
- (STSExpressEventInfo)initWithState:(unsigned int)state;
@end

@implementation STSExpressEventInfo

- (STSExpressEventInfo)initWithState:(unsigned int)state
{
  v5.receiver = self;
  v5.super_class = STSExpressEventInfo;
  result = [(STSExpressEventInfo *)&v5 init];
  if (result)
  {
    result->_state = state;
  }

  return result;
}

@end