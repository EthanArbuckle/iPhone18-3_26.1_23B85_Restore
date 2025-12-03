@interface SearchUISectionModel
+ (SearchUISectionModel)sectionModelWithGridRowModels:(id)models numberOfColumns:(int64_t)columns gridStyle:(int)style section:(id)section expandedCollectionSections:(id)sections;
+ (SearchUISectionModel)sectionModelWithRows:(id)rows drawPlattersIfNecessary:(BOOL)necessary section:(id)section expandedCollectionSections:(id)sections;
+ (SearchUISectionModel)sectionModelWithScrollingRowModels:(id)models numberOfRows:(int64_t)rows section:(id)section;
- (BOOL)isCollectionStyleRow;
- (BOOL)isEqual:(id)equal;
- (BOOL)needsHeader;
- (BOOL)needsHeaderSeparator;
- (BOOL)shouldInsetGroupedCollectionStyle;
- (BOOL)shouldInsetGroupedCollectionStyleWithAttributes:(id)attributes;
- (NSDirectionalEdgeInsets)headerInsetsWithAttributes:(id)attributes;
- (NSDirectionalEdgeInsets)sectionInsetsWithAttributes:(id)attributes sectionIndex:(unint64_t)index;
- (SearchUISectionModel)initWithRowModels:(id)models section:(id)section;
- (double)horizontalInsetWithAttributes:(id)attributes forSupplementary:(BOOL)supplementary;
- (id)backgroundColor;
- (id)collectionStyleRow;
- (id)copyWithRowModels:(id)models;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)layoutSectionForEnvironment:(id)environment attributes:(id)attributes dataSource:(id)source;
- (int)separatorStyleForIndex:(unint64_t)index shouldDrawTopAndBottomSeparators:(BOOL)separators;
- (int64_t)sectionBackgroundStyleWithAttributes:(id)attributes;
- (unint64_t)hash;
- (void)prepareForSnapshot;
- (void)reloadCornerMaskingOverrideWithAttributes:(id)attributes;
@end

@implementation SearchUISectionModel

- (id)backgroundColor
{
  asyncLoader = [(SearchUISectionModel *)self asyncLoader];
  if (asyncLoader)
  {
    asyncLoader2 = [(SearchUISectionModel *)self asyncLoader];
    backgroundColor = [asyncLoader2 backgroundColor];
  }

  else
  {
    asyncLoader2 = [(SearchUISectionModel *)self section];
    collectionSection = [asyncLoader2 collectionSection];
    backgroundColor = [collectionSection backgroundColor];
  }

  rowModels = [(SearchUISectionModel *)self rowModels];
  firstObject = [rowModels firstObject];
  identifyingResult = [firstObject identifyingResult];
  sectionBundleIdentifier = [identifyingResult sectionBundleIdentifier];

  if (backgroundColor_onceToken != -1)
  {
    [SearchUISectionModel backgroundColor];
  }

  if ([backgroundColor_legacyAllowList containsObject:sectionBundleIdentifier] && !backgroundColor)
  {
    if ([rowModels count] < 2)
    {
      goto LABEL_12;
    }

    backgroundColor2 = [firstObject backgroundColor];

    if (!backgroundColor2)
    {
      goto LABEL_12;
    }

    backgroundColor = [firstObject backgroundColor];
  }

  if (backgroundColor)
  {
    goto LABEL_21;
  }

LABEL_12:
  section = [(SearchUISectionModel *)self section];
  resultSection = [section resultSection];
  results = [resultSection results];

  firstObject2 = [results firstObject];
  v16 = [SearchUIUtilities cardForRenderingResult:firstObject2];

  if ([rowModels count] >= 2 && objc_msgSend(results, "count") == 1 && (objc_msgSend(firstObject, "isTopHit") & 1) != 0)
  {
    backgroundColor = [v16 backgroundColor];

    if (backgroundColor)
    {
      goto LABEL_21;
    }
  }

  else
  {
  }

  if ([(SearchUISectionModel *)self shouldInsetGroupedCollectionStyle])
  {
    backgroundColor = +[SearchUIBackgroundColorUtilities disambiguationInnerPlatterColor];
  }

  else
  {
    backgroundColor = 0;
  }

LABEL_21:

  return backgroundColor;
}

- (BOOL)shouldInsetGroupedCollectionStyle
{
  collectionStyleRow = [(SearchUISectionModel *)self collectionStyleRow];
  v3 = collectionStyleRow;
  if (collectionStyleRow)
  {
    isInsetGrouped = [collectionStyleRow isInsetGrouped];
  }

  else
  {
    isInsetGrouped = 0;
  }

  return isInsetGrouped;
}

