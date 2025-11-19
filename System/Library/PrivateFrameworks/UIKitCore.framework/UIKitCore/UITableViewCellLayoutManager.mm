@interface UITableViewCellLayoutManager
+ (id)layoutManagerForTableViewCellStyle:(int64_t)a3;
+ (id)sharedLayoutManager;
+ (void)initialize;
- (BOOL)accessoryShouldAppearForCell:(id)a3;
- (BOOL)accessoryShouldFadeForCell:(id)a3;
- (BOOL)editControlShouldAppearForCell:(id)a3;
- (BOOL)editingAccessoryShouldAppearForCell:(id)a3;
- (BOOL)editingAccessoryShouldFadeForCell:(id)a3;
- (BOOL)reorderControlShouldAppearForCell:(id)a3;
- (BOOL)reorderControlShouldFadeForCell:(id)a3;
- (BOOL)reorderSeparatorShouldAppearForCell:(id)a3;
- (BOOL)reorderSeparatorShouldFadeForCell:(id)a3;
- (BOOL)shouldApplyAccessibilityLargeTextLayoutForCell:(id)a3;
- (BOOL)shouldIncreaseMarginForImageViewInCell:(id)a3;
- (BOOL)shouldStackAccessoryViewVerticallyForCell:(id)a3 editing:(BOOL)a4;
- (CGRect)_accessoryRectForCell:(id)a3 offscreen:(BOOL)a4;
- (CGRect)_accessoryRectForCell:(id)a3 offscreen:(BOOL)a4 rowWidth:(double)a5;
- (CGRect)_adjustedBackgroundContentRectForCell:(id)a3;
- (CGRect)_adjustedBackgroundContentRectForCell:(id)a3 rowWidth:(double)a4;
- (CGRect)_adjustedBackgroundRectForCell:(id)a3;
- (CGRect)_adjustedBackgroundRectForCell:(id)a3 rowWidth:(double)a4;
- (CGRect)_backgroundRectForCell:(id)a3;
- (CGRect)_backgroundRectForCell:(id)a3 rowWidth:(double)a4;
- (CGRect)_contentRectForCell:(id)a3 forEditingState:(BOOL)a4 showingDeleteConfirmation:(BOOL)a5;
- (CGRect)_contentRectForCell:(id)a3 forEditingState:(BOOL)a4 showingDeleteConfirmation:(BOOL)a5 rowWidth:(double)a6;
- (CGRect)_editControlRectForCell:(id)a3 offscreen:(BOOL)a4;
- (CGRect)_editingAccessoryRectForCell:(id)a3 offscreen:(BOOL)a4;
- (CGRect)_legacy_contentRectForCell:(id)a3 forEditingState:(BOOL)a4 showingDeleteConfirmation:(BOOL)a5 rowWidth:(double)a6;
- (CGRect)_reorderControlRectForCell:(id)a3 offscreen:(BOOL)a4;
- (CGRect)_reorderSeparatorRectForCell:(id)a3 offscreen:(BOOL)a4;
- (CGRect)accessoryEndingRectForCell:(id)a3 forNewEditingState:(BOOL)a4 showingDeleteConfirmation:(BOOL)a5;
- (CGRect)accessoryStartingRectForCell:(id)a3 forNewEditingState:(BOOL)a4 showingDeleteConfirmation:(BOOL)a5;
- (CGRect)contentEndingRectForCell:(id)a3 forDisplayOfDeleteConfirmation:(BOOL)a4;
- (CGRect)contentEndingRectForCell:(id)a3 forNewEditingState:(BOOL)a4;
- (CGRect)contentRectForCell:(id)a3 forState:(unint64_t)a4;
- (CGRect)contentRectForCell:(id)a3 forState:(unint64_t)a4 rowWidth:(double)a5;
- (CGRect)contentStartingRectForCell:(id)a3 forDisplayOfDeleteConfirmation:(BOOL)a4;
- (CGRect)contentStartingRectForCell:(id)a3 forNewEditingState:(BOOL)a4;
- (CGRect)editControlEndingRectForCell:(id)a3 forNewEditingState:(BOOL)a4;
- (CGRect)editingAccessoryEndingRectForCell:(id)a3 forNewEditingState:(BOOL)a4 showingDeleteConfirmation:(BOOL)a5;
- (CGRect)editingAccessoryStartingRectForCell:(id)a3 forNewEditingState:(BOOL)a4 showingDeleteConfirmation:(BOOL)a5;
- (CGRect)reorderControlEndingRectForCell:(id)a3 forNewEditingState:(BOOL)a4 showingDeleteConfirmation:(BOOL)a5;
- (CGRect)reorderControlStartingRectForCell:(id)a3 forNewEditingState:(BOOL)a4 showingDeleteConfirmation:(BOOL)a5;
- (CGRect)reorderSeparatorEndingRectForCell:(id)a3 forNewEditingState:(BOOL)a4 showingDeleteConfirmation:(BOOL)a5;
- (CGRect)reorderSeparatorStartingRectForCell:(id)a3 forNewEditingState:(BOOL)a4 showingDeleteConfirmation:(BOOL)a5;
- (CGRect)selectedBackgroundEndingRectForCell:(id)a3 forNewEditingState:(BOOL)a4;
- (CGRect)standardLayoutImageViewFrameForCell:(id)a3 forSizing:(BOOL)a4;
- (CGRect)textRectForCell:(id)a3;
- (CGRect)textRectForCell:(id)a3 rowWidth:(double)a4;
- (CGRect)textRectForCell:(id)a3 rowWidth:(double)a4 forSizing:(BOOL)a5;
- (CGSize)intrinsicContentSizeForCell:(id)a3 rowWidth:(double)a4;
- (CGSize)optimumSizeForLabel:(id)a3 inTotalTextRect:(CGRect)a4 minimizeWidthOnVerticalOverflow:(BOOL)a5 preferSingleLineWidth:(BOOL)a6;
- (double)_contentRectLeadingOffsetForCell:(id)a3 editingState:(BOOL)a4 rowWidth:(double)a5;
- (double)contentIndentationForCell:(id)a3;
- (double)defaultTextLabelFontSizeForCell:(id)a3;
- (double)requiredIndentationForFirstLineOfCell:(id)a3 rowWidth:(double)a4 forSizing:(BOOL)a5;
- (id)customAccessoryViewForCell:(id)a3 editing:(BOOL)a4;
- (id)defaultBadgeForCell:(id)a3;
- (id)defaultEditableTextFieldForCell:(id)a3;
- (id)defaultImageViewForCell:(id)a3;
- (id)defaultLabelForCell:(id)a3;
- (id)defaultLabelForCell:(id)a3 ofClass:(Class)a4;
- (id)defaultTextLabelFontForCell:(id)a3;
- (void)_layoutFocusGuidesForCell:(id)a3;
- (void)_legacy_cell:(id)a3 didTransitionToState:(unint64_t)a4;
- (void)_legacy_cell:(id)a3 willTransitionToState:(unint64_t)a4;
- (void)_legacy_layoutSubviewsOfCell:(id)a3;
- (void)_modern_cell:(id)a3 didTransitionToState:(unint64_t)a4;
- (void)_modern_layoutSubviewsOfCell:(id)a3;
- (void)_reconfigureCell:(id)a3;
- (void)_resetTextLabelDefaultFontInCell:(id)a3;
- (void)_updateFocusGuidesForCell:(id)a3 editing:(BOOL)a4;
- (void)cell:(id)a3 didTransitionToState:(unint64_t)a4;
- (void)cell:(id)a3 willTransitionToState:(unint64_t)a4;
- (void)getTextLabelRect:(CGRect *)a3 detailTextLabelRect:(CGRect *)a4 forCell:(id)a5 rowWidth:(double)a6 forSizing:(BOOL)a7;
- (void)layoutSubviewsOfCell:(id)a3;
@end

@implementation UITableViewCellLayoutManager

+ (void)initialize
{
  v18[20] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_class();
  if (([a1 requiresLegacyLayout] & 1) == 0 && v3 != a1)
  {
    v5 = 0;
    v18[0] = sel_editControlShouldAppearForCell_;
    v18[1] = sel_editControlStartingRectForCell_forNewEditingState_;
    v18[2] = sel_editControlEndingRectForCell_forNewEditingState_;
    v18[3] = sel_editControlShouldFadeForCell_;
    v18[4] = sel_reorderControlShouldAppearForCell_;
    v18[5] = sel_reorderControlStartingRectForCell_forNewEditingState_showingDeleteConfirmation_;
    v18[6] = sel_reorderControlEndingRectForCell_forNewEditingState_showingDeleteConfirmation_;
    v18[7] = sel_reorderControlShouldFadeForCell_;
    v18[8] = sel_reorderSeparatorShouldAppearForCell_;
    v18[9] = sel_reorderSeparatorStartingRectForCell_forNewEditingState_showingDeleteConfirmation_;
    v18[10] = sel_reorderSeparatorEndingRectForCell_forNewEditingState_showingDeleteConfirmation_;
    v18[11] = sel_reorderSeparatorShouldFadeForCell_;
    v18[12] = sel_accessoryShouldAppearForCell_;
    v18[13] = sel_accessoryStartingRectForCell_forNewEditingState_showingDeleteConfirmation_;
    v18[14] = sel_accessoryEndingRectForCell_forNewEditingState_showingDeleteConfirmation_;
    v18[15] = sel_accessoryShouldFadeForCell_;
    v18[16] = sel_editingAccessoryShouldAppearForCell_;
    v18[17] = sel_editingAccessoryStartingRectForCell_forNewEditingState_showingDeleteConfirmation_;
    v18[18] = sel_editingAccessoryEndingRectForCell_forNewEditingState_showingDeleteConfirmation_;
    v18[19] = sel_editingAccessoryShouldFadeForCell_;
    *&v4 = 138412546;
    v13 = v4;
    do
    {
      v6 = v18[v5];
      v7 = [a1 instanceMethodForSelector:{v6, v13}];
      if (v7 != [objc_msgSend(a1 "superclass")])
      {
        v8 = *(__UILogGetCategoryCachedImpl("UITableViewCellLayoutManager", &initialize___s_category_0) + 8);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          v9 = v8;
          v10 = objc_opt_class();
          v11 = NSStringFromClass(v10);
          v12 = NSStringFromSelector(v6);
          *buf = v13;
          v15 = v11;
          v16 = 2112;
          v17 = v12;
          _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_ERROR, "%@ is implementing %@ without returning YES from requiresLegacyLayout. This method will be ignored.", buf, 0x16u);
        }
      }

      ++v5;
    }

    while (v5 != 20);
  }
}

+ (id)sharedLayoutManager
{
  v2 = sharedLayoutManager_layoutManager;
  if (!sharedLayoutManager_layoutManager)
  {
    v3 = objc_alloc_init(UITableViewCellLayoutManager);
    v4 = sharedLayoutManager_layoutManager;
    sharedLayoutManager_layoutManager = v3;

    v2 = sharedLayoutManager_layoutManager;
  }

  return v2;
}

