@interface PXCuratedLibraryToggleAspectFitActionPerformer
- (BOOL)canPerformWithActivityItems:(id)a3 forActivity:(id)a4;
- (PXCuratedLibraryToggleAspectFitActionPerformer)initWithViewModel:(id)a3;
- (id)localizedTitleForUseCase:(unint64_t)a3;
- (id)menuActionImageName;
- (void)performActionWithCompletionHandler:(id)a3;
@end

@implementation PXCuratedLibraryToggleAspectFitActionPerformer

- (void)performActionWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(PXCuratedLibraryActionPerformer *)self viewModel];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __85__PXCuratedLibraryToggleAspectFitActionPerformer_performActionWithCompletionHandler___block_invoke;
  v6[3] = &unk_1E7748B68;
  v6[4] = self;
  [v5 performChanges:v6];

  if (v4)
  {
    v4[2](v4, 1, 0);
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

- (id)localizedTitleForUseCase:(unint64_t)a3
{
  v4 = [(PXCuratedLibraryActionPerformer *)self viewModel];
  v5 = [v4 aspectFitContent];

  if (a3 - 1 < 2)
  {
    v6 = @"PXLibraryAllPhotosToggleFullFramesActionTitle";
    v7 = @"PXLibraryAllPhotosToggleSquaresActionTitle";
LABEL_5:
    if (v5)
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

  if (!a3)
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
  v2 = [(PXCuratedLibraryActionPerformer *)self viewModel];
  v3 = [v2 zoomablePhotosViewModel];
  if ([v3 aspectFit])
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

- (BOOL)canPerformWithActivityItems:(id)a3 forActivity:(id)a4
{
  v6 = [a4 activityType];
  v7 = [(PXCuratedLibraryToggleAspectFitActionPerformer *)self activityType];
  v8 = v7;
  if (v6 == v7)
  {

    goto LABEL_5;
  }

  v9 = [v6 isEqualToString:v7];

  if ((v9 & 1) == 0)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryToggleAspectFitActionPerformer.m" lineNumber:35 description:{@"Invalid parameter not satisfying: %@", @"PXStringEqualToString(activity.activityType, self.activityType)"}];
LABEL_5:
  }

  return 1;
}

- (PXCuratedLibraryToggleAspectFitActionPerformer)initWithViewModel:(id)a3
{
  v4.receiver = self;
  v4.super_class = PXCuratedLibraryToggleAspectFitActionPerformer;
  return [(PXCuratedLibraryActionPerformer *)&v4 initWithActionType:@"PXCuratedLibraryActionAllPhotosToggleAspectFit" viewModel:a3];
}

@end