void __39__SearchUISectionModel_backgroundColor__block_invoke()
{
  v0 = backgroundColor_legacyAllowList;
  backgroundColor_legacyAllowList = &unk_1F55DD4C0;
}

- (void)prepareForSnapshot
{
  asyncLoader = [(SearchUISectionModel *)self asyncLoader];

  if (!asyncLoader)
  {
    rowModels = [(SearchUISectionModel *)self rowModels];
    firstObject = [rowModels firstObject];
    results = [firstObject results];
    firstObject2 = [results firstObject];
    rowModels2 = [(SearchUISectionModel *)self rowModels];
    firstObject3 = [rowModels2 firstObject];
    v10 = +[SearchUIAsyncSectionLoader asyncLoaderSupportingSectionModel:result:queryId:](SearchUIAsyncSectionLoader, "asyncLoaderSupportingSectionModel:result:queryId:", self, firstObject2, [firstObject3 queryId]);
    asyncLoader = self->_asyncLoader;
    self->_asyncLoader = v10;

    asyncLoader2 = [(SearchUISectionModel *)self asyncLoader];

    if (asyncLoader2)
    {
      asyncLoader3 = [(SearchUISectionModel *)self asyncLoader];
      [asyncLoader3 preloadIfNecessary];
    }
  }
}

- (unint64_t)hash
{
  section = [(SearchUISectionModel *)self section];
  sectionIdentifier = [section sectionIdentifier];
  v4 = [sectionIdentifier hash];

  return v4;
}

- (BOOL)needsHeaderSeparator
{
  rowModels = [(SearchUISectionModel *)self rowModels];
  v4 = [rowModels searchui_safeObjectAtIndex:0];

  if ([v4 isTopHit] & 1) != 0 || TLKSpotlightPlusUIEnabled() && (!-[SearchUISectionModel needsHeader](self, "needsHeader") || !-[SearchUISectionModel forceTopSeparatorForBrowseMode](self, "forceTopSeparatorForBrowseMode") && (-[SearchUISectionModel section](self, "section"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isBrowseSection"), v6, (v7)))
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = [v4 fillsBackgroundWithContent] ^ 1;
  }

  return v5;
}

- (BOOL)needsHeader
{
  section = [(SearchUISectionModel *)self section];
  v3 = section;
  if (section)
  {
    collectionSection = [section collectionSection];
    resultSection = [v3 resultSection];
    title = [resultSection title];

    resultSection2 = [v3 resultSection];
    subtitle = [resultSection2 subtitle];

    if (collectionSection)
    {
      title2 = [collectionSection title];
      text = [title2 text];
    }

    else
    {
      text = title;
    }

    if ([text length])
    {
      v11 = 1;
    }

    else
    {
      v11 = [subtitle length] != 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (SearchUISectionModel)initWithRowModels:(id)models section:(id)section
{
  v26 = *MEMORY[0x1E69E9840];
  modelsCopy = models;
  sectionCopy = section;
  v24.receiver = self;
  v24.super_class = SearchUISectionModel;
  v9 = [(SearchUISectionModel *)&v24 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_rowModels, models);
    objc_storeStrong(&v10->_section, section);
    v10->_drawPlattersIfNecessary = 1;
    backgroundColor = [(SearchUISectionModel *)v10 backgroundColor];
    if (backgroundColor)
    {
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v12 = modelsCopy;
      v13 = [v12 countByEnumeratingWithState:&v20 objects:v25 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v21;
        do
        {
          v16 = 0;
          do
          {
            if (*v21 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v20 + 1) + 8 * v16);
            backgroundColor2 = [(SearchUISectionModel *)v10 backgroundColor];
            [v17 setBackgroundColor:backgroundColor2];

            ++v16;
          }

          while (v14 != v16);
          v14 = [v12 countByEnumeratingWithState:&v20 objects:v25 count:16];
        }

        while (v14);
      }
    }
  }

  return v10;
}

+ (SearchUISectionModel)sectionModelWithRows:(id)rows drawPlattersIfNecessary:(BOOL)necessary section:(id)section expandedCollectionSections:(id)sections
{
  necessaryCopy = necessary;
  rowsCopy = rows;
  sectionsCopy = sections;
  sectionCopy = section;
  collectionSection = [sectionCopy collectionSection];
  collectionStyle = [collectionSection collectionStyle];
  initiallyVisibleCardSectionCount = [collectionStyle initiallyVisibleCardSectionCount];

  LOBYTE(collectionStyle) = [sectionsCopy containsObject:collectionSection];
  if ((collectionStyle & 1) == 0 && initiallyVisibleCardSectionCount && [rowsCopy count] > initiallyVisibleCardSectionCount)
  {
    v15 = [rowsCopy subarrayWithRange:{0, initiallyVisibleCardSectionCount}];

    rowsCopy = v15;
  }

  v16 = [[SearchUISectionModel alloc] initWithRowModels:rowsCopy section:sectionCopy];

  [(SearchUISectionModel *)v16 setDrawPlattersIfNecessary:necessaryCopy];

  return v16;
}

+ (SearchUISectionModel)sectionModelWithGridRowModels:(id)models numberOfColumns:(int64_t)columns gridStyle:(int)style section:(id)section expandedCollectionSections:(id)sections
{
  v9 = *&style;
  modelsCopy = models;
  sectionsCopy = sections;
  sectionCopy = section;
  collectionSection = [sectionCopy collectionSection];
  collectionStyle = [collectionSection collectionStyle];
  initiallyVisibleCardSectionCount = [collectionStyle initiallyVisibleCardSectionCount];

  LOBYTE(collectionStyle) = [sectionsCopy containsObject:collectionSection];
  if ((collectionStyle & 1) == 0 && initiallyVisibleCardSectionCount && [modelsCopy count] > initiallyVisibleCardSectionCount)
  {
    v17 = [modelsCopy subarrayWithRange:{0, initiallyVisibleCardSectionCount}];

    modelsCopy = v17;
  }

  v18 = [[SearchUIGridSectionModel alloc] initWithRowModels:modelsCopy numberOfColumns:columns gridStyle:v9 section:sectionCopy];

  return v18;
}

+ (SearchUISectionModel)sectionModelWithScrollingRowModels:(id)models numberOfRows:(int64_t)rows section:(id)section
{
  v24 = *MEMORY[0x1E69E9840];
  modelsCopy = models;
  sectionCopy = section;
  v9 = objc_opt_new();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = modelsCopy;
  v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v20;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v19 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v9 addObject:v15];
        }

        else
        {
          horizontalRowModel = [v15 horizontalRowModel];
          [v9 addObject:horizontalRowModel];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v12);
  }

  v17 = [[SearchUIHorizontallyScrollingSectionModel alloc] initWithRowModels:v9 section:sectionCopy numberOfRows:rows];

  return v17;
}

