@interface UIContextMenuListView
@end

@implementation UIContextMenuListView

void __40___UIContextMenuListView_initWithFrame___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v4 = a3;
  [v10 _updateContentMargins];
  [v10 setHasValidContentSize:0];
  v5 = [v4 preferredContentSizeCategory];

  LODWORD(v4) = UIContentSizeCategoryIsAccessibilityCategory(v5);
  v6 = [v10 traitCollection];
  v7 = [v6 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v7);

  if (v4 != IsAccessibilityCategory)
  {
    [v10 updateTraitsIfNeeded];
    v9 = [v10 collectionView];
    [v9 reloadData];
  }
}

void __41___UIContextMenuListView_setShadowAlpha___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setClipsToBounds:0];
  v2 = [_UICutoutShadowView alloc];
  v3 = [*(a1 + 32) _platformMetrics];
  [v3 menuCornerRadius];
  v4 = [(_UIRoundedRectShadowView *)v2 initWithCornerRadius:?];
  [*(a1 + 32) setShadowView:v4];

  v5 = [*(a1 + 32) shadowView];
  [v5 setUserInteractionEnabled:0];

  v6 = [*(a1 + 32) shadowView];
  v7 = [v6 layer];
  [v7 setAllowsHitTesting:0];

  v8 = [*(a1 + 32) shadowView];
  v9 = [*(a1 + 32) clippingView];
  [v9 frame];
  [v8 frameWithContentWithFrame:?];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = [*(a1 + 32) shadowView];
  [v18 setFrame:{v11, v13, v15, v17}];

  v19 = [*(a1 + 32) shadowView];
  [v19 setAlpha:0.0];

  v20 = [*(a1 + 32) shadowView];
  [v20 layoutIfNeeded];

  v21 = *(a1 + 32);
  v22 = [v21 shadowView];
  [v21 insertSubview:v22 atIndex:0];
}

uint64_t __114___UIContextMenuListView_setSubmenuTitleViewExpanded_withMaterialGroupName_associatedCellContentView_highlighted___block_invoke(uint64_t a1)
{
  if (*(a1 + 80) == 1)
  {
    [*(a1 + 32) highlightItemAtIndexPath:*(a1 + 40)];
  }

  if (*(a1 + 81) == 1)
  {
    v2 = [*(a1 + 48) contentView];
    [v2 _inheritRelevantPropertiesFromContentView:*(a1 + 56)];
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    v4 = *(a1 + 81);
    [v3 directionalLayoutMargins];
    if (v4 == 1)
    {
      [*(a1 + 48) setDirectionalLayoutMargins:?];
      [*(a1 + 48) layoutIfNeeded];
    }

    else
    {
      v9 = *(*(a1 + 72) + 8);
      v9[4] = v5;
      v9[5] = v6;
      v9[6] = v7;
      v9[7] = v8;
    }
  }

  [*(a1 + 48) addObscuringMaterialViewWithGroupName:*(a1 + 64)];
  if (*(a1 + 81))
  {
    v10 = 1.0;
  }

  else
  {
    v10 = 0.0;
  }

  v11 = [*(a1 + 48) obscuringMaterialView];
  [v11 setAlpha:v10];

  if (*(a1 + 81) == 1)
  {
    v12 = [*(a1 + 48) contentView];
    v13 = [v12 options];

    v14 = [*(a1 + 56) options] & 0x100;
    v15 = [*(a1 + 48) contentView];
    [v15 setOptions:v14 | v13 & 0xFFFFFFFFFFFFFFBFLL];
  }

  v16 = *(a1 + 32);

  return [v16 layoutIfNeeded];
}

