@interface SHSheetContentLayoutProvider
+ (id)_createFooterSupplementaryItemWithHeightDimension:(id)a3;
+ (id)_createHeaderSupplementaryItemWithHeightDimension:(id)a3;
- (NSDirectionalEdgeInsets)_resolvedDirectionalLayoutMargins:(double)a3 trailingMargin:(double)a4;
- (SHSheetContentLayoutDelegate)delegate;
- (SHSheetContentLayoutProvider)initWithLayoutSpec:(id)a3;
- (id)_createHorizontalLayoutSectionWithContext:(id)a3 iconWidth:(double)a4 sectionHeight:(double)a5 labelHeightCalculationBlock:(id)a6;
- (id)_layoutForActionsSectionWithContext:(id)a3;
- (id)_layoutForAppsSectionWithContext:(id)a3;
- (id)_layoutForCustomViewSectionWithContext:(id)a3;
- (id)_layoutForHeroActionsSectionWithContext:(id)a3;
- (id)_layoutForPeopleSectionWithContext:(id)a3;
- (id)_layoutForTopActionSectionWithContext:(id)a3;
- (id)layoutSectionForContext:(id)a3;
- (int64_t)_sectionForContext:(id)a3;
@end

@implementation SHSheetContentLayoutProvider

- (SHSheetContentLayoutProvider)initWithLayoutSpec:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SHSheetContentLayoutProvider;
  v6 = [(SHSheetContentLayoutProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_layoutSpec, a3);
  }

  return v7;
}

- (int64_t)_sectionForContext:(id)a3
{
  v3 = a3;
  v4 = [v3 sectionIdentifier];
  if ([v4 isEqualToString:@"SHSheetContentCustomViewSectionIdentifier"])
  {
    v5 = 0;
  }

  else if ([v4 isEqualToString:@"SHSheetContentPeopleSectionIdentifier"])
  {
    v5 = 1;
  }

  else if ([v4 isEqualToString:@"SHSheetContentAppsSectionIdentifier"] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"SHSheetContentEmbeddedActionsSectionIdentifier"))
  {
    v5 = 2;
  }

  else if ([v4 isEqualToString:@"SHSheetContentHeroActionsSectionIdentifier"] && (objc_msgSend(v3, "enableHeroActions") & 1) != 0)
  {
    v5 = 4;
  }

  else if ([v4 isEqualToString:@"SHSheetContentTopActionsSectionIdentifier"])
  {
    v5 = 6;
  }

  else
  {
    v5 = 5;
  }

  return v5;
}

- (id)layoutSectionForContext:(id)a3
{
  v4 = a3;
  v5 = [(SHSheetContentLayoutProvider *)self _sectionForContext:v4];
  v6 = 0;
  if (v5 > 3)
  {
    switch(v5)
    {
      case 4:
        v7 = [(SHSheetContentLayoutProvider *)self _layoutForHeroActionsSectionWithContext:v4];
        break;
      case 5:
        v7 = [(SHSheetContentLayoutProvider *)self _layoutForActionsSectionWithContext:v4];
        break;
      case 6:
        v7 = [(SHSheetContentLayoutProvider *)self _layoutForTopActionSectionWithContext:v4];
        break;
      default:
        goto LABEL_15;
    }
  }

  else if ((v5 - 2) < 2)
  {
    v7 = [(SHSheetContentLayoutProvider *)self _layoutForAppsSectionWithContext:v4];
  }

  else if (v5)
  {
    if (v5 != 1)
    {
      goto LABEL_15;
    }

    v7 = [(SHSheetContentLayoutProvider *)self _layoutForPeopleSectionWithContext:v4];
  }

  else
  {
    v7 = [(SHSheetContentLayoutProvider *)self _layoutForCustomViewSectionWithContext:v4];
  }

  v6 = v7;
LABEL_15:

  return v6;
}

