@interface AVMediaSelectionOption(TVPAudioSubtitleAdditions)
- (id)tvp_languageCodeFromLocale;
- (id)tvp_localizedDisplayString;
- (uint64_t)tvp_isSDHSubtitle;
@end

@implementation AVMediaSelectionOption(TVPAudioSubtitleAdditions)

- (id)tvp_localizedDisplayString
{
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  v3 = MEMORY[0x277CE6520];
  commonMetadata = [self commonMetadata];
  v5 = [v3 metadataItemsFromArray:commonMetadata withKey:*MEMORY[0x277CE5F28] keySpace:*MEMORY[0x277CE5F98]];

  v6 = [MEMORY[0x277CE6520] metadataItemsFromArray:v5 withLocale:currentLocale];
  if ([v6 count])
  {
    displayName = [self displayNameWithLocale:currentLocale];
    if (displayName)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  localeIdentifier = [currentLocale localeIdentifier];
  v10 = [localeIdentifier rangeOfString:@"_"];
  v11 = [localeIdentifier rangeOfString:@"-"];
  if (v10 == 0x7FFFFFFFFFFFFFFFLL || v11 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (v10 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v13 = v11;
    }

    else
    {
      v13 = v10;
    }

    if (v10 == 0x7FFFFFFFFFFFFFFFLL && v11 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_27;
    }
  }

  else if (v10 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v10;
  }

  v15 = [localeIdentifier substringToIndex:v13];
  if (!v15)
  {
LABEL_27:
    displayName = 0;
    goto LABEL_30;
  }

  v16 = v15;
  v17 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:v15];
  v18 = [MEMORY[0x277CE6520] metadataItemsFromArray:v5 withLocale:v17];
  if ([v18 count])
  {
    displayName = [self displayNameWithLocale:v17];
  }

  else
  {
    displayName = 0;
  }

LABEL_30:
  if (!displayName)
  {
LABEL_3:
    displayName = [self displayName];
  }

LABEL_4:

  return displayName;
}

- (id)tvp_languageCodeFromLocale
{
  locale = [self locale];
  v3 = [locale objectForKey:*MEMORY[0x277CBE6C8]];

  mediaType = [self mediaType];
  v5 = [mediaType isEqualToString:*MEMORY[0x277CE5E58]];

  if (v5)
  {
    tvp_subtitleLanguageCode = @"en";
  }

  else
  {
    mediaType2 = [self mediaType];
    v8 = [mediaType2 isEqualToString:*MEMORY[0x277CE5E90]];

    if (!v8)
    {
      goto LABEL_6;
    }

    locale2 = [self locale];
    tvp_subtitleLanguageCode = [locale2 tvp_subtitleLanguageCode];

    v3 = locale2;
  }

  v3 = tvp_subtitleLanguageCode;
LABEL_6:

  return v3;
}

- (uint64_t)tvp_isSDHSubtitle
{
  mediaType = [self mediaType];
  if ([mediaType isEqualToString:*MEMORY[0x277CE5E90]])
  {
    if ([self hasMediaCharacteristic:*MEMORY[0x277CE5E00]])
    {
      v3 = 1;
    }

    else
    {
      v3 = [self hasMediaCharacteristic:*MEMORY[0x277CE5E38]];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end