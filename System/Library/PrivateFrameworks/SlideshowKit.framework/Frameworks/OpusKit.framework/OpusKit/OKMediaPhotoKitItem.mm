@interface OKMediaPhotoKitItem
+ (id)_resultHandlingQueue;
+ (id)cloudIdentifierForAsset:(id)asset;
+ (id)urlForMediaObject:(id)object;
+ (id)urlForPHAsset:(id)asset;
- (CGRect)_faceAreaRect;
- (OKMediaPhotoKitItem)init;
- (OKMediaPhotoKitItem)initWithPHAsset:(id)asset;
- (id)_fetchAssetsWithCloudIdentifiers:(id)identifiers options:(id)options;
- (id)avAssetWithCompletionHandler:(id)handler;
- (id)createMetadataWithCompletionHandler:(id)handler;
- (id)createThumbnailImageForResolution:(unint64_t)resolution withMetadata:(id)metadata completionHandler:(id)handler;
- (id)importMediaToDirectoryURL:(id)l completionHandler:(id)handler;
- (void)_resolveAssetIfNeeded;
- (void)dealloc;
- (void)setMediaObject:(id)object;
@end

@implementation OKMediaPhotoKitItem

+ (id)urlForMediaObject:(id)object
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return [self urlForPHAsset:object];
}

+ (id)urlForPHAsset:(id)asset
{
  v4 = [self cloudIdentifierForAsset:?];
  v5 = MEMORY[0x277CBEBC0];
  v6 = MEMORY[0x277CCACA8];
  scheme = [objc_opt_class() scheme];
  if (v4)
  {
    v8 = [v6 stringWithFormat:@"%@://cloud/%@", scheme, objc_msgSend(v4, "stringByAddingPercentEscapesForURLPath")];
  }

  else
  {
    v8 = [v6 stringWithFormat:@"%@://local/%@", scheme, objc_msgSend(objc_msgSend(asset, "localIdentifier"), "stringByAddingPercentEscapesForURLPath")];
  }

  return [v5 URLWithString:v8];
}

+ (id)cloudIdentifierForAsset:(id)asset
{
  v8[1] = *MEMORY[0x277D85DE8];
  v4 = gPhotoLibrary;
  v8[0] = [asset localIdentifier];
  v5 = [objc_msgSend(v4 cloudIdentifierMappingsForLocalIdentifiers:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v8, 1)), "objectForKeyedSubscript:", objc_msgSend(asset, "localIdentifier")}];
  cloudIdentifier = [v5 cloudIdentifier];
  if (cloudIdentifier)
  {
    return [cloudIdentifier stringValue];
  }

  NSLog(&cfstr_FailedToGetClo.isa, [asset localIdentifier], objc_msgSend(v5, "error"));
  return 0;
}

- (OKMediaPhotoKitItem)init
{
  v4.receiver = self;
  v4.super_class = OKMediaPhotoKitItem;
  v2 = [(OKMediaPhotoKitItem *)&v4 init];
  if (v2)
  {
    if (init_onceToken != -1)
    {
      [OKMediaPhotoKitItem init];
    }

    v2->_asset = 0;
  }

  return v2;
}

uint64_t __27__OKMediaPhotoKitItem_init__block_invoke()
{
  if (objc_opt_respondsToSelector())
  {
    result = [MEMORY[0x277CD9948] px_appPhotoLibrary];
  }

  else
  {
    result = [MEMORY[0x277CD9948] sharedPhotoLibrary];
  }

  gPhotoLibrary = result;
  return result;
}

- (OKMediaPhotoKitItem)initWithPHAsset:(id)asset
{
  v5 = [objc_opt_class() urlForPHAsset:asset];
  v10.receiver = self;
  v10.super_class = OKMediaPhotoKitItem;
  v6 = [(OKMediaItem *)&v10 initWithUniqueURL:v5];
  v7 = v6;
  if (v6)
  {
    if ([(OKMediaItem *)v6 uniqueURL])
    {
      v7->_asset = asset;
    }

    else
    {
      v8 = v7;
      return 0;
    }
  }

  return v7;
}

- (void)dealloc
{
  asset = self->_asset;
  if (asset)
  {

    self->_asset = 0;
  }

  v4.receiver = self;
  v4.super_class = OKMediaPhotoKitItem;
  [(OKMediaItem *)&v4 dealloc];
}

- (void)setMediaObject:(id)object
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [objc_msgSend(objc_opt_class() urlForPHAsset:{object), "isEqual:", -[OKMediaItem uniqueURL](self, "uniqueURL")}])
  {

    [(OKMediaPhotoKitItem *)self setAsset:object];
  }
}

