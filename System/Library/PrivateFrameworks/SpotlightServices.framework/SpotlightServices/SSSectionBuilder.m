@interface SSSectionBuilder
+ (BOOL)supportsSection:(id)a3 queryContext:(id)a4;
+ (id)detailedRowCardSectionForCardSection:(id)a3;
+ (id)searchInAppButtonItemWithCommand:(id)a3 title:(id)a4;
+ (id)supportedBundleIds;
+ (id)visibleTextForCardSection:(id)a3 includeDescriptions:(BOOL)a4;
- (BOOL)hasEntities;
- (BOOL)isContactEntitySearch;
- (SFMutableResultSection)section;
- (SPSearchQueryContext)queryContext;
- (id)buildBridgedResult;
- (id)buildButtonItem;
- (id)buildCardSections;
- (id)buildCardSectionsWithResult:(id)a3 resultBuilder:(id)a4;
- (id)buildCollectionCardSection;
- (id)buildCollectionStyle;
- (id)buildSection;
- (id)buildTitle;
- (id)bundleId;
- (unint64_t)buildMaxInitiallyVisibleResults;
@end

@implementation SSSectionBuilder

+ (id)searchInAppButtonItemWithCommand:(id)a3 title:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_opt_new();
  [v7 setSymbolName:@"arrow.up.forward.app.fill"];
  [v7 setIsTemplate:1];
  v8 = objc_opt_new();
  [v8 setCommand:v6];

  if (v5)
  {
    [v8 setTitle:v5];
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
  v3 = [a1 supportedBundleId];
  if (v3)
  {
    v4 = [a1 supportedBundleId];
    v8[0] = v4;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  }

  else
  {
    v5 = 0;
  }

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (BOOL)supportsSection:(id)a3 queryContext:(id)a4
{
  v5 = a3;
  v6 = [a1 supportedBundleIds];
  v7 = [v5 bundleIdentifier];
  if ([v6 containsObject:v7])
  {
    v8 = 1;
  }

  else
  {
    v9 = [a1 supportedBundleIds];
    v10 = [v5 results];
    v11 = [v10 firstObject];
    v12 = [v11 sectionBundleIdentifier];
    v8 = [v9 containsObject:v12];
  }

  return v8;
}

- (BOOL)isContactEntitySearch
{
  v2 = [(SSSectionBuilder *)self queryContext];
  v3 = [v2 searchEntities];
  v4 = [v3 firstObject];
  v5 = [v4 isContactEntitySearch];

  return v5;
}

- (id)bundleId
{
  v2 = [(SSSectionBuilder *)self section];
  v3 = [v2 bundleIdentifier];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [objc_opt_class() supportedBundleIds];
    v5 = [v6 firstObject];
  }

  return v5;
}

- (BOOL)hasEntities
{
  v2 = [(SSSectionBuilder *)self queryContext];
  v3 = [v2 searchEntities];
  v4 = [v3 count] != 0;

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

  v4 = [(SSSectionBuilder *)self section];
  v5 = [v4 results];
  v6 = [v5 count];

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v7 = [v4 results];
  v8 = [v7 countByEnumeratingWithState:&v36 objects:v41 count:16];
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
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v36 + 1) + 8 * i);
        v13 = [v12 compactCard];
        if (v13)
        {
        }

        else
        {
          v14 = [v12 inlineCard];

          if (!v14)
          {

            goto LABEL_16;
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v36 objects:v41 count:16];
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
    v15 = [v4 mutableDeepCopy];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = v15;
    }

    else if (v15)
    {
      v16 = [[SFMutableResultSection alloc] initWithSection:v15];
    }

    else
    {
      v16 = objc_opt_new();
    }

    v17 = v16;
    v18 = [(SSSectionBuilder *)self buildBridgedResult];
    v19 = [v18 queryId];
    if (v19)
    {
      [v18 setQueryId:v19];
    }

    else
    {
      v20 = [(SSSectionBuilder *)self queryContext];
      [v18 setQueryId:{objc_msgSend(v20, "queryIdent")}];
    }

    v21 = [v4 bundleIdentifier];
    if ([v21 isEqual:@"com.apple.spotlight.tophits"])
    {
      v22 = [v4 results];
      v23 = [v22 count];

      if (v23 >= 2)
      {
        [v18 setShouldUseCompactDisplay:1];
        [v18 setUsesCompactDisplay:1];
      }

      if (v18)
      {
        goto LABEL_28;
      }
    }

    else
    {

      if (v18)
      {
LABEL_28:
        v24 = [(SFResultSection *)v17 bundleIdentifier];
        if (v24)
        {
          [(SFResultSection *)v17 setBundleIdentifier:v24];
        }

        else
        {
          v25 = [(SSSectionBuilder *)self bundleId];
          [(SFResultSection *)v17 setBundleIdentifier:v25];
        }

        v26 = [v18 sectionBundleIdentifier];
        if (v26)
        {
          [v18 setSectionBundleIdentifier:v26];
        }

        else
        {
          v27 = [(SFResultSection *)v17 bundleIdentifier];
          [v18 setSectionBundleIdentifier:v27];
        }

        v28 = [(SFResultSection *)v17 title];
        if (v28)
        {
          [(SFResultSection *)v17 setTitle:v28];
        }

        else
        {
          v29 = [(SSSectionBuilder *)self buildTitle];
          v30 = [v29 text];
          [(SFResultSection *)v17 setTitle:v30];
        }

        v40 = v18;
        v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v40 count:1];
        [(SFMutableResultSection *)v17 setResults:v31];

        v32 = [(SSSectionBuilder *)self buildButtonItem];
        [(SFResultSection *)v17 setButton:v32];

        [(SFResultSection *)v17 setMaxInitiallyVisibleResults:[(SSSectionBuilder *)self buildMaxInitiallyVisibleResults]];
        v33 = [v4 resultSet];
        [(SFMutableResultSection *)v17 setBackingResultSet:v33];

        v3 = v17;
        goto LABEL_40;
      }
    }

    v3 = 0;
