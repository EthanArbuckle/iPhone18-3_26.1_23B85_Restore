@interface NSDictionary(WBNSDictionaryExtras)
- (id)wb_URLForKey:()WBNSDictionaryExtras isValid:;
- (id)wb_arrayForKey:()WBNSDictionaryExtras isValid:;
- (id)wb_dateForKey:()WBNSDictionaryExtras isValid:;
- (id)wb_dictionaryForKey:()WBNSDictionaryExtras isValid:;
- (id)wb_numberForKey:()WBNSDictionaryExtras isValid:;
- (id)wb_objectOfType:()WBNSDictionaryExtras forKey:isValid:;
- (id)wb_stringForKey:()WBNSDictionaryExtras isValid:;
- (uint64_t)wb_BOOLForKey:()WBNSDictionaryExtras;
@end

@implementation NSDictionary(WBNSDictionaryExtras)

- (uint64_t)wb_BOOLForKey:()WBNSDictionaryExtras
{
  v3 = [a1 wb_numberForKey:a3 isValid:0];
  v4 = [v3 BOOLValue];

  return v4;
}

- (id)wb_numberForKey:()WBNSDictionaryExtras isValid:
{
  v6 = a3;
  v7 = [a1 wb_objectOfType:objc_opt_class() forKey:v6 isValid:a4];

  return v7;
}

- (id)wb_stringForKey:()WBNSDictionaryExtras isValid:
{
  v6 = a3;
  v7 = [a1 wb_objectOfType:objc_opt_class() forKey:v6 isValid:a4];

  return v7;
}

- (id)wb_dictionaryForKey:()WBNSDictionaryExtras isValid:
{
  v6 = a3;
  v7 = [a1 wb_objectOfType:objc_opt_class() forKey:v6 isValid:a4];

  return v7;
}

- (id)wb_arrayForKey:()WBNSDictionaryExtras isValid:
{
  v6 = a3;
  v7 = [a1 wb_objectOfType:objc_opt_class() forKey:v6 isValid:a4];

  return v7;
}

- (id)wb_dateForKey:()WBNSDictionaryExtras isValid:
{
  v6 = a3;
  v7 = [a1 wb_objectOfType:objc_opt_class() forKey:v6 isValid:a4];

  return v7;
}

- (id)wb_URLForKey:()WBNSDictionaryExtras isValid:
{
  v6 = a3;
  v7 = [a1 wb_objectOfType:objc_opt_class() forKey:v6 isValid:a4];

  return v7;
}

- (id)wb_objectOfType:()WBNSDictionaryExtras forKey:isValid:
{
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __69__NSDictionary_WBNSDictionaryExtras__wb_objectOfType_forKey_isValid___block_invoke;
  v13[3] = &__block_descriptor_40_e8_v12__0B8l;
  v13[4] = a5;
  v6 = a4;
  v7 = MEMORY[0x2743D6830](v13);
  v8 = [a1 objectForKey:v6];

  if (v8)
  {
    isKindOfClass = objc_opt_isKindOfClass();
    v10 = v7[2];
    if (isKindOfClass)
    {
      v10(v7, 1);
      v11 = v8;
      goto LABEL_7;
    }

    v10(v7, 0);
  }

  else
  {
    (v7[2])(v7, 1);
  }

  v11 = 0;
LABEL_7:

  return v11;
}

@end