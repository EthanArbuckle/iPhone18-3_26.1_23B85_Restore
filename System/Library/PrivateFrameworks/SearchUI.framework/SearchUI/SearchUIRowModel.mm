@interface SearchUIRowModel
- (BOOL)adjustMarginsForConcentricity;
- (BOOL)allowBackgroundColor;
- (BOOL)fillsBackgroundWithContent;
- (BOOL)hasGridStyling;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToModel:(id)a3;
- (NSString)accessibilityIdentifier;
- (NSString)applicationBundleIdentifier;
- (NSString)coreSpotlightIdentifier;
- (NSString)displayTitle;
- (NSString)fileProviderIdentifier;
- (NSString)reuseIdentifier;
- (SFSearchResult)identifyingResult;
- (SearchUIRowModel)initWithResult:(id)a3 cardSection:(id)a4 queryId:(unint64_t)a5 itemIdentifier:(id)a6;
- (SearchUIRowModel)initWithResult:(id)a3 itemIdentifier:(id)a4;
- (SearchUIRowModel)initWithResults:(id)a3 cardSection:(id)a4 queryId:(unint64_t)a5 itemIdentifier:(id)a6;
- (SearchUIRowModel)initWithResults:(id)a3 itemIdentifier:(id)a4;
- (WFContextualAction)contextualAction;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)fetchFileProviderURLWithCompletionHandler:(id)a3;
- (void)updateWithEnvironment:(id)a3;
@end

@implementation SearchUIRowModel

- (SFSearchResult)identifyingResult
{
  v2 = [(SearchUIRowModel *)self results];
  v3 = [v2 firstObject];

  return v3;
}

- (unint64_t)hash
{
  v2 = [(SearchUIRowModel *)self itemIdentifier];
  v3 = [v2 hash];

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
  v3 = [(SearchUIRowModel *)self identifyingResult];
  v4 = [v3 applicationBundleIdentifier];

  if (!v4)
  {
    v5 = [(SearchUIRowModel *)self cardSection];
    v6 = [v5 command];

    objc_opt_class();
    v7 = (objc_opt_isKindOfClass() & 1) != 0 ? v6 : 0;
    v8 = v7;

    v4 = [v8 applicationBundleIdentifier];

    if (!v4)
    {
      v9 = [(SearchUIRowModel *)self cardSection];
      v10 = [v9 command];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = v10;
      }

      else
      {
        v11 = 0;
      }

      v12 = v11;

      v4 = [v12 fileProviderIdentifier];
      if (v4)
      {
        v13 = [v12 coreSpotlightIdentifier];

        if (v13)
        {
          v4 = [SearchUIUtilities bundleIdentifierForApp:6];
        }

        else
        {
          v4 = 0;
        }
      }
    }
  }

  return v4;
}

- (NSString)accessibilityIdentifier
{
  v2 = [(SearchUIRowModel *)self identifyingResult];
  v3 = [v2 type];

  if ((v3 - 16) > 0x13)
  {
    return @"ResultCell";
  }

  else
  {
    return &off_1E85B4108[v3 - 16]->isa;
  }
}

- (SearchUIRowModel)initWithResult:(id)a3 itemIdentifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = -[SearchUIRowModel initWithResult:cardSection:queryId:itemIdentifier:](self, "initWithResult:cardSection:queryId:itemIdentifier:", v7, 0, [v7 queryId], v6);

  return v8;
}

- (SearchUIRowModel)initWithResult:(id)a3 cardSection:(id)a4 queryId:(unint64_t)a5 itemIdentifier:(id)a6
{
  v23 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = v10;
  if (v10)
  {
    v22 = v10;
    v12 = MEMORY[0x1E695DEC8];
    v13 = a6;
    v14 = a4;
    v15 = [v12 arrayWithObjects:&v22 count:1];
    v16 = [(SearchUIRowModel *)self initWithResults:v15 cardSection:v14 queryId:a5 itemIdentifier:v13, v22, v23];

    v17 = v16;
  }

  else
  {
    v18 = a6;
    v19 = a4;
    v20 = [(SearchUIRowModel *)self initWithResults:0 cardSection:v19 queryId:a5 itemIdentifier:v18];

    v17 = v20;
  }

  return v17;
}

