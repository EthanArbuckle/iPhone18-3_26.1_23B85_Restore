@interface SKUIClientContextPreviewContainer
- (SKUIClientContextPreviewContainer)initWithAppContext:(id)context clientContext:(id)clientContext previewContainerViewController:(id)controller;
- (void)previewDocument:(id)document :(id)a4;
@end

@implementation SKUIClientContextPreviewContainer

- (SKUIClientContextPreviewContainer)initWithAppContext:(id)context clientContext:(id)clientContext previewContainerViewController:(id)controller
{
  clientContextCopy = clientContext;
  controllerCopy = controller;
  v13.receiver = self;
  v13.super_class = SKUIClientContextPreviewContainer;
  v10 = [(IKJSObject *)&v13 initWithAppContext:context];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_clientContext, clientContextCopy);
    objc_storeStrong(&v11->_previewContainerViewController, controller);
  }

  return v11;
}

- (void)previewDocument:(id)document :(id)a4
{
  documentCopy = document;
  v7 = a4;
  if (documentCopy && self->_previewContainerViewController)
  {
    appContext = [(IKJSObject *)self appContext];
    if ([MEMORY[0x277D1B038] instancesRespondToSelector:sel_initWithAppContext_document_owner_])
    {
      v9 = [objc_alloc(MEMORY[0x277D1B038]) initWithAppContext:appContext document:documentCopy owner:self];
    }

    else
    {
      v9 = 0;
    }

    appContext2 = [(IKJSObject *)self appContext];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __54__SKUIClientContextPreviewContainer_previewDocument::__block_invoke;
    v12[3] = &unk_2781FCA48;
    v12[4] = self;
    v13 = v9;
    v14 = v7;
    v11 = v9;
    [appContext2 evaluateDelegateBlockSync:v12];
  }
}

void __54__SKUIClientContextPreviewContainer_previewDocument::__block_invoke(void *a1)
{
  if (*(a1[4] + 32))
  {
    v2 = [SKUIDocumentContainerViewController alloc];
    v4 = a1[5];
    v3 = a1[6];
    WeakRetained = objc_loadWeakRetained((a1[4] + 24));
    v6 = [(SKUIDocumentContainerViewController *)v2 initWithDocument:v4 options:v3 clientContext:WeakRetained];

    [*(a1[4] + 32) setChildViewController:v6];
  }
}

@end