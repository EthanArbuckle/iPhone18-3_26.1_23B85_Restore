@interface AVMediaSelectionOption(TVPAudioSubtitleAdditions)
- (id)tvp_languageCodeFromLocale;
- (id)tvp_localizedDisplayString;
- (uint64_t)tvp_isSDHSubtitle;
@end

@implementation AVMediaSelectionOption(TVPAudioSubtitleAdditions)

- (id)tvp_localizedDisplayString
{
  v2 = [MEMORY[0x277CBEAF8] currentLocale];
  v3 = MEMORY[0x277CE6520];
  v4 = [a1 commonMetadata];
  v5 = [v3 metadataItemsFromArray:v4 withKey:*MEMORY[0x277CE5F28] keySpace:*MEMORY[0x277CE5F98]];

  v6 = [MEMORY[0x277CE6520] metadataItemsFromArray:v5 withLocale:v2];
  if ([v6 count])
  {
    v7 = [a1 displayNameWithLocale:v2];
    if (v7)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v9 = [v2 localeIdentifier];
  v10 = [v9 rangeOfString:@"_"];
  v11 = [v9 rangeOfString:@"-"];
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

  v15 = [v9 substringToIndex:v13];
  if (!v15)
  {
LABEL_27:
    v7 = 0;
    goto LABEL_30;
  }

  v16 = v15;
  v17 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:v15];
  v18 = [MEMORY[0x277CE6520] metadataItemsFromArray:v5 withLocale:v17];
  if ([v18 count])
  {
    v7 = [a1 displayNameWithLocale:v17];
  }

  else
  {
    v7 = 0;
  }

LABEL_30:
  if (!v7)
  {
LABEL_3:
    v7 = [a1 displayName];
  }

LABEL_4:

  return v7;
}

- (id)tvp_languageCodeFromLocale
{
  v2 = [a1 locale];
  v3 = [v2 objectForKey:*MEMORY[0x277CBE6C8]];

  v4 = [a1 mediaType];
  v5 = [v4 isEqualToString:*MEMORY[0x277CE5E58]];

  if (v5)
  {
    v6 = @"en";
  }

  else
  {
    v7 = [a1 mediaType];
    v8 = [v7 isEqualToString:*MEMORY[0x277CE5E90]];

    if (!v8)
    {
      goto LABEL_6;
    }

    v9 = [a1 locale];
    v6 = [v9 tvp_subtitleLanguageCode];

    v3 = v9;
  }

  v3 = v6;
LABEL_6:

  return v3;
}

- (uint64_t)tvp_isSDHSubtitle
{
  v2 = [a1 mediaType];
  if ([v2 isEqualToString:*MEMORY[0x277CE5E90]])
  {
    if ([a1 hasMediaCharacteristic:*MEMORY[0x277CE5E00]])
    {
      v3 = 1;
    }

    else
    {
      v3 = [a1 hasMediaCharacteristic:*MEMORY[0x277CE5E38]];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end