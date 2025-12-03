@interface _UIContextMenuView
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizer:(id)recognizer shouldRequireFailureOfGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (BOOL)kickstartActionScrubbingWithGesture:(id)gesture;
- (CGRect)_rectOfNodeParentElement:(id)element;
- (CGRect)activeSubmenuFrameInCoordinateSpace:(id)space;
- (CGSize)maxContainerSize;
- (CGSize)preferredContentSizeWithinContainerSize:(CGSize)size;
- (CGSize)visibleContentSize;
- (NSArray)visibleMenus;
- (_UIContextMenuListView)currentListView;
- (_UIContextMenuView)initWithFrame:(CGRect)frame;
- (_UIContextMenuViewDelegate)delegate;
- (double)closestScrollTruncationDetentToHeight:(double)height;
- (id)_newListViewWithMenu:(id)menu position:(unint64_t)position;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (id)hoveredListView;
- (id)keyCommands;
- (id)preferredFocusEnvironments;
- (id)rootListView;
- (void)_clearAutoNavigationTimer;
- (void)_clearHoverAutoExitTimer;
- (void)_displayMenu:(id)menu inPlaceOfMenu:(id)ofMenu updateType:(unint64_t)type alongsideAnimations:(id)animations;
- (void)_handleEscapeKey:(id)key;
- (void)_handleHoverGestureRecognizer:(id)recognizer;
- (void)_handleMenuPressGesture:(id)gesture;
- (void)_handleRightArrowKey:(id)key;
- (void)_handleSelectPressGesture:(id)gesture;
- (void)_handleSelectionForElement:(id)element;
- (void)_handleSelectionGesture:(id)gesture;
- (void)_performActionForElement:(id)element;
- (void)_selectPreviousMenuIfPossible;
- (void)_setAutoNavigationTimerIfNecessaryForElement:(id)element isTrackpadHover:(BOOL)hover;
- (void)_setHighlightedIndexPath:(id)path playFeedback:(BOOL)feedback atLocation:(CGPoint)location allowAutoNavigation:(BOOL)navigation;
- (void)_setHoverAutoExitTimer;
- (void)_testing_tapAnAction;
- (void)_updateSelectionGestureAllowableMovementForGestureBeginningAtIndexPath:(id)path;
- (void)didCompleteMenuAppearanceAnimation;
- (void)didMoveToWindow;
- (void)disableTypeSelectIfNeeded;
- (void)flashScrollIndicators;
- (void)layoutSubviews;
- (void)scrollToFirstSignificantAction;
- (void)setHierarchyStyle:(unint64_t)style;
- (void)setPreferredMenuMaterial:(id)material;
- (void)setReversesActionOrder:(BOOL)order;
- (void)setShowsShadow:(BOOL)shadow;
- (void)setUserInteractionEnabled:(BOOL)enabled;
@end

@implementation _UIContextMenuView

- (_UIContextMenuViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (NSArray)visibleMenus
{
  array = [MEMORY[0x1E695DF70] array];
  submenus = [(_UIContextMenuView *)self submenus];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __34___UIContextMenuView_visibleMenus__block_invoke;
  v7[3] = &unk_1E70F3FB0;
  v5 = array;
  v8 = v5;
  [submenus enumerateNodes:v7];

  return v5;
}

- (_UIContextMenuListView)currentListView
{
  submenus = [(_UIContextMenuView *)self submenus];
  current = [submenus current];
  listView = [current listView];

  return listView;
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = _UIContextMenuView;
  [(UIView *)&v5 layoutSubviews];
  layout = [(_UIContextMenuView *)self layout];
  isComputingPreferredSize = [(_UIContextMenuView *)self isComputingPreferredSize];
  [(_UIContextMenuView *)self maxContainerSize];
  [layout performLayoutForComputingPreferredContentSize:isComputingPreferredSize withMaxContainerSize:?];

  if ([(_UIContextMenuView *)self isComputingPreferredSize])
  {
    [(_UIContextMenuView *)self setIsComputingPreferredSize:0];
  }
}

- (void)didCompleteMenuAppearanceAnimation
{
  [(_UIContextMenuView *)self flashScrollIndicators];
  currentListView = [(_UIContextMenuView *)self currentListView];
  [currentListView didCompleteMenuAppearanceAnimation];
}

- (id)rootListView
{
  submenus = [(_UIContextMenuView *)self submenus];
  first = [submenus first];
  listView = [first listView];

  return listView;
}

- (void)flashScrollIndicators
{
  currentListView = [(_UIContextMenuView *)self currentListView];
  collectionView = [currentListView collectionView];
  [collectionView flashScrollIndicators];
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
    _focusSystem = [(UIView *)self _focusSystem];
    [_focusSystem _startDeferringFocusIfSupported];

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

- (_UIContextMenuView)initWithFrame:(CGRect)frame
{
  v32.receiver = self;
  v32.super_class = _UIContextMenuView;
  v3 = [(UIView *)&v32 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    layer = [(UIView *)v3 layer];
    [layer setAllowsGroupOpacity:0];

    [(UIView *)v4 _setSafeAreaInsetsFrozen:1];
    v6 = [(UIGestureRecognizer *)[_UIContinuousSelectionGestureRecognizer alloc] initWithTarget:v4 action:sel__handleSelectionGesture_];
    [(_UIContextMenuView *)v4 setSelectionGestureRecognizer:v6];

    selectionGestureRecognizer = [(_UIContextMenuView *)v4 selectionGestureRecognizer];
    [selectionGestureRecognizer setName:@"com.apple.UIKit.ContextMenuActionsListSelection"];

    selectionGestureRecognizer2 = [(_UIContextMenuView *)v4 selectionGestureRecognizer];
    [selectionGestureRecognizer2 setDelegate:v4];

    selectionGestureRecognizer3 = [(_UIContextMenuView *)v4 selectionGestureRecognizer];
    [(UIView *)v4 addGestureRecognizer:selectionGestureRecognizer3];

    v10 = [(UIGestureRecognizer *)[_UIContextMenuSelectionDelayGestureRecognizer alloc] initWithTarget:0 action:0];
    [(_UIContextMenuView *)v4 setSelectionDelayGestureRecognizer:v10];

    selectionDelayGestureRecognizer = [(_UIContextMenuView *)v4 selectionDelayGestureRecognizer];
    [selectionDelayGestureRecognizer setName:@"com.apple.UIKit.ContextMenuActionsListSelectionDelay"];

    selectionDelayGestureRecognizer2 = [(_UIContextMenuView *)v4 selectionDelayGestureRecognizer];
    [selectionDelayGestureRecognizer2 setDelegate:v4];

    selectionDelayGestureRecognizer3 = [(_UIContextMenuView *)v4 selectionDelayGestureRecognizer];
    [(UIView *)v4 addGestureRecognizer:selectionDelayGestureRecognizer3];

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

    highlightHoverGestureRecognizer = [(_UIContextMenuView *)v4 highlightHoverGestureRecognizer];
    [highlightHoverGestureRecognizer setName:@"com.apple.UIKit.ContextMenuActionsListHover"];

    highlightHoverGestureRecognizer2 = [(_UIContextMenuView *)v4 highlightHoverGestureRecognizer];
    [highlightHoverGestureRecognizer2 setDelegate:v4];

    highlightHoverGestureRecognizer3 = [(_UIContextMenuView *)v4 highlightHoverGestureRecognizer];
    [(UIView *)v4 addGestureRecognizer:highlightHoverGestureRecognizer3];

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
          layer2 = [(UIView *)v4 layer];
          [layer2 setBorderWidth:1.0];

          v29 = +[UIColor magentaColor];
          cGColor = [v29 CGColor];
          layer3 = [(UIView *)v4 layer];
          [layer3 setBorderColor:cGColor];
        }
      }
    }

LABEL_5:
  }

  return v4;
}

