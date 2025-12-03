@interface UIKeyboardSliceStore
+ (id)sharedStore;
+ (id)sliceSetForID:(id)d;
+ (void)archiveSet:(id)set;
- (UIKeyboardSliceStore)init;
- (void)addSet:(id)set;
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

- (void)addSet:(id)set
{
  store = self->_store;
  setCopy = set;
  sliceSetID = [setCopy sliceSetID];
  [(NSMutableDictionary *)store setValue:setCopy forKey:sliceSetID];
}

+ (id)sliceSetForID:(id)d
{
  dCopy = d;
  sharedStore = [self sharedStore];
  v6 = [sharedStore sliceSetForID:dCopy];

  return v6;
}

+ (void)archiveSet:(id)set
{
  setCopy = set;
  sharedStore = [self sharedStore];
  [sharedStore addSet:setCopy];
}

@end