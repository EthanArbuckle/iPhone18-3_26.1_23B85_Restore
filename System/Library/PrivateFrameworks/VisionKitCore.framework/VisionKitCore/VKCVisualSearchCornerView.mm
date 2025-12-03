@interface VKCVisualSearchCornerView
- (BOOL)_itemObscuredByViewport:(id)viewport;
- (CGRect)normalizedVisibleRect;
- (CGSize)intrinsicContentSize;
- (VKCVisualSearchCornerView)init;
- (VKCVisualSearchCornerViewDelegate)delegate;
- (double)buttonSpacing;
- (double)windowScale;
- (id)_resultItems;
- (void)_showCornerLookupButtonsForResults:(id)results;
- (void)_updateButtonFramesWithScale:(double)scale;
- (void)addMetadataToVSFeedbackItem:(id)item;
- (void)automaticallyShowVisualSearchResultsIfApplicable;
- (void)generateVisualSearchResultForItems:(id)items queryID:(unint64_t)d completionHandler:(id)handler;
- (void)invalidateButtonsForResults;
- (void)lookupButton:(id)button didProcessResultWithDuration:(double)duration;
- (void)lookupButton:(id)button didTapVisualSearchIndicatorWithNormalizedBoundingBox:(CGRect)box;
- (void)lookupButtonDidDismissController:(id)controller;
- (void)sendDismissedAnalyticsEventEventWithItem:(id)item;
- (void)sendProcessingAnalyticsEventEventWithItem:(id)item duration:(double)duration;
- (void)setAnalysis:(id)analysis;
- (void)setNormalizedVisibleRect:(CGRect)rect;
- (void)showVisualSearchResultView;
- (void)submitVisualSearchUserFeedbackForReportIdentifier:(id)identifier userFeedbackPayload:(id)payload sfReportData:(id)data;
@end

@implementation VKCVisualSearchCornerView

- (VKCVisualSearchCornerView)init
{
  v9[2] = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = VKCVisualSearchCornerView;
  v2 = [(VKCVisualSearchCornerView *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v2->_normalizedVisibleRect.origin = VKMRectUnit;
    v2->_normalizedVisibleRect.size = *&qword_1B44285A8;
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel__contentSizeChanged_ name:*MEMORY[0x1E69DDC48] object:0];

    if ([MEMORY[0x1E69DC938] vk_isiPad])
    {
      v9[0] = objc_opt_class();
      v9[1] = objc_opt_class();
      v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
      v6 = [(VKCVisualSearchCornerView *)v3 registerForTraitChanges:v5 withAction:sel_invalidateButtonsForResults];
    }
  }

  return v3;
}

- (void)setAnalysis:(id)analysis
{
  analysisCopy = analysis;
  if (self->_analysis != analysisCopy)
  {
    v7 = analysisCopy;
    objc_storeStrong(&self->_analysis, analysis);
    _resultItems = [(VKCVisualSearchCornerView *)self _resultItems];
    [(VKCVisualSearchCornerView *)self _showCornerLookupButtonsForResults:_resultItems];

    analysisCopy = v7;
  }
}

- (double)windowScale
{
  [(VKCVisualSearchCornerView *)self intrinsicContentSize];
  v4 = v3;
  [(VKCVisualSearchCornerView *)self bounds];
  return v5 / v4;
}

- (id)_resultItems
{
  imageAnalysisResult = [(VKImageAnalysis *)self->_analysis imageAnalysisResult];
  visualSearchResult = [imageAnalysisResult visualSearchResult];
  resultItems = [visualSearchResult resultItems];

  return resultItems;
}

- (void)automaticallyShowVisualSearchResultsIfApplicable
{
  _resultItems = [(VKCVisualSearchCornerView *)self _resultItems];
  firstObject = [_resultItems firstObject];

  cornerButtons = self->_cornerButtons;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __77__VKCVisualSearchCornerView_automaticallyShowVisualSearchResultsIfApplicable__block_invoke;
  v8[3] = &unk_1E7BE3F20;
  v9 = firstObject;
  v6 = firstObject;
  v7 = [(NSMutableArray *)cornerButtons vk_objectPassingTest:v8];
  [v7 setShouldShowResultWhenVisible:1];
}

BOOL __77__VKCVisualSearchCornerView_automaticallyShowVisualSearchResultsIfApplicable__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 resultItem];
  v4 = v3 == *(a1 + 32);

  return v4;
}

