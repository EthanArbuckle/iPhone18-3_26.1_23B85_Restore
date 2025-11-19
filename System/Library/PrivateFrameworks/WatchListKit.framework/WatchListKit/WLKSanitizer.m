@interface WLKSanitizer
+ (id)_sanitizeDictionary:(id)a3;
+ (id)sanitizeError:(id)a3;
@end

@implementation WLKSanitizer

+ (id)sanitizeError:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 domain];
    if (v5 && [v4 code])
    {
      v6 = [v4 userInfo];

      if (v6)
      {
        v7 = [v4 userInfo];
        v8 = [WLKSanitizer _sanitizeDictionary:v7];

        v9 = MEMORY[0x277CCA9B8];
        v10 = [v4 domain];
        v11 = [v9 errorWithDomain:v10 code:objc_msgSend(v4 userInfo:{"code"), v8}];

        goto LABEL_8;
      }
    }

    else
    {
    }
  }

  v11 = v4;
LABEL_8:

  return v11;
}

+ (id)_sanitizeDictionary:(id)a3
{
  v3 = MEMORY[0x277CBEB38];
  v4 = a3;
  v5 = [v3 dictionary];
  v6 = *MEMORY[0x277CCA450];
  v7 = [v4 wlk_stringForKey:*MEMORY[0x277CCA450]];
  [v5 wlk_setObjectUnlessNil:v7 forKey:v6];

  v8 = *MEMORY[0x277CCA498];
  v9 = [v4 wlk_stringForKey:*MEMORY[0x277CCA498]];
  [v5 wlk_setObjectUnlessNil:v9 forKey:v8];

  v10 = *MEMORY[0x277CCA758];
  v11 = [v4 wlk_stringForKey:*MEMORY[0x277CCA758]];
  [v5 wlk_setObjectUnlessNil:v11 forKey:v10];

  v12 = *MEMORY[0x277CCA278];
  v13 = [v4 wlk_stringForKey:*MEMORY[0x277CCA278]];
  [v5 wlk_setObjectUnlessNil:v13 forKey:v12];

  v14 = *MEMORY[0x277CCA068];
  v15 = [v4 wlk_stringForKey:*MEMORY[0x277CCA068]];
  [v5 wlk_setObjectUnlessNil:v15 forKey:v14];

  v16 = *MEMORY[0x277CCA760];
  v17 = [v4 wlk_urlForKey:*MEMORY[0x277CCA760]];
  v18 = [v17 absoluteString];
  [v5 wlk_setObjectUnlessNil:v18 forKey:v16];

  v19 = *MEMORY[0x277CCA170];
  v20 = [v4 wlk_stringForKey:*MEMORY[0x277CCA170]];

  [v5 wlk_setObjectUnlessNil:v20 forKey:v19];
  v21 = [v5 copy];

  return v21;
}

@end