@interface VSOnscreenCodeAuthenticationAppDocumentController
- (BOOL)_updateOnscreenCodeViewModel:(id)a3 error:(id *)a4;
- (BOOL)_updateOnscreenCodeViewModel:(id)a3 withTemplate:(id)a4;
- (BOOL)_updateViewModel:(id)a3 error:(id *)a4;
- (id)_newViewModel;
- (id)_onscreenCodeViewModelWithViewModel:(id)a3;
- (void)onscreenCodeViewModelButtonLockupPressed;
@end

@implementation VSOnscreenCodeAuthenticationAppDocumentController

- (id)_onscreenCodeViewModelWithViewModel:(id)a3
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
    [v4 raise:v5 format:{@"Unexpectedly, viewModel was %@, instead of VSOnscreenCodeViewModel.", v7}];
  }

  return v3;
}

- (BOOL)_updateOnscreenCodeViewModel:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (!v6)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The viewModel parameter must not be nil."];
  }

  v7 = [(VSAppDocumentController *)self templateElement];
  if ([v7 vs_elementType] == 164)
  {
    v8 = [(VSOnscreenCodeAuthenticationAppDocumentController *)self _updateOnscreenCodeViewModel:v6 withTemplate:v7];
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

- (BOOL)_updateOnscreenCodeViewModel:(id)a3 withTemplate:(id)a4
{
  v51 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = MEMORY[0x277CBE660];
  if (!v5)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The viewModel parameter must not be nil."];
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v42 = v6;
  v8 = [v6 children];
  v9 = [v8 countByEnumeratingWithState:&v45 objects:v50 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v46;
    v12 = *v7;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v46 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v45 + 1) + 8 * i);
        v15 = [v14 vs_elementType];
        if (v15 == 157)
        {
          v26 = [v14 attributes];
          v19 = [v26 objectForKey:@"label"];

          if (v19 && ([v19 isEqualToString:&stru_2880B8BB0] & 1) == 0)
          {
            [v5 setWebPageLabel:v19];
          }

          v27 = [v14 attributes];
          v25 = [v27 objectForKey:@"src"];

          if (v25)
          {
            v28 = [MEMORY[0x277CBEBC0] vs_URLWithString:v25];
            if (v28)
            {
              [v5 setWebPageURL:v28];
            }
          }

          goto LABEL_25;
        }

        if (v15 == 138)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v20 = MEMORY[0x277CBEAD8];
            v21 = objc_opt_class();
            v22 = NSStringFromClass(v21);
            [v20 raise:v12 format:{@"Unexpectedly, childElement was %@, instead of IKTextElement.", v22}];
          }

          v23 = v14;
          v24 = [v23 text];
          v19 = [v24 string];

          v25 = [v23 elementName];

          if ([v25 isEqualToString:@"onscreenCode"])
          {
            [v5 setOnscreenCode:v19];
          }

LABEL_25:

          goto LABEL_26;
        }

        if (v15 != 49)
        {
          continue;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v16 = MEMORY[0x277CBEAD8];
          v17 = objc_opt_class();
          v18 = NSStringFromClass(v17);
          [v16 raise:v12 format:{@"Unexpectedly, childElement was %@, instead of IKImageElement.", v18}];
        }

        v19 = [(VSAppDocumentController *)self _imageItemProviderWithImageElement:v14];
        [v5 setLogoProvider:v19];
LABEL_26:
      }

      v10 = [v8 countByEnumeratingWithState:&v45 objects:v50 count:16];
    }

    while (v10);
  }

  v29 = [MEMORY[0x277CCA8D8] vs_frameworkBundle];
  v30 = [v29 localizedStringForKey:@"ONSCREEN_CODE_REGENERATION_BUTTON_TITLE" value:0 table:0];

  v31 = [(VSAppDocumentController *)self filteredButtonLockupElements];
  v32 = [v31 count];

  if (v32)
  {
    v33 = [(VSAppDocumentController *)self filteredButtonLockupElements];
    v34 = [v33 firstObject];
    [(VSOnscreenCodeAuthenticationAppDocumentController *)self setButtonLockupViewElement:v34];

    v35 = objc_opt_class();
    v36 = NSStringFromClass(v35);
    v49[0] = @"title";
    v49[1] = @"text";
    v37 = [MEMORY[0x277CBEA60] arrayWithObjects:v49 count:2];
    v44.receiver = self;
    v44.super_class = VSOnscreenCodeAuthenticationAppDocumentController;
    v38 = [(VSAppDocumentController *)&v44 _getSupportedButtonTextsforTemplate:v36 andElementKeys:v37 supportedCount:1];
    v39 = [v38 firstObject];

    v30 = v39;
  }

  [v5 setButtonLockupTitle:v30];
  [v5 setShowButtonLockup:v32 != 0];

  v40 = *MEMORY[0x277D85DE8];
  return 1;
}

- (void)onscreenCodeViewModelButtonLockupPressed
{
  v2 = [(VSOnscreenCodeAuthenticationAppDocumentController *)self buttonLockupViewElement];
  [v2 dispatchEventOfType:2 canBubble:1 isCancelable:1 extraInfo:0 completionBlock:0];
}

- (id)_newViewModel
{
  v3 = objc_alloc_init(VSOnscreenCodeViewModel);
  [(VSOnscreenCodeViewModel *)v3 setDelegate:self];
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
  v14.super_class = VSOnscreenCodeAuthenticationAppDocumentController;
  [(VSAppDocumentController *)&v14 _updateViewModel:v6 error:a4];
  v7 = [(VSAppDocumentController *)self appDocument];
  v8 = [v7 error];

  if (!v8)
  {
    v12 = [(VSOnscreenCodeAuthenticationAppDocumentController *)self _onscreenCodeViewModelWithViewModel:v6];
    v13 = 0;
    v9 = [(VSOnscreenCodeAuthenticationAppDocumentController *)self _updateOnscreenCodeViewModel:v12 error:&v13];
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

@end