@interface SUScriptButton
+ (id)webScriptNameForKeyName:(id)name;
+ (id)webScriptNameForSelector:(SEL)selector;
+ (void)initialize;
- (BOOL)enabled;
- (BOOL)loading;
- (NSString)style;
- (NSString)subtitle;
- (NSString)title;
- (SUScriptButton)initWithSystemItemString:(id)string;
- (SUScriptCanvasContext)canvas;
- (UIEdgeInsets)imageEdgeInsets;
- (UIImage)image;
- (WebScriptObject)target;
- (id)_boxedNativeButton;
- (id)_initSUScriptButton;
- (id)_nativeButton;
- (id)_systemItemString;
- (id)action;
- (id)buttonItem;
- (id)nativeButtonOfType:(int)type;
- (id)scriptAttributeKeys;
- (id)showingConfirmation;
- (int64_t)tag;
- (void)dealloc;
- (void)performActionWithArguments:(id)arguments;
- (void)setAction:(id)action;
- (void)setCanvas:(id)canvas;
- (void)setImage:(id)image;
- (void)setImageWithURLString:(id)string scale:(id)scale;
- (void)setNativeButton:(id)button;
- (void)setStyle:(id)style;
- (void)setSubtitle:(id)subtitle;
- (void)setTarget:(id)target;
- (void)setTitle:(id)title;
- (void)showConfirmationWithTitle:(id)title animated:(BOOL)animated;
@end

@implementation SUScriptButton

- (id)_initSUScriptButton
{
  v3.receiver = self;
  v3.super_class = SUScriptButton;
  result = [(SUScriptObject *)&v3 init];
  if (result)
  {
    *(result + 88) = 1;
  }

  return result;
}

- (SUScriptButton)initWithSystemItemString:(id)string
{
  _initSUScriptButton = [(SUScriptButton *)self _initSUScriptButton];
  if (_initSUScriptButton)
  {
    v5 = [[SUScriptButtonNativeObject alloc] initWithSystemItemString:string];
    [(SUScriptObject *)_initSUScriptButton setNativeObject:v5];
    [(SUScriptObject *)_initSUScriptButton setNativeObject:[SUScriptNativeUIBarButtonItem objectWithDefaultButtonForScriptButton:_initSUScriptButton]];
  }

  return _initSUScriptButton;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SUScriptButton;
  [(SUScriptObject *)&v3 dealloc];
}

- (UIImage)image
{
  _boxedNativeButton = [(SUScriptButton *)self _boxedNativeButton];

  return [_boxedNativeButton image];
}

- (UIEdgeInsets)imageEdgeInsets
{
  _boxedNativeButton = [(SUScriptButton *)self _boxedNativeButton];

  [_boxedNativeButton imageInsets];
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (id)nativeButtonOfType:(int)type
{
  nativeObject = [(SUScriptObject *)self nativeObject];
  v6 = nativeObject;
  if (nativeObject && [(SUScriptNativeObject *)nativeObject buttonType]== type)
  {
    v7 = v6;
  }

  else
  {
    v8 = off_1E8162F08;
    if (type != 1)
    {
      v8 = off_1E8162F10;
    }

    v9 = [(__objc2_class *)*v8 objectWithDefaultButtonForScriptButton:self];
    v7 = v9;
    if (v6)
    {
      [(SUScriptNativeObject *)v9 configureFromScriptButtonNativeObject:v6];
    }

    [(SUScriptObject *)self setNativeObject:v7];
  }

  return [(SUScriptNativeObject *)v7 object];
}

- (void)performActionWithArguments:(id)arguments
{
  action = self->_action;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_2;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    [action performAction];
  }

  else if (action)
  {
    [(SUScriptButton *)self target];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
LABEL_2:
      WebThreadRun();
    }
  }
}

- (void)setImage:(id)image
{
  _boxedNativeButton = [(SUScriptButton *)self _boxedNativeButton];

  [_boxedNativeButton setImage:image];
}

