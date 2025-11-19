@interface _UIContextMenuView
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldRequireFailureOfGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (BOOL)kickstartActionScrubbingWithGesture:(id)a3;
- (CGRect)_rectOfNodeParentElement:(id)a3;
- (CGRect)activeSubmenuFrameInCoordinateSpace:(id)a3;
- (CGSize)maxContainerSize;
- (CGSize)preferredContentSizeWithinContainerSize:(CGSize)a3;
- (CGSize)visibleContentSize;
- (NSArray)visibleMenus;
- (_UIContextMenuListView)currentListView;
- (_UIContextMenuView)initWithFrame:(CGRect)a3;
- (_UIContextMenuViewDelegate)delegate;
- (double)closestScrollTruncationDetentToHeight:(double)a3;
- (id)_newListViewWithMenu:(id)a3 position:(unint64_t)a4;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)hoveredListView;
- (id)keyCommands;
- (id)preferredFocusEnvironments;
- (id)rootListView;
- (void)_clearAutoNavigationTimer;
- (void)_clearHoverAutoExitTimer;
- (void)_displayMenu:(id)a3 inPlaceOfMenu:(id)a4 updateType:(unint64_t)a5 alongsideAnimations:(id)a6;
- (void)_handleEscapeKey:(id)a3;
- (void)_handleHoverGestureRecognizer:(id)a3;
- (void)_handleMenuPressGesture:(id)a3;
- (void)_handleRightArrowKey:(id)a3;
- (void)_handleSelectPressGesture:(id)a3;
- (void)_handleSelectionForElement:(id)a3;
- (void)_handleSelectionGesture:(id)a3;
- (void)_performActionForElement:(id)a3;
- (void)_selectPreviousMenuIfPossible;
- (void)_setAutoNavigationTimerIfNecessaryForElement:(id)a3 isTrackpadHover:(BOOL)a4;
- (void)_setHighlightedIndexPath:(id)a3 playFeedback:(BOOL)a4 atLocation:(CGPoint)a5 allowAutoNavigation:(BOOL)a6;
- (void)_setHoverAutoExitTimer;
- (void)_testing_tapAnAction;
- (void)_updateSelectionGestureAllowableMovementForGestureBeginningAtIndexPath:(id)a3;
- (void)didCompleteMenuAppearanceAnimation;
- (void)didMoveToWindow;
- (void)disableTypeSelectIfNeeded;
- (void)flashScrollIndicators;
- (void)layoutSubviews;
- (void)scrollToFirstSignificantAction;
- (void)setHierarchyStyle:(unint64_t)a3;
- (void)setPreferredMenuMaterial:(id)a3;
- (void)setReversesActionOrder:(BOOL)a3;
- (void)setShowsShadow:(BOOL)a3;
- (void)setUserInteractionEnabled:(BOOL)a3;
@end

@implementation _UIContextMenuView