- (CGRect)_backgroundRectForCell:(id)a3
{
  v4 = a3;
  [v4 bounds];
  [(UITableViewCellLayoutManager *)self _backgroundRectForCell:v4 rowWidth:CGRectGetWidth(v17)];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (CGRect)_backgroundRectForCell:(id)a3 rowWidth:(double)a4
{
  v5 = a3;
  [v5 bounds];
  v7 = v6;
  v9 = v8;
  if (([v5 _insetsBackground] & 1) == 0 && objc_msgSend(v5, "separatorStyle"))
  {
    [v5 _separatorHeight];
    v9 = v9 - v10;
  }

  v11 = 0.0;
  v12 = v7;
  v13 = a4;
  v14 = v9;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (CGRect)_adjustedBackgroundRectForCell:(id)a3
{
  v4 = a3;
  [v4 bounds];
  [(UITableViewCellLayoutManager *)self _adjustedBackgroundRectForCell:v4 rowWidth:CGRectGetWidth(v17)];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (CGRect)_adjustedBackgroundRectForCell:(id)a3 rowWidth:(double)a4
{
  v6 = a3;
  [(UITableViewCellLayoutManager *)self _backgroundRectForCell:v6 rowWidth:a4];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = [v6 _tableView];
  if ([v15 _isShowingIndex])
  {
    v16 = [v6 traitCollection];
    v17 = [v16 userInterfaceIdiom];

    if (v17 != 3)
    {
      [v15 _indexFrame];
      v18 = v6[13];
      v20 = v8 + v12 - v19;
      v22 = v19 + v21;
      if ((v18 & 0x400000) != 0)
      {
        v20 = v22;
      }

      if (v20 > 0.0)
      {
        v12 = v12 - v20;
        v23 = v8 + v22;
        if ((v18 & 0x400000) != 0)
        {
          v8 = v23;
        }
      }
    }
  }

  v24 = v8;
  v25 = v10;
  v26 = v12;
  v27 = v14;
  result.size.height = v27;
  result.size.width = v26;
  result.origin.y = v25;
  result.origin.x = v24;
  return result;
}

- (CGRect)_adjustedBackgroundContentRectForCell:(id)a3
{
  [a3 bounds];
  Width = CGRectGetWidth(v11);

  [(UITableViewCellLayoutManager *)self _adjustedBackgroundContentRectForCell:a3 rowWidth:Width];
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (CGRect)_adjustedBackgroundContentRectForCell:(id)a3 rowWidth:(double)a4
{
  [(UITableViewCellLayoutManager *)self _adjustedBackgroundRectForCell:a4 rowWidth:?];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = *(a3 + 13);
  v14 = [a3 _tableView];
  v15 = [a3 sectionLocation];
  v16 = 0.0;
  v17 = 0.0;
  if ([a3 separatorStyle])
  {
    v18 = [v14 _tableStyle];
    if (v18 <= 0x10 && ((1 << v18) & 0x10006) != 0 && [a3 _insetsBackground])
    {
      [a3 _separatorHeight];
      v17 = v19;
    }
  }

  v20 = 0.0;
  if (v14)
  {
    [v14 _sectionContentInset];
    v16 = v21 + 0.0;
  }

  if (((1 << v15) & 0x15) != 0)
  {
    v22 = v16;
  }

  else
  {
    v22 = 0.0;
  }

  if (v15 > 4)
  {
    v22 = 0.0;
  }

  v23 = v17 + v20;
  if (((1 << v15) & 0x19) == 0)
  {
    v23 = v17;
  }

  if (v15 > 4)
  {
    v23 = v17;
  }

  if ((v13 & 0x400000) != 0)
  {
    v24 = v6 + 0.0;
  }

  else
  {
    v24 = 0.0;
  }

  v25 = v8 + v22;
  v26 = v12 - (v22 + v23);

  v27 = v24;
  v28 = v25;
  v29 = v10;
  v30 = v26;
  result.size.height = v30;
  result.size.width = v29;
  result.origin.y = v28;
  result.origin.x = v27;
  return result;
}

- (CGRect)_editControlRectForCell:(id)a3 offscreen:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [v6 _constants];
  v8 = [v6 _tableView];
  [v7 defaultEditControlSizeForCell:v6 inTableView:v8];
  v10 = v9;

  [v6 bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = [v6 _constants];
  v18 = [v6 _tableView];
  [v17 defaultEditControlPaddingForCell:v6 inTableView:v18];
  v20 = v10 + v19;
  v21 = v6[13];
  v22 = [(UITableViewCellLayoutManager *)self _editControlOnSameSideAsReorderControlForCell:v6];
  v23 = v22 ^ ((v21 & 0x400000) == 0);
  if (!v4)
  {
    if (v23)
    {
      [v6 _effectiveSafeAreaInsets];
      v27 = v12 + v28;
      if (!v22)
      {
        goto LABEL_9;
      }
    }

    else
    {
      [v6 _effectiveSafeAreaInsets];
      v27 = v12 + v14 - v20 - v38;
      if (!v22)
      {
        goto LABEL_9;
      }
    }

LABEL_13:
    if ([(UITableViewCellLayoutManager *)self reorderControlShouldAppearForCell:v6])
    {
      [(UITableViewCellLayoutManager *)self _reorderControlRectForCell:v6 offscreen:v4];
      Width = CGRectGetWidth(v49);
      [v17 defaultSpaceBetweenEditAndReorderControlsForCell:v6 inTableView:v18];
      v27 = v27 - (Width + v40);
    }

    goto LABEL_16;
  }

  [v17 defaultContentEditPaddingForCell:v6 inTableView:v18];
  v25 = v12 + v14 - v24;
  v26 = v12 - v20 + v24;
  if (v23)
  {
    v27 = v26;
  }

  else
  {
    v27 = v25;
  }

  if (v22)
  {
    goto LABEL_13;
  }

LABEL_9:
  if (!v4)
  {
    v29 = v10 + 20.0;
    v30 = 0;
    v31 = v27;
    v32 = v20;
    v33 = v16;
    if ((v21 & 0x400000) != 0)
    {
      MaxX = CGRectGetMaxX(*&v31);
      [v6 directionalLayoutMargins];
      v43 = v42;
      [v17 defaultEditControlPaddingForCell:v6 inTableView:v18];
      v27 = fmin(MaxX, v14 - (v43 - (v29 + v44 * 0.5))) - v20;
    }

    else
    {
      MinX = CGRectGetMinX(*&v31);
      [v6 directionalLayoutMargins];
      v36 = v35;
      [v17 defaultEditControlPaddingForCell:v6 inTableView:v18];
      v27 = fmax(MinX, v36 - (v29 + v37 * 0.5));
    }
  }

LABEL_16:

  v45 = 0.0;
  v46 = v27;
  v47 = v20;
  v48 = v16;
  result.size.height = v48;
  result.size.width = v47;
  result.origin.y = v45;
  result.origin.x = v46;
  return result;
}

- (CGRect)_reorderControlRectForCell:(id)a3 offscreen:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [v6 _constants];
  v8 = [v6 _tableView];
  v9 = [v6 _constants];
  v10 = [v8 _accessoryBaseColor];
  [v9 defaultReorderControlSizeForCell:v6 withAccessoryBaseColor:v10];
  v12 = v11;

  [v6 bounds];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = v6[13];
  if ([v6 _usesRoundedGroups])
  {
    [(UITableViewCellLayoutManager *)self _adjustedBackgroundContentRectForCell:v6];
    if ((v19 & 0x400000) == 0)
    {
      v14 = v20 + v21 - v12 + -1.0;
      goto LABEL_27;
    }

    v14 = v20 + 1.0;
LABEL_31:
    [v8 _isShowingIndex];
    goto LABEL_32;
  }

  if (!v4)
  {
    if ([v6 layoutMarginsFollowReadableWidth])
    {
      v25 = [v6 _tableView];
      v26 = [v25 _scrollView];
      v27 = [v26 _safeAreaWidthExceedsReadableWidth];

      if ((v19 & 0x400000) == 0)
      {
        v28 = v14 + v16 - v12;
        if (v27)
        {
          [v6 directionalLayoutMargins];
LABEL_18:
          v14 = v28 - v29;
          goto LABEL_27;
        }

LABEL_17:
        [v6 _effectiveSafeAreaInsets];
        goto LABEL_18;
      }

      if (v27)
      {
        [v6 directionalLayoutMargins];
        v14 = v14 + v31;
        goto LABEL_31;
      }
    }

    else if ((v19 & 0x400000) == 0)
    {
      v28 = v14 + v16 - v12;
      goto LABEL_17;
    }

    [v6 _effectiveSafeAreaInsets];
    v14 = v14 + v32;
    goto LABEL_31;
  }

  if ([(UITableViewCellLayoutManager *)self accessoryShouldAppearForCell:v6]&& ![(UITableViewCellLayoutManager *)self editingAccessoryShouldAppearForCell:v6])
  {
    if ((v19 & 0x400000) == 0)
    {
      v14 = v14 + v16 - v12;
      goto LABEL_27;
    }

    goto LABEL_31;
  }

  v22 = [(UITableViewCellLayoutManager *)self reorderSeparatorShouldAppearForCell:v6];
  if ((v19 & 0x400000) != 0)
  {
    if (v22)
    {
      [(UITableViewCellLayoutManager *)self _reorderSeparatorRectForCell:v6 offscreen:1];
      v14 = v30 - v12;
    }

    else
    {
      [v7 defaultContentReorderPaddingForCell:v6 inTableView:v8];
      v14 = v14 - v12 + v35;
    }

    goto LABEL_31;
  }

  if (v22)
  {
    [(UITableViewCellLayoutManager *)self _reorderSeparatorRectForCell:v6 offscreen:1];
    v14 = v23 + v24;
  }

  else
  {
    [v7 defaultContentReorderPaddingForCell:v6 inTableView:v8];
    v14 = v14 + v16 - v33;
  }

LABEL_27:
  if ([v8 _isShowingIndex] && (v19 & 0x400000) == 0)
  {
    [v8 _indexFrame];
    v14 = v14 - (v12 + v14 - v34);
  }

LABEL_32:

  v36 = 0.0;
  v37 = v14;
  v38 = v12;
  v39 = v18;
  result.size.height = v39;
  result.size.width = v38;
  result.origin.y = v36;
  result.origin.x = v37;
  return result;
}

- (CGRect)_reorderSeparatorRectForCell:(id)a3 offscreen:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  [v6 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [v6 _currentScreenScale];
  v13 = v6[13];
  v15 = 1.0 / v14;
  if ([v6 _usesRoundedGroups])
  {
    [(UITableViewCellLayoutManager *)self _adjustedBackgroundRectForCell:v6];
    v17 = v16;
    v19 = v18;
    [(UITableViewCellLayoutManager *)self _reorderControlRectForCell:v6 offscreen:v4];
    v21 = v17 + v20 + 1.0;
    v22 = v17 + v19 - v20 - v15 + -1.0;
    goto LABEL_7;
  }

  if (v4)
  {
    if (![(UITableViewCellLayoutManager *)self editingAccessoryShouldAppearForCell:v6]|| [(UITableViewCellLayoutManager *)self shouldStackAccessoryViewVerticallyForCell:v6 editing:1])
    {
      v21 = v8 - v15;
      v22 = v8 + v10;
LABEL_7:
      if ((v13 & 0x400000) != 0)
      {
        v23 = v21;
      }

      else
      {
        v23 = v22;
      }

      goto LABEL_14;
    }

    [(UITableViewCellLayoutManager *)self _editingAccessoryRectForCell:v6 offscreen:0];
    v26 = v32 - v15;
    v27 = v32 + v33;
  }

  else
  {
    [(UITableViewCellLayoutManager *)self _reorderControlRectForCell:v6 offscreen:0];
    v26 = v15 + v24 + v25;
    v27 = v24 - v15;
  }

  if ((v13 & 0x400000) != 0)
  {
    v23 = v26;
  }

  else
  {
    v23 = v27;
  }

LABEL_14:

  v28 = 0.0;
  v29 = v23;
  v30 = v15;
  v31 = v12;
  result.size.height = v31;
  result.size.width = v30;
  result.origin.y = v28;
  result.origin.x = v29;
  return result;
}

- (id)customAccessoryViewForCell:(id)a3 editing:(BOOL)a4
{
  if (a4)
  {
    [a3 _customEditingAccessoryView:1];
  }

  else
  {
    [a3 _customAccessoryView:1];
  }
  v4 = ;

  return v4;
}

- (BOOL)shouldStackAccessoryViewVerticallyForCell:(id)a3 editing:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if ([(UITableViewCellLayoutManager *)self shouldApplyAccessibilityLargeTextLayoutForCell:v6])
  {
    v7 = [(UITableViewCellLayoutManager *)self customAccessoryViewForCell:v6 editing:v4];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (CGRect)_accessoryRectForCell:(id)a3 offscreen:(BOOL)a4 rowWidth:(double)a5
{
  v6 = a4;
  v8 = a3;
  v9 = MEMORY[0x1E695F058];
  v10 = *MEMORY[0x1E695F058];
  v11 = [v8 _customAccessoryView:1];
  v12 = [v8 _accessoryView:v11 == 0];
  v13 = v12;
  v14 = v8[13];
  if (v11)
  {
    if ([(UITableViewCellLayoutManager *)self shouldStackAccessoryViewVerticallyForCell:v8 editing:0])
    {
      [(UITableViewCellLayoutManager *)self _adjustedBackgroundContentRectForCell:v8 rowWidth:a5];
      v16 = v15;
      v18 = v17;
      [v11 bounds];
      v132 = v19;
      v21 = v20;
      v22 = [v8 _textLabel:0];
      [v22 frame];
      v24 = v23;
      v26 = v25;
      v28 = v27;
      v30 = v29;
      v31 = [v8 _detailTextLabel:0];
      [v31 frame];
      v154.origin.x = v32;
      v154.origin.y = v33;
      v154.size.width = v34;
      v154.size.height = v35;
      v134.origin.x = v24;
      v134.origin.y = v26;
      v134.size.width = v28;
      v134.size.height = v30;
      v135 = CGRectUnion(v134, v154);
      MaxY = CGRectGetMaxY(v135);

      [v8 _marginWidth];
      v38 = v37;
      [(UITableViewCellLayoutManager *)self contentIndentationForCell:v8];
      v40 = fmax(v38 + v39, 15.0);
      v41 = [v8 _imageView:0];
      v42 = [v41 image];
      if (v42 && (v43 = v42, v44 = [(UITableViewCellLayoutManager *)self shouldIncreaseMarginForImageViewInCell:v8], v43, v44))
      {
        rect = v18;
        [v41 frame];
        v46 = v45;
        v48 = v47;
        v50 = v49;
        v52 = v51;
        [v8 bounds];
        [(UITableViewCellLayoutManager *)self _contentRectLeadingOffsetForCell:v8 editingState:v6 rowWidth:CGRectGetWidth(v136)];
        v54 = v46 + v53;
        if ((v14 & 0x400000) != 0)
        {
          v120 = v48;
          v121 = v50;
          v122 = v52;
          v78 = v132;
          v10 = fmin(v16 + rect - v40, CGRectGetMinX(*&v54) + -15.0) - v132;
          goto LABEL_53;
        }

        v55 = v48;
        v56 = v50;
        v57 = v52;
        v10 = v16 + fmax(v40, CGRectGetMaxX(*&v54) + 15.0);
      }

      else
      {
        if ((v14 & 0x400000) != 0)
        {
          v78 = v132;
          [v8 bounds];
          [(UITableViewCellLayoutManager *)self _contentRectLeadingOffsetForCell:v8 editingState:v6 rowWidth:CGRectGetWidth(v142)];
          v10 = v16 + v18 - v132 - v40 - v89;
          goto LABEL_53;
        }

        [v8 bounds];
        [(UITableViewCellLayoutManager *)self _contentRectLeadingOffsetForCell:v8 editingState:v6 rowWidth:CGRectGetWidth(v137)];
        v10 = v16 + v40 + v77;
      }

      v78 = v132;
LABEL_53:

      goto LABEL_54;
    }
  }

  else if (!v12)
  {
    MaxY = v9[1];
    v78 = v9[2];
    v21 = v9[3];
    goto LABEL_54;
  }

  [(UITableViewCellLayoutManager *)self _adjustedBackgroundContentRectForCell:v8 rowWidth:a5];
  v59 = v58;
  v61 = v60;
  v63 = v62;
  v65 = v64;
  v66 = v64;
  v67 = v60;
  if ([(UITableViewCellLayoutManager *)self shouldApplyAccessibilityLargeTextLayoutForCell:v8])
  {
    v68 = [v8 _textLabel:0];
    [v68 frame];
    v70 = v69;
    [v68 _capOffsetFromBoundsTop];
    v67 = v61 + v71 + v70;
    v72 = [v68 font];
    [v72 capHeight];
    v66 = v73;
  }

  if (v11)
  {
    [v11 bounds];
    v10 = v74;
    v133 = v75;
    v21 = v76;
  }

  else
  {
    [v13 bounds];
    [v13 sizeThatFits:{v79, v80}];
    v133 = v81;
    v21 = v82;
  }

  MaxY = round(v67 + (v66 - v21) * 0.5);
  if (!v6)
  {
    v86 = [(UITableViewCellLayoutManager *)self reorderControlShouldAppearForCell:v8];
    if ((v14 & 0x400000) != 0)
    {
      if (v86)
      {
        [(UITableViewCellLayoutManager *)self _reorderControlRectForCell:v8 offscreen:0];
        MaxX = CGRectGetMaxX(v141);
      }

      else
      {
        v151.origin.x = v59;
        v151.origin.y = v61;
        v151.size.width = v63;
        v151.size.height = v65;
        MaxX = CGRectGetMinX(v151);
      }

      v102 = MaxX;
      v78 = v133;
      if (dyld_program_sdk_at_least())
      {
        [v8 _effectiveSafeAreaInsets];
        v110 = v109;
        [v8 _defaultTrailingCellMarginWidth];
        v112 = fmax(v110, v111);
        [v8 directionalLayoutMargins];
        v10 = v102 + fmax(v113, v112);
        goto LABEL_54;
      }
    }

    else
    {
      if (v86)
      {
        [(UITableViewCellLayoutManager *)self _reorderControlRectForCell:v8 offscreen:0];
        MinX = CGRectGetMinX(v140);
      }

      else
      {
        v149.origin.x = v59;
        v149.origin.y = v61;
        v149.size.width = v63;
        v149.size.height = v65;
        MinX = CGRectGetMaxX(v149);
      }

      v101 = MinX;
      v150.origin.x = v10;
      v150.origin.y = MaxY;
      v78 = v133;
      v150.size.width = v133;
      v150.size.height = v21;
      v102 = v101 - CGRectGetWidth(v150);
      if (dyld_program_sdk_at_least())
      {
        [v8 _effectiveSafeAreaInsets];
        v104 = v103;
        [v8 _defaultTrailingCellMarginWidth];
        v106 = fmax(v104, v105);
        [v8 directionalLayoutMargins];
        v108 = fmax(v107, v106);
LABEL_47:
        v10 = v102 - v108;
        goto LABEL_54;
      }
    }

    [v8 _defaultTrailingCellMarginWidth];
    goto LABEL_47;
  }

  if ([v8 _hasEditingAccessoryView])
  {
    v83 = [(UITableViewCellLayoutManager *)self shouldStackAccessoryViewVerticallyForCell:v8 editing:1];
    if (v83 == [(UITableViewCellLayoutManager *)self shouldStackAccessoryViewVerticallyForCell:v8 editing:0])
    {
      [(UITableViewCellLayoutManager *)self _editingAccessoryRectForCell:v8 offscreen:1];
      x = v145.origin.x;
      v95 = MaxY;
      recta = MaxY;
      y = v145.origin.y;
      width = v145.size.width;
      height = v145.size.height;
      MidX = CGRectGetMidX(v145);
      v146.origin.x = v10;
      v146.origin.y = v95;
      v78 = v133;
      v146.size.width = v133;
      v146.size.height = v21;
      v10 = MidX - CGRectGetWidth(v146) * 0.5;
      v147.origin.x = x;
      v147.origin.y = y;
      v147.size.width = width;
      v147.size.height = height;
      MidY = CGRectGetMidY(v147);
      v148.origin.x = v10;
      v148.origin.y = recta;
      v148.size.width = v133;
      v148.size.height = v21;
      MaxY = MidY - CGRectGetHeight(v148) * 0.5;
      goto LABEL_54;
    }
  }

  if ([v8 _usesRoundedGroups])
  {
    if ((v14 & 0x400000) == 0)
    {
LABEL_21:
      v138.origin.x = v59;
      v138.origin.y = v61;
      v138.size.width = v63;
      v138.size.height = v65;
      v84 = CGRectGetMaxX(v138);
      v139.origin.x = v10;
      v139.origin.y = MaxY;
      v78 = v133;
      v139.size.width = v133;
      v139.size.height = v21;
      v85 = v84 - CGRectGetWidth(v139);
LABEL_32:
      v91 = [(UITableViewCellLayoutManager *)self shouldApplyAccessibilityLargeTextLayoutForCell:v8];
      v92 = -(MaxY - v61);
      v93 = -10.0;
      if (MaxY - v61 >= 10.0)
      {
        v92 = -10.0;
      }

      if (!v91)
      {
        v93 = v92;
      }

      if ((v14 & 0x400000) != 0)
      {
        v93 = -v93;
      }

      v10 = v85 + v93;
      goto LABEL_54;
    }

LABEL_31:
    v143.origin.x = v59;
    v143.origin.y = v61;
    v143.size.width = v63;
    v143.size.height = v65;
    v90 = CGRectGetMinX(v143);
    v144.origin.x = v10;
    v144.origin.y = MaxY;
    v78 = v133;
    v144.size.width = v133;
    v144.size.height = v21;
    v85 = v90 + CGRectGetWidth(v144);
    goto LABEL_32;
  }

  if ([(UITableViewCellLayoutManager *)self reorderControlShouldAppearForCell:v8])
  {
    if ((v14 & 0x400000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_31;
  }

  v114 = v59;
  v115 = v61;
  v116 = v63;
  v117 = v65;
  if ((v14 & 0x400000) != 0)
  {
    v127 = CGRectGetMinX(*&v114);
    v152.origin.x = v10;
    v152.origin.y = MaxY;
    v78 = v133;
    v152.size.width = v133;
    v152.size.height = v21;
    v10 = v127 - CGRectGetWidth(v152);
    if (!v11)
    {
      v128 = [v8 _constants];
      [v128 defaultContentAccessoryPadding];
      v10 = v10 + v129;
    }
  }

  else
  {
    v10 = CGRectGetMaxX(*&v114);
    if (!v11)
    {
      v118 = [v8 _constants];
      [v118 defaultContentAccessoryPadding];
      v10 = v10 - v119;
    }

    v78 = v133;
  }

LABEL_54:

  v123 = v10;
  v124 = MaxY;
  v125 = v78;
  v126 = v21;
  result.size.height = v126;
  result.size.width = v125;
  result.origin.y = v124;
  result.origin.x = v123;
  return result;
}

- (CGRect)_accessoryRectForCell:(id)a3 offscreen:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  [v6 bounds];
  [(UITableViewCellLayoutManager *)self _accessoryRectForCell:v6 offscreen:v4 rowWidth:CGRectGetWidth(v19)];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = v8;
  v16 = v10;
  v17 = v12;
  v18 = v14;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (CGRect)_editingAccessoryRectForCell:(id)a3 offscreen:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = MEMORY[0x1E695F058];
  v8 = *MEMORY[0x1E695F058];
  v9 = [v6 _customEditingAccessoryView:1];
  v10 = [v6 _editingAccessoryView:v9 == 0];
  v11 = v10;
  v12 = v6[13];
  if (!v9)
  {
    if (!v10)
    {
      MaxY = v7[1];
      v18 = v7[2];
      rect = v7[3];
      goto LABEL_74;
    }

LABEL_8:
    [(UITableViewCellLayoutManager *)self _adjustedBackgroundContentRectForCell:v6];
    v53 = v52;
    v55 = v54;
    v57 = v56;
    v59 = v58;
    v60 = v58;
    v61 = v54;
    if ([(UITableViewCellLayoutManager *)self shouldApplyAccessibilityLargeTextLayoutForCell:v6])
    {
      v62 = [v6 _textLabel:0];
      [v62 frame];
      v64 = v63;
      [v62 _capOffsetFromBoundsTop];
      v61 = v55 + v65 + v64;
      v66 = [v62 font];
      [v66 capHeight];
      v60 = v67;
    }

    if (v9)
    {
      [v9 bounds];
      v8 = v69;
      v18 = v70;
    }

    else
    {
      [v11 bounds];
      [v11 sizeThatFits:{v72, v73}];
      v18 = v74;
      v68 = v75;
    }

    rect = v68;
    MaxY = round(v61 + (v60 - v68) * 0.5);
    if (v4)
    {
      if ([(UITableViewCellLayoutManager *)self reorderSeparatorShouldAppearForCell:v6])
      {
        [(UITableViewCellLayoutManager *)self _reorderSeparatorRectForCell:v6 offscreen:0];
        if ((v12 & 0x400000) == 0)
        {
          MinX = CGRectGetMinX(*&v76);
LABEL_28:
          v91 = MinX;
          v145.origin.x = v8;
          v145.origin.y = MaxY;
          v145.size.width = v18;
          v145.size.height = rect;
          v92 = v91 - CGRectGetWidth(v145);
          goto LABEL_37;
        }

        MaxX = CGRectGetMaxX(*&v76);
      }

      else
      {
        v87 = v53;
        v88 = v55;
        v89 = v57;
        v90 = v59;
        if ((v12 & 0x400000) == 0)
        {
          MinX = CGRectGetMaxX(*&v87);
          goto LABEL_28;
        }

        MaxX = CGRectGetMinX(*&v87);
      }

      v92 = MaxX;
LABEL_37:
      if (dyld_program_sdk_at_least())
      {
        [v6 _effectiveSafeAreaInsets];
        v107 = v106;
        v109 = v108;
        [v6 _defaultTrailingCellMarginWidth];
        v111 = v110;
        [v6 directionalLayoutMargins];
        if ((v12 & 0x400000) != 0)
        {
          v113 = v107;
        }

        else
        {
          v113 = v109;
        }

        v114 = fmax(v112, fmax(v113, v111));
        if ((v12 & 0x400000) == 0)
        {
          v114 = -v114;
        }
      }

      else
      {
        v115 = [(UITableViewCellLayoutManager *)self shouldApplyAccessibilityLargeTextLayoutForCell:v6];
        v116 = -(MaxY - v55);
        if (MaxY - v55 >= 10.0)
        {
          v116 = -10.0;
        }

        if (v115)
        {
          v117 = -10.0;
        }

        else
        {
          v117 = v116;
        }

        [v6 _effectiveSafeAreaInsets];
        if ((v12 & 0x400000) != 0)
        {
          v114 = v118 - v117;
        }

        else
        {
          v114 = v117 - v119;
        }
      }

LABEL_73:
      v8 = v92 + v114;
      goto LABEL_74;
    }

    if ([v6 _hasAccessoryView])
    {
      v81 = [(UITableViewCellLayoutManager *)self shouldStackAccessoryViewVerticallyForCell:v6 editing:1];
      if (v81 == [(UITableViewCellLayoutManager *)self shouldStackAccessoryViewVerticallyForCell:v6 editing:0])
      {
        [(UITableViewCellLayoutManager *)self _accessoryRectForCell:v6 offscreen:0];
        x = v146.origin.x;
        y = v146.origin.y;
        width = v146.size.width;
        height = v146.size.height;
        MidX = CGRectGetMidX(v146);
        v147.origin.x = v8;
        v147.origin.y = MaxY;
        v147.size.width = v18;
        v147.size.height = rect;
        v8 = MidX - CGRectGetWidth(v147) * 0.5;
        v148.origin.x = x;
        v148.origin.y = y;
        v148.size.width = width;
        v148.size.height = height;
        MidY = CGRectGetMidY(v148);
        v149.origin.x = v8;
        v149.origin.y = MaxY;
        v149.size.width = v18;
        v149.size.height = rect;
        MaxY = MidY - CGRectGetHeight(v149) * 0.5;
        goto LABEL_74;
      }
    }

    if (![v6 _usesRoundedGroups])
    {
      v93 = v53;
      v94 = v55;
      v95 = v57;
      v96 = v59;
      if ((v12 & 0x400000) != 0)
      {
        v125 = CGRectGetMinX(*&v93);
        v151.origin.x = v8;
        v151.origin.y = MaxY;
        v151.size.width = v18;
        v151.size.height = rect;
        v92 = v125 - CGRectGetWidth(v151);
        if (v9)
        {
          goto LABEL_63;
        }

        v97 = [v6 _constants];
        [v97 defaultContentAccessoryPadding];
        v92 = v92 + v126;
      }

      else
      {
        v92 = CGRectGetMaxX(*&v93);
        if (v9)
        {
LABEL_63:
          if (dyld_program_sdk_at_least())
          {
            [v6 _effectiveSafeAreaInsets];
            if ((v12 & 0x400000) != 0)
            {
              v130 = v128;
            }

            else
            {
              v130 = v129;
            }

            [v6 _defaultTrailingCellMarginWidth];
            v132 = fmax(v130, v131);
            [v6 directionalLayoutMargins];
            v114 = -fmax(v133, v132);
          }

          else
          {
            v134 = [(UITableViewCellLayoutManager *)self shouldApplyAccessibilityLargeTextLayoutForCell:v6];
            v114 = -10.0;
            if (!v134)
            {
              v114 = -10.0;
              if (MaxY - v55 < 10.0)
              {
                v114 = -(MaxY - v55);
              }
            }
          }

          if ((v12 & 0x400000) != 0)
          {
            v114 = -v114;
          }

          goto LABEL_73;
        }

        v97 = [v6 _constants];
        [v97 defaultContentAccessoryPadding];
        v92 = v92 - v98;
      }

      goto LABEL_63;
    }

    if ([(UITableViewCellLayoutManager *)self reorderSeparatorShouldAppearForCell:v6])
    {
      [(UITableViewCellLayoutManager *)self _reorderSeparatorRectForCell:v6 offscreen:0];
      if ((v12 & 0x400000) == 0)
      {
        v86 = CGRectGetMinX(*&v82);
LABEL_54:
        v124 = v86;
        v150.origin.x = v8;
        v150.origin.y = MaxY;
        v150.size.width = v18;
        v150.size.height = rect;
        v92 = v124 - CGRectGetWidth(v150);
        goto LABEL_63;
      }

      v127 = CGRectGetMaxX(*&v82);
    }

    else
    {
      v120 = v53;
      v121 = v55;
      v122 = v57;
      v123 = v59;
      if ((v12 & 0x400000) == 0)
      {
        v86 = CGRectGetMaxX(*&v120);
        goto LABEL_54;
      }

      v127 = CGRectGetMinX(*&v120);
    }

    v92 = v127;
    goto LABEL_63;
  }

  if (![(UITableViewCellLayoutManager *)self shouldStackAccessoryViewVerticallyForCell:v6 editing:1])
  {
    goto LABEL_8;
  }

  [(UITableViewCellLayoutManager *)self _adjustedBackgroundContentRectForCell:v6];
  v14 = v13;
  v16 = v15;
  [v9 bounds];
  v18 = v17;
  rect = v19;
  v20 = [v6 _textLabel:0];
  [v20 frame];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v29 = [v6 _detailTextLabel:0];
  [v29 frame];
  v154.origin.x = v30;
  v154.origin.y = v31;
  v154.size.width = v32;
  v154.size.height = v33;
  v140.origin.x = v22;
  v140.origin.y = v24;
  v140.size.width = v26;
  v140.size.height = v28;
  v141 = CGRectUnion(v140, v154);
  MaxY = CGRectGetMaxY(v141);

  [v6 _marginWidth];
  v36 = v35;
  [(UITableViewCellLayoutManager *)self contentIndentationForCell:v6];
  v38 = fmax(v36 + v37, 15.0);
  v39 = [v6 _imageView:0];
  v40 = [v39 image];
  if (v40 && (v41 = v40, v42 = [(UITableViewCellLayoutManager *)self shouldIncreaseMarginForImageViewInCell:v6], v41, v42))
  {
    [v39 frame];
    v44 = v43;
    v46 = v45;
    v48 = v47;
    v50 = v49;
    [v6 bounds];
    [(UITableViewCellLayoutManager *)self _contentRectLeadingOffsetForCell:v6 editingState:v4 rowWidth:CGRectGetWidth(v142)];
    if ((v12 & 0x400000) != 0)
    {
      v152.origin.x = v44 - v51;
      v152.origin.y = v46;
      v152.size.width = v48;
      v152.size.height = v50;
      v8 = fmin(-v38, CGRectGetMinX(v152) + -15.0);
    }

    else
    {
      v143.origin.x = v44 + v51;
      v143.origin.y = v46;
      v143.size.width = v48;
      v143.size.height = v50;
      v8 = v14 + fmax(v38, CGRectGetMaxX(v143) + 15.0);
    }
  }

  else
  {
    [v6 bounds];
    [(UITableViewCellLayoutManager *)self _contentRectLeadingOffsetForCell:v6 editingState:v4 rowWidth:CGRectGetWidth(v144)];
    if ((v12 & 0x400000) != 0)
    {
      v8 = v14 + v16 - v18 - v38 - v71;
    }

    else
    {
      v8 = v14 + v38 + v71;
    }
  }

LABEL_74:
  v135 = v8;
  v136 = MaxY;
  v137 = v18;
  v138 = rect;
  result.size.height = v138;
  result.size.width = v137;
  result.origin.y = v136;
  result.origin.x = v135;
  return result;
}

- (double)_contentRectLeadingOffsetForCell:(id)a3 editingState:(BOOL)a4 rowWidth:(double)a5
{
  v6 = a4;
  v8 = a3;
  v9 = [v8 _constants];
  v10 = [v8 _tableView];
  v11 = (v8[13] & 0x400000) == 0;
  v12 = [(UITableViewCellLayoutManager *)self _editControlOnSameSideAsReorderControlForCell:v8];
  [(UITableViewCellLayoutManager *)self _adjustedBackgroundContentRectForCell:v8 rowWidth:a5];
  v17 = 0.0;
  if (v6)
  {
    v18 = v13;
    v19 = v14;
    v20 = v15;
    v21 = v16;
    if ([(UITableViewCellLayoutManager *)self editControlShouldAppearForCell:v8])
    {
      v22 = v12 ^ v11;
      [(UITableViewCellLayoutManager *)self _editControlRectForCell:v8 offscreen:0];
      if (v22)
      {
        v27 = v23;
      }

      else
      {
        v27 = v18;
      }

      if (v22)
      {
        v28 = v24;
      }

      else
      {
        v28 = v19;
      }

      if (v22)
      {
        v29 = v25;
      }

      else
      {
        v29 = v20;
      }

      if (v22)
      {
        v30 = v26;
      }

      else
      {
        v30 = v21;
      }

      if (!v22)
      {
        v18 = v23;
        v19 = v24;
        v20 = v25;
        v21 = v26;
      }

      v35.origin.x = v27;
      v35.origin.y = v28;
      v35.size.width = v29;
      v35.size.height = v30;
      MaxX = CGRectGetMaxX(v35);
      v36.origin.x = v18;
      v36.origin.y = v19;
      v36.size.width = v20;
      v36.size.height = v21;
      v32 = MaxX - CGRectGetMinX(v36);
      [v9 defaultContentEditPaddingForCell:v8 inTableView:v10];
      v17 = v32 - v33;
    }
  }

  return v17;
}

- (CGRect)_contentRectForCell:(id)a3 forEditingState:(BOOL)a4 showingDeleteConfirmation:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  [a3 bounds];
  Width = CGRectGetWidth(v15);

  [(UITableViewCellLayoutManager *)self _contentRectForCell:a3 forEditingState:v6 showingDeleteConfirmation:v5 rowWidth:Width];
  result.size.height = v13;
  result.size.width = v12;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

- (CGRect)_contentRectForCell:(id)a3 forEditingState:(BOOL)a4 showingDeleteConfirmation:(BOOL)a5 rowWidth:(double)a6
{
  v7 = a5;
  v8 = a4;
  v10 = a3;
  if ([v10 _usesModernAccessoriesLayout])
  {
    v33 = 0;
    v34 = &v33;
    v35 = 0x4010000000;
    v36 = "";
    v37 = 0u;
    v38 = 0u;
    v28 = MEMORY[0x1E69E9820];
    v29 = __139__UITableViewCellLayoutManager_UITableViewCellLayoutManagerStatic___contentRectForCell_forEditingState_showingDeleteConfirmation_rowWidth___block_invoke;
    v30 = &unk_1E70FE3F8;
    v11 = v10;
    v31 = v11;
    v32 = &v33;
    [v11 frame];
    if (v13 == a6)
    {
      v29(&v28);
    }

    else
    {
      v22 = v12;
      v23 = [v11 _accessoryManager];
      [v23 performWithEnforcedContainerSize:&v28 block:{a6, v22}];
    }

    v15 = v34[4];
    v17 = v34[5];
    v19 = v34[6];
    v21 = v34[7];

    _Block_object_dispose(&v33, 8);
  }

  else
  {
    [(UITableViewCellLayoutManager *)self _legacy_contentRectForCell:v10 forEditingState:v8 showingDeleteConfirmation:v7 rowWidth:a6];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
  }

  v24 = v15;
  v25 = v17;
  v26 = v19;
  v27 = v21;
  result.size.height = v27;
  result.size.width = v26;
  result.origin.y = v25;
  result.origin.x = v24;
  return result;
}

void __139__UITableViewCellLayoutManager_UITableViewCellLayoutManagerStatic___contentRectForCell_forEditingState_showingDeleteConfirmation_rowWidth___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _updateAccessoriesIfNeeded];
  v2 = [*(a1 + 32) _accessoryManager];
  [v2 layoutIfNeeded];

  v8 = [*(a1 + 32) _accessoryManager];
  [v8 contentFrame];
  v3 = *(*(a1 + 40) + 8);
  v3[4] = v4;
  v3[5] = v5;
  v3[6] = v6;
  v3[7] = v7;
}

- (CGRect)_legacy_contentRectForCell:(id)a3 forEditingState:(BOOL)a4 showingDeleteConfirmation:(BOOL)a5 rowWidth:(double)a6
{
  v7 = a4;
  v9 = a3;
  v10 = [v9 _tableView];
  v11 = [v9 _constants];
  [(UITableViewCellLayoutManager *)self _adjustedBackgroundContentRectForCell:v9 rowWidth:a6];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  rect = v18;
  v19 = v9[13];
  v20 = [(UITableViewCellLayoutManager *)self _editControlOnSameSideAsReorderControlForCell:v9]^ ((v19 & 0x400000) == 0);
  [(UITableViewCellLayoutManager *)self _contentRectLeadingOffsetForCell:v9 editingState:v7 rowWidth:a6];
  if (v20)
  {
    v22 = v13 + v21;
  }

  else
  {
    v22 = v13;
  }

  v23 = v17 - v21;
  v117 = a6;
  if (!v7 && ![v9 _allowsReorderingWhenNotEditing])
  {
    if (![(UITableViewCellLayoutManager *)self accessoryShouldAppearForCell:v9])
    {
      v33 = v22;
      v34 = v15;
      goto LABEL_100;
    }

    [(UITableViewCellLayoutManager *)self _accessoryRectForCell:v9 offscreen:0 rowWidth:a6];
    v64 = v63;
    v66 = v65;
    v68 = v67;
    v51 = v69;
    if (![(UITableViewCellLayoutManager *)self shouldStackAccessoryViewVerticallyForCell:v9 editing:0])
    {
      if ((v19 & 0x400000) != 0)
      {
        v82 = v64;
      }

      else
      {
        v82 = v22;
      }

      if ((v19 & 0x400000) != 0)
      {
        v83 = v66;
      }

      else
      {
        v83 = v15;
      }

      if ((v19 & 0x400000) != 0)
      {
        v84 = v68;
      }

      else
      {
        v84 = v23;
      }

      if ((v19 & 0x400000) != 0)
      {
        v85 = v51;
      }

      else
      {
        v85 = rect;
      }

      v86 = v15;
      v33 = v22;
      if ((v19 & 0x400000) != 0)
      {
        v87 = v22;
      }

      else
      {
        v87 = v64;
      }

      v34 = v86;
      v88 = v23;
      if ((v19 & 0x400000) != 0)
      {
        v89 = v86;
      }

      else
      {
        v89 = v66;
      }

      v118 = v88;
      if ((v19 & 0x400000) != 0)
      {
        v90 = v88;
      }

      else
      {
        v90 = v68;
      }

      if ((v19 & 0x400000) != 0)
      {
        v51 = rect;
      }

      MaxX = CGRectGetMaxX(*&v82);
      v126.origin.x = v87;
      v126.origin.y = v89;
      v126.size.width = v90;
      v126.size.height = v51;
      v61 = MaxX - CGRectGetMinX(v126);
      v62 = [v9 _customAccessoryView:1];
      goto LABEL_96;
    }

    v33 = v22;
    v34 = v15;
LABEL_68:
    rect = rect - v51;
    goto LABEL_100;
  }

  if ([(UITableViewCellLayoutManager *)self reorderSeparatorShouldAppearForCell:v9])
  {
    [(UITableViewCellLayoutManager *)self _reorderSeparatorRectForCell:v9 offscreen:0];
    if ((v19 & 0x400000) != 0)
    {
      v28 = v24;
    }

    else
    {
      v28 = v22;
    }

    if ((v19 & 0x400000) != 0)
    {
      v29 = v25;
    }

    else
    {
      v29 = v15;
    }

    if ((v19 & 0x400000) != 0)
    {
      v30 = v26;
    }

    else
    {
      v30 = v23;
    }

    if ((v19 & 0x400000) != 0)
    {
      v31 = v27;
    }

    else
    {
      v31 = rect;
    }

    if ((v19 & 0x400000) != 0)
    {
      v32 = v22;
    }

    else
    {
      v32 = v24;
    }

    v33 = v22;
    v34 = v15;
    if ((v19 & 0x400000) != 0)
    {
      v35 = v15;
    }

    else
    {
      v35 = v25;
    }

    if ((v19 & 0x400000) != 0)
    {
      v36 = v23;
    }

    else
    {
      v36 = v26;
    }

    if ((v19 & 0x400000) != 0)
    {
      v37 = rect;
    }

    else
    {
      v37 = v27;
    }

    v121.origin.x = v28;
    v121.origin.y = v29;
    v121.size.width = v30;
    v121.size.height = v31;
    v38 = v23;
    v39 = CGRectGetMaxX(v121);
    v122.origin.x = v32;
    v122.origin.y = v35;
    v122.size.width = v36;
    v122.size.height = v37;
    MinX = CGRectGetMinX(v122);
    v41 = (v19 & 0x400000) == 0;
    v42 = v39 - MinX;
    v23 = v38 - v42;
    v43 = v33 + v42;
  }

  else
  {
    if (![(UITableViewCellLayoutManager *)self reorderControlShouldAppearForCell:v9]|| [(UITableViewCellLayoutManager *)self _editControlOnSameSideAsReorderControlForCell:v9])
    {
      v33 = v22;
      v34 = v15;
      if (!v7)
      {
        goto LABEL_100;
      }

LABEL_39:
      if (![(UITableViewCellLayoutManager *)self editingAccessoryShouldAppearForCell:v9])
      {
        goto LABEL_100;
      }

      [(UITableViewCellLayoutManager *)self _editingAccessoryRectForCell:v9 offscreen:1];
      v45 = v44;
      v47 = v46;
      v49 = v48;
      v51 = v50;
      if (![(UITableViewCellLayoutManager *)self shouldStackAccessoryViewVerticallyForCell:v9 editing:1])
      {
        if ((v19 & 0x400000) != 0)
        {
          v52 = v45;
        }

        else
        {
          v52 = v33;
        }

        if ((v19 & 0x400000) != 0)
        {
          v53 = v47;
        }

        else
        {
          v53 = v34;
        }

        if ((v19 & 0x400000) != 0)
        {
          v54 = v49;
        }

        else
        {
          v54 = v23;
        }

        if ((v19 & 0x400000) != 0)
        {
          v55 = v51;
        }

        else
        {
          v55 = rect;
        }

        if ((v19 & 0x400000) != 0)
        {
          v56 = v33;
        }

        else
        {
          v56 = v45;
        }

        v57 = v23;
        if ((v19 & 0x400000) != 0)
        {
          v58 = v34;
        }

        else
        {
          v58 = v47;
        }

        v118 = v57;
        if ((v19 & 0x400000) != 0)
        {
          v59 = v57;
        }

        else
        {
          v59 = v49;
        }

        if ((v19 & 0x400000) != 0)
        {
          v51 = rect;
        }

        v60 = CGRectGetMaxX(*&v52);
        v123.origin.x = v56;
        v123.origin.y = v58;
        v123.size.width = v59;
        v123.size.height = v51;
        v61 = v60 - CGRectGetMinX(v123);
        v62 = [v9 _customEditingAccessoryView:1];
LABEL_96:
        v92 = v62;

        if (!v92)
        {
          [v11 defaultContentAccessoryPadding];
          v61 = v61 + v93;
        }

        v23 = v118 - v61;
        if ((v19 & 0x400000) != 0)
        {
          v33 = v33 + v61;
        }

        goto LABEL_100;
      }

      goto LABEL_68;
    }

    [(UITableViewCellLayoutManager *)self _reorderControlRectForCell:v9 offscreen:0];
    v74 = v70;
    v75 = v71;
    v76 = v72;
    v77 = v73;
    if ((v19 & 0x400000) != 0)
    {
      v33 = v22;
      v34 = v15;
      v112 = CGRectGetMaxX(*&v70);
      [v11 defaultContentReorderPaddingForCell:v9 inTableView:v10];
      v81 = v112 + v113;
    }

    else
    {
      v124.origin.x = v22;
      v33 = v22;
      v34 = v15;
      v124.origin.y = v15;
      v124.size.width = v23;
      v124.size.height = rect;
      v78 = CGRectGetMaxX(v124);
      v125.origin.x = v74;
      v125.origin.y = v75;
      v125.size.width = v76;
      v125.size.height = v77;
      v79 = v78 - CGRectGetMinX(v125);
      [v11 defaultContentReorderPaddingForCell:v9 inTableView:v10];
      v81 = v79 - v80;
    }

    v23 = v23 - v81;
    v43 = v33 + v81;
    v41 = (v19 & 0x400000) == 0;
  }

  if (!v41)
  {
    v33 = v43;
  }

  if (v7)
  {
    goto LABEL_39;
  }

LABEL_100:
  v119 = v23;
  [v9 _effectiveSafeAreaInsets];
  v115 = v94;
  v116 = v95;
  [v9 bounds];
  v97 = v96;
  v99 = v98;
  v101 = v100;
  v114 = v100;
  v102 = v33;
  v127.origin.x = v33;
  v127.origin.y = v34;
  v127.size.width = v23;
  v127.size.height = rect;
  v103 = CGRectGetMinX(v127);
  v128.origin.x = v97;
  v128.origin.y = v99;
  v128.size.width = v117;
  v128.size.height = v101;
  v104 = CGRectGetMinX(v128);
  v129.size.height = v114;
  v105 = fmax(v115 - fmax(v103 - v104, 0.0), 0.0);
  v129.origin.x = v97;
  v129.origin.y = v99;
  v129.size.width = v117;
  v106 = CGRectGetMaxX(v129);
  v130.origin.x = v102;
  v130.origin.y = v34;
  v130.size.width = v119;
  v130.size.height = rect;
  v107 = v119 - (v105 + fmax(v116 - fmax(v106 - CGRectGetMaxX(v130), 0.0), 0.0));

  v108 = v102 + v105;
  v109 = v34 + 0.0;
  v110 = v107;
  v111 = rect;
  result.size.height = v111;
  result.size.width = v110;
  result.origin.y = v109;
  result.origin.x = v108;
  return result;
}

+ (id)layoutManagerForTableViewCellStyle:(int64_t)a3
{
  v3 = 0;
  if (a3 > 1)
  {
    switch(a3)
    {
      case 2:
        v4 = qword_1ED49B138;
        if (!qword_1ED49B138)
        {
          v9 = objc_alloc_init(UITableViewCellLayoutManagerValue2);
          v10 = qword_1ED49B138;
          qword_1ED49B138 = v9;

          v4 = qword_1ED49B138;
        }

        break;
      case 3:
        v4 = qword_1ED49B140;
        if (!qword_1ED49B140)
        {
          v11 = objc_alloc_init(UITableViewCellLayoutManagerSubtitle);
          v12 = qword_1ED49B140;
          qword_1ED49B140 = v11;

          v4 = qword_1ED49B140;
        }

        break;
      case 0x3E8:
        v4 = qword_1ED49B148;
        if (!qword_1ED49B148)
        {
          v5 = objc_alloc_init(UITableViewCellLayoutManagerEditable1);
          v6 = qword_1ED49B148;
          qword_1ED49B148 = v5;

          v4 = qword_1ED49B148;
        }

        break;
      default:
        goto LABEL_16;
    }

LABEL_15:
    v3 = v4;
    goto LABEL_16;
  }

  if (a3)
  {
    if (a3 != 1)
    {
      goto LABEL_16;
    }

    v4 = _MergedGlobals_21_4;
    if (!_MergedGlobals_21_4)
    {
      v7 = objc_alloc_init(UITableViewCellLayoutManagerValue1);
      v8 = _MergedGlobals_21_4;
      _MergedGlobals_21_4 = v7;

      v4 = _MergedGlobals_21_4;
    }

    goto LABEL_15;
  }

  v3 = +[UITableViewCellLayoutManager sharedLayoutManager];
LABEL_16:

  return v3;
}

- (void)_reconfigureCell:(id)a3
{
  v5 = a3;
  v4 = [v5 _usesModernAccessoriesLayout];
  [v5 setLayoutManager:self];
  if (v4)
  {
    [v5 _setUsesModernAccessoriesLayout:1];
  }

  [(UITableViewCellLayoutManager *)self _resetTextLabelDefaultFontInCell:v5];
}

- (void)_resetTextLabelDefaultFontInCell:(id)a3
{
  v7 = a3;
  v4 = [v7 _textLabel:0];
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      if ([v5 usingDefaultFont])
      {
        v6 = [(UITableViewCellLayoutManager *)self defaultTextLabelFontForCell:v7];
        [v5 _setDefaultFont:v6];
      }
    }
  }
}

- (double)defaultTextLabelFontSizeForCell:(id)a3
{
  v3 = a3;
  v4 = [v3 _constants];
  v5 = [v3 _cellStyle];

  [v4 defaultTextLabelFontSizeForCellStyle:v5];
  v7 = v6;

  return v7;
}

- (id)defaultImageViewForCell:(id)a3
{
  v3 = objc_alloc_init(objc_opt_class());

  return v3;
}

- (id)defaultTextLabelFontForCell:(id)a3
{
  v3 = a3;
  v4 = [v3 _constants];
  v5 = [v3 _cellStyle];

  v6 = [v4 defaultTextLabelFontForCellStyle:v5];

  return v6;
}

- (id)defaultLabelForCell:(id)a3 ofClass:(Class)a4
{
  v6 = a3;
  v7 = objc_alloc_init(a4);
  v8 = +[UIColor clearColor];
  if ([v6 _changesOpaqueStateOfSubviews])
  {
    v9 = [v6 _contentBackgroundColor];
    [v9 alphaComponent];
    if (v10 == 1.0)
    {
      v11 = v9;

      v8 = v11;
    }
  }

  [v7 setBackgroundColor:v8];
  v12 = [(UITableViewCellLayoutManager *)self defaultTextLabelFontForCell:v6];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v7 _setDefaultFont:v12];
  }

  else
  {
    [v7 setFont:v12];
  }

  [v7 setAdjustsFontForContentSizeCategory:dyld_program_sdk_at_least()];
  v13 = [v6 _constants];
  v14 = [v6 _cellStyle];
  v15 = [v6 traitCollection];
  v16 = [v6 _inheritedInteractionTintColor];
  v17 = [UICellConfigurationState _readonlyCellState:?];
  v18 = [v13 defaultTextColorForCellStyle:v14 traitCollection:v15 tintColor:v16 state:v17];

  [v7 setTextColor:v18];
  v19 = [v6 _constants];
  v20 = [v6 _cellStyle];
  v21 = [v6 traitCollection];
  v22 = [v6 _inheritedInteractionTintColor];
  v23 = [UICellConfigurationState _readonlyCellStateFromViewConfigurationState:?];
  v24 = [v19 defaultTextColorForCellStyle:v20 traitCollection:v21 tintColor:v22 state:v23];

  if (v24)
  {
    v25 = v18;
    v26 = v24;
    v27 = v26;
    if (v25 == v26)
    {

      goto LABEL_16;
    }

    if (v25)
    {
      v28 = [v25 isEqual:v26];

      if (v28)
      {
        goto LABEL_16;
      }
    }

    else
    {
    }

    [v7 setHighlightedTextColor:v27];
  }

