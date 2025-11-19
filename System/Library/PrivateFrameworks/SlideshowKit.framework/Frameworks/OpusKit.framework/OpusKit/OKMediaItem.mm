@interface OKMediaItem
+ (id)scheme;
- (BOOL)hasDiskCachedMetadata:(id *)a3;
- (BOOL)hasDiskCachedThumbnailImage:(id *)a3 forResolution:(unint64_t)a4;
- (BOOL)isEqual:(id)a3;
- (OKMediaItem)initWithUniqueURL:(id)a3;
- (id)_resourcesDiskCacheManager;
- (id)avAsset;
- (id)avAssetWithCompletionHandler:(id)a3;
- (id)createMetadataWithCompletionHandler:(id)a3;
- (id)createThumbnailImageForResolution:(unint64_t)a3 withMetadata:(id)a4 completionHandler:(id)a5;
- (id)detectRegionsOfInterestWithCompletionHandler:(id)a3 force:(BOOL)a4 cache:(BOOL)a5 colorSpace:(id)a6;
- (id)diskCachedMetadata;
- (id)diskCachedThumbnailImageForResolution:(unint64_t)a3;
- (id)importMediaToDirectoryURL:(id)a3 completionHandler:(id)a4;
- (id)memoryCachedMetadata;
- (id)memoryCachedThumbnailImageForResolution:(unint64_t)a3;
- (id)metadataWithCompletionHandler:(id)a3 force:(BOOL)a4 cache:(BOOL)a5;
- (id)metadataWithProgress:(id)a3 error:(id *)a4;
- (id)operationWithBlock:(id)a3 completionHandlerWithObject:(id)a4;
- (id)prepareCaches:(BOOL)a3 colorSpace:(id)a4 withCompletionHandler:(id)a5;
- (id)regionsOfInterestWithColorSpace:(id)a3;
- (id)resourceURL;
- (id)resourceURLWithCompletionHandler:(id)a3;
- (id)thumbnailImageForResolution:(unint64_t)a3 aspectRatio:(double)a4 scale:(double)a5 quality:(double)a6 colorSpace:(id)a7;
- (id)thumbnailImageForResolution:(unint64_t)a3 aspectRatio:(double)a4 scale:(double)a5 quality:(double)a6 colorSpace:(id)a7 completionHandler:(id)a8 force:(BOOL)a9 cache:(BOOL)a10;
- (id)uniquePath;
- (void)dealloc;
- (void)invalidate;
- (void)invalidateDiskCachedMetadata;
- (void)invalidateDiskCachedThumbnailImages;
- (void)invalidateMemoryCachedMetadata;
- (void)invalidateMemoryCachedThumbnailImages;
- (void)setDiskCachedMetadata:(id)a3;
- (void)setDiskCachedThumbnailImage:(id)a3 forResolution:(unint64_t)a4;
- (void)setMemoryCachedMetadata:(id)a3;
- (void)setMemoryCachedThumbnailImage:(id)a3 forResolution:(unint64_t)a4;
@end

@implementation OKMediaItem

+ (id)scheme
{
  if (*MEMORY[0x277D62808] >= 4)
  {
    v3 = MEMORY[0x277D627B8];
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    [v3 logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Media/OKMediaItem.m" line:51 andFormat:@"%@ %@ MUST be subclassed and cannot be called directly from abstract class", v5, NSStringFromSelector(a2)];
  }

  return 0;
}

- (OKMediaItem)initWithUniqueURL:(id)a3
{
  v4 = [(OKMediaItem *)self init];
  v5 = v4;
  if (v4)
  {
    objc_storeWeak(&v4->_presentation, 0);
    v6 = [a3 copy];
    v5->_uniqueURL = v6;
    v7 = [objc_msgSend(MEMORY[0x277CCACA8] normalizeString:{-[NSURL absoluteString](v6, "absoluteString")), "copy"}];
    v5->_uniqueURLNormalisedString = v7;
    v5->_uniqueURLHash = [(NSString *)v7 hash];
  }

  return v5;
}

- (void)dealloc
{
  objc_storeWeak(&self->_presentation, 0);
  uniqueURL = self->_uniqueURL;
  if (uniqueURL)
  {

    self->_uniqueURL = 0;
  }

  uniqueURLNormalisedString = self->_uniqueURLNormalisedString;
  if (uniqueURLNormalisedString)
  {

    self->_uniqueURLNormalisedString = 0;
  }

  v5.receiver = self;
  v5.super_class = OKMediaItem;
  [(OKMediaItem *)&v5 dealloc];
}

- (BOOL)isEqual:(id)a3
{
  v5 = [(OKMediaItem *)self hash];
  if (v5 != [a3 hash])
  {
    return 0;
  }

  uniqueURLNormalisedString = self->_uniqueURLNormalisedString;
  v7 = [a3 uniqueURLNormalisedString];

  return [(NSString *)uniqueURLNormalisedString isEqual:v7];
}

- (id)uniquePath
{
  uniqueURL = self->_uniqueURL;
  if ([(NSURL *)uniqueURL host]&& [(NSURL *)uniqueURL path])
  {
    return [MEMORY[0x277CCACA8] stringWithFormat:@"%@/%@/%@", objc_msgSend(objc_opt_class(), "scheme"), -[NSURL host](uniqueURL, "host"), -[NSString sha1HashString](-[NSURL relativeString](uniqueURL, "relativeString"), "sha1HashString")];
  }

  else
  {
    return [MEMORY[0x277CCACA8] stringWithFormat:@"%@/%@", objc_msgSend(objc_opt_class(), "scheme"), -[NSString sha1HashString](-[NSURL relativeString](uniqueURL, "relativeString"), "sha1HashString"), v4];
  }
}

- (id)operationWithBlock:(id)a3 completionHandlerWithObject:(id)a4
{
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x3052000000;
  v8[3] = __Block_byref_object_copy__2;
  v8[4] = __Block_byref_object_dispose__2;
  v8[5] = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __62__OKMediaItem_operationWithBlock_completionHandlerWithObject___block_invoke;
  v7[3] = &unk_279C8F548;
  v7[4] = a3;
  v7[5] = v8;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __62__OKMediaItem_operationWithBlock_completionHandlerWithObject___block_invoke_2;
  v6[3] = &unk_279C8F548;
  v6[4] = a4;
  v6[5] = v8;
  v4 = [MEMORY[0x277D627C0] blockOperationWithExecutionBlock:v7 finishBlock:v6 andFinishDelegate:0];
  _Block_object_dispose(v8, 8);
  return v4;
}

void __62__OKMediaItem_operationWithBlock_completionHandlerWithObject___block_invoke_2(uint64_t a1, void *a2)
{
  if (*(a1 + 32))
  {
    v4 = [a2 hasSucceeded];
    v5 = *(a1 + 32);
    if (v4)
    {
      (*(v5 + 16))(*(a1 + 32), a2, *(*(*(a1 + 40) + 8) + 40), 0);
    }

    else
    {
      (*(v5 + 16))(v5, a2, 0, [a2 error]);
    }
  }

  v6 = *(*(*(a1 + 40) + 8) + 40);
  if (v6)
  {

    *(*(*(a1 + 40) + 8) + 40) = 0;
  }
}

- (void)invalidate
{
  [(OKPresentation *)[(OKMediaItem *)self presentation] _invalidateMemoryCachedMediaItem:self];
  [(OKMediaItem *)self invalidateDiskCachedMetadata];
  [(OKMediaItem *)self invalidateDiskCachedThumbnailImages];
  [(OKMediaItem *)self invalidateMemoryCachedMetadata];

  [(OKMediaItem *)self invalidateMemoryCachedThumbnailImages];
}

- (id)metadataWithCompletionHandler:(id)a3 force:(BOOL)a4 cache:(BOOL)a5
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __57__OKMediaItem_metadataWithCompletionHandler_force_cache___block_invoke;
  v6[3] = &unk_279C8F598;
  v7 = a4;
  v6[4] = self;
  v8 = a5;
  return [(OKMediaItem *)self operationWithBlock:v6 completionHandlerWithObject:a3];
}

