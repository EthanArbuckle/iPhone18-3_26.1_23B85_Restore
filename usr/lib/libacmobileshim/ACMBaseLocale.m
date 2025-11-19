@interface ACMBaseLocale
+ (id)createLocaleForIdentifier:(id)a3;
+ (id)localizedString:(id)a3;
+ (id)sharedInstance;
+ (void)initialize;
+ (void)setupRecoveringPreferredLanguages;
+ (void)setupUsingPreferredLanguages;
- (id)objectForKey:(id)a3;
- (void)dealloc;
@end

@implementation ACMBaseLocale

+ (void)initialize
{
  v10.receiver = a1;
  v10.super_class = &OBJC_METACLASS___ACMBaseLocale;
  objc_msgSendSuper2(&v10, sel_initialize);
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  if ([(NSString *)v3 hasPrefix:@"ACMLocale_"])
  {
    v4 = [(NSString *)v3 stringByReplacingOccurrencesOfString:@"ACMLocale_" withString:&stru_2A1EB91A0];
    v5 = [(NSString *)v4 componentsSeparatedByString:@"_"];
    if ([(NSArray *)v5 count]>= 3)
    {
      v4 = [(NSString *)[[(NSArray *)v5 subarrayWithRange:0 componentsJoinedByString:"componentsJoinedByString:" stringByAppendingString:"stringByAppendingString:", [(NSArray *)v5 lastObject]];
    }

    if (!s_Locales)
    {
      s_Locales = objc_opt_new();
    }

    v6 = [MEMORY[0x29EDB8DE0] localeWithLocaleIdentifier:v4];
    v7 = *MEMORY[0x29EDB8CF0];
    v8 = [v6 objectForKey:*MEMORY[0x29EDB8CF0]];
    if ([s_Locales objectForKeyedSubscript:v8])
    {
      if (qword_2A1EB9018)
      {
        if ((ACFLogSettingsGetLevelMask() & 8) != 0)
        {
          ACFLog(3, "+[ACMBaseLocale initialize]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Mobile/Common/Sources/ACMBaseLocale.m", 49, 0, "Duplicate: %@ : %@", v4, [v6 objectForKey:v7]);
        }
      }
    }

    else
    {
      v9 = [v8 stringByReplacingOccurrencesOfString:@"-" withString:@"_"];
      [s_Locales setObject:objc_opt_class() forKeyedSubscript:v9];
    }
  }
}

+ (id)createLocaleForIdentifier:(id)a3
{
  v3 = [a3 stringByReplacingOccurrencesOfString:@"-" withString:@"_"];
  v4 = [objc_msgSend(s_Locales objectForKeyedSubscript:{v3), "new"}];

  return v4;
}

+ (void)setupRecoveringPreferredLanguages
{
  v41 = *MEMORY[0x29EDCA608];
  v2 = [objc_msgSend(MEMORY[0x29EDB9F48] "mainBundle")];
  v31 = [MEMORY[0x29EDB8E20] set];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = v2;
  v30 = [v2 countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v30)
  {
    v3 = 0;
    v27 = *MEMORY[0x29EDB8D00];
    v28 = *v33;
    v4 = *MEMORY[0x29EDB8CF8];
    v5 = *MEMORY[0x29EDB8CE0];
    v6 = 0x29EDB8000uLL;
    v26 = *MEMORY[0x29EDB8CE0];
    do
    {
      for (i = 0; i != v30; ++i)
      {
        if (*v33 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v8 = [objc_alloc(*(v6 + 3552)) initWithLocaleIdentifier:*(*(&v32 + 1) + 8 * i)];
        v9 = [v8 objectForKey:v27];
        v10 = [v8 objectForKey:v4];
        if (v9)
        {
          v10 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@-%@", v10, v9, 0];
        }

        if ([(__CFString *)v10 isEqualToString:@"zh"])
        {
          v11 = @"zh-Hant";
        }

        else
        {
          v11 = v10;
        }

        v12 = [objc_msgSend(*(v6 + 3552) "currentLocale")];
        if ([v12 length])
        {
          v38[0] = v5;
          v38[1] = v4;
          v39[0] = v12;
          v39[1] = v11;
          v13 = MEMORY[0x29EDB8DC0];
          v14 = v39;
          v15 = v38;
          v16 = 2;
        }

        else
        {
          v36 = v4;
          v37 = v11;
          v13 = MEMORY[0x29EDB8DC0];
          v14 = &v37;
          v15 = &v36;
          v16 = 1;
        }

        v17 = v6;
        v18 = [*(v6 + 3552) localeIdentifierFromComponents:{objc_msgSend(v13, "dictionaryWithObjects:forKeys:count:", v14, v15, v16)}];
        v19 = [a1 createLocaleForIdentifier:v18];
        v20 = [a1 createLocaleForIdentifier:v11];
        v21 = v20;
        if (!v19)
        {
          if (!v20)
          {
            v6 = v17;
            continue;
          }

          v24 = [v31 containsObject:v11];
LABEL_22:
          v6 = v17;
          if (v24)
          {
            goto LABEL_23;
          }

          goto LABEL_25;
        }

        v22 = [v31 containsObject:v18];
        v23 = v22;
        if (!v21)
        {
          v11 = v18;
          v21 = v19;
          v6 = v17;
          if (v22)
          {
LABEL_23:
            v5 = v26;
            continue;
          }

          goto LABEL_25;
        }

        v24 = [v31 containsObject:v11];
        if (v23)
        {
          goto LABEL_22;
        }

        if ((v24 & 1) == 0)
        {
          [v19 setNextLocale:v21];
          [v31 addObject:v11];
        }

        v11 = v18;
        v21 = v19;
        v6 = v17;
LABEL_25:
        [v31 addObject:v11];
        if (v3)
        {
          [v3 setNextLocale:v21];
        }

        v3 = v21;
        if ([v21 nextLocale])
        {
          v3 = v21;
          do
          {
            v3 = [v3 nextLocale];
          }

          while ([v3 nextLocale]);
        }

        v5 = v26;
        if (!s_sharedInstance)
        {
          s_sharedInstance = v21;
        }
      }

      v30 = [obj countByEnumeratingWithState:&v32 objects:v40 count:16];
    }

    while (v30);
  }
}

+ (void)setupUsingPreferredLanguages
{
  v18 = *MEMORY[0x29EDCA608];
  v3 = [objc_msgSend(MEMORY[0x29EDB9F48] "mainBundle")];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if ([(__CFString *)v9 isEqualToString:@"zh"])
        {
          v10 = @"zh-Hant";
        }

        else
        {
          v10 = v9;
        }

        v11 = [a1 createLocaleForIdentifier:v10];
        if (v11)
        {
          v12 = v11;
          if (v6)
          {
            [v6 setNextLocale:v11];
          }

          if (!s_sharedInstance)
          {
            s_sharedInstance = v12;
          }

          v6 = v12;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }
}

+ (id)sharedInstance
{
  objc_sync_enter(a1);
  if (!s_sharedInstance)
  {
    if ([objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(MEMORY[0x29EDC7A58] "currentDevice")] < 8)
    {
      [a1 setupRecoveringPreferredLanguages];
    }

    else
    {
      [a1 setupUsingPreferredLanguages];
    }

    if (!s_sharedInstance)
    {
      s_sharedInstance = objc_opt_new();
    }
  }

  objc_sync_exit(a1);
  return s_sharedInstance;
}

- (void)dealloc
{
  [(ACMBaseLocale *)self setNextLocale:0];
  v3.receiver = self;
  v3.super_class = ACMBaseLocale;
  [(ACMBaseLocale *)&v3 dealloc];
}

- (id)objectForKey:(id)a3
{
  result = [(NSDictionary *)[(ACMBaseLocale *)self localeStrings] objectForKey:a3];
  if (!result)
  {
    if ([(ACMBaseLocale *)self nextLocale])
    {
      v6 = [(ACMBaseLocale *)self nextLocale];

      return [(ACMBaseLocale *)v6 objectForKey:a3];
    }

    else
    {
      return a3;
    }
  }

  return result;
}

+ (id)localizedString:(id)a3
{
  result = [objc_msgSend(a1 "sharedInstance")];
  if (!result)
  {
    return a3;
  }

  return result;
}

@end