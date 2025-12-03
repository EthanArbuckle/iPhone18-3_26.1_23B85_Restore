@interface TSKAbstractAlert
- (TSKAbstractAlert)init;
- (id)buttonTitleAtIndex:(int64_t)index;
- (int64_t)addButtonWithTitle:(id)title;
- (int64_t)cancelButtonIndex;
- (int64_t)firstOtherButtonIndex;
- (int64_t)numberOfButtons;
- (int64_t)showSynchronously;
- (void)_didPresentAlertView:(id)view;
- (void)applicationWillEnterForeground:(id)foreground;
- (void)clickedButtonAtIndex:(int64_t)index;
- (void)dealloc;
- (void)didDismissWithButtonIndex:(int64_t)index;
- (void)dismissWithClickedButtonIndex:(int64_t)index animated:(BOOL)animated;
- (void)enterBackground;
- (void)setCancelButtonIndex:(int64_t)index;
- (void)show;
- (void)showAlert;
- (void)showWithClickedButtonBlock:(id)block;
- (void)showWithDelegate:(id)delegate context:(id)context;
- (void)showWithDismissedByButtonBlock:(id)block;
- (void)willDismissWithButtonIndex:(int64_t)index;
- (void)willPresentAlertView;
@end

@implementation TSKAbstractAlert

- (TSKAbstractAlert)init
{
  v7.receiver = self;
  v7.super_class = TSKAbstractAlert;
  v2 = [(TSKAbstractAlert *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_result = 0;
    v2->_cancelOnEnterBackground = 0;
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel_applicationWillEnterForeground_ name:*MEMORY[0x277D76758] object:0];
    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:v3 selector:sel_applicationDidEnterBackground_ name:*MEMORY[0x277D76660] object:0];
  }

  return v3;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D76758] object:0];
  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 removeObserver:self name:*MEMORY[0x277D76660] object:0];
  [(TSKAbstractAlert *)self setRetainedDelegate:0];
  clickedBlock = self->_clickedBlock;
  if (clickedBlock)
  {
    _Block_release(clickedBlock);
  }

  dismissedBlock = self->_dismissedBlock;
  if (dismissedBlock)
  {
    _Block_release(dismissedBlock);
  }

  v7.receiver = self;
  v7.super_class = TSKAbstractAlert;
  [(TSKAbstractAlert *)&v7 dealloc];
}

- (int64_t)addButtonWithTitle:(id)title
{
  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKAbstractAlert addButtonWithTitle:]"];
  [currentHandler handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKUIAlert.mm"), 67, @"Abstract method"}];
  objc_exception_throw([MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:objc_msgSend(MEMORY[0x277CCACA8] userInfo:{"stringWithFormat:", @"%@: %s", @"Abstract method", "-[TSKAbstractAlert addButtonWithTitle:]"), 0}]);
}

- (void)showWithDelegate:(id)delegate context:(id)context
{
  self->_delegate = delegate;
  [(TSKAbstractAlert *)self setContext:context];

  [(TSKAbstractAlert *)self show];
}

- (void)show
{
  self->_result = 0x7FFFFFFFFFFFFFFFLL;
  *&self->_inBackground = 0;
  *&self->_didPresentAlertView = 0;
  selfCopy = self;

  [(TSKAbstractAlert *)self showAlert];
}

- (void)showWithClickedButtonBlock:(id)block
{
  self->_clickedBlock = _Block_copy(block);
  self->_result = 0x7FFFFFFFFFFFFFFFLL;
  selfCopy = self;

  [(TSKAbstractAlert *)self showAlert];
}

- (void)showWithDismissedByButtonBlock:(id)block
{
  self->_dismissedBlock = _Block_copy(block);
  self->_result = 0x7FFFFFFFFFFFFFFFLL;
  selfCopy = self;

  [(TSKAbstractAlert *)self showAlert];
}

