@interface VSCredentialEntryAppDocumentController
- (BOOL)_updateCredentialEntryViewModel:(id)model error:(id *)error;
- (BOOL)_updateCredentialEntryViewModel:(id)model withTemplate:(id)template error:(id *)error;
- (BOOL)_updateViewModel:(id)model error:(id *)error;
- (id)_credentialEntryViewModelWithViewModel:(id)model;
- (id)_newViewModel;
- (void)_startObservingViewModel:(id)model;
- (void)_stopObservingViewModel:(id)model;
- (void)itemGroup:(id)group selectedItemIndexDidChange:(int64_t)change;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)viewModel:(id)model buttonTappedAtIndex:(unint64_t)index;
- (void)viewModel:(id)model pickerDidSelectRow:(unint64_t)row;
@end

@implementation VSCredentialEntryAppDocumentController

- (void)_startObservingViewModel:(id)model
{
  v18 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  if (!modelCopy)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The viewModel parameter must not be nil."];
  }

  v16.receiver = self;
  v16.super_class = VSCredentialEntryAppDocumentController;
  [(VSAppDocumentController *)&v16 _startObservingViewModel:modelCopy];
  v5 = [(VSCredentialEntryAppDocumentController *)self _credentialEntryViewModelWithViewModel:modelCopy];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  credentialEntryFields = [v5 credentialEntryFields];
  v7 = [credentialEntryFields countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(credentialEntryFields);
        }

        [*(*(&v12 + 1) + 8 * i) addObserver:self forKeyPath:@"text" options:3 context:kVSKeyValueObservingContext_CredentialEntryFieldText];
      }

      v8 = [credentialEntryFields countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v8);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_stopObservingViewModel:(id)model
{
  v18 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  if (!modelCopy)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The viewModel parameter must not be nil."];
  }

  v16.receiver = self;
  v16.super_class = VSCredentialEntryAppDocumentController;
  [(VSAppDocumentController *)&v16 _stopObservingViewModel:modelCopy];
  v5 = [(VSCredentialEntryAppDocumentController *)self _credentialEntryViewModelWithViewModel:modelCopy];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  credentialEntryFields = [v5 credentialEntryFields];
  v7 = [credentialEntryFields countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(credentialEntryFields);
        }

        [*(*(&v12 + 1) + 8 * i) removeObserver:self forKeyPath:@"text" context:kVSKeyValueObservingContext_CredentialEntryFieldText];
      }

      v8 = [credentialEntryFields countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v8);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (id)_newViewModel
{
  v3 = objc_alloc_init(VSCredentialEntryViewModel);
  [(VSCredentialEntryViewModel *)v3 setDelegate:self];
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
  v14.super_class = VSCredentialEntryAppDocumentController;
  [(VSAppDocumentController *)&v14 _updateViewModel:modelCopy error:error];
  v7 = [(VSCredentialEntryAppDocumentController *)self _credentialEntryViewModelWithViewModel:modelCopy];
  appDocument = [(VSAppDocumentController *)self appDocument];
  error = [appDocument error];

  if (!error)
  {
    v13 = 0;
    v10 = [(VSCredentialEntryAppDocumentController *)self _updateCredentialEntryViewModel:v7 error:&v13];
    error = v13;
    if (!error)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v10 = 0;
  if (error)
  {
LABEL_5:
    v11 = error;
    *error = error;
  }

LABEL_6:

  return v10;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  objectCopy = object;
  if (kVSKeyValueObservingContext_CredentialEntryFieldText == context)
  {
    changeCopy = change;
    v13 = VSDefaultLogObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_270DD4000, v13, OS_LOG_TYPE_DEFAULT, "Text field text did change.", buf, 2u);
    }

    changeCopy2 = objectCopy;
    v14 = [changeCopy objectForKey:*MEMORY[0x277CCA2F0]];

    associatedTextFieldElement = [changeCopy2 associatedTextFieldElement];
    v16 = VSDefaultLogObject();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_270DD4000, v16, OS_LOG_TYPE_DEFAULT, "Will update keyboard text.", buf, 2u);
    }

    keyboard = [associatedTextFieldElement keyboard];
    [keyboard setText:v14];

    v18 = VSDefaultLogObject();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_270DD4000, v18, OS_LOG_TYPE_DEFAULT, "Did update keyboard text.", buf, 2u);
    }
  }

  else
  {
    v19.receiver = self;
    v19.super_class = VSCredentialEntryAppDocumentController;
    changeCopy2 = change;
    [(VSAppDocumentController *)&v19 observeValueForKeyPath:path ofObject:objectCopy change:changeCopy2 context:context];
  }
}

