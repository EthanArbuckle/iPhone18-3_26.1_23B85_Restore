@interface SUScriptViewController
+ (id)webScriptNameForKeyName:(id)name;
+ (id)webScriptNameForSelector:(SEL)selector;
+ (void)initialize;
- (BOOL)equals:(id)equals;
- (NSString)contextDictionary;
- (NSString)modalPresentationStyle;
- (SUScriptNavigationController)navigationController;
- (SUScriptNavigationItem)navigationItem;
- (SUScriptPopOver)popOver;
- (SUScriptSection)section;
- (SUScriptSplitViewController)splitViewController;
- (SUScriptViewController)inputAccessoryViewController;
- (SUScriptViewController)modalViewController;
- (SUScriptViewController)presentingViewController;
- (SUScriptViewController)transientViewController;
- (SUScriptViewController)volumeViewController;
- (UIViewController)nativeViewController;
- (id)_parentViewControllerForVolumeViewController;
- (id)backgroundColor;
- (id)newScriptColorWithValue:(id)value;
- (id)scriptAttributeKeys;
- (id)showsLibraryButton;
- (id)toolbarItems;
- (id)topBackgroundColor;
- (id)usesBlurredBackground;
- (int)_transitionForString:(id)string;
- (void)_dismissModalViewControllerAnimated:(BOOL)animated;
- (void)_dismissModalViewControllerWithTransition:(id)transition;
- (void)_presentModalViewController:(id)controller withTransition:(id)transition;
- (void)addPassbookPassWithURL:(id)l;
- (void)dealloc;
- (void)dismissModalViewControllerAnimated:(BOOL)animated;
- (void)dismissModalViewControllerWithTransition:(id)transition;
- (void)dismissViewControllerAnimated:(BOOL)animated completion:(id)completion;
- (void)dismissVolumeViewControllerAnimated:(id)animated;
- (void)presentModalViewController:(id)controller withTransition:(id)transition;
- (void)presentVolumeViewController:(id)controller animated:(id)animated;
- (void)setBackgroundColor:(id)color;
- (void)setInputAccessoryViewController:(id)controller;
- (void)setModalPresentationStyle:(id)style;
- (void)setNativeViewController:(id)controller;
- (void)setSection:(id)section;
- (void)setShowsLibraryButton:(id)button;
- (void)setToolbarItems:(id)items animated:(BOOL)animated;
- (void)setTopBackgroundColor:(id)color;
- (void)setTransientViewController:(id)controller;
- (void)setUsesBlurredBackground:(id)background;
- (void)tearDownUserInterface;
@end

@implementation SUScriptViewController

- (void)dealloc
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  scriptToolbarItems = self->_scriptToolbarItems;
  v4 = [(NSArray *)scriptToolbarItems countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(scriptToolbarItems);
        }

        [*(*(&v9 + 1) + 8 * i) setVisible:0];
      }

      v5 = [(NSArray *)scriptToolbarItems countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8.receiver = self;
  v8.super_class = SUScriptViewController;
  [(SUScriptObject *)&v8 dealloc];
}

- (id)newScriptColorWithValue:(id)value
{
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    value = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [SUScriptColor alloc];

    return [(SUScriptColor *)v3 initWithStyleString:value];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {

      return value;
    }

    else if (value)
    {
      return 0;
    }

    else
    {
      v5 = [SUScriptColor alloc];
      clearColor = [MEMORY[0x1E69DC888] clearColor];

      return [(SUScriptColor *)v5 initWithUIColor:clearColor];
    }
  }
}

- (UIViewController)nativeViewController
{
  object = [(SUScriptNativeObject *)[(SUScriptObject *)self nativeObject] object];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    object = [(SUScriptViewController *)self newNativeViewController];
    if (object)
    {
      [(SUScriptViewController *)self setNativeViewController:object];
      v4 = object;
    }
  }

  if (objc_opt_respondsToSelector())
  {
    copyScriptProperties = [(UIViewController *)object copyScriptProperties];
    if ([copyScriptProperties usesBlurredBackground])
    {
      [(UIViewController *)object setModalPresentationStyle:17];
    }
  }

  return object;
}

- (void)setNativeViewController:(id)controller
{
  if (controller)
  {
    controller = [(SUScriptNativeObject *)SUScriptViewControllerNativeObject objectWithNativeObject:?];
  }

  [(SUScriptObject *)self setNativeObject:controller];
}

- (BOOL)equals:(id)equals
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  objc_opt_class();
  objc_opt_class();
  v10 = objc_opt_isKindOfClass() & 1;
  v5 = *(v8 + 24);
  if (self != equals && (v8[3] & 1) != 0)
  {
    WebThreadRunOnMainThread();
    v5 = *(v8 + 24);
  }

  _Block_object_dispose(&v7, 8);
  return v5 & 1;
}

uint64_t __33__SUScriptViewController_equals___block_invoke(uint64_t a1)
{
  result = [objc_msgSend(*(a1 + 32) "nativeViewController")];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (void)tearDownUserInterface
{
  v17 = *MEMORY[0x1E69E9840];
  object = [(SUScriptNativeObject *)[(SUScriptObject *)self nativeObject] object];
  toolbarItems = [object toolbarItems];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [toolbarItems countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(toolbarItems);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        [v10 target];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v10 setAction:0];
          [v10 setTarget:0];
          v7 = 1;
        }
      }

      v6 = [toolbarItems countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
    if (v7)
    {
      [object setToolbarItems:0];
    }
  }

  v11.receiver = self;
  v11.super_class = SUScriptViewController;
  [(SUScriptObject *)&v11 tearDownUserInterface];
}

