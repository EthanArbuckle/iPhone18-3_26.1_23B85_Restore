@interface SearchUIGridSectionModel
- (BOOL)needsHorizontalNavigation;
- (NSDirectionalEdgeInsets)sectionInsetsWithAttributes:(id)a3 sectionIndex:(unint64_t)a4;
- (SearchUIGridSectionModel)initWithRowModels:(id)a3 numberOfColumns:(int64_t)a4 gridStyle:(int)a5 section:(id)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (id)layoutSectionForEnvironment:(id)a3 attributes:(id)a4 dataSource:(id)a5;
- (id)rfHeroImageGridLayoutSectionForCardSection:(id)a3;
- (int64_t)sectionBackgroundStyleWithAttributes:(id)a3;
- (void)setCornerMaskRulesOnRowModels:(id)a3 forColumnCount:(unint64_t)a4;
@end

@implementation SearchUIGridSectionModel

- (SearchUIGridSectionModel)initWithRowModels:(id)a3 numberOfColumns:(int64_t)a4 gridStyle:(int)a5 section:(id)a6
{
  v6 = *&a5;
  v11.receiver = self;
  v11.super_class = SearchUIGridSectionModel;
  v8 = [(SearchUISectionModel *)&v11 initWithRowModels:a3 section:a6];
  v9 = v8;
  if (v8)
  {
    [(SearchUIGridSectionModel *)v8 setNumberOfColumns:a4];
    [(SearchUIGridSectionModel *)v9 setGridStyle:v6];
  }

  return v9;
}

- (id)layoutSectionForEnvironment:(id)a3 attributes:(id)a4 dataSource:(id)a5
{
  v7 = a3;
  v8 = [a5 snapshot];
  v9 = [v8 itemIdentifiersInSectionWithIdentifier:self];

  v10 = [(SearchUIGridSectionModel *)self numberOfColumns];
  if (!v10)
  {
    v11 = [v7 container];
    [v11 effectiveContentSize];
    v13 = v12;

    if ([MEMORY[0x1E69D9240] isMacOS] && v13 > 500.0)
    {
      v10 = 6;
    }

    else if (+[SearchUIUtilities isIpad]&& v13 > 500.0)
    {
      v10 = 5;
    }

    else if ([MEMORY[0x1E69D9240] isWatchOS])
    {
      v10 = 2;
    }

    else
    {
      v10 = 4;
    }
  }

  v14 = [v9 firstObject];
  v15 = [v14 cardSection];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([v9 count] == 1)
    {
      v10 = 1;
    }

    v16 = [v9 firstObject];
    [v16 setShouldFillAvailableSpace:v10 == 1];
  }

  if ([(SearchUIGridSectionModel *)self gridStyle]== 1 || [(SearchUIGridSectionModel *)self gridStyle]== 2)
  {
    if (([MEMORY[0x1E69D9240] isWatchOS] & 1) == 0)
    {
      [(SearchUIGridSectionModel *)self setCornerMaskRulesOnRowModels:v9 forColumnCount:v10];
      v18 = [(SearchUIGridSectionModel *)self rfHeroImageGridLayoutSectionForCardSection:v15];
      goto LABEL_38;
    }

    v10 = 2;
  }

  objc_opt_class();
  v39 = v7;
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v17 = [MEMORY[0x1E69D9240] isSiri];
  }

  else
  {
    v17 = 0;
  }

  v19 = [(SearchUISectionModel *)self section];
  v40 = [v19 isBrowseSection];

  v20 = [MEMORY[0x1E6995558] fractionalWidthDimension:1.0 / v10];
  v21 = [v15 searchUIGridSectionModel_heightDimensionWithColumnCount:v10];
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
  if (v17)
  {
    +[SearchUIUtilities imageGridItemContentInset];
    [v25 setContentInsets:{v26, v26, v26, v26}];
  }

  v27 = MEMORY[0x1E6995588];
  v28 = [MEMORY[0x1E6995558] fractionalWidthDimension:1.0];
  if (v17)
  {
    v29 = [v27 sizeWithWidthDimension:v28 heightDimension:v20];
  }

  else
  {
    v30 = [MEMORY[0x1E6995558] estimatedDimension:1.0];
    v29 = [v27 sizeWithWidthDimension:v28 heightDimension:v30];
  }

  v7 = v39;

  v31 = [MEMORY[0x1E6995568] horizontalGroupWithLayoutSize:v29 repeatingSubitem:v25 count:v10];
  v32 = v31;
  if (v40)
  {
    [v31 setInterItemSpacing:0];
  }

  else
  {
    v33 = MEMORY[0x1E6995590];
    [v15 searchUIGridSectionModel_interItemSpacing];
    v34 = [v33 fixedSpacing:?];
    [v32 setInterItemSpacing:v34];
  }

  [v15 searchUIGridSectionModel_groupInsetFor:v39];
  [v32 setContentInsets:?];
  v18 = [MEMORY[0x1E6995580] sectionWithGroup:v32];
  v35 = 10.0;
  if ((v40 & 1) == 0)
  {
    [v15 searchUIGridSectionModel_interItemSpacing];
  }

  [v18 setInterGroupSpacing:v35];
  [(SearchUIGridSectionModel *)self setCornerMaskRulesOnRowModels:v9 forColumnCount:v10];