- (id)_credentialEntryViewModelWithViewModel:(id)model
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
    [v4 raise:v5 format:{@"Unexpectedly, viewModel was %@, instead of VSCredentialEntryViewModel.", v7}];
  }

  return modelCopy;
}

- (BOOL)_updateCredentialEntryViewModel:(id)model error:(id *)error
{
  modelCopy = model;
  if (!modelCopy)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The viewModel parameter must not be nil."];
  }

  templateElement = [(VSAppDocumentController *)self templateElement];
  if ([templateElement vs_elementType] == 161)
  {
    v12 = 0;
    v8 = [(VSCredentialEntryAppDocumentController *)self _updateCredentialEntryViewModel:modelCopy withTemplate:templateElement error:&v12];
    v9 = v12;
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

- (BOOL)_updateCredentialEntryViewModel:(id)model withTemplate:(id)template error:(id *)error
{
  v141 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  templateCopy = template;
  v9 = MEMORY[0x277CBE660];
  v111 = modelCopy;
  if (modelCopy)
  {
    if (templateCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v82 = templateCopy;
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The viewModel parameter must not be nil."];
    templateCopy = v82;
    if (v82)
    {
      goto LABEL_3;
    }
  }

  v83 = templateCopy;
  [MEMORY[0x277CBEAD8] raise:*v9 format:@"The templateElement parameter must not be nil."];
  templateCopy = v83;
LABEL_3:
  v134 = 0u;
  v135 = 0u;
  v132 = 0u;
  v133 = 0u;
  v103 = templateCopy;
  children = [templateCopy children];
  v11 = [children countByEnumeratingWithState:&v132 objects:v140 count:16];
  if (v11)
  {
    v12 = v11;
    v107 = 0;
    v13 = *v133;
    v112 = *v9;
    selfCopy = self;
    v105 = *v133;
    v106 = children;
    while (1)
    {
      v14 = 0;
      v108 = v12;
      do
      {
        if (*v133 != v13)
        {
          objc_enumerationMutation(children);
        }

        v15 = *(*(&v132 + 1) + 8 * v14);
        vs_elementType = [v15 vs_elementType];
        if (vs_elementType <= 156)
        {
          if (vs_elementType == 49)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v78 = MEMORY[0x277CBEAD8];
              v79 = objc_opt_class();
              v80 = NSStringFromClass(v79);
              [v78 raise:v112 format:{@"Unexpectedly, childElement was %@, instead of IKImageElement.", v80}];
            }

            v37 = [(VSAppDocumentController *)self _imageItemProviderWithImageElement:v15];
            [v111 setLogoProvider:v37];
          }

          else
          {
            if (vs_elementType != 138)
            {
              goto LABEL_72;
            }

            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v39 = MEMORY[0x277CBEAD8];
              v40 = objc_opt_class();
              v41 = NSStringFromClass(v40);
              [v39 raise:v112 format:{@"Unexpectedly, childElement was %@, instead of IKTextElement.", v41}];
            }

            v37 = v15;
            elementName = [v37 elementName];
            if ([elementName isEqual:@"description"])
            {
              text = [v37 text];
              [text string];
              v45 = v44 = v37;

              [v111 setAdditionalMessage:v45];
              v37 = v44;
            }
          }

          goto LABEL_71;
        }

        switch(vs_elementType)
        {
          case 157:
            attributes = [v15 attributes];
            v47 = [attributes objectForKey:@"label"];

            v48 = v47;
            [v111 setLinkTitle:v47];
            attributes2 = [v15 attributes];
            v50 = [attributes2 objectForKey:@"src"];

            if (v50)
            {
              v51 = [MEMORY[0x277CBEBC0] URLWithString:v50];
              if (v51)
              {
                [v111 setLinkURL:v51];
              }
            }

            v37 = v48;
LABEL_71:

            break;
          case 158:
            pickerElement = [(VSCredentialEntryAppDocumentController *)self pickerElement];

            if (pickerElement)
            {
              break;
            }

            v110 = v14;
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v53 = MEMORY[0x277CBEAD8];
              v54 = objc_opt_class();
              v55 = NSStringFromClass(v54);
              [v53 raise:v112 format:{@"Unexpectedly, childElement was %@, instead of VSIKItemGroupElement.", v55}];
            }

            v37 = v15;
            array = [MEMORY[0x277CBEB18] array];
            attributes3 = [v37 attributes];
            v58 = [attributes3 objectForKey:@"title"];

            if (v58)
            {
              obja = v58;
              v122 = 0u;
              v123 = 0u;
              v124 = 0u;
              v125 = 0u;
              v116 = v37;
              children2 = [v37 children];
              v60 = [children2 countByEnumeratingWithState:&v122 objects:v138 count:16];
              if (v60)
              {
                v61 = v60;
                v62 = *v123;
                do
                {
                  for (i = 0; i != v61; ++i)
                  {
                    if (*v123 != v62)
                    {
                      objc_enumerationMutation(children2);
                    }

                    v64 = *(*(&v122 + 1) + 8 * i);
                    v65 = objc_alloc_init(VSCredentialEntryPickerItem);
                    text2 = [v64 text];
                    string = [text2 string];
                    [(VSCredentialEntryPickerItem *)v65 setItemName:string];

                    attributes4 = [v64 attributes];
                    v69 = [attributes4 objectForKey:@"value"];

                    if (v69)
                    {
                      [(VSCredentialEntryPickerItem *)v65 setItemValue:v69];
                      elementID = [v64 elementID];
                      [(VSCredentialEntryPickerItem *)v65 setItemId:elementID];

                      [array addObject:v65];
                    }
                  }

                  v61 = [children2 countByEnumeratingWithState:&v122 objects:v138 count:16];
                }

                while (v61);
              }

              vs_selectedChildElementIndex = [v116 vs_selectedChildElementIndex];
              if ([array count])
              {
                v72 = objc_alloc_init(VSCredentialEntryPicker);
                v73 = obja;
                [(VSCredentialEntryPicker *)v72 setTitle:obja];
                [(VSCredentialEntryPicker *)v72 setPickerItems:array];
                [(VSCredentialEntryPicker *)v72 setSelectedIndex:vs_selectedChildElementIndex];
                self = selfCopy;
                [(VSCredentialEntryAppDocumentController *)selfCopy setPickerElement:v116];
                pickerElement2 = [(VSCredentialEntryAppDocumentController *)selfCopy pickerElement];
                itemGroup = [pickerElement2 itemGroup];
                [itemGroup setSelectedItemIndex:vs_selectedChildElementIndex];

                pickerElement3 = [(VSCredentialEntryAppDocumentController *)selfCopy pickerElement];
                itemGroup2 = [pickerElement3 itemGroup];
                [itemGroup2 setDelegate:selfCopy];

                [v111 setPicker:v72];
                ++v107;
              }

              else
              {
                self = selfCopy;
                v73 = obja;
              }

              v37 = v116;
            }

            v13 = v105;
            children = v106;
            v12 = v108;
            v14 = v110;
            goto LABEL_71;
          case 160:
            credentialEntryFields = [v111 credentialEntryFields];

            if (!credentialEntryFields)
            {
              v109 = v14;
              v115 = objc_alloc_init(MEMORY[0x277CBEB18]);
              v18 = [v15 vs_itemElementsOfType:140];
              v128 = 0u;
              v129 = 0u;
              v130 = 0u;
              v131 = 0u;
              obj = v18;
              v19 = [v18 countByEnumeratingWithState:&v128 objects:v139 count:16];
              if (!v19)
              {
                goto LABEL_35;
              }

              v20 = v19;
              v21 = *v129;
              while (1)
              {
                for (j = 0; j != v20; ++j)
                {
                  if (*v129 != v21)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v23 = *(*(&v128 + 1) + 8 * j);
                  attributes5 = [v23 attributes];
                  v25 = [attributes5 objectForKey:@"label"];

                  if ([v25 length])
                  {
                    if (!v25)
                    {
                      [MEMORY[0x277CBEAD8] raise:v112 format:@"The fieldTitleOrNil parameter must not be nil."];
                    }

                    v26 = v25;
                    v27 = objc_alloc_init(VSITMLCredentialEntryField);
                    attributes6 = [v23 attributes];
                    v29 = [attributes6 objectForKey:@"required"];

                    if (v29)
                    {
                      [(VSCredentialEntryField *)v27 setRequired:1];
                    }

                    [(VSITMLCredentialEntryField *)v27 setAssociatedTextFieldElement:v23];
                    [(VSCredentialEntryField *)v27 setTitle:v26];
                    text3 = [v23 text];
                    string2 = [text3 string];

                    [(VSCredentialEntryField *)v27 setPlaceholder:string2];
                    attributes7 = [v23 attributes];
                    v33 = [attributes7 objectForKey:@"type"];

                    if ([v33 isEqualToString:@"emailAddress"])
                    {
                      v34 = 7;
                      goto LABEL_29;
                    }

                    if ([v33 isEqualToString:@"numberPad"])
                    {
                      v34 = 4;
LABEL_29:
                      [(VSCredentialEntryField *)v27 setKeyboardType:v34];
                    }

                    attributes8 = [v23 attributes];
                    v36 = [attributes8 objectForKey:@"secure"];

                    if (v36)
                    {
                      [(VSCredentialEntryField *)v27 setSecure:1];
                      [(VSCredentialEntryField *)v27 setKeyboardType:1];
                      [(VSCredentialEntryField *)v27 setAutocapitalizationType:0];
                    }

                    [(VSCredentialEntryField *)v27 setAutocorrectionType:1];
                    [v115 addObject:v27];

                    goto LABEL_33;
                  }

                  v26 = VSErrorLogObject();
                  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
                  {
                    [VSCredentialEntryAppDocumentController _updateCredentialEntryViewModel:v127 withTemplate:v26 error:?];
                  }

LABEL_33:
                }

                v20 = [obj countByEnumeratingWithState:&v128 objects:v139 count:16];
                if (!v20)
                {
LABEL_35:
                  v37 = v115;
                  if ([v115 count])
                  {
                    v38 = [v115 copy];
                    [v111 setCredentialEntryFields:v38];

                    v107 += [v115 count];
                  }

                  self = selfCopy;
                  v13 = v105;
                  children = v106;
                  v12 = v108;
                  v14 = v109;

                  goto LABEL_71;
                }
              }
            }

            break;
        }

LABEL_72:
        ++v14;
      }

      while (v14 != v12);
      v12 = [children countByEnumeratingWithState:&v132 objects:v140 count:16];
      if (!v12)
      {
        v81 = v107 == 0;
        goto LABEL_78;
      }
    }
  }

  v81 = 1;
