@interface SUScriptCalloutView
+ (id)webScriptNameForKeyName:(id)name;
+ (id)webScriptNameForSelector:(SEL)selector;
+ (void)initialize;
- (NSString)subtitle;
- (NSString)title;
- (SUScriptCalloutView)init;
- (id)scriptAttributeKeys;
- (void)_menuDidHideNotification:(id)notification;
- (void)_reloadUntructedString;
- (void)_resetCalloutBar;
- (void)_setupCalloutBar;
- (void)dealloc;
- (void)setSubtitle:(id)subtitle;
- (void)setTitle:(id)title;
- (void)setTitle:(id)title subtitle:(id)subtitle;
@end

@implementation SUScriptCalloutView

- (SUScriptCalloutView)init
{
  v5.receiver = self;
  v5.super_class = SUScriptCalloutView;
  v2 = [(SUScriptObject *)&v5 init];
  if (v2)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__menuDidHideNotification_ name:*MEMORY[0x1E69DE0E0] object:0];
  }

  return v2;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69DE0E0] object:0];
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

- (void)setTitle:(id)title subtitle:(id)subtitle
{
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    title = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    subtitle = 0;
  }

  if (title && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || subtitle && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
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

- (void)_menuDidHideNotification:(id)notification
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

    subtitle = [MEMORY[0x1E696AEC0] stringWithFormat:@"\n%@", subtitle];
    goto LABEL_8;
  }

  if (subtitle)
  {
    subtitle = [(NSString *)title stringByAppendingFormat:@"\n%@", self->_subtitle];
LABEL_8:
    title = subtitle;
  }

LABEL_9:
  mEMORY[0x1E69DC770] = [MEMORY[0x1E69DC770] sharedCalloutBar];

  [mEMORY[0x1E69DC770] setUntruncatedString:title];
}

- (void)_resetCalloutBar
{
  mEMORY[0x1E69DC770] = [MEMORY[0x1E69DC770] sharedCalloutBar];
  [mEMORY[0x1E69DC770] clearSupressesHorizontalMovementFrame];
  [mEMORY[0x1E69DC770] setSupressesHorizontalMovement:0];

  [mEMORY[0x1E69DC770] setUntruncatedString:0];
}

- (void)_setupCalloutBar
{
  [objc_msgSend(MEMORY[0x1E69DC770] "sharedCalloutBar")];

  [(SUScriptCalloutView *)self _reloadUntructedString];
}

+ (id)webScriptNameForKeyName:(id)name
{
  result = [__KeyMapping_79 objectForKey:?];
  if (!result)
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___SUScriptCalloutView;
    return objc_msgSendSuper2(&v6, sel_webScriptNameForKeyName_, name);
  }

  return result;
}

+ (id)webScriptNameForSelector:(SEL)selector
{
  result = SUWebScriptNameForSelector2(selector, &__SelectorMapping_58, 3);
  if (!result)
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___SUScriptCalloutView;
    return objc_msgSendSuper2(&v6, sel_webScriptNameForSelector_, selector);
  }

  return result;
}

- (id)scriptAttributeKeys
{
  v4.receiver = self;
  v4.super_class = SUScriptCalloutView;
  scriptAttributeKeys = [(SUScriptObject *)&v4 scriptAttributeKeys];
  -[NSMutableArray addObjectsFromArray:](scriptAttributeKeys, "addObjectsFromArray:", [__KeyMapping_79 allKeys]);
  return scriptAttributeKeys;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
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