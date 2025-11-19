@interface CNVCardParameterEncoder
+ (BOOL)mustEncloseStringInQuotes:(id)a3;
+ (id)encodeParameterValue:(id)a3;
+ (id)stringByEnclosingInQuotesIfNecessary:(id)a3;
+ (id)stringByReplacingEncodableCharactersInString:(id)a3;
+ (id)substitutions;
@end

@implementation CNVCardParameterEncoder

+ (id)encodeParameterValue:(id)a3
{
  v4 = [a1 stringByReplacingEncodableCharactersInString:a3];
  v5 = [a1 stringByEnclosingInQuotesIfNecessary:v4];

  return v5;
}

+ (id)substitutions
{
  if (substitutions_onceToken_0 != -1)
  {
    +[CNVCardParameterEncoder substitutions];
  }

  v3 = substitutions_sSubstitutions_0;

  return v3;
}

uint64_t __40__CNVCardParameterEncoder_substitutions__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CFBE48]);
  v1 = substitutions_sSubstitutions_0;
  substitutions_sSubstitutions_0 = v0;

  [substitutions_sSubstitutions_0 setObject:@"^n" forKey:@"\n\r"];
  [substitutions_sSubstitutions_0 setObject:@"^n" forKey:@"\r\n"];
  [substitutions_sSubstitutions_0 setObject:@"^n" forKey:@"\n"];
  [substitutions_sSubstitutions_0 setObject:@"^n" forKey:@"\r"];
  [substitutions_sSubstitutions_0 setObject:@"^t" forKey:@"\t"];
  [substitutions_sSubstitutions_0 setObject:@"^^" forKey:@"^"];
  [substitutions_sSubstitutions_0 setObject:@"^'" forKey:@""];
  v2 = substitutions_sSubstitutions_0;

  return [v2 setObject:&stru_288651EC0 forKey:&stru_288654240];
}

+ (id)stringByReplacingEncodableCharactersInString:(id)a3
{
  v4 = a3;
  v5 = [a1 substitutions];
  v6 = [v4 _cn_stringByReplacingStrings:v5];

  return v6;
}

+ (id)stringByEnclosingInQuotesIfNecessary:(id)a3
{
  v4 = a3;
  if ([a1 mustEncloseStringInQuotes:v4])
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v4];
  }

  else
  {
    v5 = v4;
  }

  v6 = v5;

  return v6;
}

+ (BOOL)mustEncloseStringInQuotes:(id)a3
{
  v3 = MEMORY[0x277CCA900];
  v4 = a3;
  v5 = [v3 characterSetWithCharactersInString:{@", :"}];;
  v6 = [v4 rangeOfCharacterFromSet:v5];

  return v6 != 0x7FFFFFFFFFFFFFFFLL;
}

@end