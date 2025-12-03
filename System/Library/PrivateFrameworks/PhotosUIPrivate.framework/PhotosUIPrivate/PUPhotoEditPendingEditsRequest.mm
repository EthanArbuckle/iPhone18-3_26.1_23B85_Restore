@interface PUPhotoEditPendingEditsRequest
+ (BOOL)canPerformEditsWithRootViewController:(id)controller;
+ (id)errorWithCode:(int64_t)code debugDescription:(id)description asset:(id)asset;
- (PUPhotoEditPendingEditsRequest)initWithAdjustments:(id)adjustments rootViewController:(id)controller;
- (void)finishedWithSuccess:(BOOL)success error:(id)error;
- (void)submitWithCompletionHandler:(id)handler;
@end

@implementation PUPhotoEditPendingEditsRequest

- (void)finishedWithSuccess:(BOOL)success error:(id)error
{
  successCopy = success;
  errorCopy = error;
  if ([(PUPhotoEditPendingEditsRequest *)self state]== 1)
  {
    [(PUPhotoEditPendingEditsRequest *)self setState:2];
    completionHandler = [(PUPhotoEditPendingEditsRequest *)self completionHandler];
    (completionHandler)[2](completionHandler, successCopy, errorCopy);
  }
}

- (void)submitWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if (!handlerCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPhotoEditPendingEditsRequest.m" lineNumber:60 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];
  }

  if ([(PUPhotoEditPendingEditsRequest *)self state])
  {
    v5 = [objc_opt_class() errorWithCode:4 debugDescription:@"Calling submit while state is not initial"];
    handlerCopy[2](handlerCopy, 0, v5);
  }

  else
  {
    [(PUPhotoEditPendingEditsRequest *)self setState:1];
    [(PUPhotoEditPendingEditsRequest *)self setCompletionHandler:handlerCopy];
    rootViewController = [(PUPhotoEditPendingEditsRequest *)self rootViewController];
    v5 = [rootViewController px_descendantViewControllerWithClass:objc_opt_class()];

    if (v5)
    {
      [v5 fulfillPendingEditsRequest:self];
    }

    else
    {
      rootViewController2 = [(PUPhotoEditPendingEditsRequest *)self rootViewController];
      v8 = [rootViewController2 px_descendantViewControllerWithClass:objc_opt_class()];

      if (v8)
      {
        actionsController = [v8 actionsController];
        [actionsController performPendingEditsActionWithRequest:self];
      }

      else
      {
        actionsController = [objc_opt_class() errorWithCode:1 debugDescription:@"Not in 1up"];
        [(PUPhotoEditPendingEditsRequest *)self finishedWithSuccess:0 error:actionsController];
      }

      v5 = 0;
    }
  }
}

- (PUPhotoEditPendingEditsRequest)initWithAdjustments:(id)adjustments rootViewController:(id)controller
{
  adjustmentsCopy = adjustments;
  controllerCopy = controller;
  if (![adjustmentsCopy count])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPhotoEditPendingEditsRequest.m" lineNumber:49 description:{@"Invalid parameter not satisfying: %@", @"adjustments.count"}];
  }

  if (![PUPhotoEditPendingEditsRequest canPerformEditsWithRootViewController:controllerCopy])
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PUPhotoEditPendingEditsRequest.m" lineNumber:50 description:{@"Invalid parameter not satisfying: %@", @"[PUPhotoEditPendingEditsRequest canPerformEditsWithRootViewController:rootViewController]"}];
  }

  v15.receiver = self;
  v15.super_class = PUPhotoEditPendingEditsRequest;
  v9 = [(PUPhotoEditPendingEditsRequest *)&v15 init];
  if (v9)
  {
    v10 = [adjustmentsCopy copy];
    adjustments = v9->_adjustments;
    v9->_adjustments = v10;

    objc_storeStrong(&v9->_rootViewController, controller);
  }

  return v9;
}

+ (id)errorWithCode:(int64_t)code debugDescription:(id)description asset:(id)asset
{
  assetCopy = asset;
  v8 = MEMORY[0x1E695DF90];
  descriptionCopy = description;
  v10 = objc_alloc_init(v8);
  [v10 setObject:descriptionCopy forKeyedSubscript:*MEMORY[0x1E696A278]];

  if (assetCopy)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(assetCopy, "mediaType")}];
    [v10 setObject:v11 forKeyedSubscript:@"PUAssetMediaTypeErrorKey"];
  }

  v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PUPhotoEditPendingEditsRequestErrorDomain" code:code userInfo:v10];

  return v12;
}

+ (BOOL)canPerformEditsWithRootViewController:(id)controller
{
  controllerCopy = controller;
  v4 = [controllerCopy px_descendantViewControllerWithClass:objc_opt_class()];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [controllerCopy px_descendantViewControllerWithClass:objc_opt_class()];
  }

  v7 = v6;

  return v7 != 0;
}

@end