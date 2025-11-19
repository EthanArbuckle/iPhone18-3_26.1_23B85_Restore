@interface PSListControllerDefaultAppearanceProvider
- (double)estimatedHeightOfRowForCellWithIndexPath:(id)a3 inController:(id)a4;
- (id)cellForSpecifier:(id)a3 inController:(id)a4;
- (int64_t)tableViewStyleForListController:(id)a3;
- (void)customizeTableView:(id)a3 inContainerView:(id)a4 hostedInSetupController:(BOOL)a5 forListController:(id)a6;
- (void)listController:(id)a3 updateSectionContentInsetAnimated:(BOOL)a4 isRegularWidth:(BOOL)a5 contentInsetInitialized:(BOOL)a6 contentInsetInitializedApplicator:(id)a7;
@end

@implementation PSListControllerDefaultAppearanceProvider

- (int64_t)tableViewStyleForListController:(id)a3
{
  if (PSIsRunningInAssistant())
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (void)customizeTableView:(id)a3 inContainerView:(id)a4 hostedInSetupController:(BOOL)a5 forListController:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  [v9 setCellLayoutMarginsFollowReadableWidth:1];
  [v9 setAutoresizingMask:18];
  [v9 setLayoutMarginsFollowReadableWidth:PSIsRunningInAssistant() ^ 1];
  [v9 setEstimatedSectionHeaderHeight:0.0];
  [v9 setEstimatedSectionFooterHeight:0.0];
  if (PSIsRunningInAssistant())
  {
    [v9 setBackgroundView:0];
    v12 = [MEMORY[0x1E69DC888] clearColor];
    [v9 setBackgroundColor:v12];
  }

  else
  {
    v13 = +[PSListController appearance];
    v14 = [v13 backgroundColor];

    if (!v14)
    {
      goto LABEL_6;
    }

    v12 = +[PSListController appearance];
    v15 = [v12 backgroundColor];
    [v9 setBackgroundColor:v15];
  }

LABEL_6:
  v16 = +[PSListController appearance];
  v17 = [v16 separatorColor];

  if (v17)
  {
    v18 = +[PSListController appearance];
    v19 = [v18 separatorColor];
    [v9 setSeparatorColor:v19];
  }

  v20 = [MEMORY[0x1E69DC938] currentDevice];
  if (![v20 sf_isiPad])
  {

    goto LABEL_15;
  }

  v21 = PSIsRunningInAssistant();

  if (!v21)
  {
LABEL_15:
    [v10 setAutoresizingMask:{objc_msgSend(v9, "autoresizingMask")}];
    v29 = [MEMORY[0x1E69DC888] groupTableViewBackgroundColor];
    [v10 setBackgroundColor:v29];

    v30 = +[PSListController appearance];
    v31 = [v30 usesDarkTheme];

    if (v31)
    {
      v32 = +[PSListController appearance];
      v33 = [v32 backgroundColor];
      [v9 setBackgroundColor:v33];
    }

    else
    {
      v32 = [v10 backgroundColor];
      [v9 setBackgroundColor:v32];
    }

    goto LABEL_19;
  }

  v22 = [MEMORY[0x1E69DC888] whiteColor];
  [v10 setBackgroundColor:v22];

  v23 = [v9 panGestureRecognizer];
  [v10 addGestureRecognizer:v23];

  if (!a5)
  {
    v35 = 0;
    v36 = &v35;
    v37 = 0x2050000000;
    v24 = getBFFStyleClass_softClass_0;
    v38 = getBFFStyleClass_softClass_0;
    if (!getBFFStyleClass_softClass_0)
    {
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __getBFFStyleClass_block_invoke_0;
      v34[3] = &unk_1E71DBC78;
      v34[4] = &v35;
      __getBFFStyleClass_block_invoke_0(v34);
      v24 = v36[3];
    }

    v25 = v24;
    _Block_object_dispose(&v35, 8);
    v26 = [v24 sharedStyle];
    [v26 edgeInsetsForTable:v9];
    v28 = v27;

    [v9 setScrollIndicatorInsets:{0.0, 0.0, 0.0, -v28}];
  }

LABEL_19:
  [v10 setLayoutMarginsFollowReadableWidth:1];
  [v9 setClipsToBounds:0];
}

