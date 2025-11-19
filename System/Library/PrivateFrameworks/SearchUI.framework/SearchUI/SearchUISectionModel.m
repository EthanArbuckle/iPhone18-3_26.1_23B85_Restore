@interface SearchUISectionModel
+ (SearchUISectionModel)sectionModelWithGridRowModels:(id)a3 numberOfColumns:(int64_t)a4 gridStyle:(int)a5 section:(id)a6 expandedCollectionSections:(id)a7;
+ (SearchUISectionModel)sectionModelWithRows:(id)a3 drawPlattersIfNecessary:(BOOL)a4 section:(id)a5 expandedCollectionSections:(id)a6;
+ (SearchUISectionModel)sectionModelWithScrollingRowModels:(id)a3 numberOfRows:(int64_t)a4 section:(id)a5;
- (BOOL)isCollectionStyleRow;
- (BOOL)isEqual:(id)a3;
- (BOOL)needsHeader;
- (BOOL)needsHeaderSeparator;
- (BOOL)shouldInsetGroupedCollectionStyle;
- (BOOL)shouldInsetGroupedCollectionStyleWithAttributes:(id)a3;
- (NSDirectionalEdgeInsets)headerInsetsWithAttributes:(id)a3;
- (NSDirectionalEdgeInsets)sectionInsetsWithAttributes:(id)a3 sectionIndex:(unint64_t)a4;
- (SearchUISectionModel)initWithRowModels:(id)a3 section:(id)a4;
- (double)horizontalInsetWithAttributes:(id)a3 forSupplementary:(BOOL)a4;
- (id)backgroundColor;
- (id)collectionStyleRow;
- (id)copyWithRowModels:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)layoutSectionForEnvironment:(id)a3 attributes:(id)a4 dataSource:(id)a5;
- (int)separatorStyleForIndex:(unint64_t)a3 shouldDrawTopAndBottomSeparators:(BOOL)a4;
- (int64_t)sectionBackgroundStyleWithAttributes:(id)a3;
- (unint64_t)hash;
- (void)prepareForSnapshot;
- (void)reloadCornerMaskingOverrideWithAttributes:(id)a3;
@end

@implementation SearchUISectionModel

- (id)backgroundColor
{
  v3 = [(SearchUISectionModel *)self asyncLoader];
  if (v3)
  {
    v4 = [(SearchUISectionModel *)self asyncLoader];
    v5 = [v4 backgroundColor];
  }

  else
  {
    v4 = [(SearchUISectionModel *)self section];
    v6 = [v4 collectionSection];
    v5 = [v6 backgroundColor];
  }

  v7 = [(SearchUISectionModel *)self rowModels];
  v8 = [v7 firstObject];
  v9 = [v8 identifyingResult];
  v10 = [v9 sectionBundleIdentifier];

  if (backgroundColor_onceToken != -1)
  {
    [SearchUISectionModel backgroundColor];
  }

  if ([backgroundColor_legacyAllowList containsObject:v10] && !v5)
  {
    if ([v7 count] < 2)
    {
      goto LABEL_12;
    }

    v11 = [v8 backgroundColor];

    if (!v11)
    {
      goto LABEL_12;
    }

    v5 = [v8 backgroundColor];
  }

  if (v5)
  {
    goto LABEL_21;
  }

LABEL_12:
  v12 = [(SearchUISectionModel *)self section];
  v13 = [v12 resultSection];
  v14 = [v13 results];

  v15 = [v14 firstObject];
  v16 = [SearchUIUtilities cardForRenderingResult:v15];

  if ([v7 count] >= 2 && objc_msgSend(v14, "count") == 1 && (objc_msgSend(v8, "isTopHit") & 1) != 0)
  {
    v5 = [v16 backgroundColor];

    if (v5)
    {
      goto LABEL_21;
    }
  }

  else
  {
  }

  if ([(SearchUISectionModel *)self shouldInsetGroupedCollectionStyle])
  {
    v5 = +[SearchUIBackgroundColorUtilities disambiguationInnerPlatterColor];
  }

  else
  {
    v5 = 0;
  }

LABEL_21:

  return v5;
}

- (BOOL)shouldInsetGroupedCollectionStyle
{
  v2 = [(SearchUISectionModel *)self collectionStyleRow];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 isInsetGrouped];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void __39__SearchUISectionModel_backgroundColor__block_invoke()
{
  v0 = backgroundColor_legacyAllowList;
  backgroundColor_legacyAllowList = &unk_1F55DD4C0;
}

