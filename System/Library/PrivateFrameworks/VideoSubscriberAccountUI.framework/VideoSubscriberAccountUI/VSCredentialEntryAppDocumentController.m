@interface VSCredentialEntryAppDocumentController
- (BOOL)_updateCredentialEntryViewModel:(id)a3 error:(id *)a4;
- (BOOL)_updateCredentialEntryViewModel:(id)a3 withTemplate:(id)a4 error:(id *)a5;
- (BOOL)_updateViewModel:(id)a3 error:(id *)a4;
- (id)_credentialEntryViewModelWithViewModel:(id)a3;
- (id)_newViewModel;
- (void)_startObservingViewModel:(id)a3;
- (void)_stopObservingViewModel:(id)a3;
- (void)itemGroup:(id)a3 selectedItemIndexDidChange:(int64_t)a4;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)viewModel:(id)a3 buttonTappedAtIndex:(unint64_t)a4;
- (void)viewModel:(id)a3 pickerDidSelectRow:(unint64_t)a4;
@end

@implementation VSCredentialEntryAppDocumentController

- (void)_startObservingViewModel:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The viewModel parameter must not be nil."];
  }

  v16.receiver = self;
  v16.super_class = VSCredentialEntryAppDocumentController;
  [(VSAppDocumentController *)&v16 _startObservingViewModel:v4];
  v5 = [(VSCredentialEntryAppDocumentController *)self _credentialEntryViewModelWithViewModel:v4];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [v5 credentialEntryFields];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v17 count:16];
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
          objc_enumerationMutation(v6);
        }

        [*(*(&v12 + 1) + 8 * i) addObserver:self forKeyPath:@"text" options:3 context:kVSKeyValueObservingContext_CredentialEntryFieldText];
      }

      v8 = [v6 countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v8);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_stopObservingViewModel:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The viewModel parameter must not be nil."];
  }

  v16.receiver = self;
  v16.super_class = VSCredentialEntryAppDocumentController;
  [(VSAppDocumentController *)&v16 _stopObservingViewModel:v4];
  v5 = [(VSCredentialEntryAppDocumentController *)self _credentialEntryViewModelWithViewModel:v4];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [v5 credentialEntryFields];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v17 count:16];
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
          objc_enumerationMutation(v6);
        }

        [*(*(&v12 + 1) + 8 * i) removeObserver:self forKeyPath:@"text" context:kVSKeyValueObservingContext_CredentialEntryFieldText];
      }

      v8 = [v6 countByEnumeratingWithState:&v12 objects:v17 count:16];
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

- (BOOL)_updateViewModel:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (!v6)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The viewModel parameter must not be nil."];
  }

  v14.receiver = self;
  v14.super_class = VSCredentialEntryAppDocumentController;
  [(VSAppDocumentController *)&v14 _updateViewModel:v6 error:a4];
  v7 = [(VSCredentialEntryAppDocumentController *)self _credentialEntryViewModelWithViewModel:v6];
  v8 = [(VSAppDocumentController *)self appDocument];
  v9 = [v8 error];

  if (!v9)
  {
    v13 = 0;
    v10 = [(VSCredentialEntryAppDocumentController *)self _updateCredentialEntryViewModel:v7 error:&v13];
    v9 = v13;
    if (!a4)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v10 = 0;
  if (a4)
  {
LABEL_5:
    v11 = v9;
    *a4 = v9;
  }

LABEL_6:

  return v10;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a4;
  if (kVSKeyValueObservingContext_CredentialEntryFieldText == a6)
  {
    v12 = a5;
    v13 = VSDefaultLogObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_270DD4000, v13, OS_LOG_TYPE_DEFAULT, "Text field text did change.", buf, 2u);
    }

    v11 = v10;
    v14 = [v12 objectForKey:*MEMORY[0x277CCA2F0]];

    v15 = [v11 associatedTextFieldElement];
    v16 = VSDefaultLogObject();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_270DD4000, v16, OS_LOG_TYPE_DEFAULT, "Will update keyboard text.", buf, 2u);
    }

    v17 = [v15 keyboard];
    [v17 setText:v14];

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
    v11 = a5;
    [(VSAppDocumentController *)&v19 observeValueForKeyPath:a3 ofObject:v10 change:v11 context:a6];
  }
}

