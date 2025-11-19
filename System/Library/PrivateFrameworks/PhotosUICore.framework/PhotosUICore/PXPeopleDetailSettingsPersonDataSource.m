@interface PXPeopleDetailSettingsPersonDataSource
- (PXPeopleDetailSettingsPersonDataSource)initWithTitle:(id)a3 persons:(id)a4;
- (id)personNameAtIndex:(int64_t)a3;
- (int64_t)verifyTypeAtIndex:(int64_t)a3;
- (unint64_t)faceCount:(int64_t)a3;
- (void)imageAtIndex:(unint64_t)a3 targetSize:(CGSize)a4 displayScale:(double)a5 resultHandler:(id)a6;
@end

@implementation PXPeopleDetailSettingsPersonDataSource

- (int64_t)verifyTypeAtIndex:(int64_t)a3
{
  v3 = [(PHFetchResult *)self->_persons objectAtIndex:a3];
  v4 = [v3 verifiedType];

  return v4;
}

- (unint64_t)faceCount:(int64_t)a3
{
  v3 = [(PHFetchResult *)self->_persons objectAtIndex:a3];
  v4 = [v3 faceCount];

  return v4;
}

- (id)personNameAtIndex:(int64_t)a3
{
  v3 = [(PHFetchResult *)self->_persons objectAtIndex:a3];
  v4 = [v3 name];
  if (![v4 length])
  {
    v5 = [v3 localIdentifier];

    v4 = v5;
  }

  return v4;
}

- (void)imageAtIndex:(unint64_t)a3 targetSize:(CGSize)a4 displayScale:(double)a5 resultHandler:(id)a6
{
  height = a4.height;
  width = a4.width;
  v11 = a6;
  v12 = [(PHFetchResult *)self->_persons objectAtIndex:a3];
  v13 = [[PXPeopleFaceCropFetchOptions alloc] initWithPerson:v12 targetSize:width displayScale:height, a5];
  [(PXPeopleFaceCropFetchOptions *)v13 setShouldCacheResult:0];
  v14 = +[PXPeopleFaceCropManager sharedManager];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __93__PXPeopleDetailSettingsPersonDataSource_imageAtIndex_targetSize_displayScale_resultHandler___block_invoke;
  v16[3] = &unk_1E774B680;
  v17 = v11;
  v15 = v11;
  [v14 requestFaceCropForOptions:v13 resultHandler:v16];
}

void __93__PXPeopleDetailSettingsPersonDataSource_imageAtIndex_targetSize_displayScale_resultHandler___block_invoke(uint64_t a1, void *a2, void *a3)
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

- (PXPeopleDetailSettingsPersonDataSource)initWithTitle:(id)a3 persons:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PXPeopleDetailSettingsPersonDataSource;
  v9 = [(PXPeopleDetailSettingsPersonDataSource *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_title, a3);
    objc_storeStrong(&v10->_persons, a4);
  }

  return v10;
}

@end