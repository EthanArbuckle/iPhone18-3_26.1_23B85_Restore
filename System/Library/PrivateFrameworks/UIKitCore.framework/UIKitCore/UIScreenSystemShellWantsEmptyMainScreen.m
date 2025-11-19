@interface UIScreenSystemShellWantsEmptyMainScreen
@end

@implementation UIScreenSystemShellWantsEmptyMainScreen

void ___UIScreenSystemShellWantsEmptyMainScreen_block_invoke()
{
  v0 = [MEMORY[0x1E698E620] tokenForCurrentProcess];
  byte_1ED49AAE3 = [v0 hasEntitlement:@"com.apple.UIKit.system-shell-wants-empty-main-screen"];
}

@end