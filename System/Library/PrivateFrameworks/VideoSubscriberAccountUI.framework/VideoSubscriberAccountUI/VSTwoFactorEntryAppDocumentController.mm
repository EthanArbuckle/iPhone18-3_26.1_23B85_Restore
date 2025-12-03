@interface VSTwoFactorEntryAppDocumentController
- (BOOL)_updateTwoFactorEntryViewModel:(id)model withTemplate:(id)template error:(id *)error;
- (BOOL)_updateViewModel:(id)model error:(id *)error;
- (id)_newViewModel;
- (void)_startObservingViewModel:(id)model;
- (void)_stopObservingViewModel:(id)model;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)twoFactorEntryViewModel:(id)model didPressButtonAtIndex:(unint64_t)index;
@end

@implementation VSTwoFactorEntryAppDocumentController

- (void)_startObservingViewModel:(id)model
{
  modelCopy = model;
  v6.receiver = self;
  v6.super_class = VSTwoFactorEntryAppDocumentController;
  [(VSAppDocumentController *)&v6 _startObservingViewModel:modelCopy];
  twoFactorTextField = [modelCopy twoFactorTextField];
  [twoFactorTextField addObserver:self forKeyPath:@"text" options:3 context:kVSKeyValueObservingContext_TwoFactorText];
}

- (void)_stopObservingViewModel:(id)model
{
  modelCopy = model;
  v6.receiver = self;
  v6.super_class = VSTwoFactorEntryAppDocumentController;
  [(VSAppDocumentController *)&v6 _stopObservingViewModel:modelCopy];
  twoFactorTextField = [modelCopy twoFactorTextField];
  [twoFactorTextField removeObserver:self forKeyPath:@"text" context:kVSKeyValueObservingContext_TwoFactorText];
}

- (id)_newViewModel
{
  v3 = objc_alloc_init(VSTwoFactorEntryViewModel);
  [(VSTwoFactorEntryViewModel *)v3 setDelegate:self];
  return v3;
}

- (BOOL)_updateViewModel:(id)model error:(id *)error
{
  modelCopy = model;
  v15.receiver = self;
  v15.super_class = VSTwoFactorEntryAppDocumentController;
  [(VSAppDocumentController *)&v15 _updateViewModel:modelCopy error:error];
  v7 = modelCopy;
  appDocument = [(VSAppDocumentController *)self appDocument];
  error = [appDocument error];

  if (error)
  {
    v10 = 0;
    if (error)
    {
LABEL_3:
      v11 = error;
      *error = error;
    }
  }

  else
  {
    templateElement = [(VSAppDocumentController *)self templateElement];
    if ([templateElement vs_elementType] == 165)
    {
      v14 = 0;
      v10 = [(VSTwoFactorEntryAppDocumentController *)self _updateTwoFactorEntryViewModel:v7 withTemplate:templateElement error:&v14];
      error = v14;
    }

    else
    {
      error = VSPrivateError();
      v10 = 0;
    }

    if (error)
    {
      goto LABEL_3;
    }
  }

  return v10;
}

