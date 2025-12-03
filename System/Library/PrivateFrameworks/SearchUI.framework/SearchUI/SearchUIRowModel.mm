@interface SearchUIRowModel
- (BOOL)adjustMarginsForConcentricity;
- (BOOL)allowBackgroundColor;
- (BOOL)fillsBackgroundWithContent;
- (BOOL)hasGridStyling;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToModel:(id)model;
- (NSString)accessibilityIdentifier;
- (NSString)applicationBundleIdentifier;
- (NSString)coreSpotlightIdentifier;
- (NSString)displayTitle;
- (NSString)fileProviderIdentifier;
- (NSString)reuseIdentifier;
- (SFSearchResult)identifyingResult;
- (SearchUIRowModel)initWithResult:(id)result cardSection:(id)section queryId:(unint64_t)id itemIdentifier:(id)identifier;
- (SearchUIRowModel)initWithResult:(id)result itemIdentifier:(id)identifier;
- (SearchUIRowModel)initWithResults:(id)results cardSection:(id)section queryId:(unint64_t)id itemIdentifier:(id)identifier;
- (SearchUIRowModel)initWithResults:(id)results itemIdentifier:(id)identifier;
- (WFContextualAction)contextualAction;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)fetchFileProviderURLWithCompletionHandler:(id)handler;
- (void)updateWithEnvironment:(id)environment;
@end

@implementation SearchUIRowModel

- (SFSearchResult)identifyingResult
{
  results = [(SearchUIRowModel *)self results];
  firstObject = [results firstObject];

  return firstObject;
}

- (unint64_t)hash
{
  itemIdentifier = [(SearchUIRowModel *)self itemIdentifier];
  v3 = [itemIdentifier hash];

  return v3;
}

- (NSString)reuseIdentifier
{
  v3 = NSStringFromClass([(SearchUIRowModel *)self cellViewClass]);
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = NSStringFromClass([(SearchUIRowModel *)self collectionViewCellClass]);
  }

  v6 = v5;

  return v6;
}

- (NSString)applicationBundleIdentifier
{
  identifyingResult = [(SearchUIRowModel *)self identifyingResult];
  applicationBundleIdentifier = [identifyingResult applicationBundleIdentifier];

  if (!applicationBundleIdentifier)
  {
    cardSection = [(SearchUIRowModel *)self cardSection];
    command = [cardSection command];

    objc_opt_class();
    v7 = (objc_opt_isKindOfClass() & 1) != 0 ? command : 0;
    v8 = v7;

    applicationBundleIdentifier = [v8 applicationBundleIdentifier];

    if (!applicationBundleIdentifier)
    {
      cardSection2 = [(SearchUIRowModel *)self cardSection];
      command2 = [cardSection2 command];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = command2;
      }

      else
      {
        v11 = 0;
      }

      v12 = v11;

      applicationBundleIdentifier = [v12 fileProviderIdentifier];
      if (applicationBundleIdentifier)
      {
        coreSpotlightIdentifier = [v12 coreSpotlightIdentifier];

        if (coreSpotlightIdentifier)
        {
          applicationBundleIdentifier = [SearchUIUtilities bundleIdentifierForApp:6];
        }

        else
        {
          applicationBundleIdentifier = 0;
        }
      }
    }
  }

  return applicationBundleIdentifier;
}

- (NSString)accessibilityIdentifier
{
  identifyingResult = [(SearchUIRowModel *)self identifyingResult];
  type = [identifyingResult type];

  if ((type - 16) > 0x13)
  {
    return @"ResultCell";
  }

  else
  {
    return &off_1E85B4108[type - 16]->isa;
  }
}

- (SearchUIRowModel)initWithResult:(id)result itemIdentifier:(id)identifier
{
  identifierCopy = identifier;
  resultCopy = result;
  v8 = -[SearchUIRowModel initWithResult:cardSection:queryId:itemIdentifier:](self, "initWithResult:cardSection:queryId:itemIdentifier:", resultCopy, 0, [resultCopy queryId], identifierCopy);

  return v8;
}

