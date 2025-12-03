@interface PLBackgroundJobDeferredRenderDerivativesHighPriorityWorker
- (id)_predicateToFetchDeferredAssets;
- (id)taskIdentifier;
@end

@implementation PLBackgroundJobDeferredRenderDerivativesHighPriorityWorker

- (id)_predicateToFetchDeferredAssets
{
  v2 = MEMORY[0x1E696AE18];
  deferredProcessingStatesHandled = [(PLBackgroundJobDeferredRenderDerivativesHighPriorityWorker *)self deferredProcessingStatesHandled];
  v4 = [v2 predicateWithFormat:@"%K in %@", @"deferredProcessingNeeded", deferredProcessingStatesHandled];

  return v4;
}

- (id)taskIdentifier
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = taskIdentifier_requestNumber_48++;
  v6 = [v2 stringWithFormat:@"%@-%lu", v4, v5];

  return v6;
}

@end