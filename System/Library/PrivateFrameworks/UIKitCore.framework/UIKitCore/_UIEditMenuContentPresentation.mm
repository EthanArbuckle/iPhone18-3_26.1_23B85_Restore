@interface _UIEditMenuContentPresentation
- (BOOL)_shouldReuseVisibleMenu;
- (CGRect)_convertSourceWindowRectToContainerView:(CGRect)view;
- (CGRect)_queryMenuSourceRectForConfiguration:(id)configuration reuseTargetRect:(BOOL)rect isValid:(BOOL *)valid;
- (CGRect)menuFrameInCoordinateSpace:(id)space;
- (CGRect)targetRectInSourceView;
- (UIEdgeInsets)_preferredContentInsetsForContainerViewWithConfiguration:(id)configuration;
- (id)_currentPlatformMetrics;
- (id)_queryMenuSourceRectsPreferredLayoutRectsForConfiguration:(id)configuration;
- (id)_resolvedLayoutForMenuWithConfiguration:(id)configuration sourceRect:(CGRect)rect axis:(int64_t)axis;
- (int64_t)_listViewAxisForTraitCollection:(id)collection;
- (void)_displayMenu:(id)menu reason:(int64_t)reason;
- (void)_displayPreparedMenu:(id)menu titleView:(id)view reason:(int64_t)reason didDismissMenu:(BOOL)dismissMenu configuration:(id)configuration;
- (void)_endSourceViewObservation;
- (void)_observeSourceViewIfNeeded;
- (void)_performContextMenuHandoffForMenu:(id)menu sourceView:(id)view;
- (void)_reloadMenuLayoutWithSourceRect:(CGRect)rect animated:(BOOL)animated;
- (void)_resolvedMenuPositionForArrowDirection:(int64_t *)direction availableBounds:(CGRect)bounds sourceRect:(CGRect)rect menuSize:(CGSize)size menuPosition:(CGPoint *)position anchorPoint:(CGPoint *)point;
- (void)_updateMenuPositionAnimated:(BOOL)animated reuseTargetRect:(BOOL)rect forced:(BOOL)forced;
- (void)contentSizeCategoryDidChangeInEditMenuListView:(id)view;
- (void)didTransitionFrom:(unint64_t)from to:(unint64_t)to;
- (void)displayMenu:(id)menu configuration:(id)configuration;
- (void)editMenuListView:(id)view didSelectMenuElement:(id)element source:(id)source;
- (void)editMenuListViewDidActivateHandoff:(id)handoff source:(id)source;
- (void)hideMenuWithReason:(int64_t)reason;
- (void)replaceVisibleMenuWithMenu:(id)menu reason:(int64_t)reason;
- (void)setUserInterfaceStyle:(int64_t)style;
- (void)sourceViewDidUpdateFromTraitCollection:(id)collection;
@end

@implementation _UIEditMenuContentPresentation

- (void)displayMenu:(id)menu configuration:(id)configuration
{
  menuCopy = menu;
  [(_UIEditMenuPresentation *)self setActiveConfiguration:configuration];
  [(_UIEditMenuContentPresentation *)self _displayMenu:menuCopy reason:0];
}

- (void)replaceVisibleMenuWithMenu:(id)menu reason:(int64_t)reason
{
  menuCopy = menu;
  currentListView = [(_UIEditMenuContentPresentation *)self currentListView];

  if (!currentListView)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIEditMenuContentPresentation.m" lineNumber:98 description:@"Cannot replace the visible menu if there are no visible menus present."];
  }

  [(_UIEditMenuContentPresentation *)self _displayMenu:menuCopy reason:reason];
}

- (void)_displayMenu:(id)menu reason:(int64_t)reason
{
  menuCopy = menu;
  activeConfiguration = [(_UIEditMenuPresentation *)self activeConfiguration];
  if (!activeConfiguration)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIEditMenuContentPresentation.m" lineNumber:105 description:@"Cannot update the visible menu without an active configuration"];
  }

  currentListView = [(_UIEditMenuContentPresentation *)self currentListView];
  if (currentListView && (v10 = currentListView, v11 = [(_UIEditMenuContentPresentation *)self _shouldReuseVisibleMenu], v10, !v11))
  {
    if (reason > 2)
    {
      v13 = 0;
    }

    else
    {
      v13 = qword_18A682F10[reason];
    }

    [(_UIEditMenuContentPresentation *)self hideMenuWithReason:v13];
    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  if ([(_UIEditMenuContentPresentation *)self canPresentEditMenu])
  {
    delegate = [(_UIEditMenuPresentation *)self delegate];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __54___UIEditMenuContentPresentation__displayMenu_reason___block_invoke;
    v16[3] = &unk_1E71045C0;
    v16[4] = self;
    v17 = menuCopy;
    v18 = activeConfiguration;
    reasonCopy = reason;
    v20 = v12;
    [delegate _editMenuPresentation:self preparedMenuForDisplay:v17 completion:v16];
  }
}

