@interface VSAppDocumentController
- (BOOL)_updateViewModel:(id)a3 error:(id *)a4;
- (BOOL)document:(id)a3 evaluateStyleMediaQuery:(id)a4;
- (VSAppDocumentController)init;
- (VSAppDocumentController)initWithAppDocument:(id)a3;
- (VSAppDocumentControllerDelegate)delegate;
- (id)_getSupportedButtonTextsforTemplate:(id)a3 andElementKeys:(id)a4 supportedCount:(unint64_t)a5;
- (id)_imageItemProviderWithImageElement:(id)a3;
- (void)_notiftyDidFailToUpdateViewModelWithError:(id)a3;
- (void)_notiftyDidUpdateViewModel:(id)a3;
- (void)_notifyDidUpdateLogoViewModel:(id)a3;
- (void)_startObservingViewModel:(id)a3;
- (void)_stopObservingViewModel:(id)a3;
- (void)dealloc;
- (void)documentDidUpdate:(id)a3;
- (void)documentNeedsUpdate:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)userInterfaceStyleDidUpdate;
@end

@implementation VSAppDocumentController

- (VSAppDocumentController)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The %@ initializer is not available.", v5}];

  return 0;
}

- (VSAppDocumentController)initWithAppDocument:(id)a3
{
  v5 = a3;
  v17.receiver = self;
  v17.super_class = VSAppDocumentController;
  v6 = [(VSAppDocumentController *)&v17 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_appDocument, a3);
    [(IKAppDocument *)v7->_appDocument setDelegate:v7];
    v8 = [(IKAppDocument *)v7->_appDocument templateElement];
    templateElement = v7->_templateElement;
    v7->_templateElement = v8;

    v10 = [(VSAppDocumentController *)v7 _newViewModel];
    objc_storeStrong(&v7->_viewModel, v10);
    v16 = 0;
    v11 = [(VSAppDocumentController *)v7 _updateViewModel:v10 error:&v16];
    v12 = v16;
    v13 = v16;
    if (v11)
    {
      [(VSAppDocumentController *)v7 _startObservingViewModel:v10];
    }

    else
    {
      viewModel = v7->_viewModel;
      v7->_viewModel = 0;

      objc_storeStrong(&v7->_viewModelError, v12);
    }
  }

  return v7;
}

- (void)dealloc
{
  [(IKAppDocument *)self->_appDocument setDelegate:0];
  v3 = self->_viewModel;
  if (v3)
  {
    [(VSAppDocumentController *)self _stopObservingViewModel:v3];
  }

  v4.receiver = self;
  v4.super_class = VSAppDocumentController;
  [(VSAppDocumentController *)&v4 dealloc];
}

- (void)documentNeedsUpdate:(id)a3
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = VSDefaultLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_270DD4000, v4, OS_LOG_TYPE_DEFAULT, "Document needs update: %@", &v6, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)documentDidUpdate:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = VSDefaultLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = v4;
    _os_log_impl(&dword_270DD4000, v5, OS_LOG_TYPE_DEFAULT, "Document did update: %@", buf, 0xCu);
  }

  v6 = MEMORY[0x277CE2298];
  v7 = [(VSAppDocumentController *)self viewModel];
  v8 = [v6 optionalWithObject:v7];

  v9 = [v8 forceUnwrapObject];
  v15 = 0;
  v10 = [(VSAppDocumentController *)self _updateViewModel:v9 error:&v15];
  v11 = v15;
  v12 = v11;
  if (v10)
  {
    [(VSAppDocumentController *)self _notiftyDidUpdateViewModel:v9];
  }

  else
  {
    if (!v11)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The errorOrNil parameter must not be nil."];
    }

    v13 = v12;
    [(VSAppDocumentController *)self _stopObservingViewModel:v9];
    [(VSAppDocumentController *)self setViewModel:0];
    [(VSAppDocumentController *)self setViewModelError:v13];
    [(VSAppDocumentController *)self _notiftyDidFailToUpdateViewModelWithError:v13];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (BOOL)document:(id)a3 evaluateStyleMediaQuery:(id)a4
{
  v4 = MEMORY[0x277D759A0];
  v5 = a4;
  v6 = [v4 mainScreen];
  [v6 scale];
  v8 = v7;

  v9 = [v5 featureValues];

  v10 = [v9 objectForKey:@"min-pixel-ratio"];
  v11 = [v10 integerValue];

  return v8 == v11;
}