- (void)prepareForSnapshot
{
  v3 = [(SearchUISectionModel *)self asyncLoader];

  if (!v3)
  {
    v4 = [(SearchUISectionModel *)self rowModels];
    v5 = [v4 firstObject];
    v6 = [v5 results];
    v7 = [v6 firstObject];
    v8 = [(SearchUISectionModel *)self rowModels];
    v9 = [v8 firstObject];
    v10 = +[SearchUIAsyncSectionLoader asyncLoaderSupportingSectionModel:result:queryId:](SearchUIAsyncSectionLoader, "asyncLoaderSupportingSectionModel:result:queryId:", self, v7, [v9 queryId]);
    asyncLoader = self->_asyncLoader;
    self->_asyncLoader = v10;

    v12 = [(SearchUISectionModel *)self asyncLoader];

    if (v12)
    {
      v13 = [(SearchUISectionModel *)self asyncLoader];
      [v13 preloadIfNecessary];
    }
  }
}

- (unint64_t)hash
{
  v2 = [(SearchUISectionModel *)self section];
  v3 = [v2 sectionIdentifier];
  v4 = [v3 hash];

  return v4;
}

- (BOOL)needsHeaderSeparator
{
  v3 = [(SearchUISectionModel *)self rowModels];
  v4 = [v3 searchui_safeObjectAtIndex:0];

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
  v2 = [(SearchUISectionModel *)self section];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 collectionSection];
    v5 = [v3 resultSection];
    v6 = [v5 title];

    v7 = [v3 resultSection];
    v8 = [v7 subtitle];

    if (v4)
    {
      v9 = [v4 title];
      v10 = [v9 text];
    }

    else
    {
      v10 = v6;
    }

    if ([v10 length])
    {
      v11 = 1;
    }

    else
    {
      v11 = [v8 length] != 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (SearchUISectionModel)initWithRowModels:(id)a3 section:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v24.receiver = self;
  v24.super_class = SearchUISectionModel;
  v9 = [(SearchUISectionModel *)&v24 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_rowModels, a3);
    objc_storeStrong(&v10->_section, a4);
    v10->_drawPlattersIfNecessary = 1;
    v11 = [(SearchUISectionModel *)v10 backgroundColor];
    if (v11)
    {
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v12 = v7;
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
            v18 = [(SearchUISectionModel *)v10 backgroundColor];
            [v17 setBackgroundColor:v18];

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

+ (SearchUISectionModel)sectionModelWithRows:(id)a3 drawPlattersIfNecessary:(BOOL)a4 section:(id)a5 expandedCollectionSections:(id)a6
{
  v8 = a4;
  v9 = a3;
  v10 = a6;
  v11 = a5;
  v12 = [v11 collectionSection];
  v13 = [v12 collectionStyle];
  v14 = [v13 initiallyVisibleCardSectionCount];

  LOBYTE(v13) = [v10 containsObject:v12];
  if ((v13 & 1) == 0 && v14 && [v9 count] > v14)
  {
    v15 = [v9 subarrayWithRange:{0, v14}];

    v9 = v15;
  }

  v16 = [[SearchUISectionModel alloc] initWithRowModels:v9 section:v11];

  [(SearchUISectionModel *)v16 setDrawPlattersIfNecessary:v8];

  return v16;
}

+ (SearchUISectionModel)sectionModelWithGridRowModels:(id)a3 numberOfColumns:(int64_t)a4 gridStyle:(int)a5 section:(id)a6 expandedCollectionSections:(id)a7
{
  v9 = *&a5;
  v11 = a3;
  v12 = a7;
  v13 = a6;
  v14 = [v13 collectionSection];
  v15 = [v14 collectionStyle];
  v16 = [v15 initiallyVisibleCardSectionCount];

  LOBYTE(v15) = [v12 containsObject:v14];
  if ((v15 & 1) == 0 && v16 && [v11 count] > v16)
  {
    v17 = [v11 subarrayWithRange:{0, v16}];

    v11 = v17;
  }

  v18 = [[SearchUIGridSectionModel alloc] initWithRowModels:v11 numberOfColumns:a4 gridStyle:v9 section:v13];

  return v18;
}

+ (SearchUISectionModel)sectionModelWithScrollingRowModels:(id)a3 numberOfRows:(int64_t)a4 section:(id)a5
{
  v24 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a5;
  v9 = objc_opt_new();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = v7;
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
          v16 = [v15 horizontalRowModel];
          [v9 addObject:v16];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v12);
  }

  v17 = [[SearchUIHorizontallyScrollingSectionModel alloc] initWithRowModels:v9 section:v8 numberOfRows:a4];

  return v17;
}

