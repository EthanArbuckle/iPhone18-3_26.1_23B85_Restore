@interface NSLocale(Display)
- (id)wf_displayName;
- (id)wf_subname;
@end

@implementation NSLocale(Display)

- (id)wf_subname
{
  languageCode = [self languageCode];
  if ([languageCode length])
  {
  }

  else
  {
    countryCode = [self countryCode];
    v4 = [countryCode length];

    if (!v4)
    {
      v9 = 0;
      goto LABEL_16;
    }
  }

  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  languageCode2 = [self languageCode];
  v7 = [&unk_1F4A9B6F8 containsObject:languageCode2];

  if (!v7)
  {
    v9 = 0;
    goto LABEL_13;
  }

  countryCode2 = [self countryCode];
  v9 = [currentLocale localizedStringForRegion:countryCode2 context:3 short:1];

  languageIdentifier = [self languageIdentifier];
  if (([languageIdentifier hasPrefix:@"zh-Hant"] & 1) != 0 || objc_msgSend(languageIdentifier, "hasPrefix:", @"zh-TW"))
  {
    currentDevice = [MEMORY[0x1E69E0A90] currentDevice];
    isChineseRegionDevice = [currentDevice isChineseRegionDevice];

    if (isChineseRegionDevice)
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
    if (([languageIdentifier hasPrefix:@"zh-Hans"] & 1) == 0 && !objc_msgSend(languageIdentifier, "hasPrefix:", @"zh-CN"))
    {
      goto LABEL_11;
    }

    v13 = @"Mandarin - China mainland";
  }

  v14 = WFLocalizedString(v13);

  v9 = v14;
LABEL_11:

LABEL_13:
  languageCode3 = [self languageCode];
  v16 = [&unk_1F4A9B710 containsObject:languageCode3];

  if (v16)
  {
    countryCode3 = [self countryCode];
    v18 = [currentLocale localizedStringForRegion:countryCode3 context:3 short:0];

    v9 = v18;
  }

LABEL_16:

  return v9;
}

- (id)wf_displayName
{
  languageCode = [self languageCode];
  capitalizedString = [languageCode length];

  if (!capitalizedString)
  {
    goto LABEL_9;
  }

  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  languageCode2 = [self languageCode];
  v6 = [currentLocale localizedStringForLanguageCode:languageCode2];
  capitalizedString = [v6 capitalizedString];

  wf_subname = [self wf_subname];
  languageIdentifier = [self languageIdentifier];
  if ([languageIdentifier hasPrefix:@"zh-Hans"])
  {

LABEL_5:
    v11 = WFLocalizedString(@"Chinese");

    capitalizedString = v11;
    goto LABEL_6;
  }

  languageIdentifier2 = [self languageIdentifier];
  v10 = [languageIdentifier2 hasPrefix:@"zh-Hant"];

  if (v10)
  {
    goto LABEL_5;
  }

LABEL_6:
  if ([wf_subname length])
  {
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ (%@)", capitalizedString, wf_subname];

    capitalizedString = v12;
  }

LABEL_9:

  return capitalizedString;
}

@end