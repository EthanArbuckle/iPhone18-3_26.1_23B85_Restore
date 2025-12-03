@interface SSSectionBuilder
+ (BOOL)supportsSection:(id)section queryContext:(id)context;
+ (id)detailedRowCardSectionForCardSection:(id)section;
+ (id)searchInAppButtonItemWithCommand:(id)command title:(id)title;
+ (id)supportedBundleIds;
+ (id)visibleTextForCardSection:(id)section includeDescriptions:(BOOL)descriptions;
- (BOOL)hasEntities;
- (BOOL)isContactEntitySearch;
- (SFMutableResultSection)section;
- (SPSearchQueryContext)queryContext;
- (id)buildBridgedResult;
- (id)buildButtonItem;
- (id)buildCardSections;
- (id)buildCardSectionsWithResult:(id)result resultBuilder:(id)builder;
- (id)buildCollectionCardSection;
- (id)buildCollectionStyle;
- (id)buildSection;
- (id)buildTitle;
- (id)bundleId;
- (unint64_t)buildMaxInitiallyVisibleResults;
@end

@implementation SSSectionBuilder

+ (id)searchInAppButtonItemWithCommand:(id)command title:(id)title
{
  titleCopy = title;
  commandCopy = command;
  v7 = objc_opt_new();
  [v7 setSymbolName:@"arrow.up.forward.app.fill"];
  [v7 setIsTemplate:1];
  v8 = objc_opt_new();
  [v8 setCommand:commandCopy];

  if (titleCopy)
  {
    [v8 setTitle:titleCopy];
  }

  else
  {
    v9 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:@"SEARCH_IN_APP_BUTTON_TITLE" value:&stru_1F556FE60 table:@"SpotlightServices"];
    [v8 setTitle:v10];
  }

  [v8 setImage:v7];

  return v8;
}

