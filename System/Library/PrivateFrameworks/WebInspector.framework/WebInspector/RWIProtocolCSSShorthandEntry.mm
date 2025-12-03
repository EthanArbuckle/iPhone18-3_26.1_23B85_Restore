@interface RWIProtocolCSSShorthandEntry
- (NSString)name;
- (NSString)value;
- (RWIProtocolCSSShorthandEntry)initWithName:(id)name value:(id)value;
- (void)setName:(id)name;
- (void)setValue:(id)value;
@end

@implementation RWIProtocolCSSShorthandEntry

- (RWIProtocolCSSShorthandEntry)initWithName:(id)name value:(id)value
{
  nameCopy = name;
  valueCopy = value;
  v11.receiver = self;
  v11.super_class = RWIProtocolCSSShorthandEntry;
  v8 = [(RWIProtocolJSONObject *)&v11 init];
  if (v8)
  {
    if (!nameCopy)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required property '%@' cannot be nil", @"name"}];
    }

    if (!valueCopy)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required property '%@' cannot be nil", @"value"}];
    }

    [(RWIProtocolCSSShorthandEntry *)v8 setName:nameCopy];
    [(RWIProtocolCSSShorthandEntry *)v8 setValue:valueCopy];
    v9 = v8;
  }

  return v8;
}

- (void)setName:(id)name
{
  v3.receiver = self;
  v3.super_class = RWIProtocolCSSShorthandEntry;
  [(RWIProtocolJSONObject *)&v3 setString:name forKey:@"name"];
}

- (NSString)name
{
  v4.receiver = self;
  v4.super_class = RWIProtocolCSSShorthandEntry;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"name"];

  return v2;
}

- (void)setValue:(id)value
{
  v3.receiver = self;
  v3.super_class = RWIProtocolCSSShorthandEntry;
  [(RWIProtocolJSONObject *)&v3 setString:value forKey:@"value"];
}

- (NSString)value
{
  v4.receiver = self;
  v4.super_class = RWIProtocolCSSShorthandEntry;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"value"];

  return v2;
}

@end