- (void)_displayPreparedMenu:(id)menu titleView:(id)view reason:(int64_t)reason didDismissMenu:(BOOL)dismissMenu configuration:(id)configuration
{
  dismissMenuCopy = dismissMenu;
  v63 = *MEMORY[0x1E69E9840];
  menuCopy = menu;
  viewCopy = view;
  configurationCopy = configuration;
  if (menuCopy)
  {
    v15 = ([menuCopy metadata] >> 24) & 1;
  }

  else
  {
    LOBYTE(v15) = 0;
  }

  if (viewCopy || (v15 & 1) != 0)
  {
    v17 = [(_UIEditMenuContentPresentation *)self configureContainerViewWithConfiguration:configurationCopy];
    [(_UIEditMenuContentPresentation *)self setUserInterfaceStyle:[(_UIEditMenuContentPresentation *)self initialUserInterfaceStyle]];
    v61 = 1;
    [(_UIEditMenuContentPresentation *)self _queryMenuSourceRectForConfiguration:configurationCopy reuseTargetRect:0 isValid:&v61];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;
    if (v61)
    {
      [(_UIEditMenuPresentation *)self setActiveConfiguration:configurationCopy];
      [(_UIEditMenuPresentation *)self setDisplayedMenu:menuCopy];
      v26 = +[UIView areAnimationsEnabled];
      _preferredElementDisplayMode = [configurationCopy _preferredElementDisplayMode];
      if ([(_UIEditMenuContentPresentation *)self _shouldReuseVisibleMenu])
      {
        currentListView = [(_UIEditMenuContentPresentation *)self currentListView];
        [currentListView setPreferredElementDisplayMode:_preferredElementDisplayMode];

        currentListView2 = [(_UIEditMenuContentPresentation *)self currentListView];
        [currentListView2 reloadWithMenu:menuCopy titleView:viewCopy animated:0];

        [(_UIEditMenuContentPresentation *)self _updateMenuPositionAnimated:v26 reuseTargetRect:0 forced:1];
      }

      else
      {
        v53 = v26;
        v54 = dismissMenuCopy;
        traitCollection = [v17 traitCollection];
        v35 = v17;
        v36 = [(_UIEditMenuContentPresentation *)self _listViewAxisForTraitCollection:traitCollection];

        v37 = [[_UIEditMenuListView alloc] initWithDelegate:self menu:menuCopy titleView:viewCopy preferredElementDisplayMode:_preferredElementDisplayMode];
        [(UIView *)v37 setAlpha:0.0];
        [(_UIEditMenuListView *)v37 setAxis:v36];
        objc_storeStrong(&self->_currentListView, v37);
        v38 = [(_UIEditMenuContentPresentation *)self _resolvedLayoutForMenuWithConfiguration:configurationCopy sourceRect:v36 axis:v19, v21, v23, v25];
        -[_UIEditMenuListView setArrowDirection:](v37, "setArrowDirection:", [v38 arrowDirection]);
        [v38 anchorPoint];
        [(UIView *)v37 setAnchorPoint:?];
        [v38 containerBounds];
        [(_UIEditMenuListView *)v37 setBounds:?];
        [v38 menuPosition];
        [(UIView *)v37 setCenter:?];
        v56 = v35;
        [v35 addSubview:v37];
        [(UIView *)v37 layoutIfNeeded];
        [(_UIEditMenuContentPresentation *)self _observeSourceViewIfNeeded];
        objc_storeStrong(&self->_currentListView, v37);
        objc_storeStrong(&self->_currentMenuLayout, v38);
        if (reason)
        {
          v39 = 4;
        }

        else
        {
          [(_UIEditMenuPresentation *)self forceEndDismissalIfNeeded];
          v39 = 0;
        }

        v40 = v54;
        [(_UIEditMenuPresentation *)self transitionWithEvent:v39];
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __101___UIEditMenuContentPresentation__displayPreparedMenu_titleView_reason_didDismissMenu_configuration___block_invoke;
        aBlock[3] = &unk_1E70F5AC0;
        aBlock[4] = self;
        v55 = _Block_copy(aBlock);
        v41 = _AXSReduceMotionEnabled();
        if (v41)
        {
          v42 = 1;
        }

        else
        {
          v42 = reason == 2;
        }

        v43 = v42;
        v52 = v43;
        if (v42)
        {
          v44 = v59;
          v59[0] = MEMORY[0x1E69E9820];
          v59[1] = 3221225472;
          v45 = __101___UIEditMenuContentPresentation__displayPreparedMenu_titleView_reason_didDismissMenu_configuration___block_invoke_2;
        }

        else
        {
          CGAffineTransformMakeScale(&v58, 0.2, 0.2);
          buf = v58;
          [(UIView *)v37 setTransform:&buf];
          v44 = v57;
          v57[0] = MEMORY[0x1E69E9820];
          v57[1] = 3221225472;
          v45 = __101___UIEditMenuContentPresentation__displayPreparedMenu_titleView_reason_didDismissMenu_configuration___block_invoke_3;
        }

        v44[2] = v45;
        v44[3] = &unk_1E70F35B8;
        v46 = v37;
        v44[4] = v46;
        v44[5] = self;
        v47 = _Block_copy(v44);

        v48.n128_u64[0] = 0x3FC3333333333333;
        if (!v40)
        {
          v48.n128_f64[0] = 0.0;
        }

        if (v53)
        {
          if (v41)
          {
            selfCopy = self;
            v50 = v55;
            [(_UIEditMenuPresentation *)selfCopy animateReducedMotionTransitionWithDelay:v47 animations:v55 completion:v48.n128_f64[0]];
          }

          else
          {
            selfCopy2 = self;
            v50 = v55;
            if (v52)
            {
              [(_UIEditMenuPresentation *)selfCopy2 animateFadeWithDelay:v47 animations:v55 completion:v48.n128_f64[0]];
            }

            else
            {
              [(_UIEditMenuPresentation *)selfCopy2 animateScalePresentWithDelay:v47 animations:v55 completion:v48.n128_f64[0]];
            }
          }
        }

        else
        {
          v47[2](v47, v48);
          v50 = v55;
          (*(v55 + 2))(v55, 1);
        }

        v17 = v56;
      }
    }

    else
    {
      v30 = *(__UILogGetCategoryCachedImpl("EditMenuInteraction", &qword_1ED49AA58) + 8);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v31 = v30;
        activeConfiguration = [(_UIEditMenuPresentation *)self activeConfiguration];
        v64.origin.x = v19;
        v64.origin.y = v21;
        v64.size.width = v23;
        v64.size.height = v25;
        v33 = NSStringFromCGRect(v64);
        LODWORD(buf.a) = 138412546;
        *(&buf.a + 4) = activeConfiguration;
        WORD2(buf.b) = 2112;
        *(&buf.b + 6) = v33;
        _os_log_impl(&dword_188A29000, v31, OS_LOG_TYPE_ERROR, "The edit menu (configuration: %@) has an invalid target rect (%@); ignoring present.", &buf, 0x16u);
      }

      [(_UIEditMenuContentPresentation *)self teardownContainerView];
    }
  }

  else
  {
    v16 = *(__UILogGetCategoryCachedImpl("EditMenuInteraction", &_MergedGlobals_11_13) + 8);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf.a) = 138412290;
      *(&buf.a + 4) = configurationCopy;
      _os_log_impl(&dword_188A29000, v16, OS_LOG_TYPE_ERROR, "The edit menu (configuration: %@) did not have performable commands and/or actions; ignoring present.", &buf, 0xCu);
    }

    if ((reason - 1) > 1)
    {
      [(_UIEditMenuContentPresentation *)self hideMenuWithReason:0];
    }

    else
    {
      [(_UIEditMenuPresentation *)self forceEndPresentIfNeeded];
      [(_UIEditMenuPresentation *)self transitionWithEvent:2];
    }
  }
}

- (void)hideMenuWithReason:(int64_t)reason
{
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x3032000000;
  v24[3] = __Block_byref_object_copy__223;
  v24[4] = __Block_byref_object_dispose__223;
  currentListView = [(_UIEditMenuContentPresentation *)self currentListView];
  containerView = [(_UIEditMenuContentPresentation *)self containerView];
  v6 = _AXSReduceMotionEnabled();
  currentListView2 = [(_UIEditMenuContentPresentation *)self currentListView];

  if (currentListView2)
  {
    currentState = [(_UIEditMenuPresentation *)self currentState];
    if (reason == 5 || currentState != 7)
    {
      v9 = (reason & 0xFFFFFFFFFFFFFFFELL) != 4 && v6 == 0;
      v10 = !v9;
      if (v9)
      {
        v11 = aBlock;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        v12 = __53___UIEditMenuContentPresentation_hideMenuWithReason___block_invoke_2;
      }

      else
      {
        v11 = v23;
        v23[0] = MEMORY[0x1E69E9820];
        v23[1] = 3221225472;
        v12 = __53___UIEditMenuContentPresentation_hideMenuWithReason___block_invoke;
      }

      v11[2] = v12;
      v11[3] = &unk_1E70FCDA0;
      v11[4] = self;
      v11[5] = v24;
      v13 = _Block_copy(v11);
      activeConfiguration = [(_UIEditMenuPresentation *)self activeConfiguration];
      [(_UIEditMenuPresentation *)self setDismissingConfiguration:activeConfiguration];

      if ((reason - 5) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        [(_UIEditMenuPresentation *)self forceEndPresentIfNeeded];
        if (reason != 5)
        {
          [(_UIEditMenuPresentation *)self transitionWithEvent:2];
        }
      }

      currentListView = self->_currentListView;
      self->_currentListView = 0;

      currentMenuLayout = self->_currentMenuLayout;
      self->_currentMenuLayout = 0;

      v17 = *(MEMORY[0x1E695F050] + 16);
      self->_targetRectInSourceView.origin = *MEMORY[0x1E695F050];
      self->_targetRectInSourceView.size = v17;
      [(_UIEditMenuPresentation *)self setDisplayedMenu:0];
      [(_UIEditMenuPresentation *)self setActiveConfiguration:0];
      [(_UIEditMenuContentPresentation *)self _endSourceViewObservation];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __53___UIEditMenuContentPresentation_hideMenuWithReason___block_invoke_3;
      v21[3] = &unk_1E70FF890;
      v21[4] = self;
      v21[5] = v24;
      v18 = _Block_copy(v21);
      v19 = +[UIView areAnimationsEnabled];
      if (reason != 5 && v19)
      {
        if (v6)
        {
          [(_UIEditMenuPresentation *)self animateReducedMotionTransitionWithDelay:v13 animations:v18 completion:0.0];
        }

        else if (v10)
        {
          [(_UIEditMenuPresentation *)self animateFadeWithDelay:v13 animations:v18 completion:0.0];
        }

        else
        {
          [(_UIEditMenuPresentation *)self animateScaleDismissalWithAnimations:v13 completion:v18];
        }
      }

      else
      {
        v13[2](v13);
        v18[2](v18, 1);
      }
    }
  }

  _Block_object_dispose(v24, 8);
}