+ (id)supportedBundleIds
{
  v8[1] = *MEMORY[0x1E69E9840];
  supportedBundleId = [self supportedBundleId];
  if (supportedBundleId)
  {
    supportedBundleId2 = [self supportedBundleId];
    v8[0] = supportedBundleId2;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  }

  else
  {
    v5 = 0;
  }

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (BOOL)supportsSection:(id)section queryContext:(id)context
{
  sectionCopy = section;
  supportedBundleIds = [self supportedBundleIds];
  bundleIdentifier = [sectionCopy bundleIdentifier];
  if ([supportedBundleIds containsObject:bundleIdentifier])
  {
    v8 = 1;
  }

  else
  {
    supportedBundleIds2 = [self supportedBundleIds];
    results = [sectionCopy results];
    firstObject = [results firstObject];
    sectionBundleIdentifier = [firstObject sectionBundleIdentifier];
    v8 = [supportedBundleIds2 containsObject:sectionBundleIdentifier];
  }

  return v8;
}

- (BOOL)isContactEntitySearch
{
  queryContext = [(SSSectionBuilder *)self queryContext];
  searchEntities = [queryContext searchEntities];
  firstObject = [searchEntities firstObject];
  isContactEntitySearch = [firstObject isContactEntitySearch];

  return isContactEntitySearch;
}

- (id)bundleId
{
  section = [(SSSectionBuilder *)self section];
  bundleIdentifier = [section bundleIdentifier];
  v4 = bundleIdentifier;
  if (bundleIdentifier)
  {
    firstObject = bundleIdentifier;
  }

  else
  {
    supportedBundleIds = [objc_opt_class() supportedBundleIds];
    firstObject = [supportedBundleIds firstObject];
  }

  return firstObject;
}

- (BOOL)hasEntities
{
  queryContext = [(SSSectionBuilder *)self queryContext];
  searchEntities = [queryContext searchEntities];
  v4 = [searchEntities count] != 0;

  return v4;
}

- (id)buildSection
{
  v42 = *MEMORY[0x1E69E9840];
  if ([(SSSectionBuilder *)self shouldSkipSection])
  {
    v3 = 0;
    goto LABEL_42;
  }

  section = [(SSSectionBuilder *)self section];
  results = [section results];
  v6 = [results count];

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  results2 = [section results];
  v8 = [results2 countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v37;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v37 != v10)
        {
          objc_enumerationMutation(results2);
        }

        v12 = *(*(&v36 + 1) + 8 * i);
        compactCard = [v12 compactCard];
        if (compactCard)
        {
        }

        else
        {
          inlineCard = [v12 inlineCard];

          if (!inlineCard)
          {

            goto LABEL_16;
          }
        }
      }

      v9 = [results2 countByEnumeratingWithState:&v36 objects:v41 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  if (!v6)
  {
LABEL_16:
    mutableDeepCopy = [section mutableDeepCopy];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = mutableDeepCopy;
    }

    else if (mutableDeepCopy)
    {
      v16 = [[SFMutableResultSection alloc] initWithSection:mutableDeepCopy];
    }

    else
    {
      v16 = objc_opt_new();
    }

    v17 = v16;
    buildBridgedResult = [(SSSectionBuilder *)self buildBridgedResult];
    queryId = [buildBridgedResult queryId];
    if (queryId)
    {
      [buildBridgedResult setQueryId:queryId];
    }

    else
    {
      queryContext = [(SSSectionBuilder *)self queryContext];
      [buildBridgedResult setQueryId:{objc_msgSend(queryContext, "queryIdent")}];
    }

    bundleIdentifier = [section bundleIdentifier];
    if ([bundleIdentifier isEqual:@"com.apple.spotlight.tophits"])
    {
      results3 = [section results];
      v23 = [results3 count];

      if (v23 >= 2)
      {
        [buildBridgedResult setShouldUseCompactDisplay:1];
        [buildBridgedResult setUsesCompactDisplay:1];
      }

      if (buildBridgedResult)
      {
        goto LABEL_28;
      }
    }

    else
    {

      if (buildBridgedResult)
      {
LABEL_28:
        bundleIdentifier2 = [(SFResultSection *)v17 bundleIdentifier];
        if (bundleIdentifier2)
        {
          [(SFResultSection *)v17 setBundleIdentifier:bundleIdentifier2];
        }

        else
        {
          bundleId = [(SSSectionBuilder *)self bundleId];
          [(SFResultSection *)v17 setBundleIdentifier:bundleId];
        }

        sectionBundleIdentifier = [buildBridgedResult sectionBundleIdentifier];
        if (sectionBundleIdentifier)
        {
          [buildBridgedResult setSectionBundleIdentifier:sectionBundleIdentifier];
        }

        else
        {
          bundleIdentifier3 = [(SFResultSection *)v17 bundleIdentifier];
          [buildBridgedResult setSectionBundleIdentifier:bundleIdentifier3];
        }

        title = [(SFResultSection *)v17 title];
        if (title)
        {
          [(SFResultSection *)v17 setTitle:title];
        }

        else
        {
          buildTitle = [(SSSectionBuilder *)self buildTitle];
          text = [buildTitle text];
          [(SFResultSection *)v17 setTitle:text];
        }

        v40 = buildBridgedResult;
        v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v40 count:1];
        [(SFMutableResultSection *)v17 setResults:v31];

        buildButtonItem = [(SSSectionBuilder *)self buildButtonItem];
        [(SFResultSection *)v17 setButton:buildButtonItem];

        [(SFResultSection *)v17 setMaxInitiallyVisibleResults:[(SSSectionBuilder *)self buildMaxInitiallyVisibleResults]];
        resultSet = [section resultSet];
        [(SFMutableResultSection *)v17 setBackingResultSet:resultSet];

        v3 = v17;
        goto LABEL_40;
      }
    }

    v3 = 0;
LABEL_40:

    goto LABEL_41;
  }

  v3 = section;
LABEL_41:

