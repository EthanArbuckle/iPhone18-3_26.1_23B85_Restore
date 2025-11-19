@interface KSUserWordsWereDownloadedLanguageKeySymbolLoc
@end

@implementation KSUserWordsWereDownloadedLanguageKeySymbolLoc

void *__get_KSUserWordsWereDownloadedLanguageKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = KeyboardServicesLibrary();
  result = dlsym(v2, "_KSUserWordsWereDownloadedLanguageKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  get_KSUserWordsWereDownloadedLanguageKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end