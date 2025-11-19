@interface SearchUIMapsViewController
- (SFFeedbackListener)feedbackListener;
- (SearchUIMapsViewController)initWithMapsData:(id)a3 searchAlongTheRoute:(BOOL)a4 feedbackListener:(id)a5 queryId:(unint64_t)a6;
- (void)placeViewController:(id)a3 shouldLogFeedbackOfType:(int)a4;
@end

@implementation SearchUIMapsViewController

- (SearchUIMapsViewController)initWithMapsData:(id)a3 searchAlongTheRoute:(BOOL)a4 feedbackListener:(id)a5 queryId:(unint64_t)a6
{
  v8 = a4;
  v10 = a3;
  v11 = a5;
  [MEMORY[0x1E69AE118] setInfoCardContainerStyle:1];
  v12 = objc_alloc_init(MEMORY[0x1E69AE120]);
  v13 = v12;
  v14 = 0x8000000;
  if (v8)
  {
    v14 = 0x308100000;
  }

  [v12 setOptions:v14 | *MEMORY[0x1E696F128] | *MEMORY[0x1E696F130]];
  if (([MEMORY[0x1E69D9240] isSiri] & 1) == 0)
  {
    v15 = [MEMORY[0x1E696AAE8] bundleWithPath:@"/System/Library/LocationBundles/CoreParsec.framework"];
    v16 = [MEMORY[0x1E696F268] sharedLocationManager];
    [v16 setEffectiveBundle:v15];
  }

  v24.receiver = self;
  v24.super_class = SearchUIMapsViewController;
  v17 = [(MUPlaceViewController *)&v24 initWithConfiguration:v13];
  v18 = v17;
  if (v17)
  {
    objc_storeWeak(&v17->_feedbackListener, v11);
    v18->_queryId = a6;
    [(MUPlaceViewController *)v18 setPlaceViewFeedbackDelegate:v18];
    v19 = MEMORY[0x1E696F270];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __92__SearchUIMapsViewController_initWithMapsData_searchAlongTheRoute_feedbackListener_queryId___block_invoke;
    v21[3] = &unk_1E85B3410;
    v22 = v10;
    v23 = v18;
    [v19 _mapItemFromHandle:v22 completionHandler:v21];
  }

  return v18;
}

void __92__SearchUIMapsViewController_initWithMapsData_searchAlongTheRoute_feedbackListener_queryId___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    v3 = [MEMORY[0x1E696F270] mapItemWithSerializedPlaceData:*(a1 + 32)];
  }

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __92__SearchUIMapsViewController_initWithMapsData_searchAlongTheRoute_feedbackListener_queryId___block_invoke_2;
  v5[3] = &unk_1E85B2540;
  v6 = *(a1 + 40);
  v7 = v3;
  v4 = v3;
  [SearchUIUtilities dispatchMainIfNecessary:v5];
}

- (void)placeViewController:(id)a3 shouldLogFeedbackOfType:(int)a4
{
  v4 = *&a4;
  v6 = [(SearchUIMapsViewController *)self feedbackListener];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v9 = [objc_alloc(MEMORY[0x1E69CA208]) initWithFeedbackType:v4];
    [v9 setQueryId:{-[SearchUIMapsViewController queryId](self, "queryId")}];
    v8 = [(SearchUIMapsViewController *)self feedbackListener];
    [v8 didEngageCardSection:v9];
  }
}

- (SFFeedbackListener)feedbackListener
{
  WeakRetained = objc_loadWeakRetained(&self->_feedbackListener);

  return WeakRetained;
}

@end