- (_UIContextMenuViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (NSArray)visibleMenus
{
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [(_UIContextMenuView *)self submenus];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __34___UIContextMenuView_visibleMenus__block_invoke;
  v7[3] = &unk_1E70F3FB0;
  v5 = v3;
  v8 = v5;
  [v4 enumerateNodes:v7];

  return v5;
}

- (_UIContextMenuListView)currentListView
{
  v2 = [(_UIContextMenuView *)self submenus];
  v3 = [v2 current];
  v4 = [v3 listView];

  return v4;
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = _UIContextMenuView;
  [(UIView *)&v5 layoutSubviews];
  v3 = [(_UIContextMenuView *)self layout];
  v4 = [(_UIContextMenuView *)self isComputingPreferredSize];
  [(_UIContextMenuView *)self maxContainerSize];
  [v3 performLayoutForComputingPreferredContentSize:v4 withMaxContainerSize:?];

  if ([(_UIContextMenuView *)self isComputingPreferredSize])
  {
    [(_UIContextMenuView *)self setIsComputingPreferredSize:0];
  }
}

- (void)didCompleteMenuAppearanceAnimation
{
  [(_UIContextMenuView *)self flashScrollIndicators];
  v3 = [(_UIContextMenuView *)self currentListView];
  [v3 didCompleteMenuAppearanceAnimation];
}

- (id)rootListView
{
  v2 = [(_UIContextMenuView *)self submenus];
  v3 = [v2 first];
  v4 = [v3 listView];

  return v4;
}

- (void)flashScrollIndicators
{
  v3 = [(_UIContextMenuView *)self currentListView];
  v2 = [v3 collectionView];
  [v2 flashScrollIndicators];
}

- (CGSize)visibleContentSize
{
  width = self->_visibleContentSize.width;
  height = self->_visibleContentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)didMoveToWindow
{
  v4.receiver = self;
  v4.super_class = _UIContextMenuView;
  [(UIView *)&v4 didMoveToWindow];
  if ([(_UIContextMenuView *)self wantsFocusDeferralIfSupported])
  {
    v3 = [(UIView *)self _focusSystem];
    [v3 _startDeferringFocusIfSupported];

    [(_UIContextMenuView *)self setWantsFocusDeferralIfSupported:0];
  }
}

- (CGSize)maxContainerSize
{
  width = self->_maxContainerSize.width;
  height = self->_maxContainerSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (_UIContextMenuView)initWithFrame:(CGRect)a3
{
  v32.receiver = self;
  v32.super_class = _UIContextMenuView;
  v3 = [(UIView *)&v32 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(UIView *)v3 layer];
    [v5 setAllowsGroupOpacity:0];

    [(UIView *)v4 _setSafeAreaInsetsFrozen:1];
    v6 = [(UIGestureRecognizer *)[_UIContinuousSelectionGestureRecognizer alloc] initWithTarget:v4 action:sel__handleSelectionGesture_];
    [(_UIContextMenuView *)v4 setSelectionGestureRecognizer:v6];

    v7 = [(_UIContextMenuView *)v4 selectionGestureRecognizer];
    [v7 setName:@"com.apple.UIKit.ContextMenuActionsListSelection"];

    v8 = [(_UIContextMenuView *)v4 selectionGestureRecognizer];
    [v8 setDelegate:v4];

    v9 = [(_UIContextMenuView *)v4 selectionGestureRecognizer];
    [(UIView *)v4 addGestureRecognizer:v9];

    v10 = [(UIGestureRecognizer *)[_UIContextMenuSelectionDelayGestureRecognizer alloc] initWithTarget:0 action:0];
    [(_UIContextMenuView *)v4 setSelectionDelayGestureRecognizer:v10];

    v11 = [(_UIContextMenuView *)v4 selectionDelayGestureRecognizer];
    [v11 setName:@"com.apple.UIKit.ContextMenuActionsListSelectionDelay"];

    v12 = [(_UIContextMenuView *)v4 selectionDelayGestureRecognizer];
    [v12 setDelegate:v4];

    v13 = [(_UIContextMenuView *)v4 selectionDelayGestureRecognizer];
    [(UIView *)v4 addGestureRecognizer:v13];

    v14 = [[UITapGestureRecognizer alloc] initWithTarget:v4 action:sel__handleSelectPressGesture_];
    v15 = MEMORY[0x1E695E0F0];
    [(UIGestureRecognizer *)v14 setAllowedTouchTypes:MEMORY[0x1E695E0F0]];
    [(UITapGestureRecognizer *)v14 setAllowedPressTypes:&unk_1EFE2B368];
    [(UIGestureRecognizer *)v14 setCancelsTouchesInView:1];
    [(UIView *)v4 addGestureRecognizer:v14];
    v16 = [[UITapGestureRecognizer alloc] initWithTarget:v4 action:sel__handleMenuPressGesture_];

    [(UIGestureRecognizer *)v16 setAllowedTouchTypes:v15];
    [(UITapGestureRecognizer *)v16 setAllowedPressTypes:&unk_1EFE2B380];
    [(UIView *)v4 addGestureRecognizer:v16];
    v17 = [[UIHoverGestureRecognizer alloc] initWithTarget:v4 action:sel__handleHoverGestureRecognizer_];
    [(_UIContextMenuView *)v4 setHighlightHoverGestureRecognizer:v17];

    v18 = [(_UIContextMenuView *)v4 highlightHoverGestureRecognizer];
    [v18 setName:@"com.apple.UIKit.ContextMenuActionsListHover"];

    v19 = [(_UIContextMenuView *)v4 highlightHoverGestureRecognizer];
    [v19 setDelegate:v4];

    v20 = [(_UIContextMenuView *)v4 highlightHoverGestureRecognizer];
    [(UIView *)v4 addGestureRecognizer:v20];

    v21 = +[_UISelectionFeedbackGeneratorConfiguration defaultConfiguration];
    v22 = [v21 tweakedConfigurationForClass:objc_opt_class() usage:@"retarget"];

    v23 = [(UIFeedbackGenerator *)[UISelectionFeedbackGenerator alloc] initWithConfiguration:v22 view:v4];
    [(_UIContextMenuView *)v4 setFeedbackGenerator:v23];

    v24 = objc_opt_new();
    [(_UIContextMenuView *)v4 setSubmenus:v24];

    if (_UIInternalPreferencesRevisionOnce != -1)
    {
      dispatch_once(&_UIInternalPreferencesRevisionOnce, &__block_literal_global_5_11);
    }

    v25 = _UIInternalPreferencesRevisionVar;
    if (_UIInternalPreferencesRevisionVar >= 1)
    {
      v27 = _UIInternalPreference_ClickUIDebugEnabled;
      if (_UIInternalPreferencesRevisionVar != _UIInternalPreference_ClickUIDebugEnabled)
      {
        while (v25 >= v27)
        {
          _UIInternalPreferenceSync(v25, &_UIInternalPreference_ClickUIDebugEnabled, @"ClickUIDebugEnabled", _UIInternalPreferenceUpdateBool);
          v27 = _UIInternalPreference_ClickUIDebugEnabled;
          if (v25 == _UIInternalPreference_ClickUIDebugEnabled)
          {
            goto LABEL_5;
          }
        }

        if (byte_1EA95E0FC)
        {
          v28 = [(UIView *)v4 layer];
          [v28 setBorderWidth:1.0];

          v29 = +[UIColor magentaColor];
          v30 = [v29 CGColor];
          v31 = [(UIView *)v4 layer];
          [v31 setBorderColor:v30];
        }
      }
    }

LABEL_5:
  }

  return v4;
}

- (void)setUserInteractionEnabled:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = _UIContextMenuView;
  [(UIView *)&v7 setUserInteractionEnabled:?];
  v5 = [(_UIContextMenuView *)self selectionGestureRecognizer];
  [v5 setEnabled:v3];

  v6 = [(_UIContextMenuView *)self highlightHoverGestureRecognizer];
  [v6 setEnabled:v3];
}

- (void)setShowsShadow:(BOOL)a3
{
  if (self->_showsShadow != a3)
  {
    self->_showsShadow = a3;
    if (a3)
    {
      v4 = 1.0;
    }

    else
    {
      v4 = 0.0;
    }

    v5 = [(_UIContextMenuView *)self currentListView];
    [v5 setShadowAlpha:v4];
  }
}

- (void)setReversesActionOrder:(BOOL)a3
{
  if (self->_reversesActionOrder != a3)
  {
    v7[7] = v3;
    v7[8] = v4;
    self->_reversesActionOrder = a3;
    v6 = [(_UIContextMenuView *)self submenus];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __45___UIContextMenuView_setReversesActionOrder___block_invoke;
    v7[3] = &unk_1E70F3FB0;
    v7[4] = self;
    [v6 enumerateNodes:v7];
  }
}

- (void)setHierarchyStyle:(unint64_t)a3
{
  if (self->_hierarchyStyle != a3)
  {
    self->_hierarchyStyle = a3;
    v5 = [objc_alloc(objc_opt_class()) initWithMenuView:self];
    [(_UIContextMenuView *)self setLayout:v5];
  }
}

- (void)setPreferredMenuMaterial:(id)a3
{
  v5 = a3;
  if (self->_preferredMenuMaterial != v5)
  {
    objc_storeStrong(&self->_preferredMenuMaterial, a3);
    v6 = [(_UIContextMenuView *)self submenus];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __47___UIContextMenuView_setPreferredMenuMaterial___block_invoke;
    v7[3] = &unk_1E70F3FB0;
    v8 = v5;
    [v6 enumerateNodes:v7];
  }
}

- (BOOL)kickstartActionScrubbingWithGesture:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_UIContextMenuView *)self selectionGestureRecognizer];
  v6 = [v4 _activeEvents];
  if ([v6 count])
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = [(UIView *)self gestureRecognizers];
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v15 + 1) + 8 * i);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && ![v12 state])
          {
            [(UIGestureRecognizer *)v12 addTouchesFromGestureRecognizer:v4];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }

    if (![v5 state])
    {
      [(UIGestureRecognizer *)v5 transferTouchesFromGestureRecognizer:v4];
    }
  }

  v13 = [v5 state] > 0;

  return v13;
}

- (void)scrollToFirstSignificantAction
{
  v2 = [(_UIContextMenuView *)self currentListView];
  [v2 scrollToFirstSignificantAction];
}

