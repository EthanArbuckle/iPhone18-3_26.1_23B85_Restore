@interface OKMediaImportedItem
+ (id)urlForMediaObject:(id)a3;
- (BOOL)hasDiskCachedMetadata:(id *)a3;
- (BOOL)hasDiskCachedThumbnailImage:(id *)a3 forResolution:(unint64_t)a4;
- (OKMediaImportedItem)initWithImportedResourceURL:(id)a3;
- (id)createMetadataWithCompletionHandler:(id)a3;
- (id)createThumbnailImageForResolution:(unint64_t)a3 withMetadata:(id)a4 completionHandler:(id)a5;
- (id)diskCachedMetadata;
- (id)diskCachedThumbnailImageForResolution:(unint64_t)a3;
- (id)importMediaToDirectoryURL:(id)a3 completionHandler:(id)a4;
- (id)resourceURLWithCompletionHandler:(id)a3;
- (void)setDiskCachedThumbnailImage:(id)a3 forResolution:(unint64_t)a4;
@end

@implementation OKMediaImportedItem

+ (id)urlForMediaObject:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ([objc_msgSend(a3 "scheme")] & 1) == 0)
  {
    return 0;
  }

  return a3;
}

- (OKMediaImportedItem)initWithImportedResourceURL:(id)a3
{
  v4.receiver = self;
  v4.super_class = OKMediaImportedItem;
  return [(OKMediaItem *)&v4 initWithUniqueURL:a3];
}

- (id)createMetadataWithCompletionHandler:(id)a3
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __59__OKMediaImportedItem_createMetadataWithCompletionHandler___block_invoke;
  v4[3] = &unk_279C8F720;
  v4[4] = self;
  return [(OKMediaItem *)self operationWithBlock:v4 completionHandlerWithObject:a3];
}

uint64_t __59__OKMediaImportedItem_createMetadataWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  *a3 = -[OKMediaItemMetadata initWithDictionary:]([OKMediaItemMetadata alloc], "initWithDictionary:", [objc_msgSend(objc_msgSend(*(a1 + 32) "presentation")]);

  return [a2 finish];
}

- (id)createThumbnailImageForResolution:(unint64_t)a3 withMetadata:(id)a4 completionHandler:(id)a5
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __88__OKMediaImportedItem_createThumbnailImageForResolution_withMetadata_completionHandler___block_invoke;
  v6[3] = &unk_279C8F8B8;
  v6[4] = self;
  v6[5] = a3;
  return [(OKMediaItem *)self operationWithBlock:v6 completionHandlerWithObject:a5];
}

uint64_t __88__OKMediaImportedItem_createThumbnailImageForResolution_withMetadata_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 40);
  if (v6 == 1)
  {
    v7 = [objc_msgSend(objc_msgSend(*(a1 + 32) "presentation")];
  }

  else
  {
    v8 = [objc_msgSend(*(a1 + 32) "presentation")];
    v9 = [*(a1 + 32) uniqueURL];
    if (v6 == -1)
    {
      v7 = [v8 _thumbnailFromMediaForImportedResourceURL:v9];
    }

    else
    {
      v7 = [v8 _thumbnailFromMediaForImportedResourceURL:v9 size:{*(a1 + 40), *(a1 + 40)}];
    }
  }

  v10 = v7;
  if (v7)
  {
    *a3 = [OKMediaImage mediaImageWithCGImage:v7];
    CGImageRelease(v10);
  }

  else
  {
    *a3 = 0;
    [a2 setError:{objc_msgSend(MEMORY[0x277CCA9B8], "errorWithDomain:code:userInfo:", @"OKErrorDomain", -1, 0)}];
  }

  return [a2 finish];
}

- (id)importMediaToDirectoryURL:(id)a3 completionHandler:(id)a4
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __67__OKMediaImportedItem_importMediaToDirectoryURL_completionHandler___block_invoke;
  v5[3] = &unk_279C8F930;
  v5[4] = a3;
  v5[5] = self;
  return [(OKMediaItem *)self operationWithBlock:v5 completionHandlerWithObject:a4];
}

void __67__OKMediaImportedItem_importMediaToDirectoryURL_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = objc_alloc_init(MEMORY[0x277CCAA00]);
  v16 = 0;
  if ([v6 fileExistsAtPath:{objc_msgSend(*(a1 + 32), "path")}] & 1) != 0 || (objc_msgSend(v6, "createDirectoryAtURL:withIntermediateDirectories:attributes:error:", *(a1 + 32), 1, 0, &v16))
  {
    v7 = [objc_msgSend(objc_msgSend(*(a1 + 40) "presentation")];
    v8 = [v6 incrementalURLInDirectory:*(a1 + 32) withFilename:objc_msgSend(MEMORY[0x277CCACA8] andExtension:{"generateUUID"), objc_msgSend(objc_msgSend(v7, "lastPathComponent"), "pathExtension")}];
    v9 = [objc_alloc(MEMORY[0x277CCA9E8]) initWithFilePresenter:0];
    v15 = 0;
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = 1;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __67__OKMediaImportedItem_importMediaToDirectoryURL_completionHandler___block_invoke_2;
    v10[3] = &unk_279C8F908;
    v10[5] = a2;
    v10[6] = &v11;
    v10[4] = v6;
    [v9 coordinateReadingItemAtURL:v7 options:1 writingItemAtURL:v8 options:0 error:&v15 byAccessor:v10];

    if (v15)
    {
      *a3 = 0;
    }

    else
    {
      if (*(v12 + 24))
      {

        *a3 = v8;
        goto LABEL_8;
      }

      *a3 = 0;
      [MEMORY[0x277CCA9B8] errorWithDomain:@"OKErrorDomain" code:-1 userInfo:0];
    }

    [a2 setError:?];

LABEL_8:
    [a2 finish];
    _Block_object_dispose(&v11, 8);
    return;
  }

  *a3 = 0;
  if (!v16)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:@"OKErrorDomain" code:-1 userInfo:0];
  }

  [a2 setError:?];
  [a2 finish];
}

