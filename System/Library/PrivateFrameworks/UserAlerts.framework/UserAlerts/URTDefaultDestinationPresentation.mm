@interface URTDefaultDestinationPresentation
- (URTDefaultDestinationPresentation)initWithAlert:(id)alert forDestination:(int64_t)destination preferredPresentationStyle:(int64_t)style;
- (URTDestinationPresentationDelegate)delegate;
- (void)_invokeDelegateForResponseFlags:(unint64_t)flags;
- (void)invalidate;
- (void)present;
@end

@implementation URTDefaultDestinationPresentation

- (URTDefaultDestinationPresentation)initWithAlert:(id)alert forDestination:(int64_t)destination preferredPresentationStyle:(int64_t)style
{
  alertCopy = alert;
  userNotificationRepresentation = [alertCopy userNotificationRepresentation];
  v13.receiver = self;
  v13.super_class = URTDefaultDestinationPresentation;
  v11 = [(URTUserNotificationPresentation *)&v13 initWithContents:userNotificationRepresentation flags:3];

  if (v11)
  {
    objc_storeStrong(&v11->_alert, alert);
    v11->_destination = destination;
    v11->_preferredPresentationStyle = style;
  }

  return v11;
}

- (void)invalidate
{
  if (self->_runLoopSource)
  {
    Main = CFRunLoopGetMain();
    CFRunLoopRemoveSource(Main, self->_runLoopSource, *MEMORY[0x277CBF058]);
    CFRelease(self->_runLoopSource);
    self->_runLoopSource = 0;
  }

  v4.receiver = self;
  v4.super_class = URTDefaultDestinationPresentation;
  [(URTUserNotificationPresentation *)&v4 invalidate];
}

- (void)present
{
  v8.receiver = self;
  v8.super_class = URTDefaultDestinationPresentation;
  [(URTUserNotificationPresentation *)&v8 present];
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __44__URTDefaultDestinationPresentation_present__block_invoke;
  v5[3] = &unk_279E0BD60;
  objc_copyWeak(&v6, &location);
  v3 = [(URTUserNotificationPresentation *)self createRunLoopSourceOrdered:0 handler:v5];
  if (v3)
  {
    Main = CFRunLoopGetMain();
    CFRunLoopAddSource(Main, v3, *MEMORY[0x277CBF058]);
    self->_runLoopSource = v3;
  }

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __44__URTDefaultDestinationPresentation_present__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _invokeDelegateForResponseFlags:a3];
}

- (void)_invokeDelegateForResponseFlags:(unint64_t)flags
{
  if ((flags & 3) > 1)
  {
    if ((flags & 3) != 2)
    {
      return;
    }

    delegate = [(URTDefaultDestinationPresentation *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if ((v7 & 1) == 0)
    {
      return;
    }

    delegate2 = [(URTDefaultDestinationPresentation *)self delegate];
    [delegate2 handleOtherActionForAlertPresentation:self];
  }

  else if ((flags & 3) != 0)
  {
    delegate3 = [(URTDefaultDestinationPresentation *)self delegate];
    v9 = objc_opt_respondsToSelector();

    if ((v9 & 1) == 0)
    {
      return;
    }

    delegate2 = [(URTDefaultDestinationPresentation *)self delegate];
    [delegate2 handleCancelActionForAlertPresentation:self];
  }

  else
  {
    delegate4 = [(URTDefaultDestinationPresentation *)self delegate];
    v5 = objc_opt_respondsToSelector();

    if ((v5 & 1) == 0)
    {
      return;
    }

    delegate2 = [(URTDefaultDestinationPresentation *)self delegate];
    [delegate2 handleDefaultActionForAlertPresentation:self];
  }
}

- (URTDestinationPresentationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end