- (void)_showCornerLookupButtonsForResults:(id)results
{
  v17 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  array = [MEMORY[0x1E695DF70] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = resultsCopy;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * i);
        if (([v11 shouldPlaceInCorner] & 1) != 0 || -[VKCVisualSearchCornerView _itemObscuredByViewport:](self, "_itemObscuredByViewport:", v11))
        {
          [array addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  if (![(NSArray *)self->_cornerResultItems isEqualToArray:array])
  {
    objc_storeStrong(&self->_cornerResultItems, array);
    [(VKCVisualSearchCornerView *)self invalidateButtonsForResults];
  }
}

- (void)showVisualSearchResultView
{
  _resultItems = [(VKCVisualSearchCornerView *)self _resultItems];
  firstObject = [_resultItems firstObject];

  cornerButtons = self->_cornerButtons;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __55__VKCVisualSearchCornerView_showVisualSearchResultView__block_invoke;
  v8[3] = &unk_1E7BE3F20;
  v9 = firstObject;
  v6 = firstObject;
  v7 = [(NSMutableArray *)cornerButtons vk_objectPassingTest:v8];
  [v7 showVisualSearchResultView];
}

BOOL __55__VKCVisualSearchCornerView_showVisualSearchResultView__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 resultItem];
  v4 = v3 == *(a1 + 32);

  return v4;
}

- (double)buttonSpacing
{
  vk_isiPad = [MEMORY[0x1E69DC938] vk_isiPad];
  result = 10.0;
  if (vk_isiPad)
  {
    traitCollection = [(VKCVisualSearchCornerView *)self traitCollection];
    vk_hasCompactSize = [traitCollection vk_hasCompactSize];

    result = 10.0;
    if (vk_hasCompactSize)
    {
      return 14.0;
    }
  }

  return result;
}

- (void)invalidateButtonsForResults
{
  v32 = *MEMORY[0x1E69E9840];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v3 = self->_cornerButtons;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v27;
    do
    {
      v7 = 0;
      do
      {
        if (*v27 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v26 + 1) + 8 * v7++) removeFromSuperview];
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v5);
  }

  array = [MEMORY[0x1E695DF70] array];
  cornerButtons = self->_cornerButtons;
  self->_cornerButtons = array;

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v10 = self->_cornerResultItems;
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v23;
    v14 = *MEMORY[0x1E695F058];
    v15 = *(MEMORY[0x1E695F058] + 8);
    v16 = *(MEMORY[0x1E695F058] + 16);
    v17 = *(MEMORY[0x1E695F058] + 24);
    do
    {
      v18 = 0;
      do
      {
        if (*v23 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v19 = *(*(&v22 + 1) + 8 * v18);
        v20 = [VKCCornerLookupButton alloc];
        v21 = [(VKCCornerLookupButton *)v20 initWithFrame:v19 resultItem:v14, v15, v16, v17, v22];
        [(VKCCornerLookupButton *)v21 setDelegate:self];
        [(VKCVisualSearchCornerView *)self addSubview:v21];
        [(NSMutableArray *)self->_cornerButtons addObject:v21];

        ++v18;
      }

      while (v12 != v18);
      v12 = [(NSArray *)v10 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v12);
  }

  [(VKCVisualSearchCornerView *)self windowScale];
  [(VKCVisualSearchCornerView *)self _updateButtonFramesWithScale:?];
  [(VKCVisualSearchCornerView *)self invalidateIntrinsicContentSize];
}

- (BOOL)_itemObscuredByViewport:(id)viewport
{
  viewportCopy = viewport;
  [(VKCVisualSearchCornerView *)self normalizedVisibleRect];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [viewportCopy normalizedIconLocation];
  v14 = v13;
  v16 = v15;

  v19.origin.x = v6;
  v19.origin.y = v8;
  v19.size.width = v10;
  v19.size.height = v12;
  v18.x = v14;
  v18.y = v16;
  return !CGRectContainsPoint(v19, v18);
}

