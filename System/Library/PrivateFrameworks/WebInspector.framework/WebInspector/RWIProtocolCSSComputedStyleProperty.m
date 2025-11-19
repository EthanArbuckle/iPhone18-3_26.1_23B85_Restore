@interface RWIProtocolCSSComputedStyleProperty
- (NSString)name;
- (NSString)value;
- (RWIProtocolCSSComputedStyleProperty)initWithName:(id)a3 value:(id)a4;
- (void)setName:(id)a3;
- (void)setValue:(id)a3;
@end

@implementation RWIProtocolCSSComputedStyleProperty

- (RWIProtocolCSSComputedStyleProperty)initWithName:(id)a3 value:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = RWIProtocolCSSComputedStyleProperty;
  v8 = [(RWIProtocolJSONObject *)&v11 init];
  if (v8)
  {
    if (!v6)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required property '%@' cannot be nil", @"name"}];
    }

    if (!v7)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required property '%@' cannot be nil", @"value"}];
    }

    [(RWIProtocolCSSComputedStyleProperty *)v8 setName:v6];
    [(RWIProtocolCSSComputedStyleProperty *)v8 setValue:v7];
    v9 = v8;
  }

  return v8;
}

- (void)setName:(id)a3
{
  v3.receiver = self;
  v3.super_class = RWIProtocolCSSComputedStyleProperty;
  [(RWIProtocolJSONObject *)&v3 setString:a3 forKey:@"name"];
}

- (NSString)name
{
  v4.receiver = self;
  v4.super_class = RWIProtocolCSSComputedStyleProperty;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"name"];

  return v2;
}

- (void)setValue:(id)a3
{
  v3.receiver = self;
  v3.super_class = RWIProtocolCSSComputedStyleProperty;
  [(RWIProtocolJSONObject *)&v3 setString:a3 forKey:@"value"];
}

- (NSString)value
{
  v4.receiver = self;
  v4.super_class = RWIProtocolCSSComputedStyleProperty;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"value"];

  return v2;
}

@end