- (id)layoutSectionForEnvironment:(id)environment attributes:(id)attributes dataSource:(id)source
{
  environmentCopy = environment;
  attributesCopy = attributes;
  sourceCopy = source;
  snapshot = [sourceCopy snapshot];
  -[SearchUISectionModel setNumberOfSections:](self, "setNumberOfSections:", [snapshot numberOfSections]);

  shouldUseInsetRoundedSections = [attributesCopy shouldUseInsetRoundedSections];
  rowModels = [(SearchUISectionModel *)self rowModels];
  firstObject = [rowModels firstObject];

  v36 = firstObject;
  cardSection = [firstObject cardSection];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  objc_opt_class();
  v17 = objc_opt_isKindOfClass();
  traitCollection = [environmentCopy traitCollection];
  [traitCollection userInterfaceIdiom];

  if (shouldUseInsetRoundedSections && [(SearchUISectionModel *)self drawPlattersIfNecessary])
  {
    v19 = 2;
  }

  else if ((isKindOfClass | v17))
  {
    v19 = 2;
  }

  else
  {
    v19 = 1;
  }

  v20 = [objc_alloc(MEMORY[0x1E69DC7E0]) initWithAppearance:v19];
  +[SearchUIAutoLayout sectionCornerRadius];
  [v20 _setCornerRadius:?];
  v21 = [objc_alloc(MEMORY[0x1E69DCC38]) initWithListAppearance:v19];
  appearance = [attributesCopy appearance];
  v23 = [SearchUISeparatorView separatorColorForAppearance:appearance];
  [v21 setColor:v23];

  [v20 setSeparatorConfiguration:v21];
  v49[0] = MEMORY[0x1E69E9820];
  v49[1] = 3221225472;
  v49[2] = __74__SearchUISectionModel_layoutSectionForEnvironment_attributes_dataSource___block_invoke;
  v49[3] = &unk_1E85B35F8;
  v24 = sourceCopy;
  v50 = v24;
  v25 = attributesCopy;
  v51 = v25;
  [v20 setLeadingSwipeActionsConfigurationProvider:v49];
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = __74__SearchUISectionModel_layoutSectionForEnvironment_attributes_dataSource___block_invoke_2;
  v46[3] = &unk_1E85B35F8;
  v26 = v24;
  v47 = v26;
  v27 = v25;
  v48 = v27;
  [v20 setTrailingSwipeActionsConfigurationProvider:v46];
  v43[0] = 0;
  v43[1] = v43;
  v43[2] = 0x4010000000;
  v43[3] = &unk_1DA28ACB1;
  v44 = 0u;
  v45 = 0u;
  [(SearchUISectionModel *)self headerInsetsWithAttributes:v27];
  *&v44 = v28;
  *(&v44 + 1) = v29;
  *&v45 = v30;
  *(&v45 + 1) = v31;
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __74__SearchUISectionModel_layoutSectionForEnvironment_attributes_dataSource___block_invoke_3;
  v37[3] = &unk_1E85B3620;
  v32 = v26;
  v38 = v32;
  v42 = shouldUseInsetRoundedSections;
  v33 = v27;
  v39 = v33;
  selfCopy = self;
  v41 = v43;
  [v20 setItemSeparatorHandler:v37];
  v34 = [MEMORY[0x1E6995580] sectionWithListConfiguration:v20 layoutEnvironment:environmentCopy];
  [v34 setDecorationItems:MEMORY[0x1E695E0F0]];
  [(SearchUISectionModel *)self reloadCornerMaskingOverrideWithAttributes:v33];

  _Block_object_dispose(v43, 8);

  return v34;
}

