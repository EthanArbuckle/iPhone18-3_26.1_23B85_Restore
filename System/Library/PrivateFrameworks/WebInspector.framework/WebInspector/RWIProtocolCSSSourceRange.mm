@interface RWIProtocolCSSSourceRange
- (int)endColumn;
- (int)endLine;
- (int)startColumn;
- (int)startLine;
@end

@implementation RWIProtocolCSSSourceRange

- (int)startLine
{
  v3.receiver = self;
  v3.super_class = RWIProtocolCSSSourceRange;
  return [(RWIProtocolJSONObject *)&v3 integerForKey:@"startLine"];
}

- (int)startColumn
{
  v3.receiver = self;
  v3.super_class = RWIProtocolCSSSourceRange;
  return [(RWIProtocolJSONObject *)&v3 integerForKey:@"startColumn"];
}

- (int)endLine
{
  v3.receiver = self;
  v3.super_class = RWIProtocolCSSSourceRange;
  return [(RWIProtocolJSONObject *)&v3 integerForKey:@"endLine"];
}

- (int)endColumn
{
  v3.receiver = self;
  v3.super_class = RWIProtocolCSSSourceRange;
  return [(RWIProtocolJSONObject *)&v3 integerForKey:@"endColumn"];
}

@end