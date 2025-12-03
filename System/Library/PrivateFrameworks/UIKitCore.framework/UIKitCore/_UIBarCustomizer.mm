@interface _UIBarCustomizer
- (BOOL)dropInteraction:(id)interaction canHandleSession:(id)session;
- (CGPoint)lastDragLocation;
- (CGRect)initialSourceFrame;
- (_UIBarCustomizer)initWithDelegate:(id)delegate;
- (_UIBarCustomizerDelegate)delegate;
- (double)_dragInteraction:(id)interaction delayForLiftBeginningAtLocation:(CGPoint)location;
- (id)_dragItemsAtLocation:(CGPoint)location;
- (id)dragInteraction:(id)interaction itemsForBeginningSession:(id)session;
- (id)dragInteraction:(id)interaction previewForCancellingItem:(id)item withDefault:(id)default;
- (id)dragInteraction:(id)interaction previewForLiftingItem:(id)item session:(id)session;
- (id)dropInteraction:(id)interaction previewForDroppingItem:(id)item withDefault:(id)default;
- (id)dropInteraction:(id)interaction sessionDidUpdate:(id)update;
- (int)_overflowItemBucketSize;
- (void)_animateDropOrCancelForItem:(id)item animator:(id)animator isCancel:(BOOL)cancel;
- (void)_reflow;
- (void)_reflowAnimatedWithAlongsideActions:(id)actions;
- (void)_setActive:(BOOL)active;
- (void)_updateDebugUI;
- (void)beginWithSession:(id)session;
- (void)dragInteraction:(id)interaction session:(id)session willAddItems:(id)items forInteraction:(id)forInteraction;
- (void)dragInteraction:(id)interaction session:(id)session willEndWithOperation:(unint64_t)operation;
- (void)dragInteraction:(id)interaction sessionWillBegin:(id)begin;
- (void)dropInteraction:(id)interaction performDrop:(id)drop;
- (void)invalidateLayout;
@end

@implementation _UIBarCustomizer

- (_UIBarCustomizer)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v8.receiver = self;
  v8.super_class = _UIBarCustomizer;
  v5 = [(_UIBarCustomizer *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
    [(_UIBarCustomizer *)v6 setInitialSourceFrame:*MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24)];
    [(_UIBarCustomizer *)v6 set_dropIndex:0x7FFFFFFFFFFFFFFFLL];
  }

  return v6;
}

