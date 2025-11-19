@interface SUScriptCalloutView
+ (id)webScriptNameForKeyName:(id)a3;
+ (id)webScriptNameForSelector:(SEL)a3;
+ (void)initialize;
- (NSString)subtitle;
- (NSString)title;
- (SUScriptCalloutView)init;
- (id)scriptAttributeKeys;
- (void)_menuDidHideNotification:(id)a3;
- (void)_reloadUntructedString;
- (void)_resetCalloutBar;
- (void)_setupCalloutBar;
- (void)dealloc;
- (void)setSubtitle:(id)a3;
- (void)setTitle:(id)a3;
- (void)setTitle:(id)a3 subtitle:(id)a4;
@end

@implementation SUScriptCalloutView

- (SUScriptCalloutView)init
{
  v5.receiver = self;
  v5.super_class = SUScriptCalloutView;
  v2 = [(SUScriptObject *)&v5 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    [v3 addObserver:v2 selector:sel__menuDidHideNotification_ name:*MEMORY[0x1E69DE0E0] object:0];
  }

  return v2;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x1E69DE0E0] object:0];
  v4.receiver = self;
  v4.super_class = SUScriptCalloutView;
  [(SUScriptObject *)&v4 dealloc];
}

uint64_t __49__SUScriptCalloutView_setTargetX_y_width_height___block_invoke(uint64_t a1)
{
  v2 = [objc_msgSend(objc_msgSend(*(a1 + 32) "parentViewController")];
  v3 = [MEMORY[0x1E69DCC68] sharedMenuController];
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);

  return [v3 setTargetRect:v2 inView:{v4, v5, v6, v7}];
}

- (void)setTitle:(id)a3 subtitle:(id)a4
{
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    a3 = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    a4 = 0;
  }

  if (a3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || a4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v6 = MEMORY[0x1E69E2F88];

    [v6 throwException:@"Invalid argument"];
  }

  else
  {
    WebThreadRunOnMainThread();
  }
}

uint64_t __41__SUScriptCalloutView_setTitle_subtitle___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 80) isEqualToString:*(a1 + 40)];
  if ((v2 & 1) == 0)
  {

    *(*(a1 + 32) + 80) = [*(a1 + 40) copy];
  }

  result = [*(*(a1 + 32) + 88) isEqualToString:*(a1 + 48)];
  if (result)
  {
    if (v2)
    {
      return result;
    }
  }

  else
  {

    *(*(a1 + 32) + 88) = [*(a1 + 48) copy];
  }

  v4 = *(a1 + 32);

  return [v4 _reloadUntructedString];
}

uint64_t __43__SUScriptCalloutView_setVisible_animated___block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(result + 40);
  if (*(v1 + 72) != v2)
  {
    v3 = result;
    *(v1 + 72) = v2;
    v4 = *(result + 32);
    if (v4[72] == 1)
    {
      [v4 _setupCalloutBar];
    }

    [objc_msgSend(MEMORY[0x1E69DCC68] "sharedMenuController")];
    result = *(v3 + 32);
    if ((*(result + 72) & 1) == 0)
    {

      return [result _resetCalloutBar];
    }
  }

  return result;
}

- (void)setSubtitle:(id)a3
{
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), !a3) || (isKindOfClass & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    WebThreadRunOnMainThread();
  }

  else
  {
    v5 = MEMORY[0x1E69E2F88];

    [v5 throwException:@"Invalid argument"];
  }
}

uint64_t __35__SUScriptCalloutView_setSubtitle___block_invoke(uint64_t result)
{
  v1 = *(*(result + 32) + 80);
  if (v1 != *(result + 40))
  {
    v2 = result;

    *(*(v2 + 32) + 80) = [*(v2 + 40) copy];
    v3 = *(v2 + 32);

    return [v3 _reloadUntructedString];
  }

  return result;
}

- (void)setTitle:(id)a3
{
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), !a3) || (isKindOfClass & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    WebThreadRunOnMainThread();
  }

  else
  {
    v5 = MEMORY[0x1E69E2F88];

    [v5 throwException:@"Invalid argument"];
  }
}