- (id)layoutSectionForEnvironment:(id)a3 attributes:(id)a4 dataSource:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v10 snapshot];
  -[SearchUISectionModel setNumberOfSections:](self, "setNumberOfSections:", [v11 numberOfSections]);

  v12 = [v9 shouldUseInsetRoundedSections];
  v13 = [(SearchUISectionModel *)self rowModels];
  v14 = [v13 firstObject];

  v36 = v14;
  v15 = [v14 cardSection];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  objc_opt_class();
  v17 = objc_opt_isKindOfClass();
  v18 = [v8 traitCollection];
  [v18 userInterfaceIdiom];

  if (v12 && [(SearchUISectionModel *)self drawPlattersIfNecessary])
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
  v22 = [v9 appearance];
  v23 = [SearchUISeparatorView separatorColorForAppearance:v22];
  [v21 setColor:v23];

  [v20 setSeparatorConfiguration:v21];
  v49[0] = MEMORY[0x1E69E9820];
  v49[1] = 3221225472;
  v49[2] = __74__SearchUISectionModel_layoutSectionForEnvironment_attributes_dataSource___block_invoke;
  v49[3] = &unk_1E85B35F8;
  v24 = v10;
  v50 = v24;
  v25 = v9;
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
  v42 = v12;
  v33 = v27;
  v39 = v33;
  v40 = self;
  v41 = v43;
  [v20 setItemSeparatorHandler:v37];
  v34 = [MEMORY[0x1E6995580] sectionWithListConfiguration:v20 layoutEnvironment:v8];
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

- (void)reloadCornerMaskingOverrideWithAttributes:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(SearchUISectionModel *)self rowModels];
  v6 = [v5 firstObject];

  v7 = [(SearchUISectionModel *)self rowModels];
  v8 = [v7 lastObject];

  if (v6 && ([v6 isEqual:v8] & 1) == 0 && +[SearchUISectionBackgroundStyleUtilities backgroundStyleNeedsInset:](SearchUISectionBackgroundStyleUtilities, "backgroundStyleNeedsInset:", -[SearchUISectionModel sectionBackgroundStyleWithAttributes:](self, "sectionBackgroundStyleWithAttributes:", v4)))
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v9 = [(SearchUISectionModel *)self rowModels];
    v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v15 + 1) + 8 * i);
          [v14 setCornerMask:0];
          [v14 setHasCustomCornerRounding:1];
        }

        v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v11);
    }

    [v6 setCornerMask:{objc_msgSend(v6, "cornerMask") | 3}];
    [v6 setHasCustomCornerRounding:1];
    [v8 setCornerMask:{objc_msgSend(v8, "cornerMask") | 0xC}];
    [v8 setHasCustomCornerRounding:1];
  }
}

- (int64_t)sectionBackgroundStyleWithAttributes:(id)a3
{
  v64 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(SearchUISectionModel *)self section];
  v6 = [v5 sectionIdentifier];
  v7 = [v6 isEqualToString:@"com.apple.spotlight.tophits"];

  v8 = [(SearchUISectionModel *)self section];
  v9 = [v8 sectionIdentifier];
  v10 = [v9 isEqualToString:@"com.apple.other:show_more"];

  v11 = [(SearchUISectionModel *)self rowModels];
  v12 = [v11 firstObject];
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

  v15 = [(SearchUISectionModel *)self rowModels];
  v16 = [v15 firstObject];
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

  if ([(SearchUISectionModel *)self shouldInsetGroupedCollectionStyleWithAttributes:v4])
  {
    if ([v4 isInCarPlay] && (_UISolariumEnabled() & 1) != 0)
    {
      goto LABEL_3;
    }

    goto LABEL_10;
  }

  v52 = v7;
  v18 = [(SearchUISectionModel *)self rowModels];
  v19 = [v18 firstObject];
  v56 = [v19 backgroundColor];

  v20 = [(SearchUISectionModel *)self rowModels];
  v21 = [v20 firstObject];
  v55 = [v21 identifyingResult];

  v22 = [(SearchUISectionModel *)self rowModels];
  v23 = [v22 firstObject];
  v24 = [v23 fillsBackgroundWithContent];

  v53 = v4;
  v51 = [v4 isAboveFilterBar];
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
      v30 = self;
      v31 = [(SearchUISectionModel *)self rowModels];
      v32 = [v31 firstObject];
      v33 = [v29 isEqual:v32];

      if ((v33 & 1) == 0)
      {
        v34 = [v29 fillsBackgroundWithContent];
        v35 = HIDWORD(v58);
        if ((v58 & 0x100000000) != 0)
        {
          v36 = 0;
          goto LABEL_29;
        }

        if (v56 || ([v29 backgroundColor], (v54 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v37 = [v29 backgroundColor];
          v36 = [v56 isEqual:v37] ^ 1;

          v35 = HIDWORD(v58);
          if (!v56)
          {
LABEL_28:
          }

LABEL_29:
          v24 &= v34;
          HIDWORD(v58) = v36 | v35;
          if (v58)
          {
            LOBYTE(v58) = 1;
          }

          else
          {
            v38 = [v29 identifyingResult];
            LODWORD(v58) = [v55 isEqual:v38] ^ 1;
          }

          goto LABEL_32;
        }

        v54 = 0;
        v36 = 0;
        goto LABEL_28;
      }

LABEL_32:
      self = v30;
    }

    v26 = [obj countByEnumeratingWithState:&v59 objects:v63 count:16];
  }

  while (v26);
