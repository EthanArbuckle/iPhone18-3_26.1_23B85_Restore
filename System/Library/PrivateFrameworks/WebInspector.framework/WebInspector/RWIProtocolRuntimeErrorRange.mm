@interface RWIProtocolRuntimeErrorRange
- (int)endOffset;
- (int)startOffset;
@end

@implementation RWIProtocolRuntimeErrorRange

- (int)startOffset
{
  v3.receiver = self;
  v3.super_class = RWIProtocolRuntimeErrorRange;
  return [(RWIProtocolJSONObject *)&v3 integerForKey:@"startOffset"];
}

- (int)endOffset
{
  v3.receiver = self;
  v3.super_class = RWIProtocolRuntimeErrorRange;
  return [(RWIProtocolJSONObject *)&v3 integerForKey:@"endOffset"];
}

@end