LABEL_16:

  [v7 setHighlighted:{objc_msgSend(v6, "_isHighlighted")}];
  [v7 setEnabled:{objc_msgSend(v6, "isUserInteractionEnabled")}];
  [v7 setOpaque:{objc_msgSend(v7, "isHighlighted") ^ 1}];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v7 setTableCell:v6];
  }

  return v7;
}

- (id)defaultLabelForCell:(id)a3
{
  v4 = a3;
  v5 = [(UITableViewCellLayoutManager *)self defaultLabelForCell:v4 ofClass:objc_opt_class()];

  return v5;
}

- (id)defaultEditableTextFieldForCell:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(UITextField);
  v5 = +[UIColor clearColor];
  if ([v3 _changesOpaqueStateOfSubviews])
  {
    v6 = [v3 _contentBackgroundColor];
    [v6 alphaComponent];
    if (v7 == 1.0)
    {
      v8 = v6;

      v5 = v8;
    }
  }

  [(UITextField *)v4 setBackgroundColor:v5];
  v9 = [v3 _constants];
  v10 = [v9 defaultTextLabelFontForCellStyle:{objc_msgSend(v3, "_cellStyle")}];
  [(UITextField *)v4 setFont:v10];

  [(UITextField *)v4 setAdjustsFontForContentSizeCategory:dyld_program_sdk_at_least()];
  -[UITextField setHighlighted:](v4, "setHighlighted:", [v3 _isHighlighted]);
  -[UITextField setEnabled:](v4, "setEnabled:", [v3 isUserInteractionEnabled]);
  [(UIView *)v4 setOpaque:[(UIControl *)v4 isHighlighted]^ 1];

  return v4;
}

