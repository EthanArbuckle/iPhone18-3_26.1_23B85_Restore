@interface _UIContextMenuCascadedHierarchyLayout
- (CAPoint3D)_submenuOffsetForCascadingLeft:(BOOL)left;
- (CGRect)_cascadingAreaBounds;
- (CGSize)encompassingSize;
- (_UIContextMenuCascadedHierarchyLayout)initWithMenuView:(id)view;
- (_UIContextMenuView)menuView;
- (id)_metrics;
- (void)navigateDownFromNode:(id)node toNode:(id)toNode alongsideAnimations:(id)animations completion:(id)completion;
- (void)navigateUpFromNode:(id)node toNode:(id)toNode alongsideAnimations:(id)animations completion:(id)completion;
- (void)performLayoutForComputingPreferredContentSize:(BOOL)size withMaxContainerSize:(CGSize)containerSize;
@end

@implementation _UIContextMenuCascadedHierarchyLayout

- (_UIContextMenuCascadedHierarchyLayout)initWithMenuView:(id)view
{
  viewCopy = view;
  v8.receiver = self;
  v8.super_class = _UIContextMenuCascadedHierarchyLayout;
  v5 = [(_UIContextMenuCascadedHierarchyLayout *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(_UIContextMenuCascadedHierarchyLayout *)v5 setMenuView:viewCopy];
  }

  return v6;
}

- (CGSize)encompassingSize
{
  menuView = [(_UIContextMenuCascadedHierarchyLayout *)self menuView];
  submenus = [menuView submenus];
  first = [submenus first];
  listView = [first listView];
  [listView bounds];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)performLayoutForComputingPreferredContentSize:(BOOL)size withMaxContainerSize:(CGSize)containerSize
{
  height = containerSize.height;
  width = containerSize.width;
  menuView = [(_UIContextMenuCascadedHierarchyLayout *)self menuView];
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x2020000000;
  v18[3] = 0;
  submenus = [menuView submenus];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __108___UIContextMenuCascadedHierarchyLayout_performLayoutForComputingPreferredContentSize_withMaxContainerSize___block_invoke;
  v11[3] = &unk_1E711F790;
  v10 = menuView;
  v12 = v10;
  selfCopy = self;
  sizeCopy = size;
  v15 = width;
  v16 = height;
  v14 = v18;
  [submenus enumerateNodes:v11];

  _Block_object_dispose(v18, 8);
}

- (void)navigateDownFromNode:(id)node toNode:(id)toNode alongsideAnimations:(id)animations completion:(id)completion
{
  nodeCopy = node;
  toNodeCopy = toNode;
  animationsCopy = animations;
  completionCopy = completion;
  menuView = [(_UIContextMenuCascadedHierarchyLayout *)self menuView];
  listView = [toNodeCopy listView];
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __100___UIContextMenuCascadedHierarchyLayout_navigateDownFromNode_toNode_alongsideAnimations_completion___block_invoke;
  v35[3] = &unk_1E70F8868;
  v16 = menuView;
  v36 = v16;
  v17 = listView;
  v37 = v17;
  v38 = toNodeCopy;
  selfCopy = self;
  v40 = nodeCopy;
  v26 = nodeCopy;
  v18 = toNodeCopy;
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
  v32 = animationsCopy;
  v30[4] = self;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __100___UIContextMenuCascadedHierarchyLayout_navigateDownFromNode_toNode_alongsideAnimations_completion___block_invoke_7;
  v27[3] = &unk_1E711F7E0;
  v28 = v20;
  v29 = completionCopy;
  v22 = completionCopy;
  v23 = v20;
  v24 = v16;
  v25 = animationsCopy;
  [UIView _animateUsingSpringBehavior:v21 tracking:0 animations:v30 completion:v27];
}

