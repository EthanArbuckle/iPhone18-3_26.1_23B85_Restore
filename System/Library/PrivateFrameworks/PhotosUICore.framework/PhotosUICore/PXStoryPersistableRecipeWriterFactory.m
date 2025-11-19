@interface PXStoryPersistableRecipeWriterFactory
+ (BOOL)canPersistForConfiguration:(id)a3;
+ (BOOL)canWriteRecipeToAssetCollection:(id)a3;
+ (id)defaultPersistableRecipeWriterForConfiguration:(id)a3;
@end

@implementation PXStoryPersistableRecipeWriterFactory

+ (id)defaultPersistableRecipeWriterForConfiguration:(id)a3
{
  v3 = a3;
  v4 = [v3 assetCollection];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [PXStoryPersistableRecipeWriterFactory canPersistForConfiguration:v3])
  {
    v5 = [[PXStoryPHMemoryPersistableRecipeWriter alloc] initWithMemory:v4];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [v4 photoLibrary];
      v13 = objc_alloc(MEMORY[0x1E69788E0]);
      v14 = [v3 referencePersons];
      v15 = [v13 initWithObjects:v14 photoLibrary:v12 fetchType:0 fetchPropertySets:0 identifier:0 registerIfNeeded:0];

      v5 = [[PXStoryPHAssetCollectionPersistableRecipeWriter alloc] initWithAssetCollection:v4 referencePersons:v15];
    }

    else
    {
      v12 = PXStoryErrorCreateWithCodeDebugFormat(4, @"Can't persist recipe with asset collection %@", v6, v7, v8, v9, v10, v11, v4);
      v5 = [[PXStoryNullPersistableRecipeWriter alloc] initWithError:v12];
    }
  }

  return v5;
}

+ (BOOL)canWriteRecipeToAssetCollection:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    LOBYTE(v8) = 0;
    goto LABEL_6;
  }

  v6 = v5;
  if (!v6)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    [v10 handleFailureInMethod:a2 object:a1 file:@"PXStoryPersistableRecipeWriter.m" lineNumber:38 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"assetCollection", v12}];
LABEL_9:

    goto LABEL_4;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    v13 = objc_opt_class();
    v12 = NSStringFromClass(v13);
    v14 = [v6 px_descriptionForAssertionMessage];
    [v10 handleFailureInMethod:a2 object:a1 file:@"PXStoryPersistableRecipeWriter.m" lineNumber:38 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"assetCollection", v12, v14}];

    goto LABEL_9;
  }

LABEL_4:
  v7 = [v6 pendingState];
  v8 = (v7 < 4) & (0xBu >> (v7 & 0xF));

LABEL_6:
  return v8;
}

+ (BOOL)canPersistForConfiguration:(id)a3
{
  v4 = [a3 assetCollection];
  if (v4)
  {
    v5 = [a1 canWriteRecipeToAssetCollection:v4];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

@end