- (void)beginWithSession:(id)session
{
  v91 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  _mutableVisibleItems = [sessionCopy _mutableVisibleItems];
  _mutableAdditionalItems = [sessionCopy _mutableAdditionalItems];
  [(_UIBarCustomizer *)self set_activeSession:sessionCopy];
  delegate = [(_UIBarCustomizer *)self delegate];
  _activeSession = [(_UIBarCustomizer *)self _activeSession];
  v66 = [delegate barCustomizer:self containerViewForSession:_activeSession];

  traitCollection = [v66 traitCollection];
  layoutDirection = [traitCollection layoutDirection];

  if (layoutDirection == 1)
  {
    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    v6 = _mutableVisibleItems;
    v7 = [v6 countByEnumeratingWithState:&v84 objects:v90 count:16];
    if (v7)
    {
      v8 = *v85;
      do
      {
        v9 = 0;
        do
        {
          if (*v85 != v8)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v84 + 1) + 8 * v9++) setReverseItemsForRTL:1];
        }

        while (v7 != v9);
        v7 = [v6 countByEnumeratingWithState:&v84 objects:v90 count:16];
      }

      while (v7);
    }

    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v81 = 0u;
    v10 = _mutableAdditionalItems;
    v11 = [v10 countByEnumeratingWithState:&v80 objects:v89 count:16];
    if (v11)
    {
      v12 = *v81;
      do
      {
        v13 = 0;
        do
        {
          if (*v81 != v12)
          {
            objc_enumerationMutation(v10);
          }

          [*(*(&v80 + 1) + 8 * v13++) setReverseItemsForRTL:1];
        }

        while (v11 != v13);
        v11 = [v10 countByEnumeratingWithState:&v80 objects:v89 count:16];
      }

      while (v11);
    }
  }

  containerView = [(_UIBarCustomizer *)self containerView];
  v15 = containerView == 0;

  if (v15)
  {
    v25 = [delegate barCustomizer:self parentTraitEnvironmentForSession:sessionCopy];
    reservoir = [[_UIBarCustomizationContainerView alloc] initWithParentTraitEnvironment:v25];
    [v66 bounds];
    [(UIView *)reservoir setFrame:?];
    objc_initWeak(&location, self);
    v77[0] = MEMORY[0x1E69E9820];
    v77[1] = 3221225472;
    v77[2] = __37___UIBarCustomizer_beginWithSession___block_invoke;
    v77[3] = &unk_1E7108E78;
    objc_copyWeak(&v78, &location);
    [(_UIBarCustomizationContainerView *)reservoir setTraitChangeHandler:v77];
    v27 = [UIView alloc];
    [(UIView *)reservoir bounds];
    v28 = [(UIView *)v27 initWithFrame:?];
    [(UIView *)v28 setAutoresizingMask:18];
    v29 = +[UIColor _alertControllerDimmingViewColor];
    [(UIView *)v28 setBackgroundColor:v29];

    [(UIView *)v28 setAlpha:0.0];
    v30 = [[UITapGestureRecognizer alloc] initWithTarget:self action:sel__handleDimmingViewTap_];
    [(UIView *)v28 addGestureRecognizer:v30];

    [(UIView *)reservoir addSubview:v28];
    [(_UIBarCustomizer *)self setDimmingView:v28];

    v31 = objc_opt_new();
    [v31 setShowsHorizontalScrollIndicator:0];
    [(UIView *)reservoir addSubview:v31];
    [(_UIBarCustomizer *)self setVisibleItemScrollView:v31];

    v32 = [UIView alloc];
    [(UIView *)reservoir bounds];
    v33 = [(UIView *)v32 initWithFrame:?];
    [(UIView *)v33 setAutoresizingMask:18];
    [(UIView *)v33 setAlpha:1.0];
    dimmingView = [(_UIBarCustomizer *)self dimmingView];
    [(UIView *)reservoir insertSubview:v33 aboveSubview:dimmingView];

    [(_UIBarCustomizer *)self setReservoirContainerView:v33];
    v35 = [_UIBarCustomizationItemReservoirView alloc];
    v36 = [_mutableAdditionalItems mutableCopy];
    v37 = [(_UIBarCustomizationItemReservoirView *)v35 initWithItems:v36];

    [(_UIBarCustomizationItemReservoirView *)v37 setExpanded:0 animated:0];
    v38 = _UILocalizedString(@"BAR_CUSTOMIZATION_POPOVER_RESET", @"Reset button in bar customization popover.", @"Reset");
    v75[0] = MEMORY[0x1E69E9820];
    v75[1] = 3221225472;
    v75[2] = __37___UIBarCustomizer_beginWithSession___block_invoke_2;
    v75[3] = &unk_1E70F7450;
    objc_copyWeak(&v76, &location);
    v39 = [UIAction actionWithTitle:v38 image:0 identifier:0 handler:v75];
    [(_UIBarCustomizationItemReservoirView *)v37 setResetAction:v39];

    v73[0] = MEMORY[0x1E69E9820];
    v73[1] = 3221225472;
    v73[2] = __37___UIBarCustomizer_beginWithSession___block_invoke_3;
    v73[3] = &unk_1E70F7450;
    objc_copyWeak(&v74, &location);
    v40 = [UIAction actionWithHandler:v73];
    [(_UIBarCustomizationItemReservoirView *)v37 setDoneAction:v40];

    reservoirContainerView = [(_UIBarCustomizer *)self reservoirContainerView];
    [reservoirContainerView addSubview:v37];

    objc_destroyWeak(&v74);
    objc_destroyWeak(&v76);

    [(_UIBarCustomizer *)self setReservoir:v37];
    v42 = [[UIDragInteraction alloc] initWithDelegate:self];
    [(UIDragInteraction *)v42 setEnabled:0];
    [(_UIBarCustomizer *)self setDragInteraction:v42];

    dragInteraction = [(_UIBarCustomizer *)self dragInteraction];
    [(UIView *)reservoir addInteraction:dragInteraction];

    v44 = [[UIDropInteraction alloc] initWithDelegate:self];
    [(UIView *)reservoir addInteraction:v44];

    if ((_UISolariumEnabled() & 1) == 0)
    {
      array = [MEMORY[0x1E695DF70] array];
      v46 = 3;
      do
      {
        v47 = objc_opt_new();
        v48 = +[UIColor tintColor];
        [v47 setBackgroundColor:v48];

        visibleItemScrollView = [(_UIBarCustomizer *)self visibleItemScrollView];
        [visibleItemScrollView addSubview:v47];

        [array addObject:v47];
        --v46;
      }

      while (v46);
      [(_UIBarCustomizer *)self setEllipsisDotViews:array];
    }

    [(_UIBarCustomizer *)self setContainerView:reservoir];
    objc_destroyWeak(&v78);
    objc_destroyWeak(&location);
  }

  else
  {
    [v66 bounds];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;
    containerView2 = [(_UIBarCustomizer *)self containerView];
    [containerView2 setFrame:{v17, v19, v21, v23}];

    v25 = [_mutableAdditionalItems mutableCopy];
    reservoir = [(_UIBarCustomizer *)self reservoir];
    [(_UIBarCustomizationContainerView *)reservoir setItems:v25];
  }

  containerView3 = [(_UIBarCustomizer *)self containerView];
  [v66 addSubview:containerView3];

  visibleItemScrollView2 = [(_UIBarCustomizer *)self visibleItemScrollView];
  [visibleItemScrollView2 setContentOffset:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];

  array2 = [MEMORY[0x1E695DF70] array];
  [(_UIBarCustomizer *)self set_visibleItems:array2];

  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v53 = _mutableVisibleItems;
  v54 = [v53 countByEnumeratingWithState:&v69 objects:v88 count:16];
  if (v54)
  {
    v55 = *v70;
    do
    {
      v56 = 0;
      do
      {
        if (*v70 != v55)
        {
          objc_enumerationMutation(v53);
        }

        v57 = *(*(&v69 + 1) + 8 * v56);
        v58 = objc_opt_new();
        v59 = [[_UIBarCustomizationChiclet alloc] initWithItem:v57];
        [(_UIBarCustomizationChiclet *)v59 sizeToFit];
        [v58 setChiclet:v59];
        _visibleItems = [(_UIBarCustomizer *)self _visibleItems];
        [_visibleItems addObject:v57];

        visibleItemScrollView3 = [(_UIBarCustomizer *)self visibleItemScrollView];
        [visibleItemScrollView3 addSubview:v58];

        ++v56;
      }

      while (v54 != v56);
      v54 = [v53 countByEnumeratingWithState:&v69 objects:v88 count:16];
    }

    while (v54);
  }

  v68[0] = MEMORY[0x1E69E9820];
  v68[1] = 3221225472;
  v68[2] = __37___UIBarCustomizer_beginWithSession___block_invoke_4;
  v68[3] = &unk_1E70F3590;
  v68[4] = self;
  [UIView performWithoutAnimation:v68];
  [(_UIBarCustomizer *)self _setActive:1];
}

- (void)invalidateLayout
{
  if ([(_UIBarCustomizer *)self isActive])
  {
    [(_UIBarCustomizer *)self setInitialSourceFrame:*MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24)];
    [(_UIBarCustomizer *)self _reflow];
    reservoir = [(_UIBarCustomizer *)self reservoir];
    [reservoir invalidateLayoutAndForceUpdate:1];
  }
}

