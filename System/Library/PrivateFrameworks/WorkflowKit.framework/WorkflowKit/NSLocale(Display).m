@interface NSLocale(Display)
- (id)wf_displayName;
- (id)wf_subname;
@end

@implementation NSLocale(Display)

- (id)wf_subname
{
  v2 = [a1 languageCode];
  if ([v2 length])
  {
  }

  else
  {
    v3 = [a1 countryCode];
    v4 = [v3 length];

    if (!v4)
    {
      v9 = 0;
      goto LABEL_16;
    }
  }

  v5 = [MEMORY[0x1E695DF58] currentLocale];
  v6 = [a1 languageCode];
  v7 = [&unk_1F4A9B6F8 containsObject:v6];

  if (!v7)
  {
    v9 = 0;
    goto LABEL_13;
  }

  v8 = [a1 countryCode];
  v9 = [v5 localizedStringForRegion:v8 context:3 short:1];

  v10 = [a1 languageIdentifier];
  if (([v10 hasPrefix:@"zh-Hant"] & 1) != 0 || objc_msgSend(v10, "hasPrefix:", @"zh-TW"))
  {
    v11 = [MEMORY[0x1E69E0A90] currentDevice];
    v12 = [v11 isChineseRegionDevice];

    if (v12)
    {
      v13 = @"Mandarin - Taiwan (China)";
    }

    else
    {
      v13 = @"Mandarin - Taiwan";
    }
  }

  else
  {
    if (([v10 hasPrefix:@"zh-Hans"] & 1) == 0 && !objc_msgSend(v10, "hasPrefix:", @"zh-CN"))
    {
      goto LABEL_11;
    }

    v13 = @"Mandarin - China mainland";
  }

  v14 = WFLocalizedString(v13);

  v9 = v14;
LABEL_11:

LABEL_13:
  v15 = [a1 languageCode];
  v16 = [&unk_1F4A9B710 containsObject:v15];

  if (v16)
  {
    v17 = [a1 countryCode];
    v18 = [v5 localizedStringForRegion:v17 context:3 short:0];

    v9 = v18;
  }

LABEL_16:

  return v9;
}

- (id)wf_displayName
{
  v2 = [a1 languageCode];
  v3 = [v2 length];

  if (!v3)
  {
    goto LABEL_9;
  }

  v4 = [MEMORY[0x1E695DF58] currentLocale];
  v5 = [a1 languageCode];
  v6 = [v4 localizedStringForLanguageCode:v5];
  v3 = [v6 capitalizedString];

  v7 = [a1 wf_subname];
  v8 = [a1 languageIdentifier];
  if ([v8 hasPrefix:@"zh-Hans"])
  {

LABEL_5:
    v11 = WFLocalizedString(@"Chinese");

    v3 = v11;
    goto LABEL_6;
  }

  v9 = [a1 languageIdentifier];
  v10 = [v9 hasPrefix:@"zh-Hant"];

  if (v10)
  {
    goto LABEL_5;
  }

LABEL_6:
  if ([v7 length])
  {
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ (%@)", v3, v7];

    v3 = v12;
  }

LABEL_9:

  return v3;
}

@end