void __57__OKMediaItem_metadataWithCompletionHandler_force_cache___block_invoke(uint64_t a1, void *a2, void *a3)
{
  if ([a2 shouldContinue])
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x3052000000;
    v16 = __Block_byref_object_copy__2;
    v17 = __Block_byref_object_dispose__2;
    v18 = 0;
    if ((*(a1 + 40) & 1) != 0 || (v11 = [*(a1 + 32) memoryCachedMetadata], (v14[5] = v11) == 0))
    {
      if ([a2 shouldContinue])
      {
        if ((*(a1 + 40) & 1) == 0)
        {
          v11 = [*(a1 + 32) diskCachedMetadata];
          v14[5] = v11;
          if (v11)
          {
            if (*(a1 + 41) == 1)
            {
              [*(a1 + 32) setMemoryCachedMetadata:v11];
              v11 = v14[5];
            }

            goto LABEL_15;
          }
        }

        if ([a2 shouldContinue])
        {
          v6 = *(a1 + 32);
          v12[0] = MEMORY[0x277D85DD0];
          v12[1] = 3221225472;
          v12[2] = __57__OKMediaItem_metadataWithCompletionHandler_force_cache___block_invoke_2;
          v12[3] = &unk_279C8F570;
          v12[4] = &v13;
          v7 = [v6 createMetadataWithCompletionHandler:v12];
          v8 = [a2 performSubOperationSynchronously:v7 progressBlock:0 timeout:{dispatch_time(0xFFFFFFFFFFFFFFFFLL, 0)}];
          v9 = v14;
          v10 = v14[5];
          if (v8)
          {
            if (v10)
            {
              *a3 = v10;
              if (*(a1 + 41) == 1)
              {
                [*(a1 + 32) setMemoryCachedMetadata:v9[5]];
                [*(a1 + 32) setDiskCachedMetadata:v14[5]];
              }
            }
          }

          else
          {
            if (v10)
            {

              v14[5] = 0;
            }

            [a2 setError:{objc_msgSend(v7, "error")}];
            *a3 = 0;
          }

          [a2 finish];
          goto LABEL_16;
        }
      }

      v11 = 0;
    }

LABEL_15:
    *a3 = v11;
    [a2 finish];
LABEL_16:
    _Block_object_dispose(&v13, 8);
    return;
  }

  *a3 = 0;

  [a2 finish];
}

id __57__OKMediaItem_metadataWithCompletionHandler_force_cache___block_invoke_2(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  result = [a2 isCancelled];
  if (a3 && !a4 && !result)
  {
    result = a3;
    *(*(*(a1 + 32) + 8) + 40) = result;
  }

  return result;
}

- (id)metadataWithProgress:(id)a3 error:(id *)a4
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x3052000000;
  v21 = __Block_byref_object_copy__2;
  v22 = __Block_byref_object_dispose__2;
  v23 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3052000000;
  v15 = __Block_byref_object_copy__2;
  v16 = __Block_byref_object_dispose__2;
  v17 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __42__OKMediaItem_metadataWithProgress_error___block_invoke;
  v11[3] = &unk_279C8F5C0;
  v11[4] = &v18;
  v11[5] = &v12;
  v6 = [(OKMediaItem *)self metadataWithCompletionHandler:v11 force:0 cache:1];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __42__OKMediaItem_metadataWithProgress_error___block_invoke_2;
  v10[3] = &unk_279C8E868;
  v10[4] = a3;
  if ([v6 performSynchronously:v10])
  {
    v7 = v19[5];
  }

  else
  {
    if (a4)
    {
      *a4 = v13[5];
    }

    v8 = v19[5];
    if (v8)
    {

      v7 = 0;
      v19[5] = 0;
    }

    else
    {
      v7 = 0;
    }
  }

  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v18, 8);
  return v7;
}