LABEL_42:
  v34 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)buildBridgedResult
{
  v31[1] = *MEMORY[0x1E69E9840];
  queryContext = [(SSSectionBuilder *)self queryContext];
  queryIdent = [queryContext queryIdent];

  section = [(SSSectionBuilder *)self section];
  results = [section results];
  firstObject = [results firstObject];

  v8 = objc_opt_new();
  inlineCard = [v8 inlineCard];
  cardSections = [inlineCard cardSections];
  firstObject2 = [cardSections firstObject];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    compactCard = [v8 compactCard];
    cardSections2 = [compactCard cardSections];
    firstObject3 = [cardSections2 firstObject];

    firstObject2 = firstObject3;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    buildCollectionCardSection = [(SSSectionBuilder *)self buildCollectionCardSection];

    firstObject2 = buildCollectionCardSection;
  }

  cardSections3 = [firstObject2 cardSections];
  v17 = [cardSections3 count];

  if (v17)
  {
    v18 = objc_opt_new();
    v31[0] = firstObject2;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:1];
    [v18 setCardSections:v19];

    [v18 setQueryId:queryIdent];
    [v8 setInlineCard:v18];
    if ([(SSSectionBuilder *)self isContactEntitySearch])
    {
      v20 = 0;
    }

    else
    {
      v20 = v18;
    }

    [v8 setCompactCard:v20];
    [v8 setQueryId:queryIdent];
    sectionBundleIdentifier = [firstObject sectionBundleIdentifier];
    if (sectionBundleIdentifier)
    {
      [v8 setSectionBundleIdentifier:sectionBundleIdentifier];
    }

    else
    {
      bundleId = [(SSSectionBuilder *)self bundleId];
      [v8 setSectionBundleIdentifier:bundleId];
    }

    resultBundleId = [firstObject resultBundleId];
    if (resultBundleId)
    {
      [v8 setResultBundleId:resultBundleId];
    }

    else
    {
      sectionBundleIdentifier2 = [v8 sectionBundleIdentifier];
      [v8 setResultBundleId:sectionBundleIdentifier2];
    }

    applicationBundleIdentifier = [firstObject applicationBundleIdentifier];
    [v8 setApplicationBundleIdentifier:applicationBundleIdentifier];

    identifier = [section identifier];
    v28 = [@"bridged_result_" stringByAppendingString:identifier];
    [v8 setIdentifier:v28];

    v22 = v8;
  }

  else
  {
    v22 = 0;
  }

  v29 = *MEMORY[0x1E69E9840];

  return v22;
}

- (id)buildCollectionStyle
{
  if ([(SSSectionBuilder *)self useHorizontallyScrollingCardSectionUI])
  {
    v3 = objc_opt_new();
    [v3 setNumberOfRows:1];
  }

  else
  {
    v3 = objc_opt_new();
    [v3 setDrawPlattersIfNecessary:1];
  }

  [v3 setInitiallyVisibleCardSectionCount:{-[SSSectionBuilder buildMaxInitiallyVisibleResults](self, "buildMaxInitiallyVisibleResults")}];

  return v3;
}

- (unint64_t)buildMaxInitiallyVisibleResults
{
  section = [(SSSectionBuilder *)self section];
  maxInitiallyVisibleResults = [section maxInitiallyVisibleResults];

  queryContext = [(SSSectionBuilder *)self queryContext];
  searchEntities = [queryContext searchEntities];
  firstObject = [searchEntities firstObject];
  isFolderSearch = [firstObject isFolderSearch];

  v9 = 0;
  if (![(SSSectionBuilder *)self useHorizontallyScrollingCardSectionUI]&& (isFolderSearch & 1) == 0)
  {
    if ([queryContext wantsMoreResults])
    {
      v9 = 0;
    }

    else if (![(SSSectionBuilder *)self hasEntities]&& (maxInitiallyVisibleResults || isMacOS()))
    {
      v9 = maxInitiallyVisibleResults;
    }

    else
    {
      v9 = 3;
    }
  }

  return v9;
}