- (int64_t)showSynchronously
{
  self->_delegate = 0;
  self->_result = 0x7FFFFFFFFFFFFFFFLL;
  *&self->_inBackground = 0;
  *&self->_didPresentAlertView = 0;
  [(TSKAbstractAlert *)self setContext:0];
  [(TSKAbstractAlert *)self setCancelOnEnterBackground:1];
  selfCopy = self;
  if ([objc_msgSend(MEMORY[0x277D75128] "sharedApplication")] == 2)
  {
    [(TSKAbstractAlert *)self enterBackground];
  }

  else
  {
    [(TSKAbstractAlert *)self showAlert];
  }

  result = self->_result;
  if (result == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = *MEMORY[0x277CBF058];
    do
    {
      CFRunLoopRunInMode(v5, 0.0, 1u);
      if ([objc_msgSend(MEMORY[0x277D75128] "sharedApplication")] == 2 && self->_didPresentAlertView)
      {
        [(TSKAbstractAlert *)self enterBackground];
      }

      result = self->_result;
    }

    while (result == 0x7FFFFFFFFFFFFFFFLL);
  }

  return result;
}

- (id)buttonTitleAtIndex:(int64_t)index
{
  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKAbstractAlert buttonTitleAtIndex:]"];
  [currentHandler handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKUIAlert.mm"), 159, @"Abstract method"}];
  objc_exception_throw([MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:objc_msgSend(MEMORY[0x277CCACA8] userInfo:{"stringWithFormat:", @"%@: %s", @"Abstract method", "-[TSKAbstractAlert buttonTitleAtIndex:]"), 0}]);
}

- (int64_t)numberOfButtons
{
  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKAbstractAlert numberOfButtons]"];
  [currentHandler handleFailureInFunction:v3 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKUIAlert.mm"), 164, @"Abstract method"}];
  objc_exception_throw([MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:objc_msgSend(MEMORY[0x277CCACA8] userInfo:{"stringWithFormat:", @"%@: %s", @"Abstract method", "-[TSKAbstractAlert numberOfButtons]"), 0}]);
}

- (int64_t)cancelButtonIndex
{
  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKAbstractAlert cancelButtonIndex]"];
  [currentHandler handleFailureInFunction:v3 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKUIAlert.mm"), 169, @"Abstract method"}];
  objc_exception_throw([MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:objc_msgSend(MEMORY[0x277CCACA8] userInfo:{"stringWithFormat:", @"%@: %s", @"Abstract method", "-[TSKAbstractAlert cancelButtonIndex]"), 0}]);
}

- (void)setCancelButtonIndex:(int64_t)index
{
  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKAbstractAlert setCancelButtonIndex:]"];
  [currentHandler handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKUIAlert.mm"), 174, @"Abstract method"}];
  objc_exception_throw([MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:objc_msgSend(MEMORY[0x277CCACA8] userInfo:{"stringWithFormat:", @"%@: %s", @"Abstract method", "-[TSKAbstractAlert setCancelButtonIndex:]"), 0}]);
}

- (int64_t)firstOtherButtonIndex
{
  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKAbstractAlert firstOtherButtonIndex]"];
  [currentHandler handleFailureInFunction:v3 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKUIAlert.mm"), 179, @"Abstract method"}];
  objc_exception_throw([MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:objc_msgSend(MEMORY[0x277CCACA8] userInfo:{"stringWithFormat:", @"%@: %s", @"Abstract method", "-[TSKAbstractAlert firstOtherButtonIndex]"), 0}]);
}

- (void)dismissWithClickedButtonIndex:(int64_t)index animated:(BOOL)animated
{
  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKAbstractAlert dismissWithClickedButtonIndex:animated:]"];
  [currentHandler handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKUIAlert.mm"), 184, @"Abstract method"}];
  objc_exception_throw([MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:objc_msgSend(MEMORY[0x277CCACA8] userInfo:{"stringWithFormat:", @"%@: %s", @"Abstract method", "-[TSKAbstractAlert dismissWithClickedButtonIndex:animated:]"), 0}]);
}

