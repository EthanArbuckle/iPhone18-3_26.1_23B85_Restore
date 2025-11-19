@interface SBXXAddWallpaperAnimationSuspensionAssertion
@end

@implementation SBXXAddWallpaperAnimationSuspensionAssertion

void ___SBXXAddWallpaperAnimationSuspensionAssertion_block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = +[SBWallpaperController sharedInstance];
  v3 = SBLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 32);
    *buf = 138412290;
    v13 = v4;
    _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_INFO, "Disabling dynamic wallpapers and parallax for assertion with reason=%@", buf, 0xCu);
  }

  v5 = [v2 suspendWallpaperAnimationForReason:*(a1 + 32)];
  [MEMORY[0x277D75D18] animateWithDuration:&__block_literal_global_177 animations:0.1];
  v6 = [objc_alloc(MEMORY[0x277CF0C60]) initWithPort:*(a1 + 40)];
  v7 = MEMORY[0x277CF0CB8];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = ___SBXXAddWallpaperAnimationSuspensionAssertion_block_invoke_2;
  v9[3] = &unk_2783A92D8;
  v10 = *(a1 + 32);
  v11 = v5;
  v8 = v5;
  [v7 monitorSendRight:v6 withHandler:v9];
}

void ___SBXXAddWallpaperAnimationSuspensionAssertion_block_invoke_2(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = ___SBXXAddWallpaperAnimationSuspensionAssertion_block_invoke_3;
  v2[3] = &unk_2783A92D8;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  dispatch_async(MEMORY[0x277D85CD0], v2);
}

uint64_t ___SBXXAddWallpaperAnimationSuspensionAssertion_block_invoke_3(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = SBLogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_INFO, "Re-enabling dynamic wallpapers and parallax for assertion with reason=%@", &v5, 0xCu);
  }

  return [*(a1 + 40) invalidate];
}

@end