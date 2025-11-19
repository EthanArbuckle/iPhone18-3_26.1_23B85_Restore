@interface SearchUILeadingTrailingSectionModel
- (BOOL)primaryCardSectionIsLeading;
- (NSDirectionalEdgeInsets)leadingGroupContentInsets;
- (NSDirectionalEdgeInsets)sectionInsets;
- (NSDirectionalEdgeInsets)sectionInsetsWithAttributes:(id)a3 sectionIndex:(unint64_t)a4;
- (NSDirectionalEdgeInsets)trailingGroupContentInsets;
- (SearchUILeadingTrailingSectionModel)initWithCardSection:(id)a3 rowModels:(id)a4 result:(id)a5 queryId:(unint64_t)a6 section:(id)a7;
- (id)buildGroupForFractionalWidth:(double)a3 numberOfCards:(int64_t)a4 isTopAligned:(BOOL)a5 prefersSeparator:(BOOL)a6 forView:(id)a7;
- (id)copyWithRowModels:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)layoutSectionForEnvironment:(id)a3 attributes:(id)a4 dataSource:(id)a5;
- (id)primaryCardSection;
- (id)rowModels;
- (id)rowModelsForCardSections:(id)a3 result:(id)a4 queryId:(unint64_t)a5;
- (int64_t)sectionBackgroundStyleWithAttributes:(id)a3;
- (int64_t)sectionBackgroundStyleWithAttributes:(id)a3 forRowModel:(id)a4;
@end

@implementation SearchUILeadingTrailingSectionModel

