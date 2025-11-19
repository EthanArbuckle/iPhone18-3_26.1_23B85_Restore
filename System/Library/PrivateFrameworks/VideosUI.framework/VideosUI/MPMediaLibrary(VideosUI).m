@interface MPMediaLibrary(VideosUI)
- (BOOL)vui_isDeviceMediaLibrary;
@end

@implementation MPMediaLibrary(VideosUI)

- (BOOL)vui_isDeviceMediaLibrary
{
  v2 = [MEMORY[0x1E69705E8] deviceMediaLibrary];
  v3 = v2 == a1;

  return v3;
}

@end