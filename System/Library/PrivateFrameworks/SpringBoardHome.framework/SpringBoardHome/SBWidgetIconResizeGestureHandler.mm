@interface SBWidgetIconResizeGestureHandler
- (BOOL)isPointInsideGesturePath:(CGPoint)path;
- (CGPoint)iconViewOrigin;
- (CGPoint)nearestPointInsideGesturePathForPoint:(CGPoint)point;
- (CGPoint)resizeHandlePointForGridSizeClass:(id)class;
- (CGPoint)startingLocation;
- (CGPoint)stretchingStartLocation;
- (SBIconImageInfo)iconImageInfoForGridSizeClass:(SEL)class;
- (SBWidgetIconResizeGestureHandler)initWithIconView:(id)view iconListView:(id)listView widgetMetricsProvider:(id)provider;
- (SBWidgetIconResizeGestureHandlerDelegate)delegate;
- (double)updateTransitionEndpointAndProgressWithGestureRecognizer:(id)recognizer;
- (id)effectiveGridSizeClassDomain;
- (id)iconResizeViewHelper:(id)helper intentForWidget:(id)widget;
- (id)iconResizeViewHelper:(id)helper viewControllerForIconDataSource:(id)source icon:(id)icon gridSizeClass:(id)class;
- (id)succinctDescription;
- (void)appendDescriptionToStream:(id)stream;
- (void)configureForStretching;
- (void)dealloc;
- (void)finishWithGestureRecognizer:(id)recognizer;
- (void)iconView:(id)view resizeGestureRecognizerDidUpdate:(id)update;
- (void)informDelegateFinishedWithSizeClass:(id)class;
- (void)setState:(int64_t)state;
- (void)setUpWithGestureRecognizer:(id)recognizer;
- (void)tearDown;
- (void)updatePreviewSizeWithGestureRecognizer:(id)recognizer;
- (void)updateResizingWithGestureRecognizer:(id)recognizer;
- (void)updateStretchingWithGestureRecognizer:(id)recognizer;
- (void)updateWithGestureRecognizer:(id)recognizer;
@end

@implementation SBWidgetIconResizeGestureHandler

- (SBWidgetIconResizeGestureHandler)initWithIconView:(id)view iconListView:(id)listView widgetMetricsProvider:(id)provider
{
  viewCopy = view;
  listViewCopy = listView;
  providerCopy = provider;
  v20.receiver = self;
  v20.super_class = SBWidgetIconResizeGestureHandler;
  v12 = [(SBWidgetIconResizeGestureHandler *)&v20 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_iconView, view);
    objc_storeStrong(&v13->_iconListView, listView);
    v14 = objc_alloc_init(MEMORY[0x1E69D3FC8]);
    animationSettings = v13->_animationSettings;
    v13->_animationSettings = v14;

    listLayout = [viewCopy listLayout];
    v17 = -[SBHWidgetIconResizeViewHelper initWithDelegate:listLayout:widgetMetricsProvider:orientation:]([SBHWidgetIconResizeViewHelper alloc], "initWithDelegate:listLayout:widgetMetricsProvider:orientation:", v13, listLayout, providerCopy, [listViewCopy layoutOrientation]);
    viewHelper = v13->_viewHelper;
    v13->_viewHelper = v17;
  }

  return v13;
}

- (void)dealloc
{
  free(self->_gesturePathVertices);
  v3.receiver = self;
  v3.super_class = SBWidgetIconResizeGestureHandler;
  [(SBWidgetIconResizeGestureHandler *)&v3 dealloc];
}

- (void)iconView:(id)view resizeGestureRecognizerDidUpdate:(id)update
{
  updateCopy = update;
  state = [updateCopy state];
  if ((state - 3) < 3)
  {
    [(SBWidgetIconResizeGestureHandler *)self finishWithGestureRecognizer:updateCopy];
LABEL_8:
    v7 = updateCopy;
    goto LABEL_9;
  }

  if (state == 2)
  {
    [(SBWidgetIconResizeGestureHandler *)self updateWithGestureRecognizer:updateCopy];
    goto LABEL_8;
  }

  v6 = state == 1;
  v7 = updateCopy;
  if (v6)
  {
    [(SBWidgetIconResizeGestureHandler *)self setUpWithGestureRecognizer:updateCopy];
    goto LABEL_8;
  }

LABEL_9:
}