- (void)_resolveAssetIfNeeded
{
  v8[1] = *MEMORY[0x277D85DE8];
  objc_sync_enter(self);
  if ([(OKMediaPhotoKitItem *)self asset])
  {
    goto LABEL_13;
  }

  if (*MEMORY[0x277D62808] >= 7)
  {
    [MEMORY[0x277D627B8] logMessageWithLevel:7 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Media/PhotoKit/OKMediaPhotoKitItem.m" line:161 andFormat:@"OKMediaPhotoKitItem %@: Resolving Asset", -[OKMediaItem uniqueURL](self, "uniqueURL")];
  }

  v3 = [(NSString *)[(NSURL *)[(OKMediaItem *)self uniqueURL] path] substringFromIndex:1];
  librarySpecificFetchOptions = [gPhotoLibrary librarySpecificFetchOptions];
  if ([(NSString *)[(NSURL *)[(OKMediaItem *)self uniqueURL] host] isEqualToString:@"cloud"])
  {
    v8[0] = v3;
    v5 = -[OKMediaPhotoKitItem _fetchAssetsWithCloudIdentifiers:options:](self, "_fetchAssetsWithCloudIdentifiers:options:", [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1], librarySpecificFetchOptions);
  }

  else
  {
    if (![(NSString *)[(NSURL *)[(OKMediaItem *)self uniqueURL] host] isEqualToString:@"local"])
    {
      v6 = 0;
      goto LABEL_10;
    }

    v7 = v3;
    v5 = [MEMORY[0x277CD97A8] fetchAssetsWithLocalIdentifiers:objc_msgSend(MEMORY[0x277CBEA60] options:{"arrayWithObjects:count:", &v7, 1), librarySpecificFetchOptions}];
  }

  v6 = v5;
LABEL_10:
  if (![(OKMediaPhotoKitItem *)self asset]&& v6)
  {
    -[OKMediaPhotoKitItem setAsset:](self, "setAsset:", [v6 lastObject]);
  }

LABEL_13:
  objc_sync_exit(self);
}

- (id)_fetchAssetsWithCloudIdentifiers:(id)identifiers options:(id)options
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [identifiers countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(identifiers);
        }

        [v6 addObject:{objc_msgSend(objc_alloc(MEMORY[0x277CD9838]), "initWithStringValue:", *(*(&v15 + 1) + 8 * v10++))}];
      }

      while (v8 != v10);
      v8 = [identifiers countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v11 = [gPhotoLibrary localIdentifierMappingsForCloudIdentifiers:v6];
  v12 = objc_opt_new();
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __64__OKMediaPhotoKitItem__fetchAssetsWithCloudIdentifiers_options___block_invoke;
  v14[3] = &unk_279C90F20;
  v14[4] = v12;
  [v11 enumerateKeysAndObjectsUsingBlock:v14];
  return [MEMORY[0x277CD97A8] fetchAssetsWithLocalIdentifiers:v12 options:options];
}

void __64__OKMediaPhotoKitItem__fetchAssetsWithCloudIdentifiers_options___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = [a3 localIdentifier];
  if (v6)
  {
    v7 = v6;
    v8 = *(a1 + 32);

    [v8 addObject:v7];
  }

  else
  {
    v9 = [objc_msgSend(a3 "error")];
    v10 = [a3 error];
    if (v9 == 3201)
    {
      NSLog(&cfstr_FailedToFindLo.isa, a2, v10);
    }

    else
    {
      v11 = [v10 code];
      v12 = [a3 error];
      if (v11 == 3202)
      {
        NSLog(&cfstr_FoundMultipleM.isa, a2, v12);
      }

      else
      {
        NSLog(&cfstr_UnexpectedErro.isa, a2, v12);
      }
    }
  }
}

- (CGRect)_faceAreaRect
{
  [(PHAsset *)self->_asset faceAreaMinX];
  v4 = v3;
  [(PHAsset *)self->_asset faceAreaMinY];
  v6 = v5;
  [(PHAsset *)self->_asset faceAreaMaxX];
  v8 = v7 - v4;
  [(PHAsset *)self->_asset faceAreaMaxY];
  v10 = v9 - v6;
  v11 = v4;
  v12 = v6;
  v13 = v8;
  result.size.height = v10;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (id)createMetadataWithCompletionHandler:(id)handler
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __59__OKMediaPhotoKitItem_createMetadataWithCompletionHandler___block_invoke;
  v4[3] = &unk_279C8F720;
  v4[4] = self;
  return [(OKMediaItem *)self operationWithBlock:v4 completionHandlerWithObject:handler];
}

