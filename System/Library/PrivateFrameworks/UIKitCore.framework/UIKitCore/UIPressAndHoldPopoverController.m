@interface UIPressAndHoldPopoverController
+ (BOOL)canPresentPressAndHoldPopoverForEvent:(id)a3;
+ (BOOL)canPresentPressAndHoldPopoverForKeyString:(id)a3;
- (BOOL)handleHardwareKeyboardEvent:(id)a3;
- (BOOL)handleKeyInputForAccentSelector:(id)a3;
- (BOOL)handleKeyInputForPressAndHoldSelector:(id)a3;
- (BOOL)handleSelectionEvent:(id)a3;
- (BOOL)isSamePressAndHoldPopoverForKeyString:(id)a3;
- (UIPressAndHoldPopoverController)initWithKeyString:(id)a3;
- (void)insertSelectedAccentVariant:(id)a3 shouldDismissPopover:(BOOL)a4;
- (void)showAccentVariantInForwardDirection:(BOOL)a3;
@end

@implementation UIPressAndHoldPopoverController

- (UIPressAndHoldPopoverController)initWithKeyString:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = UIPressAndHoldPopoverController;
  v5 = [(UIKeyboardPopoverController *)&v13 init];
  if (v5)
  {
    [getTUIPressAndHoldViewClass() requiredPopoverSizeForKeyString:v4];
    v7 = v6;
    v9 = v8;
    v10 = [objc_alloc(getTUIPressAndHoldViewClass()) initWithFrame:v4 keyString:{0.0, 0.0, v6, v8}];
    pressAndHoldView = v5->_pressAndHoldView;
    v5->_pressAndHoldView = v10;

    [(TUIPressAndHoldView *)v5->_pressAndHoldView setDelegate:v5];
    [(UIKeyboardPopoverController *)v5 setContentView:v5->_pressAndHoldView];
    [(UIViewController *)v5 setPreferredContentSize:v7, v9];
  }

  return v5;
}

- (BOOL)handleHardwareKeyboardEvent:(id)a3
{
  v4 = a3;
  v5 = [[UIKey alloc] initWithKeyboardEvent:v4];
  LOBYTE(self) = [(UIPressAndHoldPopoverController *)self handleKeyInputForPressAndHoldSelector:v4];

  return self;
}

+ (BOOL)canPresentPressAndHoldPopoverForEvent:(id)a3
{
  v3 = a3;
  TUIPressAndHoldViewClass = getTUIPressAndHoldViewClass();
  v5 = [v3 _modifiedInput];

  v6 = [TUIPressAndHoldViewClass accentedCharactersForKeyString:v5];
  LOBYTE(TUIPressAndHoldViewClass) = [v6 count] != 0;

  return TUIPressAndHoldViewClass;
}

+ (BOOL)canPresentPressAndHoldPopoverForKeyString:(id)a3
{
  v3 = a3;
  v4 = [getTUIPressAndHoldViewClass() accentedCharactersForKeyString:v3];

  LOBYTE(v3) = [v4 count] != 0;
  return v3;
}

- (BOOL)isSamePressAndHoldPopoverForKeyString:(id)a3
{
  pressAndHoldView = self->_pressAndHoldView;
  if (!pressAndHoldView)
  {
    return 0;
  }

  v4 = a3;
  v5 = [(TUIPressAndHoldView *)pressAndHoldView currentKeyString];
  v6 = [v4 isEqualToString:v5];

  return v6;
}

- (BOOL)handleKeyInputForPressAndHoldSelector:(id)a3
{
  v4 = a3;
  if (![v4 _keyCode])
  {
    v6 = 0;
    goto LABEL_13;
  }

  [v4 _hidEvent];
  IntegerValue = IOHIDEventGetIntegerValue();
  if ([v4 _keyCode] != 40)
  {
    if (IntegerValue == 7 && ([v4 _keyCode] >= 30 && objc_msgSend(v4, "_keyCode") < 39 || objc_msgSend(v4, "_keyCode") >= 89 && objc_msgSend(v4, "_keyCode") <= 97))
    {
      pressAndHoldView = self->_pressAndHoldView;
      v8 = [v4 _modifiedInput];
      LOBYTE(pressAndHoldView) = -[TUIPressAndHoldView handleNumberKey:](pressAndHoldView, "handleNumberKey:", [v8 intValue]);

      if (pressAndHoldView)
      {
        goto LABEL_4;
      }
    }

LABEL_12:
    v6 = [(UIPressAndHoldPopoverController *)self handleKeyInputForAccentSelector:v4];
    goto LABEL_13;
  }

  if (![(UIPressAndHoldPopoverController *)self handleSelectionEvent:v4])
  {
    goto LABEL_12;
  }

LABEL_4:
  v6 = 1;
LABEL_13:

  return v6;
}

- (BOOL)handleSelectionEvent:(id)a3
{
  if (([(TUIPressAndHoldView *)self->_pressAndHoldView pressAndHoldGridHasSelectedIndexPath]& 1) != 0)
  {
    [(TUIPressAndHoldView *)self->_pressAndHoldView handleSelection];
  }

  else
  {
    v4 = +[UIKeyboardImpl activeInstance];
    [v4 dismissPressAndHoldPopover];
  }

  return 1;
}

- (BOOL)handleKeyInputForAccentSelector:(id)a3
{
  v4 = [a3 _keyCode];
  v5 = 0;
  if (v4 > 223)
  {
    if ((v4 - 224) < 8)
    {
      return v5;
    }

    goto LABEL_15;
  }

  if (v4 <= 79)
  {
    switch(v4)
    {
      case '+':
        goto LABEL_6;
      case '9':
        return v5;
      case 'O':
LABEL_6:
        v5 = 1;
        if ([(UIPressAndHoldPopoverController *)self hasAccentVariantInForwardDirection:1])
        {
          [(UIPressAndHoldPopoverController *)self showAccentVariantInForwardDirection:1];
        }

        return v5;
    }

LABEL_15:
    v6 = +[UIKeyboardImpl activeInstance];
    [v6 dismissPressAndHoldPopover];

    return 0;
  }

  if ((v4 - 127) < 4)
  {
    return v5;
  }

  if (v4 != 80)
  {
    goto LABEL_15;
  }

  if ([(UIPressAndHoldPopoverController *)self hasAccentVariantInForwardDirection:0])
  {
    [(UIPressAndHoldPopoverController *)self showAccentVariantInForwardDirection:0];
  }

  return 1;
}

- (void)showAccentVariantInForwardDirection:(BOOL)a3
{
  [(TUIPressAndHoldView *)self->_pressAndHoldView showAccentVariantInForwardDirection:a3];
  v4 = [(TUIPressAndHoldView *)self->_pressAndHoldView selectedAccentVariant];
  [(UIPressAndHoldPopoverController *)self insertSelectedAccentVariant:v4 shouldDismissPopover:0];
}

- (void)insertSelectedAccentVariant:(id)a3 shouldDismissPopover:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = +[UIKeyboardImpl activeInstance];
  [v6 insertedAccentVariantFromPopover:v5];

  if (v4)
  {
    v7 = +[UIKeyboardImpl activeInstance];
    [v7 dismissPressAndHoldPopover];
  }
}

@end