- (BOOL)_updateViewModel:(id)a3 error:(id *)a4
{
  v50 = *MEMORY[0x277D85DE8];
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v6 = [(VSAppDocumentController *)self templateElement];
  v7 = [v6 children];

  v8 = [v7 countByEnumeratingWithState:&v41 objects:v49 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v42;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v42 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v41 + 1) + 8 * i);
        if ([v12 vs_elementType] == 156)
        {
          [v5 addObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v41 objects:v49 count:16];
    }

    while (v9);
  }

  if ([v5 count] < 3)
  {
    [(VSAppDocumentController *)self setFilteredButtonLockupElements:v5];
  }

  else
  {
    v13 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:v5];
    v14 = objc_alloc(MEMORY[0x277CBEB18]);
    v15 = [v13 objectAtIndex:0];
    v48[0] = v15;
    v16 = [v13 objectAtIndex:1];
    v48[1] = v16;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:2];
    v18 = [v14 initWithArray:v17];

    v36 = v18;
    [v13 removeObjectsInArray:v18];
    v19 = VSErrorLogObject();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [VSAppDocumentController _updateViewModel:v13 error:v19];
    }

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v20 = v13;
    v21 = [v20 countByEnumeratingWithState:&v37 objects:v47 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v38;
      v24 = *MEMORY[0x277CBE660];
      do
      {
        for (j = 0; j != v22; ++j)
        {
          if (*v38 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v26 = *(*(&v37 + 1) + 8 * j);
          if ([v26 vs_elementType] == 138)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v27 = MEMORY[0x277CBEAD8];
              v28 = objc_opt_class();
              v29 = NSStringFromClass(v28);
              [v27 raise:v24 format:{@"Unexpectedly, extraButton was %@, instead of IKTextElement.", v29}];
            }

            v30 = v26;
            v31 = [v30 text];
            v32 = [v31 string];

            v33 = VSErrorLogObject();
            if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v46 = v32;
              _os_log_error_impl(&dword_270DD4000, v33, OS_LOG_TYPE_ERROR, "Attempted to add extra button with text: %@", buf, 0xCu);
            }
          }
        }

        v22 = [v20 countByEnumeratingWithState:&v37 objects:v47 count:16];
      }

      while (v22);
    }

    [(VSAppDocumentController *)self setFilteredButtonLockupElements:v36];
  }

  v34 = *MEMORY[0x277D85DE8];
  return 1;
}

