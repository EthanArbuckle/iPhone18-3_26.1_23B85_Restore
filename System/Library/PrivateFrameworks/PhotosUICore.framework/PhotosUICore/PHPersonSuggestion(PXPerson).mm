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
  v1 = [a1 keyFace];
  v2 = [v1 photoLibrary];
  v3 = [v2 px_standardLibrarySpecificFetchOptions];

  [v3 setIncludeHiddenAssets:0];
  [v3 setFetchLimit:1];
  [v3 setSortDescriptors:MEMORY[0x1E695E0F0]];
  v12[0] = *MEMORY[0x1E6978CA8];
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  [v3 addFetchPropertySets:v4];

  v5 = MEMORY[0x1E6978630];
  v11 = v1;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v11 count:1];
  v7 = [v5 fetchAssetsForFaces:v6 options:v3];

  v8 = [v7 firstObject];
  v9 = [v8 creationDate];

  return v9;
}

- (uint64_t)px_isPet
{
  v1 = [a1 person];
  v2 = [v1 px_isPet];

  return v2;
}

- (uint64_t)px_isHuman
{
  v1 = [a1 person];
  v2 = [v1 px_isHuman];

  return v2;
}

- (uint64_t)detectionType
{
  v1 = [a1 person];
  v2 = [v1 detectionType];

  return v2;
}

- (id)px_localIdentifier
{
  v1 = [a1 keyFace];
  v2 = [v1 localIdentifier];

  return v2;
}

- (id)px_longStyleLocalizedName
{
  v1 = [a1 person];
  v2 = [v1 px_longStyleLocalizedName];

  return v2;
}

- (id)px_localizedName
{
  v1 = [a1 person];
  v2 = [v1 px_localizedName];

  return v2;
}

- (id)name
{
  v1 = [a1 person];
  v2 = [v1 name];

  return v2;
}

- (uint64_t)numberOfAssets
{
  v2 = [a1 person];
  v3 = [v2 photoLibrary];
  v4 = [v3 librarySpecificFetchOptions];

  [v4 setShouldPrefetchCount:1];
  v5 = MEMORY[0x1E6978630];
  v6 = [a1 person];
  v7 = [v5 fetchAssetsForPerson:v6 options:v4];

  v8 = [v7 count];
  return v8;
}

- (uint64_t)requestFaceCropImageWithTargetSize:()PXPerson displayScale:cropFactor:style:cacheResult:synchronous:resultHandler:
{
  v18 = a10;
  v19 = [PXPeopleFaceCropFetchOptions alloc];
  v20 = [a1 keyFace];
  v21 = [(PXPeopleFaceCropFetchOptions *)v19 initWithFace:v20 targetSize:a2 displayScale:a3, a4];

  [(PXPeopleFaceCropFetchOptions *)v21 setCropFactor:a6];
  [(PXPeopleFaceCropFetchOptions *)v21 setCornerStyle:a7];
  [(PXPeopleFaceCropFetchOptions *)v21 setShouldCacheResult:a8];
  [(PXPeopleFaceCropFetchOptions *)v21 setIsSynchronous:a9];
  v22 = +[PXPeopleFaceCropManager sharedManager];
  v23 = [v22 requestFaceCropForOptions:v21 resultHandler:v18];

  return v23;
}

@end