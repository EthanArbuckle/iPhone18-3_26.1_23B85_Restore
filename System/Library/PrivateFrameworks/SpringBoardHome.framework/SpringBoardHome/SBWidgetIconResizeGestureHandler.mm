@interface SBWidgetIconResizeGestureHandler
- (BOOL)isPointInsideGesturePath:(CGPoint)a3;
- (CGPoint)iconViewOrigin;
- (CGPoint)nearestPointInsideGesturePathForPoint:(CGPoint)a3;
- (CGPoint)resizeHandlePointForGridSizeClass:(id)a3;
- (CGPoint)startingLocation;
- (CGPoint)stretchingStartLocation;
- (SBIconImageInfo)iconImageInfoForGridSizeClass:(SEL)a3;
- (SBWidgetIconResizeGestureHandler)initWithIconView:(id)a3 iconListView:(id)a4 widgetMetricsProvider:(id)a5;
- (SBWidgetIconResizeGestureHandlerDelegate)delegate;
- (double)updateTransitionEndpointAndProgressWithGestureRecognizer:(id)a3;
- (id)effectiveGridSizeClassDomain;
- (id)iconResizeViewHelper:(id)a3 intentForWidget:(id)a4;
- (id)iconResizeViewHelper:(id)a3 viewControllerForIconDataSource:(id)a4 icon:(id)a5 gridSizeClass:(id)a6;
- (id)succinctDescription;
- (void)appendDescriptionToStream:(id)a3;
- (void)configureForStretching;
- (void)dealloc;
- (void)finishWithGestureRecognizer:(id)a3;
- (void)iconView:(id)a3 resizeGestureRecognizerDidUpdate:(id)a4;
- (void)informDelegateFinishedWithSizeClass:(id)a3;
- (void)setState:(int64_t)a3;
- (void)setUpWithGestureRecognizer:(id)a3;
- (void)tearDown;
- (void)updatePreviewSizeWithGestureRecognizer:(id)a3;
- (void)updateResizingWithGestureRecognizer:(id)a3;
- (void)updateStretchingWithGestureRecognizer:(id)a3;
- (void)updateWithGestureRecognizer:(id)a3;
@end

@implementation SBWidgetIconResizeGestureHandler

- (SBWidgetIconResizeGestureHandler)initWithIconView:(id)a3 iconListView:(id)a4 widgetMetricsProvider:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v20.receiver = self;
  v20.super_class = SBWidgetIconResizeGestureHandler;
  v12 = [(SBWidgetIconResizeGestureHandler *)&v20 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_iconView, a3);
    objc_storeStrong(&v13->_iconListView, a4);
    v14 = objc_alloc_init(MEMORY[0x1E69D3FC8]);
    animationSettings = v13->_animationSettings;
    v13->_animationSettings = v14;

    v16 = [v9 listLayout];
    v17 = -[SBHWidgetIconResizeViewHelper initWithDelegate:listLayout:widgetMetricsProvider:orientation:]([SBHWidgetIconResizeViewHelper alloc], "initWithDelegate:listLayout:widgetMetricsProvider:orientation:", v13, v16, v11, [v10 layoutOrientation]);
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

- (void)iconView:(id)a3 resizeGestureRecognizerDidUpdate:(id)a4
{
  v8 = a4;
  v5 = [v8 state];
  if ((v5 - 3) < 3)
  {
    [(SBWidgetIconResizeGestureHandler *)self finishWithGestureRecognizer:v8];
LABEL_8:
    v7 = v8;
    goto LABEL_9;
  }

  if (v5 == 2)
  {
    [(SBWidgetIconResizeGestureHandler *)self updateWithGestureRecognizer:v8];
    goto LABEL_8;
  }

  v6 = v5 == 1;
  v7 = v8;
  if (v6)
  {
    [(SBWidgetIconResizeGestureHandler *)self setUpWithGestureRecognizer:v8];
    goto LABEL_8;
  }

LABEL_9:
}

