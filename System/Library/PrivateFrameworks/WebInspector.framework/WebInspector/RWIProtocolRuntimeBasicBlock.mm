@interface RWIProtocolRuntimeBasicBlock
- (BOOL)hasExecuted;
- (int)endOffset;
- (int)executionCount;
- (int)startOffset;
@end

@implementation RWIProtocolRuntimeBasicBlock

- (int)startOffset
{
  v3.receiver = self;
  v3.super_class = RWIProtocolRuntimeBasicBlock;
  return [(RWIProtocolJSONObject *)&v3 integerForKey:@"startOffset"];
}

- (int)endOffset
{
  v3.receiver = self;
  v3.super_class = RWIProtocolRuntimeBasicBlock;
  return [(RWIProtocolJSONObject *)&v3 integerForKey:@"endOffset"];
}

- (BOOL)hasExecuted
{
  v3.receiver = self;
  v3.super_class = RWIProtocolRuntimeBasicBlock;
  return [(RWIProtocolJSONObject *)&v3 BOOLForKey:@"hasExecuted"];
}

- (int)executionCount
{
  v3.receiver = self;
  v3.super_class = RWIProtocolRuntimeBasicBlock;
  return [(RWIProtocolJSONObject *)&v3 integerForKey:@"executionCount"];
}

@end