- (void)setUpWithGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  iconListView = [(SBWidgetIconResizeGestureHandler *)self iconListView];
  iconView = [(SBWidgetIconResizeGestureHandler *)self iconView];
  icon = [iconView icon];
  activeDataSource = [icon activeDataSource];
  userInterfaceLayoutDirection = [iconListView userInterfaceLayoutDirection];
  [(SBWidgetIconResizeGestureHandler *)self setRTL:userInterfaceLayoutDirection == 1];
  [iconView frame];
  v13 = v9;
  v14 = v10;
  v15 = v11;
  v16 = v12;
  if (userInterfaceLayoutDirection == 1)
  {
    MaxX = CGRectGetMaxX(*&v9);
  }

  else
  {
    MaxX = CGRectGetMinX(*&v9);
  }

  v18 = MaxX;
  v48.origin.x = v13;
  v48.origin.y = v14;
  v48.size.width = v15;
  v48.size.height = v16;
  [(SBWidgetIconResizeGestureHandler *)self setIconViewOrigin:v18, CGRectGetMinY(v48)];
  gridSizeClass = [icon gridSizeClass];
  [(SBWidgetIconResizeGestureHandler *)self setOriginalGridSizeClass:gridSizeClass];
  [(SBWidgetIconResizeGestureHandler *)self setState:1];
  [iconListView forgetIconView:iconView];
  v42 = [iconListView addPlaceholderRepresentingIcon:icon reason:@"resize" options:16];
  placeholder = [(SBWidgetIconResizeGestureHandler *)self placeholder];
  [placeholder invalidate];

  [(SBWidgetIconResizeGestureHandler *)self setPlaceholder:v42];
  [recognizerCopy locationInView:iconListView];
  v21 = v20;
  v23 = v22;

  [(SBWidgetIconResizeGestureHandler *)self setStartingLocation:v21, v23];
  [(SBWidgetIconResizeGestureHandler *)self setStretchingStartLocation:v21, v23];
  v24 = objc_alloc(MEMORY[0x1E69DD250]);
  [iconListView bounds];
  v41 = [v24 initWithFrame:?];
  [iconListView addSubview:v41];
  [v41 addSubview:iconView];
  [(SBWidgetIconResizeGestureHandler *)self setContainerView:v41];
  supportedGridSizeClasses = [icon supportedGridSizeClasses];
  model = [iconListView model];
  allowedGridSizeClasses = [model allowedGridSizeClasses];

  v38 = [supportedGridSizeClasses gridSizeClassSetByIntersectingWithGridSizeClassSet:allowedGridSizeClasses];
  v26 = [v38 gridSizeClassSetByRemovingGridSizeClass:@"SBHIconGridSizeClassDefault"];
  [(SBWidgetIconResizeGestureHandler *)self setAllowedGridSizeClasses:v26];
  listLayout = [iconView listLayout];
  [(SBWidgetIconResizeGestureHandler *)self setListLayout:listLayout];
  v28 = SBHIconListLayoutIconGridSizeClassSizes(listLayout, [iconListView layoutOrientation]);
  [(SBWidgetIconResizeGestureHandler *)self setIconGridSizeClassSizes:v28];
  v29 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = __63__SBWidgetIconResizeGestureHandler_setUpWithGestureRecognizer___block_invoke;
  v45[3] = &unk_1E808BBB0;
  v46 = v26;
  v47 = v29;
  v30 = v29;
  v31 = v26;
  [v28 enumerateGridSizesSortedByAreaWithOptions:0 usingBlock:v45];
  [(SBWidgetIconResizeGestureHandler *)self setSortedGridSizeClasses:v30];
  viewHelper = [(SBWidgetIconResizeGestureHandler *)self viewHelper];
  [iconView gridSizeClassDomain];
  v37 = iconListView;
  v33 = iconView;
  v35 = v34 = icon;
  v36 = [[SBWidgetIconResizeTransitionViewController alloc] initWithLeafIcon:v34 allowedGridSizeClasses:v31 gridSizeClassDomain:v35 viewHelper:viewHelper options:0];
  [v33 setOverrideCustomIconImageViewController:v36];
  [(SBWidgetIconResizeGestureHandler *)self setPreviewViewController:v36];
  [(SBWidgetIconResizeGestureHandler *)self configureForStretching];
}

