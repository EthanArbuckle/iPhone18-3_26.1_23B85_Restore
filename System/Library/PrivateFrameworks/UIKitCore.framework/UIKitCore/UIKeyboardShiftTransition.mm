@interface UIKeyboardShiftTransition
- (void)runNonInteractivelyWithCompletion:(id)a3;
@end

@implementation UIKeyboardShiftTransition

- (void)runNonInteractivelyWithCompletion:(id)a3
{
  v4 = a3;
  [(UIKeyboardShiftTransition *)self nonInteractiveDuration];
  v6 = v5;
  v9 = v4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __63__UIKeyboardShiftTransition_runNonInteractivelyWithCompletion___block_invoke;
  v10[3] = &unk_1E70F3590;
  v10[4] = self;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __63__UIKeyboardShiftTransition_runNonInteractivelyWithCompletion___block_invoke_2;
  v8[3] = &unk_1E70F3608;
  v7 = v4;
  [UIView animateWithDuration:50331712 delay:v10 options:v8 animations:v6 completion:0.0];
}

uint64_t __63__UIKeyboardShiftTransition_runNonInteractivelyWithCompletion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

@end