+ (id)detailedRowCardSectionForCardSection:(id)section
{
  sectionCopy = section;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = sectionCopy;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)visibleTextForCardSection:(id)section includeDescriptions:(BOOL)descriptions
{
  descriptionsCopy = descriptions;
  v27 = *MEMORY[0x1E69E9840];
  v5 = [self detailedRowCardSectionForCardSection:section];
  title = [v5 title];
  text = [title text];

  v8 = objc_alloc(MEMORY[0x1E696AD60]);
  if (text)
  {
    v9 = text;
  }

  else
  {
    v9 = &stru_1F556FE60;
  }

  v10 = [v8 initWithString:v9];
  if (descriptionsCopy)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    descriptions = [v5 descriptions];
    v12 = [descriptions countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v23;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v23 != v14)
          {
            objc_enumerationMutation(descriptions);
          }

          v16 = *(*(&v22 + 1) + 8 * i);
          text2 = [v16 text];

          if (text2)
          {
            text3 = [v16 text];
            [v10 appendString:text3];
          }
        }

        v13 = [descriptions countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v13);
    }
  }

  v19 = [v10 copy];

  v20 = *MEMORY[0x1E69E9840];

  return v19;
}

- (id)buildCollectionCardSection
{
  v41 = *MEMORY[0x1E69E9840];
  section = [(SSSectionBuilder *)self section];
  button = [section button];
  v5 = button;
  if (button)
  {
    buildButtonItem = button;
  }

  else
  {
    buildButtonItem = [(SSSectionBuilder *)self buildButtonItem];
  }

  v7 = buildButtonItem;

  v8 = objc_opt_new();
  buildCollectionStyle = [(SSSectionBuilder *)self buildCollectionStyle];
  [v8 setCollectionStyle:buildCollectionStyle];

  [v8 setButtonItem:v7];
  buildTitle = [(SSSectionBuilder *)self buildTitle];
  [v8 setTitle:buildTitle];

  collectionStyle = [v8 collectionStyle];
  initiallyVisibleCardSectionCount = [collectionStyle initiallyVisibleCardSectionCount];

  buildCardSections = [(SSSectionBuilder *)self buildCardSections];
  v14 = buildCardSections;
  if (initiallyVisibleCardSectionCount)
  {
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v15 = buildCardSections;
    v16 = [v15 countByEnumeratingWithState:&v36 objects:v40 count:16];
    if (!v16)
    {
      v20 = v15;
      goto LABEL_20;
    }

    v17 = v16;
    v32 = v14;
    v33 = v8;
    v34 = v7;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = *v37;
    while (2)
    {
      v22 = 0;
      v23 = v18;
      v35 = v18 + v17;
      do
      {
        if (*v37 != v21)
        {
          objc_enumerationMutation(v15);
        }

        spotlightBackingResult = [*(*(&v36 + 1) + 8 * v22) spotlightBackingResult];
        identifier = [spotlightBackingResult identifier];

        if (([v20 isEqualToString:identifier] & 1) == 0)
        {
          if (v19 == initiallyVisibleCardSectionCount)
          {

            v18 = v23;
            goto LABEL_17;
          }

          ++v19;
          v26 = identifier;

          v20 = v26;
        }

        ++v23;

        ++v22;
      }

      while (v17 != v22);
      v17 = [v15 countByEnumeratingWithState:&v36 objects:v40 count:16];
      v18 = v35;
      if (v17)
      {
        continue;
      }

      break;
    }

LABEL_17:

    v7 = v34;
    v14 = v32;
    v8 = v33;
    if (v20)
    {
      collectionStyle2 = [v33 collectionStyle];
      [collectionStyle2 setInitiallyVisibleCardSectionCount:v18];

LABEL_20:
    }
  }

  if ([v14 count])
  {
    if (v7 && initiallyVisibleCardSectionCount && [v14 count] > initiallyVisibleCardSectionCount)
    {
      v28 = [v14 subarrayWithRange:{0, initiallyVisibleCardSectionCount}];

      v14 = v28;
    }

    [v8 setCardSections:v14];
    [objc_opt_class() disambiguateUIIfNecessary:v14];
    v29 = v8;
  }

  else
  {
    v29 = 0;
  }

  v30 = *MEMORY[0x1E69E9840];

  return v29;
}

