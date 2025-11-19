@interface UIMainMenuSession
@end

@implementation UIMainMenuSession

void __81___UIMainMenuSession_hostSideInvokableKeyboardShortcutsWithPrimaryActionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = a2;
  v4 = [v3 categoryMenuIdentifier];
  [v5 setCategoryMenuIdentifier:v4];

  (*(*(a1 + 40) + 16))();
}

@end