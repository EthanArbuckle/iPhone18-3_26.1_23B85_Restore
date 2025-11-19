@interface RWIProtocolDOMGridOverlayConfig
- (BOOL)showAreaNames;
- (BOOL)showExtendedGridLines;
- (BOOL)showLineNames;
- (BOOL)showLineNumbers;
- (BOOL)showTrackSizes;
- (RWIProtocolDOMGridOverlayConfig)initWithGridColor:(id)a3;
- (RWIProtocolDOMRGBAColor)gridColor;
- (void)setGridColor:(id)a3;
@end

@implementation RWIProtocolDOMGridOverlayConfig

- (RWIProtocolDOMGridOverlayConfig)initWithGridColor:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = RWIProtocolDOMGridOverlayConfig;
  v5 = [(RWIProtocolJSONObject *)&v8 init];
  if (v5)
  {
    if (!v4)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required property '%@' cannot be nil", @"gridColor"}];
    }

    [(RWIProtocolDOMGridOverlayConfig *)v5 setGridColor:v4];
    v6 = v5;
  }

  return v5;
}

- (void)setGridColor:(id)a3
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMGridOverlayConfig;
  [(RWIProtocolJSONObject *)&v3 setObject:a3 forKey:@"gridColor"];
}

- (RWIProtocolDOMRGBAColor)gridColor
{
  v14.receiver = self;
  v14.super_class = RWIProtocolDOMGridOverlayConfig;
  v3 = [(RWIProtocolJSONObject *)&v14 objectForKey:@"gridColor"];
  if (v3)
  {
    v4 = [RWIProtocolDOMRGBAColor alloc];
    v11.receiver = self;
    v11.super_class = RWIProtocolDOMGridOverlayConfig;
    v5 = [(RWIProtocolJSONObject *)&v11 objectForKey:@"gridColor"];
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

- (BOOL)showLineNames
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMGridOverlayConfig;
  return [(RWIProtocolJSONObject *)&v3 BOOLForKey:@"showLineNames"];
}

- (BOOL)showLineNumbers
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMGridOverlayConfig;
  return [(RWIProtocolJSONObject *)&v3 BOOLForKey:@"showLineNumbers"];
}

- (BOOL)showExtendedGridLines
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMGridOverlayConfig;
  return [(RWIProtocolJSONObject *)&v3 BOOLForKey:@"showExtendedGridLines"];
}

- (BOOL)showTrackSizes
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMGridOverlayConfig;
  return [(RWIProtocolJSONObject *)&v3 BOOLForKey:@"showTrackSizes"];
}

- (BOOL)showAreaNames
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMGridOverlayConfig;
  return [(RWIProtocolJSONObject *)&v3 BOOLForKey:@"showAreaNames"];
}

@end