id __74__SearchUISectionModel_layoutSectionForEnvironment_attributes_dataSource___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) itemIdentifierForIndexPath:a2];
  v4 = [*(a1 + 40) commandEnvironment];
  v5 = [SearchUICommandHandler swipeActionsForRowModel:v3 isLeading:1 environment:v4];

  return v5;
}

id __74__SearchUISectionModel_layoutSectionForEnvironment_attributes_dataSource___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) itemIdentifierForIndexPath:a2];
  v4 = [*(a1 + 40) commandEnvironment];
  v5 = [SearchUICommandHandler swipeActionsForRowModel:v3 isLeading:0 environment:v4];

  return v5;
}

id __74__SearchUISectionModel_layoutSectionForEnvironment_attributes_dataSource___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) sectionIdentifierForIndex:{objc_msgSend(v5, "section")}];
  v8 = [v7 separatorStyleForIndex:{objc_msgSend(v5, "item")}];
  v31 = [v5 row];
  v9 = [v7 rowModels];
  v10 = [v9 count];

  v11 = [*(a1 + 32) sectionIdentifierForIndex:{objc_msgSend(v5, "section") + 1}];
  v12 = [*(a1 + 32) controller];
  v13 = [v12 focusedIndexPath];

  if (v13 && (v14 = [v13 section], v14 == objc_msgSend(v5, "section")))
  {
    v15 = [v13 row];
    v16 = [v5 row];
    v17 = v16 == v15 + 1 || v16 == v15;
    v18 = v16 == v15 - 1 || v16 == v15;
    if (v17)
    {
      v19 = 2;
    }

    else
    {
      v19 = 0;
    }

    if (v18)
    {
      v20 = 2;
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
    v19 = 0;
  }

  if ([v5 row])
  {
    if ([MEMORY[0x1E69D9240] isWatchOS])
    {
      v21 = 2;
    }

    else
    {
      v21 = v19;
    }
  }

  else
  {
    v21 = 2;
  }

  v22 = v11;
  v23 = v10 - 1;
  [v6 setTopSeparatorVisibility:v21];
  v24 = v8;
  if (v8 == 1)
  {
    v20 = 2;
    v25 = v31;
  }

  else
  {
    v25 = v31;
    if ([v7 drawPlattersIfNecessary] & 1) == 0 && (*(a1 + 64) & 1) == 0 && v31 == v23 && (objc_msgSend(v22, "drawPlattersIfNecessary"))
    {
      v20 = 2;
    }
  }

  [v6 setBottomSeparatorVisibility:v20];
  if (v25 == v23)
  {
    if ([*(a1 + 40) hasFooter])
    {
      v26 = [v5 section];
      if (v26 == [*(a1 + 48) numberOfSections] - 1 && objc_msgSend(*(a1 + 48), "numberOfSections") >= 2)
      {
        [v6 setBottomSeparatorVisibility:0];
      }
    }
  }

  if (_UISolariumEnabled())
  {
    v27 = *MEMORY[0x1E69DE0A8];
    v28 = *(MEMORY[0x1E69DE0A8] + 8);
    v29 = *(MEMORY[0x1E69DE0A8] + 16);
    if (v24 == 1)
    {
      if ([v6 bottomSeparatorVisibility] == 2)
      {
        goto LABEL_39;
      }
    }

    else if (v24 != 5)
    {
LABEL_39:
      [v6 setBottomSeparatorInsets:{v27, v28, v29, *(*(*(a1 + 56) + 8) + 56)}];
      goto LABEL_40;
    }

    v28 = *(*(*(a1 + 56) + 8) + 40);
    goto LABEL_39;
  }

LABEL_40:

  return v6;
}

