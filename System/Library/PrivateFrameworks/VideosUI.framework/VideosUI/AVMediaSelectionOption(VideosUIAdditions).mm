@interface AVMediaSelectionOption(VideosUIAdditions)
- (id)vui_localizedDisplayNameOverride;
@end

@implementation AVMediaSelectionOption(VideosUIAdditions)

- (id)vui_localizedDisplayNameOverride
{
  v34 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E6987FE0] identifierForKey:*MEMORY[0x1E69878A8] keySpace:*MEMORY[0x1E6987850]];
  v3 = MEMORY[0x1E6987FE0];
  commonMetadata = [self commonMetadata];
  v5 = [v3 metadataItemsFromArray:commonMetadata filteredByIdentifier:v2];

  if ([v5 count])
  {
    v6 = 0;
  }

  else
  {
    v25 = v5;
    v26 = v2;
    extendedLanguageTag = [self extendedLanguageTag];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v8 = +[VUIFeaturesConfiguration sharedInstance];
    nowPlayingConfig = [v8 nowPlayingConfig];
    mediaCharacteristicsToLocalize = [nowPlayingConfig mediaCharacteristicsToLocalize];

    obj = mediaCharacteristicsToLocalize;
    v11 = [mediaCharacteristicsToLocalize countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v11)
    {
      v12 = v11;
      v27 = 0;
      v13 = *v30;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v30 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v29 + 1) + 8 * i);
          if ([self hasMediaCharacteristic:v15])
          {
            v16 = v15;
            if ([extendedLanguageTag length])
            {
              v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v16, extendedLanguageTag];

              v16 = v17;
            }

            if ([v16 length])
            {
              v18 = +[VUIFeaturesConfiguration sharedInstance];
              nowPlayingConfig2 = [v18 nowPlayingConfig];
              mediaLocalizationKeyMapping = [nowPlayingConfig2 mediaLocalizationKeyMapping];
              v21 = [mediaLocalizationKeyMapping objectForKey:v16];

              if ([v21 length])
              {
                v22 = +[VUILocalizationManager sharedInstance];
                v23 = [v22 localizedStringForKey:v21];

                v27 = v23;
              }
            }
          }
        }

        v12 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v12);
    }

    else
    {
      v27 = 0;
    }

    v5 = v25;
    v2 = v26;
    v6 = v27;
  }

  return v6;
}

@end