- (id)buildTitle
{
  section = [(SSSectionBuilder *)self section];
  title = [section title];
  if ([title length])
  {
    v4 = MEMORY[0x1E69CA3A0];
    title2 = [section title];
    v6 = [v4 textWithString:title2];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)buildCardSections
{
  section = [(SSSectionBuilder *)self section];
  queryContext = [(SSSectionBuilder *)self queryContext];
  resultSet = [section resultSet];
  array = [resultSet array];

  v27 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(array, "count")}];
  if ([(SSSectionBuilder *)self maxCardSections]< 1)
  {
    buildMaxInitiallyVisibleResults = [(SSSectionBuilder *)self buildMaxInitiallyVisibleResults];
  }

  else
  {
    buildMaxInitiallyVisibleResults = [(SSSectionBuilder *)self maxCardSections];
  }

  v26 = buildMaxInitiallyVisibleResults;
  button = [section button];
  if (button)
  {
    v25 = 1;
  }

  else
  {
    buildButtonItem = [(SSSectionBuilder *)self buildButtonItem];
    v25 = buildButtonItem != 0;
  }

  searchEntities = [queryContext searchEntities];
  firstObject = [searchEntities firstObject];
  spotlightFilterQueries = [firstObject spotlightFilterQueries];
  v13 = +[SSFilterResult pasteboard];
  filterQueries = [v13 filterQueries];
  v15 = [spotlightFilterQueries isEqual:filterQueries];

  if (v15)
  {
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    v17 = [standardUserDefaults arrayForKey:@"SSPasteboardItemTimeOverrides"];
  }

  else
  {
    v17 = 0;
  }

  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __37__SSSectionBuilder_buildCardSections__block_invoke;
  v28[3] = &unk_1E8595558;
  v29 = v17;
  v30 = section;
  v31 = queryContext;
  selfCopy = self;
  v18 = v27;
  v35 = v25;
  v33 = v18;
  v34 = v26;
  v19 = queryContext;
  v20 = section;
  v21 = v17;
  [array enumerateObjectsUsingBlock:v28];
  v22 = v33;
  v23 = v18;

  return v18;
}