- (CGSize)intrinsicContentSize
{
  v3 = 0.0;
  if ([(NSMutableArray *)self->_cornerButtons count]>= 2)
  {
    v4 = ([(NSMutableArray *)self->_cornerButtons count]- 1);
    [(VKCVisualSearchCornerView *)self buttonSpacing];
    v3 = v5 * v4;
  }

  firstObject = [(NSMutableArray *)self->_cornerButtons firstObject];
  [firstObject cornerButtonSize];
  v8 = v7;

  v9 = v3 + v8 * [(NSMutableArray *)self->_cornerButtons count];
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (void)_updateButtonFramesWithScale:(double)scale
{
  [(VKCVisualSearchCornerView *)self buttonSpacing];
  v5 = v4;
  if ([(NSMutableArray *)self->_cornerButtons count])
  {
    v6 = 0;
    do
    {
      v7 = [(NSMutableArray *)self->_cornerButtons objectAtIndexedSubscript:v6];
      [v7 cornerButtonSize];
      [v7 setFrame:{(v5 + v8) * v6, 0.0, v8, v8}];

      ++v6;
    }

    while ([(NSMutableArray *)self->_cornerButtons count]> v6);
  }

  [(VKCVisualSearchCornerView *)self frame];
  v10 = v9;
  v12 = v11;
  intrinsicContentSize = [(VKCVisualSearchCornerView *)self intrinsicContentSize];
  VKMRectWithOriginAndSize(intrinsicContentSize, v10, v12, v14, v15);

  [(VKCVisualSearchCornerView *)self setFrame:?];
}

- (void)generateVisualSearchResultForItems:(id)items queryID:(unint64_t)d completionHandler:(id)handler
{
  handlerCopy = handler;
  itemsCopy = items;
  delegate = [(VKCVisualSearchCornerView *)self delegate];
  [delegate generateVisualSearchResultForItems:itemsCopy queryID:d completionHandler:handlerCopy];
}

- (void)submitVisualSearchUserFeedbackForReportIdentifier:(id)identifier userFeedbackPayload:(id)payload sfReportData:(id)data
{
  dataCopy = data;
  payloadCopy = payload;
  identifierCopy = identifier;
  delegate = [(VKCVisualSearchCornerView *)self delegate];
  [delegate submitVisualSearchUserFeedbackForReportIdentifier:identifierCopy userFeedbackPayload:payloadCopy sfReportData:dataCopy];
}

- (void)lookupButton:(id)button didProcessResultWithDuration:(double)duration
{
  resultItem = [button resultItem];
  [(VKCVisualSearchCornerView *)self sendProcessingAnalyticsEventEventWithItem:resultItem duration:duration];
}

- (void)lookupButtonDidDismissController:(id)controller
{
  resultItem = [controller resultItem];
  [(VKCVisualSearchCornerView *)self sendDismissedAnalyticsEventEventWithItem:resultItem];

  delegate = [(VKCVisualSearchCornerView *)self delegate];
  [delegate visualSearchCornerViewDidDismissVisualSearchController:self];
}

- (void)addMetadataToVSFeedbackItem:(id)item
{
  itemCopy = item;
  delegate = [(VKCVisualSearchCornerView *)self delegate];
  [delegate addMetadataToVSFeedbackItem:itemCopy];
}

- (void)setNormalizedVisibleRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  p_normalizedVisibleRect = &self->_normalizedVisibleRect;
  if (!CGRectEqualToRect(self->_normalizedVisibleRect, rect))
  {
    p_normalizedVisibleRect->origin.x = x;
    p_normalizedVisibleRect->origin.y = y;
    p_normalizedVisibleRect->size.width = width;
    p_normalizedVisibleRect->size.height = height;
    _resultItems = [(VKCVisualSearchCornerView *)self _resultItems];
    [(VKCVisualSearchCornerView *)self _showCornerLookupButtonsForResults:_resultItems];
  }
}

- (void)lookupButton:(id)button didTapVisualSearchIndicatorWithNormalizedBoundingBox:(CGRect)box
{
  height = box.size.height;
  width = box.size.width;
  y = box.origin.y;
  x = box.origin.x;
  delegate = [(VKCVisualSearchCornerView *)self delegate];
  [delegate visualSearchCornerView:self didTapVisualSearchIndicatorWithNormalizedBoundingBox:{x, y, width, height}];
}

- (void)sendProcessingAnalyticsEventEventWithItem:(id)item duration:(double)duration
{
  itemCopy = item;
  _resultItems = [(VKCVisualSearchCornerView *)self _resultItems];
  v7 = [VKAnalyticsVisualSearchEvent alloc];
  _customAnalyticsIdentifier = [(VKCVisualSearchCornerView *)self _customAnalyticsIdentifier];
  v9 = [(VKAnalyticsVisualSearchEvent *)v7 initWithType:2 items:_resultItems interactedItem:itemCopy serverProcessingTime:_customAnalyticsIdentifier customIdentifier:duration];

  delegate = [(VKCVisualSearchCornerView *)self delegate];
  [delegate visualSearchCornerView:self analyticsEventDidOccur:v9];
}

- (void)sendDismissedAnalyticsEventEventWithItem:(id)item
{
  itemCopy = item;
  _resultItems = [(VKCVisualSearchCornerView *)self _resultItems];
  v5 = [VKAnalyticsVisualSearchEvent alloc];
  _customAnalyticsIdentifier = [(VKCVisualSearchCornerView *)self _customAnalyticsIdentifier];
  v7 = [(VKAnalyticsVisualSearchEvent *)v5 initWithType:3 items:_resultItems interactedItem:itemCopy serverProcessingTime:_customAnalyticsIdentifier customIdentifier:0.0];

  delegate = [(VKCVisualSearchCornerView *)self delegate];
  [delegate visualSearchCornerView:self analyticsEventDidOccur:v7];
}

- (CGRect)normalizedVisibleRect
{
  x = self->_normalizedVisibleRect.origin.x;
  y = self->_normalizedVisibleRect.origin.y;
  width = self->_normalizedVisibleRect.size.width;
  height = self->_normalizedVisibleRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (VKCVisualSearchCornerViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end