uint64_t __66___UIContextMenuListView_preferredContentSizeWithinContainerSize___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 64);
  [*(a1 + 32) frame];
  v15.origin.x = 0.0;
  v15.origin.y = 0.0;
  v15.size.width = v2;
  v15.size.height = v3;
  if (!CGRectEqualToRect(v13, v15))
  {
    [*(a1 + 32) setFrame:{0.0, 0.0, v2, v3}];
  }

  v4 = [*(a1 + 32) collectionViewLayout];
  [v4 invalidateLayout];

  [*(a1 + 32) setNeedsLayout];
  [*(a1 + 32) layoutIfNeeded];
  [*(a1 + 32) contentSize];
  v5 = *(*(a1 + 48) + 8);
  *(v5 + 32) = v6;
  *(v5 + 40) = v7;
  v8 = *(a1 + 56);
  [*(a1 + 40) bounds];
  v9 = v8 - CGRectGetWidth(v14);
  if (v9 < 0.0)
  {
    v9 = -v9;
  }

  if (v9 < 0.00000011920929)
  {
    [*(a1 + 40) _sizeClippingAndCollectionViews];
  }

  v10 = *(a1 + 40);

  return [v10 setHasValidContentSize:1];
}

void __46___UIContextMenuListView_scrollViewDidScroll___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = *(a1 + 64);
  v5 = [*(a1 + 32) selectionView];
  [v5 setFrame:{v1, v2, v3, v4}];
}

void __108___UIContextMenuListView__collectionView_updateTypeSelectResultForCell_atIndexPath_withItemResult_animator___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  v8 = v7;
  if (!v7)
  {
    v8 = *(a1 + 32);
    [*(a1 + 40) addAttribute:*off_1E70EC920 value:v8 range:{a3, a4}];
  }

  if (*(a1 + 48))
  {
    v9 = +[_UITypeSelectInteraction _defaultSecondaryColorTransformer];
    v10 = (v9)[2](v9, v8);

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __108___UIContextMenuListView__collectionView_updateTypeSelectResultForCell_atIndexPath_withItemResult_animator___block_invoke_2;
    v13[3] = &unk_1E711AC60;
    v11 = *(a1 + 48);
    v14 = *(a1 + 40);
    v15 = v10;
    v12 = v10;
    [v11 enumerateRangesInRange:a3 options:a4 usingBlock:{0, v13}];
  }
}

void __108___UIContextMenuListView__collectionView_updateTypeSelectResultForCell_atIndexPath_withItemResult_animator___block_invoke_3(uint64_t a1)
{
  if (*(a1 + 32) && [*(a1 + 40) count] == *(a1 + 80))
  {
    v2 = 48;
  }

  else
  {
    v2 = 56;
  }

  v3 = *(a1 + 72);
  v4 = *(a1 + v2);
  v5 = [v3 copy];
  [*(a1 + 64) setAttributedTitle:v5];

  v6 = [*(a1 + 64) iconView];
  [v6 setTintColor:v4];
}

uint64_t __108___UIContextMenuListView__collectionView_updateTypeSelectResultForCell_atIndexPath_withItemResult_animator___block_invoke_4(uint64_t a1)
{
  if (+[UIView areAnimationsEnabled])
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);

    return [UIView transitionWithView:v2 duration:5242886 options:v3 animations:0 completion:0.25];
  }

  else
  {
    v5 = *(*(a1 + 40) + 16);

    return v5();
  }
}

void __53___UIContextMenuListView_unHighlightItemAtIndexPath___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) selectionView];
  [v1 setAlpha:0.0];
}

void __73___UIContextMenuListView_highlightItemAtIndexPath_forHover_playFeedback___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) selectionView];

  if (!v2)
  {
    v3 = [[UIVisualEffectView alloc] initWithFrame:*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)];
    [*(a1 + 32) setSelectionView:v3];

    v4 = [*(a1 + 32) selectionView];
    [v4 setUserInteractionEnabled:0];
  }

  v6 = [*(a1 + 32) collectionView];
  v5 = [*(a1 + 32) selectionView];
  [v6 insertSubview:v5 atIndex:0];
}

void __73___UIContextMenuListView_highlightItemAtIndexPath_forHover_playFeedback___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  v6 = [*(a1 + 32) selectionView];
  [v6 setFrame:{v2, v3, v4, v5}];

  v7 = *(a1 + 72);
  v8 = [*(a1 + 32) selectionView];
  [v8 _setCornerRadius:v7];
}

