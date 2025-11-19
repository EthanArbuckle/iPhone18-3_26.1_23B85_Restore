@interface UIACLIsFrontBoard
@end

@implementation UIACLIsFrontBoard

void ___UIACLIsFrontBoard_block_invoke()
{
  v0 = [MEMORY[0x1E698E620] tokenForCurrentProcess];
  _MergedGlobals_1153 = [v0 hasEntitlement:@"com.apple.private.xpc.launchd.app-server"];
  if ((_MergedGlobals_1153 & 1) == 0)
  {
    _MergedGlobals_1153 = [v0 hasEntitlement:@"com.apple.assertiond.system-shell"];
  }
}

@end