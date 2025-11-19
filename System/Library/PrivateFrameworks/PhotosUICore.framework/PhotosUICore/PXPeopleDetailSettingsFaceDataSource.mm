@interface PXPeopleDetailSettingsFaceDataSource
- (PXPeopleDetailSettingsFaceDataSource)initWithTitle:(id)a3 faces:(id)a4;
- (void)imageAtIndex:(unint64_t)a3 targetSize:(CGSize)a4 displayScale:(double)a5 resultHandler:(id)a6;
@end

@implementation PXPeopleDetailSettingsFaceDataSource

- (void)imageAtIndex:(unint64_t)a3 targetSize:(CGSize)a4 displayScale:(double)a5 resultHandler:(id)a6
{
  height = a4.height;
  width = a4.width;
  v24[1] = *MEMORY[0x1E69E9840];
  v11 = a6;
  v12 = [(PHFetchResult *)self->_faces objectAtIndex:a3];
  v13 = [v12 photoLibrary];
  v14 = [v13 librarySpecificFetchOptions];

  v15 = [MEMORY[0x1E696AD98] numberWithShort:{objc_msgSend(v12, "detectionType")}];
  v24[0] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
  [v14 setIncludedDetectionTypes:v16];

  v17 = [MEMORY[0x1E6978980] fetchPersonWithFace:v12 options:v14];
  v18 = [v17 firstObject];

  v19 = [[PXPeopleFaceCropFetchOptions alloc] initWithPerson:v18 face:v12 targetSize:width displayScale:height, a5];
  [(PXPeopleFaceCropFetchOptions *)v19 setShouldCacheResult:0];
  v20 = +[PXPeopleFaceCropManager sharedManager];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __91__PXPeopleDetailSettingsFaceDataSource_imageAtIndex_targetSize_displayScale_resultHandler___block_invoke;
  v22[3] = &unk_1E774B680;
  v23 = v11;
  v21 = v11;
  [v20 requestFaceCropForOptions:v19 resultHandler:v22];
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

- (PXPeopleDetailSettingsFaceDataSource)initWithTitle:(id)a3 faces:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PXPeopleDetailSettingsFaceDataSource;
  v9 = [(PXPeopleDetailSettingsFaceDataSource *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_title, a3);
    objc_storeStrong(&v10->_faces, a4);
  }

  return v10;
}

@end