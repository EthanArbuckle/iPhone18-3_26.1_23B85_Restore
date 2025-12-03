@interface PSPearlPINController
- (id)pinInstructionsPrompt;
@end

@implementation PSPearlPINController

- (id)pinInstructionsPrompt
{
  if ([(DevicePINController *)self mode]|| *(&self->super.super.super.super.super.super.super.isa + *MEMORY[0x277D3FBC8]) != 1)
  {
    v5.receiver = self;
    v5.super_class = PSPearlPINController;
    pinInstructionsPrompt = [(DevicePINController *)&v5 pinInstructionsPrompt];
  }

  else
  {
    pinInstructionsPrompt = PABS_LocalizedStringForPasscodeLock(@"ENTER_PASSCODE_SUBTITLE_PEARL");
  }

  return pinInstructionsPrompt;
}

@end