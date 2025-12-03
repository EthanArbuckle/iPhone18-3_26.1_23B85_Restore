@interface PXComposeRecipientView
- (PXComposeRecipientView)init;
- (PXComposeRecipientViewDelegate)delegate;
- (void)addRecipient:(id)recipient;
- (void)addRecipients:(id)recipients;
- (void)removeRecipient:(id)recipient;
- (void)removeRecipients:(id)recipients;
- (void)setDelegate:(id)delegate;
@end

@implementation PXComposeRecipientView

- (PXComposeRecipientViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    p_delegateRespondsTo = &self->_delegateRespondsTo;
    p_delegateRespondsTo->textDidChange = objc_opt_respondsToSelector() & 1;
    p_delegateRespondsTo->didFinishEnteringAddress = objc_opt_respondsToSelector() & 1;
    p_delegateRespondsTo->requestAddRecipient = objc_opt_respondsToSelector() & 1;
    p_delegateRespondsTo->didFinishPickingRecipient = objc_opt_respondsToSelector() & 1;
    p_delegateRespondsTo->disambiguateRecipient = objc_opt_respondsToSelector() & 1;
    p_delegateRespondsTo->didAddRecipient = objc_opt_respondsToSelector() & 1;
    p_delegateRespondsTo->didRemoveRecipient = objc_opt_respondsToSelector() & 1;
    p_delegateRespondsTo->didChangeSize = objc_opt_respondsToSelector() & 1;
  }
}

- (void)removeRecipients:(id)recipients
{
  recipientsCopy = recipients;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXComposeRecipientView.m" lineNumber:38 description:{@"Method %s is a responsibility of subclass %@", "-[PXComposeRecipientView removeRecipients:]", v8}];

  abort();
}

- (void)addRecipients:(id)recipients
{
  recipientsCopy = recipients;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXComposeRecipientView.m" lineNumber:34 description:{@"Method %s is a responsibility of subclass %@", "-[PXComposeRecipientView addRecipients:]", v8}];

  abort();
}

- (void)removeRecipient:(id)recipient
{
  recipientCopy = recipient;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXComposeRecipientView.m" lineNumber:30 description:{@"Method %s is a responsibility of subclass %@", "-[PXComposeRecipientView removeRecipient:]", v8}];

  abort();
}

- (void)addRecipient:(id)recipient
{
  recipientCopy = recipient;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXComposeRecipientView.m" lineNumber:26 description:{@"Method %s is a responsibility of subclass %@", "-[PXComposeRecipientView addRecipient:]", v8}];

  abort();
}

- (PXComposeRecipientView)init
{
  v3.receiver = self;
  v3.super_class = PXComposeRecipientView;
  return [(PXComposeRecipientView *)&v3 init];
}

@end