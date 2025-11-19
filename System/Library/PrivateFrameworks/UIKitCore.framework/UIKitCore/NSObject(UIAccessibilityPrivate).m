@interface NSObject(UIAccessibilityPrivate)
+ (void)__accessibilityRequestGuidedAccessSession:()UIAccessibilityPrivate completion:;
@end

@implementation NSObject(UIAccessibilityPrivate)

+ (void)__accessibilityRequestGuidedAccessSession:()UIAccessibilityPrivate completion:
{
  if (a4)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __89__NSObject_UIAccessibilityPrivate____accessibilityRequestGuidedAccessSession_completion___block_invoke;
    block[3] = &unk_1E70F3168;
    block[4] = a4;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

@end