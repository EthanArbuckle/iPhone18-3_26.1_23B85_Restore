@interface PXStoryBaseDisplayAssetCroppingContext
- (PXStoryBaseDisplayAssetCroppingContext)init;
- (id)orderedFacesForAsset:(id)asset featuredFaceCount:(int64_t *)count;
- (void)requestIndividualFaceRectsInAsset:(id)asset options:(unint64_t)options resultHandler:(id)handler;
@end

@implementation PXStoryBaseDisplayAssetCroppingContext

- (void)requestIndividualFaceRectsInAsset:(id)asset options:(unint64_t)options resultHandler:(id)handler
{
  v30 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  handlerCopy = handler;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [(PXStoryBaseDisplayAssetCroppingContext *)self log];
    v10 = os_signpost_id_make_with_pointer(v9, self);
    v11 = v9;
    v12 = v11;
    if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
    {
      uuid = [assetCopy uuid];
      *buf = 138412290;
      *&buf[4] = uuid;
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "StoryIndividualFaceRectsRequest", "uuid=%{signpost.description:attribute}@", buf, 0xCu);
    }

    v26[0] = v10;

    *buf = 0;
    v14 = [(PXStoryBaseDisplayAssetCroppingContext *)self orderedFacesForAsset:assetCopy featuredFaceCount:buf];
    v15 = [v14 count];
    v26[1] = v26;
    *&v16 = MEMORY[0x1EEE9AC00](v15).n128_u64[0];
    v18 = &v26[-4 * v17];
    if (v17 >= 1)
    {
      v19 = [v14 objectAtIndexedSubscript:{0, v16, v26[0]}];
      [v19 centerX];
      [v19 centerY];
      [v19 size];
      v21 = v20;
      [v19 size];
      [v19 px_faceTileSizeAdjustingForImageAspectRatio:{v21, v22}];
      PXRectWithCenterAndSize();
    }

    v23 = v12;
    v24 = v23;
    if (v10 - 1 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v23))
    {
      *v27 = 0;
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v24, OS_SIGNPOST_INTERVAL_END, v26[0], "StoryIndividualFaceRectsRequest", "", v27, 2u);
    }

    handlerCopy[2](handlerCopy, v15, v18, *buf, v14);
  }

  else
  {
    v25 = *(MEMORY[0x1E695F050] + 16);
    *buf = *MEMORY[0x1E695F050];
    v29 = v25;
    handlerCopy[2](handlerCopy, 0, buf, 0, 0);
  }
}

- (id)orderedFacesForAsset:(id)asset featuredFaceCount:(int64_t *)count
{
  v6 = MEMORY[0x1E69787C8];
  assetCopy = asset;
  fetchOptions = [(PXStoryBaseDisplayAssetCroppingContext *)self fetchOptions];
  v9 = [v6 fetchFacesInAsset:assetCopy options:fetchOptions];

  v10 = [(PXStoryBaseDisplayAssetCroppingContext *)self adjustOrderedFaces:v9 featuredFaceCount:count];

  return v10;
}

- (PXStoryBaseDisplayAssetCroppingContext)init
{
  v15[2] = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = PXStoryBaseDisplayAssetCroppingContext;
  v2 = [(PXStoryBaseDisplayAssetCroppingContext *)&v14 init];
  if (v2)
  {
    v3 = *MEMORY[0x1E69BFF60];
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = os_log_create(v3, [v5 UTF8String]);
    log = v2->_log;
    v2->_log = v6;

    v8 = objc_alloc_init(MEMORY[0x1E6978830]);
    fetchOptions = v2->_fetchOptions;
    v2->_fetchOptions = v8;

    v10 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"size" ascending:0];
    v15[0] = v10;
    v11 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"quality" ascending:0];
    v15[1] = v11;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
    [(PHFetchOptions *)v2->_fetchOptions setSortDescriptors:v12];
  }

  return v2;
}

@end