uint64_t __67__OKMediaImportedItem_importMediaToDirectoryURL_completionHandler___block_invoke_2(void *a1, void *a2, void *a3)
{
  v5 = a1[4];
  v6 = [a2 relativePath];
  v7 = [a3 relativePath];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __67__OKMediaImportedItem_importMediaToDirectoryURL_completionHandler___block_invoke_3;
  v9[3] = &unk_279C8F8E0;
  v9[4] = a1[5];
  result = [v5 copySource:v6 toDestination:v7 withProgressionBlock:v9];
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

uint64_t __67__OKMediaImportedItem_importMediaToDirectoryURL_completionHandler___block_invoke_3(uint64_t a1, _BYTE *a2)
{
  [*(a1 + 32) setProgress:?];
  result = [*(a1 + 32) isCancelled];
  *a2 = result;
  return result;
}

- (id)resourceURLWithCompletionHandler:(id)a3
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __56__OKMediaImportedItem_resourceURLWithCompletionHandler___block_invoke;
  v4[3] = &unk_279C8F720;
  v4[4] = self;
  return [(OKMediaItem *)self operationWithBlock:v4 completionHandlerWithObject:a3];
}

uint64_t __56__OKMediaImportedItem_resourceURLWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  *a3 = [objc_msgSend(objc_msgSend(objc_msgSend(*(a1 + 32) "presentation")];

  return [a2 finish];
}

- (BOOL)hasDiskCachedMetadata:(id *)a3
{
  v4 = [(OKDocument *)[(OKPresentation *)[(OKMediaItem *)self presentation] document] _metadataForImportedResourceURL:[(OKMediaItem *)self uniqueURL]];
  v5 = v4;
  if (a3 && v4)
  {
    *a3 = [[OKMediaItemMetadata alloc] initWithDictionary:v4];
  }

  return v5 != 0;
}

- (id)diskCachedMetadata
{
  result = [(OKDocument *)[(OKPresentation *)[(OKMediaItem *)self presentation] document] _metadataForImportedResourceURL:[(OKMediaItem *)self uniqueURL]];
  if (result)
  {
    v3 = [[OKMediaItemMetadata alloc] initWithDictionary:result];

    return v3;
  }

  return result;
}

- (BOOL)hasDiskCachedThumbnailImage:(id *)a3 forResolution:(unint64_t)a4
{
  if (a4 == 1)
  {
    v6 = [(OKDocument *)[(OKPresentation *)[(OKMediaItem *)self presentation] document] _hasThumbnailForImportedResourceURL:[(OKMediaItem *)self uniqueURL]];
    v7 = v6;
    if (a3 && v6)
    {
      v8 = [(OKDocument *)[(OKPresentation *)[(OKMediaItem *)self presentation] document] _thumbnailForImportedResourceURL:[(OKMediaItem *)self uniqueURL]];
LABEL_12:
      *a3 = v8;
    }
  }

  else
  {
    v10 = [(OKPresentation *)[(OKMediaItem *)self presentation] document];
    v11 = [(OKMediaItem *)self uniqueURL];
    if (a4 == -1)
    {
      v12 = [(OKDocument *)v10 _hasThumbnailFromMediaForImportedResourceURL:v11];
      v7 = v12;
      if (a3 && v12)
      {
        v8 = [(OKDocument *)[(OKPresentation *)[(OKMediaItem *)self presentation] document] _thumbnailFromMediaForImportedResourceURL:[(OKMediaItem *)self uniqueURL]];
        goto LABEL_12;
      }
    }

    else
    {
      v13 = a4;
      v14 = [(OKDocument *)v10 _hasThumbnailForImportedResourceURL:v11 size:a4, a4];
      v7 = v14;
      if (a3 && v14)
      {
        v8 = [(OKDocument *)[(OKPresentation *)[(OKMediaItem *)self presentation] document] _thumbnailForImportedResourceURL:[(OKMediaItem *)self uniqueURL] size:v13, v13];
        goto LABEL_12;
      }
    }
  }

  return v7;
}

- (id)diskCachedThumbnailImageForResolution:(unint64_t)a3
{
  if (a3 == 1)
  {
    v4 = [(OKDocument *)[(OKPresentation *)[(OKMediaItem *)self presentation] document] _thumbnailForImportedResourceURL:[(OKMediaItem *)self uniqueURL]];
  }

  else
  {
    v6 = [(OKPresentation *)[(OKMediaItem *)self presentation] document];
    v7 = [(OKMediaItem *)self uniqueURL];
    if (a3 == -1)
    {
      v4 = [(OKDocument *)v6 _thumbnailFromMediaForImportedResourceURL:v7];
    }

    else
    {
      v4 = [(OKDocument *)v6 _thumbnailForImportedResourceURL:v7 size:a3, a3];
    }
  }

  return v4;
}

- (void)setDiskCachedThumbnailImage:(id)a3 forResolution:(unint64_t)a4
{
  if ([(OKMediaImportedItem *)self wantsDiskCachedThumbnailForResolution:a4])
  {
    v7 = [(OKPresentation *)[(OKMediaItem *)self presentation] document];
    v8 = [(OKMediaItem *)self uniqueURL];

    [(OKDocument *)v7 _saveThumbnailToDisk:a3 forImportedResourceURL:v8 size:a4, a4];
  }
}

@end