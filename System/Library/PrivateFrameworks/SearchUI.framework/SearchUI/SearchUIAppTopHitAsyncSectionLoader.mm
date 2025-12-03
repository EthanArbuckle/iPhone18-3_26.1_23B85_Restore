@interface SearchUIAppTopHitAsyncSectionLoader
+ (BOOL)supportsSectionModel:(id)model;
+ (int64_t)maxNumOfTopHitEntities;
- (SearchUIAppTopHitAsyncSectionLoader)initWithSectionModel:(id)model result:(id)result queryId:(unint64_t)id;
- (id)backgroundColor;
- (id)buildVerticalLayoutCardSectionFromResult:(id)result title:(id)title subtitle:(id)subtitle command:(id)command;
- (id)bundleIdentifier;
- (id)cardSections;
- (id)responseForCardSections:(id)sections animated:(BOOL)animated;
@end

@implementation SearchUIAppTopHitAsyncSectionLoader

+ (BOOL)supportsSectionModel:(id)model
{
  modelCopy = model;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    rowModels = [modelCopy rowModels];
    if ([rowModels count] == 1)
    {
      rowModels2 = [modelCopy rowModels];
      firstObject = [rowModels2 firstObject];
      cardSection = [firstObject cardSection];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
    }

    else
    {
      isKindOfClass = 0;
    }
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (SearchUIAppTopHitAsyncSectionLoader)initWithSectionModel:(id)model result:(id)result queryId:(unint64_t)id
{
  modelCopy = model;
  v17.receiver = self;
  v17.super_class = SearchUIAppTopHitAsyncSectionLoader;
  v9 = [(SearchUIAsyncSectionLoader *)&v17 initWithSectionModel:modelCopy result:result queryId:id];
  if (v9)
  {
    rowModels = [modelCopy rowModels];
    firstObject = [rowModels firstObject];

    cardSection = [firstObject cardSection];
    [(SearchUIAppTopHitAsyncSectionLoader *)v9 setAppIconCardSection:cardSection];

    section = [modelCopy section];
    collectionSection = [section collectionSection];
    backgroundColor = [collectionSection backgroundColor];
    [(SearchUIAppTopHitAsyncSectionLoader *)v9 setSectionBackgroundColor:backgroundColor];
  }

  return v9;
}

+ (int64_t)maxNumOfTopHitEntities
{
  if (+[SearchUIUtilities isIpad])
  {
    return 5;
  }

  if ([MEMORY[0x1E69D9240] isMacOS])
  {
    return 5;
  }

  return 3;
}

- (id)backgroundColor
{
  cardSections = [(SearchUIAppTopHitAsyncSectionLoader *)self cardSections];
  if ([cardSections count] < 2)
  {
    sectionBackgroundColor = 0;
  }

  else
  {
    cardSections2 = [(SearchUIAppTopHitAsyncSectionLoader *)self cardSections];
    firstObject = [cardSections2 firstObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      sectionBackgroundColor = [(SearchUIAppTopHitAsyncSectionLoader *)self sectionBackgroundColor];
    }

    else
    {
      sectionBackgroundColor = 0;
    }
  }

  return sectionBackgroundColor;
}

- (id)bundleIdentifier
{
  appIconCardSection = [(SearchUIAppTopHitAsyncSectionLoader *)self appIconCardSection];
  applicationBundleIdentifier = [appIconCardSection applicationBundleIdentifier];

  return applicationBundleIdentifier;
}

- (id)cardSections
{
  v9[1] = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = SearchUIAppTopHitAsyncSectionLoader;
  cardSections = [(SearchUIAsyncSectionLoader *)&v8 cardSections];
  appIconCardSection = [(SearchUIAppTopHitAsyncSectionLoader *)self appIconCardSection];
  v9[0] = appIconCardSection;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  v6 = [v5 arrayByAddingObjectsFromArray:cardSections];

  return v6;
}

- (id)responseForCardSections:(id)sections animated:(BOOL)animated
{
  animatedCopy = animated;
  sectionsCopy = sections;
  v6 = objc_opt_new();
  [v6 setCardSection:sectionsCopy];

  [v6 setAnimated:animatedCopy];
  [v6 setReconfigureExisting:1];

  return v6;
}

- (id)buildVerticalLayoutCardSectionFromResult:(id)result title:(id)title subtitle:(id)subtitle command:(id)command
{
  commandCopy = command;
  subtitleCopy = subtitle;
  titleCopy = title;
  resultCopy = result;
  v13 = objc_opt_new();
  [v13 setUseAppIconMetrics:1];
  v14 = [MEMORY[0x1E69CA3A0] textWithString:titleCopy];

  [v13 setTitle:v14];
  title = [v13 title];
  [title setMaxLines:2];

  [v13 setThumbnail:resultCopy];
  v16 = [MEMORY[0x1E69CA3A0] textWithString:subtitleCopy];

  [v13 setFootnote:v16];
  footnote = [v13 footnote];
  [footnote setMaxLines:1];

  [v13 setCommand:commandCopy];

  return v13;
}

@end