- (id)_layoutForCustomViewSectionWithContext:(id)a3
{
  v30[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(SHSheetContentLayoutProvider *)self layoutSpec];
  v6 = [MEMORY[0x1E6995558] fractionalWidthDimension:1.0];
  v7 = MEMORY[0x1E6995558];
  [v5 customViewSectionHeight];
  v8 = [v7 absoluteDimension:?];
  v28 = [MEMORY[0x1E6995588] sizeWithWidthDimension:v6 heightDimension:v8];
  v9 = [MEMORY[0x1E6995578] itemWithLayoutSize:?];
  v10 = [MEMORY[0x1E6995588] sizeWithWidthDimension:v6 heightDimension:v8];
  v11 = MEMORY[0x1E6995568];
  v27 = v9;
  v30[0] = v9;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:1];
  v13 = [v11 horizontalGroupWithLayoutSize:v10 subitems:v12];

  v14 = [MEMORY[0x1E6995580] sectionWithGroup:v13];
  [v5 customViewVerticalInset];
  v16 = v15;
  [v5 customViewVerticalInset];
  [v14 setContentInsets:{v16, 0.0, v17, 0.0}];
  v18 = [v4 environment];
  v19 = [v18 traitCollection];
  v20 = [v19 verticalSizeClass];

  LODWORD(v18) = [v4 enableCustomViewSectionFooter];
  if (v18 && v20 != 1)
  {
    v21 = MEMORY[0x1E6995558];
    [v5 estimatedFooterHeight];
    v22 = [v21 absoluteDimension:?];
    v23 = [SHSheetContentLayoutProvider _createFooterSupplementaryItemWithHeightDimension:v22];

    v29 = v23;
    v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v29 count:1];
    [v14 setBoundarySupplementaryItems:v24];

    [v14 setSupplementariesFollowContentInsets:0];
  }

  v25 = [[SHSheetContentLayoutSection alloc] initWithLayoutSection:v14];

  return v25;
}

- (id)_layoutForPeopleSectionWithContext:(id)a3
{
  v4 = a3;
  v5 = [(SHSheetContentLayoutProvider *)self layoutSpec];
  [v5 peopleIconWidth];
  v7 = v6;
  [v5 peopleSectionHeight];
  v9 = v8;
  v28 = MEMORY[0x1E69E9820];
  v29 = 3221225472;
  v30 = __67__SHSheetContentLayoutProvider__layoutForPeopleSectionWithContext___block_invoke;
  v31 = &unk_1E71F97A0;
  v32 = self;
  v10 = v4;
  v33 = v10;
  v11 = [(SHSheetContentLayoutProvider *)self _createHorizontalLayoutSectionWithContext:v10 iconWidth:&v28 sectionHeight:v7 labelHeightCalculationBlock:v9];
  v12 = [v11 layoutSection];
  [v12 setSupplementariesFollowContentInsets:0];
  v13 = objc_opt_new();
  if ([v10 enableTopContentSectionText])
  {
    v14 = MEMORY[0x1E6995558];
    [v5 estimatedHeaderHeight];
    v15 = [v14 estimatedDimension:?];
    v16 = [SHSheetContentLayoutProvider _createHeaderSupplementaryItemWithHeightDimension:v15];

    [v13 addObject:v16];
  }

  if ([v10 enableSectionFooter])
  {
    v17 = MEMORY[0x1E6995558];
    [v5 estimatedFooterHeight];
    v18 = [v17 absoluteDimension:?];
    v19 = [SHSheetContentLayoutProvider _createFooterSupplementaryItemWithHeightDimension:v18];

    if (_ShareSheetSolariumEnabled())
    {
      [v12 contentInsets];
      v21 = v20;
      v23 = v22;
      v25 = v24;
      [v11 cellSideInset];
      [v19 setContentInsets:{v21, v23 + v26, v25, v23 + v26}];
    }

    [v13 addObject:v19];
  }

  [v12 setBoundarySupplementaryItems:v13];

  return v11;
}

double __67__SHSheetContentLayoutProvider__layoutForPeopleSectionWithContext___block_invoke(uint64_t a1, void *a2, double a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 delegate];
  v8 = [v7 airDropNodeForItemIdentifier:v6];

  v9 = [*(a1 + 40) environment];
  v10 = [v9 traitCollection];
  [UIAirDropGroupActivityCell maximumLabelHeightForNode:v8 width:v10 traitCollection:a3];
  v12 = v11;

  return v12;
}

