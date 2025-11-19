@interface SUScriptNavigationBar
+ (id)webScriptNameForKeyName:(id)a3;
+ (id)webScriptNameForSelector:(SEL)a3;
+ (void)initialize;
- (NSArray)navigationItems;
- (NSString)prompt;
- (SUScriptNavigationBar)initWithNativeNavigationBar:(id)a3;
- (SUScriptNavigationItem)backNavigationItem;
- (SUScriptNavigationItem)leftItem;
- (SUScriptNavigationItem)rightItem;
- (SUScriptNavigationItem)topNavigationItem;
- (id)_copyTopNavigationItem;
- (id)_nativeNavigationBar;
- (id)_topNavigationItem;
- (id)buttonWithTitle:(id)a3 style:(id)a4 target:(id)a5 action:(id)a6;
- (id)scriptAttributeKeys;
- (id)translucent;
- (int64_t)barStyle;
- (void)setBackNavigationItem:(id)a3;
- (void)setLeftItem:(id)a3 animated:(BOOL)a4;
- (void)setNavigationItems:(id)a3;
- (void)setPrompt:(id)a3;
- (void)setRightItem:(id)a3 animated:(BOOL)a4;
- (void)setTopNavigationItem:(id)a3;
- (void)setTranslucent:(id)a3;
- (void)tearDownUserInterface;
@end

@implementation SUScriptNavigationBar

- (SUScriptNavigationBar)initWithNativeNavigationBar:(id)a3
{
  v7.receiver = self;
  v7.super_class = SUScriptNavigationBar;
  v4 = [(SUScriptObject *)&v7 init];
  v5 = v4;
  if (a3 && v4)
  {
    [(SUScriptObject *)v4 setNativeObject:[SUScriptNativeObject objectWithNativeObject:a3]];
  }

  return v5;
}

- (void)tearDownUserInterface
{
  +[SUScriptNavigationItem disconnectNavigationItem:forScriptObject:](SUScriptNavigationItem, "disconnectNavigationItem:forScriptObject:", [-[SUScriptNavigationBar _nativeNavigationBar](self "_nativeNavigationBar")], self);
  v3.receiver = self;
  v3.super_class = SUScriptNavigationBar;
  [(SUScriptObject *)&v3 tearDownUserInterface];
}

- (SUScriptNavigationItem)backNavigationItem
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3052000000;
  v16 = __Block_byref_object_copy__3;
  v17 = __Block_byref_object_dispose__3;
  v18 = 0;
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __43__SUScriptNavigationBar_backNavigationItem__block_invoke;
  v10 = &unk_1E81650B0;
  v11 = self;
  v12 = &v13;
  WebThreadRunOnMainThread();
  if (v14[5] && ([(SUScriptObject *)self checkInScriptObject:v7, 3221225472, __43__SUScriptNavigationBar_backNavigationItem__block_invoke, &unk_1E81650B0, v11, &v13], (v3 = v14[5]) != 0))
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

SUScriptNavigationItem *__43__SUScriptNavigationBar_backNavigationItem__block_invoke(uint64_t a1)
{
  result = [objc_msgSend(*(a1 + 32) "_nativeNavigationBar")];
  if (result)
  {
    result = [[SUScriptNavigationItem alloc] initWithNativeNavigationItem:result];
    *(*(*(a1 + 40) + 8) + 40) = result;
  }

  return result;
}

- (int64_t)barStyle
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  WebThreadRunOnMainThread();
  v2 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v2;
}

