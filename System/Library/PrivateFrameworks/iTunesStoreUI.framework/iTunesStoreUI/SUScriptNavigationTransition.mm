@interface SUScriptNavigationTransition
+ (id)webScriptNameForKeyName:(id)name;
+ (id)webScriptNameForSelector:(SEL)selector;
+ (void)initialize;
- (SUScriptNavigationItem)topNavigationItem;
- (SUScriptNavigationTransition)initWithContainer:(id)container finishBlock:(id)block;
- (id)scriptAttributeKeys;
- (int64_t)status;
- (void)addFinishBlock:(id)block;
- (void)finishedLoading;
- (void)setStatus:(int64_t)status;
- (void)setTopNavigationItem:(id)item;
@end

@implementation SUScriptNavigationTransition

- (SUScriptNavigationTransition)initWithContainer:(id)container finishBlock:(id)block
{
  containerCopy = container;
  blockCopy = block;
  v17.receiver = self;
  v17.super_class = SUScriptNavigationTransition;
  v9 = [(SUScriptObject *)&v17 init];
  if (v9)
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    finishBlocks = v9->_finishBlocks;
    v9->_finishBlocks = v10;

    v12 = v9->_finishBlocks;
    v13 = [blockCopy copy];
    [(NSMutableArray *)v12 addObject:v13];

    v9->_status = 0;
    v14 = objc_alloc_init(MEMORY[0x1E696AD10]);
    lock = v9->super._lock;
    v9->super._lock = v14;

    objc_storeStrong(&v9->_container, container);
  }

  return v9;
}

- (void)addFinishBlock:(id)block
{
  blockCopy = block;
  [(SUScriptObject *)self lock];
  finishBlocks = self->_finishBlocks;
  v6 = [blockCopy copy];

  [(NSMutableArray *)finishBlocks addObject:v6];

  [(SUScriptObject *)self unlock];
}

- (int64_t)status
{
  [(SUScriptObject *)self lock];
  status = self->_status;
  [(SUScriptObject *)self unlock];
  return status;
}

- (void)setStatus:(int64_t)status
{
  [(SUScriptObject *)self lock];
  self->_status = status;

  [(SUScriptObject *)self unlock];
}

- (void)setTopNavigationItem:(id)item
{
  v3 = MEMORY[0x1E69E2F88];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ is readonly", @"topNavigationItem"];
  [v3 throwException:v4];
}

- (SUScriptNavigationItem)topNavigationItem
{
  if (self->_container)
  {
    v3 = [SUScriptNavigationItem alloc];
    navigationItem = [(SUViewController *)self->_container navigationItem];
    v5 = [(SUScriptNavigationItem *)v3 initWithNativeNavigationItem:navigationItem];

    [(SUScriptObject *)self checkInScriptObject:v5];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)finishedLoading
{
  v17 = *MEMORY[0x1E69E9840];
  [(SUScriptObject *)self lock];
  if (self->_status == 2)
  {
    v3 = 0;
    v4 = 0;
  }

  else
  {
    v3 = [(NSMutableArray *)self->_finishBlocks copy];
    v4 = self->_container;
    container = self->_container;
    self->_container = 0;

    finishBlocks = self->_finishBlocks;
    self->_finishBlocks = 0;

    self->_status = 2;
  }

  [(SUScriptObject *)self unlock];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = v3;
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        (*(*(*(&v12 + 1) + 8 * i) + 16))(*(*(&v12 + 1) + 8 * i));
      }

      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

+ (id)webScriptNameForKeyName:(id)name
{
  nameCopy = name;
  v5 = [__KeyMapping_19 objectForKey:nameCopy];
  if (!v5)
  {
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___SUScriptNavigationTransition;
    v5 = objc_msgSendSuper2(&v7, sel_webScriptNameForKeyName_, nameCopy);
  }

  return v5;
}

+ (id)webScriptNameForSelector:(SEL)selector
{
  v5 = SUWebScriptNameForSelector2(selector, &__SelectorMapping_14, 1);
  if (!v5)
  {
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___SUScriptNavigationTransition;
    v5 = objc_msgSendSuper2(&v7, sel_webScriptNameForSelector_, selector);
  }

  return v5;
}

- (id)scriptAttributeKeys
{
  v5.receiver = self;
  v5.super_class = SUScriptNavigationTransition;
  scriptAttributeKeys = [(SUScriptObject *)&v5 scriptAttributeKeys];
  allKeys = [__KeyMapping_19 allKeys];
  [scriptAttributeKeys addObjectsFromArray:allKeys];

  return scriptAttributeKeys;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    __SelectorMapping_14 = sel_finishedLoading;
    unk_1EBF3AB00 = @"finishedLoading";
    __KeyMapping_19 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{@"fromIndex", @"toIndex", @"toIndex", @"topNavigationItem", @"topNavigationItem", 0}];

    MEMORY[0x1EEE66BB8]();
  }
}

@end