- (CGRect)activeSubmenuFrameInCoordinateSpace:(id)a3
{
  v4 = a3;
  v5 = [(_UIContextMenuView *)self currentListView];
  [v5 frame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  [(UIView *)self convertRect:v4 toCoordinateSpace:v7, v9, v11, v13];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v22 = v15;
  v23 = v17;
  v24 = v19;
  v25 = v21;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

- (CGSize)preferredContentSizeWithinContainerSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(_UIContextMenuView *)self setMaxContainerSize:?];
  v6 = [(_UIContextMenuView *)self submenus];
  v7 = [v6 nodes];
  v8 = [v7 count];

  if (v8 == 1)
  {
    v9 = [(_UIContextMenuView *)self currentListView];
    [v9 preferredContentSizeWithinContainerSize:{width, height}];
    [v9 setNativeContentSize:?];
    [v9 nativeContentSize];
  }

  else
  {
    [(_UIContextMenuView *)self setIsComputingPreferredSize:1];
    [(_UIContextMenuView *)self setVisibleContentSize:width, 44.0];
    [(UIView *)self setNeedsLayout];
    [(UIView *)self layoutIfNeeded];
    v9 = [(_UIContextMenuView *)self layout];
    [v9 encompassingSize];
  }

  v12 = v10;
  v13 = v11;

  v14 = v12;
  v15 = v13;
  result.height = v15;
  result.width = v14;
  return result;
}

- (double)closestScrollTruncationDetentToHeight:(double)a3
{
  [(_UIContextMenuView *)self preferredScrollTruncationDetent];
  if (v5 <= 0.0)
  {
    v7 = [(_UIContextMenuView *)self currentListView];
    [v7 closestScrollTruncationDetentToHeight:a3];
    v9 = v8;

    [(_UIContextMenuView *)self setPreferredScrollTruncationDetent:v9];
    return v9;
  }

  else
  {

    [(_UIContextMenuView *)self preferredScrollTruncationDetent];
  }

  return result;
}

- (id)hoveredListView
{
  v2 = [(_UIContextMenuView *)self hoveredNode];
  v3 = [v2 listView];

  return v3;
}

