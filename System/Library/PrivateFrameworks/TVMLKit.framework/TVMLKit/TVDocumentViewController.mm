@interface TVDocumentViewController
+ (id)viewControllerWithContext:(id)context forAppController:(id)controller;
- (BOOL)handleEvent:(id)event withElement:(id)element targetResponder:(id)responder;
- (TVApplicationController)appController;
- (TVDocumentViewControllerDelegate)delegate;
- (id)tvdvc_initWithNibName:(id)name bundle:(id)bundle;
- (void)didFailUpdateWithError:(id)error;
- (void)didUpdateDocument;
- (void)didUpdateWithContext:(id)context;
- (void)setDelegate:(id)delegate;
- (void)updateUsingContext:(id)context;
- (void)willUpdateDocument;
@end

@implementation TVDocumentViewController

- (id)tvdvc_initWithNibName:(id)name bundle:(id)bundle
{
  v8.receiver = self;
  v8.super_class = TVDocumentViewController;
  v6 = [(TVDocumentViewController *)&v8 initWithNibName:name bundle:bundle];

  return v6;
}

+ (id)viewControllerWithContext:(id)context forAppController:(id)controller
{
  v5 = MEMORY[0x277D1B0D8];
  controllerCopy = controller;
  contextCopy = context;
  v8 = [[v5 alloc] initWithContextDictionary:contextCopy element:0];
  v9 = objc_alloc(MEMORY[0x277D1B090]);
  _appContext = [controllerCopy _appContext];

  v11 = [v9 initWithAppContext:_appContext serviceContext:v8];
  v12 = [[_TVAppDocumentRequestController alloc] initWithDocumentServiceRequest:v11];
  [(TVDocumentViewController *)v12 setDocumentContext:contextCopy];

  return v12;
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
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

- (void)updateUsingContext:(id)context
{
  contextCopy = context;
  documentContext = [(TVDocumentViewController *)self documentContext];
  [(TVDocumentViewController *)self setDocumentContext:contextCopy];

  documentContext2 = [(TVDocumentViewController *)self documentContext];

  if (documentContext != documentContext2)
  {
    [(TVDocumentViewController *)self didChangeDocumentContext];
  }
}

- (void)willUpdateDocument
{
  if (self->_delegateFlags.respondsToWillUpdate)
  {
    delegate = [(TVDocumentViewController *)self delegate];
    [delegate documentViewControllerWillUpdate:self];
  }
}

- (void)didUpdateDocument
{
  if (self->_delegateFlags.respondsToDidUpdate)
  {
    delegate = [(TVDocumentViewController *)self delegate];
    [delegate documentViewControllerDidUpdate:self];
  }
}

- (void)didUpdateWithContext:(id)context
{
  if (self->_delegateFlags.respondsToDidUpdateWithContext)
  {
    contextCopy = context;
    delegate = [(TVDocumentViewController *)self delegate];
    [delegate documentViewController:self didUpdateWithContext:contextCopy];
  }
}

- (void)didFailUpdateWithError:(id)error
{
  if (self->_delegateFlags.respondsToDidFailWithError)
  {
    errorCopy = error;
    delegate = [(TVDocumentViewController *)self delegate];
    [delegate documentViewController:self didFailUpdateWithError:errorCopy];
  }
}

- (BOOL)handleEvent:(id)event withElement:(id)element targetResponder:(id)responder
{
  if (!self->_delegateFlags.respondsToHandleEvent)
  {
    return 0;
  }

  selfCopy = self;
  elementCopy = element;
  eventCopy = event;
  delegate = [(TVDocumentViewController *)selfCopy delegate];
  LOBYTE(selfCopy) = [delegate documentViewController:selfCopy handleEvent:eventCopy withElement:elementCopy];

  return selfCopy;
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