uint64_t __59__OKMediaPhotoKitItem_createMetadataWithCompletionHandler___block_invoke(uint64_t a1, void *a2, OKMediaItemMetadata **a3)
{
  if (*MEMORY[0x277D62808] >= 7)
  {
    [MEMORY[0x277D627B8] logMessageWithLevel:7 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Media/PhotoKit/OKMediaPhotoKitItem.m" line:250 andFormat:@"OKMediaPhotoKitItem %@: Creating Metadata", objc_msgSend(*(a1 + 32), "uniqueURL")];
  }

  [*(a1 + 32) _resolveAssetIfNeeded];
  v6 = objc_alloc_init(OKMediaItemMetadata);
  v7 = [*(*(a1 + 32) + 40) mediaType] - 1;
  if (v7 <= 2)
  {
    [(OKMediaItemMetadata *)v6 setType:qword_269F6B0E0[v7]];
  }

  if ([(OKMediaItemMetadata *)v6 type]== 3 || [(OKMediaItemMetadata *)v6 type]== 1)
  {
    [*(*(a1 + 32) + 40) duration];
    [(OKMediaItemMetadata *)v6 setDuration:?];
  }

  v8 = 1;
  if ([*(*(a1 + 32) + 40) isMediaSubtype:1] & 1) != 0 || (v8 = 2, (objc_msgSend(*(*(a1 + 32) + 40), "isMediaSubtype:", 2)) || (v8 = 0x10000, (objc_msgSend(*(*(a1 + 32) + 40), "isMediaSubtype:", 0x10000)) || (v8 = 0x20000, (objc_msgSend(*(*(a1 + 32) + 40), "isMediaSubtype:", 0x20000)) || (v8 = 0x40000, objc_msgSend(*(*(a1 + 32) + 40), "isMediaSubtype:", 0x40000)))
  {
    [(OKMediaItemMetadata *)v6 setSubType:v8];
  }

  [*(a1 + 32) _faceAreaRect];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:1];
  v25.origin.x = v10;
  v25.origin.y = v12;
  v25.size.width = v14;
  v25.size.height = v16;
  [v17 setObject:NSStringFromCGRect(v25) forKeyedSubscript:@"ROI Bounds"];
  -[OKMediaItemMetadata setRegionsOfInterest:](v6, "setRegionsOfInterest:", [MEMORY[0x277CBEB18] arrayWithObject:v17]);
  -[OKMediaItemMetadata setCreationDate:](v6, "setCreationDate:", [*(*(a1 + 32) + 40) creationDate]);
  -[OKMediaItemMetadata setOrientation:](v6, "setOrientation:", [*(*(a1 + 32) + 40) imageOrientation]);
  -[OKMediaItemMetadata setResolution:](v6, "setResolution:", [*(*(a1 + 32) + 40) pixelWidth], objc_msgSend(*(*(a1 + 32) + 40), "pixelHeight"));
  -[OKMediaItemMetadata setUTI:](v6, "setUTI:", [*(*(a1 + 32) + 40) uniformTypeIdentifier]);
  [(OKMediaItemMetadata *)v6 setOpaque:1];
  v18 = [*(*(a1 + 32) + 40) location];
  if (v18)
  {
    v19 = v18;
    [v18 coordinate];
    if (CLLocationCoordinate2DIsValid(v24))
    {
      [v19 coordinate];
      [(OKMediaItemMetadata *)v6 setLatitude:?];
      [v19 coordinate];
      [(OKMediaItemMetadata *)v6 setLongitude:v20];
    }
  }

  if ([(OKMediaItemMetadata *)v6 type]== 3 && [(OKMediaItemMetadata *)v6 subType]== 0x20000)
  {
    v21 = *(a1 + 32);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __59__OKMediaPhotoKitItem_createMetadataWithCompletionHandler___block_invoke_2;
    v23[3] = &unk_279C90F48;
    v23[4] = v6;
    [a2 performSubOperationSynchronously:objc_msgSend(v21 progressBlock:"avAssetWithCompletionHandler:" timeout:{v23), 0, -1}];
  }

  *a3 = v6;
  return [a2 finish];
}

void __59__OKMediaPhotoKitItem_createMetadataWithCompletionHandler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = dispatch_semaphore_create(0);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __59__OKMediaPhotoKitItem_createMetadataWithCompletionHandler___block_invoke_3;
  v6[3] = &unk_279C8E600;
  v6[4] = *(a1 + 32);
  v6[5] = a3;
  v6[6] = v5;
  [a3 loadValuesAsynchronouslyForKeys:&unk_287AF2590 completionHandler:v6];
  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
  if (v5)
  {
    dispatch_release(v5);
  }
}

intptr_t __59__OKMediaPhotoKitItem_createMetadataWithCompletionHandler___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    [v2 duration];
  }

  else
  {
    memset(&time, 0, sizeof(time));
  }

  [*(a1 + 32) setDuration:CMTimeGetSeconds(&time)];
  return dispatch_semaphore_signal(*(a1 + 48));
}

