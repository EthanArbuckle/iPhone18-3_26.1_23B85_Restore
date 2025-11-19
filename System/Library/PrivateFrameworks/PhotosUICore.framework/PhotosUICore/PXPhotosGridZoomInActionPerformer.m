@interface PXPhotosGridZoomInActionPerformer
+ (BOOL)canPerformActionType:(id)a3 withViewModel:(id)a4;
- (id)menuElement;
- (void)performUserInteractionTask;
@end

@implementation PXPhotosGridZoomInActionPerformer

- (void)performUserInteractionTask
{
  v3 = [(PXPhotosGridActionPerformer *)self viewModel];
  [v3 zoomStep];
  v5 = (v4 + -1.0);
  if (v5 < 0 || [v3 numberOfZoomSteps] <= v5)
  {
    v7 = PLGridZeroGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_DEFAULT, "Action tried to zoom in, but that's no longer possible.", v8, 2u);
    }

    v6 = 0;
  }

  else
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __63__PXPhotosGridZoomInActionPerformer_performUserInteractionTask__block_invoke;
    v9[3] = &__block_descriptor_40_e53_v16__0__PXPhotosViewModel_PXMutablePhotosViewModel__8l;
    v9[4] = v5;
    [v3 performChanges:v9];
    v6 = 1;
  }

  [(PXActionPerformer *)self completeUserInteractionTaskWithSuccess:v6 error:0];
}

- (id)menuElement
{
  v10.receiver = self;
  v10.super_class = PXPhotosGridZoomInActionPerformer;
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
      [v6 handleFailureInMethod:a2 object:self file:@"PXPhotosGridZoomInActionPerformer.m" lineNumber:34 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"[super menuElement]", v8, v9}];
    }
  }

  [v4 setAttributes:{objc_msgSend(v4, "attributes") | 8}];

  return v4;
}

+ (BOOL)canPerformActionType:(id)a3 withViewModel:(id)a4
{
  v4 = a4;
  if ([v4 supportsZooming] && (objc_msgSend(v4, "currentDataSource"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "containsAnyItems"), v5, v6))
  {
    [v4 zoomStep];
    v8 = v7 >= 1.0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end