- (void)_setActive:(BOOL)active
{
  activeCopy = active;
  if ([(_UIBarCustomizer *)self isActive]!= active)
  {
    self->_isActive = activeCopy;
    dragInteraction = [(_UIBarCustomizer *)self dragInteraction];
    [dragInteraction setEnabled:activeCopy];

    containerView = [(_UIBarCustomizer *)self containerView];
    [containerView setUserInteractionEnabled:activeCopy];

    if (activeCopy)
    {
      v7 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
      v8 = [v7 vendKeyboardSuppressionAssertionForReason:@"bar customizer"];
      [(_UIBarCustomizer *)self setKeyboardSuppressionAssertion:v8];

      _activeSession = [(_UIBarCustomizer *)self _activeSession];
      beginAnimationCoordinator = [_activeSession beginAnimationCoordinator];
      reservoirContainerView = [(_UIBarCustomizer *)self reservoirContainerView];
      [reservoirContainerView setAlpha:1.0];

      reservoirContainerView2 = [(_UIBarCustomizer *)self reservoirContainerView];
      _outermostLayer = [reservoirContainerView2 _outermostLayer];
      [_outermostLayer setOpacity:0.0];
    }

    else
    {
      [(_UIBarCustomizer *)self setKeyboardSuppressionAssertion:0];
      _activeSession = [(_UIBarCustomizer *)self _activeSession];
      beginAnimationCoordinator = [_activeSession endAnimationCoordinator];
      dragInteraction2 = [(_UIBarCustomizer *)self dragInteraction];
      [dragInteraction2 _cancelDrag];

      [(_UIBarCustomizer *)self set_activeSession:0];
      _visibleItems = [(_UIBarCustomizer *)self _visibleItems];
      [_activeSession set_mutableVisibleItems:_visibleItems];

      reservoir = [(_UIBarCustomizer *)self reservoir];
      items = [reservoir items];
      [_activeSession set_mutableAdditionalItems:items];

      delegate = [(_UIBarCustomizer *)self delegate];
      [delegate barCustomizer:self willEndSession:_activeSession didReset:{-[_UIBarCustomizer wasReset](self, "wasReset")}];

      objc_initWeak(&location, self);
      v39[0] = MEMORY[0x1E69E9820];
      v39[1] = 3221225472;
      v39[2] = __31___UIBarCustomizer__setActive___block_invoke;
      v39[3] = &unk_1E7108EA0;
      objc_copyWeak(&v40, &location);
      [beginAnimationCoordinator addCompletion:v39];
      objc_destroyWeak(&v40);
      objc_destroyWeak(&location);
    }

    v19 = [UIViewSpringAnimationBehavior behaviorWithDampingRatio:0.875 response:0.56];
    v31 = MEMORY[0x1E69E9820];
    v32 = 3221225472;
    v33 = __31___UIBarCustomizer__setActive___block_invoke_2;
    v34 = &unk_1E70F5B18;
    selfCopy = self;
    LOBYTE(v38) = activeCopy;
    v36 = _activeSession;
    v37 = beginAnimationCoordinator;
    v23 = MEMORY[0x1E69E9820];
    v24 = 3221225472;
    v25 = __31___UIBarCustomizer__setActive___block_invoke_3;
    v26 = &unk_1E7108EC8;
    LOBYTE(v30) = activeCopy;
    selfCopy2 = self;
    v28 = v37;
    v29 = v36;
    v20 = v36;
    v21 = v37;
    [UIView _animateUsingSpringBehavior:v19 tracking:0 animations:&v31 completion:&v23];

    if (!activeCopy)
    {
      [(_UIBarCustomizer *)self setInitialSourceFrame:*MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24), v23, v24, v25, v26, selfCopy2, v28, v29, v30, v31, v32, v33, v34, selfCopy, v36, v37, v38];
    }

    v22 = [(_UIBarCustomizer *)self reservoir:v23];
    [v22 setExpanded:activeCopy animated:1];
  }
}

