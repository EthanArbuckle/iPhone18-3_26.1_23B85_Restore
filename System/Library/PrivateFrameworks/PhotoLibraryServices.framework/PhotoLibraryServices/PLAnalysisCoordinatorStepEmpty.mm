@interface PLAnalysisCoordinatorStepEmpty
- (void)cancel;
- (void)performStepForAssets:(id)assets withProgress:(id)progress withCompletionHandler:(id)handler;
@end

@implementation PLAnalysisCoordinatorStepEmpty

- (void)cancel
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = PLAnalysisCoordinatorGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    parentTaskID = [(PLAnalysisCoordinatorStep *)self parentTaskID];
    v5 = 138543362;
    v6 = parentTaskID;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] Unit Test Step cancelled", &v5, 0xCu);
  }
}

- (void)performStepForAssets:(id)assets withProgress:(id)progress withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  progressCopy = progress;
  [progressCopy setCompletedUnitCount:{objc_msgSend(progressCopy, "completedUnitCount") + objc_msgSend(assets, "count")}];

  v9 = MEMORY[0x1E69BF2D0];
  null = [MEMORY[0x1E695DFB0] null];
  v11 = [v9 successWithResult:null];

  handlerCopy[2](handlerCopy, v11);
}

@end