- (SearchUILeadingTrailingSectionModel)initWithCardSection:(id)a3 rowModels:(id)a4 result:(id)a5 queryId:(unint64_t)a6 section:(id)a7
{
  v12 = a3;
  v13 = a7;
  v14 = a5;
  v15 = [v12 leadingCardSections];
  v16 = [(SearchUILeadingTrailingSectionModel *)self rowModelsForCardSections:v15 result:v14 queryId:a6];

  v17 = [v12 trailingCardSections];
  v18 = [(SearchUILeadingTrailingSectionModel *)self rowModelsForCardSections:v17 result:v14 queryId:a6];

  v29.receiver = self;
  v29.super_class = SearchUILeadingTrailingSectionModel;
  v19 = [(SearchUISectionModel *)&v29 initWithRowModels:MEMORY[0x1E695E0F0] section:v13];

  if (v19)
  {
    objc_storeStrong(&v19->_cardSection, a3);
    objc_storeStrong(&v19->_leadingRowModels, v16);
    objc_storeStrong(&v19->_trailingRowModels, v18);
    [v12 leadingToTrailingRatio];
    v20 = 0.5;
    if (v21 > 0.0)
    {
      [v12 leadingToTrailingRatio];
      v23 = v22;
      [v12 leadingToTrailingRatio];
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

  v27 = [(SearchUILeadingTrailingSectionModel *)v19 primaryCardSection];
  [v27 customizeSection:v19 isLeading:{-[SearchUILeadingTrailingSectionModel primaryCardSectionIsLeading](v19, "primaryCardSectionIsLeading")}];

  return v19;
}

- (id)rowModelsForCardSections:(id)a3 result:(id)a4 queryId:(unint64_t)a5
{
  v5 = [SearchUITableModel tableModelWithCardSections:a3 result:a4 isInline:0 queryId:a5 shouldCombine:0];
  v6 = [v5 tableRowModel];
  v7 = [v6 firstObject];

  v8 = [v7 copy];

  return v8;
}

- (BOOL)primaryCardSectionIsLeading
{
  v3 = [(SearchUILeadingTrailingSectionModel *)self leadingRowModels];
  if ([v3 count] == 1)
  {
    v4 = 1;
  }

  else
  {
    v5 = [(SearchUILeadingTrailingSectionModel *)self leadingRowModels];
    if ([v5 count] < 2)
    {
      v4 = 0;
    }

    else
    {
      v6 = [(SearchUILeadingTrailingSectionModel *)self trailingRowModels];
      v4 = [v6 count] != 1;
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
  v5 = [v4 cardSection];

  return v5;
}

- (id)rowModels
{
  v3 = [(SearchUILeadingTrailingSectionModel *)self leadingRowModels];
  v4 = [(SearchUILeadingTrailingSectionModel *)self trailingRowModels];
  v5 = [v3 arrayByAddingObjectsFromArray:v4];

  return v5;
}

- (id)layoutSectionForEnvironment:(id)a3 attributes:(id)a4 dataSource:(id)a5
{
  v71[2] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(SearchUILeadingTrailingSectionModel *)self leadingRowModels];
  if ([v11 count])
  {
    v12 = [(SearchUILeadingTrailingSectionModel *)self trailingRowModels];
    v13 = [v12 count];

    if (v13)
    {
      [(SearchUILeadingTrailingSectionModel *)self preferredHeight];
      v15 = v14;
      v16 = v14 <= 0.0;
      v17 = [v10 controller];
      v18 = [v17 view];

      [(SearchUILeadingTrailingSectionModel *)self leadingFractionalWidth];
      v20 = v19;
      v21 = [(SearchUILeadingTrailingSectionModel *)self leadingRowModels];
      v69 = -[SearchUILeadingTrailingSectionModel buildGroupForFractionalWidth:numberOfCards:isTopAligned:prefersSeparator:forView:](self, "buildGroupForFractionalWidth:numberOfCards:isTopAligned:prefersSeparator:forView:", [v21 count], v16, -[SearchUILeadingTrailingSectionModel prefersSeparatorsInLeadingGroup](self, "prefersSeparatorsInLeadingGroup"), v18, v20);

      [(SearchUILeadingTrailingSectionModel *)self leadingGroupContentInsets];
      v23 = v22;
      v25 = v24;
      v27 = v26;
      v29 = v28;
      [(SearchUILeadingTrailingSectionModel *)self leadingFractionalWidth];
      v31 = 1.0 - v30;
      v32 = [(SearchUILeadingTrailingSectionModel *)self trailingRowModels];
      v67 = v18;
      v68 = -[SearchUILeadingTrailingSectionModel buildGroupForFractionalWidth:numberOfCards:isTopAligned:prefersSeparator:forView:](self, "buildGroupForFractionalWidth:numberOfCards:isTopAligned:prefersSeparator:forView:", [v32 count], v16, -[SearchUILeadingTrailingSectionModel prefersSeparatorsInTrailingGroup](self, "prefersSeparatorsInTrailingGroup"), v18, v31);

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
  v56 = [(SearchUISectionModel *)&v70 layoutSectionForEnvironment:v8 attributes:v9 dataSource:v10];
  [(SearchUILeadingTrailingSectionModel *)self sectionInsets];
  [v56 setContentInsets:?];
  [(SearchUILeadingTrailingSectionModel *)self verticalSpacing];
  [v56 setInterGroupSpacing:?];
LABEL_9:

  return v56;
}

- (id)buildGroupForFractionalWidth:(double)a3 numberOfCards:(int64_t)a4 isTopAligned:(BOOL)a5 prefersSeparator:(BOOL)a6 forView:(id)a7
{
  v7 = a6;
  v9 = a4;
  v50[1] = *MEMORY[0x1E69E9840];
  v12 = [MEMORY[0x1E6995558] estimatedDimension:{a4, a5, a6, a7, 1.0}];
  v49 = v12;
  v44 = self;
  if (a5)
  {
    v13 = v12;
    v14 = *MEMORY[0x1E69DC5C0];
    v15 = *(MEMORY[0x1E69DC5C0] + 8);
    v16 = *(MEMORY[0x1E69DC5C0] + 16);
    v17 = *(MEMORY[0x1E69DC5C0] + 24);
    v18 = v13;
  }

  else
  {
    v18 = [MEMORY[0x1E6995558] fractionalHeightDimension:1.0];
    v13 = [MEMORY[0x1E6995558] fractionalHeightDimension:1.0 / v9];
    [(SearchUILeadingTrailingSectionModel *)self verticalSpacing];
    v14 = v19 * 0.5;
    [(SearchUILeadingTrailingSectionModel *)self verticalSpacing];
    v16 = v20 * 0.5;
    v17 = 0.0;
    v15 = 0.0;
  }

  v21 = MEMORY[0x1E6995588];
  v22 = [MEMORY[0x1E6995558] fractionalWidthDimension:1.0];
  v47 = v13;
  v23 = [v21 sizeWithWidthDimension:v22 heightDimension:v13];

  v24 = MEMORY[0x1E6995588];
  v25 = [MEMORY[0x1E6995558] fractionalWidthDimension:a3];
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
  if (v9 >= 1)
  {
    v36 = MEMORY[0x1E695E0F0];
    do
    {
      v37 = v36;
      if (v7 && v9 != 1)
      {
        v50[0] = v33;
        v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:1];
      }

      v38 = [MEMORY[0x1E6995578] itemWithLayoutSize:v23 supplementaryItems:v37];
      v39 = v38;
      if (!a5)
      {
        [v38 setContentInsets:{v14, v15, v16, v17}];
      }

      [v35 addObject:v39];

      --v9;
    }

    while (v9);
  }

  v40 = [MEMORY[0x1E6995568] verticalGroupWithLayoutSize:v46 subitems:v35];
  if (a5)
  {
    v41 = MEMORY[0x1E6995590];
    [(SearchUILeadingTrailingSectionModel *)v44 verticalSpacing];
    v42 = [v41 fixedSpacing:?];
    [v40 setInterItemSpacing:v42];
  }

  return v40;
}

- (int64_t)sectionBackgroundStyleWithAttributes:(id)a3 forRowModel:(id)a4
{
  v5 = a4;
  v6 = [(SearchUILeadingTrailingSectionModel *)self primaryCardSection];
  if ([(SearchUILeadingTrailingSectionModel *)self primaryCardSectionIsLeading])
  {
    goto LABEL_7;
  }

  v7 = [v5 backgroundColor];
  if (!v7)
  {
    goto LABEL_7;
  }

  v8 = v7;
  v9 = [v5 cardSection];
  v10 = v9;
  if (v9 != v6)
  {

LABEL_7:
    v13 = [(SearchUILeadingTrailingSectionModel *)self primaryCardSection];
    v12 = [v13 preferredBackgroundStyleForIsLeadingPrimaryCard:{-[SearchUILeadingTrailingSectionModel primaryCardSectionIsLeading](self, "primaryCardSectionIsLeading")}];

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

- (int64_t)sectionBackgroundStyleWithAttributes:(id)a3
{
  v4 = [(SearchUILeadingTrailingSectionModel *)self primaryCardSection];
  v5 = [v4 preferredBackgroundStyleForIsLeadingPrimaryCard:{-[SearchUILeadingTrailingSectionModel primaryCardSectionIsLeading](self, "primaryCardSectionIsLeading")}];

  return v5;
}

- (NSDirectionalEdgeInsets)sectionInsetsWithAttributes:(id)a3 sectionIndex:(unint64_t)a4
{
  v6 = a3;
  if ([(SearchUILeadingTrailingSectionModel *)self customSectionInsets])
  {
    [(SearchUILeadingTrailingSectionModel *)self sectionInsets];
  }

  else
  {
    v19.receiver = self;
    v19.super_class = SearchUILeadingTrailingSectionModel;
    [(SearchUISectionModel *)&v19 sectionInsetsWithAttributes:v6 sectionIndex:a4];
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

- (id)copyWithRowModels:(id)a3
{
  v4 = SearchUIDataSourceLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [SearchUILeadingTrailingSectionModel copyWithRowModels:v4];
  }

  return [(SearchUILeadingTrailingSectionModel *)self copy];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v10.receiver = self;
  v10.super_class = SearchUILeadingTrailingSectionModel;
  v4 = [(SearchUISectionModel *)&v10 copyWithZone:a3];
  v5 = [(SearchUILeadingTrailingSectionModel *)self leadingRowModels];
  v6 = [v5 copy];
  [v4 setLeadingRowModels:v6];

  v7 = [(SearchUILeadingTrailingSectionModel *)self trailingRowModels];
  v8 = [v7 copy];
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