- (id)defaultBadgeForCell:(id)a3
{
  v3 = [_UITableViewCellBadge alloc];
  v4 = [(_UITableViewCellBadge *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];

  return v4;
}

- (double)contentIndentationForCell:(id)a3
{
  v3 = a3;
  v4 = [v3 indentationLevel];
  [v3 indentationWidth];
  v6 = v5;

  return v6 * v4;
}

- (CGRect)standardLayoutImageViewFrameForCell:(id)a3 forSizing:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [v6 _imageView:0];
  v8 = v7;
  if (v7 && ([v7 image], v9 = objc_claimAutoreleasedReturnValue(), v9, v9))
  {
    v10 = v6[13];
    v11 = [v6 contentView];
    [v11 bounds];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;

    if ((v10 & 0x400000) != 0)
    {
      v89.origin.x = v13;
      v89.origin.y = v15;
      v89.size.width = v17;
      v89.size.height = v19;
      MaxX = CGRectGetMaxX(v89);
      [(UITableViewCellLayoutManager *)self contentIndentationForCell:v6];
      v22 = MaxX - v27;
    }

    else
    {
      v20 = *MEMORY[0x1E695F058];
      [(UITableViewCellLayoutManager *)self contentIndentationForCell:v6];
      v22 = v20 + v21;
    }

    [v8 frame];
    [v8 sizeThatFits:{v28, v29}];
    width = v30;
    height = v31;
    v86 = v13;
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      [v8 transform];
      if (!CGAffineTransformIsIdentity(&v88))
      {
        v32 = *MEMORY[0x1E695EFF8];
        v33 = *(MEMORY[0x1E695EFF8] + 8);
        [v8 transform];
        v90.origin.x = v32;
        v90.origin.y = v33;
        v13 = v86;
        v90.size.width = width;
        v90.size.height = height;
        v91 = CGRectApplyAffineTransform(v90, &v88);
        width = v91.size.width;
        height = v91.size.height;
      }
    }

    if (height <= v19 || v4)
    {
      v35 = 1.0;
    }

    else
    {
      v35 = v19 / height;
    }

    v36 = [v8 _currentImage];
    v87 = v15;
    v85 = v17;
    _UITableCellLineHeightCenteredImageInRect(v36, v35, v13, v15, v17, v19);
    v23 = v37;
    v39 = v38;
    v41 = v40;

    if (fabs(v35 + -1.0) > 2.22044605e-16)
    {
      height = v41;
      width = v39;
    }

    if (dyld_program_sdk_at_least())
    {
      v42 = [v6 _constants];
      v43 = [v6 traitCollection];
      [v42 defaultImageViewSymbolImageAndAccessoryLayoutWidthForSidebar:0 traitCollection:v43];
      v45 = v44;

      v46 = [v8 image];
      v47 = [v6 traitCollection];
      v48 = 0.0;
      if (_UITableCellShouldCenterImageHorizontallyForTraitCollection(v46, v47))
      {
        v92.origin.x = v22;
        v92.origin.y = v23;
        v92.size.width = width;
        v92.size.height = height;
        v48 = (v45 - CGRectGetWidth(v92)) * 0.5;
      }

      v49 = v87;
      if ((v10 & 0x400000) != 0)
      {
        v70 = v85;
        v69 = v86;
        v71 = v19;
        v72 = CGRectGetWidth(*(&v49 - 1));
        v94.origin.x = v22;
        v94.origin.y = v23;
        v94.size.width = width;
        v94.size.height = height;
        v73 = v72 - CGRectGetWidth(v94);
        v50 = [v6 contentView];
        [v50 layoutMargins];
        v22 = v73 - v74 - v48;
      }

      else
      {
        v50 = [v6 contentView];
        [v50 layoutMargins];
        v22 = v48 + v51;
      }
    }

    else if (dyld_program_sdk_at_least())
    {
      v52 = [v6 _constants];
      v53 = [v6 _tableView];
      v54 = [v52 imageViewOffsetByLayoutMarginsForCell:v6 inTableView:v53];

      if (v54)
      {
        [v6 bounds];
        v55 = CGRectGetWidth(v93);
        -[UITableViewCellLayoutManager contentRectForCell:forState:rowWidth:](self, "contentRectForCell:forState:rowWidth:", v6, [v6 currentStateMask], v55);
        v57 = v56;
        v82 = v58;
        v83 = v59;
        recta = v60;
        [v6 directionalLayoutMargins];
        v62 = v61;
        [v6 _defaultLeadingMarginWidth];
        v64 = fmax(v62, v63);
        v65 = v57;
        v66 = v82;
        v67 = v83;
        v68 = recta;
        if ((v10 & 0x400000) != 0)
        {
          v80 = fmax(v64 - (v55 - CGRectGetMaxX(*&v65)), 15.0);
          v95.origin.x = v86;
          v95.origin.y = v87;
          v95.size.width = v85;
          v95.size.height = v19;
          v81 = CGRectGetMaxX(v95) - v80;
          v96.origin.x = v22;
          v96.origin.y = v23;
          v96.size.width = width;
          v96.size.height = height;
          v22 = v81 - CGRectGetWidth(v96);
        }

        else
        {
          v22 = fmax(v64 - CGRectGetMinX(*&v65), 15.0);
        }
      }
    }

    else
    {
      [v6 _defaultLeadingMarginWidth];
      v22 = v75;
    }
  }

  else
  {
    v22 = *MEMORY[0x1E695F058];
    v23 = *(MEMORY[0x1E695F058] + 8);
    width = *(MEMORY[0x1E695F058] + 16);
    height = *(MEMORY[0x1E695F058] + 24);
  }

  v76 = v22;
  v77 = v23;
  v78 = width;
  v79 = height;
  result.size.height = v79;
  result.size.width = v78;
  result.origin.y = v77;
  result.origin.x = v76;
  return result;
}

