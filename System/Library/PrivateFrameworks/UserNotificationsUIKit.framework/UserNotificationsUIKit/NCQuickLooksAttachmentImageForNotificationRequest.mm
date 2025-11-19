@interface NCQuickLooksAttachmentImageForNotificationRequest
@end

@implementation NCQuickLooksAttachmentImageForNotificationRequest

uint64_t ___NCQuickLooksAttachmentImageForNotificationRequest_block_invoke()
{
  v0 = dispatch_queue_create("com.apple.usernotifications.thumbnailgenerator", 0);
  _NCQuickLooksAttachmentImageForNotificationRequest___thumbnailGeneratorTimeoutQueue = v0;

  return MEMORY[0x2821F96F8](v0);
}

void ___NCQuickLooksAttachmentImageForNotificationRequest_block_invoke_2(void *a1)
{
  if (!*(*(a1[5] + 8) + 40) && !*(*(a1[6] + 8) + 40))
  {
    v2 = *MEMORY[0x277D77DB8];
    if (os_log_type_enabled(*MEMORY[0x277D77DB8], OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_21E77E000, v2, OS_LOG_TYPE_DEFAULT, "Thumbnail generation timed out, cancelling generation", v4, 2u);
    }

    v3 = [MEMORY[0x277CDAAE0] sharedGenerator];
    [v3 cancelRequest:a1[4]];
  }
}

void ___NCQuickLooksAttachmentImageForNotificationRequest_block_invoke_17(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  v8 = *MEMORY[0x277D77DB8];
  if (os_log_type_enabled(*MEMORY[0x277D77DB8], OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(*(*(a1 + 32) + 8) + 40);
    v10 = *(*(*(a1 + 40) + 8) + 40);
    v11 = 138543618;
    v12 = v9;
    v13 = 2114;
    v14 = v10;
    _os_log_impl(&dword_21E77E000, v8, OS_LOG_TYPE_DEFAULT, "Thumbnail generation completed: representation=%{public}@, error=%{public}@", &v11, 0x16u);
  }
}

@end