@interface RWIProtocolCSSSelector
- (BOOL)dynamic;
- (NSArray)specificity;
- (NSString)text;
- (RWIProtocolCSSSelector)initWithText:(id)text;
- (void)setSpecificity:(id)specificity;
- (void)setText:(id)text;
@end

@implementation RWIProtocolCSSSelector

- (RWIProtocolCSSSelector)initWithText:(id)text
{
  textCopy = text;
  v8.receiver = self;
  v8.super_class = RWIProtocolCSSSelector;
  v5 = [(RWIProtocolJSONObject *)&v8 init];
  if (v5)
  {
    if (!textCopy)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required property '%@' cannot be nil", @"text"}];
    }

    [(RWIProtocolCSSSelector *)v5 setText:textCopy];
    v6 = v5;
  }

  return v5;
}

- (void)setText:(id)text
{
  v3.receiver = self;
  v3.super_class = RWIProtocolCSSSelector;
  [(RWIProtocolJSONObject *)&v3 setString:text forKey:@"text"];
}

- (NSString)text
{
  v4.receiver = self;
  v4.super_class = RWIProtocolCSSSelector;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"text"];

  return v2;
}

- (void)setSpecificity:(id)specificity
{
  Inspector::toJSONIntegerArray(specificity, &v6);
  v5.receiver = self;
  v5.super_class = RWIProtocolCSSSelector;
  [(RWIProtocolJSONObject *)&v5 setJSONArray:&v6 forKey:@"specificity"];
  v4 = v6;
  v6 = 0;
  if (v4)
  {
    if (*v4 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v4;
    }
  }
}

- (NSArray)specificity
{
  v4.receiver = self;
  v4.super_class = RWIProtocolCSSSelector;
  [(RWIProtocolJSONObject *)&v4 JSONArrayForKey:@"specificity"];
  v2 = Inspector::toObjCIntegerArray(&v5);
  [(RWIProtocolCSSPseudoIdMatches *)v2 matches];
  return v2;
}

- (BOOL)dynamic
{
  v3.receiver = self;
  v3.super_class = RWIProtocolCSSSelector;
  return [(RWIProtocolJSONObject *)&v3 BOOLForKey:@"dynamic"];
}

@end