- (void)layoutSubviewsOfCell:(id)a3
{
  if ([a3 _usesModernAccessoriesLayout])
  {

    [(UITableViewCellLayoutManager *)self _modern_layoutSubviewsOfCell:a3];
  }

  else
  {

    [(UITableViewCellLayoutManager *)self _legacy_layoutSubviewsOfCell:a3];
  }
}

- (void)_modern_layoutSubviewsOfCell:(id)a3
{
  [a3 _updateAccessoriesIfNeeded];
  v5 = [a3 _accessoryManager];
  [v5 layoutIfNeeded];

  v6 = [a3 _accessoryManager];
  [v6 contentFrame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = [a3 contentView];
  [v15 setFrame:{v8, v10, v12, v14}];

  if (_UITableViewCellUsesLayoutMarginBasedContentPadding())
  {
    v16 = [a3 _accessoryManager];
    v17 = [v16 currentConfiguration];

    v18 = [v17 leadingAccessories];
    v19 = [v18 count];

    v20 = 0.0;
    v21 = 0.0;
    if (v19)
    {
      v22 = [a3 _constants];
      [v22 defaultCellContentLeadingPaddingForSidebar:0];
      v21 = v23;
    }

    v24 = [v17 trailingAccessories];
    v25 = [v24 count];

    if (v25)
    {
      v26 = [a3 _constants];
      [v26 defaultCellContentTrailingPadding];
      v20 = v27;
    }

    [a3 _setOverriddenDefaultContentViewLayoutMargins:{0.0, v21, 0.0, v20}];
  }

  v28 = [a3 currentStateMask];
  v29 = [a3 _badge:0];
  [(UITableViewCellLayoutManager *)self backgroundEndingRectForCell:a3 forNewEditingState:v28 & 1];
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v38 = [a3 _backgroundView:1];
  [v38 setFrame:{v31, v33, v35, v37}];
  v39 = [v38 layer];
  [v39 setContentsRect:{0.0, 0.0, 1.0, 1.0}];

  [(UITableViewCellLayoutManager *)self selectedBackgroundEndingRectForCell:a3 forNewEditingState:v28 & 1];
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v48 = [a3 _selectedBackgroundView:0];
  [v48 setFrame:{v41, v43, v45, v47}];

  v49 = [a3 _imageView:0];
  v50 = v49;
  if (v49)
  {
    v51 = [v49 image];

    if (v51)
    {
      v52 = [v50 superview];

      if (!v52)
      {
        v53 = [a3 contentView];
        [v53 addSubview:v50];
      }
    }

    else
    {
      [v50 removeFromSuperview];
    }

    v54 = [v50 superview];

    if (v54)
    {
      [(UITableViewCellLayoutManager *)self standardLayoutImageViewFrameForCell:a3 forSizing:0];
      v56 = v55;
      v58 = v57;
      v60 = v59;
      v62 = v61;
      [v50 frame];
      v94.origin.x = v63;
      v94.origin.y = v64;
      v94.size.width = v65;
      v94.size.height = v66;
      v91.origin.x = v56;
      v91.origin.y = v58;
      v91.size.width = v60;
      v91.size.height = v62;
      v67 = CGRectEqualToRect(v91, v94);
      [v50 setFrame:{v56, v58, v60, v62}];
      if (!v67)
      {
        [a3 _updateSeparatorContent:1];
      }
    }
  }

  v68 = [a3 _textLabel:0];
  v69 = v68;
  if (v68)
  {
    v70 = [v68 font];
    [v70 pointSize];
    v72 = v71;

    if (v72 == 0.0)
    {
      v73 = [(UITableViewCellLayoutManager *)self defaultTextLabelFontForCell:a3];
      [v69 setFont:v73];
    }

    v74 = [v69 text];
    v75 = v74;
    if (v74 && [v74 length])
    {
      v76 = [v69 superview];

      if (!v76)
      {
        v77 = [a3 contentView];
        [v77 addSubview:v69];
      }
    }

    else
    {
      [v69 removeFromSuperview];
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v78 = [(UITableViewCellLayoutManager *)self shouldIncreaseMarginForImageViewInCell:a3];
    v79 = 0.0;
    if (!v78)
    {
      [a3 bounds];
      [(UITableViewCellLayoutManager *)self requiredIndentationForFirstLineOfCell:a3 rowWidth:CGRectGetWidth(v92)];
    }

    [v69 _setFirstParagraphFirstLineHeadIndent:v79];
  }

  v80 = [a3 _detailTextLabel:0];
  if (v69 | v80)
  {
    v89 = 0u;
    v90 = 0u;
    v87 = 0u;
    v88 = 0u;
    [a3 bounds];
    [(UITableViewCellLayoutManager *)self getTextLabelRect:&v89 detailTextLabelRect:&v87 forCell:a3 rowWidth:0 forSizing:CGRectGetWidth(v93)];
    [v69 setFrame:{v89, v90}];
    [v80 setFrame:{v87, v88}];
  }

  if ([(UITableViewCellLayoutManager *)self shouldApplyAccessibilityLargeTextLayoutForCell:a3])
  {
    [v69 frame];
    [v69 _capOffsetFromBoundsTop];
    v81 = [v69 font];
    [v81 capHeight];
  }

  v82 = [v50 superview];
  if (v82)
  {
    v83 = v82;
    v84 = [(UITableViewCellLayoutManager *)self shouldApplyAccessibilityLargeTextLayoutForCell:a3];

    if (v84)
    {
      if (![(UITableViewCellLayoutManager *)self shouldIncreaseMarginForImageViewInCell:a3])
      {
        v85 = [a3 contentView];
        [v85 bringSubviewToFront:v50];
      }

      [v50 frame];
      [v50 setFrame:?];
    }
  }

  if (![a3 style])
  {
    v86 = [a3 _detailTextLabel:0];
    [v86 removeFromSuperview];
  }

  [(UITableViewCellLayoutManager *)self _layoutFocusGuidesForCell:a3];
}

- (void)_legacy_layoutSubviewsOfCell:(id)a3
{
  v5 = [a3 currentStateMask];
  v6 = [a3 showingDeleteConfirmation];
  v7 = [a3 _badge:0];
  v8 = *(a3 + 13);
  v9 = [a3 editingData:v5 & 1];
  [(UITableViewCellLayoutManager *)self backgroundEndingRectForCell:a3 forNewEditingState:v5 & 1];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = [a3 _backgroundView:1];
  [v18 setFrame:{v11, v13, v15, v17}];
  v151 = v18;
  v19 = [v18 layer];
  [v19 setContentsRect:{0.0, 0.0, 1.0, 1.0}];

  [(UITableViewCellLayoutManager *)self selectedBackgroundEndingRectForCell:a3 forNewEditingState:v5 & 1];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = [a3 _selectedBackgroundView:0];
  [v28 setFrame:{v21, v23, v25, v27}];

  v29 = [v9 editControl:v5 & 1];
  if (v29)
  {
    [(UITableViewCellLayoutManager *)self editControlEndingRectForCell:a3 forNewEditingState:v5 & 1];
    [v29 setFrame:?];
  }

  v30 = +[UIView _isInAnimationBlock];
  v156 = v29;
  if (v5)
  {
    v171[0] = MEMORY[0x1E69E9820];
    v171[1] = 3221225472;
    v171[2] = __61__UITableViewCellLayoutManager__legacy_layoutSubviewsOfCell___block_invoke_2;
    v171[3] = &unk_1E70F35E0;
    v172 = v29;
    v173 = 0;
    [UIView conditionallyAnimate:v30 withAnimation:&__block_literal_global_552 layout:v171 completion:0];
  }

  else
  {
    if ([(UITableViewCellLayoutManager *)self editControlShouldFadeForCell:a3])
    {
      v169[0] = MEMORY[0x1E69E9820];
      v169[1] = 3221225472;
      v169[2] = __61__UITableViewCellLayoutManager__legacy_layoutSubviewsOfCell___block_invoke_4;
      v169[3] = &unk_1E70F3590;
      v170 = v29;
      [UIView conditionallyAnimate:v30 withAnimation:&__block_literal_global_86_2 layout:v169 completion:0];
    }

    [v29 setRotated:0 animated:1];
  }

  v31 = [(UITableViewCellLayoutManager *)self reorderControlShouldAppearForCell:a3];
  v32 = [v9 reorderControl:v31];
  if (v32)
  {
    [(UITableViewCellLayoutManager *)self reorderControlEndingRectForCell:a3 forNewEditingState:v5 & 1 showingDeleteConfirmation:v6];
    [v32 setFrame:?];
    if ((v5 & 1) != 0 || [a3 _allowsReorderingWhenNotEditing])
    {
      v33 = 0.0;
      if (v31)
      {
        v33 = 1.0;
      }

      goto LABEL_13;
    }

    if (([a3 _allowsReorderingWhenNotEditing] & 1) == 0)
    {
      v148 = [(UITableViewCellLayoutManager *)self reorderControlShouldFadeForCell:a3];
      v33 = 0.0;
      if (v148)
      {
LABEL_13:
        [v32 setAlpha:v33];
      }
    }
  }

  v34 = [(UITableViewCellLayoutManager *)self reorderSeparatorShouldAppearForCell:a3];
  v154 = [v9 reorderSeparatorView:v34];
  if (!v154)
  {
    goto LABEL_21;
  }

  [(UITableViewCellLayoutManager *)self reorderSeparatorEndingRectForCell:a3 forNewEditingState:v5 & 1 showingDeleteConfirmation:v6];
  [v154 setFrame:?];
  if (v5)
  {
    v35 = 0.0;
    if (v34)
    {
      v35 = 1.0;
    }
  }

  else
  {
    v36 = [(UITableViewCellLayoutManager *)self reorderSeparatorShouldFadeForCell:a3];
    v35 = 0.0;
    if (!v36)
    {
      goto LABEL_21;
    }
  }

  [v154 setAlpha:v35];
LABEL_21:
  v153 = [a3 _accessoryView:{(v5 & 1) == 0, v35}];
  v155 = [a3 _editingAccessoryView:v5 & 1];
  [(UITableViewCellLayoutManager *)self contentEndingRectForCell:a3 forNewEditingState:v5 & 1];
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v45 = [a3 contentView];
  [v45 setFrame:{v38, v40, v42, v44}];

  if ((v8 & 0x400000) != 0)
  {
    v46 = [a3 contentView];
    [v46 frame];
    CGRectGetWidth(v174);
  }

  [(UITableViewCellLayoutManager *)self contentIndentationForCell:a3];
  if (v7)
  {
    v47 = [(_UITableViewCellBadge *)v7 text];
    v48 = [v47 length];

    if (v48)
    {
      v49 = [v7 superview];

      if (!v49)
      {
        [a3 addSubview:v7];
      }
    }

    else
    {
      [v7 removeFromSuperview];
    }

    v50 = [v7 superview];

    if (v50)
    {
      v51 = [a3 contentView];
      [v51 frame];
      v53 = v52;
      v55 = v54;
      v57 = v56;
      v59 = v58;

      [v7 frame];
      if (v61 > v59)
      {
        v60 = round(v60 * (v59 / v61));
        v61 = v59;
      }

      v62 = v53 + v57 - v60 + -15.0;
      if ((v8 & 0x400000) != 0)
      {
        v62 = v53 + 15.0;
      }

      v63 = floor((v59 - v61) * 0.5);
      v64 = v57 - (v60 + 15.0);
      if ((v8 & 0x400000) != 0)
      {
        v53 = v53 + v60 + 15.0;
      }

      [v7 setFrame:{v62, v63}];
      v65 = [a3 contentView];
      [v65 setFrame:{v53, v55, v64, v59}];
    }
  }

  v66 = [a3 _imageView:0];
  v67 = v66;
  if (v66)
  {
    v68 = [v66 image];

    if (v68)
    {
      v69 = [v67 superview];

      if (!v69)
      {
        v70 = [a3 contentView];
        [v70 addSubview:v67];
      }
    }

    else
    {
      [v67 removeFromSuperview];
    }

    v71 = [v67 superview];

    if (v71)
    {
      [(UITableViewCellLayoutManager *)self standardLayoutImageViewFrameForCell:a3 forSizing:0];
      v73 = v72;
      v75 = v74;
      v77 = v76;
      v79 = v78;
      [v67 frame];
      v178.origin.x = v80;
      v178.origin.y = v81;
      v178.size.width = v82;
      v178.size.height = v83;
      v175.origin.x = v73;
      v175.origin.y = v75;
      v175.size.width = v77;
      v175.size.height = v79;
      v84 = CGRectEqualToRect(v175, v178);
      [v67 setFrame:{v73, v75, v77, v79}];
      if (!v84)
      {
        [a3 _updateSeparatorContent:1];
      }
    }
  }

  v152 = v7;
  v85 = [a3 _textLabel:0];
  v86 = v85;
  if (v85)
  {
    v87 = [v85 font];
    [v87 pointSize];
    v89 = v88;

    if (v89 == 0.0)
    {
      v90 = [(UITableViewCellLayoutManager *)self defaultTextLabelFontForCell:a3];
      [v86 setFont:v90];
    }

    v91 = [v86 text];
    v92 = v91;
    if (v91 && [v91 length])
    {
      v93 = [v86 superview];

      if (!v93)
      {
        v94 = [a3 contentView];
        [v94 addSubview:v86];
      }
    }

    else
    {
      [v86 removeFromSuperview];
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v95 = [(UITableViewCellLayoutManager *)self shouldIncreaseMarginForImageViewInCell:a3];
    v96 = 0.0;
    if (!v95)
    {
      [a3 bounds];
      [(UITableViewCellLayoutManager *)self requiredIndentationForFirstLineOfCell:a3 rowWidth:CGRectGetWidth(v176)];
    }

    [v86 _setFirstParagraphFirstLineHeadIndent:v96];
  }

  v150 = v6;
  v97 = v9;
  v98 = [a3 _detailTextLabel:0];
  v167 = 0u;
  v168 = 0u;
  v165 = 0u;
  v166 = 0u;
  [a3 bounds];
  [(UITableViewCellLayoutManager *)self getTextLabelRect:&v167 detailTextLabelRect:&v165 forCell:a3 rowWidth:0 forSizing:CGRectGetWidth(v177)];
  [v86 setFrame:{v167, v168}];
  v149 = v98;
  [v98 setFrame:{v165, v166}];
  if ([(UITableViewCellLayoutManager *)self shouldApplyAccessibilityLargeTextLayoutForCell:a3])
  {
    [v86 frame];
    [v86 _capOffsetFromBoundsTop];
    v99 = [v86 font];
    [v99 capHeight];
  }

  v100 = [v67 superview];
  if (v100)
  {
    v101 = v100;
    v102 = [(UITableViewCellLayoutManager *)self shouldApplyAccessibilityLargeTextLayoutForCell:a3];

    if (v102)
    {
      if (![(UITableViewCellLayoutManager *)self shouldIncreaseMarginForImageViewInCell:a3])
      {
        v103 = [a3 contentView];
        [v103 bringSubviewToFront:v67];
      }

      [v67 frame];
      [v67 setFrame:?];
    }
  }

  v104 = [v156 superview];
  v105 = MEMORY[0x1E695F050];
  if (v104 && (v106 = v104, v107 = [(UITableViewCellLayoutManager *)self shouldApplyAccessibilityLargeTextLayoutForCell:a3], v106, v107))
  {
    [v156 frame];
    [a3 convertRect:v156 toView:?];
  }

  else
  {
    v108 = *v105;
    v109 = v105[1];
    v110 = v105[2];
    v111 = v105[3];
  }

  [v156 adjustLayoutForFocalRect:{v108, v109, v110, v111}];
  v112 = [v32 superview];
  if (v112 && (v113 = v112, v114 = [(UITableViewCellLayoutManager *)self shouldApplyAccessibilityLargeTextLayoutForCell:a3], v113, v114))
  {
    [v32 frame];
    [a3 convertRect:v32 toView:?];
  }

  else
  {
    v115 = *v105;
    v116 = v105[1];
    v117 = v105[2];
    v118 = v105[3];
  }

  [v32 adjustLayoutForFocalRect:{v115, v116, v117, v118}];
  v163[0] = MEMORY[0x1E69E9820];
  v163[1] = 3221225472;
  v163[2] = __61__UITableViewCellLayoutManager__legacy_layoutSubviewsOfCell___block_invoke_5;
  v163[3] = &unk_1E70F3590;
  v119 = v32;
  v164 = v119;
  [UIView performWithoutAnimation:v163];
  v121 = v153;
  if (!v153)
  {
LABEL_76:
    if (!v155)
    {
      goto LABEL_93;
    }

    [(UITableViewCellLayoutManager *)self editingAccessoryEndingRectForCell:a3 forNewEditingState:v5 & 1 showingDeleteConfirmation:v150];
    v131 = v130;
    v133 = v132;
    v135 = v134;
    v137 = v136;
    if (v5)
    {
      if ([(UITableViewCellLayoutManager *)self editingAccessoryShouldAppearForCell:a3])
      {
        v138 = [v155 superview];
        if (!v138)
        {
          v139 = +[UIView areAnimationsEnabled];
          [UIView setAnimationsEnabled:0];
          [v155 setFrame:{v131, v133, v135, v137}];
          v140 = v139;
          v121 = v153;
          [UIView setAnimationsEnabled:v140];
        }

        [v155 _setHiddenForReuse:0];
        if (v138 != a3)
        {
          [a3 addSubview:v155];
        }
      }

      [v155 setFrame:{v131, v133, v135, v137}];
      v120 = 1.0;
LABEL_92:
      [v155 setAlpha:v120];
      goto LABEL_93;
    }

LABEL_91:
    [v155 setFrame:{v131, v133, v135, v137}];
    v146 = [(UITableViewCellLayoutManager *)self editingAccessoryShouldFadeForCell:a3];
    v120 = 0.0;
    if (!v146)
    {
      goto LABEL_93;
    }

    goto LABEL_92;
  }

  [(UITableViewCellLayoutManager *)self accessoryEndingRectForCell:a3 forNewEditingState:v5 & 1 showingDeleteConfirmation:v150];
  v126 = v122;
  v127 = v123;
  v128 = v124;
  v129 = v125;
  if (v5)
  {
    [v153 setFrame:{v122, v123, v124, v125}];
    if ([(UITableViewCellLayoutManager *)self accessoryShouldFadeForCell:a3])
    {
      [v153 setAlpha:0.0];
    }

    goto LABEL_76;
  }

  v141 = [v153 superview];
  if (!v141)
  {
    v157[0] = MEMORY[0x1E69E9820];
    v157[1] = 3221225472;
    v157[2] = __61__UITableViewCellLayoutManager__legacy_layoutSubviewsOfCell___block_invoke_6;
    v157[3] = &unk_1E70F3B20;
    v158 = v153;
    v159 = v126;
    v160 = v127;
    v161 = v128;
    v162 = v129;
    v121 = v153;
    [UIView performWithoutAnimation:v157];
  }

  [v121 _setHiddenForReuse:0];
  if (v141 != a3)
  {
    [a3 addSubview:v121];
  }

  [v121 setFrame:{v126, v127, v128, v129}];
  [v121 setAlpha:1.0];
  if (v155)
  {
    [(UITableViewCellLayoutManager *)self editingAccessoryEndingRectForCell:a3 forNewEditingState:0 showingDeleteConfirmation:v150];
    v131 = v142;
    v133 = v143;
    v135 = v144;
    v137 = v145;
    goto LABEL_91;
  }

LABEL_93:
  if (![a3 style])
  {
    v147 = [a3 _detailTextLabel:0];
    [v147 removeFromSuperview];

    v121 = v153;
  }

  [(UITableViewCellLayoutManager *)self _layoutFocusGuidesForCell:a3];
}

uint64_t __61__UITableViewCellLayoutManager__legacy_layoutSubviewsOfCell___block_invoke_2(uint64_t a1)
{
  v1 = 1.0;
  if (*(a1 + 40))
  {
    v1 = 0.0;
  }

  return [*(a1 + 32) setAlpha:v1];
}

- (void)cell:(id)a3 willTransitionToState:(unint64_t)a4
{
  v6 = a3;
  if (([v6 _usesModernAccessoriesLayout] & 1) == 0)
  {
    [(UITableViewCellLayoutManager *)self _legacy_cell:v6 willTransitionToState:a4];
  }
}

- (void)_legacy_cell:(id)a3 willTransitionToState:(unint64_t)a4
{
  v6 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __67__UITableViewCellLayoutManager__legacy_cell_willTransitionToState___block_invoke;
  v8[3] = &unk_1E70F36D0;
  v10 = self;
  v11 = a4;
  v9 = v6;
  v7 = v6;
  [UIView performWithoutAnimation:v8];
}

void __67__UITableViewCellLayoutManager__legacy_cell_willTransitionToState___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) currentStateMask];
  v3 = *(a1 + 48);
  v4 = (v2 & 1) == 0;
  v20 = [*(a1 + 32) editingData:1];
  [*(a1 + 40) backgroundStartingRectForCell:*(a1 + 32) forNewEditingState:v3 & 1];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [*(a1 + 32) _backgroundView:0];
  [v13 setFrame:{v6, v8, v10, v12}];

  v14 = [*(a1 + 32) _selectedBackgroundView:0];
  [v14 setFrame:{v6, v8, v10, v12}];

  if ((v3 & v4) == 1)
  {
    if ([*(a1 + 40) editControlShouldAppearForCell:*(a1 + 32)])
    {
      v15 = [v20 editControl:1];
      [*(a1 + 40) editControlStartingRectForCell:*(a1 + 32) forNewEditingState:1];
      [v15 setFrame:?];
      if (([*(a1 + 32) isEditing] & 1) == 0 && objc_msgSend(*(a1 + 40), "editControlShouldFadeForCell:", *(a1 + 32)))
      {
        [v15 setAlpha:0.0];
      }
    }
  }

  else if ((v3 & 0x40000000) == 0 || (v2 & 0x40000000) != 0)
  {
    goto LABEL_21;
  }

  if ([*(a1 + 40) reorderControlShouldAppearForCell:*(a1 + 32)])
  {
    v16 = [v20 reorderControl:1];
    [*(a1 + 40) reorderControlStartingRectForCell:*(a1 + 32) forNewEditingState:v3 & 1 showingDeleteConfirmation:(v3 >> 1) & 1];
    [v16 setFrame:?];
    if ((v3 & 1) != 0 && ([*(a1 + 32) isEditing] & 1) == 0 && objc_msgSend(*(a1 + 40), "reorderControlShouldFadeForCell:", *(a1 + 32)))
    {
      [v16 setAlpha:0.0];
    }
  }

  if ([*(a1 + 40) reorderSeparatorShouldAppearForCell:*(a1 + 32)])
  {
    v17 = [v20 reorderSeparatorView:1];
    [*(a1 + 40) reorderSeparatorStartingRectForCell:*(a1 + 32) forNewEditingState:v3 & 1 showingDeleteConfirmation:(v3 >> 1) & 1];
    [v17 setFrame:?];
    if ((v3 & 1) != 0 && ([*(a1 + 32) isEditing] & 1) == 0 && objc_msgSend(*(a1 + 40), "reorderSeparatorShouldFadeForCell:", *(a1 + 32)))
    {
      [v17 setAlpha:0.0];
    }
  }

LABEL_21:
  if ((v3 & 1) == 0 && (v2 & 1) != 0 && [*(a1 + 40) accessoryShouldAppearForCell:*(a1 + 32)])
  {
    v18 = [*(a1 + 32) _accessoryView:1];
    [*(a1 + 32) addSubview:v18];
    [*(a1 + 40) accessoryStartingRectForCell:*(a1 + 32) forNewEditingState:0 showingDeleteConfirmation:(v3 >> 1) & 1];
    [v18 setFrame:?];
    if (([*(a1 + 32) isEditing] & 1) == 0 && objc_msgSend(*(a1 + 40), "accessoryShouldFadeForCell:", *(a1 + 32)) && (v3 & 2) == 0)
    {
      [v18 setAlpha:0.0];
    }
  }

  if ((v3 & v4) != 0 && [*(a1 + 40) editingAccessoryShouldAppearForCell:*(a1 + 32)])
  {
    v19 = [*(a1 + 32) _editingAccessoryView:1];
    [*(a1 + 32) addSubview:v19];
    [*(a1 + 40) editingAccessoryStartingRectForCell:*(a1 + 32) forNewEditingState:1 showingDeleteConfirmation:(v3 >> 1) & 1];
    [v19 setFrame:?];
    if (([*(a1 + 32) isEditing] & 1) == 0 && objc_msgSend(*(a1 + 40), "editingAccessoryShouldFadeForCell:", *(a1 + 32)))
    {
      [v19 setAlpha:0.0];
    }
  }
}

