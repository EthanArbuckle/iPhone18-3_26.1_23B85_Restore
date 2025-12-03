@interface VKCImageVisualSearchView
- (BOOL)_shouldShowPulsingDot:(id)dot;
- (BOOL)containsVisualSearchItemAtPoint:(CGPoint)point;
- (BOOL)visualSearchItemView:(id)view shouldBeginAtPoint:(CGPoint)point;
- (VKCImageVisualSearchView)init;
- (VKCImageVisualSearchViewDelegate)delegate;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (id)topResultView;
- (id)visualSearchItemAtPoint:(CGPoint)point;
- (void)_layoutResultViews;
- (void)addMetadataToVSFeedbackItem:(id)item;
- (void)animateDotsIn;
- (void)automaticallyShowVisualSearchResults;
- (void)generateVisualSearchResultForItems:(id)items queryID:(unint64_t)d completionHandler:(id)handler;
- (void)hideDots;
- (void)layoutSubviews;
- (void)presentVisualSearchForItem:(id)item;
- (void)sendDismissedAnalyticsEventEventWithItem:(id)item;
- (void)sendProcessingAnalyticsEventEventWithItem:(id)item duration:(double)duration;
- (void)setFrame:(CGRect)frame;
- (void)setHidden:(BOOL)hidden;
- (void)setNormalizedVisibleRect:(CGRect)rect;
- (void)setVisualSearchResult:(id)result;
- (void)showTopVisualSearchResult;
- (void)submitVisualSearchUserFeedbackForReportIdentifier:(id)identifier userFeedbackPayload:(id)payload sfReportData:(id)data;
- (void)triggerTapToRadar;
- (void)updateUIForVisualSearchResultsClearExistingResults:(BOOL)results includeNotVisibleItems:(BOOL)items;
- (void)visualSearchItemView:(id)view didProcessResultsWithDuration:(double)duration;
- (void)visualSearchItemView:(id)view didTapVisualSearchIndicatorWithNormalizedBoundingBox:(CGRect)box;
- (void)visualSearchItemViewDidActivateVSItem:(id)item;
- (void)visualSearchItemViewDidDismissController:(id)controller;
@end

@implementation VKCImageVisualSearchView

- (VKCImageVisualSearchView)init
{
  v5.receiver = self;
  v5.super_class = VKCImageVisualSearchView;
  v2 = [(VKCImageVisualSearchView *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(VKCImageVisualSearchView *)v2 setNormalizedVisibleRect:0.0, 0.0, 1.0, 1.0];
  }

  return v3;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = VKCImageVisualSearchView;
  [(VKCImageVisualSearchView *)&v3 layoutSubviews];
  [(VKCImageVisualSearchView *)self _layoutResultViews];
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  [(VKCImageVisualSearchView *)self frame];
  if (!VKMNearlyEqualRects(v8, v9, v10, v11, x, y, width, height))
  {
    [(VKCImageVisualSearchView *)self _layoutResultViews];
  }

  v12.receiver = self;
  v12.super_class = VKCImageVisualSearchView;
  [(VKCImageVisualSearchView *)&v12 setFrame:x, y, width, height];
}

- (void)_layoutResultViews
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  resultViews = [(VKCImageVisualSearchView *)self resultViews];
  v3 = [resultViews countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(resultViews);
        }

        [*(*(&v7 + 1) + 8 * v6++) setNeedsLayout];
      }

      while (v4 != v6);
      v4 = [resultViews countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  v10.receiver = self;
  v10.super_class = VKCImageVisualSearchView;
  v5 = [(VKCImageVisualSearchView *)&v10 hitTest:event withEvent:test.x, test.y];
  v6 = v5;
  if (v5 == self)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  v8 = v7;

  return v7;
}

- (void)triggerTapToRadar
{
  delegate = [(VKCImageVisualSearchView *)self delegate];
  [delegate triggerTapToRadar];
}

- (void)setVisualSearchResult:(id)result
{
  resultCopy = result;
  if (self->_visualSearchResult != resultCopy)
  {
    objc_storeStrong(&self->_visualSearchResult, result);
    if (([(VKCImageVisualSearchView *)self isHidden]& 1) == 0)
    {
      [(VKPlatformView *)self vk_alpha];
      if (v5 > 0.0)
      {
        [(VKCImageVisualSearchView *)self updateUIForVisualSearchResultsClearExistingResults:1 includeNotVisibleItems:0];
        [(VKCImageVisualSearchView *)self animateDotsIn];
      }
    }
  }
}

