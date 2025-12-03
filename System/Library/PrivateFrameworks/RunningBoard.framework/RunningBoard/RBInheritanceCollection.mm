@interface RBInheritanceCollection
+ (RBInheritanceCollection)collectionWithInheritances:(id)inheritances;
- (BOOL)isEqual:(id)equal;
- (id)_initWithCollection:(id)collection;
- (id)_initWithInheritances:(id)inheritances;
- (id)allEnvironments;
- (id)description;
- (id)inheritancesForEnvironment:(id)environment;
- (id)mutableCopyWithZone:(_NSZone *)zone;
@end

@implementation RBInheritanceCollection

+ (RBInheritanceCollection)collectionWithInheritances:(id)inheritances
{
  inheritancesCopy = inheritances;
  v4 = [[RBInheritanceCollection alloc] _initWithInheritances:inheritancesCopy];

  return v4;
}

- (id)_initWithInheritances:(id)inheritances
{
  v33 = *MEMORY[0x277D85DE8];
  inheritancesCopy = inheritances;
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
    v26 = inheritancesCopy;
    v9 = inheritancesCopy;
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
          environment = [v14 environment];
          if (environment)
          {
            v16 = [v7 objectForKey:environment];
            if (!v16)
            {
              v16 = [MEMORY[0x277CBEB58] set];
              [v7 setObject:v16 forKey:environment];
            }

            [v16 addObject:v14];
          }

          endowmentNamespace = [v14 endowmentNamespace];
          [v8 addObject:endowmentNamespace];
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

    inheritancesCopy = v26;
  }

  v24 = *MEMORY[0x277D85DE8];
  return v6;
}

- (id)_initWithCollection:(id)collection
{
  collectionCopy = collection;
  v5 = [(RBInheritanceCollection *)self init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithDictionary:*(collectionCopy + 1) copyItems:1];
    inheritancesByEnvironment = v5->_inheritancesByEnvironment;
    v5->_inheritancesByEnvironment = v6;

    v8 = [*(collectionCopy + 2) copy];
    inheritances = v5->_inheritances;
    v5->_inheritances = v8;

    allNamespaces = [collectionCopy allNamespaces];
    if ([allNamespaces count])
    {
      v11 = [MEMORY[0x277CBEB98] setWithSet:allNamespaces];
      namespaces = v5->_namespaces;
      v5->_namespaces = v11;
    }
  }

  return v5;
}

- (id)allEnvironments
{
  v2 = MEMORY[0x277CBEB98];
  allKeys = [(NSDictionary *)self->_inheritancesByEnvironment allKeys];
  v4 = [v2 setWithArray:allKeys];

  return v4;
}

- (id)inheritancesForEnvironment:(id)environment
{
  if (environment)
  {
    v4 = [(NSDictionary *)self->_inheritancesByEnvironment objectForKey:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy || (inheritances = self->_inheritances, v7 = equalCopy->_inheritances, inheritances == v7))
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