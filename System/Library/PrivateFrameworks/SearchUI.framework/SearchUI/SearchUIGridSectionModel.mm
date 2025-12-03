@interface SearchUIGridSectionModel
- (BOOL)needsHorizontalNavigation;
- (NSDirectionalEdgeInsets)sectionInsetsWithAttributes:(id)attributes sectionIndex:(unint64_t)index;
- (SearchUIGridSectionModel)initWithRowModels:(id)models numberOfColumns:(int64_t)columns gridStyle:(int)style section:(id)section;
- (id)copyWithZone:(_NSZone *)zone;
- (id)layoutSectionForEnvironment:(id)environment attributes:(id)attributes dataSource:(id)source;
- (id)rfHeroImageGridLayoutSectionForCardSection:(id)section;
- (int64_t)sectionBackgroundStyleWithAttributes:(id)attributes;
- (void)setCornerMaskRulesOnRowModels:(id)models forColumnCount:(unint64_t)count;
@end

@implementation SearchUIGridSectionModel

- (SearchUIGridSectionModel)initWithRowModels:(id)models numberOfColumns:(int64_t)columns gridStyle:(int)style section:(id)section
{
  v6 = *&style;
  v11.receiver = self;
  v11.super_class = SearchUIGridSectionModel;
  v8 = [(SearchUISectionModel *)&v11 initWithRowModels:models section:section];
  v9 = v8;
  if (v8)
  {
    [(SearchUIGridSectionModel *)v8 setNumberOfColumns:columns];
    [(SearchUIGridSectionModel *)v9 setGridStyle:v6];
  }

  return v9;
}

- (id)layoutSectionForEnvironment:(id)environment attributes:(id)attributes dataSource:(id)source
{
  environmentCopy = environment;
  snapshot = [source snapshot];
  v9 = [snapshot itemIdentifiersInSectionWithIdentifier:self];

  numberOfColumns = [(SearchUIGridSectionModel *)self numberOfColumns];
  if (!numberOfColumns)
  {
    container = [environmentCopy container];
    [container effectiveContentSize];
    v13 = v12;

    if ([MEMORY[0x1E69D9240] isMacOS] && v13 > 500.0)
    {
      numberOfColumns = 6;
    }

    else if (+[SearchUIUtilities isIpad]&& v13 > 500.0)
    {
      numberOfColumns = 5;
    }

    else if ([MEMORY[0x1E69D9240] isWatchOS])
    {
      numberOfColumns = 2;
    }

    else
    {
      numberOfColumns = 4;
    }
  }

  firstObject = [v9 firstObject];
  cardSection = [firstObject cardSection];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([v9 count] == 1)
    {
      numberOfColumns = 1;
    }

    firstObject2 = [v9 firstObject];
    [firstObject2 setShouldFillAvailableSpace:numberOfColumns == 1];
  }

  if ([(SearchUIGridSectionModel *)self gridStyle]== 1 || [(SearchUIGridSectionModel *)self gridStyle]== 2)
  {
    if (([MEMORY[0x1E69D9240] isWatchOS] & 1) == 0)
    {
      [(SearchUIGridSectionModel *)self setCornerMaskRulesOnRowModels:v9 forColumnCount:numberOfColumns];
      v18 = [(SearchUIGridSectionModel *)self rfHeroImageGridLayoutSectionForCardSection:cardSection];
      goto LABEL_38;
    }

    numberOfColumns = 2;
  }

  objc_opt_class();
  v39 = environmentCopy;
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    isSiri = [MEMORY[0x1E69D9240] isSiri];
  }

  else
  {
    isSiri = 0;
  }

  section = [(SearchUISectionModel *)self section];
  isBrowseSection = [section isBrowseSection];

  v20 = [MEMORY[0x1E6995558] fractionalWidthDimension:1.0 / numberOfColumns];
  v21 = [cardSection searchUIGridSectionModel_heightDimensionWithColumnCount:numberOfColumns];
  v22 = v21;
  if (v21)
  {
    v23 = v21;
  }

  else
  {
    v23 = v20;
  }

  v24 = v23;

  v38 = v24;
  v37 = [MEMORY[0x1E6995588] sizeWithWidthDimension:v20 heightDimension:v24];
  v25 = [MEMORY[0x1E6995578] itemWithLayoutSize:?];
  if (isSiri)
  {
    +[SearchUIUtilities imageGridItemContentInset];
    [v25 setContentInsets:{v26, v26, v26, v26}];
  }

  v27 = MEMORY[0x1E6995588];
  v28 = [MEMORY[0x1E6995558] fractionalWidthDimension:1.0];
  if (isSiri)
  {
    v29 = [v27 sizeWithWidthDimension:v28 heightDimension:v20];
  }

  else
  {
    v30 = [MEMORY[0x1E6995558] estimatedDimension:1.0];
    v29 = [v27 sizeWithWidthDimension:v28 heightDimension:v30];
  }

  environmentCopy = v39;

  v31 = [MEMORY[0x1E6995568] horizontalGroupWithLayoutSize:v29 repeatingSubitem:v25 count:numberOfColumns];
  v32 = v31;
  if (isBrowseSection)
  {
    [v31 setInterItemSpacing:0];
  }

  else
  {
    v33 = MEMORY[0x1E6995590];
    [cardSection searchUIGridSectionModel_interItemSpacing];
    v34 = [v33 fixedSpacing:?];
    [v32 setInterItemSpacing:v34];
  }

  [cardSection searchUIGridSectionModel_groupInsetFor:v39];
  [v32 setContentInsets:?];
  v18 = [MEMORY[0x1E6995580] sectionWithGroup:v32];
  v35 = 10.0;
  if ((isBrowseSection & 1) == 0)
  {
    [cardSection searchUIGridSectionModel_interItemSpacing];
  }

  [v18 setInterGroupSpacing:v35];
  [(SearchUIGridSectionModel *)self setCornerMaskRulesOnRowModels:v9 forColumnCount:numberOfColumns];

