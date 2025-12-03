@interface TSWPShapeStyle
+ (id)defaultValueForProperty:(int)property;
+ (id)layoutProperties;
+ (id)properties;
+ (id)propertiesAllowingNSNull;
+ (int)defaultIntValueForProperty:(int)property;
- (NSString)presetKind;
- (id)boxedValueForProperty:(int)property oldBoxedValue:(id)value transformedByTransform:(CGAffineTransform *)transform;
- (id)defaultParagraphStyle;
- (void)setDefaultParagraphStyle:(id)style;
@end

@implementation TSWPShapeStyle

+ (id)properties
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __28__TSWPShapeStyle_properties__block_invoke;
  block[3] = &unk_279D46770;
  block[4] = self;
  if (+[TSWPShapeStyle properties]::onceToken != -1)
  {
    dispatch_once(&+[TSWPShapeStyle properties]::onceToken, block);
  }

  return +[TSWPShapeStyle properties]::s_properties;
}

id __28__TSWPShapeStyle_properties__block_invoke(uint64_t a1)
{
  v2.receiver = *(a1 + 32);
  v2.super_class = &OBJC_METACLASS___TSWPShapeStyle;
  result = [objc_msgSendSuper2(&v2 properties)];
  +[TSWPShapeStyle properties]::s_properties = result;
  return result;
}

+ (id)layoutProperties
{
  if (+[TSWPShapeStyle layoutProperties]::onceToken != -1)
  {
    +[TSWPShapeStyle layoutProperties];
  }

  return +[TSWPShapeStyle layoutProperties]::s_layoutProperties;
}

TSSPropertySet *__34__TSWPShapeStyle_layoutProperties__block_invoke()
{
  result = [[TSSPropertySet alloc] initWithProperties:148, 146, 152, 149, 153, 154, 155, 0];
  +[TSWPShapeStyle layoutProperties]::s_layoutProperties = result;
  return result;
}

+ (id)propertiesAllowingNSNull
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__TSWPShapeStyle_propertiesAllowingNSNull__block_invoke;
  block[3] = &unk_279D46770;
  block[4] = self;
  if (+[TSWPShapeStyle propertiesAllowingNSNull]::onceToken != -1)
  {
    dispatch_once(&+[TSWPShapeStyle propertiesAllowingNSNull]::onceToken, block);
  }

  return +[TSWPShapeStyle propertiesAllowingNSNull]::s_nullProperties;
}

void __42__TSWPShapeStyle_propertiesAllowingNSNull__block_invoke(uint64_t a1)
{
  v5.receiver = *(a1 + 32);
  v5.super_class = &OBJC_METACLASS___TSWPShapeStyle;
  v2 = [objc_msgSendSuper2(&v5 propertiesAllowingNSNull)];
  v3 = +[TSWPColumnStyle propertiesAllowingNSNull];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __42__TSWPShapeStyle_propertiesAllowingNSNull__block_invoke_2;
  v4[3] = &unk_279D47EE8;
  v4[4] = *(a1 + 32);
  v4[5] = v2;
  [v3 enumeratePropertiesUsingBlock:v4];
  [v2 addProperty:212];
  +[TSWPShapeStyle propertiesAllowingNSNull]::s_nullProperties = [v2 copy];
}

uint64_t __42__TSWPShapeStyle_propertiesAllowingNSNull__block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = [objc_msgSend(*(a1 + 32) "properties")];
  if (result)
  {
    v5 = *(a1 + 40);

    return [v5 addProperty:a2];
  }

  return result;
}

+ (int)defaultIntValueForProperty:(int)property
{
  v5 = property + 107;
  if ((property - 149) > 0x3E)
  {
    goto LABEL_8;
  }

  if (((1 << v5) & 0x4000000000000070) != 0)
  {
    return 0;
  }

  if (((1 << v5) & 9) != 0)
  {

    return [TSWPColumnStyle defaultIntValueForProperty:?];
  }

  else
  {
LABEL_8:
    v8 = v3;
    v9 = v4;
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___TSWPShapeStyle;
    return objc_msgSendSuper2(&v7, sel_defaultIntValueForProperty_);
  }
}

+ (id)defaultValueForProperty:(int)property
{
  if (property == 146)
  {
LABEL_4:

    return [TSWPColumnStyle defaultValueForProperty:?];
  }

  if (property != 212)
  {
    if (property != 148)
    {
      v8 = v3;
      v9 = v4;
      v7.receiver = self;
      v7.super_class = &OBJC_METACLASS___TSWPShapeStyle;
      return objc_msgSendSuper2(&v7, sel_defaultValueForProperty_);
    }

    goto LABEL_4;
  }

  v6 = MEMORY[0x277CBEB68];

  return [v6 null];
}

- (NSString)presetKind
{
  v3 = String;
  styleIdentifier = [(TSSStyle *)self styleIdentifier];
  if (styleIdentifier)
  {
    v5 = String(styleIdentifier);

    return TSWPShapePresetKindForPackageString(v5);
  }

  else
  {
    objc_opt_class();
    [(TSSStyle *)self parent];
    v7 = TSUDynamicCast();
    if (v7)
    {

      return [v7 presetKind];
    }

    else
    {
      return v3;
    }
  }
}

- (id)boxedValueForProperty:(int)property oldBoxedValue:(id)value transformedByTransform:(CGAffineTransform *)transform
{
  if (property == 146)
  {
    v6 = [value copy];
    v7 = *&transform->c;
    v11 = *&transform->a;
    v12 = v7;
    v13 = *&transform->tx;
    [v6 transform:&v11];
  }

  else
  {
    v8 = *&transform->c;
    v11 = *&transform->a;
    v12 = v8;
    v13 = *&transform->tx;
    v10.receiver = self;
    v10.super_class = TSWPShapeStyle;
    return [(TSDShapeStyle *)&v10 boxedValueForProperty:*&property oldBoxedValue:value transformedByTransform:&v11];
  }

  return v6;
}

- (void)setDefaultParagraphStyle:(id)style
{
  if (!style)
  {
    style = [MEMORY[0x277CBEB68] null];
  }

  [(TSSStyle *)self setValue:style forProperty:212];
}

- (id)defaultParagraphStyle
{
  v2 = [(TSSStyle *)self valueForProperty:212];
  if ([v2 isEqual:{objc_msgSend(MEMORY[0x277CBEB68], "null")}])
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

@end