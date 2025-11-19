@interface OKMediaProducerItem
+ (id)urlForMediaObject:(id)a3;
+ (id)urlForProducerPluginIdentifier:(id)a3 andResourcePath:(id)a4;
- (OKMediaProducerItem)initWithProducerPluginIdentifier:(id)a3 andResourcePath:(id)a4;
- (id)_fileURL;
- (id)createMetadataWithCompletionHandler:(id)a3;
- (id)createThumbnailImageForResolution:(unint64_t)a3 withMetadata:(id)a4 completionHandler:(id)a5;
- (id)importMediaToDirectoryURL:(id)a3 completionHandler:(id)a4;
- (id)parseDate:(id)a3;
- (id)resourceURLWithCompletionHandler:(id)a3;
- (void)dealloc;
@end

@implementation OKMediaProducerItem

+ (id)urlForMediaObject:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ([objc_msgSend(a3 "scheme")] & 1) == 0)
  {
    return 0;
  }

  return a3;
}

+ (id)urlForProducerPluginIdentifier:(id)a3 andResourcePath:(id)a4
{
  v4 = MEMORY[0x277CBEBC0];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@://%@/%@", objc_msgSend(objc_opt_class(), "scheme"), objc_msgSend(a3, "stringByAddingPercentEscapesForURLPath"), objc_msgSend(a4, "stringByAddingPercentEscapesForURLPath")];

  return [v4 URLWithString:v5];
}

- (OKMediaProducerItem)initWithProducerPluginIdentifier:(id)a3 andResourcePath:(id)a4
{
  v5 = [objc_opt_class() urlForProducerPluginIdentifier:a3 andResourcePath:a4];
  v7.receiver = self;
  v7.super_class = OKMediaProducerItem;
  result = [(OKMediaItem *)&v7 initWithUniqueURL:v5];
  if (result)
  {
    result->_plugin = 0;
  }

  return result;
}

- (void)dealloc
{
  [(OKProducerPlugin *)self->_plugin unloadRelease];
  plugin = self->_plugin;
  if (plugin)
  {

    self->_plugin = 0;
  }

  v4.receiver = self;
  v4.super_class = OKMediaProducerItem;
  [(OKMediaItem *)&v4 dealloc];
}

- (id)_fileURL
{
  plugin = self->_plugin;
  v4 = [(NSString *)[(NSURL *)[(OKMediaItem *)self uniqueURL] path] stringByDeletingPathExtension];
  v5 = [(NSURL *)[(OKMediaItem *)self uniqueURL] pathExtension];

  return [(OKProducerPlugin *)plugin URLForResource:v4 withExtension:v5];
}

- (id)createMetadataWithCompletionHandler:(id)a3
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __59__OKMediaProducerItem_createMetadataWithCompletionHandler___block_invoke;
  v4[3] = &unk_279C8F720;
  v4[4] = self;
  return [(OKMediaItem *)self operationWithBlock:v4 completionHandlerWithObject:a3];
}

uint64_t __59__OKMediaProducerItem_createMetadataWithCompletionHandler___block_invoke(uint64_t a1, void *a2, OKMediaItemMetadata **a3)
{
  v6 = *(a1 + 32);
  if (!*(v6 + 40))
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __59__OKMediaProducerItem_createMetadataWithCompletionHandler___block_invoke_2;
    v15[3] = &unk_279C91618;
    v15[4] = v6;
    v7 = [MEMORY[0x277D627C0] blockOperationWithExecutionBlock:v15 finishBlock:0 andFinishDelegate:0];
    if (([a2 performSubOperationSynchronously:v7 progressBlock:0 timeout:-1] & 1) == 0)
    {
      *a3 = 0;
      if ([v7 error])
      {
        [v7 error];
      }

      else
      {
        [MEMORY[0x277CCA9B8] errorWithDomain:@"OKErrorDomain" code:-1 userInfo:0];
      }

LABEL_11:
      [a2 setError:?];
      return [a2 finish];
    }
  }

  v8 = objc_alloc_init(OKMediaItemMetadata);
  v9 = [objc_alloc(MEMORY[0x277CCA9E8]) initWithFilePresenter:0];
  v14 = 0;
  v10 = [*(a1 + 32) _fileURL];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __59__OKMediaProducerItem_createMetadataWithCompletionHandler___block_invoke_5;
  v13[3] = &unk_279C8FA60;
  v11 = *(a1 + 32);
  v13[4] = v8;
  v13[5] = v11;
  [v9 coordinateReadingItemAtURL:v10 options:1 error:&v14 byAccessor:v13];

  if (v14)
  {
    if (v8)
    {
    }

    *a3 = 0;
    goto LABEL_11;
  }

  *a3 = v8;
  return [a2 finish];
}