- (void)clickedButtonAtIndex:(int64_t)index
{
  if (!self->_clickedButtonAtIndex && (![(TSKAbstractAlert *)self inBackground]|| [(TSKAbstractAlert *)self cancelOnEnterBackground]))
  {
    if (!self->_isDelegateRetained)
    {
      [(TSKAbstractAlert *)self setRetainedDelegate:self->_delegate];
      self->_isDelegateRetained = 1;
    }

    self->_clickedButtonAtIndex = 1;
    self->_result = index;
    if (self->_delegate && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [(TSKUIAlertProtocol *)self->_delegate alert:self clickedButtonAtIndex:index withContext:self->_context];
    }

    clickedBlock = self->_clickedBlock;
    if (clickedBlock)
    {
      v6 = *(clickedBlock + 2);

      v6();
    }
  }
}

- (void)didDismissWithButtonIndex:(int64_t)index
{
  if (!self->_didDismissWithButtonIndex && (![(TSKAbstractAlert *)self inBackground]|| [(TSKAbstractAlert *)self cancelOnEnterBackground]))
  {
    self->_didDismissWithButtonIndex = 1;
    self->_result = index;
    if (self->_delegate && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [(TSKUIAlertProtocol *)self->_delegate alert:self didDismissWithButtonIndex:index withContext:self->_context];
    }

    dismissedBlock = self->_dismissedBlock;
    if (dismissedBlock)
    {
      dismissedBlock[2](dismissedBlock, self, index);
    }

    [(TSKAbstractAlert *)self setCancelOnEnterBackground:0];
    if (self->_isDelegateRetained)
    {
      [(TSKAbstractAlert *)self setRetainedDelegate:0];
      self->_isDelegateRetained = 0;
    }

    self->_delegate = 0;

    selfCopy = self;
  }
}

- (void)willDismissWithButtonIndex:(int64_t)index
{
  if (!self->_willDismissWithButtonIndex && (![(TSKAbstractAlert *)self inBackground]|| [(TSKAbstractAlert *)self cancelOnEnterBackground]))
  {
    self->_willDismissWithButtonIndex = 1;
    if (self->_inBackground)
    {

      [(TSKAbstractAlert *)self didDismissWithButtonIndex:index];
    }
  }
}

- (void)_didPresentAlertView:(id)view
{
  if (!self->_didPresentAlertView)
  {
    self->_didPresentAlertView = 1;
    v4 = [objc_msgSend(objc_msgSend(view "window")];
    if (v4 == 2 || v4 == -1)
    {

      [(TSKAbstractAlert *)self enterBackground];
    }
  }
}

- (void)willPresentAlertView
{
  if (!self->_willPresentAlertView)
  {
    self->_willPresentAlertView = 1;
  }
}

- (void)enterBackground
{
  if (!self->_inBackground && !self->_didDismissWithButtonIndex)
  {
    self->_inBackground = 1;
    self->_result = [(TSKAbstractAlert *)self cancelButtonIndex];
    [(TSKAbstractAlert *)self clickedButtonAtIndex:[(TSKAbstractAlert *)self cancelButtonIndex]];
    cancelButtonIndex = [(TSKAbstractAlert *)self cancelButtonIndex];

    [(TSKAbstractAlert *)self dismissWithClickedButtonIndex:cancelButtonIndex animated:0];
  }
}

- (void)applicationWillEnterForeground:(id)foreground
{
  if (self->_inBackground)
  {
    block[7] = v3;
    block[8] = v4;
    if (!self->_didDismissWithButtonIndex)
    {
      self->_inBackground = 0;
      if (![(TSKAbstractAlert *)self cancelOnEnterBackground])
      {
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __51__TSKAbstractAlert_applicationWillEnterForeground___block_invoke;
        block[3] = &unk_279D46770;
        block[4] = self;
        dispatch_async(MEMORY[0x277D85CD0], block);
      }
    }
  }
}

- (void)showAlert
{
  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKAbstractAlert showAlert]"];
  [currentHandler handleFailureInFunction:v3 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKUIAlert.mm"), 329, @"Abstract method"}];
  objc_exception_throw([MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:objc_msgSend(MEMORY[0x277CCACA8] userInfo:{"stringWithFormat:", @"%@: %s", @"Abstract method", "-[TSKAbstractAlert showAlert]"), 0}]);
}

@end