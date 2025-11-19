@interface SharedPKHMHomeManager
@end

@implementation SharedPKHMHomeManager

void __40___SharedPKHMHomeManager_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(_SharedPKHMHomeManager);
  v1 = qword_1EB5B7DE8;
  qword_1EB5B7DE8 = v0;
}

void __59___SharedPKHMHomeManager__performOperationWithHomeManager___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    os_unfair_lock_lock(WeakRetained + 4);
    [(os_unfair_lock_s *)v2 _withLock_cleanupHomeManagerIfNeeded];
    os_unfair_lock_unlock(v2 + 4);
    WeakRetained = v2;
  }
}

uint64_t __59___SharedPKHMHomeManager__performOperationWithHomeManager___block_invoke_2(uint64_t a1)
{
  v2 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "_SharedPKHMHomeManager timed out waiting on HMHomeManager to load", v4, 2u);
  }

  return [*(a1 + 32) homeManagerDidUpdateHomes:*(a1 + 40)];
}

void __59___SharedPKHMHomeManager__performOperationWithHomeManager___block_invoke_16(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __59___SharedPKHMHomeManager__performOperationWithHomeManager___block_invoke_2_17;
  v5[3] = &unk_1E79C9D80;
  objc_copyWeak(&v6, (a1 + 40));
  (*(v4 + 16))(v4, v3, v5);
  objc_destroyWeak(&v6);
}

void __59___SharedPKHMHomeManager__performOperationWithHomeManager___block_invoke_2_17(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    os_unfair_lock_lock(WeakRetained + 4);
    [(os_unfair_lock_s *)v2 _withLock_cleanupHomeManagerIfNeeded];
    os_unfair_lock_unlock(v2 + 4);
    WeakRetained = v2;
  }
}

void __53___SharedPKHMHomeManager__performOperationWithHomes___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [a2 homes];
  (*(v4 + 16))(v4, v6, v5);
}

@end