- (BOOL)_updateTwoFactorEntryViewModel:(id)model withTemplate:(id)template error:(id *)error
{
  v99 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  children = [template children];
  v7 = [children countByEnumeratingWithState:&v88 objects:v98 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v89;
    v67 = *MEMORY[0x277CBE660];
    v68 = *v89;
    v69 = children;
    do
    {
      v10 = 0;
      v71 = v8;
      do
      {
        if (*v89 != v9)
        {
          objc_enumerationMutation(children);
        }

        v11 = *(*(&v88 + 1) + 8 * v10);
        vs_elementType = [v11 vs_elementType];
        if (vs_elementType != 160)
        {
          if (vs_elementType != 138)
          {
            if (vs_elementType == 49)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                v13 = MEMORY[0x277CBEAD8];
                v14 = objc_opt_class();
                v15 = NSStringFromClass(v14);
                [v13 raise:v67 format:{@"Unexpectedly, element was %@, instead of IKImageElement.", v15}];
              }

              v16 = [(VSAppDocumentController *)self _imageItemProviderWithImageElement:v11];
              [modelCopy setLogoProvider:v16];
              goto LABEL_59;
            }

            goto LABEL_60;
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v17 = MEMORY[0x277CBEAD8];
            v18 = objc_opt_class();
            v19 = NSStringFromClass(v18);
            [v17 raise:v67 format:{@"Unexpectedly, element was %@, instead of IKTextElement.", v19}];
          }

          v16 = v11;
          elementName = [v16 elementName];
          if ([elementName isEqual:@"title"])
          {
            text = [v16 text];
            string = [text string];
            [modelCopy setHeaderText:string];
            goto LABEL_34;
          }

          if ([elementName isEqual:@"description"])
          {
            text = [v16 text];
            string = [text string];
            [modelCopy setMessage:string];
LABEL_34:
          }

          goto LABEL_59;
        }

        v73 = v10;
        v23 = [v11 vs_itemElementsOfType:140];
        v84 = 0u;
        v85 = 0u;
        v86 = 0u;
        v87 = 0u;
        v16 = v23;
        v24 = [v16 countByEnumeratingWithState:&v84 objects:v97 count:16];
        if (!v24)
        {
          goto LABEL_58;
        }

        v25 = v24;
        v26 = *v85;
        obj = v16;
        while (2)
        {
          for (i = 0; i != v25; ++i)
          {
            if (*v85 != v26)
            {
              objc_enumerationMutation(obj);
            }

            v28 = *(*(&v84 + 1) + 8 * i);
            attributes = [v28 attributes];
            v30 = [attributes objectForKey:@"label"];

            attributes2 = [v28 attributes];
            v32 = [attributes2 objectForKey:@"length"];

            attributes3 = [v28 attributes];
            v34 = [attributes3 objectForKey:@"type"];

            attributes4 = [v28 attributes];
            v36 = [attributes4 objectForKey:@"autocapitalize"];

            attributes5 = [v28 attributes];
            v38 = [attributes5 objectForKey:@"autoshowkeyboard"];

            if (v32 && [v32 integerValue] > 0)
            {
              if (!v34)
              {
                v40 = 0;
                v16 = obj;
                if (!v36)
                {
                  goto LABEL_50;
                }

                goto LABEL_43;
              }

              v16 = obj;
              if ([v34 isEqual:@"default"])
              {
                goto LABEL_30;
              }

              if ([v34 isEqual:@"emailAddress"])
              {
                v40 = 7;
                if (!v36)
                {
                  goto LABEL_50;
                }

LABEL_43:
                if ([v28 vs_BOOLAttributeValueForKey:@"autocapitalize"])
                {
                  v41 = 3;
                }

                else
                {
                  v41 = 0;
                }

                if (v38)
                {
LABEL_47:
                  v72 = [v28 vs_BOOLAttributeValueForKey:@"autoshowkeyboard"];
LABEL_52:
                  v42 = objc_alloc_init(VSITMLTwoFactorEntryField);
                  [(VSITMLTwoFactorEntryField *)v42 setAssociatedTextFieldElement:v28];
                  [(VSTwoFactorEntryTextField *)v42 setKeyboardType:v40];
                  [(VSTwoFactorEntryTextField *)v42 setAutocapitalizationType:v41];
                  [(VSTwoFactorEntryTextField *)v42 setAutoShowKeyboard:v72];
                  [(VSTwoFactorEntryTextField *)v42 setLabel:v30];
                  if ([v32 integerValue] < 9)
                  {
                    integerValue = [v32 integerValue];
                  }

                  else
                  {
                    v43 = VSErrorLogObject();
                    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
                    {
                      integerValue2 = [v32 integerValue];
                      *buf = 134218240;
                      v94 = integerValue2;
                      v95 = 2048;
                      v96 = 8;
                      _os_log_error_impl(&dword_270DD4000, v43, OS_LOG_TYPE_ERROR, "Attempted to use TFA with %ld digits, limit is %ld", buf, 0x16u);
                    }

                    integerValue = 8;
                  }

                  [(VSTwoFactorEntryTextField *)v42 setExpectedLength:integerValue];
                  [modelCopy setTwoFactorTextField:v42];

                  goto LABEL_58;
                }
              }

              else
              {
                if ([v34 isEqual:@"numberPad"])
                {
                  v40 = 4;
                  if (!v36)
                  {
                    goto LABEL_50;
                  }

                  goto LABEL_43;
                }

                if ([v34 isEqual:@"url"])
                {
                  v40 = 3;
                  if (!v36)
                  {
                    goto LABEL_50;
                  }

                  goto LABEL_43;
                }

                v45 = VSErrorLogObject();
                if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
                {
                  [VSTwoFactorEntryAppDocumentController _updateTwoFactorEntryViewModel:v83 withTemplate:v45 error:?];
                }

LABEL_30:
                v40 = 0;
                if (v36)
                {
                  goto LABEL_43;
                }

LABEL_50:
                v41 = 0;
                if (v38)
                {
                  goto LABEL_47;
                }
              }

              v72 = 1;
              goto LABEL_52;
            }

            v39 = VSDefaultLogObject();
            if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_270DD4000, v39, OS_LOG_TYPE_DEFAULT, "Ignoring text field due to missing or invalid length attribute.", buf, 2u);
            }
          }

          v16 = obj;
          v25 = [obj countByEnumeratingWithState:&v84 objects:v97 count:16];
          if (v25)
          {
            continue;
          }

          break;
        }

