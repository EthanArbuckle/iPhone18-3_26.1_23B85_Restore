@interface UIRivenFactory
+ (id)_splitKeyboardLayoutHints;
@end

@implementation UIRivenFactory

+ (id)_splitKeyboardLayoutHints
{
  v2 = TextInputUIBundle();
  v3 = [v2 bundlePath];

  v4 = [v3 stringByAppendingPathComponent:@"UIKBSplitRowHints.plist"];
  v5 = [MEMORY[0x1E696AC08] defaultManager];
  v6 = [v5 fileExistsAtPath:v4];

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