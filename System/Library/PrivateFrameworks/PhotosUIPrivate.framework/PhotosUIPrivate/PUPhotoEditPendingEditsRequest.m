@interface PUPhotoEditPendingEditsRequest
+ (BOOL)canPerformEditsWithRootViewController:(id)a3;
+ (id)errorWithCode:(int64_t)a3 debugDescription:(id)a4 asset:(id)a5;
- (PUPhotoEditPendingEditsRequest)initWithAdjustments:(id)a3 rootViewController:(id)a4;
- (void)finishedWithSuccess:(BOOL)a3 error:(id)a4;
- (void)submitWithCompletionHandler:(id)a3;
@end

@implementation PUPhotoEditPendingEditsRequest

- (void)finishedWithSuccess:(BOOL)a3 error:(id)a4
{
  v4 = a3;
  v7 = a4;
  if ([(PUPhotoEditPendingEditsRequest *)self state]== 1)
  {
    [(PUPhotoEditPendingEditsRequest *)self setState:2];
    v6 = [(PUPhotoEditPendingEditsRequest *)self completionHandler];
    (v6)[2](v6, v4, v7);
  }
}

- (void)submitWithCompletionHandler:(id)a3
{
  v11 = a3;
  if (!v11)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PUPhotoEditPendingEditsRequest.m" lineNumber:60 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];
  }

  if ([(PUPhotoEditPendingEditsRequest *)self state])
  {
    v5 = [objc_opt_class() errorWithCode:4 debugDescription:@"Calling submit while state is not initial"];
    v11[2](v11, 0, v5);
  }

  else
  {
    [(PUPhotoEditPendingEditsRequest *)self setState:1];
    [(PUPhotoEditPendingEditsRequest *)self setCompletionHandler:v11];
    v6 = [(PUPhotoEditPendingEditsRequest *)self rootViewController];
    v5 = [v6 px_descendantViewControllerWithClass:objc_opt_class()];

    if (v5)
    {
      [v5 fulfillPendingEditsRequest:self];
    }

    else
    {
      v7 = [(PUPhotoEditPendingEditsRequest *)self rootViewController];
      v8 = [v7 px_descendantViewControllerWithClass:objc_opt_class()];

      if (v8)
      {
        v9 = [v8 actionsController];
        [v9 performPendingEditsActionWithRequest:self];
      }

      else
      {
        v9 = [objc_opt_class() errorWithCode:1 debugDescription:@"Not in 1up"];
        [(PUPhotoEditPendingEditsRequest *)self finishedWithSuccess:0 error:v9];
      }

      v5 = 0;
    }
  }
}

- (PUPhotoEditPendingEditsRequest)initWithAdjustments:(id)a3 rootViewController:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (![v7 count])
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"PUPhotoEditPendingEditsRequest.m" lineNumber:49 description:{@"Invalid parameter not satisfying: %@", @"adjustments.count"}];
  }

  if (![PUPhotoEditPendingEditsRequest canPerformEditsWithRootViewController:v8])
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"PUPhotoEditPendingEditsRequest.m" lineNumber:50 description:{@"Invalid parameter not satisfying: %@", @"[PUPhotoEditPendingEditsRequest canPerformEditsWithRootViewController:rootViewController]"}];
  }

  v15.receiver = self;
  v15.super_class = PUPhotoEditPendingEditsRequest;
  v9 = [(PUPhotoEditPendingEditsRequest *)&v15 init];
  if (v9)
  {
    v10 = [v7 copy];
    adjustments = v9->_adjustments;
    v9->_adjustments = v10;

    objc_storeStrong(&v9->_rootViewController, a4);
  }

  return v9;
}

+ (id)errorWithCode:(int64_t)a3 debugDescription:(id)a4 asset:(id)a5
{
  v7 = a5;
  v8 = MEMORY[0x1E695DF90];
  v9 = a4;
  v10 = objc_alloc_init(v8);
  [v10 setObject:v9 forKeyedSubscript:*MEMORY[0x1E696A278]];

  if (v7)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v7, "mediaType")}];
    [v10 setObject:v11 forKeyedSubscript:@"PUAssetMediaTypeErrorKey"];
  }

  v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PUPhotoEditPendingEditsRequestErrorDomain" code:a3 userInfo:v10];

  return v12;
}

+ (BOOL)canPerformEditsWithRootViewController:(id)a3
{
  v3 = a3;
  v4 = [v3 px_descendantViewControllerWithClass:objc_opt_class()];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [v3 px_descendantViewControllerWithClass:objc_opt_class()];
  }

  v7 = v6;

  return v7 != 0;
}

@end