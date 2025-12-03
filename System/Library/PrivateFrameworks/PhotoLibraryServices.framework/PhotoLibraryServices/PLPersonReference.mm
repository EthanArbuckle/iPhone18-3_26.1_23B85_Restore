@interface PLPersonReference
+ (id)insertIntoPhotoLibrary:(id)library personUUID:(id)d personData:(id)data;
@end

@implementation PLPersonReference

+ (id)insertIntoPhotoLibrary:(id)library personUUID:(id)d personData:(id)data
{
  v22 = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  dCopy = d;
  dataCopy = data;
  if (!libraryCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLPersonReference.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"library"}];
  }

  managedObjectContext = [libraryCopy managedObjectContext];
  entityName = [self entityName];
  v14 = PLSafeInsertNewObjectForEntityForNameInManagedObjectContext(entityName, managedObjectContext, 0);

  [v14 setPersonUUID:dCopy];
  [v14 setPersonData:dataCopy];
  managedObjectContext2 = [libraryCopy managedObjectContext];
  v16 = [PLPerson personWithUUID:dCopy inManagedObjectContext:managedObjectContext2];

  if (v16)
  {
    [v14 setPerson:v16];
  }

  else if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v17 = __CPLAssetsdOSLogDomain();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v21 = dCopy;
      _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_ERROR, "Unable to find a person with UUID %@", buf, 0xCu);
    }
  }

  return v14;
}

@end