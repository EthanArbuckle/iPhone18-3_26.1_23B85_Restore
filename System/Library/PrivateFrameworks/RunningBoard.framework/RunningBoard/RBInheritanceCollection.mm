@interface RBInheritanceCollection
+ (RBInheritanceCollection)collectionWithInheritances:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)_initWithCollection:(id)a3;
- (id)_initWithInheritances:(id)a3;
- (id)allEnvironments;
- (id)description;
- (id)inheritancesForEnvironment:(id)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
@end

@implementation RBInheritanceCollection

+ (RBInheritanceCollection)collectionWithInheritances:(id)a3
{
  v3 = a3;
  v4 = [[RBInheritanceCollection alloc] _initWithInheritances:v3];

  return v4;
}

- (id)_initWithInheritances:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(RBInheritanceCollection *)self init];
  v6 = v5;
  if (v5)
  {
    v27 = v5;
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v26 = v4;
    v9 = v4;
    v10 = [v9 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v29;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v29 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v28 + 1) + 8 * i);
          v15 = [v14 environment];
          if (v15)
          {
            v16 = [v7 objectForKey:v15];
            if (!v16)
            {
              v16 = [MEMORY[0x277CBEB58] set];
              [v7 setObject:v16 forKey:v15];
            }

            [v16 addObject:v14];
          }

          v17 = [v14 endowmentNamespace];
          [v8 addObject:v17];
        }

        v11 = [v9 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v11);
    }

    v18 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithDictionary:v7 copyItems:1];
    v6 = v27;
    inheritancesByEnvironment = v27->_inheritancesByEnvironment;
    v27->_inheritancesByEnvironment = v18;

    v20 = [v8 copy];
    namespaces = v27->_namespaces;
    v27->_namespaces = v20;

    v22 = [v9 copy];
    inheritances = v27->_inheritances;
    v27->_inheritances = v22;

    v4 = v26;
  }

  v24 = *MEMORY[0x277D85DE8];
  return v6;
}

- (id)_initWithCollection:(id)a3
{
  v4 = a3;
  v5 = [(RBInheritanceCollection *)self init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithDictionary:*(v4 + 1) copyItems:1];
    inheritancesByEnvironment = v5->_inheritancesByEnvironment;
    v5->_inheritancesByEnvironment = v6;

    v8 = [*(v4 + 2) copy];
    inheritances = v5->_inheritances;
    v5->_inheritances = v8;

    v10 = [v4 allNamespaces];
    if ([v10 count])
    {
      v11 = [MEMORY[0x277CBEB98] setWithSet:v10];
      namespaces = v5->_namespaces;
      v5->_namespaces = v11;
    }
  }

  return v5;
}

- (id)allEnvironments
{
  v2 = MEMORY[0x277CBEB98];
  v3 = [(NSDictionary *)self->_inheritancesByEnvironment allKeys];
  v4 = [v2 setWithArray:v3];

  return v4;
}

- (id)inheritancesForEnvironment:(id)a3
{
  if (a3)
  {
    v4 = [(NSDictionary *)self->_inheritancesByEnvironment objectForKey:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [RBMutableInheritanceCollection alloc];

  return [(RBMutableInheritanceCollection *)v4 _initWithCollection:self];
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  inheritancesByEnvironment = self->_inheritancesByEnvironment;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __38__RBInheritanceCollection_description__block_invoke;
  v10[3] = &unk_279B33230;
  v11 = v3;
  v5 = v3;
  [(NSDictionary *)inheritancesByEnvironment enumerateKeysAndObjectsUsingBlock:v10];
  v6 = objc_alloc(MEMORY[0x277CCACA8]);
  v7 = [objc_opt_class() description];
  v8 = [v6 initWithFormat:@"<%@| inheritancesByEnvironment:{\n\t%@\n\t}>", v7, v5];

  return v8;
}

void __38__RBInheritanceCollection_description__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v7 = [a3 allObjects];
  v6 = [v7 componentsJoinedByString:{@", \n\t\t"}];
  [v4 appendFormat:@"%@=[\n\t\t%@\n\t\t]\n\t\t", v5, v6];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4 || (inheritances = self->_inheritances, v7 = v4->_inheritances, inheritances == v7))
  {
    v8 = 1;
  }

  else
  {
    v8 = 0;
    if (inheritances && v7)
    {
      Count = CFSetGetCount(inheritances);
      if (Count == CFSetGetCount(v7))
      {
        v8 = [(NSSet *)inheritances isEqualToSet:v7];
      }

      else
      {
        v8 = 0;
      }
    }
  }

  return v8;
}

@end