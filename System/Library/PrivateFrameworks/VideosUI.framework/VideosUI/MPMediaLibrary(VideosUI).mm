@interface MPMediaLibrary(VideosUI)
- (BOOL)vui_isDeviceMediaLibrary;
@end

@implementation MPMediaLibrary(VideosUI)

- (BOOL)vui_isDeviceMediaLibrary
{
  deviceMediaLibrary = [MEMORY[0x1E69705E8] deviceMediaLibrary];
  v3 = deviceMediaLibrary == self;

  return v3;
}

@end