@interface TSWPColumnStyle
+ (float)defaultFloatValueForProperty:(int)property;
+ (id)defaultStyleWithContext:(id)context;
+ (id)defaultValueForProperty:(int)property;
+ (id)properties;
+ (id)propertiesAllowingNSNull;
+ (int)defaultIntValueForProperty:(int)property;
- (BOOL)equalWidth;
- (CGSize)adjustedInsets;
- (TSWPPadding)layoutMargins;
- (double)gapForColumnIndex:(unint64_t)index bodyWidth:(double)width;
- (double)positionForColumnIndex:(unint64_t)index bodyWidth:(double)width outWidth:(double *)outWidth outGap:(double *)gap;
- (double)widthForColumnIndex:(unint64_t)index bodyWidth:(double)width;
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

+ (int)defaultIntValueForProperty:(int)property
{
  if (property == 151)
  {
    v3 = 1;
  }

  else
  {
    v3 = 0x80000000;
  }

  if (property == 152)
  {
    v3 = 0;
  }

  if (property == 153)
  {
    v3 = 0;
  }

  if (property == 149)
  {
    v4 = 0;
  }

  else
  {
    v4 = 0x80000000;
  }

  if (property == 44)
  {
    v4 = 0;
  }

  if (property <= 150)
  {
    return v4;
  }

  else
  {
    return v3;
  }
}

+ (float)defaultFloatValueForProperty:(int)property
{
  result = INFINITY;
  if (property == 147)
  {
    return 0.0;
  }

  return result;
}

+ (id)defaultValueForProperty:(int)property
{
  if (property == 145 || property == 146)
  {

    return +[TSWPPadding padding];
  }

  else if (property == 148)
  {

    return +[TSWPColumns columns];
  }

  else
  {
    v7 = v3;
    v8 = v4;
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___TSWPColumnStyle;
    return objc_msgSendSuper2(&v6, sel_defaultValueForProperty_);
  }
}

+ (id)defaultStyleWithContext:(id)context
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [v4 initWithContext:context name:objc_msgSend(TSWPBundle() overridePropertyMap:"localizedStringForKey:value:table:" isVariation:{@"None", &stru_287D36338, @"TSText", 0, 0}];

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

- (double)widthForColumnIndex:(unint64_t)index bodyWidth:(double)width
{
  v6 = [(TSSStyle *)self valueForProperty:148];

  [v6 widthForColumnIndex:index bodyWidth:width];
  return result;
}

- (double)gapForColumnIndex:(unint64_t)index bodyWidth:(double)width
{
  v6 = [(TSSStyle *)self valueForProperty:148];

  [v6 gapForColumnIndex:index bodyWidth:width];
  return result;
}

- (double)positionForColumnIndex:(unint64_t)index bodyWidth:(double)width outWidth:(double *)outWidth outGap:(double *)gap
{
  v10 = [(TSSStyle *)self valueForProperty:148];

  [v10 positionForColumnIndex:index bodyWidth:outWidth outWidth:gap outGap:width];
  return result;
}

@end