LABEL_58:

        v9 = v68;
        children = v69;
        v8 = v71;
        v10 = v73;
LABEL_59:

LABEL_60:
        ++v10;
      }

      while (v10 != v8);
      v47 = [children countByEnumeratingWithState:&v88 objects:v98 count:16];
      v8 = v47;
    }

    while (v47);
  }

  v77 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  filteredButtonLockupElements = [(VSAppDocumentController *)self filteredButtonLockupElements];
  v49 = [filteredButtonLockupElements countByEnumeratingWithState:&v78 objects:v92 count:16];
  if (v49)
  {
    v50 = v49;
    v51 = *v79;
    v76 = *MEMORY[0x277CBE660];
    do
    {
      for (j = 0; j != v50; ++j)
      {
        if (*v79 != v51)
        {
          objc_enumerationMutation(filteredButtonLockupElements);
        }

        v53 = *(*(&v78 + 1) + 8 * j);
        v54 = [v53 vs_itemElementsOfType:138];
        firstObject = [v54 firstObject];

        if (firstObject)
        {
          text2 = [firstObject text];
          string2 = [text2 string];

          v58 = objc_alloc_init(VSTwoFactorEntryButton);
          if (!string2)
          {
            [MEMORY[0x277CBEAD8] raise:v76 format:@"The buttonText parameter must not be nil."];
          }

          [(VSTwoFactorEntryButton *)v58 setText:string2];
          attributes6 = [v53 attributes];
          v60 = [attributes6 objectForKey:@"type"];

          if (v60)
          {
            [(VSTwoFactorEntryButton *)v58 setType:v60];
          }

          [v77 addObject:v58];
        }
      }

      v50 = [filteredButtonLockupElements countByEnumeratingWithState:&v78 objects:v92 count:16];
    }

    while (v50);
  }

  [modelCopy setButtons:v77];
  twoFactorTextField = [modelCopy twoFactorTextField];

  if (twoFactorTextField)
  {
    v62 = 0;
  }

  else
  {
    v62 = VSPrivateError();
  }

  if (*error)
  {
    v63 = v62;
    *error = v62;
  }

  v64 = *MEMORY[0x277D85DE8];
  return v62 == 0;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  objectCopy = object;
  if (kVSKeyValueObservingContext_TwoFactorText == context)
  {
    changeCopy = change;
    v13 = VSDefaultLogObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_270DD4000, v13, OS_LOG_TYPE_DEFAULT, "Two factor text field did change.", buf, 2u);
    }

    v14 = *MEMORY[0x277CCA2F0];
    v15 = objectCopy;
    changeCopy2 = [changeCopy objectForKey:v14];

    associatedTextFieldElement = [v15 associatedTextFieldElement];

    keyboard = [associatedTextFieldElement keyboard];
    [keyboard setText:changeCopy2];
  }

  else
  {
    v18.receiver = self;
    v18.super_class = VSTwoFactorEntryAppDocumentController;
    changeCopy2 = change;
    [(VSAppDocumentController *)&v18 observeValueForKeyPath:path ofObject:objectCopy change:changeCopy2 context:context];
  }
}

- (void)twoFactorEntryViewModel:(id)model didPressButtonAtIndex:(unint64_t)index
{
  v12 = *MEMORY[0x277D85DE8];
  filteredButtonLockupElements = [(VSAppDocumentController *)self filteredButtonLockupElements];
  v6 = [filteredButtonLockupElements objectAtIndex:index];

  if (v6)
  {
    v7 = VSDefaultLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v6;
      _os_log_impl(&dword_270DD4000, v7, OS_LOG_TYPE_DEFAULT, "Sending select event for button %@.", &v10, 0xCu);
    }

    [v6 dispatchEventOfType:2 canBubble:1 isCancelable:1 extraInfo:0 completionBlock:0];
  }

  else
  {
    v8 = VSErrorLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [VSTwoFactorEntryAppDocumentController twoFactorEntryViewModel:index didPressButtonAtIndex:v8];
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_updateTwoFactorEntryViewModel:(uint8_t *)buf withTemplate:(_BYTE *)a2 error:(os_log_t)log .cold.1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_270DD4000, log, OS_LOG_TYPE_ERROR, "Invalid keyboard type provided, using default.", buf, 2u);
}

- (void)twoFactorEntryViewModel:(uint64_t)a1 didPressButtonAtIndex:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134217984;
  v4 = a1;
  _os_log_error_impl(&dword_270DD4000, a2, OS_LOG_TYPE_ERROR, "Two factor button with index %lu does not exist.", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end