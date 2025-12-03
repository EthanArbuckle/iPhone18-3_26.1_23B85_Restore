@interface SearchUIHorizontallyScrollingSectionModel
- (BOOL)drawsBackground;
- (BOOL)needsHeaderSeparator;
- (BOOL)needsHorizontalNavigation;
- (BOOL)selfSizingInTwoAxes;
- (BOOL)shouldHeightMatchSection;
- (NSDirectionalEdgeInsets)sectionInsetsWithAttributes:(id)attributes sectionIndex:(unint64_t)index;
- (SearchUIHorizontallyScrollingSectionModel)initWithRowModels:(id)models section:(id)section numberOfRows:(int64_t)rows;
- (id)copyWithZone:(_NSZone *)zone;
- (id)layoutSectionForEnvironment:(id)environment attributes:(id)attributes dataSource:(id)source;
- (int64_t)sectionBackgroundStyleWithAttributes:(id)attributes;
@end

@implementation SearchUIHorizontallyScrollingSectionModel

- (SearchUIHorizontallyScrollingSectionModel)initWithRowModels:(id)models section:(id)section numberOfRows:(int64_t)rows
{
  modelsCopy = models;
  v13.receiver = self;
  v13.super_class = SearchUIHorizontallyScrollingSectionModel;
  v9 = [(SearchUISectionModel *)&v13 initWithRowModels:modelsCopy section:section];
  if (v9)
  {
    if (rows)
    {
      v10 = [modelsCopy count];
      if (v10 >= rows)
      {
        rowsCopy = rows;
      }

      else
      {
        rowsCopy = v10;
      }
    }

    else
    {
      rowsCopy = 1;
    }

    [(SearchUIHorizontallyScrollingSectionModel *)v9 setNumberOfRows:rowsCopy];
  }

  return v9;
}

- (id)layoutSectionForEnvironment:(id)environment attributes:(id)attributes dataSource:(id)source
{
  v56[1] = *MEMORY[0x1E69E9840];
  sourceCopy = source;
  rowModels = [(SearchUISectionModel *)self rowModels];
  v55 = sourceCopy;
  if ([rowModels count])
  {
    rowModels2 = [(SearchUISectionModel *)self rowModels];
  }

  else
  {
    snapshot = [sourceCopy snapshot];
    rowModels2 = [snapshot itemIdentifiersInSectionWithIdentifier:self];
  }

  firstObject = [rowModels2 firstObject];
  cardSection = [firstObject cardSection];

  v12 = MEMORY[0x1E6995588];
  searchUIHorizontallyScrollingSectionModel_widthDimension = [cardSection searchUIHorizontallyScrollingSectionModel_widthDimension];
  searchUIHorizontallyScrollingSectionModel_heightDimension = [cardSection searchUIHorizontallyScrollingSectionModel_heightDimension];
  v15 = [v12 sizeWithWidthDimension:searchUIHorizontallyScrollingSectionModel_widthDimension heightDimension:searchUIHorizontallyScrollingSectionModel_heightDimension];

  v16 = [MEMORY[0x1E6995578] itemWithLayoutSize:v15];
  v54 = rowModels2;
  v17 = [rowModels2 count];
  v18 = (v17 / [(SearchUIHorizontallyScrollingSectionModel *)self numberOfRows]);
  numberOfRows = [(SearchUIHorizontallyScrollingSectionModel *)self numberOfRows];
  widthDimension = [v15 widthDimension];
  isEstimated = [widthDimension isEstimated];

  [cardSection searchUIHorizontallyScrollingSectionModel_interItemSpacing];
  v23 = v22;
  widthDimension2 = [v15 widthDimension];
  isEstimated2 = [widthDimension2 isEstimated];
  v52 = v18;
  if (isEstimated)
  {
    if (isEstimated2)
    {
      v26 = 10000.0;
      v27 = 1;
LABEL_9:
      v53 = v27;
      goto LABEL_13;
    }

    searchUIHorizontallyScrollingSectionModel_widthDimension2 = [cardSection searchUIHorizontallyScrollingSectionModel_widthDimension];
    [searchUIHorizontallyScrollingSectionModel_widthDimension2 dimension];
    v26 = v23 * (v18 - 1) + v29 * v18;
    v30 = 1;
  }

  else
  {
    if (isEstimated2)
    {
      v26 = 10000.0;
      v27 = 2;
      goto LABEL_9;
    }

    searchUIHorizontallyScrollingSectionModel_widthDimension2 = [cardSection searchUIHorizontallyScrollingSectionModel_widthDimension];
    [searchUIHorizontallyScrollingSectionModel_widthDimension2 dimension];
    v26 = v31;
    v30 = 2;
  }

  v53 = v30;

LABEL_13:
  v32 = MEMORY[0x1E6995588];
  v33 = [MEMORY[0x1E6995558] absoluteDimension:v26];
  v34 = [MEMORY[0x1E6995558] estimatedDimension:1.0];
  v35 = [v32 sizeWithWidthDimension:v33 heightDimension:v34];

  if (numberOfRows < 2)
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
      if (isEstimated)
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
  [cardSection _superGroupSpacing];
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
  drawsBackground = [(SearchUIHorizontallyScrollingSectionModel *)self drawsBackground];
  if (drawsBackground)
  {
    LOBYTE(drawsBackground) = [(SearchUIHorizontallyScrollingSectionModel *)self numberOfRows]== 1;
  }

  return drawsBackground;
}

