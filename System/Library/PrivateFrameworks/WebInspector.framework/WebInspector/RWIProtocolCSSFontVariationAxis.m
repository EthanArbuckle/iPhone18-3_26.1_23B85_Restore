@interface RWIProtocolCSSFontVariationAxis
- (NSString)name;
- (NSString)tag;
- (RWIProtocolCSSFontVariationAxis)initWithTag:(id)a3 minimumValue:(double)a4 maximumValue:(double)a5 defaultValue:(double)a6;
- (double)defaultValue;
- (double)maximumValue;
- (double)minimumValue;
- (void)setDefaultValue:(double)a3;
- (void)setMaximumValue:(double)a3;
- (void)setMinimumValue:(double)a3;
- (void)setName:(id)a3;
- (void)setTag:(id)a3;
@end

@implementation RWIProtocolCSSFontVariationAxis

- (RWIProtocolCSSFontVariationAxis)initWithTag:(id)a3 minimumValue:(double)a4 maximumValue:(double)a5 defaultValue:(double)a6
{
  v10 = a3;
  v14.receiver = self;
  v14.super_class = RWIProtocolCSSFontVariationAxis;
  v11 = [(RWIProtocolJSONObject *)&v14 init];
  if (v11)
  {
    if (!v10)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required property '%@' cannot be nil", @"tag"}];
    }

    [(RWIProtocolCSSFontVariationAxis *)v11 setTag:v10];
    [(RWIProtocolCSSFontVariationAxis *)v11 setMinimumValue:a4];
    [(RWIProtocolCSSFontVariationAxis *)v11 setMaximumValue:a5];
    [(RWIProtocolCSSFontVariationAxis *)v11 setDefaultValue:a6];
    v12 = v11;
  }

  return v11;
}

- (void)setName:(id)a3
{
  v3.receiver = self;
  v3.super_class = RWIProtocolCSSFontVariationAxis;
  [(RWIProtocolJSONObject *)&v3 setString:a3 forKey:@"name"];
}

- (NSString)name
{
  v4.receiver = self;
  v4.super_class = RWIProtocolCSSFontVariationAxis;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"name"];

  return v2;
}

- (void)setTag:(id)a3
{
  v3.receiver = self;
  v3.super_class = RWIProtocolCSSFontVariationAxis;
  [(RWIProtocolJSONObject *)&v3 setString:a3 forKey:@"tag"];
}

- (NSString)tag
{
  v4.receiver = self;
  v4.super_class = RWIProtocolCSSFontVariationAxis;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"tag"];

  return v2;
}

- (void)setMinimumValue:(double)a3
{
  v3.receiver = self;
  v3.super_class = RWIProtocolCSSFontVariationAxis;
  [(RWIProtocolJSONObject *)&v3 setDouble:@"minimumValue" forKey:a3];
}

- (double)minimumValue
{
  v3.receiver = self;
  v3.super_class = RWIProtocolCSSFontVariationAxis;
  [(RWIProtocolJSONObject *)&v3 doubleForKey:@"minimumValue"];
  return result;
}

- (void)setMaximumValue:(double)a3
{
  v3.receiver = self;
  v3.super_class = RWIProtocolCSSFontVariationAxis;
  [(RWIProtocolJSONObject *)&v3 setDouble:@"maximumValue" forKey:a3];
}

- (double)maximumValue
{
  v3.receiver = self;
  v3.super_class = RWIProtocolCSSFontVariationAxis;
  [(RWIProtocolJSONObject *)&v3 doubleForKey:@"maximumValue"];
  return result;
}

- (void)setDefaultValue:(double)a3
{
  v3.receiver = self;
  v3.super_class = RWIProtocolCSSFontVariationAxis;
  [(RWIProtocolJSONObject *)&v3 setDouble:@"defaultValue" forKey:a3];
}

- (double)defaultValue
{
  v3.receiver = self;
  v3.super_class = RWIProtocolCSSFontVariationAxis;
  [(RWIProtocolJSONObject *)&v3 doubleForKey:@"defaultValue"];
  return result;
}

@end