- (void)navigateUpFromNode:(id)node toNode:(id)toNode alongsideAnimations:(id)animations completion:(id)completion
{
  nodeCopy = node;
  animationsCopy = animations;
  completionCopy = completion;
  v11 = [UIViewSpringAnimationBehavior behaviorWithDampingRatio:1.0 response:0.25];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __98___UIContextMenuCascadedHierarchyLayout_navigateUpFromNode_toNode_alongsideAnimations_completion___block_invoke;
  v14[3] = &unk_1E70F37C0;
  v15 = nodeCopy;
  v16 = animationsCopy;
  v12 = animationsCopy;
  v13 = nodeCopy;
  [UIView _animateUsingSpringBehavior:v11 tracking:0 animations:v14 completion:completionCopy];
}

- (id)_metrics
{
  menuView = [(_UIContextMenuCascadedHierarchyLayout *)self menuView];
  traitCollection = [menuView traitCollection];
  v4 = _UIContextMenuGetPlatformMetrics([traitCollection userInterfaceIdiom]);

  return v4;
}

- (CGRect)_cascadingAreaBounds
{
  menuView = [(_UIContextMenuCascadedHierarchyLayout *)self menuView];
  window = [menuView window];

  menuView2 = [(_UIContextMenuCascadedHierarchyLayout *)self menuView];
  shouldAvoidInputViews = [menuView2 shouldAvoidInputViews];
  v7 = window;
  [v7 safeAreaInsets];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  traitCollection = [v7 traitCollection];
  verticalSizeClass = [traitCollection verticalSizeClass];

  v18 = 0.0;
  v19 = v15 + 0.0;
  if (verticalSizeClass == 1)
  {
    v19 = v15;
  }

  v67 = v19;
  if (verticalSizeClass == 1)
  {
    v20 = v11;
  }

  else
  {
    v13 = v13 + 20.0;
    v20 = v11 + 0.0;
  }

  if (verticalSizeClass == 1)
  {
    v21 = v9;
  }

  else
  {
    v21 = v9 + 20.0;
  }

  v22 = _UIContextMenuDefaultContentSpacing(v7);
  v23 = fmax(v13, 20.0);
  if (shouldAvoidInputViews)
  {
    v24 = v7;
    _window = [v24 _window];
    _isRemoteInputHostWindow = [_window _isRemoteInputHostWindow];

    if ((_isRemoteInputHostWindow & 1) == 0)
    {
      v27 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
      v28 = v27;
      if (v27)
      {
        [v27 verticalOverlapForView:v24 usingKeyboardInfo:0];
        v30 = v29;
        traitCollection2 = [v24 traitCollection];
        v32 = _UIContextMenuGetPlatformMetrics([traitCollection2 userInterfaceIdiom]);

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

  traitCollection3 = [v7 traitCollection];
  userInterfaceIdiom = [traitCollection3 userInterfaceIdiom];

  v37 = _UIContextMenuGetPlatformMetrics(userInterfaceIdiom);
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
  menuView3 = [(_UIContextMenuCascadedHierarchyLayout *)self menuView];
  [v7 convertRect:menuView3 toView:{v47, v49, v51, v53}];
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

- (CAPoint3D)_submenuOffsetForCascadingLeft:(BOOL)left
{
  leftCopy = left;
  _metrics = [(_UIContextMenuCascadedHierarchyLayout *)self _metrics];
  menuView = [(_UIContextMenuCascadedHierarchyLayout *)self menuView];
  effectiveUserInterfaceLayoutDirection = [menuView effectiveUserInterfaceLayoutDirection];

  if (!leftCopy)
  {
    if (!effectiveUserInterfaceLayoutDirection)
    {
      goto LABEL_3;
    }

LABEL_5:
    [_metrics leadingCascadedSubmenuOffset];
    goto LABEL_6;
  }

  if (!effectiveUserInterfaceLayoutDirection)
  {
    goto LABEL_5;
  }

LABEL_3:
  [_metrics trailingCascadedSubmenuOffset];
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