void __63__SBWidgetIconResizeGestureHandler_setUpWithGestureRecognizer___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) containsGridSizeClass:?])
  {
    [*(a1 + 40) addObject:v3];
  }
}

- (void)configureForStretching
{
  sortedGridSizeClasses = [(SBWidgetIconResizeGestureHandler *)self sortedGridSizeClasses];
  v4 = [sortedGridSizeClasses count];
  v5 = v4;
  if (v4 == 2)
  {
    v6 = 4;
  }

  else
  {
    v6 = v4;
  }

  v7 = malloc_type_calloc(v6, 0x10uLL, 0x1000040451B5BE8uLL);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __58__SBWidgetIconResizeGestureHandler_configureForStretching__block_invoke;
  v10[3] = &unk_1E808F498;
  v10[4] = self;
  v10[5] = v7;
  [sortedGridSizeClasses enumerateObjectsUsingBlock:v10];
  if (v5 == 2)
  {
    RectangleFromLine = SBHPolygonCreateRectangleFromLine(v7, *v7, v7[1], v7[2], v7[3], 10.0);
  }

  if ([(SBWidgetIconResizeGestureHandler *)self gesturePathVertexCapacity]< v6)
  {
    self->_gesturePathVertices = reallocf(self->_gesturePathVertices, 16 * v6);
    [(SBWidgetIconResizeGestureHandler *)self setGesturePathVertexCapacity:v6];
  }

  ConvexHullPoints = SBHPolygonFindConvexHullPoints(v7, v6, self->_gesturePathVertices);
  free(v7);
  [(SBWidgetIconResizeGestureHandler *)self setGesturePathVertexCount:ConvexHullPoints];
}

uint64_t __58__SBWidgetIconResizeGestureHandler_configureForStretching__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = [*(a1 + 32) resizeHandlePointForGridSizeClass:a2];
  v6 = (*(a1 + 40) + 16 * a3);
  *v6 = v7;
  v6[1] = v8;
  return result;
}

- (void)updateWithGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  iconView = [(SBWidgetIconResizeGestureHandler *)self iconView];
  [iconView layoutIfNeeded];
  [(SBWidgetIconResizeGestureHandler *)self updatePreviewSizeWithGestureRecognizer:recognizerCopy];
  state = [(SBWidgetIconResizeGestureHandler *)self state];
  if (state == 2)
  {
    [(SBWidgetIconResizeGestureHandler *)self updateResizingWithGestureRecognizer:recognizerCopy];
  }

  else if (state == 1)
  {
    [(SBWidgetIconResizeGestureHandler *)self updateStretchingWithGestureRecognizer:recognizerCopy];
  }
}

