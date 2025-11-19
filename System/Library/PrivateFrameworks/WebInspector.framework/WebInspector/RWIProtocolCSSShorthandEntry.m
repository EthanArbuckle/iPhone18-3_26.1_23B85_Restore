@interface RWIProtocolCSSShorthandEntry
- (NSString)name;
- (NSString)value;
- (RWIProtocolCSSShorthandEntry)initWithName:(id)a3 value:(id)a4;
- (void)setName:(id)a3;
- (void)setValue:(id)a3;
@end

@implementation RWIProtocolCSSShorthandEntry

- (RWIProtocolCSSShorthandEntry)initWithName:(id)a3 value:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = RWIProtocolCSSShorthandEntry;
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

    [(RWIProtocolCSSShorthandEntry *)v8 setName:v6];
    [(RWIProtocolCSSShorthandEntry *)v8 setValue:v7];
    v9 = v8;
  }

  return v8;
}

- (void)setName:(id)a3
{
  v3.receiver = self;
  v3.super_class = RWIProtocolCSSShorthandEntry;
  [(RWIProtocolJSONObject *)&v3 setString:a3 forKey:@"name"];
}

- (NSString)name
{
  v4.receiver = self;
  v4.super_class = RWIProtocolCSSShorthandEntry;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"name"];

  return v2;
}

- (void)setValue:(id)a3
{
  v3.receiver = self;
  v3.super_class = RWIProtocolCSSShorthandEntry;
  [(RWIProtocolJSONObject *)&v3 setString:a3 forKey:@"value"];
}

- (NSString)value
{
  v4.receiver = self;
  v4.super_class = RWIProtocolCSSShorthandEntry;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"value"];

  return v2;
}

@end