- (void)_displayMenu:(id)a3 inPlaceOfMenu:(id)a4 updateType:(unint64_t)a5 alongsideAnimations:(id)a6
{
  v10 = a3;
  v73 = a6;
  v11 = a4;
  v12 = [(_UIContextMenuView *)self submenus];
  v13 = v12;
  if (v11)
  {
    v14 = v11;
  }

  else
  {
    v14 = v10;
  }

  v15 = [v12 nodeForMenu:v14];

  if (a5 == 3)
  {
    v16 = v15;
    [v16 setMenu:v10];
    v17 = 0;
    goto LABEL_6;
  }

  v26 = [(_UIContextMenuView *)self departingNode];
  v27 = [v26 menu];
  v28 = v10;
  v19 = v28;
  if (v27 == v28)
  {
  }

  else
  {
    if (!v28 || !v27)
    {

      if (v15)
      {
        goto LABEL_17;
      }

      goto LABEL_47;
    }

    v29 = [v27 isEqual:v28];

    if ((v29 & 1) == 0)
    {
      if (v15)
      {
LABEL_17:
        v16 = v15;
        v30 = [(_UIContextMenuView *)self submenus];
        v17 = [v30 popNode];

        v31 = [(_UIContextMenuView *)self departingNode];
        v32 = [v31 listView];
        [v32 removeFromSuperview];

        [(_UIContextMenuView *)self setDepartingNode:v17];
        v72 = 0;
        a5 = 2;
        goto LABEL_32;
      }

LABEL_47:
      v45 = [(_UIContextMenuView *)self submenus];
      v17 = [v45 current];

      v46 = [(_UIContextMenuView *)self departingNode];
      v47 = [v46 listView];
      [v47 removeFromSuperview];

      [(_UIContextMenuView *)self setDepartingNode:0];
      v16 = 0;
      goto LABEL_6;
    }
  }

  v33 = [(_UIContextMenuView *)self departingNode];
  v34 = [(_UIContextMenuView *)self submenus];
  v17 = [v34 current];

  [(_UIContextMenuView *)self setDepartingNode:0];
  v16 = 0;
  if (v33)
  {
    v72 = 0;
    v20 = a5;
    v16 = v33;
LABEL_30:
    v39 = [(_UIContextMenuView *)self submenus];
    [v39 addNode:v16];

    goto LABEL_31;
  }

LABEL_6:
  v18 = [(_UIContextMenuView *)self delegate];
  v19 = [v18 contextMenuView:self willDisplayMenu:v10];

  if (v19)
  {
    v20 = a5;
    if (([v19 metadata] & 0x1000000) != 0)
    {
LABEL_22:
      v72 = 0;
      if (a5 == 3)
      {
LABEL_31:
        a5 = v20;
        goto LABEL_32;
      }

      goto LABEL_23;
    }
  }

  v21 = [(_UIContextMenuView *)self submenus];
  v22 = [v21 first];

  if (v15 == v22)
  {
    v20 = 5;
    goto LABEL_22;
  }

  if (!v15)
  {

    v17 = 0;
    v72 = 0;
    goto LABEL_32;
  }

  v23 = [(_UIContextMenuView *)self submenus];
  v72 = [v23 removeNode:v15];

  v24 = [(_UIContextMenuView *)self submenus];
  v25 = [v24 current];

  v17 = 0;
  v20 = 4;
  v16 = v25;
  if (a5 != 3)
  {
LABEL_23:
    if (!v16)
    {
      v35 = [(_UIContextMenuView *)self visibleMenus];
      v36 = [v35 count];

      v37 = 0;
      if (v20 != 3 && v36)
      {
        if ([(_UIContextMenuView *)self hierarchyStyle]== 1)
        {
          v37 = 1;
        }

        else
        {
          v37 = 2;
        }
      }

      v16 = objc_opt_new();
      v38 = [(_UIContextMenuView *)self _newListViewWithMenu:v19 position:v37];
      [v16 setListView:v38];

      [v16 setMenu:v19];
    }

    goto LABEL_30;
  }

  a5 = 4;
  v16 = v25;
LABEL_32:
  v40 = [v16 listView];
  v41 = [v17 listView];
  v42 = [(_UIContextMenuView *)self retainHighlightOnMenuNavigation];
  [v41 setAllowsFocus:0];
  [v40 setAllowsFocus:1];
  if (a5 != 5 && v41 == v40)
  {
    goto LABEL_58;
  }

  if (self)
  {
    [(_UIContextMenuView *)self setPreferredScrollTruncationDetent:0.0];
  }

  if (a5 > 2)
  {
    if (a5 == 3)
    {
      v69 = [v40 collectionView];
      v51 = [v40 highlightedIndexPath];
      v52 = [v40 elementAtIndexPath:v51];

      [v40 willStartInPlaceMenuTransition];
      v90[0] = MEMORY[0x1E69E9820];
      v90[1] = 3221225472;
      v90[2] = __80___UIContextMenuView__displayMenu_inPlaceOfMenu_updateType_alongsideAnimations___block_invoke_4;
      v90[3] = &unk_1E70F35B8;
      v53 = v40;
      v91 = v53;
      v92 = v19;
      [UIView _performWithoutRetargetingAnimations:v90];
      v71 = v52;
      v54 = [v53 indexPathForElement:v52];
      if (v54)
      {
        [v53 highlightItemAtIndexPath:v54];
      }

      v68 = objc_opt_new();
      [v68 setTrackingDampingRatio:1.0 response:0.4 dampingRatioSmoothing:1.0 responseSmoothing:1.0];
      v85[0] = MEMORY[0x1E69E9820];
      v85[1] = 3221225472;
      v85[2] = __80___UIContextMenuView__displayMenu_inPlaceOfMenu_updateType_alongsideAnimations___block_invoke_5;
      v85[3] = &unk_1E70F4028;
      v85[4] = self;
      v88 = v73;
      v89 = 3;
      v86 = v53;
      v55 = v69;
      v70 = v54;
      v56 = v55;
      v87 = v55;
      v82[0] = MEMORY[0x1E69E9820];
      v82[1] = 3221225472;
      v82[2] = __80___UIContextMenuView__displayMenu_inPlaceOfMenu_updateType_alongsideAnimations___block_invoke_8;
      v82[3] = &unk_1E70F4000;
      v83 = v55;
      v84 = v86;
      v57 = v56;
      [UIView _animateUsingSpringBehavior:v68 tracking:1 animations:v85 completion:v82];

      v50 = v71;
    }

    else
    {
      if (a5 != 4)
      {
        if (a5 == 5 && v73)
        {
          (*(v73 + 2))(v73, 5);
        }

        goto LABEL_58;
      }

      v58 = [UIViewSpringAnimationBehavior behaviorWithDampingRatio:1.0 response:0.32];
      v76[0] = MEMORY[0x1E69E9820];
      v76[1] = 3221225472;
      v76[2] = __80___UIContextMenuView__displayMenu_inPlaceOfMenu_updateType_alongsideAnimations___block_invoke_9;
      v76[3] = &unk_1E70F4028;
      v80 = v73;
      v81 = 4;
      v77 = v40;
      v78 = v72;
      v79 = self;
      v74[0] = MEMORY[0x1E69E9820];
      v74[1] = 3221225472;
      v74[2] = __80___UIContextMenuView__displayMenu_inPlaceOfMenu_updateType_alongsideAnimations___block_invoke_11;
      v74[3] = &unk_1E70F3FD8;
      v75 = v78;
      [UIView _animateUsingSpringBehavior:v58 tracking:0 animations:v76 completion:v74];

      v50 = v80;
    }

LABEL_57:

    goto LABEL_58;
  }

  switch(a5)
  {
    case 0uLL:
      v48 = [(UIView *)self traitCollection];
      [v16 setLeftOfParentWhenCascading:{objc_msgSend(v48, "layoutDirection") == 1}];

      [(UIView *)self addSubview:v40];
      if (!v73)
      {
        goto LABEL_58;
      }

      v49 = [UIViewSpringAnimationBehavior behaviorWithDampingRatio:1.0 response:0.4];
      v94[0] = MEMORY[0x1E69E9820];
      v94[1] = 3221225472;
      v94[2] = __80___UIContextMenuView__displayMenu_inPlaceOfMenu_updateType_alongsideAnimations___block_invoke;
      v94[3] = &unk_1E70F4178;
      v95 = v73;
      v96 = 0;
      [UIView _animateUsingSpringBehavior:v49 tracking:1 animations:v94 completion:0];

      v50 = v95;
      goto LABEL_57;
    case 1uLL:
      v43 = [(_UIContextMenuView *)self layout];
      [v43 navigateDownFromNode:v17 toNode:v16 alongsideAnimations:v73 completion:0];
      break;
    case 2uLL:
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __80___UIContextMenuView__displayMenu_inPlaceOfMenu_updateType_alongsideAnimations___block_invoke_3;
      aBlock[3] = &unk_1E70F3FD8;
      aBlock[4] = self;
      v43 = _Block_copy(aBlock);
      v44 = [(_UIContextMenuView *)self layout];
      [v44 navigateUpFromNode:v17 toNode:v16 alongsideAnimations:v73 completion:v43];

      break;
    default:
      goto LABEL_58;
  }

LABEL_58:
  v59 = [(_UIContextMenuView *)self submenus];
  v60 = [v59 current];

  if (v60)
  {
    if (!v42)
    {
      v61 = [(UIView *)self _focusSystem];
      v62 = v61;
      if (v61)
      {
        [v61 _startDeferringFocusIfSupported];
      }

      else
      {
        [(_UIContextMenuView *)self setWantsFocusDeferralIfSupported:1];
      }
    }

    v63 = [(UIView *)self _focusSystem];
    [v63 setNeedsFocusUpdate];

    [(_UIContextMenuView *)self setRetainHighlightOnMenuNavigation:0];
    v64 = [MEMORY[0x1E695DF00] now];
    [(_UIContextMenuView *)self setAppearanceDate:v64];
  }

  v65 = [(_UIContextMenuView *)self selectionGestureRecognizer];
  v66 = [(UIGestureRecognizer *)v65 _isActive];

  if (v66)
  {
    v67 = [UIApp _gestureEnvironment];
    [(UIGestureEnvironment *)v67 _performTouchContinuationWithOverrideHitTestedView:?];
  }
}

