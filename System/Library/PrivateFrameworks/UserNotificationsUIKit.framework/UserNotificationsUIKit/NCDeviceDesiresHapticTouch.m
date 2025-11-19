@interface NCDeviceDesiresHapticTouch
@end

@implementation NCDeviceDesiresHapticTouch

void ___NCDeviceDesiresHapticTouch_block_invoke()
{
  if (MGGetBoolAnswer() && !MGGetBoolAnswer())
  {
    v0 = [MEMORY[0x277CF0CA8] sharedInstance];
    _NCDeviceDesiresHapticTouch___deviceDesiresHapticTouch = [v0 homeButtonType] == 2;
  }

  else
  {
    _NCDeviceDesiresHapticTouch___deviceDesiresHapticTouch = 0;
  }
}

@end