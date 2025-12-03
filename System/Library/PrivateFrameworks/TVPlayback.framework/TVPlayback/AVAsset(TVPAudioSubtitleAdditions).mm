@interface AVAsset(TVPAudioSubtitleAdditions)
- (id)tvp_sortedAudioAVMediaSelectionOptions;
- (id)tvp_sortedSubtitleAVMediaSelectionOptions;
@end

@implementation AVAsset(TVPAudioSubtitleAdditions)

- (id)tvp_sortedAudioAVMediaSelectionOptions
{
  v8 = 0;
  v2 = [self statusOfValueForKey:@"availableMediaCharacteristicsWithMediaSelectionOptions" error:&v8];
  v3 = v8;
  if (v2 == 2 || v2 == 3 && [MEMORY[0x277CE63D8] tvp_shouldIgnoreLoadFailureForKey:@"availableMediaCharacteristicsWithMediaSelectionOptions" error:v3 logObject:0])
  {
    v4 = [self tvp_mediaSelectionGroupForMediaCharacteristic:*MEMORY[0x277CE5DE0]];
    options = [v4 options];
    v6 = [objc_opt_class() tvp_groupedAudioAVMediaSelectionOptionsFromOptions:options];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)tvp_sortedSubtitleAVMediaSelectionOptions
{
  v48 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v46 = 0;
  v3 = [self statusOfValueForKey:@"availableMediaCharacteristicsWithMediaSelectionOptions" error:&v46];
  v4 = v46;
  if (v3 == 2 || v3 == 3 && [MEMORY[0x277CE63D8] tvp_shouldIgnoreLoadFailureForKey:@"availableMediaCharacteristicsWithMediaSelectionOptions" error:v4 logObject:0])
  {
    v30 = v4;
    v31 = v2;
    v5 = [self tvp_mediaSelectionGroupForMediaCharacteristic:*MEMORY[0x277CE5E30]];
    options = [v5 options];

    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
    preferredLanguages = [MEMORY[0x277CBEAF8] preferredLanguages];
    firstObject = [preferredLanguages firstObject];

    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v10 = options;
    v11 = [v10 countByEnumeratingWithState:&v42 objects:v47 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v43;
      v14 = *MEMORY[0x277CE5DF8];
      v15 = *MEMORY[0x277CE5E18];
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v43 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v17 = *(*(&v42 + 1) + 8 * i);
          if (![v17 hasMediaCharacteristic:v14] || objc_msgSend(v17, "hasMediaCharacteristic:", v15))
          {
            [v7 addObject:v17];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v42 objects:v47 count:16];
      }

      while (v12);
    }

    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __79__AVAsset_TVPAudioSubtitleAdditions__tvp_sortedSubtitleAVMediaSelectionOptions__block_invoke;
    v39[3] = &unk_279D7CF58;
    v40 = firstObject;
    v41 = currentLocale;
    v18 = currentLocale;
    v19 = firstObject;
    v20 = [v7 sortedArrayUsingComparator:v39];
    v21 = [v20 count];
    array = [MEMORY[0x277CBEB18] array];
    array2 = [MEMORY[0x277CBEB18] array];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __79__AVAsset_TVPAudioSubtitleAdditions__tvp_sortedSubtitleAVMediaSelectionOptions__block_invoke_2;
    v32[3] = &unk_279D7CF80;
    v33 = array;
    v34 = array2;
    v38 = v21;
    v35 = v20;
    v2 = v31;
    v36 = v31;
    selfCopy = self;
    v24 = v20;
    v25 = array2;
    v26 = array;
    [v24 enumerateObjectsUsingBlock:v32];

    v4 = v30;
  }

  v27 = *MEMORY[0x277D85DE8];

  return v2;
}

@end