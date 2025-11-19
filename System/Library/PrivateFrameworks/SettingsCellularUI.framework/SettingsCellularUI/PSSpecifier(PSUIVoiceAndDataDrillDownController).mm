@interface PSSpecifier(PSUIVoiceAndDataDrillDownController)
- (BOOL)isRATModeSpecifier;
@end

@implementation PSSpecifier(PSUIVoiceAndDataDrillDownController)

- (BOOL)isRATModeSpecifier
{
  v2 = [a1 identifier];
  if (v2 == @"VoLTESwitchSpecifierKey")
  {
    v5 = 0;
  }

  else
  {
    v3 = [a1 identifier];
    if (v3 == @"SASwitchSpecifierKey")
    {
      v5 = 0;
    }

    else
    {
      v4 = [a1 identifier];
      v5 = v4 != @"VoNRSwitchSpecifierKey";
    }
  }

  return v5;
}

@end