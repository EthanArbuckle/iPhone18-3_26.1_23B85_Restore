@interface ShareSheetIsSafari
@end

@implementation ShareSheetIsSafari

void ___ShareSheetIsSafari_block_invoke()
{
  v0 = [MEMORY[0x1E696AE30] processInfo];
  v1 = [v0 processName];

  LOBYTE(v0) = [v1 isEqualToString:@"MobileSafari"];
  if (v0)
  {
    v2 = 1;
  }

  else
  {
    v3 = [MEMORY[0x1E696AE30] processInfo];
    v4 = [v3 processName];

    v2 = [v4 isEqualToString:@"SafariViewService"];
  }

  _ShareSheetIsSafari_isSafari = v2;
}

@end