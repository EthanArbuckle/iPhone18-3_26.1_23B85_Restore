@interface SHSheetContentLayoutProvider
+ (id)_createFooterSupplementaryItemWithHeightDimension:(id)dimension;
+ (id)_createHeaderSupplementaryItemWithHeightDimension:(id)dimension;
- (NSDirectionalEdgeInsets)_resolvedDirectionalLayoutMargins:(double)margins trailingMargin:(double)margin;
- (SHSheetContentLayoutDelegate)delegate;
- (SHSheetContentLayoutProvider)initWithLayoutSpec:(id)spec;
- (id)_createHorizontalLayoutSectionWithContext:(id)context iconWidth:(double)width sectionHeight:(double)height labelHeightCalculationBlock:(id)block;
- (id)_layoutForActionsSectionWithContext:(id)context;
- (id)_layoutForAppsSectionWithContext:(id)context;
- (id)_layoutForCustomViewSectionWithContext:(id)context;
- (id)_layoutForHeroActionsSectionWithContext:(id)context;
- (id)_layoutForPeopleSectionWithContext:(id)context;
- (id)_layoutForTopActionSectionWithContext:(id)context;
- (id)layoutSectionForContext:(id)context;
- (int64_t)_sectionForContext:(id)context;
@end

@implementation SHSheetContentLayoutProvider

- (SHSheetContentLayoutProvider)initWithLayoutSpec:(id)spec
{
  specCopy = spec;
  v9.receiver = self;
  v9.super_class = SHSheetContentLayoutProvider;
  v6 = [(SHSheetContentLayoutProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_layoutSpec, spec);
  }

  return v7;
}

- (int64_t)_sectionForContext:(id)context
{
  contextCopy = context;
  sectionIdentifier = [contextCopy sectionIdentifier];
  if ([sectionIdentifier isEqualToString:@"SHSheetContentCustomViewSectionIdentifier"])
  {
    v5 = 0;
  }

  else if ([sectionIdentifier isEqualToString:@"SHSheetContentPeopleSectionIdentifier"])
  {
    v5 = 1;
  }

  else if ([sectionIdentifier isEqualToString:@"SHSheetContentAppsSectionIdentifier"] & 1) != 0 || (objc_msgSend(sectionIdentifier, "isEqualToString:", @"SHSheetContentEmbeddedActionsSectionIdentifier"))
  {
    v5 = 2;
  }

  else if ([sectionIdentifier isEqualToString:@"SHSheetContentHeroActionsSectionIdentifier"] && (objc_msgSend(contextCopy, "enableHeroActions") & 1) != 0)
  {
    v5 = 4;
  }

  else if ([sectionIdentifier isEqualToString:@"SHSheetContentTopActionsSectionIdentifier"])
  {
    v5 = 6;
  }

  else
  {
    v5 = 5;
  }

  return v5;
}

- (id)layoutSectionForContext:(id)context
{
  contextCopy = context;
  v5 = [(SHSheetContentLayoutProvider *)self _sectionForContext:contextCopy];
  v6 = 0;
  if (v5 > 3)
  {
    switch(v5)
    {
      case 4:
        v7 = [(SHSheetContentLayoutProvider *)self _layoutForHeroActionsSectionWithContext:contextCopy];
        break;
      case 5:
        v7 = [(SHSheetContentLayoutProvider *)self _layoutForActionsSectionWithContext:contextCopy];
        break;
      case 6:
        v7 = [(SHSheetContentLayoutProvider *)self _layoutForTopActionSectionWithContext:contextCopy];
        break;
      default:
        goto LABEL_15;
    }
  }

  else if ((v5 - 2) < 2)
  {
    v7 = [(SHSheetContentLayoutProvider *)self _layoutForAppsSectionWithContext:contextCopy];
  }

  else if (v5)
  {
    if (v5 != 1)
    {
      goto LABEL_15;
    }

    v7 = [(SHSheetContentLayoutProvider *)self _layoutForPeopleSectionWithContext:contextCopy];
  }

  else
  {
    v7 = [(SHSheetContentLayoutProvider *)self _layoutForCustomViewSectionWithContext:contextCopy];
  }

  v6 = v7;
LABEL_15:

  return v6;
}

