@interface NSNumber(VideosUI)
- (id)vui_languageAwareDescription;
@end

@implementation NSNumber(VideosUI)

- (id)vui_languageAwareDescription
{
  v2 = [MEMORY[0x1E695DF58] currentLocale];
  v3 = [a1 descriptionWithLocale:v2];
  v4 = MEMORY[0x1E695DF58];
  v5 = [v2 languageCode];
  v6 = [v4 characterDirectionForLanguage:v5];

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