LABEL_38:

  return v18;
}

- (int64_t)sectionBackgroundStyleWithAttributes:(id)attributes
{
  rowModels = [(SearchUISectionModel *)self rowModels];
  firstObject = [rowModels firstObject];
  cardSection = [firstObject cardSection];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    if (+[SearchUIUtilities isIpad])
    {
      return 2;
    }

    else
    {
      return 4;
    }
  }

  else
  {
    rowModels2 = [(SearchUISectionModel *)self rowModels];
    firstObject2 = [rowModels2 firstObject];
    cardSection2 = [firstObject2 cardSection];
    if ([cardSection2 searchUIGridSectionModel_useBackground])
    {
      v8 = 3;
    }

    else
    {
      v8 = 5;
    }
  }

  return v8;
}

- (void)setCornerMaskRulesOnRowModels:(id)models forColumnCount:(unint64_t)count
{
  modelsCopy = models;
  if ([(SearchUIGridSectionModel *)self gridStyle]== 1)
  {
    v7 = [MEMORY[0x1E69D9240] isWatchOS] ^ 1;
  }

  else
  {
    v7 = 0;
  }

  if ([(SearchUIGridSectionModel *)self gridStyle]== 2)
  {
    v8 = [MEMORY[0x1E69D9240] isWatchOS] ^ 1;
  }

  else
  {
    v8 = 0;
  }

  if ([MEMORY[0x1E69D9240] isSiri])
  {
    rowModels = [(SearchUISectionModel *)self rowModels];
    firstObject = [rowModels firstObject];
    cardSection = [firstObject cardSection];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  v13 = [modelsCopy count];
  v14 = vcvtps_u32_f32(v13 / count);
  v15 = count - 1;
  if (v8)
  {
    v15 = 2;
  }

  if (v7)
  {
    v15 = 1;
  }

  v16 = v14 * count;
  if ((v7 | v8))
  {
    v16 = v13;
  }

  v17 = v16 - 1;
  v18 = v13 - 1;
  if ((v7 & v8) != 0)
  {
    v19 = v15;
  }

  else
  {
    v19 = v13 - 1;
  }

  if ((v7 & v8) != 0)
  {
    v18 = v17;
  }

  v20 = v14 - 1;
  if (v20)
  {
    v21 = v15;
  }

  else
  {
    v21 = v19;
  }

  if (v20)
  {
    v22 = v17;
  }

  else
  {
    v22 = v18;
  }

  v23 = v20 * count;
  if ((v7 | v8))
  {
    v24 = 3;
  }

  else
  {
    v24 = v23;
  }

  isLTR = [MEMORY[0x1E69D91A8] isLTR];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __73__SearchUIGridSectionModel_setCornerMaskRulesOnRowModels_forColumnCount___block_invoke;
  v26[3] = &__block_descriptor_66_e33_v32__0__SearchUIRowModel_8Q16_B24l;
  v27 = isLTR ^ 1;
  v26[4] = 0;
  v26[5] = v21;
  v26[6] = v22;
  v26[7] = v24;
  v28 = isKindOfClass & 1;
  [modelsCopy enumerateObjectsUsingBlock:v26];
}

void __73__SearchUIGridSectionModel_setCornerMaskRulesOnRowModels_forColumnCount___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  if (*(a1 + 32) == a3)
  {
    if (*(a1 + 64))
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }
  }

  else
  {
    v4 = 0;
  }

  if (*(a1 + 40) == a3)
  {
    v5 = 1;
    if (!*(a1 + 64))
    {
      v5 = 2;
    }

    v4 |= v5;
  }

  if (*(a1 + 48) == a3)
  {
    v6 = 8;
    if (*(a1 + 64))
    {
      v6 = 4;
    }

    v4 |= v6;
  }

  if (*(a1 + 56) == a3)
  {
    v7 = 4;
    if (*(a1 + 64))
    {
      v7 = 8;
    }

    v4 |= v7;
  }

  v8 = a2;
  [v8 setCornerMask:v4];
  [v8 setHasCustomCornerRounding:(*(a1 + 65) & 1) == 0];
}