uint64_t __59__OKMediaProducerItem_createMetadataWithCompletionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = +[OKProducerManager defaultManager];
  v5 = [objc_msgSend(*(a1 + 32) "uniqueURL")];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __59__OKMediaProducerItem_createMetadataWithCompletionHandler___block_invoke_3;
  v9[3] = &unk_279C8F8E0;
  v9[4] = a2;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __59__OKMediaProducerItem_createMetadataWithCompletionHandler___block_invoke_4;
  v8[3] = &unk_279C915F0;
  v6 = *(a1 + 32);
  v8[4] = a2;
  v8[5] = v6;
  return [v4 pluginWithIdentifier:v5 progressBlock:v9 completionBlock:v8];
}

uint64_t __59__OKMediaProducerItem_createMetadataWithCompletionHandler___block_invoke_3(uint64_t a1, _BYTE *a2)
{
  result = [*(a1 + 32) isCancelled];
  *a2 = result;
  return result;
}

uint64_t __59__OKMediaProducerItem_createMetadataWithCompletionHandler___block_invoke_4(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2 || !a3)
  {
    v4 = (a1 + 32);
    [*(a1 + 32) setError:a2];
  }

  else
  {
    *(*(a1 + 40) + 40) = a3;
    [*(*(a1 + 40) + 40) loadRetain];
    v4 = (a1 + 32);
  }

  v5 = *v4;

  return [v5 finish];
}