- (void)setNativeButton:(id)button
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass())) && (v5 = objc_opt_class()) != 0)
  {
    v6 = [v5 objectWithNativeObject:button];
  }

  else
  {
    v6 = 0;
  }

  [(SUScriptObject *)self setNativeObject:v6];
}

- (id)buttonItem
{
  v3 = [(SUScriptButton *)self nativeButtonOfType:1];
  SUScriptNavigationItemSetFlagged(v3, 1);
  if (![objc_msgSend(-[SUScriptObject parentViewController](self "parentViewController")])
  {
    goto LABEL_7;
  }

  style = [(SUScriptButton *)self style];
  v5 = &off_1E8165720;
  v6 = 4;
  while (![*v5 isEqualToString:style])
  {
    v5 += 2;
    if (!--v6)
    {
      return v3;
    }
  }

  if (*(v5 - 1) == 2)
  {
LABEL_7:
    v7 = [-[SUScriptButton _boxedNativeButton](self "_boxedNativeButton")];
    appearance = [(SUClientInterface *)[(SUScriptObject *)self clientInterface] appearance];
    if (v7)
    {
      [(SUUIAppearance *)appearance _styleBackBarButtonItem:v3];
    }

    else
    {
      [(SUUIAppearance *)appearance styleBarButtonItem:v3];
    }
  }

  return v3;
}

- (id)action
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3052000000;
  v7 = __Block_byref_object_copy__7;
  v8 = __Block_byref_object_dispose__7;
  v9 = 0;
  WebThreadRunOnMainThread();
  v2 = v5[5];
  _Block_object_dispose(&v4, 8);
  return v2;
}

id __24__SUScriptButton_action__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 72);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (SUScriptCanvasContext)canvas
{
  [(SUScriptObject *)self lock];
  v3 = self->_canvas;
  [(SUScriptObject *)self unlock];
  return v3;
}

- (BOOL)enabled
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  WebThreadRunOnMainThread();
  v2 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v2;
}

uint64_t __25__SUScriptButton_enabled__block_invoke(uint64_t a1)
{
  result = [objc_msgSend(*(a1 + 32) "_nativeButton")];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t __43__SUScriptButton_hideConfirmationAnimated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _boxedNativeButton];
  v3 = *(a1 + 40);

  return [v2 hideConfirmationAnimated:v3];
}

- (BOOL)loading
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  WebThreadRunOnMainThread();
  v2 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v2;
}

uint64_t __25__SUScriptButton_loading__block_invoke(uint64_t a1)
{
  result = [objc_msgSend(*(a1 + 32) "_boxedNativeButton")];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)setAction:(id)action
{
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), !action) || (isKindOfClass & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    WebThreadRunOnMainThread();
  }

  else
  {
    v5 = MEMORY[0x1E69E2F88];

    [v5 throwException:@"Invalid argument"];
  }
}

uint64_t __28__SUScriptButton_setAction___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[9];
  if (v3 != *(a1 + 40))
  {

    *(*(a1 + 32) + 72) = *(a1 + 40);
    v2 = *(a1 + 32);
  }

  v4 = [v2 _boxedNativeButton];
  result = [v4 disconnectButtonAction];
  if (*(*(a1 + 32) + 72))
  {

    return [v4 connectButtonAction];
  }

  return result;
}

- (void)setCanvas:(id)canvas
{
  [(SUScriptObject *)self lock];
  canvas = self->_canvas;
  if (canvas == canvas)
  {
    [(SUScriptObject *)self unlock];
    copyCanvasImage = 0;
  }

  else
  {

    self->_canvas = canvas;
    copyCanvasImage = [canvas copyCanvasImage];
    [(SUScriptObject *)self unlock];
    WebThreadRunOnMainThread();
  }
}

uint64_t __29__SUScriptButton_setEnabled___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _nativeButton];
  v3 = *(a1 + 40);

  return [v2 setEnabled:v3];
}

uint64_t __54__SUScriptButton_setImageInsetsTop_left_bottom_right___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _boxedNativeButton];
  v3 = *(a1 + 40);
  v4 = *(a1 + 44);
  v5 = *(a1 + 48);
  v6 = *(a1 + 52);

  return [v2 setImageInsets:{v3, v4, v5, v6}];
}