- (BOOL)needsHorizontalNavigation
{
  rowModels = [(SearchUISectionModel *)self rowModels];
  v3 = [rowModels count] > 1;

  return v3;
}

- (NSDirectionalEdgeInsets)sectionInsetsWithAttributes:(id)attributes sectionIndex:(unint64_t)index
{
  attributesCopy = attributes;
  section = [(SearchUISectionModel *)self section];
  isBrowseSection = [section isBrowseSection];

  if (isBrowseSection)
  {
    v36.receiver = self;
    v36.super_class = SearchUIGridSectionModel;
    [(SearchUISectionModel *)&v36 sectionInsetsWithAttributes:attributesCopy sectionIndex:index];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    if (![(SearchUISectionModel *)self needsHeader])
    {
      v10 = 11.0;
    }

    v15 = 13.0;
  }

  else
  {
    rowModels = [(SearchUISectionModel *)self rowModels];
    firstObject = [rowModels firstObject];
    cardSection = [firstObject cardSection];
    searchUIGridSectionModel_useCustomSectionInset = [cardSection searchUIGridSectionModel_useCustomSectionInset];

    if (searchUIGridSectionModel_useCustomSectionInset)
    {
      rowModels2 = [(SearchUISectionModel *)self rowModels];
      firstObject2 = [rowModels2 firstObject];
      cardSection2 = [firstObject2 cardSection];
      [cardSection2 searchUIGridSectionModel_customSectionInsets];
      v10 = v23;
      v12 = v24;
      v15 = v25;
      v14 = v26;
    }

    else
    {
      v35.receiver = self;
      v35.super_class = SearchUIGridSectionModel;
      [(SearchUISectionModel *)&v35 sectionInsetsWithAttributes:attributesCopy sectionIndex:index];
      v10 = v27;
      v12 = v28;
      v15 = v29;
      v14 = v30;
    }
  }

  v31 = v10;
  v32 = v12;
  v33 = v15;
  v34 = v14;
  result.trailing = v34;
  result.bottom = v33;
  result.leading = v32;
  result.top = v31;
  return result;
}

