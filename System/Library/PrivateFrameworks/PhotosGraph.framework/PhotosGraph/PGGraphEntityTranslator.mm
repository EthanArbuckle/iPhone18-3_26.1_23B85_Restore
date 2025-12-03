@interface PGGraphEntityTranslator
+ (NSString)entityClassName;
+ (NSString)managedEntityName;
+ (id)uuidFromLocalIdentifier:(id)identifier;
+ (id)uuidsFromLocalIdentifiers:(id)identifiers;
- (PGGraphEntityTranslator)initWithPhotoLibrary:(id)library;
@end

@implementation PGGraphEntityTranslator

- (PGGraphEntityTranslator)initWithPhotoLibrary:(id)library
{
  libraryCopy = library;
  v9.receiver = self;
  v9.super_class = PGGraphEntityTranslator;
  v6 = [(PGGraphEntityTranslator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_photoLibrary, library);
  }

  return v7;
}

+ (id)uuidsFromLocalIdentifiers:(id)identifiers
{
  v20 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  v5 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(identifiersCopy, "count")}];
  entityClass = [self entityClass];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = identifiersCopy;
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

        v12 = [entityClass uuidFromLocalIdentifier:{*(*(&v15 + 1) + 8 * i), v15}];
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

+ (id)uuidFromLocalIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [objc_msgSend(self "entityClass")];

  return v5;
}

+ (NSString)managedEntityName
{
  entityClass = [self entityClass];

  return [entityClass managedEntityName];
}

+ (NSString)entityClassName
{
  entityClass = [self entityClass];

  return NSStringFromClass(entityClass);
}

@end