- (id)_newListViewWithMenu:(id)a3 position:(unint64_t)a4
{
  v6 = a3;
  v7 = ([v6 metadata] & 0x10000) != 0 && -[_UIContextMenuView hierarchyStyle](self, "hierarchyStyle") == 2;
  v8 = [v6 metadata];
  v9 = [v6 metadata];
  if (([v6 options] & 0x100) != 0)
  {
    if (_UIApplicationProcessIsSpringBoard() & 1) != 0 || (_UIApplicationProcessIsUIKitester())
    {
      IsOverlayUI = 1;
    }

    else
    {
      IsOverlayUI = _UIApplicationProcessIsOverlayUI();
    }
  }

  else
  {
    IsOverlayUI = 0;
  }

  v11 = [(UIView *)self traitCollection];
  v12 = [v11 userInterfaceIdiom];
  v13 = _UIContextMenuGetPlatformMetrics(v12);
  [v13 defaultMenuWidth];
  v15 = v14;
  if (IsOverlayUI)
  {
    [v13 keyboardShortcutsWidthExtension];
    v15 = v15 + v16;
  }

  v17 = [v13 leadingIndentationContributesToWidth];
  v18 = 0.0;
  v19 = 0.0;
  if ((v8 & 0x100) != 0 && v17)
  {
    v20 = _UIContextMenuGetPlatformMetrics(v12);
    [v20 leadingIndentationWidth];
    v19 = v21;
  }

  v22 = v15 + v19;
  if (v7)
  {
    v23 = _UIContextMenuGetPlatformMetrics(v12);
    [v23 menuGutterWidth];
    v18 = v24;
  }

  v25 = v22 + v18;
  if ((v9 & 0x100000000) != 0)
  {
    [v13 largePaletteWidthExtension];
    v25 = v25 + v26;
  }

  v27 = [[_UIContextMenuListView alloc] initWithFrame:0.0, 0.0, v25, 44.0];
  v28 = [(_UIContextMenuView *)self showsShadow];
  v29 = 1.0;
  if (!v28)
  {
    v29 = 0.0;
  }

  [(_UIContextMenuListView *)v27 setShadowAlpha:v29];
  [(_UIContextMenuListView *)v27 setParentHierarchyStyle:[(_UIContextMenuView *)self hierarchyStyle]];
  [(_UIContextMenuListView *)v27 setPosition:a4];
  [(_UIContextMenuListView *)v27 setReversesActionOrder:[(_UIContextMenuView *)self reversesActionOrder]];
  [(_UIContextMenuView *)self visibleContentSize];
  [(_UIContextMenuListView *)v27 setVisibleContentSize:?];
  [(UIView *)self anchorPoint];
  [(UIView *)v27 setAnchorPoint:?];
  [(_UIContextMenuListView *)v27 setAllowsKeyboardShortcuts:IsOverlayUI];
  if (([v6 options] & 0x400) != 0)
  {
    if (_UIApplicationProcessIsSpringBoard() & 1) != 0 || (_UIApplicationProcessIsUIKitester())
    {
      v30 = 1;
    }

    else
    {
      v30 = _UIApplicationProcessIsOverlayUI();
    }
  }

  else
  {
    v30 = 0;
  }

  [(_UIContextMenuListView *)v27 setAllowsAlternates:v30];
  [(_UIContextMenuListView *)v27 setDisplayedMenu:v6];
  [(_UIContextMenuListView *)v27 setAllowsBackgroundViewInteraction:[(_UIContextMenuView *)self allowsBackgroundViewInteraction]];
  [(_UIContextMenuListView *)v27 setShouldEnableTypeSelect:[(_UIContextMenuView *)self shouldEnableTypeSelect]];
  v31 = [(_UIContextMenuView *)self preferredMenuMaterial];
  [(_UIContextMenuListView *)v27 setPreferredMenuMaterial:v31];

  if (_UIInternalPreferencesRevisionOnce != -1)
  {
    dispatch_once(&_UIInternalPreferencesRevisionOnce, &__block_literal_global_5_11);
  }

  v32 = _UIInternalPreferencesRevisionVar;
  if (_UIInternalPreferencesRevisionVar >= 1)
  {
    v34 = _UIInternalPreference_ClickUIDebugEnabled;
    if (_UIInternalPreferencesRevisionVar != _UIInternalPreference_ClickUIDebugEnabled)
    {
      while (v32 >= v34)
      {
        _UIInternalPreferenceSync(v32, &_UIInternalPreference_ClickUIDebugEnabled, @"ClickUIDebugEnabled", _UIInternalPreferenceUpdateBool);
        v34 = _UIInternalPreference_ClickUIDebugEnabled;
        if (v32 == _UIInternalPreference_ClickUIDebugEnabled)
        {
          goto LABEL_30;
        }
      }

      if (byte_1EA95E0FC)
      {
        v35 = [(UIView *)v27 layer];
        [v35 setBorderWidth:1.0];

        v36 = +[UIColor blueColor];
        v37 = [v36 CGColor];
        v38 = [(UIView *)v27 layer];
        [v38 setBorderColor:v37];
      }
    }
  }

LABEL_30:

  return v27;
}

