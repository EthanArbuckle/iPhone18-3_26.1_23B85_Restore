@interface RWIProtocolDOMRGBAColor
- (double)a;
- (int)b;
- (int)g;
- (int)r;
- (void)setA:(double)a;
@end

@implementation RWIProtocolDOMRGBAColor

- (int)r
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMRGBAColor;
  return [(RWIProtocolJSONObject *)&v3 integerForKey:@"r"];
}

- (int)g
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMRGBAColor;
  return [(RWIProtocolJSONObject *)&v3 integerForKey:@"g"];
}

- (int)b
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMRGBAColor;
  return [(RWIProtocolJSONObject *)&v3 integerForKey:@"b"];
}

- (void)setA:(double)a
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMRGBAColor;
  [(RWIProtocolJSONObject *)&v3 setDouble:@"a" forKey:a];
}

- (double)a
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMRGBAColor;
  [(RWIProtocolJSONObject *)&v3 doubleForKey:@"a"];
  return result;
}

@end