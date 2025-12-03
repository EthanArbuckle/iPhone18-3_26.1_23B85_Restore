@interface PXCuratedLibraryToggleAspectFitActionPerformer
- (BOOL)canPerformWithActivityItems:(id)items forActivity:(id)activity;
- (PXCuratedLibraryToggleAspectFitActionPerformer)initWithViewModel:(id)model;
- (id)localizedTitleForUseCase:(unint64_t)case;
- (id)menuActionImageName;
- (void)performActionWithCompletionHandler:(id)handler;
@end

@implementation PXCuratedLibraryToggleAspectFitActionPerformer

- (void)performActionWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  viewModel = [(PXCuratedLibraryActionPerformer *)self viewModel];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __85__PXCuratedLibraryToggleAspectFitActionPerformer_performActionWithCompletionHandler___block_invoke;
  v6[3] = &unk_1E7748B68;
  v6[4] = self;
  [viewModel performChanges:v6];

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, 1, 0);
  }
}

void __85__PXCuratedLibraryToggleAspectFitActionPerformer_performActionWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = *(a1 + 32);
  v4 = a2;
  v6 = [v3 viewModel];
  v5 = [v2 numberWithInt:{objc_msgSend(v6, "aspectFitContent") ^ 1}];
  [v4 setUserWantsAspectFitContent:v5];
}

- (id)localizedTitleForUseCase:(unint64_t)case
{
  viewModel = [(PXCuratedLibraryActionPerformer *)self viewModel];
  aspectFitContent = [viewModel aspectFitContent];

  if (case - 1 < 2)
  {
    v6 = @"PXLibraryAllPhotosToggleFullFramesActionTitle";
    v7 = @"PXLibraryAllPhotosToggleSquaresActionTitle";
LABEL_5:
    if (aspectFitContent)
    {
      v8 = v7;
    }

    else
    {
      v8 = v6;
    }

    v9 = PXLocalizedStringFromTable(v8, @"PhotosUICore");
    goto LABEL_10;
  }

  if (!case)
  {
    v6 = @"PXLibraryAllPhotosToggleFullFrames";
    v7 = @"PXLibraryAllPhotosToggleSquares";
    goto LABEL_5;
  }

  v9 = 0;
LABEL_10:

  return v9;
}

- (id)menuActionImageName
{
  viewModel = [(PXCuratedLibraryActionPerformer *)self viewModel];
  zoomablePhotosViewModel = [viewModel zoomablePhotosViewModel];
  if ([zoomablePhotosViewModel aspectFit])
  {
    v4 = @"rectangle.arrowtriangle.2.outward";
  }

  else
  {
    v4 = @"rectangle.arrowtriangle.2.inward";
  }

  v5 = v4;

  return v4;
}

- (BOOL)canPerformWithActivityItems:(id)items forActivity:(id)activity
{
  activityType = [activity activityType];
  activityType2 = [(PXCuratedLibraryToggleAspectFitActionPerformer *)self activityType];
  v8 = activityType2;
  if (activityType == activityType2)
  {

    goto LABEL_5;
  }

  v9 = [activityType isEqualToString:activityType2];

  if ((v9 & 1) == 0)
  {
    activityType = [MEMORY[0x1E696AAA8] currentHandler];
    [activityType handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryToggleAspectFitActionPerformer.m" lineNumber:35 description:{@"Invalid parameter not satisfying: %@", @"PXStringEqualToString(activity.activityType, self.activityType)"}];
LABEL_5:
  }

  return 1;
}

- (PXCuratedLibraryToggleAspectFitActionPerformer)initWithViewModel:(id)model
{
  v4.receiver = self;
  v4.super_class = PXCuratedLibraryToggleAspectFitActionPerformer;
  return [(PXCuratedLibraryActionPerformer *)&v4 initWithActionType:@"PXCuratedLibraryActionAllPhotosToggleAspectFit" viewModel:model];
}

@end