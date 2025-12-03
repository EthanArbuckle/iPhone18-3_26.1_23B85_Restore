@interface SearchUILeadingTrailingSectionModel
- (BOOL)primaryCardSectionIsLeading;
- (NSDirectionalEdgeInsets)leadingGroupContentInsets;
- (NSDirectionalEdgeInsets)sectionInsets;
- (NSDirectionalEdgeInsets)sectionInsetsWithAttributes:(id)attributes sectionIndex:(unint64_t)index;
- (NSDirectionalEdgeInsets)trailingGroupContentInsets;
- (SearchUILeadingTrailingSectionModel)initWithCardSection:(id)section rowModels:(id)models result:(id)result queryId:(unint64_t)id section:(id)a7;
- (id)buildGroupForFractionalWidth:(double)width numberOfCards:(int64_t)cards isTopAligned:(BOOL)aligned prefersSeparator:(BOOL)separator forView:(id)view;
- (id)copyWithRowModels:(id)models;
- (id)copyWithZone:(_NSZone *)zone;
- (id)layoutSectionForEnvironment:(id)environment attributes:(id)attributes dataSource:(id)source;
- (id)primaryCardSection;
- (id)rowModels;
- (id)rowModelsForCardSections:(id)sections result:(id)result queryId:(unint64_t)id;
- (int64_t)sectionBackgroundStyleWithAttributes:(id)attributes;
- (int64_t)sectionBackgroundStyleWithAttributes:(id)attributes forRowModel:(id)model;
@end

@implementation SearchUILeadingTrailingSectionModel

- (SearchUILeadingTrailingSectionModel)initWithCardSection:(id)section rowModels:(id)models result:(id)result queryId:(unint64_t)id section:(id)a7
{
  sectionCopy = section;
  v13 = a7;
  resultCopy = result;
  leadingCardSections = [sectionCopy leadingCardSections];
  v16 = [(SearchUILeadingTrailingSectionModel *)self rowModelsForCardSections:leadingCardSections result:resultCopy queryId:id];

  trailingCardSections = [sectionCopy trailingCardSections];
  v18 = [(SearchUILeadingTrailingSectionModel *)self rowModelsForCardSections:trailingCardSections result:resultCopy queryId:id];

  v29.receiver = self;
  v29.super_class = SearchUILeadingTrailingSectionModel;
  v19 = [(SearchUISectionModel *)&v29 initWithRowModels:MEMORY[0x1E695E0F0] section:v13];

  if (v19)
  {
    objc_storeStrong(&v19->_cardSection, section);
    objc_storeStrong(&v19->_leadingRowModels, v16);
    objc_storeStrong(&v19->_trailingRowModels, v18);
    [sectionCopy leadingToTrailingRatio];
    v20 = 0.5;
    if (v21 > 0.0)
    {
      [sectionCopy leadingToTrailingRatio];
      v23 = v22;
      [sectionCopy leadingToTrailingRatio];
      v20 = v23 / (v24 + 1.0);
    }

    v19->_leadingFractionalWidth = v20;
    v19->_preferredHeight = 0.0;
    v19->_horizontalSpacing = 8.0;
    v19->_verticalSpacing = 8.0;
    v25 = *MEMORY[0x1E69DC5C0];
    v26 = *(MEMORY[0x1E69DC5C0] + 16);
    *&v19->_sectionInsets.top = *MEMORY[0x1E69DC5C0];
    *&v19->_sectionInsets.bottom = v26;
    *&v19->_leadingGroupContentInsets.top = v25;
    *&v19->_leadingGroupContentInsets.bottom = v26;
    *&v19->_trailingGroupContentInsets.top = v25;
    *&v19->_trailingGroupContentInsets.bottom = v26;
  }

  primaryCardSection = [(SearchUILeadingTrailingSectionModel *)v19 primaryCardSection];
  [primaryCardSection customizeSection:v19 isLeading:{-[SearchUILeadingTrailingSectionModel primaryCardSectionIsLeading](v19, "primaryCardSectionIsLeading")}];

  return v19;
}

- (id)rowModelsForCardSections:(id)sections result:(id)result queryId:(unint64_t)id
{
  v5 = [SearchUITableModel tableModelWithCardSections:sections result:result isInline:0 queryId:id shouldCombine:0];
  tableRowModel = [v5 tableRowModel];
  firstObject = [tableRowModel firstObject];

  v8 = [firstObject copy];

  return v8;
}