- (void)setUserInteractionEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v7.receiver = self;
  v7.super_class = _UIContextMenuView;
  [(UIView *)&v7 setUserInteractionEnabled:?];
  selectionGestureRecognizer = [(_UIContextMenuView *)self selectionGestureRecognizer];
  [selectionGestureRecognizer setEnabled:enabledCopy];

  highlightHoverGestureRecognizer = [(_UIContextMenuView *)self highlightHoverGestureRecognizer];
  [highlightHoverGestureRecognizer setEnabled:enabledCopy];
}

- (void)setShowsShadow:(BOOL)shadow
{
  if (self->_showsShadow != shadow)
  {
    self->_showsShadow = shadow;
    if (shadow)
    {
      v4 = 1.0;
    }

    else
    {
      v4 = 0.0;
    }

    currentListView = [(_UIContextMenuView *)self currentListView];
    [currentListView setShadowAlpha:v4];
  }
}

- (void)setReversesActionOrder:(BOOL)order
{
  if (self->_reversesActionOrder != order)
  {
    v7[7] = v3;
    v7[8] = v4;
    self->_reversesActionOrder = order;
    submenus = [(_UIContextMenuView *)self submenus];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __45___UIContextMenuView_setReversesActionOrder___block_invoke;
    v7[3] = &unk_1E70F3FB0;
    v7[4] = self;
    [submenus enumerateNodes:v7];
  }
}

- (void)setHierarchyStyle:(unint64_t)style
{
  if (self->_hierarchyStyle != style)
  {
    self->_hierarchyStyle = style;
    v5 = [objc_alloc(objc_opt_class()) initWithMenuView:self];
    [(_UIContextMenuView *)self setLayout:v5];
  }
}

- (void)setPreferredMenuMaterial:(id)material
{
  materialCopy = material;
  if (self->_preferredMenuMaterial != materialCopy)
  {
    objc_storeStrong(&self->_preferredMenuMaterial, material);
    submenus = [(_UIContextMenuView *)self submenus];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __47___UIContextMenuView_setPreferredMenuMaterial___block_invoke;
    v7[3] = &unk_1E70F3FB0;
    v8 = materialCopy;
    [submenus enumerateNodes:v7];
  }
}

- (BOOL)kickstartActionScrubbingWithGesture:(id)gesture
{
  v20 = *MEMORY[0x1E69E9840];
  gestureCopy = gesture;
  selectionGestureRecognizer = [(_UIContextMenuView *)self selectionGestureRecognizer];
  _activeEvents = [gestureCopy _activeEvents];
  if ([_activeEvents count])
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    gestureRecognizers = [(UIView *)self gestureRecognizers];
    v8 = [gestureRecognizers countByEnumeratingWithState:&v15 objects:v19 count:16];
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
            objc_enumerationMutation(gestureRecognizers);
          }

          v12 = *(*(&v15 + 1) + 8 * i);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && ![v12 state])
          {
            [(UIGestureRecognizer *)v12 addTouchesFromGestureRecognizer:gestureCopy];
          }
        }

        v9 = [gestureRecognizers countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }

    if (![selectionGestureRecognizer state])
    {
      [(UIGestureRecognizer *)selectionGestureRecognizer transferTouchesFromGestureRecognizer:gestureCopy];
    }
  }

  v13 = [selectionGestureRecognizer state] > 0;

  return v13;
}

- (void)scrollToFirstSignificantAction
{
  currentListView = [(_UIContextMenuView *)self currentListView];
  [currentListView scrollToFirstSignificantAction];
}

