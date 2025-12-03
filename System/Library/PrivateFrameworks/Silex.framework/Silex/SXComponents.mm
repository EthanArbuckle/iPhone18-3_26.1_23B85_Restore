@interface SXComponents
- (BOOL)isEqual:(id)equal;
- (NSArray)allComponents;
- (SXComponents)initWithArray:(id)array;
- (id)componentsForContainerComponentWithPath:(id)path;
- (id)copyWithZone:(_NSZone *)zone;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (void)_removeComponent:(id)component;
- (void)addComponent:(id)component;
- (void)addComponentsFromArray:(id)array;
- (void)enumerateComponentsWithBlock:(id)block;
- (void)insertComponent:(id)component afterComponent:(id)afterComponent;
- (void)insertComponent:(id)component atIndex:(unint64_t)index;
- (void)removeAllComponents;
- (void)removeComponentAtIndex:(unint64_t)index;
- (void)removeComponentWithIdentifier:(id)identifier;
- (void)replaceComponent:(id)component withComponent:(id)withComponent;
- (void)replaceComponentAtIndex:(unint64_t)index withComponent:(id)component;
- (void)setComponents:(id)components;
@end

@implementation SXComponents

- (SXComponents)initWithArray:(id)array
{
  arrayCopy = array;
  v13.receiver = self;
  v13.super_class = SXComponents;
  v5 = [(SXComponents *)&v13 init];
  if (v5)
  {
    array = [MEMORY[0x1E695DF70] array];
    components = v5->_components;
    v5->_components = array;

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    componentsByIdentifier = v5->_componentsByIdentifier;
    v5->_componentsByIdentifier = dictionary;

    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    childComponentsByParentIdentifier = v5->_childComponentsByParentIdentifier;
    v5->_childComponentsByParentIdentifier = dictionary2;

    [(SXComponents *)v5 addComponentsFromArray:arrayCopy];
  }

  return v5;
}

- (NSArray)allComponents
{
  v2 = [(NSMutableArray *)self->_components copy];

  return v2;
}

- (void)enumerateComponentsWithBlock:(id)block
{
  v18 = *MEMORY[0x1E69E9840];
  blockCopy = block;
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
        if (blockCopy[2](blockCopy, self, v10))
        {
          identifier = [v10 identifier];
          v12 = [(SXComponents *)self componentsForContainerComponentWithIdentifier:identifier];

          [v12 enumerateComponentsWithBlock:blockCopy];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }
}

- (id)componentsForContainerComponentWithPath:(id)path
{
  selfCopy = self;
  objectEnumerator = [path objectEnumerator];
  nextObject = [objectEnumerator nextObject];
  if (nextObject)
  {
    v7 = nextObject;
    do
    {
      v8 = [(SXComponents *)selfCopy componentsForContainerComponentWithIdentifier:v7];

      nextObject2 = [objectEnumerator nextObject];

      v7 = nextObject2;
      selfCopy = v8;
    }

    while (nextObject2);
  }

  else
  {
    v8 = selfCopy;
  }

  return v8;
}

- (void)addComponentsFromArray:(id)array
{
  v14 = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [arrayCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(arrayCopy);
        }

        [(SXComponents *)self addComponent:*(*(&v9 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [arrayCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)addComponent:(id)component
{
  componentCopy = component;
  if (componentCopy)
  {
    componentsByIdentifier = self->_componentsByIdentifier;
    v8 = componentCopy;
    identifier = [componentCopy identifier];
    v7 = [(NSMutableDictionary *)componentsByIdentifier objectForKey:identifier];

    if (v7)
    {
      [(SXComponents *)self replaceComponent:v7 withComponent:v8];
    }

    else
    {
      [(SXComponents *)self insertComponent:v8 atIndex:[(SXComponents *)self count]];
    }

    componentCopy = v8;
  }
}

- (void)insertComponent:(id)component atIndex:(unint64_t)index
{
  isKindOfClass = component;
  v7 = isKindOfClass;
  if (isKindOfClass)
  {
    v17 = isKindOfClass;
    isKindOfClass = [(SXComponents *)self count];
    v7 = v17;
    if (isKindOfClass >= index)
    {
      componentsByIdentifier = self->_componentsByIdentifier;
      identifier = [v17 identifier];
      [(NSMutableDictionary *)componentsByIdentifier setObject:v17 forKey:identifier];

      [(NSMutableArray *)self->_components insertObject:v17 atIndex:index];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v7 = v17;
      if (isKindOfClass)
      {
        v10 = v17;
        v11 = objc_alloc(objc_opt_class());
        components = [v10 components];
        nSArray = [components NSArray];
        v14 = [v11 initWithArray:nSArray];

        childComponentsByParentIdentifier = self->_childComponentsByParentIdentifier;
        identifier2 = [v10 identifier];

        [(NSMutableDictionary *)childComponentsByParentIdentifier setObject:v14 forKey:identifier2];
        v7 = v17;
      }
    }
  }

  MEMORY[0x1EEE66BB8](isKindOfClass, v7);
}

- (void)insertComponent:(id)component afterComponent:(id)afterComponent
{
  componentCopy = component;
  v6 = [(SXComponents *)self indexOfComponent:afterComponent];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [(SXComponents *)self addComponent:componentCopy];
  }

  else
  {
    [(SXComponents *)self insertComponent:componentCopy atIndex:v6 + 1];
  }
}

- (void)replaceComponentAtIndex:(unint64_t)index withComponent:(id)component
{
  componentCopy = component;
  [(SXComponents *)self removeComponentAtIndex:index];
  [(SXComponents *)self insertComponent:componentCopy atIndex:index];
}

- (void)replaceComponent:(id)component withComponent:(id)withComponent
{
  withComponentCopy = withComponent;
  [(SXComponents *)self replaceComponentAtIndex:[(SXComponents *)self indexOfComponent:component] withComponent:withComponentCopy];
}

- (void)setComponents:(id)components
{
  componentsCopy = components;
  [(SXComponents *)self removeAllComponents];
  [(SXComponents *)self addComponentsFromArray:componentsCopy];
}

- (void)removeComponentAtIndex:(unint64_t)index
{
  if ([(SXComponents *)self count]> index)
  {
    v5 = [(NSMutableArray *)self->_components objectAtIndex:index];
    [(SXComponents *)self _removeComponent:v5];
  }
}

- (void)removeComponentWithIdentifier:(id)identifier
{
  if (identifier)
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

- (void)_removeComponent:(id)component
{
  if (component)
  {
    components = self->_components;
    componentCopy = component;
    [(NSMutableArray *)components removeObject:componentCopy];
    componentsByIdentifier = self->_componentsByIdentifier;
    identifier = [componentCopy identifier];
    [(NSMutableDictionary *)componentsByIdentifier removeObjectForKey:identifier];

    childComponentsByParentIdentifier = self->_childComponentsByParentIdentifier;
    identifier2 = [componentCopy identifier];

    [(NSMutableDictionary *)childComponentsByParentIdentifier removeObjectForKey:identifier2];
  }
}

- (id)copyWithZone:(_NSZone *)zone
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

- (id)mutableCopyWithZone:(_NSZone *)zone
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [(NSMutableArray *)self->_components isEqualToArray:equalCopy->_components]&& [(NSMutableDictionary *)self->_componentsByIdentifier isEqualToDictionary:equalCopy->_componentsByIdentifier])
    {
      v5 = [(NSMutableDictionary *)self->_childComponentsByParentIdentifier isEqualToDictionary:equalCopy->_childComponentsByParentIdentifier];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

@end