void __59__OKMediaProducerItem_createMetadataWithCompletionHandler___block_invoke_5(uint64_t a1, void *a2)
{
  [a2 relativePath];
  v4 = OFUTTypePreferredIdentifier();
  [*(a1 + 32) setUTI:v4];
  if (UTTypeConformsTo(v4, *MEMORY[0x277CC2018]) == 1)
  {
    [*(a1 + 32) setType:1];
    v5 = [MEMORY[0x277CE6650] URLAssetWithURL:a2 options:0];
    if (!v5)
    {
      goto LABEL_18;
    }

    goto LABEL_3;
  }

  if (UTTypeConformsTo(v4, *MEMORY[0x277CC20B0]) == 1)
  {
    [*(a1 + 32) setType:2];
    v6 = CGImageSourceCreateWithURL(a2, [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{*MEMORY[0x277CBED10], *MEMORY[0x277CD3618], 0}]);
    if (v6)
    {
      v7 = v6;
      ImageAtIndex = CGImageSourceCreateImageAtIndex(v6, 0, 0);
      v9 = CGImageSourceCopyPropertiesAtIndex(v7, 0, 0);
      v10 = [(__CFDictionary *)v9 objectForKey:*MEMORY[0x277CD3038]];
      if (v10)
      {
        Value = CFDictionaryGetValue(v10, *MEMORY[0x277CD3030]);
        if (Value)
        {
          [*(a1 + 32) setCreationDate:{objc_msgSend(*(a1 + 40), "parseDate:", Value)}];
        }
      }

      if ([-[__CFDictionary objectForKey:](v9 objectForKey:{@"HasAlpha", "BOOLValue"}])
      {
        [*(a1 + 32) setOpaque:0];
      }

      CFRelease(v9);
      CFRelease(v7);
      if (ImageAtIndex)
      {
        Width = CGImageGetWidth(ImageAtIndex);
        [*(a1 + 32) setResolution:{Width, CGImageGetHeight(ImageAtIndex)}];
        CGImageRelease(ImageAtIndex);
      }
    }
  }

  else if (UTTypeConformsTo(v4, *MEMORY[0x277CC2100]) == 1)
  {
    [*(a1 + 32) setType:3];
    v13 = [MEMORY[0x277CE6650] URLAssetWithURL:a2 options:0];
    if (v13)
    {
      v14 = v13;
      if ([objc_msgSend(v13 "tracks")] != 1 || (v15 = objc_msgSend(objc_msgSend(objc_msgSend(v14, "tracks"), "firstObject"), "mediaType"), !objc_msgSend(v15, "isEqualToString:", *MEMORY[0x277CE5E48])))
      {
        v19 = [objc_msgSend(v14 tracksWithMediaType:{*MEMORY[0x277CE5EA8]), "lastObject"}];
        if (v19)
        {
          [v19 naturalSize];
        }

        else
        {
          v20 = *MEMORY[0x277CBF3A8];
          v21 = *(MEMORY[0x277CBF3A8] + 8);
        }

        [*(a1 + 32) setResolution:{v20, v21}];
        v5 = v14;
LABEL_3:
        [v5 duration];
        [*(a1 + 32) setDuration:CMTimeGetSeconds(&time)];
        goto LABEL_18;
      }

      [*(a1 + 32) setType:1];
    }
  }

LABEL_18:
  v16 = objc_alloc_init(MEMORY[0x277CCAA00]);
  time.value = 0;
  v17 = [v16 attributesOfItemAtPath:objc_msgSend(a2 error:{"relativePath"), &time}];
  if (v17)
  {
    v18 = v17;
    if (![*(a1 + 32) creationDate])
    {
      [*(a1 + 32) setCreationDate:{objc_msgSend(v18, "objectForKey:", *MEMORY[0x277CCA108])}];
    }

    [*(a1 + 32) setName:{objc_msgSend(objc_msgSend(objc_msgSend(a2, "relativePath"), "lastPathComponent"), "stringByDeletingPathExtension")}];
  }

  else if (*MEMORY[0x277D62808] >= 4)
  {
    [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Media/Producer/OKMediaProducerItem.m" line:245 andFormat:@"An error occured updating media item %@ properties: %@", a2, objc_msgSend(time.value, "localizedDescription")];
  }
}

- (id)createThumbnailImageForResolution:(unint64_t)a3 withMetadata:(id)a4 completionHandler:(id)a5
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __88__OKMediaProducerItem_createThumbnailImageForResolution_withMetadata_completionHandler___block_invoke;
  v6[3] = &unk_279C8FAB0;
  v6[4] = self;
  v6[5] = a4;
  v6[6] = a3;
  return [(OKMediaItem *)self operationWithBlock:v6 completionHandlerWithObject:a5];
}

void __88__OKMediaProducerItem_createThumbnailImageForResolution_withMetadata_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  if (*(v6 + 40) || (v21[0] = MEMORY[0x277D85DD0], v21[1] = 3221225472, v21[2] = __88__OKMediaProducerItem_createThumbnailImageForResolution_withMetadata_completionHandler___block_invoke_2, v21[3] = &unk_279C91618, v21[4] = v6, v7 = [MEMORY[0x277D627C0] blockOperationWithExecutionBlock:v21 finishBlock:0 andFinishDelegate:0], (objc_msgSend(a2, "performSubOperationSynchronously:progressBlock:timeout:", v7, 0, -1) & 1) != 0))
  {
    v8 = [*(a1 + 40) type];
    v9 = [objc_alloc(MEMORY[0x277CCA9E8]) initWithFilePresenter:0];
    v19 = 0;
    v20 = 0;
    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v10 = [*(a1 + 32) _fileURL];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __88__OKMediaProducerItem_createThumbnailImageForResolution_withMetadata_completionHandler___block_invoke_5;
    v15[3] = &unk_279C8FA88;
    v11 = *(a1 + 48);
    v15[5] = v8;
    v15[6] = v11;
    v15[4] = &v16;
    [v9 coordinateReadingItemAtURL:v10 options:1 error:&v20 byAccessor:v15];
    if (v20)
    {
      v12 = v17[3];
      if (v12)
      {
        CGImageRelease(v12);
        v17[3] = 0;
      }

      *a3 = 0;
      [a2 setError:?];
    }

    else
    {
      *a3 = [OKMediaImage mediaImageWithCGImage:v17[3]];
      v13 = v17[3];
      if (v13)
      {
        CGImageRelease(v13);
        v17[3] = 0;
      }
    }

    [a2 finish];
    _Block_object_dispose(&v16, 8);
  }

  else
  {
    *a3 = 0;
    if ([v7 error])
    {
      v14 = [v7 error];
    }

    else
    {
      v14 = [MEMORY[0x277CCA9B8] errorWithDomain:@"OKErrorDomain" code:-1 userInfo:0];
    }

    [a2 setError:v14];
    [a2 finish];
  }
}