- (void)reloadCornerMaskingOverrideWithAttributes:(id)attributes
{
  v20 = *MEMORY[0x1E69E9840];
  attributesCopy = attributes;
  rowModels = [(SearchUISectionModel *)self rowModels];
  firstObject = [rowModels firstObject];

  rowModels2 = [(SearchUISectionModel *)self rowModels];
  lastObject = [rowModels2 lastObject];

  if (firstObject && ([firstObject isEqual:lastObject] & 1) == 0 && +[SearchUISectionBackgroundStyleUtilities backgroundStyleNeedsInset:](SearchUISectionBackgroundStyleUtilities, "backgroundStyleNeedsInset:", -[SearchUISectionModel sectionBackgroundStyleWithAttributes:](self, "sectionBackgroundStyleWithAttributes:", attributesCopy)))
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    rowModels3 = [(SearchUISectionModel *)self rowModels];
    v10 = [rowModels3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v16;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v16 != v12)
          {
            objc_enumerationMutation(rowModels3);
          }

          v14 = *(*(&v15 + 1) + 8 * i);
          [v14 setCornerMask:0];
          [v14 setHasCustomCornerRounding:1];
        }

        v11 = [rowModels3 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v11);
    }

    [firstObject setCornerMask:{objc_msgSend(firstObject, "cornerMask") | 3}];
    [firstObject setHasCustomCornerRounding:1];
    [lastObject setCornerMask:{objc_msgSend(lastObject, "cornerMask") | 0xC}];
    [lastObject setHasCustomCornerRounding:1];
  }
}

