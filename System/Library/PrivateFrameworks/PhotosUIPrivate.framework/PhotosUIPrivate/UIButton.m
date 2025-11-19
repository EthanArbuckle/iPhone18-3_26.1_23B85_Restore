@interface UIButton
@end

@implementation UIButton

void __78__UIButton_PhotosUI__pu_setTitle_andAccessibilityTitle_withFallback_forState___block_invoke()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  pu_setTitle_andAccessibilityTitle_withFallback_forState__forceFallback = [v0 BOOLForKey:@"NSDoubleLocalizedStrings"];
}

@end