void __37__SSSectionBuilder_buildCardSections__block_invoke(uint64_t a1, void *a2, unint64_t a3, _BYTE *a4)
{
  v30 = *MEMORY[0x1E69E9840];
  v7 = a2;
  if ([*(a1 + 32) count] > a3)
  {
    v8 = [*(a1 + 32) objectAtIndexedSubscript:a3];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [MEMORY[0x1E695DEE8] currentCalendar];
      v10 = [MEMORY[0x1E695DF00] now];
      v11 = [v9 components:28 fromDate:v10];

      v12 = [v9 components:96 fromDate:v8];
      [v12 setYear:{objc_msgSend(v11, "year")}];
      [v12 setMonth:{objc_msgSend(v11, "month")}];
      [v12 setDay:{objc_msgSend(v11, "day")}];
      v13 = [v9 dateFromComponents:v12];

      v14 = [v7 fullAttributeSet];
      [v14 setAttribute:v13 forKey:*MEMORY[0x1E6964548]];

      v8 = v13;
    }
  }

  v15 = [*(a1 + 40) bundleIdentifier];
  v16 = [v15 isEqual:@"com.apple.spotlight.tophits"];

  v17 = [SSResultBuilder resultBuilderWithResult:v7 preferAppVendedView:v16];
  [v17 setQueryContext:*(a1 + 48)];
  [v17 setIsTopHit:v16];
  v18 = [*(a1 + 56) buildCardSectionsWithResult:v7 resultBuilder:v17];
  if ([v18 count])
  {
    [*(a1 + 64) addObjectsFromArray:v18];
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v19 = v18;
    v20 = [v19 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v26;
      do
      {
        v23 = 0;
        do
        {
          if (*v26 != v22)
          {
            objc_enumerationMutation(v19);
          }

          [*(*(&v25 + 1) + 8 * v23++) setSpotlightBackingResult:{v7, v25}];
        }

        while (v21 != v23);
        v21 = [v19 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v21);
    }
  }

  if (*(a1 + 80) == 1 && *(a1 + 72) >= 1 && [*(a1 + 64) count] >= *(a1 + 72))
  {
    *a4 = 1;
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (id)buildCardSectionsWithResult:(id)result resultBuilder:(id)builder
{
  v21[1] = *MEMORY[0x1E69E9840];
  resultCopy = result;
  builderCopy = builder;
  buildHorizontallyScrollingCardSection = [(SSSectionBuilder *)self buildCardSectionWithResult:resultCopy resultBuilder:builderCopy];
  if (buildHorizontallyScrollingCardSection)
  {
    goto LABEL_4;
  }

  if ([(SSSectionBuilder *)self useHorizontallyScrollingCardSectionUI])
  {
    buildHorizontallyScrollingCardSection = [builderCopy buildHorizontallyScrollingCardSection];
LABEL_4:
    v9 = buildHorizontallyScrollingCardSection;
    cardSections = 0;
    goto LABEL_5;
  }

  inlineCard = [resultCopy inlineCard];
  cardSections = [inlineCard cardSections];

  if ([cardSections count])
  {
    v9 = 0;
  }

  else
  {
    buildInlineCardSections = [builderCopy buildInlineCardSections];

    v9 = 0;
    cardSections = buildInlineCardSections;
  }

LABEL_5:
  v11 = [cardSections count];
  v12 = cardSections;
  if (v11)
  {
LABEL_6:
    v13 = v12;
    goto LABEL_9;
  }

  if (!v9)
  {
    v12 = 0;
    goto LABEL_6;
  }

  v21[0] = v9;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
LABEL_9:
  v14 = v13;

  buildPreviewButtonItems = [builderCopy buildPreviewButtonItems];
  firstObject = [v14 firstObject];
  [firstObject setPreviewButtonItems:buildPreviewButtonItems];

  v17 = *MEMORY[0x1E69E9840];

  return v14;
}

- (id)buildButtonItem
{
  section = [(SSSectionBuilder *)self section];
  button = [section button];
  results = [section results];
  firstObject = [results firstObject];
  moreResultsPunchout = [firstObject moreResultsPunchout];
  v8 = moreResultsPunchout;
  if (moreResultsPunchout)
  {
    moreResultsPunchout2 = moreResultsPunchout;
  }

  else
  {
    lastObject = [results lastObject];
    moreResultsPunchout2 = [lastObject moreResultsPunchout];
  }

  if (!button)
  {
    queryContext = [(SSSectionBuilder *)self queryContext];
    searchEntities = [queryContext searchEntities];
    v13 = [searchEntities count];
    queryContext2 = [(SSSectionBuilder *)self queryContext];
    v15 = queryContext2;
    if (v13)
    {
      searchEntities2 = [queryContext2 searchEntities];
      firstObject2 = [searchEntities2 firstObject];
      displayString = [firstObject2 displayString];
    }

    else
    {
      displayString = [queryContext2 searchString];
    }

    if (moreResultsPunchout2)
    {
      userActivityData = [moreResultsPunchout2 userActivityData];
      activityType = [userActivityData activityType];
      v21 = [activityType isEqualToString:*MEMORY[0x1E6963B78]];

      if (v21)
      {
        v22 = objc_opt_new();
        section2 = [(SSSectionBuilder *)self section];
        preMergeBundleIdentifier = [section2 preMergeBundleIdentifier];
        if (preMergeBundleIdentifier)
        {
          [v22 setApplicationBundleIdentifier:preMergeBundleIdentifier];
        }

        else
        {
          section3 = [(SSSectionBuilder *)self section];
          bundleIdentifier = [section3 bundleIdentifier];
          [v22 setApplicationBundleIdentifier:bundleIdentifier];
        }

        [v22 setSearchString:displayString];
      }

      else
      {
        v22 = objc_opt_new();
        [v22 setPunchout:moreResultsPunchout2];
      }

      button = [objc_opt_class() searchInAppButtonItemWithCommand:v22];
    }

    else
    {
      button = 0;
    }
  }

  return button;
}

- (SFMutableResultSection)section
{
  WeakRetained = objc_loadWeakRetained(&self->_section);

  return WeakRetained;
}

- (SPSearchQueryContext)queryContext
{
  WeakRetained = objc_loadWeakRetained(&self->_queryContext);

  return WeakRetained;
}

@end