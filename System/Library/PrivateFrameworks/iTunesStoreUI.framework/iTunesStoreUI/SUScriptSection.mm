@interface SUScriptSection
+ (id)webScriptNameForKeyName:(id)name;
+ (id)webScriptNameForSelector:(SEL)selector;
+ (void)initialize;
- (BOOL)transient;
- (NSString)badgeValue;
- (NSString)identifier;
- (SUScriptSection)initWithNativeSection:(id)section;
- (SUScriptViewController)viewController;
- (id)scriptAttributeKeys;
- (void)dealloc;
- (void)setBadgeValue:(id)value animated:(BOOL)animated blink:(BOOL)blink;
@end

@implementation SUScriptSection

- (SUScriptSection)initWithNativeSection:(id)section
{
  v4 = [(SUScriptObject *)self init];
  if (v4)
  {
    v4->_identifier = [section identifier];
    v4->_transient = [section isTransient];
  }

  return v4;
}

- (void)dealloc
{
  self->_badgeValue = 0;

  self->_identifier = 0;
  self->_viewController = 0;
  v3.receiver = self;
  v3.super_class = SUScriptSection;
  [(SUScriptObject *)&v3 dealloc];
}

- (void)setBadgeValue:(id)value animated:(BOOL)animated blink:(BOOL)blink
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = 0;
    goto LABEL_3;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v9 = 0;
  if (!value || (isKindOfClass & 1) != 0 || (objc_opt_class(), v9 = value, (objc_opt_isKindOfClass() & 1) != 0))
  {
LABEL_3:
    v10 = [v9 length];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __48__SUScriptSection_setBadgeValue_animated_blink___block_invoke;
    block[3] = &unk_1E8165990;
    if (v10)
    {
      v11 = v9;
    }

    else
    {
      v11 = 0;
    }

    block[4] = self;
    block[5] = v11;
    animatedCopy = animated;
    blinkCopy = blink;
    dispatch_async(MEMORY[0x1E69E96A0], block);
    return;
  }

  v13 = MEMORY[0x1E69E2F88];

  [v13 throwException:@"Invalid argument"];
}

uint64_t __48__SUScriptSection_setBadgeValue_animated_blink___block_invoke(uint64_t a1)
{
  v2 = [objc_msgSend(objc_msgSend(*(a1 + 32) "clientInterface")];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [v2 firstViewController];
  }

  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 49);

  return [v2 setBadgeValue:v3 animated:v4 blink:v5];
}

- (NSString)badgeValue
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3052000000;
  v12 = __Block_byref_object_copy__16;
  v13 = __Block_byref_object_dispose__16;
  v14 = 0;
  v7 = MEMORY[0x1E69E9820];
  WebThreadRunOnMainThread();
  v2 = [v10[5] length];
  v3 = v10[5];
  if (!v2)
  {

    v10[5] = 0;
    goto LABEL_5;
  }

  if (!v3)
  {
LABEL_5:
    null = [MEMORY[0x1E695DFB0] null];
    goto LABEL_6;
  }

  null = v3;
LABEL_6:
  v5 = null;
  _Block_object_dispose(&v9, 8);
  return v5;
}

uint64_t __29__SUScriptSection_badgeValue__block_invoke(uint64_t a1)
{
  result = [objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(*(a1 + 32) "clientInterface")];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (NSString)identifier
{
  [(SUScriptObject *)self lock];
  v3 = self->_identifier;
  [(SUScriptObject *)self unlock];
  return v3;
}

- (BOOL)transient
{
  [(SUScriptObject *)self lock];
  transient = self->_transient;
  [(SUScriptObject *)self unlock];
  return transient;
}

- (SUScriptViewController)viewController
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3052000000;
  v16 = __Block_byref_object_copy__16;
  v17 = __Block_byref_object_dispose__16;
  v18 = 0;
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __33__SUScriptSection_viewController__block_invoke;
  v10 = &unk_1E81650B0;
  selfCopy = self;
  v12 = &v13;
  WebThreadRunOnMainThread();
  if (v14[5] && ([(SUScriptObject *)self checkInScriptObject:v7, 3221225472, __33__SUScriptSection_viewController__block_invoke, &unk_1E81650B0, selfCopy, &v13], (v3 = v14[5]) != 0))
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

uint64_t __33__SUScriptSection_viewController__block_invoke(uint64_t a1)
{
  result = [objc_msgSend(objc_msgSend(objc_msgSend(*(a1 + 32) "clientInterface")];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

+ (id)webScriptNameForKeyName:(id)name
{
  result = [__KeyMapping_25 objectForKey:?];
  if (!result)
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___SUScriptSection;
    return objc_msgSendSuper2(&v6, sel_webScriptNameForKeyName_, name);
  }

  return result;
}

+ (id)webScriptNameForSelector:(SEL)selector
{
  result = SUWebScriptNameForSelector2(selector, &__SelectorMapping_20, 1);
  if (!result)
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___SUScriptSection;
    return objc_msgSendSuper2(&v6, sel_webScriptNameForSelector_, selector);
  }

  return result;
}

- (id)scriptAttributeKeys
{
  v4.receiver = self;
  v4.super_class = SUScriptSection;
  scriptAttributeKeys = [(SUScriptObject *)&v4 scriptAttributeKeys];
  -[NSMutableArray addObjectsFromArray:](scriptAttributeKeys, "addObjectsFromArray:", [__KeyMapping_25 allKeys]);
  return scriptAttributeKeys;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    __SelectorMapping_20 = sel_setBadgeValue_animated_blink_;
    unk_1EBF3AC80 = @"setBadgeValue";
    __KeyMapping_25 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{@"badgeValue", @"identifier", @"identifier", @"isTransient", @"transient", @"viewController", @"viewController", 0}];
  }
}

@end