- (id)_credentialEntryViewModelWithViewModel:(id)a3
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
    [v4 raise:v5 format:{@"Unexpectedly, viewModel was %@, instead of VSCredentialEntryViewModel.", v7}];
  }

  return v3;
}

- (BOOL)_updateCredentialEntryViewModel:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (!v6)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The viewModel parameter must not be nil."];
  }

  v7 = [(VSAppDocumentController *)self templateElement];
  if ([v7 vs_elementType] == 161)
  {
    v12 = 0;
    v8 = [(VSCredentialEntryAppDocumentController *)self _updateCredentialEntryViewModel:v6 withTemplate:v7 error:&v12];
    v9 = v12;
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

- (BOOL)_updateCredentialEntryViewModel:(id)a3 withTemplate:(id)a4 error:(id *)a5
{
  v141 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = MEMORY[0x277CBE660];
  v111 = v7;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v82 = v8;
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The viewModel parameter must not be nil."];
    v8 = v82;
    if (v82)
    {
      goto LABEL_3;
    }
  }

  v83 = v8;
  [MEMORY[0x277CBEAD8] raise:*v9 format:@"The templateElement parameter must not be nil."];
  v8 = v83;
LABEL_3:
  v134 = 0u;
  v135 = 0u;
  v132 = 0u;
  v133 = 0u;
  v103 = v8;
  v10 = [v8 children];
  v11 = [v10 countByEnumeratingWithState:&v132 objects:v140 count:16];
  if (v11)
  {
    v12 = v11;
    v107 = 0;
    v13 = *v133;
    v112 = *v9;
    v104 = self;
    v105 = *v133;
    v106 = v10;
    while (1)
    {
      v14 = 0;
      v108 = v12;
      do
      {
        if (*v133 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v132 + 1) + 8 * v14);
        v16 = [v15 vs_elementType];
        if (v16 <= 156)
        {
          if (v16 == 49)
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
            if (v16 != 138)
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
            v42 = [v37 elementName];
            if ([v42 isEqual:@"description"])
            {
              v43 = [v37 text];
              [v43 string];
              v45 = v44 = v37;

              [v111 setAdditionalMessage:v45];
              v37 = v44;
            }
          }

          goto LABEL_71;
        }

        switch(v16)
        {
          case 157:
            v46 = [v15 attributes];
            v47 = [v46 objectForKey:@"label"];

            v48 = v47;
            [v111 setLinkTitle:v47];
            v49 = [v15 attributes];
            v50 = [v49 objectForKey:@"src"];

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
            v52 = [(VSCredentialEntryAppDocumentController *)self pickerElement];

            if (v52)
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
            v56 = [MEMORY[0x277CBEB18] array];
            v57 = [v37 attributes];
            v58 = [v57 objectForKey:@"title"];

            if (v58)
            {
              obja = v58;
              v122 = 0u;
              v123 = 0u;
              v124 = 0u;
              v125 = 0u;
              v116 = v37;
              v59 = [v37 children];
              v60 = [v59 countByEnumeratingWithState:&v122 objects:v138 count:16];
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
                      objc_enumerationMutation(v59);
                    }

                    v64 = *(*(&v122 + 1) + 8 * i);
                    v65 = objc_alloc_init(VSCredentialEntryPickerItem);
                    v66 = [v64 text];
                    v67 = [v66 string];
                    [(VSCredentialEntryPickerItem *)v65 setItemName:v67];

                    v68 = [v64 attributes];
                    v69 = [v68 objectForKey:@"value"];

                    if (v69)
                    {
                      [(VSCredentialEntryPickerItem *)v65 setItemValue:v69];
                      v70 = [v64 elementID];
                      [(VSCredentialEntryPickerItem *)v65 setItemId:v70];

                      [v56 addObject:v65];
                    }
                  }

                  v61 = [v59 countByEnumeratingWithState:&v122 objects:v138 count:16];
                }

                while (v61);
              }

              v71 = [v116 vs_selectedChildElementIndex];
              if ([v56 count])
              {
                v72 = objc_alloc_init(VSCredentialEntryPicker);
                v73 = obja;
                [(VSCredentialEntryPicker *)v72 setTitle:obja];
                [(VSCredentialEntryPicker *)v72 setPickerItems:v56];
                [(VSCredentialEntryPicker *)v72 setSelectedIndex:v71];
                self = v104;
                [(VSCredentialEntryAppDocumentController *)v104 setPickerElement:v116];
                v74 = [(VSCredentialEntryAppDocumentController *)v104 pickerElement];
                v75 = [v74 itemGroup];
                [v75 setSelectedItemIndex:v71];

                v76 = [(VSCredentialEntryAppDocumentController *)v104 pickerElement];
                v77 = [v76 itemGroup];
                [v77 setDelegate:v104];

                [v111 setPicker:v72];
                ++v107;
              }

              else
              {
                self = v104;
                v73 = obja;
              }

              v37 = v116;
            }

            v13 = v105;
            v10 = v106;
            v12 = v108;
            v14 = v110;
            goto LABEL_71;
          case 160:
            v17 = [v111 credentialEntryFields];

            if (!v17)
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
                  v24 = [v23 attributes];
                  v25 = [v24 objectForKey:@"label"];

                  if ([v25 length])
                  {
                    if (!v25)
                    {
                      [MEMORY[0x277CBEAD8] raise:v112 format:@"The fieldTitleOrNil parameter must not be nil."];
                    }

                    v26 = v25;
                    v27 = objc_alloc_init(VSITMLCredentialEntryField);
                    v28 = [v23 attributes];
                    v29 = [v28 objectForKey:@"required"];

                    if (v29)
                    {
                      [(VSCredentialEntryField *)v27 setRequired:1];
                    }

                    [(VSITMLCredentialEntryField *)v27 setAssociatedTextFieldElement:v23];
                    [(VSCredentialEntryField *)v27 setTitle:v26];
                    v30 = [v23 text];
                    v31 = [v30 string];

                    [(VSCredentialEntryField *)v27 setPlaceholder:v31];
                    v32 = [v23 attributes];
                    v33 = [v32 objectForKey:@"type"];

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

                    v35 = [v23 attributes];
                    v36 = [v35 objectForKey:@"secure"];

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

                  self = v104;
                  v13 = v105;
                  v10 = v106;
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
      v12 = [v10 countByEnumeratingWithState:&v132 objects:v140 count:16];
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
  v88 = self;
  v89 = v87;
  v121.receiver = v88;
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

  if (a5)
  {
    v99 = v98;
    *a5 = v98;
  }

  v100 = *MEMORY[0x277D85DE8];
  return v98 == 0;
}

