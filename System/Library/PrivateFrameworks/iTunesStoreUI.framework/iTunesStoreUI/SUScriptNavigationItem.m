@interface SUScriptNavigationItem
+ (id)_rootScriptObjectForObject:(id)a3;
+ (id)webScriptNameForKeyName:(id)a3;
+ (id)webScriptNameForSelector:(SEL)a3;
+ (void)_disconnectNavigationItem:(id)a3 scriptObject:(id)a4;
+ (void)initialize;
- (NSString)backButtonTitle;
- (NSString)prompt;
- (NSString)title;
- (SUScriptNavigationItem)initWithNativeNavigationItem:(id)a3;
- (SUScriptNavigationItem)leftItem;
- (SUScriptNavigationItem)leftMostItem;
- (SUScriptNavigationItem)rightItem;
- (UINavigationItem)nativeNavigationItem;
- (id)_copyScriptButtonForButtonItem:(id)a3;
- (id)_copyScriptObjectForButtonItem:(id)a3;
- (id)hidesBackButton;
- (id)leftItems;
- (id)leftItemsSupplementBackButton;
- (id)rightItems;
- (id)scriptAttributeKeys;
- (id)titleView;
- (void)setBackButtonTitle:(id)a3;
- (void)setHidesBackButton:(id)a3;
- (void)setLeftItem:(id)a3 animated:(BOOL)a4;
- (void)setLeftItems:(id)a3 animated:(BOOL)a4;
- (void)setLeftItemsSupplementBackButton:(id)a3;
- (void)setLeftMostItem:(id)a3 animated:(BOOL)a4;
- (void)setPrompt:(id)a3;
- (void)setRightItem:(id)a3 animated:(BOOL)a4;
- (void)setRightItems:(id)a3 animated:(BOOL)a4;
- (void)setTitle:(id)a3;
- (void)setTitleView:(id)a3 animated:(BOOL)a4;
- (void)tearDownUserInterface;
@end

@implementation SUScriptNavigationItem

- (SUScriptNavigationItem)initWithNativeNavigationItem:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SUScriptNavigationItem;
  v5 = [(SUScriptObject *)&v9 init];
  v6 = v5;
  if (v4 && v5)
  {
    v7 = [SUScriptNativeObject objectWithNativeObject:v4];
    [(SUScriptObject *)v6 setNativeObject:v7];
  }

  return v6;
}

- (UINavigationItem)nativeNavigationItem
{
  v3 = [(SUScriptObject *)self nativeObject];
  v4 = [v3 object];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = [(SUScriptObject *)self copyObjectForScriptFromPoolWithClass:objc_opt_class()];

    v6 = [SUScriptNativeObject objectWithNativeObject:v5];
    [(SUScriptObject *)self setNativeObject:v6];

    v4 = v5;
  }

  return v4;
}

- (void)tearDownUserInterface
{
  v3 = [(SUScriptObject *)self nativeObject];
  v4 = [v3 object];

  [objc_opt_class() _disconnectNavigationItem:v4 scriptObject:self];
  v5.receiver = self;
  v5.super_class = SUScriptNavigationItem;
  [(SUScriptObject *)&v5 tearDownUserInterface];
}

- (NSString)backButtonTitle
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = __Block_byref_object_copy__19;
  v8 = __Block_byref_object_dispose__19;
  v9 = 0;
  WebThreadRunOnMainThread();
  v2 = v5[5];
  _Block_object_dispose(&v4, 8);

  return v2;
}

void __41__SUScriptNavigationItem_backButtonTitle__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) nativeNavigationItem];
  v2 = [v5 backButtonTitle];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)hidesBackButton
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

void __41__SUScriptNavigationItem_hidesBackButton__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) nativeNavigationItem];
  *(*(*(a1 + 40) + 8) + 24) = [v2 hidesBackButton];
}