- (BOOL)primaryCardSectionIsLeading
{
  leadingRowModels = [(SearchUILeadingTrailingSectionModel *)self leadingRowModels];
  if ([leadingRowModels count] == 1)
  {
    v4 = 1;
  }

  else
  {
    leadingRowModels2 = [(SearchUILeadingTrailingSectionModel *)self leadingRowModels];
    if ([leadingRowModels2 count] < 2)
    {
      v4 = 0;
    }

    else
    {
      trailingRowModels = [(SearchUILeadingTrailingSectionModel *)self trailingRowModels];
      v4 = [trailingRowModels count] != 1;
    }
  }

  return v4;
}

- (id)primaryCardSection
{
  if ([(SearchUILeadingTrailingSectionModel *)self primaryCardSectionIsLeading])
  {
    [(SearchUILeadingTrailingSectionModel *)self leadingRowModels];
  }

  else
  {
    [(SearchUILeadingTrailingSectionModel *)self trailingRowModels];
  }
  v3 = ;
  v4 = [v3 objectAtIndexedSubscript:0];
  cardSection = [v4 cardSection];

  return cardSection;
}

- (id)rowModels
{
  leadingRowModels = [(SearchUILeadingTrailingSectionModel *)self leadingRowModels];
  trailingRowModels = [(SearchUILeadingTrailingSectionModel *)self trailingRowModels];
  v5 = [leadingRowModels arrayByAddingObjectsFromArray:trailingRowModels];

  return v5;
}

