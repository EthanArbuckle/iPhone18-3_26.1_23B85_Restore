@interface ShareSheetDeviceScreenScale
@end

@implementation ShareSheetDeviceScreenScale

void ___ShareSheetDeviceScreenScale_block_invoke()
{
  v0 = [MEMORY[0x1E69DC938] currentDevice];
  v1 = [v0 userInterfaceIdiom];

  if (v1 == 6)
  {
    _ShareSheetDeviceScreenScale_scale = 0x3FF0000000000000;
  }

  else
  {
    v3 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v3 scale];
    _ShareSheetDeviceScreenScale_scale = v2;
  }
}

@end