LABEL_40:

    goto LABEL_41;
  }

  v3 = v4;
LABEL_41:

LABEL_42:
  v34 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)buildBridgedResult
{
  v31[1] = *MEMORY[0x1E69E9840];
  v3 = [(SSSectionBuilder *)self queryContext];
  v4 = [v3 queryIdent];

  v5 = [(SSSectionBuilder *)self section];
  v6 = [v5 results];
  v7 = [v6 firstObject];

  v8 = objc_opt_new();
  v9 = [v8 inlineCard];
  v10 = [v9 cardSections];
  v11 = [v10 firstObject];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v12 = [v8 compactCard];
    v13 = [v12 cardSections];
    v14 = [v13 firstObject];

    v11 = v14;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v15 = [(SSSectionBuilder *)self buildCollectionCardSection];

    v11 = v15;
  }

  v16 = [v11 cardSections];
  v17 = [v16 count];

  if (v17)
  {
    v18 = objc_opt_new();
    v31[0] = v11;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:1];
    [v18 setCardSections:v19];

    [v18 setQueryId:v4];
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
    [v8 setQueryId:v4];
    v21 = [v7 sectionBundleIdentifier];
    if (v21)
    {
      [v8 setSectionBundleIdentifier:v21];
    }

    else
    {
      v23 = [(SSSectionBuilder *)self bundleId];
      [v8 setSectionBundleIdentifier:v23];
    }

    v24 = [v7 resultBundleId];
    if (v24)
    {
      [v8 setResultBundleId:v24];
    }

    else
    {
      v25 = [v8 sectionBundleIdentifier];
      [v8 setResultBundleId:v25];
    }

    v26 = [v7 applicationBundleIdentifier];
    [v8 setApplicationBundleIdentifier:v26];

    v27 = [v5 identifier];
    v28 = [@"bridged_result_" stringByAppendingString:v27];
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
  v3 = [(SSSectionBuilder *)self section];
  v4 = [v3 maxInitiallyVisibleResults];

  v5 = [(SSSectionBuilder *)self queryContext];
  v6 = [v5 searchEntities];
  v7 = [v6 firstObject];
  v8 = [v7 isFolderSearch];

  v9 = 0;
  if (![(SSSectionBuilder *)self useHorizontallyScrollingCardSectionUI]&& (v8 & 1) == 0)
  {
    if ([v5 wantsMoreResults])
    {
      v9 = 0;
    }

    else if (![(SSSectionBuilder *)self hasEntities]&& (v4 || isMacOS()))
    {
      v9 = v4;
    }

    else
    {
      v9 = 3;
    }
  }

  return v9;
}

