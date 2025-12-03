@interface SRUIFCardLoader
- (BOOL)loadCard:(id)card withCompletionHandler:(id)handler;
- (SRUIFCardLoaderDelegate)delegate;
- (void)setActive:(BOOL)active;
@end

@implementation SRUIFCardLoader

- (void)setActive:(BOOL)active
{
  if (self->_active != active)
  {
    self->_active = active;
    if (active)
    {
      [(SRUIFCardLoader *)self _registerWithSearchFoundation];
    }

    else
    {
      [(SRUIFCardLoader *)self _unregisterWithSearchFoundation];
    }
  }
}

- (BOOL)loadCard:(id)card withCompletionHandler:(id)handler
{
  cardCopy = card;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    goto LABEL_7;
  }

  if ([cardCopy type] != 3 || objc_msgSend(cardCopy, "source") != 2 || (-[SRUIFCardLoader delegate](self, "delegate"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "cardLoader:shouldLoadCard:", self, cardCopy), v8, !v9))
  {
    handlerCopy[2](handlerCopy, cardCopy, 0);
LABEL_7:
    v11 = 0;
    goto LABEL_8;
  }

  delegate = [(SRUIFCardLoader *)self delegate];
  v11 = [delegate cardLoader:self loadCard:cardCopy withCompletionHandler:handlerCopy];

LABEL_8:
  return v11;
}

- (SRUIFCardLoaderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end