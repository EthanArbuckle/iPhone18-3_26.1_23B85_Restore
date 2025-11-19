@interface UILocalizedStringInSystemLanguage
@end

@implementation UILocalizedStringInSystemLanguage

void ___UILocalizedStringInSystemLanguage_block_invoke()
{
  v0 = _UIKitBundle();
  v11 = _UIPreferredSystemLanguageForBundle(v0);

  if (v11)
  {
    v1 = _UIKitBundle();
    v2 = [v1 preferredLocalizations];
    v3 = [v2 firstObject];
    v4 = [v3 isEqualToString:v11];

    if ((v4 & 1) == 0)
    {
      v5 = _UIKitBundle();
      v6 = [v5 pathForResource:v11 ofType:@"lproj"];

      if ([v6 length])
      {
        v7 = [MEMORY[0x1E696AAE8] bundleWithPath:v6];
        v8 = qword_1EA993188;
        qword_1EA993188 = v7;
      }
    }
  }

  if (!qword_1EA993188)
  {
    v9 = _UIKitBundle();
    v10 = qword_1EA993188;
    qword_1EA993188 = v9;
  }
}

@end