uint64_t __33__SUScriptNavigationBar_barStyle__block_invoke(uint64_t a1)
{
  result = [objc_msgSend(*(a1 + 32) "_nativeNavigationBar")];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (SUScriptNavigationItem)leftItem
{
  v2 = [(SUScriptNavigationBar *)self _topNavigationItem];

  return [v2 leftItem];
}

- (NSArray)navigationItems
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3052000000;
  v16 = __Block_byref_object_copy__3;
  v17 = __Block_byref_object_dispose__3;
  v18 = 0;
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __40__SUScriptNavigationBar_navigationItems__block_invoke;
  v10 = &unk_1E81650B0;
  v11 = self;
  v12 = &v13;
  WebThreadRunOnMainThread();
  if (v14[5] && ([(SUScriptObject *)self checkInScriptObjects:v7, 3221225472, __40__SUScriptNavigationBar_navigationItems__block_invoke, &unk_1E81650B0, v11, &v13], (v3 = v14[5]) != 0))
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

uint64_t __40__SUScriptNavigationBar_navigationItems__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = [objc_msgSend(*(a1 + 32) "_nativeNavigationBar")];
  result = [v2 count];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 40) = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v2, "count")}];
    v8 = 0u;
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    result = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (result)
    {
      v4 = result;
      v5 = *v9;
      do
      {
        v6 = 0;
        do
        {
          if (*v9 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = [[SUScriptNavigationItem alloc] initWithNativeNavigationItem:*(*(&v8 + 1) + 8 * v6)];
          [*(*(*(a1 + 40) + 8) + 40) addObject:v7];

          ++v6;
        }

        while (v4 != v6);
        result = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
        v4 = result;
      }

      while (result);
    }
  }

  return result;
}

- (NSString)prompt
{
  v2 = [(SUScriptNavigationBar *)self _topNavigationItem];

  return [v2 prompt];
}

- (SUScriptNavigationItem)rightItem
{
  v2 = [(SUScriptNavigationBar *)self _topNavigationItem];

  return [v2 rightItem];
}

- (void)setBackNavigationItem:(id)a3
{
  v3 = MEMORY[0x1E69E2F88];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ is readonly", @"topNavigationItem"];

  [v3 throwException:v4];
}

uint64_t __37__SUScriptNavigationBar_setBarStyle___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _nativeNavigationBar];
  v3 = *(a1 + 40);

  return [v2 setBarStyle:v3];
}

- (void)setLeftItem:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = [(SUScriptNavigationBar *)self _topNavigationItem];

  [v6 setLeftItem:a3 animated:v4];
}

- (void)setNavigationItems:(id)a3
{
  v3 = MEMORY[0x1E69E2F88];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ is readonly", @"navigationItems"];

  [v3 throwException:v4];
}

- (void)setPrompt:(id)a3
{
  v4 = [(SUScriptNavigationBar *)self _topNavigationItem];

  [v4 setPrompt:a3];
}

- (void)setRightItem:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = [(SUScriptNavigationBar *)self _topNavigationItem];

  [v6 setRightItem:a3 animated:v4];
}

- (void)setTopNavigationItem:(id)a3
{
  v3 = MEMORY[0x1E69E2F88];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ is readonly", @"topNavigationItem"];

  [v3 throwException:v4];
}

- (void)setTranslucent:(id)a3
{
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), !a3) || (isKindOfClass & 1) != 0 || (objc_opt_respondsToSelector())
  {
    WebThreadRunOnMainThread();
  }

  else
  {
    v5 = MEMORY[0x1E69E2F88];

    [v5 throwException:@"Invalid argument"];
  }
}

uint64_t __40__SUScriptNavigationBar_setTranslucent___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _nativeNavigationBar];
  v3 = [*(a1 + 40) BOOLValue];

  return [v2 setTranslucent:v3];
}

- (SUScriptNavigationItem)topNavigationItem
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3052000000;
  v11 = __Block_byref_object_copy__3;
  v12 = __Block_byref_object_dispose__3;
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

uint64_t __42__SUScriptNavigationBar_topNavigationItem__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _copyTopNavigationItem];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (id)translucent
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

uint64_t __36__SUScriptNavigationBar_translucent__block_invoke(uint64_t a1)
{
  result = [objc_msgSend(*(a1 + 32) "_nativeNavigationBar")];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (id)buttonWithTitle:(id)a3 style:(id)a4 target:(id)a5 action:(id)a6
{
  v11 = objc_alloc_init(SUScriptButton);
  [(SUScriptObject *)self checkInScriptObject:v11];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    [(SUScriptButton *)v11 setAction:a6];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SUScriptButton *)v11 setStyle:a4];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SUScriptButton *)v11 setTarget:a5];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SUScriptButton *)v11 setTitle:a3];
  }

  return v11;
}

