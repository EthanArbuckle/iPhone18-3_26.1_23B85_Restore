@interface _UIContextMenuStackedHierarchyLayout
- (CGSize)encompassingSize;
- (UIEdgeInsets)_listSectionInsets;
- (_UIContextMenuStackedHierarchyLayout)initWithMenuView:(id)view;
- (_UIContextMenuView)menuView;
- (id)_metrics;
- (id)_suppressViewIfNeeded:(id)needed;
- (void)navigateDownFromNode:(id)node toNode:(id)toNode alongsideAnimations:(id)animations completion:(id)completion;
- (void)navigateUpFromNode:(id)node toNode:(id)toNode alongsideAnimations:(id)animations completion:(id)completion;
- (void)performLayoutForComputingPreferredContentSize:(BOOL)size withMaxContainerSize:(CGSize)containerSize;
@end

@implementation _UIContextMenuStackedHierarchyLayout

- (_UIContextMenuView)menuView
{
  WeakRetained = objc_loadWeakRetained(&self->_menuView);

  return WeakRetained;
}

- (id)_metrics
{
  menuView = [(_UIContextMenuStackedHierarchyLayout *)self menuView];
  traitCollection = [menuView traitCollection];
  v4 = _UIContextMenuGetPlatformMetrics([traitCollection userInterfaceIdiom]);

  return v4;
}

- (_UIContextMenuStackedHierarchyLayout)initWithMenuView:(id)view
{
  viewCopy = view;
  v8.receiver = self;
  v8.super_class = _UIContextMenuStackedHierarchyLayout;
  v5 = [(_UIContextMenuStackedHierarchyLayout *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(_UIContextMenuStackedHierarchyLayout *)v5 setMenuView:viewCopy];
  }

  return v6;
}

- (CGSize)encompassingSize
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x4010000000;
  v13 = "";
  v2 = *(MEMORY[0x1E695F050] + 16);
  v14 = *MEMORY[0x1E695F050];
  v15 = v2;
  menuView = [(_UIContextMenuStackedHierarchyLayout *)self menuView];
  submenus = [menuView submenus];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __56___UIContextMenuStackedHierarchyLayout_encompassingSize__block_invoke;
  v9[3] = &unk_1E7116D28;
  v9[4] = &v10;
  [submenus enumerateNodes:v9];

  v5 = v11[6];
  v6 = v11[7];
  _Block_object_dispose(&v10, 8);
  v7 = v5;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)performLayoutForComputingPreferredContentSize:(BOOL)size withMaxContainerSize:(CGSize)containerSize
{
  height = containerSize.height;
  width = containerSize.width;
  menuView = [(_UIContextMenuStackedHierarchyLayout *)self menuView];
  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x2020000000;
  submenus = [menuView submenus];
  nodes = [submenus nodes];
  v11 = [nodes count] - 1;

  v29[3] = v11;
  [menuView bounds];
  v13 = v12;
  v15 = v14;
  _metrics = [(_UIContextMenuStackedHierarchyLayout *)self _metrics];
  submenus2 = [menuView submenus];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __107___UIContextMenuStackedHierarchyLayout_performLayoutForComputingPreferredContentSize_withMaxContainerSize___block_invoke;
  v20[3] = &unk_1E7116D50;
  sizeCopy = size;
  v24 = width;
  v25 = height;
  v18 = menuView;
  v21 = v18;
  v19 = _metrics;
  v22 = v19;
  v23 = v29;
  v26 = v13;
  v27 = v15;
  [submenus2 enumerateNodes:v20];

  _Block_object_dispose(v29, 8);
}

