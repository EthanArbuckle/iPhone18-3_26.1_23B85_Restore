@interface RWIProtocolDOMViewportSize
- (RWIProtocolDOMViewportSize)initWithWidth:(double)width height:(double)height;
- (double)height;
- (double)width;
- (void)setHeight:(double)height;
- (void)setWidth:(double)width;
@end

@implementation RWIProtocolDOMViewportSize

- (RWIProtocolDOMViewportSize)initWithWidth:(double)width height:(double)height
{
  v10.receiver = self;
  v10.super_class = RWIProtocolDOMViewportSize;
  v6 = [(RWIProtocolJSONObject *)&v10 init];
  v7 = v6;
  if (v6)
  {
    [(RWIProtocolDOMViewportSize *)v6 setWidth:width];
    [(RWIProtocolDOMViewportSize *)v7 setHeight:height];
    v8 = v7;
  }

  return v7;
}

- (void)setWidth:(double)width
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMViewportSize;
  [(RWIProtocolJSONObject *)&v3 setDouble:@"width" forKey:width];
}

- (double)width
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMViewportSize;
  [(RWIProtocolJSONObject *)&v3 doubleForKey:@"width"];
  return result;
}

- (void)setHeight:(double)height
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMViewportSize;
  [(RWIProtocolJSONObject *)&v3 setDouble:@"height" forKey:height];
}

- (double)height
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMViewportSize;
  [(RWIProtocolJSONObject *)&v3 doubleForKey:@"height"];
  return result;
}

@end