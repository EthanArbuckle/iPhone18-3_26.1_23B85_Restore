@interface PXCuratedLibraryActionPerformer
- (BOOL)canPerformWithActivityItems:(id)a3 forActivity:(id)a4;
- (BOOL)keepMenuPresented;
- (PXCuratedLibraryActionPerformer)initWithActionType:(id)a3;
- (PXCuratedLibraryActionPerformer)initWithActionType:(id)a3 viewModel:(id)a4;
- (id)activitySystemImageName;
- (id)activityType;
- (id)localizedTitleForUseCase:(unint64_t)a3;
- (void)performActionWithCompletionHandler:(id)a3;
@end

@implementation PXCuratedLibraryActionPerformer

- (BOOL)keepMenuPresented
{
  v2 = [(PXActionPerformer *)self actionType];
  if ([v2 isEqualToString:@"PXCuratedLibraryActionAllPhotosZoomIn"])
  {
    v3 = 1;
  }

  else
  {
    v3 = [v2 isEqualToString:@"PXCuratedLibraryActionAllPhotosZoomOut"];
  }

  return v3;
}

- (void)performActionWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(PXCuratedLibraryActionPerformer *)self viewModel];
  v6 = [(PXActionPerformer *)self actionType];
  v7 = [v6 isEqualToString:@"PXCuratedLibraryActionEnterSelectMode"];

  if (v7)
  {
    v8 = &__block_literal_global_664;
    goto LABEL_5;
  }

  v9 = [(PXActionPerformer *)self actionType];
  v10 = [v9 isEqualToString:@"PXCuratedLibraryActionCancelSelectMode"];

  if (v10)
  {
    v8 = &__block_literal_global_666;
    goto LABEL_5;
  }

  v11 = [(PXActionPerformer *)self actionType];
  v12 = [v11 isEqualToString:@"PXCuratedLibraryActionAllPhotosZoomIn"];

  if (v12)
  {
    v13 = [v5 zoomablePhotosViewModel];
    v14 = v13;
    v15 = &__block_literal_global_669;
    goto LABEL_12;
  }

  v16 = [(PXActionPerformer *)self actionType];
  v17 = [v16 isEqualToString:@"PXCuratedLibraryActionAllPhotosZoomOut"];

  if (v17)
  {
    v13 = [v5 zoomablePhotosViewModel];
    v14 = v13;
    v15 = &__block_literal_global_671;
LABEL_12:
    [v13 performChanges:v15];

    if (!v4)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v18 = [(PXActionPerformer *)self actionType];
  v19 = [v18 isEqualToString:@"PXCuratedLibraryActionShowSidebar"];

  if (!v19)
  {
    v20.receiver = self;
    v20.super_class = PXCuratedLibraryActionPerformer;
    [(PXActionPerformer *)&v20 performActionWithCompletionHandler:v4];
    goto LABEL_7;
  }

  v8 = &__block_literal_global_673;
LABEL_5:
  [v5 performChanges:v8];
  if (v4)
  {
LABEL_6:
    v4[2](v4, 1, 0);
  }

LABEL_7:
}

void __70__PXCuratedLibraryActionPerformer_performActionWithCompletionHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    [v2 zoomState];
    v4 = *(&v7 + 1) + 1;
  }

  else
  {
    v11 = 0;
    v9 = 0u;
    v10 = 0u;
    v7 = 0u;
    v8 = 0u;
    v4 = 1;
    v5 = 0u;
    v6 = 0u;
  }

  [v3 zoomToColumnIndex:v4 withAnchorAssetReference:0 animated:{1, v5, v6, v7, v8, v9, v10, v11}];
}

void __70__PXCuratedLibraryActionPerformer_performActionWithCompletionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    [v2 zoomState];
    v4 = *(&v7 + 1) - 1;
  }

  else
  {
    v11 = 0;
    v9 = 0u;
    v10 = 0u;
    v7 = 0u;
    v8 = 0u;
    v4 = -1;
    v5 = 0u;
    v6 = 0u;
  }

  [v3 zoomToColumnIndex:v4 withAnchorAssetReference:0 animated:{1, v5, v6, v7, v8, v9, v10, v11}];
}

- (BOOL)canPerformWithActivityItems:(id)a3 forActivity:(id)a4
{
  v6 = [a4 activityType];
  v7 = [(PXCuratedLibraryActionPerformer *)self activityType];
  v8 = v7;
  if (v6 == v7)
  {

    goto LABEL_5;
  }

  v9 = [v6 isEqualToString:v7];

  if ((v9 & 1) == 0)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryActionManager.m" lineNumber:526 description:{@"Invalid parameter not satisfying: %@", @"PXStringEqualToString(activity.activityType, self.activityType)"}];
LABEL_5:
  }

  return 1;
}

- (id)activitySystemImageName
{
  v4 = [(PXActionPerformer *)self actionType];
  v5 = [(PXActionPerformer *)self actionType];
  v6 = [v5 isEqualToString:@"PXCuratedLibraryActionAllPhotosZoomIn"];

  if (v6)
  {
    v7 = @"plus.magnifyingglass";
  }

  else
  {
    v8 = [(PXActionPerformer *)self actionType];
    v9 = [v8 isEqualToString:@"PXCuratedLibraryActionAllPhotosZoomOut"];

    if ((v9 & 1) == 0)
    {
      v11 = [MEMORY[0x1E696AAA8] currentHandler];
      [v11 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryActionManager.m" lineNumber:520 description:{@"Unknown action type %@", v4}];

      abort();
    }

    v7 = @"minus.magnifyingglass";
  }

  return v7;
}

- (id)activityType
{
  v4 = [(PXActionPerformer *)self actionType];
  if ([v4 isEqualToString:@"PXCuratedLibraryActionAllPhotosZoomIn"])
  {
    v5 = PXActivityTypeZoomIn;
  }

  else
  {
    if (([v4 isEqualToString:@"PXCuratedLibraryActionAllPhotosZoomOut"] & 1) == 0)
    {
      v9 = [MEMORY[0x1E696AAA8] currentHandler];
      [v9 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryActionManager.m" lineNumber:508 description:{@"Unknown action type %@", v4}];

      abort();
    }

    v5 = PXActivityTypeZoomOut;
  }

  v6 = *v5;
  v7 = *v5;

  return v6;
}

- (id)localizedTitleForUseCase:(unint64_t)a3
{
  v4 = [(PXActionPerformer *)self actionType];
  v5 = [(PXCuratedLibraryActionPerformer *)self viewModel];
  v7 = _PXCuratedLibraryActionTitle(v4, v6, v5, 0);

  return v7;
}

- (PXCuratedLibraryActionPerformer)initWithActionType:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryActionManager.m" lineNumber:492 description:{@"%s is not available as initializer", "-[PXCuratedLibraryActionPerformer initWithActionType:]"}];

  abort();
}

- (PXCuratedLibraryActionPerformer)initWithActionType:(id)a3 viewModel:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = PXCuratedLibraryActionPerformer;
  v8 = [(PXActionPerformer *)&v11 initWithActionType:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_viewModel, a4);
    v9->_actionZoomLevel = [v7 zoomLevel];
  }

  return v9;
}

@end