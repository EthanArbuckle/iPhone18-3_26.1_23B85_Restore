@interface ShareSheetIsPhotos
@end

@implementation ShareSheetIsPhotos

void ___ShareSheetIsPhotos_block_invoke()
{
  v0 = [MEMORY[0x1E696AE30] processInfo];
  v1 = [v0 processName];

  LOBYTE(v0) = [v1 isEqualToString:@"Photos"];
  _ShareSheetIsPhotos_isPhotos = v0;
}

@end