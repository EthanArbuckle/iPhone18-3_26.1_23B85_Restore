@interface PXPeopleDetailSettingsPersonDataSource
- (PXPeopleDetailSettingsPersonDataSource)initWithTitle:(id)title persons:(id)persons;
- (id)personNameAtIndex:(int64_t)index;
- (int64_t)verifyTypeAtIndex:(int64_t)index;
- (unint64_t)faceCount:(int64_t)count;
- (void)imageAtIndex:(unint64_t)index targetSize:(CGSize)size displayScale:(double)scale resultHandler:(id)handler;
@end

@implementation PXPeopleDetailSettingsPersonDataSource

- (int64_t)verifyTypeAtIndex:(int64_t)index
{
  v3 = [(PHFetchResult *)self->_persons objectAtIndex:index];
  verifiedType = [v3 verifiedType];

  return verifiedType;
}

- (unint64_t)faceCount:(int64_t)count
{
  v3 = [(PHFetchResult *)self->_persons objectAtIndex:count];
  faceCount = [v3 faceCount];

  return faceCount;
}

- (id)personNameAtIndex:(int64_t)index
{
  v3 = [(PHFetchResult *)self->_persons objectAtIndex:index];
  name = [v3 name];
  if (![name length])
  {
    localIdentifier = [v3 localIdentifier];

    name = localIdentifier;
  }

  return name;
}

- (void)imageAtIndex:(unint64_t)index targetSize:(CGSize)size displayScale:(double)scale resultHandler:(id)handler
{
  height = size.height;
  width = size.width;
  handlerCopy = handler;
  v12 = [(PHFetchResult *)self->_persons objectAtIndex:index];
  scale = [[PXPeopleFaceCropFetchOptions alloc] initWithPerson:v12 targetSize:width displayScale:height, scale];
  [(PXPeopleFaceCropFetchOptions *)scale setShouldCacheResult:0];
  v14 = +[PXPeopleFaceCropManager sharedManager];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __93__PXPeopleDetailSettingsPersonDataSource_imageAtIndex_targetSize_displayScale_resultHandler___block_invoke;
  v16[3] = &unk_1E774B680;
  v17 = handlerCopy;
  v15 = handlerCopy;
  [v14 requestFaceCropForOptions:scale resultHandler:v16];
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

- (PXPeopleDetailSettingsPersonDataSource)initWithTitle:(id)title persons:(id)persons
{
  titleCopy = title;
  personsCopy = persons;
  v12.receiver = self;
  v12.super_class = PXPeopleDetailSettingsPersonDataSource;
  v9 = [(PXPeopleDetailSettingsPersonDataSource *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_title, title);
    objc_storeStrong(&v10->_persons, persons);
  }

  return v10;
}

@end