- (CGRect)menuFrameInCoordinateSpace:(id)space
{
  spaceCopy = space;
  currentMenuLayout = [(_UIEditMenuContentPresentation *)self currentMenuLayout];

  if (currentMenuLayout)
  {
    currentListView = self->_currentListView;
    currentMenuLayout2 = [(_UIEditMenuContentPresentation *)self currentMenuLayout];
    [currentMenuLayout2 containerBounds];
    [(UIView *)currentListView convertRect:spaceCopy toCoordinateSpace:?];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;

    [(UIView *)self->_currentListView _currentScreenScale];
    v17 = UIRectRoundToScale(v9, v11, v13, v15, v16);
    v19 = v18;
    v21 = v20;
    v23 = v22;
  }

  else
  {
    v17 = *MEMORY[0x1E695F050];
    v19 = *(MEMORY[0x1E695F050] + 8);
    v21 = *(MEMORY[0x1E695F050] + 16);
    v23 = *(MEMORY[0x1E695F050] + 24);
  }

  v24 = v17;
  v25 = v19;
  v26 = v21;
  v27 = v23;
  result.size.height = v27;
  result.size.width = v26;
  result.origin.y = v25;
  result.origin.x = v24;
  return result;
}

- (void)didTransitionFrom:(unint64_t)from to:(unint64_t)to
{
  v9.receiver = self;
  v9.super_class = _UIEditMenuContentPresentation;
  [(_UIEditMenuPresentation *)&v9 didTransitionFrom:from to:?];
  if (to == 5)
  {
    containerView = [(_UIEditMenuContentPresentation *)self containerView];
    v7 = [_UIEditMenuSceneComponent sceneComponentForView:containerView];

    [v7 removeActivePresentation:self];
    [(_UIEditMenuContentPresentation *)self teardownContainerView];
    [(_UIEditMenuPresentation *)self setDismissingConfiguration:0];
  }

  else
  {
    if (to != 2)
    {
      return;
    }

    containerView2 = [(_UIEditMenuContentPresentation *)self containerView];
    v7 = [_UIEditMenuSceneComponent sceneComponentForView:containerView2];

    [v7 setActivePresentation:self];
  }
}

- (void)_observeSourceViewIfNeeded
{
  if (!self->_observingSourceView)
  {
    sourceView = [(_UIEditMenuPresentation *)self sourceView];
    [(UIView *)sourceView _addGeometryChangeObserver:?];
    self->_observingSourceView = 1;
  }
}

- (void)_endSourceViewObservation
{
  if (self->_observingSourceView)
  {
    sourceView = [(_UIEditMenuPresentation *)self sourceView];
    [(UIView *)sourceView _removeGeometryChangeObserver:?];
    self->_observingSourceView = 0;
  }
}

- (void)contentSizeCategoryDidChangeInEditMenuListView:(id)view
{
  viewCopy = view;
  sourceView = [(_UIEditMenuPresentation *)self sourceView];

  if (sourceView)
  {
    traitCollection = [viewCopy traitCollection];
    v6 = [(_UIEditMenuContentPresentation *)self _listViewAxisForTraitCollection:traitCollection];
    currentListView = [(_UIEditMenuContentPresentation *)self currentListView];
    [currentListView setAxis:v6];

    [(_UIEditMenuContentPresentation *)self _updateMenuPositionAnimated:0 reuseTargetRect:0 forced:1];
  }

  else
  {
    [(_UIEditMenuContentPresentation *)self hideMenuWithReason:0];
  }
}

- (void)editMenuListView:(id)view didSelectMenuElement:(id)element source:(id)source
{
  viewCopy = view;
  elementCopy = element;
  sourceCopy = source;
  if ([elementCopy _isLeaf])
  {
    v11 = elementCopy;
    displayedMenu = [(_UIEditMenuPresentation *)self displayedMenu];
    objc_initWeak(&location, self);
    delegate = [(_UIEditMenuPresentation *)self delegate];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __79___UIEditMenuContentPresentation_editMenuListView_didSelectMenuElement_source___block_invoke;
    v16[3] = &unk_1E7101A88;
    objc_copyWeak(&v19, &location);
    v14 = v11;
    v17 = v14;
    v15 = displayedMenu;
    v18 = v15;
    [delegate _editMenuPresentation:self didSelectMenuLeaf:v14 completion:v16];

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }

  else if (_UISolariumEnabled())
  {
    [(_UIEditMenuContentPresentation *)self _performContextMenuHandoffForMenu:elementCopy sourceView:sourceCopy];
  }

  else
  {
    [(_UIEditMenuContentPresentation *)self replaceVisibleMenuWithMenu:elementCopy reason:1];
  }
}

- (void)editMenuListViewDidActivateHandoff:(id)handoff source:(id)source
{
  sourceCopy = source;
  displayedMenu = [handoff displayedMenu];
  [(_UIEditMenuContentPresentation *)self _performContextMenuHandoffForMenu:displayedMenu sourceView:sourceCopy];
}

- (void)_performContextMenuHandoffForMenu:(id)menu sourceView:(id)view
{
  viewCopy = view;
  menuCopy = menu;
  activeConfiguration = [(_UIEditMenuPresentation *)self activeConfiguration];
  currentMenuLayout = [(_UIEditMenuContentPresentation *)self currentMenuLayout];
  v11 = +[_UIEditMenuHandoffContext contextForConfiguration:preparedMenu:sourceView:arrowDirection:](_UIEditMenuHandoffContext, "contextForConfiguration:preparedMenu:sourceView:arrowDirection:", activeConfiguration, menuCopy, viewCopy, [currentMenuLayout arrowDirection]);

  [(_UIEditMenuPresentation *)self transitionWithEvent:5];
  delegate = [(_UIEditMenuPresentation *)self delegate];
  [delegate _editMenuPresentation:self handoffDisplayedMenuWithContext:v11];
}

