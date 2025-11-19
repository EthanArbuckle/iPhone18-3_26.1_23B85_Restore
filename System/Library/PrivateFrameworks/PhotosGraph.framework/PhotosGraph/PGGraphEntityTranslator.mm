@interface PGGraphEntityTranslator
+ (NSString)entityClassName;
+ (NSString)managedEntityName;
+ (id)uuidFromLocalIdentifier:(id)a3;
+ (id)uuidsFromLocalIdentifiers:(id)a3;
- (PGGraphEntityTranslator)initWithPhotoLibrary:(id)a3;
@end

@implementation PGGraphEntityTranslator

- (PGGraphEntityTranslator)initWithPhotoLibrary:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PGGraphEntityTranslator;
  v6 = [(PGGraphEntityTranslator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_photoLibrary, a3);
  }

  return v7;
}

+ (id)uuidsFromLocalIdentifiers:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v4, "count")}];
  v6 = [a1 entityClass];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [v6 uuidFromLocalIdentifier:{*(*(&v15 + 1) + 8 * i), v15}];
        if (v12)
        {
          [v5 addObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)uuidFromLocalIdentifier:(id)a3
{
  v4 = a3;
  v5 = [objc_msgSend(a1 "entityClass")];

  return v5;
}

+ (NSString)managedEntityName
{
  v2 = [a1 entityClass];

  return [v2 managedEntityName];
}

+ (NSString)entityClassName
{
  v2 = [a1 entityClass];

  return NSStringFromClass(v2);
}

@end