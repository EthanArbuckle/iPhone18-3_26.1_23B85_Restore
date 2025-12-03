@interface PXPhotosGridZoomOutActionPerformer
+ (BOOL)canPerformActionType:(id)type withViewModel:(id)model;
- (id)menuElement;
- (void)performUserInteractionTask;
@end

@implementation PXPhotosGridZoomOutActionPerformer

- (void)performUserInteractionTask
{
  viewModel = [(PXPhotosGridActionPerformer *)self viewModel];
  [viewModel zoomStep];
  v5 = (v4 + 1.0);
  if (v5 < 0 || [viewModel numberOfZoomSteps] <= v5)
  {
    v7 = PLGridZeroGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_DEFAULT, "Action tried to zoom out, but that's no longer possible.", v8, 2u);
    }

    v6 = 0;
  }

  else
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __64__PXPhotosGridZoomOutActionPerformer_performUserInteractionTask__block_invoke;
    v9[3] = &__block_descriptor_40_e53_v16__0__PXPhotosViewModel_PXMutablePhotosViewModel__8l;
    v9[4] = v5;
    [viewModel performChanges:v9];
    v6 = 1;
  }

  [(PXActionPerformer *)self completeUserInteractionTaskWithSuccess:v6 error:0];
}

- (id)menuElement
{
  v10.receiver = self;
  v10.super_class = PXPhotosGridZoomOutActionPerformer;
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
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosGridZoomOutActionPerformer.m" lineNumber:34 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"[super menuElement]", v8, px_descriptionForAssertionMessage}];
    }
  }

  [menuElement setAttributes:{objc_msgSend(menuElement, "attributes") | 8}];

  return menuElement;
}

+ (BOOL)canPerformActionType:(id)type withViewModel:(id)model
{
  modelCopy = model;
  if ([modelCopy supportsZooming] && (objc_msgSend(modelCopy, "currentDataSource"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "containsAnyItems"), v5, v6))
  {
    [modelCopy zoomStep];
    v8 = v7 + 1.0 < [modelCopy numberOfZoomSteps];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end