- (void)addPassbookPassWithURL:(id)l
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    WebThreadRunOnMainThread();
  }

  else
  {
    v3 = MEMORY[0x1E69E2F88];

    [v3 throwException:@"Invalid argument"];
  }
}

uint64_t __49__SUScriptViewController_addPassbookPassWithURL___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) nativeObject];
  v3 = [MEMORY[0x1E695DFF8] URLWithString:*(a1 + 40)];

  return [v2 _loadPassbookPassWithURL:v3];
}

- (void)dismissViewControllerAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  webThreadMainThreadBatchProxy = [(SUScriptObject *)self webThreadMainThreadBatchProxy];

  [webThreadMainThreadBatchProxy dismissViewControllerAnimated:animatedCopy completion:completion];
}

- (void)dismissModalViewControllerAnimated:(BOOL)animated
{
  animatedCopy = animated;
  webThreadMainThreadBatchProxy = [(SUScriptObject *)self webThreadMainThreadBatchProxy];

  [webThreadMainThreadBatchProxy _dismissModalViewControllerAnimated:animatedCopy];
}

- (void)dismissModalViewControllerWithTransition:(id)transition
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = 0;
    goto LABEL_3;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = 0;
  if (!transition || (isKindOfClass & 1) != 0 || (objc_opt_class(), v5 = transition, (objc_opt_isKindOfClass() & 1) != 0))
  {
LABEL_3:
    webThreadMainThreadBatchProxy = [(SUScriptObject *)self webThreadMainThreadBatchProxy];

    [webThreadMainThreadBatchProxy _dismissModalViewControllerWithTransition:v5];
    return;
  }

  v8 = MEMORY[0x1E69E2F88];

  [v8 throwException:@"Invalid argument"];
}

- (void)presentModalViewController:(id)controller withTransition:(id)transition
{
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    transition = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (!transition || (objc_opt_class(), (objc_opt_isKindOfClass())))
  {
    webThreadMainThreadBatchProxy = [(SUScriptObject *)self webThreadMainThreadBatchProxy];

    [webThreadMainThreadBatchProxy _presentModalViewController:controller withTransition:transition];
  }

  else
  {
    v8 = MEMORY[0x1E69E2F88];

    [v8 throwException:@"Invalid argument"];
  }
}

uint64_t __64__SUScriptViewController_runScrollTest_withDelta_forIterations___block_invoke(uint64_t a1)
{
  v2 = [objc_msgSend(objc_msgSend(*(a1 + 32) "nativeViewController")];
  v3 = *(a1 + 40);
  LODWORD(v4) = *(a1 + 48);
  v5 = *(a1 + 52);

  return [v2 runScrollTest:v3 withDelta:v5 forIterations:v4];
}

- (void)setToolbarItems:(id)items animated:(BOOL)animated
{
  v31 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    itemsCopy = 0;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    itemsCopy = 0;
    if (items)
    {
      if ((isKindOfClass & 1) == 0)
      {
        objc_opt_class();
        itemsCopy = items;
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v20 = MEMORY[0x1E69E2F88];
          goto LABEL_24;
        }
      }
    }
  }

  v7 = [itemsCopy copyArrayValueWithValidator:SUISAValidator context:objc_opt_class()];
  if (v7)
  {
    v8 = v7;
    v27 = 0u;
    v28 = 0u;
    v26 = 0u;
    v25 = 0u;
    scriptToolbarItems = self->_scriptToolbarItems;
    v10 = [(NSArray *)scriptToolbarItems countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v26;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v26 != v12)
          {
            objc_enumerationMutation(scriptToolbarItems);
          }

          [*(*(&v25 + 1) + 8 * i) setVisible:0];
        }

        v11 = [(NSArray *)scriptToolbarItems countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v11);
    }

    v14 = [v8 copy];
    self->_scriptToolbarItems = v14;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v15 = [(NSArray *)v14 countByEnumeratingWithState:&v21 objects:v29 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v22;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v22 != v17)
          {
            objc_enumerationMutation(v14);
          }

          [*(*(&v21 + 1) + 8 * j) setVisible:1];
        }

        v16 = [(NSArray *)v14 countByEnumeratingWithState:&v21 objects:v29 count:16];
      }

      while (v16);
    }

    WebThreadRunOnMainThread();

    return;
  }

  v20 = MEMORY[0x1E69E2F88];
LABEL_24:

  [v20 throwException:@"Invalid argument"];
}

void __51__SUScriptViewController_setToolbarItems_animated___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = [objc_msgSend(*(a1 + 32) "clientInterface")];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = *(a1 + 40);
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v11 + 1) + 8 * i) nativeButtonOfType:1];
        if (v9)
        {
          v10 = v9;
          [v3 styleBarButtonItem:v9];
          [v2 addObject:v10];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  [objc_msgSend(*(a1 + 32) "nativeViewController")];
}

- (NSString)contextDictionary
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3052000000;
  v7 = __Block_byref_object_copy__12;
  v8 = __Block_byref_object_dispose__12;
  v9 = 0;
  WebThreadRunOnMainThread();
  v2 = v5[5];
  _Block_object_dispose(&v4, 8);
  return v2;
}

void __43__SUScriptViewController_contextDictionary__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) nativeViewController];
  if (objc_opt_respondsToSelector())
  {
    v5 = [v2 copyScriptProperties];
    v3 = [v5 contextDictionary];
    if (v3)
    {
      v4 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v3 options:0 error:0];
      if (v4)
      {
        *(*(*(a1 + 40) + 8) + 40) = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v4 encoding:4];
      }
    }
  }
}