- (void)setUpWithGestureRecognizer:(id)a3
{
  v4 = a3;
  v5 = [(SBWidgetIconResizeGestureHandler *)self iconListView];
  v6 = [(SBWidgetIconResizeGestureHandler *)self iconView];
  v7 = [v6 icon];
  v44 = [v7 activeDataSource];
  v8 = [v5 userInterfaceLayoutDirection];
  [(SBWidgetIconResizeGestureHandler *)self setRTL:v8 == 1];
  [v6 frame];
  v13 = v9;
  v14 = v10;
  v15 = v11;
  v16 = v12;
  if (v8 == 1)
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
  v43 = [v7 gridSizeClass];
  [(SBWidgetIconResizeGestureHandler *)self setOriginalGridSizeClass:v43];
  [(SBWidgetIconResizeGestureHandler *)self setState:1];
  [v5 forgetIconView:v6];
  v42 = [v5 addPlaceholderRepresentingIcon:v7 reason:@"resize" options:16];
  v19 = [(SBWidgetIconResizeGestureHandler *)self placeholder];
  [v19 invalidate];

  [(SBWidgetIconResizeGestureHandler *)self setPlaceholder:v42];
  [v4 locationInView:v5];
  v21 = v20;
  v23 = v22;

  [(SBWidgetIconResizeGestureHandler *)self setStartingLocation:v21, v23];
  [(SBWidgetIconResizeGestureHandler *)self setStretchingStartLocation:v21, v23];
  v24 = objc_alloc(MEMORY[0x1E69DD250]);
  [v5 bounds];
  v41 = [v24 initWithFrame:?];
  [v5 addSubview:v41];
  [v41 addSubview:v6];
  [(SBWidgetIconResizeGestureHandler *)self setContainerView:v41];
  v40 = [v7 supportedGridSizeClasses];
  v25 = [v5 model];
  v39 = [v25 allowedGridSizeClasses];

  v38 = [v40 gridSizeClassSetByIntersectingWithGridSizeClassSet:v39];
  v26 = [v38 gridSizeClassSetByRemovingGridSizeClass:@"SBHIconGridSizeClassDefault"];
  [(SBWidgetIconResizeGestureHandler *)self setAllowedGridSizeClasses:v26];
  v27 = [v6 listLayout];
  [(SBWidgetIconResizeGestureHandler *)self setListLayout:v27];
  v28 = SBHIconListLayoutIconGridSizeClassSizes(v27, [v5 layoutOrientation]);
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
  v32 = [(SBWidgetIconResizeGestureHandler *)self viewHelper];
  [v6 gridSizeClassDomain];
  v37 = v5;
  v33 = v6;
  v35 = v34 = v7;
  v36 = [[SBWidgetIconResizeTransitionViewController alloc] initWithLeafIcon:v34 allowedGridSizeClasses:v31 gridSizeClassDomain:v35 viewHelper:v32 options:0];
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
  v3 = [(SBWidgetIconResizeGestureHandler *)self sortedGridSizeClasses];
  v4 = [v3 count];
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
  [v3 enumerateObjectsUsingBlock:v10];
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

- (void)updateWithGestureRecognizer:(id)a3
{
  v6 = a3;
  v4 = [(SBWidgetIconResizeGestureHandler *)self iconView];
  [v4 layoutIfNeeded];
  [(SBWidgetIconResizeGestureHandler *)self updatePreviewSizeWithGestureRecognizer:v6];
  v5 = [(SBWidgetIconResizeGestureHandler *)self state];
  if (v5 == 2)
  {
    [(SBWidgetIconResizeGestureHandler *)self updateResizingWithGestureRecognizer:v6];
  }

  else if (v5 == 1)
  {
    [(SBWidgetIconResizeGestureHandler *)self updateStretchingWithGestureRecognizer:v6];
  }
}

- (void)updatePreviewSizeWithGestureRecognizer:(id)a3
{
  v4 = a3;
  v5 = [(SBWidgetIconResizeGestureHandler *)self iconView];
  v6 = [(SBWidgetIconResizeGestureHandler *)self iconListView];
  [v4 locationInView:v6];
  v8 = v7;
  v10 = v9;
  [v4 locationInView:v5];
  v12 = v11;
  v14 = v13;

  v15 = [(SBWidgetIconResizeGestureHandler *)self isRTL];
  [v5 frame];
  v20 = 0.0;
  if (v15)
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
    [v5 convertPoint:v6 fromView:{SBHPointAtDistanceFromPointToPoint(v22, v24, v8, v10, v25)}];
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
  [v5 iconImageInfo];
  v32 = v31;
  v34 = v33;
  v35 = [(SBWidgetIconResizeGestureHandler *)self sortedGridSizeClasses];
  v36 = [v35 firstObject];
  [(SBWidgetIconResizeGestureHandler *)self iconImageInfoForGridSizeClass:v36];
  v39 = height;
  if (width <= v37)
  {
    v40 = v38;
    v39 = height;
    if (height <= v38)
    {
      v41 = v37;
      if ([v35 count] >= 3)
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
  if (v15)
  {
    v62.origin.x = rect.origin.x;
    v62.origin.y = y;
    v62.size.width = width;
    v62.size.height = height;
    v43 = v43 - CGRectGetWidth(v62);
  }

  v46 = [(SBWidgetIconResizeGestureHandler *)self animationSettings];
  v47 = MEMORY[0x1E69DD250];
  *&rect.origin.y = MEMORY[0x1E69E9820];
  *&rect.size.width = 3221225472;
  *&rect.size.height = __75__SBWidgetIconResizeGestureHandler_updatePreviewSizeWithGestureRecognizer___block_invoke;
  v50 = &unk_1E808F4C0;
  v51 = v5;
  v52 = width;
  v53 = v39;
  v54 = v32;
  v55 = v34;
  v56 = v43;
  v57 = v45;
  v58 = width;
  v59 = height;
  v48 = v5;
  [v47 sb_animateWithSettings:v46 mode:5 animations:&rect.origin.y completion:0];
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

- (void)updateStretchingWithGestureRecognizer:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(SBWidgetIconResizeGestureHandler *)self iconListView];
  [v4 locationInView:v5];
  v7 = v6;
  v9 = v8;
  [(SBWidgetIconResizeGestureHandler *)self stretchingStartLocation];
  v12 = hypot(v7 - v10, v9 - v11);
  if (fabs(v12) >= 20.0)
  {
    [(SBWidgetIconResizeGestureHandler *)self updateTransitionEndpointAndProgressWithGestureRecognizer:v4];
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

- (double)updateTransitionEndpointAndProgressWithGestureRecognizer:(id)a3
{
  v4 = a3;
  v5 = [(SBWidgetIconResizeGestureHandler *)self iconListView];
  [v4 locationInView:v5];
  [(SBWidgetIconResizeGestureHandler *)self nearestPointInsideGesturePathForPoint:?];
  v7 = v6;
  v9 = v8;
  [(SBWidgetIconResizeGestureHandler *)self stretchingStartLocation];
  v11 = v10;
  v13 = v12;
  v14 = [(SBWidgetIconResizeGestureHandler *)self previewViewController];
  v15 = [v14 startingGridSizeClass];
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
  v16 = [(SBWidgetIconResizeGestureHandler *)self sortedGridSizeClasses];
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x2020000000;
  v30[3] = 0;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __93__SBWidgetIconResizeGestureHandler_updateTransitionEndpointAndProgressWithGestureRecognizer___block_invoke;
  v20[3] = &unk_1E808F4E8;
  v17 = v15;
  v21 = v17;
  v22 = self;
  v26 = v7;
  v27 = v9;
  v23 = &v35;
  v24 = v30;
  v28 = v11;
  v29 = v13;
  v25 = &v31;
  [v16 enumerateObjectsUsingBlock:v20];
  [v14 setEndingGridSizeClass:v36[5] animated:1];
  [v14 setTransitionProgress:(v32[3] + -0.03) / 0.92];
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

- (void)updateResizingWithGestureRecognizer:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(SBWidgetIconResizeGestureHandler *)self iconListView];
  v6 = [(SBWidgetIconResizeGestureHandler *)self containerView];
  [(SBWidgetIconResizeGestureHandler *)self updateTransitionEndpointAndProgressWithGestureRecognizer:v4];
  v8 = v7;

  v9 = [(SBWidgetIconResizeGestureHandler *)self previewViewController];
  v10 = [v9 startingGridSizeClass];
  v11 = [v9 endingGridSizeClass];
  v12 = v11;
  if (v8 <= 0.5)
  {
    v13 = v10;
  }

  else
  {
    v13 = v11;
  }

  v14 = v13;
  v15 = SBLogWidgets();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138543362;
    v20 = *&v14;
    _os_log_impl(&dword_1BEB18000, v15, OS_LOG_TYPE_DEFAULT, "setting placeholder grid size class: %{public}@", &v19, 0xCu);
  }

  v16 = [(SBWidgetIconResizeGestureHandler *)self placeholder];
  [v16 setGridSizeClass:v14];
  [v5 layoutIconsIfNeededWithAnimationType:0 options:0];
  [v5 bringSubviewToFront:v6];
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

    [v9 swapViewControllersAndClearEnding];
    [(SBWidgetIconResizeGestureHandler *)self resizeHandlePointForGridSizeClass:v12];
    [(SBWidgetIconResizeGestureHandler *)self setStretchingStartLocation:?];
  }

  else if (v8 < 0.03)
  {
    [v9 setEndingGridSizeClass:0];
    [v9 setTransitionProgress:0.0];
  }
}

- (void)finishWithGestureRecognizer:(id)a3
{
  v4 = [(SBWidgetIconResizeGestureHandler *)self iconView];
  v5 = [v4 extendResizingFinish];
  v6 = [(SBWidgetIconResizeGestureHandler *)self placeholder];
  v7 = [v6 gridSizeClass];
  v8 = [v6 gridCellIndex];
  [(SBWidgetIconResizeGestureHandler *)self iconImageInfoForGridSizeClass:v7];
  v10 = v9;
  v12 = v11;
  [v4 iconImageInfo];
  v14 = v13;
  v16 = v15;
  v17 = [(SBWidgetIconResizeGestureHandler *)self iconListView];
  v18 = SBIconCoordinateMakeWithGridCellIndex(v8, [v17 gridSizeForCurrentOrientation]);
  [v17 centerForIconCoordinate:{v18, v19}];
  v21 = v20;
  v23 = v22;
  v24 = [(SBWidgetIconResizeGestureHandler *)self previewViewController];
  v25 = [v24 endingGridSizeClass];
  if (v7 == v25)
  {
    v26 = 1.0;
  }

  else if ([v7 isEqualToString:v25])
  {
    v26 = 1.0;
  }

  else
  {
    v26 = 0.0;
  }

  v27 = [(SBWidgetIconResizeGestureHandler *)self animationSettings];
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
  v38 = v4;
  v39 = v24;
  v46 = v26;
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __64__SBWidgetIconResizeGestureHandler_finishWithGestureRecognizer___block_invoke_2;
  v33[3] = &unk_1E808F510;
  v34 = v5;
  v35 = self;
  v36 = v7;
  v29 = v7;
  v30 = v5;
  v31 = v24;
  v32 = v4;
  [v28 sb_animateWithSettings:v27 mode:3 animations:v37 completion:v33];
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
  v3 = [(SBWidgetIconResizeGestureHandler *)self placeholder];
  [v3 invalidate];

  [(SBWidgetIconResizeGestureHandler *)self setPlaceholder:0];
  v4 = [(SBWidgetIconResizeGestureHandler *)self containerView];
  [v4 removeFromSuperview];

  [(SBWidgetIconResizeGestureHandler *)self setContainerView:0];
  v6 = [(SBWidgetIconResizeGestureHandler *)self previewViewController];
  [v6 invalidate];
  v5 = [(SBWidgetIconResizeGestureHandler *)self iconListView];
  [v5 layoutIconsNow];
}

- (void)setState:(int64_t)a3
{
  v9 = *MEMORY[0x1E69E9840];
  if (self->_state != a3)
  {
    v5 = SBLogWidgetResizing();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      if (a3 > 4)
      {
        v6 = 0;
      }

      else
      {
        v6 = off_1E808F530[a3];
      }

      v7 = 138543362;
      v8 = v6;
      _os_log_impl(&dword_1BEB18000, v5, OS_LOG_TYPE_DEFAULT, "changing resize gesture handler state to %{public}@", &v7, 0xCu);
    }

    self->_state = a3;
  }
}

