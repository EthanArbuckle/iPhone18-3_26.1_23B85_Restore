@interface SPUISPhotosFromAppSectionBuilder
+ (id)supportedBundleIds;
- (id)buildBridgedResult;
- (id)buildButtonItem;
- (id)buildSearchInAppCommand;
- (id)buildSection;
- (id)buildTitle;
- (void)setSection:(id)section;
@end

@implementation SPUISPhotosFromAppSectionBuilder

+ (id)supportedBundleIds
{
  if (supportedBundleIds_onceToken != -1)
  {
    +[SPUISPhotosFromAppSectionBuilder supportedBundleIds];
  }

  v3 = supportedBundleIds_bundleIDs;

  return v3;
}

void __54__SPUISPhotosFromAppSectionBuilder_supportedBundleIds__block_invoke()
{
  v0 = SSBundleIdentifiersForSyndicatedPhotos();
  v1 = [v0 mutableCopy];

  [v1 removeObject:@"com.apple.mobileslideshow"];
  v2 = supportedBundleIds_bundleIDs;
  supportedBundleIds_bundleIDs = v1;
}

- (void)setSection:(id)section
{
  v8.receiver = self;
  v8.super_class = SPUISPhotosFromAppSectionBuilder;
  sectionCopy = section;
  [(SPUISSectionBuilder *)&v8 setSection:sectionCopy];
  results = [sectionCopy results];

  firstObject = [results firstObject];
  applicationBundleIdentifier = [firstObject applicationBundleIdentifier];
  [(SPUISPhotosFromAppSectionBuilder *)self setAppBundleId:applicationBundleIdentifier];
}

- (id)buildButtonItem
{
  v3 = objc_opt_class();
  buildSearchInAppCommand = [(SPUISPhotosFromAppSectionBuilder *)self buildSearchInAppCommand];
  v5 = [v3 searchInAppButtonItemWithCommand:buildSearchInAppCommand];

  return v5;
}

- (id)buildSearchInAppCommand
{
  queryContext = [(SPUISSectionBuilder *)self queryContext];
  searchEntities = [queryContext searchEntities];
  firstObject = [searchEntities firstObject];

  if (firstObject)
  {
    searchString = [firstObject searchString];
    if ([searchString length])
    {
      [firstObject searchString];
    }

    else
    {
      [firstObject displayString];
    }
    searchString2 = ;
  }

  else
  {
    searchString2 = [queryContext searchString];
  }

  v8 = objc_opt_new();
  appBundleId = [(SPUISPhotosFromAppSectionBuilder *)self appBundleId];
  [v8 setApplicationBundleIdentifier:appBundleId];

  [v8 setSearchString:searchString2];

  return v8;
}

- (id)buildTitle
{
  if (SSSpotlightUIPlusEnabled())
  {
    v3 = 0;
  }

  else
  {
    queryContext = [(SPUISSectionBuilder *)self queryContext];
    searchEntities = [queryContext searchEntities];
    firstObject = [searchEntities firstObject];
    isPhotosEntitySearch = [firstObject isPhotosEntitySearch];

    appBundleId = [(SPUISPhotosFromAppSectionBuilder *)self appBundleId];
    v9 = SSAppNameForBundleId();
    v10 = v9;
    if ((isPhotosEntitySearch & 1) == 0)
    {
      v10 = v9;
      if (([appBundleId isEqualToString:@"com.apple.mobileslideshow"] & 1) == 0)
      {
        v11 = MEMORY[0x277CCACA8];
        v12 = [SPUISUtilities localizedStringForKey:@"PHOTOS_TITLE_FORMAT"];
        v10 = [v11 localizedStringWithFormat:v12, v9];
      }
    }

    v3 = [MEMORY[0x277D4C598] textWithString:v10];
  }

  return v3;
}

- (id)buildBridgedResult
{
  v33[1] = *MEMORY[0x277D85DE8];
  if (SSSpotlightUIPlusEnabled())
  {
    v3 = objc_opt_new();
    appBundleId = [(SPUISPhotosFromAppSectionBuilder *)self appBundleId];
    [v3 setBundleIdentifier:appBundleId];

    buildSearchInAppCommand = [(SPUISPhotosFromAppSectionBuilder *)self buildSearchInAppCommand];
    v5 = objc_opt_new();
    section = [(SPUISSectionBuilder *)self section];
    resultSet = [section resultSet];
    array = [resultSet array];

    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __54__SPUISPhotosFromAppSectionBuilder_buildBridgedResult__block_invoke;
    v29[3] = &unk_279D0BEC0;
    v29[4] = self;
    v30 = v5;
    v9 = v5;
    [array enumerateObjectsUsingBlock:v29];
    v10 = objc_opt_new();
    [v10 setThumbnail:v3];
    v11 = MEMORY[0x277D4C598];
    appBundleId2 = [(SPUISPhotosFromAppSectionBuilder *)self appBundleId];
    v13 = SSAppNameForBundleId();
    v14 = [v11 textWithString:v13];
    [v10 setTitle:v14];

    [v10 setCommand:buildSearchInAppCommand];
    [v10 setButtonItems:v9];
    [v10 setButtonItemsAreTrailing:1];
    v15 = MEMORY[0x277D4C598];
    v16 = MEMORY[0x277CCACA8];
    v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v18 = [v17 localizedStringForKey:@"%lu Results" value:0 table:0];
    v19 = [v16 stringWithFormat:v18, objc_msgSend(array, "count")];
    v20 = [v15 textWithString:v19];
    v33[0] = v20;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:1];
    [v10 setDescriptions:v21];

    v22 = objc_opt_new();
    v32 = v10;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v32 count:1];
    [v22 setCardSections:v23];

    v28.receiver = self;
    v28.super_class = SPUISPhotosFromAppSectionBuilder;
    buildBridgedResult = [(SPUISPhotosSectionBuilder *)&v28 buildBridgedResult];
    [buildBridgedResult setInlineCard:v22];
    [buildBridgedResult setCompactCard:v22];
  }

  else
  {
    v31.receiver = self;
    v31.super_class = SPUISPhotosFromAppSectionBuilder;
    buildBridgedResult = [(SPUISPhotosSectionBuilder *)&v31 buildBridgedResult];
  }

  v25 = *MEMORY[0x277D85DE8];

  return buildBridgedResult;
}

void __54__SPUISPhotosFromAppSectionBuilder_buildBridgedResult__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v13 = [SPUISResultBuilder resultBuilderWithResult:a2];
  v6 = [*(a1 + 32) queryContext];
  [v13 setQueryContext:v6];

  v7 = objc_opt_new();
  v8 = [v13 buildThumbnail];
  [v7 setImage:v8];

  v9 = [v7 image];
  [v9 setSize:{32.0, 32.0}];

  v10 = [v7 image];
  [v10 setCornerRoundingStyle:3];

  v11 = [v13 buildCommand];
  [v7 setCommand:v11];

  v12 = [v13 buildPreviewButtonItems];
  [v7 setPreviewButtonItems:v12];

  [*(a1 + 40) addObject:v7];
  if ([*(a1 + 40) count] >= 5)
  {
    *a4 = 1;
  }
}

- (id)buildSection
{
  v4.receiver = self;
  v4.super_class = SPUISPhotosFromAppSectionBuilder;
  buildSection = [(SPUISSectionBuilder *)&v4 buildSection];
  if (SSSpotlightUIPlusEnabled())
  {
    [buildSection setTitle:0];
  }

  return buildSection;
}

@end