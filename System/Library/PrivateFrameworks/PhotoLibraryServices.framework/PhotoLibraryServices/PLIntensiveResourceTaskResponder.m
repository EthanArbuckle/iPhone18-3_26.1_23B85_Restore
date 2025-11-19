@interface PLIntensiveResourceTaskResponder
- (PLIntensiveResourceTaskResponder)initWithTrackingIdentifier:(id)a3 completionHandler:(id)a4;
- (PLIntensiveResourceTaskResponderDelegate)delegate;
- (id)description;
- (void)attachToSourceProgress:(id)a3;
- (void)callCompletionWithResult:(id)a3;
- (void)cancel;
@end

@implementation PLIntensiveResourceTaskResponder

- (PLIntensiveResourceTaskResponderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)callCompletionWithResult:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__117855;
  v14 = __Block_byref_object_dispose__117856;
  v15 = 0;
  PLSafeRunWithUnfairLock();
  if (v11[5])
  {
    v5 = PLImageManagerGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v17 = self;
      v18 = 2112;
      v19 = v4;
      _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEBUG, "[RTM] %@ completing with result: %@", buf, 0x16u);
    }

    (*(v11[5] + 16))(v11[5], v4, v6, v7, v8, v9);
  }

  _Block_object_dispose(&v10, 8);
}

void __61__PLIntensiveResourceTaskResponder_callCompletionWithResult___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 48);
  if (v2)
  {
    v3 = _Block_copy(v2);
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    v6 = *(a1 + 32);
    v7 = *(v6 + 48);
    *(v6 + 48) = 0;
  }
}

- (void)cancel
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = [(PLIntensiveResourceTaskResponder *)self delegate];
  [v3 taskResponderDidCancel:self];

  v4 = PLImageManagerGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v7 = 138412290;
    v8 = self;
    _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_DEBUG, "[RTM] %@ cancelling", &v7, 0xCu);
  }

  v5 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:3072 userInfo:0];
  v6 = [MEMORY[0x1E69BF2D0] failureWithError:v5];
  [(PLIntensiveResourceTaskResponder *)self callCompletionWithResult:v6];
}

- (void)attachToSourceProgress:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [PLProgressFollower alloc];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __59__PLIntensiveResourceTaskResponder_attachToSourceProgress___block_invoke;
    v8[3] = &unk_1E75788E8;
    v8[4] = self;
    v6 = [(PLProgressFollower *)v5 initWithSourceProgress:v4 progressHandler:v8];

    progressFollower = self->_progressFollower;
    self->_progressFollower = v6;
  }
}

uint64_t __59__PLIntensiveResourceTaskResponder_attachToSourceProgress___block_invoke(uint64_t a1, void *a2)
{
  [a2 fractionCompleted];
  v4 = (v3 * [*(*(a1 + 32) + 32) totalUnitCount]);
  v5 = *(*(a1 + 32) + 32);

  return [v5 setCompletedUnitCount:v4];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ %p> %@", v5, self, self->_trackingIdentifier];

  return v6;
}

- (PLIntensiveResourceTaskResponder)initWithTrackingIdentifier:(id)a3 completionHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v8)
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"PLIntensiveResourceTaskResponder.m" lineNumber:26 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];
  }

  v21.receiver = self;
  v21.super_class = PLIntensiveResourceTaskResponder;
  v9 = [(PLIntensiveResourceTaskResponder *)&v21 init];
  if (v9)
  {
    v10 = [v7 copy];
    trackingIdentifier = v9->_trackingIdentifier;
    v9->_trackingIdentifier = v10;

    v9->_lock._os_unfair_lock_opaque = 0;
    v12 = [v8 copy];
    lock_completionHandler = v9->_lock_completionHandler;
    v9->_lock_completionHandler = v12;

    v14 = [MEMORY[0x1E696AE38] discreteProgressWithTotalUnitCount:100];
    progress = v9->_progress;
    v9->_progress = v14;

    objc_initWeak(&location, v9);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __81__PLIntensiveResourceTaskResponder_initWithTrackingIdentifier_completionHandler___block_invoke;
    v18[3] = &unk_1E75788C0;
    objc_copyWeak(&v19, &location);
    [(NSProgress *)v9->_progress setCancellationHandler:v18];
    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }

  return v9;
}

void __81__PLIntensiveResourceTaskResponder_initWithTrackingIdentifier_completionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained cancel];
}

@end