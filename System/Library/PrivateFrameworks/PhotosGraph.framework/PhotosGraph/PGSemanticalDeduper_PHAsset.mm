@interface PGSemanticalDeduper_PHAsset
- (id)sceneprintByItemIdentifierWithItems:(id)items;
@end

@implementation PGSemanticalDeduper_PHAsset

- (id)sceneprintByItemIdentifierWithItems:(id)items
{
  v54[2] = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  if ([itemsCopy count])
  {
    v38 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(itemsCopy, "count")}];
    firstObject = [itemsCopy firstObject];
    photoLibrary = [firstObject photoLibrary];

    v36 = photoLibrary;
    librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];
    v7 = *MEMORY[0x277CD9B18];
    v54[0] = *MEMORY[0x277CD9AA8];
    v54[1] = v7;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v54 count:2];
    [librarySpecificFetchOptions setFetchPropertySets:v8];

    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v37 = itemsCopy;
    v10 = itemsCopy;
    v11 = [v10 countByEnumeratingWithState:&v44 objects:v53 count:16];
    if (v11)
    {
      v12 = v11;
      LOBYTE(isGuestAsset) = 0;
      v14 = *v45;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v45 != v14)
          {
            objc_enumerationMutation(v10);
          }

          v16 = *(*(&v44 + 1) + 8 * i);
          localIdentifier = [v16 localIdentifier];
          [v9 addObject:localIdentifier];

          if (isGuestAsset)
          {
            isGuestAsset = 1;
          }

          else
          {
            isGuestAsset = [v16 isGuestAsset];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v44 objects:v53 count:16];
      }

      while (v12);
    }

    else
    {
      isGuestAsset = 0;
    }

    [librarySpecificFetchOptions setIncludeGuestAssets:isGuestAsset];
    v35 = librarySpecificFetchOptions;
    v18 = [MEMORY[0x277CD97A8] fetchAssetsWithLocalIdentifiers:v9 options:librarySpecificFetchOptions];
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v19 = [v18 countByEnumeratingWithState:&v40 objects:v52 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v41;
      do
      {
        v22 = 0;
        do
        {
          if (*v41 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v40 + 1) + 8 * v22);
          sceneprintProperties = [v23 sceneprintProperties];
          sceneprint = [sceneprintProperties sceneprint];

          if (sceneprint)
          {
            v26 = MEMORY[0x277CCAAC8];
            v27 = objc_opt_class();
            v39 = 0;
            v28 = [v26 unarchivedObjectOfClass:v27 fromData:sceneprint error:&v39];
            v29 = v39;
            if (v28)
            {
              clsIdentifier = [v23 clsIdentifier];
              [v38 setObject:v28 forKeyedSubscript:clsIdentifier];
              goto LABEL_23;
            }

            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              clsIdentifier = [v23 uuid];
              *buf = 138412546;
              v49 = clsIdentifier;
              v50 = 2112;
              v51 = v29;
              _os_log_error_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Error unarchiving sceneprint for asset %@: %@", buf, 0x16u);
LABEL_23:
            }

            goto LABEL_28;
          }

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
          {
            uuid = [v23 uuid];
            *buf = 138412290;
            v49 = uuid;
            _os_log_debug_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Sceneprint unavailable for asset %@", buf, 0xCu);
          }

LABEL_28:

          ++v22;
        }

        while (v20 != v22);
        v32 = [v18 countByEnumeratingWithState:&v40 objects:v52 count:16];
        v20 = v32;
      }

      while (v32);
    }

    itemsCopy = v37;
  }

  else
  {
    v38 = MEMORY[0x277CBEC10];
  }

  v33 = *MEMORY[0x277D85DE8];

  return v38;
}

@end