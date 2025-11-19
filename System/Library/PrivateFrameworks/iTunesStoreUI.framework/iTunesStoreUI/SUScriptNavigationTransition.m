@interface SUScriptNavigationTransition
+ (id)webScriptNameForKeyName:(id)a3;
+ (id)webScriptNameForSelector:(SEL)a3;
+ (void)initialize;
- (SUScriptNavigationItem)topNavigationItem;
- (SUScriptNavigationTransition)initWithContainer:(id)a3 finishBlock:(id)a4;
- (id)scriptAttributeKeys;
- (int64_t)status;
- (void)addFinishBlock:(id)a3;
- (void)finishedLoading;
- (void)setStatus:(int64_t)a3;
- (void)setTopNavigationItem:(id)a3;
@end

@implementation SUScriptNavigationTransition

- (SUScriptNavigationTransition)initWithContainer:(id)a3 finishBlock:(id)a4
{
  v7 = a3;
  v8 = a4;
  v17.receiver = self;
  v17.super_class = SUScriptNavigationTransition;
  v9 = [(SUScriptObject *)&v17 init];
  if (v9)
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    finishBlocks = v9->_finishBlocks;
    v9->_finishBlocks = v10;

    v12 = v9->_finishBlocks;
    v13 = [v8 copy];
    [(NSMutableArray *)v12 addObject:v13];

    v9->_status = 0;
    v14 = objc_alloc_init(MEMORY[0x1E696AD10]);
    lock = v9->super._lock;
    v9->super._lock = v14;

    objc_storeStrong(&v9->_container, a3);
  }

  return v9;
}

- (void)addFinishBlock:(id)a3
{
  v4 = a3;
  [(SUScriptObject *)self lock];
  finishBlocks = self->_finishBlocks;
  v6 = [v4 copy];

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

- (void)setStatus:(int64_t)a3
{
  [(SUScriptObject *)self lock];
  self->_status = a3;

  [(SUScriptObject *)self unlock];
}

- (void)setTopNavigationItem:(id)a3
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
    v4 = [(SUViewController *)self->_container navigationItem];
    v5 = [(SUScriptNavigationItem *)v3 initWithNativeNavigationItem:v4];

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

+ (id)webScriptNameForKeyName:(id)a3
{
  v4 = a3;
  v5 = [__KeyMapping_19 objectForKey:v4];
  if (!v5)
  {
    v7.receiver = a1;
    v7.super_class = &OBJC_METACLASS___SUScriptNavigationTransition;
    v5 = objc_msgSendSuper2(&v7, sel_webScriptNameForKeyName_, v4);
  }

  return v5;
}

+ (id)webScriptNameForSelector:(SEL)a3
{
  v5 = SUWebScriptNameForSelector2(a3, &__SelectorMapping_14, 1);
  if (!v5)
  {
    v7.receiver = a1;
    v7.super_class = &OBJC_METACLASS___SUScriptNavigationTransition;
    v5 = objc_msgSendSuper2(&v7, sel_webScriptNameForSelector_, a3);
  }

  return v5;
}

- (id)scriptAttributeKeys
{
  v5.receiver = self;
  v5.super_class = SUScriptNavigationTransition;
  v2 = [(SUScriptObject *)&v5 scriptAttributeKeys];
  v3 = [__KeyMapping_19 allKeys];
  [v2 addObjectsFromArray:v3];

  return v2;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    __SelectorMapping_14 = sel_finishedLoading;
    unk_1EBF3AB00 = @"finishedLoading";
    __KeyMapping_19 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{@"fromIndex", @"toIndex", @"toIndex", @"topNavigationItem", @"topNavigationItem", 0}];

    MEMORY[0x1EEE66BB8]();
  }
}

@end