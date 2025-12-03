@interface UIRivenFactory
+ (id)_splitKeyboardLayoutHints;
@end

@implementation UIRivenFactory

+ (id)_splitKeyboardLayoutHints
{
  v2 = TextInputUIBundle();
  bundlePath = [v2 bundlePath];

  v4 = [bundlePath stringByAppendingPathComponent:@"UIKBSplitRowHints.plist"];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v6 = [defaultManager fileExistsAtPath:v4];

  if (v6)
  {
    v7 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfFile:v4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end