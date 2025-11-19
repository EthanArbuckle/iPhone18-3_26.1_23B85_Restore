@interface STSExpressEventInfo
- (STSExpressEventInfo)initWithState:(unsigned int)a3;
@end

@implementation STSExpressEventInfo

- (STSExpressEventInfo)initWithState:(unsigned int)a3
{
  v5.receiver = self;
  v5.super_class = STSExpressEventInfo;
  result = [(STSExpressEventInfo *)&v5 init];
  if (result)
  {
    result->_state = a3;
  }

  return result;
}

@end