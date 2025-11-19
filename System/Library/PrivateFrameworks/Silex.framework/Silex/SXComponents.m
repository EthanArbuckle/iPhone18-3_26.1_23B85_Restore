@interface SXComponents
- (BOOL)isEqual:(id)a3;
- (NSArray)allComponents;
- (SXComponents)initWithArray:(id)a3;
- (id)componentsForContainerComponentWithPath:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (void)_removeComponent:(id)a3;
- (void)addComponent:(id)a3;
- (void)addComponentsFromArray:(id)a3;
- (void)enumerateComponentsWithBlock:(id)a3;
- (void)insertComponent:(id)a3 afterComponent:(id)a4;
- (void)insertComponent:(id)a3 atIndex:(unint64_t)a4;
- (void)removeAllComponents;
- (void)removeComponentAtIndex:(unint64_t)a3;
- (void)removeComponentWithIdentifier:(id)a3;
- (void)replaceComponent:(id)a3 withComponent:(id)a4;
- (void)replaceComponentAtIndex:(unint64_t)a3 withComponent:(id)a4;
- (void)setComponents:(id)a3;
@end

@implementation SXComponents

- (SXComponents)initWithArray:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = SXComponents;
  v5 = [(SXComponents *)&v13 init];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    components = v5->_components;
    v5->_components = v6;

    v8 = [MEMORY[0x1E695DF90] dictionary];
    componentsByIdentifier = v5->_componentsByIdentifier;
    v5->_componentsByIdentifier = v8;

    v10 = [MEMORY[0x1E695DF90] dictionary];
    childComponentsByParentIdentifier = v5->_childComponentsByParentIdentifier;
    v5->_childComponentsByParentIdentifier = v10;

    [(SXComponents *)v5 addComponentsFromArray:v4];
  }

  return v5;
}

- (NSArray)allComponents
{
  v2 = [(NSMutableArray *)self->_components copy];

  return v2;
}

- (void)enumerateComponentsWithBlock:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(NSMutableArray *)self->_components copy];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if (v4[2](v4, self, v10))
        {
          v11 = [v10 identifier];
          v12 = [(SXComponents *)self componentsForContainerComponentWithIdentifier:v11];

          [v12 enumerateComponentsWithBlock:v4];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }
}

- (id)componentsForContainerComponentWithPath:(id)a3
{
  v4 = self;
  v5 = [a3 objectEnumerator];
  v6 = [v5 nextObject];
  if (v6)
  {
    v7 = v6;
    do
    {
      v8 = [(SXComponents *)v4 componentsForContainerComponentWithIdentifier:v7];

      v9 = [v5 nextObject];

      v7 = v9;
      v4 = v8;
    }

    while (v9);
  }

  else
  {
    v8 = v4;
  }

  return v8;
}

- (void)addComponentsFromArray:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(SXComponents *)self addComponent:*(*(&v9 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)addComponent:(id)a3
{
  v4 = a3;
  if (v4)
  {
    componentsByIdentifier = self->_componentsByIdentifier;
    v8 = v4;
    v6 = [v4 identifier];
    v7 = [(NSMutableDictionary *)componentsByIdentifier objectForKey:v6];

    if (v7)
    {
      [(SXComponents *)self replaceComponent:v7 withComponent:v8];
    }

    else
    {
      [(SXComponents *)self insertComponent:v8 atIndex:[(SXComponents *)self count]];
    }

    v4 = v8;
  }
}

- (void)insertComponent:(id)a3 atIndex:(unint64_t)a4
{
  isKindOfClass = a3;
  v7 = isKindOfClass;
  if (isKindOfClass)
  {
    v17 = isKindOfClass;
    isKindOfClass = [(SXComponents *)self count];
    v7 = v17;
    if (isKindOfClass >= a4)
    {
      componentsByIdentifier = self->_componentsByIdentifier;
      v9 = [v17 identifier];
      [(NSMutableDictionary *)componentsByIdentifier setObject:v17 forKey:v9];

      [(NSMutableArray *)self->_components insertObject:v17 atIndex:a4];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v7 = v17;
      if (isKindOfClass)
      {
        v10 = v17;
        v11 = objc_alloc(objc_opt_class());
        v12 = [v10 components];
        v13 = [v12 NSArray];
        v14 = [v11 initWithArray:v13];

        childComponentsByParentIdentifier = self->_childComponentsByParentIdentifier;
        v16 = [v10 identifier];

        [(NSMutableDictionary *)childComponentsByParentIdentifier setObject:v14 forKey:v16];
        v7 = v17;
      }
    }
  }

  MEMORY[0x1EEE66BB8](isKindOfClass, v7);
}

- (void)insertComponent:(id)a3 afterComponent:(id)a4
{
  v7 = a3;
  v6 = [(SXComponents *)self indexOfComponent:a4];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [(SXComponents *)self addComponent:v7];
  }

  else
  {
    [(SXComponents *)self insertComponent:v7 atIndex:v6 + 1];
  }
}