uint64_t __32__SUScriptCalloutView_setTitle___block_invoke(uint64_t result)
{
  v1 = *(*(result + 32) + 88);
  if (v1 != *(result + 40))
  {
    v2 = result;

    *(*(v2 + 32) + 88) = [*(v2 + 40) copy];
    v3 = *(v2 + 32);

    return [v3 _reloadUntructedString];
  }

  return result;
}

- (NSString)subtitle
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3052000000;
  v7 = __Block_byref_object_copy__52;
  v8 = __Block_byref_object_dispose__52;
  v9 = 0;
  WebThreadRunOnMainThread();
  v2 = v5[5];
  _Block_object_dispose(&v4, 8);
  return v2;
}

uint64_t __31__SUScriptCalloutView_subtitle__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 80) copy];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (NSString)title
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3052000000;
  v7 = __Block_byref_object_copy__52;
  v8 = __Block_byref_object_dispose__52;
  v9 = 0;
  WebThreadRunOnMainThread();
  v2 = v5[5];
  _Block_object_dispose(&v4, 8);
  return v2;
}

uint64_t __28__SUScriptCalloutView_title__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 88) copy];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)_menuDidHideNotification:(id)a3
{
  if (self->_isVisible)
  {
    self->_isVisible = 0;
    [(SUScriptCalloutView *)self _resetCalloutBar];
  }
}

- (void)_reloadUntructedString
{
  if (!self->_isVisible)
  {
    return;
  }

  title = self->_title;
  subtitle = self->_subtitle;
  if (!title)
  {
    if (!subtitle)
    {
      title = 0;
      goto LABEL_9;
    }

    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\n%@", subtitle];
    goto LABEL_8;
  }

  if (subtitle)
  {
    v5 = [(NSString *)title stringByAppendingFormat:@"\n%@", self->_subtitle];
LABEL_8:
    title = v5;
  }

LABEL_9:
  v6 = [MEMORY[0x1E69DC770] sharedCalloutBar];

  [v6 setUntruncatedString:title];
}

- (void)_resetCalloutBar
{
  v2 = [MEMORY[0x1E69DC770] sharedCalloutBar];
  [v2 clearSupressesHorizontalMovementFrame];
  [v2 setSupressesHorizontalMovement:0];

  [v2 setUntruncatedString:0];
}

- (void)_setupCalloutBar
{
  [objc_msgSend(MEMORY[0x1E69DC770] "sharedCalloutBar")];

  [(SUScriptCalloutView *)self _reloadUntructedString];
}

+ (id)webScriptNameForKeyName:(id)a3
{
  result = [__KeyMapping_79 objectForKey:?];
  if (!result)
  {
    v6.receiver = a1;
    v6.super_class = &OBJC_METACLASS___SUScriptCalloutView;
    return objc_msgSendSuper2(&v6, sel_webScriptNameForKeyName_, a3);
  }

  return result;
}

+ (id)webScriptNameForSelector:(SEL)a3
{
  result = SUWebScriptNameForSelector2(a3, &__SelectorMapping_58, 3);
  if (!result)
  {
    v6.receiver = a1;
    v6.super_class = &OBJC_METACLASS___SUScriptCalloutView;
    return objc_msgSendSuper2(&v6, sel_webScriptNameForSelector_, a3);
  }

  return result;
}

- (id)scriptAttributeKeys
{
  v4.receiver = self;
  v4.super_class = SUScriptCalloutView;
  v2 = [(SUScriptObject *)&v4 scriptAttributeKeys];
  -[NSMutableArray addObjectsFromArray:](v2, "addObjectsFromArray:", [__KeyMapping_79 allKeys]);
  return v2;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    __SelectorMapping_58 = sel_setTargetX_y_width_height_;
    *algn_1EBF3B988 = @"setTargetRect";
    qword_1EBF3B990 = sel_setTitle_subtitle_;
    unk_1EBF3B998 = @"setTitles";
    qword_1EBF3B9A0 = sel_setVisible_animated_;
    unk_1EBF3B9A8 = @"setVisible";
    __KeyMapping_79 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{@"subtitle", @"title", @"title", 0}];
  }
}

@end