- (id)layoutSectionForEnvironment:(id)environment attributes:(id)attributes dataSource:(id)source
{
  v71[2] = *MEMORY[0x1E69E9840];
  environmentCopy = environment;
  attributesCopy = attributes;
  sourceCopy = source;
  leadingRowModels = [(SearchUILeadingTrailingSectionModel *)self leadingRowModels];
  if ([leadingRowModels count])
  {
    trailingRowModels = [(SearchUILeadingTrailingSectionModel *)self trailingRowModels];
    v13 = [trailingRowModels count];

    if (v13)
    {
      [(SearchUILeadingTrailingSectionModel *)self preferredHeight];
      v15 = v14;
      v16 = v14 <= 0.0;
      controller = [sourceCopy controller];
      view = [controller view];

      [(SearchUILeadingTrailingSectionModel *)self leadingFractionalWidth];
      v20 = v19;
      leadingRowModels2 = [(SearchUILeadingTrailingSectionModel *)self leadingRowModels];
      v69 = -[SearchUILeadingTrailingSectionModel buildGroupForFractionalWidth:numberOfCards:isTopAligned:prefersSeparator:forView:](self, "buildGroupForFractionalWidth:numberOfCards:isTopAligned:prefersSeparator:forView:", [leadingRowModels2 count], v16, -[SearchUILeadingTrailingSectionModel prefersSeparatorsInLeadingGroup](self, "prefersSeparatorsInLeadingGroup"), view, v20);

      [(SearchUILeadingTrailingSectionModel *)self leadingGroupContentInsets];
      v23 = v22;
      v25 = v24;
      v27 = v26;
      v29 = v28;
      [(SearchUILeadingTrailingSectionModel *)self leadingFractionalWidth];
      v31 = 1.0 - v30;
      trailingRowModels2 = [(SearchUILeadingTrailingSectionModel *)self trailingRowModels];
      v67 = view;
      v68 = -[SearchUILeadingTrailingSectionModel buildGroupForFractionalWidth:numberOfCards:isTopAligned:prefersSeparator:forView:](self, "buildGroupForFractionalWidth:numberOfCards:isTopAligned:prefersSeparator:forView:", [trailingRowModels2 count], v16, -[SearchUILeadingTrailingSectionModel prefersSeparatorsInTrailingGroup](self, "prefersSeparatorsInTrailingGroup"), view, v31);

      [(SearchUILeadingTrailingSectionModel *)self trailingGroupContentInsets];
      v34 = v33;
      v36 = v35;
      v66 = v37;
      v39 = v38;
      if (v15 > 0.0)
      {
        [(SearchUILeadingTrailingSectionModel *)self horizontalSpacing];
        [v69 setContentInsets:{v23, v25, v27, v29 + v57 * 0.5}];
        [(SearchUILeadingTrailingSectionModel *)self horizontalSpacing];
        [v68 setContentInsets:{v34, v36 + v58 * 0.5, v66, v39}];
        v59 = MEMORY[0x1E6995588];
        v53 = [MEMORY[0x1E6995558] fractionalWidthDimension:1.0];
        v60 = MEMORY[0x1E6995558];
        [(SearchUILeadingTrailingSectionModel *)self preferredHeight];
        v54 = [v60 absoluteDimension:?];
        v55 = v59;
      }

      else
      {
        v40 = MEMORY[0x1E6995560];
        v41 = [MEMORY[0x1E6995590] fixedSpacing:v25];
        v42 = [MEMORY[0x1E6995590] fixedSpacing:v23];
        v43 = [MEMORY[0x1E6995590] fixedSpacing:v29];
        v44 = [MEMORY[0x1E6995590] fixedSpacing:v27];
        v45 = [v40 spacingForLeading:v41 top:v42 trailing:v43 bottom:v44];
        [v69 setEdgeSpacing:v45];

        v46 = MEMORY[0x1E6995560];
        v47 = [MEMORY[0x1E6995590] fixedSpacing:v36];
        v48 = [MEMORY[0x1E6995590] fixedSpacing:v34];
        v49 = [MEMORY[0x1E6995590] fixedSpacing:v39];
        v50 = [MEMORY[0x1E6995590] fixedSpacing:v66];
        v51 = [v46 spacingForLeading:v47 top:v48 trailing:v49 bottom:v50];
        [v68 setEdgeSpacing:v51];

        v52 = MEMORY[0x1E6995588];
        v53 = [MEMORY[0x1E6995558] fractionalWidthDimension:1.0];
        v54 = [MEMORY[0x1E6995558] estimatedDimension:1.0];
        v55 = v52;
      }

      v61 = [v55 sizeWithWidthDimension:v53 heightDimension:v54];

      v62 = MEMORY[0x1E6995568];
      v71[0] = v69;
      v71[1] = v68;
      v63 = [MEMORY[0x1E695DEC8] arrayWithObjects:v71 count:2];
      v64 = [v62 horizontalGroupWithLayoutSize:v61 subitems:v63];

      v56 = [MEMORY[0x1E6995580] sectionWithGroup:v64];
      [(SearchUILeadingTrailingSectionModel *)self sectionInsets];
      [v56 setContentInsets:?];

      goto LABEL_9;
    }
  }

  else
  {
  }

  v70.receiver = self;
  v70.super_class = SearchUILeadingTrailingSectionModel;
  v56 = [(SearchUISectionModel *)&v70 layoutSectionForEnvironment:environmentCopy attributes:attributesCopy dataSource:sourceCopy];
  [(SearchUILeadingTrailingSectionModel *)self sectionInsets];
  [v56 setContentInsets:?];
  [(SearchUILeadingTrailingSectionModel *)self verticalSpacing];
  [v56 setInterGroupSpacing:?];
LABEL_9:

  return v56;
}

