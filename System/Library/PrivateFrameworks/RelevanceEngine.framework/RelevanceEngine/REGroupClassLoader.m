@interface REGroupClassLoader
- (BOOL)isEqual:(id)a3;
- (REGroupClassLoader)initWithLoaders:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)_enumerateBundleConfigurations:(id)a3;
- (void)_enumerateClassesWithBlock:(id)a3;
- (void)enumerateObjectsWithBlock:(id)a3;
@end

@implementation REGroupClassLoader

- (REGroupClassLoader)initWithLoaders:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = REGroupClassLoader;
  v5 = [(REClassLoader *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    loaders = v5->_loaders;
    v5->_loaders = v6;
  }

  return v5;
}

- (void)_enumerateClassesWithBlock:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_loaders;
  v6 = [(NSOrderedSet *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v11 + 1) + 8 * v9++) enumerateClassesWithBlock:{v4, v11}];
      }

      while (v7 != v9);
      v7 = [(NSOrderedSet *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_enumerateBundleConfigurations:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_loaders;
  v6 = [(NSOrderedSet *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v11 + 1) + 8 * v9++) enumerateBundleConfigurations:{v4, v11}];
      }

      while (v7 != v9);
      v7 = [(NSOrderedSet *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)enumerateObjectsWithBlock:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_loaders;
  v6 = [(NSOrderedSet *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v11 + 1) + 8 * v9++) enumerateObjectsWithBlock:{v4, v11}];
      }

      while (v7 != v9);
      v7 = [(NSOrderedSet *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSOrderedSet *)self->_loaders copyWithZone:a3];
  v7 = v5[5];
  v5[5] = v6;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      loaders = self->_loaders;
      v6 = v4->_loaders;
      v7 = loaders;
      v8 = v7;
      if (v7 == v6)
      {
        v9 = 1;
      }

      else
      {
        v9 = [(NSOrderedSet *)v7 isEqual:v6];
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

@end