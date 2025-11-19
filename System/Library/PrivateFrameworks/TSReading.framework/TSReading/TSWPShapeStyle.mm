@interface TSWPShapeStyle
+ (id)defaultValueForProperty:(int)a3;
+ (id)layoutProperties;
+ (id)properties;
+ (id)propertiesAllowingNSNull;
+ (int)defaultIntValueForProperty:(int)a3;
- (NSString)presetKind;
- (id)boxedValueForProperty:(int)a3 oldBoxedValue:(id)a4 transformedByTransform:(CGAffineTransform *)a5;
- (id)defaultParagraphStyle;
- (void)setDefaultParagraphStyle:(id)a3;
@end

@implementation TSWPShapeStyle

+ (id)properties
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __28__TSWPShapeStyle_properties__block_invoke;
  block[3] = &unk_279D46770;
  block[4] = a1;
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
  block[4] = a1;
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

+ (int)defaultIntValueForProperty:(int)a3
{
  v5 = a3 + 107;
  if ((a3 - 149) > 0x3E)
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
    v7.receiver = a1;
    v7.super_class = &OBJC_METACLASS___TSWPShapeStyle;
    return objc_msgSendSuper2(&v7, sel_defaultIntValueForProperty_);
  }
}

+ (id)defaultValueForProperty:(int)a3
{
  if (a3 == 146)
  {
LABEL_4:

    return [TSWPColumnStyle defaultValueForProperty:?];
  }

  if (a3 != 212)
  {
    if (a3 != 148)
    {
      v8 = v3;
      v9 = v4;
      v7.receiver = a1;
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
  v4 = [(TSSStyle *)self styleIdentifier];
  if (v4)
  {
    v5 = String(v4);

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

- (id)boxedValueForProperty:(int)a3 oldBoxedValue:(id)a4 transformedByTransform:(CGAffineTransform *)a5
{
  if (a3 == 146)
  {
    v6 = [a4 copy];
    v7 = *&a5->c;
    v11 = *&a5->a;
    v12 = v7;
    v13 = *&a5->tx;
    [v6 transform:&v11];
  }

  else
  {
    v8 = *&a5->c;
    v11 = *&a5->a;
    v12 = v8;
    v13 = *&a5->tx;
    v10.receiver = self;
    v10.super_class = TSWPShapeStyle;
    return [(TSDShapeStyle *)&v10 boxedValueForProperty:*&a3 oldBoxedValue:a4 transformedByTransform:&v11];
  }

  return v6;
}

- (void)setDefaultParagraphStyle:(id)a3
{
  if (!a3)
  {
    a3 = [MEMORY[0x277CBEB68] null];
  }

  [(TSSStyle *)self setValue:a3 forProperty:212];
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