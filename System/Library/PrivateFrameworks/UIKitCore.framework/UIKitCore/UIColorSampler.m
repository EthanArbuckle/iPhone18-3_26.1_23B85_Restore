@interface UIColorSampler
@end

@implementation UIColorSampler

void __51___UIColorSampler_showSamplerWithSelectionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __51___UIColorSampler_showSamplerWithSelectionHandler___block_invoke_2;
  v6[3] = &unk_1E70F4A50;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __45___UIColorSampler__createServerProxyIfNeeded__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained[3];
    WeakRetained[3] = 0;
    v4 = WeakRetained;

    v3 = v4[1];
    v4[1] = 0;

    WeakRetained = v4;
  }
}

void __45___UIColorSampler__createServerProxyIfNeeded__block_invoke_3(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (qword_1ED4A0F78 != -1)
  {
    dispatch_once(&qword_1ED4A0F78, &__block_literal_global_561);
  }

  v3 = _MergedGlobals_1300;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = [v2 localizedDescription];
    v5 = 138543362;
    v6 = v4;
    _os_log_error_impl(&dword_188A29000, v3, OS_LOG_TYPE_ERROR, "Error creating a remoteObjectProxy: %{public}@", &v5, 0xCu);
  }
}

@end