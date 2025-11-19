@interface AFPreferencesReplacementLanguageForLocalRecognizerLanguageCodeSymbolLoc
@end

@implementation AFPreferencesReplacementLanguageForLocalRecognizerLanguageCodeSymbolLoc

void *__get_AFPreferencesReplacementLanguageForLocalRecognizerLanguageCodeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AssistantServicesLibrary_2();
  result = dlsym(v2, "_AFPreferencesReplacementLanguageForLocalRecognizerLanguageCode");
  *(*(*(a1 + 32) + 8) + 24) = result;
  get_AFPreferencesReplacementLanguageForLocalRecognizerLanguageCodeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end