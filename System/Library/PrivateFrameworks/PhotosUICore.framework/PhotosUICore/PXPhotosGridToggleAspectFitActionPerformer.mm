@interface PXPhotosGridToggleAspectFitActionPerformer
+ (BOOL)canPerformActionType:(id)a3 withViewModel:(id)a4;
- (id)barButtonItemWithTarget:(id)a3 action:(SEL)a4;
- (id)localizedTitleForUseCase:(unint64_t)a3;
- (id)menuActionImageName;
- (id)menuElement;
- (void)performUserInteractionTask;
@end

@implementation PXPhotosGridToggleAspectFitActionPerformer

- (void)performUserInteractionTask
{
  v3 = [(PXPhotosGridActionPerformer *)self viewModel];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __72__PXPhotosGridToggleAspectFitActionPerformer_performUserInteractionTask__block_invoke;
  v5[3] = &unk_1E773DCC0;
  v6 = v3;
  v4 = v3;
  [v4 performChanges:v5];
  [(PXActionPerformer *)self completeUserInteractionTaskWithSuccess:1 error:0];
}

void __72__PXPhotosGridToggleAspectFitActionPerformer_performUserInteractionTask__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v2 numberWithInt:{objc_msgSend(v3, "aspectFitContent") ^ 1}];
  [v4 setUserWantsAspectFitContent:v5];
}

- (id)barButtonItemWithTarget:(id)a3 action:(SEL)a4
{
  v6 = a3;
  if (MEMORY[0x1A590D320]())
  {
    v10.receiver = self;
    v10.super_class = PXPhotosGridToggleAspectFitActionPerformer;
    v7 = [(PXActionPerformer *)&v10 barButtonItemWithTarget:v6 action:a4];
  }

  else
  {
    v8 = [(PXPhotosGridToggleAspectFitActionPerformer *)self localizedTitleForUseCase:1];
    v7 = [objc_alloc(MEMORY[0x1E69DC708]) initWithTitle:v8 style:0 target:v6 action:a4];
  }

  return v7;
}

- (id)localizedTitleForUseCase:(unint64_t)a3
{
  v4 = [(PXPhotosGridActionPerformer *)self viewModel];
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
  v2 = [(PXPhotosGridActionPerformer *)self viewModel];
  if ([v2 aspectFitContent])
  {
    v3 = @"rectangle.arrowtriangle.2.outward";
  }

  else
  {
    v3 = @"rectangle.arrowtriangle.2.inward";
  }

  v4 = v3;

  return v3;
}

- (id)menuElement
{
  v10.receiver = self;
  v10.super_class = PXPhotosGridToggleAspectFitActionPerformer;
  v4 = [(PXActionPerformer *)&v10 menuElement];
  if (v4)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = [v4 px_descriptionForAssertionMessage];
      [v6 handleFailureInMethod:a2 object:self file:@"PXPhotosGridToggleAspectFitActionPerformer.m" lineNumber:33 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"[super menuElement]", v8, v9}];
    }
  }

  [v4 setAttributes:{objc_msgSend(v4, "attributes") | 8}];

  return v4;
}

+ (BOOL)canPerformActionType:(id)a3 withViewModel:(id)a4
{
  v4 = a4;
  if ([v4 supportsAspectRatioToggle])
  {
    v5 = [v4 currentDataSource];
    v6 = [v5 containsAnyItems];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end