- (id)_currentPlatformMetrics
{
  sourceView = [(_UIEditMenuPresentation *)self sourceView];
  v3 = _UIEditMenuGetPlatformMetrics([sourceView _userInterfaceIdiom]);

  return v3;
}

- (CGRect)_convertSourceWindowRectToContainerView:(CGRect)view
{
  height = view.size.height;
  width = view.size.width;
  y = view.origin.y;
  x = view.origin.x;
  containerView = [(_UIEditMenuContentPresentation *)self containerView];
  _window = [containerView _window];
  sourceView = [(_UIEditMenuPresentation *)self sourceView];
  _window2 = [sourceView _window];

  if (_window != _window2)
  {
    containerView2 = [(_UIEditMenuContentPresentation *)self containerView];
    _window3 = [containerView2 _window];
    sourceView2 = [(_UIEditMenuPresentation *)self sourceView];
    _window4 = [sourceView2 _window];
    [_window3 convertRect:_window4 fromWindow:{x, y, width, height}];
    x = v16;
    y = v17;
    width = v18;
    height = v19;
  }

  sourceView3 = [(_UIEditMenuPresentation *)self sourceView];
  [sourceView3 _currentScreenScale];
  v22 = UIRectRoundToScale(x, y, width, height, v21);
  v24 = v23;
  v26 = v25;
  v28 = v27;

  v29 = v22;
  v30 = v24;
  v31 = v26;
  v32 = v28;
  result.size.height = v32;
  result.size.width = v31;
  result.origin.y = v30;
  result.origin.x = v29;
  return result;
}

- (CGRect)_queryMenuSourceRectForConfiguration:(id)configuration reuseTargetRect:(BOOL)rect isValid:(BOOL *)valid
{
  rectCopy = rect;
  configurationCopy = configuration;
  if (rectCopy && !CGRectIsNull(self->_targetRectInSourceView))
  {
    x = self->_targetRectInSourceView.origin.x;
    y = self->_targetRectInSourceView.origin.y;
    width = self->_targetRectInSourceView.size.width;
    height = self->_targetRectInSourceView.size.height;
  }

  else
  {
    delegate = [(_UIEditMenuPresentation *)self delegate];
    [delegate _editMenuPresentation:self targetRectForConfiguration:configurationCopy];
    x = v10;
    y = v12;
    width = v14;
    height = v16;

    self->_targetRectInSourceView.origin.x = x;
    self->_targetRectInSourceView.origin.y = y;
    self->_targetRectInSourceView.size.width = width;
    self->_targetRectInSourceView.size.height = height;
  }

  sourceView = [(_UIEditMenuPresentation *)self sourceView];
  sourceView2 = [(_UIEditMenuPresentation *)self sourceView];
  _window = [sourceView2 _window];
  [sourceView convertRect:_window toView:{x, y, width, height}];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;

  [(_UIEditMenuContentPresentation *)self _convertSourceWindowRectToContainerView:v22, v24, v26, v28];
  v33 = v29;
  v34 = v30;
  v35 = v31;
  v36 = v32;
  if (valid)
  {
    *valid = !CGRectIsNull(*&v29);
  }

  v37 = v33;
  v38 = v34;
  v39 = v35;
  v40 = v36;
  result.size.height = v40;
  result.size.width = v39;
  result.origin.y = v38;
  result.origin.x = v37;
  return result;
}

- (id)_queryMenuSourceRectsPreferredLayoutRectsForConfiguration:(id)configuration
{
  v44 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  delegate = [(_UIEditMenuPresentation *)self delegate];
  v6 = [delegate _editMenuPresentation:self preferredLayoutRectsForConfiguration:configurationCopy];

  if (v6)
  {
    v7 = objc_opt_new();
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v38 = v6;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v39 objects:v43 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v40;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v40 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [*(*(&v39 + 1) + 8 * i) CGRectValue];
          v14 = v13;
          v16 = v15;
          v18 = v17;
          v20 = v19;
          sourceView = [(_UIEditMenuPresentation *)self sourceView];
          sourceView2 = [(_UIEditMenuPresentation *)self sourceView];
          _window = [sourceView2 _window];
          [sourceView convertRect:_window toView:{v14, v16, v18, v20}];
          v25 = v24;
          v27 = v26;
          v29 = v28;
          v31 = v30;

          [(_UIEditMenuContentPresentation *)self _convertSourceWindowRectToContainerView:v25, v27, v29, v31];
          x = v46.origin.x;
          y = v46.origin.y;
          width = v46.size.width;
          height = v46.size.height;
          if (!CGRectIsNull(v46))
          {
            v36 = [MEMORY[0x1E696B098] valueWithCGRect:{x, y, width, height}];
            [v7 addObject:v36];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v39 objects:v43 count:16];
      }

      while (v10);
    }

    v6 = v38;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (int64_t)_listViewAxisForTraitCollection:(id)collection
{
  preferredContentSizeCategory = [collection preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  if (!IsAccessibilityCategory)
  {
    return 0;
  }

  _currentPlatformMetrics = [(_UIEditMenuContentPresentation *)self _currentPlatformMetrics];
  v7 = ~[_currentPlatformMetrics prefersHorizontalLayoutForLargeContentSize];

  return v7 & 1;
}

- (BOOL)_shouldReuseVisibleMenu
{
  sourceView = [(_UIEditMenuPresentation *)self sourceView];
  traitCollection = [sourceView traitCollection];
  v5 = [(_UIEditMenuContentPresentation *)self _listViewAxisForTraitCollection:traitCollection];

  return [(_UIEditMenuPresentation *)self currentState]== 2 && v5 == 0;
}

- (void)_reloadMenuLayoutWithSourceRect:(CGRect)rect animated:(BOOL)animated
{
  animatedCopy = animated;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  activeConfiguration = [(_UIEditMenuPresentation *)self activeConfiguration];
  currentListView = [(_UIEditMenuContentPresentation *)self currentListView];
  containerView = [(_UIEditMenuContentPresentation *)self containerView];
  traitCollection = [containerView traitCollection];
  v14 = [(_UIEditMenuContentPresentation *)self _listViewAxisForTraitCollection:traitCollection];

  height = [(_UIEditMenuContentPresentation *)self _resolvedLayoutForMenuWithConfiguration:activeConfiguration sourceRect:v14 axis:x, y, width, height];
  [(_UIEditMenuContentPresentation *)self setCurrentMenuLayout:height];
  v20 = MEMORY[0x1E69E9820];
  v21 = 3221225472;
  v22 = __75___UIEditMenuContentPresentation__reloadMenuLayoutWithSourceRect_animated___block_invoke;
  v23 = &unk_1E70F35B8;
  v24 = currentListView;
  v25 = height;
  v16 = height;
  v17 = currentListView;
  v18 = _Block_copy(&v20);
  v19 = v18;
  if (animatedCopy)
  {
    [(_UIEditMenuPresentation *)self animateFadeWithDelay:v18 animations:0 completion:0.0, v20, v21, v22, v23, v24, v25];
  }

  else
  {
    (*(v18 + 2))(v18);
  }
}

- (void)sourceViewDidUpdateFromTraitCollection:(id)collection
{
  resolvedUserInterfaceStyle = [(_UIEditMenuPresentation *)self resolvedUserInterfaceStyle];

  [(_UIEditMenuContentPresentation *)self setUserInterfaceStyle:resolvedUserInterfaceStyle];
}

- (void)setUserInterfaceStyle:(int64_t)style
{
  if (self->_userInterfaceStyle != style)
  {
    self->_userInterfaceStyle = style;
    containerView = [(_UIEditMenuContentPresentation *)self containerView];
    [containerView setOverrideUserInterfaceStyle:style];
  }
}

- (void)_updateMenuPositionAnimated:(BOOL)animated reuseTargetRect:(BOOL)rect forced:(BOOL)forced
{
  rectCopy = rect;
  animatedCopy = animated;
  v32 = *MEMORY[0x1E69E9840];
  activeConfiguration = [(_UIEditMenuPresentation *)self activeConfiguration];
  if (activeConfiguration)
  {
    v27 = 1;
    [(_UIEditMenuContentPresentation *)self _queryMenuSourceRectForConfiguration:activeConfiguration reuseTargetRect:rectCopy isValid:&v27];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    if (v27)
    {
      currentMenuLayout = [(_UIEditMenuContentPresentation *)self currentMenuLayout];
      [currentMenuLayout menuSourceRect];
      v35.origin.x = v19;
      v35.origin.y = v20;
      v35.size.width = v21;
      v35.size.height = v22;
      v33.origin.x = v11;
      v33.origin.y = v13;
      v33.size.width = v15;
      v33.size.height = v17;
      v23 = CGRectEqualToRect(v33, v35);

      if (forced || !v23)
      {
        [(_UIEditMenuContentPresentation *)self _reloadMenuLayoutWithSourceRect:animatedCopy animated:v11, v13, v15, v17];
      }
    }

    else
    {
      v24 = *(__UILogGetCategoryCachedImpl("EditMenuInteraction", &_updateMenuPositionAnimated_reuseTargetRect_forced____s_category) + 8);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = v24;
        v34.origin.x = v11;
        v34.origin.y = v13;
        v34.size.width = v15;
        v34.size.height = v17;
        v26 = NSStringFromCGRect(v34);
        *buf = 138412546;
        v29 = activeConfiguration;
        v30 = 2112;
        v31 = v26;
        _os_log_impl(&dword_188A29000, v25, OS_LOG_TYPE_ERROR, "The edit menu (configuration: %@) has an invalid target rect (%@); ignoring update.", buf, 0x16u);
      }
    }
  }
}