LABEL_38:

  return v18;
}

- (int64_t)sectionBackgroundStyleWithAttributes:(id)a3
{
  v4 = [(SearchUISectionModel *)self rowModels];
  v5 = [v4 firstObject];
  v6 = [v5 cardSection];
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
    v9 = [(SearchUISectionModel *)self rowModels];
    v10 = [v9 firstObject];
    v11 = [v10 cardSection];
    if ([v11 searchUIGridSectionModel_useBackground])
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

- (void)setCornerMaskRulesOnRowModels:(id)a3 forColumnCount:(unint64_t)a4
{
  v6 = a3;
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
    v9 = [(SearchUISectionModel *)self rowModels];
    v10 = [v9 firstObject];
    v11 = [v10 cardSection];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  v13 = [v6 count];
  v14 = vcvtps_u32_f32(v13 / a4);
  v15 = a4 - 1;
  if (v8)
  {
    v15 = 2;
  }

  if (v7)
  {
    v15 = 1;
  }

  v16 = v14 * a4;
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

  v23 = v20 * a4;
  if ((v7 | v8))
  {
    v24 = 3;
  }

  else
  {
    v24 = v23;
  }

  v25 = [MEMORY[0x1E69D91A8] isLTR];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __73__SearchUIGridSectionModel_setCornerMaskRulesOnRowModels_forColumnCount___block_invoke;
  v26[3] = &__block_descriptor_66_e33_v32__0__SearchUIRowModel_8Q16_B24l;
  v27 = v25 ^ 1;
  v26[4] = 0;
  v26[5] = v21;
  v26[6] = v22;
  v26[7] = v24;
  v28 = isKindOfClass & 1;
  [v6 enumerateObjectsUsingBlock:v26];
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
  v2 = [(SearchUISectionModel *)self rowModels];
  v3 = [v2 count] > 1;

  return v3;
}

- (NSDirectionalEdgeInsets)sectionInsetsWithAttributes:(id)a3 sectionIndex:(unint64_t)a4
{
  v6 = a3;
  v7 = [(SearchUISectionModel *)self section];
  v8 = [v7 isBrowseSection];

  if (v8)
  {
    v36.receiver = self;
    v36.super_class = SearchUIGridSectionModel;
    [(SearchUISectionModel *)&v36 sectionInsetsWithAttributes:v6 sectionIndex:a4];
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
    v16 = [(SearchUISectionModel *)self rowModels];
    v17 = [v16 firstObject];
    v18 = [v17 cardSection];
    v19 = [v18 searchUIGridSectionModel_useCustomSectionInset];

    if (v19)
    {
      v20 = [(SearchUISectionModel *)self rowModels];
      v21 = [v20 firstObject];
      v22 = [v21 cardSection];
      [v22 searchUIGridSectionModel_customSectionInsets];
      v10 = v23;
      v12 = v24;
      v15 = v25;
      v14 = v26;
    }

    else
    {
      v35.receiver = self;
      v35.super_class = SearchUIGridSectionModel;
      [(SearchUISectionModel *)&v35 sectionInsetsWithAttributes:v6 sectionIndex:a4];
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

- (id)rfHeroImageGridLayoutSectionForCardSection:(id)a3
{
  v77[2] = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E69D9240] isXROS];
  v5 = MEMORY[0x1E6995588];
  v6 = [MEMORY[0x1E6995558] fractionalWidthDimension:0.666666667];
  if (v4)
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
  if (v4)
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
  if (v4)
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
  if (v4)
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
  if (v4)
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
  if (v4)
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
  if (v4)
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
  if (v4)
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
  if (v4)
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

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = SearchUIGridSectionModel;
  v4 = [(SearchUISectionModel *)&v6 copyWithZone:a3];
  [v4 setNumberOfColumns:{-[SearchUIGridSectionModel numberOfColumns](self, "numberOfColumns")}];
  return v4;
}

@end