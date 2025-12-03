@interface PHPersonSuggestion(PXPerson)
- (id)name;
- (id)px_keyPhotoDate;
- (id)px_localIdentifier;
- (id)px_localizedName;
- (id)px_longStyleLocalizedName;
- (uint64_t)detectionType;
- (uint64_t)numberOfAssets;
- (uint64_t)px_isHuman;
- (uint64_t)px_isPet;
- (uint64_t)requestFaceCropImageWithTargetSize:()PXPerson displayScale:cropFactor:style:cacheResult:synchronous:resultHandler:;
@end

@implementation PHPersonSuggestion(PXPerson)

- (id)px_keyPhotoDate
{
  v12[1] = *MEMORY[0x1E69E9840];
  keyFace = [self keyFace];
  photoLibrary = [keyFace photoLibrary];
  px_standardLibrarySpecificFetchOptions = [photoLibrary px_standardLibrarySpecificFetchOptions];

  [px_standardLibrarySpecificFetchOptions setIncludeHiddenAssets:0];
  [px_standardLibrarySpecificFetchOptions setFetchLimit:1];
  [px_standardLibrarySpecificFetchOptions setSortDescriptors:MEMORY[0x1E695E0F0]];
  v12[0] = *MEMORY[0x1E6978CA8];
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  [px_standardLibrarySpecificFetchOptions addFetchPropertySets:v4];

  v5 = MEMORY[0x1E6978630];
  v11 = keyFace;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v11 count:1];
  v7 = [v5 fetchAssetsForFaces:v6 options:px_standardLibrarySpecificFetchOptions];

  firstObject = [v7 firstObject];
  creationDate = [firstObject creationDate];

  return creationDate;
}

- (uint64_t)px_isPet
{
  person = [self person];
  px_isPet = [person px_isPet];

  return px_isPet;
}

- (uint64_t)px_isHuman
{
  person = [self person];
  px_isHuman = [person px_isHuman];

  return px_isHuman;
}

- (uint64_t)detectionType
{
  person = [self person];
  detectionType = [person detectionType];

  return detectionType;
}

- (id)px_localIdentifier
{
  keyFace = [self keyFace];
  localIdentifier = [keyFace localIdentifier];

  return localIdentifier;
}

- (id)px_longStyleLocalizedName
{
  person = [self person];
  px_longStyleLocalizedName = [person px_longStyleLocalizedName];

  return px_longStyleLocalizedName;
}

- (id)px_localizedName
{
  person = [self person];
  px_localizedName = [person px_localizedName];

  return px_localizedName;
}

- (id)name
{
  person = [self person];
  name = [person name];

  return name;
}

- (uint64_t)numberOfAssets
{
  person = [self person];
  photoLibrary = [person photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

  [librarySpecificFetchOptions setShouldPrefetchCount:1];
  v5 = MEMORY[0x1E6978630];
  person2 = [self person];
  v7 = [v5 fetchAssetsForPerson:person2 options:librarySpecificFetchOptions];

  v8 = [v7 count];
  return v8;
}

- (uint64_t)requestFaceCropImageWithTargetSize:()PXPerson displayScale:cropFactor:style:cacheResult:synchronous:resultHandler:
{
  v18 = a10;
  v19 = [PXPeopleFaceCropFetchOptions alloc];
  keyFace = [self keyFace];
  v21 = [(PXPeopleFaceCropFetchOptions *)v19 initWithFace:keyFace targetSize:a2 displayScale:a3, a4];

  [(PXPeopleFaceCropFetchOptions *)v21 setCropFactor:a6];
  [(PXPeopleFaceCropFetchOptions *)v21 setCornerStyle:a7];
  [(PXPeopleFaceCropFetchOptions *)v21 setShouldCacheResult:a8];
  [(PXPeopleFaceCropFetchOptions *)v21 setIsSynchronous:a9];
  v22 = +[PXPeopleFaceCropManager sharedManager];
  v23 = [v22 requestFaceCropForOptions:v21 resultHandler:v18];

  return v23;
}

@end