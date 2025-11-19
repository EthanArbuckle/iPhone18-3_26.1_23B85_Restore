@interface CNVCardUserDefaults
+ (id)objectForKey:(id)a3;
+ (id)vCardPrivateFields;
@end

@implementation CNVCardUserDefaults

+ (id)vCardPrivateFields
{
  v2 = [a1 objectForKey:@"ABPrivateVCardFields"];
  objc_opt_class();
  v3 = v2;
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = [v5 _cn_filter:&__block_literal_global_15];
  v7 = [v6 allKeys];

  return v7;
}

uint64_t __41__CNVCardUserDefaults_vCardPrivateFields__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  objc_opt_class();
  v4 = v3;
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v7 = [v6 BOOLValue];
  return v7;
}

+ (id)objectForKey:(id)a3
{
  v3 = CFPreferencesCopyAppValue(a3, @"com.apple.AddressBook");

  return v3;
}

@end