- (id)_layoutForAppsSectionWithContext:(id)a3
{
  v4 = a3;
  v5 = [(SHSheetContentLayoutProvider *)self layoutSpec];
  [v5 sharingAppIconWidth];
  v7 = v6;
  [v5 sharingAppSectionHeight];
  v9 = v8;
  v27 = MEMORY[0x1E69E9820];
  v28 = 3221225472;
  v29 = __65__SHSheetContentLayoutProvider__layoutForAppsSectionWithContext___block_invoke;
  v30 = &unk_1E71F97A0;
  v31 = self;
  v10 = v4;
  v32 = v10;
  v11 = [(SHSheetContentLayoutProvider *)self _createHorizontalLayoutSectionWithContext:v10 iconWidth:&v27 sectionHeight:v7 labelHeightCalculationBlock:v9];
  v12 = [v11 layoutSection];
  [v12 setSupplementariesFollowContentInsets:0];
  v13 = objc_opt_new();
  v14 = [v10 dataSourceSnapshot];
  v15 = [v14 sectionIdentifiers];
  v16 = [v15 containsObject:@"SHSheetContentPeopleSectionIdentifier"];

  if ([v10 enableTopContentSectionText] && (v16 & 1) == 0)
  {
    v17 = MEMORY[0x1E6995558];
    [v5 estimatedHeaderHeight];
    v18 = [v17 estimatedDimension:?];
    v19 = [SHSheetContentLayoutProvider _createHeaderSupplementaryItemWithHeightDimension:v18];

    [v13 addObject:v19];
  }

  if (_ShareSheetSolariumEnabled() && [v10 enableSectionFooter])
  {
    v20 = MEMORY[0x1E6995558];
    [v5 estimatedFooterHeight];
    v21 = [v20 absoluteDimension:?];
    v22 = [SHSheetContentLayoutProvider _createFooterSupplementaryItemWithHeightDimension:v21];

    if (_ShareSheetSolariumEnabled())
    {
      [v12 contentInsets];
      v24 = v23;
      [v11 cellSideInset];
      [v22 setContentInsets:{0.0, v24 + v25, 0.0, v24 + v25}];
    }

    [v13 addObject:v22];
  }

  [v12 setBoundarySupplementaryItems:v13];

  return v11;
}

double __65__SHSheetContentLayoutProvider__layoutForAppsSectionWithContext___block_invoke(uint64_t a1, void *a2, double a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 delegate];
  v8 = [v7 titleForItemIdentifier:v6];

  v9 = objc_opt_class();
  v10 = [*(a1 + 40) environment];
  v11 = [v10 traitCollection];
  [v9 maximumLabelHeightForTitle:v8 width:v11 traitCollection:a3];
  v13 = v12;

  return v13;
}

- (id)_layoutForTopActionSectionWithContext:(id)a3
{
  v4 = a3;
  v5 = [(SHSheetContentLayoutProvider *)self layoutSpec];
  [v5 sharingAppIconWidth];
  v7 = v6;
  [v5 topActionsSectionHeight];
  v9 = [(SHSheetContentLayoutProvider *)self _createHorizontalLayoutSectionWithContext:v4 iconWidth:0 sectionHeight:v7 labelHeightCalculationBlock:v8];

  return v9;
}

- (id)_layoutForHeroActionsSectionWithContext:(id)a3
{
  v4 = a3;
  v5 = [(SHSheetContentLayoutProvider *)self layoutSpec];
  v6 = [v4 environment];
  v7 = [v6 container];
  [v7 effectiveContentSize];
  v9 = v8;

  [v4 viewDirectionalLayoutMargins];
  v11 = v10;
  v12 = [v6 container];
  [v12 contentInsets];
  v14 = v11 - v13;

  [v4 viewDirectionalLayoutMargins];
  v16 = v15;
  v17 = [v6 container];
  [v17 contentInsets];
  v19 = v16 - v18;

  [v5 heroActionItemSpacing];
  v21 = v20;
  v48 = MEMORY[0x1E69E9820];
  v49 = 3221225472;
  v50 = __72__SHSheetContentLayoutProvider__layoutForHeroActionsSectionWithContext___block_invoke;
  v51 = &unk_1E71F97C8;
  v54 = v9;
  v55 = v14;
  v56 = v19;
  v57 = v20;
  v22 = v4;
  v52 = v22;
  v53 = self;
  v23 = MEMORY[0x18CFF58E0](&v48);
  v24 = [v22 dataSourceSnapshot];
  v25 = [v22 sectionIdentifier];
  v26 = [v24 numberOfItemsInSection:v25];

  v27 = [v5 shouldUseNarrowLayoutForHeroActionsWithContainerWidth:v9];
  v28 = 2;
  if (v26 < 2)
  {
    v28 = v26;
  }

  if (v27)
  {
    v29 = v28;
  }

  else
  {
    v29 = v26;
  }

  v30 = v23[2](v23, v29);
  if (v29 >= 3 && v30 >= 3)
  {
    v29 = 2;
    v30 = v23[2](v23, 2);
  }

  [UIActivityHeroActionCell heightForNumberOfLines:v30];
  v32 = v31;
  v33 = MEMORY[0x1E6995588];
  v34 = [MEMORY[0x1E6995558] fractionalWidthDimension:1.0];
  v35 = [MEMORY[0x1E6995558] fractionalHeightDimension:1.0];
  v36 = [v33 sizeWithWidthDimension:v34 heightDimension:v35];

  v37 = [MEMORY[0x1E6995578] itemWithLayoutSize:v36];
  v38 = MEMORY[0x1E6995588];
  v39 = [MEMORY[0x1E6995558] fractionalWidthDimension:1.0];
  v40 = [MEMORY[0x1E6995558] absoluteDimension:v32];
  v41 = [v38 sizeWithWidthDimension:v39 heightDimension:v40];

  v42 = [MEMORY[0x1E6995568] horizontalGroupWithLayoutSize:v41 subitem:v37 count:v29];
  v43 = [MEMORY[0x1E6995590] fixedSpacing:v21];
  [v42 setInterItemSpacing:v43];

  v44 = [MEMORY[0x1E6995580] sectionWithGroup:v42];
  [v44 setInterGroupSpacing:v21];
  [v5 actionInterGroupInset];
  [v44 setContentInsets:{v14, v14, v45, v19}];
  v46 = [[SHSheetContentLayoutSection alloc] initWithLayoutSection:v44];

  return v46;
}

