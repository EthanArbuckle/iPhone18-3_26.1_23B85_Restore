@interface UIKeyboardSplitControlMenu_Floating
- (BOOL)visible;
- (void)actionForMenu:(id)menu;
@end

@implementation UIKeyboardSplitControlMenu_Floating

- (BOOL)visible
{
  v2 = +[UIKeyboardImpl supportsFloating];
  if (v2)
  {
    LOBYTE(v2) = !+[UIKeyboardImpl isFloating];
  }

  return v2;
}

- (void)actionForMenu:(id)menu
{
  [UIPeripheralHost setFloating:1 onCompletion:&__block_literal_global_392];
  v3 = *MEMORY[0x1E695EFF8];
  v4 = *(MEMORY[0x1E695EFF8] + 8);

  [UIKBAnalyticsDispatcher floatingKeyboardSummonedEvent:@"Untether" trigger:@"NonInteractive" finalPosition:v3, v4];
}

@end