LABEL_36:

  v39 = [(SearchUISectionModel *)self rowModels];
  v40 = [v39 firstObject];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SearchUISectionModel *)self rowModels];
    v42 = v41 = self;
    v43 = [v42 firstObject];
    v44 = [v43 useCompactVersionOfUI];

    self = v41;
  }

  else
  {
    v44 = 0;
  }

  v45 = v56;

  if (v52)
  {
    v46 = !+[SearchUIUtilities isSpotlightPlusEnabled]| v24 | v51;
  }

  else
  {
    LOBYTE(v46) = v24 | v51;
  }

  if (v44 & 1 | ((v46 & 1) == 0) | v58 & 1)
  {
    v4 = v53;
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

    v47 = [(SearchUISectionModel *)self rowModels];
    v48 = [v47 firstObject];
    v49 = [v48 cardSection];
    objc_opt_class();
    v14 = objc_opt_isKindOfClass() & 1;

    v45 = v56;
  }

  else
  {
    v47 = [(SearchUISectionModel *)self rowModels];
    v4 = v53;
    if (([v47 count] < 2) | BYTE4(v58) & 1)
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

- (NSDirectionalEdgeInsets)headerInsetsWithAttributes:(id)a3
{
  [(SearchUISectionModel *)self horizontalInsetWithAttributes:a3 forSupplementary:1];
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

  v7 = [(SearchUISectionModel *)self section];
  v8 = [v7 resultSection];

  v9 = [v8 subtitle];
  if (v9)
  {
    v10 = [v8 title];
    if (v10)
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

- (double)horizontalInsetWithAttributes:(id)a3 forSupplementary:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  [(SearchUISectionModel *)self numberOfSections];
  if ([(SearchUISectionModel *)self shouldInsetGroupedCollectionStyleWithAttributes:v6])
  {
    +[SearchUIUtilities disambiguationTableCellContentInset];
  }

  else
  {
    +[SearchUIUtilities standardTableCellContentInset];
  }

  v8 = v7;
  if ([v6 shouldUseInsetRoundedSections])
  {
    v9 = [v6 commandEnvironment];
    v10 = [v9 shouldUseStandardSectionInsets];

    if ((v10 & 1) == 0)
    {
      v11 = [v6 commandEnvironment];
      v12 = [v11 presentingViewController];
      v13 = [v12 view];
      [v13 frame];
      Width = CGRectGetWidth(v19);
      +[SearchUI idealPlatterWidth];
      v8 = (Width - v15) * 0.5;

      if (v8 < 8.0)
      {
        v8 = 8.0;
      }
    }

    v16 = v8 + 8.0;
    v17 = !v4;
  }

  else
  {
    if (v4 || [SearchUISectionBackgroundStyleUtilities backgroundStyleNeedsInset:[(SearchUISectionModel *)self sectionBackgroundStyleWithAttributes:v6]])
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

- (NSDirectionalEdgeInsets)sectionInsetsWithAttributes:(id)a3 sectionIndex:(unint64_t)a4
{
  v6 = a3;
  v7 = [(SearchUISectionModel *)self shouldInsetGroupedCollectionStyleWithAttributes:v6];
  if ([(SearchUISectionModel *)self needsHeader])
  {
    v8 = 1;
  }

  else
  {
    v8 = [(SearchUISectionModel *)self needsHeaderSeparator]|| v7;
  }

  [(SearchUISectionModel *)self horizontalInsetWithAttributes:v6 forSupplementary:0];
  v10 = v9;
  v11 = [(SearchUISectionModel *)self rowModels];
  v12 = [v11 firstObject];

  if ([v6 shouldUseInsetRoundedSections])
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
    v15 = [(SearchUISectionModel *)self sectionBackgroundStyleWithAttributes:v6];
    if ([SearchUISectionBackgroundStyleUtilities backgroundStyleNeedsInset:v15])
    {
      v16 = [(SearchUISectionModel *)self section];
      v17 = [v16 sectionIdentifier];
      v18 = [v17 isEqualToString:@"com.apple.spotlight.tophits"];

      v14 = 12.0;
      if (v7 | (([MEMORY[0x1E69D9240] isMacOS] & 1) == 0))
      {
        v19 = [v12 cardSection];
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

      v20 = [MEMORY[0x1E69D9240] isMacOS];
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

      if (!v20)
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
        v24 = [(SearchUISectionModel *)self section];
        if ([v24 isBrowseSection])
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

      v26 = [v12 fillsBackgroundWithContent];
      v27 = v25 + 8.0;
      if (!a4)
      {
        v27 = 0.0;
      }

      if (((a4 == 0) & v26) != 0)
      {
        v13 = 0.0;
      }

      else
      {
        v13 = v23;
      }

      if (v26)
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
  v2 = [(SearchUISectionModel *)self section];
  v3 = v2;
  if (v2 && ([v2 collectionSection], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "collectionStyle"), v5 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v5, v4, (isKindOfClass & 1) != 0))
  {
    v7 = [v3 collectionSection];
    v8 = [v7 collectionStyle];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)isCollectionStyleRow
{
  v2 = [(SearchUISectionModel *)self collectionStyleRow];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)shouldInsetGroupedCollectionStyleWithAttributes:(id)a3
{
  if ([a3 isInCarPlay] && -[SearchUISectionModel isCollectionStyleRow](self, "isCollectionStyleRow"))
  {
    return 1;
  }

  return [(SearchUISectionModel *)self shouldInsetGroupedCollectionStyle];
}

- (int)separatorStyleForIndex:(unint64_t)a3 shouldDrawTopAndBottomSeparators:(BOOL)a4
{
  v4 = a4;
  v7 = [(SearchUISectionModel *)self rowModels];
  v8 = [v7 searchui_safeObjectAtIndex:a3];

  v9 = [(SearchUISectionModel *)self rowModels];
  v10 = [v9 searchui_safeObjectAtIndex:a3 + 1];

  v11 = [v8 separatorStyle];
  if (!v10 && !v4 || [v8 fillsBackgroundWithContent] && !-[SearchUISectionModel shouldInsetGroupedCollectionStyle](self, "shouldInsetGroupedCollectionStyle"))
  {
    goto LABEL_3;
  }

  if (v11 == 3)
  {
    goto LABEL_16;
  }

  if (v11)
  {
    goto LABEL_4;
  }

  if (([v10 prefersNoSeparatorAbove] & 1) == 0 && (TLKSpotlightPlusUIEnabled() & 1) == 0)
  {
LABEL_16:
    if ([v10 hasLeadingImage])
    {
      v11 = 3;
    }

    else
    {
      v11 = 2;
    }
  }

  else
  {
LABEL_3:
    v11 = 1;
  }

LABEL_4:

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(SearchUISectionModel *)self section];
    v7 = [v6 sectionIdentifier];
    v8 = [v5 section];

    v9 = [v8 sectionIdentifier];
    v10 = [v7 isEqualToString:v9];
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
  v5 = [(SearchUISectionModel *)self section];
  v6 = [v5 sectionIdentifier];
  v7 = [v3 stringWithFormat:@"<%@ | identifier: %@>", v4, v6];

  return v7;
}

- (id)copyWithRowModels:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(SearchUISectionModel *)self copy];
  [v5 setRowModels:v4];
  v6 = [(SearchUISectionModel *)self backgroundColor];
  if (v6)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = v4;
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
          v13 = [(SearchUISectionModel *)self backgroundColor];
          [v12 setBackgroundColor:v13];

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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 setDrawPlattersIfNecessary:{-[SearchUISectionModel drawPlattersIfNecessary](self, "drawPlattersIfNecessary")}];
  v5 = [(SearchUISectionModel *)self section];
  [v4 setSection:v5];

  v6 = [(SearchUISectionModel *)self rowModels];
  v7 = [v6 copy];
  [v4 setRowModels:v7];

  v8 = [(SearchUISectionModel *)self asyncLoader];
  [v4 setAsyncLoader:v8];

  return v4;
}

@end