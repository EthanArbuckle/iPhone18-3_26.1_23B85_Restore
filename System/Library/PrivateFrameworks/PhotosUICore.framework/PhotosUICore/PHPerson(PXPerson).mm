@interface PHPerson(PXPerson)
- (BOOL)px_isHuman;
- (id)px_keyPhotoDate;
- (uint64_t)numberOfAssets;
- (uint64_t)requestFaceCropImageWithTargetSize:()PXPerson displayScale:cropFactor:style:cacheResult:synchronous:resultHandler:;
@end

@implementation PHPerson(PXPerson)

- (BOOL)px_isHuman
{
  detectionType = [self detectionType];

  return [PXPeopleUtilities isDetectionTypeHuman:detectionType];
}

- (id)px_keyPhotoDate
{
  v15[1] = *MEMORY[0x1E69E9840];
  photoLibrary = [self photoLibrary];
  px_standardLibrarySpecificFetchOptions = [photoLibrary px_standardLibrarySpecificFetchOptions];

  [px_standardLibrarySpecificFetchOptions setFetchLimit:1];
  [px_standardLibrarySpecificFetchOptions setSortDescriptors:MEMORY[0x1E695E0F0]];
  [px_standardLibrarySpecificFetchOptions setIncludeTorsoAndFaceDetectionData:1];
  px_defaultDetectionTypes = [MEMORY[0x1E6978830] px_defaultDetectionTypes];
  [px_standardLibrarySpecificFetchOptions setIncludedDetectionTypes:px_defaultDetectionTypes];

  v5 = [MEMORY[0x1E69787C8] px_fetchKeyFaceForPerson:self options:px_standardLibrarySpecificFetchOptions];
  firstObject = [v5 firstObject];

  [px_standardLibrarySpecificFetchOptions setIncludeHiddenAssets:0];
  v15[0] = *MEMORY[0x1E6978CA8];
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  [px_standardLibrarySpecificFetchOptions addFetchPropertySets:v7];

  v8 = MEMORY[0x1E6978630];
  v14 = firstObject;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v14 count:1];
  v10 = [v8 fetchAssetsForFaces:v9 options:px_standardLibrarySpecificFetchOptions];

  firstObject2 = [v10 firstObject];
  creationDate = [firstObject2 creationDate];

  return creationDate;
}

- (uint64_t)numberOfAssets
{
  v9[1] = *MEMORY[0x1E69E9840];
  photoLibrary = [self photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

  [librarySpecificFetchOptions setShouldPrefetchCount:1];
  [librarySpecificFetchOptions setIncludeTorsoAndFaceDetectionData:1];
  v4 = MEMORY[0x1E6978630];
  v9[0] = self;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  v6 = [v4 fetchAssetsForPersons:v5 options:librarySpecificFetchOptions];

  v7 = [v6 count];
  return v7;
}

- (uint64_t)requestFaceCropImageWithTargetSize:()PXPerson displayScale:cropFactor:style:cacheResult:synchronous:resultHandler:
{
  v18 = a10;
  v19 = [[PXPeopleFaceCropFetchOptions alloc] initWithPerson:self targetSize:a2 displayScale:a3, a4];
  [(PXPeopleFaceCropFetchOptions *)v19 setCropFactor:a6];
  [(PXPeopleFaceCropFetchOptions *)v19 setCornerStyle:a7];
  [(PXPeopleFaceCropFetchOptions *)v19 setShouldCacheResult:a8];
  [(PXPeopleFaceCropFetchOptions *)v19 setIsSynchronous:a9];
  v20 = +[PXPeopleFaceCropManager sharedManager];
  v21 = [v20 requestFaceCropForOptions:v19 resultHandler:v18];

  return v21;
}

@end