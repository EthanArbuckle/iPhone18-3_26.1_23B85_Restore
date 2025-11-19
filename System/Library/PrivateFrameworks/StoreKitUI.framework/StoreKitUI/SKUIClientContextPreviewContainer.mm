@interface SKUIClientContextPreviewContainer
- (SKUIClientContextPreviewContainer)initWithAppContext:(id)a3 clientContext:(id)a4 previewContainerViewController:(id)a5;
- (void)previewDocument:(id)a3 :(id)a4;
@end

@implementation SKUIClientContextPreviewContainer

- (SKUIClientContextPreviewContainer)initWithAppContext:(id)a3 clientContext:(id)a4 previewContainerViewController:(id)a5
{
  v8 = a4;
  v9 = a5;
  v13.receiver = self;
  v13.super_class = SKUIClientContextPreviewContainer;
  v10 = [(IKJSObject *)&v13 initWithAppContext:a3];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_clientContext, v8);
    objc_storeStrong(&v11->_previewContainerViewController, a5);
  }

  return v11;
}

- (void)previewDocument:(id)a3 :(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6 && self->_previewContainerViewController)
  {
    v8 = [(IKJSObject *)self appContext];
    if ([MEMORY[0x277D1B038] instancesRespondToSelector:sel_initWithAppContext_document_owner_])
    {
      v9 = [objc_alloc(MEMORY[0x277D1B038]) initWithAppContext:v8 document:v6 owner:self];
    }

    else
    {
      v9 = 0;
    }

    v10 = [(IKJSObject *)self appContext];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __54__SKUIClientContextPreviewContainer_previewDocument::__block_invoke;
    v12[3] = &unk_2781FCA48;
    v12[4] = self;
    v13 = v9;
    v14 = v7;
    v11 = v9;
    [v10 evaluateDelegateBlockSync:v12];
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