+ (id)detailedRowCardSectionForCardSection:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)visibleTextForCardSection:(id)a3 includeDescriptions:(BOOL)a4
{
  v4 = a4;
  v27 = *MEMORY[0x1E69E9840];
  v5 = [a1 detailedRowCardSectionForCardSection:a3];
  v6 = [v5 title];
  v7 = [v6 text];

  v8 = objc_alloc(MEMORY[0x1E696AD60]);
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = &stru_1F556FE60;
  }

  v10 = [v8 initWithString:v9];
  if (v4)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v11 = [v5 descriptions];
    v12 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
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
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v22 + 1) + 8 * i);
          v17 = [v16 text];

          if (v17)
          {
            v18 = [v16 text];
            [v10 appendString:v18];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
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
  v3 = [(SSSectionBuilder *)self section];
  v4 = [v3 button];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [(SSSectionBuilder *)self buildButtonItem];
  }

  v7 = v6;

  v8 = objc_opt_new();
  v9 = [(SSSectionBuilder *)self buildCollectionStyle];
  [v8 setCollectionStyle:v9];

  [v8 setButtonItem:v7];
  v10 = [(SSSectionBuilder *)self buildTitle];
  [v8 setTitle:v10];

  v11 = [v8 collectionStyle];
  v12 = [v11 initiallyVisibleCardSectionCount];

  v13 = [(SSSectionBuilder *)self buildCardSections];
  v14 = v13;
  if (v12)
  {
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v15 = v13;
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

        v24 = [*(*(&v36 + 1) + 8 * v22) spotlightBackingResult];
        v25 = [v24 identifier];

        if (([v20 isEqualToString:v25] & 1) == 0)
        {
          if (v19 == v12)
          {

            v18 = v23;
            goto LABEL_17;
          }

          ++v19;
          v26 = v25;

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
      v27 = [v33 collectionStyle];
      [v27 setInitiallyVisibleCardSectionCount:v18];

LABEL_20:
    }
  }

  if ([v14 count])
  {
    if (v7 && v12 && [v14 count] > v12)
    {
      v28 = [v14 subarrayWithRange:{0, v12}];

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
  v2 = [(SSSectionBuilder *)self section];
  v3 = [v2 title];
  if ([v3 length])
  {
    v4 = MEMORY[0x1E69CA3A0];
    v5 = [v2 title];
    v6 = [v4 textWithString:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)buildCardSections
{
  v3 = [(SSSectionBuilder *)self section];
  v4 = [(SSSectionBuilder *)self queryContext];
  v5 = [v3 resultSet];
  v6 = [v5 array];

  v27 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v6, "count")}];
  if ([(SSSectionBuilder *)self maxCardSections]< 1)
  {
    v7 = [(SSSectionBuilder *)self buildMaxInitiallyVisibleResults];
  }

  else
  {
    v7 = [(SSSectionBuilder *)self maxCardSections];
  }

  v26 = v7;
  v8 = [v3 button];
  if (v8)
  {
    v25 = 1;
  }

  else
  {
    v9 = [(SSSectionBuilder *)self buildButtonItem];
    v25 = v9 != 0;
  }

  v10 = [v4 searchEntities];
  v11 = [v10 firstObject];
  v12 = [v11 spotlightFilterQueries];
  v13 = +[SSFilterResult pasteboard];
  v14 = [v13 filterQueries];
  v15 = [v12 isEqual:v14];

  if (v15)
  {
    v16 = [MEMORY[0x1E695E000] standardUserDefaults];
    v17 = [v16 arrayForKey:@"SSPasteboardItemTimeOverrides"];
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
  v30 = v3;
  v31 = v4;
  v32 = self;
  v18 = v27;
  v35 = v25;
  v33 = v18;
  v34 = v26;
  v19 = v4;
  v20 = v3;
  v21 = v17;
  [v6 enumerateObjectsUsingBlock:v28];
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

- (id)buildCardSectionsWithResult:(id)a3 resultBuilder:(id)a4
{
  v21[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(SSSectionBuilder *)self buildCardSectionWithResult:v6 resultBuilder:v7];
  if (v8)
  {
    goto LABEL_4;
  }

  if ([(SSSectionBuilder *)self useHorizontallyScrollingCardSectionUI])
  {
    v8 = [v7 buildHorizontallyScrollingCardSection];
LABEL_4:
    v9 = v8;
    v10 = 0;
    goto LABEL_5;
  }

  v19 = [v6 inlineCard];
  v10 = [v19 cardSections];

  if ([v10 count])
  {
    v9 = 0;
  }

  else
  {
    v20 = [v7 buildInlineCardSections];

    v9 = 0;
    v10 = v20;
  }

LABEL_5:
  v11 = [v10 count];
  v12 = v10;
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

  v15 = [v7 buildPreviewButtonItems];
  v16 = [v14 firstObject];
  [v16 setPreviewButtonItems:v15];

  v17 = *MEMORY[0x1E69E9840];

  return v14;
}

- (id)buildButtonItem
{
  v3 = [(SSSectionBuilder *)self section];
  v4 = [v3 button];
  v5 = [v3 results];
  v6 = [v5 firstObject];
  v7 = [v6 moreResultsPunchout];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v10 = [v5 lastObject];
    v9 = [v10 moreResultsPunchout];
  }

  if (!v4)
  {
    v11 = [(SSSectionBuilder *)self queryContext];
    v12 = [v11 searchEntities];
    v13 = [v12 count];
    v14 = [(SSSectionBuilder *)self queryContext];
    v15 = v14;
    if (v13)
    {
      v16 = [v14 searchEntities];
      v17 = [v16 firstObject];
      v18 = [v17 displayString];
    }

    else
    {
      v18 = [v14 searchString];
    }

    if (v9)
    {
      v19 = [v9 userActivityData];
      v20 = [v19 activityType];
      v21 = [v20 isEqualToString:*MEMORY[0x1E6963B78]];

      if (v21)
      {
        v22 = objc_opt_new();
        v23 = [(SSSectionBuilder *)self section];
        v24 = [v23 preMergeBundleIdentifier];
        if (v24)
        {
          [v22 setApplicationBundleIdentifier:v24];
        }

        else
        {
          v25 = [(SSSectionBuilder *)self section];
          v26 = [v25 bundleIdentifier];
          [v22 setApplicationBundleIdentifier:v26];
        }

        [v22 setSearchString:v18];
      }

      else
      {
        v22 = objc_opt_new();
        [v22 setPunchout:v9];
      }

      v4 = [objc_opt_class() searchInAppButtonItemWithCommand:v22];
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
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