- (BOOL)needsHeaderSeparator
{
  rowModels = [(SearchUISectionModel *)self rowModels];
  firstObject = [rowModels firstObject];
  cardSection = [firstObject cardSection];
  searchUIHorizontallyScrollingSectionModel_needsHeaderSeparator = [cardSection searchUIHorizontallyScrollingSectionModel_needsHeaderSeparator];

  return searchUIHorizontallyScrollingSectionModel_needsHeaderSeparator;
}

- (BOOL)drawsBackground
{
  rowModels = [(SearchUISectionModel *)self rowModels];
  firstObject = [rowModels firstObject];
  cardSection = [firstObject cardSection];
  searchUIHorizontallyScrollingSectionModel_useBackground = [cardSection searchUIHorizontallyScrollingSectionModel_useBackground];

  return searchUIHorizontallyScrollingSectionModel_useBackground;
}

- (BOOL)selfSizingInTwoAxes
{
  rowModels = [(SearchUISectionModel *)self rowModels];
  firstObject = [rowModels firstObject];
  cardSection = [firstObject cardSection];
  searchUIHorizontallyScrollingSectionModel_widthDimension = [cardSection searchUIHorizontallyScrollingSectionModel_widthDimension];
  isEstimated = [searchUIHorizontallyScrollingSectionModel_widthDimension isEstimated];

  return isEstimated;
}

- (int64_t)sectionBackgroundStyleWithAttributes:(id)attributes
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

- (NSDirectionalEdgeInsets)sectionInsetsWithAttributes:(id)attributes sectionIndex:(unint64_t)index
{
  attributesCopy = attributes;
  v46.receiver = self;
  v46.super_class = SearchUIHorizontallyScrollingSectionModel;
  [(SearchUISectionModel *)&v46 sectionInsetsWithAttributes:attributesCopy sectionIndex:index];
  v44 = v7;
  v45 = v8;
  rowModels = [(SearchUISectionModel *)self rowModels];
  firstObject = [rowModels firstObject];
  cardSection = [firstObject cardSection];
  [cardSection searchUIHorizontallyScrollingSectionModel_additionalSectionInsets];
  v13 = v12;
  v15 = v14;
  v40 = v17;
  v42 = v16;

  rowModels2 = [(SearchUISectionModel *)self rowModels];
  firstObject2 = [rowModels2 firstObject];
  cardSection2 = [firstObject2 cardSection];
  [cardSection2 searchUIHorizontallyScrollingSectionModel_customSectionInsets];
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
    section = [(SearchUISectionModel *)self section];
    if ([section isBrowseSection])
    {
      v32 = 25.0;
    }

    else
    {
      v32 = 12.0;
    }
  }

  shouldUseInsetRoundedSections = [attributesCopy shouldUseInsetRoundedSections];
  if ((v30 & 1) == 0)
  {
    v35 = 0.0;
    if (shouldUseInsetRoundedSections)
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
  rowModels = [(SearchUISectionModel *)self rowModels];
  v4 = [rowModels count];
  v5 = (v4 / [(SearchUIHorizontallyScrollingSectionModel *)self numberOfRows]);

  return v5 > 1;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = SearchUIHorizontallyScrollingSectionModel;
  v4 = [(SearchUISectionModel *)&v6 copyWithZone:zone];
  [v4 setNumberOfRows:{-[SearchUIHorizontallyScrollingSectionModel numberOfRows](self, "numberOfRows")}];
  return v4;
}

@end