- (int64_t)sectionBackgroundStyleWithAttributes:(id)attributes
{
  v64 = *MEMORY[0x1E69E9840];
  attributesCopy = attributes;
  section = [(SearchUISectionModel *)self section];
  sectionIdentifier = [section sectionIdentifier];
  v7 = [sectionIdentifier isEqualToString:@"com.apple.spotlight.tophits"];

  section2 = [(SearchUISectionModel *)self section];
  sectionIdentifier2 = [section2 sectionIdentifier];
  v10 = [sectionIdentifier2 isEqualToString:@"com.apple.other:show_more"];

  rowModels = [(SearchUISectionModel *)self rowModels];
  firstObject = [rowModels firstObject];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = +[SearchUIUtilities isIpad];

    if (v13)
    {
LABEL_3:
      v14 = 2;
      goto LABEL_54;
    }
  }

  else
  {
  }

  rowModels2 = [(SearchUISectionModel *)self rowModels];
  firstObject2 = [rowModels2 firstObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    if (v7)
    {
      v14 = 1;
    }

    else
    {
      v14 = 5;
    }

    goto LABEL_54;
  }

  if (v10)
  {
LABEL_10:
    v14 = 1;
    goto LABEL_54;
  }

  if ([(SearchUISectionModel *)self shouldInsetGroupedCollectionStyleWithAttributes:attributesCopy])
  {
    if ([attributesCopy isInCarPlay] && (_UISolariumEnabled() & 1) != 0)
    {
      goto LABEL_3;
    }

    goto LABEL_10;
  }

  v52 = v7;
  rowModels3 = [(SearchUISectionModel *)self rowModels];
  firstObject3 = [rowModels3 firstObject];
  backgroundColor = [firstObject3 backgroundColor];

  rowModels4 = [(SearchUISectionModel *)self rowModels];
  firstObject4 = [rowModels4 firstObject];
  identifyingResult = [firstObject4 identifyingResult];

  rowModels5 = [(SearchUISectionModel *)self rowModels];
  firstObject5 = [rowModels5 firstObject];
  fillsBackgroundWithContent = [firstObject5 fillsBackgroundWithContent];

  v53 = attributesCopy;
  isAboveFilterBar = [attributesCopy isAboveFilterBar];
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  obj = [(SearchUISectionModel *)self rowModels];
  v25 = [obj countByEnumeratingWithState:&v59 objects:v63 count:16];
  if (!v25)
  {
    v58 = 0;
    goto LABEL_36;
  }

  v26 = v25;
  v58 = 0;
  v27 = *v60;
  do
  {
    for (i = 0; i != v26; ++i)
    {
      if (*v60 != v27)
      {
        objc_enumerationMutation(obj);
      }

      v29 = *(*(&v59 + 1) + 8 * i);
      selfCopy = self;
      rowModels6 = [(SearchUISectionModel *)self rowModels];
      firstObject6 = [rowModels6 firstObject];
      v33 = [v29 isEqual:firstObject6];

      if ((v33 & 1) == 0)
      {
        fillsBackgroundWithContent2 = [v29 fillsBackgroundWithContent];
        v35 = HIDWORD(v58);
        if ((v58 & 0x100000000) != 0)
        {
          v36 = 0;
          goto LABEL_29;
        }

        if (backgroundColor || ([v29 backgroundColor], (v54 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          backgroundColor2 = [v29 backgroundColor];
          v36 = [backgroundColor isEqual:backgroundColor2] ^ 1;

          v35 = HIDWORD(v58);
          if (!backgroundColor)
          {
LABEL_28:
          }

LABEL_29:
          fillsBackgroundWithContent &= fillsBackgroundWithContent2;
          HIDWORD(v58) = v36 | v35;
          if (v58)
          {
            LOBYTE(v58) = 1;
          }

          else
          {
            identifyingResult2 = [v29 identifyingResult];
            LODWORD(v58) = [identifyingResult isEqual:identifyingResult2] ^ 1;
          }

          goto LABEL_32;
        }

        v54 = 0;
        v36 = 0;
        goto LABEL_28;
      }

LABEL_32:
      self = selfCopy;
    }

    v26 = [obj countByEnumeratingWithState:&v59 objects:v63 count:16];
  }

  while (v26);
LABEL_36:

  rowModels7 = [(SearchUISectionModel *)self rowModels];
  firstObject7 = [rowModels7 firstObject];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SearchUISectionModel *)self rowModels];
    v42 = v41 = self;
    firstObject8 = [v42 firstObject];
    useCompactVersionOfUI = [firstObject8 useCompactVersionOfUI];

    self = v41;
  }

  else
  {
    useCompactVersionOfUI = 0;
  }

  v45 = backgroundColor;

  if (v52)
  {
    v46 = !+[SearchUIUtilities isSpotlightPlusEnabled]| fillsBackgroundWithContent | isAboveFilterBar;
  }

  else
  {
    LOBYTE(v46) = fillsBackgroundWithContent | isAboveFilterBar;
  }

  if (useCompactVersionOfUI & 1 | ((v46 & 1) == 0) | v58 & 1)
  {
    attributesCopy = v53;
    if (!-[SearchUISectionModel drawPlattersIfNecessary](self, "drawPlattersIfNecessary") && ([v53 shouldUseInsetRoundedSections] & 1) != 0)
    {
      v14 = 5;
      goto LABEL_53;
    }

    if ([v53 shouldUseInsetRoundedSections])
    {
      v14 = 1;
      goto LABEL_53;
    }

    rowModels8 = [(SearchUISectionModel *)self rowModels];
    firstObject9 = [rowModels8 firstObject];
    cardSection = [firstObject9 cardSection];
    objc_opt_class();
    v14 = objc_opt_isKindOfClass() & 1;

    v45 = backgroundColor;
  }

  else
  {
    rowModels8 = [(SearchUISectionModel *)self rowModels];
    attributesCopy = v53;
    if (([rowModels8 count] < 2) | BYTE4(v58) & 1)
    {
      v14 = [v53 inPreviewPlatter] ^ 1;
    }

    else
    {
      v14 = 4;
    }
  }

LABEL_53:
LABEL_54:

  return v14;
}

- (NSDirectionalEdgeInsets)headerInsetsWithAttributes:(id)attributes
{
  [(SearchUISectionModel *)self horizontalInsetWithAttributes:attributes forSupplementary:1];
  v5 = v4;
  v6 = 6.0;
  if (([MEMORY[0x1E69D9240] isMacOS] & 1) == 0)
  {
    if ([(SearchUISectionModel *)self needsHeaderSeparator])
    {
      v6 = 8.0;
    }

    else
    {
      v6 = 6.0;
    }
  }

  section = [(SearchUISectionModel *)self section];
  resultSection = [section resultSection];

  subtitle = [resultSection subtitle];
  if (subtitle)
  {
    title = [resultSection title];
    if (title)
    {
      v11 = 0.0;
    }

    else
    {
      v11 = 5.0;
    }
  }

  else
  {
    v11 = 0.0;
  }

  v12 = 12.0 - v11;
  v13 = v5;
  v14 = v6;
  v15 = v5;
  result.trailing = v15;
  result.bottom = v14;
  result.leading = v13;
  result.top = v12;
  return result;
}