- (void)cell:(id)a3 didTransitionToState:(unint64_t)a4
{
  v6 = a3;
  if ([v6 _usesModernAccessoriesLayout])
  {
    [(UITableViewCellLayoutManager *)self _modern_cell:v6 didTransitionToState:a4];
  }

  else
  {
    [(UITableViewCellLayoutManager *)self _legacy_cell:v6 didTransitionToState:a4];
  }
}

- (void)_modern_cell:(id)a3 didTransitionToState:(unint64_t)a4
{
  v4 = a4;
  v7 = a3;
  if ((v4 & 1) == 0 && ([v7 isEditing] & 1) == 0 && (objc_msgSend(v7, "_allowsReorderingWhenNotEditing") & 1) == 0)
  {
    [v7 removeEditingData];
  }

  v6 = [v7 _focusSystem];

  if (v6)
  {
    [(UITableViewCellLayoutManager *)self _updateFocusGuidesForCell:v7 editing:v4 & 1];
  }
}

- (void)_legacy_cell:(id)a3 didTransitionToState:(unint64_t)a4
{
  v4 = a4;
  v19 = a3;
  v6 = +[UIView areAnimationsEnabled];
  [UIView setAnimationsEnabled:0];
  v7 = [v19 isEditing];
  if (v4)
  {
    if (v7)
    {
      v8 = [v19 _accessoryView:1];
      v9 = [v19 _editingAccessoryView:1];

      if (v8 != v9)
      {
        v10 = [v19 _accessoryView:0];
LABEL_9:
        v13 = v10;
        [v10 removeFromSuperview];
      }
    }
  }

  else if ((v7 & 1) == 0 && ([v19 _allowsReorderingWhenNotEditing] & 1) == 0)
  {
    [v19 removeEditingData];
    v11 = [v19 _accessoryView:1];
    v12 = [v19 _editingAccessoryView:1];

    if (v11 != v12)
    {
      v10 = [v19 _editingAccessoryView:0];
      goto LABEL_9;
    }
  }

  v14 = [v19 _focusSystem];

  if (v14)
  {
    [(UITableViewCellLayoutManager *)self _updateFocusGuidesForCell:v19 editing:v4 & 1];
  }

  v15 = [v19 _accessoryView:0];
  v16 = v15;
  if (v15)
  {
    v17 = [v15 superview];

    if (!v17)
    {
      v18 = [v16 layer];
      [v18 clearHasBeenCommitted];
    }
  }

  [UIView setAnimationsEnabled:v6];
}