uint64_t __42__OKMediaItem_metadataWithProgress_error___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  result = [a2 isCancelled];
  if ((result & 1) != 0 || (result = [a2 error]) != 0)
  {
    if (!a4)
    {
      return result;
    }

    a3 = [a2 error];
    v9 = 40;
  }

  else
  {
    v9 = 32;
  }

  result = a3;
  *(*(*(a1 + v9) + 8) + 40) = result;
  return result;
}

uint64_t __42__OKMediaItem_metadataWithProgress_error___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a3);
  }

  return result;
}

- (id)thumbnailImageForResolution:(unint64_t)a3 aspectRatio:(double)a4 scale:(double)a5 quality:(double)a6 colorSpace:(id)a7 completionHandler:(id)a8 force:(BOOL)a9 cache:(BOOL)a10
{
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __110__OKMediaItem_thumbnailImageForResolution_aspectRatio_scale_quality_colorSpace_completionHandler_force_cache___block_invoke;
  v11[3] = &unk_279C8F638;
  v11[5] = a7;
  v11[6] = a3;
  *&v11[7] = a4;
  *&v11[8] = a5;
  *&v11[9] = a6;
  v12 = a9;
  v13 = a10;
  v11[4] = self;
  return [(OKMediaItem *)self operationWithBlock:v11 completionHandlerWithObject:a8];
}

void __110__OKMediaItem_thumbnailImageForResolution_aspectRatio_scale_quality_colorSpace_completionHandler_force_cache___block_invoke(uint64_t a1, void *a2, uint64_t *a3)
{
  if ([a2 shouldContinue])
  {
    v43 = 0;
    v44 = &v43;
    v45 = 0x3052000000;
    v46 = __Block_byref_object_copy__2;
    v47 = __Block_byref_object_dispose__2;
    v48 = 0;
    v39 = 0;
    v40 = &v39;
    v41 = 0x2020000000;
    v6 = *(a1 + 48);
    v42 = v6;
    if (v6 != -1 && v6 != 1)
    {
      v7 = *(a1 + 32);
      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = __110__OKMediaItem_thumbnailImageForResolution_aspectRatio_scale_quality_colorSpace_completionHandler_force_cache___block_invoke_2;
      v36[3] = &unk_279C8F5E8;
      v36[6] = v6;
      v36[4] = &v43;
      v36[5] = &v39;
      v37 = *(a1 + 56);
      v38 = *(a1 + 72);
      v8 = [v7 metadataWithCompletionHandler:v36 force:*(a1 + 80) cache:*(a1 + 81)];
      if (([a2 performSubOperationSynchronously:v8 progressBlock:0 timeout:{dispatch_time(0xFFFFFFFFFFFFFFFFLL, 0)}] & 1) == 0)
      {
        v21 = v44[5];
        if (v21)
        {

          v44[5] = 0;
        }

        *a3 = 0;
        [a2 setError:{objc_msgSend(v8, "error")}];
        [a2 finish];
        goto LABEL_35;
      }
    }

    if ((*(a1 + 80) & 1) == 0)
    {
      v19 = [*(a1 + 32) memoryCachedThumbnailImageForResolution:v40[3]];
      if (v19)
      {
        v20 = v44[5];
        if (!v20)
        {
LABEL_34:
          *a3 = v19;
          [a2 finish];
LABEL_35:
          _Block_object_dispose(&v39, 8);
          _Block_object_dispose(&v43, 8);
          return;
        }

LABEL_25:
        v44[5] = 0;
        goto LABEL_34;
      }
    }

    v9 = [a2 shouldContinue];
    v10 = v44[5];
    if ((v9 & 1) == 0)
    {
      if (!v10)
      {
LABEL_33:
        v19 = 0;
        goto LABEL_34;
      }

LABEL_21:

      v19 = 0;
      goto LABEL_25;
    }

    if (v10)
    {
LABEL_8:
      if ((*(a1 + 80) & 1) == 0)
      {
        if ([*(a1 + 32) diskCachedThumbnailImageForResolution:v40[3]])
        {
          [v44[5] opaque];
          v19 = OFCGImageDecompressImage();
          if (v19)
          {
            if (*(a1 + 81) == 1)
            {
              [*(a1 + 32) setMemoryCachedThumbnailImage:v19 forResolution:v40[3]];
            }

            v26 = v44[5];
            if (v26)
            {

              v44[5] = 0;
            }

            goto LABEL_34;
          }
        }
      }

      if ([a2 shouldContinue])
      {
        v29 = 0;
        v30 = &v29;
        v31 = 0x3052000000;
        v32 = __Block_byref_object_copy__2;
        v33 = __Block_byref_object_dispose__2;
        v34 = 0;
        v11 = *(a1 + 32);
        v12 = v40[3];
        v13 = v44[5];
        v28[0] = MEMORY[0x277D85DD0];
        v28[1] = 3221225472;
        v28[2] = __110__OKMediaItem_thumbnailImageForResolution_aspectRatio_scale_quality_colorSpace_completionHandler_force_cache___block_invoke_4;
        v28[3] = &unk_279C8F610;
        v28[4] = &v29;
        v14 = [v11 createThumbnailImageForResolution:v12 withMetadata:v13 completionHandler:v28];
        v15 = [a2 performSubOperationSynchronously:v14 progressBlock:0 timeout:{dispatch_time(0xFFFFFFFFFFFFFFFFLL, 0)}];
        v16 = v30[5];
        if (v15)
        {
          if (v16)
          {
            v17 = [v16 createComposedImage:objc_msgSend(v44[5] colorSpace:{"opaque"), *(a1 + 40)}];
            v18 = v30[5];
            if (v18)
            {

              v30[5] = 0;
            }

            if (v17)
            {
              *a3 = v17;
              if (*(a1 + 81) == 1)
              {
                [*(a1 + 32) setMemoryCachedThumbnailImage:v17 forResolution:v40[3]];
                [*(a1 + 32) setDiskCachedThumbnailImage:v17 forResolution:v40[3]];
              }
            }
          }
        }

        else
        {
          if (v16)
          {

            v30[5] = 0;
          }

          *a3 = 0;
          [a2 setError:{objc_msgSend(v14, "error")}];
        }

        v27 = v44[5];
        if (v27)
        {

          v44[5] = 0;
        }

        [a2 finish];
        _Block_object_dispose(&v29, 8);
        goto LABEL_35;
      }

      v10 = v44[5];
      if (!v10)
      {
        goto LABEL_33;
      }

      goto LABEL_21;
    }

    v22 = *(a1 + 32);
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __110__OKMediaItem_thumbnailImageForResolution_aspectRatio_scale_quality_colorSpace_completionHandler_force_cache___block_invoke_3;
    v35[3] = &unk_279C8F570;
    v35[4] = &v43;
    v23 = [v22 metadataWithCompletionHandler:v35 force:*(a1 + 80) cache:*(a1 + 81)];
    v24 = [a2 performSubOperationSynchronously:v23 progressBlock:0 timeout:{dispatch_time(0xFFFFFFFFFFFFFFFFLL, 0)}];
    v25 = v44[5];
    if (v24)
    {
      if (v25)
      {
        goto LABEL_8;
      }
    }

    else if (v25)
    {

      v44[5] = 0;
    }

    *a3 = 0;
    [a2 setError:{objc_msgSend(v23, "error")}];
    [a2 finish];
    goto LABEL_35;
  }

  *a3 = 0;

  [a2 finish];
}

