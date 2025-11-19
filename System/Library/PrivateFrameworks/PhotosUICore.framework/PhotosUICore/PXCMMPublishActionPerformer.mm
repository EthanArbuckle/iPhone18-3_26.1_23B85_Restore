@interface PXCMMPublishActionPerformer
- (BOOL)isCancellable;
- (id)performPublishActionWithSession:(id)a3 shareOrigin:(int64_t)a4 completionHandler:(id)a5;
- (void)_completePublishActionWithSuccess:(BOOL)a3 error:(id)a4 shareOrigin:(int64_t)a5 completionHandler:(id)a6;
- (void)cancelActionWithCompletionHandler:(id)a3;
@end

@implementation PXCMMPublishActionPerformer

- (void)cancelActionWithCompletionHandler:(id)a3
{
  v8 = a3;
  if (![(PXCMMPublishActionPerformer *)self isCancellable])
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"PXCMMActionManager.m" lineNumber:185 description:{@"Invalid parameter not satisfying: %@", @"self.isCancellable"}];
  }

  v5 = [(PXCMMActionPerformer *)self progress];
  [v5 cancel];

  v6 = v8;
  if (v8)
  {
    (*(v8 + 2))(v8);
    v6 = v8;
  }
}

- (BOOL)isCancellable
{
  v2 = [(PXCMMActionPerformer *)self progress];
  v3 = [v2 isCancellable];

  return v3;
}

- (void)_completePublishActionWithSuccess:(BOOL)a3 error:(id)a4 shareOrigin:(int64_t)a5 completionHandler:(id)a6
{
  v8 = a3;
  v23[1] = *MEMORY[0x1E69E9840];
  v10 = a4;
  v11 = a6;
  v12 = [(PXCMMActionPerformer *)self progress];
  if (([v12 isCancelled] & 1) == 0)
  {
    [v12 setCompletedUnitCount:{objc_msgSend(v12, "totalUnitCount")}];
  }

  if (v8)
  {
    v13 = [(PXCMMPublishActionPerformer *)self publishedURL];

    if (v13)
    {
      v14 = [(PXCMMPublishActionPerformer *)self publishedURL];
      [(PXCMMPublishActionPerformer *)self setPublishedURL:0];
      v11[2](v11, v14, 0);
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      v17 = v16;
      v18 = 0;
      if (a5 <= 4)
      {
        v18 = off_1E773CF08[a5];
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
      v14 = [MEMORY[0x1E696ABC0] px_errorWithDomain:@"PXCMMErrorDomain" code:-1004 debugDescription:@"Publish succeeded with no URL"];
      (v11)[2](v11, 0, v14);
    }
  }

  else
  {
    (v11)[2](v11, 0, v10);
  }
}

- (id)performPublishActionWithSession:(id)a3 shareOrigin:(int64_t)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  objc_initWeak(&location, self);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __93__PXCMMPublishActionPerformer_performPublishActionWithSession_shareOrigin_completionHandler___block_invoke;
  v13[3] = &unk_1E773CEE8;
  objc_copyWeak(v15, &location);
  v15[1] = a4;
  v10 = v9;
  v14 = v10;
  v11 = [(PXCMMActionPerformer *)self performActionWithSession:v8 completionHandler:v13];

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