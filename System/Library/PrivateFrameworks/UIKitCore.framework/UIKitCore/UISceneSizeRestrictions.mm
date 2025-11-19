@interface UISceneSizeRestrictions
+ (id)_sizeRestrictionsForWindowScene:(uint64_t)a1;
+ (void)_registerImplClass:(Class)a3;
- (CGSize)maximumSize;
- (CGSize)minimumSize;
- (id)_implOfClass:(Class)a3;
- (id)_initWithImplementation:(id)a3;
- (id)_initWithScene:(id)a3;
@end

@implementation UISceneSizeRestrictions

+ (id)_sizeRestrictionsForWindowScene:(uint64_t)a1
{
  v2 = a2;
  objc_opt_self();
  v3 = v2;
  v4 = __UISceneSizeRestrictionsImplClasses;
  if (!__UISceneSizeRestrictionsImplClasses)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    if (dyld_program_sdk_at_least())
    {
      [v5 addObject:objc_opt_class()];
    }

    v6 = [v5 copy];
    v7 = __UISceneSizeRestrictionsImplClasses;
    __UISceneSizeRestrictionsImplClasses = v6;

    v4 = __UISceneSizeRestrictionsImplClasses;
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = ___UISceneSizeRestrictionsGetImplClass_block_invoke;
  v16[3] = &unk_1E711E070;
  v17 = v3;
  v8 = v3;
  v9 = v4;
  v10 = [v9 bs_firstObjectPassingTest:v16];

  v11 = v10;
  if (v10 && ([v10 implementationForScene:v8], (v12 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v13 = v12;
    v14 = [[UISceneSizeRestrictions alloc] _initWithImplementation:v12];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)_initWithImplementation:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = UISceneSizeRestrictions;
  v6 = [(UISceneSizeRestrictions *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_activeImpl, a3);
  }

  return v7;
}

- (id)_initWithScene:(id)a3
{
  v4 = objc_alloc_init(_UISceneSizeRestrictionsInertImpl);
  v5 = [(UISceneSizeRestrictions *)self _initWithImplementation:v4];

  return v5;
}

- (CGSize)minimumSize
{
  [(_UISceneSizeRestrictionsImpl *)self->_activeImpl minimumSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)maximumSize
{
  [(_UISceneSizeRestrictionsImpl *)self->_activeImpl maximumSize];
  result.height = v3;
  result.width = v2;
  return result;
}

+ (void)_registerImplClass:(Class)a3
{
  if (objc_opt_respondsToSelector() & 1) != 0 || (objc_opt_respondsToSelector())
  {
    v4 = __UISceneSizeRestrictionsImplClasses;
    if (!__UISceneSizeRestrictionsImplClasses)
    {
      v5 = objc_alloc_init(MEMORY[0x1E695DFA0]);
      if (dyld_program_sdk_at_least())
      {
        [v5 addObject:objc_opt_class()];
      }

      v6 = [v5 copy];
      v7 = __UISceneSizeRestrictionsImplClasses;
      __UISceneSizeRestrictionsImplClasses = v6;

      v4 = __UISceneSizeRestrictionsImplClasses;
    }

    v10 = [v4 mutableCopy];
    [v10 insertObject:a3 atIndex:0];
    v8 = [v10 copy];
    v9 = __UISceneSizeRestrictionsImplClasses;
    __UISceneSizeRestrictionsImplClasses = v8;
  }

  else
  {
    _os_crash();
    __break(1u);
  }
}

- (id)_implOfClass:(Class)a3
{
  if (objc_opt_isKindOfClass())
  {
    v4 = self->_activeImpl;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end