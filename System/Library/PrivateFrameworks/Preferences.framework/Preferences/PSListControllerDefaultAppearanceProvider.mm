@interface PSListControllerDefaultAppearanceProvider
- (double)estimatedHeightOfRowForCellWithIndexPath:(id)path inController:(id)controller;
- (id)cellForSpecifier:(id)specifier inController:(id)controller;
- (int64_t)tableViewStyleForListController:(id)controller;
- (void)customizeTableView:(id)view inContainerView:(id)containerView hostedInSetupController:(BOOL)controller forListController:(id)listController;
- (void)listController:(id)controller updateSectionContentInsetAnimated:(BOOL)animated isRegularWidth:(BOOL)width contentInsetInitialized:(BOOL)initialized contentInsetInitializedApplicator:(id)applicator;
@end

@implementation PSListControllerDefaultAppearanceProvider

- (int64_t)tableViewStyleForListController:(id)controller
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

- (void)customizeTableView:(id)view inContainerView:(id)containerView hostedInSetupController:(BOOL)controller forListController:(id)listController
{
  viewCopy = view;
  containerViewCopy = containerView;
  listControllerCopy = listController;
  [viewCopy setCellLayoutMarginsFollowReadableWidth:1];
  [viewCopy setAutoresizingMask:18];
  [viewCopy setLayoutMarginsFollowReadableWidth:PSIsRunningInAssistant() ^ 1];
  [viewCopy setEstimatedSectionHeaderHeight:0.0];
  [viewCopy setEstimatedSectionFooterHeight:0.0];
  if (PSIsRunningInAssistant())
  {
    [viewCopy setBackgroundView:0];
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [viewCopy setBackgroundColor:clearColor];
  }

  else
  {
    v13 = +[PSListController appearance];
    backgroundColor = [v13 backgroundColor];

    if (!backgroundColor)
    {
      goto LABEL_6;
    }

    clearColor = +[PSListController appearance];
    backgroundColor2 = [clearColor backgroundColor];
    [viewCopy setBackgroundColor:backgroundColor2];
  }

LABEL_6:
  v16 = +[PSListController appearance];
  separatorColor = [v16 separatorColor];

  if (separatorColor)
  {
    v18 = +[PSListController appearance];
    separatorColor2 = [v18 separatorColor];
    [viewCopy setSeparatorColor:separatorColor2];
  }

  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  if (![currentDevice sf_isiPad])
  {

    goto LABEL_15;
  }

  v21 = PSIsRunningInAssistant();

  if (!v21)
  {
LABEL_15:
    [containerViewCopy setAutoresizingMask:{objc_msgSend(viewCopy, "autoresizingMask")}];
    groupTableViewBackgroundColor = [MEMORY[0x1E69DC888] groupTableViewBackgroundColor];
    [containerViewCopy setBackgroundColor:groupTableViewBackgroundColor];

    v30 = +[PSListController appearance];
    usesDarkTheme = [v30 usesDarkTheme];

    if (usesDarkTheme)
    {
      backgroundColor4 = +[PSListController appearance];
      backgroundColor3 = [backgroundColor4 backgroundColor];
      [viewCopy setBackgroundColor:backgroundColor3];
    }

    else
    {
      backgroundColor4 = [containerViewCopy backgroundColor];
      [viewCopy setBackgroundColor:backgroundColor4];
    }

    goto LABEL_19;
  }

  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  [containerViewCopy setBackgroundColor:whiteColor];

  panGestureRecognizer = [viewCopy panGestureRecognizer];
  [containerViewCopy addGestureRecognizer:panGestureRecognizer];

  if (!controller)
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
    sharedStyle = [v24 sharedStyle];
    [sharedStyle edgeInsetsForTable:viewCopy];
    v28 = v27;

    [viewCopy setScrollIndicatorInsets:{0.0, 0.0, 0.0, -v28}];
  }

LABEL_19:
  [containerViewCopy setLayoutMarginsFollowReadableWidth:1];
  [viewCopy setClipsToBounds:0];
}

