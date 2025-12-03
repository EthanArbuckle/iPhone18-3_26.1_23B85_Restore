@interface VSAutoAuthenticationAppDocumentController
- (BOOL)_updateAutoAuthenticationViewModel:(id)model error:(id *)error;
- (BOOL)_updateAutoAuthenticationViewModel:(id)model withTemplate:(id)template;
- (BOOL)_updateViewModel:(id)model error:(id *)error;
- (id)_autoAuthenticationViewModelWithViewModel:(id)model;
- (id)_newViewModel;
- (void)autoAuthenticationViewModelDidManualSignInButton:(id)button;
@end

@implementation VSAutoAuthenticationAppDocumentController

- (id)_newViewModel
{
  v3 = objc_alloc_init(VSAutoAuthenticationViewModel);
  [(VSAutoAuthenticationViewModel *)v3 setDelegate:self];
  return v3;
}

- (BOOL)_updateViewModel:(id)model error:(id *)error
{
  modelCopy = model;
  if (!modelCopy)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The viewModel parameter must not be nil."];
  }

  v14.receiver = self;
  v14.super_class = VSAutoAuthenticationAppDocumentController;
  [(VSAppDocumentController *)&v14 _updateViewModel:modelCopy error:error];
  appDocument = [(VSAppDocumentController *)self appDocument];
  error = [appDocument error];

  if (!error)
  {
    v12 = [(VSAutoAuthenticationAppDocumentController *)self _autoAuthenticationViewModelWithViewModel:modelCopy];
    v13 = 0;
    v9 = [(VSAutoAuthenticationAppDocumentController *)self _updateAutoAuthenticationViewModel:v12 error:&v13];
    error = v13;

    if (!error)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v9 = 0;
  if (error)
  {
LABEL_5:
    v10 = error;
    *error = error;
  }

LABEL_6:

  return v9;
}

- (void)autoAuthenticationViewModelDidManualSignInButton:(id)button
{
  if (!button)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The autoAuthenticationViewModel parameter must not be nil."];
  }

  buttonLockupElement = [(VSAutoAuthenticationAppDocumentController *)self buttonLockupElement];
  [buttonLockupElement dispatchEventOfType:2 canBubble:1 isCancelable:1 extraInfo:0 completionBlock:0];
}

- (id)_autoAuthenticationViewModelWithViewModel:(id)model
{
  modelCopy = model;
  if (!modelCopy)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The viewModel parameter must not be nil."];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v4 = MEMORY[0x277CBEAD8];
    v5 = *MEMORY[0x277CBE660];
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    [v4 raise:v5 format:{@"Unexpectedly, viewModel was %@, instead of VSAutoAuthenticationViewModel.", v7}];
  }

  return modelCopy;
}

- (BOOL)_updateAutoAuthenticationViewModel:(id)model error:(id *)error
{
  modelCopy = model;
  if (!modelCopy)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The viewModel parameter must not be nil."];
  }

  templateElement = [(VSAppDocumentController *)self templateElement];
  if ([templateElement vs_elementType] == 162)
  {
    v8 = [(VSAutoAuthenticationAppDocumentController *)self _updateAutoAuthenticationViewModel:modelCopy withTemplate:templateElement];
    v9 = 0;
    if (!error)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v9 = VSPrivateError();
  v8 = 0;
  if (error)
  {
LABEL_7:
    v10 = v9;
    *error = v9;
  }

LABEL_8:

  return v8;
}

- (BOOL)_updateAutoAuthenticationViewModel:(id)model withTemplate:(id)template
{
  v52 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  templateCopy = template;
  v7 = templateCopy;
  v8 = MEMORY[0x277CBE660];
  if (modelCopy)
  {
    if (templateCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The viewModel parameter must not be nil."];
    if (v7)
    {
      goto LABEL_3;
    }
  }

  [MEMORY[0x277CBEAD8] raise:*v8 format:@"The templateElement parameter must not be nil."];
LABEL_3:
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v41 = v7;
  children = [v7 children];
  v10 = [children countByEnumeratingWithState:&v45 objects:v51 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v46;
    v13 = *v8;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v46 != v12)
        {
          objc_enumerationMutation(children);
        }

        v15 = *(*(&v45 + 1) + 8 * i);
        vs_elementType = [v15 vs_elementType];
        if (vs_elementType == 138)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v21 = MEMORY[0x277CBEAD8];
            v22 = objc_opt_class();
            v23 = NSStringFromClass(v22);
            [v21 raise:v13 format:{@"Unexpectedly, childElement was %@, instead of IKTextElement.", v23}];
          }

          v24 = v15;
          text = [v24 text];
          string = [text string];

          elementName = [v24 elementName];

          if ([elementName isEqualToString:@"title"])
          {
            [modelCopy setMessageTitle:string];
          }

          else if ([elementName isEqualToString:@"accountName"])
          {
            [modelCopy setAccountName:string];
          }

          else if ([elementName isEqualToString:@"description"])
          {
            [modelCopy setMessage:string];
          }
        }

        else
        {
          if (vs_elementType != 49)
          {
            continue;
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v17 = MEMORY[0x277CBEAD8];
            v18 = objc_opt_class();
            v19 = NSStringFromClass(v18);
            [v17 raise:v13 format:{@"Unexpectedly, childElement was %@, instead of IKImageElement.", v19}];
          }

          string = [(VSAppDocumentController *)self _imageItemProviderWithImageElement:v15];
          [modelCopy setLogoProvider:string];
        }
      }

      v11 = [children countByEnumeratingWithState:&v45 objects:v51 count:16];
    }

    while (v11);
  }

  filteredButtonLockupElements = [(VSAppDocumentController *)self filteredButtonLockupElements];
  firstObject = [filteredButtonLockupElements firstObject];
  [(VSAutoAuthenticationAppDocumentController *)self setButtonLockupElement:firstObject];

  v29 = objc_opt_class();
  v30 = NSStringFromClass(v29);
  v50 = @"title";
  v31 = [MEMORY[0x277CBEA60] arrayWithObjects:&v50 count:1];
  v44.receiver = self;
  v44.super_class = VSAutoAuthenticationAppDocumentController;
  v32 = [(VSAppDocumentController *)&v44 _getSupportedButtonTextsforTemplate:v30 andElementKeys:v31 supportedCount:1];
  firstObject2 = [v32 firstObject];

  v34 = objc_opt_class();
  v35 = NSStringFromClass(v34);
  v49 = @"text";
  v36 = [MEMORY[0x277CBEA60] arrayWithObjects:&v49 count:1];
  v43.receiver = self;
  v43.super_class = VSAutoAuthenticationAppDocumentController;
  v37 = [(VSAppDocumentController *)&v43 _getSupportedButtonTextsforTemplate:v35 andElementKeys:v36 supportedCount:1];
  firstObject3 = [v37 firstObject];

  [modelCopy setManualSignInTitle:firstObject2];
  [modelCopy setManualSignInButtonText:firstObject3];

  v39 = *MEMORY[0x277D85DE8];
  return 1;
}

@end