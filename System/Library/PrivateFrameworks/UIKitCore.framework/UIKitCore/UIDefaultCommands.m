@interface UIDefaultCommands
@end

@implementation UIDefaultCommands

void __36___UIDefaultCommands_sharedCommands__block_invoke()
{
  v0 = objc_opt_new();
  v1 = _MergedGlobals_1134;
  _MergedGlobals_1134 = v0;
}

id __42___UIDefaultCommands_fixedDefaultCommands__block_invoke_9(uint64_t a1)
{
  v1 = [UIKeyCommand commandWithTitle:*(a1 + 32) imageName:0 action:sel_showHelp_ input:@"?" modifierFlags:0x100000];
  [v1 setRepeatBehavior:2];

  return v1;
}

@end