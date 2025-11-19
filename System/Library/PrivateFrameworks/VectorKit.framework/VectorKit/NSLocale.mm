@interface NSLocale
@end

@implementation NSLocale

void __52__NSLocale_VKFoundationUtility___vk_indexForLocale___block_invoke()
{
  v0 = [MEMORY[0x1E695DF58] availableLocaleIdentifiers];
  v1 = +[NSLocale(VKFoundationUtility) _vk_indexForLocale:]::__localeIdentifiers;
  +[NSLocale(VKFoundationUtility) _vk_indexForLocale:]::__localeIdentifiers = v0;
}

@end