- (SUScriptNavigationItem)leftItem
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__19;
  v17 = __Block_byref_object_dispose__19;
  v18 = 0;
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __34__SUScriptNavigationItem_leftItem__block_invoke;
  v10 = &unk_1E81647F0;
  v11 = self;
  v12 = &v13;
  WebThreadRunOnMainThread();
  if (v14[5] && ([(SUScriptObject *)self checkInScriptObject:v7, 3221225472, __34__SUScriptNavigationItem_leftItem__block_invoke, &unk_1E81647F0, v11, &v13], (v3 = v14[5]) != 0))
  {
    v4 = v3;
  }

  else
  {
    v4 = [MEMORY[0x1E695DFB0] null];
  }

  v5 = v4;
  _Block_object_dispose(&v13, 8);

  return v5;
}

void __34__SUScriptNavigationItem_leftItem__block_invoke(uint64_t a1)
{
  v7 = [*(a1 + 32) nativeNavigationItem];
  v2 = *(a1 + 32);
  v3 = [v7 leftBarButtonItem];
  v4 = [v2 _copyScriptObjectForButtonItem:v3];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (id)leftItems
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__19;
  v12 = __Block_byref_object_dispose__19;
  v13 = 0;
  v6 = MEMORY[0x1E69E9820];
  WebThreadRunOnMainThread();
  if (v9[5])
  {
    [(SUScriptObject *)self checkInScriptObjects:v6, 3221225472, __35__SUScriptNavigationItem_leftItems__block_invoke, &unk_1E81647F0, self, &v8];
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

void __35__SUScriptNavigationItem_leftItems__block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) nativeNavigationItem];
  v3 = [v2 leftBarButtonItems];
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = v3;
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(a1 + 32) _copyScriptObjectForButtonItem:{*(*(&v13 + 1) + 8 * v11), v13}];
        if (v12)
        {
          [*(*(*(a1 + 40) + 8) + 40) addObject:v12];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (id)leftItemsSupplementBackButton
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

void __55__SUScriptNavigationItem_leftItemsSupplementBackButton__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) nativeNavigationItem];
  *(*(*(a1 + 40) + 8) + 24) = [v2 leftItemsSupplementBackButton];
}

- (SUScriptNavigationItem)leftMostItem
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__19;
  v17 = __Block_byref_object_dispose__19;
  v18 = 0;
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __38__SUScriptNavigationItem_leftMostItem__block_invoke;
  v10 = &unk_1E81647F0;
  v11 = self;
  v12 = &v13;
  WebThreadRunOnMainThread();
  if (v14[5] && ([(SUScriptObject *)self checkInScriptObject:v7, 3221225472, __38__SUScriptNavigationItem_leftMostItem__block_invoke, &unk_1E81647F0, v11, &v13], (v3 = v14[5]) != 0))
  {
    v4 = v3;
  }

  else
  {
    v4 = [MEMORY[0x1E695DFB0] null];
  }

  v5 = v4;
  _Block_object_dispose(&v13, 8);

  return v5;
}

void __38__SUScriptNavigationItem_leftMostItem__block_invoke(uint64_t a1)
{
  v7 = [*(a1 + 32) nativeNavigationItem];
  v2 = *(a1 + 32);
  v3 = [v7 leftBarButtonItem];
  v4 = [v2 _copyScriptObjectForButtonItem:v3];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (NSString)prompt
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__19;
  v12 = __Block_byref_object_dispose__19;
  v13 = 0;
  v6 = MEMORY[0x1E69E9820];
  WebThreadRunOnMainThread();
  v2 = v9[5];
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = [MEMORY[0x1E695DFB0] null];
  }

  v4 = v3;
  _Block_object_dispose(&v8, 8);

  return v4;
}

void __32__SUScriptNavigationItem_prompt__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) nativeNavigationItem];
  v2 = [v5 prompt];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (SUScriptNavigationItem)rightItem
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__19;
  v17 = __Block_byref_object_dispose__19;
  v18 = 0;
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __35__SUScriptNavigationItem_rightItem__block_invoke;
  v10 = &unk_1E81647C8;
  v11 = self;
  v12 = &v13;
  WebThreadRunOnMainThread();
  if (v14[5] && ([(SUScriptObject *)self checkInScriptObject:v7, 3221225472, __35__SUScriptNavigationItem_rightItem__block_invoke, &unk_1E81647C8, v11, &v13], (v3 = v14[5]) != 0))
  {
    v4 = v3;
  }

  else
  {
    v4 = [MEMORY[0x1E695DFB0] null];
  }

  v5 = v4;
  _Block_object_dispose(&v13, 8);

  return v5;
}

