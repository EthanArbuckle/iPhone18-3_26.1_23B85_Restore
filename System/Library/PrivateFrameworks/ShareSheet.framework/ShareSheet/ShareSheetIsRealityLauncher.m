@interface ShareSheetIsRealityLauncher
@end

@implementation ShareSheetIsRealityLauncher

void ___ShareSheetIsRealityLauncher_block_invoke()
{
  v0 = [MEMORY[0x1E696AE30] processInfo];
  v1 = [v0 processName];

  LOBYTE(v0) = [v1 isEqualToString:@"RealityLauncher"];
  _ShareSheetIsRealityLauncher_isRealityLauncher = v0;
}

@end