uint64_t __88__OKMediaProducerItem_createThumbnailImageForResolution_withMetadata_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = +[OKProducerManager defaultManager];
  v5 = [objc_msgSend(*(a1 + 32) "uniqueURL")];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __88__OKMediaProducerItem_createThumbnailImageForResolution_withMetadata_completionHandler___block_invoke_3;
  v9[3] = &unk_279C8F8E0;
  v9[4] = a2;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __88__OKMediaProducerItem_createThumbnailImageForResolution_withMetadata_completionHandler___block_invoke_4;
  v8[3] = &unk_279C915F0;
  v6 = *(a1 + 32);
  v8[4] = a2;
  v8[5] = v6;
  return [v4 pluginWithIdentifier:v5 progressBlock:v9 completionBlock:v8];
}

uint64_t __88__OKMediaProducerItem_createThumbnailImageForResolution_withMetadata_completionHandler___block_invoke_3(uint64_t a1, _BYTE *a2)
{
  result = [*(a1 + 32) isCancelled];
  *a2 = result;
  return result;
}

uint64_t __88__OKMediaProducerItem_createThumbnailImageForResolution_withMetadata_completionHandler___block_invoke_4(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2 || !a3)
  {
    v4 = (a1 + 32);
    [*(a1 + 32) setError:a2];
  }

  else
  {
    *(*(a1 + 40) + 40) = a3;
    [*(*(a1 + 40) + 40) loadRetain];
    v4 = (a1 + 32);
  }

  v5 = *v4;

  return [v5 finish];
}

uint64_t __88__OKMediaProducerItem_createThumbnailImageForResolution_withMetadata_completionHandler___block_invoke_5(uint64_t result)
{
  v1 = result;
  v2 = *(result + 40);
  if (v2 == 3)
  {
    result = OFAVAssetCreateThumbnailWithURL();
  }

  else
  {
    if (v2 != 2)
    {
      return result;
    }

    if (*(result + 48) == -1)
    {
      result = OFCGImageCreateWithURL();
    }

    else
    {
      result = OFCGImageCreateThumbnailWithURL();
    }
  }

  *(*(*(v1 + 32) + 8) + 24) = result;
  return result;
}

- (id)importMediaToDirectoryURL:(id)a3 completionHandler:(id)a4
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __67__OKMediaProducerItem_importMediaToDirectoryURL_completionHandler___block_invoke;
  v5[3] = &unk_279C8F930;
  v5[4] = self;
  v5[5] = a3;
  return [(OKMediaItem *)self operationWithBlock:v5 completionHandlerWithObject:a4];
}

