@interface RWIProtocolDOMFlexOverlayConfig
- (BOOL)showOrderNumbers;
- (RWIProtocolDOMFlexOverlayConfig)initWithFlexColor:(id)a3;
- (RWIProtocolDOMRGBAColor)flexColor;
- (void)setFlexColor:(id)a3;
@end

@implementation RWIProtocolDOMFlexOverlayConfig

- (RWIProtocolDOMFlexOverlayConfig)initWithFlexColor:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = RWIProtocolDOMFlexOverlayConfig;
  v5 = [(RWIProtocolJSONObject *)&v8 init];
  if (v5)
  {
    if (!v4)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required property '%@' cannot be nil", @"flexColor"}];
    }

    [(RWIProtocolDOMFlexOverlayConfig *)v5 setFlexColor:v4];
    v6 = v5;
  }

  return v5;
}

- (void)setFlexColor:(id)a3
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMFlexOverlayConfig;
  [(RWIProtocolJSONObject *)&v3 setObject:a3 forKey:@"flexColor"];
}

- (RWIProtocolDOMRGBAColor)flexColor
{
  v14.receiver = self;
  v14.super_class = RWIProtocolDOMFlexOverlayConfig;
  v3 = [(RWIProtocolJSONObject *)&v14 objectForKey:@"flexColor"];
  if (v3)
  {
    v4 = [RWIProtocolDOMRGBAColor alloc];
    v11.receiver = self;
    v11.super_class = RWIProtocolDOMFlexOverlayConfig;
    v5 = [(RWIProtocolJSONObject *)&v11 objectForKey:@"flexColor"];
    [v5 toJSONObject];
    v6 = v12;
    ++*v12;
    v13 = v6;
    v7 = [(RWIProtocolJSONObject *)v4 initWithJSONObject:&v13];
    v8 = v13;
    v13 = 0;
    if (v8)
    {
      if (*v8 == 1)
      {
        WTF::JSONImpl::Value::operator delete();
      }

      else
      {
        --*v8;
      }
    }

    v9 = v12;
    v12 = 0;
    if (v9)
    {
      if (*v9 == 1)
      {
        WTF::JSONImpl::Value::operator delete();
      }

      else
      {
        --*v9;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)showOrderNumbers
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMFlexOverlayConfig;
  return [(RWIProtocolJSONObject *)&v3 BOOLForKey:@"showOrderNumbers"];
}

@end