void __35__SUScriptNavigationItem_rightItem__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v7 = [v2 nativeNavigationItem];
  v3 = [v7 rightBarButtonItem];
  v4 = [v2 _copyScriptObjectForButtonItem:v3];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (id)rightItems
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__19;
  v12 = __Block_byref_object_dispose__19;
  v13 = 0;
  v6 = MEMORY[0x1E69E9820];
  WebThreadRunOnMainThread();
  if (v9[5])
  {
    [(SUScriptObject *)self checkInScriptObjects:v6, 3221225472, __36__SUScriptNavigationItem_rightItems__block_invoke, &unk_1E81647F0, self, &v8];
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

void __36__SUScriptNavigationItem_rightItems__block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) nativeNavigationItem];
  v3 = [v2 rightBarButtonItems];
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = v3;
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(a1 + 32) _copyScriptObjectForButtonItem:{*(*(&v13 + 1) + 8 * v11), v13}];
        if (v12)
        {
          [*(*(*(a1 + 40) + 8) + 40) addObject:v12];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (void)setBackButtonTitle:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {

    v3 = 0;
  }

  else if (v3)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [MEMORY[0x1E69E2F88] throwException:@"Invalid argument"];
      goto LABEL_5;
    }
  }

  v3 = v3;
  WebThreadRunOnMainThread();

LABEL_5:
}

void __45__SUScriptNavigationItem_setBackButtonTitle___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) nativeNavigationItem];
  [v2 setBackButtonTitle:*(a1 + 40)];
}

- (void)setHidesBackButton:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {

    v3 = 0;
  }

  else if (v3 && (objc_opt_respondsToSelector() & 1) == 0)
  {
    [MEMORY[0x1E69E2F88] throwException:@"Invalid argument"];
    goto LABEL_5;
  }

  v3 = v3;
  WebThreadRunOnMainThread();

LABEL_5:
}

void __45__SUScriptNavigationItem_setHidesBackButton___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) nativeNavigationItem];
  [v2 setHidesBackButton:{objc_msgSend(*(a1 + 40), "BOOLValue")}];
}

- (void)setLeftItemsSupplementBackButton:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {

    v3 = 0;
  }

  else if (v3 && (objc_opt_respondsToSelector() & 1) == 0)
  {
    [MEMORY[0x1E69E2F88] throwException:@"Invalid argument"];
    goto LABEL_5;
  }

  v3 = v3;
  WebThreadRunOnMainThread();

LABEL_5:
}

void __59__SUScriptNavigationItem_setLeftItemsSupplementBackButton___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) nativeNavigationItem];
  [v2 setLeftItemsSupplementBackButton:{objc_msgSend(*(a1 + 40), "BOOLValue")}];
}

- (void)setPrompt:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {

    v3 = 0;
  }

  else if (v3)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [MEMORY[0x1E69E2F88] throwException:@"Invalid argument"];
      goto LABEL_5;
    }
  }

  v3 = v3;
  WebThreadRunOnMainThread();

LABEL_5:
}

void __36__SUScriptNavigationItem_setPrompt___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) nativeNavigationItem];
  [v2 setPrompt:*(a1 + 40)];
}

- (void)setTitle:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {

    v3 = 0;
  }

  else if (v3)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [MEMORY[0x1E69E2F88] throwException:@"Invalid argument"];
      goto LABEL_5;
    }
  }

  v3 = v3;
  WebThreadRunOnMainThread();

LABEL_5:
}

void __35__SUScriptNavigationItem_setTitle___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) nativeNavigationItem];
  [v2 setTitle:*(a1 + 40)];
}

- (NSString)title
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__19;
  v12 = __Block_byref_object_dispose__19;
  v13 = 0;
  v6 = MEMORY[0x1E69E9820];
  WebThreadRunOnMainThread();
  v2 = v9[5];
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = [MEMORY[0x1E695DFB0] null];
  }

  v4 = v3;
  _Block_object_dispose(&v8, 8);

  return v4;
}

