@interface TVRKeyboardHaptic
- (void)play;
@end

@implementation TVRKeyboardHaptic

- (void)play
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  _supportsForceTouch = [currentDevice _supportsForceTouch];

  if (_supportsForceTouch)
  {
    currentDevice2 = [MEMORY[0x277D75418] currentDevice];
    _tapticEngine = [currentDevice2 _tapticEngine];

    [_tapticEngine actuateFeedback:1];
  }

  else
  {

    AudioServicesPlaySystemSound(0xFFFu);
  }
}

@end