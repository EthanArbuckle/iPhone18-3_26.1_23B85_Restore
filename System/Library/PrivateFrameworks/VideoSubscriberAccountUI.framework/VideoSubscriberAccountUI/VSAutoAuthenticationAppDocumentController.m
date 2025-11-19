@interface VSAutoAuthenticationAppDocumentController
- (BOOL)_updateAutoAuthenticationViewModel:(id)a3 error:(id *)a4;
- (BOOL)_updateAutoAuthenticationViewModel:(id)a3 withTemplate:(id)a4;
- (BOOL)_updateViewModel:(id)a3 error:(id *)a4;
- (id)_autoAuthenticationViewModelWithViewModel:(id)a3;
- (id)_newViewModel;
- (void)autoAuthenticationViewModelDidManualSignInButton:(id)a3;
@end

@implementation VSAutoAuthenticationAppDocumentController

- (id)_newViewModel
{
  v3 = objc_alloc_init(VSAutoAuthenticationViewModel);
  [(VSAutoAuthenticationViewModel *)v3 setDelegate:self];
  return v3;
}

- (BOOL)_updateViewModel:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (!v6)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The viewModel parameter must not be nil."];
  }

  v14.receiver = self;
  v14.super_class = VSAutoAuthenticationAppDocumentController;
  [(VSAppDocumentController *)&v14 _updateViewModel:v6 error:a4];
  v7 = [(VSAppDocumentController *)self appDocument];
  v8 = [v7 error];

  if (!v8)
  {
    v12 = [(VSAutoAuthenticationAppDocumentController *)self _autoAuthenticationViewModelWithViewModel:v6];
    v13 = 0;
    v9 = [(VSAutoAuthenticationAppDocumentController *)self _updateAutoAuthenticationViewModel:v12 error:&v13];
    v8 = v13;

    if (!a4)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v9 = 0;
  if (a4)
  {
LABEL_5:
    v10 = v8;
    *a4 = v8;
  }

LABEL_6:

  return v9;
}

- (void)autoAuthenticationViewModelDidManualSignInButton:(id)a3
{
  if (!a3)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The autoAuthenticationViewModel parameter must not be nil."];
  }

  v4 = [(VSAutoAuthenticationAppDocumentController *)self buttonLockupElement];
  [v4 dispatchEventOfType:2 canBubble:1 isCancelable:1 extraInfo:0 completionBlock:0];
}

- (id)_autoAuthenticationViewModelWithViewModel:(id)a3
{
  v3 = a3;
  if (!v3)
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

  return v3;
}

- (BOOL)_updateAutoAuthenticationViewModel:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (!v6)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The viewModel parameter must not be nil."];
  }

  v7 = [(VSAppDocumentController *)self templateElement];
  if ([v7 vs_elementType] == 162)
  {
    v8 = [(VSAutoAuthenticationAppDocumentController *)self _updateAutoAuthenticationViewModel:v6 withTemplate:v7];
    v9 = 0;
    if (!a4)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v9 = VSPrivateError();
  v8 = 0;
  if (a4)
  {
LABEL_7:
    v10 = v9;
    *a4 = v9;
  }

LABEL_8:

  return v8;
}

- (BOOL)_updateAutoAuthenticationViewModel:(id)a3 withTemplate:(id)a4
{
  v52 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = v6;
  v8 = MEMORY[0x277CBE660];
  if (v5)
  {
    if (v6)
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
  v9 = [v7 children];
  v10 = [v9 countByEnumeratingWithState:&v45 objects:v51 count:16];
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
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v45 + 1) + 8 * i);
        v16 = [v15 vs_elementType];
        if (v16 == 138)
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
          v25 = [v24 text];
          v20 = [v25 string];

          v26 = [v24 elementName];

          if ([v26 isEqualToString:@"title"])
          {
            [v5 setMessageTitle:v20];
          }

          else if ([v26 isEqualToString:@"accountName"])
          {
            [v5 setAccountName:v20];
          }

          else if ([v26 isEqualToString:@"description"])
          {
            [v5 setMessage:v20];
          }
        }

        else
        {
          if (v16 != 49)
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

          v20 = [(VSAppDocumentController *)self _imageItemProviderWithImageElement:v15];
          [v5 setLogoProvider:v20];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v45 objects:v51 count:16];
    }

    while (v11);
  }

  v27 = [(VSAppDocumentController *)self filteredButtonLockupElements];
  v28 = [v27 firstObject];
  [(VSAutoAuthenticationAppDocumentController *)self setButtonLockupElement:v28];

  v29 = objc_opt_class();
  v30 = NSStringFromClass(v29);
  v50 = @"title";
  v31 = [MEMORY[0x277CBEA60] arrayWithObjects:&v50 count:1];
  v44.receiver = self;
  v44.super_class = VSAutoAuthenticationAppDocumentController;
  v32 = [(VSAppDocumentController *)&v44 _getSupportedButtonTextsforTemplate:v30 andElementKeys:v31 supportedCount:1];
  v33 = [v32 firstObject];

  v34 = objc_opt_class();
  v35 = NSStringFromClass(v34);
  v49 = @"text";
  v36 = [MEMORY[0x277CBEA60] arrayWithObjects:&v49 count:1];
  v43.receiver = self;
  v43.super_class = VSAutoAuthenticationAppDocumentController;
  v37 = [(VSAppDocumentController *)&v43 _getSupportedButtonTextsforTemplate:v35 andElementKeys:v36 supportedCount:1];
  v38 = [v37 firstObject];

  [v5 setManualSignInTitle:v33];
  [v5 setManualSignInButtonText:v38];

  v39 = *MEMORY[0x277D85DE8];
  return 1;
}

@end