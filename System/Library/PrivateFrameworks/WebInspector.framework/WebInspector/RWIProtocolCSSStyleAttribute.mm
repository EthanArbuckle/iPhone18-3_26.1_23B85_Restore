@interface RWIProtocolCSSStyleAttribute
- (NSString)name;
- (RWIProtocolCSSStyle)style;
- (RWIProtocolCSSStyleAttribute)initWithName:(id)a3 style:(id)a4;
- (void)setName:(id)a3;
- (void)setStyle:(id)a3;
@end

@implementation RWIProtocolCSSStyleAttribute

- (RWIProtocolCSSStyleAttribute)initWithName:(id)a3 style:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = RWIProtocolCSSStyleAttribute;
  v8 = [(RWIProtocolJSONObject *)&v11 init];
  if (v8)
  {
    if (!v6)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required property '%@' cannot be nil", @"name"}];
    }

    if (!v7)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required property '%@' cannot be nil", @"style"}];
    }

    [(RWIProtocolCSSStyleAttribute *)v8 setName:v6];
    [(RWIProtocolCSSStyleAttribute *)v8 setStyle:v7];
    v9 = v8;
  }

  return v8;
}

- (void)setName:(id)a3
{
  v3.receiver = self;
  v3.super_class = RWIProtocolCSSStyleAttribute;
  [(RWIProtocolJSONObject *)&v3 setString:a3 forKey:@"name"];
}

- (NSString)name
{
  v4.receiver = self;
  v4.super_class = RWIProtocolCSSStyleAttribute;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"name"];

  return v2;
}

- (void)setStyle:(id)a3
{
  v3.receiver = self;
  v3.super_class = RWIProtocolCSSStyleAttribute;
  [(RWIProtocolJSONObject *)&v3 setObject:a3 forKey:@"style"];
}

- (RWIProtocolCSSStyle)style
{
  v14.receiver = self;
  v14.super_class = RWIProtocolCSSStyleAttribute;
  v3 = [(RWIProtocolJSONObject *)&v14 objectForKey:@"style"];
  if (v3)
  {
    v4 = [RWIProtocolCSSStyle alloc];
    v11.receiver = self;
    v11.super_class = RWIProtocolCSSStyleAttribute;
    v5 = [(RWIProtocolJSONObject *)&v11 objectForKey:@"style"];
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

@end