- (SearchUIRowModel)initWithResults:(id)a3 itemIdentifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 firstObject];
  v9 = -[SearchUIRowModel initWithResults:cardSection:queryId:itemIdentifier:](self, "initWithResults:cardSection:queryId:itemIdentifier:", v7, 0, [v8 queryId], v6);

  return v9;
}

- (SearchUIRowModel)initWithResults:(id)a3 cardSection:(id)a4 queryId:(unint64_t)a5 itemIdentifier:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v17.receiver = self;
  v17.super_class = SearchUIRowModel;
  v13 = [(SearchUIRowModel *)&v17 init];
  v14 = v13;
  if (v13)
  {
    [(SearchUIRowModel *)v13 setResults:v10];
    v15 = [v10 firstObject];
    [(SearchUIRowModel *)v14 setIdentifyingResult:v15];

    [(SearchUIRowModel *)v14 setCardSection:v11];
    [(SearchUIRowModel *)v14 setItemIdentifier:v12];
    [(SearchUIRowModel *)v14 setFileProviderURLFetched:0];
    [(SearchUIRowModel *)v14 setAllowAdjustmentsForConcentricity:1];
    v14->_queryId = a5;
  }

  return v14;
}

- (BOOL)fillsBackgroundWithContent
{
  v2 = [(SearchUIRowModel *)self backgroundColor];
  v3 = v2 != 0;

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
    v3 = [(SearchUIRowModel *)self identifyingResult];
    v4 = [v3 usesCompactDisplay];

    if (!v4)
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
  v3 = [(SearchUIRowModel *)self cardSection];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [(SearchUIRowModel *)self cardSection];
    v6 = [v5 title];
    if (v6)
    {
      v7 = 0;
    }

    else
    {
      v9 = [v5 footnote];
      v7 = v9 == 0;
    }

    v10 = [v5 thumbnail];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = 0;
    }

    else
    {
      v12 = [v5 thumbnail];
      objc_opt_class();
      v13 = objc_opt_isKindOfClass();

      v11 = v13 ^ 1;
    }

    v14 = [v5 useAppIconMetrics];
    v8 = v14 | (v7 | v11) ^ 1;
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