- (void)updatePreviewSizeWithGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  iconView = [(SBWidgetIconResizeGestureHandler *)self iconView];
  iconListView = [(SBWidgetIconResizeGestureHandler *)self iconListView];
  [recognizerCopy locationInView:iconListView];
  v8 = v7;
  v10 = v9;
  [recognizerCopy locationInView:iconView];
  v12 = v11;
  v14 = v13;

  isRTL = [(SBWidgetIconResizeGestureHandler *)self isRTL];
  [iconView frame];
  v20 = 0.0;
  if (isRTL)
  {
    v20 = CGRectGetWidth(*&v16) + -1.0;
  }

  if (![(SBWidgetIconResizeGestureHandler *)self isPointInsideGesturePath:v8, v10])
  {
    [(SBWidgetIconResizeGestureHandler *)self nearestPointInsideGesturePathForPoint:v8, v10];
    v22 = v21;
    v24 = v23;
    UIDistanceBetweenPoints();
    BSUIConstrainValueWithRubberBand();
    [iconView convertPoint:iconListView fromView:{SBHPointAtDistanceFromPointToPoint(v22, v24, v8, v10, v25)}];
    v12 = v26;
    v14 = v27;
  }

  v60.origin.y = 0.0;
  v60.size.width = 1.0;
  v60.size.height = 1.0;
  v63.size.width = 1.0;
  v63.size.height = 1.0;
  v60.origin.x = v20;
  v63.origin.x = v12;
  v63.origin.y = v14;
  v61 = CGRectUnion(v60, v63);
  rect.origin.x = v61.origin.x;
  y = v61.origin.y;
  width = v61.size.width;
  height = v61.size.height;
  [iconView iconImageInfo];
  v32 = v31;
  v34 = v33;
  sortedGridSizeClasses = [(SBWidgetIconResizeGestureHandler *)self sortedGridSizeClasses];
  firstObject = [sortedGridSizeClasses firstObject];
  [(SBWidgetIconResizeGestureHandler *)self iconImageInfoForGridSizeClass:firstObject];
  v39 = height;
  if (width <= v37)
  {
    v40 = v38;
    v39 = height;
    if (height <= v38)
    {
      v41 = v37;
      if ([sortedGridSizeClasses count] >= 3)
      {
        v39 = width * (v41 / v40);
      }

      else
      {
        v39 = height;
      }
    }
  }

  [(SBWidgetIconResizeGestureHandler *)self iconViewOrigin];
  v43 = v42;
  v45 = v44;
  if (isRTL)
  {
    v62.origin.x = rect.origin.x;
    v62.origin.y = y;
    v62.size.width = width;
    v62.size.height = height;
    v43 = v43 - CGRectGetWidth(v62);
  }

  animationSettings = [(SBWidgetIconResizeGestureHandler *)self animationSettings];
  v47 = MEMORY[0x1E69DD250];
  *&rect.origin.y = MEMORY[0x1E69E9820];
  *&rect.size.width = 3221225472;
  *&rect.size.height = __75__SBWidgetIconResizeGestureHandler_updatePreviewSizeWithGestureRecognizer___block_invoke;
  v50 = &unk_1E808F4C0;
  v51 = iconView;
  v52 = width;
  v53 = v39;
  v54 = v32;
  v55 = v34;
  v56 = v43;
  v57 = v45;
  v58 = width;
  v59 = height;
  v48 = iconView;
  [v47 sb_animateWithSettings:animationSettings mode:5 animations:&rect.origin.y completion:0];
}

uint64_t __75__SBWidgetIconResizeGestureHandler_updatePreviewSizeWithGestureRecognizer___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setIconImageInfo:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
  v2 = *(a1 + 32);
  UIRectGetCenter();
  [v2 setCenter:?];
  v3 = *(a1 + 32);

  return [v3 layoutIfNeeded];
}

- (void)updateStretchingWithGestureRecognizer:(id)recognizer
{
  v16 = *MEMORY[0x1E69E9840];
  recognizerCopy = recognizer;
  iconListView = [(SBWidgetIconResizeGestureHandler *)self iconListView];
  [recognizerCopy locationInView:iconListView];
  v7 = v6;
  v9 = v8;
  [(SBWidgetIconResizeGestureHandler *)self stretchingStartLocation];
  v12 = hypot(v7 - v10, v9 - v11);
  if (fabs(v12) >= 20.0)
  {
    [(SBWidgetIconResizeGestureHandler *)self updateTransitionEndpointAndProgressWithGestureRecognizer:recognizerCopy];
    v13 = SBLogWidgetResizing();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 134217984;
      v15 = v12;
      _os_log_impl(&dword_1BEB18000, v13, OS_LOG_TYPE_DEFAULT, "resize went beyond hysteresis for stretching (%f)", &v14, 0xCu);
    }

    [(SBWidgetIconResizeGestureHandler *)self setState:2];
  }
}

- (double)updateTransitionEndpointAndProgressWithGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  iconListView = [(SBWidgetIconResizeGestureHandler *)self iconListView];
  [recognizerCopy locationInView:iconListView];
  [(SBWidgetIconResizeGestureHandler *)self nearestPointInsideGesturePathForPoint:?];
  v7 = v6;
  v9 = v8;
  [(SBWidgetIconResizeGestureHandler *)self stretchingStartLocation];
  v11 = v10;
  v13 = v12;
  previewViewController = [(SBWidgetIconResizeGestureHandler *)self previewViewController];
  startingGridSizeClass = [previewViewController startingGridSizeClass];
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__18;
  v39 = __Block_byref_object_dispose__18;
  v40 = 0;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  sortedGridSizeClasses = [(SBWidgetIconResizeGestureHandler *)self sortedGridSizeClasses];
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x2020000000;
  v30[3] = 0;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __93__SBWidgetIconResizeGestureHandler_updateTransitionEndpointAndProgressWithGestureRecognizer___block_invoke;
  v20[3] = &unk_1E808F4E8;
  v17 = startingGridSizeClass;
  v21 = v17;
  selfCopy = self;
  v26 = v7;
  v27 = v9;
  v23 = &v35;
  v24 = v30;
  v28 = v11;
  v29 = v13;
  v25 = &v31;
  [sortedGridSizeClasses enumerateObjectsUsingBlock:v20];
  [previewViewController setEndingGridSizeClass:v36[5] animated:1];
  [previewViewController setTransitionProgress:(v32[3] + -0.03) / 0.92];
  v18 = v32[3];

  _Block_object_dispose(v30, 8);
  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(&v35, 8);

  return v18;
}

uint64_t __93__SBWidgetIconResizeGestureHandler_updateTransitionEndpointAndProgressWithGestureRecognizer___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = v4;
  if (*(a1 + 32) != v4)
  {
    v18 = v4;
    v4 = [v4 isEqualToString:?];
    v5 = v18;
    if ((v4 & 1) == 0)
    {
      [*(a1 + 40) resizeHandlePointForGridSizeClass:v18];
      v7 = v6;
      v9 = v8;
      UIDistanceBetweenPoints();
      v5 = v18;
      v11 = v10;
      v12 = *(*(a1 + 48) + 8);
      v13 = *(v12 + 40);
      v4 = v12 + 40;
      if (!v13 || v10 < *(*(*(a1 + 56) + 8) + 24))
      {
        objc_storeStrong(v4, a2);
        *(*(*(a1 + 56) + 8) + 24) = v11;
        SBHNearestPointInLine(*(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96), v7, v9);
        UIDistanceBetweenPoints();
        v15 = v14;
        v4 = UIDistanceBetweenPoints();
        v5 = v18;
        *(*(*(a1 + 64) + 8) + 24) = v16 / v15;
      }
    }
  }

  return MEMORY[0x1EEE66BB8](v4, v5);
}

