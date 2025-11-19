@interface WFNodeWrapper
- (WFNodeWrapper)initWithNode:(_xmlNode *)a3;
- (void)dealloc;
@end

@implementation WFNodeWrapper

- (WFNodeWrapper)initWithNode:(_xmlNode *)a3
{
  v5.receiver = self;
  v5.super_class = WFNodeWrapper;
  result = [(WFNodeWrapper *)&v5 init];
  if (result)
  {
    result->_node = a3;
  }

  return result;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = WFNodeWrapper;
  [(WFNodeWrapper *)&v2 dealloc];
}

@end