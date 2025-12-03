@interface SSPhotosSectionBuilder
+ (id)supportedBundleIds;
+ (unint64_t)maxVisibleColumnsInPhotosSection;
- (id)buildBridgedResult;
- (id)buildButtonItem;
- (id)buildCardSections;
- (id)buildCollectionStyle;
@end

@implementation SSPhotosSectionBuilder

+ (id)supportedBundleIds
{
  v5[1] = *MEMORY[0x1E69E9840];
  if (SSSpotlightUIPlusEnabled())
  {
    v2 = 0;
  }

  else
  {
    v5[0] = @"com.apple.searchd.syndicatedPhotos";
    v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  }

  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

+ (unint64_t)maxVisibleColumnsInPhotosSection
{
  if (maxVisibleColumnsInPhotosSection_onceToken != -1)
  {
    +[SSPhotosSectionBuilder maxVisibleColumnsInPhotosSection];
  }

  return maxVisibleColumnsInPhotosSection_numPhotoColumns;
}

uint64_t __58__SSPhotosSectionBuilder_maxVisibleColumnsInPhotosSection__block_invoke()
{
  v0 = MGCopyAnswer();
  v1 = [v0 intValue];
  if (v0)
  {
    CFRelease(v0);
  }

  result = isMacOS();
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
  v4.super_class = SSPhotosSectionBuilder;
  buildBridgedResult = [(SSSectionBuilder *)&v4 buildBridgedResult];
  [buildBridgedResult setType:3];

  return buildBridgedResult;
}

- (id)buildCollectionStyle
{
  section = [(SSSectionBuilder *)self section];
  if ([(SSPhotosSectionBuilder *)self useHorizontallyScrollingCardSectionUI])
  {
    v4 = objc_opt_new();
    results = [section results];
    v6 = [results count];
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

  [v4 setInitiallyVisibleCardSectionCount:{objc_msgSend(section, "maxInitiallyVisibleResults")}];

  return v4;
}

- (id)buildCardSections
{
  v33 = *MEMORY[0x1E69E9840];
  v29.receiver = self;
  v29.super_class = SSPhotosSectionBuilder;
  buildCardSections = [(SSSectionBuilder *)&v29 buildCardSections];
  string = [MEMORY[0x1E696AD60] string];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v3 = buildCardSections;
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
          thumbnail = [v9 thumbnail];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            thumbnail2 = [v9 thumbnail];
            photoIdentifier = [thumbnail2 photoIdentifier];
            v14 = [photoIdentifier length];

            if (v14)
            {
              photoIdentifier2 = [thumbnail2 photoIdentifier];
              [v9 setCardSectionId:photoIdentifier2];

              photoIdentifier3 = [thumbnail2 photoIdentifier];
              [string appendString:photoIdentifier3];

              [string appendString:@" "];
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
    uTF8String = [string UTF8String];
    *buf = 136315138;
    v31 = uTF8String;
    _os_signpost_emit_with_name_impl(&dword_1D9F69000, v20, OS_SIGNPOST_EVENT, v18, "ResultPhotos", "%{name=photoIdentifiers}s", buf, 0xCu);
  }

  v22 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)buildButtonItem
{
  queryContext = [(SSSectionBuilder *)self queryContext];
  searchEntities = [queryContext searchEntities];
  firstObject = [searchEntities firstObject];

  searchString = [queryContext searchString];
  if ([firstObject isContactEntitySearch])
  {
    tokenText = [firstObject tokenText];
  }

  else
  {
    if (!firstObject)
    {
      goto LABEL_6;
    }

    tokenText = [firstObject searchString];
  }

  v7 = tokenText;

  searchString = v7;
LABEL_6:
  v8 = objc_opt_new();
  [v8 setSymbolName:@"chevron.forward"];
  v9 = objc_opt_new();
  v10 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"SHOW_MORE" value:&stru_1F556FE60 table:@"SpotlightServices"];
  [v9 setTitle:v11];

  [v9 setImage:v8];
  if (searchString)
  {
    v12 = searchString;
  }

  else
  {
    v12 = &stru_1F556FE60;
  }

  v13 = [SPSearchEntity searchEntityWithPhotosSearchString:v12 fromSuggestion:0];
  command = [v13 command];
  [v9 setCommand:command];

  return v9;
}

@end