- (SearchUIRowModel)initWithResult:(id)result cardSection:(id)section queryId:(unint64_t)id itemIdentifier:(id)identifier
{
  v23 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  v11 = resultCopy;
  if (resultCopy)
  {
    v22 = resultCopy;
    v12 = MEMORY[0x1E695DEC8];
    identifierCopy = identifier;
    sectionCopy = section;
    v15 = [v12 arrayWithObjects:&v22 count:1];
    v16 = [(SearchUIRowModel *)self initWithResults:v15 cardSection:sectionCopy queryId:id itemIdentifier:identifierCopy, v22, v23];

    v17 = v16;
  }

  else
  {
    identifierCopy2 = identifier;
    sectionCopy2 = section;
    v20 = [(SearchUIRowModel *)self initWithResults:0 cardSection:sectionCopy2 queryId:id itemIdentifier:identifierCopy2];

    v17 = v20;
  }

  return v17;
}

- (SearchUIRowModel)initWithResults:(id)results itemIdentifier:(id)identifier
{
  identifierCopy = identifier;
  resultsCopy = results;
  firstObject = [resultsCopy firstObject];
  v9 = -[SearchUIRowModel initWithResults:cardSection:queryId:itemIdentifier:](self, "initWithResults:cardSection:queryId:itemIdentifier:", resultsCopy, 0, [firstObject queryId], identifierCopy);

  return v9;
}

- (SearchUIRowModel)initWithResults:(id)results cardSection:(id)section queryId:(unint64_t)id itemIdentifier:(id)identifier
{
  resultsCopy = results;
  sectionCopy = section;
  identifierCopy = identifier;
  v17.receiver = self;
  v17.super_class = SearchUIRowModel;
  v13 = [(SearchUIRowModel *)&v17 init];
  v14 = v13;
  if (v13)
  {
    [(SearchUIRowModel *)v13 setResults:resultsCopy];
    firstObject = [resultsCopy firstObject];
    [(SearchUIRowModel *)v14 setIdentifyingResult:firstObject];

    [(SearchUIRowModel *)v14 setCardSection:sectionCopy];
    [(SearchUIRowModel *)v14 setItemIdentifier:identifierCopy];
    [(SearchUIRowModel *)v14 setFileProviderURLFetched:0];
    [(SearchUIRowModel *)v14 setAllowAdjustmentsForConcentricity:1];
    v14->_queryId = id;
  }

  return v14;
}

- (BOOL)fillsBackgroundWithContent
{
  backgroundColor = [(SearchUIRowModel *)self backgroundColor];
  v3 = backgroundColor != 0;

  return v3;
}

- (BOOL)allowBackgroundColor
{
  if (allowBackgroundColor_onceToken != -1)
  {
    [SearchUIRowModel allowBackgroundColor];
  }

  if ([(SearchUIRowModel *)self isTopHit])
  {
    identifyingResult = [(SearchUIRowModel *)self identifyingResult];
    usesCompactDisplay = [identifyingResult usesCompactDisplay];

    if (!usesCompactDisplay)
    {
      return 1;
    }
  }

  if (allowBackgroundColor_isSafariProcess)
  {
    return 1;
  }

  v6 = MEMORY[0x1E69D9240];

  return [v6 isSiri];
}

void __40__SearchUIRowModel_allowBackgroundColor__block_invoke()
{
  v2 = [MEMORY[0x1E696AAE8] mainBundle];
  v0 = [v2 bundleIdentifier];
  v1 = [SearchUIUtilities bundleIdentifierForApp:14];
  allowBackgroundColor_isSafariProcess = [v0 isEqualToString:v1];
}

- (BOOL)hasGridStyling
{
  cardSection = [(SearchUIRowModel *)self cardSection];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    cardSection2 = [(SearchUIRowModel *)self cardSection];
    title = [cardSection2 title];
    if (title)
    {
      v7 = 0;
    }

    else
    {
      footnote = [cardSection2 footnote];
      v7 = footnote == 0;
    }

    thumbnail = [cardSection2 thumbnail];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = 0;
    }

    else
    {
      thumbnail2 = [cardSection2 thumbnail];
      objc_opt_class();
      v13 = objc_opt_isKindOfClass();

      v11 = v13 ^ 1;
    }

    useAppIconMetrics = [cardSection2 useAppIconMetrics];
    v8 = useAppIconMetrics | (v7 | v11) ^ 1;
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

