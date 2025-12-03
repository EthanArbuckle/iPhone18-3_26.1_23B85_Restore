@interface ICQCloudStorageSummary(ICQUI)
- (id)icqui_AAUIiCloudMediaUsageInfo;
@end

@implementation ICQCloudStorageSummary(ICQUI)

- (id)icqui_AAUIiCloudMediaUsageInfo
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  mediaStorage = [self mediaStorage];
  v4 = [mediaStorage countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v23;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v23 != v6)
        {
          objc_enumerationMutation(mediaStorage);
        }

        v8 = *(*(&v22 + 1) + 8 * i);
        currentTraitCollection = [MEMORY[0x277D75C80] currentTraitCollection];
        if ([currentTraitCollection userInterfaceStyle] == 2)
        {
          displayColorDark = [v8 displayColorDark];

          if (displayColorDark)
          {
            v11 = MEMORY[0x277D75348];
            displayColorDark2 = [v8 displayColorDark];
            goto LABEL_11;
          }
        }

        else
        {
        }

        v11 = MEMORY[0x277D75348];
        displayColorDark2 = [v8 displayColor];
LABEL_11:
        v13 = displayColorDark2;
        v14 = [v11 icqui_colorWithHexString:displayColorDark2];

        v15 = objc_alloc(MEMORY[0x277CECB00]);
        mediaType = [v8 mediaType];
        storageUsed = [v8 storageUsed];
        [storageUsed floatValue];
        v18 = [v15 initWithMediaType:mediaType representativeColor:v14 bytesUsed:?];

        displayLabel = [v8 displayLabel];
        [v18 setDisplayLabel:displayLabel];

        [v2 addObject:v18];
      }

      v5 = [mediaStorage countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v5);
  }

  v20 = [v2 copy];

  return v20;
}

@end