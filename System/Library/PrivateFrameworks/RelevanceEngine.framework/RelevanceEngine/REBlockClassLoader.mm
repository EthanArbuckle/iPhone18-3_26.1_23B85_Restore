@interface REBlockClassLoader
- (BOOL)isEqual:(id)a3;
- (REBlockClassLoader)initWithBlock:(id)a3 configuration:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)_enumerateBundleConfigurations:(id)a3;
- (void)_enumerateClassesWithBlock:(id)a3;
@end

@implementation REBlockClassLoader

- (REBlockClassLoader)initWithBlock:(id)a3 configuration:(id)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = REBlockClassLoader;
  v7 = [(REClassLoader *)&v11 initWithConfiguration:a4];
  if (v7)
  {
    v8 = MEMORY[0x22AABC5E0](v6);
    block = v7->_block;
    v7->_block = v8;
  }

  return v7;
}

- (void)_enumerateClassesWithBlock:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_block)
  {
    v5 = [(REClassLoader *)self configuration];
    v6 = [v5 desiredClassForLoader];

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
          if ([v12 isSubclassOfClass:v6])
          {
            v4[2](v4, v12);
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
    v16 = v6;
    v15 = v4;
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

- (void)_enumerateBundleConfigurations:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
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
            v4[2](v4, v11);
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  block = self->_block;
  v6 = [(REClassLoader *)self configuration];
  v7 = [v4 initWithBlock:block configuration:v6];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
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