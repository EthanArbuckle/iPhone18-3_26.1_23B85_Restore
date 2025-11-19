@interface UIScreenIsFrontBoard
@end

@implementation UIScreenIsFrontBoard

void ___UIScreenIsFrontBoard_block_invoke()
{
  v0 = [MEMORY[0x1E698E620] tokenForCurrentProcess];
  byte_1ED49AAE2 = [v0 hasEntitlement:@"com.apple.private.xpc.launchd.app-server"];
  if ((byte_1ED49AAE2 & 1) == 0)
  {
    byte_1ED49AAE2 = [v0 hasEntitlement:@"com.apple.assertiond.system-shell"];
  }
}

@end