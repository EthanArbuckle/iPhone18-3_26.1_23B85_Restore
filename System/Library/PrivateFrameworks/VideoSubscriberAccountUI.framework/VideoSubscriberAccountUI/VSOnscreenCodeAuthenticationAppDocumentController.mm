@interface VSOnscreenCodeAuthenticationAppDocumentController
- (BOOL)_updateOnscreenCodeViewModel:(id)model error:(id *)error;
- (BOOL)_updateOnscreenCodeViewModel:(id)model withTemplate:(id)template;
- (BOOL)_updateViewModel:(id)model error:(id *)error;
- (id)_newViewModel;
- (id)_onscreenCodeViewModelWithViewModel:(id)model;
- (void)onscreenCodeViewModelButtonLockupPressed;
@end

@implementation VSOnscreenCodeAuthenticationAppDocumentController

- (id)_onscreenCodeViewModelWithViewModel:(id)model
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
    [v4 raise:v5 format:{@"Unexpectedly, viewModel was %@, instead of VSOnscreenCodeViewModel.", v7}];
  }

  return modelCopy;
}

- (BOOL)_updateOnscreenCodeViewModel:(id)model error:(id *)error
{
  modelCopy = model;
  if (!modelCopy)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The viewModel parameter must not be nil."];
  }

  templateElement = [(VSAppDocumentController *)self templateElement];
  if ([templateElement vs_elementType] == 164)
  {
    v8 = [(VSOnscreenCodeAuthenticationAppDocumentController *)self _updateOnscreenCodeViewModel:modelCopy withTemplate:templateElement];
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

- (BOOL)_updateOnscreenCodeViewModel:(id)model withTemplate:(id)template
{
  v51 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  templateCopy = template;
  v7 = MEMORY[0x277CBE660];
  if (!modelCopy)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The viewModel parameter must not be nil."];
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v42 = templateCopy;
  children = [templateCopy children];
  v9 = [children countByEnumeratingWithState:&v45 objects:v50 count:16];
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
          objc_enumerationMutation(children);
        }

        v14 = *(*(&v45 + 1) + 8 * i);
        vs_elementType = [v14 vs_elementType];
        if (vs_elementType == 157)
        {
          attributes = [v14 attributes];
          string = [attributes objectForKey:@"label"];

          if (string && ([string isEqualToString:&stru_2880B8BB0] & 1) == 0)
          {
            [modelCopy setWebPageLabel:string];
          }

          attributes2 = [v14 attributes];
          elementName = [attributes2 objectForKey:@"src"];

          if (elementName)
          {
            v28 = [MEMORY[0x277CBEBC0] vs_URLWithString:elementName];
            if (v28)
            {
              [modelCopy setWebPageURL:v28];
            }
          }

          goto LABEL_25;
        }

        if (vs_elementType == 138)
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
          text = [v23 text];
          string = [text string];

          elementName = [v23 elementName];

          if ([elementName isEqualToString:@"onscreenCode"])
          {
            [modelCopy setOnscreenCode:string];
          }

LABEL_25:

          goto LABEL_26;
        }

        if (vs_elementType != 49)
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

        string = [(VSAppDocumentController *)self _imageItemProviderWithImageElement:v14];
        [modelCopy setLogoProvider:string];
LABEL_26:
      }

      v10 = [children countByEnumeratingWithState:&v45 objects:v50 count:16];
    }

    while (v10);
  }

  vs_frameworkBundle = [MEMORY[0x277CCA8D8] vs_frameworkBundle];
  v30 = [vs_frameworkBundle localizedStringForKey:@"ONSCREEN_CODE_REGENERATION_BUTTON_TITLE" value:0 table:0];

  filteredButtonLockupElements = [(VSAppDocumentController *)self filteredButtonLockupElements];
  v32 = [filteredButtonLockupElements count];

  if (v32)
  {
    filteredButtonLockupElements2 = [(VSAppDocumentController *)self filteredButtonLockupElements];
    firstObject = [filteredButtonLockupElements2 firstObject];
    [(VSOnscreenCodeAuthenticationAppDocumentController *)self setButtonLockupViewElement:firstObject];

    v35 = objc_opt_class();
    v36 = NSStringFromClass(v35);
    v49[0] = @"title";
    v49[1] = @"text";
    v37 = [MEMORY[0x277CBEA60] arrayWithObjects:v49 count:2];
    v44.receiver = self;
    v44.super_class = VSOnscreenCodeAuthenticationAppDocumentController;
    v38 = [(VSAppDocumentController *)&v44 _getSupportedButtonTextsforTemplate:v36 andElementKeys:v37 supportedCount:1];
    firstObject2 = [v38 firstObject];

    v30 = firstObject2;
  }

  [modelCopy setButtonLockupTitle:v30];
  [modelCopy setShowButtonLockup:v32 != 0];

  v40 = *MEMORY[0x277D85DE8];
  return 1;
}

- (void)onscreenCodeViewModelButtonLockupPressed
{
  buttonLockupViewElement = [(VSOnscreenCodeAuthenticationAppDocumentController *)self buttonLockupViewElement];
  [buttonLockupViewElement dispatchEventOfType:2 canBubble:1 isCancelable:1 extraInfo:0 completionBlock:0];
}

- (id)_newViewModel
{
  v3 = objc_alloc_init(VSOnscreenCodeViewModel);
  [(VSOnscreenCodeViewModel *)v3 setDelegate:self];
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
  v14.super_class = VSOnscreenCodeAuthenticationAppDocumentController;
  [(VSAppDocumentController *)&v14 _updateViewModel:modelCopy error:error];
  appDocument = [(VSAppDocumentController *)self appDocument];
  error = [appDocument error];

  if (!error)
  {
    v12 = [(VSOnscreenCodeAuthenticationAppDocumentController *)self _onscreenCodeViewModelWithViewModel:modelCopy];
    v13 = 0;
    v9 = [(VSOnscreenCodeAuthenticationAppDocumentController *)self _updateOnscreenCodeViewModel:v12 error:&v13];
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

@end