- (id)backgroundColor
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3052000000;
  v11 = __Block_byref_object_copy__12;
  v12 = __Block_byref_object_dispose__12;
  v13 = 0;
  v6 = MEMORY[0x1E69E9820];
  WebThreadRunOnMainThread();
  v2 = v9[5];
  if (v2)
  {
    null = v2;
  }

  else
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v4 = null;
  _Block_object_dispose(&v8, 8);
  return v4;
}

void __41__SUScriptViewController_backgroundColor__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) nativeViewController];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 copyScriptProperties];
    v4 = [v3 backgroundColor];

    if (!v4)
    {
      return;
    }

LABEL_6:
    *(*(*(a1 + 40) + 8) + 40) = [SUScriptColor alloc];
    *(*(*(a1 + 40) + 8) + 40) = [*(*(*(a1 + 40) + 8) + 40) initWithUIColor:v4];
    return;
  }

  if ([v2 isViewLoaded])
  {
    v4 = [objc_msgSend(v2 "view")];
    if (v4)
    {
      goto LABEL_6;
    }
  }
}

- (SUScriptViewController)inputAccessoryViewController
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3052000000;
  v11 = __Block_byref_object_copy__12;
  v12 = __Block_byref_object_dispose__12;
  v13 = 0;
  v6 = MEMORY[0x1E69E9820];
  WebThreadRunOnMainThread();
  if (v9[5])
  {
    [(SUScriptObject *)self checkInScriptObject:v6, 3221225472, __54__SUScriptViewController_inputAccessoryViewController__block_invoke, &unk_1E81650B0, self, &v8];
    v3 = v9[5];
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  _Block_object_dispose(&v8, 8);
  return v4;
}

uint64_t __54__SUScriptViewController_inputAccessoryViewController__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) nativeViewController];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    result = [objc_msgSend(v2 "inputAccessoryViewController")];
    *(*(*(a1 + 40) + 8) + 40) = result;
  }

  return result;
}

- (NSString)modalPresentationStyle
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v6 = MEMORY[0x1E69E9820];
  WebThreadRunOnMainThread();
  if ((v9[3] - 1) >= 2)
  {
    v3 = [(SUScriptViewController *)self modalPresentationStyleNameFullScreen:v6];
  }

  else
  {
    v3 = [(SUScriptViewController *)self modalPresentationStyleNameFormSheet:v6];
  }

  v4 = v3;
  _Block_object_dispose(&v8, 8);
  return v4;
}

uint64_t __48__SUScriptViewController_modalPresentationStyle__block_invoke(uint64_t a1)
{
  result = [objc_msgSend(*(a1 + 32) "nativeViewController")];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (SUScriptViewController)modalViewController
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3052000000;
  v16 = __Block_byref_object_copy__12;
  v17 = __Block_byref_object_dispose__12;
  v18 = 0;
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __45__SUScriptViewController_modalViewController__block_invoke;
  v10 = &unk_1E81650D8;
  selfCopy = self;
  v12 = &v13;
  WebThreadRunOnMainThread();
  if (v14[5] && ([(SUScriptObject *)self checkInScriptObject:v7, 3221225472, __45__SUScriptViewController_modalViewController__block_invoke, &unk_1E81650D8, selfCopy, &v13], (v3 = v14[5]) != 0))
  {
    null = v3;
  }

  else
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v5 = null;
  _Block_object_dispose(&v13, 8);
  return v5;
}

void __45__SUScriptViewController_modalViewController__block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  *(*(*(a1 + 40) + 8) + 40) = [objc_msgSend(objc_msgSend(*(a1 + 32) "nativeViewController")];
  v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{*(*(*(a1 + 40) + 8) + 40), 0}];
  v11 = a1;
  v3 = [objc_msgSend(*(a1 + 32) invocationBatch:{0), "copyQueuedInvocationsForObject:", *(a1 + 32)}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      v7 = 0;
      do
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * v7);
        v9 = [v8 selector];
        if (sel_isEqual(v9, sel__dismissModalViewControllerAnimated_) || sel_isEqual(v9, sel__dismissModalViewControllerWithTransition_))
        {
          [v2 removeLastObject];
        }

        else if (sel_isEqual(v9, sel__presentModalViewController_withTransition_))
        {
          v12 = 0;
          [v8 getArgument:&v12 atIndex:2];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v2 addObject:v12];
          }
        }

        ++v7;
      }

      while (v5 != v7);
      v10 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
      v5 = v10;
    }

    while (v10);
  }

  *(*(*(v11 + 40) + 8) + 40) = [v2 lastObject];
}

- (SUScriptNavigationController)navigationController
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3052000000;
  v11 = __Block_byref_object_copy__12;
  v12 = __Block_byref_object_dispose__12;
  v13 = 0;
  v6 = MEMORY[0x1E69E9820];
  WebThreadRunOnMainThread();
  if (v9[5])
  {
    [(SUScriptObject *)self checkInScriptObject:v6, 3221225472, __46__SUScriptViewController_navigationController__block_invoke, &unk_1E81650B0, self, &v8];
    v3 = v9[5];
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  _Block_object_dispose(&v8, 8);
  return v4;
}

uint64_t __46__SUScriptViewController_navigationController__block_invoke(uint64_t a1)
{
  v2 = [objc_msgSend(*(a1 + 32) "nativeViewController")];
  *(*(*(a1 + 40) + 8) + 40) = [v2 copyScriptViewController];
  objc_opt_class();
  result = objc_opt_isKindOfClass();
  if ((result & 1) == 0)
  {

    *(*(*(a1 + 40) + 8) + 40) = objc_alloc_init(SUScriptNavigationController);
    v4 = *(*(*(a1 + 40) + 8) + 40);

    return [v4 setNativeViewController:v2];
  }

  return result;
}

