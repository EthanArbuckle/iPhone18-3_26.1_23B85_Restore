@interface _UIBarItemAppearance
+ (id)_appearanceForClass:(Class)class withContainerList:(id)list;
+ (id)_rootAppearancesNode;
- (void)_handleGetterInvocation:(id)invocation;
- (void)_handleSetterInvocation:(id)invocation;
- (void)dealloc;
@end

@implementation _UIBarItemAppearance

+ (id)_rootAppearancesNode
{
  result = _rootAppearancesNode_appearances;
  if (!_rootAppearancesNode_appearances)
  {
    result = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:0 valueOptions:0 capacity:0];
    _rootAppearancesNode_appearances = result;
  }

  return result;
}

+ (id)_appearanceForClass:(Class)class withContainerList:(id)list
{
  v19 = *MEMORY[0x1E69E9840];
  v17.receiver = self;
  v17.super_class = &OBJC_METACLASS____UIBarItemAppearance;
  v6 = objc_msgSendSuper2(&v17, sel__appearanceForClass_withContainerList_);
  if (!v6[5])
  {
    _appearanceBlindViewClasses = [(objc_class *)class _appearanceBlindViewClasses];
    v6[5] = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(_appearanceBlindViewClasses, "count")}];
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v8 = [_appearanceBlindViewClasses countByEnumeratingWithState:&v13 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v14;
      do
      {
        v11 = 0;
        do
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(_appearanceBlindViewClasses);
          }

          [v6[5] addObject:{+[_UIAppearance _appearanceWithClassInfo:containerList:](_UIAppearance, "_appearanceWithClassInfo:containerList:", +[_UIAppearanceCustomizableClassInfo _customizableClassInfoForViewClass:withGuideClass:](_UIAppearanceCustomizableClassInfo, "_customizableClassInfoForViewClass:withGuideClass:", *(*(&v13 + 1) + 8 * v11++), class), list)}];
        }

        while (v9 != v11);
        v9 = [_appearanceBlindViewClasses countByEnumeratingWithState:&v13 objects:v18 count:16];
      }

      while (v9);
    }
  }

  return v6;
}

- (void)_handleSetterInvocation:(id)invocation
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  blindViewAppearances = self->_blindViewAppearances;
  v5 = [(NSArray *)blindViewAppearances countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(blindViewAppearances);
        }

        [*(*(&v9 + 1) + 8 * i) _handleSetterInvocation:invocation];
      }

      v6 = [(NSArray *)blindViewAppearances countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)_handleGetterInvocation:(id)invocation
{
  lastObject = [(NSArray *)self->_blindViewAppearances lastObject];

  [lastObject _handleGetterInvocation:invocation];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _UIBarItemAppearance;
  [(_UIAppearance *)&v3 dealloc];
}

@end