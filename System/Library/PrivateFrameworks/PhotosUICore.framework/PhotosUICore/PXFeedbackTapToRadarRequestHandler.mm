@interface PXFeedbackTapToRadarRequestHandler
+ (void)fileRadarFromSourceView:(id)view viewTitleForRadar:(id)radar completionHandler:(id)handler;
@end

@implementation PXFeedbackTapToRadarRequestHandler

+ (void)fileRadarFromSourceView:(id)view viewTitleForRadar:(id)radar completionHandler:(id)handler
{
  viewCopy = view;
  radarCopy = radar;
  handlerCopy = handler;
  if (!viewCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXFeedbackTapToRadarRequestHandler.m" lineNumber:27 description:{@"Invalid parameter not satisfying: %@", @"sourceView"}];
  }

  window = [viewCopy window];
  [window rootViewController];
  objc_claimAutoreleasedReturnValue();

  [viewCopy bounds];
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