void __31__SUScriptNavigationItem_title__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) nativeNavigationItem];
  v2 = [v5 title];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)titleView
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = __Block_byref_object_copy__19;
  v8 = __Block_byref_object_dispose__19;
  v9 = 0;
  WebThreadRunOnMainThread();
  v2 = v5[5];
  _Block_object_dispose(&v4, 8);

  return v2;
}

void __35__SUScriptNavigationItem_titleView__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) nativeNavigationItem];
  v6 = [v2 titleView];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = objc_alloc_init(SUScriptSegmentedControl);
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    [*(*(*(a1 + 40) + 8) + 40) setNativeSegmentedControl:v6];
  }
}

- (void)setLeftItem:(id)a3 animated:(BOOL)a4
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {

    v5 = 0;
LABEL_4:
    v6 = 1;
    goto LABEL_5;
  }

  if (!v5)
  {
    goto LABEL_4;
  }

  if (([v5 conformsToProtocol:&unk_1F422F898] & 1) == 0)
  {
    [MEMORY[0x1E69E2F88] throwException:@"Invalid argument"];
    goto LABEL_8;
  }

  v6 = 0;
LABEL_5:
  v5 = v5;
  WebThreadRunOnMainThread();
  if ((v6 & 1) == 0)
  {
    [(SUScriptObject *)self checkInScriptObject:v5];
  }

LABEL_8:
}

void __47__SUScriptNavigationItem_setLeftItem_animated___block_invoke(uint64_t a1)
{
  v8 = [*(a1 + 32) nativeNavigationItem];
  v2 = [v8 leftBarButtonItem];
  if ([v2 tag] != 424242)
  {
    v3 = *(a1 + 40);
    if (v2)
    {
      v4 = v3 == 0;
    }

    else
    {
      v4 = 1;
    }

    if (!v4)
    {
      if (!SUScriptNavigationItemIsFlagged(v2))
      {
        v6 = [v8 leftBarButtonItems];
        v5 = [v6 mutableCopy];

        v7 = [*(a1 + 40) buttonItem];
        [v5 addObject:v7];

        [v8 setLeftBarButtonItems:v5 animated:*(a1 + 48)];
        goto LABEL_10;
      }

      v3 = *(a1 + 40);
    }

    v5 = [v3 buttonItem];
    [v8 setLeftBarButtonItem:v5 animated:*(a1 + 48)];
LABEL_10:
  }
}

- (void)setLeftItems:(id)a3 animated:(BOOL)a4
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {

    v6 = 0;
    v5 = 0;
  }

  else if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [MEMORY[0x1E69E2F88] throwException:@"Invalid argument"];
      goto LABEL_11;
    }

    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  v7 = [v5 copyArrayValueWithValidator:SUConformsValidator context:&unk_1F422F898];
  v8 = v7;
  if (!v6 || v7)
  {
    if (v7)
    {
      [(SUScriptObject *)self checkInScriptObjects:v7];
    }

    v9 = v8;
    WebThreadRunOnMainThread();
  }

  else
  {
    [MEMORY[0x1E69E2F88] throwException:@"Invalid argument"];
  }

LABEL_11:
}

void __48__SUScriptNavigationItem_setLeftItems_animated___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v10 + 1) + 8 * v7) buttonItem];
        if (v8)
        {
          [v2 addObject:v8];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v9 = [*(a1 + 40) nativeNavigationItem];
  [v9 setLeftBarButtonItems:v2 animated:*(a1 + 48)];
}

- (void)setLeftMostItem:(id)a3 animated:(BOOL)a4
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {

    v5 = 0;
LABEL_4:
    v6 = 1;
    goto LABEL_5;
  }

  if (!v5)
  {
    goto LABEL_4;
  }

  if (([v5 conformsToProtocol:&unk_1F422F898] & 1) == 0)
  {
    [MEMORY[0x1E69E2F88] throwException:@"Invalid argument"];
    goto LABEL_8;
  }

  v6 = 0;
LABEL_5:
  v5 = v5;
  WebThreadRunOnMainThread();
  if ((v6 & 1) == 0)
  {
    [(SUScriptObject *)self checkInScriptObject:v5];
  }

LABEL_8:
}

void __51__SUScriptNavigationItem_setLeftMostItem_animated___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) nativeNavigationItem];
  v2 = [*(a1 + 40) buttonItem];
  [v3 setLeftBarButtonItem:v2 animated:*(a1 + 48)];
}