- (void)_reflow
{
  v182 = *MEMORY[0x1E69E9840];
  containerView = [(_UIBarCustomizer *)self containerView];
  visibleItemScrollView = [(_UIBarCustomizer *)self visibleItemScrollView];
  [(_UIBarCustomizer *)self initialSourceFrame];
  x = v3;
  y = v5;
  width = v7;
  height = v9;
  _visibleItems = [(_UIBarCustomizer *)self _visibleItems];
  v183.origin.x = x;
  v183.origin.y = y;
  v183.size.width = width;
  v183.size.height = height;
  if (CGRectIsNull(v183))
  {
    v176[0] = MEMORY[0x1E69E9820];
    v176[1] = 3221225472;
    v176[2] = __27___UIBarCustomizer__reflow__block_invoke;
    v176[3] = &unk_1E70F35B8;
    v11 = visibleItemScrollView;
    v177 = v11;
    selfCopy = self;
    [UIView performWithoutAnimation:v176];
    v174 = 0u;
    v175 = 0u;
    v172 = 0u;
    v173 = 0u;
    _activeSession = [(_UIBarCustomizer *)self _activeSession];
    sourceItems = [_activeSession sourceItems];

    v14 = [sourceItems countByEnumeratingWithState:&v172 objects:v180 count:16];
    if (v14)
    {
      v15 = *v173;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v173 != v15)
          {
            objc_enumerationMutation(sourceItems);
          }

          [*(*(&v172 + 1) + 8 * i) _sourceFrameInContainer:v11];
          v199.origin.x = v17;
          v199.origin.y = v18;
          v199.size.width = v19;
          v199.size.height = v20;
          v184.origin.x = x;
          v184.origin.y = y;
          v184.size.width = width;
          v184.size.height = height;
          v185 = CGRectUnion(v184, v199);
          x = v185.origin.x;
          y = v185.origin.y;
          width = v185.size.width;
          height = v185.size.height;
        }

        v14 = [sourceItems countByEnumeratingWithState:&v172 objects:v180 count:16];
      }

      while (v14);
    }

    v186.origin.x = x;
    v186.origin.y = y;
    v186.size.width = width;
    v186.size.height = height;
    if (CGRectIsNull(v186))
    {
      [containerView bounds];
      x = CGRectGetMidX(v187);
      width = 0.0;
      height = 100.0;
      y = 0.0;
    }

    [(_UIBarCustomizer *)self setInitialSourceFrame:x, y, width, height];
  }

  if ([(_UIBarCustomizer *)self isActive])
  {
    v181.a = 0.0;
    *&v181.b = &v181;
    *&v181.c = 0x2020000000uLL;
    traitCollection = [containerView traitCollection];
    layoutDirection = [traitCollection layoutDirection];

    v170[0] = MEMORY[0x1E69E9820];
    v170[1] = 3221225472;
    v170[2] = __27___UIBarCustomizer__reflow__block_invoke_2;
    v170[3] = &unk_1E7108EF0;
    if (layoutDirection == 1)
    {
      v23 = 2;
    }

    else
    {
      v23 = 0;
    }

    v171 = layoutDirection == 1;
    v170[4] = self;
    v170[5] = &v181;
    *&v170[6] = y + height * 0.5;
    [_visibleItems enumerateObjectsWithOptions:v23 usingBlock:v170];
    v24 = *(*&v181.b + 24);
    [visibleItemScrollView frame];
    v25 = CGRectGetWidth(v188);
    _dropIndex = [(_UIBarCustomizer *)self _dropIndex];
    v27 = [_visibleItems count];
    v28 = 0;
    v29 = 0;
    v30 = -40.0;
    if (layoutDirection == 1)
    {
      v30 = 40.0;
    }

    v31 = v30 + (v25 - v24) * 0.5;
    if (_dropIndex == v27)
    {
      v32 = v31;
    }

    else
    {
      v32 = (v25 - v24) * 0.5;
    }

    while ([_visibleItems count] > v28)
    {
      v33 = [_visibleItems objectAtIndexedSubscript:v28];
      _chiclet = [v33 _chiclet];
      anchorView = [_chiclet anchorView];

      chiclet = [anchorView chiclet];
      LODWORD(_chiclet) = [chiclet minimized];

      if (_chiclet)
      {
        v37 = fmin((v29 / [(_UIBarCustomizer *)self _overflowItemBucketSize]), 2.0) * 0.166666667 + 0.5;
        v38 = [UIViewSpringAnimationBehavior behaviorWithDampingRatio:1.0 response:v37];
        v168[0] = MEMORY[0x1E69E9820];
        v168[1] = 3221225472;
        v168[2] = __27___UIBarCustomizer__reflow__block_invoke_3;
        v168[3] = &unk_1E70F3590;
        v39 = anchorView;
        v169 = v39;
        [UIView _animateUsingSpringBehavior:v38 tracking:0 animations:v168 completion:0];

        if (v32 > 0.0)
        {
          v40 = [UIViewSpringAnimationBehavior behaviorWithDampingRatio:0.82 response:v37];
          v165[0] = MEMORY[0x1E69E9820];
          v165[1] = 3221225472;
          v165[2] = __27___UIBarCustomizer__reflow__block_invoke_4;
          v165[3] = &unk_1E70F32F0;
          v166 = v39;
          v167 = v32;
          [UIView _animateUsingSpringBehavior:v40 tracking:0 animations:v165 completion:0];
        }

        ++v29;
      }

      else if (v32 > 0.0)
      {
        [anchorView center];
        v42 = v41;
        [anchorView center];
        [anchorView setCenter:v32 + v42];
      }

      ++v28;
    }

    [visibleItemScrollView frame];
    [visibleItemScrollView setContentSize:{v24, CGRectGetHeight(v195)}];
    _Block_object_dispose(&v181, 8);
  }

  else
  {
    [visibleItemScrollView setContentOffset:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
    delegate = [(_UIBarCustomizer *)self delegate];
    _activeSession2 = [(_UIBarCustomizer *)self _activeSession];
    [delegate barCustomizer:self overflowControlBoundsForSession:_activeSession2];
    v46 = v45;
    v48 = v47;
    v50 = v49;
    v52 = v51;

    [containerView convertRect:visibleItemScrollView toView:{v46, v48, v50, v52}];
    v137 = v53;
    v138 = v54;
    v135 = v55;
    v136 = v56;
    v163 = 0u;
    v164 = 0u;
    v161 = 0u;
    v162 = 0u;
    v57 = _visibleItems;
    v58 = 0;
    v59 = [v57 countByEnumeratingWithState:&v161 objects:v179 count:16];
    if (v59)
    {
      v60 = *v162;
      do
      {
        for (j = 0; j != v59; ++j)
        {
          if (*v162 != v60)
          {
            objc_enumerationMutation(v57);
          }

          _chiclet2 = [*(*(&v161 + 1) + 8 * j) _chiclet];
          anchorView2 = [_chiclet2 anchorView];

          chiclet2 = [anchorView2 chiclet];
          representedItem = [chiclet2 representedItem];
          [representedItem _sourceFrameInContainer:containerView];
          v67 = v66;
          v69 = v68;
          v46 = v70;
          v72 = v71;

          v189.origin.x = v67;
          v189.origin.y = v69;
          v189.size.width = v46;
          v189.size.height = v72;
          if (CGRectIsEmpty(v189))
          {
            if ([(_UIBarCustomizer *)self wasReset])
            {
              [anchorView2 setAlpha:0.0];
              CGAffineTransformMakeScale(&v160, 0.1, 0.1);
              v181 = v160;
              [anchorView2 setTransform:&v181];
            }

            else
            {
              ++v58;
            }
          }

          else
          {
            [visibleItemScrollView frame];
            MinX = CGRectGetMinX(v190);
            [visibleItemScrollView frame];
            [anchorView2 setCenter:{v46 * 0.5 + v67 - MinX, v72 * 0.5 + v69 - CGRectGetMinY(v191)}];
            [anchorView2 frame];
            CGRectGetMaxX(v192);
          }
        }

        v59 = [v57 countByEnumeratingWithState:&v161 objects:v179 count:16];
      }

      while (v59);
    }

    v140 = v58;
    [(_UIBarCustomizer *)self setOverflowItemCount:?];
    v74 = [v57 count];
    _overflowItemBucketSize = [(_UIBarCustomizer *)self _overflowItemBucketSize];
    containerView2 = [(_UIBarCustomizer *)self containerView];
    traitCollection2 = [containerView2 traitCollection];

    v142 = traitCollection2;
    v77 = [UIImageSymbolConfiguration configurationWithTextStyle:"configurationWithTextStyle:scale:" scale:?];
    v78 = [v77 configurationWithTraitCollection:v142];
    if (_UISMCBarsEnabled())
    {
      v79 = @"ellipsis";
    }

    else
    {
      v79 = @"ellipsis.circle";
    }

    v80 = [UIImage systemImageNamed:v79 withConfiguration:v78];
    _outlinePath = [v80 _outlinePath];

    v82 = _outlinePath;
    SeparateComponents = CGPathCreateSeparateComponents([_outlinePath CGPath], 0);
    Count = CFArrayGetCount(SeparateComponents);
    if (Count >= 1)
    {
      v85 = 0;
      __asm { FMOV            V0.2D, #0.5 }

      v139 = _Q0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(SeparateComponents, v85);
        PathBoundingBox = CGPathGetPathBoundingBox(ValueAtIndex);
        v145 = PathBoundingBox.origin.y;
        v146 = PathBoundingBox.origin.x;
        v143 = PathBoundingBox.size.height;
        v144 = PathBoundingBox.size.width;
        v92 = CGRectGetWidth(PathBoundingBox);
        [_outlinePath bounds];
        if (v92 < CGRectGetWidth(v194) * 0.5)
        {
          v93.f64[0] = v144;
          v93.f64[1] = v143;
          v94 = vmulq_f64(v93, v139);
          v93.f64[0] = v146;
          v93.f64[1] = v145;
          *(&v181.a + v85) = vaddq_f64(v93, v94);
        }

        ++v85;
      }

      while (Count != v85);
      v46 = v181.c - v181.a;
    }

    v95 = fabs(v46);
    v96 = v74 - v58;
    if ([v57 count] > v96)
    {
      v97 = 0;
      do
      {
        v98 = [v57 objectAtIndexedSubscript:v96];
        _chiclet3 = [v98 _chiclet];
        anchorView3 = [_chiclet3 anchorView];

        layoutDirection2 = [v142 layoutDirection];
        v102 = fmin((v97 / _overflowItemBucketSize), 2.0);
        v103 = v102 - 1;
        if (layoutDirection2)
        {
          v104 = -(v95 * v103);
        }

        else
        {
          v104 = v95 * v103;
        }

        v105 = [UIViewSpringAnimationBehavior behaviorWithDampingRatio:0.88 response:v102 * -0.186666667 + 0.56];
        v156[0] = MEMORY[0x1E69E9820];
        v156[1] = 3221225472;
        v156[2] = __27___UIBarCustomizer__reflow__block_invoke_5;
        v156[3] = &unk_1E70F6848;
        v157 = anchorView3;
        v158 = v137 + v135 * 0.5 + v104;
        v159 = v138 + v136 * 0.5;
        v106 = anchorView3;
        [UIView _animateUsingSpringBehavior:v105 tracking:0 animations:v156 completion:0];

        ++v96;
        ++v97;
      }

      while ([v57 count] > v96);
    }

    if ((_UISolariumEnabled() & 1) == 0)
    {
      v147 = v142;
      v107 = [UIImageSymbolConfiguration configurationWithTextStyle:@"UICTFontTextStyleBody" scale:3];
      v108 = [v107 configurationWithTraitCollection:v147];
      if (_UISMCBarsEnabled())
      {
        v109 = @"ellipsis";
      }

      else
      {
        v109 = @"ellipsis.circle";
      }

      v110 = [UIImage systemImageNamed:v109 withConfiguration:v108];
      _outlinePath2 = [v110 _outlinePath];

      v112 = _outlinePath2;
      v113 = CGPathCreateSeparateComponents([_outlinePath2 CGPath], 0);
      v114 = CFArrayGetCount(v113);
      v115 = 0.0;
      if (v114 >= 1)
      {
        v116 = 0;
        while (1)
        {
          v117 = CFArrayGetValueAtIndex(v113, v116);
          v196 = CGPathGetPathBoundingBox(v117);
          v118 = v196.origin.x;
          v119 = v196.origin.y;
          v120 = v196.size.width;
          v121 = v196.size.height;
          v122 = CGRectGetWidth(v196);
          [_outlinePath2 bounds];
          if (v122 < CGRectGetWidth(v197) * 0.5)
          {
            break;
          }

          if (v114 == ++v116)
          {
            goto LABEL_67;
          }
        }

        v198.origin.x = v118;
        v198.origin.y = v119;
        v198.size.width = v120;
        v198.size.height = v121;
        v115 = CGRectGetWidth(v198);
      }

LABEL_67:

      ellipsisDotViews = [(_UIBarCustomizer *)self ellipsisDotViews];
      v124 = [ellipsisDotViews count] == 0;

      if (!v124)
      {
        v125 = 0;
        v126 = MEMORY[0x1E69E9820];
        do
        {
          ellipsisDotViews2 = [(_UIBarCustomizer *)self ellipsisDotViews];
          v128 = [ellipsisDotViews2 objectAtIndexedSubscript:v125];

          layoutDirection3 = [v147 layoutDirection];
          v130 = -(v95 * (v125 - 1));
          if (!layoutDirection3)
          {
            v130 = v95 * (v125 - 1);
          }

          v131 = v137 + v135 * 0.5 + v130;
          v151[0] = v126;
          v151[1] = 3221225472;
          v151[2] = __27___UIBarCustomizer__reflow__block_invoke_6;
          v151[3] = &unk_1E70F38C0;
          v132 = v128;
          v152 = v132;
          v153 = v115;
          v154 = v131;
          v155 = v138 + v136 * 0.5;
          [UIView performWithoutAnimation:v151];
          if (v125 >= v140)
          {
            [v132 setAlpha:1.0];
          }

          ellipsisDotViews3 = [(_UIBarCustomizer *)self ellipsisDotViews];
          v134 = [ellipsisDotViews3 count];

          ++v125;
        }

        while (v134 > v125);
      }
    }
  }
}

