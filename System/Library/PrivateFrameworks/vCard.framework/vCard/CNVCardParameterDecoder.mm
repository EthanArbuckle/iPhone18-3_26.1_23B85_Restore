@interface CNVCardParameterDecoder
+ (id)decodeParameterValue:(id)value;
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

+ (id)decodeParameterValue:(id)value
{
  valueCopy = value;
  substitutions = [self substitutions];
  v6 = [valueCopy _cn_stringByReplacingStrings:substitutions];

  return v6;
}

@end