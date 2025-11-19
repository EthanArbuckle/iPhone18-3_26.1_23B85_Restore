@interface _UIContextMenuCascadedHierarchyLayout
- (CAPoint3D)_submenuOffsetForCascadingLeft:(BOOL)a3;
- (CGRect)_cascadingAreaBounds;
- (CGSize)encompassingSize;
- (_UIContextMenuCascadedHierarchyLayout)initWithMenuView:(id)a3;
- (_UIContextMenuView)menuView;
- (id)_metrics;
- (void)navigateDownFromNode:(id)a3 toNode:(id)a4 alongsideAnimations:(id)a5 completion:(id)a6;
- (void)navigateUpFromNode:(id)a3 toNode:(id)a4 alongsideAnimations:(id)a5 completion:(id)a6;
- (void)performLayoutForComputingPreferredContentSize:(BOOL)a3 withMaxContainerSize:(CGSize)a4;
@end

@implementation _UIContextMenuCascadedHierarchyLayout

- (_UIContextMenuCascadedHierarchyLayout)initWithMenuView:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = _UIContextMenuCascadedHierarchyLayout;
  v5 = [(_UIContextMenuCascadedHierarchyLayout *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(_UIContextMenuCascadedHierarchyLayout *)v5 setMenuView:v4];
  }

  return v6;
}

- (CGSize)encompassingSize
{
  v2 = [(_UIContextMenuCascadedHierarchyLayout *)self menuView];
  v3 = [v2 submenus];
  v4 = [v3 first];
  v5 = [v4 listView];
  [v5 bounds];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)performLayoutForComputingPreferredContentSize:(BOOL)a3 withMaxContainerSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v8 = [(_UIContextMenuCascadedHierarchyLayout *)self menuView];
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x2020000000;
  v18[3] = 0;
  v9 = [v8 submenus];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __108___UIContextMenuCascadedHierarchyLayout_performLayoutForComputingPreferredContentSize_withMaxContainerSize___block_invoke;
  v11[3] = &unk_1E711F790;
  v10 = v8;
  v12 = v10;
  v13 = self;
  v17 = a3;
  v15 = width;
  v16 = height;
  v14 = v18;
  [v9 enumerateNodes:v11];

  _Block_object_dispose(v18, 8);
}

- (void)navigateDownFromNode:(id)a3 toNode:(id)a4 alongsideAnimations:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(_UIContextMenuCascadedHierarchyLayout *)self menuView];
  v15 = [v11 listView];
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __100___UIContextMenuCascadedHierarchyLayout_navigateDownFromNode_toNode_alongsideAnimations_completion___block_invoke;
  v35[3] = &unk_1E70F8868;
  v16 = v14;
  v36 = v16;
  v17 = v15;
  v37 = v17;
  v38 = v11;
  v39 = self;
  v40 = v10;
  v26 = v10;
  v18 = v11;
  [UIView _performWithoutRetargetingAnimations:v35];
  v19 = [UIViewSpringAnimationBehavior behaviorWithDampingRatio:1.0 response:0.25];
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __100___UIContextMenuCascadedHierarchyLayout_navigateDownFromNode_toNode_alongsideAnimations_completion___block_invoke_3;
  v33[3] = &unk_1E70F3590;
  v20 = v17;
  v34 = v20;
  [UIView _animateUsingSpringBehavior:v19 tracking:0 animations:v33 completion:0];

  v21 = [UIViewSpringAnimationBehavior behaviorWithDampingRatio:0.85 response:0.32];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __100___UIContextMenuCascadedHierarchyLayout_navigateDownFromNode_toNode_alongsideAnimations_completion___block_invoke_5;
  v30[3] = &unk_1E70F6150;
  v31 = v16;
  v32 = v12;
  v30[4] = self;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __100___UIContextMenuCascadedHierarchyLayout_navigateDownFromNode_toNode_alongsideAnimations_completion___block_invoke_7;
  v27[3] = &unk_1E711F7E0;
  v28 = v20;
  v29 = v13;
  v22 = v13;
  v23 = v20;
  v24 = v16;
  v25 = v12;
  [UIView _animateUsingSpringBehavior:v21 tracking:0 animations:v30 completion:v27];
}

