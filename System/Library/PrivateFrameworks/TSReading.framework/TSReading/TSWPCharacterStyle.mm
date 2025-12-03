@interface TSWPCharacterStyle
+ (id)emphasisProperties;
+ (id)nonEmphasisCharacterProperties;
+ (id)nullStyleName;
+ (id)nullStyleWithContext:(id)context;
+ (id)properties;
+ (id)propertiesAllowingNSNull;
- (int)writingDirection;
@end

@implementation TSWPCharacterStyle

+ (id)properties
{
  if (+[TSWPCharacterStyle properties]::s_onceToken != -1)
  {
    +[TSWPCharacterStyle properties];
  }

  return +[TSWPCharacterStyle properties]::s_properties;
}

TSSPropertySet *__32__TSWPCharacterStyle_properties__block_invoke()
{
  result = [[TSSPropertySet alloc] initWithProperties:33, 21, 19, 18, 20, 16, 17, 34, 39, 41, 32, 31, 40, 28, 26, 27, 36, 37, 35, 24, 22, 23, 29, 25, 43, 53, 54, 55, 56, 44, 45, 46, 47, 48, 49, 50, 0];
  +[TSWPCharacterStyle properties]::s_properties = result;
  return result;
}

+ (id)emphasisProperties
{
  if (+[TSWPCharacterStyle emphasisProperties]::s_onceToken != -1)
  {
    +[TSWPCharacterStyle emphasisProperties];
  }

  return +[TSWPCharacterStyle emphasisProperties]::s_emphasisProperties;
}

TSSPropertySet *__40__TSWPCharacterStyle_emphasisProperties__block_invoke()
{
  result = [[TSSPropertySet alloc] initWithProperties:19, 20, 22, 26, 0];
  +[TSWPCharacterStyle emphasisProperties]::s_emphasisProperties = result;
  return result;
}

+ (id)nonEmphasisCharacterProperties
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__TSWPCharacterStyle_nonEmphasisCharacterProperties__block_invoke;
  block[3] = &unk_279D46770;
  block[4] = self;
  if (+[TSWPCharacterStyle nonEmphasisCharacterProperties]::s_onceToken != -1)
  {
    dispatch_once(&+[TSWPCharacterStyle nonEmphasisCharacterProperties]::s_onceToken, block);
  }

  return +[TSWPCharacterStyle nonEmphasisCharacterProperties]::s_nonEmphasisCharacterProperties;
}

void __52__TSWPCharacterStyle_nonEmphasisCharacterProperties__block_invoke(uint64_t a1)
{
  v2 = [objc_msgSend(*(a1 + 32) "properties")];
  [v2 removeProperties:{objc_msgSend(*(a1 + 32), "emphasisProperties")}];
  +[TSWPCharacterStyle nonEmphasisCharacterProperties]::s_nonEmphasisCharacterProperties = [v2 copy];
}

+ (id)propertiesAllowingNSNull
{
  if (+[TSWPCharacterStyle propertiesAllowingNSNull]::s_onceToken != -1)
  {
    +[TSWPCharacterStyle propertiesAllowingNSNull];
  }

  return +[TSWPCharacterStyle propertiesAllowingNSNull]::s_nullProperties;
}

TSSPropertySet *__46__TSWPCharacterStyle_propertiesAllowingNSNull__block_invoke()
{
  result = [[TSSPropertySet alloc] initWithProperties:18, 16, 39, 32, 40, 28, 37, 24, 43, 53, 54, 55, 45, 46, 47, 0];
  +[TSWPCharacterStyle propertiesAllowingNSNull]::s_nullProperties = result;
  return result;
}

+ (id)nullStyleName
{
  v2 = TSWPBundle();

  return [v2 localizedStringForKey:@"None" value:&stru_287D36338 table:@"TSText"];
}

+ (id)nullStyleWithContext:(id)context
{
  v3 = [objc_alloc(objc_opt_class()) initWithContext:context name:objc_msgSend(self overridePropertyMap:"nullStyleName") isVariation:{0, 0}];

  return v3;
}

- (int)writingDirection
{
  result = [(TSSStyle *)self intValueForProperty:44];
  if (result == 0x80000000)
  {
    objc_opt_class();
    [(TSSStyle *)self valueForProperty:39];
    v4 = TSUDynamicCast();
    if (v4)
    {
      return [MEMORY[0x277CBEAF8] characterDirectionForLanguage:v4] == 2;
    }

    else
    {
      return -1;
    }
  }

  return result;
}

@end