LABEL_78:

  v84 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v85 = objc_opt_class();
  v86 = NSStringFromClass(v85);
  v137[0] = @"title";
  v137[1] = @"text";
  v87 = [MEMORY[0x277CBEA60] arrayWithObjects:v137 count:2];
  selfCopy2 = self;
  v89 = v87;
  v121.receiver = selfCopy2;
  v121.super_class = VSCredentialEntryAppDocumentController;
  v90 = [(VSAppDocumentController *)&v121 _getSupportedButtonTextsforTemplate:v86 andElementKeys:v87 supportedCount:2];

  v119 = 0u;
  v120 = 0u;
  v117 = 0u;
  v118 = 0u;
  v91 = v90;
  v92 = [v91 countByEnumeratingWithState:&v117 objects:v136 count:16];
  if (v92)
  {
    v93 = v92;
    v94 = *v118;
    do
    {
      for (k = 0; k != v93; ++k)
      {
        if (*v118 != v94)
        {
          objc_enumerationMutation(v91);
        }

        v96 = *(*(&v117 + 1) + 8 * k);
        v97 = objc_alloc_init(VSCredentialEntryButton);
        [(VSCredentialEntryButton *)v97 setTitle:v96];
        [(VSCredentialEntryButton *)v97 setOwningViewModel:v111];
        [v84 addObject:v97];
      }

      v93 = [v91 countByEnumeratingWithState:&v117 objects:v136 count:16];
    }

    while (v93);
  }

  [v111 setButtons:v84];
  if (v81)
  {
    v98 = VSPrivateError();
  }

  else
  {
    v98 = 0;
  }

  if (error)
  {
    v99 = v98;
    *error = v98;
  }

  v100 = *MEMORY[0x277D85DE8];
  return v98 == 0;
}

