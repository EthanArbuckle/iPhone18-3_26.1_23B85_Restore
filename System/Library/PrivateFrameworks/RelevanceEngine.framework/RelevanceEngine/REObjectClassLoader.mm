@interface REObjectClassLoader
- (BOOL)isEqual:(id)a3;
- (REObjectClassLoader)initWithObjects:(id)a3 configuration:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)_enumerateClassesWithBlock:(id)a3;
- (void)enumerateObjectsWithBlock:(id)a3;
@end

@implementation REObjectClassLoader

- (REObjectClassLoader)initWithObjects:(id)a3 configuration:(id)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = REObjectClassLoader;
  v8 = [(REClassLoader *)&v11 initWithConfiguration:a4];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_objects, a3);
  }

  return v9;
}

- (void)_enumerateClassesWithBlock:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __50__REObjectClassLoader__enumerateClassesWithBlock___block_invoke;
    v6[3] = &unk_2785FA950;
    v7 = v4;
    [(REObjectClassLoader *)self enumerateObjectsWithBlock:v6];
  }
}

uint64_t __50__REObjectClassLoader__enumerateClassesWithBlock___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_opt_class();
  v3 = *(v1 + 16);

  return v3(v1, v2);
}

- (void)enumerateObjectsWithBlock:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = [(REClassLoader *)self configuration];
    [v5 desiredClassForLoader];

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = self->_objects;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
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

          v11 = *(*(&v13 + 1) + 8 * v10);
          if (objc_opt_isKindOfClass())
          {
            v4[2](v4, v11);
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  objects = self->_objects;
  v6 = [(REClassLoader *)self configuration];
  v7 = [v4 initWithObjects:objects configuration:v6];

  return v7;
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
      objects = self->_objects;
      v6 = v4->_objects;
      v7 = objects;
      v8 = v7;
      if (v7 == v6)
      {
        v9 = 1;
      }

      else
      {
        v9 = [(NSArray *)v7 isEqual:v6];
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