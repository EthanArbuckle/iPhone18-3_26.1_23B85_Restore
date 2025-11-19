@interface NSBundle(SUICLocalization)
- (id)suic_localizedStringForKey:()SUICLocalization value:table:;
@end

@implementation NSBundle(SUICLocalization)

- (id)suic_localizedStringForKey:()SUICLocalization value:table:
{
  v39 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (![(__CFString *)v10 length])
  {

    v10 = @"Localizable";
  }

  if (__currentLanguageCode)
  {
    v11 = __stringTables;
    if (!__stringTables)
    {
      v12 = [MEMORY[0x1E695DF90] dictionary];
      v13 = __stringTables;
      __stringTables = v12;

      v11 = __stringTables;
    }

    v14 = [a1 bundleIdentifier];
    v15 = [v11 objectForKey:v14];

    if (v15 || ([MEMORY[0x1E695DF90] dictionary], v15 = objc_claimAutoreleasedReturnValue(), v16 = __stringTables, objc_msgSend(a1, "bundleIdentifier"), v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "setObject:forKey:", v15, v17), v17, v15))
    {
      v18 = [v15 objectForKey:v10];
      if (v18)
      {
LABEL_19:
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v28 = [v18 objectForKey:v8];

          if (v28)
          {
            goto LABEL_28;
          }

          goto LABEL_23;
        }
      }

      else
      {
        v31 = v15;
        v32 = v9;
        v33 = v8;
        v19 = [a1 localizations];
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        v37 = 0u;
        v20 = CFBundleCopyLocalizationsForPreferences(v19, [MEMORY[0x1E695DEC8] arrayWithObject:__currentLanguageCode]);
        v21 = [(__CFArray *)v20 countByEnumeratingWithState:&v34 objects:v38 count:16];
        if (v21)
        {
          v22 = v21;
          v23 = *v35;
          while (2)
          {
            for (i = 0; i != v22; ++i)
            {
              if (*v35 != v23)
              {
                objc_enumerationMutation(v20);
              }

              v25 = [a1 URLForResource:v10 withExtension:@"strings" subdirectory:0 localization:*(*(&v34 + 1) + 8 * i)];
              v26 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:v25];
              if (v26)
              {
                v18 = v26;
                v15 = v31;
                [v31 setObject:v26 forKey:v10];

                v9 = v32;
                v8 = v33;
                goto LABEL_19;
              }
            }

            v22 = [(__CFArray *)v20 countByEnumeratingWithState:&v34 objects:v38 count:16];
            if (v22)
            {
              continue;
            }

            break;
          }
        }

        v27 = [MEMORY[0x1E695DFB0] null];
        v15 = v31;
        [v31 setObject:v27 forKey:v10];

        v18 = 0;
        v9 = v32;
        v8 = v33;
      }
    }
  }

LABEL_23:
  v29 = v8;
  if (v9)
  {
    if ([v9 length])
    {
      v29 = v9;
    }

    else
    {
      v29 = v8;
    }
  }

  v28 = v29;
LABEL_28:

  return v28;
}

@end