- (double)horizontalInsetWithAttributes:(id)attributes forSupplementary:(BOOL)supplementary
{
  supplementaryCopy = supplementary;
  attributesCopy = attributes;
  [(SearchUISectionModel *)self numberOfSections];
  if ([(SearchUISectionModel *)self shouldInsetGroupedCollectionStyleWithAttributes:attributesCopy])
  {
    +[SearchUIUtilities disambiguationTableCellContentInset];
  }

  else
  {
    +[SearchUIUtilities standardTableCellContentInset];
  }

  v8 = v7;
  if ([attributesCopy shouldUseInsetRoundedSections])
  {
    commandEnvironment = [attributesCopy commandEnvironment];
    shouldUseStandardSectionInsets = [commandEnvironment shouldUseStandardSectionInsets];

    if ((shouldUseStandardSectionInsets & 1) == 0)
    {
      commandEnvironment2 = [attributesCopy commandEnvironment];
      presentingViewController = [commandEnvironment2 presentingViewController];
      view = [presentingViewController view];
      [view frame];
      Width = CGRectGetWidth(v19);
      +[SearchUI idealPlatterWidth];
      v8 = (Width - v15) * 0.5;

      if (v8 < 8.0)
      {
        v8 = 8.0;
      }
    }

    v16 = v8 + 8.0;
    v17 = !supplementaryCopy;
  }

  else
  {
    if (supplementaryCopy || [SearchUISectionBackgroundStyleUtilities backgroundStyleNeedsInset:[(SearchUISectionModel *)self sectionBackgroundStyleWithAttributes:attributesCopy]])
    {
      goto LABEL_14;
    }

    v17 = [(SearchUISectionModel *)self isMemberOfClass:objc_opt_class()]== 0;
    v16 = 0.0;
  }

  if (!v17)
  {
    v8 = v16;
  }

LABEL_14:

  return v8;
}

- (NSDirectionalEdgeInsets)sectionInsetsWithAttributes:(id)attributes sectionIndex:(unint64_t)index
{
  attributesCopy = attributes;
  v7 = [(SearchUISectionModel *)self shouldInsetGroupedCollectionStyleWithAttributes:attributesCopy];
  if ([(SearchUISectionModel *)self needsHeader])
  {
    v8 = 1;
  }

  else
  {
    v8 = [(SearchUISectionModel *)self needsHeaderSeparator]|| v7;
  }

  [(SearchUISectionModel *)self horizontalInsetWithAttributes:attributesCopy forSupplementary:0];
  v10 = v9;
  rowModels = [(SearchUISectionModel *)self rowModels];
  firstObject = [rowModels firstObject];

  if ([attributesCopy shouldUseInsetRoundedSections])
  {
    v13 = 0.0;
    if (v8)
    {
      v14 = 0.0;
    }

    else
    {
      v14 = 4.0;
    }
  }

  else
  {
    v15 = [(SearchUISectionModel *)self sectionBackgroundStyleWithAttributes:attributesCopy];
    if ([SearchUISectionBackgroundStyleUtilities backgroundStyleNeedsInset:v15])
    {
      section = [(SearchUISectionModel *)self section];
      sectionIdentifier = [section sectionIdentifier];
      v18 = [sectionIdentifier isEqualToString:@"com.apple.spotlight.tophits"];

      v14 = 12.0;
      if (v7 | (([MEMORY[0x1E69D9240] isMacOS] & 1) == 0))
      {
        cardSection = [firstObject cardSection];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = 12.0;
        }

        else
        {
          v14 = 0.0;
        }
      }

      isMacOS = [MEMORY[0x1E69D9240] isMacOS];
      if (v18)
      {
        v21 = 8;
      }

      else
      {
        v21 = 2;
      }

      if (v18)
      {
        v22 = 16;
      }

      else
      {
        v22 = 8;
      }

      if (!isMacOS)
      {
        v21 = v22;
      }

      if (v15 == 2)
      {
        objc_opt_class();
        v13 = 0.0;
        if (objc_opt_isKindOfClass())
        {
          v10 = 0.0;
        }
      }

      else
      {
        v13 = v21;
      }
    }

    else
    {
      v23 = 4.0;
      if ([MEMORY[0x1E69D9240] isMacOS])
      {
        section2 = [(SearchUISectionModel *)self section];
        if ([section2 isBrowseSection])
        {
          v23 = 25.0;
        }

        else
        {
          v23 = 2.0;
        }
      }

      if (v8)
      {
        v25 = 0.0;
      }

      else
      {
        v25 = 8.0;
      }

      fillsBackgroundWithContent = [firstObject fillsBackgroundWithContent];
      v27 = v25 + 8.0;
      if (!index)
      {
        v27 = 0.0;
      }

      if (((index == 0) & fillsBackgroundWithContent) != 0)
      {
        v13 = 0.0;
      }

      else
      {
        v13 = v23;
      }

      if (fillsBackgroundWithContent)
      {
        v14 = v27;
      }

      else
      {
        v14 = v25;
      }
    }
  }

  v28 = v14;
  v29 = v10;
  v30 = v13;
  v31 = v10;
  result.trailing = v31;
  result.bottom = v30;
  result.leading = v29;
  result.top = v28;
  return result;
}

