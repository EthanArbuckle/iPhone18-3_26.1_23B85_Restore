@interface PLAnalysisCoordinatorStepEmpty
- (void)cancel;
- (void)performStepForAssets:(id)a3 withProgress:(id)a4 withCompletionHandler:(id)a5;
@end

@implementation PLAnalysisCoordinatorStepEmpty

- (void)cancel
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = PLAnalysisCoordinatorGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(PLAnalysisCoordinatorStep *)self parentTaskID];
    v5 = 138543362;
    v6 = v4;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] Unit Test Step cancelled", &v5, 0xCu);
  }
}

- (void)performStepForAssets:(id)a3 withProgress:(id)a4 withCompletionHandler:(id)a5
{
  v7 = a5;
  v8 = a4;
  [v8 setCompletedUnitCount:{objc_msgSend(v8, "completedUnitCount") + objc_msgSend(a3, "count")}];

  v9 = MEMORY[0x1E69BF2D0];
  v10 = [MEMORY[0x1E695DFB0] null];
  v11 = [v9 successWithResult:v10];

  v7[2](v7, v11);
}

@end