- (void)_updateSelectionGestureAllowableMovementForGestureBeginningAtIndexPath:(id)a3
{
  v10 = a3;
  v4 = 10.0;
  v5 = 10.0;
  if ([(_UIContextMenuView *)self scrubbingEnabled])
  {
    v6 = [(_UIContextMenuView *)self currentListView];
    [v6 selectionGestureAllowableMovementForGestureBeginningAtIndexPath:v10];
    v4 = v7;
    v5 = v8;
  }

  v9 = [(_UIContextMenuView *)self selectionGestureRecognizer];
  [v9 setAllowableMovement:{v4, v5}];
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = [(_UIContextMenuView *)self selectionGestureRecognizer];

  v12 = 1;
  if (v5 == v4)
  {
    [v4 locationInView:self];
    v7 = v6;
    v9 = v8;
    v10 = [(UIGestureRecognizer *)v4 _activeTouchesEvent];
    v11 = [(_UIContextMenuView *)self hitTest:v10 withEvent:v7, v9];

    objc_opt_class();
    LOBYTE(v10) = objc_opt_isKindOfClass();

    if (v10)
    {
      v12 = 0;
    }
  }

  return v12;
}

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(_UIContextMenuView *)self selectionGestureRecognizer];

  if (v8 == v7)
  {
    v10 = [v6 view];
    v9 = [v10 isDescendantOfView:self];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)gestureRecognizer:(id)a3 shouldRequireFailureOfGestureRecognizer:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(_UIContextMenuView *)self selectionGestureRecognizer];

  if (v8 == v7)
  {
    v10 = [(_UIContextMenuView *)self selectionDelayGestureRecognizer];

    if (v10 == v6)
    {
      LOBYTE(v9) = 1;
    }

    else
    {
      v11 = [(_UIContextMenuView *)self currentListView];
      v12 = [v11 collectionView];

      v13 = [v6 view];
      v14 = v13;
      if (v13 == v12 || ![v13 isDescendantOfView:v12])
      {
        LOBYTE(v9) = 0;
      }

      else
      {
        v9 = [v6 _isGestureType:9] ^ 1;
      }
    }
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

- (void)_handleSelectionForElement:(id)a3
{
  v4 = a3;
  v5 = [(_UIContextMenuView *)self currentListView];
  v6 = [v5 displayedMenu];
  v7 = [v4 isEqual:v6];

  if (v7)
  {
    v8 = [(_UIContextMenuView *)self submenus];
    v9 = [v8 current];
    v10 = [v9 previous];
    v11 = [v10 menu];

    v4 = v9;
LABEL_5:

    v4 = v11;
    goto LABEL_6;
  }

  if ([v5 allowsAlternates])
  {
    v8 = +[_UIContextMenuModifierKeyService sharedService];
    v11 = _UIMenuElementAlternateForModifierFlags(v4, [v8 currentModifierFlags]);
    goto LABEL_5;
  }

LABEL_6:
  if ([v4 _canBeHighlighted])
  {
    [(_UIContextMenuView *)self _performActionForElement:v4];
    if ([v4 _isLeaf])
    {
      if ([v4 keepsMenuPresented])
      {
        v12 = [(_UIContextMenuView *)self currentListView];
        v13 = [v12 highlightedIndexPath];

        if (v13)
        {
          v14 = MEMORY[0x1E695DFF0];
          v16 = MEMORY[0x1E69E9820];
          v17 = 3221225472;
          v18 = __49___UIContextMenuView__handleSelectionForElement___block_invoke;
          v19 = &unk_1E70F4050;
          v20 = v5;
          v21 = v13;
          v15 = [v14 scheduledTimerWithTimeInterval:0 repeats:&v16 block:0.1];
          [(_UIContextMenuView *)self setAutoUnhighlightTimer:v15, v16, v17, v18, v19];
        }
      }
    }
  }
}

- (void)_handleSelectionGesture:(id)a3
{
  v4 = a3;
  v5 = [(_UIContextMenuView *)self currentListView];
  [v4 locationInView:v5];
  v6 = [v5 indexPathForItemAtPoint:?];
  v7 = [v4 state];
  v8 = v7 != 1;
  if (v7 == 1)
  {
    v9 = [(_UIContextMenuView *)self autoUnhighlightTimer];
    [v9 invalidate];

    [(_UIContextMenuView *)self setAutoUnhighlightTimer:0];
    [(_UIContextMenuView *)self _updateSelectionGestureAllowableMovementForGestureBeginningAtIndexPath:v6];
    v10 = [(_UIContextMenuView *)self feedbackGenerator];
    [v4 locationInView:v5];
    [v10 userInteractionStartedAtLocation:?];
  }

  v11 = [v4 buttonMask];
  v12 = [v5 highlightedIndexPath];
  v13 = [v4 state];
  if (v12)
  {
    v15 = v13 == 3 && v11 != 2;
    if ([v4 state] > 2)
    {
      if (v15)
      {
        v8 = 0;
        v15 = 1;
LABEL_20:
        v23 = [(_UIContextMenuView *)self feedbackGenerator:v34];
        [v4 locationInView:v5];
        [v23 userInteractionEndedAtLocation:?];

        [(_UIContextMenuView *)self setUnselectableIndexPath:0];
        goto LABEL_22;
      }

LABEL_14:

      if (v11 != 2)
      {
        v40 = 0;
        v41 = &v40;
        v42 = 0x3032000000;
        v43 = __Block_byref_object_copy__7;
        v44 = __Block_byref_object_dispose__7;
        v45 = 0;
        v16 = [(_UIContextMenuView *)self submenus];
        v34 = MEMORY[0x1E69E9820];
        v35 = 3221225472;
        v36 = __46___UIContextMenuView__handleSelectionGesture___block_invoke;
        v37 = &unk_1E70F4078;
        v38 = v4;
        v39 = &v40;
        [v16 reverseEnumerateNodes:&v34];

        v17 = v41[5];
        if (v17)
        {
          v18 = [(_UIContextMenuView *)self currentListView:v34];

          if (v17 != v18)
          {
            v19 = [(_UIContextMenuView *)self submenus];
            v20 = [v19 current];
            v21 = [v20 previous];
            v22 = [v21 menu];
            [(_UIContextMenuView *)self _performActionForElement:v22];
          }
        }

        _Block_object_dispose(&v40, 8);
      }

      v15 = 0;
      v6 = 0;
      goto LABEL_20;
    }
  }

  else
  {
    if (v13 > 2)
    {
      goto LABEL_14;
    }

    v15 = 0;
  }

LABEL_22:
  v24 = [(_UIContextMenuView *)self currentListView];

  if (v5 == v24)
  {
    v25 = [v4 _allActiveTouches];
    v26 = [v25 anyObject];
    v27 = [(_UIContextMenuView *)self _touchSupportsAutoNavigation:v26];

    [v4 locationInView:v5];
    [(_UIContextMenuView *)self _setHighlightedIndexPath:v6 playFeedback:v8 atLocation:v27 allowAutoNavigation:?];
    if (!v15)
    {
      goto LABEL_30;
    }
  }

  else if (!v15)
  {
    goto LABEL_30;
  }

  v28 = [v5 elementAtIndexPath:v12];
  v29 = [(UIGestureRecognizer *)v4 _activeTouchesEvent];
  if (v29)
  {
    v30 = v29;
    v31 = [v28 _acceptBoolMenuVisit:0 commandVisit:&__block_literal_global_14 actionVisit:&__block_literal_global_104];

    if (v31)
    {
      v32 = [(UIGestureRecognizer *)v4 _activeTouchesEvent];
      v33 = [v32 _authenticationMessage];
      [UIPasteboard _attemptAuthenticationWithMessage:v33];
    }
  }

  [(_UIContextMenuView *)self _handleSelectionForElement:v28];

LABEL_30:
}

- (void)_handleHoverGestureRecognizer:(id)a3
{
  v4 = a3;
  if ([v4 state] > 2)
  {
    v7 = 0;
  }

  else
  {
    v5 = [(_UIContextMenuView *)self autoUnhighlightTimer];
    [v5 invalidate];

    [(_UIContextMenuView *)self setAutoUnhighlightTimer:0];
    v6 = [(_UIContextMenuView *)self currentListView];
    [v4 locationInView:v6];
    v7 = [v6 indexPathForItemAtPoint:?];
    v8 = [(_UIContextMenuView *)self hoverVelocityIntegrator];

    if (!v8)
    {
      v9 = objc_opt_new();
      [(_UIContextMenuView *)self setHoverVelocityIntegrator:v9];

      v10 = [(_UIContextMenuView *)self hoverVelocityIntegrator];
      [v10 setMinimumRequiredMovement:1.0];
    }

    v11 = [(_UIContextMenuView *)self hoverVelocityIntegrator];
    [v4 locationInView:self];
    [v11 addSample:?];
  }

  if ([(_UIContextMenuView *)self hierarchyStyle]== 2)
  {
    v12 = [UIViewSpringAnimationBehavior behaviorWithDampingRatio:1.0 response:0.4];
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __52___UIContextMenuView__handleHoverGestureRecognizer___block_invoke;
    v19 = &unk_1E70F35B8;
    v20 = v4;
    v21 = self;
    [UIView _animateUsingSpringBehavior:v12 tracking:0 animations:&v16 completion:0];
  }

  v13 = [v4 _allActiveTouches];
  v14 = [v13 anyObject];
  v15 = [(_UIContextMenuView *)self _touchSupportsAutoNavigation:v14];

  [v4 locationInView:self];
  [(_UIContextMenuView *)self _setHighlightedIndexPath:v7 playFeedback:0 atLocation:v15 allowAutoNavigation:?];
}

- (void)_setHighlightedIndexPath:(id)a3 playFeedback:(BOOL)a4 atLocation:(CGPoint)a5 allowAutoNavigation:(BOOL)a6
{
  v6 = a6;
  y = a5.y;
  x = a5.x;
  v9 = a4;
  v36 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = [(_UIContextMenuView *)self currentListView];
  v13 = [v12 highlightedIndexPath];
  v14 = [(_UIContextMenuView *)self selectionGestureRecognizer];
  v15 = [v14 numberOfTouches];

  if ((((v15 != 0) ^ -[_UIContextMenuView hasTrackingTouch](self, "hasTrackingTouch")) & 1) != 0 || ([v11 isEqual:v13] & 1) == 0 && (-[_UIContextMenuView unselectableIndexPath](self, "unselectableIndexPath"), v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v11, "isEqual:", v17), v17, (v18 & 1) == 0))
  {
    [(_UIContextMenuView *)self setHasTrackingTouch:v15 != 0];
    [(_UIContextMenuView *)self _clearAutoNavigationTimer];
    [(_UIContextMenuView *)self setUnselectableIndexPath:0];
    if (v13)
    {
      [v12 unHighlightItemAtIndexPath:v13];
    }

    if (v11)
    {
      v16 = [v12 elementAtIndexPath:v11];
    }

    else
    {
      v16 = 0;
    }

    if ([v16 _canBeHighlighted])
    {
      v30 = v9;
      v19 = [v16 image];
      v20 = _UIImageName(v19);
      v21 = [v20 isEqualToString:@"doc.on.clipboard"];

      if (v21)
      {
        v22 = [(_UIContextMenuView *)self appearanceDate];
        _UIPasteboardAnalyticsReportEvent(@"ContextMenu", v22);
      }

      v23 = v30;
      if (v6 && (v15 || [(_UIContextMenuView *)self hierarchyStyle]== 2))
      {
        v33 = 0u;
        v34 = 0u;
        v31 = 0u;
        v32 = 0u;
        v24 = [(_UIContextMenuView *)self highlightHoverGestureRecognizer];
        v25 = [v24 _allActiveTouches];

        v26 = [v25 countByEnumeratingWithState:&v31 objects:v35 count:16];
        if (v26)
        {
          v27 = *v32;
          while (2)
          {
            for (i = 0; i != v26; ++i)
            {
              if (*v32 != v27)
              {
                objc_enumerationMutation(v25);
              }

              if ([*(*(&v31 + 1) + 8 * i) _isPointerTouch])
              {
                v26 = 1;
                goto LABEL_26;
              }
            }

            v26 = [v25 countByEnumeratingWithState:&v31 objects:v35 count:16];
            if (v26)
            {
              continue;
            }

            break;
          }

LABEL_26:
          v23 = v30;
        }

        [(_UIContextMenuView *)self _setAutoNavigationTimerIfNecessaryForElement:v16 isTrackpadHover:v26];
      }

      [v12 highlightItemAtIndexPath:v11 forHover:v15 == 0 playFeedback:1];
      if (v23)
      {
        v29 = [(_UIContextMenuView *)self feedbackGenerator];
        [v29 selectionChangedAtLocation:{x, y}];
      }
    }
  }
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__7;
  v23 = __Block_byref_object_dispose__7;
  v24 = 0;
  [(UIView *)self bounds];
  v26.x = x;
  v26.y = y;
  if (CGRectContainsPoint(v27, v26))
  {
    v18.receiver = self;
    v18.super_class = _UIContextMenuView;
    v8 = [(UIView *)&v18 hitTest:v7 withEvent:x, y];
    v9 = v20[5];
    v20[5] = v8;
  }

  else
  {
    v10 = [(_UIContextMenuView *)self submenus];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __40___UIContextMenuView_hitTest_withEvent___block_invoke;
    v13[3] = &unk_1E70F40E0;
    v16 = x;
    v17 = y;
    v13[4] = self;
    v15 = &v19;
    v14 = v7;
    [v10 reverseEnumerateNodes:v13];
  }

  v11 = v20[5];
  _Block_object_dispose(&v19, 8);

  return v11;
}

