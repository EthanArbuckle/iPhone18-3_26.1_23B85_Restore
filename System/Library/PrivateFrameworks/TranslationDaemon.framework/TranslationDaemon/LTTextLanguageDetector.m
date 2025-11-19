@interface LTTextLanguageDetector
@end

@implementation LTTextLanguageDetector

id __48___LTTextLanguageDetector__mapSupportedLocales___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 availableLocales];
  v5 = _LTLanguageCodeToSupportedLocale();

  return v5;
}

@end