- (id)rfHeroImageGridLayoutSectionForCardSection:(id)section
{
  v77[2] = *MEMORY[0x1E69E9840];
  isXROS = [MEMORY[0x1E69D9240] isXROS];
  v5 = MEMORY[0x1E6995588];
  v6 = [MEMORY[0x1E6995558] fractionalWidthDimension:0.666666667];
  if (isXROS)
  {
    [MEMORY[0x1E6995558] estimatedDimension:1.0];
  }

  else
  {
    [MEMORY[0x1E6995558] fractionalHeightDimension:1.0];
  }
  v7 = ;
  v8 = [v5 sizeWithWidthDimension:v6 heightDimension:v7];

  v71 = v8;
  v9 = [MEMORY[0x1E6995578] itemWithLayoutSize:v8];
  v10 = MEMORY[0x1E6995588];
  v11 = [MEMORY[0x1E6995558] fractionalWidthDimension:1.0];
  if (isXROS)
  {
    [MEMORY[0x1E6995558] estimatedDimension:1.0];
  }

  else
  {
    [MEMORY[0x1E6995558] fractionalHeightDimension:0.5];
  }
  v12 = ;
  v13 = [v10 sizeWithWidthDimension:v11 heightDimension:v12];

  v69 = v13;
  v14 = [MEMORY[0x1E6995578] itemWithLayoutSize:v13];
  v15 = MEMORY[0x1E6995588];
  v16 = [MEMORY[0x1E6995558] fractionalWidthDimension:0.5];
  if (isXROS)
  {
    [MEMORY[0x1E6995558] estimatedDimension:1.0];
  }

  else
  {
    [MEMORY[0x1E6995558] fractionalHeightDimension:1.0];
  }
  v17 = ;
  v18 = [v15 sizeWithWidthDimension:v16 heightDimension:v17];

  v67 = v18;
  v72 = [MEMORY[0x1E6995578] itemWithLayoutSize:v18];
  v19 = MEMORY[0x1E6995588];
  v20 = [MEMORY[0x1E6995558] fractionalWidthDimension:0.333333333];
  if (isXROS)
  {
    [MEMORY[0x1E6995558] estimatedDimension:1.0];
  }

  else
  {
    [MEMORY[0x1E6995558] fractionalHeightDimension:1.0];
  }
  v21 = ;
  v22 = [v19 sizeWithWidthDimension:v20 heightDimension:v21];

  v66 = v22;
  v23 = [MEMORY[0x1E6995578] itemWithLayoutSize:v22];
  +[SearchUIUtilities imageGridItemContentInset];
  v25 = v24;
  [v9 setContentInsets:{v24, v24, v24, v24}];
  [v14 setContentInsets:{v25, v25, v25, v25}];
  [v72 setContentInsets:{v25, v25, v25, v25}];
  v65 = v23;
  [v23 setContentInsets:{v25, v25, v25, v25}];
  v26 = MEMORY[0x1E6995588];
  v27 = [MEMORY[0x1E6995558] fractionalWidthDimension:0.333333333];
  if (isXROS)
  {
    [MEMORY[0x1E6995558] estimatedDimension:1.0];
  }

  else
  {
    [MEMORY[0x1E6995558] fractionalHeightDimension:1.0];
  }
  v28 = ;
  v29 = [v26 sizeWithWidthDimension:v27 heightDimension:v28];

  v64 = v29;
  v30 = [MEMORY[0x1E6995568] verticalGroupWithLayoutSize:v29 repeatingSubitem:v14 count:2];
  v31 = MEMORY[0x1E6995588];
  v32 = [MEMORY[0x1E6995558] fractionalWidthDimension:1.0];
  if (isXROS)
  {
    [MEMORY[0x1E6995558] estimatedDimension:1.0];
  }

  else
  {
    [MEMORY[0x1E6995558] fractionalHeightDimension:0.666666667];
  }
  v33 = ;
  v34 = [v31 sizeWithWidthDimension:v32 heightDimension:v33];

  if ([(SearchUIGridSectionModel *)self gridStyle]== 2)
  {
    v77[0] = v30;
    v35 = v77;
    v36 = v9;
  }

  else
  {
    v76 = v9;
    v35 = &v76;
    v36 = v30;
  }

  v63 = v30;
  v35[1] = v36;
  v61 = [MEMORY[0x1E695DEC8] arrayWithObjects:? count:?];
  v60 = [MEMORY[0x1E6995568] horizontalGroupWithLayoutSize:v34 subitems:?];
  v37 = MEMORY[0x1E6995588];
  v38 = [MEMORY[0x1E6995558] fractionalWidthDimension:0.666666667];
  v62 = v34;
  if (isXROS)
  {
    [MEMORY[0x1E6995558] estimatedDimension:1.0];
  }

  else
  {
    [MEMORY[0x1E6995558] fractionalHeightDimension:1.0];
  }
  v39 = ;
  v70 = v9;
  v40 = [v37 sizeWithWidthDimension:v38 heightDimension:v39];

  v41 = [MEMORY[0x1E6995568] horizontalGroupWithLayoutSize:v40 repeatingSubitem:v72 count:2];
  v42 = MEMORY[0x1E6995588];
  v43 = [MEMORY[0x1E6995558] fractionalWidthDimension:1.0];
  v68 = v14;
  if (isXROS)
  {
    [MEMORY[0x1E6995558] estimatedDimension:1.0];
  }

  else
  {
    [MEMORY[0x1E6995558] fractionalHeightDimension:0.333333333];
  }
  v44 = ;
  v45 = [v42 sizeWithWidthDimension:v43 heightDimension:v44];

  if ([(SearchUIGridSectionModel *)self gridStyle]== 2)
  {
    v46 = v65;
    v75 = v65;
    v47 = &v75;
    v48 = v41;
  }

  else
  {
    v74 = v41;
    v47 = &v74;
    v46 = v65;
    v48 = v65;
  }

  v47[1] = v48;
  v49 = [MEMORY[0x1E695DEC8] arrayWithObjects:? count:?];
  v50 = [MEMORY[0x1E6995568] horizontalGroupWithLayoutSize:v45 subitems:v49];
  v51 = MEMORY[0x1E6995588];
  v52 = [MEMORY[0x1E6995558] fractionalWidthDimension:1.0];
  if (isXROS)
  {
    [MEMORY[0x1E6995558] estimatedDimension:1.0];
  }

  else
  {
    [MEMORY[0x1E6995558] fractionalWidthDimension:1.0];
  }
  v53 = ;
  v54 = [v51 sizeWithWidthDimension:v52 heightDimension:v53];

  v55 = MEMORY[0x1E6995568];
  v73[0] = v60;
  v73[1] = v50;
  v56 = [MEMORY[0x1E695DEC8] arrayWithObjects:v73 count:2];
  v57 = [v55 verticalGroupWithLayoutSize:v54 subitems:v56];

  v58 = [MEMORY[0x1E6995580] sectionWithGroup:v57];

  return v58;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = SearchUIGridSectionModel;
  v4 = [(SearchUISectionModel *)&v6 copyWithZone:zone];
  [v4 setNumberOfColumns:{-[SearchUIGridSectionModel numberOfColumns](self, "numberOfColumns")}];
  return v4;
}

@end