uint64_t __72__SHSheetContentLayoutProvider__layoutForHeroActionsSectionWithContext___block_invoke(uint64_t a1, uint64_t a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v7 = *(a1 + 64);
  v6 = *(a1 + 72);
  v8 = [*(a1 + 32) dataSourceSnapshot];
  v9 = [*(a1 + 32) sectionIdentifier];
  v10 = [v8 itemIdentifiersInSectionWithIdentifier:v9];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = (v4 - v5 - v7 - v6 * (a2 - 1)) / a2;
    v15 = *v24;
    v16 = 1;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v24 != v15)
        {
          objc_enumerationMutation(v11);
        }

        v18 = *(*(&v23 + 1) + 8 * i);
        v19 = [*(a1 + 40) delegate];
        v20 = [v19 titleForItemIdentifier:v18];

        v21 = [UIActivityHeroActionCell numberOfLinesForTitle:v20 itemWidth:v14];
        if (v16 <= v21)
        {
          v16 = v21;
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v13);
  }

  else
  {
    v16 = 1;
  }

  return v16;
}

- (NSDirectionalEdgeInsets)_resolvedDirectionalLayoutMargins:(double)a3 trailingMargin:(double)a4
{
  v6 = [MEMORY[0x1E69DC938] currentDevice];
  v7 = [v6 userInterfaceIdiom];

  if (v7 == 6)
  {
    v8 = 24.0;
  }

  else
  {
    v8 = a4;
  }

  if (v7 == 6)
  {
    v9 = 24.0;
  }

  else
  {
    v9 = a3;
  }

  v10 = 0.0;
  v11 = 0.0;
  result.trailing = v8;
  result.bottom = v11;
  result.leading = v9;
  result.top = v10;
  return result;
}