void __67__OKMediaProducerItem_importMediaToDirectoryURL_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  if (*(v6 + 40) || (v20[0] = MEMORY[0x277D85DD0], v20[1] = 3221225472, v20[2] = __67__OKMediaProducerItem_importMediaToDirectoryURL_completionHandler___block_invoke_2, v20[3] = &unk_279C91618, v20[4] = v6, v7 = [MEMORY[0x277D627C0] blockOperationWithExecutionBlock:v20 finishBlock:0 andFinishDelegate:0], (objc_msgSend(a2, "performSubOperationSynchronously:progressBlock:timeout:", v7, 0, -1) & 1) != 0))
  {
    v8 = objc_alloc_init(MEMORY[0x277CCAA00]);
    v19 = 0;
    if ([v8 fileExistsAtPath:{objc_msgSend(*(a1 + 40), "path")}] & 1) != 0 || (objc_msgSend(v8, "createDirectoryAtURL:withIntermediateDirectories:attributes:error:", *(a1 + 40), 1, 0, &v19))
    {
      v9 = [v8 incrementalURLInDirectory:*(a1 + 40) withFilename:objc_msgSend(MEMORY[0x277CCACA8] andExtension:{"generateUUID"), objc_msgSend(objc_msgSend(objc_msgSend(*(a1 + 32), "_fileURL"), "lastPathComponent"), "pathExtension")}];
      v10 = [objc_alloc(MEMORY[0x277CCA9E8]) initWithFilePresenter:0];
      v18 = 0;
      v14 = 0;
      v15 = &v14;
      v16 = 0x2020000000;
      v17 = 1;
      v11 = [*(a1 + 32) _fileURL];
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __67__OKMediaProducerItem_importMediaToDirectoryURL_completionHandler___block_invoke_5;
      v13[3] = &unk_279C8F908;
      v13[5] = a2;
      v13[6] = &v14;
      v13[4] = v8;
      [v10 coordinateReadingItemAtURL:v11 options:1 writingItemAtURL:v9 options:0 error:&v18 byAccessor:v13];

      if (v18)
      {
        *a3 = 0;
      }

      else
      {
        if (*(v15 + 24))
        {

          *a3 = v9;
          goto LABEL_10;
        }

        *a3 = 0;
        [MEMORY[0x277CCA9B8] errorWithDomain:@"OKErrorDomain" code:-1 userInfo:0];
      }

      [a2 setError:?];

LABEL_10:
      [a2 finish];
      _Block_object_dispose(&v14, 8);
      return;
    }

    *a3 = 0;
    if (!v19)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:@"OKErrorDomain" code:-1 userInfo:0];
    }

    [a2 setError:?];
    [a2 finish];
  }

  else
  {
    *a3 = 0;
    if ([v7 error])
    {
      v12 = [v7 error];
    }

    else
    {
      v12 = [MEMORY[0x277CCA9B8] errorWithDomain:@"OKErrorDomain" code:-1 userInfo:0];
    }

    [a2 setError:v12];
    [a2 finish];
  }
}

uint64_t __67__OKMediaProducerItem_importMediaToDirectoryURL_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = +[OKProducerManager defaultManager];
  v5 = [objc_msgSend(*(a1 + 32) "uniqueURL")];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __67__OKMediaProducerItem_importMediaToDirectoryURL_completionHandler___block_invoke_3;
  v9[3] = &unk_279C8F8E0;
  v9[4] = a2;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __67__OKMediaProducerItem_importMediaToDirectoryURL_completionHandler___block_invoke_4;
  v8[3] = &unk_279C915F0;
  v6 = *(a1 + 32);
  v8[4] = a2;
  v8[5] = v6;
  return [v4 pluginWithIdentifier:v5 progressBlock:v9 completionBlock:v8];
}

uint64_t __67__OKMediaProducerItem_importMediaToDirectoryURL_completionHandler___block_invoke_3(uint64_t a1, _BYTE *a2)
{
  result = [*(a1 + 32) isCancelled];
  *a2 = result;
  return result;
}

uint64_t __67__OKMediaProducerItem_importMediaToDirectoryURL_completionHandler___block_invoke_4(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2 || !a3)
  {
    v4 = (a1 + 32);
    [*(a1 + 32) setError:a2];
  }

  else
  {
    *(*(a1 + 40) + 40) = a3;
    [*(*(a1 + 40) + 40) loadRetain];
    v4 = (a1 + 32);
  }

  v5 = *v4;

  return [v5 finish];
}

