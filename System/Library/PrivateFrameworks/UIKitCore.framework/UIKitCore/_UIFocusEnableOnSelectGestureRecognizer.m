@interface _UIFocusEnableOnSelectGestureRecognizer
- (_UIFocusEnableOnSelectGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4;
- (void)pressesBegan:(id)a3 withEvent:(id)a4;
@end

@implementation _UIFocusEnableOnSelectGestureRecognizer

- (_UIFocusEnableOnSelectGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4
{
  v7.receiver = self;
  v7.super_class = _UIFocusEnableOnSelectGestureRecognizer;
  v4 = [(UIGestureRecognizer *)&v7 initWithTarget:a3 action:a4];
  v5 = v4;
  if (v4)
  {
    [(UIGestureRecognizer *)v4 setAllowedPressTypes:&unk_1EFE2E0F8];
    [(UIGestureRecognizer *)v5 setAllowedTouchTypes:MEMORY[0x1E695E0F0]];
  }

  return v5;
}

- (void)pressesBegan:(id)a3 withEvent:(id)a4
{
  v11 = a4;
  v5 = [(UIGestureRecognizer *)self view];
  v6 = [v5 _focusSystem];
  v7 = [v6 focusedItem];
  if (v7)
  {
    goto LABEL_4;
  }

  v7 = [v11 _screen];
  v8 = [v7 _capabilityForKey:@"UIScreenCapabilityPrimaryInteractionModelKey"];
  if (([v8 integerValue] & 1) == 0)
  {

LABEL_4:
LABEL_5:
    v9 = 5;
    goto LABEL_6;
  }

  [v11 _hidEvent];
  IntegerValue = IOHIDEventGetIntegerValue();

  if (IntegerValue)
  {
    goto LABEL_5;
  }

  v9 = 3;
LABEL_6:
  [(UIGestureRecognizer *)self setState:v9];
}

@end