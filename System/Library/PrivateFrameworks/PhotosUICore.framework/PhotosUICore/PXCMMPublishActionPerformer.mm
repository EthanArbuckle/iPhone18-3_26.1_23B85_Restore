@interface PXCMMPublishActionPerformer
- (BOOL)isCancellable;
- (id)performPublishActionWithSession:(id)session shareOrigin:(int64_t)origin completionHandler:(id)handler;
- (void)_completePublishActionWithSuccess:(BOOL)success error:(id)error shareOrigin:(int64_t)origin completionHandler:(id)handler;
- (void)cancelActionWithCompletionHandler:(id)handler;
@end

@implementation PXCMMPublishActionPerformer

- (void)cancelActionWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if (![(PXCMMPublishActionPerformer *)self isCancellable])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCMMActionManager.m" lineNumber:185 description:{@"Invalid parameter not satisfying: %@", @"self.isCancellable"}];
  }

  progress = [(PXCMMActionPerformer *)self progress];
  [progress cancel];

  v6 = handlerCopy;
  if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy);
    v6 = handlerCopy;
  }
}

- (BOOL)isCancellable
{
  progress = [(PXCMMActionPerformer *)self progress];
  isCancellable = [progress isCancellable];

  return isCancellable;
}

- (void)_completePublishActionWithSuccess:(BOOL)success error:(id)error shareOrigin:(int64_t)origin completionHandler:(id)handler
{
  successCopy = success;
  v23[1] = *MEMORY[0x1E69E9840];
  errorCopy = error;
  handlerCopy = handler;
  progress = [(PXCMMActionPerformer *)self progress];
  if (([progress isCancelled] & 1) == 0)
  {
    [progress setCompletedUnitCount:{objc_msgSend(progress, "totalUnitCount")}];
  }

  if (successCopy)
  {
    publishedURL = [(PXCMMPublishActionPerformer *)self publishedURL];

    if (publishedURL)
    {
      publishedURL2 = [(PXCMMPublishActionPerformer *)self publishedURL];
      [(PXCMMPublishActionPerformer *)self setPublishedURL:0];
      handlerCopy[2](handlerCopy, publishedURL2, 0);
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      v17 = v16;
      v18 = 0;
      if (origin <= 4)
      {
        v18 = off_1E773CF08[origin];
      }

      v19 = MEMORY[0x1E6991F28];
      v22 = *MEMORY[0x1E6991E20];
      v23[0] = v16;
      v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
      [v19 sendEvent:v18 withPayload:v20];

      if ([MEMORY[0x1E69636A8] px_allowsDonationsForCurrentProcess])
      {
        v21 = [objc_alloc(MEMORY[0x1E69636A8]) initWithActivityType:@"com.apple.mobileslideshow.cmm.publish"];
        [v21 becomeCurrent];
      }
    }

    else
    {
      publishedURL2 = [MEMORY[0x1E696ABC0] px_errorWithDomain:@"PXCMMErrorDomain" code:-1004 debugDescription:@"Publish succeeded with no URL"];
      (handlerCopy)[2](handlerCopy, 0, publishedURL2);
    }
  }

  else
  {
    (handlerCopy)[2](handlerCopy, 0, errorCopy);
  }
}

- (id)performPublishActionWithSession:(id)session shareOrigin:(int64_t)origin completionHandler:(id)handler
{
  sessionCopy = session;
  handlerCopy = handler;
  objc_initWeak(&location, self);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __93__PXCMMPublishActionPerformer_performPublishActionWithSession_shareOrigin_completionHandler___block_invoke;
  v13[3] = &unk_1E773CEE8;
  objc_copyWeak(v15, &location);
  v15[1] = origin;
  v10 = handlerCopy;
  v14 = v10;
  v11 = [(PXCMMActionPerformer *)self performActionWithSession:sessionCopy completionHandler:v13];

  objc_destroyWeak(v15);
  objc_destroyWeak(&location);

  return v11;
}

void __93__PXCMMPublishActionPerformer_performPublishActionWithSession_shareOrigin_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _completePublishActionWithSuccess:a2 error:v5 shareOrigin:*(a1 + 48) completionHandler:*(a1 + 32)];
}

@end