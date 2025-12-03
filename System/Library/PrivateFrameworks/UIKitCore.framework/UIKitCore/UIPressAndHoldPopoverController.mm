@interface UIPressAndHoldPopoverController
+ (BOOL)canPresentPressAndHoldPopoverForEvent:(id)event;
+ (BOOL)canPresentPressAndHoldPopoverForKeyString:(id)string;
- (BOOL)handleHardwareKeyboardEvent:(id)event;
- (BOOL)handleKeyInputForAccentSelector:(id)selector;
- (BOOL)handleKeyInputForPressAndHoldSelector:(id)selector;
- (BOOL)handleSelectionEvent:(id)event;
- (BOOL)isSamePressAndHoldPopoverForKeyString:(id)string;
- (UIPressAndHoldPopoverController)initWithKeyString:(id)string;
- (void)insertSelectedAccentVariant:(id)variant shouldDismissPopover:(BOOL)popover;
- (void)showAccentVariantInForwardDirection:(BOOL)direction;
@end

@implementation UIPressAndHoldPopoverController

- (UIPressAndHoldPopoverController)initWithKeyString:(id)string
{
  stringCopy = string;
  v13.receiver = self;
  v13.super_class = UIPressAndHoldPopoverController;
  v5 = [(UIKeyboardPopoverController *)&v13 init];
  if (v5)
  {
    [getTUIPressAndHoldViewClass() requiredPopoverSizeForKeyString:stringCopy];
    v7 = v6;
    v9 = v8;
    v10 = [objc_alloc(getTUIPressAndHoldViewClass()) initWithFrame:stringCopy keyString:{0.0, 0.0, v6, v8}];
    pressAndHoldView = v5->_pressAndHoldView;
    v5->_pressAndHoldView = v10;

    [(TUIPressAndHoldView *)v5->_pressAndHoldView setDelegate:v5];
    [(UIKeyboardPopoverController *)v5 setContentView:v5->_pressAndHoldView];
    [(UIViewController *)v5 setPreferredContentSize:v7, v9];
  }

  return v5;
}

- (BOOL)handleHardwareKeyboardEvent:(id)event
{
  eventCopy = event;
  v5 = [[UIKey alloc] initWithKeyboardEvent:eventCopy];
  LOBYTE(self) = [(UIPressAndHoldPopoverController *)self handleKeyInputForPressAndHoldSelector:eventCopy];

  return self;
}

+ (BOOL)canPresentPressAndHoldPopoverForEvent:(id)event
{
  eventCopy = event;
  TUIPressAndHoldViewClass = getTUIPressAndHoldViewClass();
  _modifiedInput = [eventCopy _modifiedInput];

  v6 = [TUIPressAndHoldViewClass accentedCharactersForKeyString:_modifiedInput];
  LOBYTE(TUIPressAndHoldViewClass) = [v6 count] != 0;

  return TUIPressAndHoldViewClass;
}

+ (BOOL)canPresentPressAndHoldPopoverForKeyString:(id)string
{
  stringCopy = string;
  v4 = [getTUIPressAndHoldViewClass() accentedCharactersForKeyString:stringCopy];

  LOBYTE(stringCopy) = [v4 count] != 0;
  return stringCopy;
}

- (BOOL)isSamePressAndHoldPopoverForKeyString:(id)string
{
  pressAndHoldView = self->_pressAndHoldView;
  if (!pressAndHoldView)
  {
    return 0;
  }

  stringCopy = string;
  currentKeyString = [(TUIPressAndHoldView *)pressAndHoldView currentKeyString];
  v6 = [stringCopy isEqualToString:currentKeyString];

  return v6;
}

- (BOOL)handleKeyInputForPressAndHoldSelector:(id)selector
{
  selectorCopy = selector;
  if (![selectorCopy _keyCode])
  {
    v6 = 0;
    goto LABEL_13;
  }

  [selectorCopy _hidEvent];
  IntegerValue = IOHIDEventGetIntegerValue();
  if ([selectorCopy _keyCode] != 40)
  {
    if (IntegerValue == 7 && ([selectorCopy _keyCode] >= 30 && objc_msgSend(selectorCopy, "_keyCode") < 39 || objc_msgSend(selectorCopy, "_keyCode") >= 89 && objc_msgSend(selectorCopy, "_keyCode") <= 97))
    {
      pressAndHoldView = self->_pressAndHoldView;
      _modifiedInput = [selectorCopy _modifiedInput];
      LOBYTE(pressAndHoldView) = -[TUIPressAndHoldView handleNumberKey:](pressAndHoldView, "handleNumberKey:", [_modifiedInput intValue]);

      if (pressAndHoldView)
      {
        goto LABEL_4;
      }
    }

LABEL_12:
    v6 = [(UIPressAndHoldPopoverController *)self handleKeyInputForAccentSelector:selectorCopy];
    goto LABEL_13;
  }

  if (![(UIPressAndHoldPopoverController *)self handleSelectionEvent:selectorCopy])
  {
    goto LABEL_12;
  }

LABEL_4:
  v6 = 1;
LABEL_13:

  return v6;
}

- (BOOL)handleSelectionEvent:(id)event
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

- (BOOL)handleKeyInputForAccentSelector:(id)selector
{
  _keyCode = [selector _keyCode];
  v5 = 0;
  if (_keyCode > 223)
  {
    if ((_keyCode - 224) < 8)
    {
      return v5;
    }

    goto LABEL_15;
  }

  if (_keyCode <= 79)
  {
    switch(_keyCode)
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

  if ((_keyCode - 127) < 4)
  {
    return v5;
  }

  if (_keyCode != 80)
  {
    goto LABEL_15;
  }

  if ([(UIPressAndHoldPopoverController *)self hasAccentVariantInForwardDirection:0])
  {
    [(UIPressAndHoldPopoverController *)self showAccentVariantInForwardDirection:0];
  }

  return 1;
}

- (void)showAccentVariantInForwardDirection:(BOOL)direction
{
  [(TUIPressAndHoldView *)self->_pressAndHoldView showAccentVariantInForwardDirection:direction];
  selectedAccentVariant = [(TUIPressAndHoldView *)self->_pressAndHoldView selectedAccentVariant];
  [(UIPressAndHoldPopoverController *)self insertSelectedAccentVariant:selectedAccentVariant shouldDismissPopover:0];
}

- (void)insertSelectedAccentVariant:(id)variant shouldDismissPopover:(BOOL)popover
{
  popoverCopy = popover;
  variantCopy = variant;
  v6 = +[UIKeyboardImpl activeInstance];
  [v6 insertedAccentVariantFromPopover:variantCopy];

  if (popoverCopy)
  {
    v7 = +[UIKeyboardImpl activeInstance];
    [v7 dismissPressAndHoldPopover];
  }
}

@end