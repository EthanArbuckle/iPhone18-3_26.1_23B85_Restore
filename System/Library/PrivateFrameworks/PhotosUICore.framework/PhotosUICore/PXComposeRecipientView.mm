@interface PXComposeRecipientView
- (PXComposeRecipientView)init;
- (PXComposeRecipientViewDelegate)delegate;
- (void)addRecipient:(id)a3;
- (void)addRecipients:(id)a3;
- (void)removeRecipient:(id)a3;
- (void)removeRecipients:(id)a3;
- (void)setDelegate:(id)a3;
@end

@implementation PXComposeRecipientView

- (PXComposeRecipientViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setDelegate:(id)a3
{
  obj = a3;
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

- (void)removeRecipients:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [v6 handleFailureInMethod:a2 object:self file:@"PXComposeRecipientView.m" lineNumber:38 description:{@"Method %s is a responsibility of subclass %@", "-[PXComposeRecipientView removeRecipients:]", v8}];

  abort();
}

- (void)addRecipients:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [v6 handleFailureInMethod:a2 object:self file:@"PXComposeRecipientView.m" lineNumber:34 description:{@"Method %s is a responsibility of subclass %@", "-[PXComposeRecipientView addRecipients:]", v8}];

  abort();
}

- (void)removeRecipient:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [v6 handleFailureInMethod:a2 object:self file:@"PXComposeRecipientView.m" lineNumber:30 description:{@"Method %s is a responsibility of subclass %@", "-[PXComposeRecipientView removeRecipient:]", v8}];

  abort();
}

- (void)addRecipient:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [v6 handleFailureInMethod:a2 object:self file:@"PXComposeRecipientView.m" lineNumber:26 description:{@"Method %s is a responsibility of subclass %@", "-[PXComposeRecipientView addRecipient:]", v8}];

  abort();
}

- (PXComposeRecipientView)init
{
  v3.receiver = self;
  v3.super_class = PXComposeRecipientView;
  return [(PXComposeRecipientView *)&v3 init];
}

@end