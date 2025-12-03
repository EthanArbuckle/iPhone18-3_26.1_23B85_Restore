@interface NSNumber(VideosUI)
- (id)vui_languageAwareDescription;
@end

@implementation NSNumber(VideosUI)

- (id)vui_languageAwareDescription
{
  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  v3 = [self descriptionWithLocale:currentLocale];
  v4 = MEMORY[0x1E695DF58];
  languageCode = [currentLocale languageCode];
  v6 = [v4 characterDirectionForLanguage:languageCode];

  if (v6 == 2)
  {
    v7 = @"\u200F";
  }

  else
  {
    v7 = @"\u200E";
  }

  v8 = [v3 stringByAppendingString:v7];

  return v8;
}

@end