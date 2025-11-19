@interface PXCMMSession
+ (PXCMMSession)new;
- (NSDictionary)diagnosticDictionary;
- (PXCMMSession)init;
- (PXCMMSession)initWithContext:(id)a3;
- (id)momentShareStatusPresentationWithPresentationStyle:(int64_t)a3;
@end

@implementation PXCMMSession

- (id)momentShareStatusPresentationWithPresentationStyle:(int64_t)a3
{
  v5 = [(PXCMMSession *)self momentShareStatus];
  v6 = [v5 momentShare];

  if (+[PXMomentShareStatusMock shouldUseMockStatus])
  {
    v7 = [[PXMomentShareStatusMock alloc] initWithMomentShare:v6];
  }

  else
  {
    v7 = [(PXCMMSession *)self momentShareStatus];
  }

  v8 = v7;
  if (v7)
  {
    v9 = [[PXMomentShareStatusPresentation alloc] initWithMomentShareStatus:v7 presentationStyle:a3];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (PXCMMSession)initWithContext:(id)a3
{
  v4 = a3;
  v35.receiver = self;
  v35.super_class = PXCMMSession;
  v5 = [(PXCMMSession *)&v35 init];
  if (v5)
  {
    v6 = [v4 dataSourceManager];
    dataSourceManager = v5->_dataSourceManager;
    v5->_dataSourceManager = v6;

    v8 = [v4 mediaProvider];
    mediaProvider = v5->_mediaProvider;
    v5->_mediaProvider = v8;

    v5->_activityType = [v4 activityType];
    v5->_sourceType = [v4 sourceType];
    v5->_hideActionMenu = [v4 hideActionMenu];
    v10 = [v4 assetPreparationOptions];
    preparationOptionsPerAsset = v5->_preparationOptionsPerAsset;
    v5->_preparationOptionsPerAsset = v10;

    v12 = [v4 peopleSuggestionsPreviewDataSourceManager];
    peopleSuggestionsPreviewDataSourceManager = v5->_peopleSuggestionsPreviewDataSourceManager;
    v5->_peopleSuggestionsPreviewDataSourceManager = v12;

    v14 = [v4 peopleSuggestionsDataSourceManager];
    peopleSuggestionsDataSourceManager = v5->_peopleSuggestionsDataSourceManager;
    v5->_peopleSuggestionsDataSourceManager = v14;

    v16 = [v4 customAssetSelectionHandler];
    v17 = [v16 copy];
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
    v23 = v4;
    v33 = v23;
    v34 = v19;
    v24 = v19;
    [(PXCMMViewModel *)v22 performChanges:&v29];
    v25 = [v23 actionManager];
    actionManager = v5->_actionManager;
    v5->_actionManager = v25;

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
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXCMMSession.m" lineNumber:23 description:{@"%s is not available as initializer", "-[PXCMMSession init]"}];

  abort();
}

+ (PXCMMSession)new
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"PXCMMSession.m" lineNumber:27 description:{@"%s is not available as initializer", "+[PXCMMSession new]"}];

  abort();
}

- (NSDictionary)diagnosticDictionary
{
  v10[2] = *MEMORY[0x1E69E9840];
  v9[0] = @"Activity Type";
  v3 = [(PXCMMSession *)self activityType];
  if (v3 - 1 > 3)
  {
    v4 = @"PXCMMActivityTypeNone";
  }

  else
  {
    v4 = off_1E7747D48[v3 - 1];
  }

  v10[0] = v4;
  v9[1] = @"Source Type";
  v5 = [(PXCMMSession *)self sourceType];
  v6 = @"PXCMMSourceTypeMessages";
  if (!v5)
  {
    v6 = @"PXCMMSourceTypePhotos";
  }

  v10[1] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];

  return v7;
}

@end