- (void)setRightItem:(id)a3 animated:(BOOL)a4
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {

    v5 = 0;
LABEL_4:
    v6 = 1;
    goto LABEL_5;
  }

  if (!v5)
  {
    goto LABEL_4;
  }

  if (([v5 conformsToProtocol:&unk_1F422F898] & 1) == 0)
  {
    [MEMORY[0x1E69E2F88] throwException:@"Invalid argument"];
    goto LABEL_8;
  }

  v6 = 0;
LABEL_5:
  v5 = v5;
  WebThreadRunOnMainThread();
  if ((v6 & 1) == 0)
  {
    [(SUScriptObject *)self checkInScriptObject:v5];
  }

LABEL_8:
}

void __48__SUScriptNavigationItem_setRightItem_animated___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) nativeNavigationItem];
  v2 = [*(a1 + 40) buttonItem];
  [v3 setRightBarButtonItem:v2 animated:*(a1 + 48)];
}

- (void)setRightItems:(id)a3 animated:(BOOL)a4
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {

    v6 = 0;
    v5 = 0;
  }

  else if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [MEMORY[0x1E69E2F88] throwException:@"Invalid argument"];
      goto LABEL_11;
    }

    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  v7 = [v5 copyArrayValueWithValidator:SUConformsValidator context:&unk_1F422F898];
  v8 = v7;
  if (!v6 || v7)
  {
    if (v7)
    {
      [(SUScriptObject *)self checkInScriptObjects:v7];
    }

    v9 = v8;
    WebThreadRunOnMainThread();
  }

  else
  {
    [MEMORY[0x1E69E2F88] throwException:@"Invalid argument"];
  }

LABEL_11:
}

void __49__SUScriptNavigationItem_setRightItems_animated___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v10 + 1) + 8 * v7) buttonItem];
        if (v8)
        {
          [v2 addObject:v8];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v9 = [*(a1 + 40) nativeNavigationItem];
  [v9 setRightBarButtonItems:v2 animated:*(a1 + 48)];
}

- (void)setTitleView:(id)a3 animated:(BOOL)a4
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {

    v4 = 0;
  }

  v5 = v4;
  WebThreadRunOnMainThread();
}

void __48__SUScriptNavigationItem_setTitleView_animated___block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      return;
    }

    v3 = [*(a1 + 32) nativeSegmentedControl];
    if (_UIApplicationUsesLegacyUI())
    {
      [v3 setSegmentedControlStyle:2];
    }

    [v3 sizeToFitUserInterfaceIdiom];
    v2 = [*(a1 + 40) nativeNavigationItem];
    [v2 setTitleView:v3 animated:*(a1 + 48)];
  }

  else
  {
    v3 = [*(a1 + 40) nativeNavigationItem];
    [v3 setTitleView:0 animated:*(a1 + 48)];
  }
}

+ (void)_disconnectNavigationItem:(id)a3 scriptObject:(id)a4
{
  v41 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v29 = a1;
  v30 = [a1 _rootScriptObjectForObject:a4];
  v7 = [v6 leftBarButtonItems];
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v36;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v36 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v35 + 1) + 8 * i);
        if (SUScriptNavigationItemIsFlagged(v14))
        {
          v15 = [v14 target];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0 || ([v15 scriptObject], v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v29, "_rootScriptObjectForObject:", v16), v17 = objc_claimAutoreleasedReturnValue(), v17, v16, v30 != v17))
          {
            [v8 addObject:v14];
          }
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v11);
  }

  [v6 setLeftBarButtonItems:v8];
  v18 = [v6 rightBarButtonItems];

  v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v20 = v18;
  v21 = [v20 countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v32;
    do
    {
      for (j = 0; j != v22; ++j)
      {
        if (*v32 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v31 + 1) + 8 * j);
        if (SUScriptNavigationItemIsFlagged(v25))
        {
          v26 = [v25 target];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0 || ([v26 scriptObject], v27 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v29, "_rootScriptObjectForObject:", v27), v28 = objc_claimAutoreleasedReturnValue(), v28, v27, v30 != v28))
          {
            [v19 addObject:v25];
          }
        }
      }

      v22 = [v20 countByEnumeratingWithState:&v31 objects:v39 count:16];
    }

    while (v22);
  }

  [v6 setRightBarButtonItems:v19];
}

