@interface NSBundle(SCRCBundleExtras)
+ (id)coreFrameworkBundle;
+ (id)localeForString:()SCRCBundleExtras;
+ (id)localizedCoreStringForKey:()SCRCBundleExtras;
+ (id)localizedScreenReaderStringForKey:()SCRCBundleExtras table:;
+ (id)preferredLocalizationsForLocale:()SCRCBundleExtras;
+ (id)screenReaderFrameworkBundle;
- (id)bundleLocale;
- (id)localizedStringForKey:()SCRCBundleExtras table:locale:;
@end

@implementation NSBundle(SCRCBundleExtras)

+ (id)coreFrameworkBundle
{
  v0 = _SCRCFrameworkBundle;
  if (!_SCRCFrameworkBundle)
  {
    v1 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v2 = _SCRCFrameworkBundle;
    _SCRCFrameworkBundle = v1;

    v0 = _SCRCFrameworkBundle;
  }

  return v0;
}

+ (id)localizedCoreStringForKey:()SCRCBundleExtras
{
  v4 = a3;
  v5 = [a1 coreFrameworkBundle];
  v6 = [v5 localizedStringForKey:v4 value:0 table:0];

  return v6;
}

+ (id)screenReaderFrameworkBundle
{
  v2 = _SCRFrameworkBundle;
  if (!_SCRFrameworkBundle)
  {
    v3 = [a1 bundleWithIdentifier:@"com.apple.ScreenReader"];
    v4 = _SCRFrameworkBundle;
    _SCRFrameworkBundle = v3;

    v2 = _SCRFrameworkBundle;
    if (!_SCRFrameworkBundle)
    {
      v5 = [a1 coreFrameworkBundle];
      v6 = [v5 bundlePath];
      v7 = [v6 stringByDeletingLastPathComponent];
      v8 = [v7 stringByAppendingPathComponent:@"ScreenReader.framework"];

      v13 = 0;
      v9 = [MEMORY[0x277CCAA00] defaultManager];
      LODWORD(v6) = [v9 fileExistsAtPath:v8 isDirectory:&v13];

      if (v6)
      {
        v10 = [a1 bundleWithPath:v8];
        v11 = _SCRFrameworkBundle;
        _SCRFrameworkBundle = v10;
      }

      v2 = _SCRFrameworkBundle;
      if (!_SCRFrameworkBundle)
      {
        [MEMORY[0x277CBEAD8] raise:@"SCRCBundleExtras" format:@"Unable to locate ScreenReader bundle"];
        v2 = _SCRFrameworkBundle;
      }
    }
  }

  return v2;
}

+ (id)localizedScreenReaderStringForKey:()SCRCBundleExtras table:
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 screenReaderFrameworkBundle];
  v9 = [v8 localizedStringForKey:v7 value:0 table:v6];

  return v9;
}

+ (id)preferredLocalizationsForLocale:()SCRCBundleExtras
{
  v3 = a3;
  if (preferredLocalizationsForLocale__onceToken != -1)
  {
    +[NSBundle(SCRCBundleExtras) preferredLocalizationsForLocale:];
  }

  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy_;
  v15 = __Block_byref_object_dispose_;
  v16 = 0;
  v4 = preferredLocalizationsForLocale__preferredLocQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __62__NSBundle_SCRCBundleExtras__preferredLocalizationsForLocale___block_invoke_19;
  v8[3] = &unk_279B71408;
  v9 = v3;
  v10 = &v11;
  v5 = v3;
  dispatch_barrier_sync(v4, v8);
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

+ (id)localeForString:()SCRCBundleExtras
{
  v3 = a3;
  v4 = [MEMORY[0x277CCA8D8] preferredLocalizationsForLocale:v3];
  if ([v4 count])
  {
    v5 = [v4 objectAtIndex:0];
    if ([v5 isEqualToString:@"en"])
    {
      v6 = [@"English" length];
      if ([v3 compare:@"en" options:1])
      {
        if (([v3 length] < 2 || objc_msgSend(v3, "compare:options:range:", @"en-", 1, 0, 3) && objc_msgSend(v3, "compare:options:range:", @"en_", 1, 0, 3)) && (objc_msgSend(v3, "length") < v6 || objc_msgSend(v3, "compare:options:range:", @"English", 1, 0, v6)))
        {

          v5 = 0;
        }
      }
    }
  }

  else
  {
    v5 = [MEMORY[0x277CBEAF8] canonicalLocaleIdentifierFromString:v3];
  }

  if ([v5 length])
  {
    v7 = [objc_alloc(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier:v5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)bundleLocale
{
  v1 = [a1 preferredLocalizations];
  if ([v1 count])
  {
    v2 = [v1 objectAtIndex:0];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)localizedStringForKey:()SCRCBundleExtras table:locale:
{
  v44 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [MEMORY[0x277CBEAF8] canonicalLocaleIdentifierFromString:a5];
  if (!v10)
  {
    goto LABEL_31;
  }

  v11 = [a1 localizations];
  v32 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v12 = v11;
  v13 = [v12 countByEnumeratingWithState:&v38 objects:v43 count:16];
  if (v13)
  {
    v14 = v12;
    v31 = a1;
    v15 = *v39;
LABEL_4:
    v16 = 0;
    while (1)
    {
      if (*v39 != v15)
      {
        objc_enumerationMutation(v14);
      }

      v17 = *(*(&v38 + 1) + 8 * v16);
      if ([v17 isEqualToString:v10])
      {
        break;
      }

      v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_", v10];
      v19 = [v17 hasPrefix:v18];

      if (v19)
      {
        [v32 addObject:v17];
      }

      if (v13 == ++v16)
      {
        v13 = [v14 countByEnumeratingWithState:&v38 objects:v43 count:16];
        if (v13)
        {
          goto LABEL_4;
        }

        v12 = v14;
        v20 = v14;
        a1 = v31;
        goto LABEL_17;
      }
    }

    v13 = v17;
    v12 = v14;

    if (!v13)
    {
      a1 = v31;
      goto LABEL_19;
    }

    a1 = v31;
    v20 = [v31 localizedStringForKey:v8 value:@"__NULL__" table:v9 localization:v13];
    if ([v20 isEqualToString:@"__NULL__"])
    {
      goto LABEL_17;
    }

    goto LABEL_32;
  }

  v20 = v12;
LABEL_17:
  v30 = v20;

LABEL_19:
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v21 = v32;
  v22 = [v21 countByEnumeratingWithState:&v34 objects:v42 count:16];
  if (v22)
  {
    v23 = v22;
    v33 = v12;
    v24 = *v35;
    while (2)
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v35 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = v9;
        v27 = [a1 localizedStringForKey:v8 value:@"__NULL__" table:v9 localization:*(*(&v34 + 1) + 8 * i)];
        if (![v27 isEqualToString:@"__NULL__"])
        {
          v28 = 0;
          v20 = v27;
          v9 = v26;
          v12 = v33;
          goto LABEL_30;
        }

        v9 = v26;
      }

      v23 = [v21 countByEnumeratingWithState:&v34 objects:v42 count:16];
      if (v23)
      {
        continue;
      }

      break;
    }

    v28 = 1;
    v12 = v33;
    v20 = v30;
  }

  else
  {
    v28 = 1;
    v20 = v30;
  }

LABEL_30:

  if (v28)
  {
LABEL_31:
    v20 = [a1 localizedStringForKey:v8 value:v8 table:v9];
  }

LABEL_32:

  return v20;
}

@end