uint64_t __110__OKMediaItem_thumbnailImageForResolution_aspectRatio_scale_quality_colorSpace_completionHandler_force_cache___block_invoke_2(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  result = [a2 isCancelled];
  if (a3 && !a4 && !result)
  {
    *(*(*(a1 + 32) + 8) + 40) = a3;
    v8 = *(a1 + 56);
    v9 = *(a1 + 48);
    if (v8 == 1.0)
    {
      v10 = *(a1 + 48);
    }

    else if (v8 <= 1.0)
    {
      v10 = v8 * v9;
    }

    else
    {
      v10 = *(a1 + 48);
      v9 = v9 / v8;
    }

    result = [a3 bestResolutionForSize:v10 scale:v9 quality:{*(a1 + 64), *(a1 + 72)}];
    *(*(*(a1 + 40) + 8) + 24) = result;
  }

  return result;
}

id __110__OKMediaItem_thumbnailImageForResolution_aspectRatio_scale_quality_colorSpace_completionHandler_force_cache___block_invoke_3(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  result = [a2 isCancelled];
  if (a3 && !a4 && !result)
  {
    result = a3;
    *(*(*(a1 + 32) + 8) + 40) = result;
  }

  return result;
}

id __110__OKMediaItem_thumbnailImageForResolution_aspectRatio_scale_quality_colorSpace_completionHandler_force_cache___block_invoke_4(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  result = [a2 isCancelled];
  if (a3 && !a4 && !result)
  {
    result = a3;
    *(*(*(a1 + 32) + 8) + 40) = result;
  }

  return result;
}

- (id)thumbnailImageForResolution:(unint64_t)a3 aspectRatio:(double)a4 scale:(double)a5 quality:(double)a6 colorSpace:(id)a7
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3052000000;
  v15 = __Block_byref_object_copy__2;
  v16 = __Block_byref_object_dispose__2;
  v17 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __80__OKMediaItem_thumbnailImageForResolution_aspectRatio_scale_quality_colorSpace___block_invoke;
  v11[3] = &unk_279C8EC30;
  v11[4] = &v12;
  v7 = [-[OKMediaItem thumbnailImageForResolution:aspectRatio:scale:quality:colorSpace:completionHandler:force:cache:](self thumbnailImageForResolution:a3 aspectRatio:a7 scale:v11 quality:0 colorSpace:1 completionHandler:a4 force:a5 cache:{a6), "performSynchronously"}];
  v8 = v13[5];
  if (v7)
  {
    v9 = v8;
  }

  else if (v8)
  {

    v9 = 0;
    v13[5] = 0;
  }

  else
  {
    v9 = 0;
  }

  _Block_object_dispose(&v12, 8);
  return v9;
}

uint64_t __80__OKMediaItem_thumbnailImageForResolution_aspectRatio_scale_quality_colorSpace___block_invoke(uint64_t a1, void *a2, void *a3)
{
  result = [a2 isCancelled];
  if ((result & 1) == 0)
  {
    result = [a2 error];
    if (a3)
    {
      if (!result)
      {
        result = a3;
        *(*(*(a1 + 32) + 8) + 40) = result;
      }
    }
  }

  return result;
}

- (id)resourceURL
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = __Block_byref_object_copy__2;
  v11 = __Block_byref_object_dispose__2;
  v12 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __26__OKMediaItem_resourceURL__block_invoke;
  v6[3] = &unk_279C8EC58;
  v6[4] = &v7;
  v2 = [-[OKMediaItem resourceURLWithCompletionHandler:](self resourceURLWithCompletionHandler:{v6), "performSynchronously"}];
  v3 = v8[5];
  if (v2)
  {
    v4 = v3;
  }

  else if (v3)
  {

    v4 = 0;
    v8[5] = 0;
  }

  else
  {
    v4 = 0;
  }

  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __26__OKMediaItem_resourceURL__block_invoke(uint64_t a1, void *a2, void *a3)
{
  result = [a2 isCancelled];
  if ((result & 1) == 0)
  {
    result = [a2 error];
    if (a3)
    {
      if (!result)
      {
        result = a3;
        *(*(*(a1 + 32) + 8) + 40) = result;
      }
    }
  }

  return result;
}

