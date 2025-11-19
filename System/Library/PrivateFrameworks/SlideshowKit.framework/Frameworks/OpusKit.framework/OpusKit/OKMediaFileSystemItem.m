@interface OKMediaFileSystemItem
+ (id)urlForMediaObject:(id)a3;
- (OKMediaFileSystemItem)initWithFileURL:(id)a3;
- (id)avAssetWithCompletionHandler:(id)a3;
- (id)createMetadataWithCompletionHandler:(id)a3;
- (id)createThumbnailImageForResolution:(unint64_t)a3 withMetadata:(id)a4 completionHandler:(id)a5;
- (id)importMediaToDirectoryURL:(id)a3 completionHandler:(id)a4;
- (id)parseDate:(id)a3;
- (id)resourceURLWithCompletionHandler:(id)a3;
@end

@implementation OKMediaFileSystemItem

+ (id)urlForMediaObject:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ([a3 isFileURL] & 1) == 0)
  {
    return 0;
  }

  return a3;
}

- (OKMediaFileSystemItem)initWithFileURL:(id)a3
{
  v4.receiver = self;
  v4.super_class = OKMediaFileSystemItem;
  return [(OKMediaItem *)&v4 initWithUniqueURL:a3];
}

- (id)createMetadataWithCompletionHandler:(id)a3
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __61__OKMediaFileSystemItem_createMetadataWithCompletionHandler___block_invoke;
  v4[3] = &unk_279C8F720;
  v4[4] = self;
  return [(OKMediaItem *)self operationWithBlock:v4 completionHandlerWithObject:a3];
}

uint64_t __61__OKMediaFileSystemItem_createMetadataWithCompletionHandler___block_invoke(uint64_t a1, void *a2, OKMediaItemMetadata **a3)
{
  v6 = objc_alloc_init(OKMediaItemMetadata);
  v7 = [objc_alloc(MEMORY[0x277CCA9E8]) initWithFilePresenter:0];
  v12 = 0;
  v8 = [*(a1 + 32) _primaryURL];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __61__OKMediaFileSystemItem_createMetadataWithCompletionHandler___block_invoke_2;
  v11[3] = &unk_279C8FA60;
  v9 = *(a1 + 32);
  v11[4] = v6;
  v11[5] = v9;
  [v7 coordinateReadingItemAtURL:v8 options:1 error:&v12 byAccessor:v11];

  if (v12)
  {
    if (v6)
    {
    }

    *a3 = 0;
    [a2 setError:?];
  }

  else
  {
    *a3 = v6;
  }

  return [a2 finish];
}

void __61__OKMediaFileSystemItem_createMetadataWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
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
      goto LABEL_26;
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

      if (ImageAtIndex)
      {
        Width = CGImageGetWidth(ImageAtIndex);
        Height = CGImageGetHeight(ImageAtIndex);
        v14 = CFDictionaryGetValue(v9, *MEMORY[0x277CD3410]);
        if (v14)
        {
          v15 = [v14 integerValue];
          [*(a1 + 32) setOrientation:v15];
          if (v15 <= 4)
          {
            v16 = Height;
          }

          else
          {
            v16 = Width;
          }

          if (v15 > 4)
          {
            Width = Height;
          }

          Height = v16;
        }

        [*(a1 + 32) setResolution:{Width, Height}];
        CGImageRelease(ImageAtIndex);
      }

      CFRelease(v9);
      CFRelease(v7);
    }
  }

  else if (UTTypeConformsTo(v4, *MEMORY[0x277CC2100]) == 1)
  {
    [*(a1 + 32) setType:3];
    v17 = [MEMORY[0x277CE6650] URLAssetWithURL:a2 options:0];
    if (v17)
    {
      v18 = v17;
      if ([objc_msgSend(v17 "tracks")] != 1 || (v19 = objc_msgSend(objc_msgSend(objc_msgSend(v18, "tracks"), "firstObject"), "mediaType"), !objc_msgSend(v19, "isEqualToString:", *MEMORY[0x277CE5E48])))
      {
        v23 = [objc_msgSend(v18 tracksWithMediaType:{*MEMORY[0x277CE5EA8]), "lastObject"}];
        if (v23)
        {
          [v23 naturalSize];
        }

        else
        {
          v24 = *MEMORY[0x277CBF3A8];
          v25 = *(MEMORY[0x277CBF3A8] + 8);
        }

        [*(a1 + 32) setResolution:{v24, v25}];
        v5 = v18;
LABEL_3:
        [v5 duration];
        [*(a1 + 32) setDuration:CMTimeGetSeconds(&time)];
        goto LABEL_26;
      }

      [*(a1 + 32) setType:1];
    }
  }

LABEL_26:
  v20 = objc_alloc_init(MEMORY[0x277CCAA00]);
  time.value = 0;
  v21 = [v20 attributesOfItemAtPath:objc_msgSend(a2 error:{"relativePath"), &time}];
  if (v21)
  {
    v22 = v21;
    if (![*(a1 + 32) creationDate])
    {
      [*(a1 + 32) setCreationDate:{objc_msgSend(v22, "objectForKey:", *MEMORY[0x277CCA108])}];
    }

    [*(a1 + 32) setName:{objc_msgSend(objc_msgSend(objc_msgSend(a2, "relativePath"), "lastPathComponent"), "stringByDeletingPathExtension")}];
  }

  else if (*MEMORY[0x277D62808] >= 4)
  {
    [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Media/FileSystem/OKMediaFileSystemItem.m" line:249 andFormat:@"An error occured updating media item %@ properties: %@", a2, objc_msgSend(time.value, "localizedDescription")];
  }
}

