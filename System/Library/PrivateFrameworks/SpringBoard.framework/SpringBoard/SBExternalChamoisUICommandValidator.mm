@interface SBExternalChamoisUICommandValidator
- (BOOL)validateCommand:(id)command;
@end

@implementation SBExternalChamoisUICommandValidator

- (BOOL)validateCommand:(id)command
{
  commandCopy = command;
  action = [commandCopy action];
  if (action == sel__handleMoveToOtherDisplayKeyShortcut_)
  {
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v6 = [mainBundle localizedStringForKey:@"MOVE_TO_IPAD_DISCOVERABILITY" value:&stru_283094718 table:@"SpringBoard"];
    [commandCopy setTitle:v6];
  }

  return action == sel__handleMoveToOtherDisplayKeyShortcut_;
}

@end