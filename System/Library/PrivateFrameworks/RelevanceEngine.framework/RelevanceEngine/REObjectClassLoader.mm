@interface REObjectClassLoader
- (BOOL)isEqual:(id)equal;
- (REObjectClassLoader)initWithObjects:(id)objects configuration:(id)configuration;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_enumerateClassesWithBlock:(id)block;
- (void)enumerateObjectsWithBlock:(id)block;
@end

@implementation REObjectClassLoader

- (REObjectClassLoader)initWithObjects:(id)objects configuration:(id)configuration
{
  objectsCopy = objects;
  v11.receiver = self;
  v11.super_class = REObjectClassLoader;
  v8 = [(REClassLoader *)&v11 initWithConfiguration:configuration];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_objects, objects);
  }

  return v9;
}

- (void)_enumerateClassesWithBlock:(id)block
{
  blockCopy = block;
  v5 = blockCopy;
  if (blockCopy)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __50__REObjectClassLoader__enumerateClassesWithBlock___block_invoke;
    v6[3] = &unk_2785FA950;
    v7 = blockCopy;
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

- (void)enumerateObjectsWithBlock:(id)block
{
  v18 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  if (blockCopy)
  {
    configuration = [(REClassLoader *)self configuration];
    [configuration desiredClassForLoader];

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
            blockCopy[2](blockCopy, v11);
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  objects = self->_objects;
  configuration = [(REClassLoader *)self configuration];
  v7 = [v4 initWithObjects:objects configuration:configuration];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objects = self->_objects;
      v6 = equalCopy->_objects;
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