- (id)createThumbnailImageForResolution:(unint64_t)a3 withMetadata:(id)a4 completionHandler:(id)a5
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __90__OKMediaFileSystemItem_createThumbnailImageForResolution_withMetadata_completionHandler___block_invoke;
  v6[3] = &unk_279C8FAB0;
  v6[4] = a4;
  v6[5] = self;
  v6[6] = a3;
  return [(OKMediaItem *)self operationWithBlock:v6 completionHandlerWithObject:a5];
}

void __90__OKMediaFileSystemItem_createThumbnailImageForResolution_withMetadata_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = [*(a1 + 32) type];
  v7 = [objc_alloc(MEMORY[0x277CCA9E8]) initWithFilePresenter:0];
  v17 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v8 = [*(a1 + 40) _primaryURL];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __90__OKMediaFileSystemItem_createThumbnailImageForResolution_withMetadata_completionHandler___block_invoke_2;
  v12[3] = &unk_279C8FA88;
  v9 = *(a1 + 48);
  v12[5] = v6;
  v12[6] = v9;
  v12[4] = &v13;
  [v7 coordinateReadingItemAtURL:v8 options:1 error:&v17 byAccessor:v12];
  if (v17)
  {
    v10 = v14[3];
    if (v10)
    {
      CGImageRelease(v10);
      v14[3] = 0;
    }

    *a3 = 0;
    [a2 setError:?];
  }

  else
  {
    *a3 = [OKMediaImage mediaImageWithCGImage:v14[3]];
    v11 = v14[3];
    if (v11)
    {
      CGImageRelease(v11);
      v14[3] = 0;
    }
  }

  if (v7)
  {
  }

  [a2 finish];
  _Block_object_dispose(&v13, 8);
}

uint64_t __90__OKMediaFileSystemItem_createThumbnailImageForResolution_withMetadata_completionHandler___block_invoke_2(uint64_t result)
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
  v5[2] = __69__OKMediaFileSystemItem_importMediaToDirectoryURL_completionHandler___block_invoke;
  v5[3] = &unk_279C8F930;
  v5[4] = a3;
  v5[5] = self;
  return [(OKMediaItem *)self operationWithBlock:v5 completionHandlerWithObject:a4];
}

void __69__OKMediaFileSystemItem_importMediaToDirectoryURL_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = objc_alloc_init(MEMORY[0x277CCAA00]);
  v16 = 0;
  if ([v6 fileExistsAtPath:{objc_msgSend(*(a1 + 32), "path")}] & 1) != 0 || (objc_msgSend(v6, "createDirectoryAtURL:withIntermediateDirectories:attributes:error:", *(a1 + 32), 1, 0, &v16))
  {
    v7 = [*(a1 + 40) _primaryURL];
    v8 = [v6 incrementalURLInDirectory:*(a1 + 32) withFilename:objc_msgSend(MEMORY[0x277CCACA8] andExtension:{"generateUUID"), objc_msgSend(objc_msgSend(v7, "lastPathComponent"), "pathExtension")}];
    v9 = [objc_alloc(MEMORY[0x277CCA9E8]) initWithFilePresenter:0];
    v15 = 0;
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = 1;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __69__OKMediaFileSystemItem_importMediaToDirectoryURL_completionHandler___block_invoke_2;
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

uint64_t __69__OKMediaFileSystemItem_importMediaToDirectoryURL_completionHandler___block_invoke_2(void *a1, void *a2, void *a3)
{
  v5 = a1[4];
  v6 = [a2 relativePath];
  v7 = [a3 relativePath];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __69__OKMediaFileSystemItem_importMediaToDirectoryURL_completionHandler___block_invoke_3;
  v9[3] = &unk_279C8F8E0;
  v9[4] = a1[5];
  result = [v5 copySource:v6 toDestination:v7 withProgressionBlock:v9];
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

uint64_t __69__OKMediaFileSystemItem_importMediaToDirectoryURL_completionHandler___block_invoke_3(uint64_t a1, _BYTE *a2)
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
  v4[2] = __58__OKMediaFileSystemItem_resourceURLWithCompletionHandler___block_invoke;
  v4[3] = &unk_279C8F720;
  v4[4] = self;
  return [(OKMediaItem *)self operationWithBlock:v4 completionHandlerWithObject:a3];
}

uint64_t __58__OKMediaFileSystemItem_resourceURLWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  *a3 = [objc_msgSend(*(a1 + 32) "uniqueURL")];

  return [a2 finish];
}

- (id)avAssetWithCompletionHandler:(id)a3
{
  v4.receiver = self;
  v4.super_class = OKMediaFileSystemItem;
  return [(OKMediaItem *)&v4 avAssetWithCompletionHandler:a3];
}

- (id)parseDate:(id)a3
{
  if (parseDate__onceToken != -1)
  {
    [OKMediaFileSystemItem parseDate:];
  }

  v4 = parseDate___exifDateFormatter;

  return [v4 dateFromString:a3];
}

uint64_t __35__OKMediaFileSystemItem_parseDate___block_invoke()
{
  parseDate___exifDateFormatter = objc_alloc_init(MEMORY[0x277CCA968]);
  [parseDate___exifDateFormatter setTimeZone:{objc_msgSend(MEMORY[0x277CBEBB0], "timeZoneWithName:", @"UTC"}];
  v0 = parseDate___exifDateFormatter;

  return [v0 setDateFormat:@"yyyy:MM:dd HH:mm:ss"];
}

@end