- (id)_getSupportedButtonTextsforTemplate:(id)a3 andElementKeys:(id)a4 supportedCount:(unint64_t)a5
{
  v49 = *MEMORY[0x277D85DE8];
  v35 = a3;
  v7 = a4;
  v36 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v8 = [(VSAppDocumentController *)self filteredButtonLockupElements];
  v9 = [v8 count];

  if (v9)
  {
    v10 = [(VSAppDocumentController *)self filteredButtonLockupElements];
    v11 = [v10 count];

    if (v11)
    {
      v12 = 0;
      v37 = *MEMORY[0x277CBE660];
      v33 = self;
      do
      {
        v13 = [(VSAppDocumentController *)self filteredButtonLockupElements];
        v14 = [v13 objectAtIndex:v12];

        if (v14)
        {
          v39 = v12;
          v42 = 0u;
          v43 = 0u;
          v40 = 0u;
          v41 = 0u;
          v34 = v14;
          v15 = [v14 vs_itemElementsOfType:138];
          v16 = [v15 countByEnumeratingWithState:&v40 objects:v48 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = 0;
            v19 = *v41;
            do
            {
              for (i = 0; i != v17; ++i)
              {
                if (*v41 != v19)
                {
                  objc_enumerationMutation(v15);
                }

                if (v18)
                {
                  v18 = 1;
                }

                else
                {
                  v21 = *(*(&v40 + 1) + 8 * i);
                  v22 = [v21 elementName];
                  if (v22 && [v7 containsObject:v22])
                  {
                    if (!v21)
                    {
                      [MEMORY[0x277CBEAD8] raise:v37 format:@"The textElement parameter must not be nil."];
                    }

                    v23 = v21;
                    v24 = [v23 text];
                    v25 = [v24 string];

                    if (v25)
                    {
                      if (v39 >= a5)
                      {
                        v27 = VSErrorLogObject();
                        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
                        {
                          *buf = 138412546;
                          v45 = v35;
                          v46 = 2112;
                          v47 = v25;
                          _os_log_error_impl(&dword_270DD4000, v27, OS_LOG_TYPE_ERROR, "Tried to add invalid extra button to %@ Template with text: %@", buf, 0x16u);
                        }
                      }

                      else
                      {
                        v26 = VSDefaultLogObject();
                        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
                        {
                          *buf = 138412546;
                          v45 = v35;
                          v46 = 2112;
                          v47 = v25;
                          _os_log_impl(&dword_270DD4000, v26, OS_LOG_TYPE_DEFAULT, "Setting %@ Template button with text: %@", buf, 0x16u);
                        }

                        v27 = [v25 copy];
                        [v36 addObject:v27];
                      }

                      v18 = v39 < a5;
                    }

                    else
                    {
                      v18 = 0;
                    }
                  }

                  else
                  {
                    v18 = 0;
                  }
                }
              }

              v17 = [v15 countByEnumeratingWithState:&v40 objects:v48 count:16];
            }

            while (v17);
          }

          self = v33;
          v14 = v34;
          v12 = v39;
        }

        ++v12;
        v28 = [(VSAppDocumentController *)self filteredButtonLockupElements];
        v29 = [v28 count];
      }

      while (v12 < v29);
    }
  }

  else
  {
    v30 = VSErrorLogObject();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      [VSAppDocumentController _getSupportedButtonTextsforTemplate:v35 andElementKeys:v30 supportedCount:?];
    }
  }

  v31 = *MEMORY[0x277D85DE8];

  return v36;
}

- (void)_startObservingViewModel:(id)a3
{
  v4 = kVSKeyValueObservingContext_ViewModelViewState;
  v5 = a3;
  [v5 addObserver:self forKeyPath:@"viewState" options:3 context:v4];
  [v5 addObserver:self forKeyPath:@"userInterfaceStyle" options:1 context:kVSKeyValueObservingContext_ViewModelUserInterfaceStyle];
}

- (void)_stopObservingViewModel:(id)a3
{
  v4 = kVSKeyValueObservingContext_ViewModelViewState;
  v5 = a3;
  [v5 removeObserver:self forKeyPath:@"viewState" context:v4];
  [v5 removeObserver:self forKeyPath:@"userInterfaceStyle" context:kVSKeyValueObservingContext_ViewModelUserInterfaceStyle];
}

- (id)_imageItemProviderWithImageElement:(id)a3
{
  v3 = [a3 vs_url];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x277CCAA88]);
    v5 = [v4 initWithItem:v3 typeIdentifier:*MEMORY[0x277CC20B0]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = v12;
  if (kVSKeyValueObservingContext_ViewModelViewState == a6)
  {
    v14 = [v12 objectForKey:*MEMORY[0x277CCA2F0]];
    v15 = [v14 unsignedIntegerValue];

    if (v15 > 3)
    {
      if (v15 == 4)
      {
        v24 = VSDefaultLogObject();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_270DD4000, v24, OS_LOG_TYPE_DEFAULT, "Will call onDisappear()", buf, 2u);
        }

        v25 = [(VSAppDocumentController *)self appDocument];
        [v25 onDisappear];

        v18 = VSDefaultLogObject();
        if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_27;
        }

        *buf = 0;
        v19 = "Did call onDisappear()";
        goto LABEL_26;
      }

      if (v15 != 6)
      {
        goto LABEL_28;
      }

      v20 = VSDefaultLogObject();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_270DD4000, v20, OS_LOG_TYPE_DEFAULT, "Will call onUnload()", buf, 2u);
      }

      v21 = [(VSAppDocumentController *)self appDocument];
      [v21 onUnload];

      v18 = VSDefaultLogObject();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v19 = "Did call onUnload()";
        goto LABEL_26;
      }
    }

    else
    {
      if (v15 == 1)
      {
        v22 = VSDefaultLogObject();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_270DD4000, v22, OS_LOG_TYPE_DEFAULT, "Will call onLoad()", buf, 2u);
        }

        v23 = [(VSAppDocumentController *)self appDocument];
        [v23 onLoad];

        v18 = VSDefaultLogObject();
        if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_27;
        }

        *buf = 0;
        v19 = "Did call onLoad()";
        goto LABEL_26;
      }

      if (v15 != 2)
      {
        goto LABEL_28;
      }

      v16 = VSDefaultLogObject();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_270DD4000, v16, OS_LOG_TYPE_DEFAULT, "Will call onAppear()", buf, 2u);
      }

      v17 = [(VSAppDocumentController *)self appDocument];
      [v17 onAppear];

      v18 = VSDefaultLogObject();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v19 = "Did call onAppear()";
