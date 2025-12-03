@interface PSSpecifier(PSUIVoiceAndDataDrillDownController)
- (BOOL)isRATModeSpecifier;
@end

@implementation PSSpecifier(PSUIVoiceAndDataDrillDownController)

- (BOOL)isRATModeSpecifier
{
  identifier = [self identifier];
  if (identifier == @"VoLTESwitchSpecifierKey")
  {
    v5 = 0;
  }

  else
  {
    identifier2 = [self identifier];
    if (identifier2 == @"SASwitchSpecifierKey")
    {
      v5 = 0;
    }

    else
    {
      identifier3 = [self identifier];
      v5 = identifier3 != @"VoNRSwitchSpecifierKey";
    }
  }

  return v5;
}

@end