- (id)_resolvedLayoutForMenuWithConfiguration:(id)configuration sourceRect:(CGRect)rect axis:(int64_t)axis
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v202 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  currentListView = [(_UIEditMenuContentPresentation *)self currentListView];

  if (!currentListView)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIEditMenuContentPresentation.m" lineNumber:674 description:@"Cannot resolve the menu layout without a list view."];
  }

  v175 = x;
  rect = height;
  v169 = y;
  v170 = width;
  sourceView = [(_UIEditMenuPresentation *)self sourceView];

  if (!sourceView)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"_UIEditMenuContentPresentation.m" lineNumber:675 description:@"Cannot resolve the menu layout without a source view to the edit menu."];
  }

  _currentPlatformMetrics = [(_UIEditMenuContentPresentation *)self _currentPlatformMetrics];
  v16 = [configurationCopy preferredArrowDirection] - 3;
  containerView = [(_UIEditMenuContentPresentation *)self containerView];
  [UIViewController _horizontalContentMarginForView:containerView];
  v19 = v18;

  [_currentPlatformMetrics sourceRectMargins];
  r2_8 = v20;
  [(_UIEditMenuContentPresentation *)self _preferredContentInsetsForContainerViewWithConfiguration:configurationCopy];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  containerView2 = [(_UIEditMenuContentPresentation *)self containerView];
  [containerView2 bounds];
  v31 = v24 + v30;
  v33 = v22 + v32;
  v35 = v34 - (v24 + v28);
  v37 = v36 - (v22 + v26);

  v204.origin.x = v31;
  v204.origin.y = v33;
  v204.size.width = v35;
  v204.size.height = v37;
  v205 = CGRectInset(v204, v19, 0.0);
  v190 = v205.origin.y;
  v192 = v205.origin.x;
  v38 = v205.size.width;
  v39 = v205.size.height;
  preferredArrowDirection = [configurationCopy preferredArrowDirection];
  v200 = preferredArrowDirection;
  v41 = v175;
  v206.origin.x = v175;
  v43 = v169;
  v42 = v170;
  v206.origin.y = v169;
  v206.size.width = v170;
  v206.size.height = rect;
  MidX = CGRectGetMidX(v206);
  v207.origin.x = v175;
  v207.origin.y = v169;
  v207.size.width = v170;
  v207.size.height = rect;
  v198 = MidX;
  MidY = CGRectGetMidY(v207);
  __asm { FMOV            V0.2D, #0.5 }

  *v197 = _Q0;
  currentListView2 = [(_UIEditMenuContentPresentation *)self currentListView];
  containerView3 = [(_UIEditMenuContentPresentation *)self containerView];
  r2_16 = v39;
  r2_24 = v38;
  [currentListView2 intrinsicContentSizeForContainer:containerView3 containerSize:{v38, v39}];
  v53 = v52;
  v55 = v54;

  currentListView3 = [(_UIEditMenuContentPresentation *)self currentListView];
  [currentListView3 arrowSizeForDirection:preferredArrowDirection];
  v58 = v57;
  v60 = v59;

  if (v16 >= 2)
  {
    v61 = v55 + v60;
  }

  else
  {
    v61 = v55;
  }

  v177 = v53;
  if (v16 >= 2)
  {
    v62 = v53;
  }

  else
  {
    v62 = v53 + v58;
  }

  if (preferredArrowDirection)
  {
    if (axis)
    {
      goto LABEL_13;
    }

LABEL_31:
    v106 = v43;
    v107 = v42;
    goto LABEL_32;
  }

  v164 = v62;
  v66 = r2_8 + v61;
  r2 = r2_8 + v61;
  if ([configurationCopy _prefersMenuPresentationInView])
  {
    v182 = v61;
    v67 = v66 * 5.0;
    sourceView2 = [(_UIEditMenuPresentation *)self sourceView];
    sourceView3 = [(_UIEditMenuPresentation *)self sourceView];
    [sourceView3 bounds];
    v71 = v70;
    v73 = v72;
    v75 = v74;
    v77 = v76;
    sourceView4 = [(_UIEditMenuPresentation *)self sourceView];
    _window = [sourceView4 _window];
    [sourceView2 convertRect:_window toView:{v71, v73, v75, v77}];
    v81 = v80;
    v83 = v82;
    v85 = v84;
    v87 = v86;

    sourceView5 = [(_UIEditMenuPresentation *)self sourceView];
    _window2 = [sourceView5 _window];
    [_window2 bounds];
    v245.origin.x = v90;
    v245.origin.y = v91;
    v245.size.width = v92;
    v245.size.height = v93;
    v210.origin.x = v81;
    v210.origin.y = v83;
    v210.size.width = v85;
    v210.size.height = v87;
    v211 = CGRectIntersection(v210, v245);
    v94 = v211.origin.x;
    v95 = v211.origin.y;
    v96 = v211.size.width;
    v97 = v211.size.height;

    [(_UIEditMenuContentPresentation *)self _convertSourceWindowRectToContainerView:v94, v95, v96, v97];
    if (v101 > v67)
    {
      v246.origin.x = v98;
      v246.origin.y = v99;
      v246.size.width = v100;
      v246.size.height = v101;
      v212.origin.y = v190;
      v212.origin.x = v192;
      v212.size.height = r2_16;
      v212.size.width = r2_24;
      v213 = CGRectIntersection(v212, v246);
      v190 = v213.origin.y;
      v192 = v213.origin.x;
      r2_16 = v213.size.height;
      r2_24 = v213.size.width;
    }

    v43 = v169;
    v42 = v170;
    v61 = v182;
    v66 = r2;
  }

  v214.origin.x = v192;
  v214.origin.y = v190;
  v214.size.width = r2_24;
  v214.size.height = r2_16;
  v102 = v66 + CGRectGetMinY(v214);
  v215.origin.x = v192;
  v215.origin.y = v190;
  v215.size.width = r2_24;
  v215.size.height = r2_16;
  MaxY = CGRectGetMaxY(v215);
  derivesAutomaticArrowDirectionsFromAvailableSpace = [_currentPlatformMetrics derivesAutomaticArrowDirectionsFromAvailableSpace];
  if (axis || (derivesAutomaticArrowDirectionsFromAvailableSpace & 1) != 0)
  {
    v41 = v175;
    v219.origin.x = v175;
    v219.origin.y = v43;
    v219.size.width = v42;
    v219.size.height = rect;
    v102 = v102 - CGRectGetMinY(v219);
    v220.origin.x = v175;
    v220.origin.y = v43;
    v220.size.width = v42;
    v220.size.height = rect;
    MinY = CGRectGetMaxY(v220) - (MaxY - r2);
  }

  else
  {
    v41 = v175;
    v216.size.height = rect;
    v216.origin.x = v175;
    v216.origin.y = v43;
    v216.size.width = v42;
    MinY = CGRectGetMinY(v216);
  }

  if (MinY < v102)
  {
    preferredArrowDirection = 1;
  }

  else
  {
    preferredArrowDirection = 2;
  }

  v200 = preferredArrowDirection;
  v62 = v164;
  if (!axis)
  {
    goto LABEL_31;
  }

LABEL_13:
  if (preferredArrowDirection == 2)
  {
    v217.origin.x = v41;
    v217.origin.y = v43;
    v217.size.width = v42;
    v217.size.height = rect;
    v64 = CGRectGetMinY(v217);
    v218.origin.y = v190;
    v218.origin.x = v192;
    v218.size.height = r2_16;
    v218.size.width = r2_24;
    v65 = CGRectGetMinY(v218);
    goto LABEL_24;
  }

  v63 = v61;
  if (preferredArrowDirection == 1)
  {
    v208.origin.y = v190;
    v208.origin.x = v192;
    v208.size.height = r2_16;
    v208.size.width = r2_24;
    v64 = CGRectGetMaxY(v208);
    v209.origin.x = v41;
    v209.origin.y = v43;
    v209.size.width = v42;
    v209.size.height = rect;
    v65 = CGRectGetMaxY(v209);
LABEL_24:
    v63 = v64 - v65 - r2_8;
  }

  v106 = v43;
  v107 = v42;
  v61 = fmin(v61, fmax(v61 * 0.5, v63));
LABEL_32:
  [(_UIEditMenuContentPresentation *)self _resolvedMenuPositionForArrowDirection:&v200 availableBounds:&v198 sourceRect:v197 menuSize:v192 menuPosition:v190 anchorPoint:r2_24, r2_16, v175, v106, v107, rect, *&v62, *&v61];
  v221.origin.x = v192;
  v221.origin.y = v190;
  v221.size.width = r2_24;
  v221.size.height = r2_16;
  r2_8a = CGRectGetMinX(v221);
  v222.origin.x = v192;
  v222.origin.y = v190;
  v222.size.width = r2_24;
  v222.size.height = r2_16;
  v168 = CGRectGetMinY(v222);
  v223.origin.x = v192;
  v223.origin.y = v190;
  v223.size.width = r2_24;
  v223.size.height = r2_16;
  MaxX = CGRectGetMaxX(v223);
  v224.origin.x = v192;
  v224.origin.y = v190;
  v224.size.width = r2_24;
  v224.size.height = r2_16;
  v108 = CGRectGetMaxY(v224);
  v109 = MidY - v61 * v197[1];
  v178 = v198 - v62 * v197[0];
  v167 = v62 + v178;
  v110 = [(_UIEditMenuContentPresentation *)self _queryMenuSourceRectsPreferredLayoutRectsForConfiguration:configurationCopy];
  v111 = v110;
  if (v16 >= 2 && v110)
  {
    v195 = 0u;
    v196 = 0u;
    v193 = 0u;
    v194 = 0u;
    v112 = v110;
    v113 = [v112 countByEnumeratingWithState:&v193 objects:v201 count:16];
    if (v113)
    {
      v114 = v113;
      v162 = v108;
      v165 = v62;
      axisCopy = axis;
      v115 = *v194;
LABEL_36:
      v116 = 0;
      while (1)
      {
        if (*v194 != v115)
        {
          objc_enumerationMutation(v112);
        }

        [*(*(&v193 + 1) + 8 * v116) CGRectValue];
        v117 = v225.origin.x;
        v118 = v225.origin.y;
        v119 = v225.size.width;
        v120 = v225.size.height;
        v181 = CGRectGetMaxX(v225);
        v226.origin.y = v190;
        v226.origin.x = v192;
        v226.size.height = r2_16;
        v226.size.width = r2_24;
        v179 = v119;
        v180 = CGRectGetMaxX(v226);
        r2a = v117;
        v227.origin.x = v117;
        v227.origin.y = v118;
        v227.size.width = v119;
        v227.size.height = v120;
        v247.origin.x = r2_8a;
        v247.origin.y = v109;
        v247.size.width = r2_24;
        v247.size.height = v61;
        v228 = CGRectIntersection(v227, v247);
        v229 = CGRectStandardize(v228);
        v121 = v229.origin.x;
        v122 = v229.origin.y;
        v123 = v229.size.width;
        v124 = v229.size.height;
        if (!CGRectIsNull(v229))
        {
          v230.size.width = v177;
          v230.origin.x = v178;
          v230.origin.y = v109;
          v230.size.height = v61;
          if (!CGRectIsNull(v230))
          {
            v231.origin.x = v121;
            v231.origin.y = v122;
            v231.size.width = v123;
            v231.size.height = v124;
            v232 = CGRectStandardize(v231);
            v173 = v232.origin.y;
            v174 = v232.origin.x;
            v171 = v232.size.height;
            v172 = v232.size.width;
            v232.size.width = v177;
            v232.origin.x = v178;
            v232.origin.y = v109;
            v232.size.height = v61;
            v233 = CGRectStandardize(v232);
            v248 = CGRectInset(v233, 0.0001, 0.0001);
            v234.origin.y = v173;
            v234.origin.x = v174;
            v234.size.height = v171;
            v234.size.width = v172;
            if (CGRectContainsRect(v234, v248))
            {
              goto LABEL_45;
            }
          }
        }

        v235.origin.x = v121;
        v235.origin.y = v122;
        v235.size.width = v123;
        v235.size.height = v124;
        if (CGRectGetWidth(v235) > 180.0)
        {
          break;
        }

        if (v114 == ++v116)
        {
          v114 = [v112 countByEnumeratingWithState:&v193 objects:v201 count:16];
          if (v114)
          {
            goto LABEL_36;
          }

LABEL_45:
          v126 = v169;
          v125 = v170;
          v127 = v175;
          axis = axisCopy;
          v108 = v162;
          v62 = v165;
          goto LABEL_52;
        }
      }

      v236.origin.x = v121;
      v236.origin.y = v122;
      v236.size.width = v123;
      v236.size.height = v124;
      v130 = CGRectGetWidth(v236);
      v131 = v165;
      if (v165 >= v130)
      {
        v131 = v130;
      }

      if (v181 <= v180)
      {
        v237.origin.x = r2a;
        v237.origin.y = v118;
        v134 = v131;
        v237.size.width = v179;
        v237.size.height = v120;
        v133 = CGRectGetMaxX(v237) - v134;
        axis = axisCopy;
        v132 = v134;
      }

      else
      {
        axis = axisCopy;
        v132 = v131;
        v133 = r2a;
      }

      r2b = v133;
      v167 = v132 + v133;
      v238.origin.x = v121;
      v238.origin.y = v122;
      v238.size.width = v123;
      v238.size.height = v124;
      r2_8a = CGRectGetMinX(v238);
      v239.origin.x = v121;
      v239.origin.y = v122;
      v239.size.width = v123;
      v239.size.height = v124;
      v168 = CGRectGetMinY(v239);
      v240.origin.x = v121;
      v240.origin.y = v122;
      v240.size.width = v123;
      v240.size.height = v124;
      MaxX = CGRectGetMaxX(v240);
      v241.origin.x = v121;
      v241.origin.y = v122;
      v241.size.width = v123;
      v241.size.height = v124;
      v163 = CGRectGetMaxY(v241);
      v191 = *v197;
      v242.size.width = v177;
      v242.origin.x = v178;
      v242.origin.y = v109;
      v135 = v61;
      v242.size.height = v61;
      v243 = CGRectStandardize(v242);
      v136 = v243.origin.x;
      v62 = v132;
      v137 = v243.origin.y;
      v138 = v243.size.width;
      v139 = v243.size.height;
      v243.origin.x = r2b;
      v243.origin.y = v109;
      v243.size.width = v62;
      v243.size.height = v135;
      v244 = CGRectStandardize(v243);
      v140 = *&v191 * v138;
      v61 = v135;
      v141 = v136 + v140;
      v108 = v163;
      v197[0] = (v141 - v244.origin.x) / v244.size.width;
      v197[1] = (v137 + *(&v191 + 1) * v139 - v244.origin.y) / v244.size.height;
      v129 = r2b;
      v126 = v169;
      v125 = v170;
      v127 = v175;
    }

    else
    {
      v125 = v107;
      v126 = v106;
      v127 = v175;
LABEL_52:
      v129 = v178;
    }

    v128 = r2_8a;
  }

  else
  {
    v125 = v107;
    v126 = v106;
    v127 = v175;
    v128 = r2_8a;
    v129 = v178;
  }

  if (v129 >= v128)
  {
    if (v167 <= MaxX)
    {
      goto LABEL_65;
    }

    v145 = v167 - MaxX;
    v146 = fmax(v62 - (v167 - MaxX), 180.0);
    if (v16 < 2)
    {
      v145 = v145 + v146 - v62;
      v62 = v146;
    }

    v144 = v145 / v62 + v197[0];
  }

  else
  {
    v142 = v128 - v129;
    v143 = fmax(v62 - v142, 180.0);
    if (v16 < 2)
    {
      v142 = v142 + v143 - v62;
      v62 = v143;
    }

    v144 = v197[0] - v142 / v62;
  }

  v197[0] = v144;
LABEL_65:
  if (v109 < v168)
  {
    v147 = v197[1] - (v168 - v109) / v61;
LABEL_69:
    v197[1] = v147;
    goto LABEL_70;
  }

  if (v61 + v109 > v108)
  {
    v147 = (v61 + v109 - v108) / v61 + v197[1];
    goto LABEL_69;
  }

LABEL_70:
  if (v16 >= 2)
  {
    sourceView6 = [(_UIEditMenuPresentation *)self sourceView];
    traitCollection = [sourceView6 traitCollection];
    [_UIEditMenuListView minimumRequiredWidthForArrowInRoundedListViewForAxis:axis traitCollection:traitCollection];
    v151 = v150;

    v152 = v151 / fmax(v62, 1.0);
    if (v197[0] < v152 || (v152 = 1.0 - v152, v197[0] > v152))
    {
      v198 = v62 * (v152 - v197[0]) + v198;
      v197[0] = v152;
    }
  }

  v153 = objc_opt_new();
  [v153 setContainerBounds:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), v62, v61}];
  containerView4 = [(_UIEditMenuContentPresentation *)self containerView];
  v155 = v198;
  v156 = MidY;
  [containerView4 _currentScreenScale];
  [v153 setMenuPosition:{UIPointRoundToScale(v155, v156, v157)}];

  [v153 setAnchorPoint:*v197];
  [v153 setArrowDirection:v200];
  [v153 setMenuSourceRect:{v127, v126, v125, rect}];

  return v153;
}

