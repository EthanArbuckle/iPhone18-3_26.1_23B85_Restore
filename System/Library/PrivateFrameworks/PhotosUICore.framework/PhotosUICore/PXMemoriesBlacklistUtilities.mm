@interface PXMemoriesBlacklistUtilities
+ (id)accessoryUIViewSpecForBlacklistedFeature:(id)feature;
+ (id)personWithLocalIdentifier:(id)identifier;
@end

@implementation PXMemoriesBlacklistUtilities

+ (id)accessoryUIViewSpecForBlacklistedFeature:(id)feature
{
  featureCopy = feature;
  if ([featureCopy type] == 1)
  {
    personLocalIdentifier = [featureCopy personLocalIdentifier];
    v6 = [self personWithLocalIdentifier:personLocalIdentifier];

    v7 = [PXMemoriesBlacklistPersonAccessoryViewSpec specWithPerson:v6];
  }

  else if ([featureCopy type] == 4096)
  {
    location = [featureCopy location];
    v7 = [PXMemoriesBlacklistPlaceLocationAccessoryViewSpec specWithLocation:location regionRadius:-1.0];
  }

  else if ([featureCopy type] == 0x20000)
  {
    v7 = +[PXMemoriesBlacklistPlaceAreaAccesoryViewSpec spec];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)personWithLocalIdentifier:(id)identifier
{
  v11[1] = *MEMORY[0x1E69E9840];
  if (identifier)
  {
    v3 = [MEMORY[0x1E6978958] uuidFromLocalIdentifier:?];
    px_deprecated_appPhotoLibrary = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
    librarySpecificFetchOptions = [px_deprecated_appPhotoLibrary librarySpecificFetchOptions];

    [librarySpecificFetchOptions setFetchLimit:1];
    v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"personUUID = %@", v3];
    [librarySpecificFetchOptions setInternalPredicate:v6];
    [librarySpecificFetchOptions setMinimumUnverifiedFaceCount:1];
    v11[0] = *MEMORY[0x1E6978F38];
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    [librarySpecificFetchOptions setFetchPropertySets:v7];

    v8 = [MEMORY[0x1E6978980] fetchPersonsWithOptions:librarySpecificFetchOptions];
    firstObject = [v8 firstObject];
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

@end