- (id)buildGroupForFractionalWidth:(double)width numberOfCards:(int64_t)cards isTopAligned:(BOOL)aligned prefersSeparator:(BOOL)separator forView:(id)view
{
  separatorCopy = separator;
  cardsCopy = cards;
  v50[1] = *MEMORY[0x1E69E9840];
  v12 = [MEMORY[0x1E6995558] estimatedDimension:{cards, aligned, separator, view, 1.0}];
  v49 = v12;
  selfCopy = self;
  if (aligned)
  {
    cardsCopy = v12;
    v14 = *MEMORY[0x1E69DC5C0];
    v15 = *(MEMORY[0x1E69DC5C0] + 8);
    v16 = *(MEMORY[0x1E69DC5C0] + 16);
    v17 = *(MEMORY[0x1E69DC5C0] + 24);
    v18 = cardsCopy;
  }

  else
  {
    v18 = [MEMORY[0x1E6995558] fractionalHeightDimension:1.0];
    cardsCopy = [MEMORY[0x1E6995558] fractionalHeightDimension:1.0 / cardsCopy];
    [(SearchUILeadingTrailingSectionModel *)self verticalSpacing];
    v14 = v19 * 0.5;
    [(SearchUILeadingTrailingSectionModel *)self verticalSpacing];
    v16 = v20 * 0.5;
    v17 = 0.0;
    v15 = 0.0;
  }

  v21 = MEMORY[0x1E6995588];
  v22 = [MEMORY[0x1E6995558] fractionalWidthDimension:1.0];
  v47 = cardsCopy;
  v23 = [v21 sizeWithWidthDimension:v22 heightDimension:cardsCopy];

  v24 = MEMORY[0x1E6995588];
  v25 = [MEMORY[0x1E6995558] fractionalWidthDimension:width];
  v48 = v18;
  v46 = [v24 sizeWithWidthDimension:v25 heightDimension:v18];

  v26 = MEMORY[0x1E6995588];
  v27 = [MEMORY[0x1E6995558] fractionalWidthDimension:1.0];
  v28 = [MEMORY[0x1E6995558] estimatedDimension:1.0];
  v29 = [v26 sizeWithWidthDimension:v27 heightDimension:v28];

  v30 = [MEMORY[0x1E6995540] layoutAnchorWithEdges:4];
  v31 = MEMORY[0x1E6995598];
  v32 = +[SearchUISupplementaryIdentifiers itemSeparatorKind];
  v45 = v30;
  v33 = [v31 supplementaryItemWithLayoutSize:v29 elementKind:v32 containerAnchor:v30];

  +[SearchUIUtilities standardCompactHorizontalMargin];
  [v33 setContentInsets:{0.0, v34, 0.0, 0.0}];
  v35 = objc_opt_new();
  if (cardsCopy >= 1)
  {
    v36 = MEMORY[0x1E695E0F0];
    do
    {
      v37 = v36;
      if (separatorCopy && cardsCopy != 1)
      {
        v50[0] = v33;
        v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:1];
      }

      v38 = [MEMORY[0x1E6995578] itemWithLayoutSize:v23 supplementaryItems:v37];
      v39 = v38;
      if (!aligned)
      {
        [v38 setContentInsets:{v14, v15, v16, v17}];
      }

      [v35 addObject:v39];

      --cardsCopy;
    }

    while (cardsCopy);
  }

  v40 = [MEMORY[0x1E6995568] verticalGroupWithLayoutSize:v46 subitems:v35];
  if (aligned)
  {
    v41 = MEMORY[0x1E6995590];
    [(SearchUILeadingTrailingSectionModel *)selfCopy verticalSpacing];
    v42 = [v41 fixedSpacing:?];
    [v40 setInterItemSpacing:v42];
  }

  return v40;
}

- (int64_t)sectionBackgroundStyleWithAttributes:(id)attributes forRowModel:(id)model
{
  modelCopy = model;
  primaryCardSection = [(SearchUILeadingTrailingSectionModel *)self primaryCardSection];
  if ([(SearchUILeadingTrailingSectionModel *)self primaryCardSectionIsLeading])
  {
    goto LABEL_7;
  }

  backgroundColor = [modelCopy backgroundColor];
  if (!backgroundColor)
  {
    goto LABEL_7;
  }

  v8 = backgroundColor;
  cardSection = [modelCopy cardSection];
  v10 = cardSection;
  if (cardSection != primaryCardSection)
  {

LABEL_7:
    primaryCardSection2 = [(SearchUILeadingTrailingSectionModel *)self primaryCardSection];
    v12 = [primaryCardSection2 preferredBackgroundStyleForIsLeadingPrimaryCard:{-[SearchUILeadingTrailingSectionModel primaryCardSectionIsLeading](self, "primaryCardSectionIsLeading")}];

    goto LABEL_8;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    goto LABEL_7;
  }

  v12 = 3;
LABEL_8:

  return v12;
}

- (int64_t)sectionBackgroundStyleWithAttributes:(id)attributes
{
  primaryCardSection = [(SearchUILeadingTrailingSectionModel *)self primaryCardSection];
  v5 = [primaryCardSection preferredBackgroundStyleForIsLeadingPrimaryCard:{-[SearchUILeadingTrailingSectionModel primaryCardSectionIsLeading](self, "primaryCardSectionIsLeading")}];

  return v5;
}