- (id)createThumbnailImageForResolution:(unint64_t)resolution withMetadata:(id)metadata completionHandler:(id)handler
{
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x2020000000;
  v14 = 0;
  v8 = dispatch_semaphore_create(0);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __88__OKMediaPhotoKitItem_createThumbnailImageForResolution_withMetadata_completionHandler___block_invoke;
  v12[3] = &unk_279C90FC0;
  v12[6] = v13;
  v12[7] = resolution;
  v12[4] = self;
  v12[5] = v8;
  v9 = [(OKMediaItem *)self operationWithBlock:v12 completionHandlerWithObject:handler];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __88__OKMediaPhotoKitItem_createThumbnailImageForResolution_withMetadata_completionHandler___block_invoke_6;
  v11[3] = &unk_279C90FE8;
  v11[5] = v13;
  v11[6] = resolution;
  v11[4] = self;
  [v9 setCancelBlock:v11];
  _Block_object_dispose(v13, 8);
  return v9;
}

void __88__OKMediaPhotoKitItem_createThumbnailImageForResolution_withMetadata_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = MEMORY[0x277D62808];
  if (*MEMORY[0x277D62808] >= 7)
  {
    [MEMORY[0x277D627B8] logMessageWithLevel:7 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Media/PhotoKit/OKMediaPhotoKitItem.m" line:362 andFormat:@"OKMediaPhotoKitItem %@: Creating Thumbnail %ld: BEGIN", objc_msgSend(*(a1 + 32), "uniqueURL"), *(a1 + 56)];
  }

  [*(a1 + 32) _resolveAssetIfNeeded];
  v7 = objc_alloc_init(MEMORY[0x277CD98A0]);
  v8 = [MEMORY[0x277CD9898] defaultManager];
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x2020000000;
  v20 = 0;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __88__OKMediaPhotoKitItem_createThumbnailImageForResolution_withMetadata_completionHandler___block_invoke_2;
  v18[3] = &unk_279C90F70;
  v9 = *(a1 + 32);
  v10 = *(a1 + 56);
  v18[6] = v19;
  v18[7] = v10;
  v18[4] = v9;
  v18[5] = a2;
  [v7 setProgressHandler:v18];
  v11 = *(a1 + 56);
  if (v11 == 1)
  {
    if (*v6 >= 7)
    {
      [MEMORY[0x277D627B8] logMessageWithLevel:7 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Media/PhotoKit/OKMediaPhotoKitItem.m" line:383 andFormat:@"OKMediaPhotoKitItem %@: Creating Thumbnail %ld: Preparing for low resolution", objc_msgSend(*(a1 + 32), "uniqueURL"), *(a1 + 56)];
    }

    [v7 setDeliveryMode:2];
    [v7 setResizeMode:2];
    [v7 setNetworkAccessAllowed:0];
    v12 = *(*(a1 + 32) + 40);
    v13 = 128.0;
LABEL_14:
    v17 = v13;
    goto LABEL_15;
  }

  v14 = *v6;
  if (v11 != -1)
  {
    if (v14 >= 7)
    {
      [MEMORY[0x277D627B8] logMessageWithLevel:7 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Media/PhotoKit/OKMediaPhotoKitItem.m" line:449 andFormat:@"OKMediaPhotoKitItem %@: Creating Thumbnail %ld: Preparing for precised resolution", objc_msgSend(*(a1 + 32), "uniqueURL"), *(a1 + 56)];
    }

    [v7 setDeliveryMode:1];
    [v7 setResizeMode:2];
    [v7 setNetworkAccessAllowed:1];
    v13 = *(a1 + 56);
    v12 = *(*(a1 + 32) + 40);
    goto LABEL_14;
  }

  if (v14 >= 7)
  {
    [MEMORY[0x277D627B8] logMessageWithLevel:7 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Media/PhotoKit/OKMediaPhotoKitItem.m" line:416 andFormat:@"OKMediaPhotoKitItem %@: Creating Thumbnail %ld: Preparing for natural resolution", objc_msgSend(*(a1 + 32), "uniqueURL"), *(a1 + 56)];
  }

  [v7 setDeliveryMode:1];
  [v7 setResizeMode:2];
  [v7 setNetworkAccessAllowed:1];
  v12 = *(*(a1 + 32) + 40);
  v15 = [v12 pixelWidth];
  v16 = [*(*(a1 + 32) + 40) pixelHeight];
  v13 = v15;
  v17 = v16;
LABEL_15:
  *(*(*(a1 + 48) + 8) + 24) = [v8 requestImageForAsset:v12 targetSize:0 contentMode:v7 options:v13 resultHandler:v17];
  if (*v6 >= 7)
  {
    [MEMORY[0x277D627B8] logMessageWithLevel:7 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Media/PhotoKit/OKMediaPhotoKitItem.m" line:481 andFormat:@"OKMediaPhotoKitItem %@: Creating Thumbnail %ld: Requesting %ld", objc_msgSend(*(a1 + 32), "uniqueURL"), *(a1 + 56), *(*(*(a1 + 48) + 8) + 24)];
  }

  if (*(*(*(a1 + 48) + 8) + 24))
  {
    dispatch_semaphore_wait(*(a1 + 40), 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    if (*v6 >= 4)
    {
      [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Media/PhotoKit/OKMediaPhotoKitItem.m" line:485 andFormat:@"Failed to process image %@ for resolution %ld: Request failed", objc_msgSend(*(a1 + 32), "uniqueURL"), *(a1 + 56)];
    }

    *a3 = 0;
    [a2 setError:{objc_msgSend(MEMORY[0x277CCA9B8], "errorWithDomain:code:userInfo:", @"OKErrorDomain", -1, 0)}];
  }

  dispatch_release(*(a1 + 40));
  [a2 finish];
  if (*v6 >= 7)
  {
    [MEMORY[0x277D627B8] logMessageWithLevel:7 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Media/PhotoKit/OKMediaPhotoKitItem.m" line:497 andFormat:@"OKMediaPhotoKitItem %@: Creating Thumbnail %ld: END", objc_msgSend(*(a1 + 32), "uniqueURL"), *(a1 + 56)];
  }

  _Block_object_dispose(v19, 8);
}

uint64_t __88__OKMediaPhotoKitItem_createThumbnailImageForResolution_withMetadata_completionHandler___block_invoke_2(uint64_t result, uint64_t a2, double a3)
{
  if (a2)
  {
    v3 = result;
    if ((*(*(*(result + 48) + 8) + 24) & 1) == 0)
    {
      v4 = a3;
      if (*MEMORY[0x277D62808] >= 7)
      {
        [MEMORY[0x277D627B8] logMessageWithLevel:7 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Media/PhotoKit/OKMediaPhotoKitItem.m" line:375 andFormat:@"OKMediaPhotoKitItem %@: Creating Thumbnail %ld: Progress %lf", objc_msgSend(*(result + 32), "uniqueURL"), *(result + 56), *&a3];
      }

      v5 = *(v3 + 40);

      *&a3 = v4;
      return [v5 setProgress:a3];
    }
  }

  return result;
}

intptr_t __88__OKMediaPhotoKitItem_createThumbnailImageForResolution_withMetadata_completionHandler___block_invoke_3(intptr_t result, uint64_t a2, uint64_t a3)
{
  if ((*(*(*(result + 56) + 8) + 24) & 1) == 0)
  {
    v6 = result;
    if (([*(result + 32) isCancelled] & 1) == 0)
    {
      v7 = *MEMORY[0x277D62808];
      if (a2)
      {
        if (v7 >= 7)
        {
          [MEMORY[0x277D627B8] logMessageWithLevel:7 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Media/PhotoKit/OKMediaPhotoKitItem.m" line:396 andFormat:@"OKMediaPhotoKitItem %@: Creating Thumbnail %ld: Result %@", objc_msgSend(*(v6 + 40), "uniqueURL"), *(v6 + 64), a2];
        }

        **(v6 + 72) = [OKMediaImage mediaImageWithUIImage:a2];
      }

      else
      {
        if (v7 >= 4)
        {
          [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Media/PhotoKit/OKMediaPhotoKitItem.m" line:402 andFormat:@"Failed to process image %@ for resolution %ld: %@", objc_msgSend(*(v6 + 40), "uniqueURL"), *(v6 + 64), a3];
        }

        **(v6 + 72) = 0;
        [*(v6 + 32) setError:{objc_msgSend(MEMORY[0x277CCA9B8], "errorWithDomain:code:userInfo:", @"OKErrorDomain", -1, 0)}];
      }
    }

    *(*(*(v6 + 56) + 8) + 24) = 1;
    v8 = *(v6 + 48);

    return dispatch_semaphore_signal(v8);
  }

  return result;
}

intptr_t __88__OKMediaPhotoKitItem_createThumbnailImageForResolution_withMetadata_completionHandler___block_invoke_4(intptr_t result, uint64_t a2, uint64_t a3)
{
  if ((*(*(*(result + 56) + 8) + 24) & 1) == 0)
  {
    v6 = result;
    if (([*(result + 32) isCancelled] & 1) == 0)
    {
      v7 = *MEMORY[0x277D62808];
      if (a2)
      {
        if (v7 >= 7)
        {
          [MEMORY[0x277D627B8] logMessageWithLevel:7 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Media/PhotoKit/OKMediaPhotoKitItem.m" line:429 andFormat:@"OKMediaPhotoKitItem %@: Creating Thumbnail %ld: Result %@", objc_msgSend(*(v6 + 40), "uniqueURL"), *(v6 + 64), a2];
        }

        **(v6 + 72) = [OKMediaImage mediaImageWithUIImage:a2];
      }

      else
      {
        if (v7 >= 4)
        {
          [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Media/PhotoKit/OKMediaPhotoKitItem.m" line:435 andFormat:@"Failed to process image %@ for resolution %ld: %@", objc_msgSend(*(v6 + 40), "uniqueURL"), *(v6 + 64), a3];
        }

        **(v6 + 72) = 0;
        [*(v6 + 32) setError:{objc_msgSend(MEMORY[0x277CCA9B8], "errorWithDomain:code:userInfo:", @"OKErrorDomain", -1, 0)}];
      }
    }

    *(*(*(v6 + 56) + 8) + 24) = 1;
    v8 = *(v6 + 48);

    return dispatch_semaphore_signal(v8);
  }

  return result;
}

intptr_t __88__OKMediaPhotoKitItem_createThumbnailImageForResolution_withMetadata_completionHandler___block_invoke_5(intptr_t result, uint64_t a2, uint64_t a3)
{
  if ((*(*(*(result + 56) + 8) + 24) & 1) == 0)
  {
    v6 = result;
    if (([*(result + 32) isCancelled] & 1) == 0)
    {
      v7 = *MEMORY[0x277D62808];
      if (a2)
      {
        if (v7 >= 7)
        {
          [MEMORY[0x277D627B8] logMessageWithLevel:7 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Media/PhotoKit/OKMediaPhotoKitItem.m" line:462 andFormat:@"OKMediaPhotoKitItem %@: Creating Thumbnail %ld: Result %@", objc_msgSend(*(v6 + 40), "uniqueURL"), *(v6 + 64), a2];
        }

        **(v6 + 72) = [OKMediaImage mediaImageWithUIImage:a2];
      }

      else
      {
        if (v7 >= 4)
        {
          [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Media/PhotoKit/OKMediaPhotoKitItem.m" line:468 andFormat:@"Failed to process image %@ for resolution %ld: %@", objc_msgSend(*(v6 + 40), "uniqueURL"), *(v6 + 64), a3];
        }

        **(v6 + 72) = 0;
        [*(v6 + 32) setError:{objc_msgSend(MEMORY[0x277CCA9B8], "errorWithDomain:code:userInfo:", @"OKErrorDomain", -1, 0)}];
      }
    }

    *(*(*(v6 + 56) + 8) + 24) = 1;
    v8 = *(v6 + 48);

    return dispatch_semaphore_signal(v8);
  }

  return result;
}

uint64_t __88__OKMediaPhotoKitItem_createThumbnailImageForResolution_withMetadata_completionHandler___block_invoke_6(uint64_t result)
{
  v1 = result;
  if (*MEMORY[0x277D62808] >= 7)
  {
    result = [MEMORY[0x277D627B8] logMessageWithLevel:7 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Media/PhotoKit/OKMediaPhotoKitItem.m" line:502 andFormat:@"OKMediaPhotoKitItem %@: Creating Thumbnail %ld: Cancelling %ld", objc_msgSend(*(result + 32), "uniqueURL"), *(result + 48), *(*(*(result + 40) + 8) + 24)];
  }

  if (*(*(*(v1 + 40) + 8) + 24))
  {
    v2 = [MEMORY[0x277CD9898] defaultManager];
    v3 = *(*(*(v1 + 40) + 8) + 24);

    return [v2 cancelImageRequest:v3];
  }

  return result;
}

- (id)importMediaToDirectoryURL:(id)l completionHandler:(id)handler
{
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x2020000000;
  v9 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __67__OKMediaPhotoKitItem_importMediaToDirectoryURL_completionHandler___block_invoke;
  v7[3] = &unk_279C91060;
  v7[4] = self;
  v7[5] = l;
  v7[6] = v8;
  v4 = [(OKMediaItem *)self operationWithBlock:v7 completionHandlerWithObject:handler];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __67__OKMediaPhotoKitItem_importMediaToDirectoryURL_completionHandler___block_invoke_4;
  v6[3] = &unk_279C91088;
  v6[4] = v8;
  [v4 setCancelBlock:v6];
  _Block_object_dispose(v8, 8);
  return v4;
}

void __67__OKMediaPhotoKitItem_importMediaToDirectoryURL_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  [*(a1 + 32) _resolveAssetIfNeeded];
  [*(*(a1 + 32) + 40) uniformTypeIdentifier];
  v6 = objc_alloc_init(MEMORY[0x277CCAA00]);
  v16 = 0;
  if ([v6 fileExistsAtPath:{objc_msgSend(*(a1 + 40), "path")}] & 1) != 0 || (objc_msgSend(v6, "createDirectoryAtURL:withIntermediateDirectories:attributes:error:", *(a1 + 40), 1, 0, &v16))
  {
    v7 = [v6 incrementalURLInDirectory:*(a1 + 40) withFilename:objc_msgSend(MEMORY[0x277CCACA8] andExtension:{"generateUUID"), OFUTTypeExtensionForUTI()}];

    v8 = [*(*(a1 + 32) + 40) mediaType];
    if (v8 == 1)
    {
      v9 = objc_alloc_init(MEMORY[0x277CD98A0]);
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __67__OKMediaPhotoKitItem_importMediaToDirectoryURL_completionHandler___block_invoke_2;
      v15[3] = &unk_279C91010;
      v15[4] = a2;
      [v9 setProgressHandler:v15];
      [v9 setDeliveryMode:1];
      v10 = [MEMORY[0x277CD9898] defaultManager];
      v11 = *(*(a1 + 32) + 40);
      v12 = [v11 pixelWidth];
      v13 = [*(*(a1 + 32) + 40) pixelHeight];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __67__OKMediaPhotoKitItem_importMediaToDirectoryURL_completionHandler___block_invoke_3;
      v14[3] = &unk_279C91038;
      v14[5] = a2;
      v14[6] = a3;
      v14[4] = v7;
      *(*(*(a1 + 48) + 8) + 24) = [v10 requestImageForAsset:v11 targetSize:0 contentMode:v9 options:v14 resultHandler:{v12, v13}];
      if (*(*(*(a1 + 48) + 8) + 24))
      {
        return;
      }
    }

    else if ((v8 & 0xFFFFFFFFFFFFFFFELL) == 2 && *MEMORY[0x277D62808] >= 4)
    {
      [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Media/PhotoKit/OKMediaPhotoKitItem.m" line:588 andFormat:@"TODO: Import of video"];
    }

    *a3 = 0;
    [a2 setError:{objc_msgSend(MEMORY[0x277CCA9B8], "errorWithDomain:code:userInfo:", @"OKErrorDomain", -1, 0)}];
    [a2 finish];
  }

  else
  {
    *a3 = 0;
    if (!v16)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:@"OKErrorDomain" code:-1 userInfo:0];
    }

    [a2 setError:?];
    [a2 finish];
  }
}

uint64_t __67__OKMediaPhotoKitItem_importMediaToDirectoryURL_completionHandler___block_invoke_2(uint64_t a1, double a2, uint64_t a3, _BYTE *a4)
{
  *&a2 = a2;
  [*(a1 + 32) setProgress:a2];
  result = [*(a1 + 32) isCancelled];
  *a4 = result;
  return result;
}

uint64_t __67__OKMediaPhotoKitItem_importMediaToDirectoryURL_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  if (a2 && ([a2 CGImage], (OFCGImageSaveJPEGToURL() & 1) != 0))
  {
    **(a1 + 48) = *(a1 + 32);
    v3 = (a1 + 40);
  }

  else
  {
    **(a1 + 48) = 0;
    v4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"OKErrorDomain" code:-1 userInfo:0];
    v5 = *(a1 + 40);
    v3 = (a1 + 40);
    [v5 setError:v4];
  }

  v6 = *v3;

  return [v6 finish];
}

uint64_t __67__OKMediaPhotoKitItem_importMediaToDirectoryURL_completionHandler___block_invoke_4(uint64_t a1)
{
  v2 = [MEMORY[0x277CD9898] defaultManager];
  v3 = *(*(*(a1 + 32) + 8) + 24);

  return [v2 cancelImageRequest:v3];
}

- (id)avAssetWithCompletionHandler:(id)handler
{
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x2020000000;
  v11 = 0;
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x3052000000;
  v9[3] = __Block_byref_object_copy__7;
  v9[4] = __Block_byref_object_dispose__7;
  v9[5] = dispatch_semaphore_create(0);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __52__OKMediaPhotoKitItem_avAssetWithCompletionHandler___block_invoke;
  v8[3] = &unk_279C91100;
  v8[4] = self;
  v8[5] = v10;
  v8[6] = v9;
  v5 = [(OKMediaItem *)self operationWithBlock:v8 completionHandlerWithObject:handler];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__OKMediaPhotoKitItem_avAssetWithCompletionHandler___block_invoke_4;
  v7[3] = &unk_279C91088;
  v7[4] = v10;
  [v5 setCancelBlock:v7];
  _Block_object_dispose(v9, 8);
  _Block_object_dispose(v10, 8);
  return v5;
}

void __52__OKMediaPhotoKitItem_avAssetWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  [*(a1 + 32) _resolveAssetIfNeeded];
  v6 = objc_alloc_init(MEMORY[0x277CD9A00]);
  v7 = [MEMORY[0x277CD9898] defaultManager];
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x2020000000;
  v13 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __52__OKMediaPhotoKitItem_avAssetWithCompletionHandler___block_invoke_2;
  v11[3] = &unk_279C910B0;
  v11[4] = a2;
  v11[5] = v12;
  [v6 setProgressHandler:v11];
  [v6 setDeliveryMode:0];
  [v6 setVersion:0];
  [v6 setNetworkAccessAllowed:1];
  [v6 setResultHandlerQueue:{objc_msgSend(objc_opt_class(), "_resultHandlingQueue")}];
  v8 = *(*(a1 + 32) + 40);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __52__OKMediaPhotoKitItem_avAssetWithCompletionHandler___block_invoke_3;
  v10[3] = &unk_279C910D8;
  v10[4] = a2;
  v10[5] = v12;
  v10[6] = *(a1 + 48);
  v10[7] = a3;
  *(*(*(a1 + 40) + 8) + 24) = [v7 requestPlayerItemForVideo:v8 options:v6 resultHandler:v10];
  if (*(*(*(a1 + 40) + 8) + 24))
  {
    dispatch_semaphore_wait(*(*(*(a1 + 48) + 8) + 40), 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    *a3 = 0;
    [a2 setError:{objc_msgSend(MEMORY[0x277CCA9B8], "errorWithDomain:code:userInfo:", @"OKErrorDomain", -1, 0)}];
  }

  v9 = *(*(*(a1 + 48) + 8) + 40);
  if (v9)
  {
    dispatch_release(v9);
    *(*(*(a1 + 48) + 8) + 40) = 0;
  }

  [a2 finish];
  _Block_object_dispose(v12, 8);
}

uint64_t __52__OKMediaPhotoKitItem_avAssetWithCompletionHandler___block_invoke_2(uint64_t result, uint64_t a2, double a3)
{
  if (a2)
  {
    if ((*(*(*(result + 40) + 8) + 24) & 1) == 0)
    {
      *&a3 = a3;
      return [*(result + 32) setProgress:a3];
    }
  }

  return result;
}

intptr_t __52__OKMediaPhotoKitItem_avAssetWithCompletionHandler___block_invoke_3(intptr_t result, void *a2)
{
  if ((*(*(*(result + 40) + 8) + 24) & 1) == 0)
  {
    v4 = result;
    if (([*(result + 32) isCancelled] & 1) == 0)
    {
      if (a2)
      {
        **(v4 + 56) = [a2 asset];
      }

      else
      {
        **(v4 + 56) = 0;
        [*(v4 + 32) setError:{objc_msgSend(MEMORY[0x277CCA9B8], "errorWithDomain:code:userInfo:", @"OKErrorDomain", -1, 0)}];
      }
    }

    *(*(*(v4 + 40) + 8) + 24) = 1;
    v5 = *(*(*(v4 + 48) + 8) + 40);

    return dispatch_semaphore_signal(v5);
  }

  return result;
}

uint64_t __52__OKMediaPhotoKitItem_avAssetWithCompletionHandler___block_invoke_4(uint64_t result)
{
  if (*(*(*(result + 32) + 8) + 24))
  {
    v1 = result;
    v2 = [MEMORY[0x277CD9898] defaultManager];
    v3 = *(*(*(v1 + 32) + 8) + 24);

    return [v2 cancelImageRequest:v3];
  }

  return result;
}

uint64_t __56__OKMediaPhotoKitItem_resourceURLWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  if (*MEMORY[0x277D62808] >= 4)
  {
    [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Media/PhotoKit/OKMediaPhotoKitItem.m" line:700 andFormat:@"This is not compatible with PhotoKit, use AVFoundation object for videos instead"];
  }

  return [a2 finish];
}

+ (id)_resultHandlingQueue
{
  if (_resultHandlingQueue_onceToken != -1)
  {
    +[OKMediaPhotoKitItem _resultHandlingQueue];
  }

  return _resultHandlingQueue_resultHandlingQueue;
}

dispatch_queue_t __43__OKMediaPhotoKitItem__resultHandlingQueue__block_invoke()
{
  v0 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  result = dispatch_queue_create("OKMediaPhotoKitItem.resultHandlingQueue", v0);
  _resultHandlingQueue_resultHandlingQueue = result;
  return result;
}

@end