void __73___UIContextMenuListView_highlightItemAtIndexPath_forHover_playFeedback___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) selectionView];
  [v2 setAlpha:1.0];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = *(a1 + 40);
    v4 = [v3 contentEffects];
    v5 = [*(a1 + 32) selectionView];
    [v5 setContentEffects:v4];

    v6 = [v3 backgroundEffects];
    v7 = [*(a1 + 32) selectionView];
    [v7 setBackgroundEffects:v6];

    v11 = [v3 contentView];
    v8 = [v11 backgroundColor];
    v9 = [*(a1 + 32) selectionView];

    v10 = [v9 contentView];
    [v10 setBackgroundColor:v8];
  }
}

id __55___UIContextMenuListView__dataSourceForCollectionView___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = [v7 dataSource];
  v12 = [v11 snapshot];
  v13 = [v12 sectionIdentifiers];
  v14 = [v13 objectAtIndexedSubscript:{objc_msgSend(v8, "section")}];

  v15 = [v9 _customContentView];
  v16 = [v7 traitCollection];
  v17 = [v14 cellSizeGivenTraits:v16];

  if ([v14 layout] == 1)
  {
    v17 = [v14 preferredCellSize];
    v18 = @"kContextMenuSmallCell";
    if (!v15)
    {
      goto LABEL_17;
    }

LABEL_15:
    v22 = [v7 dequeueReusableCellWithReuseIdentifier:@"kContextMenuCustomViewCell" forIndexPath:v8];
    [v22 setCustomContentView:v15];
    v23 = v22;
    [WeakRetained contentMargins];
    [v23 setDirectionalLayoutMargins:?];

    goto LABEL_23;
  }

  v19 = [v8 item];
  v20 = 3;
  if (v17 != 1)
  {
    v20 = 0;
  }

  if (!v17)
  {
    v20 = 4;
  }

  if (v19 >= v20)
  {
    v18 = @"kContextMenuLargeCell";
    v17 = 2;
    if (!v15)
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  v21 = @"kContextMenuLargeCell";
  if (!v17)
  {
    v21 = @"kContextMenuSmallCell";
  }

  if (v17 == 1)
  {
    v18 = @"kContextMenuMediumCell";
  }

  else
  {
    v18 = v21;
  }

  if (v15)
  {
    goto LABEL_15;
  }

LABEL_17:
  if ([v9 _isLoadingPlaceholder])
  {
    v23 = [v7 dequeueReusableCellWithReuseIdentifier:@"kContextMenuLoadingCell" forIndexPath:v8];
  }

  else
  {
    v23 = [v7 dequeueReusableCellWithReuseIdentifier:v18 forIndexPath:v8];
    if (v17 == 2 && ([v14 wantsContentMarginsForSelection] & 1) == 0)
    {
      [WeakRetained contentMarginsWithoutSelection];
      goto LABEL_22;
    }
  }

  [WeakRetained contentMargins];
LABEL_22:
  [v23 setDirectionalLayoutMargins:?];
  [WeakRetained _configureCell:v23 inCollectionView:v7 atIndexPath:v8 forElement:v9 section:v14 size:v17];
LABEL_23:

  return v23;
}