- (SUScriptNavigationItem)navigationItem
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3052000000;
  v11 = __Block_byref_object_copy__12;
  v12 = __Block_byref_object_dispose__12;
  v13 = 0;
  v6 = MEMORY[0x1E69E9820];
  WebThreadRunOnMainThread();
  v2 = v9[5];
  if (v2)
  {
    null = v2;
  }

  else
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v4 = null;
  _Block_object_dispose(&v8, 8);
  return v4;
}

uint64_t __40__SUScriptViewController_navigationItem__block_invoke(uint64_t a1)
{
  result = [objc_msgSend(*(a1 + 32) "nativeViewController")];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 40) = [[SUScriptNavigationItem alloc] initWithNativeNavigationItem:result];
    v3 = *(a1 + 32);
    v4 = *(*(*(a1 + 40) + 8) + 40);

    return [v3 checkInScriptObject:v4];
  }

  return result;
}

- (SUScriptPopOver)popOver
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3052000000;
  v16 = __Block_byref_object_copy__12;
  v17 = __Block_byref_object_dispose__12;
  v18 = 0;
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __33__SUScriptViewController_popOver__block_invoke;
  v10 = &unk_1E81650B0;
  selfCopy = self;
  v12 = &v13;
  WebThreadRunOnMainThread();
  if (v14[5] && ([(SUScriptObject *)self checkInScriptObject:v7, 3221225472, __33__SUScriptViewController_popOver__block_invoke, &unk_1E81650B0, selfCopy, &v13], (v3 = v14[5]) != 0))
  {
    null = v3;
  }

  else
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v5 = null;
  _Block_object_dispose(&v13, 8);
  return v5;
}

uint64_t __33__SUScriptViewController_popOver__block_invoke(uint64_t a1)
{
  result = [objc_msgSend(objc_msgSend(*(a1 + 32) "nativeViewController")];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (SUScriptViewController)presentingViewController
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3052000000;
  v11 = __Block_byref_object_copy__12;
  v12 = __Block_byref_object_dispose__12;
  v13 = 0;
  v6 = MEMORY[0x1E69E9820];
  WebThreadRunOnMainThread();
  if (v9[5])
  {
    [(SUScriptObject *)self checkInScriptObject:v6, 3221225472, __50__SUScriptViewController_presentingViewController__block_invoke, &unk_1E81650D8, self, &v8];
    v3 = v9[5];
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  _Block_object_dispose(&v8, 8);
  return v4;
}

uint64_t __50__SUScriptViewController_presentingViewController__block_invoke(uint64_t a1)
{
  result = [objc_msgSend(objc_msgSend(*(a1 + 32) "nativeViewController")];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (SUScriptSection)section
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3052000000;
  v11 = __Block_byref_object_copy__12;
  v12 = __Block_byref_object_dispose__12;
  v13 = 0;
  v6 = MEMORY[0x1E69E9820];
  WebThreadRunOnMainThread();
  v2 = v9[5];
  if (v2)
  {
    null = v2;
  }

  else
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v4 = null;
  _Block_object_dispose(&v8, 8);
  return v4;
}

SUScriptSection *__33__SUScriptViewController_section__block_invoke(uint64_t a1)
{
  result = [objc_msgSend(*(a1 + 32) "nativeViewController")];
  if (result)
  {
    result = [[SUScriptSection alloc] initWithNativeSection:result];
    *(*(*(a1 + 40) + 8) + 40) = result;
  }

  return result;
}

- (void)setBackgroundColor:(id)color
{
  v3 = [(SUScriptViewController *)self newScriptColorWithValue:color];
  if (v3)
  {
    v4 = v3;
    WebThreadRunOnMainThread();
  }

  else
  {
    v5 = MEMORY[0x1E69E2F88];

    [v5 throwException:@"Invalid argument"];
  }
}

void __45__SUScriptViewController_setBackgroundColor___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) nativeViewController];
  if (objc_opt_respondsToSelector())
  {
    v5 = [v2 copyScriptProperties];
    [v5 setBackgroundColor:{objc_msgSend(*(a1 + 40), "nativeColor")}];
    [v2 setScriptProperties:v5];
  }

  else if ([v2 isViewLoaded])
  {
    v3 = [v2 view];
    v4 = [*(a1 + 40) nativeColor];

    [v3 setBackgroundColor:v4];
  }
}

- (void)setInputAccessoryViewController:(id)controller
{
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), !controller) || (isKindOfClass & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    WebThreadRunOnMainThread();
  }

  else
  {
    v5 = MEMORY[0x1E69E2F88];

    [v5 throwException:@"Invalid argument"];
  }
}

uint64_t __58__SUScriptViewController_setInputAccessoryViewController___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) nativeViewController];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v4 = [*(a1 + 40) nativeViewController];

    return [v2 setInputAccessoryViewController:v4];
  }

  return result;
}

- (void)setModalPresentationStyle:(id)style
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    styleCopy = 0;
LABEL_3:
    [styleCopy isEqualToString:{-[SUScriptViewController modalPresentationStyleNameFormSheet](self, "modalPresentationStyleNameFormSheet")}];
    WebThreadRunOnMainThread();
    return;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  styleCopy = 0;
  if (!style)
  {
    goto LABEL_3;
  }

  if (isKindOfClass)
  {
    goto LABEL_3;
  }

  objc_opt_class();
  styleCopy = style;
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_3;
  }

  v7 = MEMORY[0x1E69E2F88];

  [v7 throwException:@"Invalid argument"];
}