- (BOOL)isEqualToModel:(id)model
{
  modelCopy = model;
  v7 = modelCopy;
  if (modelCopy != self)
  {
    identifyingResult = self->_identifyingResult;
    identifyingResult = [(SearchUIRowModel *)modelCopy identifyingResult];
    if (identifyingResult != identifyingResult)
    {
      v10 = self->_identifyingResult;
      identifyingResult2 = [(SearchUIRowModel *)v7 identifyingResult];
      if (![(SFSearchResult *)v10 isEqual:identifyingResult2])
      {
        v11 = 0;
        goto LABEL_15;
      }
    }

    cardSection = self->_cardSection;
    cardSection = [(SearchUIRowModel *)v7 cardSection];
    if (cardSection == cardSection || (v14 = self->_cardSection, [(SearchUIRowModel *)v7 cardSection], v4 = objc_claimAutoreleasedReturnValue(), [(SFCardSection *)v14 isEqual:v4]))
    {
      results = self->_results;
      results = [(SearchUIRowModel *)v7 results];
      v17 = results;
      if (results == results)
      {

        v11 = 1;
      }

      else
      {
        v18 = self->_results;
        results2 = [(SearchUIRowModel *)v7 results];
        v11 = [(NSArray *)v18 isEqual:results2];
      }

      if (cardSection == cardSection)
      {
LABEL_14:

        if (identifyingResult == identifyingResult)
        {
LABEL_16:

          goto LABEL_17;
        }

LABEL_15:

        goto LABEL_16;
      }
    }

    else
    {
      v11 = 0;
    }

    goto LABEL_14;
  }

  v11 = 1;
LABEL_17:

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    itemIdentifier = [(SearchUIRowModel *)self itemIdentifier];
    itemIdentifier2 = [v5 itemIdentifier];

    v8 = [itemIdentifier isEqualToString:itemIdentifier2];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  results = [(SearchUIRowModel *)self results];
  [v4 setResults:results];

  cardSection = [(SearchUIRowModel *)self cardSection];
  [v4 setCardSection:cardSection];

  [v4 setQueryId:{-[SearchUIRowModel queryId](self, "queryId")}];
  itemIdentifier = [(SearchUIRowModel *)self itemIdentifier];
  [v4 setItemIdentifier:itemIdentifier];

  [v4 setCornerMask:{-[SearchUIRowModel cornerMask](self, "cornerMask")}];
  [v4 setHasCustomCornerRounding:{-[SearchUIRowModel hasCustomCornerRounding](self, "hasCustomCornerRounding")}];
  [v4 setHasValidCommandHandler:{-[SearchUIRowModel hasValidCommandHandler](self, "hasValidCommandHandler")}];
  [v4 setAllowAdjustmentsForConcentricity:{-[SearchUIRowModel allowAdjustmentsForConcentricity](self, "allowAdjustmentsForConcentricity")}];
  contextualAction = [(SearchUIRowModel *)self contextualAction];
  [v4 setContextualAction:contextualAction];

  [v4 setContextualActionLoaded:{-[SearchUIRowModel contextualActionLoaded](self, "contextualActionLoaded")}];
  return v4;
}

- (NSString)coreSpotlightIdentifier
{
  identifyingResult = [(SearchUIRowModel *)self identifyingResult];
  identifier = [identifyingResult identifier];

  if (!identifier)
  {
    cardSection = [(SearchUIRowModel *)self cardSection];
    command = [cardSection command];

    objc_opt_class();
    v7 = (objc_opt_isKindOfClass() & 1) != 0 ? command : 0;
    v8 = v7;

    identifier = [v8 coreSpotlightIdentifier];

    if (!identifier)
    {
      cardSection2 = [(SearchUIRowModel *)self cardSection];
      command2 = [cardSection2 command];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = command2;
      }

      else
      {
        v11 = 0;
      }

      v12 = v11;

      identifier = [v12 coreSpotlightIdentifier];
    }
  }

  return identifier;
}