- (id)_copyTopNavigationItem
{
  v3 = [(SUScriptNavigationBar *)self _nativeNavigationBar];
  v4 = [v3 topItem];
  v5 = [(SUScriptObject *)self parentViewController];
  v6 = [v5 navigationController];
  if (v3 == [v6 navigationBar] && objc_msgSend(v5, "isDescendantOfViewController:", objc_msgSend(v6, "topViewController")))
  {
    v4 = [v5 navigationItemForScriptInterface];
  }

  if (v4)
  {
    v4 = [[SUScriptNavigationItem alloc] initWithNativeNavigationItem:v4];
    [(SUScriptObject *)self checkInScriptObject:v4];
  }

  return v4;
}

- (id)_nativeNavigationBar
{
  v3 = [(SUScriptNativeObject *)[(SUScriptObject *)self nativeObject] object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return v3;
  }

  v5 = [-[SUScriptObject parentViewController](self "parentViewController")];

  return [v5 navigationBar];
}

- (id)_topNavigationItem
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3052000000;
  v7 = __Block_byref_object_copy__3;
  v8 = __Block_byref_object_dispose__3;
  v9 = 0;
  WebThreadRunOnMainThread();
  v2 = v5[5];
  _Block_object_dispose(&v4, 8);
  return v2;
}

uint64_t __43__SUScriptNavigationBar__topNavigationItem__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _copyTopNavigationItem];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

+ (id)webScriptNameForKeyName:(id)a3
{
  result = [__KeyMapping_5 objectForKey:?];
  if (!result)
  {
    v6.receiver = a1;
    v6.super_class = &OBJC_METACLASS___SUScriptNavigationBar;
    return objc_msgSendSuper2(&v6, sel_webScriptNameForKeyName_, a3);
  }

  return result;
}

+ (id)webScriptNameForSelector:(SEL)a3
{
  result = SUWebScriptNameForSelector2(a3, &__SelectorMapping_3, 5);
  if (!result)
  {
    v6.receiver = a1;
    v6.super_class = &OBJC_METACLASS___SUScriptNavigationBar;
    return objc_msgSendSuper2(&v6, sel_webScriptNameForSelector_, a3);
  }

  return result;
}

- (id)scriptAttributeKeys
{
  v4.receiver = self;
  v4.super_class = SUScriptNavigationBar;
  v2 = [(SUScriptObject *)&v4 scriptAttributeKeys];
  -[NSMutableArray addObjectsFromArray:](v2, "addObjectsFromArray:", [__KeyMapping_5 allKeys]);
  return v2;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    __SelectorMapping_3 = sel_setLeftItem_animated_;
    *algn_1EBF3A7D8 = @"setLeftItem";
    qword_1EBF3A7E0 = sel_setRightItem_animated_;
    unk_1EBF3A7E8 = @"setRightItem";
    qword_1EBF3A7F0 = sel_buttonWithTitle_style_target_action_;
    unk_1EBF3A7F8 = @"createButton";
    qword_1EBF3A800 = sel_setLeftButton_animated_;
    unk_1EBF3A808 = @"setLeftButton";
    qword_1EBF3A810 = sel_setRightButton_animated_;
    unk_1EBF3A818 = @"setRightButton";
    __KeyMapping_5 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{@"backNavigationItem", @"barStyle", @"barStyle", @"leftItem", @"leftItem", @"navigationItems", @"navigationItems", @"prompt", @"prompt", @"rightItem", @"rightItem", @"topNavigationItem", @"topNavigationItem", @"translucent", @"translucent", @"BAR_STYLE_DEFAULT", @"barStyleDefault", @"BAR_STYLE_BLACK", @"barStyleBlack", @"leftButton", @"leftButton", @"rightButton", @"rightButton", 0}];
  }
}

@end