@interface CNVCardParameterDecoder
+ (id)decodeParameterValue:(id)a3;
+ (id)substitutions;
@end

@implementation CNVCardParameterDecoder

+ (id)substitutions
{
  if (substitutions_onceToken != -1)
  {
    +[CNVCardParameterDecoder substitutions];
  }

  v3 = substitutions_sSubstitutions;

  return v3;
}

uint64_t __40__CNVCardParameterDecoder_substitutions__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CFBE48]);
  v1 = substitutions_sSubstitutions;
  substitutions_sSubstitutions = v0;

  [substitutions_sSubstitutions setObject:@"\n" forKey:@"^n"];
  [substitutions_sSubstitutions setObject:@"\t" forKey:@"^t"];
  [substitutions_sSubstitutions setObject:@"^" forKey:@"^^"];
  v2 = substitutions_sSubstitutions;

  return [v2 setObject:@" forKey:@"^'""];
}

+ (id)decodeParameterValue:(id)a3
{
  v4 = a3;
  v5 = [a1 substitutions];
  v6 = [v4 _cn_stringByReplacingStrings:v5];

  return v6;
}

@end