- (void)navigateUpFromNode:(id)a3 toNode:(id)a4 alongsideAnimations:(id)a5 completion:(id)a6
{
  v8 = a3;
  v9 = a5;
  v10 = a6;
  v11 = [UIViewSpringAnimationBehavior behaviorWithDampingRatio:1.0 response:0.25];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __98___UIContextMenuCascadedHierarchyLayout_navigateUpFromNode_toNode_alongsideAnimations_completion___block_invoke;
  v14[3] = &unk_1E70F37C0;
  v15 = v8;
  v16 = v9;
  v12 = v9;
  v13 = v8;
  [UIView _animateUsingSpringBehavior:v11 tracking:0 animations:v14 completion:v10];
}

- (id)_metrics
{
  v2 = [(_UIContextMenuCascadedHierarchyLayout *)self menuView];
  v3 = [v2 traitCollection];
  v4 = _UIContextMenuGetPlatformMetrics([v3 userInterfaceIdiom]);

  return v4;
}

- (CGRect)_cascadingAreaBounds
{
  v3 = [(_UIContextMenuCascadedHierarchyLayout *)self menuView];
  v4 = [v3 window];

  v5 = [(_UIContextMenuCascadedHierarchyLayout *)self menuView];
  v6 = [v5 shouldAvoidInputViews];
  v7 = v4;
  [v7 safeAreaInsets];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = [v7 traitCollection];
  v17 = [v16 verticalSizeClass];

  v18 = 0.0;
  v19 = v15 + 0.0;
  if (v17 == 1)
  {
    v19 = v15;
  }

  v67 = v19;
  if (v17 == 1)
  {
    v20 = v11;
  }

  else
  {
    v13 = v13 + 20.0;
    v20 = v11 + 0.0;
  }

  if (v17 == 1)
  {
    v21 = v9;
  }

  else
  {
    v21 = v9 + 20.0;
  }

  v22 = _UIContextMenuDefaultContentSpacing(v7);
  v23 = fmax(v13, 20.0);
  if (v6)
  {
    v24 = v7;
    v25 = [v24 _window];
    v26 = [v25 _isRemoteInputHostWindow];

    if ((v26 & 1) == 0)
    {
      v27 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
      v28 = v27;
      if (v27)
      {
        [v27 verticalOverlapForView:v24 usingKeyboardInfo:0];
        v30 = v29;
        v31 = [v24 traitCollection];
        v32 = _UIContextMenuGetPlatformMetrics([v31 userInterfaceIdiom]);

        [v32 minimumContainerInsets];
        v34 = v33;

        v18 = v30 + v34;
      }
    }

    if (v23 < v18)
    {
      v23 = v18;
    }
  }

  v35 = [v7 traitCollection];
  v36 = [v35 userInterfaceIdiom];

  v37 = _UIContextMenuGetPlatformMetrics(v36);
  [v37 preferredDefaultContentInsets];
  v39 = fmax(fmax(v21, 20.0), v38);
  v41 = fmax(fmax(v20, v22), v40);
  v43 = fmax(v23, v42);
  v45 = fmax(fmax(v67, v22), v44);

  [v7 bounds];
  v47 = v41 + v46;
  v49 = v39 + v48;
  v51 = v50 - (v41 + v45);
  v53 = v52 - (v39 + v43);
  v54 = [(_UIContextMenuCascadedHierarchyLayout *)self menuView];
  [v7 convertRect:v54 toView:{v47, v49, v51, v53}];
  v56 = v55;
  v58 = v57;
  v60 = v59;
  v62 = v61;

  v63 = v56;
  v64 = v58;
  v65 = v60;
  v66 = v62;
  result.size.height = v66;
  result.size.width = v65;
  result.origin.y = v64;
  result.origin.x = v63;
  return result;
}

- (CAPoint3D)_submenuOffsetForCascadingLeft:(BOOL)a3
{
  v3 = a3;
  v5 = [(_UIContextMenuCascadedHierarchyLayout *)self _metrics];
  v6 = [(_UIContextMenuCascadedHierarchyLayout *)self menuView];
  v7 = [v6 effectiveUserInterfaceLayoutDirection];

  if (!v3)
  {
    if (!v7)
    {
      goto LABEL_3;
    }

LABEL_5:
    [v5 leadingCascadedSubmenuOffset];
    goto LABEL_6;
  }

  if (!v7)
  {
    goto LABEL_5;
  }

LABEL_3:
  [v5 trailingCascadedSubmenuOffset];
LABEL_6:
  v11 = v8;
  v12 = v9;
  v13 = v10;

  v14 = v11;
  v15 = v12;
  v16 = v13;
  result.z = v16;
  result.y = v15;
  result.x = v14;
  return result;
}

- (_UIContextMenuView)menuView
{
  WeakRetained = objc_loadWeakRetained(&self->_menuView);

  return WeakRetained;
}

@end