- (id)avAsset
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = __Block_byref_object_copy__2;
  v11 = __Block_byref_object_dispose__2;
  v12 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __22__OKMediaItem_avAsset__block_invoke;
  v6[3] = &unk_279C8F660;
  v6[4] = &v7;
  v2 = [-[OKMediaItem avAssetWithCompletionHandler:](self avAssetWithCompletionHandler:{v6), "performSynchronously"}];
  v3 = v8[5];
  if (v2)
  {
    v4 = v3;
  }

  else if (v3)
  {

    v4 = 0;
    v8[5] = 0;
  }

  else
  {
    v4 = 0;
  }

  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __22__OKMediaItem_avAsset__block_invoke(uint64_t a1, void *a2, void *a3)
{
  result = [a2 isCancelled];
  if ((result & 1) == 0)
  {
    result = [a2 error];
    if (a3)
    {
      if (!result)
      {
        result = a3;
        *(*(*(a1 + 32) + 8) + 40) = result;
      }
    }
  }

  return result;
}

- (id)detectRegionsOfInterestWithCompletionHandler:(id)a3 force:(BOOL)a4 cache:(BOOL)a5 colorSpace:(id)a6
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __83__OKMediaItem_detectRegionsOfInterestWithCompletionHandler_force_cache_colorSpace___block_invoke;
  v7[3] = &unk_279C8F688;
  v8 = a4;
  v9 = a5;
  v7[4] = self;
  v7[5] = a6;
  return [(OKMediaItem *)self operationWithBlock:v7 completionHandlerWithObject:a3];
}

void __83__OKMediaItem_detectRegionsOfInterestWithCompletionHandler_force_cache_colorSpace___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v44 = 0;
  v45 = &v44;
  v46 = 0x3052000000;
  v47 = __Block_byref_object_copy__2;
  v48 = __Block_byref_object_dispose__2;
  v49 = 0;
  v6 = *(a1 + 32);
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __83__OKMediaItem_detectRegionsOfInterestWithCompletionHandler_force_cache_colorSpace___block_invoke_2;
  v43[3] = &unk_279C8F570;
  v43[4] = &v44;
  v7 = [v6 metadataWithCompletionHandler:v43 force:*(a1 + 48) cache:*(a1 + 49)];
  v8 = [a2 performSubOperationSynchronously:v7 progressBlock:0 timeout:{dispatch_time(0xFFFFFFFFFFFFFFFFLL, 0)}];
  v9 = v45[5];
  if (!v8)
  {
    if (v9)
    {

      v45[5] = 0;
    }

    goto LABEL_9;
  }

  if (!v9)
  {
LABEL_9:
    *a3 = 0;
    [a2 setError:{objc_msgSend(v7, "error")}];
    goto LABEL_10;
  }

  if ([v9 hasRegionsOfInterest] & 1) != 0 || (objc_msgSend(v45[5], "regionsOfInterestDetected"))
  {
    v10 = *(a1 + 48);
    if ((v10 & 1) == 0)
    {
      *a3 = v45[5];
LABEL_10:
      [a2 finish];
      goto LABEL_27;
    }
  }

  else
  {
    v10 = *(a1 + 48);
  }

  v37 = 0;
  v38 = &v37;
  v39 = 0x3052000000;
  v40 = __Block_byref_object_copy__2;
  v41 = __Block_byref_object_dispose__2;
  v42 = 0;
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __83__OKMediaItem_detectRegionsOfInterestWithCompletionHandler_force_cache_colorSpace___block_invoke_3;
  v36[3] = &unk_279C8EC30;
  v36[4] = &v37;
  v13 = [v11 thumbnailImageForResolution:256 aspectRatio:v12 scale:v36 quality:v10 & 1 colorSpace:*(a1 + 49) completionHandler:1.0 force:1.0 cache:1.0];
  if ([a2 performSubOperationSynchronously:v7 progressBlock:0 timeout:{dispatch_time(0xFFFFFFFFFFFFFFFFLL, 0)}] && v38[5])
  {
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{*MEMORY[0x277CBF6E8], *MEMORY[0x277CBF6D8], 0}];
    v15 = [MEMORY[0x277CBF748] detectorOfType:*MEMORY[0x277CBF710] context:0 options:v14];
    v16 = [v15 featuresInImage:{objc_msgSend(MEMORY[0x277CBF758], "imageWithCGImage:", v38[5])}];
    v17 = [MEMORY[0x277CBEB18] array];
    v18 = [v16 count];
    Width = CGImageGetWidth(v38[5]);
    Height = CGImageGetHeight(v38[5]);
    if (v18)
    {
      v21 = 0;
      v22 = Height;
      v23 = Width;
      do
      {
        [objc_msgSend(v16 objectAtIndex:{v21), "bounds"}];
        v25 = v24;
        v27 = v26;
        v29 = v28;
        v31 = v30;
        v32 = MEMORY[0x277CBEAC0];
        v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", v21];
        v50.size.height = v31 / v22;
        v50.size.width = v29 / v23;
        v50.origin.y = v27 / v22;
        v50.origin.x = v25 / v23;
        [v17 addObject:{objc_msgSend(v32, "dictionaryWithObjectsAndKeys:", v33, @"ROI ID", NSStringFromCGRect(v50), @"ROI Bounds", 0)}];
        ++v21;
      }

      while (v18 != v21);
      [v45[5] setRegionsOfInterest:v17];
    }

    v34 = v38[5];
    if (v34)
    {

      v38[5] = 0;
    }

    [v45[5] setRegionsOfInterestDetected:1];
    if (*(a1 + 49) == 1)
    {
      [*(a1 + 32) setMemoryCachedMetadata:v45[5]];
      [*(a1 + 32) setDiskCachedMetadata:v45[5]];
    }

    *a3 = v45[5];
    [a2 finish];
  }

  else
  {
    v35 = v45[5];
    if (v35)
    {

      v45[5] = 0;
    }

    *a3 = 0;
    [a2 setError:{objc_msgSend(v13, "error")}];
    [a2 finish];
  }

  _Block_object_dispose(&v37, 8);
