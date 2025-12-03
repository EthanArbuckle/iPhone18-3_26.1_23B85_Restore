@interface SLCoreSpotlightUtilities
+ (id)CSQueryStringForAutodonatingChatsWithDecay:(BOOL)decay;
+ (id)CSQueryStringForSLHighlightsForContentType:(unsigned __int8)type forChatIdentifiers:(id)identifiers;
+ (id)CSSearchQueryContextForAutodonatingChats;
+ (id)CSSearchQueryContextForSLHighlightsForContentType:(unsigned __int8)type;
+ (id)fetchCSSearchableItemForUniqueIdentifier:(id)identifier forContentType:(unsigned __int8)type withRequiredAttributes:(id)attributes error:(id *)error;
+ (id)requiredSpotlightAttributeKeysForFiles;
+ (id)requiredSpotlightAttributeKeysForLinks;
@end

@implementation SLCoreSpotlightUtilities

+ (id)fetchCSSearchableItemForUniqueIdentifier:(id)identifier forContentType:(unsigned __int8)type withRequiredAttributes:(id)attributes error:(id *)error
{
  typeCopy = type;
  v63[2] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  attributesCopy = attributes;
  if (identifierCopy)
  {
    v51 = 0;
    v52 = &v51;
    v53 = 0x3032000000;
    v54 = __Block_byref_object_copy__3;
    v55 = __Block_byref_object_dispose__3;
    v56 = 0;
    v11 = dispatch_group_create();
    dispatch_group_enter(v11);
    defaultSearchableIndex = [MEMORY[0x277CC34A8] defaultSearchableIndex];
    v61 = identifierCopy;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v61 count:1];
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = __113__SLCoreSpotlightUtilities_fetchCSSearchableItemForUniqueIdentifier_forContentType_withRequiredAttributes_error___block_invoke;
    v47[3] = &unk_278926428;
    v50 = &v51;
    v14 = identifierCopy;
    v48 = v14;
    v15 = v11;
    v49 = v15;
    [defaultSearchableIndex slowFetchAttributes:attributesCopy protectionClass:0 bundleID:@"com.apple.MobileSMS" identifiers:v13 completionHandler:v47];

    v16 = dispatch_time(0, 60000000000);
    if (dispatch_group_wait(v15, v16))
    {
      v59[0] = *MEMORY[0x277CCA450];
      mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
      v18 = [mainBundle localizedStringForKey:@"SocialLayer CSSearchableItem fetch failed." value:&stru_28468DAB8 table:0];
      v60[0] = v18;
      v59[1] = *MEMORY[0x277CCA470];
      mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
      v20 = [mainBundle2 localizedStringForKey:@"Timed out while fetching CSSearchableItem." value:&stru_28468DAB8 table:0];
      v60[1] = v20;
      v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v60 forKeys:v59 count:2];

      if (error)
      {
        v22 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.SocialLayer.SLHighlightErrorDomain" code:2 userInfo:v21];
LABEL_15:
        v28 = 0;
        *error = v22;
LABEL_20:

        _Block_object_dispose(&v51, 8);
        goto LABEL_21;
      }
    }

    else
    {
      v29 = v52[5];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v30 = [v52[5] count];
        if (v30 == [attributesCopy count])
        {
          v31 = objc_alloc_init(MEMORY[0x277CC34B8]);
          v40 = MEMORY[0x277D85DD0];
          v41 = 3221225472;
          v42 = __113__SLCoreSpotlightUtilities_fetchCSSearchableItemForUniqueIdentifier_forContentType_withRequiredAttributes_error___block_invoke_25;
          v43 = &unk_278926450;
          v46 = &v51;
          v21 = v31;
          v44 = v21;
          v32 = v14;
          v45 = v32;
          [attributesCopy enumerateObjectsUsingBlock:&v40];
          if (typeCopy)
          {
            if (typeCopy == 1)
            {
              domainIdentifier = @"attachmentDomain";
            }

            else
            {
              domainIdentifier = 0;
            }
          }

          else
          {
            domainIdentifier = [v21 domainIdentifier];
          }

          v28 = [objc_alloc(MEMORY[0x277CC34B0]) initWithUniqueIdentifier:v32 domainIdentifier:domainIdentifier attributeSet:v21];

          goto LABEL_20;
        }
      }

      v57[0] = *MEMORY[0x277CCA450];
      mainBundle3 = [MEMORY[0x277CCA8D8] mainBundle];
      v35 = [mainBundle3 localizedStringForKey:@"SocialLayer CSSearchableItem fetch failed." value:&stru_28468DAB8 table:0];
      v58[0] = v35;
      v57[1] = *MEMORY[0x277CCA470];
      mainBundle4 = [MEMORY[0x277CCA8D8] mainBundle];
      v37 = [mainBundle4 localizedStringForKey:@"Failed to fetch one or more required attributes." value:&stru_28468DAB8 table:0];
      v58[1] = v37;
      v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v58 forKeys:v57 count:2];

      if (error)
      {
        v22 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.SocialLayer.SLHighlightErrorDomain" code:3 userInfo:v21];
        goto LABEL_15;
      }
    }

    v28 = 0;
    goto LABEL_20;
  }

  v62[0] = *MEMORY[0x277CCA450];
  mainBundle5 = [MEMORY[0x277CCA8D8] mainBundle];
  v24 = [mainBundle5 localizedStringForKey:@"SocialLayer CSSearchableItem fetch failed." value:&stru_28468DAB8 table:0];
  v63[0] = v24;
  v62[1] = *MEMORY[0x277CCA470];
  mainBundle6 = [MEMORY[0x277CCA8D8] mainBundle];
  v26 = [mainBundle6 localizedStringForKey:@"Provided a nil unique identifier." value:&stru_28468DAB8 table:0];
  v63[1] = v26;
  v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v63 forKeys:v62 count:2];

  if (error)
  {
    *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.SocialLayer.SLHighlightErrorDomain" code:1 userInfo:v27];
  }

  v28 = 0;
