@interface PXPerformanceBaselineNavigationParticipant
- (PXPerformanceBaselineNavigationParticipant)init;
- (PXPerformanceBaselineNavigationParticipant)initWithPresentingViewController:(id)a3;
- (void)navigateToDestination:(id)a3 options:(unint64_t)a4 completionHandler:(id)a5;
@end

@implementation PXPerformanceBaselineNavigationParticipant

- (void)navigateToDestination:(id)a3 options:(unint64_t)a4 completionHandler:(id)a5
{
  v27[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = [(PXPerformanceBaselineNavigationParticipant *)self presentingViewController];
  v11 = [v10 presentedViewController];

  if (v11)
  {
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __94__PXPerformanceBaselineNavigationParticipant_navigateToDestination_options_completionHandler___block_invoke;
    v22[3] = &unk_1E773DAC8;
    v22[4] = self;
    v23 = v8;
    v25 = a4;
    v24 = v9;
    [v10 dismissViewControllerAnimated:0 completion:v22];
  }

  else
  {
    v12 = [v8 additionalAttributes];
    if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = MEMORY[0x1E695E0F0];
    if (v13)
    {
      v14 = v13;
    }

    v15 = v14;

    v16 = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
    v26 = @"queryItems";
    v27[0] = v15;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];
    v18 = PXSoftLinkedProtoMakeViewControllerWithFactoryClassName(@"PXProtoPerformanceBaselineViewControllerFactory", v16, v17);

    if (v18)
    {
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __94__PXPerformanceBaselineNavigationParticipant_navigateToDestination_options_completionHandler___block_invoke_2;
      v20[3] = &unk_1E774C250;
      v21 = v9;
      [v10 presentViewController:v18 animated:0 completion:v20];
      v19 = v21;
    }

    else
    {
      v19 = [MEMORY[0x1E696ABC0] px_genericErrorWithDebugDescription:{@"failed to load performance baseline view controller for %@", v15}];
      (*(v9 + 2))(v9, 5, v19);
    }
  }
}

- (PXPerformanceBaselineNavigationParticipant)initWithPresentingViewController:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PXPerformanceBaselineNavigationParticipant;
  v6 = [(PXPerformanceBaselineNavigationParticipant *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_presentingViewController, a3);
  }

  return v7;
}

- (PXPerformanceBaselineNavigationParticipant)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXPerformanceBaselineNavigationParticipant.m" lineNumber:25 description:{@"%s is not available as initializer", "-[PXPerformanceBaselineNavigationParticipant init]"}];

  abort();
}

@end