- (void)informDelegateFinishedWithSizeClass:(id)a3
{
  v4 = a3;
  v5 = [(SBWidgetIconResizeGestureHandler *)self delegate];
  [v5 resizeGestureHandler:self didFinishWithGridSizeClass:v4];
}

- (id)effectiveGridSizeClassDomain
{
  v2 = [(SBWidgetIconResizeGestureHandler *)self iconView];
  v3 = [v2 gridSizeClassDomain];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = +[SBHIconGridSizeClassDomain globalDomain];
  }

  v6 = v5;

  return v6;
}

- (CGPoint)resizeHandlePointForGridSizeClass:(id)a3
{
  [(SBWidgetIconResizeGestureHandler *)self iconImageInfoForGridSizeClass:a3];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  [(SBWidgetIconResizeGestureHandler *)self iconViewOrigin];
  v11 = v10;
  v13 = v12;
  v14 = [(SBWidgetIconResizeGestureHandler *)self isRTL];
  v15 = -v5;
  v16 = -v9;
  if (v14)
  {
    v16 = v9;
  }

  else
  {
    v15 = v5;
  }

  v17 = v16 + v11 + v15;
  v18 = -(v9 * 0.707106781);
  if (!v14)
  {
    v18 = v9 * 0.707106781;
  }

  v19 = v18 + v17;
  v20 = v9 * 0.707106781 + v13 + v7 - v9;
  result.y = v20;
  result.x = v19;
  return result;
}