- (id)collectionStyleRow
{
  section = [(SearchUISectionModel *)self section];
  v3 = section;
  if (section && ([section collectionSection], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "collectionStyle"), v5 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v5, v4, (isKindOfClass & 1) != 0))
  {
    collectionSection = [v3 collectionSection];
    collectionStyle = [collectionSection collectionStyle];
  }

  else
  {
    collectionStyle = 0;
  }

  return collectionStyle;
}

- (BOOL)isCollectionStyleRow
{
  collectionStyleRow = [(SearchUISectionModel *)self collectionStyleRow];
  v3 = collectionStyleRow != 0;

  return v3;
}

- (BOOL)shouldInsetGroupedCollectionStyleWithAttributes:(id)attributes
{
  if ([attributes isInCarPlay] && -[SearchUISectionModel isCollectionStyleRow](self, "isCollectionStyleRow"))
  {
    return 1;
  }

  return [(SearchUISectionModel *)self shouldInsetGroupedCollectionStyle];
}

- (int)separatorStyleForIndex:(unint64_t)index shouldDrawTopAndBottomSeparators:(BOOL)separators
{
  separatorsCopy = separators;
  rowModels = [(SearchUISectionModel *)self rowModels];
  v8 = [rowModels searchui_safeObjectAtIndex:index];

  rowModels2 = [(SearchUISectionModel *)self rowModels];
  v10 = [rowModels2 searchui_safeObjectAtIndex:index + 1];

  separatorStyle = [v8 separatorStyle];
  if (!v10 && !separatorsCopy || [v8 fillsBackgroundWithContent] && !-[SearchUISectionModel shouldInsetGroupedCollectionStyle](self, "shouldInsetGroupedCollectionStyle"))
  {
    goto LABEL_3;
  }

  if (separatorStyle == 3)
  {
    goto LABEL_16;
  }

  if (separatorStyle)
  {
    goto LABEL_4;
  }

  if (([v10 prefersNoSeparatorAbove] & 1) == 0 && (TLKSpotlightPlusUIEnabled() & 1) == 0)
  {
LABEL_16:
    if ([v10 hasLeadingImage])
    {
      separatorStyle = 3;
    }

    else
    {
      separatorStyle = 2;
    }
  }

  else
  {
LABEL_3:
    separatorStyle = 1;
  }

LABEL_4:

  return separatorStyle;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    section = [(SearchUISectionModel *)self section];
    sectionIdentifier = [section sectionIdentifier];
    section2 = [v5 section];

    sectionIdentifier2 = [section2 sectionIdentifier];
    v10 = [sectionIdentifier isEqualToString:sectionIdentifier2];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  section = [(SearchUISectionModel *)self section];
  sectionIdentifier = [section sectionIdentifier];
  v7 = [v3 stringWithFormat:@"<%@ | identifier: %@>", v4, sectionIdentifier];

  return v7;
}

- (id)copyWithRowModels:(id)models
{
  v20 = *MEMORY[0x1E69E9840];
  modelsCopy = models;
  v5 = [(SearchUISectionModel *)self copy];
  [v5 setRowModels:modelsCopy];
  backgroundColor = [(SearchUISectionModel *)self backgroundColor];
  if (backgroundColor)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = modelsCopy;
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        v11 = 0;
        do
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v15 + 1) + 8 * v11);
          backgroundColor2 = [(SearchUISectionModel *)self backgroundColor];
          [v12 setBackgroundColor:backgroundColor2];

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setDrawPlattersIfNecessary:{-[SearchUISectionModel drawPlattersIfNecessary](self, "drawPlattersIfNecessary")}];
  section = [(SearchUISectionModel *)self section];
  [v4 setSection:section];

  rowModels = [(SearchUISectionModel *)self rowModels];
  v7 = [rowModels copy];
  [v4 setRowModels:v7];

  asyncLoader = [(SearchUISectionModel *)self asyncLoader];
  [v4 setAsyncLoader:asyncLoader];

  return v4;
}

@end