uint64_t __52__SUScriptViewController_setModalPresentationStyle___block_invoke(uint64_t a1)
{
  result = [objc_msgSend(MEMORY[0x1E69DC938] "currentDevice")];
  if (result == 1)
  {
    v3 = [*(a1 + 32) nativeViewController];

    return [v3 setModalPresentationStyle:2];
  }

  return result;
}

uint64_t __52__SUScriptViewController_setModalPresentationStyle___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) nativeViewController];

  return [v1 setModalPresentationStyle:0];
}

- (void)setSection:(id)section
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    WebThreadRunOnMainThread();
  }

  else
  {
    v3 = MEMORY[0x1E69E2F88];

    [v3 throwException:@"Invalid argument"];
  }
}

uint64_t __37__SUScriptViewController_setSection___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) nativeViewController];
  v3 = [v2 tabBarController];
  objc_opt_class();
  result = objc_opt_isKindOfClass();
  if (result)
  {
    v5 = [*(a1 + 40) identifier];

    return [v3 pushTransientViewController:v2 onSectionWithIdentifier:v5];
  }

  return result;
}

- (void)setShowsLibraryButton:(id)button
{
  if (objc_opt_respondsToSelector())
  {
    WebThreadRunOnMainThread();
  }

  else
  {
    v3 = MEMORY[0x1E69E2F88];

    [v3 throwException:@"Invalid argument"];
  }
}

uint64_t __48__SUScriptViewController_setShowsLibraryButton___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) nativeViewController];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v4 = [*(a1 + 40) BOOLValue];

    return [v2 setShowsLibraryButton:v4];
  }

  return result;
}

- (void)setTopBackgroundColor:(id)color
{
  v3 = [(SUScriptViewController *)self newScriptColorWithValue:color];
  if (v3)
  {
    v4 = v3;
    WebThreadRunOnMainThread();
  }

  else
  {
    v5 = MEMORY[0x1E69E2F88];

    [v5 throwException:@"Invalid argument"];
  }
}

void __48__SUScriptViewController_setTopBackgroundColor___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) nativeViewController];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 copyScriptProperties];
    [v3 setTopExtensionColor:{objc_msgSend(*(a1 + 40), "nativeColor")}];
    [v2 setScriptProperties:v3];
  }
}

- (void)setTransientViewController:(id)controller
{
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), !controller) || (isKindOfClass & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    WebThreadRunOnMainThread();
  }

  else
  {
    v5 = MEMORY[0x1E69E2F88];

    [v5 throwException:@"Invalid argument"];
  }
}

uint64_t __53__SUScriptViewController_setTransientViewController___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) nativeViewController];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v2 = [v2 tabBarController];
  }

  v3 = [*(a1 + 40) nativeViewController];

  return [v2 setTransientViewController:v3];
}

- (void)setUsesBlurredBackground:(id)background
{
  if (objc_opt_respondsToSelector())
  {
    WebThreadRunOnMainThread();
  }

  else
  {
    v3 = MEMORY[0x1E69E2F88];

    [v3 throwException:@"Invalid argument"];
  }
}

void __51__SUScriptViewController_setUsesBlurredBackground___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) nativeViewController];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 copyScriptProperties];
    [v3 setUsesBlurredBackground:{objc_msgSend(*(a1 + 40), "BOOLValue")}];
    [v2 setScriptProperties:v3];
  }
}

- (id)showsLibraryButton
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  WebThreadRunOnMainThread();
  if (*(v6 + 24))
  {
    v2 = MEMORY[0x1E695E4D0];
  }

  else
  {
    v2 = MEMORY[0x1E695E4C0];
  }

  v3 = *v2;
  _Block_object_dispose(&v5, 8);
  return v3;
}

uint64_t __44__SUScriptViewController_showsLibraryButton__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) nativeViewController];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    result = [v2 showsLibraryButton];
    *(*(*(a1 + 40) + 8) + 24) = result;
  }

  return result;
}

- (SUScriptSplitViewController)splitViewController
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3052000000;
  v16 = __Block_byref_object_copy__12;
  v17 = __Block_byref_object_dispose__12;
  v18 = 0;
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __45__SUScriptViewController_splitViewController__block_invoke;
  v10 = &unk_1E81650D8;
  selfCopy = self;
  v12 = &v13;
  WebThreadRunOnMainThread();
  if (v14[5] && ([(SUScriptObject *)self checkInScriptObject:v7, 3221225472, __45__SUScriptViewController_splitViewController__block_invoke, &unk_1E81650D8, selfCopy, &v13], (v3 = v14[5]) != 0))
  {
    null = v3;
  }

  else
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v5 = null;
  _Block_object_dispose(&v13, 8);
  return v5;
}

void __45__SUScriptViewController_splitViewController__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [objc_msgSend(objc_msgSend(*(a1 + 32) "nativeViewController")];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    *(*(*(a1 + 40) + 8) + 40) = 0;
  }
}

- (id)toolbarItems
{
  array = [MEMORY[0x1E695DF70] array];
  WebThreadRunOnMainThread();
  return array;
}

uint64_t __38__SUScriptViewController_toolbarItems__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [objc_msgSend(*(a1 + 32) "nativeViewController")];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  result = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (result)
  {
    v4 = result;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        v8 = objc_alloc_init(SUScriptButton);
        [(SUScriptButton *)v8 setNativeButton:v7];
        [*(a1 + 40) addObject:v8];

        ++v6;
      }

      while (v4 != v6);
      result = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      v4 = result;
    }

    while (result);
  }

  return result;
}

