@interface RBMutableInheritanceCollection
+ (id)collectionWithInheritances:(id)a3;
- (id)_initWithCollection:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)addInheritance:(id)a3;
- (void)removeInheritance:(id)a3;
- (void)unionCollection:(id)a3;
@end

@implementation RBMutableInheritanceCollection

+ (id)collectionWithInheritances:(id)a3
{
  v4 = a3;
  v5 = [RBMutableInheritanceCollection alloc];
  v9.receiver = a1;
  v9.super_class = &OBJC_METACLASS___RBMutableInheritanceCollection;
  v6 = objc_msgSendSuper2(&v9, sel_collectionWithInheritances_, v4);

  v7 = [(RBMutableInheritanceCollection *)v5 _initWithCollection:v6];

  return v7;
}

- (id)_initWithCollection:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v30.receiver = self;
  v30.super_class = RBMutableInheritanceCollection;
  v5 = [(RBMutableInheritanceCollection *)&v30 init];
  if (v5)
  {
    v6 = v4[1];
    if ([v6 count])
    {
      v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
      inheritancesByEnvironment = v5->super._inheritancesByEnvironment;
      v5->super._inheritancesByEnvironment = v7;

      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __54__RBMutableInheritanceCollection__initWithCollection___block_invoke;
      v28[3] = &unk_279B33230;
      v29 = v5;
      [v6 enumerateKeysAndObjectsUsingBlock:v28];
    }

    v9 = v4[2];
    if ([v9 count])
    {
      v23 = v6;
      v10 = [v9 mutableCopy];
      inheritances = v5->super._inheritances;
      v5->super._inheritances = v10;

      v12 = objc_alloc_init(MEMORY[0x277CCA940]);
      countedNamespaces = v5->_countedNamespaces;
      v5->_countedNamespaces = v12;

      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v14 = v9;
      v15 = [v14 countByEnumeratingWithState:&v24 objects:v31 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v25;
        do
        {
          v18 = 0;
          do
          {
            if (*v25 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = v5->_countedNamespaces;
            v20 = [*(*(&v24 + 1) + 8 * v18) endowmentNamespace];
            [(NSCountedSet *)v19 addObject:v20];

            ++v18;
          }

          while (v16 != v18);
          v16 = [v14 countByEnumeratingWithState:&v24 objects:v31 count:16];
        }

        while (v16);
      }

      v6 = v23;
    }
  }

  v21 = *MEMORY[0x277D85DE8];
  return v5;
}

void __54__RBMutableInheritanceCollection__initWithCollection___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(*(a1 + 32) + 8);
  v5 = a2;
  v6 = [a3 mutableCopy];
  [v4 setObject:v6 forKey:v5];
}

- (void)addInheritance:(id)a3
{
  v5 = a3;
  v17 = v5;
  if (!v5)
  {
    [(RBMutableInheritanceCollection *)a2 addInheritance:?];
    v5 = 0;
  }

  if (!self->super._inheritances)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
    inheritances = self->super._inheritances;
    self->super._inheritances = v6;

    v5 = v17;
  }

  if (!self->_countedNamespaces)
  {
    v8 = objc_alloc_init(MEMORY[0x277CCA940]);
    countedNamespaces = self->_countedNamespaces;
    self->_countedNamespaces = v8;

    v5 = v17;
  }

  v10 = [v5 environment];
  if (v10)
  {
    inheritancesByEnvironment = self->super._inheritancesByEnvironment;
    if (!inheritancesByEnvironment)
    {
      v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v13 = self->super._inheritancesByEnvironment;
      self->super._inheritancesByEnvironment = v12;

      inheritancesByEnvironment = self->super._inheritancesByEnvironment;
    }

    v14 = [(NSDictionary *)inheritancesByEnvironment objectForKey:v10];
    if (!v14)
    {
      v14 = [MEMORY[0x277CBEB58] set];
      [(NSDictionary *)self->super._inheritancesByEnvironment setObject:v14 forKey:v10];
    }

    [v14 addObject:v17];
  }

  [(NSSet *)self->super._inheritances addObject:v17];
  v15 = self->_countedNamespaces;
  v16 = [v17 endowmentNamespace];
  [(NSCountedSet *)v15 addObject:v16];
}

- (void)removeInheritance:(id)a3
{
  v5 = a3;
  v12 = v5;
  if (!v5)
  {
    [(RBMutableInheritanceCollection *)a2 removeInheritance:?];
    v5 = 0;
  }

  v6 = [v5 environment];
  if (v6)
  {
    v7 = [(NSDictionary *)self->super._inheritancesByEnvironment objectForKey:v6];
    [v7 removeObject:v12];
    if (![v7 count])
    {
      [(NSDictionary *)self->super._inheritancesByEnvironment removeObjectForKey:v6];
    }
  }

  [(NSSet *)self->super._inheritances removeObject:v12];
  countedNamespaces = self->_countedNamespaces;
  v9 = [v12 endowmentNamespace];
  [(NSCountedSet *)countedNamespaces removeObject:v9];

  if (![(NSSet *)self->super._inheritances count])
  {
    inheritances = self->super._inheritances;
    self->super._inheritances = 0;
  }

  if (![(NSCountedSet *)self->_countedNamespaces count])
  {
    v11 = self->_countedNamespaces;
    self->_countedNamespaces = 0;
  }
}

- (void)unionCollection:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(RBMutableInheritanceCollection *)self addInheritance:*(*(&v10 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [RBInheritanceCollection alloc];

  return [(RBInheritanceCollection *)v4 _initWithCollection:self];
}

- (void)addInheritance:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"RBInheritanceCollection.m" lineNumber:161 description:{@"Invalid parameter not satisfying: %@", @"inheritance != nil"}];
}

- (void)removeInheritance:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"RBInheritanceCollection.m" lineNumber:188 description:{@"Invalid parameter not satisfying: %@", @"inheritance != nil"}];
}

@end