- (void)_reflowAnimatedWithAlongsideActions:(id)actions
{
  actionsCopy = actions;
  v5 = [UIViewSpringAnimationBehavior behaviorWithDampingRatio:1.0 response:0.4];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56___UIBarCustomizer__reflowAnimatedWithAlongsideActions___block_invoke;
  v7[3] = &unk_1E70F37C0;
  v7[4] = self;
  v8 = actionsCopy;
  v6 = actionsCopy;
  [UIView _animateUsingSpringBehavior:v5 tracking:0 animations:v7 completion:0];
}

- (id)dragInteraction:(id)interaction itemsForBeginningSession:(id)session
{
  sessionCopy = session;
  containerView = [(_UIBarCustomizer *)self containerView];
  [sessionCopy locationInView:containerView];
  v8 = v7;
  v10 = v9;

  v11 = [(_UIBarCustomizer *)self _dragItemsAtLocation:v8, v10];

  return v11;
}

- (id)_dragItemsAtLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  v11[1] = *MEMORY[0x1E69E9840];
  containerView = [(_UIBarCustomizer *)self containerView];
  v6 = [containerView hitTest:0 withEvent:{x, y}];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = objc_alloc_init(MEMORY[0x1E696ACA0]);
    v8 = [[UIDragItem alloc] initWithItemProvider:v7];
    [(UIDragItem *)v8 setLocalObject:v6];
    v11[0] = v8;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  }

  else
  {
    v9 = MEMORY[0x1E695E0F0];
  }

  return v9;
}

