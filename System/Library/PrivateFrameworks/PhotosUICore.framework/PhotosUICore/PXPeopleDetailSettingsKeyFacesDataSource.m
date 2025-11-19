@interface PXPeopleDetailSettingsKeyFacesDataSource
- (PXPeopleDetailSettingsKeyFacesDataSource)initWithTitle:(id)a3 keyFaces:(id)a4 qualityProperty:(id)a5 photoLibrary:(id)a6;
- (id)personNameAtIndex:(int64_t)a3;
- (unint64_t)faceCount:(int64_t)a3;
- (void)imageAtIndex:(unint64_t)a3 targetSize:(CGSize)a4 displayScale:(double)a5 resultHandler:(id)a6;
@end

@implementation PXPeopleDetailSettingsKeyFacesDataSource

- (unint64_t)faceCount:(int64_t)a3
{
  v3 = [(NSArray *)self->_keyFaces objectAtIndex:a3];
  v4 = [v3 count];

  return v4;
}

- (id)personNameAtIndex:(int64_t)a3
{
  v4 = [(NSArray *)self->_keyFaces objectAtIndex:a3];
  if (v4)
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = [(PXPeopleDetailSettingsKeyFacesDataSource *)self qualityProperty];
    v7 = [v4 objectForKey:v6];
    v8 = [v5 stringWithFormat:@"Quality %@", v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)imageAtIndex:(unint64_t)a3 targetSize:(CGSize)a4 displayScale:(double)a5 resultHandler:(id)a6
{
  height = a4.height;
  width = a4.width;
  v28[1] = *MEMORY[0x1E69E9840];
  v11 = a6;
  v12 = [(NSArray *)self->_keyFaces objectAtIndex:a3];
  v13 = v12;
  if (v12)
  {
    v14 = [v12 objectForKey:@"localIdentifier"];
    v15 = [(PXPeopleDetailSettingsKeyFacesDataSource *)self photoLibrary];
    v16 = [v15 librarySpecificFetchOptions];

    v17 = [MEMORY[0x1E6978830] px_defaultDetectionTypes];
    [v16 setIncludedDetectionTypes:v17];

    v18 = MEMORY[0x1E69787C8];
    v28[0] = v14;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];
    v20 = [v18 fetchFacesWithLocalIdentifiers:v19 options:v16];
    v21 = [v20 firstObject];

    v22 = [MEMORY[0x1E6978980] fetchPersonWithFace:v21 options:v16];
    v23 = [v22 firstObject];

    v24 = [[PXPeopleFaceCropFetchOptions alloc] initWithPerson:v23 face:v21 targetSize:width displayScale:height, a5];
    [(PXPeopleFaceCropFetchOptions *)v24 setShouldCacheResult:0];
    v25 = +[PXPeopleFaceCropManager sharedManager];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __95__PXPeopleDetailSettingsKeyFacesDataSource_imageAtIndex_targetSize_displayScale_resultHandler___block_invoke;
    v26[3] = &unk_1E774B680;
    v27 = v11;
    [v25 requestFaceCropForOptions:v24 resultHandler:v26];
  }
}

void __95__PXPeopleDetailSettingsKeyFacesDataSource_imageAtIndex_targetSize_displayScale_resultHandler___block_invoke(uint64_t a1, void *a2, void *a3)
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

- (PXPeopleDetailSettingsKeyFacesDataSource)initWithTitle:(id)a3 keyFaces:(id)a4 qualityProperty:(id)a5 photoLibrary:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = PXPeopleDetailSettingsKeyFacesDataSource;
  v15 = [(PXPeopleDetailSettingsKeyFacesDataSource *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_title, a3);
    objc_storeStrong(&v16->_keyFaces, a4);
    objc_storeStrong(&v16->_qualityProperty, a5);
    objc_storeStrong(&v16->_photoLibrary, a6);
  }

  return v16;
}

@end