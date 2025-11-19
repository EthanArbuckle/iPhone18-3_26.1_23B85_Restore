@interface SBExternalChamoisUICommandValidator
- (BOOL)validateCommand:(id)a3;
@end

@implementation SBExternalChamoisUICommandValidator

- (BOOL)validateCommand:(id)a3
{
  v3 = a3;
  v4 = [v3 action];
  if (v4 == sel__handleMoveToOtherDisplayKeyShortcut_)
  {
    v5 = [MEMORY[0x277CCA8D8] mainBundle];
    v6 = [v5 localizedStringForKey:@"MOVE_TO_IPAD_DISCOVERABILITY" value:&stru_283094718 table:@"SpringBoard"];
    [v3 setTitle:v6];
  }

  return v4 == sel__handleMoveToOtherDisplayKeyShortcut_;
}

@end