- (id)topBackgroundColor
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3052000000;
  v11 = __Block_byref_object_copy__12;
  v12 = __Block_byref_object_dispose__12;
  v13 = 0;
  v6 = MEMORY[0x1E69E9820];
  WebThreadRunOnMainThread();
  v2 = v9[5];
  if (v2)
  {
    null = v2;
  }

  else
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v4 = null;
  _Block_object_dispose(&v8, 8);
  return v4;
}

void __44__SUScriptViewController_topBackgroundColor__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) nativeViewController];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 copyScriptProperties];
    v4 = [v3 topExtensionColor];

    if (v4)
    {
      *(*(*(a1 + 40) + 8) + 40) = [SUScriptColor alloc];
      *(*(*(a1 + 40) + 8) + 40) = [*(*(*(a1 + 40) + 8) + 40) initWithUIColor:v4];
    }
  }
}

- (SUScriptViewController)transientViewController
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3052000000;
  v16 = __Block_byref_object_copy__12;
  v17 = __Block_byref_object_dispose__12;
  v18 = 0;
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __49__SUScriptViewController_transientViewController__block_invoke;
  v10 = &unk_1E81650B0;
  selfCopy = self;
  v12 = &v13;
  WebThreadRunOnMainThread();
  if (v14[5] && ([(SUScriptObject *)self checkInScriptObject:v7, 3221225472, __49__SUScriptViewController_transientViewController__block_invoke, &unk_1E81650B0, selfCopy, &v13], (v3 = v14[5]) != 0))
  {
    null = v3;
  }

  else
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v5 = null;
  _Block_object_dispose(&v13, 8);
  return v5;
}

uint64_t __49__SUScriptViewController_transientViewController__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) nativeViewController];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v2 = [v2 tabBarController];
  }

  result = [objc_msgSend(v2 "transientViewController")];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (id)usesBlurredBackground
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  WebThreadRunOnMainThread();
  if (*(v6 + 24))
  {
    v2 = MEMORY[0x1E695E4D0];
  }

  else
  {
    v2 = MEMORY[0x1E695E4C0];
  }

  v3 = *v2;
  _Block_object_dispose(&v5, 8);
  return v3;
}

void __47__SUScriptViewController_usesBlurredBackground__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) nativeViewController];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 copyScriptProperties];
    *(*(*(a1 + 40) + 8) + 24) = [v3 usesBlurredBackground];
  }
}

- (void)_dismissModalViewControllerAnimated:(BOOL)animated
{
  animatedCopy = animated;
  nativeViewController = [(SUScriptViewController *)self nativeViewController];
  tabBarController = [(UIViewController *)nativeViewController tabBarController];
  if ([(UITabBarController *)tabBarController transientViewController]&& [(UIViewController *)nativeViewController isDescendantOfViewController:[(UITabBarController *)tabBarController transientViewController]])
  {
    v7 = [MEMORY[0x1E69DD258] transitionSafePerformer:tabBarController];

    [v7 setTransientViewController:0 animated:animatedCopy];
  }

  else
  {
    clientInterface = [(SUScriptObject *)self clientInterface];
    if (nativeViewController)
    {
      parentViewController = nativeViewController;
      while (1)
      {
        NSSelectorFromString(&cfstr_Embeddedparent.isa);
        if (objc_opt_respondsToSelector())
        {
          break;
        }

        parentViewController = [(UIViewController *)parentViewController parentViewController];
        if (!parentViewController)
        {
          parentViewController = nativeViewController;
          break;
        }
      }
    }

    else
    {
      parentViewController = 0;
    }

    v10 = [MEMORY[0x1E69DD258] transitionSafePerformer:parentViewController];
    if (clientInterface)
    {

      [(SUClientInterface *)clientInterface _dismissViewControllerFromViewController:v10 animated:animatedCopy completion:0];
    }

    else
    {

      [v10 dismissViewControllerAnimated:animatedCopy completion:0];
    }
  }
}

- (void)_dismissModalViewControllerWithTransition:(id)transition
{
  clientInterface = [(SUScriptObject *)self clientInterface];
  v6 = [MEMORY[0x1E69DD258] transitionSafePerformer:{-[SUScriptViewController nativeViewController](self, "nativeViewController")}];
  v7 = [(SUScriptViewController *)self _transitionForString:transition];
  if (clientInterface)
  {

    [(SUClientInterface *)clientInterface _dismissModalViewControllerFromViewController:v6 withTransition:v7];
  }

  else
  {

    [v6 dismissModalViewControllerWithTransition:v7];
  }
}

