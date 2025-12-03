@interface WLKSanitizer
+ (id)_sanitizeDictionary:(id)dictionary;
+ (id)sanitizeError:(id)error;
@end

@implementation WLKSanitizer

+ (id)sanitizeError:(id)error
{
  errorCopy = error;
  v4 = errorCopy;
  if (errorCopy)
  {
    domain = [errorCopy domain];
    if (domain && [v4 code])
    {
      userInfo = [v4 userInfo];

      if (userInfo)
      {
        userInfo2 = [v4 userInfo];
        v8 = [WLKSanitizer _sanitizeDictionary:userInfo2];

        v9 = MEMORY[0x277CCA9B8];
        domain2 = [v4 domain];
        v11 = [v9 errorWithDomain:domain2 code:objc_msgSend(v4 userInfo:{"code"), v8}];

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

+ (id)_sanitizeDictionary:(id)dictionary
{
  v3 = MEMORY[0x277CBEB38];
  dictionaryCopy = dictionary;
  dictionary = [v3 dictionary];
  v6 = *MEMORY[0x277CCA450];
  v7 = [dictionaryCopy wlk_stringForKey:*MEMORY[0x277CCA450]];
  [dictionary wlk_setObjectUnlessNil:v7 forKey:v6];

  v8 = *MEMORY[0x277CCA498];
  v9 = [dictionaryCopy wlk_stringForKey:*MEMORY[0x277CCA498]];
  [dictionary wlk_setObjectUnlessNil:v9 forKey:v8];

  v10 = *MEMORY[0x277CCA758];
  v11 = [dictionaryCopy wlk_stringForKey:*MEMORY[0x277CCA758]];
  [dictionary wlk_setObjectUnlessNil:v11 forKey:v10];

  v12 = *MEMORY[0x277CCA278];
  v13 = [dictionaryCopy wlk_stringForKey:*MEMORY[0x277CCA278]];
  [dictionary wlk_setObjectUnlessNil:v13 forKey:v12];

  v14 = *MEMORY[0x277CCA068];
  v15 = [dictionaryCopy wlk_stringForKey:*MEMORY[0x277CCA068]];
  [dictionary wlk_setObjectUnlessNil:v15 forKey:v14];

  v16 = *MEMORY[0x277CCA760];
  v17 = [dictionaryCopy wlk_urlForKey:*MEMORY[0x277CCA760]];
  absoluteString = [v17 absoluteString];
  [dictionary wlk_setObjectUnlessNil:absoluteString forKey:v16];

  v19 = *MEMORY[0x277CCA170];
  v20 = [dictionaryCopy wlk_stringForKey:*MEMORY[0x277CCA170]];

  [dictionary wlk_setObjectUnlessNil:v20 forKey:v19];
  v21 = [dictionary copy];

  return v21;
}

@end