LABEL_26:
        _os_log_impl(&dword_270DD4000, v18, OS_LOG_TYPE_DEFAULT, v19, buf, 2u);
      }
    }

LABEL_27:

    goto LABEL_28;
  }

  if (kVSKeyValueObservingContext_ViewModelUserInterfaceStyle == a6)
  {
    [(VSAppDocumentController *)self userInterfaceStyleDidUpdate];
  }

  else
  {
    v26.receiver = self;
    v26.super_class = VSAppDocumentController;
    [(VSAppDocumentController *)&v26 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
  }

LABEL_28:
}

- (void)_notiftyDidUpdateViewModel:(id)a3
{
  v5 = a3;
  v4 = [(VSAppDocumentController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 appDocumentController:self didUpdateViewModel:v5];
  }
}

- (void)_notiftyDidFailToUpdateViewModelWithError:(id)a3
{
  v5 = a3;
  v4 = [(VSAppDocumentController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 appDocumentController:self didFailToUpdateViewModelWithError:v5];
  }
}

- (void)_notifyDidUpdateLogoViewModel:(id)a3
{
  v5 = a3;
  v4 = [(VSAppDocumentController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 appDocumentController:self didUpdateLogoViewModel:v5];
  }
}

- (void)userInterfaceStyleDidUpdate
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = [(VSAppDocumentController *)self viewModel];
  if (v3)
  {
    v4 = [(VSAppDocumentController *)self viewModel];

    if (!v4)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The [self viewModel] parameter must not be nil."];
    }

    v5 = [(VSAppDocumentController *)self viewModel];
    if ([v5 conformsToProtocol:&unk_2880E88E0])
    {
      v5 = v5;
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v6 = [(VSAppDocumentController *)self templateElement];
      v7 = [v6 children];

      v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v20;
        while (2)
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v20 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v19 + 1) + 8 * i);
            if ([v12 vs_elementType] == 49)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                v13 = MEMORY[0x277CBEAD8];
                v14 = *MEMORY[0x277CBE660];
                v15 = objc_opt_class();
                v16 = NSStringFromClass(v15);
                [v13 raise:v14 format:{@"Unexpectedly, childElement was %@, instead of IKImageElement.", v16}];
              }

              v17 = [(VSAppDocumentController *)self _imageItemProviderWithImageElement:v12];
              [v5 setLogoProvider:v17];
              [(VSAppDocumentController *)self _notifyDidUpdateLogoViewModel:v5];

              goto LABEL_17;
            }
          }

          v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
          if (v9)
          {
            continue;
          }

          break;
        }
      }

LABEL_17:
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (VSAppDocumentControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_updateViewModel:(void *)a1 error:(NSObject *)a2 .cold.1(void *a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 134218240;
  v5 = 2;
  v6 = 2048;
  v7 = [a1 count];
  _os_log_error_impl(&dword_270DD4000, a2, OS_LOG_TYPE_ERROR, "Only %ld button lockups are allowed, attempted adding %ld extra button(s).", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)_getSupportedButtonTextsforTemplate:(uint64_t)a1 andElementKeys:(NSObject *)a2 supportedCount:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_270DD4000, a2, OS_LOG_TYPE_ERROR, "No button specified for the %@ Template", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end