- (void)updateResizingWithGestureRecognizer:(id)recognizer
{
  v21 = *MEMORY[0x1E69E9840];
  recognizerCopy = recognizer;
  iconListView = [(SBWidgetIconResizeGestureHandler *)self iconListView];
  containerView = [(SBWidgetIconResizeGestureHandler *)self containerView];
  [(SBWidgetIconResizeGestureHandler *)self updateTransitionEndpointAndProgressWithGestureRecognizer:recognizerCopy];
  v8 = v7;

  previewViewController = [(SBWidgetIconResizeGestureHandler *)self previewViewController];
  startingGridSizeClass = [previewViewController startingGridSizeClass];
  endingGridSizeClass = [previewViewController endingGridSizeClass];
  v12 = endingGridSizeClass;
  if (v8 <= 0.5)
  {
    v13 = startingGridSizeClass;
  }

  else
  {
    v13 = endingGridSizeClass;
  }

  v14 = v13;
  v15 = SBLogWidgets();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138543362;
    v20 = *&v14;
    _os_log_impl(&dword_1BEB18000, v15, OS_LOG_TYPE_DEFAULT, "setting placeholder grid size class: %{public}@", &v19, 0xCu);
  }

  placeholder = [(SBWidgetIconResizeGestureHandler *)self placeholder];
  [placeholder setGridSizeClass:v14];
  [iconListView layoutIconsIfNeededWithAnimationType:0 options:0];
  [iconListView bringSubviewToFront:containerView];
  v17 = SBLogWidgets();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 134217984;
    v20 = v8;
    _os_log_impl(&dword_1BEB18000, v17, OS_LOG_TYPE_DEFAULT, "widget resize progress: %f", &v19, 0xCu);
  }

  if (v8 >= 0.95)
  {
    v18 = SBLogWidgetResizing();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138543362;
      v20 = *&v12;
      _os_log_impl(&dword_1BEB18000, v18, OS_LOG_TYPE_DEFAULT, "resize went beyond 95%%, switching to size class %{public}@", &v19, 0xCu);
    }

    [previewViewController swapViewControllersAndClearEnding];
    [(SBWidgetIconResizeGestureHandler *)self resizeHandlePointForGridSizeClass:v12];
    [(SBWidgetIconResizeGestureHandler *)self setStretchingStartLocation:?];
  }

  else if (v8 < 0.03)
  {
    [previewViewController setEndingGridSizeClass:0];
    [previewViewController setTransitionProgress:0.0];
  }
}

- (void)finishWithGestureRecognizer:(id)recognizer
{
  iconView = [(SBWidgetIconResizeGestureHandler *)self iconView];
  extendResizingFinish = [iconView extendResizingFinish];
  placeholder = [(SBWidgetIconResizeGestureHandler *)self placeholder];
  gridSizeClass = [placeholder gridSizeClass];
  gridCellIndex = [placeholder gridCellIndex];
  [(SBWidgetIconResizeGestureHandler *)self iconImageInfoForGridSizeClass:gridSizeClass];
  v10 = v9;
  v12 = v11;
  [iconView iconImageInfo];
  v14 = v13;
  v16 = v15;
  iconListView = [(SBWidgetIconResizeGestureHandler *)self iconListView];
  v18 = SBIconCoordinateMakeWithGridCellIndex(gridCellIndex, [iconListView gridSizeForCurrentOrientation]);
  [iconListView centerForIconCoordinate:{v18, v19}];
  v21 = v20;
  v23 = v22;
  previewViewController = [(SBWidgetIconResizeGestureHandler *)self previewViewController];
  endingGridSizeClass = [previewViewController endingGridSizeClass];
  if (gridSizeClass == endingGridSizeClass)
  {
    v26 = 1.0;
  }

  else if ([gridSizeClass isEqualToString:endingGridSizeClass])
  {
    v26 = 1.0;
  }

  else
  {
    v26 = 0.0;
  }

  animationSettings = [(SBWidgetIconResizeGestureHandler *)self animationSettings];
  v28 = MEMORY[0x1E69DD250];
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __64__SBWidgetIconResizeGestureHandler_finishWithGestureRecognizer___block_invoke;
  v37[3] = &unk_1E808B2F8;
  v40 = v10;
  v41 = v12;
  v42 = v14;
  v43 = v16;
  v44 = v21;
  v45 = v23;
  v38 = iconView;
  v39 = previewViewController;
  v46 = v26;
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __64__SBWidgetIconResizeGestureHandler_finishWithGestureRecognizer___block_invoke_2;
  v33[3] = &unk_1E808F510;
  v34 = extendResizingFinish;
  selfCopy = self;
  v36 = gridSizeClass;
  v29 = gridSizeClass;
  v30 = extendResizingFinish;
  v31 = previewViewController;
  v32 = iconView;
  [v28 sb_animateWithSettings:animationSettings mode:3 animations:v37 completion:v33];
}