- (void)setHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  isHidden = [(VKCImageVisualSearchView *)self isHidden];
  v6.receiver = self;
  v6.super_class = VKCImageVisualSearchView;
  [(VKCImageVisualSearchView *)&v6 setHidden:hiddenCopy];
  if (hiddenCopy)
  {
    [(VKCImageVisualSearchView *)self hideDots];
  }

  else if (isHidden)
  {
    [(VKCImageVisualSearchView *)self updateUIForVisualSearchResultsClearExistingResults:1 includeNotVisibleItems:0];
    [(VKCImageVisualSearchView *)self animateDotsIn];
  }
}

- (void)animateDotsIn
{
  v25 = *MEMORY[0x1E69E9840];
  if (self->_shouldAutomaticallyShowVisualSearchResult)
  {
    v3 = 0.3;
  }

  else
  {
    v3 = 0.6;
  }

  resultViews = [(VKCImageVisualSearchView *)self resultViews];
  v5 = [resultViews count];

  if (v5)
  {
    v6 = 0;
    v7 = -1;
    do
    {
      resultViews2 = [(VKCImageVisualSearchView *)self resultViews];
      resultViews3 = [(VKCImageVisualSearchView *)self resultViews];
      v10 = [resultViews2 objectAtIndexedSubscript:{objc_msgSend(resultViews3, "count") + v7}];

      [v10 beginAnimatingDotAfterDelay:v3 + v6 * 0.4];
      ++v6;
      resultViews4 = [(VKCImageVisualSearchView *)self resultViews];
      v12 = [resultViews4 count];

      --v7;
    }

    while (v12 > v6);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  resultViews5 = [(VKCImageVisualSearchView *)self resultViews];
  v14 = [resultViews5 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v21;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v21 != v16)
        {
          objc_enumerationMutation(resultViews5);
        }

        v18 = *(*(&v20 + 1) + 8 * i);
        resultViews6 = [(VKCImageVisualSearchView *)self resultViews];
        [v18 performSelector:sel_didFinishAnimatingDots withObject:0 afterDelay:{v3 + objc_msgSend(resultViews6, "count") * 0.4}];
      }

      v15 = [resultViews5 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v15);
  }
}

- (void)hideDots
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  resultViews = [(VKCImageVisualSearchView *)self resultViews];
  v3 = [resultViews countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(resultViews);
        }

        [*(*(&v7 + 1) + 8 * v6++) hideDots];
      }

      while (v4 != v6);
      v4 = [resultViews countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)setNormalizedVisibleRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  [(VKCImageBaseOverlayView *)self normalizedVisibleRect];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v20.receiver = self;
  v20.super_class = VKCImageVisualSearchView;
  [(VKCImageBaseOverlayView *)&v20 setNormalizedVisibleRect:x, y, width, height];
  [(VKCImageBaseOverlayView *)self normalizedVisibleRect];
  if (!VKMNearlyEqualRects(v9, v11, v13, v15, v16, v17, v18, v19))
  {
    [(VKCImageVisualSearchView *)self updateUIForVisualSearchResultsClearExistingResults:0 includeNotVisibleItems:0];
  }
}