- (BOOL)isPointInsideGesturePath:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(SBWidgetIconResizeGestureHandler *)self gesturePathVertexCount];
  gesturePathVertices = self->_gesturePathVertices;

  return SBHPolygonContainsPoint(gesturePathVertices, v6, x, y);
}

- (CGPoint)nearestPointInsideGesturePathForPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(SBWidgetIconResizeGestureHandler *)self gesturePathVertexCount];
  gesturePathVertices = self->_gesturePathVertices;

  v8 = SBHPolygonNearestPointToPoint(gesturePathVertices, v6, x, y);
  result.y = v9;
  result.x = v8;
  return result;
}

- (SBIconImageInfo)iconImageInfoForGridSizeClass:(SEL)a3
{
  v5 = a4;
  v6 = [(SBWidgetIconResizeGestureHandler *)self iconListView];
  [v6 iconImageInfoForGridSizeClass:v5];

  return result;
}

- (id)iconResizeViewHelper:(id)a3 intentForWidget:(id)a4
{
  v5 = a4;
  v6 = [(SBWidgetIconResizeGestureHandler *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v7 = [v6 resizeGestureHandler:self intentForWidget:v5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)iconResizeViewHelper:(id)a3 viewControllerForIconDataSource:(id)a4 icon:(id)a5 gridSizeClass:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = [(SBWidgetIconResizeGestureHandler *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v13 = [v12 resizeGestureHandler:self viewControllerForIconDataSource:v9 icon:v10 gridSizeClass:v11];
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
  v4 = [MEMORY[0x1E698E690] succinctStyle];
  v5 = [v3 descriptionForRootObject:self withStyle:v4];

  return v5;
}

- (void)appendDescriptionToStream:(id)a3
{
  v4 = a3;
  v5 = [(SBWidgetIconResizeGestureHandler *)self effectiveGridSizeClassDomain];
  v6 = [(SBWidgetIconResizeGestureHandler *)self previewViewController];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __62__SBWidgetIconResizeGestureHandler_appendDescriptionToStream___block_invoke;
  v10[3] = &unk_1E8089E68;
  v11 = v4;
  v12 = self;
  v13 = v5;
  v14 = v6;
  v7 = v6;
  v8 = v5;
  v9 = v4;
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