- (void)setImageWithURLString:(id)string scale:(id)scale
{
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    scale = 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), !string) || (isKindOfClass & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass())) && (!scale || (objc_opt_respondsToSelector()))
  {
    WebThreadRunOnMainThread();
  }

  else
  {
    v7 = MEMORY[0x1E69E2F88];

    [v7 throwException:@"Invalid argument"];
  }
}

void __46__SUScriptButton_setImageWithURLString_scale___block_invoke(uint64_t a1)
{
  if (*(a1 + 32) && (v2 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:*(a1 + 32)]) != 0)
  {
    v8 = v2;
    v3 = *(a1 + 48);
    if (v3)
    {
      [v3 floatValue];
      v5 = v4;
    }

    else
    {
      [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
    }

    v7 = [*(a1 + 40) newImageWithURL:v8 scale:v5];
    [*(a1 + 40) setImage:v7];

    v6 = v8;
  }

  else
  {
    [*(a1 + 40) setImage:0];
    v6 = 0;
  }
}

uint64_t __29__SUScriptButton_setLoading___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _boxedNativeButton];
  v3 = *(a1 + 40);

  return [v2 setLoading:v3];
}

- (void)setStyle:(id)style
{
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), !style) || (isKindOfClass & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    WebThreadRunOnMainThread();
  }

  else
  {
    v5 = MEMORY[0x1E69E2F88];

    [v5 throwException:@"Invalid argument"];
  }
}

uint64_t __27__SUScriptButton_setStyle___block_invoke(uint64_t a1)
{
  [objc_msgSend(*(a1 + 32) "_boxedNativeButton")];
  [*(a1 + 32) _boxedNativeButton];
  objc_opt_class();
  result = objc_opt_isKindOfClass();
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 buttonItem];
  }

  return result;
}

- (void)setSubtitle:(id)subtitle
{
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), !subtitle) || (isKindOfClass & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    WebThreadRunOnMainThread();
  }

  else
  {
    v5 = MEMORY[0x1E69E2F88];

    [v5 throwException:@"Invalid argument"];
  }
}

uint64_t __30__SUScriptButton_setSubtitle___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _boxedNativeButton];
  v3 = *(a1 + 40);

  return [v2 setSubtitle:v3];
}

uint64_t __25__SUScriptButton_setTag___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _boxedNativeButton];
  v3 = *(a1 + 40);

  return [v2 setTag:v3];
}

- (void)setTitle:(id)title
{
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), !title) || (isKindOfClass & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    WebThreadRunOnMainThread();
  }

  else
  {
    v5 = MEMORY[0x1E69E2F88];

    [v5 throwException:@"Invalid argument"];
  }
}

uint64_t __27__SUScriptButton_setTitle___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _boxedNativeButton];
  v3 = *(a1 + 40);

  return [v2 setTitle:v3];
}

- (void)showConfirmationWithTitle:(id)title animated:(BOOL)animated
{
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), !title) || (isKindOfClass & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    WebThreadRunOnMainThread();
  }

  else
  {
    v6 = MEMORY[0x1E69E2F88];

    [v6 throwException:@"Invalid argument"];
  }
}

uint64_t __53__SUScriptButton_showConfirmationWithTitle_animated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _boxedNativeButton];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);

  return [v2 showConfirmationWithTitle:v3 animated:v4];
}

- (id)showingConfirmation
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