- (void)updateUIForVisualSearchResultsClearExistingResults:(BOOL)results includeNotVisibleItems:(BOOL)items
{
  itemsCopy = items;
  v55 = *MEMORY[0x1E69E9840];
  if (results)
  {
    cachedResultItemsWithFocalDot = self->_cachedResultItemsWithFocalDot;
    self->_cachedResultItemsWithFocalDot = 0;
  }

  v7 = [MEMORY[0x1E695DFA8] set];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  resultItems = [(VKCVisualSearchResult *)self->_visualSearchResult resultItems];
  v9 = [resultItems countByEnumeratingWithState:&v47 objects:v54 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v48;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v48 != v11)
        {
          objc_enumerationMutation(resultItems);
        }

        v13 = *(*(&v47 + 1) + 8 * i);
        if ([(VKCImageVisualSearchView *)self didAddVisualSearchCornerView]&& [(VKCImageVisualSearchView *)self _shouldShowPulsingDot:v13]|| ![(VKCImageVisualSearchView *)self didAddVisualSearchCornerView]|| itemsCopy)
        {
          [v7 addObject:v13];
        }
      }

      v10 = [resultItems countByEnumeratingWithState:&v47 objects:v54 count:16];
    }

    while (v10);
  }

  if ([v7 isEqualToSet:self->_cachedResultItemsWithFocalDot])
  {
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    resultViews = [(VKCImageVisualSearchView *)self resultViews];
    v15 = [resultViews countByEnumeratingWithState:&v43 objects:v53 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v44;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v44 != v17)
          {
            objc_enumerationMutation(resultViews);
          }

          [*(*(&v43 + 1) + 8 * j) vk_setNeedsLayout];
        }

        v16 = [resultViews countByEnumeratingWithState:&v43 objects:v53 count:16];
      }

      while (v16);
    }
  }

  else
  {
    objc_storeStrong(&self->_cachedResultItemsWithFocalDot, v7);
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    resultViews2 = [(VKCImageVisualSearchView *)self resultViews];
    v20 = [resultViews2 countByEnumeratingWithState:&v39 objects:v52 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v40;
      do
      {
        for (k = 0; k != v21; ++k)
        {
          if (*v40 != v22)
          {
            objc_enumerationMutation(resultViews2);
          }

          [*(*(&v39 + 1) + 8 * k) removeFromSuperview];
        }

        v21 = [resultViews2 countByEnumeratingWithState:&v39 objects:v52 count:16];
      }

      while (v21);
    }

    array = [MEMORY[0x1E695DF70] array];
    [(VKCImageVisualSearchView *)self setResultViews:array];

    resultViews = [v7 allObjects];
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v34 = v7;
    v25 = v7;
    v26 = [v25 countByEnumeratingWithState:&v35 objects:v51 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v36;
      do
      {
        for (m = 0; m != v27; ++m)
        {
          if (*v36 != v28)
          {
            objc_enumerationMutation(v25);
          }

          v30 = *(*(&v35 + 1) + 8 * m);
          v31 = [[VKCVisualSearchResultItemView alloc] initWithVisualSearchResultItem:v30];
          [(VKCVisualSearchResultItemView *)v31 setDelegate:self];
          if ([(VKCImageVisualSearchView *)self isHidden])
          {
            [(VKCVisualSearchResultItemView *)v31 hideDots];
          }

          delegate = [(VKCImageVisualSearchView *)self delegate];
          -[VKCVisualSearchResultItemView setHidden:](v31, "setHidden:", [delegate visualSearchView:self shouldShowDotForItem:v30 allItems:resultViews] ^ 1);

          [(VKCImageVisualSearchView *)self addSubview:v31];
          resultViews3 = [(VKCImageVisualSearchView *)self resultViews];
          [resultViews3 addObject:v31];
        }

        v27 = [v25 countByEnumeratingWithState:&v35 objects:v51 count:16];
      }

      while (v27);
    }

    v7 = v34;
  }
}

- (id)topResultView
{
  resultItems = [(VKCVisualSearchResult *)self->_visualSearchResult resultItems];
  firstObject = [resultItems firstObject];

  resultViews = [(VKCImageVisualSearchView *)self resultViews];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __41__VKCImageVisualSearchView_topResultView__block_invoke;
  v9[3] = &unk_1E7BE5EF0;
  v10 = firstObject;
  v6 = firstObject;
  v7 = [resultViews vk_objectPassingTest:v9];

  return v7;
}

BOOL __41__VKCImageVisualSearchView_topResultView__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 visualSearchResultItem];
  v4 = v3 == *(a1 + 32);

  return v4;
}

- (void)automaticallyShowVisualSearchResults
{
  [(VKCImageVisualSearchView *)self updateUIForVisualSearchResultsClearExistingResults:1 includeNotVisibleItems:0];
  topResultView = [(VKCImageVisualSearchView *)self topResultView];
  [topResultView setAutomaticallyShowVisualSearchResults:1];
  visualSearchResultItem = [topResultView visualSearchResultItem];
  [visualSearchResultItem setCurrentInvocationType:4];

  self->_shouldAutomaticallyShowVisualSearchResult = topResultView != 0;
  if (([(VKCImageVisualSearchView *)self isHidden]& 1) == 0)
  {
    [(VKCImageVisualSearchView *)self animateDotsIn];
  }
}

- (void)showTopVisualSearchResult
{
  topResultView = [(VKCImageVisualSearchView *)self topResultView];
  [topResultView showVisualResultsPane];
}

