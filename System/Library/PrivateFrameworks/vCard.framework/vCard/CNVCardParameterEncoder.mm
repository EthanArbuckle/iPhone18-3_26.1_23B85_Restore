@interface CNVCardParameterEncoder
+ (BOOL)mustEncloseStringInQuotes:(id)quotes;
+ (id)encodeParameterValue:(id)value;
+ (id)stringByEnclosingInQuotesIfNecessary:(id)necessary;
+ (id)stringByReplacingEncodableCharactersInString:(id)string;
+ (id)substitutions;
@end

@implementation CNVCardParameterEncoder

+ (id)encodeParameterValue:(id)value
{
  v4 = [self stringByReplacingEncodableCharactersInString:value];
  v5 = [self stringByEnclosingInQuotesIfNecessary:v4];

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

+ (id)stringByReplacingEncodableCharactersInString:(id)string
{
  stringCopy = string;
  substitutions = [self substitutions];
  v6 = [stringCopy _cn_stringByReplacingStrings:substitutions];

  return v6;
}

+ (id)stringByEnclosingInQuotesIfNecessary:(id)necessary
{
  necessaryCopy = necessary;
  if ([self mustEncloseStringInQuotes:necessaryCopy])
  {
    necessaryCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", necessaryCopy];
  }

  else
  {
    necessaryCopy = necessaryCopy;
  }

  v6 = necessaryCopy;

  return v6;
}

+ (BOOL)mustEncloseStringInQuotes:(id)quotes
{
  v3 = MEMORY[0x277CCA900];
  quotesCopy = quotes;
  v5 = [v3 characterSetWithCharactersInString:{@", :"}];;
  v6 = [quotesCopy rangeOfCharacterFromSet:v5];

  return v6 != 0x7FFFFFFFFFFFFFFFLL;
}

@end