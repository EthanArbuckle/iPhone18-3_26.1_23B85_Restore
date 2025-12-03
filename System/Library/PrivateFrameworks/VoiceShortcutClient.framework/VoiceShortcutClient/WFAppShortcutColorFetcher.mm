@interface WFAppShortcutColorFetcher
+ (NSCache)colorCache;
- (id)colorsForBundleIdentifier:(id)identifier error:(id *)error;
- (id)extractColorsForIconDictionary:(id)dictionary alternateIconDictionary:(id)iconDictionary bundle:(id)bundle colorDefaults:(id)defaults;
- (id)extractTintColorForIconDictionary:(id)dictionary alternateIconDictionary:(id)iconDictionary bundle:(id)bundle;
- (id)finishWithComplementingColors:(id)colors tintColor:(id)color bundleIdentifier:(id)identifier error:(id *)error;
@end

@implementation WFAppShortcutColorFetcher

+ (NSCache)colorCache
{
  if (colorCache_onceToken != -1)
  {
    dispatch_once(&colorCache_onceToken, &__block_literal_global_18175);
  }

  v3 = colorCache_colorCache;

  return v3;
}

uint64_t __39__WFAppShortcutColorFetcher_colorCache__block_invoke()
{
  colorCache_colorCache = objc_alloc_init(MEMORY[0x1E695DEE0]);

  return MEMORY[0x1EEE66BB8]();
}

- (id)extractColorsForIconDictionary:(id)dictionary alternateIconDictionary:(id)iconDictionary bundle:(id)bundle colorDefaults:(id)defaults
{
  v50 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  iconDictionaryCopy = iconDictionary;
  bundleCopy = bundle;
  defaultsCopy = defaults;
  if (!iconDictionaryCopy)
  {
    v16 = MEMORY[0x1E695E0F0];
    goto LABEL_31;
  }

  v13 = [iconDictionaryCopy objectForKeyedSubscript:@"NSAppIconComplementingColorNames"];
  if (!v13)
  {
    v14 = 0;
LABEL_11:
    v16 = MEMORY[0x1E695E0F0];
LABEL_29:

    goto LABEL_30;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v16 = MEMORY[0x1E695E0F0];
    v14 = v13;
    v13 = 0;
    goto LABEL_29;
  }

  if ([v13 count])
  {
    if ([v13 count] == 1)
    {
      v14 = [v13 objectAtIndexedSubscript:0];
      if (v14)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v15 = [WFColor colorNamed:v14 inBundle:bundleCopy];
          v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:{v15, 0}];
LABEL_28:

          goto LABEL_29;
        }
      }

      goto LABEL_11;
    }

    if ([v13 count] == 2)
    {
      v17 = [v13 objectAtIndexedSubscript:0];
      if (v17)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v18 = v17;
        }

        else
        {
          v18 = 0;
        }
      }

      else
      {
        v18 = 0;
      }

      v14 = v18;

      v19 = [v13 objectAtIndexedSubscript:1];
      if (v19)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v20 = v19;
        }

        else
        {
          v20 = 0;
        }
      }

      else
      {
        v20 = 0;
      }

      v15 = v20;

      v16 = MEMORY[0x1E695E0F0];
      if (v14 && v15)
      {
        v21 = [WFColor colorNamed:v14 inBundle:bundleCopy];
        v22 = [WFColor colorNamed:v15 inBundle:bundleCopy];
        v23 = v21;
        v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:{v21, v22, 0}];
      }

      goto LABEL_28;
    }
  }

  v16 = MEMORY[0x1E695E0F0];
LABEL_30:

