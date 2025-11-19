@interface UIAccessibilityAuditUtilities
+ (BOOL)checkBoolValueForOptionsKey:(id)a3 inDictionary:(id)a4;
+ (id)dictionaryWithAXAuditIssue:(int64_t)a3 element:(id)a4 additionalInfo:(id)a5 identifier:(id)a6 foregroundColor:(id)a7 backgroundColor:(id)a8 fontSize:(id)a9 elementRect:(id)a10 text:(id)a11;
+ (id)optionsDictionaryForAuditTest:(id)a3 inDictionary:(id)a4;
@end

@implementation UIAccessibilityAuditUtilities

+ (id)dictionaryWithAXAuditIssue:(int64_t)a3 element:(id)a4 additionalInfo:(id)a5 identifier:(id)a6 foregroundColor:(id)a7 backgroundColor:(id)a8 fontSize:(id)a9 elementRect:(id)a10 text:(id)a11
{
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v22 = a10;
  v23 = a11;
  v24 = [MEMORY[0x1E695DF90] dictionary];
  v25 = v24;
  if (v16)
  {
    v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%li", a3];
    [v25 setObject:v26 forKey:*MEMORY[0x1E6988CB0]];

    [v25 setObject:v16 forKey:*MEMORY[0x1E6988C80]];
    if (v17)
    {
      [v25 setObject:v17 forKey:*MEMORY[0x1E6988C70]];
    }

    if (v18)
    {
      [v25 setObject:v18 forKey:*MEMORY[0x1E6988CA0]];
    }

    if (v19)
    {
      [v25 setObject:v19 forKey:*MEMORY[0x1E6988C98]];
    }

    if (v20)
    {
      [v25 setObject:v20 forKey:*MEMORY[0x1E6988C78]];
    }

    if (v21)
    {
      [v25 setObject:v21 forKey:*MEMORY[0x1E6988C90]];
    }

    if (v22)
    {
      [v25 setObject:v22 forKey:*MEMORY[0x1E6988C88]];
    }

    if (v23)
    {
      [v25 setObject:v23 forKey:*MEMORY[0x1E6988CA8]];
    }

    v27 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v25];
  }

  else
  {
    v27 = v24;
  }

  v28 = v27;

  return v28;
}

+ (BOOL)checkBoolValueForOptionsKey:(id)a3 inDictionary:(id)a4
{
  if (!a4)
  {
    return 0;
  }

  v5 = a4;
  v6 = a3;
  objc_opt_class();
  v7 = [v5 objectForKey:v6];

  v8 = __UIAccessibilityCastAsClass();

  if (v8)
  {
    v9 = [v8 BOOLValue];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)optionsDictionaryForAuditTest:(id)a3 inDictionary:(id)a4
{
  if (a4)
  {
    v5 = a4;
    v6 = a3;
    objc_opt_class();
    v7 = [v5 objectForKey:v6];

    v8 = __UIAccessibilityCastAsClass();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end