- (id)_layoutForActionsSectionWithContext:(id)a3
{
  v51[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(SHSheetContentLayoutProvider *)self layoutSpec];
  v6 = [v4 environment];
  v7 = [v5 actionsLayoutSectionConfigurationWithEnvironment:v6];

  v8 = objc_alloc(MEMORY[0x1E69DD3F0]);
  v9 = [v4 environment];
  v10 = [v8 initWithConfiguration:v7 layoutEnvironment:v9];

  [v10 setContentInsetsReference:2];
  v11 = [v4 sectionIdentifier];
  v12 = [v4 dataSourceSnapshot];
  v13 = [v12 sectionIdentifiers];

  v14 = [v13 lastObject];
  if ([v11 isEqualToString:v14])
  {
  }

  else
  {
    v15 = [v11 hasPrefix:@"SHSheetContentInformationalActionsSectionIdentifier_"];

    if ((v15 & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  v16 = MEMORY[0x1E6995558];
  [v5 estimatedActionFooterHeight];
  v17 = [v16 estimatedDimension:?];
  v18 = [SHSheetContentLayoutProvider _createFooterSupplementaryItemWithHeightDimension:v17];

  v51[0] = v18;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:1];
  [v10 setBoundarySupplementaryItems:v19];

  [v10 setSupplementariesFollowContentInsets:1];
LABEL_5:
  if (_ShareSheetSolariumEnabled())
  {
    v20 = 10.0;
  }

  else
  {
    v20 = 0.0;
  }

  v21 = [v13 indexOfObject:v11];
  if (v21)
  {
    v22 = [v13 objectAtIndexedSubscript:v21 - 1];
    if (([v22 isEqualToString:@"SHSheetContentCustomViewSectionIdentifier"] & 1) != 0 || objc_msgSend(v22, "isEqualToString:", @"SHSheetContentPeopleSectionIdentifier"))
    {
      [v5 actionInterGroupInset];
      v20 = v23;
    }
  }

  [v4 viewDirectionalLayoutMargins];
  v25 = v24;
  v26 = [v4 environment];
  v27 = [v26 container];
  [v27 contentInsets];
  v29 = v25 - v28;

  [v4 viewDirectionalLayoutMargins];
  v31 = v30;
  v32 = [v4 environment];
  v33 = [v32 container];
  [v33 contentInsets];
  v35 = v31 - v34;

  [(SHSheetContentLayoutProvider *)self _resolvedDirectionalLayoutMargins:v29 trailingMargin:v35];
  v37 = v36;
  v39 = v38;
  v40 = [v13 firstObject];
  if ([v11 isEqualToString:v40])
  {
    v41 = [v13 lastObject];
    v42 = [v11 isEqualToString:v41];

    v43 = 0.0;
    if (v42)
    {
      goto LABEL_21;
    }
  }

  else
  {
  }

  v44 = [v13 lastObject];
  v45 = [v11 isEqualToString:v44];

  v43 = 0.0;
  if (v45)
  {
    v29 = v20;
  }

  else
  {
    v46 = [v13 firstObject];
    v47 = [v11 isEqualToString:v46];

    [v5 actionInterGroupInset];
    v43 = v48;
    if (!v47)
    {
      v29 = v20;
    }
  }

LABEL_21:
  [v10 setContentInsets:{v29, v37, v43, v39}];
  v49 = [[SHSheetContentLayoutSection alloc] initWithLayoutSection:v10];

  return v49;
}

- (id)_createHorizontalLayoutSectionWithContext:(id)a3 iconWidth:(double)a4 sectionHeight:(double)a5 labelHeightCalculationBlock:(id)a6
{
  v99 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a6;
  v12 = [(SHSheetContentLayoutProvider *)self layoutSpec];
  v13 = [v12 isAccessibilityContentSize];
  v14 = [v10 environment];
  v15 = [v14 container];
  [v15 effectiveContentSize];
  v17 = v16;

  [v10 viewDirectionalLayoutMargins];
  v19 = v18;
  v20 = [v10 environment];
  v21 = [v20 container];
  [v21 contentInsets];
  v23 = v19 - v22;

  [v12 horizontalCellWidthForContentWidth:v17 sizeOffset:v23];
  v25 = v24;
  v26 = 0.0;
  v27 = 0.0;
  if (v11)
  {
    v28 = [v10 dataSourceSnapshot];
    v29 = [v10 sectionIdentifier];
    v30 = [v28 itemIdentifiersInSectionWithIdentifier:v29];

    v95 = 0u;
    v96 = 0u;
    v93 = 0u;
    v94 = 0u;
    v31 = v30;
    v32 = [v31 countByEnumeratingWithState:&v93 objects:v98 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = *v94;
      do
      {
        for (i = 0; i != v33; ++i)
        {
          if (*v94 != v34)
          {
            objc_enumerationMutation(v31);
          }

          v36 = v11[2](v11, *(*(&v93 + 1) + 8 * i), v25);
          if (v36 > v27)
          {
            v27 = v36;
          }
        }

        v33 = [v31 countByEnumeratingWithState:&v93 objects:v98 count:16];
      }

      while (v33);
    }
  }

  v37 = v27 + a5;
  v38 = [MEMORY[0x1E6995558] estimatedDimension:{v37, v93}];
  v39 = MEMORY[0x1E6995588];
  v40 = [MEMORY[0x1E6995558] absoluteDimension:v25];
  v41 = [v39 sizeWithWidthDimension:v40 heightDimension:v38];

  v42 = [MEMORY[0x1E6995578] itemWithLayoutSize:v41];
  if (v13)
  {
    v43 = 2;
    v44 = v23;
    goto LABEL_27;
  }

  v45 = [v12 numberOfHorizontalItemsPerGroupForContentWidth:v17];
  if (v45 == 3)
  {
    v46 = v25 * 0.5;
  }

  else
  {
    v46 = v23 + 1.0 + (v25 - a4) * 0.5;
  }

  v47 = [MEMORY[0x1E69DC938] currentDevice];
  v48 = [v47 userInterfaceIdiom];

  v49 = 0x1E69DC000uLL;
  if (v48 == 6)
  {
    v23 = 16.0;
    if ([v12 deviceClass] == 10)
    {
      v44 = 24.0;
    }

    else
    {
      v44 = 16.0;
    }

    v50 = v45;
    goto LABEL_25;
  }

  v50 = v45;
  if (!_ShareSheetSolariumEnabled())
  {
    v44 = v23 + -1.0 + (v25 - a4) * -0.5;
    v23 = (v17 - v44 - v46 - v25 * v50) / v50;
LABEL_25:
    v26 = 0.0;
    goto LABEL_26;
  }

  [v12 peopleIconWidth];
  v52 = (v25 - v51) * 0.5;
  v53 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v53 scale];
  v55 = round(v52 * v54);
  v56 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v56 scale];
  v26 = v55 / v57;

  v58 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v58 scale];
  v60 = round((v17 - v25 * v50 + (v26 + 6.0) * -2.0) / (v45 + 1) * v59);
  v61 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v61 scale];
  v63 = v60 / v62;

  v23 = fmax(v63, 0.0);
  v64 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v64 scale];
  v66 = round((v26 + v23 + 6.0) * v65);
  v67 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v67 scale];
  v69 = v66 / v68;

  v70 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v70 scale];
  v72 = round(v69 * v71);
  v73 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v73 scale];
  v44 = v72 / v74;

  v49 = 0x1E69DC000;
