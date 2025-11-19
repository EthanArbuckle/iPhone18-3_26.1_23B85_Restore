@interface PXLinkPresentationActivityItemProvider
- (PXLinkPresentationActivityItemProvider)initWithConfiguration:(id)a3;
- (id)_linkMetadataForConfiguration:(id)a3;
- (id)activityViewControllerLinkPresentationMetadata:(id)a3;
@end

@implementation PXLinkPresentationActivityItemProvider

- (id)activityViewControllerLinkPresentationMetadata:(id)a3
{
  v4 = [(PXLinkPresentationActivityItemProvider *)self configuration];
  v5 = [(PXLinkPresentationActivityItemProvider *)self _linkMetadataForConfiguration:v4];

  return v5;
}

- (id)_linkMetadataForConfiguration:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E696EC18]);
  [v4 setPhotoCount:{objc_msgSend(v3, "photoCount")}];
  [v4 setVideoCount:{objc_msgSend(v3, "videoCount")}];
  [v4 setOtherItemCount:{objc_msgSend(v3, "otherItemCount")}];
  v5 = [v3 expirationDate];
  if (v5)
  {
    [v4 setExpirationDate:v5];
  }

  else
  {
    v6 = [MEMORY[0x1E695DF00] distantFuture];
    [v4 setExpirationDate:v6];
  }

  v7 = [v3 earliestAssetDate];
  [v4 setEarliestAssetDate:v7];

  v8 = [v3 latestAssetDate];
  [v4 setLatestAssetDate:v8];

  v9 = objc_alloc_init(MEMORY[0x1E696ECA0]);
  [v9 setSpecialization:v4];
  v10 = objc_alloc_init(MEMORY[0x1E696ACA0]);
  v11 = objc_opt_class();
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __72__PXLinkPresentationActivityItemProvider__linkMetadataForConfiguration___block_invoke;
  v17[3] = &unk_1E77470F0;
  v12 = v3;
  v18 = v12;
  [v10 registerObjectOfClass:v11 visibility:0 loadHandler:v17];
  v13 = [v12 placeholderImage];
  if (v13)
  {
    v14 = [objc_alloc(MEMORY[0x1E696EC68]) initWithPlatformImage:v13];
  }

  else
  {
    v14 = 0;
  }

  v15 = [objc_alloc(MEMORY[0x1E696EC68]) initWithItemProvider:v10 properties:0 placeholderImage:v14];
  [v9 setImage:v15];

  return v9;
}

void __72__PXLinkPresentationActivityItemProvider__linkMetadataForConfiguration___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  PLPhysicalScreenScale();
  PXSizeScale();
}

void __72__PXLinkPresentationActivityItemProvider__linkMetadataForConfiguration___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v4 = *(*(a1 + 32) + 16);

    v4();
  }

  else
  {
    v5 = [a3 objectForKeyedSubscript:*MEMORY[0x1E6978DF0]];
    v6 = PLUIGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&dword_1A3C1C000, v6, OS_LOG_TYPE_ERROR, "PXLinkPresentationActivityItemProvider: Error fetching thumbnail image data: %@", &v7, 0xCu);
    }

    (*(*(a1 + 32) + 16))();
  }
}

- (PXLinkPresentationActivityItemProvider)initWithConfiguration:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PXLinkPresentationActivityItemProvider.m" lineNumber:49 description:{@"Invalid parameter not satisfying: %@", @"configuration"}];
  }

  v11.receiver = self;
  v11.super_class = PXLinkPresentationActivityItemProvider;
  v7 = [(PXLinkPresentationActivityItemProvider *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_configuration, a3);
  }

  return v8;
}

@end