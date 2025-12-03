@interface NSTextContentManager
+ (unint64_t)defaultBaseWritingDirectionResolutionStrategy;
- (NSArray)textElementsForRange:(NSTextRange *)range;
- (NSArray)textLayoutManagers;
- (NSTextContentManager)init;
- (NSTextContentManager)initWithCoder:(NSCoder *)coder;
- (NSTextLayoutManager)primaryTextLayoutManager;
- (unint64_t)baseWritingDirectionResolutionStrategy;
- (void)_decrementTransactionStack;
- (void)_incrementTransactionStack;
- (void)addTextLayoutManager:(NSTextLayoutManager *)textLayoutManager;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)performEditingTransactionUsingBlock:(void *)transaction;
- (void)recordEditActionInRange:(NSTextRange *)originalTextRange newTextRange:(NSTextRange *)newTextRange;
- (void)removeTextLayoutManager:(NSTextLayoutManager *)textLayoutManager;
- (void)setPrimaryTextLayoutManager:(NSTextLayoutManager *)primaryTextLayoutManager;
- (void)synchronizeTextLayoutManagers:(void *)completionHandler;
@end

@implementation NSTextContentManager

- (NSTextContentManager)init
{
  v4.receiver = self;
  v4.super_class = NSTextContentManager;
  v2 = [(NSTextContentManager *)&v4 init];
  if (v2)
  {
    v2->_textLayoutManagers = objc_alloc_init(MEMORY[0x1E695DF70]);
    v2->_automaticallySynchronizesTextLayoutManagers = 1;
  }

  return v2;
}

+ (unint64_t)defaultBaseWritingDirectionResolutionStrategy
{
  if (defaultBaseWritingDirectionResolutionStrategy_onceToken != -1)
  {
    +[NSTextContentManager defaultBaseWritingDirectionResolutionStrategy];
  }

  return defaultBaseWritingDirectionResolutionStrategy_defaultStrategy;
}

