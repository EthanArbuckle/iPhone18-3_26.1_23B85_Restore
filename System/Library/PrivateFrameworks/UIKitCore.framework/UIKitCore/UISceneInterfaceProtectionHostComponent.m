@interface UISceneInterfaceProtectionHostComponent
@end

@implementation UISceneInterfaceProtectionHostComponent

void __89___UISceneInterfaceProtectionHostComponent_appProtectionSubjectsChanged_forSubscription___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v3 = [*(a1 + 32) containsObject:WeakRetained[4]];
    WeakRetained = v6;
    if (v3)
    {
      v4 = [v6[4] requiresShielding];
      v5 = *(a1 + 40);
      if (v4)
      {
        if (v5 && [*(v5 + 32) requiresShielding])
        {
          [(_UISceneInterfaceProtectionHostComponent *)v5 presentAppProtectionShieldView];
        }

        [(_UISceneInterfaceProtectionHostComponent *)*(a1 + 40) requestAppProtectionAuthIfNecessary];
      }

      else
      {
        [(_UISceneInterfaceProtectionHostComponent *)*(a1 + 40) removeAppProtectionShieldView];
      }

      -[_UISceneInterfaceProtectionHostComponent _setUnderAppProtection:](*(a1 + 40), [*(*(a1 + 40) + 32) isLocked]);
      WeakRetained = v6;
    }
  }
}

void __74___UISceneInterfaceProtectionHostComponent_shieldViewUnlockButtonPressed___block_invoke(uint64_t a1, int a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    if (a2)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __74___UISceneInterfaceProtectionHostComponent_shieldViewUnlockButtonPressed___block_invoke_2;
      block[3] = &unk_1E70F3590;
      block[4] = WeakRetained;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }

    if (v5)
    {
      v8 = *(__UILogGetCategoryCachedImpl("AppProtection", &_UISceneInterfaceProtectionHostComponentInitiallyUnderAppProtectionTransientSettingsKey_block_invoke___s_category) + 8);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        v11 = v5;
        _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_FAULT, "Error attempting to unlock %@:", buf, 0xCu);
      }
    }
  }
}

id __70___UISceneInterfaceProtectionHostComponent_appendDescriptionToStream___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 32) withName:@"apExtension"];
  v3 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 48) withName:@"localizedName"];
  v4 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 40) withName:@"appIconBundleIdentifier"];
  return [*(a1 + 32) appendObject:*(*(a1 + 40) + 64) withName:@"shieldView"];
}

@end