- (CGRect)activeSubmenuFrameInCoordinateSpace:(id)space
{
  spaceCopy = space;
  currentListView = [(_UIContextMenuView *)self currentListView];
  [currentListView frame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  [(UIView *)self convertRect:spaceCopy toCoordinateSpace:v7, v9, v11, v13];
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

- (CGSize)preferredContentSizeWithinContainerSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  [(_UIContextMenuView *)self setMaxContainerSize:?];
  submenus = [(_UIContextMenuView *)self submenus];
  nodes = [submenus nodes];
  v8 = [nodes count];

  if (v8 == 1)
  {
    currentListView = [(_UIContextMenuView *)self currentListView];
    [currentListView preferredContentSizeWithinContainerSize:{width, height}];
    [currentListView setNativeContentSize:?];
    [currentListView nativeContentSize];
  }

  else
  {
    [(_UIContextMenuView *)self setIsComputingPreferredSize:1];
    [(_UIContextMenuView *)self setVisibleContentSize:width, 44.0];
    [(UIView *)self setNeedsLayout];
    [(UIView *)self layoutIfNeeded];
    currentListView = [(_UIContextMenuView *)self layout];
    [currentListView encompassingSize];
  }

  v12 = v10;
  v13 = v11;

  v14 = v12;
  v15 = v13;
  result.height = v15;
  result.width = v14;
  return result;
}

- (double)closestScrollTruncationDetentToHeight:(double)height
{
  [(_UIContextMenuView *)self preferredScrollTruncationDetent];
  if (v5 <= 0.0)
  {
    currentListView = [(_UIContextMenuView *)self currentListView];
    [currentListView closestScrollTruncationDetentToHeight:height];
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
  hoveredNode = [(_UIContextMenuView *)self hoveredNode];
  listView = [hoveredNode listView];

  return listView;
}

- (void)_displayMenu:(id)menu inPlaceOfMenu:(id)ofMenu updateType:(unint64_t)type alongsideAnimations:(id)animations
{
  menuCopy = menu;
  animationsCopy = animations;
  ofMenuCopy = ofMenu;
  submenus = [(_UIContextMenuView *)self submenus];
  v13 = submenus;
  if (ofMenuCopy)
  {
    v14 = ofMenuCopy;
  }

  else
  {
    v14 = menuCopy;
  }

  v15 = [submenus nodeForMenu:v14];

  if (type == 3)
  {
    v16 = v15;
    [v16 setMenu:menuCopy];
    popNode = 0;
    goto LABEL_6;
  }

  departingNode = [(_UIContextMenuView *)self departingNode];
  menu = [departingNode menu];
  v28 = menuCopy;
  v19 = v28;
  if (menu == v28)
  {
  }

  else
  {
    if (!v28 || !menu)
    {

      if (v15)
      {
        goto LABEL_17;
      }

      goto LABEL_47;
    }

    v29 = [menu isEqual:v28];

    if ((v29 & 1) == 0)
    {
      if (v15)
      {
LABEL_17:
        v16 = v15;
        submenus2 = [(_UIContextMenuView *)self submenus];
        popNode = [submenus2 popNode];

        departingNode2 = [(_UIContextMenuView *)self departingNode];
        listView = [departingNode2 listView];
        [listView removeFromSuperview];

        [(_UIContextMenuView *)self setDepartingNode:popNode];
        v72 = 0;
        type = 2;
        goto LABEL_32;
      }

LABEL_47:
      submenus3 = [(_UIContextMenuView *)self submenus];
      popNode = [submenus3 current];

      departingNode3 = [(_UIContextMenuView *)self departingNode];
      listView2 = [departingNode3 listView];
      [listView2 removeFromSuperview];

      [(_UIContextMenuView *)self setDepartingNode:0];
      v16 = 0;
      goto LABEL_6;
    }
  }

  departingNode4 = [(_UIContextMenuView *)self departingNode];
  submenus4 = [(_UIContextMenuView *)self submenus];
  popNode = [submenus4 current];

  [(_UIContextMenuView *)self setDepartingNode:0];
  v16 = 0;
  if (departingNode4)
  {
    v72 = 0;
    typeCopy2 = type;
    v16 = departingNode4;
LABEL_30:
    submenus5 = [(_UIContextMenuView *)self submenus];
    [submenus5 addNode:v16];

    goto LABEL_31;
  }

LABEL_6:
  delegate = [(_UIContextMenuView *)self delegate];
  v19 = [delegate contextMenuView:self willDisplayMenu:menuCopy];

  if (v19)
  {
    typeCopy2 = type;
    if (([v19 metadata] & 0x1000000) != 0)
    {
LABEL_22:
      v72 = 0;
      if (type == 3)
      {
LABEL_31:
        type = typeCopy2;
        goto LABEL_32;
      }

      goto LABEL_23;
    }
  }

  submenus6 = [(_UIContextMenuView *)self submenus];
  first = [submenus6 first];

  if (v15 == first)
  {
    typeCopy2 = 5;
    goto LABEL_22;
  }

  if (!v15)
  {

    popNode = 0;
    v72 = 0;
    goto LABEL_32;
  }

  submenus7 = [(_UIContextMenuView *)self submenus];
  v72 = [submenus7 removeNode:v15];

  submenus8 = [(_UIContextMenuView *)self submenus];
  current = [submenus8 current];

  popNode = 0;
  typeCopy2 = 4;
  v16 = current;
  if (type != 3)
  {
LABEL_23:
    if (!v16)
    {
      visibleMenus = [(_UIContextMenuView *)self visibleMenus];
      v36 = [visibleMenus count];

      v37 = 0;
      if (typeCopy2 != 3 && v36)
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

  type = 4;
  v16 = current;
LABEL_32:
  listView3 = [v16 listView];
  listView4 = [popNode listView];
  retainHighlightOnMenuNavigation = [(_UIContextMenuView *)self retainHighlightOnMenuNavigation];
  [listView4 setAllowsFocus:0];
  [listView3 setAllowsFocus:1];
  if (type != 5 && listView4 == listView3)
  {
    goto LABEL_58;
  }

  if (self)
  {
    [(_UIContextMenuView *)self setPreferredScrollTruncationDetent:0.0];
  }

  if (type > 2)
  {
    if (type == 3)
    {
      collectionView = [listView3 collectionView];
      highlightedIndexPath = [listView3 highlightedIndexPath];
      v52 = [listView3 elementAtIndexPath:highlightedIndexPath];

      [listView3 willStartInPlaceMenuTransition];
      v90[0] = MEMORY[0x1E69E9820];
      v90[1] = 3221225472;
      v90[2] = __80___UIContextMenuView__displayMenu_inPlaceOfMenu_updateType_alongsideAnimations___block_invoke_4;
      v90[3] = &unk_1E70F35B8;
      v53 = listView3;
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
      v88 = animationsCopy;
      v89 = 3;
      v86 = v53;
      v55 = collectionView;
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
      if (type != 4)
      {
        if (type == 5 && animationsCopy)
        {
          (*(animationsCopy + 2))(animationsCopy, 5);
        }

        goto LABEL_58;
      }

      v58 = [UIViewSpringAnimationBehavior behaviorWithDampingRatio:1.0 response:0.32];
      v76[0] = MEMORY[0x1E69E9820];
      v76[1] = 3221225472;
      v76[2] = __80___UIContextMenuView__displayMenu_inPlaceOfMenu_updateType_alongsideAnimations___block_invoke_9;
      v76[3] = &unk_1E70F4028;
      v80 = animationsCopy;
      v81 = 4;
      v77 = listView3;
      v78 = v72;
      selfCopy = self;
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

  switch(type)
  {
    case 0uLL:
      traitCollection = [(UIView *)self traitCollection];
      [v16 setLeftOfParentWhenCascading:{objc_msgSend(traitCollection, "layoutDirection") == 1}];

      [(UIView *)self addSubview:listView3];
      if (!animationsCopy)
      {
        goto LABEL_58;
      }

      v49 = [UIViewSpringAnimationBehavior behaviorWithDampingRatio:1.0 response:0.4];
      v94[0] = MEMORY[0x1E69E9820];
      v94[1] = 3221225472;
      v94[2] = __80___UIContextMenuView__displayMenu_inPlaceOfMenu_updateType_alongsideAnimations___block_invoke;
      v94[3] = &unk_1E70F4178;
      v95 = animationsCopy;
      v96 = 0;
      [UIView _animateUsingSpringBehavior:v49 tracking:1 animations:v94 completion:0];

      v50 = v95;
      goto LABEL_57;
    case 1uLL:
      layout = [(_UIContextMenuView *)self layout];
      [layout navigateDownFromNode:popNode toNode:v16 alongsideAnimations:animationsCopy completion:0];
      break;
    case 2uLL:
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __80___UIContextMenuView__displayMenu_inPlaceOfMenu_updateType_alongsideAnimations___block_invoke_3;
      aBlock[3] = &unk_1E70F3FD8;
      aBlock[4] = self;
      layout = _Block_copy(aBlock);
      layout2 = [(_UIContextMenuView *)self layout];
      [layout2 navigateUpFromNode:popNode toNode:v16 alongsideAnimations:animationsCopy completion:layout];

      break;
    default:
      goto LABEL_58;
  }

LABEL_58:
  submenus9 = [(_UIContextMenuView *)self submenus];
  current2 = [submenus9 current];

  if (current2)
  {
    if (!retainHighlightOnMenuNavigation)
    {
      _focusSystem = [(UIView *)self _focusSystem];
      v62 = _focusSystem;
      if (_focusSystem)
      {
        [_focusSystem _startDeferringFocusIfSupported];
      }

      else
      {
        [(_UIContextMenuView *)self setWantsFocusDeferralIfSupported:1];
      }
    }

    _focusSystem2 = [(UIView *)self _focusSystem];
    [_focusSystem2 setNeedsFocusUpdate];

    [(_UIContextMenuView *)self setRetainHighlightOnMenuNavigation:0];
    v64 = [MEMORY[0x1E695DF00] now];
    [(_UIContextMenuView *)self setAppearanceDate:v64];
  }

  selectionGestureRecognizer = [(_UIContextMenuView *)self selectionGestureRecognizer];
  _isActive = [(UIGestureRecognizer *)selectionGestureRecognizer _isActive];

  if (_isActive)
  {
    _gestureEnvironment = [UIApp _gestureEnvironment];
    [(UIGestureEnvironment *)_gestureEnvironment _performTouchContinuationWithOverrideHitTestedView:?];
  }
}

- (id)_newListViewWithMenu:(id)menu position:(unint64_t)position
{
  menuCopy = menu;
  v7 = ([menuCopy metadata] & 0x10000) != 0 && -[_UIContextMenuView hierarchyStyle](self, "hierarchyStyle") == 2;
  metadata = [menuCopy metadata];
  metadata2 = [menuCopy metadata];
  if (([menuCopy options] & 0x100) != 0)
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

  traitCollection = [(UIView *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];
  v13 = _UIContextMenuGetPlatformMetrics(userInterfaceIdiom);
  [v13 defaultMenuWidth];
  v15 = v14;
  if (IsOverlayUI)
  {
    [v13 keyboardShortcutsWidthExtension];
    v15 = v15 + v16;
  }

  leadingIndentationContributesToWidth = [v13 leadingIndentationContributesToWidth];
  v18 = 0.0;
  v19 = 0.0;
  if ((metadata & 0x100) != 0 && leadingIndentationContributesToWidth)
  {
    v20 = _UIContextMenuGetPlatformMetrics(userInterfaceIdiom);
    [v20 leadingIndentationWidth];
    v19 = v21;
  }

  v22 = v15 + v19;
  if (v7)
  {
    v23 = _UIContextMenuGetPlatformMetrics(userInterfaceIdiom);
    [v23 menuGutterWidth];
    v18 = v24;
  }

  v25 = v22 + v18;
  if ((metadata2 & 0x100000000) != 0)
  {
    [v13 largePaletteWidthExtension];
    v25 = v25 + v26;
  }

  v27 = [[_UIContextMenuListView alloc] initWithFrame:0.0, 0.0, v25, 44.0];
  showsShadow = [(_UIContextMenuView *)self showsShadow];
  v29 = 1.0;
  if (!showsShadow)
  {
    v29 = 0.0;
  }

  [(_UIContextMenuListView *)v27 setShadowAlpha:v29];
  [(_UIContextMenuListView *)v27 setParentHierarchyStyle:[(_UIContextMenuView *)self hierarchyStyle]];
  [(_UIContextMenuListView *)v27 setPosition:position];
  [(_UIContextMenuListView *)v27 setReversesActionOrder:[(_UIContextMenuView *)self reversesActionOrder]];
  [(_UIContextMenuView *)self visibleContentSize];
  [(_UIContextMenuListView *)v27 setVisibleContentSize:?];
  [(UIView *)self anchorPoint];
  [(UIView *)v27 setAnchorPoint:?];
  [(_UIContextMenuListView *)v27 setAllowsKeyboardShortcuts:IsOverlayUI];
  if (([menuCopy options] & 0x400) != 0)
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
  [(_UIContextMenuListView *)v27 setDisplayedMenu:menuCopy];
  [(_UIContextMenuListView *)v27 setAllowsBackgroundViewInteraction:[(_UIContextMenuView *)self allowsBackgroundViewInteraction]];
  [(_UIContextMenuListView *)v27 setShouldEnableTypeSelect:[(_UIContextMenuView *)self shouldEnableTypeSelect]];
  preferredMenuMaterial = [(_UIContextMenuView *)self preferredMenuMaterial];
  [(_UIContextMenuListView *)v27 setPreferredMenuMaterial:preferredMenuMaterial];

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
        layer = [(UIView *)v27 layer];
        [layer setBorderWidth:1.0];

        v36 = +[UIColor blueColor];
        cGColor = [v36 CGColor];
        layer2 = [(UIView *)v27 layer];
        [layer2 setBorderColor:cGColor];
      }
    }
  }

LABEL_30:

  return v27;
}

- (void)_updateSelectionGestureAllowableMovementForGestureBeginningAtIndexPath:(id)path
{
  pathCopy = path;
  v4 = 10.0;
  v5 = 10.0;
  if ([(_UIContextMenuView *)self scrubbingEnabled])
  {
    currentListView = [(_UIContextMenuView *)self currentListView];
    [currentListView selectionGestureAllowableMovementForGestureBeginningAtIndexPath:pathCopy];
    v4 = v7;
    v5 = v8;
  }

  selectionGestureRecognizer = [(_UIContextMenuView *)self selectionGestureRecognizer];
  [selectionGestureRecognizer setAllowableMovement:{v4, v5}];
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  selectionGestureRecognizer = [(_UIContextMenuView *)self selectionGestureRecognizer];

  v12 = 1;
  if (selectionGestureRecognizer == beginCopy)
  {
    [beginCopy locationInView:self];
    v7 = v6;
    v9 = v8;
    _activeTouchesEvent = [(UIGestureRecognizer *)beginCopy _activeTouchesEvent];
    v11 = [(_UIContextMenuView *)self hitTest:_activeTouchesEvent withEvent:v7, v9];

    objc_opt_class();
    LOBYTE(_activeTouchesEvent) = objc_opt_isKindOfClass();

    if (_activeTouchesEvent)
    {
      v12 = 0;
    }
  }

  return v12;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  gestureRecognizerCopy = gestureRecognizer;
  recognizerCopy = recognizer;
  selectionGestureRecognizer = [(_UIContextMenuView *)self selectionGestureRecognizer];

  if (selectionGestureRecognizer == recognizerCopy)
  {
    view = [gestureRecognizerCopy view];
    v9 = [view isDescendantOfView:self];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRequireFailureOfGestureRecognizer:(id)gestureRecognizer
{
  gestureRecognizerCopy = gestureRecognizer;
  recognizerCopy = recognizer;
  selectionGestureRecognizer = [(_UIContextMenuView *)self selectionGestureRecognizer];

  if (selectionGestureRecognizer == recognizerCopy)
  {
    selectionDelayGestureRecognizer = [(_UIContextMenuView *)self selectionDelayGestureRecognizer];

    if (selectionDelayGestureRecognizer == gestureRecognizerCopy)
    {
      LOBYTE(v9) = 1;
    }

    else
    {
      currentListView = [(_UIContextMenuView *)self currentListView];
      collectionView = [currentListView collectionView];

      view = [gestureRecognizerCopy view];
      v14 = view;
      if (view == collectionView || ![view isDescendantOfView:collectionView])
      {
        LOBYTE(v9) = 0;
      }

      else
      {
        v9 = [gestureRecognizerCopy _isGestureType:9] ^ 1;
      }
    }
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

- (void)_handleSelectionForElement:(id)element
{
  elementCopy = element;
  currentListView = [(_UIContextMenuView *)self currentListView];
  displayedMenu = [currentListView displayedMenu];
  v7 = [elementCopy isEqual:displayedMenu];

  if (v7)
  {
    submenus = [(_UIContextMenuView *)self submenus];
    current = [submenus current];
    previous = [current previous];
    menu = [previous menu];

    elementCopy = current;
LABEL_5:

    elementCopy = menu;
    goto LABEL_6;
  }

  if ([currentListView allowsAlternates])
  {
    submenus = +[_UIContextMenuModifierKeyService sharedService];
    menu = _UIMenuElementAlternateForModifierFlags(elementCopy, [submenus currentModifierFlags]);
    goto LABEL_5;
  }

LABEL_6:
  if ([elementCopy _canBeHighlighted])
  {
    [(_UIContextMenuView *)self _performActionForElement:elementCopy];
    if ([elementCopy _isLeaf])
    {
      if ([elementCopy keepsMenuPresented])
      {
        currentListView2 = [(_UIContextMenuView *)self currentListView];
        highlightedIndexPath = [currentListView2 highlightedIndexPath];

        if (highlightedIndexPath)
        {
          v14 = MEMORY[0x1E695DFF0];
          v16 = MEMORY[0x1E69E9820];
          v17 = 3221225472;
          v18 = __49___UIContextMenuView__handleSelectionForElement___block_invoke;
          v19 = &unk_1E70F4050;
          v20 = currentListView;
          v21 = highlightedIndexPath;
          v15 = [v14 scheduledTimerWithTimeInterval:0 repeats:&v16 block:0.1];
          [(_UIContextMenuView *)self setAutoUnhighlightTimer:v15, v16, v17, v18, v19];
        }
      }
    }
  }
}

- (void)_handleSelectionGesture:(id)gesture
{
  gestureCopy = gesture;
  currentListView = [(_UIContextMenuView *)self currentListView];
  [gestureCopy locationInView:currentListView];
  v6 = [currentListView indexPathForItemAtPoint:?];
  state = [gestureCopy state];
  v8 = state != 1;
  if (state == 1)
  {
    autoUnhighlightTimer = [(_UIContextMenuView *)self autoUnhighlightTimer];
    [autoUnhighlightTimer invalidate];

    [(_UIContextMenuView *)self setAutoUnhighlightTimer:0];
    [(_UIContextMenuView *)self _updateSelectionGestureAllowableMovementForGestureBeginningAtIndexPath:v6];
    feedbackGenerator = [(_UIContextMenuView *)self feedbackGenerator];
    [gestureCopy locationInView:currentListView];
    [feedbackGenerator userInteractionStartedAtLocation:?];
  }

  buttonMask = [gestureCopy buttonMask];
  highlightedIndexPath = [currentListView highlightedIndexPath];
  state2 = [gestureCopy state];
  if (highlightedIndexPath)
  {
    v15 = state2 == 3 && buttonMask != 2;
    if ([gestureCopy state] > 2)
    {
      if (v15)
      {
        v8 = 0;
        v15 = 1;
LABEL_20:
        v23 = [(_UIContextMenuView *)self feedbackGenerator:v34];
        [gestureCopy locationInView:currentListView];
        [v23 userInteractionEndedAtLocation:?];

        [(_UIContextMenuView *)self setUnselectableIndexPath:0];
        goto LABEL_22;
      }

LABEL_14:

      if (buttonMask != 2)
      {
        v40 = 0;
        v41 = &v40;
        v42 = 0x3032000000;
        v43 = __Block_byref_object_copy__7;
        v44 = __Block_byref_object_dispose__7;
        v45 = 0;
        submenus = [(_UIContextMenuView *)self submenus];
        v34 = MEMORY[0x1E69E9820];
        v35 = 3221225472;
        v36 = __46___UIContextMenuView__handleSelectionGesture___block_invoke;
        v37 = &unk_1E70F4078;
        v38 = gestureCopy;
        v39 = &v40;
        [submenus reverseEnumerateNodes:&v34];

        v17 = v41[5];
        if (v17)
        {
          v18 = [(_UIContextMenuView *)self currentListView:v34];

          if (v17 != v18)
          {
            submenus2 = [(_UIContextMenuView *)self submenus];
            current = [submenus2 current];
            previous = [current previous];
            menu = [previous menu];
            [(_UIContextMenuView *)self _performActionForElement:menu];
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
    if (state2 > 2)
    {
      goto LABEL_14;
    }

    v15 = 0;
  }

LABEL_22:
  currentListView2 = [(_UIContextMenuView *)self currentListView];

  if (currentListView == currentListView2)
  {
    _allActiveTouches = [gestureCopy _allActiveTouches];
    anyObject = [_allActiveTouches anyObject];
    v27 = [(_UIContextMenuView *)self _touchSupportsAutoNavigation:anyObject];

    [gestureCopy locationInView:currentListView];
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

  v28 = [currentListView elementAtIndexPath:highlightedIndexPath];
  _activeTouchesEvent = [(UIGestureRecognizer *)gestureCopy _activeTouchesEvent];
  if (_activeTouchesEvent)
  {
    v30 = _activeTouchesEvent;
    v31 = [v28 _acceptBoolMenuVisit:0 commandVisit:&__block_literal_global_14 actionVisit:&__block_literal_global_104];

    if (v31)
    {
      _activeTouchesEvent2 = [(UIGestureRecognizer *)gestureCopy _activeTouchesEvent];
      _authenticationMessage = [_activeTouchesEvent2 _authenticationMessage];
      [UIPasteboard _attemptAuthenticationWithMessage:_authenticationMessage];
    }
  }

  [(_UIContextMenuView *)self _handleSelectionForElement:v28];

LABEL_30:
}

- (void)_handleHoverGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  if ([recognizerCopy state] > 2)
  {
    v7 = 0;
  }

  else
  {
    autoUnhighlightTimer = [(_UIContextMenuView *)self autoUnhighlightTimer];
    [autoUnhighlightTimer invalidate];

    [(_UIContextMenuView *)self setAutoUnhighlightTimer:0];
    currentListView = [(_UIContextMenuView *)self currentListView];
    [recognizerCopy locationInView:currentListView];
    v7 = [currentListView indexPathForItemAtPoint:?];
    hoverVelocityIntegrator = [(_UIContextMenuView *)self hoverVelocityIntegrator];

    if (!hoverVelocityIntegrator)
    {
      v9 = objc_opt_new();
      [(_UIContextMenuView *)self setHoverVelocityIntegrator:v9];

      hoverVelocityIntegrator2 = [(_UIContextMenuView *)self hoverVelocityIntegrator];
      [hoverVelocityIntegrator2 setMinimumRequiredMovement:1.0];
    }

    hoverVelocityIntegrator3 = [(_UIContextMenuView *)self hoverVelocityIntegrator];
    [recognizerCopy locationInView:self];
    [hoverVelocityIntegrator3 addSample:?];
  }

  if ([(_UIContextMenuView *)self hierarchyStyle]== 2)
  {
    v12 = [UIViewSpringAnimationBehavior behaviorWithDampingRatio:1.0 response:0.4];
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __52___UIContextMenuView__handleHoverGestureRecognizer___block_invoke;
    v19 = &unk_1E70F35B8;
    v20 = recognizerCopy;
    selfCopy = self;
    [UIView _animateUsingSpringBehavior:v12 tracking:0 animations:&v16 completion:0];
  }

  _allActiveTouches = [recognizerCopy _allActiveTouches];
  anyObject = [_allActiveTouches anyObject];
  v15 = [(_UIContextMenuView *)self _touchSupportsAutoNavigation:anyObject];

  [recognizerCopy locationInView:self];
  [(_UIContextMenuView *)self _setHighlightedIndexPath:v7 playFeedback:0 atLocation:v15 allowAutoNavigation:?];
}

- (void)_setHighlightedIndexPath:(id)path playFeedback:(BOOL)feedback atLocation:(CGPoint)location allowAutoNavigation:(BOOL)navigation
{
  navigationCopy = navigation;
  y = location.y;
  x = location.x;
  feedbackCopy = feedback;
  v36 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  currentListView = [(_UIContextMenuView *)self currentListView];
  highlightedIndexPath = [currentListView highlightedIndexPath];
  selectionGestureRecognizer = [(_UIContextMenuView *)self selectionGestureRecognizer];
  numberOfTouches = [selectionGestureRecognizer numberOfTouches];

  if ((((numberOfTouches != 0) ^ -[_UIContextMenuView hasTrackingTouch](self, "hasTrackingTouch")) & 1) != 0 || ([pathCopy isEqual:highlightedIndexPath] & 1) == 0 && (-[_UIContextMenuView unselectableIndexPath](self, "unselectableIndexPath"), v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(pathCopy, "isEqual:", v17), v17, (v18 & 1) == 0))
  {
    [(_UIContextMenuView *)self setHasTrackingTouch:numberOfTouches != 0];
    [(_UIContextMenuView *)self _clearAutoNavigationTimer];
    [(_UIContextMenuView *)self setUnselectableIndexPath:0];
    if (highlightedIndexPath)
    {
      [currentListView unHighlightItemAtIndexPath:highlightedIndexPath];
    }

    if (pathCopy)
    {
      v16 = [currentListView elementAtIndexPath:pathCopy];
    }

    else
    {
      v16 = 0;
    }

    if ([v16 _canBeHighlighted])
    {
      v30 = feedbackCopy;
      image = [v16 image];
      v20 = _UIImageName(image);
      v21 = [v20 isEqualToString:@"doc.on.clipboard"];

      if (v21)
      {
        appearanceDate = [(_UIContextMenuView *)self appearanceDate];
        _UIPasteboardAnalyticsReportEvent(@"ContextMenu", appearanceDate);
      }

      v23 = v30;
      if (navigationCopy && (numberOfTouches || [(_UIContextMenuView *)self hierarchyStyle]== 2))
      {
        v33 = 0u;
        v34 = 0u;
        v31 = 0u;
        v32 = 0u;
        highlightHoverGestureRecognizer = [(_UIContextMenuView *)self highlightHoverGestureRecognizer];
        _allActiveTouches = [highlightHoverGestureRecognizer _allActiveTouches];

        v26 = [_allActiveTouches countByEnumeratingWithState:&v31 objects:v35 count:16];
        if (v26)
        {
          v27 = *v32;
          while (2)
          {
            for (i = 0; i != v26; ++i)
            {
              if (*v32 != v27)
              {
                objc_enumerationMutation(_allActiveTouches);
              }

              if ([*(*(&v31 + 1) + 8 * i) _isPointerTouch])
              {
                v26 = 1;
                goto LABEL_26;
              }
            }

            v26 = [_allActiveTouches countByEnumeratingWithState:&v31 objects:v35 count:16];
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

      [currentListView highlightItemAtIndexPath:pathCopy forHover:numberOfTouches == 0 playFeedback:1];
      if (v23)
      {
        feedbackGenerator = [(_UIContextMenuView *)self feedbackGenerator];
        [feedbackGenerator selectionChangedAtLocation:{x, y}];
      }
    }
  }
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
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
    v8 = [(UIView *)&v18 hitTest:eventCopy withEvent:x, y];
    v9 = v20[5];
    v20[5] = v8;
  }

  else
  {
    submenus = [(_UIContextMenuView *)self submenus];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __40___UIContextMenuView_hitTest_withEvent___block_invoke;
    v13[3] = &unk_1E70F40E0;
    v16 = x;
    v17 = y;
    v13[4] = self;
    v15 = &v19;
    v14 = eventCopy;
    [submenus reverseEnumerateNodes:v13];
  }

  v11 = v20[5];
  _Block_object_dispose(&v19, 8);

  return v11;
}

- (void)_setAutoNavigationTimerIfNecessaryForElement:(id)element isTrackpadHover:(BOOL)hover
{
  elementCopy = element;
  if (([elementCopy _isLeaf] & 1) == 0)
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
    v13 = elementCopy;
    selfCopy = self;
    v8 = [v7 scheduledTimerWithTimeInterval:0 repeats:&v9 block:v6];
    [(_UIContextMenuView *)self setAutoNavigationTimer:v8, v9, v10, v11, v12];

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }
}

- (void)_clearAutoNavigationTimer
{
  autoNavigationTimer = [(_UIContextMenuView *)self autoNavigationTimer];
  [autoNavigationTimer invalidate];

  [(_UIContextMenuView *)self setAutoNavigationTimer:0];
}

- (void)_setHoverAutoExitTimer
{
  objc_initWeak(&location, self);
  hoverAutoExitTimer = [(_UIContextMenuView *)self hoverAutoExitTimer];

  if (!hoverAutoExitTimer)
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
  hoverAutoExitTimer = [(_UIContextMenuView *)self hoverAutoExitTimer];
  [hoverAutoExitTimer invalidate];

  [(_UIContextMenuView *)self setHoverAutoExitTimer:0];
}

- (id)preferredFocusEnvironments
{
  v5[1] = *MEMORY[0x1E69E9840];
  currentListView = [(_UIContextMenuView *)self currentListView];
  v5[0] = currentListView;
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

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  senderCopy = sender;
  if (sel__handleLeftArrowKey_ == action)
  {
    submenus = [(_UIContextMenuView *)self submenus];
    current = [submenus current];
    if ([current leftOfParentWhenCascading])
    {
      v7 = 0;
    }

    else
    {
      submenus2 = [(_UIContextMenuView *)self submenus];
      current2 = [submenus2 current];
      submenus3 = [(_UIContextMenuView *)self submenus];
      first = [submenus3 first];
      v7 = current2 != first;
    }

    goto LABEL_16;
  }

  if (sel__handleRightArrowKey_ == action)
  {
    currentListView = [(_UIContextMenuView *)self currentListView];
    submenus = [currentListView highlightedIndexPath];

    if (!submenus)
    {
      v7 = 0;
LABEL_17:

      goto LABEL_18;
    }

    currentListView2 = [(_UIContextMenuView *)self currentListView];
    current = [currentListView2 elementAtIndexPath:submenus];

    if ([current _isLeaf])
    {
      LOBYTE(v12) = 0;
    }

    else
    {
      currentListView3 = [(_UIContextMenuView *)self currentListView];
      displayedMenu = [currentListView3 displayedMenu];
      v12 = [current isEqual:displayedMenu] ^ 1;
    }

    submenus4 = [(_UIContextMenuView *)self submenus];
    current3 = [submenus4 current];
    if ([current3 leftOfParentWhenCascading])
    {
      submenus5 = [(_UIContextMenuView *)self submenus];
      current4 = [submenus5 current];
      submenus6 = [(_UIContextMenuView *)self submenus];
      first2 = [submenus6 first];
      v25 = current4 != first2;
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
  v7 = [(UIView *)&v27 canPerformAction:action withSender:senderCopy];
LABEL_18:

  return v7 & 1;
}

- (void)_handleEscapeKey:(id)key
{
  delegate = [(_UIContextMenuView *)self delegate];
  [delegate didSelectCancelActionInContextMenuView:self];
}

- (void)_selectPreviousMenuIfPossible
{
  submenus = [(_UIContextMenuView *)self submenus];
  current = [submenus current];
  submenus2 = [(_UIContextMenuView *)self submenus];
  first = [submenus2 first];

  if (current != first)
  {
    submenus3 = [(_UIContextMenuView *)self submenus];
    current2 = [submenus3 current];
    previous = [current2 previous];
    menu = [previous menu];

    [(_UIContextMenuView *)self setRetainHighlightOnMenuNavigation:1];
    [(_UIContextMenuView *)self _handleSelectionForElement:menu];
  }
}

- (void)_handleRightArrowKey:(id)key
{
  currentListView = [(_UIContextMenuView *)self currentListView];
  highlightedIndexPath = [currentListView highlightedIndexPath];

  v5 = highlightedIndexPath;
  if (highlightedIndexPath)
  {
    currentListView2 = [(_UIContextMenuView *)self currentListView];
    v7 = [currentListView2 elementAtIndexPath:highlightedIndexPath];

    if ([v7 _isLeaf] & 1) != 0 || (-[_UIContextMenuView currentListView](self, "currentListView"), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "displayedMenu"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v7, "isEqual:", v9), v9, v8, (v10))
    {
      submenus = [(_UIContextMenuView *)self submenus];
      current = [submenus current];
      leftOfParentWhenCascading = [current leftOfParentWhenCascading];

      if (leftOfParentWhenCascading)
      {
        [(_UIContextMenuView *)self _selectPreviousMenuIfPossible];
      }
    }

    else
    {
      currentListView3 = [(_UIContextMenuView *)self currentListView];
      v15 = [currentListView3 elementAtIndexPath:highlightedIndexPath];

      [(_UIContextMenuView *)self setRetainHighlightOnMenuNavigation:1];
      [(_UIContextMenuView *)self _handleSelectionForElement:v15];
    }

    v5 = highlightedIndexPath;
  }
}

- (void)_handleMenuPressGesture:(id)gesture
{
  delegate = [(_UIContextMenuView *)self delegate];
  [delegate didSelectCancelActionInContextMenuView:self];
}

- (void)_handleSelectPressGesture:(id)gesture
{
  currentListView = [(_UIContextMenuView *)self currentListView];
  highlightedIndexPath = [currentListView highlightedIndexPath];

  if (highlightedIndexPath)
  {
    currentListView2 = [(_UIContextMenuView *)self currentListView];
    v6 = [currentListView2 elementAtIndexPath:highlightedIndexPath];

    [(_UIContextMenuView *)self setRetainHighlightOnMenuNavigation:1];
    [(_UIContextMenuView *)self _handleSelectionForElement:v6];
  }
}

- (void)disableTypeSelectIfNeeded
{
  submenus = [(_UIContextMenuView *)self submenus];
  [submenus enumerateNodes:&__block_literal_global_126];
}

- (void)_performActionForElement:(id)element
{
  elementCopy = element;
  [(_UIContextMenuView *)self _clearAutoNavigationTimer];
  [(_UIContextMenuView *)self setUnselectableIndexPath:0];
  delegate = [(_UIContextMenuView *)self delegate];
  [delegate contextMenuView:self didSelectElement:elementCopy];
}

- (CGRect)_rectOfNodeParentElement:(id)element
{
  elementCopy = element;
  previous = [elementCopy previous];
  listView = [previous listView];
  menu = [elementCopy menu];

  v8 = [listView cellForElement:menu];

  window = [v8 window];

  if (window)
  {
    superview = [v8 superview];
    [v8 frame];
    [superview convertRect:self toView:?];
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
  currentListView = [(_UIContextMenuView *)self currentListView];
  v4 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:0];
  v6 = [currentListView elementAtIndexPath:v4];

  v5 = v6;
  if (v6)
  {
    [(_UIContextMenuView *)self _performActionForElement:v6];
    v5 = v6;
  }
}

@end