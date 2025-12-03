@interface _UIFocusEnableOnSelectGestureRecognizer
- (_UIFocusEnableOnSelectGestureRecognizer)initWithTarget:(id)target action:(SEL)action;
- (void)pressesBegan:(id)began withEvent:(id)event;
@end

@implementation _UIFocusEnableOnSelectGestureRecognizer

- (_UIFocusEnableOnSelectGestureRecognizer)initWithTarget:(id)target action:(SEL)action
{
  v7.receiver = self;
  v7.super_class = _UIFocusEnableOnSelectGestureRecognizer;
  v4 = [(UIGestureRecognizer *)&v7 initWithTarget:target action:action];
  v5 = v4;
  if (v4)
  {
    [(UIGestureRecognizer *)v4 setAllowedPressTypes:&unk_1EFE2E0F8];
    [(UIGestureRecognizer *)v5 setAllowedTouchTypes:MEMORY[0x1E695E0F0]];
  }

  return v5;
}

- (void)pressesBegan:(id)began withEvent:(id)event
{
  eventCopy = event;
  view = [(UIGestureRecognizer *)self view];
  _focusSystem = [view _focusSystem];
  focusedItem = [_focusSystem focusedItem];
  if (focusedItem)
  {
    goto LABEL_4;
  }

  focusedItem = [eventCopy _screen];
  v8 = [focusedItem _capabilityForKey:@"UIScreenCapabilityPrimaryInteractionModelKey"];
  if (([v8 integerValue] & 1) == 0)
  {

LABEL_4:
LABEL_5:
    v9 = 5;
    goto LABEL_6;
  }

  [eventCopy _hidEvent];
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