uint64_t __64__SBWidgetIconResizeGestureHandler_finishWithGestureRecognizer___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setIconImageInfo:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];
  [*(a1 + 32) setCenter:{*(a1 + 80), *(a1 + 88)}];
  [*(a1 + 32) layoutIfNeeded];
  v2 = *(a1 + 40);
  v3 = *(a1 + 96);

  return [v2 setTransitionProgress:v3];
}

uint64_t __64__SBWidgetIconResizeGestureHandler_finishWithGestureRecognizer___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) invalidate];
  [*(a1 + 40) informDelegateFinishedWithSizeClass:*(a1 + 48)];
  v2 = *(a1 + 40);

  return [v2 tearDown];
}

- (void)tearDown
{
  placeholder = [(SBWidgetIconResizeGestureHandler *)self placeholder];
  [placeholder invalidate];

  [(SBWidgetIconResizeGestureHandler *)self setPlaceholder:0];
  containerView = [(SBWidgetIconResizeGestureHandler *)self containerView];
  [containerView removeFromSuperview];

  [(SBWidgetIconResizeGestureHandler *)self setContainerView:0];
  previewViewController = [(SBWidgetIconResizeGestureHandler *)self previewViewController];
  [previewViewController invalidate];
  iconListView = [(SBWidgetIconResizeGestureHandler *)self iconListView];
  [iconListView layoutIconsNow];
}

- (void)setState:(int64_t)state
{
  v9 = *MEMORY[0x1E69E9840];
  if (self->_state != state)
  {
    v5 = SBLogWidgetResizing();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      if (state > 4)
      {
        v6 = 0;
      }

      else
      {
        v6 = off_1E808F530[state];
      }

      v7 = 138543362;
      v8 = v6;
      _os_log_impl(&dword_1BEB18000, v5, OS_LOG_TYPE_DEFAULT, "changing resize gesture handler state to %{public}@", &v7, 0xCu);
    }

    self->_state = state;
  }
}

- (void)informDelegateFinishedWithSizeClass:(id)class
{
  classCopy = class;
  delegate = [(SBWidgetIconResizeGestureHandler *)self delegate];
  [delegate resizeGestureHandler:self didFinishWithGridSizeClass:classCopy];
}

- (id)effectiveGridSizeClassDomain
{
  iconView = [(SBWidgetIconResizeGestureHandler *)self iconView];
  gridSizeClassDomain = [iconView gridSizeClassDomain];
  v4 = gridSizeClassDomain;
  if (gridSizeClassDomain)
  {
    v5 = gridSizeClassDomain;
  }

  else
  {
    v5 = +[SBHIconGridSizeClassDomain globalDomain];
  }

  v6 = v5;

  return v6;
}

- (CGPoint)resizeHandlePointForGridSizeClass:(id)class
{
  [(SBWidgetIconResizeGestureHandler *)self iconImageInfoForGridSizeClass:class];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  [(SBWidgetIconResizeGestureHandler *)self iconViewOrigin];
  v11 = v10;
  v13 = v12;
  isRTL = [(SBWidgetIconResizeGestureHandler *)self isRTL];
  v15 = -v5;
  v16 = -v9;
  if (isRTL)
  {
    v16 = v9;
  }

  else
  {
    v15 = v5;
  }

  v17 = v16 + v11 + v15;
  v18 = -(v9 * 0.707106781);
  if (!isRTL)
  {
    v18 = v9 * 0.707106781;
  }

  v19 = v18 + v17;
  v20 = v9 * 0.707106781 + v13 + v7 - v9;
  result.y = v20;
  result.x = v19;
  return result;
}

- (BOOL)isPointInsideGesturePath:(CGPoint)path
{
  y = path.y;
  x = path.x;
  gesturePathVertexCount = [(SBWidgetIconResizeGestureHandler *)self gesturePathVertexCount];
  gesturePathVertices = self->_gesturePathVertices;

  return SBHPolygonContainsPoint(gesturePathVertices, gesturePathVertexCount, x, y);
}

