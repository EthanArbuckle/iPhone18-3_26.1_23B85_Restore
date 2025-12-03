@interface NSNotificationCenter
+ (id)uikitInternalCenter;
- (void)_uiRemoveObserver:(void *)observer names:;
@end

@implementation NSNotificationCenter

+ (id)uikitInternalCenter
{
  objc_opt_self();
  if (qword_1ED49FFE0 != -1)
  {
    dispatch_once(&qword_1ED49FFE0, &__block_literal_global_485);
  }

  v0 = _MergedGlobals_1252;

  return v0;
}

void __59__NSNotificationCenter_UIKitAdditions__uikitInternalCenter__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AD88]);
  v1 = _MergedGlobals_1252;
  _MergedGlobals_1252 = v0;
}

void __51__NSNotificationCenter_UIKitAdditions__uikitCenter__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AD88]);
  v1 = qword_1ED49FFE8;
  qword_1ED49FFE8 = v0;
}

- (void)_uiRemoveObserver:(void *)observer names:
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  observerCopy = observer;
  v7 = observerCopy;
  if (self)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v8 = [observerCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v13;
      do
      {
        v11 = 0;
        do
        {
          if (*v13 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [self removeObserver:v5 name:*(*(&v12 + 1) + 8 * v11++) object:0];
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v9);
    }
  }
}

@end