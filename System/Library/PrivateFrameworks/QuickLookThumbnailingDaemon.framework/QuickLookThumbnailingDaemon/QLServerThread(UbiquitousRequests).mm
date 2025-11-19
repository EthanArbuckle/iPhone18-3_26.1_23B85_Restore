@interface QLServerThread(UbiquitousRequests)
@end

@implementation QLServerThread(UbiquitousRequests)

- (void)_downloadThumbnailForRequest:()UbiquitousRequests completionHandler:.cold.1(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 8);
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_8(&dword_2615D3000, v3, v4, "Will add thumbnail-download for request:%@ to queue: %@");
  v5 = *MEMORY[0x277D85DE8];
}

- (void)downloadThumbnails:()UbiquitousRequests forProvider:.cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = [a1 count];
  v6 = atomic_load((a2 + 28));
  v8 = 134218240;
  v9 = v5;
  v10 = 1024;
  v11 = v6;
  _os_log_debug_impl(&dword_2615D3000, a3, OS_LOG_TYPE_DEBUG, "Dequeueing batch of %lu thumbnail downloads (%d downloads are in flight)", &v8, 0x12u);
  v7 = *MEMORY[0x277D85DE8];
}

@end