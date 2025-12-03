@interface PXCMMSession
+ (PXCMMSession)new;
- (NSDictionary)diagnosticDictionary;
- (PXCMMSession)init;
- (PXCMMSession)initWithContext:(id)context;
- (id)momentShareStatusPresentationWithPresentationStyle:(int64_t)style;
@end

@implementation PXCMMSession

- (id)momentShareStatusPresentationWithPresentationStyle:(int64_t)style
{
  momentShareStatus = [(PXCMMSession *)self momentShareStatus];
  momentShare = [momentShareStatus momentShare];

  if (+[PXMomentShareStatusMock shouldUseMockStatus])
  {
    momentShareStatus2 = [[PXMomentShareStatusMock alloc] initWithMomentShare:momentShare];
  }

  else
  {
    momentShareStatus2 = [(PXCMMSession *)self momentShareStatus];
  }

  v8 = momentShareStatus2;
  if (momentShareStatus2)
  {
    v9 = [[PXMomentShareStatusPresentation alloc] initWithMomentShareStatus:momentShareStatus2 presentationStyle:style];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (PXCMMSession)initWithContext:(id)context
{
  contextCopy = context;
  v35.receiver = self;
  v35.super_class = PXCMMSession;
  v5 = [(PXCMMSession *)&v35 init];
  if (v5)
  {
    dataSourceManager = [contextCopy dataSourceManager];
    dataSourceManager = v5->_dataSourceManager;
    v5->_dataSourceManager = dataSourceManager;

    mediaProvider = [contextCopy mediaProvider];
    mediaProvider = v5->_mediaProvider;
    v5->_mediaProvider = mediaProvider;

    v5->_activityType = [contextCopy activityType];
    v5->_sourceType = [contextCopy sourceType];
    v5->_hideActionMenu = [contextCopy hideActionMenu];
    assetPreparationOptions = [contextCopy assetPreparationOptions];
    preparationOptionsPerAsset = v5->_preparationOptionsPerAsset;
    v5->_preparationOptionsPerAsset = assetPreparationOptions;

    peopleSuggestionsPreviewDataSourceManager = [contextCopy peopleSuggestionsPreviewDataSourceManager];
    peopleSuggestionsPreviewDataSourceManager = v5->_peopleSuggestionsPreviewDataSourceManager;
    v5->_peopleSuggestionsPreviewDataSourceManager = peopleSuggestionsPreviewDataSourceManager;

    peopleSuggestionsDataSourceManager = [contextCopy peopleSuggestionsDataSourceManager];
    peopleSuggestionsDataSourceManager = v5->_peopleSuggestionsDataSourceManager;
    v5->_peopleSuggestionsDataSourceManager = peopleSuggestionsDataSourceManager;

    customAssetSelectionHandler = [contextCopy customAssetSelectionHandler];
    v17 = [customAssetSelectionHandler copy];
    customAssetSelectionHandler = v5->_customAssetSelectionHandler;
    v5->_customAssetSelectionHandler = v17;

    v19 = [[off_1E77218C8 alloc] initWithDataSourceManager:v5->_dataSourceManager];
    v20 = objc_alloc_init(PXCMMViewModel);
    viewModel = v5->_viewModel;
    v5->_viewModel = v20;

    v22 = v5->_viewModel;
    v29 = MEMORY[0x1E69E9820];
    v30 = 3221225472;
    v31 = __32__PXCMMSession_initWithContext___block_invoke;
    v32 = &unk_1E77346D0;
    v23 = contextCopy;
    v33 = v23;
    v34 = v19;
    v24 = v19;
    [(PXCMMViewModel *)v22 performChanges:&v29];
    actionManager = [v23 actionManager];
    actionManager = v5->_actionManager;
    v5->_actionManager = actionManager;

    [v23 ppt_delay];
    v5->_ppt_delay = v27;
    v5->_ppt_presentComposeRecipientView = [v23 ppt_presentComposeRecipientView];
    v5->_ppt_scrollComposeRecipientsView = [v23 ppt_scrollComposeRecipientsView];
  }

  return v5;
}

void __32__PXCMMSession_initWithContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v13 = a2;
  v4 = [v3 originalTitle];
  [v13 setOriginalTitle:v4];

  v5 = [*(a1 + 32) title];
  [v13 setTitle:v5];

  v6 = [*(a1 + 32) subtitle];
  [v13 setSubtitle:v6];

  v7 = [*(a1 + 32) recipients];
  [v13 setRecipients:v7];

  v8 = [*(a1 + 32) originatorRecipient];
  [v13 setOriginatorRecipient:v8];

  [v13 setNumberOfReceivedAssets:{objc_msgSend(*(a1 + 32), "numberOfReceivedAssets")}];
  v9 = [*(a1 + 32) startDate];
  [v13 setStartDate:v9];

  v10 = [*(a1 + 32) endDate];
  [v13 setEndDate:v10];

  [v13 setPhotosCount:{objc_msgSend(*(a1 + 32), "photosCount")}];
  [v13 setVideosCount:{objc_msgSend(*(a1 + 32), "videosCount")}];
  [v13 setTotalCount:{objc_msgSend(*(a1 + 32), "count")}];
  v11 = [*(a1 + 32) posterAsset];
  v12 = [*(a1 + 32) posterMediaProvider];
  [v13 setPosterAsset:v11 posterMediaProvider:v12];

  [v13 setSelectionManager:*(a1 + 40)];
  [v13 setSelectionEnabled:1];
}

- (PXCMMSession)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXCMMSession.m" lineNumber:23 description:{@"%s is not available as initializer", "-[PXCMMSession init]"}];

  abort();
}

+ (PXCMMSession)new
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXCMMSession.m" lineNumber:27 description:{@"%s is not available as initializer", "+[PXCMMSession new]"}];

  abort();
}

- (NSDictionary)diagnosticDictionary
{
  v10[2] = *MEMORY[0x1E69E9840];
  v9[0] = @"Activity Type";
  activityType = [(PXCMMSession *)self activityType];
  if (activityType - 1 > 3)
  {
    v4 = @"PXCMMActivityTypeNone";
  }

  else
  {
    v4 = off_1E7747D48[activityType - 1];
  }

  v10[0] = v4;
  v9[1] = @"Source Type";
  sourceType = [(PXCMMSession *)self sourceType];
  v6 = @"PXCMMSourceTypeMessages";
  if (!sourceType)
  {
    v6 = @"PXCMMSourceTypePhotos";
  }

  v10[1] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];

  return v7;
}

@end