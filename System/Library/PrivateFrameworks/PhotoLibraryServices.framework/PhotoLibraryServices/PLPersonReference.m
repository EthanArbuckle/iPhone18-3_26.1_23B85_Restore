@interface PLPersonReference
+ (id)insertIntoPhotoLibrary:(id)a3 personUUID:(id)a4 personData:(id)a5;
@end

@implementation PLPersonReference

+ (id)insertIntoPhotoLibrary:(id)a3 personUUID:(id)a4 personData:(id)a5
{
  v22 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v9)
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a2 object:a1 file:@"PLPersonReference.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"library"}];
  }

  v12 = [v9 managedObjectContext];
  v13 = [a1 entityName];
  v14 = PLSafeInsertNewObjectForEntityForNameInManagedObjectContext(v13, v12, 0);

  [v14 setPersonUUID:v10];
  [v14 setPersonData:v11];
  v15 = [v9 managedObjectContext];
  v16 = [PLPerson personWithUUID:v10 inManagedObjectContext:v15];

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
      v21 = v10;
      _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_ERROR, "Unable to find a person with UUID %@", buf, 0xCu);
    }
  }

  return v14;
}

@end