LABEL_27:
  _Block_object_dispose(&v44, 8);
}

id __83__OKMediaItem_detectRegionsOfInterestWithCompletionHandler_force_cache_colorSpace___block_invoke_2(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  result = [a2 isCancelled];
  if (a3 && !a4 && !result)
  {
    result = a3;
    *(*(*(a1 + 32) + 8) + 40) = result;
  }

  return result;
}

uint64_t __83__OKMediaItem_detectRegionsOfInterestWithCompletionHandler_force_cache_colorSpace___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  result = [a2 isCancelled];
  if ((result & 1) == 0)
  {
    result = [a2 error];
    if (a3)
    {
      if (!result)
      {
        result = a3;
        *(*(*(a1 + 32) + 8) + 40) = result;
      }
    }
  }

  return result;
}

- (id)regionsOfInterestWithColorSpace:(id)a3
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3052000000;
  v18 = __Block_byref_object_copy__2;
  v19 = __Block_byref_object_dispose__2;
  v20 = 0;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __47__OKMediaItem_regionsOfInterestWithColorSpace___block_invoke;
  v14[3] = &unk_279C8F570;
  v14[4] = &v15;
  v5 = [-[OKMediaItem metadataWithCompletionHandler:force:cache:](self metadataWithCompletionHandler:v14 force:0 cache:{1), "performSynchronously"}];
  v6 = v16[5];
  if (!v5)
  {
    if (v6)
    {

LABEL_8:
      v8 = 0;
      v16[5] = 0;
      goto LABEL_16;
    }

LABEL_15:
    v8 = 0;
    goto LABEL_16;
  }

  if (([v6 hasRegionsOfInterest] & 1) == 0 && !objc_msgSend(v16[5], "regionsOfInterestDetected"))
  {
    v9 = v16[5];
    if (v9)
    {

      v16[5] = 0;
    }

    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __47__OKMediaItem_regionsOfInterestWithColorSpace___block_invoke_2;
    v13[3] = &unk_279C8F570;
    v13[4] = &v15;
    v10 = [-[OKMediaItem detectRegionsOfInterestWithCompletionHandler:force:cache:colorSpace:](self detectRegionsOfInterestWithCompletionHandler:v13 force:0 cache:1 colorSpace:{a3), "performSynchronously"}];
    v11 = v16[5];
    if (v10)
    {
      v7 = [v11 regionsOfInterest];
      goto LABEL_5;
    }

    if (v11)
    {

      goto LABEL_8;
    }

    goto LABEL_15;
  }

  v7 = [v16[5] regionsOfInterest];
LABEL_5:
  v8 = v7;
LABEL_16:
  _Block_object_dispose(&v15, 8);
  return v8;
}

uint64_t __47__OKMediaItem_regionsOfInterestWithColorSpace___block_invoke(uint64_t a1, void *a2, void *a3)
{
  result = [a2 isCancelled];
  if ((result & 1) == 0)
  {
    result = [a2 error];
    if (a3)
    {
      if (!result)
      {
        result = a3;
        *(*(*(a1 + 32) + 8) + 40) = result;
      }
    }
  }

  return result;
}

uint64_t __47__OKMediaItem_regionsOfInterestWithColorSpace___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  result = [a2 isCancelled];
  if ((result & 1) == 0)
  {
    result = [a2 error];
    if (a3)
    {
      if (!result)
      {
        result = a3;
        *(*(*(a1 + 32) + 8) + 40) = result;
      }
    }
  }

  return result;
}

- (id)prepareCaches:(BOOL)a3 colorSpace:(id)a4 withCompletionHandler:(id)a5
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __62__OKMediaItem_prepareCaches_colorSpace_withCompletionHandler___block_invoke;
  v6[3] = &unk_279C8F6F8;
  v7 = a3;
  v6[4] = self;
  v6[5] = a4;
  return [(OKMediaItem *)self operationWithBlock:v6 completionHandlerWithObject:a5];
}