LABEL_31:
  if ([v16 count])
  {
    goto LABEL_44;
  }

  v24 = [dictionaryCopy objectForKeyedSubscript:@"NSAppIconComplementingColorNames"];
  if (v24 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    if ([v24 count])
    {
      if ([v24 count] == 1)
      {
        v25 = [v24 objectAtIndexedSubscript:0];
        if (v25)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v26 = [WFColor colorNamed:v25 inBundle:bundleCopy];
            v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:{v26, 0}];

            v16 = v27;
          }
        }
      }

      else
      {
        if ([v24 count] < 2)
        {
          goto LABEL_43;
        }

        v37 = [v24 objectAtIndexedSubscript:0];
        if (v37)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v38 = v37;
          }

          else
          {
            v38 = 0;
          }
        }

        else
        {
          v38 = 0;
        }

        v25 = v38;

        v39 = [v24 objectAtIndexedSubscript:1];
        if (v39)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v40 = v39;
          }

          else
          {
            v40 = 0;
          }
        }

        else
        {
          v40 = 0;
        }

        v41 = v40;

        if (v25 && v41)
        {
          v44 = [WFColor colorNamed:v25 inBundle:bundleCopy];
          v42 = [WFColor colorNamed:v41 inBundle:bundleCopy];
          v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:{v44, v42, 0}];

          v16 = v43;
        }
      }

      goto LABEL_42;
    }
  }

  else
  {

    v24 = 0;
  }

  if (defaultsCopy)
  {
    v25 = v16;
    v16 = defaultsCopy;
LABEL_42:
  }

LABEL_43:

LABEL_44:
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v28 = v16;
  v29 = [v28 countByEnumeratingWithState:&v45 objects:v49 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v46;
    while (2)
    {
      for (i = 0; i != v30; ++i)
      {
        if (*v46 != v31)
        {
          objc_enumerationMutation(v28);
        }

        [*(*(&v45 + 1) + 8 * i) alpha];
        if (v33 == 0.0)
        {

          v34 = MEMORY[0x1E695E0F0];
          goto LABEL_54;
        }
      }

      v30 = [v28 countByEnumeratingWithState:&v45 objects:v49 count:16];
      if (v30)
      {
        continue;
      }

      break;
    }
  }

  v34 = v28;
LABEL_54:

  v35 = *MEMORY[0x1E69E9840];

  return v34;
}

- (id)extractTintColorForIconDictionary:(id)dictionary alternateIconDictionary:(id)iconDictionary bundle:(id)bundle
{
  dictionaryCopy = dictionary;
  iconDictionaryCopy = iconDictionary;
  bundleCopy = bundle;
  if (iconDictionaryCopy)
  {
    v10 = [iconDictionaryCopy objectForKeyedSubscript:@"NSAppIconActionTintColorName"];
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v11 = [WFColor colorNamed:v10 inBundle:bundleCopy];

      if (v11)
      {
        goto LABEL_12;
      }
    }

    else
    {
    }
  }

  v12 = [dictionaryCopy objectForKeyedSubscript:@"NSAppIconActionTintColorName"];
  if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v11 = [WFColor colorNamed:v12 inBundle:bundleCopy];
  }

  else
  {
    v11 = 0;
  }

LABEL_12:

  return v11;
}

- (id)finishWithComplementingColors:(id)colors tintColor:(id)color bundleIdentifier:(id)identifier error:(id *)error
{
  v28[6] = *MEMORY[0x1E69E9840];
  colorsCopy = colors;
  colorCopy = color;
  identifierCopy = identifier;
  if ([colorsCopy count])
  {
    if (colorCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v16 = colorDefaults();
    v17 = [v16 objectForKeyedSubscript:identifierCopy];

    colorsCopy = v17;
    if (colorCopy)
    {
      goto LABEL_3;
    }
  }

  v27[0] = @"com.apple.camera";
  v18 = [WFColor colorWithRGBAValue:757935871];
  v28[0] = v18;
  v27[1] = @"com.apple.mobilephone";
  v19 = [WFColor colorWithSystemColor:3];
  v28[1] = v19;
  v27[2] = @"com.apple.facetime";
  v20 = [WFColor colorWithSystemColor:3];
  v28[2] = v20;
  v27[3] = @"com.apple.VoiceMemos";
  v21 = [WFColor colorWithRGBAValue:3947773439];
  v28[3] = v21;
  v27[4] = @"com.apple.mobiletimer";
  v22 = [WFColor colorWithRGBAValue:4288613119];
  v28[4] = v22;
  v27[5] = @"com.apple.DocumentsApp";
  v23 = [WFColor colorWithSystemColor:4];
  v28[5] = v23;
  v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:6];

  colorCopy = [v24 objectForKeyedSubscript:identifierCopy];

LABEL_3:
  [colorCopy alpha];
  if (v12 == 0.0)
  {

    colorCopy = 0;
  }

  v13 = [colorsCopy count];
  if (colorCopy || v13)
  {
    v14 = [[WFAppShortcutColors alloc] initWithComplementingColors:colorsCopy tintColor:colorCopy];
    v15 = +[WFAppShortcutColorFetcher colorCache];
    [v15 setObject:v14 forKey:identifierCopy];
  }

  else if (error)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:@"WFAppShortcutColorFetcherErrorDomain" code:3 userInfo:0];
    *error = v14 = 0;
  }

  else
  {
    v14 = 0;
  }

  v25 = *MEMORY[0x1E69E9840];

  return v14;
}