LABEL_21:

  v38 = *MEMORY[0x277D85DE8];

  return v28;
}

void __113__SLCoreSpotlightUtilities_fetchCSSearchableItemForUniqueIdentifier_forContentType_withRequiredAttributes_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 firstObject];
    v5 = *(*(a1 + 48) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }

  else
  {
    v7 = SLFrameworkLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __113__SLCoreSpotlightUtilities_fetchCSSearchableItemForUniqueIdentifier_forContentType_withRequiredAttributes_error___block_invoke_cold_1(v3, a1);
    }
  }

  dispatch_group_leave(*(a1 + 40));
}

void __113__SLCoreSpotlightUtilities_fetchCSSearchableItemForUniqueIdentifier_forContentType_withRequiredAttributes_error___block_invoke_25(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [*(*(*(a1 + 48) + 8) + 40) objectAtIndex:a3];
  v7 = [MEMORY[0x277CBEB68] null];

  if (v6 == v7)
  {
    v8 = SLFrameworkLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __113__SLCoreSpotlightUtilities_fetchCSSearchableItemForUniqueIdentifier_forContentType_withRequiredAttributes_error___block_invoke_25_cold_1(v5, a1);
    }
  }

  else
  {
    if (![v5 hasPrefix:@"com_"])
    {
      [*(a1 + 32) setAttribute:v6 forKey:v5];
      goto LABEL_8;
    }

    v8 = [objc_alloc(MEMORY[0x277CC33B0]) initWithKeyName:v5];
    [*(a1 + 32) setValue:v6 forCustomKey:v8];
  }

LABEL_8:
}

+ (id)CSSearchQueryContextForAutodonatingChats
{
  v6[1] = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v6[0] = *MEMORY[0x277CC23A8];
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  [v2 setFetchAttributes:v3];

  v4 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (id)CSQueryStringForAutodonatingChatsWithDecay:(BOOL)decay
{
  v3 = MEMORY[0x277CCACA8];
  if (decay)
  {
    [MEMORY[0x277D3A4C8] decayInterval];
    v5 = [v3 stringWithFormat:@"kMDItemLastUsedDate>=$time.now(-%.f)", v4];
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ && %@", @"com_apple_mobilesms_isChatAutoDonating=1", v5];
  }

  else
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", @"com_apple_mobilesms_isChatAutoDonating=1"];
  }

  return v6;
}

+ (id)CSSearchQueryContextForSLHighlightsForContentType:(unsigned __int8)type
{
  typeCopy = type;
  v4 = objc_opt_new();
  v5 = v4;
  if (typeCopy == 1)
  {
    requiredSpotlightAttributeKeysForFiles = [objc_opt_class() requiredSpotlightAttributeKeysForFiles];
    goto LABEL_5;
  }

  if (!typeCopy)
  {
    requiredSpotlightAttributeKeysForFiles = [objc_opt_class() requiredSpotlightAttributeKeysForLinks];
LABEL_5:
    v7 = requiredSpotlightAttributeKeysForFiles;
    allObjects = [requiredSpotlightAttributeKeysForFiles allObjects];
    [v5 setFetchAttributes:allObjects];

    goto LABEL_7;
  }

  [v4 setFetchAttributes:0];
LABEL_7:

  return v5;
}

+ (id)CSQueryStringForSLHighlightsForContentType:(unsigned __int8)type forChatIdentifiers:(id)identifiers
{
  typeCopy = type;
  identifiersCopy = identifiers;
  if (!typeCopy)
  {
    v7 = 0;
    v6 = @"URL=*";
    v8 = @"lnk";
    goto LABEL_5;
  }

  if (typeCopy == 1)
  {
    v6 = 0;
    v7 = 1;
    v8 = @"at";
LABEL_5:
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@=%@", *MEMORY[0x277CC2DB8], v8];
    goto LABEL_7;
  }

  v9 = 0;
  v6 = 0;
  v7 = 1;
LABEL_7:
  v10 = @"InRange(com_apple_mobilesms_isHighlightedContent, 1, 2)";
  if (!identifiersCopy)
  {
    v10 = @"com_apple_mobilesms_isHighlightedContent=2";
  }

  if (v7)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%@ && %@", v9, v10, v13];
  }

  else
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%@ && %@ && %@", v9, v6, v10];
  }
  v11 = ;

  return v11;
}

