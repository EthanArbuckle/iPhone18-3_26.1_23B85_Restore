@interface TVRCPointSizeOfSiriRemoteOnMainScreen
@end

@implementation TVRCPointSizeOfSiriRemoteOnMainScreen

void ___TVRCPointSizeOfSiriRemoteOnMainScreen_block_invoke()
{
  v5 = [MEMORY[0x277D759A0] mainScreen];
  [v5 nativeScale];
  v1 = v0;
  v2 = MGGetSInt32Answer();
  [v5 nativeBounds];
  v8.size.width = 1080.0;
  v8.size.height = 1920.0;
  v8.origin.x = 0.0;
  v8.origin.y = 0.0;
  v3 = CGRectEqualToRect(v7, v8);
  v4 = v2;
  if (v3)
  {
    v4 = 401.0;
  }

  _TVRCPointSizeOfSiriRemoteOnMainScreen_size_0 = round(v4 * 1.4723 / v1);
  _TVRCPointSizeOfSiriRemoteOnMainScreen_size_1 = round(v4 * 1.6 / v1);
}

@end