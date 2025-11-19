@interface SearchUIHorizontallyScrollingSectionModel
- (BOOL)drawsBackground;
- (BOOL)needsHeaderSeparator;
- (BOOL)needsHorizontalNavigation;
- (BOOL)selfSizingInTwoAxes;
- (BOOL)shouldHeightMatchSection;
- (NSDirectionalEdgeInsets)sectionInsetsWithAttributes:(id)a3 sectionIndex:(unint64_t)a4;
- (SearchUIHorizontallyScrollingSectionModel)initWithRowModels:(id)a3 section:(id)a4 numberOfRows:(int64_t)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)layoutSectionForEnvironment:(id)a3 attributes:(id)a4 dataSource:(id)a5;
- (int64_t)sectionBackgroundStyleWithAttributes:(id)a3;
@end

@implementation SearchUIHorizontallyScrollingSectionModel

- (SearchUIHorizontallyScrollingSectionModel)initWithRowModels:(id)a3 section:(id)a4 numberOfRows:(int64_t)a5
{
  v8 = a3;
  v13.receiver = self;
  v13.super_class = SearchUIHorizontallyScrollingSectionModel;
  v9 = [(SearchUISectionModel *)&v13 initWithRowModels:v8 section:a4];
  if (v9)
  {
    if (a5)
    {
      v10 = [v8 count];
      if (v10 >= a5)
      {
        v11 = a5;
      }

      else
      {
        v11 = v10;
      }
    }

    else
    {
      v11 = 1;
    }

    [(SearchUIHorizontallyScrollingSectionModel *)v9 setNumberOfRows:v11];
  }

  return v9;
}

- (id)layoutSectionForEnvironment:(id)a3 attributes:(id)a4 dataSource:(id)a5
{
  v56[1] = *MEMORY[0x1E69E9840];
  v6 = a5;
  v7 = [(SearchUISectionModel *)self rowModels];
  v55 = v6;
  if ([v7 count])
  {
    v8 = [(SearchUISectionModel *)self rowModels];
  }

  else
  {
    v9 = [v6 snapshot];
    v8 = [v9 itemIdentifiersInSectionWithIdentifier:self];
  }

  v10 = [v8 firstObject];
  v11 = [v10 cardSection];

  v12 = MEMORY[0x1E6995588];
  v13 = [v11 searchUIHorizontallyScrollingSectionModel_widthDimension];
  v14 = [v11 searchUIHorizontallyScrollingSectionModel_heightDimension];
  v15 = [v12 sizeWithWidthDimension:v13 heightDimension:v14];

  v16 = [MEMORY[0x1E6995578] itemWithLayoutSize:v15];
  v54 = v8;
  v17 = [v8 count];
  v18 = (v17 / [(SearchUIHorizontallyScrollingSectionModel *)self numberOfRows]);
  v19 = [(SearchUIHorizontallyScrollingSectionModel *)self numberOfRows];
  v20 = [v15 widthDimension];
  v21 = [v20 isEstimated];

  [v11 searchUIHorizontallyScrollingSectionModel_interItemSpacing];
  v23 = v22;
  v24 = [v15 widthDimension];
  v25 = [v24 isEstimated];
  v52 = v18;
  if (v21)
  {
    if (v25)
    {
      v26 = 10000.0;
      v27 = 1;
LABEL_9:
      v53 = v27;
      goto LABEL_13;
    }

    v28 = [v11 searchUIHorizontallyScrollingSectionModel_widthDimension];
    [v28 dimension];
    v26 = v23 * (v18 - 1) + v29 * v18;
    v30 = 1;
  }

  else
  {
    if (v25)
    {
      v26 = 10000.0;
      v27 = 2;
      goto LABEL_9;
    }

    v28 = [v11 searchUIHorizontallyScrollingSectionModel_widthDimension];
    [v28 dimension];
    v26 = v31;
    v30 = 2;
  }

  v53 = v30;

LABEL_13:
  v32 = MEMORY[0x1E6995588];
  v33 = [MEMORY[0x1E6995558] absoluteDimension:v26];
  v34 = [MEMORY[0x1E6995558] estimatedDimension:1.0];
  v35 = [v32 sizeWithWidthDimension:v33 heightDimension:v34];

  if (v19 < 2)
  {
    v42 = MEMORY[0x1E6995568];
    v56[0] = v16;
    v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:v56 count:1];
    v40 = [v42 horizontalGroupWithLayoutSize:v35 subitems:v43];
  }

  else
  {
    v36 = objc_opt_new();
    if ([(SearchUIHorizontallyScrollingSectionModel *)self numberOfRows])
    {
      v37 = 0;
      if (v21)
      {
        v38 = v52;
      }

      else
      {
        v38 = 1;
      }

      do
      {
        v39 = [MEMORY[0x1E6995568] horizontalGroupWithLayoutSize:v35 subitem:v16 count:{v38, v52}];
        [v36 addObject:v39];

        ++v37;
      }

      while (v37 < [(SearchUIHorizontallyScrollingSectionModel *)self numberOfRows]);
    }

    v40 = [MEMORY[0x1E6995568] verticalGroupWithLayoutSize:v35 subitems:{v36, v52}];
    v41 = [MEMORY[0x1E6995560] spacingForLeading:0 top:0 trailing:0 bottom:0];
    [v40 setEdgeSpacing:v41];
  }

  v44 = MEMORY[0x1E6995590];
  [v11 _superGroupSpacing];
  v45 = [v44 fixedSpacing:?];
  [v40 setInterItemSpacing:v45];

  v46 = MEMORY[0x1E6995560];
  v47 = [MEMORY[0x1E6995590] fixedSpacing:16.0];
  v48 = [v46 spacingForLeading:0 top:0 trailing:0 bottom:v47];
  [v40 setEdgeSpacing:v48];

  v49 = [MEMORY[0x1E6995580] sectionWithGroup:v40];
  [v49 setOrthogonalScrollingBehavior:v53];
  v50 = 8.0;
  if (v23 != 0.0)
  {
    v50 = v23;
  }

  [v49 setInterGroupSpacing:v50];

  return v49;
}

