@interface CKRecord(BRCContainerMetadataAdditions)
+ (id)brc_containerMetadataRecordWithContainer:()BRCContainerMetadataAdditions;
- (id)brc_containerMetadataIconNames;
- (id)brc_containerMetadataIconPaths;
- (id)brc_containerMetadataPropertiesData;
@end

@implementation CKRecord(BRCContainerMetadataAdditions)

+ (id)brc_containerMetadataRecordWithContainer:()BRCContainerMetadataAdditions
{
  v3 = a3;
  containerMetadata = [v3 containerMetadata];
  if (containerMetadata)
  {
    brc_containerMetadataZoneID = [MEMORY[0x277CBC5F8] brc_containerMetadataZoneID];
    v6 = objc_alloc(MEMORY[0x277CBC5D0]);
    appLibraryID = [v3 appLibraryID];
    v8 = [v6 initWithRecordName:appLibraryID zoneID:brc_containerMetadataZoneID];

    v9 = [objc_alloc(MEMORY[0x277CBC5A0]) initWithRecordType:@"AppContainer" recordID:v8];
    copyDataRepresentation = [containerMetadata copyDataRepresentation];
    if (!copyDataRepresentation)
    {
      +[CKRecord(BRCContainerMetadataAdditions) brc_containerMetadataRecordWithContainer:];
    }

    [v9 setObject:copyDataRepresentation forKeyedSubscript:@"infoPlist"];
    containerMetadata2 = [v3 containerMetadata];
    iconURLs = [containerMetadata2 iconURLs];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __84__CKRecord_BRCContainerMetadataAdditions__brc_containerMetadataRecordWithContainer___block_invoke;
    v17[3] = &unk_278501918;
    v13 = v9;
    v18 = v13;
    [iconURLs enumerateKeysAndObjectsUsingBlock:v17];

    containerMetadataEtag = [v3 containerMetadataEtag];

    if (containerMetadataEtag)
    {
      containerMetadataEtag2 = [v3 containerMetadataEtag];
      [v13 setEtag:containerMetadataEtag2];

      [v13 setKnownToServer:1];
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)brc_containerMetadataPropertiesData
{
  v1 = [self objectForKeyedSubscript:@"infoPlist"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)brc_containerMetadataIconNames
{
  v17 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = BRContainerIconCKAssetKeys();
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [self objectForKeyedSubscript:{*(*(&v12 + 1) + 8 * i), v12}];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = BRContainerIconNameForCKAssetKey();
          [array addObject:v9];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v10 = *MEMORY[0x277D85DE8];

  return array;
}

- (id)brc_containerMetadataIconPaths
{
  v19 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = BRContainerIconCKAssetKeys();
  v3 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v15;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [self objectForKeyedSubscript:*(*(&v14 + 1) + 8 * i)];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          fileURL = [v7 fileURL];
          if ([fileURL isFileURL])
          {
            path = [fileURL path];
            v10 = BRContainerIconNameForCKAssetKey();
            [dictionary setObject:path forKeyedSubscript:v10];
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v4);
  }

  v11 = *MEMORY[0x277D85DE8];

  return dictionary;
}

+ (void)brc_containerMetadataRecordWithContainer:()BRCContainerMetadataAdditions .cold.1()
{
  v9 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_3_2();
    _os_log_fault_impl(v4, v5, v6, v7, v8, 0xCu);
  }

  v3 = *MEMORY[0x277D85DE8];
}

@end