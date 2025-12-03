@interface PXPhotosGridToggleAspectFitActionPerformer
+ (BOOL)canPerformActionType:(id)type withViewModel:(id)model;
- (id)barButtonItemWithTarget:(id)target action:(SEL)action;
- (id)localizedTitleForUseCase:(unint64_t)case;
- (id)menuActionImageName;
- (id)menuElement;
- (void)performUserInteractionTask;
@end

@implementation PXPhotosGridToggleAspectFitActionPerformer

- (void)performUserInteractionTask
{
  viewModel = [(PXPhotosGridActionPerformer *)self viewModel];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __72__PXPhotosGridToggleAspectFitActionPerformer_performUserInteractionTask__block_invoke;
  v5[3] = &unk_1E773DCC0;
  v6 = viewModel;
  v4 = viewModel;
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

- (id)barButtonItemWithTarget:(id)target action:(SEL)action
{
  targetCopy = target;
  if (MEMORY[0x1A590D320]())
  {
    v10.receiver = self;
    v10.super_class = PXPhotosGridToggleAspectFitActionPerformer;
    v7 = [(PXActionPerformer *)&v10 barButtonItemWithTarget:targetCopy action:action];
  }

  else
  {
    v8 = [(PXPhotosGridToggleAspectFitActionPerformer *)self localizedTitleForUseCase:1];
    v7 = [objc_alloc(MEMORY[0x1E69DC708]) initWithTitle:v8 style:0 target:targetCopy action:action];
  }

  return v7;
}

- (id)localizedTitleForUseCase:(unint64_t)case
{
  viewModel = [(PXPhotosGridActionPerformer *)self viewModel];
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
  viewModel = [(PXPhotosGridActionPerformer *)self viewModel];
  if ([viewModel aspectFitContent])
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
  menuElement = [(PXActionPerformer *)&v10 menuElement];
  if (menuElement)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      px_descriptionForAssertionMessage = [menuElement px_descriptionForAssertionMessage];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosGridToggleAspectFitActionPerformer.m" lineNumber:33 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"[super menuElement]", v8, px_descriptionForAssertionMessage}];
    }
  }

  [menuElement setAttributes:{objc_msgSend(menuElement, "attributes") | 8}];

  return menuElement;
}

+ (BOOL)canPerformActionType:(id)type withViewModel:(id)model
{
  modelCopy = model;
  if ([modelCopy supportsAspectRatioToggle])
  {
    currentDataSource = [modelCopy currentDataSource];
    containsAnyItems = [currentDataSource containsAnyItems];
  }

  else
  {
    containsAnyItems = 0;
  }

  return containsAnyItems;
}

@end