uint64_t __37__SUScriptButton_showingConfirmation__block_invoke(uint64_t a1)
{
  result = [objc_msgSend(*(a1 + 32) "_boxedNativeButton")];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (NSString)style
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3052000000;
  v11 = __Block_byref_object_copy__7;
  v12 = __Block_byref_object_dispose__7;
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

id __23__SUScriptButton_style__block_invoke(uint64_t a1)
{
  result = [objc_msgSend(*(a1 + 32) "_boxedNativeButton")];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (NSString)subtitle
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3052000000;
  v11 = __Block_byref_object_copy__7;
  v12 = __Block_byref_object_dispose__7;
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

id __26__SUScriptButton_subtitle__block_invoke(uint64_t a1)
{
  result = [objc_msgSend(*(a1 + 32) "_boxedNativeButton")];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (int64_t)tag
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

uint64_t __21__SUScriptButton_tag__block_invoke(uint64_t a1)
{
  result = [objc_msgSend(*(a1 + 32) "_boxedNativeButton")];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (NSString)title
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3052000000;
  v11 = __Block_byref_object_copy__7;
  v12 = __Block_byref_object_dispose__7;
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

id __23__SUScriptButton_title__block_invoke(uint64_t a1)
{
  result = [objc_msgSend(*(a1 + 32) "_boxedNativeButton")];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)setTarget:(id)target
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    targetCopy = 0;
LABEL_3:
    [(SUScriptObject *)self lock];
    target = self->_target;
    if (target != targetCopy)
    {

      self->_target = targetCopy;
    }

    [(SUScriptObject *)self unlock];
    return;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  targetCopy = 0;
  if (!target)
  {
    goto LABEL_3;
  }

  if (isKindOfClass)
  {
    goto LABEL_3;
  }

  objc_opt_class();
  targetCopy = target;
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_3;
  }

  v8 = MEMORY[0x1E69E2F88];

  [v8 throwException:@"Invalid argument"];
}

- (WebScriptObject)target
{
  [(SUScriptObject *)self lock];
  v3 = self->_target;
  [(SUScriptObject *)self unlock];
  return v3;
}

- (id)_boxedNativeButton
{
  nativeObject = [(SUScriptObject *)self nativeObject];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    nativeObject = [SUScriptNativeUIButton objectWithDefaultButtonForScriptButton:self];
    [(SUScriptObject *)self setNativeObject:nativeObject];
  }

  return nativeObject;
}

- (id)_nativeButton
{
  _boxedNativeButton = [(SUScriptButton *)self _boxedNativeButton];

  return [_boxedNativeButton object];
}

- (id)_systemItemString
{
  nativeObject = [(SUScriptObject *)self nativeObject];

  return [(SUScriptNativeObject *)nativeObject systemItemString];
}

+ (id)webScriptNameForKeyName:(id)name
{
  result = [__KeyMapping_12 objectForKey:?];
  if (!result)
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___SUScriptButton;
    return objc_msgSendSuper2(&v6, sel_webScriptNameForKeyName_, name);
  }

  return result;
}

+ (id)webScriptNameForSelector:(SEL)selector
{
  result = SUWebScriptNameForSelector2(selector, &__SelectorMapping_9, 4);
  if (!result)
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___SUScriptButton;
    return objc_msgSendSuper2(&v6, sel_webScriptNameForSelector_, selector);
  }

  return result;
}

- (id)scriptAttributeKeys
{
  v4.receiver = self;
  v4.super_class = SUScriptButton;
  scriptAttributeKeys = [(SUScriptObject *)&v4 scriptAttributeKeys];
  -[NSMutableArray addObjectsFromArray:](scriptAttributeKeys, "addObjectsFromArray:", [__KeyMapping_12 allKeys]);
  return scriptAttributeKeys;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    __KeyMapping_12 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{@"action", @"canvas", @"canvas", @"enabled", @"enabled", @"loading", @"loading", @"showingConfirmation", @"showingConfirmation", @"style", @"style", @"subtitle", @"subtitle", @"tag", @"tag", @"title", @"title", @"target", @"target", 0}];
    __SelectorMapping_9 = sel_hideConfirmationAnimated_;
    *algn_1EBF3A988 = @"hideConfirmation";
    qword_1EBF3A990 = sel_setImageInsetsTop_left_bottom_right_;
    unk_1EBF3A998 = @"setImageInsets";
    qword_1EBF3A9A0 = sel_setImageWithURLString_scale_;
    unk_1EBF3A9A8 = @"setImage";
    qword_1EBF3A9B0 = sel_showConfirmationWithTitle_animated_;
    unk_1EBF3A9B8 = @"showConfirmation";
  }
}

@end