- (UIEdgeInsets)_preferredContentInsetsForContainerViewWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  containerView = [(_UIEditMenuContentPresentation *)self containerView];
  [containerView safeAreaInsets];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  window = [containerView window];
  if (([window _isRemoteKeyboardWindow] & 1) == 0)
  {
    _ignoresKeyboardAvoidance = [configurationCopy _ignoresKeyboardAvoidance];

    if (_ignoresKeyboardAvoidance)
    {
      goto LABEL_4;
    }

    window = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    if ([window isOnScreen])
    {
      window2 = [containerView window];
      _isTextEffectsWindow = [window2 _isTextEffectsWindow];

      if (_isTextEffectsWindow)
      {
        [window visibleInputViewFrameInView:containerView];
        rect = v22;
        v24 = v23;
        v26 = v25;
        v28 = v27;
        [containerView bounds];
        MaxY = CGRectGetMaxY(v36);
        v37.origin.x = rect;
        v37.origin.y = v24;
        v37.size.width = v26;
        v37.size.height = v28;
        v30 = fmax(MaxY - CGRectGetMinY(v37), 0.0);
      }

      else
      {
        [window verticalOverlapForView:containerView usingKeyboardInfo:0];
        v30 = v31;
      }

      _currentPlatformMetrics = [(_UIEditMenuContentPresentation *)self _currentPlatformMetrics];
      [_currentPlatformMetrics sourceRectMargins];
      v34 = v30 + v33;

      if (v11 < v34)
      {
        v11 = v34;
      }
    }
  }