- (void)_layoutFocusGuidesForCell:(id)a3
{
  v4 = a3;
  v3 = [v4 _editingControlsFocusGuide];
  if (v3)
  {
    [v4 bounds];
    [v3 _setManualLayoutFrame:?];
  }
}

- (void)_updateFocusGuidesForCell:(id)a3 editing:(BOOL)a4
{
  v4 = a4;
  v15 = a3;
  v6 = [v15 _focusSystem];

  if (v6 && v4)
  {
    v7 = [v15 _editingControlsFocusGuide];

    if (!v7)
    {
      v8 = objc_alloc_init(UIFocusContainerGuide);
      [v15 _setEditingControlsFocusGuide:v8];

      v9 = [v15 _editingControlsFocusGuide];
      [v9 setIdentifier:@"UITableViewCellEditingFocusGuide"];

      v10 = [v15 _editingControlsFocusGuide];
      [v15 addLayoutGuide:v10];
    }

    [(UITableViewCellLayoutManager *)self _layoutFocusGuidesForCell:v15];
  }

  else
  {
    v11 = [v15 _focusSystem];
    v12 = v11;
    if (v11 && v4)
    {
    }

    else
    {
      v13 = [v15 _editingControlsFocusGuide];

      if (v13)
      {
        v14 = [v15 _editingControlsFocusGuide];
        [v15 removeLayoutGuide:v14];

        [v15 _setEditingControlsFocusGuide:0];
      }
    }
  }
}

- (CGRect)contentRectForCell:(id)a3 forState:(unint64_t)a4
{
  v6 = a3;
  [v6 bounds];
  [(UITableViewCellLayoutManager *)self contentRectForCell:v6 forState:a4 rowWidth:CGRectGetWidth(v19)];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = v8;
  v16 = v10;
  v17 = v12;
  v18 = v14;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (CGRect)contentRectForCell:(id)a3 forState:(unint64_t)a4 rowWidth:(double)a5
{
  [(UITableViewCellLayoutManager *)self _contentRectForCell:a3 forEditingState:a4 & 1 showingDeleteConfirmation:0 rowWidth:a5];
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (BOOL)editControlShouldAppearForCell:(id)a3
{
  v3 = a3;
  if ([v3 wasSwiped])
  {
    v4 = 0;
  }

  else if ([v3 editingStyle])
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 shouldIndentWhileEditing];
  }

  return v4;
}

- (CGRect)editControlEndingRectForCell:(id)a3 forNewEditingState:(BOOL)a4
{
  [(UITableViewCellLayoutManager *)self _editControlRectForCell:a3 offscreen:!a4];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (BOOL)reorderControlShouldAppearForCell:(id)a3
{
  v3 = a3;
  if ([v3 wasSwiped] && !objc_msgSend(v3, "_allowsReorderingWhenNotEditing"))
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 showsReorderControl];
  }

  return v4;
}

