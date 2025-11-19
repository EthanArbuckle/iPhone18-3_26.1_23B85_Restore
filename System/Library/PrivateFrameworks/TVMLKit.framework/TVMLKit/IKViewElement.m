@interface IKViewElement
@end

@implementation IKViewElement

void __95__IKViewElement_TVMLKitAdditions__retrievePresentationDocumentWithResponder_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [*(a1 + 32) jsContext];
    v8 = [*(a1 + 40) retrieveJSElementForViewElement:*(a1 + 48) jsContext:v7];
    v9 = [objc_alloc(MEMORY[0x277D1B038]) initWithAppContext:*(a1 + 32) document:v5 owner:v8];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __95__IKViewElement_TVMLKitAdditions__retrievePresentationDocumentWithResponder_completionHandler___block_invoke_2;
    block[3] = &unk_279D6F9B8;
    v17 = *(a1 + 56);
    v15 = v9;
    v16 = v6;
    v10 = v9;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __95__IKViewElement_TVMLKitAdditions__retrievePresentationDocumentWithResponder_completionHandler___block_invoke_3;
    v11[3] = &unk_279D6F9E0;
    v13 = *(a1 + 56);
    v12 = v6;
    dispatch_async(MEMORY[0x277D85CD0], v11);

    v7 = v13;
  }
}

void __95__IKViewElement_TVMLKitAdditions__retrievePresentationDocumentWithResponder_completionHandler___block_invoke_4(uint64_t a1, int a2, int a3)
{
  if (!a2 || a3)
  {
    v7 = v3;
    v8 = v4;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __95__IKViewElement_TVMLKitAdditions__retrievePresentationDocumentWithResponder_completionHandler___block_invoke_5;
    block[3] = &unk_279D6E6F8;
    v6 = *(a1 + 32);
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

@end