LABEL_4:
  v16 = v7;
  v17 = v9;
  v18 = v11;
  v19 = v13;
  result.right = v19;
  result.bottom = v18;
  result.left = v17;
  result.top = v16;
  return result;
}

- (void)_resolvedMenuPositionForArrowDirection:(int64_t *)direction availableBounds:(CGRect)bounds sourceRect:(CGRect)rect menuSize:(CGSize)size menuPosition:(CGPoint *)position anchorPoint:(CGPoint *)point
{
  height = size.height;
  width = size.width;
  v11 = rect.size.height;
  v12 = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v15 = bounds.size.height;
  v62 = bounds.size.width;
  v16 = bounds.origin.y;
  v17 = bounds.origin.x;
  v20 = [(_UIEditMenuContentPresentation *)self _currentPlatformMetrics:direction];
  [v20 sourceRectMargins];
  v22 = v21;

  v23 = *direction;
  v61 = v11;
  v63 = x;
  v64 = v12;
  r1 = v15;
  if ((*direction - 3) <= 1)
  {
    v69.origin.x = v17;
    v69.origin.y = v16;
    v69.size.width = v62;
    v69.size.height = v15;
    MaxX = CGRectGetMaxX(v69);
    v70.origin.x = x;
    v70.origin.y = y;
    v70.size.width = v12;
    v70.size.height = v11;
    v58 = MaxX - CGRectGetMaxX(v70) - v22;
    v71.origin.x = x;
    v71.origin.y = y;
    v71.size.width = v12;
    v71.size.height = v11;
    MinX = CGRectGetMinX(v71);
    v72.origin.x = v17;
    v72.origin.y = v16;
    v72.size.width = v62;
    v72.size.height = r1;
    v26 = MinX - CGRectGetMinX(v72) - v22;
    sourceView = [(_UIEditMenuPresentation *)self sourceView];
    v28 = _UIEditMenuGetPlatformMetrics([sourceView _userInterfaceIdiom]);
    [v28 horizontalMenuMaximumWidth];
    v30 = v29 * 0.35;

    if ((v23 != 3 || (v67 > v58 ? (v31 = v58 < v30) : (v31 = 0), v31 ? (v32 = v26 <= v58) : (v32 = 1), v32)) && (v23 != 4 || (v67 > v26 ? (v46 = v26 < v30) : (v46 = 0), v46 ? (v47 = v26 <= v58) : (v47 = 0), v47)))
    {
      *direction = 3;
      **&height = 0;
      v82.origin.x = x;
      v82.size.width = v12;
      v82.origin.y = y;
      v82.size.height = v61;
      v48 = CGRectGetMaxX(v82);
      v83.origin.x = v17;
      v83.origin.y = v16;
      v83.size.width = v62;
      v83.size.height = r1;
      v34 = v22 + fmin(v48, CGRectGetMaxX(v83));
    }

    else
    {
      *direction = 4;
      **&height = 0x3FF0000000000000;
      v73.origin.x = x;
      v73.size.width = v12;
      v73.origin.y = y;
      v73.size.height = v61;
      v33 = CGRectGetMinX(v73);
      v74.origin.x = v17;
      v74.origin.y = v16;
      v74.size.width = v62;
      v74.size.height = r1;
      v34 = fmax(v33, CGRectGetMinX(v74)) - v22;
    }

    **&width = v34;
    return;
  }

  v56 = v22;
  v35 = v17;
  v75.origin.x = v17;
  v75.origin.y = v16;
  v75.size.width = v62;
  v75.size.height = v15;
  v36 = v15;
  MaxY = CGRectGetMaxY(v75);
  v76.origin.x = x;
  v76.origin.y = y;
  v76.size.width = v12;
  v76.size.height = v11;
  v38 = CGRectGetMaxY(v76);
  v77.size.height = v11;
  v55 = MaxY - v38 - v56;
  v77.origin.x = x;
  v77.origin.y = y;
  v77.size.width = v12;
  MinY = CGRectGetMinY(v77);
  v78.origin.x = v35;
  v78.origin.y = v16;
  v78.size.width = v62;
  v78.size.height = v36;
  v40 = MinY - CGRectGetMinY(v78) - v56;
  if (v23 == 1 && v68 > v55 && v40 > v55)
  {
    goto LABEL_16;
  }

  if (v23 == 2)
  {
    if (v68 <= v40 || v40 > v55)
    {
LABEL_16:
      *direction = 2;
      *(*&height + 8) = 0x3FF0000000000000;
      v79.origin.x = v35;
      v79.origin.y = v16;
      v79.size.width = v62;
      v79.size.height = v36;
      v42 = v56 + v68 + CGRectGetMinY(v79);
      v80.origin.x = v35;
      v80.origin.y = v16;
      v80.size.width = v62;
      v80.size.height = v36;
      v43 = v56 + CGRectGetMaxY(v80);
      v81.origin.x = v63;
      v81.size.width = v12;
      v44 = y;
      v81.origin.y = y;
      v81.size.height = v11;
      v45 = CGRectGetMinY(v81);
      v56 = -v56;
      goto LABEL_37;
    }

    *direction = 1;
LABEL_36:
    *(*&height + 8) = 0;
    v84.origin.x = v35;
    v84.origin.y = v16;
    v84.size.width = v62;
    v84.size.height = v36;
    v42 = CGRectGetMinY(v84) - v56;
    v85.origin.x = v35;
    v85.origin.y = v16;
    v85.size.width = v62;
    v85.size.height = v36;
    v43 = CGRectGetMaxY(v85) - v68 - v56;
    v86.origin.x = v63;
    v86.size.width = v12;
    v44 = y;
    v86.origin.y = y;
    v86.size.height = v11;
    v45 = CGRectGetMaxY(v86);
LABEL_37:
    v59 = v42;
    v50 = fmax(v42, fmin(v45, v43));
    if (v50 == v45)
    {
      *(*&width + 8) = v45 + v56;
    }

    else
    {
      v57 = v43;
      v87.origin.x = v35;
      v87.origin.y = v16;
      v87.size.width = v62;
      v87.size.height = r1;
      v90.origin.x = v63;
      v90.size.width = v64;
      v90.origin.y = v44;
      v90.size.height = v11;
      v88 = CGRectIntersection(v87, v90);
      v51 = v88.origin.x;
      v52 = v88.origin.y;
      v53 = v88.size.width;
      v54 = v88.size.height;
      if (!CGRectIsNull(v88))
      {
        v89.origin.x = v51;
        v89.origin.y = v52;
        v89.size.width = v53;
        v89.size.height = v54;
        v50 = fmax(v59, fmin(CGRectGetMidY(v89), v57));
      }

      *(*&width + 8) = v50;
    }

    return;
  }

  *direction = v23;
  if (v23 == 1)
  {
    goto LABEL_36;
  }

  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"_UIEditMenuContentPresentation.m" lineNumber:968 description:{@"Failed to resolve undefined UIEditMenuArrowDirection: %ld", v23}];
}

- (CGRect)targetRectInSourceView
{
  x = self->_targetRectInSourceView.origin.x;
  y = self->_targetRectInSourceView.origin.y;
  width = self->_targetRectInSourceView.size.width;
  height = self->_targetRectInSourceView.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end