- (void)replaceComponentAtIndex:(unint64_t)a3 withComponent:(id)a4
{
  v6 = a4;
  [(SXComponents *)self removeComponentAtIndex:a3];
  [(SXComponents *)self insertComponent:v6 atIndex:a3];
}

- (void)replaceComponent:(id)a3 withComponent:(id)a4
{
  v6 = a4;
  [(SXComponents *)self replaceComponentAtIndex:[(SXComponents *)self indexOfComponent:a3] withComponent:v6];
}

- (void)setComponents:(id)a3
{
  v4 = a3;
  [(SXComponents *)self removeAllComponents];
  [(SXComponents *)self addComponentsFromArray:v4];
}

- (void)removeComponentAtIndex:(unint64_t)a3
{
  if ([(SXComponents *)self count]> a3)
  {
    v5 = [(NSMutableArray *)self->_components objectAtIndex:a3];
    [(SXComponents *)self _removeComponent:v5];
  }
}

- (void)removeComponentWithIdentifier:(id)a3
{
  if (a3)
  {
    v4 = [(NSMutableDictionary *)self->_componentsByIdentifier objectForKey:?];
    [(SXComponents *)self _removeComponent:v4];
  }
}

- (void)removeAllComponents
{
  [(NSMutableArray *)self->_components removeAllObjects];
  [(NSMutableDictionary *)self->_componentsByIdentifier removeAllObjects];
  childComponentsByParentIdentifier = self->_childComponentsByParentIdentifier;

  [(NSMutableDictionary *)childComponentsByParentIdentifier removeAllObjects];
}

- (void)_removeComponent:(id)a3
{
  if (a3)
  {
    components = self->_components;
    v5 = a3;
    [(NSMutableArray *)components removeObject:v5];
    componentsByIdentifier = self->_componentsByIdentifier;
    v7 = [v5 identifier];
    [(NSMutableDictionary *)componentsByIdentifier removeObjectForKey:v7];

    childComponentsByParentIdentifier = self->_childComponentsByParentIdentifier;
    v9 = [v5 identifier];

    [(NSMutableDictionary *)childComponentsByParentIdentifier removeObjectForKey:v9];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[SXComponents alloc] initWithArray:0];
  v5 = [(NSMutableArray *)self->_components mutableCopy];
  components = v4->_components;
  v4->_components = v5;

  v7 = [(NSMutableDictionary *)self->_componentsByIdentifier mutableCopy];
  componentsByIdentifier = v4->_componentsByIdentifier;
  v4->_componentsByIdentifier = v7;

  v9 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{-[NSMutableDictionary count](self->_childComponentsByParentIdentifier, "count")}];
  childComponentsByParentIdentifier = self->_childComponentsByParentIdentifier;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __29__SXComponents_copyWithZone___block_invoke;
  v15[3] = &unk_1E8500508;
  v11 = v9;
  v16 = v11;
  [(NSMutableDictionary *)childComponentsByParentIdentifier enumerateKeysAndObjectsUsingBlock:v15];
  v12 = v4->_childComponentsByParentIdentifier;
  v4->_childComponentsByParentIdentifier = v11;
  v13 = v11;

  return v4;
}

void __29__SXComponents_copyWithZone___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [a3 copy];
  [v4 setObject:v6 forKey:v5];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [(SXComponents *)[SXMutableComponents alloc] initWithArray:0];
  v5 = [(NSMutableArray *)self->_components mutableCopy];
  components = v4->super._components;
  v4->super._components = v5;

  v7 = [(NSMutableDictionary *)self->_componentsByIdentifier mutableCopy];
  componentsByIdentifier = v4->super._componentsByIdentifier;
  v4->super._componentsByIdentifier = v7;

  v9 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{-[NSMutableDictionary count](self->_childComponentsByParentIdentifier, "count")}];
  childComponentsByParentIdentifier = self->_childComponentsByParentIdentifier;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __36__SXComponents_mutableCopyWithZone___block_invoke;
  v15[3] = &unk_1E8500508;
  v11 = v9;
  v16 = v11;
  [(NSMutableDictionary *)childComponentsByParentIdentifier enumerateKeysAndObjectsUsingBlock:v15];
  v12 = v4->super._childComponentsByParentIdentifier;
  v4->super._childComponentsByParentIdentifier = v11;
  v13 = v11;

  return v4;
}

void __36__SXComponents_mutableCopyWithZone___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [a3 mutableCopy];
  [v4 setObject:v6 forKey:v5];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [(NSMutableArray *)self->_components isEqualToArray:v4->_components]&& [(NSMutableDictionary *)self->_componentsByIdentifier isEqualToDictionary:v4->_componentsByIdentifier])
    {
      v5 = [(NSMutableDictionary *)self->_childComponentsByParentIdentifier isEqualToDictionary:v4->_childComponentsByParentIdentifier];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

@end