id __55___UIContextMenuListView__dataSourceForCollectionView___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = [v7 dequeueReusableSupplementaryViewOfKind:v8 withReuseIdentifier:v8 forIndexPath:v9];
  v12 = [WeakRetained displayedMenu];
  v51 = v7;
  v13 = [v7 dataSource];
  v14 = [v13 snapshot];
  v15 = [v14 sectionIdentifiers];

  if ([v15 count])
  {
    v16 = [v15 objectAtIndexedSubscript:{objc_msgSend(v9, "section")}];
  }

  else
  {
    v16 = 0;
  }

  v50 = v11;
  if ([v8 isEqualToString:@"kContextMenuHeader"])
  {
    v17 = v11;
    v47 = v13;
    v48 = v15;
    if (v16 && ([v9 length] != 1 || objc_msgSend(v9, "section")))
    {
      v18 = [v16 title];
      v19 = [v16 accessoryAction];
      [WeakRetained headerMargins];
      [v17 setUnscaledLayoutMargins:?];
      [v17 setIsMenuTitle:0];
      v20 = 1;
      goto LABEL_33;
    }

    v18 = [v12 title];
    v19 = [v12 _accessoryAction];
    v35 = [v12 headerView];
    if (!v16)
    {
      v20 = 0;
      goto LABEL_31;
    }

    v46 = v16;
    v36 = [v12 children];
    v37 = [v36 firstObject];

    v38 = [WeakRetained _platformMetrics];
    v43 = [v38 menuTitleAlwaysShowsSeparator];
    v45 = v37;
    if (!v35 || ([v38 wantsSeparatorForCustomHeaderView] & 1) == 0)
    {
      if ([v37 _isInlineGroup])
      {
        v39 = [v37 title];
        v42 = [v39 length] != 0;

        if (((v43 | v42) & 1) == 0)
        {
LABEL_24:
          v20 = 1;
LABEL_30:

          v16 = v46;
LABEL_31:
          [WeakRetained menuTitleMargins];
          [v17 setUnscaledLayoutMargins:?];
          [v17 setIsMenuTitle:1];
          if (v35)
          {
            [v17 setContentView:v35];

LABEL_34:
            [v17 setSeparatorStyle:v20];
            v40 = [WeakRetained backgroundMaterialGroupName];
            [v17 setBackgroundMaterialGroupName:v40];

            v13 = v47;
            v15 = v48;
            goto LABEL_35;
          }

LABEL_33:
          [v17 setTitle:v18 accessoryAction:v19];
          goto LABEL_34;
        }
      }

      else if ((v43 & 1) == 0)
      {
        goto LABEL_24;
      }
    }

    v20 = 2;
    goto LABEL_30;
  }

  if ([v8 isEqualToString:@"kContextMenuSubmenuTitleHeader"])
  {
    v17 = v11;
    [WeakRetained contentMargins];
    [v17 setDirectionalLayoutMargins:?];
    [v17 setAllowsFocus:{objc_msgSend(WeakRetained, "allowsFocus")}];
    v21 = [v17 contentView];
    [v12 title];
    v22 = v49 = v15;
    [v21 setTitle:v22];

    v23 = [v17 contentView];
    v24 = [v12 subtitle];
    [v23 setSubtitle:v24];

    v25 = [v17 contentView];
    v26 = [v12 image];
    [v25 setImage:v26];

    v27 = [WeakRetained backgroundMaterialGroupName];
    [v17 setBackgroundMaterialGroupName:v27];

    if ([WeakRetained _showChildIndicatorOnTrailingEdge])
    {
      v28 = 112;
    }

    else
    {
      v28 = 80;
    }

    v29 = [v12 options] & 2 | v28;
    if ([v12 _shouldShowSelectionState])
    {
      v30 = v29 | 4;
    }

    else
    {
      v30 = v29;
    }

    v18 = [v17 contentView];
    v31 = v30;
    v15 = v49;
    [v18 setOptions:v31];
  }

  else if ([v8 isEqualToString:@"kContextMenuSectionSeparator"])
  {
    v17 = [v51 traitCollection];
    _UIContextMenuGetPlatformMetrics([v17 userInterfaceIdiom]);
    v44 = v9;
    v32 = v16;
    v34 = v33 = v15;
    v18 = [v34 sectionSeparatorColor];

    v15 = v33;
    v16 = v32;
    v9 = v44;
    [v11 setBackgroundColor:v18];
  }

  else
  {
    if (![v8 isEqualToString:@"kContextMenuPinnedFooter"])
    {
      goto LABEL_36;
    }

    v18 = v11;
    [WeakRetained contentMargins];
    [v18 setDirectionalLayoutMargins:?];
    v17 = [v12 _pinnedFooterElement];
    [v18 setMenuElement:v17];
  }

LABEL_35:

  v11 = v50;
LABEL_36:

  return v11;
}

void __94___UIContextMenuListView__configureCell_inCollectionView_atIndexPath_forElement_section_size___block_invoke(uint64_t a1, void *a2)
{
  v3 = [MEMORY[0x1E69DEC00] variantForSelector:{objc_msgSend(a2, "action")}];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __94___UIContextMenuListView__configureCell_inCollectionView_atIndexPath_forElement_section_size___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E69DEC00];
  v7 = [a2 identifier];
  v4 = [v3 variantForActionIdentifier:v7];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

@end