- (NSString)displayTitle
{
  identifyingResult = [(SearchUIRowModel *)self identifyingResult];
  title = [identifyingResult title];
  text = [title text];

  return text;
}

- (NSString)fileProviderIdentifier
{
  identifyingResult = [(SearchUIRowModel *)self identifyingResult];
  fileProviderIdentifier = [identifyingResult fileProviderIdentifier];

  if (!fileProviderIdentifier)
  {
    cardSection = [(SearchUIRowModel *)self cardSection];
    command = [cardSection command];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = command;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;

    fileProviderIdentifier = [v8 fileProviderIdentifier];
  }

  return fileProviderIdentifier;
}

- (void)fetchFileProviderURLWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  fileProviderFetchedURL = [(SearchUIRowModel *)self fileProviderFetchedURL];
  if (fileProviderFetchedURL || [(SearchUIRowModel *)self fileProviderURLFetched])
  {
    handlerCopy[2](handlerCopy, fileProviderFetchedURL);
  }

  else
  {
    cardSection = [(SearchUIRowModel *)self cardSection];
    command = [cardSection command];

    coreSpotlightIdentifier = [command coreSpotlightIdentifier];
    fileProviderIdentifier = [command fileProviderIdentifier];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __62__SearchUIRowModel_fetchFileProviderURLWithCompletionHandler___block_invoke;
    v10[3] = &unk_1E85B40E8;
    v10[4] = self;
    v11 = handlerCopy;
    [SearchUIUtilities fetchURLForCoreSpotlightIdentifier:coreSpotlightIdentifier fileProviderIdentifier:fileProviderIdentifier completionHandler:v10];
  }
}

void __62__SearchUIRowModel_fetchFileProviderURLWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 setFileProviderFetchedURL:v4];
  [*(a1 + 32) setFileProviderURLFetched:1];
  (*(*(a1 + 40) + 16))();
}

- (BOOL)adjustMarginsForConcentricity
{
  fillsBackgroundWithContent = [(SearchUIRowModel *)self fillsBackgroundWithContent];
  if (fillsBackgroundWithContent)
  {

    LOBYTE(fillsBackgroundWithContent) = [(SearchUIRowModel *)self allowAdjustmentsForConcentricity];
  }

  return fillsBackgroundWithContent;
}

- (WFContextualAction)contextualAction
{
  if ([(SearchUIRowModel *)self contextualActionLoaded])
  {
    settingBiomeStreamIdentifier = self->_contextualAction;
  }

  else
  {
    v4 = [SearchUIShortcutsUtilities commandForSettingTogglesFromRowModel:self];
    [(SearchUIRowModel *)self setContextualActionLoaded:1];
    intentMessageData = [v4 intentMessageData];

    if (intentMessageData && (v6 = objc_autoreleasePoolPush(), [v4 intentMessageData], v7 = objc_claimAutoreleasedReturnValue(), WFSpotlightResultRunnableFromData(), intentMessageData = objc_claimAutoreleasedReturnValue(), v7, objc_autoreleasePoolPop(v6), objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      settingBiomeStreamIdentifier = [intentMessageData settingBiomeStreamIdentifier];

      if (settingBiomeStreamIdentifier)
      {
        settingBiomeStreamIdentifier = intentMessageData;
        objc_storeStrong(&self->_contextualAction, intentMessageData);
        intentMessageData = settingBiomeStreamIdentifier;
      }
    }

    else
    {
      settingBiomeStreamIdentifier = 0;
    }
  }

  return settingBiomeStreamIdentifier;
}

- (void)updateWithEnvironment:(id)environment
{
  v4 = [SearchUICommandHandler hasValidHandlerForRowModel:self environment:environment];

  [(SearchUIRowModel *)self setHasValidCommandHandler:v4];
}

@end