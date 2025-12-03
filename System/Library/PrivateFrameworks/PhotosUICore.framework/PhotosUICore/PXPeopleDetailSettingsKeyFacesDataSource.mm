@interface PXPeopleDetailSettingsKeyFacesDataSource
- (PXPeopleDetailSettingsKeyFacesDataSource)initWithTitle:(id)title keyFaces:(id)faces qualityProperty:(id)property photoLibrary:(id)library;
- (id)personNameAtIndex:(int64_t)index;
- (unint64_t)faceCount:(int64_t)count;
- (void)imageAtIndex:(unint64_t)index targetSize:(CGSize)size displayScale:(double)scale resultHandler:(id)handler;
@end

@implementation PXPeopleDetailSettingsKeyFacesDataSource

- (unint64_t)faceCount:(int64_t)count
{
  v3 = [(NSArray *)self->_keyFaces objectAtIndex:count];
  v4 = [v3 count];

  return v4;
}

- (id)personNameAtIndex:(int64_t)index
{
  v4 = [(NSArray *)self->_keyFaces objectAtIndex:index];
  if (v4)
  {
    v5 = MEMORY[0x1E696AEC0];
    qualityProperty = [(PXPeopleDetailSettingsKeyFacesDataSource *)self qualityProperty];
    v7 = [v4 objectForKey:qualityProperty];
    v8 = [v5 stringWithFormat:@"Quality %@", v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)imageAtIndex:(unint64_t)index targetSize:(CGSize)size displayScale:(double)scale resultHandler:(id)handler
{
  height = size.height;
  width = size.width;
  v28[1] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v12 = [(NSArray *)self->_keyFaces objectAtIndex:index];
  v13 = v12;
  if (v12)
  {
    v14 = [v12 objectForKey:@"localIdentifier"];
    photoLibrary = [(PXPeopleDetailSettingsKeyFacesDataSource *)self photoLibrary];
    librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

    px_defaultDetectionTypes = [MEMORY[0x1E6978830] px_defaultDetectionTypes];
    [librarySpecificFetchOptions setIncludedDetectionTypes:px_defaultDetectionTypes];

    v18 = MEMORY[0x1E69787C8];
    v28[0] = v14;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];
    v20 = [v18 fetchFacesWithLocalIdentifiers:v19 options:librarySpecificFetchOptions];
    firstObject = [v20 firstObject];

    v22 = [MEMORY[0x1E6978980] fetchPersonWithFace:firstObject options:librarySpecificFetchOptions];
    firstObject2 = [v22 firstObject];

    scale = [[PXPeopleFaceCropFetchOptions alloc] initWithPerson:firstObject2 face:firstObject targetSize:width displayScale:height, scale];
    [(PXPeopleFaceCropFetchOptions *)scale setShouldCacheResult:0];
    v25 = +[PXPeopleFaceCropManager sharedManager];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __95__PXPeopleDetailSettingsKeyFacesDataSource_imageAtIndex_targetSize_displayScale_resultHandler___block_invoke;
    v26[3] = &unk_1E774B680;
    v27 = handlerCopy;
    [v25 requestFaceCropForOptions:scale resultHandler:v26];
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

- (PXPeopleDetailSettingsKeyFacesDataSource)initWithTitle:(id)title keyFaces:(id)faces qualityProperty:(id)property photoLibrary:(id)library
{
  titleCopy = title;
  facesCopy = faces;
  propertyCopy = property;
  libraryCopy = library;
  v18.receiver = self;
  v18.super_class = PXPeopleDetailSettingsKeyFacesDataSource;
  v15 = [(PXPeopleDetailSettingsKeyFacesDataSource *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_title, title);
    objc_storeStrong(&v16->_keyFaces, faces);
    objc_storeStrong(&v16->_qualityProperty, property);
    objc_storeStrong(&v16->_photoLibrary, library);
  }

  return v16;
}

@end