- (id)_layoutForCustomViewSectionWithContext:(id)context
{
  v30[1] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  layoutSpec = [(SHSheetContentLayoutProvider *)self layoutSpec];
  v6 = [MEMORY[0x1E6995558] fractionalWidthDimension:1.0];
  v7 = MEMORY[0x1E6995558];
  [layoutSpec customViewSectionHeight];
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
  [layoutSpec customViewVerticalInset];
  v16 = v15;
  [layoutSpec customViewVerticalInset];
  [v14 setContentInsets:{v16, 0.0, v17, 0.0}];
  environment = [contextCopy environment];
  traitCollection = [environment traitCollection];
  verticalSizeClass = [traitCollection verticalSizeClass];

  LODWORD(environment) = [contextCopy enableCustomViewSectionFooter];
  if (environment && verticalSizeClass != 1)
  {
    v21 = MEMORY[0x1E6995558];
    [layoutSpec estimatedFooterHeight];
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

- (id)_layoutForPeopleSectionWithContext:(id)context
{
  contextCopy = context;
  layoutSpec = [(SHSheetContentLayoutProvider *)self layoutSpec];
  [layoutSpec peopleIconWidth];
  v7 = v6;
  [layoutSpec peopleSectionHeight];
  v9 = v8;
  v28 = MEMORY[0x1E69E9820];
  v29 = 3221225472;
  v30 = __67__SHSheetContentLayoutProvider__layoutForPeopleSectionWithContext___block_invoke;
  v31 = &unk_1E71F97A0;
  selfCopy = self;
  v10 = contextCopy;
  v33 = v10;
  v11 = [(SHSheetContentLayoutProvider *)self _createHorizontalLayoutSectionWithContext:v10 iconWidth:&v28 sectionHeight:v7 labelHeightCalculationBlock:v9];
  layoutSection = [v11 layoutSection];
  [layoutSection setSupplementariesFollowContentInsets:0];
  v13 = objc_opt_new();
  if ([v10 enableTopContentSectionText])
  {
    v14 = MEMORY[0x1E6995558];
    [layoutSpec estimatedHeaderHeight];
    v15 = [v14 estimatedDimension:?];
    v16 = [SHSheetContentLayoutProvider _createHeaderSupplementaryItemWithHeightDimension:v15];

    [v13 addObject:v16];
  }

  if ([v10 enableSectionFooter])
  {
    v17 = MEMORY[0x1E6995558];
    [layoutSpec estimatedFooterHeight];
    v18 = [v17 absoluteDimension:?];
    v19 = [SHSheetContentLayoutProvider _createFooterSupplementaryItemWithHeightDimension:v18];

    if (_ShareSheetSolariumEnabled())
    {
      [layoutSection contentInsets];
      v21 = v20;
      v23 = v22;
      v25 = v24;
      [v11 cellSideInset];
      [v19 setContentInsets:{v21, v23 + v26, v25, v23 + v26}];
    }

    [v13 addObject:v19];
  }

  [layoutSection setBoundarySupplementaryItems:v13];

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

- (id)_layoutForAppsSectionWithContext:(id)context
{
  contextCopy = context;
  layoutSpec = [(SHSheetContentLayoutProvider *)self layoutSpec];
  [layoutSpec sharingAppIconWidth];
  v7 = v6;
  [layoutSpec sharingAppSectionHeight];
  v9 = v8;
  v27 = MEMORY[0x1E69E9820];
  v28 = 3221225472;
  v29 = __65__SHSheetContentLayoutProvider__layoutForAppsSectionWithContext___block_invoke;
  v30 = &unk_1E71F97A0;
  selfCopy = self;
  v10 = contextCopy;
  v32 = v10;
  v11 = [(SHSheetContentLayoutProvider *)self _createHorizontalLayoutSectionWithContext:v10 iconWidth:&v27 sectionHeight:v7 labelHeightCalculationBlock:v9];
  layoutSection = [v11 layoutSection];
  [layoutSection setSupplementariesFollowContentInsets:0];
  v13 = objc_opt_new();
  dataSourceSnapshot = [v10 dataSourceSnapshot];
  sectionIdentifiers = [dataSourceSnapshot sectionIdentifiers];
  v16 = [sectionIdentifiers containsObject:@"SHSheetContentPeopleSectionIdentifier"];

  if ([v10 enableTopContentSectionText] && (v16 & 1) == 0)
  {
    v17 = MEMORY[0x1E6995558];
    [layoutSpec estimatedHeaderHeight];
    v18 = [v17 estimatedDimension:?];
    v19 = [SHSheetContentLayoutProvider _createHeaderSupplementaryItemWithHeightDimension:v18];

    [v13 addObject:v19];
  }

  if (_ShareSheetSolariumEnabled() && [v10 enableSectionFooter])
  {
    v20 = MEMORY[0x1E6995558];
    [layoutSpec estimatedFooterHeight];
    v21 = [v20 absoluteDimension:?];
    v22 = [SHSheetContentLayoutProvider _createFooterSupplementaryItemWithHeightDimension:v21];

    if (_ShareSheetSolariumEnabled())
    {
      [layoutSection contentInsets];
      v24 = v23;
      [v11 cellSideInset];
      [v22 setContentInsets:{0.0, v24 + v25, 0.0, v24 + v25}];
    }

    [v13 addObject:v22];
  }

  [layoutSection setBoundarySupplementaryItems:v13];

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

- (id)_layoutForTopActionSectionWithContext:(id)context
{
  contextCopy = context;
  layoutSpec = [(SHSheetContentLayoutProvider *)self layoutSpec];
  [layoutSpec sharingAppIconWidth];
  v7 = v6;
  [layoutSpec topActionsSectionHeight];
  v9 = [(SHSheetContentLayoutProvider *)self _createHorizontalLayoutSectionWithContext:contextCopy iconWidth:0 sectionHeight:v7 labelHeightCalculationBlock:v8];

  return v9;
}

- (id)_layoutForHeroActionsSectionWithContext:(id)context
{
  contextCopy = context;
  layoutSpec = [(SHSheetContentLayoutProvider *)self layoutSpec];
  environment = [contextCopy environment];
  container = [environment container];
  [container effectiveContentSize];
  v9 = v8;

  [contextCopy viewDirectionalLayoutMargins];
  v11 = v10;
  container2 = [environment container];
  [container2 contentInsets];
  v14 = v11 - v13;

  [contextCopy viewDirectionalLayoutMargins];
  v16 = v15;
  container3 = [environment container];
  [container3 contentInsets];
  v19 = v16 - v18;

  [layoutSpec heroActionItemSpacing];
  v21 = v20;
  v48 = MEMORY[0x1E69E9820];
  v49 = 3221225472;
  v50 = __72__SHSheetContentLayoutProvider__layoutForHeroActionsSectionWithContext___block_invoke;
  v51 = &unk_1E71F97C8;
  v54 = v9;
  v55 = v14;
  v56 = v19;
  v57 = v20;
  v22 = contextCopy;
  v52 = v22;
  selfCopy = self;
  v23 = MEMORY[0x18CFF58E0](&v48);
  dataSourceSnapshot = [v22 dataSourceSnapshot];
  sectionIdentifier = [v22 sectionIdentifier];
  v26 = [dataSourceSnapshot numberOfItemsInSection:sectionIdentifier];

  v27 = [layoutSpec shouldUseNarrowLayoutForHeroActionsWithContainerWidth:v9];
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
  [layoutSpec actionInterGroupInset];
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

- (NSDirectionalEdgeInsets)_resolvedDirectionalLayoutMargins:(double)margins trailingMargin:(double)margin
{
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom == 6)
  {
    marginCopy = 24.0;
  }

  else
  {
    marginCopy = margin;
  }

  if (userInterfaceIdiom == 6)
  {
    marginsCopy = 24.0;
  }

  else
  {
    marginsCopy = margins;
  }

  v10 = 0.0;
  v11 = 0.0;
  result.trailing = marginCopy;
  result.bottom = v11;
  result.leading = marginsCopy;
  result.top = v10;
  return result;
}

- (id)_layoutForActionsSectionWithContext:(id)context
{
  v51[1] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  layoutSpec = [(SHSheetContentLayoutProvider *)self layoutSpec];
  environment = [contextCopy environment];
  v7 = [layoutSpec actionsLayoutSectionConfigurationWithEnvironment:environment];

  v8 = objc_alloc(MEMORY[0x1E69DD3F0]);
  environment2 = [contextCopy environment];
  v10 = [v8 initWithConfiguration:v7 layoutEnvironment:environment2];

  [v10 setContentInsetsReference:2];
  sectionIdentifier = [contextCopy sectionIdentifier];
  dataSourceSnapshot = [contextCopy dataSourceSnapshot];
  sectionIdentifiers = [dataSourceSnapshot sectionIdentifiers];

  lastObject = [sectionIdentifiers lastObject];
  if ([sectionIdentifier isEqualToString:lastObject])
  {
  }

  else
  {
    v15 = [sectionIdentifier hasPrefix:@"SHSheetContentInformationalActionsSectionIdentifier_"];

    if ((v15 & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  v16 = MEMORY[0x1E6995558];
  [layoutSpec estimatedActionFooterHeight];
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

  v21 = [sectionIdentifiers indexOfObject:sectionIdentifier];
  if (v21)
  {
    v22 = [sectionIdentifiers objectAtIndexedSubscript:v21 - 1];
    if (([v22 isEqualToString:@"SHSheetContentCustomViewSectionIdentifier"] & 1) != 0 || objc_msgSend(v22, "isEqualToString:", @"SHSheetContentPeopleSectionIdentifier"))
    {
      [layoutSpec actionInterGroupInset];
      v20 = v23;
    }
  }

  [contextCopy viewDirectionalLayoutMargins];
  v25 = v24;
  environment3 = [contextCopy environment];
  container = [environment3 container];
  [container contentInsets];
  v29 = v25 - v28;

  [contextCopy viewDirectionalLayoutMargins];
  v31 = v30;
  environment4 = [contextCopy environment];
  container2 = [environment4 container];
  [container2 contentInsets];
  v35 = v31 - v34;

  [(SHSheetContentLayoutProvider *)self _resolvedDirectionalLayoutMargins:v29 trailingMargin:v35];
  v37 = v36;
  v39 = v38;
  firstObject = [sectionIdentifiers firstObject];
  if ([sectionIdentifier isEqualToString:firstObject])
  {
    lastObject2 = [sectionIdentifiers lastObject];
    v42 = [sectionIdentifier isEqualToString:lastObject2];

    v43 = 0.0;
    if (v42)
    {
      goto LABEL_21;
    }
  }

  else
  {
  }

  lastObject3 = [sectionIdentifiers lastObject];
  v45 = [sectionIdentifier isEqualToString:lastObject3];

  v43 = 0.0;
  if (v45)
  {
    v29 = v20;
  }

  else
  {
    firstObject2 = [sectionIdentifiers firstObject];
    v47 = [sectionIdentifier isEqualToString:firstObject2];

    [layoutSpec actionInterGroupInset];
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

- (id)_createHorizontalLayoutSectionWithContext:(id)context iconWidth:(double)width sectionHeight:(double)height labelHeightCalculationBlock:(id)block
{
  v99 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  blockCopy = block;
  layoutSpec = [(SHSheetContentLayoutProvider *)self layoutSpec];
  isAccessibilityContentSize = [layoutSpec isAccessibilityContentSize];
  environment = [contextCopy environment];
  container = [environment container];
  [container effectiveContentSize];
  v17 = v16;

  [contextCopy viewDirectionalLayoutMargins];
  v19 = v18;
  environment2 = [contextCopy environment];
  container2 = [environment2 container];
  [container2 contentInsets];
  v23 = v19 - v22;

  [layoutSpec horizontalCellWidthForContentWidth:v17 sizeOffset:v23];
  v25 = v24;
  v26 = 0.0;
  v27 = 0.0;
  if (blockCopy)
  {
    dataSourceSnapshot = [contextCopy dataSourceSnapshot];
    sectionIdentifier = [contextCopy sectionIdentifier];
    v30 = [dataSourceSnapshot itemIdentifiersInSectionWithIdentifier:sectionIdentifier];

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

          v36 = blockCopy[2](blockCopy, *(*(&v93 + 1) + 8 * i), v25);
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

  v37 = v27 + height;
  v38 = [MEMORY[0x1E6995558] estimatedDimension:{v37, v93}];
  v39 = MEMORY[0x1E6995588];
  v40 = [MEMORY[0x1E6995558] absoluteDimension:v25];
  v41 = [v39 sizeWithWidthDimension:v40 heightDimension:v38];

  v42 = [MEMORY[0x1E6995578] itemWithLayoutSize:v41];
  if (isAccessibilityContentSize)
  {
    v43 = 2;
    v44 = v23;
    goto LABEL_27;
  }

  v45 = [layoutSpec numberOfHorizontalItemsPerGroupForContentWidth:v17];
  if (v45 == 3)
  {
    v46 = v25 * 0.5;
  }

  else
  {
    v46 = v23 + 1.0 + (v25 - width) * 0.5;
  }

  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  v49 = 0x1E69DC000uLL;
  if (userInterfaceIdiom == 6)
  {
    v23 = 16.0;
    if ([layoutSpec deviceClass] == 10)
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
    v44 = v23 + -1.0 + (v25 - width) * -0.5;
    v23 = (v17 - v44 - v46 - v25 * v50) / v50;
LABEL_25:
    v26 = 0.0;
    goto LABEL_26;
  }

  [layoutSpec peopleIconWidth];
  v52 = (v25 - v51) * 0.5;
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen scale];
  v55 = round(v52 * v54);
  mainScreen2 = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen2 scale];
  v26 = v55 / v57;

  mainScreen3 = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen3 scale];
  v60 = round((v17 - v25 * v50 + (v26 + 6.0) * -2.0) / (v45 + 1) * v59);
  mainScreen4 = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen4 scale];
  v63 = v60 / v62;

  v23 = fmax(v63, 0.0);
  mainScreen5 = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen5 scale];
  v66 = round((v26 + v23 + 6.0) * v65);
  mainScreen6 = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen6 scale];
  v69 = v66 / v68;

  mainScreen7 = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen7 scale];
  v72 = round(v69 * v71);
  mainScreen8 = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen8 scale];
  v44 = v72 / v74;

  v49 = 0x1E69DC000;
LABEL_26:
  v75 = v23 * (v45 - 1) + v25 * v50;
  mainScreen9 = [*(v49 + 3760) mainScreen];
  [mainScreen9 scale];
  v78 = round(v75 * v77);
  mainScreen10 = [*(v49 + 3760) mainScreen];
  [mainScreen10 scale];
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
  [layoutSpec horizontalSectionBottomInset];
  [v89 setContentInsets:{0.0, v44, v90, v44}];
  [v89 setOrthogonalScrollingBehavior:v43];
  v91 = [[SHSheetContentLayoutSection alloc] initWithLayoutSection:v89];
  [(SHSheetContentLayoutSection *)v91 setCellSideInset:v26];

  return v91;
}

+ (id)_createHeaderSupplementaryItemWithHeightDimension:(id)dimension
{
  v3 = MEMORY[0x1E6995588];
  v4 = MEMORY[0x1E6995558];
  dimensionCopy = dimension;
  v6 = [v4 fractionalWidthDimension:1.0];
  v7 = [v3 sizeWithWidthDimension:v6 heightDimension:dimensionCopy];

  v8 = [MEMORY[0x1E6995548] boundarySupplementaryItemWithLayoutSize:v7 elementKind:@"UIActivityContentHeaderSectionKind" alignment:1];

  return v8;
}

+ (id)_createFooterSupplementaryItemWithHeightDimension:(id)dimension
{
  v3 = MEMORY[0x1E6995588];
  v4 = MEMORY[0x1E6995558];
  dimensionCopy = dimension;
  v6 = [v4 fractionalWidthDimension:1.0];
  v7 = [v3 sizeWithWidthDimension:v6 heightDimension:dimensionCopy];

  v8 = [MEMORY[0x1E6995548] boundarySupplementaryItemWithLayoutSize:v7 elementKind:@"UIActivityContentFooterSectionKind" alignment:5];

  return v8;
}

- (SHSheetContentLayoutDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end