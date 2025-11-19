@interface CNVCardValueEncoder
+ (id)encodeValue:(id)a3;
+ (id)substitutions;
@end

@implementation CNVCardValueEncoder

+ (id)substitutions
{
  if (substitutions_onceToken_1 != -1)
  {
    +[CNVCardValueEncoder substitutions];
  }

  v3 = substitutions_sSubstitutions_1;

  return v3;
}

uint64_t __36__CNVCardValueEncoder_substitutions__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CFBE48]);
  v1 = substitutions_sSubstitutions_1;
  substitutions_sSubstitutions_1 = v0;

  [substitutions_sSubstitutions_1 setObject:@"\\n" forKey:@"\r\n"];
  [substitutions_sSubstitutions_1 setObject:@"\\n" forKey:@"\n"];
  [substitutions_sSubstitutions_1 setObject:@"\\n" forKey:@"\r"];
  [substitutions_sSubstitutions_1 setObject:@"\\;" forKey:@";"];
  [substitutions_sSubstitutions_1 setObject:@"\\ forKey:{", @", "}];
  [substitutions_sSubstitutions_1 setObject:@"\\\ forKey:@"\];
  v2 = substitutions_sSubstitutions_1;

  return [v2 setObject:&stru_288651EC0 forKey:&stru_288654240];
}

+ (id)encodeValue:(id)a3
{
  v4 = a3;
  v5 = [a1 substitutions];
  v6 = [v4 _cn_stringByReplacingStrings:v5];

  return v6;
}

@end