- (void)_setAutoNavigationTimerIfNecessaryForElement:(id)a3 isTrackpadHover:(BOOL)a4
{
  v5 = a3;
  if (([v5 _isLeaf] & 1) == 0)
  {
    objc_initWeak(&location, self);
    if ([(_UIContextMenuView *)self hierarchyStyle]== 1)
    {
      v6 = 0.5;
    }

    else
    {
      v6 = 0.1;
    }

    v7 = MEMORY[0x1E695DFF0];
    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = __83___UIContextMenuView__setAutoNavigationTimerIfNecessaryForElement_isTrackpadHover___block_invoke;
    v12 = &unk_1E70F4108;
    objc_copyWeak(&v15, &location);
    v13 = v5;
    v14 = self;
    v8 = [v7 scheduledTimerWithTimeInterval:0 repeats:&v9 block:v6];
    [(_UIContextMenuView *)self setAutoNavigationTimer:v8, v9, v10, v11, v12];

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }
}

- (void)_clearAutoNavigationTimer
{
  v3 = [(_UIContextMenuView *)self autoNavigationTimer];
  [v3 invalidate];

  [(_UIContextMenuView *)self setAutoNavigationTimer:0];
}

- (void)_setHoverAutoExitTimer
{
  objc_initWeak(&location, self);
  v3 = [(_UIContextMenuView *)self hoverAutoExitTimer];

  if (!v3)
  {
    v4 = MEMORY[0x1E695DFF0];
    v6 = MEMORY[0x1E69E9820];
    v7 = 3221225472;
    v8 = __44___UIContextMenuView__setHoverAutoExitTimer__block_invoke;
    v9 = &unk_1E70F4130;
    objc_copyWeak(&v10, &location);
    v5 = [v4 scheduledTimerWithTimeInterval:0 repeats:&v6 block:0.1];
    [(_UIContextMenuView *)self setHoverAutoExitTimer:v5, v6, v7, v8, v9];

    objc_destroyWeak(&v10);
  }

  objc_destroyWeak(&location);
}

- (void)_clearHoverAutoExitTimer
{
  v3 = [(_UIContextMenuView *)self hoverAutoExitTimer];
  [v3 invalidate];

  [(_UIContextMenuView *)self setHoverAutoExitTimer:0];
}

- (id)preferredFocusEnvironments
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = [(_UIContextMenuView *)self currentListView];
  v5[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];

  return v3;
}