- (void)navigateDownFromNode:(id)node toNode:(id)toNode alongsideAnimations:(id)animations completion:(id)completion
{
  nodeCopy = node;
  toNodeCopy = toNode;
  animationsCopy = animations;
  completionCopy = completion;
  menuView = [(_UIContextMenuStackedHierarchyLayout *)self menuView];
  v33 = nodeCopy;
  listView = [nodeCopy listView];
  listView2 = [toNodeCopy listView];
  displayedMenu = [listView2 displayedMenu];
  v16 = [listView cellForElement:displayedMenu];

  [listView setUserInteractionEnabled:0];
  v74[0] = 0;
  v74[1] = v74;
  v74[2] = 0x4010000000;
  v74[3] = "";
  v75 = 0u;
  v76 = 0u;
  v71[0] = 0;
  v71[1] = v71;
  v71[2] = 0x4010000000;
  v71[3] = "";
  v72 = 0u;
  v73 = 0u;
  v65 = 0;
  v66 = &v65;
  v67 = 0x3032000000;
  v68 = __Block_byref_object_copy__133;
  v69 = __Block_byref_object_dispose__133;
  v70 = 0;
  window = [listView2 window];

  if (!window)
  {
    v62[0] = MEMORY[0x1E69E9820];
    v62[1] = 3221225472;
    v62[2] = __99___UIContextMenuStackedHierarchyLayout_navigateDownFromNode_toNode_alongsideAnimations_completion___block_invoke;
    v62[3] = &unk_1E70F35B8;
    v18 = listView2;
    v63 = v18;
    v19 = menuView;
    v64 = v19;
    [UIView performWithoutAnimation:v62];
    v53[0] = MEMORY[0x1E69E9820];
    v53[1] = 3221225472;
    v53[2] = __99___UIContextMenuStackedHierarchyLayout_navigateDownFromNode_toNode_alongsideAnimations_completion___block_invoke_2;
    v53[3] = &unk_1E7116D78;
    v54 = v18;
    v55 = v16;
    selfCopy = self;
    v60 = v74;
    v57 = v19;
    v58 = toNodeCopy;
    v61 = v71;
    v59 = listView;
    [UIView _performWithoutRetargetingAnimations:v53];
  }

  retainHighlightOnMenuNavigation = [menuView retainHighlightOnMenuNavigation];
  v21 = [(_UIContextMenuStackedHierarchyLayout *)self _suppressViewIfNeeded:v16];
  v22 = v66[5];
  v66[5] = v21;

  v23 = [UIViewSpringAnimationBehavior behaviorWithDampingRatio:1.0 response:0.2];
  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 3221225472;
  v48[2] = __99___UIContextMenuStackedHierarchyLayout_navigateDownFromNode_toNode_alongsideAnimations_completion___block_invoke_3;
  v48[3] = &unk_1E70F5B18;
  v52 = retainHighlightOnMenuNavigation;
  v24 = listView;
  v49 = v24;
  v50 = listView2;
  v25 = v16;
  v51 = v25;
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = __99___UIContextMenuStackedHierarchyLayout_navigateDownFromNode_toNode_alongsideAnimations_completion___block_invoke_5;
  v46[3] = &unk_1E70F3FD8;
  v26 = v50;
  v47 = v26;
  [UIView _animateUsingSpringBehavior:v23 tracking:0 animations:v48 completion:v46];

  v27 = [UIViewSpringAnimationBehavior behaviorWithDampingRatio:0.85 response:0.4];
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __99___UIContextMenuStackedHierarchyLayout_navigateDownFromNode_toNode_alongsideAnimations_completion___block_invoke_6;
  v39[3] = &unk_1E7116DA0;
  v28 = v24;
  v40 = v28;
  v29 = animationsCopy;
  v43 = v29;
  v30 = menuView;
  v41 = v30;
  v31 = v26;
  v42 = v31;
  v44 = v74;
  v45 = v71;
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __99___UIContextMenuStackedHierarchyLayout_navigateDownFromNode_toNode_alongsideAnimations_completion___block_invoke_9;
  v36[3] = &unk_1E7114D50;
  v38 = &v65;
  v32 = completionCopy;
  v37 = v32;
  [UIView _animateUsingSpringBehavior:v27 tracking:0 animations:v39 completion:v36];

  _Block_object_dispose(&v65, 8);
  _Block_object_dispose(v71, 8);
  _Block_object_dispose(v74, 8);
}