- (void)_presentModalViewController:(id)controller withTransition:(id)transition
{
  v38 = *MEMORY[0x1E69E9840];
  nativeViewController = [(SUScriptViewController *)self nativeViewController];
  if ([(UIViewController *)nativeViewController parentViewController])
  {
    nativeViewController2 = [controller nativeViewController];
    if (nativeViewController2)
    {
      v9 = nativeViewController2;
      if ([nativeViewController2 presentingViewController])
      {
        mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
        shouldLog = [mEMORY[0x1E69D4938] shouldLog];
        if ([mEMORY[0x1E69D4938] shouldLogToDisk])
        {
          v12 = shouldLog | 2;
        }

        else
        {
          v12 = shouldLog;
        }

        if (!os_log_type_enabled([mEMORY[0x1E69D4938] OSLogObject], OS_LOG_TYPE_DEFAULT))
        {
          v12 &= 2u;
        }

        if (v12)
        {
LABEL_24:
          v34 = 138412546;
          _className = [(SUScriptViewController *)self _className];
          v36 = 2112;
          controllerCopy = controller;
          LODWORD(v24) = 22;
          v19 = _os_log_send_and_compose_impl();
          if (v19)
          {
            v20 = v19;
            [MEMORY[0x1E696AEC0] stringWithCString:v19 encoding:{4, &v34, v24}];
            free(v20);
            SSFileLog();
          }
        }
      }

      else
      {
        clientInterface = [(SUScriptObject *)self clientInterface];
        v22 = [MEMORY[0x1E69DD258] transitionSafePerformer:nativeViewController];
        v26[0] = MEMORY[0x1E69E9820];
        v26[1] = 3221225472;
        v27 = __69__SUScriptViewController__presentModalViewController_withTransition___block_invoke;
        v28 = &unk_1E8165860;
        v29 = clientInterface;
        v30 = v9;
        v31 = v22;
        selfCopy = self;
        transitionCopy = transition;
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 && (v23 = [v9 firstViewController], objc_opt_class(), (objc_opt_isKindOfClass()))
        {
          [v9 setNavigationBarHidden:1];
          v25[0] = MEMORY[0x1E69E9820];
          v25[1] = 3221225472;
          v25[2] = __69__SUScriptViewController__presentModalViewController_withTransition___block_invoke_2;
          v25[3] = &unk_1E8165888;
          v25[4] = v26;
          [v23 prepareWithCompletionBlock:v25];
        }

        else
        {
          v27(v26);
        }
      }
    }

    else
    {
      mEMORY[0x1E69D4938]2 = [MEMORY[0x1E69D4938] sharedConfig];
      shouldLog2 = [mEMORY[0x1E69D4938]2 shouldLog];
      if ([mEMORY[0x1E69D4938]2 shouldLogToDisk])
      {
        v18 = shouldLog2 | 2;
      }

      else
      {
        v18 = shouldLog2;
      }

      if (!os_log_type_enabled([mEMORY[0x1E69D4938]2 OSLogObject], OS_LOG_TYPE_DEFAULT))
      {
        v18 &= 2u;
      }

      if (v18)
      {
        goto LABEL_24;
      }
    }
  }

  else
  {
    mEMORY[0x1E69D4938]3 = [MEMORY[0x1E69D4938] sharedConfig];
    shouldLog3 = [mEMORY[0x1E69D4938]3 shouldLog];
    if ([mEMORY[0x1E69D4938]3 shouldLogToDisk])
    {
      v15 = shouldLog3 | 2;
    }

    else
    {
      v15 = shouldLog3;
    }

    if (!os_log_type_enabled([mEMORY[0x1E69D4938]3 OSLogObject], OS_LOG_TYPE_DEFAULT))
    {
      v15 &= 2u;
    }

    if (v15)
    {
      goto LABEL_24;
    }
  }
}

uint64_t __69__SUScriptViewController__presentModalViewController_withTransition___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[7];
  v4 = a1[8];
  if (v2)
  {
    v5 = a1[5];
    v6 = a1[6];
    v7 = [v3 _transitionForString:v4];

    return [v2 _presentViewController:v5 fromViewController:v6 withTransition:v7];
  }

  else
  {
    v10 = a1[5];
    v9 = a1[6];
    v11 = [v3 _transitionForString:v4];

    return [v9 presentModalViewController:v10 withTransition:v11];
  }
}

uint64_t __69__SUScriptViewController__presentModalViewController_withTransition___block_invoke_2(uint64_t result, int a2)
{
  if (a2)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

- (int)_transitionForString:(id)string
{
  if ([string isEqualToString:@"show-sheet"])
  {
    return 8;
  }

  if ([string isEqualToString:@"hide-sheet"] & 1) != 0 || (objc_msgSend(string, "isEqualToString:", @"reveal-down"))
  {
    return 9;
  }

  if ([string isEqualToString:@"cover-up"])
  {
    return 8;
  }

  if ([string isEqualToString:@"flip-from-left"])
  {
    return 10;
  }

  if ([string isEqualToString:@"flip-from-right"])
  {
    return 11;
  }

  if ([string isEqualToString:@"cross-dissolve"])
  {
    return 6;
  }

  return 0;
}

+ (id)webScriptNameForKeyName:(id)name
{
  result = [__KeyMapping_20 objectForKey:?];
  if (!result)
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___SUScriptViewController;
    return objc_msgSendSuper2(&v6, sel_webScriptNameForKeyName_, name);
  }

  return result;
}

+ (id)webScriptNameForSelector:(SEL)selector
{
  result = SUWebScriptNameForSelector2(selector, &__SelectorMapping_15, 7);
  if (!result)
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___SUScriptViewController;
    return objc_msgSendSuper2(&v6, sel_webScriptNameForSelector_, selector);
  }

  return result;
}

