@interface RWIProtocolCSSFontVariationAxis
- (NSString)name;
- (NSString)tag;
- (RWIProtocolCSSFontVariationAxis)initWithTag:(id)tag minimumValue:(double)value maximumValue:(double)maximumValue defaultValue:(double)defaultValue;
- (double)defaultValue;
- (double)maximumValue;
- (double)minimumValue;
- (void)setDefaultValue:(double)value;
- (void)setMaximumValue:(double)value;
- (void)setMinimumValue:(double)value;
- (void)setName:(id)name;
- (void)setTag:(id)tag;
@end

@implementation RWIProtocolCSSFontVariationAxis

- (RWIProtocolCSSFontVariationAxis)initWithTag:(id)tag minimumValue:(double)value maximumValue:(double)maximumValue defaultValue:(double)defaultValue
{
  tagCopy = tag;
  v14.receiver = self;
  v14.super_class = RWIProtocolCSSFontVariationAxis;
  v11 = [(RWIProtocolJSONObject *)&v14 init];
  if (v11)
  {
    if (!tagCopy)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required property '%@' cannot be nil", @"tag"}];
    }

    [(RWIProtocolCSSFontVariationAxis *)v11 setTag:tagCopy];
    [(RWIProtocolCSSFontVariationAxis *)v11 setMinimumValue:value];
    [(RWIProtocolCSSFontVariationAxis *)v11 setMaximumValue:maximumValue];
    [(RWIProtocolCSSFontVariationAxis *)v11 setDefaultValue:defaultValue];
    v12 = v11;
  }

  return v11;
}

- (void)setName:(id)name
{
  v3.receiver = self;
  v3.super_class = RWIProtocolCSSFontVariationAxis;
  [(RWIProtocolJSONObject *)&v3 setString:name forKey:@"name"];
}

- (NSString)name
{
  v4.receiver = self;
  v4.super_class = RWIProtocolCSSFontVariationAxis;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"name"];

  return v2;
}

- (void)setTag:(id)tag
{
  v3.receiver = self;
  v3.super_class = RWIProtocolCSSFontVariationAxis;
  [(RWIProtocolJSONObject *)&v3 setString:tag forKey:@"tag"];
}

- (NSString)tag
{
  v4.receiver = self;
  v4.super_class = RWIProtocolCSSFontVariationAxis;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"tag"];

  return v2;
}

- (void)setMinimumValue:(double)value
{
  v3.receiver = self;
  v3.super_class = RWIProtocolCSSFontVariationAxis;
  [(RWIProtocolJSONObject *)&v3 setDouble:@"minimumValue" forKey:value];
}

- (double)minimumValue
{
  v3.receiver = self;
  v3.super_class = RWIProtocolCSSFontVariationAxis;
  [(RWIProtocolJSONObject *)&v3 doubleForKey:@"minimumValue"];
  return result;
}

- (void)setMaximumValue:(double)value
{
  v3.receiver = self;
  v3.super_class = RWIProtocolCSSFontVariationAxis;
  [(RWIProtocolJSONObject *)&v3 setDouble:@"maximumValue" forKey:value];
}

- (double)maximumValue
{
  v3.receiver = self;
  v3.super_class = RWIProtocolCSSFontVariationAxis;
  [(RWIProtocolJSONObject *)&v3 doubleForKey:@"maximumValue"];
  return result;
}

- (void)setDefaultValue:(double)value
{
  v3.receiver = self;
  v3.super_class = RWIProtocolCSSFontVariationAxis;
  [(RWIProtocolJSONObject *)&v3 setDouble:@"defaultValue" forKey:value];
}

- (double)defaultValue
{
  v3.receiver = self;
  v3.super_class = RWIProtocolCSSFontVariationAxis;
  [(RWIProtocolJSONObject *)&v3 doubleForKey:@"defaultValue"];
  return result;
}

@end