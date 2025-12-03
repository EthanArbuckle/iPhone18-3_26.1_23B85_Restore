@interface PXPeopleDetailSettingsFaceDataSource
- (PXPeopleDetailSettingsFaceDataSource)initWithTitle:(id)title faces:(id)faces;
- (void)imageAtIndex:(unint64_t)index targetSize:(CGSize)size displayScale:(double)scale resultHandler:(id)handler;
@end

@implementation PXPeopleDetailSettingsFaceDataSource

- (void)imageAtIndex:(unint64_t)index targetSize:(CGSize)size displayScale:(double)scale resultHandler:(id)handler
{
  height = size.height;
  width = size.width;
  v24[1] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v12 = [(PHFetchResult *)self->_faces objectAtIndex:index];
  photoLibrary = [v12 photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

  v15 = [MEMORY[0x1E696AD98] numberWithShort:{objc_msgSend(v12, "detectionType")}];
  v24[0] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
  [librarySpecificFetchOptions setIncludedDetectionTypes:v16];

  v17 = [MEMORY[0x1E6978980] fetchPersonWithFace:v12 options:librarySpecificFetchOptions];
  firstObject = [v17 firstObject];

  scale = [[PXPeopleFaceCropFetchOptions alloc] initWithPerson:firstObject face:v12 targetSize:width displayScale:height, scale];
  [(PXPeopleFaceCropFetchOptions *)scale setShouldCacheResult:0];
  v20 = +[PXPeopleFaceCropManager sharedManager];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __91__PXPeopleDetailSettingsFaceDataSource_imageAtIndex_targetSize_displayScale_resultHandler___block_invoke;
  v22[3] = &unk_1E774B680;
  v23 = handlerCopy;
  v21 = handlerCopy;
  [v20 requestFaceCropForOptions:scale resultHandler:v22];
}

void __91__PXPeopleDetailSettingsFaceDataSource_imageAtIndex_targetSize_displayScale_resultHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  if (*(a1 + 32))
  {
    v5 = a2;
    v7 = [a3 objectForKeyedSubscript:@"PXPeopleContentsRectKey"];
    v6 = *(a1 + 32);
    [v7 CGRectValue];
    (*(v6 + 16))(v6, v5);
  }
}

- (PXPeopleDetailSettingsFaceDataSource)initWithTitle:(id)title faces:(id)faces
{
  titleCopy = title;
  facesCopy = faces;
  v12.receiver = self;
  v12.super_class = PXPeopleDetailSettingsFaceDataSource;
  v9 = [(PXPeopleDetailSettingsFaceDataSource *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_title, title);
    objc_storeStrong(&v10->_faces, faces);
  }

  return v10;
}

@end