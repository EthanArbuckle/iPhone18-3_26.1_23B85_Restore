@interface PXPeopleDetailSettingsFaceCropDataSource
- (PXPeopleDetailSettingsFaceCropDataSource)init;
- (id)imageAtIndexPath:(id)path;
- (id)nameAtIndexPath:(id)path;
- (unint64_t)numberOfAssets;
@end

@implementation PXPeopleDetailSettingsFaceCropDataSource

- (id)nameAtIndexPath:(id)path
{
  pathCopy = path;
  fetchResult = [(PXPeopleDetailSettingsFaceCropDataSource *)self fetchResult];
  v6 = [pathCopy row];

  v7 = [fetchResult objectAtIndex:v6];

  px_deprecated_appPhotoLibrary = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
  librarySpecificFetchOptions = [px_deprecated_appPhotoLibrary librarySpecificFetchOptions];

  v10 = [MEMORY[0x1E69787C8] fetchFacesForFaceCrop:v7 options:librarySpecificFetchOptions];
  if ([v10 count])
  {
    v11 = [v10 objectAtIndex:0];
    v12 = [MEMORY[0x1E6978980] fetchPersonWithFace:v11 options:librarySpecificFetchOptions];
    if ([v12 count])
    {
      v13 = [v12 objectAtIndex:0];
      name = [v13 name];
      v15 = [name length];

      if (v15)
      {
        name2 = [v13 name];
      }

      else
      {
        name2 = @"unnamed";
      }
    }

    else
    {
      name2 = @"unnamed";
    }
  }

  else
  {
    name2 = @"unnamed";
  }

  return name2;
}

- (unint64_t)numberOfAssets
{
  fetchResult = [(PXPeopleDetailSettingsFaceCropDataSource *)self fetchResult];
  v3 = [fetchResult count];

  return v3;
}

- (id)imageAtIndexPath:(id)path
{
  pathCopy = path;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__76549;
  v27 = __Block_byref_object_dispose__76550;
  v28 = 0;
  imagesIsolationQueue = [(PXPeopleDetailSettingsFaceCropDataSource *)self imagesIsolationQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__PXPeopleDetailSettingsFaceCropDataSource_imageAtIndexPath___block_invoke;
  block[3] = &unk_1E7746448;
  v22 = &v23;
  block[4] = self;
  v6 = pathCopy;
  v21 = v6;
  dispatch_sync(imagesIsolationQueue, block);

  v7 = v24[5];
  if (!v7)
  {
    v8 = objc_alloc(MEMORY[0x1E69DCAB8]);
    fetchResult = [(PXPeopleDetailSettingsFaceCropDataSource *)self fetchResult];
    v10 = [fetchResult objectAtIndex:{objc_msgSend(v6, "row")}];
    resourceData = [v10 resourceData];
    v12 = [v8 initWithData:resourceData];
    v13 = v24[5];
    v24[5] = v12;

    imagesIsolationQueue2 = [(PXPeopleDetailSettingsFaceCropDataSource *)self imagesIsolationQueue];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __61__PXPeopleDetailSettingsFaceCropDataSource_imageAtIndexPath___block_invoke_2;
    v17[3] = &unk_1E7746448;
    v17[4] = self;
    v19 = &v23;
    v18 = v6;
    dispatch_sync(imagesIsolationQueue2, v17);

    v7 = v24[5];
  }

  v15 = v7;

  _Block_object_dispose(&v23, 8);

  return v15;
}

void __61__PXPeopleDetailSettingsFaceCropDataSource_imageAtIndexPath___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) images];
  v2 = [v5 objectForKey:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __61__PXPeopleDetailSettingsFaceCropDataSource_imageAtIndexPath___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) images];
  [v2 setObject:*(*(*(a1 + 48) + 8) + 40) forKey:*(a1 + 40)];
}

- (PXPeopleDetailSettingsFaceCropDataSource)init
{
  v13.receiver = self;
  v13.super_class = PXPeopleDetailSettingsFaceCropDataSource;
  v2 = [(PXPeopleDetailSettingsFaceCropDataSource *)&v13 init];
  if (v2)
  {
    v3 = MEMORY[0x1E69787F0];
    px_deprecated_appPhotoLibrary = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
    librarySpecificFetchOptions = [px_deprecated_appPhotoLibrary librarySpecificFetchOptions];
    v6 = [v3 fetchFaceCropsWithOptions:librarySpecificFetchOptions];
    fetchResult = v2->_fetchResult;
    v2->_fetchResult = v6;

    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    images = v2->_images;
    v2->_images = v8;

    v10 = dispatch_queue_create("PXPeopleDetailSettingsFaceCropDataSource.images", 0);
    imagesIsolationQueue = v2->_imagesIsolationQueue;
    v2->_imagesIsolationQueue = v10;
  }

  return v2;
}

@end