@interface PXCuratedLibraryActionPerformer
- (BOOL)canPerformWithActivityItems:(id)items forActivity:(id)activity;
- (BOOL)keepMenuPresented;
- (PXCuratedLibraryActionPerformer)initWithActionType:(id)type;
- (PXCuratedLibraryActionPerformer)initWithActionType:(id)type viewModel:(id)model;
- (id)activitySystemImageName;
- (id)activityType;
- (id)localizedTitleForUseCase:(unint64_t)case;
- (void)performActionWithCompletionHandler:(id)handler;
@end

@implementation PXCuratedLibraryActionPerformer

- (BOOL)keepMenuPresented
{
  actionType = [(PXActionPerformer *)self actionType];
  if ([actionType isEqualToString:@"PXCuratedLibraryActionAllPhotosZoomIn"])
  {
    v3 = 1;
  }

  else
  {
    v3 = [actionType isEqualToString:@"PXCuratedLibraryActionAllPhotosZoomOut"];
  }

  return v3;
}

- (void)performActionWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  viewModel = [(PXCuratedLibraryActionPerformer *)self viewModel];
  actionType = [(PXActionPerformer *)self actionType];
  v7 = [actionType isEqualToString:@"PXCuratedLibraryActionEnterSelectMode"];

  if (v7)
  {
    v8 = &__block_literal_global_664;
    goto LABEL_5;
  }

  actionType2 = [(PXActionPerformer *)self actionType];
  v10 = [actionType2 isEqualToString:@"PXCuratedLibraryActionCancelSelectMode"];

  if (v10)
  {
    v8 = &__block_literal_global_666;
    goto LABEL_5;
  }

  actionType3 = [(PXActionPerformer *)self actionType];
  v12 = [actionType3 isEqualToString:@"PXCuratedLibraryActionAllPhotosZoomIn"];

  if (v12)
  {
    zoomablePhotosViewModel = [viewModel zoomablePhotosViewModel];
    v14 = zoomablePhotosViewModel;
    v15 = &__block_literal_global_669;
    goto LABEL_12;
  }

  actionType4 = [(PXActionPerformer *)self actionType];
  v17 = [actionType4 isEqualToString:@"PXCuratedLibraryActionAllPhotosZoomOut"];

  if (v17)
  {
    zoomablePhotosViewModel = [viewModel zoomablePhotosViewModel];
    v14 = zoomablePhotosViewModel;
    v15 = &__block_literal_global_671;
LABEL_12:
    [zoomablePhotosViewModel performChanges:v15];

    if (!handlerCopy)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  actionType5 = [(PXActionPerformer *)self actionType];
  v19 = [actionType5 isEqualToString:@"PXCuratedLibraryActionShowSidebar"];

  if (!v19)
  {
    v20.receiver = self;
    v20.super_class = PXCuratedLibraryActionPerformer;
    [(PXActionPerformer *)&v20 performActionWithCompletionHandler:handlerCopy];
    goto LABEL_7;
  }

  v8 = &__block_literal_global_673;
LABEL_5:
  [viewModel performChanges:v8];
  if (handlerCopy)
  {
LABEL_6:
    handlerCopy[2](handlerCopy, 1, 0);
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

- (BOOL)canPerformWithActivityItems:(id)items forActivity:(id)activity
{
  activityType = [activity activityType];
  activityType2 = [(PXCuratedLibraryActionPerformer *)self activityType];
  v8 = activityType2;
  if (activityType == activityType2)
  {

    goto LABEL_5;
  }

  v9 = [activityType isEqualToString:activityType2];

  if ((v9 & 1) == 0)
  {
    activityType = [MEMORY[0x1E696AAA8] currentHandler];
    [activityType handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryActionManager.m" lineNumber:526 description:{@"Invalid parameter not satisfying: %@", @"PXStringEqualToString(activity.activityType, self.activityType)"}];
LABEL_5:
  }

  return 1;
}

- (id)activitySystemImageName
{
  actionType = [(PXActionPerformer *)self actionType];
  actionType2 = [(PXActionPerformer *)self actionType];
  v6 = [actionType2 isEqualToString:@"PXCuratedLibraryActionAllPhotosZoomIn"];

  if (v6)
  {
    v7 = @"plus.magnifyingglass";
  }

  else
  {
    actionType3 = [(PXActionPerformer *)self actionType];
    v9 = [actionType3 isEqualToString:@"PXCuratedLibraryActionAllPhotosZoomOut"];

    if ((v9 & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryActionManager.m" lineNumber:520 description:{@"Unknown action type %@", actionType}];

      abort();
    }

    v7 = @"minus.magnifyingglass";
  }

  return v7;
}

- (id)activityType
{
  actionType = [(PXActionPerformer *)self actionType];
  if ([actionType isEqualToString:@"PXCuratedLibraryActionAllPhotosZoomIn"])
  {
    v5 = PXActivityTypeZoomIn;
  }

  else
  {
    if (([actionType isEqualToString:@"PXCuratedLibraryActionAllPhotosZoomOut"] & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryActionManager.m" lineNumber:508 description:{@"Unknown action type %@", actionType}];

      abort();
    }

    v5 = PXActivityTypeZoomOut;
  }

  v6 = *v5;
  v7 = *v5;

  return v6;
}

- (id)localizedTitleForUseCase:(unint64_t)case
{
  actionType = [(PXActionPerformer *)self actionType];
  viewModel = [(PXCuratedLibraryActionPerformer *)self viewModel];
  v7 = _PXCuratedLibraryActionTitle(actionType, v6, viewModel, 0);

  return v7;
}

- (PXCuratedLibraryActionPerformer)initWithActionType:(id)type
{
  typeCopy = type;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryActionManager.m" lineNumber:492 description:{@"%s is not available as initializer", "-[PXCuratedLibraryActionPerformer initWithActionType:]"}];

  abort();
}

- (PXCuratedLibraryActionPerformer)initWithActionType:(id)type viewModel:(id)model
{
  modelCopy = model;
  v11.receiver = self;
  v11.super_class = PXCuratedLibraryActionPerformer;
  v8 = [(PXActionPerformer *)&v11 initWithActionType:type];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_viewModel, model);
    v9->_actionZoomLevel = [modelCopy zoomLevel];
  }

  return v9;
}

@end