@interface IKViewElement(TVMLKitAdditions)
- (id)itemElementsOfType:()TVMLKitAdditions;
- (id)tv_associatedViewElementWithDefaultClass:()TVMLKitAdditions;
- (int64_t)tv_semanticContentAttribute;
- (uint64_t)tv_associatedViewElement;
- (uint64_t)tv_isParsedOnce;
- (uint64_t)tv_scaleModeWithDefaultMode:()TVMLKitAdditions;
- (void)retrievePresentationDocumentWithResponder:()TVMLKitAdditions completionHandler:;
- (void)tv_dispatchEvent:()TVMLKitAdditions canBubble:isCancelable:extraInfo:targetResponder:completionBlock:;
- (void)tv_setParsedOnce:()TVMLKitAdditions;
@end

@implementation IKViewElement(TVMLKitAdditions)

- (uint64_t)tv_associatedViewElement
{
  v2 = objc_opt_class();

  return [a1 tv_associatedViewElementWithDefaultClass:v2];
}

- (id)tv_associatedViewElementWithDefaultClass:()TVMLKitAdditions
{
  v5 = objc_getAssociatedObject(a1, "TVAssociatedViewElement");
  if (!v5)
  {
    v6 = +[TVElementFactory classForElementType:](TVElementFactory, "classForElementType:", [a1 elementType]);
    if (!v6)
    {
      v6 = a3;
    }

    v5 = [[v6 alloc] initWithViewElement:a1];
    objc_setAssociatedObject(a1, "TVAssociatedViewElement", v5, 0x301);
  }

  return v5;
}

- (id)itemElementsOfType:()TVMLKitAdditions
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = [a1 children];
  v6 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v24;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v23 + 1) + 8 * i);
        if ([v10 tv_elementType] == 49)
        {
          v21 = 0u;
          v22 = 0u;
          v19 = 0u;
          v20 = 0u;
          v11 = [v10 children];
          v12 = [v11 countByEnumeratingWithState:&v19 objects:v27 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v20;
            do
            {
              for (j = 0; j != v13; ++j)
              {
                if (*v20 != v14)
                {
                  objc_enumerationMutation(v11);
                }

                v16 = *(*(&v19 + 1) + 8 * j);
                if ([v16 tv_elementType] == a3)
                {
                  [v5 addObject:v16];
                }
              }

              v13 = [v11 countByEnumeratingWithState:&v19 objects:v27 count:16];
            }

            while (v13);
          }
        }

        else if ([v10 tv_elementType] == a3)
        {
          [v5 addObject:v10];
        }
      }

      v7 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v7);
  }

  return v5;
}

- (int64_t)tv_semanticContentAttribute
{
  v1 = [a1 appDocument];
  v2 = [v1 templateElement];

  v3 = [TVMLUtilities semanticContentAttributeForTemplateElement:v2];
  return v3;
}

- (uint64_t)tv_scaleModeWithDefaultMode:()TVMLKitAdditions
{
  v5 = [a1 attributes];
  v6 = [v5 objectForKey:@"contentsMode"];

  if ([v6 length])
  {
    if ([v6 isEqualToString:@"aspectFit"])
    {
      a3 = 1;
      goto LABEL_12;
    }

    if ([v6 isEqualToString:@"aspectFill"])
    {
      a3 = 3;
      goto LABEL_12;
    }

    if ([v6 isEqualToString:@"aspectFitBB"])
    {
      a3 = 2;
      goto LABEL_12;
    }

    v10 = [v6 isEqualToString:@"aspectFitHeight"] == 0;
    v11 = 4;
  }

  else
  {
    v7 = [a1 attributes];
    v8 = [v7 objectForKey:@"aspectFill"];
    v9 = [v8 BOOLValue];

    v10 = v9 == 0;
    v11 = 3;
  }

  if (!v10)
  {
    a3 = v11;
  }

LABEL_12:

  return a3;
}

- (void)tv_setParsedOnce:()TVMLKitAdditions
{
  v2 = [MEMORY[0x277CCABB0] numberWithBool:?];
  [a1 setObject:v2 forKeyedSubscript:@"tv_parsedOnce"];
}

- (uint64_t)tv_isParsedOnce
{
  v1 = [a1 objectForKeyedSubscript:@"tv_parsedOnce"];
  v2 = [v1 BOOLValue];

  return v2;
}

- (void)tv_dispatchEvent:()TVMLKitAdditions canBubble:isCancelable:extraInfo:targetResponder:completionBlock:
{
  v14 = a3;
  v15 = a6;
  v16 = a8;
  v17 = a7;
  v18 = [a1 appDocument];
  v22 = v15;
  v19 = [v18 tv_handleEvent:v14 targetResponder:v17 viewElement:a1 extraInfo:&v22];

  v20 = v22;
  if (v19)
  {
    if (v16)
    {
      (*(v16 + 2))(v16, 0, 0);
    }
  }

  else
  {
    v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"on%@", v14];
    [a1 dispatchEvent:v14 eventAttribute:v21 canBubble:a4 isCancelable:a5 extraInfo:v20 completionBlock:v16];
  }
}

- (void)retrievePresentationDocumentWithResponder:()TVMLKitAdditions completionHandler:
{
  v25[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = [a1 appDocument];
  v9 = [v8 appContext];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __95__IKViewElement_TVMLKitAdditions__retrievePresentationDocumentWithResponder_completionHandler___block_invoke;
  v19[3] = &unk_279D6FA08;
  v20 = v9;
  v21 = v8;
  v22 = a1;
  v10 = v6;
  v23 = v10;
  v11 = v8;
  v12 = v9;
  v13 = MEMORY[0x26D6AFBB0](v19);
  v24 = @"presentDocument";
  v14 = MEMORY[0x26D6AFBB0]();
  v25[0] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __95__IKViewElement_TVMLKitAdditions__retrievePresentationDocumentWithResponder_completionHandler___block_invoke_4;
  v17[3] = &unk_279D6FA30;
  v18 = v10;
  v16 = v10;
  [a1 tv_dispatchEvent:@"contextmenu" canBubble:1 isCancelable:1 extraInfo:v15 targetResponder:v7 completionBlock:v17];
}

@end