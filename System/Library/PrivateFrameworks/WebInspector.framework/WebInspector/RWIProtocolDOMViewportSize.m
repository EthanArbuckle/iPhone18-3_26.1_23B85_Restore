@interface RWIProtocolDOMViewportSize
- (RWIProtocolDOMViewportSize)initWithWidth:(double)a3 height:(double)a4;
- (double)height;
- (double)width;
- (void)setHeight:(double)a3;
- (void)setWidth:(double)a3;
@end

@implementation RWIProtocolDOMViewportSize

- (RWIProtocolDOMViewportSize)initWithWidth:(double)a3 height:(double)a4
{
  v10.receiver = self;
  v10.super_class = RWIProtocolDOMViewportSize;
  v6 = [(RWIProtocolJSONObject *)&v10 init];
  v7 = v6;
  if (v6)
  {
    [(RWIProtocolDOMViewportSize *)v6 setWidth:a3];
    [(RWIProtocolDOMViewportSize *)v7 setHeight:a4];
    v8 = v7;
  }

  return v7;
}

- (void)setWidth:(double)a3
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMViewportSize;
  [(RWIProtocolJSONObject *)&v3 setDouble:@"width" forKey:a3];
}

- (double)width
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMViewportSize;
  [(RWIProtocolJSONObject *)&v3 doubleForKey:@"width"];
  return result;
}

- (void)setHeight:(double)a3
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMViewportSize;
  [(RWIProtocolJSONObject *)&v3 setDouble:@"height" forKey:a3];
}

- (double)height
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMViewportSize;
  [(RWIProtocolJSONObject *)&v3 doubleForKey:@"height"];
  return result;
}

@end