- (NSDirectionalEdgeInsets)sectionInsetsWithAttributes:(id)attributes sectionIndex:(unint64_t)index
{
  attributesCopy = attributes;
  if ([(SearchUILeadingTrailingSectionModel *)self customSectionInsets])
  {
    [(SearchUILeadingTrailingSectionModel *)self sectionInsets];
  }

  else
  {
    v19.receiver = self;
    v19.super_class = SearchUILeadingTrailingSectionModel;
    [(SearchUISectionModel *)&v19 sectionInsetsWithAttributes:attributesCopy sectionIndex:index];
  }

  v11 = v7;
  v12 = v8;
  v13 = v9;
  v14 = v10;

  v15 = v11;
  v16 = v12;
  v17 = v13;
  v18 = v14;
  result.trailing = v18;
  result.bottom = v17;
  result.leading = v16;
  result.top = v15;
  return result;
}

- (id)copyWithRowModels:(id)models
{
  v4 = SearchUIDataSourceLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [SearchUILeadingTrailingSectionModel copyWithRowModels:v4];
  }

  return [(SearchUILeadingTrailingSectionModel *)self copy];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v10.receiver = self;
  v10.super_class = SearchUILeadingTrailingSectionModel;
  v4 = [(SearchUISectionModel *)&v10 copyWithZone:zone];
  leadingRowModels = [(SearchUILeadingTrailingSectionModel *)self leadingRowModels];
  v6 = [leadingRowModels copy];
  [v4 setLeadingRowModels:v6];

  trailingRowModels = [(SearchUILeadingTrailingSectionModel *)self trailingRowModels];
  v8 = [trailingRowModels copy];
  [v4 setTrailingRowModels:v8];

  [(SearchUILeadingTrailingSectionModel *)self horizontalSpacing];
  [v4 setHorizontalSpacing:?];
  [(SearchUILeadingTrailingSectionModel *)self verticalSpacing];
  [v4 setVerticalSpacing:?];
  [(SearchUILeadingTrailingSectionModel *)self leadingFractionalWidth];
  [v4 setLeadingFractionalWidth:?];
  [(SearchUILeadingTrailingSectionModel *)self preferredHeight];
  [v4 setPreferredHeight:?];
  [v4 setPrefersSeparatorsInLeadingGroup:{-[SearchUILeadingTrailingSectionModel prefersSeparatorsInLeadingGroup](self, "prefersSeparatorsInLeadingGroup")}];
  [v4 setPrefersSeparatorsInTrailingGroup:{-[SearchUILeadingTrailingSectionModel prefersSeparatorsInTrailingGroup](self, "prefersSeparatorsInTrailingGroup")}];
  [(SearchUILeadingTrailingSectionModel *)self leadingGroupContentInsets];
  [v4 setLeadingGroupContentInsets:?];
  [(SearchUILeadingTrailingSectionModel *)self trailingGroupContentInsets];
  [v4 setTrailingGroupContentInsets:?];
  [(SearchUILeadingTrailingSectionModel *)self sectionInsets];
  [v4 setSectionInsets:?];
  return v4;
}

- (NSDirectionalEdgeInsets)leadingGroupContentInsets
{
  top = self->_leadingGroupContentInsets.top;
  leading = self->_leadingGroupContentInsets.leading;
  bottom = self->_leadingGroupContentInsets.bottom;
  trailing = self->_leadingGroupContentInsets.trailing;
  result.trailing = trailing;
  result.bottom = bottom;
  result.leading = leading;
  result.top = top;
  return result;
}

- (NSDirectionalEdgeInsets)trailingGroupContentInsets
{
  top = self->_trailingGroupContentInsets.top;
  leading = self->_trailingGroupContentInsets.leading;
  bottom = self->_trailingGroupContentInsets.bottom;
  trailing = self->_trailingGroupContentInsets.trailing;
  result.trailing = trailing;
  result.bottom = bottom;
  result.leading = leading;
  result.top = top;
  return result;
}

- (NSDirectionalEdgeInsets)sectionInsets
{
  top = self->_sectionInsets.top;
  leading = self->_sectionInsets.leading;
  bottom = self->_sectionInsets.bottom;
  trailing = self->_sectionInsets.trailing;
  result.trailing = trailing;
  result.bottom = bottom;
  result.leading = leading;
  result.top = top;
  return result;
}

@end