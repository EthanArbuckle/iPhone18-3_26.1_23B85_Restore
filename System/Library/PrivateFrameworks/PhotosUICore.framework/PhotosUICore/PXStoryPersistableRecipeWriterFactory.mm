@interface PXStoryPersistableRecipeWriterFactory
+ (BOOL)canPersistForConfiguration:(id)configuration;
+ (BOOL)canWriteRecipeToAssetCollection:(id)collection;
+ (id)defaultPersistableRecipeWriterForConfiguration:(id)configuration;
@end

@implementation PXStoryPersistableRecipeWriterFactory

+ (id)defaultPersistableRecipeWriterForConfiguration:(id)configuration
{
  configurationCopy = configuration;
  assetCollection = [configurationCopy assetCollection];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [PXStoryPersistableRecipeWriterFactory canPersistForConfiguration:configurationCopy])
  {
    v5 = [[PXStoryPHMemoryPersistableRecipeWriter alloc] initWithMemory:assetCollection];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      photoLibrary = [assetCollection photoLibrary];
      v13 = objc_alloc(MEMORY[0x1E69788E0]);
      referencePersons = [configurationCopy referencePersons];
      v15 = [v13 initWithObjects:referencePersons photoLibrary:photoLibrary fetchType:0 fetchPropertySets:0 identifier:0 registerIfNeeded:0];

      v5 = [[PXStoryPHAssetCollectionPersistableRecipeWriter alloc] initWithAssetCollection:assetCollection referencePersons:v15];
    }

    else
    {
      photoLibrary = PXStoryErrorCreateWithCodeDebugFormat(4, @"Can't persist recipe with asset collection %@", v6, v7, v8, v9, v10, v11, assetCollection);
      v5 = [[PXStoryNullPersistableRecipeWriter alloc] initWithError:photoLibrary];
    }
  }

  return v5;
}

+ (BOOL)canWriteRecipeToAssetCollection:(id)collection
{
  collectionCopy = collection;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    LOBYTE(v8) = 0;
    goto LABEL_6;
  }

  v6 = collectionCopy;
  if (!v6)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryPersistableRecipeWriter.m" lineNumber:38 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"assetCollection", v12}];
LABEL_9:

    goto LABEL_4;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v13 = objc_opt_class();
    v12 = NSStringFromClass(v13);
    px_descriptionForAssertionMessage = [v6 px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryPersistableRecipeWriter.m" lineNumber:38 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"assetCollection", v12, px_descriptionForAssertionMessage}];

    goto LABEL_9;
  }

LABEL_4:
  pendingState = [v6 pendingState];
  v8 = (pendingState < 4) & (0xBu >> (pendingState & 0xF));

LABEL_6:
  return v8;
}

+ (BOOL)canPersistForConfiguration:(id)configuration
{
  assetCollection = [configuration assetCollection];
  if (assetCollection)
  {
    v5 = [self canWriteRecipeToAssetCollection:assetCollection];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

@end