- (id)scriptAttributeKeys
{
  v4.receiver = self;
  v4.super_class = SUScriptViewController;
  scriptAttributeKeys = [(SUScriptObject *)&v4 scriptAttributeKeys];
  -[NSMutableArray addObjectsFromArray:](scriptAttributeKeys, "addObjectsFromArray:", [__KeyMapping_20 allKeys]);
  return scriptAttributeKeys;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    __SelectorMapping_15 = sel_addPassbookPassWithURL_;
    *algn_1EBF3AB18 = @"addPassbookPassWithURL";
    qword_1EBF3AB20 = sel_dismissModalViewControllerWithTransition_;
    unk_1EBF3AB28 = @"dismissModalViewController";
    qword_1EBF3AB30 = sel_presentModalViewController_withTransition_;
    unk_1EBF3AB38 = @"presentModalViewController";
    qword_1EBF3AB40 = sel_runScrollTest_withDelta_forIterations_;
    unk_1EBF3AB48 = @"runScrollTest";
    qword_1EBF3AB50 = sel_setToolbarItems_animated_;
    unk_1EBF3AB58 = @"setToolbarItems";
    qword_1EBF3AB60 = sel_dismissVolumeViewControllerAnimated_;
    unk_1EBF3AB68 = @"dismissVolumeViewController";
    qword_1EBF3AB70 = sel_presentVolumeViewController_animated_;
    unk_1EBF3AB78 = @"presentVolumeViewController";
    __KeyMapping_20 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{@"backgroundColor", @"clientContext", @"contextDictionary", @"inputAccessoryViewController", @"inputAccessoryViewController", @"modalPresentationStyle", @"modalPresentationStyle", @"modalViewController", @"modalViewController", @"navigationController", @"navigationController", @"navigationItem", @"navigationItem", @"popOver", @"popOver", @"presentingViewController", @"presentingViewController", @"section", @"section", @"showsLibraryButton", @"showsLibraryButton", @"splitViewController", @"splitViewController", @"toolbarItems", @"toolbarItems", @"topBackgroundColor", @"topBackgroundColor", @"transientViewController", @"transientViewController", @"wantsFullScreenLayout", @"wantsFullScreenLayout", @"usesBlurredBackground", @"usesBlurredBackground", @"volumeViewController", @"volumeViewController", @"MODAL_FORM_SHEET", @"modalPresentationStyleNameFormSheet", @"MODAL_FULL_SCREEN", @"modalPresentationStyleNameFullScreen", 0}];
  }
}

- (SUScriptViewController)volumeViewController
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3052000000;
  v16 = __Block_byref_object_copy__32;
  v17 = __Block_byref_object_dispose__32;
  v18 = 0;
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __75__SUScriptViewController_SUScriptVolumeViewAdditions__volumeViewController__block_invoke;
  v10 = &unk_1E81650B0;
  selfCopy = self;
  v12 = &v13;
  WebThreadRunOnMainThread();
  if (v14[5] && ([(SUScriptObject *)self checkInScriptObject:v7, 3221225472, __75__SUScriptViewController_SUScriptVolumeViewAdditions__volumeViewController__block_invoke, &unk_1E81650B0, selfCopy, &v13], (v3 = v14[5]) != 0))
  {
    null = v3;
  }

  else
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v5 = null;
  _Block_object_dispose(&v13, 8);
  return v5;
}

uint64_t __75__SUScriptViewController_SUScriptVolumeViewAdditions__volumeViewController__block_invoke(uint64_t a1)
{
  result = [objc_msgSend(objc_msgSend(*(a1 + 32) "_parentViewControllerForVolumeViewController")];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)dismissVolumeViewControllerAnimated:(id)animated
{
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), !animated) || (isKindOfClass & 1) != 0 || (objc_opt_respondsToSelector())
  {
    WebThreadRunOnMainThread();
  }

  else
  {
    v5 = MEMORY[0x1E69E2F88];

    [v5 throwException:@"Invalid argument"];
  }
}

uint64_t __91__SUScriptViewController_SUScriptVolumeViewAdditions__dismissVolumeViewControllerAnimated___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _parentViewControllerForVolumeViewController];
  if ([v2 footerViewController])
  {
    v3 = [*(a1 + 40) BOOLValue];

    return [v2 dismissFooterViewControllerAnimated:v3];
  }

  else
  {
    v5 = [MEMORY[0x1E69D4938] sharedConfig];
    v6 = [v5 shouldLog];
    if ([v5 shouldLogToDisk])
    {
      v7 = v6 | 2;
    }

    else
    {
      v7 = v6;
    }

    result = os_log_type_enabled([v5 OSLogObject], OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      v7 &= 2u;
    }

    if (v7)
    {
      v10 = 138412290;
      v11 = objc_opt_class();
      LODWORD(v9) = 12;
      result = _os_log_send_and_compose_impl();
      if (result)
      {
        v8 = result;
        [MEMORY[0x1E696AEC0] stringWithCString:result encoding:{4, &v10, v9}];
        free(v8);
        return SSFileLog();
      }
    }
  }

  return result;
}

- (void)presentVolumeViewController:(id)controller animated:(id)animated
{
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    animated = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (!animated || (objc_opt_respondsToSelector()))
  {
    WebThreadRunOnMainThread();
  }

  else
  {
    v5 = MEMORY[0x1E69E2F88];

    [v5 throwException:@"Invalid argument"];
  }
}

uint64_t __92__SUScriptViewController_SUScriptVolumeViewAdditions__presentVolumeViewController_animated___block_invoke(id *a1)
{
  result = [a1[4] _parentViewControllerForVolumeViewController];
  if (result)
  {
    v3 = result;
    v4 = [a1[5] nativeViewController];
    v5 = [a1[6] BOOLValue];

    return [v3 presentFooterViewController:v4 animated:v5];
  }

  return result;
}

- (id)_parentViewControllerForVolumeViewController
{
  nativeViewController = [(SUScriptViewController *)self nativeViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    nativeViewController = [(UIViewController *)nativeViewController selectedNavigationController];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    nativeViewController = [(UIViewController *)nativeViewController topViewController];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return nativeViewController;
  }

  else
  {
    return 0;
  }
}

@end