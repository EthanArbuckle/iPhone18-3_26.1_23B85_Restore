@interface _UIVisualStyleRegistry
+ (_UIVisualStyleRegistry)defaultRegistry;
+ (id)registryForIdiom:(int64_t)a3;
+ (id)registryForTraitEnvironment:(id)a3;
- (Class)visualStyleClassForStylableClass:(Class)a3;
- (Class)visualStyleClassForView:(id)a3;
- (_UIVisualStyleRegistry)init;
- (void)registerVisualStyleClass:(Class)a3 forStylableClass:(Class)a4;
@end

@implementation _UIVisualStyleRegistry

- (_UIVisualStyleRegistry)init
{
  v6.receiver = self;
  v6.super_class = _UIVisualStyleRegistry;
  v2 = [(_UIVisualStyleRegistry *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    classToVisualStyleClass = v2->__classToVisualStyleClass;
    v2->__classToVisualStyleClass = v3;
  }

  return v2;
}

+ (_UIVisualStyleRegistry)defaultRegistry
{
  v2 = __defaultVisualStyleRegistry;
  if (!__defaultVisualStyleRegistry)
  {
    v3 = objc_opt_new();
    v4 = __defaultVisualStyleRegistry;
    __defaultVisualStyleRegistry = v3;

    v2 = __defaultVisualStyleRegistry;
  }

  return v2;
}

+ (id)registryForIdiom:(int64_t)a3
{
  v4 = __idiomToRegistry;
  if (!__idiomToRegistry)
  {
    v5 = objc_opt_new();
    v6 = __idiomToRegistry;
    __idiomToRegistry = v5;

    v4 = __idiomToRegistry;
  }

  v7 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v8 = [v4 objectForKeyedSubscript:v7];

  if (!v8)
  {
    v8 = objc_opt_new();
    v9 = __idiomToRegistry;
    v10 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    [v9 setObject:v8 forKeyedSubscript:v10];
  }

  return v8;
}

+ (id)registryForTraitEnvironment:(id)a3
{
  v4 = [a3 traitCollection];
  v5 = [a1 registryForIdiom:{objc_msgSend(v4, "userInterfaceIdiom")}];

  return v5;
}

- (Class)visualStyleClassForView:(id)a3
{
  v4 = objc_opt_class();

  return [(_UIVisualStyleRegistry *)self visualStyleClassForStylableClass:v4];
}

- (Class)visualStyleClassForStylableClass:(Class)a3
{
  v25 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"_UIVisualStyleRegistry.m" lineNumber:95 description:{@"Invalid parameter not satisfying: %@", @"stylableClass != Nil"}];
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    v22 = NSStringFromClass(a3);
    [v21 handleFailureInMethod:a2 object:self file:@"_UIVisualStyleRegistry.m" lineNumber:96 description:{@"Cannot determine visual style class for class %@, since class does not conform to _UIVisualStyleStylable.", v22}];
  }

  v6 = [(objc_class *)a3 visualStyleRegistryIdentity];
  v7 = [(NSMutableDictionary *)self->__classToVisualStyleClass objectForKeyedSubscript:v6];
  v8 = [(NSMutableDictionary *)self->__classToVisualStyleClass allKeys];
  v9 = [v8 count];

  if (!v9)
  {
    v10 = *(__UILogGetCategoryCachedImpl("_UIVisualStyleRegistry", &_MergedGlobals_1323) + 8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_DEFAULT, "Warning: no visual style classes have been registered at all.", buf, 2u);
    }
  }

  if (v7)
  {
    v11 = v7;
LABEL_10:
    v12 = v11;
    goto LABEL_17;
  }

  v13 = [objc_opt_class() defaultRegistry];

  if (v13 != self)
  {
    v14 = +[_UIVisualStyleRegistry defaultRegistry];
    v15 = [v14 visualStyleClassForStylableClass:a3];

    if (v15)
    {
      v11 = v15;
      goto LABEL_10;
    }
  }

  v16 = *(__UILogGetCategoryCachedImpl("_UIVisualStyleRegistry", &qword_1ED4A2258) + 8);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = v16;
    v18 = NSStringFromClass(a3);
    *buf = 138412290;
    v24 = v18;
    _os_log_impl(&dword_188A29000, v17, OS_LOG_TYPE_DEFAULT, "Note: no default visual style class registered as fallback for stylable class %@", buf, 0xCu);
  }

  v12 = 0;
LABEL_17:

  return v12;
}

- (void)registerVisualStyleClass:(Class)a3 forStylableClass:(Class)a4
{
  if (a3 && (objc_opt_respondsToSelector() & 1) == 0)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    v9 = NSStringFromClass(a4);
    [v8 handleFailureInMethod:a2 object:self file:@"_UIVisualStyleRegistry.m" lineNumber:126 description:{@"Cannot determine visual style class for class %@, since class does not conform to _UIVisualStyleStylable.", v9}];
  }

  v10 = [(objc_class *)a4 visualStyleRegistryIdentity];
  [(NSMutableDictionary *)self->__classToVisualStyleClass setObject:a3 forKeyedSubscript:v10];
}

@end