- (id)cellForSpecifier:(id)specifier inController:(id)controller
{
  specifierCopy = specifier;
  v5 = [PSTableCell cellClassForSpecifier:specifierCopy];
  v6 = [(objc_class *)v5 isSubclassOfClass:objc_opt_class()];
  v7 = [v5 alloc];
  cellStyle = [(objc_class *)v5 cellStyle];
  if (v6)
  {
    v9 = [PSTableCell reuseIdentifierForSpecifier:specifierCopy];
    v10 = [v7 initWithStyle:cellStyle reuseIdentifier:v9 specifier:specifierCopy];
  }

  else
  {
    v10 = [v7 initWithStyle:cellStyle reuseIdentifier:0];
  }

  return v10;
}

- (double)estimatedHeightOfRowForCellWithIndexPath:(id)path inController:(id)controller
{
  controllerCopy = controller;
  v6 = [controllerCopy indexForIndexPath:path];
  unprotectedSpecifiers = [controllerCopy unprotectedSpecifiers];
  v8 = [unprotectedSpecifiers objectAtIndex:v6];

  if ((v8[7] & 0xFFFFFFFFFFFFFFFELL) == 0xA)
  {
    integerValue = 66.0;
  }

  else
  {
    table = [controllerCopy table];
    v11 = [v8 propertyForKey:@"height"];
    v12 = v11;
    if (v11)
    {
      integerValue = [v11 integerValue];
    }

    else
    {
      [table estimatedRowHeight];
      if (v13 <= 0.0)
      {
        integerValue = *MEMORY[0x1E69DE3D0];
      }

      else
      {
        [table estimatedRowHeight];
        integerValue = v14;
      }
    }
  }

  return integerValue;
}

- (void)listController:(id)controller updateSectionContentInsetAnimated:(BOOL)animated isRegularWidth:(BOOL)width contentInsetInitialized:(BOOL)initialized contentInsetInitializedApplicator:(id)applicator
{
  initializedCopy = initialized;
  animatedCopy = animated;
  controllerCopy = controller;
  applicatorCopy = applicator;
  if ((PSIsRunningInAssistant() & 1) == 0)
  {
    applicatorCopy[2](applicatorCopy);
    goto LABEL_16;
  }

  view = [controllerCopy view];
  v13 = PSShouldInsetListView(view);
  v14 = MEMORY[0x1E69DE3D0];
  if (v13 && ([controllerCopy edgeToEdgeCells] & 1) == 0)
  {
    v23 = PSIsRunningInAssistant();

    if ((v23 & 1) == 0)
    {
      view2 = [controllerCopy view];
      [view2 safeAreaInsets];
      v26 = v25;

      v15 = 0.0;
      v27 = v26 <= 0.0;
      v16 = 0.0;
      if (v27)
      {
        view3 = [controllerCopy view];
        [view3 layoutMargins];
        v16 = v29;
      }

      view4 = [controllerCopy view];
      [view4 safeAreaInsets];
      v32 = v31;

      if (v32 <= 0.0)
      {
        view5 = [controllerCopy view];
        [view5 layoutMargins];
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
  table = [controllerCopy table];
  [table _sectionContentInset];
  if (v16 != v19 || v15 != v18)
  {
    v21 = *v14;
    if (animatedCopy && initializedCopy)
    {
      [table _setSectionContentInset:{*v14, v16, *v14, v15}];
    }

    else
    {
      v22 = MEMORY[0x1E69DD250];
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __167__PSListControllerDefaultAppearanceProvider_listController_updateSectionContentInsetAnimated_isRegularWidth_contentInsetInitialized_contentInsetInitializedApplicator___block_invoke;
      v35[3] = &unk_1E71DC788;
      v36 = table;
      v37 = v21;
      v38 = v16;
      v39 = v21;
      v40 = v15;
      [v22 performWithoutAnimation:v35];
      applicatorCopy[2](applicatorCopy);
    }
  }

LABEL_16:
}

@end