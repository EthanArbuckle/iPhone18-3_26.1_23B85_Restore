@interface TSWPColumnStyle
+ (float)defaultFloatValueForProperty:(int)a3;
+ (id)defaultStyleWithContext:(id)a3;
+ (id)defaultValueForProperty:(int)a3;
+ (id)properties;
+ (id)propertiesAllowingNSNull;
+ (int)defaultIntValueForProperty:(int)a3;
- (BOOL)equalWidth;
- (CGSize)adjustedInsets;
- (TSWPPadding)layoutMargins;
- (double)gapForColumnIndex:(unint64_t)a3 bodyWidth:(double)a4;
- (double)positionForColumnIndex:(unint64_t)a3 bodyWidth:(double)a4 outWidth:(double *)a5 outGap:(double *)a6;
- (double)widthForColumnIndex:(unint64_t)a3 bodyWidth:(double)a4;
- (unint64_t)columnCount;
@end

@implementation TSWPColumnStyle

+ (id)properties
{
  if (+[TSWPColumnStyle properties]::s_onceToken != -1)
  {
    +[TSWPColumnStyle properties];
  }

  return +[TSWPColumnStyle properties]::s_properties;
}

TSSPropertySet *__29__TSWPColumnStyle_properties__block_invoke()
{
  result = [[TSSPropertySet alloc] initWithProperties:148, 151, 145, 147, 146, 152, 149, 153, 44, 0];
  +[TSWPColumnStyle properties]::s_properties = result;
  return result;
}

+ (id)propertiesAllowingNSNull
{
  if (+[TSWPColumnStyle propertiesAllowingNSNull]::s_onceToken != -1)
  {
    +[TSWPColumnStyle propertiesAllowingNSNull];
  }

  return +[TSWPColumnStyle propertiesAllowingNSNull]::s_nullProperties;
}

TSSPropertySet *__43__TSWPColumnStyle_propertiesAllowingNSNull__block_invoke()
{
  result = [[TSSPropertySet alloc] initWithProperties:148, 145, 146, 0];
  +[TSWPColumnStyle propertiesAllowingNSNull]::s_nullProperties = result;
  return result;
}

+ (int)defaultIntValueForProperty:(int)a3
{
  if (a3 == 151)
  {
    v3 = 1;
  }

  else
  {
    v3 = 0x80000000;
  }

  if (a3 == 152)
  {
    v3 = 0;
  }

  if (a3 == 153)
  {
    v3 = 0;
  }

  if (a3 == 149)
  {
    v4 = 0;
  }

  else
  {
    v4 = 0x80000000;
  }

  if (a3 == 44)
  {
    v4 = 0;
  }

  if (a3 <= 150)
  {
    return v4;
  }

  else
  {
    return v3;
  }
}

+ (float)defaultFloatValueForProperty:(int)a3
{
  result = INFINITY;
  if (a3 == 147)
  {
    return 0.0;
  }

  return result;
}

+ (id)defaultValueForProperty:(int)a3
{
  if (a3 == 145 || a3 == 146)
  {

    return +[TSWPPadding padding];
  }

  else if (a3 == 148)
  {

    return +[TSWPColumns columns];
  }

  else
  {
    v7 = v3;
    v8 = v4;
    v6.receiver = a1;
    v6.super_class = &OBJC_METACLASS___TSWPColumnStyle;
    return objc_msgSendSuper2(&v6, sel_defaultValueForProperty_);
  }
}

+ (id)defaultStyleWithContext:(id)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [v4 initWithContext:a3 name:objc_msgSend(TSWPBundle() overridePropertyMap:"localizedStringForKey:value:table:" isVariation:{@"None", &stru_287D36338, @"TSText", 0, 0}];

  return v5;
}

- (CGSize)adjustedInsets
{
  v3 = [(TSSStyle *)self valueForProperty:146];
  [v3 leftInset];
  v5 = v4;
  [(TSSStyle *)self floatValueForProperty:147];
  v7 = v6;
  if (v5 < v7)
  {
    v5 = v7;
  }

  [v3 topInset];
  v9 = v8;
  v10 = v5;
  result.height = v9;
  result.width = v10;
  return result;
}

- (TSWPPadding)layoutMargins
{
  objc_opt_class();
  [(TSSStyle *)self valueForProperty:145];

  return TSUDynamicCast();
}

- (BOOL)equalWidth
{
  v2 = [(TSSStyle *)self valueForProperty:148];
  if (!v2)
  {
    return 1;
  }

  return [v2 equalWidth];
}

- (unint64_t)columnCount
{
  result = [-[TSSStyle valueForProperty:](self valueForProperty:{148), "columnCount"}];
  if (result >= 0xA)
  {
    return 10;
  }

  return result;
}

- (double)widthForColumnIndex:(unint64_t)a3 bodyWidth:(double)a4
{
  v6 = [(TSSStyle *)self valueForProperty:148];

  [v6 widthForColumnIndex:a3 bodyWidth:a4];
  return result;
}

- (double)gapForColumnIndex:(unint64_t)a3 bodyWidth:(double)a4
{
  v6 = [(TSSStyle *)self valueForProperty:148];

  [v6 gapForColumnIndex:a3 bodyWidth:a4];
  return result;
}

- (double)positionForColumnIndex:(unint64_t)a3 bodyWidth:(double)a4 outWidth:(double *)a5 outGap:(double *)a6
{
  v10 = [(TSSStyle *)self valueForProperty:148];

  [v10 positionForColumnIndex:a3 bodyWidth:a5 outWidth:a6 outGap:a4];
  return result;
}

@end