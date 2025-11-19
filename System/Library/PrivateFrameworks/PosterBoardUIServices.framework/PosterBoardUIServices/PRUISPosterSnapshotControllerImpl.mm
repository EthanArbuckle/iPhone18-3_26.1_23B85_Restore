@interface PRUISPosterSnapshotControllerImpl
@end

@implementation PRUISPosterSnapshotControllerImpl

void __72___PRUISPosterSnapshotControllerImpl_executeSnapshotRequest_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v12 = a2;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if ([*(a1 + 32) signal])
  {
    (*(*(a1 + 40) + 16))();
  }
}

void __72___PRUISPosterSnapshotControllerImpl_executeSnapshotRequest_completion___block_invoke_118(uint64_t a1, void *a2, void *a3)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _snapshotRequestDidFinishWithResult:v5 snapshotterError:v6 request:*(a1 + 32) completion:*(a1 + 40)];
  }

  else
  {
    v9 = MEMORY[0x1E696ABC0];
    v12 = *MEMORY[0x1E696A588];
    v13[0] = @"Snapshot controller was deallocated before snapshot could be completed.";
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    v11 = [v9 pui_errorWithCode:3 userInfo:v10];

    (*(*(a1 + 40) + 16))();
  }
}

void __110___PRUISPosterSnapshotControllerImpl__snapshotRequestDidFinishWithResult_snapshotterError_request_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PRUISLogSnapshotting();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v9 = 138543362;
    v10 = v5;
    _os_log_impl(&dword_1CAE63000, v4, OS_LOG_TYPE_DEFAULT, "finished caching result for request %{public}@", &v9, 0xCu);
  }

  v6 = [_PRUISPosterSnapshotResult alloc];
  v7 = *(a1 + 32);
  [*(a1 + 40) executionTime];
  v8 = [(_PRUISPosterSnapshotResult *)v6 initWithRequest:v7 snapshotBundle:v3 executeTime:?];

  (*(*(a1 + 48) + 16))();
  [*(a1 + 40) invalidate];
}

void __110___PRUISPosterSnapshotControllerImpl__snapshotRequestDidFinishWithResult_snapshotterError_request_completion___block_invoke_128(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PRUISLogSnapshotting();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __110___PRUISPosterSnapshotControllerImpl__snapshotRequestDidFinishWithResult_snapshotterError_request_completion___block_invoke_128_cold_1(a1, v3, v4);
  }

  v5 = [_PRUISPosterSnapshotResult alloc];
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  [*(a1 + 48) executionTime];
  v8 = [(_PRUISPosterSnapshotResult *)v5 initWithRequest:v6 snapshotBundle:v7 executeTime:?];
  (*(*(a1 + 56) + 16))();
  [*(a1 + 48) invalidate];
}

void __110___PRUISPosterSnapshotControllerImpl__snapshotRequestDidFinishWithResult_snapshotterError_request_completion___block_invoke_131(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = [MEMORY[0x1E696ABC0] pui_errorWithCode:5];
  (*(v1 + 16))(v1, v2, 0, v3, 0);
}

void __110___PRUISPosterSnapshotControllerImpl__snapshotRequestDidFinishWithResult_snapshotterError_request_completion___block_invoke_128_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = 138543618;
  v5 = v3;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&dword_1CAE63000, log, OS_LOG_TYPE_ERROR, "failed caching result for request %{public}@: %{public}@", &v4, 0x16u);
}

@end