@interface KSUserWordsWereDownloadedNotificationSymbolLoc
@end

@implementation KSUserWordsWereDownloadedNotificationSymbolLoc

void *__get_KSUserWordsWereDownloadedNotificationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = KeyboardServicesLibrary();
  result = dlsym(v2, "_KSUserWordsWereDownloadedNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  get_KSUserWordsWereDownloadedNotificationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end