void __62__OKMediaItem_prepareCaches_colorSpace_withCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v39 = *MEMORY[0x277D85DE8];
  v32 = 0;
  v33 = &v32;
  v34 = 0x3052000000;
  v35 = __Block_byref_object_copy__2;
  v36 = __Block_byref_object_dispose__2;
  v37 = 0;
  v6 = *(a1 + 32);
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __62__OKMediaItem_prepareCaches_colorSpace_withCompletionHandler___block_invoke_2;
  v31[3] = &unk_279C8F570;
  v31[4] = &v32;
  v7 = [v6 metadataWithCompletionHandler:v31 force:*(a1 + 48) cache:1];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __62__OKMediaItem_prepareCaches_colorSpace_withCompletionHandler___block_invoke_3;
  v30[3] = &unk_279C8ECA8;
  v30[4] = a2;
  if (![a2 performSubOperationSynchronously:v7 progressBlock:v30 timeout:-1] || !v33[5])
  {
    if ([v7 error])
    {
      v19 = [v7 error];
    }

    else
    {
      v19 = [OKError errorForCode:-1];
    }

    [a2 setError:v19];
LABEL_24:
    [a2 finish];
    goto LABEL_25;
  }

  LODWORD(v8) = 1036831949;
  [a2 setProgress:v8];
  if ([v33[5] type] != 2 || (objc_msgSend(v33[5], "hasRegionsOfInterest") & 1) != 0 || (objc_msgSend(v33[5], "regionsOfInterestDetected") & 1) != 0 || (v10 = objc_msgSend(*(a1 + 32), "detectRegionsOfInterestWithCompletionHandler:force:cache:colorSpace:", &__block_literal_global_7, *(a1 + 48), 1, *(a1 + 40)), v29[0] = MEMORY[0x277D85DD0], v29[1] = 3221225472, v29[2] = __62__OKMediaItem_prepareCaches_colorSpace_withCompletionHandler___block_invoke_5, v29[3] = &unk_279C8ECA8, v29[4] = a2, (objc_msgSend(a2, "performSubOperationSynchronously:progressBlock:timeout:", v10, v29, -1) & 1) != 0))
  {
    LODWORD(v9) = 1045220557;
    [a2 setProgress:v9];
    if ([v33[5] type] == 2 || objc_msgSend(v33[5], "type") == 3)
    {
      v12 = [&unk_287AF2428 count];
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v13 = [&unk_287AF2428 countByEnumeratingWithState:&v25 objects:v38 count:16];
      if (v13)
      {
        v14 = *v26;
        v23 = a3;
        while (2)
        {
          v15 = 0;
          do
          {
            if (*v26 != v14)
            {
              objc_enumerationMutation(&unk_287AF2428);
            }

            v16 = [*(a1 + 32) thumbnailImageForResolution:objc_msgSend(*(*(&v25 + 1) + 8 * v15) aspectRatio:"unsignedIntegerValue" scale:v23) quality:*(a1 + 40) colorSpace:&__block_literal_global_40 completionHandler:*(a1 + 48) force:1 cache:{1.0, 1.0, 1.0}];
            v24[0] = MEMORY[0x277D85DD0];
            v24[1] = 3221225472;
            v24[2] = __62__OKMediaItem_prepareCaches_colorSpace_withCompletionHandler___block_invoke_2_41;
            v24[3] = &unk_279C8F6D0;
            v24[5] = &unk_287AF2428;
            v24[6] = v12;
            v24[4] = a2;
            if (([a2 performSubOperationSynchronously:v16 progressBlock:v24 timeout:-1] & 1) == 0)
            {
              if ([v16 error])
              {
                v20 = [v16 error];
              }

              else
              {
                v20 = [OKError errorForCode:-1];
              }

              [a2 setError:v20];
              [a2 finish];
              goto LABEL_25;
            }

            *&v17 = 0.8 / v12;
            [a2 setProgress:v17];
            --v12;
            ++v15;
          }

          while (v13 != v15);
          v13 = [&unk_287AF2428 countByEnumeratingWithState:&v25 objects:v38 count:16];
          a3 = v23;
          if (v13)
          {
            continue;
          }

          break;
        }
      }
    }

    v18 = v33[5];
    if (v18)
    {

      v33[5] = 0;
    }

    LODWORD(v11) = 1.0;
    [a2 setProgress:v11];
    *a3 = 0;
    goto LABEL_24;
  }

  v21 = v33[5];
  if (v21)
  {

    v33[5] = 0;
  }

  if ([v10 error])
  {
    v22 = [v10 error];
  }

  else
  {
    v22 = [OKError errorForCode:-1];
  }

  [a2 setError:v22];
  [a2 finish];
LABEL_25:
  _Block_object_dispose(&v32, 8);
}

id __62__OKMediaItem_prepareCaches_colorSpace_withCompletionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  result = [a2 hasSucceeded];
  if (result)
  {
    result = a3;
    *(*(*(a1 + 32) + 8) + 40) = result;
  }

  return result;
}

uint64_t __62__OKMediaItem_prepareCaches_colorSpace_withCompletionHandler___block_invoke_2_41(uint64_t a1, float a2)
{
  v3 = (0.8 / *(a1 + 48)) + 0.2;
  *&v4 = v3 + ((0.8 / [*(a1 + 40) count]) * a2);
  v5 = *(a1 + 32);

  return [v5 setProgress:v4];
}

