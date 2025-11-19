@interface PXFeedbackTapToRadarRequestHandler
+ (void)fileRadarFromSourceView:(id)a3 viewTitleForRadar:(id)a4 completionHandler:(id)a5;
@end

@implementation PXFeedbackTapToRadarRequestHandler

+ (void)fileRadarFromSourceView:(id)a3 viewTitleForRadar:(id)a4 completionHandler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v9)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:a1 file:@"PXFeedbackTapToRadarRequestHandler.m" lineNumber:27 description:{@"Invalid parameter not satisfying: %@", @"sourceView"}];
  }

  v12 = [v9 window];
  [v12 rootViewController];
  objc_claimAutoreleasedReturnValue();

  [v9 bounds];
  PXRectGetCenter();
}

void __98__PXFeedbackTapToRadarRequestHandler_fileRadarFromSourceView_viewTitleForRadar_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  *(a1 + 32);
  v5 = v4;
  px_dispatch_on_main_queue();
}

@end