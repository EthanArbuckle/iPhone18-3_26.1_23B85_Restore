@interface REBlockClassLoader
- (BOOL)isEqual:(id)equal;
- (REBlockClassLoader)initWithBlock:(id)block configuration:(id)configuration;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_enumerateBundleConfigurations:(id)configurations;
- (void)_enumerateClassesWithBlock:(id)block;
@end

@implementation REBlockClassLoader

- (REBlockClassLoader)initWithBlock:(id)block configuration:(id)configuration
{
  blockCopy = block;
  v11.receiver = self;
  v11.super_class = REBlockClassLoader;
  v7 = [(REClassLoader *)&v11 initWithConfiguration:configuration];
  if (v7)
  {
    v8 = MEMORY[0x22AABC5E0](blockCopy);
    block = v7->_block;
    v7->_block = v8;
  }

  return v7;
}

- (void)_enumerateClassesWithBlock:(id)block
{
  v22 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  if (self->_block)
  {
    configuration = [(REClassLoader *)self configuration];
    desiredClassForLoader = [configuration desiredClassForLoader];

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = (*(self->_block + 2))();
    v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v18;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v17 + 1) + 8 * i);
          if ([v12 isSubclassOfClass:desiredClassForLoader])
          {
            blockCopy[2](blockCopy, v12);
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v9);
    }

    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __49__REBlockClassLoader__enumerateClassesWithBlock___block_invoke;
    v14[3] = &unk_2785FA8D8;
    v14[4] = self;
    v16 = desiredClassForLoader;
    v15 = blockCopy;
    [(REBlockClassLoader *)self _enumerateBundleConfigurations:v14];
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __49__REBlockClassLoader__enumerateClassesWithBlock___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  v5 = [v3 configuration];
  v6 = [v5 desiredClassFromBundle:v4 forKey:0];

  if (v6 && [v6 isSubclassOfClass:a1[6]])
  {
    v7 = *(a1[5] + 16);

    v7();
  }
}

- (void)_enumerateBundleConfigurations:(id)configurations
{
  v18 = *MEMORY[0x277D85DE8];
  configurationsCopy = configurations;
  block = self->_block;
  if (block)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = block[2](block);
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        v10 = 0;
        do
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          if ([*(*(&v13 + 1) + 8 * v10) isSubclassOfClass:objc_opt_class()])
          {
            v11 = objc_opt_new();
            configurationsCopy[2](configurationsCopy, v11);
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  block = self->_block;
  configuration = [(REClassLoader *)self configuration];
  v7 = [v4 initWithBlock:block configuration:configuration];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v6 = MEMORY[0x22AABC5E0](self->_block);
      v7 = MEMORY[0x22AABC5E0](v5->_block);
      if (v6 == v7)
      {
        v8 = 1;
      }

      else
      {
        v8 = [v6 isEqual:v7];
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

@end