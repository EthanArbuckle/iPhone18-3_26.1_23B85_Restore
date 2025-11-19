@interface SPUISPhotosSectionBuilder
+ (id)supportedBundleIds;
+ (unint64_t)maxVisibleColumnsInPhotosSection;
- (id)buildBridgedResult;
- (id)buildButtonItem;
- (id)buildCardSections;
- (id)buildCollectionStyle;
@end

@implementation SPUISPhotosSectionBuilder

+ (id)supportedBundleIds
{
  v5[1] = *MEMORY[0x277D85DE8];
  if (SSSpotlightUIPlusEnabled())
  {
    v2 = 0;
  }

  else
  {
    v5[0] = @"com.apple.searchd.syndicatedPhotos";
    v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  }

  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (unint64_t)maxVisibleColumnsInPhotosSection
{
  if (maxVisibleColumnsInPhotosSection_onceToken != -1)
  {
    +[SPUISPhotosSectionBuilder maxVisibleColumnsInPhotosSection];
  }

  return maxVisibleColumnsInPhotosSection_numPhotoColumns;
}

BOOL __61__SPUISPhotosSectionBuilder_maxVisibleColumnsInPhotosSection__block_invoke()
{
  v0 = MGCopyAnswer();
  v1 = [v0 intValue];
  if (v0)
  {
    CFRelease(v0);
  }

  result = +[SPUISUtilities isMacOS];
  v3 = 5;
  if (result)
  {
    v3 = 8;
  }

  if (v1 == 3)
  {
    v3 = 7;
  }

  maxVisibleColumnsInPhotosSection_numPhotoColumns = v3;
  return result;
}

- (id)buildBridgedResult
{
  v4.receiver = self;
  v4.super_class = SPUISPhotosSectionBuilder;
  v2 = [(SPUISSectionBuilder *)&v4 buildBridgedResult];
  [v2 setType:3];

  return v2;
}

- (id)buildCollectionStyle
{
  v3 = [(SPUISSectionBuilder *)self section];
  if ([(SPUISPhotosSectionBuilder *)self useHorizontallyScrollingCardSectionUI])
  {
    v4 = objc_opt_new();
    v5 = [v3 results];
    v6 = [v5 count];
    if (v6 < 2 * [objc_opt_class() maxVisibleColumnsInPhotosSection])
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }

    [v4 setNumberOfRows:v7];
  }

  else
  {
    v4 = objc_opt_new();
  }

  [v4 setInitiallyVisibleCardSectionCount:{objc_msgSend(v3, "maxInitiallyVisibleResults")}];

  return v4;
}

- (id)buildCardSections
{
  v33 = *MEMORY[0x277D85DE8];
  v29.receiver = self;
  v29.super_class = SPUISPhotosSectionBuilder;
  v2 = [(SPUISSectionBuilder *)&v29 buildCardSections];
  v24 = [MEMORY[0x277CCAB68] string];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v3 = v2;
  v4 = [v3 countByEnumeratingWithState:&v25 objects:v32 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v26;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v26 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v25 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = v8;
          v10 = [v9 thumbnail];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            v12 = [v9 thumbnail];
            v13 = [v12 photoIdentifier];
            v14 = [v13 length];

            if (v14)
            {
              v15 = [v12 photoIdentifier];
              [v9 setCardSectionId:v15];

              v16 = [v12 photoIdentifier];
              [v24 appendString:v16];

              [v24 appendString:@" "];
            }
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v25 objects:v32 count:16];
    }

    while (v5);
  }

  v17 = logForCSLogCategoryPhotosQU();
  v18 = os_signpost_id_generate(v17);
  v19 = v17;
  v20 = v19;
  if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
  {
    v21 = [v24 UTF8String];
    *buf = 136315138;
    v31 = v21;
    _os_signpost_emit_with_name_impl(&dword_26B882000, v20, OS_SIGNPOST_EVENT, v18, "ResultPhotos", "%{name=photoIdentifiers}s", buf, 0xCu);
  }

  v22 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)buildButtonItem
{
  v2 = [(SPUISSectionBuilder *)self queryContext];
  v3 = [v2 searchEntities];
  v4 = [v3 firstObject];

  v5 = [v2 searchString];
  if ([v4 isContactEntitySearch])
  {
    v6 = [v4 tokenText];
  }

  else
  {
    if (!v4)
    {
      goto LABEL_6;
    }

    v6 = [v4 searchString];
  }

  v7 = v6;

  v5 = v7;
LABEL_6:
  v8 = objc_opt_new();
  [v8 setSymbolName:@"chevron.forward"];
  v9 = objc_opt_new();
  v10 = [SPUISUtilities localizedStringForKey:@"SHOW_MORE"];
  [v9 setTitle:v10];

  [v9 setImage:v8];
  if (v5)
  {
    v11 = v5;
  }

  else
  {
    v11 = &stru_287C50EE8;
  }

  v12 = [MEMORY[0x277D65890] searchEntityWithPhotosSearchString:v11 fromSuggestion:0];
  v13 = [v12 command];
  [v9 setCommand:v13];

  return v9;
}

@end