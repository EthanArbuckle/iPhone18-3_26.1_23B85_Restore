@interface BBSectionIcon
@end

@implementation BBSectionIcon

void __101__BBSectionIcon_UserNotificationsUIKit__nc_imageForFormat_scale_userInterfaceStyle_completionOnMain___block_invoke(uint64_t a1)
{
  v9 = 0;
  v2 = [*(a1 + 32) nc_imageForFormat:*(a1 + 48) scale:*(a1 + 64) userInterfaceStyle:&v9 usedUserInterfaceStyle:*(a1 + 56)];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __101__BBSectionIcon_UserNotificationsUIKit__nc_imageForFormat_scale_userInterfaceStyle_completionOnMain___block_invoke_2;
  block[3] = &unk_27836F5C0;
  v3 = *(a1 + 40);
  v6 = v2;
  v7 = v3;
  v8 = v9;
  v4 = v2;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

@end