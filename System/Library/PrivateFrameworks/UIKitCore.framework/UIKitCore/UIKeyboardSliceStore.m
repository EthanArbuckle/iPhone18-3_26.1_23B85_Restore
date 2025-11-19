@interface UIKeyboardSliceStore
+ (id)sharedStore;
+ (id)sliceSetForID:(id)a3;
+ (void)archiveSet:(id)a3;
- (UIKeyboardSliceStore)init;
- (void)addSet:(id)a3;
@end

@implementation UIKeyboardSliceStore

- (UIKeyboardSliceStore)init
{
  v6.receiver = self;
  v6.super_class = UIKeyboardSliceStore;
  v2 = [(UIKeyboardSliceStore *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:0];
    store = v2->_store;
    v2->_store = v3;
  }

  return v2;
}

+ (id)sharedStore
{
  if (qword_1ED49F6B8 != -1)
  {
    dispatch_once(&qword_1ED49F6B8, &__block_literal_global_420);
  }

  v3 = _MergedGlobals_1213;

  return v3;
}

void __35__UIKeyboardSliceStore_sharedStore__block_invoke()
{
  v0 = objc_alloc_init(UIKeyboardSliceStore);
  v1 = _MergedGlobals_1213;
  _MergedGlobals_1213 = v0;
}

- (void)addSet:(id)a3
{
  store = self->_store;
  v4 = a3;
  v5 = [v4 sliceSetID];
  [(NSMutableDictionary *)store setValue:v4 forKey:v5];
}

+ (id)sliceSetForID:(id)a3
{
  v4 = a3;
  v5 = [a1 sharedStore];
  v6 = [v5 sliceSetForID:v4];

  return v6;
}

+ (void)archiveSet:(id)a3
{
  v4 = a3;
  v5 = [a1 sharedStore];
  [v5 addSet:v4];
}

@end