- (id)colorsForBundleIdentifier:(id)identifier error:(id *)error
{
  v39 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v7 = +[WFAppShortcutColorFetcher colorCache];
  v8 = [v7 objectForKey:identifierCopy];

  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v10 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:identifierCopy allowPlaceholder:0 error:error];
    v11 = v10;
    if (v10)
    {
      v12 = MEMORY[0x1E696AAE8];
      v13 = [v10 URL];
      v14 = [v12 bundleWithURL:v13];

      if (v14)
      {
        infoDictionary = [v11 infoDictionary];
        v16 = [infoDictionary objectForKey:@"CFBundleIcons" ofClass:objc_opt_class()];
        if (v16 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v17 = [v16 objectForKeyedSubscript:@"CFBundlePrimaryIcon"];
          if (v17 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v18 = [v16 objectForKeyedSubscript:@"CFBundleAlternateIcons"];
            if (v18)
            {
              v33 = v18;
              objc_opt_class();
              v19 = v33;
              if (objc_opt_isKindOfClass())
              {
                v20 = v33;
              }

              else
              {
                v20 = 0;
              }
            }

            else
            {
              v20 = 0;
              v19 = 0;
            }

            v31 = v20;

            alternateIconName = [v11 alternateIconName];

            v32 = v17;
            v34 = 0;
            if (alternateIconName && v31)
            {
              alternateIconName2 = [v11 alternateIconName];
              v34 = [v31 objectForKeyedSubscript:alternateIconName2];
            }

            v25 = colorDefaults();
            v30 = [v25 objectForKeyedSubscript:identifierCopy];

            v26 = [(WFAppShortcutColorFetcher *)self extractColorsForIconDictionary:v17 alternateIconDictionary:v34 bundle:v14 colorDefaults:v30];
            v27 = [(WFAppShortcutColorFetcher *)self extractTintColorForIconDictionary:v32 alternateIconDictionary:v34 bundle:v14];
            v9 = [(WFAppShortcutColorFetcher *)self finishWithComplementingColors:v26 tintColor:v27 bundleIdentifier:identifierCopy error:error];
          }

          else
          {

            v9 = [(WFAppShortcutColorFetcher *)self finishWithComplementingColors:0 tintColor:0 bundleIdentifier:identifierCopy error:error];
          }
        }

        else
        {

          v9 = [(WFAppShortcutColorFetcher *)self finishWithComplementingColors:0 tintColor:0 bundleIdentifier:identifierCopy error:error];
        }
      }

      else
      {
        v22 = getWFGeneralLogObject();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v36 = "[WFAppShortcutColorFetcher colorsForBundleIdentifier:error:]";
          v37 = 2112;
          v38 = identifierCopy;
          _os_log_impl(&dword_1B1DE3000, v22, OS_LOG_TYPE_DEFAULT, "%s Unable to grab bundle for %@, returning defaults if available", buf, 0x16u);
        }

        v9 = [(WFAppShortcutColorFetcher *)self finishWithComplementingColors:0 tintColor:0 bundleIdentifier:identifierCopy error:error];
      }
    }

    else
    {
      v21 = getWFGeneralLogObject();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v36 = "[WFAppShortcutColorFetcher colorsForBundleIdentifier:error:]";
        v37 = 2112;
        v38 = identifierCopy;
        _os_log_impl(&dword_1B1DE3000, v21, OS_LOG_TYPE_DEFAULT, "%s Unable to grab record for %@, returning defaults if available", buf, 0x16u);
      }

      v9 = [(WFAppShortcutColorFetcher *)self finishWithComplementingColors:0 tintColor:0 bundleIdentifier:identifierCopy error:error];
    }
  }

  v28 = *MEMORY[0x1E69E9840];

  return v9;
}

@end