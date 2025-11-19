@interface TVDocumentViewController
+ (id)viewControllerWithContext:(id)a3 forAppController:(id)a4;
- (BOOL)handleEvent:(id)a3 withElement:(id)a4 targetResponder:(id)a5;
- (TVApplicationController)appController;
- (TVDocumentViewControllerDelegate)delegate;
- (id)tvdvc_initWithNibName:(id)a3 bundle:(id)a4;
- (void)didFailUpdateWithError:(id)a3;
- (void)didUpdateDocument;
- (void)didUpdateWithContext:(id)a3;
- (void)setDelegate:(id)a3;
- (void)updateUsingContext:(id)a3;
- (void)willUpdateDocument;
@end

@implementation TVDocumentViewController

- (id)tvdvc_initWithNibName:(id)a3 bundle:(id)a4
{
  v8.receiver = self;
  v8.super_class = TVDocumentViewController;
  v6 = [(TVDocumentViewController *)&v8 initWithNibName:a3 bundle:a4];

  return v6;
}

+ (id)viewControllerWithContext:(id)a3 forAppController:(id)a4
{
  v5 = MEMORY[0x277D1B0D8];
  v6 = a4;
  v7 = a3;
  v8 = [[v5 alloc] initWithContextDictionary:v7 element:0];
  v9 = objc_alloc(MEMORY[0x277D1B090]);
  v10 = [v6 _appContext];

  v11 = [v9 initWithAppContext:v10 serviceContext:v8];
  v12 = [[_TVAppDocumentRequestController alloc] initWithDocumentServiceRequest:v11];
  [(TVDocumentViewController *)v12 setDocumentContext:v7];

  return v12;
}

- (void)setDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  v6 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    v5 = [obj conformsToProtocol:&unk_287EAD940];
    if (v5)
    {
      v7 = objc_loadWeakRetained(&self->_delegate);
      p_delegateFlags = &self->_delegateFlags;
      self->_delegateFlags.respondsToWillUpdate = objc_opt_respondsToSelector() & 1;

      v9 = objc_loadWeakRetained(&self->_delegate);
      self->_delegateFlags.respondsToDidUpdate = objc_opt_respondsToSelector() & 1;

      v10 = objc_loadWeakRetained(&self->_delegate);
      self->_delegateFlags.respondsToHandleEvent = objc_opt_respondsToSelector() & 1;

      v11 = objc_loadWeakRetained(&self->_delegate);
      self->_delegateFlags.respondsToDidFailWithError = objc_opt_respondsToSelector() & 1;

      v12 = objc_loadWeakRetained(&self->_delegate);
      p_delegateFlags->respondsToDidUpdateWithContext = objc_opt_respondsToSelector() & 1;
    }

    else
    {
      *&self->_delegateFlags.respondsToWillUpdate = 0;
      self->_delegateFlags.respondsToDidUpdateWithContext = 0;
    }

    v6 = obj;
  }

  MEMORY[0x2821F96F8](v5, v6);
}

- (void)updateUsingContext:(id)a3
{
  v4 = a3;
  v6 = [(TVDocumentViewController *)self documentContext];
  [(TVDocumentViewController *)self setDocumentContext:v4];

  v5 = [(TVDocumentViewController *)self documentContext];

  if (v6 != v5)
  {
    [(TVDocumentViewController *)self didChangeDocumentContext];
  }
}

- (void)willUpdateDocument
{
  if (self->_delegateFlags.respondsToWillUpdate)
  {
    v4 = [(TVDocumentViewController *)self delegate];
    [v4 documentViewControllerWillUpdate:self];
  }
}

- (void)didUpdateDocument
{
  if (self->_delegateFlags.respondsToDidUpdate)
  {
    v4 = [(TVDocumentViewController *)self delegate];
    [v4 documentViewControllerDidUpdate:self];
  }
}

- (void)didUpdateWithContext:(id)a3
{
  if (self->_delegateFlags.respondsToDidUpdateWithContext)
  {
    v5 = a3;
    v6 = [(TVDocumentViewController *)self delegate];
    [v6 documentViewController:self didUpdateWithContext:v5];
  }
}

- (void)didFailUpdateWithError:(id)a3
{
  if (self->_delegateFlags.respondsToDidFailWithError)
  {
    v5 = a3;
    v6 = [(TVDocumentViewController *)self delegate];
    [v6 documentViewController:self didFailUpdateWithError:v5];
  }
}

- (BOOL)handleEvent:(id)a3 withElement:(id)a4 targetResponder:(id)a5
{
  if (!self->_delegateFlags.respondsToHandleEvent)
  {
    return 0;
  }

  v6 = self;
  v7 = a4;
  v8 = a3;
  v9 = [(TVDocumentViewController *)v6 delegate];
  LOBYTE(v6) = [v9 documentViewController:v6 handleEvent:v8 withElement:v7];

  return v6;
}

- (TVApplicationController)appController
{
  WeakRetained = objc_loadWeakRetained(&self->_appController);

  return WeakRetained;
}

- (TVDocumentViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end