- (void)itemGroup:(id)group selectedItemIndexDidChange:(int64_t)change
{
  viewModel = [(VSAppDocumentController *)self viewModel];

  if (!viewModel)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The [self viewModel] parameter must not be nil."];
  }

  viewModel2 = [(VSAppDocumentController *)self viewModel];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v7 = MEMORY[0x277CBEAD8];
    v8 = *MEMORY[0x277CBE660];
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    [v7 raise:v8 format:{@"Unexpectedly, genericViewModel was %@, instead of VSCredentialEntryViewModel.", v10}];
  }

  picker = [viewModel2 picker];
  [picker setSelectedIndex:change];
}

- (void)viewModel:(id)model buttonTappedAtIndex:(unint64_t)index
{
  filteredButtonLockupElements = [(VSAppDocumentController *)self filteredButtonLockupElements];

  if (!filteredButtonLockupElements)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The [self filteredButtonLockupElements] parameter must not be nil."];
  }

  filteredButtonLockupElements2 = [(VSAppDocumentController *)self filteredButtonLockupElements];
  v8 = [filteredButtonLockupElements2 objectAtIndex:index];

  [v8 dispatchEventOfType:2 canBubble:1 isCancelable:0 extraInfo:0 completionBlock:0];
}

- (void)viewModel:(id)model pickerDidSelectRow:(unint64_t)row
{
  pickerElement = [(VSCredentialEntryAppDocumentController *)self pickerElement];
  children = [pickerElement children];

  if (!children)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The [[self pickerElement] children] parameter must not be nil."];
  }

  pickerElement2 = [(VSCredentialEntryAppDocumentController *)self pickerElement];
  children2 = [pickerElement2 children];

  v12 = [children2 objectAtIndex:row];

  pickerElement3 = [(VSCredentialEntryAppDocumentController *)self pickerElement];
  itemGroup = [pickerElement3 itemGroup];
  [itemGroup setSelectedItemIndex:row];

  [v12 dispatchEventOfType:2 canBubble:1 isCancelable:0 extraInfo:0 completionBlock:0];
}

- (void)_updateCredentialEntryViewModel:(uint8_t *)buf withTemplate:(_BYTE *)a2 error:(os_log_t)log .cold.1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_270DD4000, log, OS_LOG_TYPE_ERROR, "Ignoring text element with empty title", buf, 2u);
}

@end