- (CGPoint)nearestPointInsideGesturePathForPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  gesturePathVertexCount = [(SBWidgetIconResizeGestureHandler *)self gesturePathVertexCount];
  gesturePathVertices = self->_gesturePathVertices;

  v8 = SBHPolygonNearestPointToPoint(gesturePathVertices, gesturePathVertexCount, x, y);
  result.y = v9;
  result.x = v8;
  return result;
}

- (SBIconImageInfo)iconImageInfoForGridSizeClass:(SEL)class
{
  v5 = a4;
  iconListView = [(SBWidgetIconResizeGestureHandler *)self iconListView];
  [iconListView iconImageInfoForGridSizeClass:v5];

  return result;
}

- (id)iconResizeViewHelper:(id)helper intentForWidget:(id)widget
{
  widgetCopy = widget;
  delegate = [(SBWidgetIconResizeGestureHandler *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v7 = [delegate resizeGestureHandler:self intentForWidget:widgetCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)iconResizeViewHelper:(id)helper viewControllerForIconDataSource:(id)source icon:(id)icon gridSizeClass:(id)class
{
  sourceCopy = source;
  iconCopy = icon;
  classCopy = class;
  delegate = [(SBWidgetIconResizeGestureHandler *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v13 = [delegate resizeGestureHandler:self viewControllerForIconDataSource:sourceCopy icon:iconCopy gridSizeClass:classCopy];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)succinctDescription
{
  v3 = MEMORY[0x1E698E688];
  succinctStyle = [MEMORY[0x1E698E690] succinctStyle];
  v5 = [v3 descriptionForRootObject:self withStyle:succinctStyle];

  return v5;
}

- (void)appendDescriptionToStream:(id)stream
{
  streamCopy = stream;
  effectiveGridSizeClassDomain = [(SBWidgetIconResizeGestureHandler *)self effectiveGridSizeClassDomain];
  previewViewController = [(SBWidgetIconResizeGestureHandler *)self previewViewController];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __62__SBWidgetIconResizeGestureHandler_appendDescriptionToStream___block_invoke;
  v10[3] = &unk_1E8089E68;
  v11 = streamCopy;
  selfCopy = self;
  v13 = effectiveGridSizeClassDomain;
  v14 = previewViewController;
  v7 = previewViewController;
  v8 = effectiveGridSizeClassDomain;
  v9 = streamCopy;
  [v9 appendProem:self block:v10];
}

void __62__SBWidgetIconResizeGestureHandler_appendDescriptionToStream___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) state];
  if (v3 > 4)
  {
    v4 = 0;
  }

  else
  {
    v4 = off_1E808F530[v3];
  }

  [v2 appendString:v4 withName:@"state"];
  v5 = *(a1 + 48);
  v6 = *(a1 + 32);
  v7 = [*(a1 + 40) originalGridSizeClass];
  v8 = [v5 descriptionForGridSizeClass:v7];
  [v6 appendString:v8 withName:@"originalGridSizeClass"];

  v9 = *(a1 + 32);
  v10 = *(a1 + 48);
  v11 = [*(a1 + 56) startingGridSizeClass];
  v12 = [v10 descriptionForGridSizeClass:v11];
  [v9 appendString:v12 withName:@"startingGridSizeClass"];

  v13 = *(a1 + 32);
  v14 = *(a1 + 48);
  v15 = [*(a1 + 56) endingGridSizeClass];
  v16 = [v14 descriptionForGridSizeClass:v15];
  [v13 appendString:v16 withName:@"endingGridSizeClass"];

  v17 = *(a1 + 32);
  v19 = [*(a1 + 40) previewViewController];
  v18 = [v17 appendObject:v19 withName:@"previewViewController"];
}

- (SBWidgetIconResizeGestureHandlerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGPoint)startingLocation
{
  x = self->_startingLocation.x;
  y = self->_startingLocation.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)stretchingStartLocation
{
  x = self->_stretchingStartLocation.x;
  y = self->_stretchingStartLocation.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)iconViewOrigin
{
  x = self->_iconViewOrigin.x;
  y = self->_iconViewOrigin.y;
  result.y = y;
  result.x = x;
  return result;
}

@end