@interface SFCKShareCollaborationItem
@end

@implementation SFCKShareCollaborationItem

void __64___SFCKShareCollaborationItem__loadCKContainerSetupInfoIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __64___SFCKShareCollaborationItem__loadCKContainerSetupInfoIfNeeded__block_invoke_2;
  v5[3] = &unk_1E788AEA0;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);

  objc_destroyWeak(&v7);
}

void __64___SFCKShareCollaborationItem__loadCKContainerSetupInfoIfNeeded__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _didLoadContainerSetupInfo:*(a1 + 32)];
}

@end