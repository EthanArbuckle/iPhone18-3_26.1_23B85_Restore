@interface PHPerson(PXPerson)
- (BOOL)px_isHuman;
- (id)px_keyPhotoDate;
- (uint64_t)numberOfAssets;
- (uint64_t)requestFaceCropImageWithTargetSize:()PXPerson displayScale:cropFactor:style:cacheResult:synchronous:resultHandler:;
@end

@implementation PHPerson(PXPerson)

- (BOOL)px_isHuman
{
  v1 = [a1 detectionType];

  return [PXPeopleUtilities isDetectionTypeHuman:v1];
}

- (id)px_keyPhotoDate
{
  v15[1] = *MEMORY[0x1E69E9840];
  v2 = [a1 photoLibrary];
  v3 = [v2 px_standardLibrarySpecificFetchOptions];

  [v3 setFetchLimit:1];
  [v3 setSortDescriptors:MEMORY[0x1E695E0F0]];
  [v3 setIncludeTorsoAndFaceDetectionData:1];
  v4 = [MEMORY[0x1E6978830] px_defaultDetectionTypes];
  [v3 setIncludedDetectionTypes:v4];

  v5 = [MEMORY[0x1E69787C8] px_fetchKeyFaceForPerson:a1 options:v3];
  v6 = [v5 firstObject];

  [v3 setIncludeHiddenAssets:0];
  v15[0] = *MEMORY[0x1E6978CA8];
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  [v3 addFetchPropertySets:v7];

  v8 = MEMORY[0x1E6978630];
  v14 = v6;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v14 count:1];
  v10 = [v8 fetchAssetsForFaces:v9 options:v3];

  v11 = [v10 firstObject];
  v12 = [v11 creationDate];

  return v12;
}

- (uint64_t)numberOfAssets
{
  v9[1] = *MEMORY[0x1E69E9840];
  v2 = [a1 photoLibrary];
  v3 = [v2 librarySpecificFetchOptions];

  [v3 setShouldPrefetchCount:1];
  [v3 setIncludeTorsoAndFaceDetectionData:1];
  v4 = MEMORY[0x1E6978630];
  v9[0] = a1;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  v6 = [v4 fetchAssetsForPersons:v5 options:v3];

  v7 = [v6 count];
  return v7;
}

- (uint64_t)requestFaceCropImageWithTargetSize:()PXPerson displayScale:cropFactor:style:cacheResult:synchronous:resultHandler:
{
  v18 = a10;
  v19 = [[PXPeopleFaceCropFetchOptions alloc] initWithPerson:a1 targetSize:a2 displayScale:a3, a4];
  [(PXPeopleFaceCropFetchOptions *)v19 setCropFactor:a6];
  [(PXPeopleFaceCropFetchOptions *)v19 setCornerStyle:a7];
  [(PXPeopleFaceCropFetchOptions *)v19 setShouldCacheResult:a8];
  [(PXPeopleFaceCropFetchOptions *)v19 setIsSynchronous:a9];
  v20 = +[PXPeopleFaceCropManager sharedManager];
  v21 = [v20 requestFaceCropForOptions:v19 resultHandler:v18];

  return v21;
}

@end