- (BOOL)shouldHeightMatchSection
{
  v3 = [(SearchUIHorizontallyScrollingSectionModel *)self drawsBackground];
  if (v3)
  {
    LOBYTE(v3) = [(SearchUIHorizontallyScrollingSectionModel *)self numberOfRows]== 1;
  }

  return v3;
}

- (BOOL)needsHeaderSeparator
{
  v2 = [(SearchUISectionModel *)self rowModels];
  v3 = [v2 firstObject];
  v4 = [v3 cardSection];
  v5 = [v4 searchUIHorizontallyScrollingSectionModel_needsHeaderSeparator];

  return v5;
}

- (BOOL)drawsBackground
{
  v2 = [(SearchUISectionModel *)self rowModels];
  v3 = [v2 firstObject];
  v4 = [v3 cardSection];
  v5 = [v4 searchUIHorizontallyScrollingSectionModel_useBackground];

  return v5;
}

- (BOOL)selfSizingInTwoAxes
{
  v2 = [(SearchUISectionModel *)self rowModels];
  v3 = [v2 firstObject];
  v4 = [v3 cardSection];
  v5 = [v4 searchUIHorizontallyScrollingSectionModel_widthDimension];
  v6 = [v5 isEstimated];

  return v6;
}

- (int64_t)sectionBackgroundStyleWithAttributes:(id)a3
{
  if ([(SearchUIHorizontallyScrollingSectionModel *)self drawsBackground])
  {
    return 3;
  }

  else
  {
    return 5;
  }
}

- (NSDirectionalEdgeInsets)sectionInsetsWithAttributes:(id)a3 sectionIndex:(unint64_t)a4
{
  v6 = a3;
  v46.receiver = self;
  v46.super_class = SearchUIHorizontallyScrollingSectionModel;
  [(SearchUISectionModel *)&v46 sectionInsetsWithAttributes:v6 sectionIndex:a4];
  v44 = v7;
  v45 = v8;
  v9 = [(SearchUISectionModel *)self rowModels];
  v10 = [v9 firstObject];
  v11 = [v10 cardSection];
  [v11 searchUIHorizontallyScrollingSectionModel_additionalSectionInsets];
  v13 = v12;
  v15 = v14;
  v40 = v17;
  v42 = v16;

  v18 = [(SearchUISectionModel *)self rowModels];
  v19 = [v18 firstObject];
  v20 = [v19 cardSection];
  [v20 searchUIHorizontallyScrollingSectionModel_customSectionInsets];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;

  v29 = v24 != 0.0;
  if (v22 != 0.0)
  {
    v29 = 1;
  }

  if (v28 != 0.0)
  {
    v29 = 1;
  }

  v30 = v26 != 0.0 || v29;
  if ([MEMORY[0x1E69D9240] isMacOS])
  {
    v31 = 2.0;
  }

  else
  {
    v31 = 4.0;
  }

  v32 = 16.0;
  if ([MEMORY[0x1E69D9240] isMacOS])
  {
    v33 = [(SearchUISectionModel *)self section];
    if ([v33 isBrowseSection])
    {
      v32 = 25.0;
    }

    else
    {
      v32 = 12.0;
    }
  }

  v34 = [v6 shouldUseInsetRoundedSections];
  if ((v30 & 1) == 0)
  {
    v35 = 0.0;
    if (v34)
    {
      v35 = 8.0;
    }

    v22 = v13 + v31;
    v24 = v44 + v15 + v35;
    v26 = v43 + v32;
    v28 = v45 + v41 + v35;
  }

  v36 = v22;
  v37 = v24;
  v38 = v26;
  v39 = v28;
  result.trailing = v39;
  result.bottom = v38;
  result.leading = v37;
  result.top = v36;
  return result;
}

- (BOOL)needsHorizontalNavigation
{
  v3 = [(SearchUISectionModel *)self rowModels];
  v4 = [v3 count];
  v5 = (v4 / [(SearchUIHorizontallyScrollingSectionModel *)self numberOfRows]);

  return v5 > 1;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = SearchUIHorizontallyScrollingSectionModel;
  v4 = [(SearchUISectionModel *)&v6 copyWithZone:a3];
  [v4 setNumberOfRows:{-[SearchUIHorizontallyScrollingSectionModel numberOfRows](self, "numberOfRows")}];
  return v4;
}

@end