uint64_t __69__NSTextContentManager_defaultBaseWritingDirectionResolutionStrategy__block_invoke()
{
  v0 = [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")];
  if (v0)
  {
    result = [v0 unsignedIntValue];
    v2 = result;
  }

  else
  {
    result = _os_feature_enabled_impl();
    if ((result & 1) == 0)
    {
      return result;
    }

    v2 = 2;
  }

  defaultBaseWritingDirectionResolutionStrategy_defaultStrategy = v2;
  return result;
}

- (void)dealloc
{
  [(NSTextContentManager *)self setPrimaryTextLayoutManager:0];
  [(NSTextContentManager *)self setDelegate:0];

  v3.receiver = self;
  v3.super_class = NSTextContentManager;
  [(NSTextContentManager *)&v3 dealloc];
}

- (void)_incrementTransactionStack
{
  p_transactionStack = &self->_transactionStack;
  if (atomic_load(&self->_transactionStack))
  {
    atomic_fetch_add(p_transactionStack, 1uLL);
  }

  else
  {
    [(NSTextContentManager *)self willChangeValueForKey:@"hasEditingTransaction"];
    atomic_fetch_add(p_transactionStack, 1uLL);

    [(NSTextContentManager *)self didChangeValueForKey:@"hasEditingTransaction"];
  }
}

- (void)_decrementTransactionStack
{
  p_transactionStack = &self->_transactionStack;
  v3 = atomic_load(&self->_transactionStack);
  if (v3 > 1)
  {
    atomic_fetch_add(p_transactionStack, 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    [(NSTextContentManager *)self willChangeValueForKey:@"hasEditingTransaction"];
    atomic_fetch_add(p_transactionStack, 0xFFFFFFFFFFFFFFFFLL);

    [(NSTextContentManager *)self didChangeValueForKey:@"hasEditingTransaction"];
  }
}

- (NSArray)textLayoutManagers
{
  objc_sync_enter(self);
  v3 = [(NSMutableArray *)self->_textLayoutManagers copy];
  objc_sync_exit(self);
  return v3;
}

- (NSTextContentManager)initWithCoder:(NSCoder *)coder
{
  if ([(NSCoder *)coder allowsKeyedCoding])
  {
    v5 = [(NSCoder *)coder decodeInt32ForKey:@"NS.flags"];
    [(NSTextContentManager *)self setDelegate:[(NSCoder *)coder decodeObjectForKey:@"NS.delegate"]];
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    self->_textLayoutManagers = -[NSCoder decodeObjectOfClasses:forKey:](coder, "decodeObjectOfClasses:forKey:", [v6 setWithObjects:{v7, objc_opt_class(), 0}], @"NS.textLayoutManagers");
    self->_maximumNumberOfUncachedElements = [(NSCoder *)coder decodeIntegerForKey:@"NS.maximumNumberOfUncachedElements"];
    self->_automaticallySynchronizesToBackingStore = (v5 & 2) != 0;
    self->_automaticallySynchronizesTextLayoutManagers = v5 & 1;
    if (!self->_textLayoutManagers)
    {
      self->_textLayoutManagers = objc_alloc_init(MEMORY[0x1E695DF70]);
    }
  }

  return self;
}

- (void)encodeWithCoder:(id)coder
{
  if ([coder allowsKeyedCoding])
  {
    textLayoutManagers = [(NSTextContentManager *)self textLayoutManagers];
    delegate = [(NSTextContentManager *)self delegate];
    if (self->_automaticallySynchronizesToBackingStore)
    {
      v7 = 2;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7 | self->_automaticallySynchronizesTextLayoutManagers;
    if (v8)
    {
      [coder encodeInt32:v8 forKey:@"NS.flags"];
    }

    if (delegate)
    {
      [coder encodeObject:delegate forKey:@"NS.delegate"];
    }

    if ([(NSArray *)textLayoutManagers count])
    {
      [coder encodeObject:textLayoutManagers forKey:@"NS.textLayoutManagers"];
    }

    if (self->_maximumNumberOfUncachedElements)
    {

      [coder encodeInteger:? forKey:?];
    }
  }
}

- (void)addTextLayoutManager:(NSTextLayoutManager *)textLayoutManager
{
  [(NSTextContentManager *)self willChangeValueForKey:@"textLayoutManagers"];
  objc_sync_enter(self);
  [(NSMutableArray *)self->_textLayoutManagers addObject:textLayoutManager];
  [(NSTextLayoutManager *)textLayoutManager setTextContentManager:self];
  objc_sync_exit(self);

  [(NSTextContentManager *)self didChangeValueForKey:@"textLayoutManagers"];
}

- (void)removeTextLayoutManager:(NSTextLayoutManager *)textLayoutManager
{
  if ([(NSMutableArray *)self->_textLayoutManagers containsObject:?])
  {
    if ([(NSTextContentManager *)self primaryTextLayoutManager]== textLayoutManager)
    {
      [(NSTextContentManager *)self setPrimaryTextLayoutManager:0];
    }

    [(NSTextContentManager *)self willChangeValueForKey:@"textLayoutManagers"];
    objc_sync_enter(self);
    [(NSTextLayoutManager *)textLayoutManager setTextContentManager:0];
    [(NSMutableArray *)self->_textLayoutManagers removeObject:textLayoutManager];
    objc_sync_exit(self);

    [(NSTextContentManager *)self didChangeValueForKey:@"textLayoutManagers"];
  }
}

- (NSTextLayoutManager)primaryTextLayoutManager
{
  objc_sync_enter(self);
  v3 = self->_primaryTextLayoutManager;
  objc_sync_exit(self);
  return v3;
}

- (void)setPrimaryTextLayoutManager:(NSTextLayoutManager *)primaryTextLayoutManager
{
  if (self->_primaryTextLayoutManager != primaryTextLayoutManager)
  {
    [(NSTextContentManager *)self synchronizeTextLayoutManagers:0];
    objc_sync_enter(self);

    if ([(NSMutableArray *)self->_textLayoutManagers containsObject:primaryTextLayoutManager])
    {
      v5 = primaryTextLayoutManager;
    }

    else
    {
      v5 = 0;
    }

    self->_primaryTextLayoutManager = v5;

    objc_sync_exit(self);
  }
}

- (void)synchronizeTextLayoutManagers:(void *)completionHandler
{
  objc_sync_enter(self);
  textLayoutManagers = self->_textLayoutManagers;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54__NSTextContentManager_synchronizeTextLayoutManagers___block_invoke;
  v5[3] = &unk_1E7267CF8;
  v5[4] = self;
  [(NSMutableArray *)textLayoutManagers enumerateObjectsUsingBlock:v5];

  self->_editHistory = 0;
  objc_sync_exit(self);
}

uint64_t __54__NSTextContentManager_synchronizeTextLayoutManagers___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 32) + 24);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __54__NSTextContentManager_synchronizeTextLayoutManagers___block_invoke_2;
  v4[3] = &unk_1E7267CD0;
  v4[4] = a2;
  return [v2 enumerateObjectsUsingBlock:v4];
}

