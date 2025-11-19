@interface ShareSheetIsCamera
@end

@implementation ShareSheetIsCamera

void ___ShareSheetIsCamera_block_invoke()
{
  v0 = [MEMORY[0x1E696AE30] processInfo];
  v1 = [v0 processName];

  LOBYTE(v0) = [v1 isEqualToString:@"Camera"];
  _ShareSheetIsCamera_isCamera = v0;
}

@end