- (void)dragInteraction:(id)interaction sessionWillBegin:(id)begin
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = [begin items];
  v4 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        _chiclet = [v8 _chiclet];
        anchorView = [_chiclet anchorView];

        [anchorView setState:1];
        v11 = [UIViewSpringAnimationBehavior behaviorWithDampingRatio:1.0 response:0.3];
        v13[0] = MEMORY[0x1E69E9820];
        v13[1] = 3221225472;
        v13[2] = __53___UIBarCustomizer_dragInteraction_sessionWillBegin___block_invoke;
        v13[3] = &unk_1E70F3590;
        v13[4] = v8;
        [UIView _animateUsingSpringBehavior:v11 tracking:0 animations:v13 completion:0];
      }

      v5 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }
}

- (void)dragInteraction:(id)interaction session:(id)session willEndWithOperation:(unint64_t)operation
{
  if (!operation)
  {
    [(_UIBarCustomizer *)self set_dropIndex:0x7FFFFFFFFFFFFFFFLL, session];
  }
}

- (void)dragInteraction:(id)interaction session:(id)session willAddItems:(id)items forInteraction:(id)forInteraction
{
  v18 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [itemsCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(itemsCopy);
        }

        _chiclet = [*(*(&v13 + 1) + 8 * v10) _chiclet];
        anchorView = [_chiclet anchorView];

        [anchorView setState:1];
        ++v10;
      }

      while (v8 != v10);
      v8 = [itemsCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }
}

- (id)dragInteraction:(id)interaction previewForLiftingItem:(id)item session:(id)session
{
  itemCopy = item;
  v6 = objc_opt_new();
  [v6 _setPreviewMode:3];
  [v6 setHidesSourceViewDuringDropAnimation:1];
  _chiclet = [itemCopy _chiclet];
  superview = [_chiclet superview];
  _chiclet2 = [itemCopy _chiclet];
  [superview bringSubviewToFront:_chiclet2];

  v10 = [UITargetedDragPreview alloc];
  _chiclet3 = [itemCopy _chiclet];

  v12 = [(UITargetedPreview *)v10 initWithView:_chiclet3 parameters:v6];

  return v12;
}

- (double)_dragInteraction:(id)interaction delayForLiftBeginningAtLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  view = [interaction view];
  containerView = [(_UIBarCustomizer *)self containerView];
  [view convertPoint:containerView toView:{x, y}];
  v10 = v9;
  v12 = v11;

  containerView2 = [(_UIBarCustomizer *)self containerView];
  v14 = [containerView2 hitTest:0 withEvent:{v10, v12}];

  _containingScrollView = [v14 _containingScrollView];
  v16 = _containingScrollView;
  v17 = 0.0;
  if (_containingScrollView)
  {
    [_containingScrollView contentSize];
    v19 = v18;
    [v16 frame];
    if (v19 > CGRectGetWidth(v23) || ([v16 contentSize], v21 = v20, objc_msgSend(v16, "frame"), v21 > CGRectGetHeight(v24)))
    {
      v17 = 0.15;
    }
  }

  return v17;
}

- (id)dragInteraction:(id)interaction previewForCancellingItem:(id)item withDefault:(id)default
{
  defaultCopy = default;
  _chiclet = [item _chiclet];
  if (-[_UIBarCustomizer isActive](self, "isActive") || (-[_UIBarCustomizer _visibleItems](self, "_visibleItems"), v9 = objc_claimAutoreleasedReturnValue(), [_chiclet representedItem], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v9, "containsObject:", v10), v10, v9, v11))
  {
    v12 = [UIDragPreviewTarget alloc];
    superview = [_chiclet superview];
    [_chiclet center];
    v14 = [(UIPreviewTarget *)v12 initWithContainer:superview center:?];

    v15 = [defaultCopy retargetedPreviewWithTarget:v14];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (BOOL)dropInteraction:(id)interaction canHandleSession:(id)session
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  items = [session items];
  v5 = [items countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    v8 = 1;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(items);
        }

        localObject = [*(*(&v12 + 1) + 8 * i) localObject];
        objc_opt_class();
        v8 &= objc_opt_isKindOfClass();
      }

      v6 = [items countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  else
  {
    LOBYTE(v8) = 1;
  }

  return v8 & 1;
}

