@interface SRUIFCardLoader
- (BOOL)loadCard:(id)a3 withCompletionHandler:(id)a4;
- (SRUIFCardLoaderDelegate)delegate;
- (void)setActive:(BOOL)a3;
@end

@implementation SRUIFCardLoader

- (void)setActive:(BOOL)a3
{
  if (self->_active != a3)
  {
    self->_active = a3;
    if (a3)
    {
      [(SRUIFCardLoader *)self _registerWithSearchFoundation];
    }

    else
    {
      [(SRUIFCardLoader *)self _unregisterWithSearchFoundation];
    }
  }
}

- (BOOL)loadCard:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    goto LABEL_7;
  }

  if ([v6 type] != 3 || objc_msgSend(v6, "source") != 2 || (-[SRUIFCardLoader delegate](self, "delegate"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "cardLoader:shouldLoadCard:", self, v6), v8, !v9))
  {
    v7[2](v7, v6, 0);
LABEL_7:
    v11 = 0;
    goto LABEL_8;
  }

  v10 = [(SRUIFCardLoader *)self delegate];
  v11 = [v10 cardLoader:self loadCard:v6 withCompletionHandler:v7];

LABEL_8:
  return v11;
}

- (SRUIFCardLoaderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end