LABEL_26:
  v75 = v23 * (v45 - 1) + v25 * v50;
  v76 = [*(v49 + 3760) mainScreen];
  [v76 scale];
  v78 = round(v75 * v77);
  v79 = [*(v49 + 3760) mainScreen];
  [v79 scale];
  v25 = v78 / v80;

  v43 = 1;
LABEL_27:
  v81 = MEMORY[0x1E6995588];
  v82 = [MEMORY[0x1E6995558] absoluteDimension:v25];
  v83 = [MEMORY[0x1E6995558] estimatedDimension:v37];
  v84 = [v81 sizeWithWidthDimension:v82 heightDimension:v83];

  v85 = MEMORY[0x1E6995568];
  v97 = v42;
  v86 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v97 count:1];
  v87 = [v85 horizontalGroupWithLayoutSize:v84 subitems:v86];

  v88 = [MEMORY[0x1E6995590] fixedSpacing:v23];
  [v87 setInterItemSpacing:v88];

  v89 = [MEMORY[0x1E6995580] sectionWithGroup:v87];
  [v89 setInterGroupSpacing:v23];
  [v12 horizontalSectionBottomInset];
  [v89 setContentInsets:{0.0, v44, v90, v44}];
  [v89 setOrthogonalScrollingBehavior:v43];
  v91 = [[SHSheetContentLayoutSection alloc] initWithLayoutSection:v89];
  [(SHSheetContentLayoutSection *)v91 setCellSideInset:v26];

  return v91;
}

+ (id)_createHeaderSupplementaryItemWithHeightDimension:(id)a3
{
  v3 = MEMORY[0x1E6995588];
  v4 = MEMORY[0x1E6995558];
  v5 = a3;
  v6 = [v4 fractionalWidthDimension:1.0];
  v7 = [v3 sizeWithWidthDimension:v6 heightDimension:v5];

  v8 = [MEMORY[0x1E6995548] boundarySupplementaryItemWithLayoutSize:v7 elementKind:@"UIActivityContentHeaderSectionKind" alignment:1];

  return v8;
}

+ (id)_createFooterSupplementaryItemWithHeightDimension:(id)a3
{
  v3 = MEMORY[0x1E6995588];
  v4 = MEMORY[0x1E6995558];
  v5 = a3;
  v6 = [v4 fractionalWidthDimension:1.0];
  v7 = [v3 sizeWithWidthDimension:v6 heightDimension:v5];

  v8 = [MEMORY[0x1E6995548] boundarySupplementaryItemWithLayoutSize:v7 elementKind:@"UIActivityContentFooterSectionKind" alignment:5];

  return v8;
}

- (SHSheetContentLayoutDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end