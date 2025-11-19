@interface PSKeyboardNavigationSearchBar
- (id)keyCommands;
- (void)_downArrowKeyPressed;
- (void)_escapeKeyPressed;
- (void)_upArrowKeyPressed;
@end

@implementation PSKeyboardNavigationSearchBar

- (id)keyCommands
{
  v7[3] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:*MEMORY[0x1E69DDEA0] modifierFlags:0 action:sel__escapeKeyPressed];
  [v2 setWantsPriorityOverSystemBehavior:1];
  v3 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:*MEMORY[0x1E69DDE90] modifierFlags:0 action:sel__downArrowKeyPressed];
  [v3 setWantsPriorityOverSystemBehavior:1];
  v4 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:*MEMORY[0x1E69DDF30] modifierFlags:0 action:sel__upArrowKeyPressed];
  [v4 setWantsPriorityOverSystemBehavior:1];
  v7[0] = v2;
  v7[1] = v3;
  v7[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:3];

  return v5;
}

- (void)_escapeKeyPressed
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 postNotificationName:@"PSSearchBarEscapeKeyPressedNotification" object:self];
}

- (void)_downArrowKeyPressed
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 postNotificationName:@"PSSearchBarDownArrowKeyPressedNotification" object:self];
}

- (void)_upArrowKeyPressed
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 postNotificationName:@"PSSearchBarUpArrowKeyPressedNotification" object:self];
}

@end