- (id)dropInteraction:(id)interaction sessionDidUpdate:(id)update
{
  v40 = *MEMORY[0x1E69E9840];
  updateCopy = update;
  _visibleItems = [(_UIBarCustomizer *)self _visibleItems];
  containerView = [(_UIBarCustomizer *)self containerView];
  [updateCopy locationInView:containerView];
  v9 = v8;
  v11 = v10;
  [(_UIBarCustomizer *)self setLastDragLocation:?];
  [containerView bounds];
  v44.size.width = CGRectGetWidth(v43);
  v44.size.height = 150.0;
  v44.origin.x = 0.0;
  v44.origin.y = 0.0;
  v42.x = v9;
  v42.y = v11;
  if (CGRectContainsPoint(v44, v42))
  {
    v33 = updateCopy;
    selfCopy = self;
    visibleItemScrollView = [(_UIBarCustomizer *)self visibleItemScrollView];
    [containerView convertPoint:visibleItemScrollView toView:{v9, v11}];
    v14 = v13;

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v32 = _visibleItems;
    v15 = _visibleItems;
    v16 = [v15 countByEnumeratingWithState:&v35 objects:v39 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = 0;
      v19 = *v36;
      while (2)
      {
        v20 = 0;
        v21 = v18;
        v18 += v17;
        do
        {
          if (*v36 != v19)
          {
            objc_enumerationMutation(v15);
          }

          _chiclet = [*(*(&v35 + 1) + 8 * v20) _chiclet];
          anchorView = [_chiclet anchorView];

          if ([anchorView state] != 1)
          {
            chiclet = [anchorView chiclet];
            fixed = [chiclet fixed];

            if ((fixed & 1) == 0)
            {
              traitCollection = [containerView traitCollection];
              layoutDirection = [traitCollection layoutDirection];

              [anchorView frame];
              MidX = CGRectGetMidX(v45);
              if (layoutDirection)
              {
                if (v14 >= MidX)
                {
                  goto LABEL_17;
                }
              }

              else if (v14 <= MidX)
              {
LABEL_17:

                v18 = v21;
                goto LABEL_19;
              }
            }
          }

          ++v21;

          ++v20;
        }

        while (v17 != v20);
        v17 = [v15 countByEnumeratingWithState:&v35 objects:v39 count:16];
        if (v17)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v18 = 0;
    }

LABEL_19:

    _visibleItems = v32;
    updateCopy = v33;
    self = selfCopy;
  }

  else
  {
    v18 = 0x7FFFFFFFFFFFFFFFLL;
  }

  [(_UIBarCustomizer *)self set_dropIndex:v18];
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __53___UIBarCustomizer_dropInteraction_sessionDidUpdate___block_invoke;
  v34[3] = &unk_1E70F3590;
  v34[4] = self;
  [(_UIBarCustomizer *)self _reflowAnimatedWithAlongsideActions:v34];
  v29 = [[UIDropProposal alloc] initWithDropOperation:3];

  return v29;
}

- (void)dropInteraction:(id)interaction performDrop:(id)drop
{
  v54 = *MEMORY[0x1E69E9840];
  dropCopy = drop;
  _dropIndex = [(_UIBarCustomizer *)self _dropIndex];
  [(_UIBarCustomizer *)self set_dropIndex:0x7FFFFFFFFFFFFFFFLL];
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v44 = dropCopy;
  obj = [dropCopy items];
  v48 = [obj countByEnumeratingWithState:&v49 objects:v53 count:16];
  if (v48)
  {
    v46 = *v50;
    v6 = _dropIndex;
    do
    {
      for (i = 0; i != v48; ++i)
      {
        if (*v50 != v46)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v49 + 1) + 8 * i);
        _chiclet = [v8 _chiclet];
        representedItem = [_chiclet representedItem];
        v11 = representedItem;
        if (_dropIndex == 0x7FFFFFFFFFFFFFFFLL && ([representedItem removable] & 1) != 0)
        {
          _visibleItems = [(_UIBarCustomizer *)self _visibleItems];
          v13 = [_visibleItems containsObject:v11];

          if (v13)
          {
            reservoir = [(_UIBarCustomizer *)self reservoir];
            [reservoir addItem:v11];

            _visibleItems2 = [(_UIBarCustomizer *)self _visibleItems];
            [_visibleItems2 removeObject:v11];

            anchorView = [_chiclet anchorView];
            [anchorView removeFromSuperview];

            [_chiclet setAnchorView:0];
          }
        }

        else
        {
          _chiclet2 = [v8 _chiclet];
          anchorView2 = [_chiclet2 anchorView];

          if (!anchorView2)
          {
            anchorView2 = objc_opt_new();
            visibleItemScrollView = [(_UIBarCustomizer *)self visibleItemScrollView];
            [visibleItemScrollView addSubview:anchorView2];

            _chiclet3 = [v8 _chiclet];
            [anchorView2 setChiclet:_chiclet3];

            [anchorView2 layoutIfNeeded];
            _visibleItems3 = [(_UIBarCustomizer *)self _visibleItems];
            v22 = [_visibleItems3 count];

            if (v22)
            {
              _visibleItems4 = [(_UIBarCustomizer *)self _visibleItems];
              v24 = _visibleItems4;
              if (v6 == v22)
              {
                v25 = [_visibleItems4 objectAtIndexedSubscript:v6 - 1];
                _chiclet4 = [v25 _chiclet];
                anchorView3 = [_chiclet4 anchorView];

                [anchorView3 frame];
                v28 = CGRectGetMaxX(v55) + 20.0;
              }

              else
              {
                v29 = [_visibleItems4 objectAtIndexedSubscript:v6];
                _chiclet5 = [v29 _chiclet];
                anchorView3 = [_chiclet5 anchorView];

                [anchorView3 frame];
                v28 = CGRectGetMinX(v56) + -20.0;
              }

              [anchorView3 center];
              v32 = v31;

              [anchorView2 setCenter:{v28, v32}];
            }
          }

          _visibleItems5 = [(_UIBarCustomizer *)self _visibleItems];
          v34 = [_visibleItems5 indexOfObject:v11];

          v36 = v34 != 0x7FFFFFFFFFFFFFFFLL && v6 > v34;
          v6 -= v36;
          _visibleItems6 = [(_UIBarCustomizer *)self _visibleItems];
          [_visibleItems6 removeObject:v11];

          reservoir2 = [(_UIBarCustomizer *)self reservoir];
          [reservoir2 removeItem:v11];

          _visibleItems7 = [(_UIBarCustomizer *)self _visibleItems];
          _visibleItems8 = [(_UIBarCustomizer *)self _visibleItems];
          v41 = [_visibleItems8 count];

          if (v6 >= v41)
          {
            v42 = v41;
          }

          else
          {
            v42 = v6;
          }

          [_visibleItems7 insertObject:v11 atIndex:v42];

          superview = [anchorView2 superview];
          [superview bringSubviewToFront:anchorView2];
        }
      }

      v48 = [obj countByEnumeratingWithState:&v49 objects:v53 count:16];
    }

    while (v48);
  }
}

- (id)dropInteraction:(id)interaction previewForDroppingItem:(id)item withDefault:(id)default
{
  defaultCopy = default;
  itemCopy = item;
  v8 = [UIDragPreviewTarget alloc];
  _chiclet = [itemCopy _chiclet];
  superview = [_chiclet superview];
  _chiclet2 = [itemCopy _chiclet];

  [_chiclet2 center];
  v12 = [(UIPreviewTarget *)v8 initWithContainer:superview center:?];

  v13 = [defaultCopy retargetedPreviewWithTarget:v12];

  return v13;
}