- (id)cellForSpecifier:(id)a3 inController:(id)a4
{
  v4 = a3;
  v5 = [PSTableCell cellClassForSpecifier:v4];
  v6 = [(objc_class *)v5 isSubclassOfClass:objc_opt_class()];
  v7 = [v5 alloc];
  v8 = [(objc_class *)v5 cellStyle];
  if (v6)
  {
    v9 = [PSTableCell reuseIdentifierForSpecifier:v4];
    v10 = [v7 initWithStyle:v8 reuseIdentifier:v9 specifier:v4];
  }

  else
  {
    v10 = [v7 initWithStyle:v8 reuseIdentifier:0];
  }

  return v10;
}

- (double)estimatedHeightOfRowForCellWithIndexPath:(id)a3 inController:(id)a4
{
  v5 = a4;
  v6 = [v5 indexForIndexPath:a3];
  v7 = [v5 unprotectedSpecifiers];
  v8 = [v7 objectAtIndex:v6];

  if ((v8[7] & 0xFFFFFFFFFFFFFFFELL) == 0xA)
  {
    v9 = 66.0;
  }

  else
  {
    v10 = [v5 table];
    v11 = [v8 propertyForKey:@"height"];
    v12 = v11;
    if (v11)
    {
      v9 = [v11 integerValue];
    }

    else
    {
      [v10 estimatedRowHeight];
      if (v13 <= 0.0)
      {
        v9 = *MEMORY[0x1E69DE3D0];
      }

      else
      {
        [v10 estimatedRowHeight];
        v9 = v14;
      }
    }
  }

  return v9;
}

- (void)listController:(id)a3 updateSectionContentInsetAnimated:(BOOL)a4 isRegularWidth:(BOOL)a5 contentInsetInitialized:(BOOL)a6 contentInsetInitializedApplicator:(id)a7
{
  v8 = a6;
  v9 = a4;
  v10 = a3;
  v11 = a7;
  if ((PSIsRunningInAssistant() & 1) == 0)
  {
    v11[2](v11);
    goto LABEL_16;
  }

  v12 = [v10 view];
  v13 = PSShouldInsetListView(v12);
  v14 = MEMORY[0x1E69DE3D0];
  if (v13 && ([v10 edgeToEdgeCells] & 1) == 0)
  {
    v23 = PSIsRunningInAssistant();

    if ((v23 & 1) == 0)
    {
      v24 = [v10 view];
      [v24 safeAreaInsets];
      v26 = v25;

      v15 = 0.0;
      v27 = v26 <= 0.0;
      v16 = 0.0;
      if (v27)
      {
        v28 = [v10 view];
        [v28 layoutMargins];
        v16 = v29;
      }

      v30 = [v10 view];
      [v30 safeAreaInsets];
      v32 = v31;

      if (v32 <= 0.0)
      {
        v33 = [v10 view];
        [v33 layoutMargins];
        v15 = v34;
      }

      goto LABEL_6;
    }
  }

  else
  {
  }

  v15 = *v14;
  v16 = *v14;
LABEL_6:
  v17 = [v10 table];
  [v17 _sectionContentInset];
  if (v16 != v19 || v15 != v18)
  {
    v21 = *v14;
    if (v9 && v8)
    {
      [v17 _setSectionContentInset:{*v14, v16, *v14, v15}];
    }

    else
    {
      v22 = MEMORY[0x1E69DD250];
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __167__PSListControllerDefaultAppearanceProvider_listController_updateSectionContentInsetAnimated_isRegularWidth_contentInsetInitialized_contentInsetInitializedApplicator___block_invoke;
      v35[3] = &unk_1E71DC788;
      v36 = v17;
      v37 = v21;
      v38 = v16;
      v39 = v21;
      v40 = v15;
      [v22 performWithoutAnimation:v35];
      v11[2](v11);
    }
  }

LABEL_16:
}

@end