- (void)itemGroup:(id)a3 selectedItemIndexDidChange:(int64_t)a4
{
  v6 = [(VSAppDocumentController *)self viewModel];

  if (!v6)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The [self viewModel] parameter must not be nil."];
  }

  v12 = [(VSAppDocumentController *)self viewModel];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v7 = MEMORY[0x277CBEAD8];
    v8 = *MEMORY[0x277CBE660];
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    [v7 raise:v8 format:{@"Unexpectedly, genericViewModel was %@, instead of VSCredentialEntryViewModel.", v10}];
  }

  v11 = [v12 picker];
  [v11 setSelectedIndex:a4];
}

- (void)viewModel:(id)a3 buttonTappedAtIndex:(unint64_t)a4
{
  v6 = [(VSAppDocumentController *)self filteredButtonLockupElements];

  if (!v6)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The [self filteredButtonLockupElements] parameter must not be nil."];
  }

  v7 = [(VSAppDocumentController *)self filteredButtonLockupElements];
  v8 = [v7 objectAtIndex:a4];

  [v8 dispatchEventOfType:2 canBubble:1 isCancelable:0 extraInfo:0 completionBlock:0];
}

- (void)viewModel:(id)a3 pickerDidSelectRow:(unint64_t)a4
{
  v6 = [(VSCredentialEntryAppDocumentController *)self pickerElement];
  v7 = [v6 children];

  if (!v7)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The [[self pickerElement] children] parameter must not be nil."];
  }

  v8 = [(VSCredentialEntryAppDocumentController *)self pickerElement];
  v9 = [v8 children];

  v12 = [v9 objectAtIndex:a4];

  v10 = [(VSCredentialEntryAppDocumentController *)self pickerElement];
  v11 = [v10 itemGroup];
  [v11 setSelectedItemIndex:a4];

  [v12 dispatchEventOfType:2 canBubble:1 isCancelable:0 extraInfo:0 completionBlock:0];
}

- (void)_updateCredentialEntryViewModel:(uint8_t *)buf withTemplate:(_BYTE *)a2 error:(os_log_t)log .cold.1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_270DD4000, log, OS_LOG_TYPE_ERROR, "Ignoring text element with empty title", buf, 2u);
}

@end