+ (id)_rootScriptObjectForObject:(id)a3
{
  v3 = a3;
  v4 = [v3 parentScriptObject];

  v5 = v3;
  if (v4)
  {
    v6 = v3;
    do
    {
      v5 = [v6 parentScriptObject];

      v7 = [v5 parentScriptObject];

      v6 = v5;
    }

    while (v7);
  }

  return v5;
}

- (id)_copyScriptButtonForButtonItem:(id)a3
{
  v3 = a3;
  v4 = [v3 target];
  if (!SUScriptNavigationItemIsFlagged(v3) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || ([v4 scriptObject], (v5 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v5 = objc_alloc_init(SUScriptButton);
    [(SUScriptButton *)v5 setNativeButton:v3];
  }

  return v5;
}

- (id)_copyScriptObjectForButtonItem:(id)a3
{
  v4 = a3;
  v5 = [v4 customView];
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = objc_alloc_init(SUScriptTextField);
      [(SUScriptTextField *)v6 setNativeObjectWithTextField:v5];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = [[SUScriptTextField alloc] initWithTextFieldStyle:@"search"];
        [(SUScriptTextField *)v6 setNativeObjectWithSearchBar:v5];
      }

      else
      {
        v6 = 0;
      }
    }
  }

  else
  {
    v6 = [(SUScriptNavigationItem *)self _copyScriptButtonForButtonItem:v4];
  }

  return v6;
}

+ (id)webScriptNameForKeyName:(id)a3
{
  v4 = a3;
  v5 = [__KeyMapping_33 objectForKey:v4];
  if (!v5)
  {
    v7.receiver = a1;
    v7.super_class = &OBJC_METACLASS___SUScriptNavigationItem;
    v5 = objc_msgSendSuper2(&v7, sel_webScriptNameForKeyName_, v4);
  }

  return v5;
}

+ (id)webScriptNameForSelector:(SEL)a3
{
  v5 = SUWebScriptNameForSelector2(a3, &__SelectorMapping_27, 7);
  if (!v5)
  {
    v7.receiver = a1;
    v7.super_class = &OBJC_METACLASS___SUScriptNavigationItem;
    v5 = objc_msgSendSuper2(&v7, sel_webScriptNameForSelector_, a3);
  }

  return v5;
}

- (id)scriptAttributeKeys
{
  v5.receiver = self;
  v5.super_class = SUScriptNavigationItem;
  v2 = [(SUScriptObject *)&v5 scriptAttributeKeys];
  v3 = [__KeyMapping_33 allKeys];
  [v2 addObjectsFromArray:v3];

  return v2;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    __SelectorMapping_27 = sel_setHidesBackButton_;
    unk_1EBF3AF30 = @"setHidesBackButton";
    qword_1EBF3AF38 = sel_setLeftItem_animated_;
    unk_1EBF3AF40 = @"setLeftItem";
    qword_1EBF3AF48 = sel_setLeftItems_animated_;
    unk_1EBF3AF50 = @"setLeftItems";
    qword_1EBF3AF58 = sel_setLeftMostItem_animated_;
    unk_1EBF3AF60 = @"setLeftMostItem";
    qword_1EBF3AF68 = sel_setRightItem_animated_;
    unk_1EBF3AF70 = @"setRightItem";
    qword_1EBF3AF78 = sel_setRightItems_animated_;
    unk_1EBF3AF80 = @"setRightItems";
    qword_1EBF3AF88 = sel_setTitleView_animated_;
    unk_1EBF3AF90 = @"setTitleView";
    __KeyMapping_33 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{@"backButtonTitle", @"hidesBackButton", @"hidesBackButton", @"leftItem", @"leftItem", @"leftItems", @"leftItems", @"leftItemsSupplementBackButton", @"leftItemsSupplementBackButton", @"leftMostItem", @"leftMostItem", @"prompt", @"prompt", @"rightItem", @"rightItem", @"rightItems", @"rightItems", @"title", @"title", @"titleView", @"titleView", 0}];

    MEMORY[0x1EEE66BB8]();
  }
}

@end