- (void)navigateUpFromNode:(id)node toNode:(id)toNode alongsideAnimations:(id)animations completion:(id)completion
{
  nodeCopy = node;
  toNodeCopy = toNode;
  animationsCopy = animations;
  completionCopy = completion;
  menuView = [(_UIContextMenuStackedHierarchyLayout *)self menuView];
  listView = [nodeCopy listView];
  listView2 = [toNodeCopy listView];
  [listView2 setUserInteractionEnabled:1];
  LODWORD(completion) = [menuView retainHighlightOnMenuNavigation];
  v15 = [UIViewSpringAnimationBehavior behaviorWithDampingRatio:1.0 response:0.5];
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __97___UIContextMenuStackedHierarchyLayout_navigateUpFromNode_toNode_alongsideAnimations_completion___block_invoke;
  v43[3] = &unk_1E70F5AF0;
  v16 = listView;
  v44 = v16;
  completionCopy2 = completion;
  v17 = listView2;
  v45 = v17;
  [UIView _animateUsingSpringBehavior:v15 tracking:0 animations:v43 completion:0];

  if (completion)
  {
    displayedMenu = [v16 displayedMenu];
    v19 = [v17 indexPathForElement:displayedMenu];

    [v17 highlightItemAtIndexPath:v19];
  }

  displayedMenu2 = [v16 displayedMenu];
  v21 = [v17 cellForElement:displayedMenu2];

  v41[0] = 0;
  v41[1] = v41;
  v41[2] = 0x3032000000;
  v41[3] = __Block_byref_object_copy__133;
  v41[4] = __Block_byref_object_dispose__133;
  v42 = [(_UIContextMenuStackedHierarchyLayout *)self _suppressViewIfNeeded:v21];
  v22 = [UIViewSpringAnimationBehavior behaviorWithDampingRatio:1.0 response:0.4];
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __97___UIContextMenuStackedHierarchyLayout_navigateUpFromNode_toNode_alongsideAnimations_completion___block_invoke_3;
  v34[3] = &unk_1E7116DC8;
  v23 = v17;
  v35 = v23;
  v24 = v16;
  v36 = v24;
  v25 = animationsCopy;
  v40 = v25;
  v26 = menuView;
  v37 = v26;
  v27 = v21;
  v38 = v27;
  selfCopy = self;
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __97___UIContextMenuStackedHierarchyLayout_navigateUpFromNode_toNode_alongsideAnimations_completion___block_invoke_5;
  v31[3] = &unk_1E7114D50;
  v33 = v41;
  v28 = completionCopy;
  v32 = v28;
  [UIView _animateUsingSpringBehavior:v22 tracking:0 animations:v34 completion:v31];

  _Block_object_dispose(v41, 8);
}

- (UIEdgeInsets)_listSectionInsets
{
  _metrics = [(_UIContextMenuStackedHierarchyLayout *)self _metrics];
  [_metrics sectionInsets];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  menuView = [(_UIContextMenuStackedHierarchyLayout *)self menuView];
  _shouldReverseLayoutDirection = [menuView _shouldReverseLayoutDirection];
  if (_shouldReverseLayoutDirection)
  {
    v14 = v11;
  }

  else
  {
    v14 = v7;
  }

  if (!_shouldReverseLayoutDirection)
  {
    v7 = v11;
  }

  v15 = v5;
  v16 = v14;
  v17 = v9;
  v18 = v7;
  result.right = v18;
  result.bottom = v17;
  result.left = v16;
  result.top = v15;
  return result;
}

- (id)_suppressViewIfNeeded:(id)needed
{
  neededCopy = needed;
  _metrics = [(_UIContextMenuStackedHierarchyLayout *)self _metrics];
  prefersGlassAppearance = [_metrics prefersGlassAppearance];

  if (prefersGlassAppearance)
  {
    v7 = [neededCopy _vendAssertionForOverrideAlpha:0.0];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end