- (id)createMetadataWithCompletionHandler:(id)a3
{
  if (*MEMORY[0x277D62808] >= 4)
  {
    v4 = MEMORY[0x277D627B8];
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    [v4 logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Media/OKMediaItem.m" line:850 andFormat:@"%@ %@ MUST be subclassed and cannot be called directly from abstract class", v6, NSStringFromSelector(a2)];
  }

  return 0;
}

- (id)createThumbnailImageForResolution:(unint64_t)a3 withMetadata:(id)a4 completionHandler:(id)a5
{
  if (*MEMORY[0x277D62808] >= 4)
  {
    v6 = MEMORY[0x277D627B8];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    [v6 logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Media/OKMediaItem.m" line:857 andFormat:@"%@ %@ MUST be subclassed and cannot be called directly from abstract class", v8, NSStringFromSelector(a2)];
  }

  return 0;
}

- (id)importMediaToDirectoryURL:(id)a3 completionHandler:(id)a4
{
  if (*MEMORY[0x277D62808] >= 4)
  {
    v5 = MEMORY[0x277D627B8];
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    [v5 logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Media/OKMediaItem.m" line:864 andFormat:@"%@ %@ MUST be subclassed and cannot be called directly from abstract class", v7, NSStringFromSelector(a2)];
  }

  return 0;
}

- (id)resourceURLWithCompletionHandler:(id)a3
{
  if (*MEMORY[0x277D62808] >= 4)
  {
    v4 = MEMORY[0x277D627B8];
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    [v4 logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Media/OKMediaItem.m" line:871 andFormat:@"%@ %@ MUST be subclassed and cannot be called directly from abstract class", v6, NSStringFromSelector(a2)];
  }

  return 0;
}

- (id)avAssetWithCompletionHandler:(id)a3
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __44__OKMediaItem_avAssetWithCompletionHandler___block_invoke;
  v4[3] = &unk_279C8F720;
  v4[4] = self;
  return [(OKMediaItem *)self operationWithBlock:v4 completionHandlerWithObject:a3];
}

uint64_t __44__OKMediaItem_avAssetWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  *a3 = [MEMORY[0x277CE63D8] assetWithURL:{objc_msgSend(*(a1 + 32), "resourceURL")}];

  return [a2 finish];
}

- (id)_resourcesDiskCacheManager
{
  if ([(OKMediaItem *)self wantsTemporaryDiskCache])
  {
    v3 = [(OKMediaItem *)self presentation];

    return [(OKPresentation *)v3 _temporaryDiskCacheManager];
  }

  else
  {

    return +[OKResourcesDiskCacheManager sharedManager];
  }
}

- (id)memoryCachedMetadata
{
  v3 = [(OKMediaItem *)self presentation];

  return [(OKPresentation *)v3 metadataInMemoryForMediaItem:self];
}

- (void)setMemoryCachedMetadata:(id)a3
{
  if ([(OKMediaItem *)self wantsMemoryCachedMetadata])
  {
    v5 = [(OKMediaItem *)self presentation];

    [(OKPresentation *)v5 setMetadataToMemory:a3 forMediaItem:self];
  }
}

- (BOOL)hasDiskCachedMetadata:(id *)a3
{
  v5 = [(OKMediaItem *)self _resourcesDiskCacheManager];

  return [v5 hasMetadataForMediaItem:self metadata:a3 error:0];
}

- (id)diskCachedMetadata
{
  v3 = [(OKMediaItem *)self _resourcesDiskCacheManager];

  return [v3 metadataForMediaItem:self error:0];
}

- (void)setDiskCachedMetadata:(id)a3
{
  if ([(OKMediaItem *)self wantsDiskCachedMetadata])
  {
    v5 = [(OKMediaItem *)self _resourcesDiskCacheManager];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __37__OKMediaItem_setDiskCachedMetadata___block_invoke;
    v6[3] = &unk_279C8F748;
    v6[4] = a3;
    v6[5] = self;
    [v5 performAsynchronousResourceAccessUsingBlock:v6];
  }
}

- (void)invalidateMemoryCachedMetadata
{
  if ([(OKMediaItem *)self wantsMemoryCachedMetadata])
  {
    v3 = [(OKMediaItem *)self presentation];

    [(OKPresentation *)v3 invalidateMetadataMemoryCacheForMediaItem:self];
  }
}

- (void)invalidateDiskCachedMetadata
{
  if ([(OKMediaItem *)self wantsDiskCachedMetadata])
  {
    v3 = [(OKMediaItem *)self _resourcesDiskCacheManager];
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __43__OKMediaItem_invalidateDiskCachedMetadata__block_invoke;
    v4[3] = &unk_279C8F770;
    v4[4] = self;
    [v3 performAsynchronousResourceAccessUsingBlock:v4];
  }
}

- (id)memoryCachedThumbnailImageForResolution:(unint64_t)a3
{
  v5 = [(OKMediaItem *)self presentation];

  return [(OKPresentation *)v5 thumbnailImageInMemoryCacheForMediaItem:self andResolution:a3];
}

- (void)setMemoryCachedThumbnailImage:(id)a3 forResolution:(unint64_t)a4
{
  if ([(OKMediaItem *)self wantsMemoryCachedThumbnailForResolution:a4])
  {
    v7 = [(OKMediaItem *)self presentation];

    [(OKPresentation *)v7 setThumbnailImageToMemoryCache:a3 forMediaItem:self andResolution:a4];
  }
}

- (BOOL)hasDiskCachedThumbnailImage:(id *)a3 forResolution:(unint64_t)a4
{
  v7 = [(OKMediaItem *)self _resourcesDiskCacheManager];

  return [v7 hasThumbnailForMediaItem:self resolution:a4 thumbnail:a3 error:0];
}

- (id)diskCachedThumbnailImageForResolution:(unint64_t)a3
{
  v5 = [-[OKMediaItem _resourcesDiskCacheManager](self "_resourcesDiskCacheManager")];
  if (v5)
  {
    [(OKMediaItem *)self setMemoryCachedThumbnailImage:v5 forResolution:a3];
  }

  return v5;
}

- (void)setDiskCachedThumbnailImage:(id)a3 forResolution:(unint64_t)a4
{
  if ([(OKMediaItem *)self wantsDiskCachedThumbnailForResolution:a4])
  {
    v7 = [(OKMediaItem *)self _resourcesDiskCacheManager];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __57__OKMediaItem_setDiskCachedThumbnailImage_forResolution___block_invoke;
    v8[3] = &unk_279C8F798;
    v8[4] = a3;
    v8[5] = self;
    v8[6] = a4;
    [v7 performAsynchronousResourceAccessUsingBlock:v8];
  }
}

- (void)invalidateMemoryCachedThumbnailImages
{
  if ([(OKMediaItem *)self wantsMemoryCachedThumbnailForResolution:2048])
  {
    v3 = [(OKMediaItem *)self presentation];

    [(OKPresentation *)v3 invalidateThumbnailsMemoryCacheForMediaItem:self];
  }
}

- (void)invalidateDiskCachedThumbnailImages
{
  if ([(OKMediaItem *)self wantsDiskCachedThumbnailForResolution:2048])
  {
    v3 = [(OKMediaItem *)self _resourcesDiskCacheManager];
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __50__OKMediaItem_invalidateDiskCachedThumbnailImages__block_invoke;
    v4[3] = &unk_279C8F770;
    v4[4] = self;
    [v3 performAsynchronousResourceAccessUsingBlock:v4];
  }
}

@end