- (void)_animateDropOrCancelForItem:(id)item animator:(id)animator isCancel:(BOOL)cancel
{
  v47[1] = *MEMORY[0x1E69E9840];
  itemCopy = item;
  animatorCopy = animator;
  v34 = itemCopy;
  _chiclet = [itemCopy _chiclet];
  anchorView = [_chiclet anchorView];
  [anchorView setState:0];
  v12 = 0;
  if (!cancel)
  {
    v13 = objc_opt_new();
    [(_UIBarCustomizer *)self lastDragLocation];
    v15 = v14;
    v17 = v16;
    superview = [_chiclet superview];
    [_chiclet center];
    v20 = v19;
    v22 = v21;
    containerView = [(_UIBarCustomizer *)self containerView];
    [superview convertPoint:containerView toView:{v20, v22}];
    [v13 setValue:sqrt((v24 - v15) * (v24 - v15) + (v25 - v17) * (v25 - v17))];

    v47[0] = v13;
    v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:1];
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = __66___UIBarCustomizer__animateDropOrCancelForItem_animator_isCancel___block_invoke;
    v44[3] = &unk_1E70F35B8;
    v45 = anchorView;
    v12 = v13;
    v46 = v12;
    [UIView _createTransformerWithInputAnimatableProperties:v26 presentationValueChangedCallback:v44];
  }

  representedItem = [_chiclet representedItem];
  _visibleItems = [(_UIBarCustomizer *)self _visibleItems];
  v29 = [_visibleItems containsObject:representedItem];

  v30 = [UIViewSpringAnimationBehavior behaviorWithDampingRatio:1.0 response:0.3];
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __66___UIBarCustomizer__animateDropOrCancelForItem_animator_isCancel___block_invoke_2;
  v40[3] = &unk_1E70F5AF0;
  v31 = representedItem;
  v41 = v31;
  v43 = v29;
  v32 = _chiclet;
  v42 = v32;
  [UIView _animateUsingSpringBehavior:v30 tracking:0 animations:v40 completion:0];

  objc_initWeak(&location, self);
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __66___UIBarCustomizer__animateDropOrCancelForItem_animator_isCancel___block_invoke_3;
  v35[3] = &unk_1E7108F18;
  objc_copyWeak(&v37, &location);
  cancelCopy = cancel;
  v33 = v12;
  v36 = v33;
  [animatorCopy addAnimations:v35];

  objc_destroyWeak(&v37);
  objc_destroyWeak(&location);
}

- (int)_overflowItemBucketSize
{
  v2 = ([(_UIBarCustomizer *)self overflowItemCount]/ 3.0);
  if (v2 <= 1)
  {
    return 1;
  }

  else
  {
    return v2;
  }
}

- (void)_updateDebugUI
{
  if (_UIInternalPreferencesRevisionOnce != -1)
  {
    dispatch_once(&_UIInternalPreferencesRevisionOnce, &__block_literal_global_5_11);
  }

  v3 = _UIInternalPreferencesRevisionVar;
  if (_UIInternalPreferencesRevisionVar >= 1)
  {
    v4 = _UIInternalPreference_BarCustomizationDebugEnabled;
    if (_UIInternalPreferencesRevisionVar != _UIInternalPreference_BarCustomizationDebugEnabled)
    {
      while (v3 >= v4)
      {
        _UIInternalPreferenceSync(v3, &_UIInternalPreference_BarCustomizationDebugEnabled, @"BarCustomizationDebugEnabled", _UIInternalPreferenceUpdateBool);
        v4 = _UIInternalPreference_BarCustomizationDebugEnabled;
        if (v3 == _UIInternalPreference_BarCustomizationDebugEnabled)
        {
          return;
        }
      }

      if (byte_1EA95E154)
      {
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __34___UIBarCustomizer__updateDebugUI__block_invoke;
        block[3] = &unk_1E70F3590;
        block[4] = self;
        if (_MergedGlobals_1100 != -1)
        {
          dispatch_once(&_MergedGlobals_1100, block);
        }

        if (!qword_1ED49DF38)
        {
          v5 = objc_opt_new();
          v6 = qword_1ED49DF38;
          qword_1ED49DF38 = v5;

          v7 = [UIColor colorWithRed:1.0 green:0.0 blue:0.0 alpha:0.2];
          [qword_1ED49DF38 setBackgroundColor:v7];

          visibleItemScrollView = [(_UIBarCustomizer *)self visibleItemScrollView];
          [visibleItemScrollView addSubview:qword_1ED49DF38];
        }

        _dropIndex = [(_UIBarCustomizer *)self _dropIndex];
        v10 = 0.0;
        if (_dropIndex != 0x7FFFFFFFFFFFFFFFLL)
        {
          _visibleItems = [(_UIBarCustomizer *)self _visibleItems];
          v15 = MEMORY[0x1E69E9820];
          v16 = 3221225472;
          v17 = __34___UIBarCustomizer__updateDebugUI__block_invoke_2;
          v18 = &unk_1E70F36D0;
          selfCopy = self;
          v12 = _visibleItems;
          v20 = v12;
          v21 = 0x4044000000000000;
          v13 = _Block_copy(&v15);
          [qword_1ED49DF38 frame];
          if (fabs(v14) >= 2.22044605e-16)
          {
            v13[2](v13);
          }

          else
          {
            [UIView performWithoutAnimation:v13];
          }

          v10 = 40.0;
        }

        [qword_1ED49DF38 setBounds:{0.0, 0.0, v10, 100.0}];
      }
    }
  }
}

- (_UIBarCustomizerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGRect)initialSourceFrame
{
  x = self->_initialSourceFrame.origin.x;
  y = self->_initialSourceFrame.origin.y;
  width = self->_initialSourceFrame.size.width;
  height = self->_initialSourceFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGPoint)lastDragLocation
{
  x = self->_lastDragLocation.x;
  y = self->_lastDragLocation.y;
  result.y = y;
  result.x = x;
  return result;
}

@end