- (void)presentVisualSearchForItem:(id)item
{
  itemCopy = item;
  resultViews = [(VKCImageVisualSearchView *)self resultViews];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __55__VKCImageVisualSearchView_presentVisualSearchForItem___block_invoke;
  v14[3] = &unk_1E7BE5EF0;
  v6 = itemCopy;
  v15 = v6;
  v7 = [resultViews vk_objectPassingTest:v14];

  if (!v7)
  {
    [(VKCImageVisualSearchView *)self updateUIForVisualSearchResultsClearExistingResults:1 includeNotVisibleItems:1];
    resultViews2 = [(VKCImageVisualSearchView *)self resultViews];
    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = __55__VKCImageVisualSearchView_presentVisualSearchForItem___block_invoke_2;
    v12 = &unk_1E7BE5EF0;
    v13 = v6;
    v7 = [resultViews2 vk_objectPassingTest:&v9];
  }

  [v7 showVisualResultsPane];
}

BOOL __55__VKCImageVisualSearchView_presentVisualSearchForItem___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 visualSearchResultItem];
  v4 = v3 == *(a1 + 32);

  return v4;
}

BOOL __55__VKCImageVisualSearchView_presentVisualSearchForItem___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 visualSearchResultItem];
  v4 = v3 == *(a1 + 32);

  return v4;
}

- (void)addMetadataToVSFeedbackItem:(id)item
{
  itemCopy = item;
  delegate = [(VKCImageVisualSearchView *)self delegate];
  [delegate addMetadataToVSFeedbackItem:itemCopy];
}

- (BOOL)_shouldShowPulsingDot:(id)dot
{
  dotCopy = dot;
  if ([dotCopy shouldPlaceInCorner])
  {
    v5 = 0;
  }

  else
  {
    [(VKCImageBaseOverlayView *)self normalizedVisibleRect];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    [dotCopy normalizedIconLocation];
    v17.x = v14;
    v17.y = v15;
    v18.origin.x = v7;
    v18.origin.y = v9;
    v18.size.width = v11;
    v18.size.height = v13;
    v5 = CGRectContainsPoint(v18, v17);
  }

  return v5;
}

- (BOOL)containsVisualSearchItemAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  resultViews = [(VKCImageVisualSearchView *)self resultViews];
  v7 = [resultViews countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(resultViews);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        [(VKCImageVisualSearchView *)self convertPoint:v11 toView:x, y];
        if ([v11 containsVisualSearchItemAtPoint:?])
        {
          v12 = 1;
          goto LABEL_11;
        }
      }

      v8 = [resultViews countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_11:

  return v12;
}

- (id)visualSearchItemAtPoint:(CGPoint)point
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__9;
  v18 = __Block_byref_object_dispose__9;
  v19 = 0;
  [(VKCImageBaseOverlayView *)self normalizedPointFromViewPoint:point.x, point.y];
  v5 = v4;
  v7 = v6;
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x2020000000;
  v13[3] = 0x7FF0000000000000;
  visualSearchResult = [(VKCImageVisualSearchView *)self visualSearchResult];
  resultItems = [visualSearchResult resultItems];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __52__VKCImageVisualSearchView_visualSearchItemAtPoint___block_invoke;
  v12[3] = &unk_1E7BE5F18;
  v12[6] = v5;
  v12[7] = v7;
  v12[4] = v13;
  v12[5] = &v14;
  [resultItems enumerateObjectsUsingBlock:v12];

  v10 = v15[5];
  _Block_object_dispose(v13, 8);
  _Block_object_dispose(&v14, 8);

  return v10;
}

void __52__VKCImageVisualSearchView_visualSearchItemAtPoint___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  [v9 normalizedIconLocation];
  v5 = v4;
  v7 = v6;
  if (([v9 shouldPlaceInCorner] & 1) == 0)
  {
    [v9 normalizedBoundingBox];
    if (CGRectContainsPoint(v11, *(a1 + 48)))
    {
      v8 = VKMDistance(v5, v7, *(a1 + 48), *(a1 + 56));
      if (v8 < *(*(*(a1 + 32) + 8) + 24))
      {
        objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
        *(*(*(a1 + 32) + 8) + 24) = v8;
      }
    }
  }
}

- (BOOL)visualSearchItemView:(id)view shouldBeginAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  viewCopy = view;
  [(VKCImageVisualSearchView *)self convertPoint:viewCopy fromView:x, y];
  v9 = v8;
  v11 = v10;
  delegate = [(VKCImageVisualSearchView *)self delegate];
  v13 = [delegate visualSearchItemView:viewCopy shouldBeginAtPoint:{v9, v11}];

  return v13;
}