uint64_t __67__OKMediaProducerItem_importMediaToDirectoryURL_completionHandler___block_invoke_5(void *a1, void *a2, void *a3)
{
  v5 = a1[4];
  v6 = [a2 relativePath];
  v7 = [a3 relativePath];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __67__OKMediaProducerItem_importMediaToDirectoryURL_completionHandler___block_invoke_6;
  v9[3] = &unk_279C8F8E0;
  v9[4] = a1[5];
  result = [v5 copySource:v6 toDestination:v7 withProgressionBlock:v9];
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

uint64_t __67__OKMediaProducerItem_importMediaToDirectoryURL_completionHandler___block_invoke_6(uint64_t a1, _BYTE *a2)
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
  v4[2] = __56__OKMediaProducerItem_resourceURLWithCompletionHandler___block_invoke;
  v4[3] = &unk_279C8F720;
  v4[4] = self;
  return [(OKMediaItem *)self operationWithBlock:v4 completionHandlerWithObject:a3];
}

uint64_t __56__OKMediaProducerItem_resourceURLWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  if (v6[5])
  {
    goto LABEL_4;
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __56__OKMediaProducerItem_resourceURLWithCompletionHandler___block_invoke_2;
  v10[3] = &unk_279C91618;
  v10[4] = v6;
  v7 = [MEMORY[0x277D627C0] blockOperationWithExecutionBlock:v10 finishBlock:0 andFinishDelegate:0];
  if ([a2 performSubOperationSynchronously:v7 progressBlock:0 timeout:-1])
  {
    v6 = *(a1 + 32);
LABEL_4:
    *a3 = [objc_msgSend(v6 "_fileURL")];
    return [a2 finish];
  }

  *a3 = 0;
  if ([v7 error])
  {
    v9 = [v7 error];
  }

  else
  {
    v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"OKErrorDomain" code:-1 userInfo:0];
  }

  [a2 setError:v9];
  return [a2 finish];
}

uint64_t __56__OKMediaProducerItem_resourceURLWithCompletionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = +[OKProducerManager defaultManager];
  v5 = [objc_msgSend(*(a1 + 32) "uniqueURL")];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __56__OKMediaProducerItem_resourceURLWithCompletionHandler___block_invoke_3;
  v9[3] = &unk_279C8F8E0;
  v9[4] = a2;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __56__OKMediaProducerItem_resourceURLWithCompletionHandler___block_invoke_4;
  v8[3] = &unk_279C915F0;
  v6 = *(a1 + 32);
  v8[4] = a2;
  v8[5] = v6;
  return [v4 pluginWithIdentifier:v5 progressBlock:v9 completionBlock:v8];
}

uint64_t __56__OKMediaProducerItem_resourceURLWithCompletionHandler___block_invoke_3(uint64_t a1, _BYTE *a2)
{
  result = [*(a1 + 32) isCancelled];
  *a2 = result;
  return result;
}

uint64_t __56__OKMediaProducerItem_resourceURLWithCompletionHandler___block_invoke_4(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2 || !a3)
  {
    v4 = (a1 + 32);
    [*(a1 + 32) setError:a2];
  }

  else
  {
    *(*(a1 + 40) + 40) = a3;
    [*(*(a1 + 40) + 40) loadRetain];
    v4 = (a1 + 32);
  }

  v5 = *v4;

  return [v5 finish];
}

- (id)parseDate:(id)a3
{
  if (parseDate__onceToken_0 != -1)
  {
    [OKMediaProducerItem parseDate:];
  }

  v4 = parseDate___exifDateFormatter_0;

  return [v4 dateFromString:a3];
}

uint64_t __33__OKMediaProducerItem_parseDate___block_invoke()
{
  parseDate___exifDateFormatter_0 = objc_alloc_init(MEMORY[0x277CCA968]);
  [parseDate___exifDateFormatter_0 setTimeZone:{objc_msgSend(MEMORY[0x277CBEBB0], "timeZoneWithName:", @"UTC"}];
  v0 = parseDate___exifDateFormatter_0;

  return [v0 setDateFormat:@"yyyy:MM:dd HH:mm:ss"];
}

@end