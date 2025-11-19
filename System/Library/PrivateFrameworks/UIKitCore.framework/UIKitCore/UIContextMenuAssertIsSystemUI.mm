@interface UIContextMenuAssertIsSystemUI
@end

@implementation UIContextMenuAssertIsSystemUI

void ___UIContextMenuAssertIsSystemUI_block_invoke()
{
  if ((_UIApplicationProcessIsSpringBoard() & 1) == 0 && (_UIApplicationProcessIsOverlayUI() & 1) == 0 && (_UIApplicationProcessIsUIKitester() & 1) == 0)
  {
    v1 = [MEMORY[0x1E696AAA8] currentHandler];
    v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void _UIContextMenuAssertIsSystemUI(void)_block_invoke"];
    [v1 handleFailureInFunction:v0 file:@"_UIContextMenuStyle.m" lineNumber:101 description:@"This SPI may only be used by approved processes!"];
  }
}

@end