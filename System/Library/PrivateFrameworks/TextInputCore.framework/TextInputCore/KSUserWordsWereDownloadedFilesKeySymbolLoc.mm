@interface KSUserWordsWereDownloadedFilesKeySymbolLoc
@end

@implementation KSUserWordsWereDownloadedFilesKeySymbolLoc

void *__get_KSUserWordsWereDownloadedFilesKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = KeyboardServicesLibrary();
  result = dlsym(v2, "_KSUserWordsWereDownloadedFilesKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  get_KSUserWordsWereDownloadedFilesKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end