- (void)visualSearchItemView:(id)view didTapVisualSearchIndicatorWithNormalizedBoundingBox:(CGRect)box
{
  height = box.size.height;
  width = box.size.width;
  y = box.origin.y;
  x = box.origin.x;
  v22 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  delegate = [(VKCImageVisualSearchView *)self delegate];
  [delegate visualSearchItemView:viewCopy didTapVisualSearchIndicatorWithNormalizedBoundingBox:{x, y, width, height}];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  resultViews = [(VKCImageVisualSearchView *)self resultViews];
  v12 = [resultViews countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v18;
    do
    {
      v15 = 0;
      do
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(resultViews);
        }

        v16 = *(*(&v17 + 1) + 8 * v15);
        if (v16 != viewCopy)
        {
          [v16 setPulsing:0];
        }

        ++v15;
      }

      while (v13 != v15);
      v13 = [resultViews countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v13);
  }
}

- (void)visualSearchItemViewDidActivateVSItem:(id)item
{
  itemCopy = item;
  delegate = [(VKCImageVisualSearchView *)self delegate];
  [delegate visualSearchItemViewDidActivateVSItem:itemCopy];
}

- (void)visualSearchItemViewDidDismissController:(id)controller
{
  v17 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  delegate = [(VKCImageVisualSearchView *)self delegate];
  [delegate visualSearchItemViewDidDismissController:controllerCopy];

  visualSearchResultItem = [controllerCopy visualSearchResultItem];
  [(VKCImageVisualSearchView *)self sendDismissedAnalyticsEventEventWithItem:visualSearchResultItem];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  resultViews = [(VKCImageVisualSearchView *)self resultViews];
  v8 = [resultViews countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(resultViews);
        }

        [*(*(&v12 + 1) + 8 * v11++) setPulsing:1];
      }

      while (v9 != v11);
      v9 = [resultViews countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (void)generateVisualSearchResultForItems:(id)items queryID:(unint64_t)d completionHandler:(id)handler
{
  handlerCopy = handler;
  itemsCopy = items;
  delegate = [(VKCImageVisualSearchView *)self delegate];
  [delegate generateVisualSearchResultForItems:itemsCopy queryID:d completionHandler:handlerCopy];
}

- (void)submitVisualSearchUserFeedbackForReportIdentifier:(id)identifier userFeedbackPayload:(id)payload sfReportData:(id)data
{
  dataCopy = data;
  payloadCopy = payload;
  identifierCopy = identifier;
  delegate = [(VKCImageVisualSearchView *)self delegate];
  [delegate submitVisualSearchUserFeedbackForReportIdentifier:identifierCopy userFeedbackPayload:payloadCopy sfReportData:dataCopy];
}

- (void)visualSearchItemView:(id)view didProcessResultsWithDuration:(double)duration
{
  visualSearchResultItem = [view visualSearchResultItem];
  [(VKCImageVisualSearchView *)self sendProcessingAnalyticsEventEventWithItem:visualSearchResultItem duration:duration];
}

- (void)sendProcessingAnalyticsEventEventWithItem:(id)item duration:(double)duration
{
  itemCopy = item;
  visualSearchResult = [(VKCImageVisualSearchView *)self visualSearchResult];
  resultItems = [visualSearchResult resultItems];

  v8 = [VKAnalyticsVisualSearchEvent alloc];
  customAnalyticsIdentifier = [(VKCImageBaseOverlayView *)self customAnalyticsIdentifier];
  v10 = [(VKAnalyticsVisualSearchEvent *)v8 initWithType:2 items:resultItems interactedItem:itemCopy serverProcessingTime:customAnalyticsIdentifier customIdentifier:duration];

  delegate = [(VKCImageVisualSearchView *)self delegate];
  [delegate visualSearchView:self analyticsEventOccured:v10];
}

- (void)sendDismissedAnalyticsEventEventWithItem:(id)item
{
  itemCopy = item;
  visualSearchResult = [(VKCImageVisualSearchView *)self visualSearchResult];
  resultItems = [visualSearchResult resultItems];

  v6 = [VKAnalyticsVisualSearchEvent alloc];
  customAnalyticsIdentifier = [(VKCImageBaseOverlayView *)self customAnalyticsIdentifier];
  v8 = [(VKAnalyticsVisualSearchEvent *)v6 initWithType:3 items:resultItems interactedItem:itemCopy serverProcessingTime:customAnalyticsIdentifier customIdentifier:0.0];

  delegate = [(VKCImageVisualSearchView *)self delegate];
  [delegate visualSearchView:self analyticsEventOccured:v8];
}

- (VKCImageVisualSearchViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end