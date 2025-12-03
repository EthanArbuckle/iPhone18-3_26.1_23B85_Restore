@interface _UIVisualStyleRegistry
+ (_UIVisualStyleRegistry)defaultRegistry;
+ (id)registryForIdiom:(int64_t)idiom;
+ (id)registryForTraitEnvironment:(id)environment;
- (Class)visualStyleClassForStylableClass:(Class)class;
- (Class)visualStyleClassForView:(id)view;
- (_UIVisualStyleRegistry)init;
- (void)registerVisualStyleClass:(Class)class forStylableClass:(Class)stylableClass;
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

+ (id)registryForIdiom:(int64_t)idiom
{
  v4 = __idiomToRegistry;
  if (!__idiomToRegistry)
  {
    v5 = objc_opt_new();
    v6 = __idiomToRegistry;
    __idiomToRegistry = v5;

    v4 = __idiomToRegistry;
  }

  v7 = [MEMORY[0x1E696AD98] numberWithInteger:idiom];
  v8 = [v4 objectForKeyedSubscript:v7];

  if (!v8)
  {
    v8 = objc_opt_new();
    v9 = __idiomToRegistry;
    v10 = [MEMORY[0x1E696AD98] numberWithInteger:idiom];
    [v9 setObject:v8 forKeyedSubscript:v10];
  }

  return v8;
}

+ (id)registryForTraitEnvironment:(id)environment
{
  traitCollection = [environment traitCollection];
  v5 = [self registryForIdiom:{objc_msgSend(traitCollection, "userInterfaceIdiom")}];

  return v5;
}

- (Class)visualStyleClassForView:(id)view
{
  v4 = objc_opt_class();

  return [(_UIVisualStyleRegistry *)self visualStyleClassForStylableClass:v4];
}

- (Class)visualStyleClassForStylableClass:(Class)class
{
  v25 = *MEMORY[0x1E69E9840];
  if (!class)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIVisualStyleRegistry.m" lineNumber:95 description:{@"Invalid parameter not satisfying: %@", @"stylableClass != Nil"}];
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    v22 = NSStringFromClass(class);
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"_UIVisualStyleRegistry.m" lineNumber:96 description:{@"Cannot determine visual style class for class %@, since class does not conform to _UIVisualStyleStylable.", v22}];
  }

  visualStyleRegistryIdentity = [(objc_class *)class visualStyleRegistryIdentity];
  v7 = [(NSMutableDictionary *)self->__classToVisualStyleClass objectForKeyedSubscript:visualStyleRegistryIdentity];
  allKeys = [(NSMutableDictionary *)self->__classToVisualStyleClass allKeys];
  v9 = [allKeys count];

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

  defaultRegistry = [objc_opt_class() defaultRegistry];

  if (defaultRegistry != self)
  {
    v14 = +[_UIVisualStyleRegistry defaultRegistry];
    v15 = [v14 visualStyleClassForStylableClass:class];

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
    v18 = NSStringFromClass(class);
    *buf = 138412290;
    v24 = v18;
    _os_log_impl(&dword_188A29000, v17, OS_LOG_TYPE_DEFAULT, "Note: no default visual style class registered as fallback for stylable class %@", buf, 0xCu);
  }

  v12 = 0;
LABEL_17:

  return v12;
}

- (void)registerVisualStyleClass:(Class)class forStylableClass:(Class)stylableClass
{
  if (class && (objc_opt_respondsToSelector() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v9 = NSStringFromClass(stylableClass);
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIVisualStyleRegistry.m" lineNumber:126 description:{@"Cannot determine visual style class for class %@, since class does not conform to _UIVisualStyleStylable.", v9}];
  }

  visualStyleRegistryIdentity = [(objc_class *)stylableClass visualStyleRegistryIdentity];
  [(NSMutableDictionary *)self->__classToVisualStyleClass setObject:class forKeyedSubscript:visualStyleRegistryIdentity];
}

@end