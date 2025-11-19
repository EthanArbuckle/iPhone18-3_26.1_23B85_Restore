@interface VUIASDDialogObserver
- (UIViewController)presenterViewController;
- (void)handleAuthenticateRequest:(id)a3 resultHandler:(id)a4;
- (void)handleDialogRequest:(id)a3 resultHandler:(id)a4;
- (void)startListening;
- (void)stopListening;
@end

@implementation VUIASDDialogObserver

- (void)startListening
{
  v3 = [MEMORY[0x1E698B508] defaultCenter];
  [v3 setDialogObserver:self];
}

- (void)stopListening
{
  v2 = [MEMORY[0x1E698B508] defaultCenter];
  [v2 setDialogObserver:0];
}

- (void)handleAuthenticateRequest:(id)a3 resultHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __64__VUIASDDialogObserver_handleAuthenticateRequest_resultHandler___block_invoke;
  v14 = &unk_1E872DE00;
  objc_copyWeak(&v17, &location);
  v8 = v6;
  v15 = v8;
  v9 = v7;
  v16 = v9;
  v10 = &v11;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v13(v10);
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], v10);
  }

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

void __64__VUIASDDialogObserver_handleAuthenticateRequest_resultHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = +[VUIApplicationRouter topMostVisibleViewController];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [WeakRetained presenterViewController];
  }

  v6 = v5;

  v7 = [objc_alloc(MEMORY[0x1E698CC58]) initWithRequest:*(a1 + 32) presentingViewController:v6];
  v8 = [v7 performAuthentication];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __64__VUIASDDialogObserver_handleAuthenticateRequest_resultHandler___block_invoke_2;
  v9[3] = &unk_1E872F580;
  v10 = *(a1 + 40);
  [v8 addFinishBlock:v9];
}

void __64__VUIASDDialogObserver_handleAuthenticateRequest_resultHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    a2;
    v6 = VUIDefaultLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&dword_1E323F000, v6, OS_LOG_TYPE_DEFAULT, "VUIASDDialogObserver - Error presenting AMS Auth dialog -- error: %@", &v7, 0xCu);
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))(*(a1 + 32), a2, 0);
  }
}

- (void)handleDialogRequest:(id)a3 resultHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __58__VUIASDDialogObserver_handleDialogRequest_resultHandler___block_invoke;
  v14 = &unk_1E872DE00;
  objc_copyWeak(&v17, &location);
  v8 = v6;
  v15 = v8;
  v9 = v7;
  v16 = v9;
  v10 = &v11;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v13(v10);
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], v10);
  }

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

void __58__VUIASDDialogObserver_handleDialogRequest_resultHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = +[VUIApplicationRouter topMostVisibleViewController];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [WeakRetained presenterViewController];
  }

  v6 = v5;

  v7 = [objc_alloc(MEMORY[0x1E698CC50]) initWithRequest:*(a1 + 32) presentingViewController:v6];
  v8 = [v7 present];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __58__VUIASDDialogObserver_handleDialogRequest_resultHandler___block_invoke_2;
  v9[3] = &unk_1E872F5A8;
  v10 = *(a1 + 40);
  [v8 addFinishBlock:v9];
}

void __58__VUIASDDialogObserver_handleDialogRequest_resultHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    a2;
    v6 = VUIDefaultLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&dword_1E323F000, v6, OS_LOG_TYPE_DEFAULT, "VUIASDDialogObserver - Error presenting AMS Dialog - error: %@", &v7, 0xCu);
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))(*(a1 + 32), a2, 0);
  }
}

- (UIViewController)presenterViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presenterViewController);

  return WeakRetained;
}

@end