uint64_t __54__NSTextContentManager_synchronizeTextLayoutManagers___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 firstObject];

  return [v2 processLayoutInvalidationForTextRange:v3 synchronizing:1];
}

- (NSArray)textElementsForRange:(NSTextRange *)range
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3052000000;
  v13 = __Block_byref_object_copy__12;
  v14 = __Block_byref_object_dispose__12;
  v15 = 0;
  location = [(NSTextRange *)range location];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __45__NSTextContentManager_textElementsForRange___block_invoke;
  v9[3] = &unk_1E7266570;
  v9[4] = range;
  v9[5] = &v10;
  [(NSTextContentManager *)self enumerateTextElementsFromLocation:location options:0 usingBlock:v9];
  v6 = v11[5];
  if (v11[5])
  {
    v7 = v11[5];
  }

  else
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  _Block_object_dispose(&v10, 8);
  return v7;
}

uint64_t __45__NSTextContentManager_textElementsForRange___block_invoke(uint64_t a1, void *a2)
{
  v4 = [*(a1 + 32) containsLocation:{objc_msgSend(objc_msgSend(a2, "elementRange"), "location")}];
  if (v4)
  {
    v5 = *(*(*(a1 + 40) + 8) + 40);
    if (!v5)
    {
      *(*(*(a1 + 40) + 8) + 40) = objc_alloc_init(MEMORY[0x1E695DF70]);
      v5 = *(*(*(a1 + 40) + 8) + 40);
    }

    [v5 addObject:a2];
  }

  return v4;
}

- (void)performEditingTransactionUsingBlock:(void *)transaction
{
  [(NSTextContentManager *)self _incrementTransactionStack];
  (*(transaction + 2))(transaction);
  [(NSTextContentManager *)self _decrementTransactionStack];
  if (![(NSTextContentManager *)self hasEditingTransaction])
  {
    if ([(NSTextContentManager *)self automaticallySynchronizesTextLayoutManagers])
    {
      [(NSTextContentManager *)self synchronizeTextLayoutManagers:0];
    }

    if ([(NSTextContentManager *)self automaticallySynchronizesToBackingStore])
    {

      [(NSTextContentManager *)self synchronizeToBackingStore:0];
    }
  }
}

- (void)recordEditActionInRange:(NSTextRange *)originalTextRange newTextRange:(NSTextRange *)newTextRange
{
  v8[2] = *MEMORY[0x1E69E9840];
  objc_sync_enter(self);
  editHistory = self->_editHistory;
  if (!editHistory)
  {
    editHistory = objc_alloc_init(MEMORY[0x1E695DF70]);
    self->_editHistory = editHistory;
  }

  v8[0] = originalTextRange;
  v8[1] = newTextRange;
  -[NSMutableArray addObject:](editHistory, "addObject:", [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:2]);
  objc_sync_exit(self);
}

- (unint64_t)baseWritingDirectionResolutionStrategy
{
  v2 = objc_opt_class();

  return [v2 defaultBaseWritingDirectionResolutionStrategy];
}

@end