- (CGRect)reorderControlStartingRectForCell:(id)a3 forNewEditingState:(BOOL)a4 showingDeleteConfirmation:(BOOL)a5
{
  [(UITableViewCellLayoutManager *)self _reorderControlRectForCell:a3 offscreen:a4 & ~a5];
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (CGRect)reorderControlEndingRectForCell:(id)a3 forNewEditingState:(BOOL)a4 showingDeleteConfirmation:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = [v8 showsReorderControl] ^ 1;
  if ((v9 & 1) == 0 && !a4)
  {
    v9 = ([v8 _allowsReorderingWhenNotEditing] | v5) ^ 1;
  }

  [(UITableViewCellLayoutManager *)self _reorderControlRectForCell:v8 offscreen:v9];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v18 = v11;
  v19 = v13;
  v20 = v15;
  v21 = v17;
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (BOOL)reorderControlShouldFadeForCell:(id)a3
{
  v4 = a3;
  v5 = [v4 _tableView];
  v6 = [v5 _isShowingIndex];

  v7 = (v6 & 1) != 0 || [(UITableViewCellLayoutManager *)self accessoryShouldAppearForCell:v4]&& ![(UITableViewCellLayoutManager *)self editingAccessoryShouldAppearForCell:v4];
  return v7;
}

- (BOOL)reorderSeparatorShouldAppearForCell:(id)a3
{
  v4 = a3;
  if (-[UITableViewCellLayoutManager reorderControlShouldAppearForCell:](self, "reorderControlShouldAppearForCell:", v4) && ([v4 _allowsReorderingWhenNotEditing] & 1) == 0)
  {
    if ([v4 editingAccessoryType])
    {
      v5 = 1;
    }

    else
    {
      v7 = [v4 _editingAccessoryView:1];
      v5 = v7 != 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (CGRect)reorderSeparatorStartingRectForCell:(id)a3 forNewEditingState:(BOOL)a4 showingDeleteConfirmation:(BOOL)a5
{
  [(UITableViewCellLayoutManager *)self _reorderSeparatorRectForCell:a3 offscreen:a4 & ~a5];
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (CGRect)reorderSeparatorEndingRectForCell:(id)a3 forNewEditingState:(BOOL)a4 showingDeleteConfirmation:(BOOL)a5
{
  [(UITableViewCellLayoutManager *)self _reorderSeparatorRectForCell:a3 offscreen:!a4 && !a5];
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (BOOL)reorderSeparatorShouldFadeForCell:(id)a3
{
  v3 = [a3 _tableView];
  v4 = [v3 _isShowingIndex];

  return v4;
}

- (BOOL)accessoryShouldAppearForCell:(id)a3
{
  v3 = [a3 _accessoryView:1];
  v4 = v3 != 0;

  return v4;
}

- (CGRect)accessoryStartingRectForCell:(id)a3 forNewEditingState:(BOOL)a4 showingDeleteConfirmation:(BOOL)a5
{
  [(UITableViewCellLayoutManager *)self _accessoryRectForCell:a3 offscreen:!a4 && !a5];
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (CGRect)accessoryEndingRectForCell:(id)a3 forNewEditingState:(BOOL)a4 showingDeleteConfirmation:(BOOL)a5
{
  v6 = a4;
  v8 = a3;
  v9 = v8;
  if (v6 && a5)
  {
    v10 = [v8 _tableView];
    -[UITableViewCellLayoutManager _accessoryRectForCell:offscreen:](self, "_accessoryRectForCell:offscreen:", v9, [v10 _isEditingForSwipeDeletion] ^ 1);
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;

    v9 = v10;
  }

  else
  {
    [(UITableViewCellLayoutManager *)self _accessoryRectForCell:v8 offscreen:v6];
    v12 = v19;
    v14 = v20;
    v16 = v21;
    v18 = v22;
  }

  v23 = v12;
  v24 = v14;
  v25 = v16;
  v26 = v18;
  result.size.height = v26;
  result.size.width = v25;
  result.origin.y = v24;
  result.origin.x = v23;
  return result;
}

- (BOOL)accessoryShouldFadeForCell:(id)a3
{
  v4 = a3;
  v5 = [v4 _customAccessoryView:0];
  v6 = [v4 _customEditingAccessoryView:0];
  v7 = [v4 accessoryType];
  v8 = [v4 editingAccessoryType];
  if (v5 && v6)
  {
    if (v5 == v6)
    {
      goto LABEL_10;
    }

LABEL_15:
    v9 = 1;
    goto LABEL_16;
  }

  if (v5 || v6 || !v7 || !v8)
  {
    v10 = v5 | v7;
    v11 = (v5 | v7) != 0;
    if ((!v10 || !(v6 | v8)) && (v11 & [(UITableViewCellLayoutManager *)self reorderControlShouldAppearForCell:v4]& 1) == 0)
    {
      v12 = [v4 _tableView];
      v13 = [v12 _isShowingIndex];

      if ((v13 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    goto LABEL_15;
  }

  if (v7 != v8)
  {
    goto LABEL_15;
  }

LABEL_10:
  v9 = 0;
LABEL_16:

  return v9;
}

- (BOOL)editingAccessoryShouldAppearForCell:(id)a3
{
  v3 = a3;
  v4 = [v3 _editingAccessoryView:1];
  if (v4)
  {
    v5 = [v3 showingDeleteConfirmation] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (CGRect)editingAccessoryStartingRectForCell:(id)a3 forNewEditingState:(BOOL)a4 showingDeleteConfirmation:(BOOL)a5
{
  [(UITableViewCellLayoutManager *)self _editingAccessoryRectForCell:a3 offscreen:!a4 && !a5];
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (CGRect)editingAccessoryEndingRectForCell:(id)a3 forNewEditingState:(BOOL)a4 showingDeleteConfirmation:(BOOL)a5
{
  [(UITableViewCellLayoutManager *)self _editingAccessoryRectForCell:a3 offscreen:a4 | a5];
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (BOOL)editingAccessoryShouldFadeForCell:(id)a3
{
  v3 = a3;
  v4 = [v3 _customAccessoryView:0];
  v5 = [v3 _customEditingAccessoryView:0];
  v6 = [v3 accessoryType];
  v7 = [v3 editingAccessoryType];
  if (v4 && v5)
  {
    if (v4 == v5)
    {
LABEL_15:
      v10 = 0;
      goto LABEL_16;
    }
  }

  else if (v4 || v5 || !v6 || !v7)
  {
    if (!(v4 | v6) || !(v5 | v7))
    {
      v8 = [v3 _tableView];
      v9 = [v8 _isShowingIndex];

      if ((v9 & 1) == 0)
      {
        goto LABEL_15;
      }
    }
  }

  else if (v6 == v7)
  {
    goto LABEL_15;
  }

  v10 = 1;
LABEL_16:

  return v10;
}

- (CGRect)selectedBackgroundEndingRectForCell:(id)a3 forNewEditingState:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  [(UITableViewCellLayoutManager *)self backgroundEndingRectForCell:v6 forNewEditingState:v4];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  if (([v6 _isUsingOldStyleMultiselection] & 1) == 0)
  {
    v15 = [v6 multipleSelectionBackgroundView];
    if (v15)
    {
    }

    else if (([v6 _insetsBackground] & 1) == 0)
    {
      [v6 _separatorHeight];
      v10 = v10 - v16;
      v14 = v14 + v16 + v16;
    }
  }

  v17 = v8;
  v18 = v10;
  v19 = v12;
  v20 = v14;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (CGRect)contentStartingRectForCell:(id)a3 forNewEditingState:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  -[UITableViewCellLayoutManager _contentRectForCell:forEditingState:showingDeleteConfirmation:](self, "_contentRectForCell:forEditingState:showingDeleteConfirmation:", v6, !v4, [v6 showingDeleteConfirmation]);
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = v8;
  v16 = v10;
  v17 = v12;
  v18 = v14;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (CGRect)contentEndingRectForCell:(id)a3 forNewEditingState:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  -[UITableViewCellLayoutManager _contentRectForCell:forEditingState:showingDeleteConfirmation:](self, "_contentRectForCell:forEditingState:showingDeleteConfirmation:", v6, v4, [v6 showingDeleteConfirmation]);
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = v8;
  v16 = v10;
  v17 = v12;
  v18 = v14;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (CGRect)contentStartingRectForCell:(id)a3 forDisplayOfDeleteConfirmation:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  -[UITableViewCellLayoutManager _contentRectForCell:forEditingState:showingDeleteConfirmation:](self, "_contentRectForCell:forEditingState:showingDeleteConfirmation:", v6, [v6 currentStateMask] & 1, !v4);
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = v8;
  v16 = v10;
  v17 = v12;
  v18 = v14;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (CGRect)contentEndingRectForCell:(id)a3 forDisplayOfDeleteConfirmation:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  -[UITableViewCellLayoutManager _contentRectForCell:forEditingState:showingDeleteConfirmation:](self, "_contentRectForCell:forEditingState:showingDeleteConfirmation:", v6, [v6 currentStateMask] & 1, v4);
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = v8;
  v16 = v10;
  v17 = v12;
  v18 = v14;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (CGRect)textRectForCell:(id)a3
{
  v4 = a3;
  [v4 bounds];
  [(UITableViewCellLayoutManager *)self textRectForCell:v4 rowWidth:0 forSizing:CGRectGetWidth(v17)];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (double)requiredIndentationForFirstLineOfCell:(id)a3 rowWidth:(double)a4 forSizing:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  v8 = 0.0;
  if (![(UITableViewCellLayoutManager *)self shouldIncreaseMarginForImageViewInCell:v7])
  {
    v9 = v7[13];
    [v7 _effectiveSafeAreaInsets];
    if ((v9 & 0x400000) != 0)
    {
      v12 = v11;
    }

    else
    {
      v12 = v10;
    }

    [(UITableViewCellLayoutManager *)self contentIndentationForCell:v7];
    v14 = v13;
    [v7 _marginWidth];
    v16 = v15;
    v17 = [v7 _imageView:0];
    v18 = [v17 image];

    if (v18)
    {
      v19 = fmax(v14 + v16 - v12, 15.0);
      v20 = [v7 _constants];
      v21 = [v7 traitCollection];
      [v20 defaultImageViewSymbolImageAndAccessoryLayoutWidthForSidebar:0 traitCollection:v21];
      v23 = v22;

      [(UITableViewCellLayoutManager *)self standardLayoutImageViewFrameForCell:v7 forSizing:v5];
      v25 = v24;
      v26 = [v17 image];
      v27 = [v7 traitCollection];
      if (_UITableCellShouldCenterImageHorizontallyForTraitCollection(v26, v27))
      {
        v25 = v23;
      }

      v28 = [v7 _constants];
      v29 = [v7 _tableView];
      v30 = [v28 imageViewOffsetByLayoutMarginsForCell:v7 inTableView:v29];

      if (v30)
      {
        [v7 directionalLayoutMargins];
        v32 = v31;
        [v7 _defaultLeadingMarginWidth];
        v34 = fmax(v32, v33) - v12;
      }

      else
      {
        [(UITableViewCellLayoutManager *)self contentIndentationForCell:v7];
      }

      v8 = fmax(v19, v25 + v34 + 15.0) - v19;
    }

    else
    {
      v8 = 0.0;
    }
  }

  return v8;
}

- (CGRect)textRectForCell:(id)a3 rowWidth:(double)a4
{
  [(UITableViewCellLayoutManager *)self textRectForCell:a3 rowWidth:0 forSizing:a4];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGRect)textRectForCell:(id)a3 rowWidth:(double)a4 forSizing:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  -[UITableViewCellLayoutManager contentRectForCell:forState:rowWidth:](self, "contentRectForCell:forState:rowWidth:", v8, [v8 currentStateMask], a4);
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = [v8 contentView];
  [v17 directionalLayoutMargins];
  v19 = v18;
  v104 = v20;

  v21 = v8[13];
  [v8 _effectiveSafeAreaInsets];
  v102 = v12;
  v103 = v10;
  if ((v21 & 0x400000) != 0)
  {
    v26 = v23;
    v106.origin.x = v10;
    v106.origin.y = v12;
    v106.size.width = v14;
    v106.size.height = v16;
    MinX = a4 - CGRectGetMaxX(v106);
    v24 = v26;
  }

  else
  {
    v24 = v22;
    v105.origin.x = v10;
    v105.origin.y = v12;
    v105.size.width = v14;
    v105.size.height = v16;
    MinX = CGRectGetMinX(v105);
  }

  [(UITableViewCellLayoutManager *)self contentIndentationForCell:v8];
  v28 = v27;
  [v8 _marginWidth];
  v30 = v28 + v29 - fmax(v24, MinX);
  v31 = _UITableViewCellTextLabelUsesLeadingLayoutMargin();
  v32 = 15.0;
  if (v31)
  {
    v32 = v19;
  }

  v33 = fmax(v30, v32);
  v34 = [v8 _imageView:0];
  v35 = [v34 image];

  if (!v35 || ![(UITableViewCellLayoutManager *)self shouldIncreaseMarginForImageViewInCell:v8])
  {
    goto LABEL_13;
  }

  [(UITableViewCellLayoutManager *)self standardLayoutImageViewFrameForCell:v8 forSizing:v5];
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v44 = [v8 traitCollection];
  if ([v44 userInterfaceIdiom] == 3)
  {
    v45 = 8.0;
  }

  else
  {
    v45 = 15.0;
  }

  if ((v21 & 0x400000) == 0)
  {
    v107.origin.x = v37;
    v107.origin.y = v39;
    v107.size.width = v41;
    v107.size.height = v43;
    v33 = fmax(v33, v45 + CGRectGetMaxX(v107));
LABEL_13:
    v46 = v103;
    goto LABEL_14;
  }

  rect = v43;
  v111.origin.y = v102;
  v46 = v103;
  v111.origin.x = v103;
  v111.size.width = v14;
  v111.size.height = v16;
  v100 = v16;
  Width = CGRectGetWidth(v111);
  v112.origin.x = v37;
  v112.origin.y = v39;
  v112.size.width = v41;
  v112.size.height = rect;
  v75 = Width - (CGRectGetMinX(v112) - v45);
  v16 = v100;
  v33 = fmax(v33, v75);
LABEL_14:
  v47 = MEMORY[0x1E695EFF8];
  if (_UITableViewCellUsesLayoutMarginBasedContentPadding())
  {
    goto LABEL_61;
  }

  v48 = [v8 isEditing];
  v49 = [v8 showingDeleteConfirmation];
  if (v48)
  {
    v50 = [(UITableViewCellLayoutManager *)self editingAccessoryShouldAppearForCell:v8];
  }

  else
  {
    v50 = [(UITableViewCellLayoutManager *)self accessoryShouldAppearForCell:v8];
  }

  v51 = v50;
  [(UITableViewCellLayoutManager *)self _adjustedBackgroundRectForCell:v8];
  v56 = v52;
  v57 = v53;
  v58 = v54;
  v59 = v55;
  if ((v21 & 0x400000) != 0)
  {
    v109.origin.x = v46;
    v109.origin.y = v102;
    v109.size.width = v14;
    v109.size.height = v16;
    v68 = v16;
    v69 = CGRectGetMinX(v109);
    v110.origin.x = v56;
    v110.origin.y = v57;
    v110.size.width = v58;
    v110.size.height = v59;
    v70 = CGRectGetMinX(v110);
    [v8 _effectiveSafeAreaInsets];
    v72 = v70 + v71;
    v63 = v102;
    v64 = v69 - v72;
    v16 = v68;
    if (!v51)
    {
LABEL_20:
      v65 = dyld_program_sdk_at_least();
      v66 = fmax(v104, 15.0);
      if (v65)
      {
        v67 = v66;
      }

      else
      {
        v67 = 15.0;
      }

LABEL_55:
      v73 = fmax(v67 - v64, 0.0);
      goto LABEL_56;
    }
  }

  else
  {
    MaxX = CGRectGetMaxX(*&v52);
    [v8 _effectiveSafeAreaInsets];
    v108.origin.x = v46;
    v62 = MaxX - v61;
    v63 = v102;
    v108.origin.y = v102;
    v108.size.width = v14;
    v108.size.height = v16;
    v64 = v62 - CGRectGetMaxX(v108);
    if (!v51)
    {
      goto LABEL_20;
    }
  }

  if (![(UITableViewCellLayoutManager *)self shouldStackAccessoryViewVerticallyForCell:v8 editing:v48])
  {
    v101 = v64;
    if (v48)
    {
      [(UITableViewCellLayoutManager *)self editingAccessoryEndingRectForCell:v8 forNewEditingState:1 showingDeleteConfirmation:v49];
    }

    else
    {
      [(UITableViewCellLayoutManager *)self accessoryEndingRectForCell:v8 forNewEditingState:0 showingDeleteConfirmation:v49];
    }

    if ((v21 & 0x400000) != 0)
    {
      v80 = v76;
    }

    else
    {
      v80 = v103;
    }

    if ((v21 & 0x400000) != 0)
    {
      v81 = v77;
    }

    else
    {
      v81 = v63;
    }

    if ((v21 & 0x400000) != 0)
    {
      v82 = v78;
    }

    else
    {
      v82 = v14;
    }

    if ((v21 & 0x400000) != 0)
    {
      v83 = v79;
    }

    else
    {
      v83 = v16;
    }

    v84 = v63;
    if ((v21 & 0x400000) != 0)
    {
      v85 = v103;
    }

    else
    {
      v85 = v76;
    }

    if ((v21 & 0x400000) != 0)
    {
      v86 = v84;
    }

    else
    {
      v86 = v77;
    }

    v87 = v16;
    if ((v21 & 0x400000) != 0)
    {
      v88 = v14;
    }

    else
    {
      v88 = v78;
    }

    if ((v21 & 0x400000) != 0)
    {
      v89 = v87;
    }

    else
    {
      v89 = v79;
    }

    v113.origin.x = v80;
    v113.origin.y = v81;
    v113.size.width = v82;
    v113.size.height = v83;
    v90 = CGRectGetMaxX(v113);
    v114.origin.x = v85;
    v114.origin.y = v86;
    v114.size.width = v88;
    v16 = v87;
    v114.size.height = v89;
    v67 = fmax(v90 - CGRectGetMinX(v114), 35.0);
    v64 = v101;
    goto LABEL_55;
  }

  v73 = fmax(v104, 15.0);
  v67 = 0.0;
LABEL_56:
  v91 = v51 | ~[(UITableViewCellLayoutManager *)self _editControlOnSameSideAsReorderControlForCell:v8];
  v92 = fmax(v73, v67);
  if ((v48 ^ 1))
  {
    v92 = v73;
  }

  if (v91)
  {
    v92 = v73;
  }

  v104 = v92;
  v46 = v103;
LABEL_61:
  v93 = *(v47 + 8);
  v94 = v14 - (v33 + v104);
  if ((v21 & 0x400000) != 0)
  {
    v115.origin.x = v46;
    v115.origin.y = v102;
    v115.size.width = v14;
    v115.size.height = v16;
    v33 = CGRectGetWidth(v115) - v94 - v33;
  }

  v95 = v33;
  v96 = v93;
  v97 = v94;
  v98 = v16;
  result.size.height = v98;
  result.size.width = v97;
  result.origin.y = v96;
  result.origin.x = v95;
  return result;
}

- (void)getTextLabelRect:(CGRect *)a3 detailTextLabelRect:(CGRect *)a4 forCell:(id)a5 rowWidth:(double)a6 forSizing:(BOOL)a7
{
  v7 = a7;
  v28 = a5;
  v12 = [(UITableViewCellLayoutManager *)self shouldApplyAccessibilityLargeTextLayoutForCell:v28];
  [(UITableViewCellLayoutManager *)self textRectForCell:v28 rowWidth:v7 forSizing:a6];
  x = v13;
  y = v15;
  width = v17;
  height = v19;
  if (v12)
  {
    v21 = [v28 _textLabel:0];
    if (v21)
    {
      [(UITableViewCellLayoutManager *)self optimumSizeForLabel:v21 inTotalTextRect:0 minimizeWidthOnVerticalOverflow:0 preferSingleLineWidth:x, y, width, height];
      v23 = v22;
      v25 = v24;
    }

    else
    {
      v23 = *MEMORY[0x1E695F060];
      v25 = *(MEMORY[0x1E695F060] + 8);
    }

    v26 = ceil((height - v25) * 0.5);
    if ((v28[106] & 0x40) != 0)
    {
      v30.origin.x = x;
      v30.origin.y = y;
      v30.size.width = width;
      v30.size.height = height;
      x = CGRectGetMaxX(v30) - v23;
    }

    v31.origin.x = 0.0;
    v31.origin.y = 0.0;
    v31.size.width = v23;
    v31.size.height = v25;
    v32 = CGRectOffset(v31, x, v26);
    x = v32.origin.x;
    y = v32.origin.y;
    width = v32.size.width;
    height = v32.size.height;
  }

  if (a3)
  {
    a3->origin.x = x;
    a3->origin.y = y;
    a3->size.width = width;
    a3->size.height = height;
  }

  if (a4)
  {
    v27 = *(MEMORY[0x1E695F058] + 16);
    a4->origin = *MEMORY[0x1E695F058];
    a4->size = v27;
  }
}

- (CGSize)intrinsicContentSizeForCell:(id)a3 rowWidth:(double)a4
{
  v6 = a3;
  v7 = [v6 _textLabel:0];
  v8 = [v7 font];
  [v8 pointSize];
  v10 = v9;

  if (v10 == 0.0)
  {
    v11 = [(UITableViewCellLayoutManager *)self defaultTextLabelFontForCell:v6];
    [v7 setFont:v11];
  }

  [v6 frame];
  v13 = v12;
  v14 = [v6 textLabel];
  v15 = [v14 numberOfLines];

  if (v7)
  {
    [v7 font];
  }

  else
  {
    [(UITableViewCellLayoutManager *)self defaultTextLabelFontForCell:v6];
  }
  v16 = ;
  v17 = [v6 _detailTextLabel:0];
  v18 = [v17 text];
  v19 = [v18 length];

  if (v15 == 1)
  {
    v20 = [v6 traitCollection];
    v21 = [v20 userInterfaceIdiom];

    if (v21 == 5)
    {
      v22 = [v6 _constants];
      v23 = [v6 _tableView];
      [v22 defaultRowHeightForTableView:v23 cellStyle:objc_msgSend(v6 hasDetailText:{"_cellStyle"), v19 != 0}];
      v25 = v24;
    }

    else
    {
      [v16 _bodyLeading];
      v25 = v37 + v37;
    }

    if (dyld_program_sdk_at_least())
    {
      goto LABEL_20;
    }
  }

  else
  {
    v26 = [v6 imageView];
    v27 = [v26 image];
    [v27 size];
    v29 = v28;

    v30 = 0.0;
    v31 = fmax(v29, 0.0);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (![(UITableViewCellLayoutManager *)self shouldIncreaseMarginForImageViewInCell:v6])
      {
        [(UITableViewCellLayoutManager *)self requiredIndentationForFirstLineOfCell:v6 rowWidth:1 forSizing:a4];
        v30 = v32;
      }

      [v7 _setFirstParagraphFirstLineHeadIndent:v30];
    }

    v47 = 0u;
    v48 = 0u;
    [(UITableViewCellLayoutManager *)self getTextLabelRect:&v47 detailTextLabelRect:0 forCell:v6 rowWidth:1 forSizing:a4];
    v47 = *MEMORY[0x1E695EFF8];
    *(&v48 + 1) = 0x7FEFFFFFFFFFFFFFLL;
    v33 = [v6 textLabel];
    [v33 textRectForBounds:v15 limitedToNumberOfLines:{v47, v48}];
    v35 = v34;

    if (v35 <= v31)
    {
      v35 = v31;
    }

    [v16 _bodyLeading];
    v25 = v36 + v35;
  }

  if ([v6 separatorStyle])
  {
    [v6 _separatorFrame];
    v25 = v25 + CGRectGetHeight(v50);
  }

LABEL_20:
  if (-[UITableViewCellLayoutManager shouldStackAccessoryViewVerticallyForCell:editing:](self, "shouldStackAccessoryViewVerticallyForCell:editing:", v6, [v6 isEditing]))
  {
    v38 = -[UITableViewCellLayoutManager customAccessoryViewForCell:editing:](self, "customAccessoryViewForCell:editing:", v6, [v6 isEditing]);
    [v38 frame];
    v25 = v25 + v39;
  }

  v40 = v19 != 0;
  v41 = [v6 _constants];
  v42 = [v6 _tableView];
  [v41 defaultRowHeightForTableView:v42 cellStyle:objc_msgSend(v6 hasDetailText:{"_cellStyle"), v40}];
  v44 = ceil(fmax(v43, v25));

  v45 = v13;
  v46 = v44;
  result.height = v46;
  result.width = v45;
  return result;
}

- (BOOL)shouldApplyAccessibilityLargeTextLayoutForCell:(id)a3
{
  v3 = a3;
  v4 = [v3 _textLabel:0];
  if (v4)
  {
    v5 = [UIApp preferredContentSizeCategory];
    if (UIContentSizeCategoryIsAccessibilityCategory(v5) && dyld_program_sdk_at_least())
    {
      v6 = [v4 text];
      if ([v6 length])
      {
        v7 = [v3 traitCollection];
        v8 = [v7 userInterfaceIdiom] != 3;
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)shouldIncreaseMarginForImageViewInCell:(id)a3
{
  v4 = a3;
  v5 = [v4 _imageView:0];
  v6 = [v4 _textLabel:0];
  v7 = [v5 image];

  v8 = 1;
  if (v7)
  {
    if (v6)
    {
      if ([(UITableViewCellLayoutManager *)self shouldApplyAccessibilityLargeTextLayoutForCell:v4])
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v6 textAlignment] != 1)
        {
          v9 = [v4 _imageView:0];
          v10 = [v9 image];
          [v10 size];
          v12 = v11;

          v13 = [v4 _textLabel:0];
          v14 = [v13 font];

          v15 = v12 * 0.5;
          [v14 capHeight];
          v17 = v16 * 0.5;
          [v14 ascender];
          v19 = v18;
          [v14 capHeight];
          if (v15 <= v17 + v19 - v20)
          {
            [v14 capHeight];
            v22 = v21 * 0.5;
            [v14 descender];
            v8 = v15 > v22 - v23;
          }

          else
          {
            v8 = 1;
          }
        }
      }
    }
  }

  return v8;
}

- (CGSize)optimumSizeForLabel:(id)a3 inTotalTextRect:(CGRect)a4 minimizeWidthOnVerticalOverflow:(BOOL)a5 preferSingleLineWidth:(BOOL)a6
{
  v7 = a5;
  height = a4.size.height;
  width = a4.size.width;
  v10 = a3;
  v11 = [v10 numberOfLines];
  if (dyld_program_sdk_at_least())
  {
    [v10 sizeThatFits:{width, height}];
    v14 = v13;
    if (v7 && v12 < width)
    {
      v15 = v12;
    }

    else
    {
      v15 = width;
    }

    if (width < v12)
    {
      v12 = width;
    }

    if (v14 <= height)
    {
      width = v12;
    }

    else
    {
      width = v15;
    }
  }

  else
  {
    [v10 setNumberOfLines:1];
    [v10 sizeThatFits:{width, height}];
    v17 = v16;
    v19 = v18;
    [v10 setNumberOfLines:0];
    [v10 sizeThatFits:{width, height}];
    v22 = v19 * v11;
    if (v11 <= 0)
    {
      v22 = 3.40282347e38;
    }

    if (v21 >= v22)
    {
      v14 = v22;
    }

    else
    {
      v14 = v21;
    }

    if (v14 > height || v21 > v14)
    {
      if (width >= v17)
      {
        v20 = v17;
      }

      else
      {
        v20 = width;
      }

      if (v7)
      {
        width = v20;
      }
    }

    else if (v11 == 1 && a6)
    {
      width = v17;
    }

    else
    {
      width = v20;
    }

    [v10 setNumberOfLines:{v11, v20}];
  }

  v24 = width;
  v25 = v14;
  result.height = v25;
  result.width = v24;
  return result;
}

@end