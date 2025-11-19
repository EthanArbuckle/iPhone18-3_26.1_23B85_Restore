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
  v3 = [a1 mediaStorage];
  v4 = [v3 countByEnumeratingWithState:&v22 objects:v26 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v22 + 1) + 8 * i);
        v9 = [MEMORY[0x277D75C80] currentTraitCollection];
        if ([v9 userInterfaceStyle] == 2)
        {
          v10 = [v8 displayColorDark];

          if (v10)
          {
            v11 = MEMORY[0x277D75348];
            v12 = [v8 displayColorDark];
            goto LABEL_11;
          }
        }

        else
        {
        }

        v11 = MEMORY[0x277D75348];
        v12 = [v8 displayColor];
LABEL_11:
        v13 = v12;
        v14 = [v11 icqui_colorWithHexString:v12];

        v15 = objc_alloc(MEMORY[0x277CECB00]);
        v16 = [v8 mediaType];
        v17 = [v8 storageUsed];
        [v17 floatValue];
        v18 = [v15 initWithMediaType:v16 representativeColor:v14 bytesUsed:?];

        v19 = [v8 displayLabel];
        [v18 setDisplayLabel:v19];

        [v2 addObject:v18];
      }

      v5 = [v3 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v5);
  }

  v20 = [v2 copy];

  return v20;
}

@end