- (id)keyCommands
{
  v7[3] = *MEMORY[0x1E69E9840];
  v2 = __33___UIContextMenuView_keyCommands__block_invoke(@"UIKeyInputEscape", sel__handleEscapeKey_);
  v7[0] = v2;
  v3 = __33___UIContextMenuView_keyCommands__block_invoke(@"UIKeyInputLeftArrow", sel__handleLeftArrowKey_);
  v7[1] = v3;
  v4 = __33___UIContextMenuView_keyCommands__block_invoke(@"UIKeyInputRightArrow", sel__handleRightArrowKey_);
  v7[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:3];

  return v5;
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  v6 = a4;
  if (sel__handleLeftArrowKey_ == a3)
  {
    v8 = [(_UIContextMenuView *)self submenus];
    v9 = [v8 current];
    if ([v9 leftOfParentWhenCascading])
    {
      v7 = 0;
    }

    else
    {
      v13 = [(_UIContextMenuView *)self submenus];
      v14 = [v13 current];
      v15 = [(_UIContextMenuView *)self submenus];
      v16 = [v15 first];
      v7 = v14 != v16;
    }

    goto LABEL_16;
  }

  if (sel__handleRightArrowKey_ == a3)
  {
    v10 = [(_UIContextMenuView *)self currentListView];
    v8 = [v10 highlightedIndexPath];

    if (!v8)
    {
      v7 = 0;
LABEL_17:

      goto LABEL_18;
    }

    v11 = [(_UIContextMenuView *)self currentListView];
    v9 = [v11 elementAtIndexPath:v8];

    if ([v9 _isLeaf])
    {
      LOBYTE(v12) = 0;
    }

    else
    {
      v17 = [(_UIContextMenuView *)self currentListView];
      v18 = [v17 displayedMenu];
      v12 = [v9 isEqual:v18] ^ 1;
    }

    v19 = [(_UIContextMenuView *)self submenus];
    v20 = [v19 current];
    if ([v20 leftOfParentWhenCascading])
    {
      v21 = [(_UIContextMenuView *)self submenus];
      v22 = [v21 current];
      v23 = [(_UIContextMenuView *)self submenus];
      v24 = [v23 first];
      v25 = v22 != v24;
    }

    else
    {
      v25 = 0;
    }

    v7 = v12 | v25;
LABEL_16:

    goto LABEL_17;
  }

  v27.receiver = self;
  v27.super_class = _UIContextMenuView;
  v7 = [(UIView *)&v27 canPerformAction:a3 withSender:v6];
LABEL_18:

  return v7 & 1;
}

- (void)_handleEscapeKey:(id)a3
{
  v4 = [(_UIContextMenuView *)self delegate];
  [v4 didSelectCancelActionInContextMenuView:self];
}

- (void)_selectPreviousMenuIfPossible
{
  v3 = [(_UIContextMenuView *)self submenus];
  v4 = [v3 current];
  v5 = [(_UIContextMenuView *)self submenus];
  v6 = [v5 first];

  if (v4 != v6)
  {
    v7 = [(_UIContextMenuView *)self submenus];
    v8 = [v7 current];
    v9 = [v8 previous];
    v10 = [v9 menu];

    [(_UIContextMenuView *)self setRetainHighlightOnMenuNavigation:1];
    [(_UIContextMenuView *)self _handleSelectionForElement:v10];
  }
}

- (void)_handleRightArrowKey:(id)a3
{
  v4 = [(_UIContextMenuView *)self currentListView];
  v16 = [v4 highlightedIndexPath];

  v5 = v16;
  if (v16)
  {
    v6 = [(_UIContextMenuView *)self currentListView];
    v7 = [v6 elementAtIndexPath:v16];

    if ([v7 _isLeaf] & 1) != 0 || (-[_UIContextMenuView currentListView](self, "currentListView"), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "displayedMenu"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v7, "isEqual:", v9), v9, v8, (v10))
    {
      v11 = [(_UIContextMenuView *)self submenus];
      v12 = [v11 current];
      v13 = [v12 leftOfParentWhenCascading];

      if (v13)
      {
        [(_UIContextMenuView *)self _selectPreviousMenuIfPossible];
      }
    }

    else
    {
      v14 = [(_UIContextMenuView *)self currentListView];
      v15 = [v14 elementAtIndexPath:v16];

      [(_UIContextMenuView *)self setRetainHighlightOnMenuNavigation:1];
      [(_UIContextMenuView *)self _handleSelectionForElement:v15];
    }

    v5 = v16;
  }
}

- (void)_handleMenuPressGesture:(id)a3
{
  v4 = [(_UIContextMenuView *)self delegate];
  [v4 didSelectCancelActionInContextMenuView:self];
}

- (void)_handleSelectPressGesture:(id)a3
{
  v4 = [(_UIContextMenuView *)self currentListView];
  v7 = [v4 highlightedIndexPath];

  if (v7)
  {
    v5 = [(_UIContextMenuView *)self currentListView];
    v6 = [v5 elementAtIndexPath:v7];

    [(_UIContextMenuView *)self setRetainHighlightOnMenuNavigation:1];
    [(_UIContextMenuView *)self _handleSelectionForElement:v6];
  }
}

- (void)disableTypeSelectIfNeeded
{
  v2 = [(_UIContextMenuView *)self submenus];
  [v2 enumerateNodes:&__block_literal_global_126];
}

- (void)_performActionForElement:(id)a3
{
  v4 = a3;
  [(_UIContextMenuView *)self _clearAutoNavigationTimer];
  [(_UIContextMenuView *)self setUnselectableIndexPath:0];
  v5 = [(_UIContextMenuView *)self delegate];
  [v5 contextMenuView:self didSelectElement:v4];
}

- (CGRect)_rectOfNodeParentElement:(id)a3
{
  v4 = a3;
  v5 = [v4 previous];
  v6 = [v5 listView];
  v7 = [v4 menu];

  v8 = [v6 cellForElement:v7];

  v9 = [v8 window];

  if (v9)
  {
    v10 = [v8 superview];
    [v8 frame];
    [v10 convertRect:self toView:?];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
  }

  else
  {
    v12 = *MEMORY[0x1E695F050];
    v14 = *(MEMORY[0x1E695F050] + 8);
    v16 = *(MEMORY[0x1E695F050] + 16);
    v18 = *(MEMORY[0x1E695F050] + 24);
  }

  v19 = v12;
  v20 = v14;
  v21 = v16;
  v22 = v18;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (void)_testing_tapAnAction
{
  v3 = [(_UIContextMenuView *)self currentListView];
  v4 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:0];
  v6 = [v3 elementAtIndexPath:v4];

  v5 = v6;
  if (v6)
  {
    [(_UIContextMenuView *)self _performActionForElement:v6];
    v5 = v6;
  }
}

@end