+ (id)requiredSpotlightAttributeKeysForFiles
{
  v21[31] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v3 = *MEMORY[0x277CC2E48];
  v21[0] = *MEMORY[0x277CC2500];
  v21[1] = v3;
  v4 = *MEMORY[0x277CC2640];
  v21[2] = *MEMORY[0x277CC3208];
  v21[3] = v4;
  v5 = *MEMORY[0x277CC24E0];
  v21[4] = *MEMORY[0x277CC24A8];
  v21[5] = v5;
  v6 = *MEMORY[0x277CC24C0];
  v21[6] = *MEMORY[0x277CC24B0];
  v21[7] = v6;
  v7 = *MEMORY[0x277CC3010];
  v21[8] = *MEMORY[0x277CC23A0];
  v21[9] = v7;
  v8 = *MEMORY[0x277CC2688];
  v21[10] = *MEMORY[0x277CC2760];
  v21[11] = v8;
  v9 = *MEMORY[0x277CC23A8];
  v21[12] = *MEMORY[0x277CC2678];
  v21[13] = v9;
  v10 = *MEMORY[0x277CC2CA0];
  v21[14] = *MEMORY[0x277CC2B58];
  v21[15] = v10;
  v11 = *MEMORY[0x277CC2B78];
  v21[16] = *MEMORY[0x277CC3190];
  v21[17] = v11;
  v12 = *MEMORY[0x277CC3240];
  v21[18] = *MEMORY[0x277CC2E50];
  v21[19] = v12;
  v13 = *MEMORY[0x277CC2B20];
  v21[20] = *MEMORY[0x277CC2CA8];
  v21[21] = v13;
  v14 = *MEMORY[0x277CC2B28];
  v21[22] = *MEMORY[0x277CC2B38];
  v21[23] = v14;
  v15 = *MEMORY[0x277CC2FC0];
  v21[24] = *MEMORY[0x277CC2408];
  v21[25] = v15;
  v16 = *MEMORY[0x277CC2DB8];
  v21[26] = *MEMORY[0x277CC3028];
  v21[27] = v16;
  v21[28] = *MEMORY[0x277CC2C70];
  v21[29] = @"com_apple_mobilesms_groupPhotoPath";
  v21[30] = @"com_apple_mobilesms_highlightedContentServerDate";
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:31];
  v18 = [v2 setWithArray:v17];

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

+ (id)requiredSpotlightAttributeKeysForLinks
{
  v17[23] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v3 = *MEMORY[0x277CC2E48];
  v17[0] = *MEMORY[0x277CC2500];
  v17[1] = v3;
  v4 = *MEMORY[0x277CC2770];
  v17[2] = *MEMORY[0x277CC3208];
  v17[3] = v4;
  v5 = *MEMORY[0x277CC2640];
  v17[4] = *MEMORY[0x277CC31F8];
  v17[5] = v5;
  v6 = *MEMORY[0x277CC24E0];
  v17[6] = *MEMORY[0x277CC24A8];
  v17[7] = v6;
  v7 = *MEMORY[0x277CC24C0];
  v17[8] = *MEMORY[0x277CC24B0];
  v17[9] = v7;
  v8 = *MEMORY[0x277CC3010];
  v17[10] = *MEMORY[0x277CC23A0];
  v17[11] = v8;
  v9 = *MEMORY[0x277CC2CA0];
  v17[12] = *MEMORY[0x277CC2760];
  v17[13] = v9;
  v10 = *MEMORY[0x277CC2B78];
  v17[14] = *MEMORY[0x277CC3190];
  v17[15] = v10;
  v11 = *MEMORY[0x277CC2FC0];
  v17[16] = *MEMORY[0x277CC2408];
  v17[17] = v11;
  v12 = *MEMORY[0x277CC2DB8];
  v17[18] = *MEMORY[0x277CC3028];
  v17[19] = v12;
  v17[20] = *MEMORY[0x277CC2C70];
  v17[21] = @"com_apple_mobilesms_groupPhotoPath";
  v17[22] = @"com_apple_mobilesms_highlightedContentServerDate";
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:23];
  v14 = [v2 setWithArray:v13];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

void __113__SLCoreSpotlightUtilities_fetchCSSearchableItemForUniqueIdentifier_forContentType_withRequiredAttributes_error___block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 32);
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_1_0(&dword_231772000, v3, v4, "CSSearchableIndex attributes fetch return an unexpected value (%@) for unique identifier: %@");
  v5 = *MEMORY[0x277D85DE8];
}

void __113__SLCoreSpotlightUtilities_fetchCSSearchableItemForUniqueIdentifier_forContentType_withRequiredAttributes_error___block_invoke_25_cold_1(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 40);
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_1_0(&dword_231772000, v3, v4, "Missing required attribute %@ for loaded values with unique identifier %@");
  v5 = *MEMORY[0x277D85DE8];
}

@end