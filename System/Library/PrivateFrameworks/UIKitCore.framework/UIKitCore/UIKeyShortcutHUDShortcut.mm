@interface UIKeyShortcutHUDShortcut
@end

@implementation UIKeyShortcutHUDShortcut

void __43___UIKeyShortcutHUDShortcut_initWithCoder___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = a2;
  [v5 setBaseShortcutForAlternate:v4];
  [v5 setAlternateForBaseShortcut:v6];
}

@end