- (BOOL)isEqualToModel:(id)a3
{
  v6 = a3;
  v7 = v6;
  if (v6 != self)
  {
    identifyingResult = self->_identifyingResult;
    v9 = [(SearchUIRowModel *)v6 identifyingResult];
    if (identifyingResult != v9)
    {
      v10 = self->_identifyingResult;
      v3 = [(SearchUIRowModel *)v7 identifyingResult];
      if (![(SFSearchResult *)v10 isEqual:v3])
      {
        v11 = 0;
        goto LABEL_15;
      }
    }

    cardSection = self->_cardSection;
    v13 = [(SearchUIRowModel *)v7 cardSection];
    if (cardSection == v13 || (v14 = self->_cardSection, [(SearchUIRowModel *)v7 cardSection], v4 = objc_claimAutoreleasedReturnValue(), [(SFCardSection *)v14 isEqual:v4]))
    {
      results = self->_results;
      v16 = [(SearchUIRowModel *)v7 results];
      v17 = v16;
      if (results == v16)
      {

        v11 = 1;
      }

      else
      {
        v18 = self->_results;
        v19 = [(SearchUIRowModel *)v7 results];
        v11 = [(NSArray *)v18 isEqual:v19];
      }

      if (cardSection == v13)
      {
LABEL_14:

        if (identifyingResult == v9)
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(SearchUIRowModel *)self itemIdentifier];
    v7 = [v5 itemIdentifier];

    v8 = [v6 isEqualToString:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(SearchUIRowModel *)self results];
  [v4 setResults:v5];

  v6 = [(SearchUIRowModel *)self cardSection];
  [v4 setCardSection:v6];

  [v4 setQueryId:{-[SearchUIRowModel queryId](self, "queryId")}];
  v7 = [(SearchUIRowModel *)self itemIdentifier];
  [v4 setItemIdentifier:v7];

  [v4 setCornerMask:{-[SearchUIRowModel cornerMask](self, "cornerMask")}];
  [v4 setHasCustomCornerRounding:{-[SearchUIRowModel hasCustomCornerRounding](self, "hasCustomCornerRounding")}];
  [v4 setHasValidCommandHandler:{-[SearchUIRowModel hasValidCommandHandler](self, "hasValidCommandHandler")}];
  [v4 setAllowAdjustmentsForConcentricity:{-[SearchUIRowModel allowAdjustmentsForConcentricity](self, "allowAdjustmentsForConcentricity")}];
  v8 = [(SearchUIRowModel *)self contextualAction];
  [v4 setContextualAction:v8];

  [v4 setContextualActionLoaded:{-[SearchUIRowModel contextualActionLoaded](self, "contextualActionLoaded")}];
  return v4;
}

- (NSString)coreSpotlightIdentifier
{
  v3 = [(SearchUIRowModel *)self identifyingResult];
  v4 = [v3 identifier];

  if (!v4)
  {
    v5 = [(SearchUIRowModel *)self cardSection];
    v6 = [v5 command];

    objc_opt_class();
    v7 = (objc_opt_isKindOfClass() & 1) != 0 ? v6 : 0;
    v8 = v7;

    v4 = [v8 coreSpotlightIdentifier];

    if (!v4)
    {
      v9 = [(SearchUIRowModel *)self cardSection];
      v10 = [v9 command];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = v10;
      }

      else
      {
        v11 = 0;
      }

      v12 = v11;

      v4 = [v12 coreSpotlightIdentifier];
    }
  }

  return v4;
}

- (NSString)displayTitle
{
  v2 = [(SearchUIRowModel *)self identifyingResult];
  v3 = [v2 title];
  v4 = [v3 text];

  return v4;
}

- (NSString)fileProviderIdentifier
{
  v3 = [(SearchUIRowModel *)self identifyingResult];
  v4 = [v3 fileProviderIdentifier];

  if (!v4)
  {
    v5 = [(SearchUIRowModel *)self cardSection];
    v6 = [v5 command];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;

    v4 = [v8 fileProviderIdentifier];
  }

  return v4;
}

- (void)fetchFileProviderURLWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(SearchUIRowModel *)self fileProviderFetchedURL];
  if (v5 || [(SearchUIRowModel *)self fileProviderURLFetched])
  {
    v4[2](v4, v5);
  }

  else
  {
    v6 = [(SearchUIRowModel *)self cardSection];
    v7 = [v6 command];

    v8 = [v7 coreSpotlightIdentifier];
    v9 = [v7 fileProviderIdentifier];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __62__SearchUIRowModel_fetchFileProviderURLWithCompletionHandler___block_invoke;
    v10[3] = &unk_1E85B40E8;
    v10[4] = self;
    v11 = v4;
    [SearchUIUtilities fetchURLForCoreSpotlightIdentifier:v8 fileProviderIdentifier:v9 completionHandler:v10];
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
  v3 = [(SearchUIRowModel *)self fillsBackgroundWithContent];
  if (v3)
  {

    LOBYTE(v3) = [(SearchUIRowModel *)self allowAdjustmentsForConcentricity];
  }

  return v3;
}

- (WFContextualAction)contextualAction
{
  if ([(SearchUIRowModel *)self contextualActionLoaded])
  {
    v3 = self->_contextualAction;
  }

  else
  {
    v4 = [SearchUIShortcutsUtilities commandForSettingTogglesFromRowModel:self];
    [(SearchUIRowModel *)self setContextualActionLoaded:1];
    v5 = [v4 intentMessageData];

    if (v5 && (v6 = objc_autoreleasePoolPush(), [v4 intentMessageData], v7 = objc_claimAutoreleasedReturnValue(), WFSpotlightResultRunnableFromData(), v5 = objc_claimAutoreleasedReturnValue(), v7, objc_autoreleasePoolPop(v6), objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v3 = [v5 settingBiomeStreamIdentifier];

      if (v3)
      {
        v3 = v5;
        objc_storeStrong(&self->_contextualAction, v5);
        v5 = v3;
      }
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (void)updateWithEnvironment:(id)a3
{
  v4 = [SearchUICommandHandler hasValidHandlerForRowModel:self environment:a3];

  [(SearchUIRowModel *)self setHasValidCommandHandler:v4];
}

@end